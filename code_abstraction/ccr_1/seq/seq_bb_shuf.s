	.section	.text
	.align	32
	#Procedure 0x401749
	.globl sub_401749
	.type sub_401749, @function
sub_401749:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x40174a
	.globl sub_40174a
	.type sub_40174a, @function
sub_40174a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401782
	.globl sub_401782
	.type sub_401782, @function
sub_401782:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4017ca
	.globl sub_4017ca
	.type sub_4017ca, @function
sub_4017ca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4017ec
	.globl sub_4017ec
	.type sub_4017ec, @function
sub_4017ec:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4017fd
	.globl sub_4017fd
	.type sub_4017fd, @function
sub_4017fd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401816
	.globl sub_401816
	.type sub_401816, @function
sub_401816:

	nop	word ptr cs:[rax + rax]
.label_9:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x401823
	.globl sub_401823
	.type sub_401823, @function
sub_401823:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401825
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_9
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	32
	#Procedure 0x401840

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
	je	.label_10
	mov	edx, OFFSET FLAT:label_20
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_26
.label_10:
	mov	edx, OFFSET FLAT:label_27
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_26:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_14
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
	mov	esi, OFFSET FLAT:label_28
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_15
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_16]]
.label_512:
	add	rsp, 8
	jmp	.label_13
.label_15:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_23
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
	jmp	.label_13
.label_513:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_11
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
.label_514:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_24
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
.label_515:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_21
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
.label_516:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_18
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
	jmp	.label_13
.label_517:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_17
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
	jmp	.label_13
.label_518:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_19
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
	jmp	.label_13
.label_519:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_22
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
	jmp	.label_13
.label_521:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_25
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
	jmp	.label_13
.label_520:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_12
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
.label_13:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x401b98
	.globl sub_401b98
	.type sub_401b98, @function
sub_401b98:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ba0

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
	je	.label_29
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_31
	jmp	.label_30
.label_29:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_30
.label_31:
	mov	eax, 1
	test	bpl, bpl
	je	.label_30
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
.label_30:
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
	#Procedure 0x401c1d
	.globl sub_401c1d
	.type sub_401c1d, @function
sub_401c1d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401c20

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
	je	.label_32
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
.label_32:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401c72
	.globl sub_401c72
	.type sub_401c72, @function
sub_401c72:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c80
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
	#Procedure 0x401c8f
	.globl sub_401c8f
	.type sub_401c8f, @function
sub_401c8f:

	nop	
.label_33:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401c96
	.globl sub_401c96
	.type sub_401c96, @function
sub_401c96:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c9b

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_33
	test	rdx, rdx
	je	.label_33
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_36:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_34
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401ce0
	.globl sub_401ce0
	.type sub_401ce0, @function
sub_401ce0:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401cef

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_36
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_37
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_39
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_37
	mov	esi, OFFSET FLAT:label_38
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_35
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_35:
	mov	rbx, r14
.label_37:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
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

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	mov	eax, edi
	ret	
	.section	.text
	.align	32
	#Procedure 0x401db3
	.globl sub_401db3
	.type sub_401db3, @function
sub_401db3:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401dc0
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
	.align	32
	#Procedure 0x401de7
	.globl sub_401de7
	.type sub_401de7, @function
sub_401de7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401df0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_40
	ret	
.label_40:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	32
	#Procedure 0x401e03
	.globl sub_401e03
	.type sub_401e03, @function
sub_401e03:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e10
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
	#Procedure 0x401e1f
	.globl sub_401e1f
	.type sub_401e1f, @function
sub_401e1f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401e20
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
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

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	32
	#Procedure 0x401e39
	.globl sub_401e39
	.type sub_401e39, @function
sub_401e39:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401e40

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
	mov	rax,  qword ptr [word ptr [rip + label_41]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_42]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_43]]
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
	.align	32
	#Procedure 0x401ea8
	.globl sub_401ea8
	.type sub_401ea8, @function
sub_401ea8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401eb0
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
	.align	32
	#Procedure 0x401f22
	.globl sub_401f22
	.type sub_401f22, @function
sub_401f22:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401f30
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
	.align	32
	#Procedure 0x401f3f
	.globl sub_401f3f
	.type sub_401f3f, @function
sub_401f3f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401f40

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_44
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_45
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401f65
	.globl sub_401f65
	.type sub_401f65, @function
sub_401f65:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401f70
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x401f78
	.globl sub_401f78
	.type sub_401f78, @function
sub_401f78:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401f80

	.globl c_locale
	.type c_locale, @function
c_locale:
	cmp	qword ptr [word ptr [rip + c_locale_cache]],  0
	jne	.label_46
	push	rax
	mov	edi, 0x1fbf
	mov	esi, OFFSET FLAT:label_47
	xor	edx, edx
	call	newlocale
	mov	qword ptr [word ptr [rip + c_locale_cache]],  rax
	add	rsp, 8
.label_46:
	mov	rax,  qword ptr [word ptr [rip + c_locale_cache]]
	ret	
	.section	.text
	.align	32
	#Procedure 0x401faf
	.globl sub_401faf
	.type sub_401faf, @function
sub_401faf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401fb0

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
	.align	32
	#Procedure 0x401fe7
	.globl sub_401fe7
	.type sub_401fe7, @function
sub_401fe7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ff0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_49
	cmp	byte ptr [rax], 0x43
	jne	.label_51
	cmp	byte ptr [rax + 1], 0
	je	.label_48
.label_51:
	mov	esi, OFFSET FLAT:label_50
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_49
.label_48:
	xor	ebx, ebx
.label_49:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402021
	.globl sub_402021
	.type sub_402021, @function
sub_402021:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402030

	.globl get_default_format
	.type get_default_format, @function
get_default_format:
	push	r14
	push	rbx
	push	rax
	mov	eax, dword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x58]
	cmp	eax, r9d
	cmovge	r9d, eax
	mov	ebx, OFFSET FLAT:label_52
	cmp	r9d, 0x7fffffff
	je	.label_53
	lea	r14, [rsp + 0x60]
	mov	esi, dword ptr [r14 + 0x18]
	mov	ebx, OFFSET FLAT:label_52
	cmp	esi, 0x7fffffff
	je	.label_53
	cmp	byte ptr [byte ptr [rip + equal_width]],  1
	jne	.label_54
	lea	r10, [rsp + 0x20]
	mov	edi, r9d
	sub	edi, eax
	movsxd	rdi, edi
	mov	ebx, r9d
	sub	ebx, esi
	movsxd	rbx, ebx
	test	r9d, r9d
	sete	r8b
	setne	r11b
	test	esi, esi
	setne	dl
	sete	cl
	and	dl, r8b
	and	cl, r11b
	movzx	ecx, cl
	movzx	edx, dl
	sub	rbx, rdx
	add	rbx, rcx
	add	rbx, qword ptr [r14 + 0x10]
	test	eax, eax
	sete	al
	and	al, r11b
	movzx	r8d, al
	add	r8, rdi
	add	r8, qword ptr [r10 + 0x10]
	cmp	r8, rbx
	cmovbe	r8, rbx
	mov	ebx, OFFSET FLAT:label_52
	cmp	r8, 0x7fffffff
	ja	.label_53
	mov	ebx, OFFSET FLAT:get_default_format.format_buf
	mov	edi, OFFSET FLAT:get_default_format.format_buf
	mov	esi, 1
	mov	edx, 0x1c
	mov	ecx, OFFSET FLAT:label_55
	xor	eax, eax
	call	__sprintf_chk
	jmp	.label_53
.label_54:
	mov	ebx, OFFSET FLAT:get_default_format.format_buf
	mov	edi, OFFSET FLAT:get_default_format.format_buf
	mov	esi, 1
	mov	edx, 0x1c
	mov	ecx, OFFSET FLAT:label_56
	xor	eax, eax
	mov	r8d, r9d
	call	__sprintf_chk
.label_53:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x402133
	.globl sub_402133
	.type sub_402133, @function
sub_402133:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402140

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40214a
	.globl sub_40214a
	.type sub_40214a, @function
sub_40214a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402150

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_57
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_59
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_58
.label_60:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402182
	.globl sub_402182
	.type sub_402182, @function
sub_402182:

	nop	dword ptr [rax]
.label_59:
	call	xalloc_die
