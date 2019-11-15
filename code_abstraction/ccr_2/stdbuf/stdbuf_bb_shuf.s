	.section	.text
	.align	32
	#Procedure 0x401669
	.globl sub_401669
	.type sub_401669, @function
sub_401669:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x40166a
	.globl sub_40166a
	.type sub_40166a, @function
sub_40166a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4016a2
	.globl sub_4016a2
	.type sub_4016a2, @function
sub_4016a2:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4016ea
	.globl sub_4016ea
	.type sub_4016ea, @function
sub_4016ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40170c
	.globl sub_40170c
	.type sub_40170c, @function
sub_40170c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40171d
	.globl sub_40171d
	.type sub_40171d, @function
sub_40171d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401736
	.globl sub_401736
	.type sub_401736, @function
sub_401736:

	nop	word ptr cs:[rax + rax]
.label_13:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_9
	mov	eax, OFFSET FLAT:label_10
	jmp	.label_11
	.section	.text
	.align	32
	#Procedure 0x40174f
	.globl sub_40174f
	.type sub_40174f, @function
sub_40174f:

	nop	word ptr cs:[rax + rax]
.label_18:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_12
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_12
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_12
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_12
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_12
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_12
	cmp	byte ptr [rax + 7], 0
	je	.label_13
.label_12:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_14
	mov	eax, OFFSET FLAT:label_15
.label_11:
	cmove	rax, rcx
.label_19:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4017a2

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
	jne	.label_19
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_18
	cmp	ecx, 0x55
	jne	.label_12
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_12
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_12
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_12
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_12
	cmp	byte ptr [rax + 5], 0
	jne	.label_12
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_16
	mov	eax, OFFSET FLAT:label_17
	jmp	.label_11
	.section	.text
	.align	32
	#Procedure 0x401810

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_21
	cmp	byte ptr [rax], 0x43
	jne	.label_23
	cmp	byte ptr [rax + 1], 0
	je	.label_20
.label_23:
	mov	esi, OFFSET FLAT:label_22
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_21
.label_20:
	xor	ebx, ebx
.label_21:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401841
	.globl sub_401841
	.type sub_401841, @function
sub_401841:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401850
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_24]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_25]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_26]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_27
	test	rsi, rsi
	je	.label_27
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
.label_27:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4018bc
	.globl sub_4018bc
	.type sub_4018bc, @function
sub_4018bc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4018c0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
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
	#Procedure 0x4018da
	.globl sub_4018da
	.type sub_4018da, @function
sub_4018da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4018e0
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
	je	.label_30
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
.label_30:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401941
	.globl sub_401941
	.type sub_401941, @function
sub_401941:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401950
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
	#Procedure 0x401983
	.globl sub_401983
	.type sub_401983, @function
sub_401983:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401990

	.globl dir_name
	.type dir_name, @function
dir_name:
	push	rax
	call	mdir_name
	test	rax, rax
	je	.label_31
	pop	rcx
	ret	
.label_31:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4019a2
	.globl sub_4019a2
	.type sub_4019a2, @function
sub_4019a2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4019b0

	.globl careadlinkatcwd
	.type careadlinkatcwd, @function
careadlinkatcwd:
	cmp	edi, -0x64
	jne	.label_32
	mov	rdi, rsi
	mov	rsi, rdx
	mov	rdx, rcx
	jmp	readlink
.label_32:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4019c9
	.globl sub_4019c9
	.type sub_4019c9, @function
sub_4019c9:

	nop	dword ptr [rax]
.label_33:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4019d5
	.globl sub_4019d5
	.type sub_4019d5, @function
sub_4019d5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4019e3

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
	je	.label_34
	test	r15, r15
	je	.label_33
.label_34:
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
	#Procedure 0x401a20

	.globl areadlink
	.type areadlink, @function
areadlink:
	mov	rax, rdi
	mov	edi, 0xffffff9c
	xor	edx, edx
	xor	ecx, ecx
	xor	r8d, r8d
	mov	r9d, OFFSET FLAT:careadlinkatcwd
	mov	rsi, rax
	jmp	careadlinkat
	.section	.text
	.align	32
	#Procedure 0x401a3d
	.globl sub_401a3d
	.type sub_401a3d, @function
sub_401a3d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401a40
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
	#Procedure 0x401a4f
	.globl sub_401a4f
	.type sub_401a4f, @function
sub_401a4f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401a50

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
	jne	.label_36
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_35
	test	cl, cl
	jne	.label_35
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_35
.label_36:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_35
	call	__errno_location
	mov	dword ptr [rax], 0
.label_35:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_38:
	mov	rax, rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x401ab4
	.globl sub_401ab4
	.type sub_401ab4, @function
sub_401ab4:

	nop	dword ptr [rax]
.label_37:
	movzx	edx, byte ptr [rax + 1]
	inc	rax
	mov	sil, cl
.label_41:
	mov	cl, 1
	cmp	dl, 0x2f
	je	.label_37
	test	dl, dl
	je	.label_38
	mov	ecx, esi
	and	cl, 1
	je	.label_39
	xor	esi, esi
.label_39:
	test	cl, cl
	cmovne	rdi, rax
	mov	ecx, esi
	jmp	.label_37
	.section	.text
	.align	32
	#Procedure 0x401ae0

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_40:
	movzx	edx, byte ptr [rdi + 1]
	inc	rdi
	cmp	dl, 0x2f
	je	.label_40
	xor	esi, esi
	mov	rax, rdi
	jmp	.label_41
	.section	.text
	.align	32
	#Procedure 0x401b03
	.globl sub_401b03
	.type sub_401b03, @function
sub_401b03:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b10
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_42
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_43
	test	rbx, rbx
	jne	.label_43
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_42:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401b44
	.globl sub_401b44
	.type sub_401b44, @function
sub_401b44:

	nop	dword ptr [rax + rax]
.label_43:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_44
	test	rax, rax
	je	.label_42
.label_44:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401b60

	.globl xreadlink
	.type xreadlink, @function
xreadlink:
	push	rbx
	call	areadlink
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_46
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_45
.label_46:
	mov	rax, rbx
	pop	rbx
	ret	
.label_45:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401b82
	.globl sub_401b82
	.type sub_401b82, @function
sub_401b82:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b90
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_24]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_25]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_26]
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
	#Procedure 0x401bff
	.globl sub_401bff
	.type sub_401bff, @function
sub_401bff:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401c00

	.globl mfile_name_concat
	.type mfile_name_concat, @function
mfile_name_concat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	qword ptr [rsp + 0x10], rdx
	mov	r15, rsi
	mov	r13, rdi
	call	last_component
	mov	rbx, rax
	mov	rdi, rbx
	call	base_len
	mov	rbp, rax
	sub	rbx, r13
	add	rbx, rbp
	mov	rdi, r15
	call	strlen
	test	rbp, rbp
	je	.label_51
	cmp	byte ptr [r13 + rbx - 1], 0x2f
	je	.label_47
	cmp	byte ptr [r15], 0x2f
	je	.label_47
	mov	r12b, 0x2f
	jmp	.label_48
.label_51:
	cmp	byte ptr [r15], 0x2f
	mov	r12b, 0x2e
	je	.label_48
.label_47:
	xor	r12d, r12d
.label_48:
	xor	ebp, ebp
	test	r12b, r12b
	setne	bpl
	mov	qword ptr [rsp + 8], rax
	lea	rax, [rax + rbx]
	lea	rdi, [rbp + rax + 1]
	call	malloc
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_50
	mov	rcx, -1
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, rbx
	call	__mempcpy_chk
	mov	byte ptr [rax], r12b
	add	rbp, rax
	mov	rax, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_49
	mov	qword ptr [rax], rbp
.label_49:
	mov	rcx, -1
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 8]
	call	__mempcpy_chk
	mov	byte ptr [rax], 0
	mov	rax, r14
.label_50:
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
	#Procedure 0x401cd8
	.globl sub_401cd8
	.type sub_401cd8, @function
sub_401cd8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ce0

	.globl careadlinkat
	.type careadlinkat, @function
careadlinkat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x428
	mov	qword ptr [rsp + 0x18], r9
	mov	qword ptr [rsp + 0x10], rsi
	mov	dword ptr [rsp + 0xc], edi
	test	r8, r8
	mov	ebp, OFFSET FLAT:stdlib_allocator
	cmovne	rbp, r8
	test	rcx, rcx
	mov	r13d, 0x400
	cmovne	r13, rcx
	lea	rax, [rsp + 0x20]
	cmove	rdx, rax
	mov	qword ptr [rsp], rdx
	mov	rbx, rdx
	nop	dword ptr [rax + rax]
.label_63:
	mov	edi, dword ptr [rsp + 0xc]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, rbx
	mov	rcx, r13
	call	qword ptr [rsp + 0x18]
	mov	r15, rax
	test	r15, r15
	jns	.label_54
	call	__errno_location
	mov	r12, rax
	mov	r14d, dword ptr [r12]
	cmp	r14d, 0x22
	jne	.label_60
.label_54:
	cmp	r15, r13
	jb	.label_61
	cmp	rbx, qword ptr [rsp]
	je	.label_64
	mov	rdi, rbx
	call	qword ptr [rbp + 0x10]
.label_64:
	movabs	rax, 0x4000000000000000
	cmp	r13, rax
	ja	.label_67
	add	r13, r13
	jmp	.label_55
	.section	.text
	.align	32
	#Procedure 0x401d86
	.globl sub_401d86
	.type sub_401d86, @function
sub_401d86:

	nop	word ptr cs:[rax + rax]
.label_67:
	test	r13, r13
	movabs	r13, 0x8000000000000000
	js	.label_57
.label_55:
	mov	rdi, r13
	call	qword ptr [rbp]
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_63
.label_59:
	mov	rax, qword ptr [rbp + 0x18]
	test	rax, rax
	je	.label_66
	mov	rdi, r13
	call	rax
.label_66:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_52
.label_61:
	mov	rax, r15
	inc	r15
	mov	byte ptr [rbx + rax], 0
	lea	rax, [rsp + 0x20]
	cmp	rbx, rax
	je	.label_56
	cmp	rbx, qword ptr [rsp]
	je	.label_62
	cmp	r15, r13
	jae	.label_62
	mov	rcx, qword ptr [rbp + 8]
	test	rcx, rcx
	je	.label_65
	mov	rdi, rbx
	mov	rsi, r15
	call	rcx
	mov	r13, rax
	test	r13, r13
	cmove	r13, rbx
	jmp	.label_58
.label_57:
	call	__errno_location
	mov	dword ptr [rax], 0x24
	jmp	.label_52
.label_60:
	xor	r13d, r13d
	cmp	rbx, qword ptr [rsp]
	je	.label_58
	mov	rdi, rbx
	call	qword ptr [rbp + 0x10]
	mov	dword ptr [r12], r14d
.label_52:
	xor	r13d, r13d
.label_58:
	mov	rax, r13
	add	rsp, 0x428
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_56:
	mov	rdi, r15
	call	qword ptr [rbp]
	mov	r13, rax
	test	r13, r13
	je	.label_53
	lea	rsi, [rsp + 0x20]
	mov	rdi, r13
	mov	rdx, r15
	call	memcpy
	jmp	.label_58
.label_62:
	mov	r13, rbx
	jmp	.label_58
.label_53:
	mov	r13, r15
	jmp	.label_59
.label_65:
	mov	r13, rbx
	jmp	.label_58
	.section	.text
	.align	32
	#Procedure 0x401e6e
	.globl sub_401e6e
	.type sub_401e6e, @function
sub_401e6e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401e70
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_24]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_25]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_26]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_68
	test	rsi, rsi
	je	.label_68
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_68:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401ee0
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
	je	.label_69
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
.label_69:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401f48
	.globl sub_401f48
	.type sub_401f48, @function
sub_401f48:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401f50

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_74
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_77
.label_74:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_77:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_76
	cmp	r10d, 0x29
	jae	.label_73
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_75
.label_73:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_75:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_76
	cmp	r10d, 0x29
	jae	.label_71
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_72
.label_71:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_72:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_76
	cmp	r10d, 0x29
	jae	.label_82
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_70
.label_82:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_70:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_76
	cmp	r10d, 0x29
	jae	.label_80
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_81
.label_80:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_81:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_76
	cmp	r10d, 0x29
	jae	.label_78
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_79
.label_78:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_79:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_76
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_76
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_76
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_76
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_76:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x402132
	.globl sub_402132
	.type sub_402132, @function