.label_57:
	test	rcx, rcx
	jne	.label_61
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_61:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_60
.label_58:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
	.section	.text
	.align	32
	#Procedure 0x4021d0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_62
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_64
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_64
.label_62:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_63
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_63:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_64:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_66
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_65
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_68
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_65:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_67
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402290
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_69
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_69:
	push	rax
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4022b6
	.globl sub_4022b6
	.type sub_4022b6, @function
sub_4022b6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4022c0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_70
	test	rbx, rbx
	jne	.label_70
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_70:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_72
	test	rax, rax
	je	.label_71
.label_72:
	pop	rbx
	ret	
.label_71:
	call	xalloc_die
.label_73:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4022f5
	.globl sub_4022f5
	.type sub_4022f5, @function
sub_4022f5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4022ff
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_73
	call	rpl_calloc
	test	rax, rax
	je	.label_73
	pop	rcx
	ret	
.label_76:
	mov	al, 1
	fldz	
	fxch	st(1)
	fucomi	st(1)
	fstp	st(1)
	jne	.label_74
	jnp	.label_78
.label_74:
	cmp	dword ptr [r12], 0x22
	setne	al
	jmp	.label_78
	.section	.text
	.align	32
	#Procedure 0x402338

	.globl xstrtold
	.type xstrtold, @function
xstrtold:
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
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, rbx
	je	.label_77
	test	r15, r15
	jne	.label_76
	cmp	byte ptr [rax], 0
	je	.label_76
	xor	eax, eax
	jmp	.label_75
.label_77:
	xor	eax, eax
.label_78:
	test	r15, r15
	je	.label_75
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [r15], rcx
.label_75:
	fstp	xword ptr [r14]
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4023a4
	.globl sub_4023a4
	.type sub_4023a4, @function
sub_4023a4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4023b0
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x4023ba
	.globl sub_4023ba
	.type sub_4023ba, @function
sub_4023ba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4023c0
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
	#Procedure 0x4023d3
	.globl sub_4023d3
	.type sub_4023d3, @function
sub_4023d3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4023e0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	32
	#Procedure 0x4023ea
	.globl sub_4023ea
	.type sub_4023ea, @function
sub_4023ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4023f0

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
	.align	32
	#Procedure 0x402429
	.globl sub_402429
	.type sub_402429, @function
sub_402429:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402430
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
	.align	32
	#Procedure 0x402441
	.globl sub_402441
	.type sub_402441, @function
sub_402441:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402450
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
	.align	32
	#Procedure 0x402464
	.globl sub_402464
	.type sub_402464, @function
sub_402464:

	nop	word ptr cs:[rax + rax]
.label_79:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x402473
	.globl sub_402473
	.type sub_402473, @function
sub_402473:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40247b
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_79
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	32
	#Procedure 0x402490
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40249a
	.globl sub_40249a
	.type sub_40249a, @function
sub_40249a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4024a0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	32
	#Procedure 0x4024aa
	.globl sub_4024aa
	.type sub_4024aa, @function
sub_4024aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4024b0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_80
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_81
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_83
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_84
	mov	ecx, OFFSET FLAT:label_85
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_82
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
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

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_92
	nop	
.label_91:
	mov	edi, OFFSET FLAT:label_86
	call	strcmp
	test	eax, eax
	je	.label_89
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_91
.label_89:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_86
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_94
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_84
	mov	ecx, OFFSET FLAT:label_85
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_87
	mov	esi, OFFSET FLAT:label_88
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_87
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_93
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_87:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_95
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_86
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_85
	mov	ecx, OFFSET FLAT:label_86
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_90
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_96
	mov	ecx, OFFSET FLAT:label_44
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
	.align	32
	#Procedure 0x40264a
	.globl sub_40264a
	.type sub_40264a, @function
sub_40264a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402650
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_97
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_97
.label_98:
	ret	
.label_97:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_98
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x402676
	.globl sub_402676
	.type sub_402676, @function
sub_402676:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402680
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_99
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_101:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_101
.label_99:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_103
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_102]], OFFSET FLAT:slot0
.label_103:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_100
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_100:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x402711
	.globl sub_402711
	.type sub_402711, @function
sub_402711:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402720

	.globl c_strtold
	.type c_strtold, @function
c_strtold:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rsi
	mov	r14, rdi
	call	c_locale
	test	rax, rax
	je	.label_104
	mov	rdi, rax
	call	uselocale
	mov	r15, rax
	test	r15, r15
	je	.label_104
	mov	rdi, r14
	mov	rsi, rbx
	call	strtold
	fstp	xword ptr [rsp + 0xc]
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, r15
	call	uselocale
	test	rax, rax
	je	.label_105
	mov	dword ptr [rbx], ebp
	fld	xword ptr [rsp + 0xc]
	jmp	.label_106
.label_104:
	fldz	
	test	rbx, rbx
	je	.label_106
	mov	qword ptr [rbx], r14
.label_106:
	add	rsp, 0x18
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_105:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402792
	.globl sub_402792
	.type sub_402792, @function
sub_402792:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4027a0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_107:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_107
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x4027c1
	.globl sub_4027c1
	.type sub_4027c1, @function
sub_4027c1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4027d0

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
	jne	.label_114
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
	je	.label_108
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_112
	mov	eax, OFFSET FLAT:label_113
	jmp	.label_111
.label_108:
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
	je	.label_117
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_109
	mov	eax, OFFSET FLAT:label_110
	jmp	.label_111
.label_117:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_115
	mov	eax, OFFSET FLAT:label_116
.label_111:
	cmove	rax, rcx
.label_114:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40288d
	.globl sub_40288d
	.type sub_40288d, @function
sub_40288d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402890
	.globl c_tolower
	.type c_tolower, @function
c_tolower:

	lea	ecx, [rdi - 0x41]
	lea	eax, [rdi + 0x20]
	cmp	ecx, 0x1a
	cmovae	eax, edi
	ret	
	.section	.text
	.align	32
	#Procedure 0x40289d
	.globl sub_40289d
	.type sub_40289d, @function
sub_40289d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4028a0

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
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
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	32
	#Procedure 0x4028bd
	.globl sub_4028bd
	.type sub_4028bd, @function
sub_4028bd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4028c0
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

	nop	word ptr [rax + rax]
.label_118:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x4028fe
	.globl sub_4028fe
	.type sub_4028fe, @function
sub_4028fe:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402907

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_118
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_120
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_118
.label_120:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_118
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_119
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_119:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402970

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
	#Procedure 0x4029a6
	.globl sub_4029a6
	.type sub_4029a6, @function
sub_4029a6:

	nop	word ptr cs:[rax + rax]
.label_121:
	inc	rax
.label_123:
	movzx	ecx, byte ptr [rdi + rax]
	cmp	cl, 0x30
	je	.label_121
	test	cl, cl
	jne	.label_122
	lea	rcx, [rdi + rax]
	test	rax, rax
	lea	rax, [rdi + rax - 1]
	cmove	rax, rcx
	ret	
.label_122:
	add	rdi, rax
	mov	rax, rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x4029d8
	.globl sub_4029d8
	.type sub_4029d8, @function
sub_4029d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4029e0

	.globl trim_leading_zeros
	.type trim_leading_zeros, @function
trim_leading_zeros:
	xor	eax, eax
	jmp	.label_123
	.section	.text
	.align	32
	#Procedure 0x4029e4
	.globl sub_4029e4
	.type sub_4029e4, @function
sub_4029e4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4029f0

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
	.align	32
	#Procedure 0x402a1d
	.globl sub_402a1d
	.type sub_402a1d, @function
sub_402a1d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402a20

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
	.align	32
	#Procedure 0x402a33
	.globl sub_402a33
	.type sub_402a33, @function
sub_402a33:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a40
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_124
.label_125:
	ret	
.label_124:
	cmp	edi, 0x7f
	je	.label_125
	xor	eax, eax
	jmp	.label_125
	.section	.text
	.align	32
	#Procedure 0x402a51
	.globl sub_402a51
	.type sub_402a51, @function
sub_402a51:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a60

	.globl incr
	.type incr, @function
incr:
	mov	r8, qword ptr [rdi]
	mov	rcx, qword ptr [rsi]
	lea	rcx, [r8 + rcx - 1]
	nop	dword ptr [rax + rax]