sub_402132:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402140
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40214e
	.globl sub_40214e
	.type sub_40214e, @function
sub_40214e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402150

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
	js	.label_86
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_89
	cmp	r12d, 0x7fffffff
	je	.label_84
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
	jne	.label_87
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_87:
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
.label_89:
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
	jbe	.label_85
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_88
.label_85:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_83
	mov	rdi, r14
	call	free
.label_83:
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
.label_88:
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
.label_86:
	call	abort
.label_84:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40230d
	.globl sub_40230d
	.type sub_40230d, @function
sub_40230d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402310
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
	#Procedure 0x402328
	.globl sub_402328
	.type sub_402328, @function
sub_402328:

	nop	dword ptr [rax + rax]
.label_90:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402335
	.globl sub_402335
	.type sub_402335, @function
sub_402335:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402337
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_24]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_25]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_26]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_90
	test	rdx, rdx
	je	.label_90
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
	#Procedure 0x4023a0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_97
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_93
	cmp	dword ptr [rbp], 0x20
	jne	.label_93
.label_97:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_95
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_93:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_91
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_94
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_92
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_95:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_94:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_96
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402460
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
	je	.label_98
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
.label_98:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4024c8
	.globl sub_4024c8
	.type sub_4024c8, @function
sub_4024c8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4024d0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x4024da
	.globl sub_4024da
	.type sub_4024da, @function
sub_4024da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4024e0
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
	#Procedure 0x402555
	.globl sub_402555
	.type sub_402555, @function
sub_402555:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402560
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_24]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_25]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_26]
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
	#Procedure 0x4025ce
	.globl sub_4025ce
	.type sub_4025ce, @function
sub_4025ce:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4025d0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_106
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_114
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_100
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_101
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_117
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_116
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_102
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_103
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_104
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_105
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_112
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_113
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_109
	mov	ecx, OFFSET FLAT:label_110
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_118
	mov	esi, OFFSET FLAT:label_115
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_118
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_111
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_118:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_120
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_110
	mov	ecx, OFFSET FLAT:label_107
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_99
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_107
	mov	ecx, OFFSET FLAT:label_108
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_106:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_119
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
	#Procedure 0x40282b
	.globl sub_40282b
	.type sub_40282b, @function
sub_40282b:

	nop	dword ptr [rax + rax]
.label_122:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_121
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_121:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402864
	.globl sub_402864
	.type sub_402864, @function
sub_402864:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402866

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
	jne	.label_123
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_123
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_122
.label_123:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	32
	#Procedure 0x4028a0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x4028aa
	.globl sub_4028aa
	.type sub_4028aa, @function
sub_4028aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4028b0
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
	#Procedure 0x4028c9
	.globl sub_4028c9
	.type sub_4028c9, @function
sub_4028c9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4028d0

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
	#Procedure 0x4028e7
	.globl sub_4028e7
	.type sub_4028e7, @function
sub_4028e7:

	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4028f0

	.globl mdir_name
	.type mdir_name, @function
mdir_name:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	xor	r15d, r15d
	cmp	byte ptr [r14], 0x2f
	sete	r15b
	call	last_component
	inc	rax
	sub	rax, r14
	nop	word ptr cs:[rax + rax]
.label_127:
	mov	rbx, rax
	lea	r12, [rbx - 1]
	cmp	r15, r12
	jae	.label_124
	lea	rax, [rbx - 1]
	cmp	byte ptr [r14 + rbx - 2], 0x2f
	je	.label_127
.label_124:
	xor	edi, edi
	cmp	rbx, 1
	sete	dil
	add	rdi, rbx
	call	malloc
	mov	r15, rax
	xor	eax, eax
	test	r15, r15
	je	.label_126
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, r12
	call	memcpy
	cmp	rbx, 1
	jne	.label_125
	mov	byte ptr [r15], 0x2e
	mov	r12d, 1
.label_125:
	mov	byte ptr [r15 + r12], 0
	mov	rax, r15
.label_126:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x402986
	.globl sub_402986
	.type sub_402986, @function
sub_402986:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402990
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
	je	.label_128
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
.label_128:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402a25
	.globl sub_402a25
	.type sub_402a25, @function
sub_402a25:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a30
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x402a41
	.globl sub_402a41
	.type sub_402a41, @function
sub_402a41:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a50

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_129
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_92
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402a80
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x402a88
	.globl sub_402a88
	.type sub_402a88, @function
sub_402a88:

	nop	dword ptr [rax + rax]
.label_130:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402a96
	.globl sub_402a96
	.type sub_402a96, @function
sub_402a96:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a9b
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_130
	test	rdx, rdx
	je	.label_130
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_131:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402ac5
	.globl sub_402ac5
	.type sub_402ac5, @function
sub_402ac5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402acf
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_131
	call	rpl_calloc
	test	rax, rax
	je	.label_131
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402af0
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
	#Procedure 0x402bb1
	.globl sub_402bb1
	.type sub_402bb1, @function
sub_402bb1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402bc0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_132
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_132:
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
	#Procedure 0x402c43
	.globl sub_402c43
	.type sub_402c43, @function
sub_402c43:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c50
	.globl dir_len
	.type dir_len, @function
dir_len:

	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	xor	r14d, r14d
	cmp	byte ptr [rbx], 0x2f
	sete	r14b
	call	last_component
	mov	rcx, rax
	sub	rcx, rbx
	nop	dword ptr [rax]
.label_134:
	mov	rax, rcx
	cmp	r14, rax
	jae	.label_133
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_134
.label_133:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x402c8b
	.globl sub_402c8b
	.type sub_402c8b, @function
sub_402c8b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c90

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_135
	test	rsi, rsi
	mov	ecx, 1
	je	.label_136
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_136
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_135:
	mov	ecx, 1
.label_136:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x402cdb
	.globl sub_402cdb
	.type sub_402cdb, @function
sub_402cdb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ce0

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
	je	.label_149
	mov	edx, OFFSET FLAT:label_140
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_146
.label_149:
	mov	edx, OFFSET FLAT:label_147
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_146:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_151
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
	mov	esi, OFFSET FLAT:label_148
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_152
	jmp	qword ptr [(r12 * 8) + label_153]
.label_439:
	add	rsp, 8
	jmp	.label_139
.label_152:
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
	push	qword ptr [r15 + 0x40]
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
	jmp	.label_139
.label_440:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_138
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
.label_441:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_144
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
.label_442:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_141
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
.label_443:
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
	jmp	.label_139
.label_444:
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
	jmp	.label_139
.label_445:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_137
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
	jmp	.label_139
.label_446:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_142
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
	jmp	.label_139
.label_448:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_145
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
	jmp	.label_139
.label_447:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_150
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
.label_139:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x403038
	.globl sub_403038
	.type sub_403038, @function
sub_403038:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403040
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_156:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_156
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x403061
	.globl sub_403061
	.type sub_403061, @function
sub_403061:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403070

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
	je	.label_157
	test	r15, r15
	je	.label_158
.label_157:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_158:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4030ac
	.globl sub_4030ac
	.type sub_4030ac, @function
sub_4030ac:

	nop	dword ptr [rax]
.label_164:
	test	rcx, rcx
	jne	.label_162
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_162:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_163
.label_165:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_161
	test	rbx, rbx
	jne	.label_161
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_161:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_159
	test	rax, rax
	je	.label_160
.label_159:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403110
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_164
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_160
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_165
.label_160:
	call	xalloc_die
.label_163:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403147
	.globl sub_403147
	.type sub_403147, @function
sub_403147:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403150

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
	je	.label_166
	cmp	r15, -2
	jb	.label_166
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_166
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_166:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4031a6
	.globl sub_4031a6
	.type sub_4031a6, @function
sub_4031a6:

	nop	word ptr cs:[rax + rax]
.label_171:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_167
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4031d0
	.globl sub_4031d0
	.type sub_4031d0, @function
sub_4031d0:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4031df

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_171
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_169
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_172
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_169
	mov	esi, OFFSET FLAT:label_170
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_168
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_168:
	mov	rbx, r14
.label_169:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x403260
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_24]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_25]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_26]
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
	#Procedure 0x4032b4
	.globl sub_4032b4
	.type sub_4032b4, @function
sub_4032b4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4032c0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_173
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_174
	test	rax, rax
	je	.label_173
.label_174:
	pop	rbx
	ret	
.label_173:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4032f5
	.globl sub_4032f5
	.type sub_4032f5, @function
sub_4032f5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403300
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
	#Procedure 0x403336
	.globl sub_403336
	.type sub_403336, @function
sub_403336:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403340
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_175
	test	rax, rax
	je	.label_176
.label_175:
	pop	rbx
	ret	
.label_176:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40335a
	.globl sub_40335a
	.type sub_40335a, @function
sub_40335a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403360

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_177
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_178
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_177
.label_178:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_177
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_179
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_179:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_177:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x4033d4
	.globl sub_4033d4
	.type sub_4033d4, @function
sub_4033d4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4033e0

	.globl base_len
	.type base_len, @function
base_len:
	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_181:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_180
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_181
.label_180:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403406
	.globl sub_403406
	.type sub_403406, @function
sub_403406:

	nop	
	nop	dword ptr [rax + rax]
.label_183:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403415
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_186
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_184
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_185
	call	free
	xor	eax, eax
	jmp	.label_182
.label_186:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_183
	mov	qword ptr [rsi], rbx
.label_185:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_182
	test	rax, rax
	je	.label_183
.label_182:
	pop	rbx
	ret	
.label_184:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403474
	.globl sub_403474
	.type sub_403474, @function
sub_403474:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403480
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_187
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_189:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_189
.label_187:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_191
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_190], OFFSET FLAT:slot0
.label_191:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_188
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_188:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x403511
	.globl sub_403511
	.type sub_403511, @function
sub_403511:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403520

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_24]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_25]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_26]
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
	#Procedure 0x403575
	.globl sub_403575
	.type sub_403575, @function
sub_403575:

	nop	word ptr cs:[rax + rax]
.label_192:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403585
	.globl sub_403585
	.type sub_403585, @function
sub_403585:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40358b
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_24]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_25]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_26]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_192
	test	rdx, rdx
	je	.label_192
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
	#Procedure 0x4035f0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x4035f8
	.globl sub_4035f8
	.type sub_4035f8, @function
sub_4035f8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403600

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
	jae	.label_193
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_210:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_210
	test	rbp, rbp
	lea	rsi, [rsp + 0x20]
	cmovne	rsi, rbp
	mov	r13d, 4
	cmp	al, 0x2d
	je	.label_206
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
	je	.label_196
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_204
	cmp	eax, 0x22
	jne	.label_206
	mov	ebp, 1
.label_204:
	test	r14, r14
	mov	r15d, ebp
	jne	.label_205
	jmp	.label_209
.label_196:
	test	r14, r14
	je	.label_206
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_206
	mov	rdi, r14
	mov	rbx, rcx
	call	strchr
	mov	rcx, rbx
	xor	r15d, r15d
	mov	r12d, 1
	test	rax, rax
	je	.label_206
.label_205:
	movsx	r13d, byte ptr [rcx]
	test	r13d, r13d
	je	.label_209
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_197
	mov	ecx, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_200
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_200
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	ecx, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_200
	mov	rax, qword ptr [rsp + 0x10]
	movsx	eax, byte ptr [rax + 1]
	mov	ecx, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_211
	cmp	eax, 0x44
	je	.label_211
	cmp	eax, 0x69
	jne	.label_200
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	byte ptr [rcx + 2], 0x42
	sete	al
	lea	rcx, [rax + rax + 1]
	mov	esi, 0x400
	jmp	.label_200
.label_211:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_200:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_197
	xor	eax, eax
	jmp	qword ptr [(r13 * 8) + label_207]
.label_539:
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
	jmp	.label_208
.label_197:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
	or	r15d, 2
	jmp	.label_194
.label_540:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, r12
	cmp	rax, r12
	cmovb	rsi, rdi
	sbb	eax, eax
	jmp	.label_198
.label_541:
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
	jmp	.label_212
.label_543:
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
	jmp	.label_214
.label_537:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x36
	setne	al
	shl	r12, 0xa
	jmp	.label_213
.label_538:
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
	jmp	.label_212
.label_542:
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
.label_214:
	or	dl, r10b
.label_208:
	or	dl, bl
.label_212:
	and	dl, 1
	movzx	eax, dl
	mov	r12, rsi
	jmp	.label_195
.label_544:
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
	jmp	.label_199
.label_545:
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
.label_199:
	movzx	eax, dl