.label_127:
	movzx	eax, byte ptr [rcx]
	mov	edx, eax
	inc	dl
	mov	byte ptr [rcx], dl
	cmp	al, 0x39
	jl	.label_126
	mov	byte ptr [rcx], 0x30
	dec	rcx
	cmp	rcx, r8
	jae	.label_127
	mov	rax, qword ptr [rdi]
	lea	rcx, [rax - 1]
	mov	qword ptr [rdi], rcx
	mov	byte ptr [rax - 1], 0x31
	inc	qword ptr [rsi]
.label_126:
	ret	
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
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	32
	#Procedure 0x402aaa
	.globl sub_402aaa
	.type sub_402aaa, @function
sub_402aaa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ab0

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
	je	.label_128
	mov	qword ptr [rax], rbx
.label_128:
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
	#Procedure 0x402b9c
	.globl sub_402b9c
	.type sub_402b9c, @function
sub_402b9c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402ba0

	.globl io_error
	.type io_error, @function
io_error:
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	clearerr_unlocked
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_66
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402be0
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	lea	ecx, [rdi - 0x61]
	lea	eax, [rdi - 0x20]
	cmp	ecx, 0x1a
	cmovae	eax, edi
	ret	
	.section	.text
	.align	32
	#Procedure 0x402bed
	.globl sub_402bed
	.type sub_402bed, @function
sub_402bed:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402bf0
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x402bfa
	.globl sub_402bfa
	.type sub_402bfa, @function
sub_402bfa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c00

	.globl print_numbers
	.type print_numbers, @function
print_numbers:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x88
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, rdi
	fld	xword ptr [rsp + 0xe0]
	fld	xword ptr [rsp + 0xd0]
	fld	xword ptr [rsp + 0xc0]
	fxch	st(2)
	fucomi	st(2)
	seta	al
	fld	st(0)
	fstp	xword ptr [rsp + 0x4c]
	fld	st(2)
	fstp	xword ptr [rsp + 0x1c]
	fxch	st(2)
	fucomip	st(2)
	fstp	st(1)
	seta	cl
	fldz	
	fld	st(1)
	fstp	xword ptr [rsp + 0x64]
	fucomip	st(1)
	fstp	st(0)
	ja	.label_129
	mov	eax, ecx
.label_129:
	test	al, al
	jne	.label_134
	fld	xword ptr [rsp + 0x1c]
	fstp	xword ptr [rsp]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	call	__printf_chk
	test	eax, eax
	fldz	
	js	.label_141
	fstp	st(0)
	fld1	
	xor	r12d, r12d
	fld	xword ptr [rsp + 0x1c]
	fxch	st(1)
	fstp	xword ptr [rsp + 0x28]
	nop	word ptr cs:[rax + rax]
.label_135:
	test	r12b, r12b
	jne	.label_131
	fld	xword ptr [rsp + 0x64]
	fld	xword ptr [rsp + 0x28]
	fmul	st(1)
	fld	xword ptr [rsp + 0x1c]
	faddp	st(1)
	fld	xword ptr [rsp + 0x4c]
	fucomi	st(1)
	seta	r12b
	fld	st(1)
	fstp	xword ptr [rsp + 0x34]
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	seta	al
	fldz	
	fucomip	st(1)
	fstp	st(0)
	ja	.label_140
	mov	r12b, al
.label_140:
	test	r12b, r12b
	je	.label_136
	fstp	xword ptr [rsp + 0x58]
	cmp	byte ptr [byte ptr [rip + locale_ok]],  0
	je	.label_137
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_47
	call	setlocale
.label_137:
	fld	xword ptr [rsp + 0x34]
	fstp	xword ptr [rsp]
	mov	esi, 1
	xor	eax, eax
	lea	rdi, [rsp + 0x10]
	mov	rdx, rbx
	call	__asprintf_chk
	mov	ebp, eax
	cmp	byte ptr [byte ptr [rip + locale_ok]],  0
	je	.label_139
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_44
	call	setlocale
.label_139:
	test	ebp, ebp
	js	.label_130
	movsxd	rax, ebp
	sub	rax, r14
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0
	mov	rdi, qword ptr [rsp + 0x10]
	add	rdi, r15
	xor	r13d, r13d
	xor	esi, esi
	mov	ecx, OFFSET FLAT:cl_strtold
	lea	rdx, [rsp + 0x70]
	call	xstrtold
	fld	xword ptr [rsp + 0x70]
	test	al, al
	je	.label_138
	fld	xword ptr [rsp + 0x4c]
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	jne	.label_133
	jp	.label_133
	mov	qword ptr [rsp + 0x40], 0
	fld	xword ptr [rsp + 0x58]
	fstp	xword ptr [rsp]
	mov	esi, 1
	xor	eax, eax
	lea	rdi, [rsp + 0x40]
	mov	rdx, rbx
	call	__asprintf_chk
	test	eax, eax
	js	.label_130
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	setne	r13b
	mov	rdi, rbp
	call	free
	jmp	.label_133
.label_138:
	fstp	st(0)
.label_133:
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	test	r13b, r13b
	fldz	
	je	.label_131
.label_136:
	fstp	st(0)
	mov	rdi,  qword ptr [word ptr [rip + separator]]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
	cmp	eax, -1
	je	.label_132
	fld1	
	fld	xword ptr [rsp + 0x28]
	faddp	st(1)
	fstp	xword ptr [rsp + 0x28]
	fld	xword ptr [rsp + 0x34]
	fstp	xword ptr [rsp]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	call	__printf_chk
	test	eax, eax
	fld	xword ptr [rsp + 0x34]
	jns	.label_135
.label_141:
	fstp	st(0)
	call	io_error
.label_130:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402e35
	.globl sub_402e35
	.type sub_402e35, @function
sub_402e35:

	nop	word ptr cs:[rax + rax]
.label_131:
	fstp	st(0)
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:terminator
	call	fputs_unlocked
	cmp	eax, -1
	je	.label_132
.label_134:
	add	rsp, 0x88
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_132:
	call	io_error
.label_143:
	ret	
	.section	.text
	.align	32
	#Procedure 0x402e71
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_142
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_144]]
.label_142:
	xor	eax, eax
	jmp	.label_143
	.section	.text
	.align	32
	#Procedure 0x402e86
	.globl sub_402e86
	.type sub_402e86, @function
sub_402e86:

	nop	word ptr cs:[rax + rax]
.label_147:
	xor	eax, eax
.label_146:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x402e9a
	.globl sub_402e9a
	.type sub_402e9a, @function
sub_402e9a:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402e9e

	.globl all_digits_p
	.type all_digits_p, @function
all_digits_p:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	movsx	eax, byte ptr [rbx]
	add	eax, -0x30
	cmp	eax, 9
	ja	.label_147
	mov	rdi, rbx
	call	strlen
	mov	r14, rax
	mov	esi, OFFSET FLAT:label_145
	mov	rdi, rbx
	call	strspn
	cmp	r14, rax
	sete	al
	jmp	.label_146
	.section	.text
	.align	32
	#Procedure 0x402ed0

	.globl long_double_format
	.type long_double_format, @function
long_double_format:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, rsi
	mov	r12, rdi
	xor	ebp, ebp
	xor	ebx, ebx
	jmp	.label_152
	.section	.text
	.align	32
	#Procedure 0x402eea
	.globl sub_402eea
	.type sub_402eea, @function
sub_402eea:

	nop	word ptr [rax + rax]
.label_154:
	inc	rbp
	xor	ecx, ecx
	cmp	al, 0x25
	sete	cl
	lea	rbx, [rcx + rbx + 1]
.label_152:
	movzx	eax, byte ptr [r12 + rbx]
	cmp	al, 0x25
	jne	.label_165
	cmp	byte ptr [r12 + rbx + 1], 0x25
	jne	.label_149
	movzx	eax, byte ptr [r12 + rbx]
.label_165:
	test	al, al
	jne	.label_154
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_155
	jmp	.label_156
.label_149:
	lea	rdi, [r12 + rbx + 1]
	inc	rbx
	mov	esi, OFFSET FLAT:label_159
	call	strspn
	mov	r14, rax
	add	r14, rbx
	lea	rdi, [r12 + r14]
	mov	esi, OFFSET FLAT:label_145
	call	strspn
	mov	r15, rax
	add	r15, r14
	cmp	byte ptr [r12 + r15], 0x2e
	jne	.label_150
	lea	rdi, [r12 + r15 + 1]
	mov	esi, OFFSET FLAT:label_145
	call	strspn
	lea	r15, [rax + r15 + 1]