.label_198:
	and	eax, 1
	mov	r12, rsi
	jmp	.label_195
.label_546:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x37
	setne	al
	shl	r12, 9
.label_213:
	cmp	rdx, 1
	sbb	rdx, rdx
	not	rdx
	or	r12, rdx
	jmp	.label_195
.label_547:
	lea	rax, [r12 + r12]
	test	r12, r12
	mov	rdx, -1
	cmovns	rdx, rax
	shr	r12, 0x3f
	mov	eax, r12d
	mov	r12, rdx
.label_195:
	or	eax, r15d
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rdx, [rdi + rcx]
	mov	rsi, qword ptr [rsp + 0x18]
	mov	qword ptr [rsi], rdx
	lea	r15d, [rax + 2]
	cmp	byte ptr [rdi + rcx], 0
	cmove	r15d, eax
.label_209:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
.label_194:
	mov	r13d, r15d
.label_206:
	mov	eax, r13d
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_193:
	mov	edi, OFFSET FLAT:label_201
	mov	esi, OFFSET FLAT:label_202
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_203
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x403c31
	.globl sub_403c31
	.type sub_403c31, @function
sub_403c31:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c40
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
	#Procedure 0x403c4f
	.globl sub_403c4f
	.type sub_403c4f, @function
sub_403c4f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403c50
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
	je	.label_216
	test	r14, r14
	je	.label_215
.label_216:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_215:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403c86
	.globl sub_403c86
	.type sub_403c86, @function
sub_403c86:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c90

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
.label_296:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_295
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_300]
.label_467:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_307
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_15
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_468:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_234
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_234
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_332:
	cmp	r14, r11
	jae	.label_270
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_270:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_332
.label_234:
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
	jmp	.label_227
.label_460:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_227
.label_463:
	mov	al, 1
.label_461:
	mov	r12b, 1
.label_464:
	test	r12b, 1
	mov	cl, 1
	je	.label_231
	mov	ecx, eax
.label_231:
	mov	al, cl
.label_462:
	test	r12b, 1
	jne	.label_235
	test	r11, r11
	je	.label_237
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_237:
	mov	r14d, 1
	jmp	.label_240
.label_235:
	xor	r14d, r14d
.label_240:
	mov	ecx, OFFSET FLAT:label_15
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_227
.label_465:
	test	r12b, 1
	jne	.label_251
	test	r11, r11
	je	.label_253
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_253:
	mov	r14d, 1
	jmp	.label_255
.label_466:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_14
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_227
.label_251:
	xor	r14d, r14d
.label_255:
	mov	eax, OFFSET FLAT:label_14
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_227:
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
	jmp	.label_275
	.section	.text
	.align	32
	#Procedure 0x403f7d
	.globl sub_403f7d
	.type sub_403f7d, @function
sub_403f7d:

	nop	dword ptr [rax]
.label_239:
	inc	rsi
.label_275:
	cmp	rbp, -1
	je	.label_313
	cmp	rsi, rbp
	jne	.label_315
	jmp	.label_316
	.section	.text
	.align	32
	#Procedure 0x403f93
	.globl sub_403f93
	.type sub_403f93, @function
sub_403f93:

	nop	word ptr cs:[rax + rax]
.label_313:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_323
.label_315:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_264
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_318
	cmp	rbp, -1
	jne	.label_318
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
.label_318:
	cmp	rbx, rbp
	jbe	.label_336
.label_264:
	xor	r8d, r8d
.label_247:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_219
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_223]
.label_508:
	test	rsi, rsi
	jne	.label_226
	jmp	.label_230
	.section	.text
	.align	32
	#Procedure 0x404035
	.globl sub_404035
	.type sub_404035, @function
sub_404035:

	nop	word ptr cs:[rax + rax]
.label_336:
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
	jne	.label_244
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_247
	jmp	.label_217
.label_244:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_247
.label_512:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_263
	test	rsi, rsi
	jne	.label_265
	cmp	rbp, 1
	je	.label_230
	xor	r13d, r13d
	jmp	.label_225
.label_501:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_272
	cmp	byte ptr [rsp + 6], 0
	jne	.label_274
	cmp	r12d, 2
	jne	.label_280
	mov	eax, r9d
	and	al, 1
	jne	.label_280
	cmp	r14, r11
	jae	.label_282
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_282:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_286
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_286:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_276
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_276:
	add	r14, 3
	mov	r9b, 1
.label_280:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_314
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_314:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_304
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_304
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_304
	cmp	r14, r11
	jae	.label_294
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_294:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_329
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_329:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_225
.label_502:
	mov	bl, 0x62
	jmp	.label_325
.label_503:
	mov	cl, 0x74
	jmp	.label_326
.label_504:
	mov	bl, 0x76
	jmp	.label_325
.label_505:
	mov	bl, 0x66
	jmp	.label_325
.label_506:
	mov	cl, 0x72
	jmp	.label_326
.label_509:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_330
	cmp	byte ptr [rsp + 6], 0
	jne	.label_221
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
	jae	.label_335
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_335:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_228
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_228:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_232
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_232:
	add	r14, 3
	xor	r9d, r9d
.label_330:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_225
.label_510:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_241
	cmp	r12d, 2
	jne	.label_226
	cmp	byte ptr [rsp + 6], 0
	je	.label_226
	jmp	.label_221
.label_511:
	cmp	r12d, 2
	jne	.label_252
	cmp	byte ptr [rsp + 6], 0
	jne	.label_221
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_218
.label_219:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_259
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
.label_248:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_279
	test	r8b, r8b
	je	.label_279
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_225
.label_263:
	test	rsi, rsi
	jne	.label_297
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_297
.label_230:
	mov	dl, 1
.label_507:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_221
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_225:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_310
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_222
	jmp	.label_308
	.section	.text
	.align	32
	#Procedure 0x404384
	.globl sub_404384
	.type sub_404384, @function
sub_404384:

	nop	word ptr cs:[rax + rax]
.label_310:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_308
.label_222:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_319
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_218
	jmp	.label_328
	.section	.text
	.align	32
	#Procedure 0x4043cd
	.globl sub_4043cd
	.type sub_4043cd, @function
sub_4043cd:

	nop	dword ptr [rax]
.label_308:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_328
	jmp	.label_218
.label_319:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_328
.label_272:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_239
	xor	r15d, r15d
	jmp	.label_226