.label_150:
	xor	eax, eax
	cmp	byte ptr [r12 + r15], 0x4c
	sete	al
	lea	rbx, [rax + r15]
	movsx	esi, byte ptr [r12 + rbx]
	test	esi, esi
	je	.label_162
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r13
	mov	edi, OFFSET FLAT:label_148
	mov	edx, 9
	call	memchr
	test	rax, rax
	je	.label_158
	lea	r13, [r12 + r15]
	inc	rbx
	xor	r14d, r14d
	jmp	.label_160
	.section	.text
	.align	32
	#Procedure 0x402fb5
	.globl sub_402fb5
	.type sub_402fb5, @function
sub_402fb5:

	nop	word ptr cs:[rax + rax]
.label_157:
	inc	r14
	xor	ecx, ecx
	cmp	al, 0x25
	sete	cl
	lea	rbx, [rcx + rbx + 1]
.label_160:
	movzx	eax, byte ptr [r12 + rbx]
	cmp	al, 0x25
	jne	.label_151
	cmp	byte ptr [r12 + rbx + 1], 0x25
	jne	.label_153
	movzx	eax, byte ptr [r12 + rbx]
.label_151:
	test	al, al
	jne	.label_157
	add	rbx, 2
	mov	rdi, rbx
	call	xmalloc
	mov	rbx, rax
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, r15
	call	memcpy
	mov	byte ptr [rbx + r15], 0x4c
	lea	rdi, [rbx + r15 + 1]
	add	r13, qword ptr [rsp + 8]
	mov	rsi, r13
	call	strcpy
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax], rbp
	mov	qword ptr [rax + 8], r14
	mov	rax, rbx
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_153:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_164
.label_156:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r12
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_162:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_161
	jmp	.label_156
.label_158:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_163
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi, r12
	call	quote
	mov	rcx, rax
	movsx	r8d, byte ptr [r12 + rbx]
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4030b0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_167:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_166
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_168
	.section	.text
	.align	32
	#Procedure 0x4030d9
	.globl sub_4030d9
	.type sub_4030d9, @function
sub_4030d9:

	nop	dword ptr [rax]
.label_166:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_168:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_169
	inc	r9
	cmp	r9, 0xa
	jb	.label_167
.label_169:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x40310f
	.globl sub_40310f
	.type sub_40310f, @function
sub_40310f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403110
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_170
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_170:
	push	rax
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403133
	.globl sub_403133
	.type sub_403133, @function
sub_403133:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403140

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_171
	test	rax, rax
	je	.label_172
.label_171:
	pop	rbx
	ret	
.label_172:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40315a
	.globl sub_40315a
	.type sub_40315a, @function
sub_40315a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403160

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
	mov	rcx,  qword ptr [word ptr [rip + label_41]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_42]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_43]]
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
	.align	32
	#Procedure 0x4031cd
	.globl sub_4031cd
	.type sub_4031cd, @function
sub_4031cd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4031d0

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	32
	#Procedure 0x4031dd
	.globl sub_4031dd
	.type sub_4031dd, @function
sub_4031dd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4031e0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	32
	#Procedure 0x4031e7
	.globl sub_4031e7
	.type sub_4031e7, @function
sub_4031e7:

	nop	word ptr [rax + rax]
.label_174:
	mov	rsi, rdx
	jmp	strcmp
	.section	.text
	.align	32
	#Procedure 0x4031f8
	.globl sub_4031f8
	.type sub_4031f8, @function
sub_4031f8:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4031fb

	.globl cmp
	.type cmp, @function
cmp:
	mov	eax, 0xffffffff
	cmp	rsi, rcx
	jb	.label_173
	mov	eax, 1
	cmp	rcx, rsi
	jae	.label_174
.label_173:
	ret	
	.section	.text
	.align	32
	#Procedure 0x403210

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xf8
	mov	r13, rsi
	mov	r15d, edi
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_178]]
	movaps	xmmword ptr [rsp + 0xd0], xmm0
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_179]]
	movaps	xmmword ptr [rsp + 0xc0], xmm0
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_178]]
	movaps	xmmword ptr [rsp + 0xb0], xmm0
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_179]]
	movaps	xmmword ptr [rsp + 0xa0], xmm0
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0xe0], xmm0
	mov	rdi, qword ptr [r13]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_44
	call	setlocale
	test	rax, rax
	setne	byte ptr [byte ptr [rip + locale_ok]]
	mov	edi, OFFSET FLAT:label_206
	mov	esi, OFFSET FLAT:label_207
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_206
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	byte ptr [byte ptr [rip + equal_width]],  0
	mov	qword ptr [word ptr [rip + separator]], OFFSET FLAT:label_210
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	xor	ebp, ebp
	cmp	eax, r15d
	jge	.label_194
	xor	ebp, ebp
.label_208:
	cdqe	
	mov	rax, qword ptr [r13 + rax*8]
	cmp	byte ptr [rax], 0x2d
	jne	.label_213
	movsx	eax, byte ptr [rax + 1]
	cmp	eax, 0x2e
	je	.label_194
	add	eax, -0x30
	cmp	eax, 0xa
	jb	.label_194
.label_213:
	mov	edx, OFFSET FLAT:label_219
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, r15d
	mov	rsi, r13
	call	getopt_long
	cmp	eax, 0x65
	jle	.label_176
	cmp	eax, 0x77
	je	.label_180
	cmp	eax, 0x73
	je	.label_182
	cmp	eax, 0x66
	jne	.label_184
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	jmp	.label_185
.label_180:
	mov	byte ptr [byte ptr [rip + equal_width]],  1
	jmp	.label_185
.label_182:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + separator]],  rax
.label_185:
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	cmp	eax, r15d
	jl	.label_208
	jmp	.label_194
.label_176:
	cmp	eax, -1
	jne	.label_196
.label_194:
	mov	ebx, r15d
	sub	ebx,  dword ptr [dword ptr [rip + optind]]
	je	.label_198
	cmp	ebx, 4
	jae	.label_193
	xor	r12d, r12d
	test	rbp, rbp
	mov	r14d, 0
	je	.label_204
	lea	rsi, [rsp + 0xe0]
	mov	rdi, rbp
	call	long_double_format
	xor	r12d, r12d
	test	rax, rax
	mov	r14d, 0
	je	.label_204
	cmp	byte ptr [byte ptr [rip + equal_width]],  1
	je	.label_211
	mov	r12b, 1
	mov	r14, rax
.label_204:
	movsxd	rbp,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, qword ptr [r13 + rbp*8]
	call	all_digits_p
	test	al, al
	je	.label_175
	cmp	ebx, 1
	je	.label_212
	mov	rdi, qword ptr [r13 + rbp*8 + 8]
	call	all_digits_p
	test	al, al
	je	.label_175
	cmp	ebx, 3
	jae	.label_215
.label_212:
	mov	al,  byte ptr [byte ptr [rip + equal_width]]
	or	al, r12b
	test	al, 1
	je	.label_217
	jmp	.label_175
.label_215:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rax, qword ptr [r13 + rax*8 + 8]
	cmp	byte ptr [rax], 0x31
	jne	.label_175
	cmp	byte ptr [rax + 1], 0
	jne	.label_175
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, qword ptr [r13 + rax*8 + 0x10]
	call	all_digits_p
	mov	cl,  byte ptr [byte ptr [rip + equal_width]]
	or	cl, r12b
	test	cl, 1
	jne	.label_175
	xor	al, 1
	jne	.label_175
.label_217:
	mov	rdi,  qword ptr [word ptr [rip + separator]]
	call	strlen
	cmp	rax, 1
	jne	.label_175
	mov	edi, OFFSET FLAT:label_190
	cmp	ebx, 1
	je	.label_191
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, qword ptr [r13 + rax*8]
.label_191:
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	lea	eax, [rbx + rax - 1]
	mov	rsi, qword ptr [r13 + rax*8]
	call	seq_fast
	test	al, al
	jne	.label_202
.label_175:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	lea	ecx, [rax + 1]
	mov	dword ptr [dword ptr [rip + optind]],  ecx
	mov	rsi, qword ptr [r13 + rax*8]
	lea	rdi, [rsp + 0x70]
	call	scan_arg
	cmp	dword ptr [dword ptr [rip + optind]],  r15d
	jge	.label_209
	movaps	xmm0, xmmword ptr [rsp + 0x70]
	movaps	xmm1, xmmword ptr [rsp + 0x80]
	movaps	xmmword ptr [rsp + 0xd0], xmm1
	movaps	xmmword ptr [rsp + 0xc0], xmm0
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	lea	ecx, [rax + 1]
	mov	dword ptr [dword ptr [rip + optind]],  ecx
	mov	rsi, qword ptr [r13 + rax*8]
	lea	rdi, [rsp + 0x70]
	call	scan_arg
	cmp	dword ptr [dword ptr [rip + optind]],  r15d
	jge	.label_209
	movaps	xmm0, xmmword ptr [rsp + 0x70]
	movaps	xmm1, xmmword ptr [rsp + 0x80]
	movaps	xmmword ptr [rsp + 0xb0], xmm1
	movaps	xmmword ptr [rsp + 0xa0], xmm0
	fld	xword ptr [rsp + 0xa0]
	fldz	
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	jne	.label_216
	jnp	.label_181
.label_216:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	lea	ecx, [rax + 1]
	mov	dword ptr [dword ptr [rip + optind]],  ecx
	mov	rsi, qword ptr [r13 + rax*8]
	lea	rdi, [rsp + 0x70]
	call	scan_arg
.label_209:
	fld	xword ptr [rsp + 0xc0]
	fldz	
	fld	st(1)
	fmul	st(1)
	fucomip	st(1)
	jne	.label_188
	jp	.label_188
	cmp	dword ptr [rsp + 0xd8], 0
	jne	.label_188
	cmp	dword ptr [rsp + 0xb8], 0
	jne	.label_188
	fxch	st(1)
	fucomip	st(1)
	fldz	
	fxch	st(1)
	jb	.label_188
	fstp	st(1)
	mov	eax, dword ptr [rsp + 0x88]
	test	eax, eax
	fldz	
	fxch	st(1)
	jne	.label_188
	fstp	st(1)
	fld	xword ptr [rsp + 0xa0]
	fld1	
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	fldz	
	fxch	st(1)
	jne	.label_188
	jp	.label_188
	fstp	st(1)
	fld	xword ptr [rsp + 0x70]
	fucomip	st(1)
	fstp	st(0)
	fldz	
	fldz	
	jb	.label_188
	fstp	st(1)
	fstp	st(0)
	or	r12b,  byte ptr [byte ptr [rip + equal_width]]
	test	r12b, 1
	fldz	
	fldz	
	jne	.label_188
	fstp	st(1)
	fstp	st(0)
	mov	rdi,  qword ptr [word ptr [rip + separator]]
	call	strlen
	cmp	rax, 1
	fldz	
	fldz	
	jne	.label_188
	fstp	st(1)
	fstp	st(0)
	fld	xword ptr [rsp + 0xc0]
	fstp	xword ptr [rsp]
	lea	rdi, [rsp + 0x98]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_189
	xor	eax, eax
	call	__asprintf_chk
	test	eax, eax
	js	.label_214
	fld	xword ptr [rsp + 0x70]
	fldz	
	fld	st(1)
	fmul	st(1)
	fucomip	st(1)
	fstp	st(0)
	jne	.label_186
	jp	.label_186
	fstp	xword ptr [rsp]
	lea	rdi, [rsp + 0x68]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_189
	xor	eax, eax
	call	__asprintf_chk
	test	eax, eax
	jns	.label_197
.label_214:
	call	xalloc_die
.label_186:
	fstp	st(0)
	mov	edi, OFFSET FLAT:label_199
	call	xstrdup
	mov	qword ptr [rsp + 0x68], rax
.label_197:
	mov	rdi, qword ptr [rsp + 0x98]
	cmp	byte ptr [rdi], 0x2d
	je	.label_203
	mov	rsi, qword ptr [rsp + 0x68]
	cmp	byte ptr [rsi], 0x2d
	je	.label_203
	call	seq_fast
	test	al, al
	jne	.label_202
.label_203:
	mov	rdi, qword ptr [rsp + 0x98]
	call	free
	mov	rdi, qword ptr [rsp + 0x68]
	call	free
	fldz	
	fldz	
.label_188:
	fstp	st(1)
	fstp	st(0)
	test	r14, r14
	jne	.label_177
	movaps	xmm0, xmmword ptr [rsp + 0x70]
	movaps	xmm1, xmmword ptr [rsp + 0x80]
	movaps	xmmword ptr [rsp + 0x50], xmm1
	movaps	xmmword ptr [rsp + 0x40], xmm0
	movaps	xmm0, xmmword ptr [rsp + 0xa0]
	movaps	xmm1, xmmword ptr [rsp + 0xb0]
	movaps	xmmword ptr [rsp + 0x30], xmm1
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmm0, xmmword ptr [rsp + 0xc0]
	movaps	xmm1, xmmword ptr [rsp + 0xd0]
	movaps	xmmword ptr [rsp + 0x10], xmm1
	movaps	xmmword ptr [rsp], xmm0
	call	get_default_format
	mov	r14, rax
.label_177:
	fld	xword ptr [rsp + 0xc0]
	fld	xword ptr [rsp + 0xa0]
	fld	xword ptr [rsp + 0x70]
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xe8]
	fstp	xword ptr [rsp + 0x20]
	fstp	xword ptr [rsp + 0x10]
	fstp	xword ptr [rsp]
	mov	rdi, r14
	call	print_numbers
.label_202:
	xor	eax, eax
	add	rsp, 0xf8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_196:
	cmp	eax, 0xffffff7d
	je	.label_195
	cmp	eax, 0xffffff7e
	jne	.label_184
	xor	edi, edi
	call	usage
.label_198:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_200
	jmp	.label_201
.label_193:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_205
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, qword ptr [r13 + rax*8 + 0x18]
.label_187:
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	mov	edi, 1
	call	usage
.label_195:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:label_86
	mov	edx, OFFSET FLAT:label_84
	mov	r8d, OFFSET FLAT:label_192
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_184:
	mov	edi, 1
	call	usage
.label_211:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_218
.label_201:
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
.label_181:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_183
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, qword ptr [r13 + rax*8 - 8]
	jmp	.label_187
	.section	.text
	.align	32
	#Procedure 0x403840

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_220
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_68
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403870

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
	je	.label_223
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_221
	jmp	.label_222
.label_223:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_222
.label_221:
	mov	eax, 1
	test	bpl, bpl
	je	.label_222
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
.label_222:
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
	#Procedure 0x4038f8
	.globl sub_4038f8
	.type sub_4038f8, @function
sub_4038f8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403900

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
	je	.label_224
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_226
	jmp	.label_225
.label_224:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_225
.label_226:
	mov	eax, 1
	test	bpl, bpl
	je	.label_225
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
.label_225:
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
	#Procedure 0x403979
	.globl sub_403979
	.type sub_403979, @function
sub_403979:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403980

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
	je	.label_229
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_228
	jmp	.label_227
.label_229:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_227
.label_228:
	mov	eax, 1
	test	bpl, bpl
	je	.label_227
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
.label_227:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4039e3
	.globl sub_4039e3
	.type sub_4039e3, @function
sub_4039e3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4039f0

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
	je	.label_232
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_230
	jmp	.label_231
.label_232:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_231
.label_230:
	mov	eax, 1
	test	bpl, bpl
	je	.label_231
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_231:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403a4f
	.globl sub_403a4f
	.type sub_403a4f, @function
sub_403a4f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403a50

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
	je	.label_233
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_235
	jmp	.label_234
.label_233:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_234
.label_235:
	mov	eax, 1
	test	bpl, bpl
	je	.label_234
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_234:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403a99
	.globl sub_403a99
	.type sub_403a99, @function
sub_403a99:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403aa0

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
	je	.label_238
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_237
	jmp	.label_236
.label_238:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_236
.label_237:
	mov	eax, 1
	test	bpl, bpl
	je	.label_236
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_236:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403ae5
	.globl sub_403ae5
	.type sub_403ae5, @function
sub_403ae5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403af0

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_241
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_240
	jmp	.label_239
.label_241:
	mov	eax, 1
	test	cl, cl
	je	.label_239
.label_240:
	xor	eax, eax