.label_252:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_326
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_218
.label_326:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_221
.label_325:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_225
	nop	word ptr cs:[rax + rax]
.label_328:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_274
	cmp	r12d, 2
	jne	.label_238
	mov	eax, r9d
	and	al, 1
	jne	.label_238
	cmp	r14, r11
	jae	.label_250
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_250:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_245
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_245:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_268
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_268:
	add	r14, 3
	mov	r9b, 1
.label_238:
	cmp	r14, r11
	jae	.label_254
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_254:
	inc	r14
	jmp	.label_257
.label_259:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_260
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_260:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_293:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_284
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_288
	cmp	rbp, -2
	je	.label_292
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_301
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_289:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_303
	bt	rsi, rdx
	jb	.label_312
.label_303:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_289
.label_301:
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
	je	.label_293
	jmp	.label_248
.label_304:
	xor	r13d, r13d
	jmp	.label_225
.label_297:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_225
.label_241:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_226
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_226
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_226
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_242
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_277
	cmp	byte ptr [rsp + 6], 0
	jne	.label_298
	cmp	r14, r11
	jae	.label_331
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_331:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_320
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_320:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_243
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_243:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_262
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_262:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_225
.label_226:
	xor	eax, eax
.label_265:
	xor	r13d, r13d
	jmp	.label_225
.label_279:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_258
	.section	.text
	.align	32
	#Procedure 0x4046b2
	.globl sub_4046b2
	.type sub_4046b2, @function
sub_4046b2:

	nop	word ptr cs:[rax + rax]
.label_333:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_258:
	test	r8b, r8b
	je	.label_266
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_267
	cmp	r14, r11
	jae	.label_269
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_269:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_267
	.section	.text
	.align	32
	#Procedure 0x4046fc
	.globl sub_4046fc
	.type sub_4046fc, @function
sub_4046fc:

	nop	dword ptr [rax]
.label_266:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_217
	cmp	r12d, 2
	jne	.label_283
	mov	eax, r9d
	and	al, 1
	jne	.label_283
	cmp	r14, r11
	jae	.label_287
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_287:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_290
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_290:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_273
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_273:
	add	r14, 3
	mov	r9b, 1
.label_283:
	cmp	r14, r11
	jae	.label_334
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_334:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_236
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_236:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_311
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_311:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_267:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_218
	test	r9b, 1
	je	.label_256
	mov	ebx, eax
	and	bl, 1
	jne	.label_256
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_327
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_327:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_299
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_299:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_256:
	cmp	r14, r11
	jae	.label_333
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_333
	.section	.text
	.align	32
	#Procedure 0x404803
	.globl sub_404803
	.type sub_404803, @function
sub_404803:

	nop	word ptr cs:[rax + rax]
.label_218:
	test	r9b, 1
	je	.label_220
	and	al, 1
	jne	.label_220
	cmp	r14, r11
	jae	.label_224
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_224:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_285
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_285:
	add	r14, 2
	xor	r9d, r9d
.label_220:
	mov	ebx, r15d
.label_257:
	cmp	r14, r11
	jae	.label_322
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_322:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_239
.label_288:
	xor	r13d, r13d
.label_284:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_248
.label_292:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_261
	mov	rsi, qword ptr [rsp + 0x58]
.label_324:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_302
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_324
	xor	r13d, r13d
	jmp	.label_248
.label_261:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_248
.label_302:
	xor	r13d, r13d
	jmp	.label_248
.label_242:
	xor	r13d, r13d
	jmp	.label_225
.label_277:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_225
	.section	.text
	.align	32
	#Procedure 0x4048d8
	.globl sub_4048d8
	.type sub_4048d8, @function
sub_4048d8:

	nop	dword ptr [rax + rax]
.label_316:
	mov	rcx, rsi
.label_323:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_271
	or	al, dl
	je	.label_278
.label_271:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_281
	or	al, dl
	jne	.label_281
	test	r10b, 1
	jne	.label_291
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_281
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_296
.label_281:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_305
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_309
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_309
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_321:
	cmp	r14, r11
	jae	.label_317
	mov	byte ptr [rcx + r14], al
.label_317:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_321
	jmp	.label_309
.label_274:
	mov	qword ptr [rsp + 0x20], rbp
.label_217:
	mov	rdx, rdi
	jmp	.label_229
.label_221:
	mov	qword ptr [rsp + 0x20], rbp
.label_312:
	mov	rdx, rdi
	mov	eax, 2
.label_306:
	mov	qword ptr [rsp + 0x38], rax
.label_229:
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
.label_246:
	mov	r14, rax
.label_249:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_278:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_229
.label_291:
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
	jmp	.label_246
.label_305:
	mov	rcx, qword ptr [rsp + 8]
.label_309:
	cmp	r14, r11
	jae	.label_249
	mov	byte ptr [rcx + r14], 0
	jmp	.label_249
.label_298:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_306
.label_295:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404a97
	.globl sub_404a97
	.type sub_404a97, @function
sub_404a97:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404aa0
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
	je	.label_337
	mov	qword ptr [rax], rbx
.label_337:
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
	#Procedure 0x404b8c
	.globl sub_404b8c
	.type sub_404b8c, @function
sub_404b8c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404b90

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_338
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_339
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x404bb5
	.globl sub_404bb5
	.type sub_404bb5, @function
sub_404bb5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404bc0
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
	je	.label_340
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
.label_340:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404c2c
	.globl sub_404c2c
	.type sub_404c2c, @function
sub_404c2c:

	nop	dword ptr [rax]
.label_343:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404c35

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_342
	test	rbx, rbx
	jne	.label_342
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_342:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_341
	test	rax, rax
	je	.label_343
.label_341:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x404c60
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
	#Procedure 0x404c73
	.globl sub_404c73
	.type sub_404c73, @function
sub_404c73:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c80

	.globl file_name_concat
	.type file_name_concat, @function
file_name_concat:
	push	rax
	call	mfile_name_concat
	test	rax, rax
	je	.label_344
	pop	rcx
	ret	
.label_344:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404c92
	.globl sub_404c92
	.type sub_404c92, @function
sub_404c92:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ca0
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
	#Procedure 0x404cb8
	.globl sub_404cb8
	.type sub_404cb8, @function
sub_404cb8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404cc0

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
	#Procedure 0x404cd9
	.globl sub_404cd9
	.type sub_404cd9, @function