.label_239:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403b1f
	.globl sub_403b1f
	.type sub_403b1f, @function
sub_403b1f:

	nop	
.label_260:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_242
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, r12
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	mov	edi, 1
	call	usage
	.section	.text
	.align	32
	#Procedure 0x403b57

	.globl scan_arg
	.type scan_arg, @function
scan_arg:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r12, rsi
	mov	r14, rdi
	lea	rdx, [rsp]
	xor	esi, esi
	mov	ecx, OFFSET FLAT:cl_strtold
	mov	rdi, r12
	call	xstrtold
	test	al, al
	je	.label_260
	fld	xword ptr [rsp]
	fucomip	st(0)
	jp	.label_245
	call	__ctype_b_loc
	mov	rbx, qword ptr [rax]
	dec	r12
	nop	word ptr cs:[rax + rax]
.label_253:
	movsx	ebp, byte ptr [r12 + 1]
	inc	r12
	mov	edi, ebp
	call	to_uchar
	movzx	eax, al
	movzx	eax, word ptr [rbx + rax*2]
	and	eax, 0x2000
	cmp	ebp, 0x2b
	je	.label_253
	test	ax, ax
	jne	.label_253
	mov	qword ptr [rsp + 0x10], 0
	mov	dword ptr [rsp + 0x18], 0x7fffffff
	mov	esi, 0x2e
	mov	rdi, r12
	call	strchr
	mov	r15, rax
	test	r15, r15
	jne	.label_244
	mov	esi, 0x70
	mov	rdi, r12
	call	strchr
	test	rax, rax
	jne	.label_244
	mov	dword ptr [rsp + 0x18], 0
.label_244:
	mov	esi, 0x78
	mov	edx, 0x58
	mov	rdi, r12
	call	__strcspn_c2
	cmp	byte ptr [rax + r12], 0
	jne	.label_249
	fld	xword ptr [rsp]
	fldz	
	fmul	st(1), st(0)
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	jne	.label_249
	jp	.label_249
	mov	rdi, r12
	call	strlen
	mov	qword ptr [rsp + 0x10], rax
	xor	ebx, ebx
	test	r15, r15
	je	.label_256
	lea	rdi, [r15 + 1]
	mov	esi, 0x65
	mov	edx, 0x45
	call	__strcspn_c2
	mov	rbx, rax
	cmp	rbx, 0x7fffffff
	ja	.label_258
	mov	dword ptr [rsp + 0x18], ebx
	mov	rax, -1
	test	rbx, rbx
	je	.label_259
.label_258:
	mov	al, 1
	cmp	r15, r12
	je	.label_250
	movsx	eax, byte ptr [r15 - 1]
	add	eax, -0x30
	cmp	eax, 9
	seta	al
.label_250:
	movzx	eax, al
.label_259:
	add	qword ptr [rsp + 0x10], rax
.label_256:
	mov	esi, 0x65
	mov	rdi, r12
	call	strchr
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_251
	mov	esi, 0x45
	mov	rdi, r12
	call	strchr
	mov	rbp, rax
	test	rbp, rbp
	je	.label_249
.label_251:
	lea	rdi, [rbp + 1]
	xor	esi, esi
	mov	edx, 0xa
	call	strtol
	mov	r13, rax
	test	r13, r13
	js	.label_257
	movsxd	rax, dword ptr [rsp + 0x18]
	cmp	rax, r13
	cmovg	rax, r13
.label_257:
	sub	dword ptr [rsp + 0x18], eax
	mov	rdi, r12
	call	strlen
	mov	rcx, rbp
	sub	rcx, r12
	sub	rcx, rax
	add	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [rsp + 0x10], rcx
	test	r13, r13
	js	.label_246
	test	r15, r15
	je	.label_248
	test	rbx, rbx
	je	.label_248
	mov	eax, dword ptr [rsp + 0x18]
	test	eax, eax
	jne	.label_248
	dec	rcx
	mov	qword ptr [rsp + 0x10], rcx
.label_248:
	cmp	rbx, r13
	cmovae	rbx, r13
	sub	r13, rbx
	jmp	.label_252
.label_246:
	test	r15, r15
	je	.label_254
	inc	r15
	cmp	rbp, r15
	jne	.label_255
.label_254:
	inc	rcx
	mov	qword ptr [rsp + 0x10], rcx
.label_255:
	neg	r13
.label_252:
	add	qword ptr [rsp + 0x10], r13
.label_249:
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmmword ptr [r14 + 0x10], xmm1
	movaps	xmmword ptr [r14], xmm0
	mov	rax, r14
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_245:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_243
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_247
	call	quote_n
	mov	rbp, rax
	mov	edi, 1
	mov	rsi, r12
	call	quote_n
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, rbp
	mov	r8, rbx
	call	error
	mov	edi, 1
	call	usage
	.section	.text
	.align	32
	#Procedure 0x403dd1
	.globl sub_403dd1
	.type sub_403dd1, @function
sub_403dd1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403de0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x403dee
	.globl sub_403dee
	.type sub_403dee, @function
sub_403dee:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403df0

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
	js	.label_264
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_267
	cmp	r12d, 0x7fffffff
	je	.label_262
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
	jne	.label_265
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_265:
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
.label_267:
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
	jbe	.label_263
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_266
.label_263:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_261
	mov	rdi, r14
	call	free
.label_261:
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
.label_266:
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
.label_264:
	call	abort
.label_262:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403fad
	.globl sub_403fad
	.type sub_403fad, @function
sub_403fad:

	nop	dword ptr [rax]
.label_273:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_268
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
	.align	32
	#Procedure 0x403fe8
	.globl sub_403fe8
	.type sub_403fe8, @function
sub_403fe8:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ff2

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_273
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_276
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	mov	r8, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_272
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_mandatory_arg_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_274
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_269
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_275
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_270
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_271
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_279:
	mov	byte ptr [r15], 0xa
	inc	r15
	sub	r15, rbx
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	edx, 1
	mov	rdi, rbx
	mov	rsi, r15
	call	fwrite_unlocked
	mov	bpl, 1
	cmp	rax, 1
	mov	r13, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rsp + 0x38]
	jne	.label_280
.label_277:
	mov	rdi, r13
	call	free
	mov	rdi, r15
	call	free
	mov	eax, ebp
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_280:
	call	io_error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404168

	.globl seq_fast
	.type seq_fast, @function
seq_fast:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	rbx, rsi
	movzx	eax, byte ptr [rbx]
	mov	ebp, 0x69
	sub	ebp, eax
	jne	.label_278
	movzx	eax, byte ptr [rbx + 1]
	mov	ebp, 0x6e
	sub	ebp, eax
	jne	.label_278
	movzx	eax, byte ptr [rbx + 2]
	mov	ebp, 0x66
	sub	ebp, eax
	jne	.label_278
	movzx	ebp, byte ptr [rbx + 3]
	neg	ebp
.label_278:
	call	trim_leading_zeros
	mov	r15, rax
	mov	rdi, rbx
	call	trim_leading_zeros
	mov	rbx, rax
	mov	rdi, r15
	call	strlen
	xor	ecx, ecx
	mov	dword ptr [rsp + 0x14], ebp
	test	ebp, ebp
	mov	qword ptr [rsp + 8], rax
	je	.label_284
	mov	rdi, rbx
	call	strlen
	mov	rcx, rax
.label_284:
	mov	qword ptr [rsp + 0x20], rbx
	mov	rax, qword ptr [rsp + 8]
	inc	rax
	cmp	rax, rcx
	mov	qword ptr [rsp + 0x28], rcx
	cmovbe	rax, rcx
	cmp	rax, 0x1f
	mov	r12d, 0x1f
	cmova	r12, rax
	lea	r14, [r12 + 1]
	mov	rdi, r14
	call	xmalloc
	mov	r13, rax
	lea	rbp, [r13 + r12]
	mov	rdx, qword ptr [rsp + 8]
	sub	rbp, rdx
	inc	rdx
	mov	rdi, rbp
	mov	rsi, r15
	call	memcpy
	xor	ebx, ebx
	cmp	dword ptr [rsp + 0x14], 0
	mov	qword ptr [rsp + 0x18], rbp
	mov	r15d, 0
	je	.label_281
	mov	rdi, r14
	call	xmalloc
	mov	r15, rax
	mov	rbx, r15
	add	rbx, r12
	mov	rbp, qword ptr [rsp + 0x28]
	sub	rbx, rbp
	lea	rdx, [rbp + 1]
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0x20]
	call	memcpy
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, rbx
	mov	rcx, rbp
	call	cmp
	test	eax, eax
	jle	.label_281
	xor	ebp, ebp
	jmp	.label_277
.label_281:
	mov	qword ptr [rsp + 0x40], rbx
	mov	qword ptr [rsp + 0x38], r15
	mov	qword ptr [rsp + 0x20], r13
	add	r14, r14
	cmp	r14, 0x2000
	mov	ebp, 0x2000
	cmovae	rbp, r14
	mov	rdi, rbp
	call	xmalloc
	mov	rbx, rax
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x30], rbp
	lea	r13, [rbx + rbp]
	mov	rcx, -1
	mov	rdi, rbx
	call	__mempcpy_chk
	mov	r15, rax
	mov	r14d, dword ptr [rsp + 0x14]
	nop	dword ptr [rax]
.label_283:
	test	r14d, r14d
	je	.label_286
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x28]
	call	cmp
	test	eax, eax
	jns	.label_279
.label_286:
	mov	rax,  qword ptr [word ptr [rip + separator]]
	movzx	eax, byte ptr [rax]
	mov	byte ptr [r15], al
	inc	r15
	lea	rdi, [rsp + 0x18]
	lea	rsi, [rsp + 8]
	call	incr
	cmp	qword ptr [rsp + 8], r12
	jne	.label_282
	lea	rsi, [r12 + r12 + 1]
	lea	r12, [r12 + r12]
	mov	rdi, qword ptr [rsp + 0x20]
	call	xrealloc
	mov	rdx, qword ptr [rsp + 8]
	lea	rbp, [rax + rdx]
	inc	rdx
	mov	rdi, rbp
	mov	qword ptr [rsp + 0x20], rax
	mov	rsi, rax
	call	memmove
	mov	qword ptr [rsp + 0x18], rbp
	lea	r14, [r12 + r12 + 2]
	cmp	qword ptr [rsp + 0x30], r14
	jae	.label_285
	sub	r15, rbx
	mov	rdi, rbx
	mov	rsi, r14
	call	xrealloc
	mov	rbx, rax
	add	r15, rbx
	lea	r13, [rbx + r14]
	mov	qword ptr [rsp + 0x30], r14
.label_285:
	mov	r14d, dword ptr [rsp + 0x14]
.label_282:
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rsp + 8]
	mov	rcx, -1
	mov	rdi, r15
	mov	rdx, rbp
	call	__mempcpy_chk
	mov	r15, rax
	not	rbp
	add	rbp, r13
	cmp	rbp, r15
	jae	.label_283
	sub	r15, rbx
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	edx, 1
	mov	rdi, rbx
	mov	rsi, r15
	call	fwrite_unlocked
	cmp	rax, 1
	mov	r15, rbx
	je	.label_283
	call	io_error
	.section	.text
	.align	32
	#Procedure 0x4043f0
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x4043fa
	.globl sub_4043fa
	.type sub_4043fa, @function
sub_4043fa:

	nop	word ptr [rax + rax]
.label_288:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_287
	test	cl, cl
	jne	.label_287
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_287:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40442b
	.globl sub_40442b
	.type sub_40442b, @function
sub_40442b:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404435

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
	je	.label_288
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_287
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_287
	.section	.text
	.align	32
	#Procedure 0x404470

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
	jne	.label_289
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_289
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_290
.label_289:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_290:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_291
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_291:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4044de
	.globl sub_4044de
	.type sub_4044de, @function
sub_4044de:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4044e0

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
	je	.label_292
	cmp	r15, -2
	jb	.label_292
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_292
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_292:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x404536
	.globl sub_404536
	.type sub_404536, @function
sub_404536:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404540

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_293
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_293
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_293:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x404566
	.globl sub_404566
	.type sub_404566, @function
sub_404566:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404570

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
.label_295:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_354
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_305]]
.label_496:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_310
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_116
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_497:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_326
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_326
	xor	r14d, r14d
.label_341:
	cmp	r14, r11
	jae	.label_337
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_337:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_341
.label_326:
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
	jmp	.label_345
.label_489:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_345
.label_492:
	mov	al, 1
.label_490:
	mov	r12b, 1
.label_493:
	test	r12b, 1
	mov	cl, 1
	je	.label_360
	mov	ecx, eax
.label_360:
	mov	al, cl
.label_491:
	test	r12b, 1
	jne	.label_362
	test	r11, r11
	je	.label_364
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_364:
	mov	r14d, 1
	jmp	.label_368
.label_362:
	xor	r14d, r14d
.label_368:
	mov	ecx, OFFSET FLAT:label_116
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_345
.label_494:
	test	r12b, 1
	jne	.label_376
	test	r11, r11
	je	.label_300
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_300:
	mov	r14d, 1
	jmp	.label_322
.label_495:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_115
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_345
.label_376:
	xor	r14d, r14d
.label_322:
	mov	eax, OFFSET FLAT:label_115
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_345:
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
	jmp	.label_346
	.section	.text
	.align	32
	#Procedure 0x40484c
	.globl sub_40484c
	.type sub_40484c, @function
sub_40484c:

	nop	dword ptr [rax]
.label_325:
	inc	rsi
.label_346:
	cmp	rbp, -1
	je	.label_314
	cmp	rsi, rbp
	jne	.label_316
	jmp	.label_318
	.section	.text
	.align	32
	#Procedure 0x404863
	.globl sub_404863
	.type sub_404863, @function
sub_404863:

	nop	word ptr cs:[rax + rax]
.label_314:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_318
.label_316:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_330
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_333
	cmp	rbp, -1
	jne	.label_333
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
.label_333:
	cmp	rbx, rbp
	jbe	.label_347
.label_330:
	xor	r8d, r8d
.label_369:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_348
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_352]]
.label_435:
	test	rsi, rsi
	jne	.label_343
	jmp	.label_357
	.section	.text
	.align	32
	#Procedure 0x4048fe
	.globl sub_4048fe
	.type sub_4048fe, @function
sub_4048fe:

	nop	
.label_347:
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
	jne	.label_366
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_369
	jmp	.label_309
.label_366:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_369
.label_439:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_384
	test	rsi, rsi
	jne	.label_386
	cmp	rbp, 1
	je	.label_357
	xor	r13d, r13d
	jmp	.label_319
.label_428:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_391
	cmp	byte ptr [rsp + 7], 0
	jne	.label_298
	cmp	r12d, 2
	jne	.label_350
	mov	eax, r9d
	and	al, 1
	jne	.label_350
	cmp	r14, r11
	jae	.label_394
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_394:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_397
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_397:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_382
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_382:
	add	r14, 3
	mov	r9b, 1
.label_350:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_296
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_296:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_297
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_297
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_297
	cmp	r14, r11
	jae	.label_385
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_385:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_372
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_372:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_319
.label_429:
	mov	bl, 0x62
	jmp	.label_324
.label_430:
	mov	cl, 0x74
	jmp	.label_328
.label_431:
	mov	bl, 0x76
	jmp	.label_324
.label_432:
	mov	bl, 0x66
	jmp	.label_324
.label_433:
	mov	cl, 0x72
	jmp	.label_328
.label_436:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_336
	cmp	byte ptr [rsp + 7], 0
	jne	.label_298
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
	jae	.label_342
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_342:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_355
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_355:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_358
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_358:
	add	r14, 3
	xor	r9d, r9d
.label_336:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_319
.label_437:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_365
	cmp	r12d, 2
	jne	.label_343
	cmp	byte ptr [rsp + 7], 0
	je	.label_343
	jmp	.label_298
.label_438:
	cmp	r12d, 2
	jne	.label_373
	cmp	byte ptr [rsp + 7], 0
	jne	.label_298
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_320
.label_348:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_379
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
.label_335:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_313
	test	r8b, r8b
	je	.label_313
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_319
.label_384:
	test	rsi, rsi
	jne	.label_294
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_294
.label_357:
	mov	dl, 1
.label_434:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_298
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_319:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_306
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_307
	jmp	.label_311
	.section	.text
	.align	32
	#Procedure 0x404c44
	.globl sub_404c44
	.type sub_404c44, @function