sub_404cd9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404ce0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xb8
	mov	r15, rsi
	mov	r12d, edi
	mov	rdi, qword ptr [r15]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_338
	call	setlocale
	mov	edi, OFFSET FLAT:label_353
	mov	esi, OFFSET FLAT:label_354
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_353
	call	textdomain
	mov	dword ptr [rip + exit_failure],  0x7d
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	ebx, 0x80001f
	lea	r14, [rsp + 0x28]
	jmp	.label_350
	.section	.text
	.align	32
	#Procedure 0x404d47
	.globl sub_404d47
	.type sub_404d47, @function
sub_404d47:

	nop	word ptr [rax + rax]
.label_362:
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [(rbp * 8) + stdbuf],  rax
.label_350:
	mov	edx, OFFSET FLAT:label_387
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, r12d
	mov	rsi, r15
	call	getopt_long
	cmp	eax, 0x64
	jle	.label_394
	cmp	eax, 0x65
	mov	ecx, 2
	je	.label_396
	cmp	eax, 0x6f
	je	.label_398
	cmp	eax, 0x69
	jne	.label_367
	xor	ecx, ecx
	jmp	.label_396
.label_398:
	mov	ecx, 1
.label_396:
	lea	rbp, [rcx + rcx*2]
	mov	dword ptr [(rbp * 8) + label_389],  eax
	mov	rdi, qword ptr [rip + optarg]
	movsx	ecx, byte ptr [rdi]
	add	ecx, -9
	cmp	ecx, 0x17
	ja	.label_403
	inc	rdi
	nop	word ptr [rax + rax]
.label_412:
	bt	ebx, ecx
	jae	.label_411
	mov	qword ptr [rip + optarg],  rdi
	movsx	ecx, byte ptr [rdi]
	add	ecx, -9
	inc	rdi
	cmp	ecx, 0x18
	jb	.label_412
.label_411:
	dec	rdi
.label_403:
	mov	qword ptr [(rbp * 8) + label_385],  rdi
	mov	cl, byte ptr [rdi]
	cmp	eax, 0x69
	jne	.label_397
	cmp	cl, 0x4c
	je	.label_425
.label_397:
	cmp	cl, 0x4c
	jne	.label_345
	cmp	byte ptr [rdi + 1], 0
	je	.label_350
.label_345:
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_357
	mov	rcx, r14
	call	xstrtoumax
	test	eax, eax
	je	.label_362
	cmp	eax, 1
	jne	.label_364
	mov	ebx, 0x4b
	call	__errno_location
	jmp	.label_374
.label_394:
	cmp	eax, -1
	jne	.label_346
	movsxd	r13, dword ptr [rip + optind]
	cmp	r13d, r12d
	jge	.label_392
	mov	rax, qword ptr [rip + label_385]
	test	rax, rax
	je	.label_386
	mov	bl, byte ptr [rax]
	mov	r8d, dword ptr [rip + label_389]
	mov	eax, r8d
	sub	eax, -0x80
	cmp	eax, 0x17f
	ja	.label_390
	movsxd	rbp, r8d
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	r8d, dword ptr [rax + rbp*4]
.label_390:
	cmp	bl, 0x4c
	jne	.label_391
	lea	rdi, [rsp + 0x28]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_369
	mov	ecx, OFFSET FLAT:label_370
	xor	eax, eax
	call	__asprintf_chk
	jmp	.label_405
.label_386:
	xor	eax, eax
	jmp	.label_406
.label_391:
	mov	r9, qword ptr [rip + stdbuf]
	lea	rdi, [rsp + 0x28]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_378
	mov	ecx, OFFSET FLAT:label_370
	xor	eax, eax
	call	__asprintf_chk
.label_405:
	test	eax, eax
	js	.label_356
	mov	rdi, qword ptr [rsp + 0x28]
	call	putenv
	test	eax, eax
	jne	.label_361
	mov	al, 1
.label_406:
	mov	rcx, qword ptr [rip + label_422]
	test	rcx, rcx
	je	.label_423
	mov	bl, byte ptr [rcx]
	mov	r8d, dword ptr [rip + label_347]
	mov	eax, r8d
	sub	eax, -0x80
	cmp	eax, 0x17f
	ja	.label_348
	movsxd	rbp, r8d
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	r8d, dword ptr [rax + rbp*4]
.label_348:
	cmp	bl, 0x4c
	jne	.label_363
	lea	rdi, [rsp + 0x28]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_369
	mov	ecx, OFFSET FLAT:label_370
	xor	eax, eax
	call	__asprintf_chk
	jmp	.label_376
.label_363:
	mov	r9, qword ptr [rip + label_377]
	lea	rdi, [rsp + 0x28]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_378
	mov	ecx, OFFSET FLAT:label_370
	xor	eax, eax
	call	__asprintf_chk
.label_376:
	test	eax, eax
	js	.label_356
	mov	rdi, qword ptr [rsp + 0x28]
	call	putenv
	test	eax, eax
	jne	.label_361
	mov	al, 1
.label_423:
	mov	rcx, qword ptr [rip + label_418]
	test	rcx, rcx
	je	.label_419
	mov	bl, byte ptr [rcx]
	mov	r8d, dword ptr [rip + label_380]
	mov	eax, r8d
	sub	eax, -0x80
	cmp	eax, 0x17f
	ja	.label_381
	movsxd	rbp, r8d
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	r8d, dword ptr [rax + rbp*4]
.label_381:
	cmp	bl, 0x4c
	jne	.label_408
	lea	rdi, [rsp + 0x28]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_369
	mov	ecx, OFFSET FLAT:label_370
	xor	eax, eax
	call	__asprintf_chk
	jmp	.label_414
.label_419:
	test	al, al
	jne	.label_416
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_382
	jmp	.label_383
.label_408:
	mov	r9, qword ptr [rip + label_420]
	lea	rdi, [rsp + 0x28]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_378
	mov	ecx, OFFSET FLAT:label_370
	xor	eax, eax
	call	__asprintf_chk
.label_414:
	test	eax, eax
	js	.label_356
	mov	rdi, qword ptr [rsp + 0x28]
	call	putenv
	test	eax, eax
	jne	.label_361