sub_404c44:

	nop	word ptr cs:[rax + rax]
.label_306:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_311
.label_307:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_315
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_320
	jmp	.label_334
	.section	.text
	.align	32
	#Procedure 0x404c8d
	.globl sub_404c8d
	.type sub_404c8d, @function
sub_404c8d:

	nop	dword ptr [rax]
.label_311:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_334
	jmp	.label_320
.label_315:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_334
.label_391:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_325
	xor	r15d, r15d
	jmp	.label_343
.label_373:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_328
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_320
.label_328:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_298
.label_324:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_319
	nop	word ptr cs:[rax + rax]
.label_334:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_298
	cmp	r12d, 2
	jne	.label_321
	mov	eax, r9d
	and	al, 1
	jne	.label_321
	cmp	r14, r11
	jae	.label_363
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_363:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_356
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_356:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_370
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_370:
	add	r14, 3
	mov	r9b, 1
.label_321:
	cmp	r14, r11
	jae	.label_375
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_375:
	inc	r14
	jmp	.label_312
.label_379:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_380
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_380:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_344:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_396
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_399
	cmp	rbp, -2
	je	.label_402
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_404
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_392:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_393
	bt	rsi, rdx
	jb	.label_309
.label_393:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_392
.label_404:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_317
	xor	r13d, r13d
.label_317:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_344
	jmp	.label_335
.label_297:
	xor	r13d, r13d
	jmp	.label_319
.label_294:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_319
.label_365:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_343
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_343
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_343
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_353
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_371
	cmp	byte ptr [rsp + 7], 0
	jne	.label_298
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_359
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_359:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_329
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_329:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_367
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_367:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_374
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_374:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_319
.label_343:
	xor	eax, eax
.label_386:
	xor	r13d, r13d
	jmp	.label_319
.label_313:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_378
	.section	.text
	.align	32
	#Procedure 0x404f73
	.globl sub_404f73
	.type sub_404f73, @function
sub_404f73:

	nop	word ptr cs:[rax + rax]
.label_340:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_378:
	test	r8b, r8b
	je	.label_387
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_388
	cmp	r14, r11
	jae	.label_389
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_389:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_388
	.section	.text
	.align	32
	#Procedure 0x404fbc
	.globl sub_404fbc
	.type sub_404fbc, @function
sub_404fbc:

	nop	dword ptr [rax]
.label_387:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_309
	cmp	r12d, 2
	jne	.label_395
	mov	eax, r9d
	and	al, 1
	jne	.label_395
	cmp	r14, r11
	jae	.label_398
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_398:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_401
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_401:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_406
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_406:
	add	r14, 3
	mov	r9b, 1
.label_395:
	cmp	r14, r11
	jae	.label_323
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_323:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_302
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_302:
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
.label_388:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_320
	test	r9b, 1
	je	.label_327
	mov	ebx, eax
	and	bl, 1
	jne	.label_327
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_331
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_331:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_381
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_381:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_327:
	cmp	r14, r11
	jae	.label_340
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_340
	.section	.text
	.align	32
	#Procedure 0x4050c3
	.globl sub_4050c3
	.type sub_4050c3, @function
sub_4050c3:

	nop	word ptr cs:[rax + rax]
.label_320:
	test	r9b, 1
	je	.label_349
	and	al, 1
	jne	.label_349
	cmp	r14, r11
	jae	.label_351
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_351:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_383
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_383:
	add	r14, 2
	xor	r9d, r9d
.label_349:
	mov	ebx, r15d
.label_312:
	cmp	r14, r11
	jae	.label_301
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_301:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_325
.label_399:
	xor	r13d, r13d
.label_396:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_335
.label_402:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_377
	mov	rsi, qword ptr [rsp + 0x50]
.label_303:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_400
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_303
	xor	r13d, r13d
	jmp	.label_335
.label_377:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_335
.label_400:
	xor	r13d, r13d
	jmp	.label_335
.label_353:
	xor	r13d, r13d
	jmp	.label_319
.label_371:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_319
	.section	.text
	.align	32
	#Procedure 0x405198
	.globl sub_405198
	.type sub_405198, @function
sub_405198:

	nop	dword ptr [rax + rax]
.label_318:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_390
	or	dl, al
	je	.label_309
.label_390:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_339
	or	dl, al
	jne	.label_339
	test	r10b, 1
	jne	.label_403
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_339
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_295
.label_339:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_299
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_304
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_304
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_332:
	cmp	r14, r11
	jae	.label_405
	mov	byte ptr [rcx + r14], al
.label_405:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_332
	jmp	.label_304
.label_298:
	mov	qword ptr [rsp + 0x20], rbp
.label_309:
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
.label_361:
	mov	r14, rax
.label_338:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_403:
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
	jmp	.label_361
.label_299:
	mov	rcx, qword ptr [rsp + 8]
.label_304:
	cmp	r14, r11
	jae	.label_338
	mov	byte ptr [rcx + r14], 0
	jmp	.label_338
.label_354:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40532c
	.globl sub_40532c
	.type sub_40532c, @function
sub_40532c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405330
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40533a
	.globl sub_40533a
	.type sub_40533a, @function
sub_40533a:

	nop	word ptr [rax + rax]
.label_409:
	fstp	st(0)
	mov	dword ptr [r15], ebp
	fld	xword ptr [rsp + 0x1c]
.label_408:
	test	r14, r14
	je	.label_407
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [r14], rax
.label_407:
	add	rsp, 0x28
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405361
	.globl sub_405361
	.type sub_405361, @function
sub_405361:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40536d

	.globl cl_strtold
	.type cl_strtold, @function
cl_strtold:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x28
	mov	r14, rsi
	mov	rbx, rdi
	lea	rsi, [rsp + 8]
	call	strtold
	mov	rax, qword ptr [rsp + 8]
	cmp	byte ptr [rax], 0
	je	.label_408
	fstp	xword ptr [rsp + 0x1c]
	call	__errno_location
	mov	r15, rax
	mov	ebp, dword ptr [r15]
	lea	rsi, [rsp + 0x10]
	mov	rdi, rbx
	call	c_strtold
	mov	rax, qword ptr [rsp + 0x10]
	cmp	qword ptr [rsp + 8], rax
	jae	.label_409
	mov	qword ptr [rsp + 8], rax
	jmp	.label_408
	.section	.text
	.align	32
	#Procedure 0x4053c0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x4053ca
	.globl sub_4053ca
	.type sub_4053ca, @function
sub_4053ca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4053d0
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
	.align	32
	#Procedure 0x4053e0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	32
	#Procedure 0x4053e9
	.globl sub_4053e9
	.type sub_4053e9, @function
sub_4053e9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4053f0

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	32
	#Procedure 0x4053fa
	.globl sub_4053fa
	.type sub_4053fa, @function
sub_4053fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405400

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_410
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x405422
	.globl sub_405422
	.type sub_405422, @function
sub_405422:

	nop	word ptr cs:[rax + rax]
.label_411:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x405433
	.globl sub_405433
	.type sub_405433, @function
sub_405433:

	nop	
	.section	.text
	.align	32
	#Procedure 0x405435
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_411
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	32
	#Procedure 0x405450
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
	.align	32
	#Procedure 0x405466
	.globl sub_405466
	.type sub_405466, @function
sub_405466:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405470

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_412
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_412:
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
	#Procedure 0x4054f3
	.globl sub_4054f3
	.type sub_4054f3, @function
sub_4054f3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405500
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
	.align	32
	#Procedure 0x405549
	.globl sub_405549
	.type sub_405549, @function
sub_405549:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405550
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
	.align	32
	#Procedure 0x405569
	.globl sub_405569
	.type sub_405569, @function
sub_405569:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405570

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	32
	#Procedure 0x405575
	.globl sub_405575
	.type sub_405575, @function
sub_405575:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405580

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_413
	test	rsi, rsi
	mov	ecx, 1
	je	.label_414
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_414
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_413:
	mov	ecx, 1
.label_414:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x4055cb
	.globl sub_4055cb
	.type sub_4055cb, @function
sub_4055cb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405635
	.globl sub_405635
	.type sub_405635, @function
sub_405635:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405642
	.globl sub_405642
	.type sub_405642, @function
sub_405642:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405666
	.globl sub_405666
	.type sub_405666, @function
sub_405666:

	nop	word ptr cs:[rax + rax]