.label_416:
	mov	rbp, qword ptr [rip + program_name]
	mov	esi, 0x2f
	mov	rdi, rbp
	call	strchr
	test	rax, rax
	mov	qword ptr [rsp + 8], r15
	je	.label_371
	mov	rdi, rbp
	call	dir_name
	mov	rbx, rax
	mov	qword ptr [rip + program_path],  rbx
	jmp	.label_379
.label_371:
	mov	edi, OFFSET FLAT:label_384
	call	xreadlink
	mov	r14, rax
	test	r14, r14
	je	.label_388
	mov	rdi, r14
	call	dir_name
	mov	qword ptr [rip + program_path],  rax
	jmp	.label_393
.label_388:
	mov	edi, OFFSET FLAT:label_395
	call	getenv
	xor	r14d, r14d
	test	rax, rax
	je	.label_393
	mov	rdi, rax
	call	xstrdup
	mov	r14, rax
	mov	esi, OFFSET FLAT:label_360
	mov	rdi, r14
	jmp	.label_401
	.section	.text
	.align	32
	#Procedure 0x4050ad
	.globl sub_4050ad
	.type sub_4050ad, @function
sub_4050ad:

	nop	dword ptr [rax]
.label_417:
	mov	rdi, rbx
	call	free
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_360
.label_401:
	call	strtok
	test	rax, rax
	je	.label_393
	xor	edx, edx
	mov	rdi, rax
	mov	rsi, rbp
	call	file_name_concat
	mov	rbx, rax
	mov	esi, 1
	mov	rdi, rbx
	call	access
	test	eax, eax
	jne	.label_417
	mov	rdi, rbx
	call	dir_name
	mov	qword ptr [rip + program_path],  rax
	mov	rdi, rbx
	call	free
.label_393:
	mov	rdi, r14
	call	free
	mov	rbx, qword ptr [rip + program_path]
.label_379:
	mov	r15, r13
	test	rbx, rbx
	jne	.label_355
	mov	edi, OFFSET FLAT:label_358
	call	xstrdup
	mov	rbx, rax
	mov	qword ptr [rip + program_path],  rbx
.label_355:
	mov	edi, OFFSET FLAT:label_349
	call	getenv
	mov	r14, rax
	mov	qword ptr [rsp + 0x10], rbx
	mov	eax, OFFSET FLAT:label_365
	movq	xmm0, rax
	movups	xmmword ptr [rsp + 0x18], xmm0
	cmp	byte ptr [rbx], 0
	je	.label_366
	lea	r13, [rsp + 0x18]
	lea	r12, [rsp]
	lea	rbp, [rsp + 0x28]
.label_404:
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_372
	mov	r8d, OFFSET FLAT:label_373
	xor	eax, eax
	mov	rdi, r12
	mov	rcx, rbx
	call	__asprintf_chk
	test	eax, eax
	js	.label_356
	mov	rsi, qword ptr [rsp]
	mov	edi, 1
	mov	rdx, rbp
	call	__xstat
	test	eax, eax
	mov	rbx, qword ptr [rsp]
	je	.label_400
	mov	rdi, rbx
	call	free
	cmp	qword ptr [r13], 0
	je	.label_402
	mov	rbx, qword ptr [r13]
	add	r13, 8
	cmp	byte ptr [rbx], 0
	jne	.label_404
.label_366:
	mov	edi, OFFSET FLAT:label_373
	call	xstrdup
	mov	rbx, rax
	mov	qword ptr [rsp], rbx
.label_400:
	lea	rdi, [rsp + 0x28]
	mov	esi, 1
	test	r14, r14
	je	.label_410
	mov	edx, OFFSET FLAT:label_415
	mov	ecx, OFFSET FLAT:label_349
	xor	eax, eax
	mov	r8, r14
	mov	r9, rbx
	call	__asprintf_chk
	jmp	.label_375
.label_410:
	mov	edx, OFFSET FLAT:label_409
	mov	ecx, OFFSET FLAT:label_349
	xor	eax, eax
	mov	r8, rbx
	call	__asprintf_chk
.label_375:
	test	eax, eax
	js	.label_351
	mov	rdi, qword ptr [rsp]
	call	free
	mov	rdi, qword ptr [rsp + 0x28]
	call	putenv
	test	eax, eax
	jne	.label_361
	mov	rax, qword ptr [rsp + 8]
	lea	rbx, [rax + r15*8]
	mov	rdi, qword ptr [rip + program_path]
	call	free
	mov	rdi, qword ptr [rbx]
	mov	rsi, rbx
	call	execvp
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	ebp, ebp
	cmp	r14d, 2
	sete	bpl
	or	ebp, 0x7e
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_421
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	rdi, qword ptr [rbx]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, r15
	call	error
	mov	eax, ebp
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_356:
	call	xalloc_die
.label_402:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_426
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, OFFSET FLAT:label_373
	call	quote
	mov	rcx, rax
	mov	edi, 0x7d
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_346:
	cmp	eax, 0xffffff7d
	je	.label_413
	cmp	eax, 0xffffff7e
	jne	.label_367
	xor	edi, edi
	call	usage
.label_361:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_424
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, qword ptr [rsp + 0x28]
	jmp	.label_352
.label_413:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_107
	mov	edx, OFFSET FLAT:label_109
	mov	r8d, OFFSET FLAT:label_359
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_425:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_407
	jmp	.label_383
.label_392:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_368
.label_383:
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
.label_351:
	call	xalloc_die
.label_367:
	mov	edi, 0x7d
	call	usage
.label_364:
	call	__errno_location
	mov	ebx, dword ptr [rax]
.label_374:
	mov	dword ptr [rax], ebx
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_399
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, qword ptr [rip + optarg]
.label_352:
	call	quote
	mov	rcx, rax
	mov	edi, 0x7d
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4053d0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_427
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_427
	test	byte ptr [rbx + 1], 1
	je	.label_427
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_427:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x405403
	.globl sub_405403
	.type sub_405403, @function
sub_405403:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405410
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_428
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_429
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_431
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_109
	mov	ecx, OFFSET FLAT:label_110
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_430
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x405484
	.globl sub_405484
	.type sub_405484, @function
sub_405484:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4054f5
	.globl sub_4054f5
	.type sub_4054f5, @function
sub_4054f5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405502
	.globl sub_405502
	.type sub_405502, @function
sub_405502:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405526
	.globl sub_405526
	.type sub_405526, @function
sub_405526:

	nop	word ptr cs:[rax + rax]
