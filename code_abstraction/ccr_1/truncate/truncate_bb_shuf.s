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
.label_13:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_9
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401600
	.globl sub_401600
	.type sub_401600, @function
sub_401600:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40160f

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
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_10:
	mov	rbx, r14
.label_11:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_15:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x401693
	.globl sub_401693
	.type sub_401693, @function
sub_401693:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401695
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_15
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	32
	#Procedure 0x4016b0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	32
	#Procedure 0x4016b9
	.globl sub_4016b9
	.type sub_4016b9, @function
sub_4016b9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4016c0

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
	mov	rax,  qword ptr [word ptr [rip + label_16]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_17]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_18]]
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
	#Procedure 0x401728
	.globl sub_401728
	.type sub_401728, @function
sub_401728:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401730
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40173a
	.globl sub_40173a
	.type sub_40173a, @function
sub_40173a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401740
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
	#Procedure 0x401759
	.globl sub_401759
	.type sub_401759, @function
sub_401759:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401760

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_19
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_19:
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
	#Procedure 0x4017e3
	.globl sub_4017e3
	.type sub_4017e3, @function
sub_4017e3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4017f0
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
	#Procedure 0x401806
	.globl sub_401806
	.type sub_401806, @function
sub_401806:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401810
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_21
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_23
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_24
	mov	ecx, OFFSET FLAT:label_25
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_22
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x401884
	.globl sub_401884
	.type sub_401884, @function
sub_401884:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401890

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_27:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_26
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_28
	.section	.text
	.align	32
	#Procedure 0x4018b9
	.globl sub_4018b9
	.type sub_4018b9, @function
sub_4018b9:

	nop	dword ptr [rax]
.label_26:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_28:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_29
	inc	r9
	cmp	r9, 0xa
	jb	.label_27
.label_29:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x4018ef
	.globl sub_4018ef
	.type sub_4018ef, @function
sub_4018ef:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4018f0
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
	#Procedure 0x4018ff
	.globl sub_4018ff
	.type sub_4018ff, @function
sub_4018ff:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401900
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40190a
	.globl sub_40190a
	.type sub_40190a, @function
sub_40190a:

	nop	word ptr [rax + rax]
.label_30:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x401913
	.globl sub_401913
	.type sub_401913, @function
sub_401913:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401915
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_30
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	32
	#Procedure 0x401930

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
	je	.label_33
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_31
	jmp	.label_32
.label_33:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_32
.label_31:
	mov	eax, 1
	test	bpl, bpl
	je	.label_32
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
.label_32:
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
	#Procedure 0x4019b8
	.globl sub_4019b8
	.type sub_4019b8, @function
sub_4019b8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4019c0

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
	je	.label_34
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_36
	jmp	.label_35
.label_34:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_35
.label_36:
	mov	eax, 1
	test	bpl, bpl
	je	.label_35
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
.label_35:
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
	#Procedure 0x401a39
	.globl sub_401a39
	.type sub_401a39, @function
sub_401a39:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401a40

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
	je	.label_39
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_38
	jmp	.label_37
.label_39:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_37
.label_38:
	mov	eax, 1
	test	bpl, bpl
	je	.label_37
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
.label_37:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401aa3
	.globl sub_401aa3
	.type sub_401aa3, @function
sub_401aa3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ab0

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
	je	.label_42
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_40
	jmp	.label_41
.label_42:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_41
.label_40:
	mov	eax, 1
	test	bpl, bpl
	je	.label_41
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_41:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401b0f
	.globl sub_401b0f
	.type sub_401b0f, @function
sub_401b0f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401b10

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
	je	.label_43
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_45
	jmp	.label_44
.label_43:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_44
.label_45:
	mov	eax, 1
	test	bpl, bpl
	je	.label_44
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_44:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401b59
	.globl sub_401b59
	.type sub_401b59, @function
sub_401b59:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401b60

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
	je	.label_48
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_47
	jmp	.label_46
.label_48:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_46
.label_47:
	mov	eax, 1
	test	bpl, bpl
	je	.label_46
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_46:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401ba5
	.globl sub_401ba5
	.type sub_401ba5, @function
sub_401ba5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401bb0

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_50
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_51
	jmp	.label_49
.label_50:
	mov	eax, 1
	test	cl, cl
	je	.label_49
.label_51:
	xor	eax, eax
.label_49:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401bdf
	.globl sub_401bdf
	.type sub_401bdf, @function
sub_401bdf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401be0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x401be8
	.globl sub_401be8
	.type sub_401be8, @function
sub_401be8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401bf0
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
	#Procedure 0x401bff
	.globl sub_401bff
	.type sub_401bff, @function
sub_401bff:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401c00

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_52
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_53
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401c30
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
	#Procedure 0x401c43
	.globl sub_401c43
	.type sub_401c43, @function
sub_401c43:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c50

	.globl xnumtoimax
	.type xnumtoimax, @function
xnumtoimax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r9
	mov	r15, rcx
	mov	r12, rdx
	mov	eax, esi
	mov	r13, rdi
	lea	rcx, [rsp]
	xor	esi, esi
	mov	edx, eax
	call	xstrtoimax
	cmp	eax, 3
	je	.label_61
	cmp	eax, 1
	je	.label_60
	test	eax, eax
	jne	.label_54
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r12
	jl	.label_55
	cmp	rbx, r15
	jle	.label_56
.label_55:
	cmp	rbx, 0x40000000
	jl	.label_59
.label_60:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_54
.label_59:
	call	__errno_location
	cmp	rbx, -0x40000001
	jg	.label_58
	mov	dword ptr [rax], 0x4b
	jmp	.label_54
.label_61:
	call	__errno_location
	mov	dword ptr [rax], 0
.label_54:
	mov	eax, dword ptr [rsp + 0x40]
	test	eax, eax
	mov	ebp, 1
	cmovne	ebp, eax
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	eax, eax
	cmp	ebx, 0x16
	cmove	ebx, eax
	mov	rdi, r13
	call	quote
	mov	r8, rax
	mov	edx, OFFSET FLAT:label_57
	xor	eax, eax
	mov	edi, ebp
	mov	esi, ebx
	mov	rcx, r14
	call	error
.label_56:
	mov	rax, qword ptr [rsp]
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_58:
	mov	dword ptr [rax], 0x22
	jmp	.label_54
	.section	.text
	.align	32
	#Procedure 0x401d1f
	.globl sub_401d1f
	.type sub_401d1f, @function
sub_401d1f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401d20
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
	#Procedure 0x401d47
	.globl sub_401d47
	.type sub_401d47, @function
sub_401d47:

	nop	word ptr [rax + rax]
.label_63:
	mov	ecx, 1
.label_62:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x401d60
	.globl sub_401d60
	.type sub_401d60, @function
sub_401d60:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d65

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_63
	test	rsi, rsi
	mov	ecx, 1
	je	.label_62
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_62
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401da0
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x401daa
	.globl sub_401daa
	.type sub_401daa, @function
sub_401daa:

	nop	word ptr [rax + rax]
.label_65:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_64
	test	cl, cl
	jne	.label_64
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_64:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401ddb
	.globl sub_401ddb
	.type sub_401ddb, @function
sub_401ddb:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401de5

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
	je	.label_65
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_64
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_64
	.section	.text
	.align	32
	#Procedure 0x401e20

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x401e2a
	.globl sub_401e2a
	.type sub_401e2a, @function
sub_401e2a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e30
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
	#Procedure 0x401e40

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	32
	#Procedure 0x401e49
	.globl sub_401e49
	.type sub_401e49, @function
sub_401e49:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401e50

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	32
	#Procedure 0x401e5a
	.globl sub_401e5a
	.type sub_401e5a, @function
sub_401e5a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e60

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	movabs	r8, 0x7fffffffffffffff
	mov	rcx, qword ptr [rdi]
	movsxd	r9, esi
	lea	rsi, [r8 + 1]
	mov	rax, rsi
	cqo	
	idiv	r9
	cmp	rcx, rax
	jge	.label_66
	mov	qword ptr [rdi], rsi
	mov	eax, 1
	ret	
.label_67:
	imul	rcx, r9
	mov	qword ptr [rdi], rcx
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x401e94
	.globl sub_401e94
	.type sub_401e94, @function
sub_401e94:

	nop	word ptr [rax + rax]
.label_66:
	mov	rax, r8
	cqo	
	idiv	r9
	cmp	rax, rcx
	jge	.label_67
	mov	qword ptr [rdi], r8
	mov	eax, 1
	ret	
.label_68:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x401ebe
	.globl sub_401ebe
	.type sub_401ebe, @function
sub_401ebe:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ec7

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_68
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_69
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_68
.label_69:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_68
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_70
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_70:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401f30
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
	#Procedure 0x401f79
	.globl sub_401f79
	.type sub_401f79, @function
sub_401f79:

	nop	dword ptr [rax]
.label_71:
	ret	
.label_73:
	xor	eax, eax
	jmp	.label_71
	.section	.text
	.align	32
	#Procedure 0x401f85
	.globl sub_401f85
	.type sub_401f85, @function
sub_401f85:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401f8f
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_73
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_72]]
	.section	.text
	.align	32
	#Procedure 0x401fa0

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x401faa
	.globl sub_401faa
	.type sub_401faa, @function
sub_401faa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401fb0
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
	#Procedure 0x401fe3
	.globl sub_401fe3
	.type sub_401fe3, @function
sub_401fe3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ff0
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
	#Procedure 0x401fff
	.globl sub_401fff
	.type sub_401fff, @function
sub_401fff:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402000
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_74
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_74:
	push	rax
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402023
	.globl sub_402023
	.type sub_402023, @function
sub_402023:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402030

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_75
	test	rax, rax
	je	.label_76
.label_75:
	pop	rbx
	ret	
.label_76:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40204a
	.globl sub_40204a
	.type sub_40204a, @function
sub_40204a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402050

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_77
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x402072
	.globl sub_402072
	.type sub_402072, @function
sub_402072:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402080
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x402088
	.globl sub_402088
	.type sub_402088, @function
sub_402088:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402090

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
	#Procedure 0x4020c7
	.globl sub_4020c7
	.type sub_4020c7, @function
sub_4020c7:

	nop	word ptr [rax + rax]
.label_78:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x4020d3
	.globl sub_4020d3
	.type sub_4020d3, @function
sub_4020d3:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4020d8

	.globl usable_st_size
	.type usable_st_size, @function
usable_st_size:
	movzx	eax, word ptr [rdi + 0x18]
	or	eax, 0x2000
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_78
	mov	al, 1
	ret	
	.section	.text
	.align	32
	#Procedure 0x4020f0
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x4020fa
	.globl sub_4020fa
	.type sub_4020fa, @function
sub_4020fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402100
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_79
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_79:
	push	rax
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402126
	.globl sub_402126
	.type sub_402126, @function
sub_402126:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402130

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_80
	test	rbx, rbx
	jne	.label_80
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_80:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_82
	test	rax, rax
	je	.label_81
.label_82:
	pop	rbx
	ret	
.label_81:
	call	xalloc_die
.label_83:
	cmp	edi, 0x7f
	je	.label_84
	xor	eax, eax
	jmp	.label_84
	.section	.text
	.align	32
	#Procedure 0x402169
	.globl sub_402169
	.type sub_402169, @function
sub_402169:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402178
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_83
.label_84:
	ret	
	.section	.text
	.align	32
	#Procedure 0x402180
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40218a
	.globl sub_40218a
	.type sub_40218a, @function
sub_40218a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402190

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_85
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_85
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_85:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x4021b6
	.globl sub_4021b6
	.type sub_4021b6, @function
sub_4021b6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4021c0

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
	je	.label_86
	mov	edx, OFFSET FLAT:label_96
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_102
.label_86:
	mov	edx, OFFSET FLAT:label_103
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_102:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_89
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
	mov	esi, OFFSET FLAT:label_104
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_91
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_92]]
.label_420:
	add	rsp, 8
	jmp	.label_90
.label_91:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_99
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
	jmp	.label_90
.label_421:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_87
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
.label_422:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_100
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
.label_423:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_97
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
.label_424:
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
	xor	eax, eax
	mov	rdi, r14
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x18
	jmp	.label_90
.label_425:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_93
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
	jmp	.label_90
.label_426:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_95
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
	jmp	.label_90
.label_427:
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
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x28
	jmp	.label_90
.label_429:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_101
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
	jmp	.label_90
.label_428:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_88
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
.label_90:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x402518
	.globl sub_402518
	.type sub_402518, @function
sub_402518:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402520

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
	#Procedure 0x402556
	.globl sub_402556
	.type sub_402556, @function
sub_402556:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402560
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_105
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
.label_105:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x402578
	.globl sub_402578
	.type sub_402578, @function
sub_402578:

	nop	dword ptr [rax + rax]
.label_106:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	32
	#Procedure 0x40258c
	.globl sub_40258c
	.type sub_40258c, @function
sub_40258c:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402599

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_106
	ret	
	.section	.text
	.align	32
	#Procedure 0x4025a0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_109
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_108
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_108
.label_109:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_111
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_110:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_57
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_108:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_107
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_110
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_53
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_111:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x402660

	.globl xdectoimax
	.type xdectoimax, @function
xdectoimax:
	push	rax
	mov	r10, r8
	mov	rax, rcx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	dword ptr [rsp], r9d
	mov	esi, 0xa
	mov	r8, rax
	mov	r9, r10
	call	xnumtoimax
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402683
	.globl sub_402683
	.type sub_402683, @function
sub_402683:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402690

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
	#Procedure 0x4026bd
	.globl sub_4026bd
	.type sub_4026bd, @function
sub_4026bd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4026c0
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
	#Procedure 0x4026d3
	.globl sub_4026d3
	.type sub_4026d3, @function
sub_4026d3:

	nop	word ptr cs:[rax + rax]
.label_112:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4026e5
	.globl sub_4026e5
	.type sub_4026e5, @function
sub_4026e5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4026ef
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_112
	call	rpl_calloc
	test	rax, rax
	je	.label_112
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402710

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebx, edx
	mov	r14d, esi
	mov	r15, rdi
	xor	ebp, ebp
	test	ebx, ebx
	je	.label_113
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_114:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale
	or	ebp, eax
	dec	ebx
	jne	.label_114
.label_113:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40274e
	.globl sub_40274e
	.type sub_40274e, @function
sub_40274e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402750

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40275a
	.globl sub_40275a
	.type sub_40275a, @function
sub_40275a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402760
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	32
	#Procedure 0x40276d
	.globl sub_40276d
	.type sub_40276d, @function
sub_40276d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402770
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	mov	rcx, rdi
	xor	edi, edi
	mov	rsi, rcx
	mov	rdx, rax
	jmp	quotearg_n_mem
.label_117:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_115
.label_116:
	mov	eax, 1
	test	bpl, bpl
	je	.label_115
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
.label_115:
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
	#Procedure 0x4027c8
	.globl sub_4027c8
	.type sub_4027c8, @function
sub_4027c8:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4027cb

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
	je	.label_117
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_116
	jmp	.label_115
	.section	.text
	.align	32
	#Procedure 0x402800

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
	#Procedure 0x402817
	.globl sub_402817
	.type sub_402817, @function
sub_402817:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402820

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	r13, rsi
	mov	r15d, edi
	mov	rdi, qword ptr [r13]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_135
	call	setlocale
	mov	edi, OFFSET FLAT:label_141
	mov	esi, OFFSET FLAT:label_142
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_141
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	xor	r12d, r12d
	xor	r14d, r14d
	jmp	.label_140
.label_498:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + ref_file]],  rax
	nop	dword ptr [rax + rax]
.label_140:
	mov	edx, OFFSET FLAT:label_155
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, r15d
	mov	rsi, r13
	call	getopt_long
	cmp	eax, 0x62
	jle	.label_159
	add	eax, -0x63
	cmp	eax, 0x10
	ja	.label_139
	jmp	qword ptr [word ptr [+ (rax * 8) + label_164]]
.label_496:
	mov	byte ptr [byte ptr [rip + no_create]],  1
	jmp	.label_140
.label_497:
	mov	byte ptr [byte ptr [rip + block_mode]],  1
	jmp	.label_140
.label_499:
	mov	dword ptr [rsp], r15d
	mov	r15, r13
	mov	r13, r12
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	mov	bl, byte ptr [rbp]
	movsx	edi, bl
	call	to_uchar
	movzx	r12d, al
	call	__ctype_b_loc
	mov	r14, rax
	mov	rax, qword ptr [r14]
	test	byte ptr [rax + r12*2 + 1], 0x20
	je	.label_177
	inc	rbp
	nop	dword ptr [rax]
.label_123:
	mov	qword ptr [word ptr [rip + optarg]],  rbp
	movzx	ebx, byte ptr [rbp]
	movsx	edi, bl
	call	to_uchar
	movzx	eax, al
	mov	rcx, qword ptr [r14]
	inc	rbp
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_123
	dec	rbp
.label_177:
	mov	r12, r13
	movsx	eax, bl
	add	eax, -0x25
	cmp	eax, 0x19
	mov	r13, r15
	ja	.label_131
	mov	r15d, dword ptr [rsp]
	jmp	qword ptr [word ptr [+ (rax * 8) + label_137]]
.label_505:
	inc	rbp
	mov	qword ptr [word ptr [rip + optarg]],  rbp
	mov	r12d, 5
	jmp	.label_146
.label_506:
	inc	rbp
	mov	qword ptr [word ptr [rip + optarg]],  rbp
	mov	r12d, 4
	jmp	.label_146
.label_507:
	inc	rbp
	mov	qword ptr [word ptr [rip + optarg]],  rbp
	mov	r12d, 3
	jmp	.label_146
.label_508:
	inc	rbp
	mov	qword ptr [word ptr [rip + optarg]],  rbp
	mov	r12d, 2
	jmp	.label_146
.label_131:
	mov	r15d, dword ptr [rsp]
.label_146:
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	mov	bpl, byte ptr [rbx]
	movsx	edi, bpl
	call	to_uchar
	movzx	eax, al
	mov	rcx, qword ptr [r14]
	test	byte ptr [rcx + rax*2 + 1], 0x20
	je	.label_125
	inc	rbx
	nop	word ptr cs:[rax + rax]
.label_172:
	mov	qword ptr [word ptr [rip + optarg]],  rbx
	movzx	ebp, byte ptr [rbx]
	movsx	edi, bpl
	call	to_uchar
	movzx	eax, al
	mov	rcx, qword ptr [r14]
	inc	rbx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_172
.label_125:
	cmp	bpl, 0x2d
	je	.label_175
	cmp	bpl, 0x2b
	jne	.label_176
.label_175:
	test	r12d, r12d
	mov	r12d, 1
	movabs	rbp, 0x7fffffffffffffff
	je	.label_178
	jmp	.label_120
.label_176:
	movabs	rbp, 0x7fffffffffffffff
.label_178:
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_166
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rbp + 1]
	mov	ecx, OFFSET FLAT:label_134
	xor	r9d, r9d
	mov	rdi, rbx
	mov	rdx, rbp
	mov	r8, rax
	call	xdectoimax
	mov	rbx, rax
	mov	eax, r12d
	or	eax, 1
	mov	r14b, 1
	cmp	eax, 5
	jne	.label_140
	test	rbx, rbx
	jne	.label_140
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_149
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_159:
	cmp	eax, -1
	jne	.label_156
	movsxd	rbp,  dword ptr [dword ptr [rip + optind]]
	mov	rax,  qword ptr [word ptr [rip + ref_file]]
	test	r14b, r14b
	jne	.label_165
	test	rax, rax
	je	.label_132
.label_165:
	test	r12d, r12d
	jne	.label_147
	test	r14b, r14b
	je	.label_147
	test	rax, rax
	jne	.label_160
.label_147:
	test	r14b, r14b
	jne	.label_170
	test	byte ptr [byte ptr [rip + block_mode]],  1
	jne	.label_167
.label_170:
	mov	qword ptr [rsp + 0x10], r12
	cmp	ebp, r15d
	jge	.label_171
	mov	r12, -1
	cmp	qword ptr [word ptr [rip + ref_file]],  0
	mov	qword ptr [rsp], rbx
	je	.label_151
	mov	rdi,  qword ptr [word ptr [rip + ref_file]]
	lea	rsi, [rsp + 0x18]
	call	stat
	test	eax, eax
	jne	.label_122
	lea	rdi, [rsp + 0x18]
	call	usable_st_size
	test	al, al
	je	.label_128
	mov	rbx, qword ptr [rsp + 0x48]
	test	rbx, rbx
	jns	.label_129
	jmp	.label_133
.label_128:
	mov	rdi,  qword ptr [word ptr [rip + ref_file]]
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	r15d, eax
	test	r15d, r15d
	js	.label_133
	xor	esi, esi
	mov	edx, 2
	mov	edi, r15d
	call	lseek
	mov	rbx, rax
	call	__errno_location
	mov	r12, rax
	mov	eax, dword ptr [r12]
	mov	dword ptr [rsp + 0xc], eax
	mov	edi, r15d
	call	close
	test	rbx, rbx
	js	.label_153
.label_129:
	cmp	r14b, 1
	sbb	r12, r12
	or	r12, rbx
	test	r14b, r14b
	mov	rax, qword ptr [rsp]
	cmove	rax, rbx
	mov	qword ptr [rsp], rax
.label_151:
	lea	r14, [r13 + rbp*8]
	mov	al,  byte ptr [byte ptr [rip + no_create]]
	test	al, al
	mov	eax, 0x801
	mov	r13d, 0x841
	cmovne	r13d, eax
	xor	r15d, r15d
	jmp	.label_152
	.section	.text
	.align	32
	#Procedure 0x402bc8
	.globl sub_402bc8
	.type sub_402bc8, @function
sub_402bc8:

	nop	dword ptr [rax + rax]
.label_138:
	call	error
	mov	r15b, 1
.label_152:
	add	r14, 8
	mov	rcx, r14
	nop	
.label_121:
	mov	r14, rcx
	mov	rbp, qword ptr [r14 - 8]
	test	rbp, rbp
	je	.label_169
	mov	edx, 0x1b6
	xor	eax, eax
	mov	rdi, rbp
	mov	esi, r13d
	call	open
	mov	ebx, eax
	cmp	ebx, -1
	jne	.label_118
	cmp	byte ptr [byte ptr [rip + no_create]],  1
	jne	.label_150
	call	__errno_location
	lea	rcx, [r14 + 8]
	cmp	dword ptr [rax], 2
	je	.label_121
.label_150:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_124
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, rbp
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, r15
	jmp	.label_138
	.section	.text
	.align	32
	#Procedure 0x402c59
	.globl sub_402c59
	.type sub_402c59, @function
sub_402c59:

	nop	dword ptr [rax]
.label_118:
	mov	edi, ebx
	mov	rsi, rbp
	mov	rdx, qword ptr [rsp]
	mov	rcx, r12
	mov	r8, qword ptr [rsp + 0x10]
	call	do_ftruncate
	xor	al, 1
	or	r15b, al
	mov	edi, ebx
	call	close
	test	eax, eax
	je	.label_152
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_154
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, rbp
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbx
	jmp	.label_138
.label_169:
	movzx	eax, r15b
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_156:
	cmp	eax, 0xffffff7d
	je	.label_168
	cmp	eax, 0xffffff7e
	jne	.label_139
	xor	edi, edi
	call	usage
.label_168:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:label_157
	mov	edx, OFFSET FLAT:label_24
	mov	r8d, OFFSET FLAT:label_158
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_139:
	mov	edi, 1
	call	usage
.label_132:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_126
	jmp	.label_127
.label_160:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_130
.label_127:
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_136
	call	quote_n
	mov	rbp, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_143
	jmp	.label_144
.label_167:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_145
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_148
	call	quote_n
	mov	rbp, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_136
.label_144:
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
.label_171:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_162
	jmp	.label_163
.label_120:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_161
.label_163:
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
.label_122:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_173
	jmp	.label_174
.label_153:
	mov	eax, dword ptr [rsp + 0xc]
	mov	dword ptr [r12], eax
.label_133:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_119
.label_174:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi,  qword ptr [word ptr [rip + ref_file]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402e50

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x402e5e
	.globl sub_402e5e
	.type sub_402e5e, @function
sub_402e5e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402e60

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
	js	.label_179
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_182
	cmp	r12d, 0x7fffffff
	je	.label_184
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
	jne	.label_180
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_180:
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
.label_182:
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
	jbe	.label_185
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_181
.label_185:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_183
	mov	rdi, r14
	call	free
.label_183:
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
.label_181:
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
.label_179:
	call	abort
.label_184:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40301d
	.globl sub_40301d
	.type sub_40301d, @function
sub_40301d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403020

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
	je	.label_186
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
.label_186:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403072
	.globl sub_403072
	.type sub_403072, @function
sub_403072:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403080

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
	jne	.label_196
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
	je	.label_193
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_194
	mov	eax, OFFSET FLAT:label_195
	jmp	.label_191
.label_193:
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
	je	.label_192
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_189
	mov	eax, OFFSET FLAT:label_190
	jmp	.label_191
.label_192:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_187
	mov	eax, OFFSET FLAT:label_188
.label_191:
	cmove	rax, rcx
.label_196:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40313d
	.globl sub_40313d
	.type sub_40313d, @function
sub_40313d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403140

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_197
	nop	
.label_206:
	mov	edi, OFFSET FLAT:label_157
	call	strcmp
	test	eax, eax
	je	.label_204
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_206
.label_204:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_157
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_200
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_24
	mov	ecx, OFFSET FLAT:label_25
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_199
	mov	esi, OFFSET FLAT:label_203
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_199
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_205
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_199:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_201
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_157
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_25
	mov	ecx, OFFSET FLAT:label_157
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_198
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_202
	mov	ecx, OFFSET FLAT:label_135
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
	#Procedure 0x40325a
	.globl sub_40325a
	.type sub_40325a, @function
sub_40325a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403260
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_207
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_209:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_209
.label_207:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_210
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_211]], OFFSET FLAT:slot0
.label_210:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_208
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_208:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4032f1
	.globl sub_4032f1
	.type sub_4032f1, @function
sub_4032f1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403300
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_212
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_212
.label_213:
	ret	
.label_212:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_213
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x403326
	.globl sub_403326
	.type sub_403326, @function
sub_403326:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403330
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	32
	#Procedure 0x40333a
	.globl sub_40333a
	.type sub_40333a, @function
sub_40333a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403340

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
	mov	rcx,  qword ptr [word ptr [rip + label_16]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_17]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_18]]
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
	#Procedure 0x4033ad
	.globl sub_4033ad
	.type sub_4033ad, @function
sub_4033ad:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4033b0

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	32
	#Procedure 0x4033bd
	.globl sub_4033bd
	.type sub_4033bd, @function
sub_4033bd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4033c0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	32
	#Procedure 0x4033c7
	.globl sub_4033c7
	.type sub_4033c7, @function
sub_4033c7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4033d0
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
	#Procedure 0x4033dd
	.globl sub_4033dd
	.type sub_4033dd, @function
sub_4033dd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4033e0

	.globl xstrtoimax
	.type xstrtoimax, @function
xstrtoimax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, r8
	mov	r14, rcx
	mov	ebx, edx
	mov	r12, rdi
	cmp	ebx, 0x25
	jae	.label_228
	test	rsi, rsi
	lea	r15, [rsp + 0x10]
	cmovne	r15, rsi
	call	__errno_location
	mov	rbp, rax
	mov	dword ptr [rbp], 0
	mov	rdi, r12
	mov	rsi, r15
	mov	edx, ebx
	call	strtoimax
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [r15]
	cmp	rax, r12
	je	.label_220
	mov	eax, dword ptr [rbp]
	xor	r12d, r12d
	test	eax, eax
	je	.label_222
	mov	r12d, 4
	cmp	eax, 0x22
	jne	.label_215
	mov	r12d, 1
.label_222:
	test	r13, r13
	jne	.label_227
	jmp	.label_218
.label_220:
	mov	r12d, 4
	test	r13, r13
	je	.label_215
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_215
	mov	rdi, r13
	call	strchr
	test	rax, rax
	je	.label_215
	mov	qword ptr [rsp + 8], 1
	xor	r12d, r12d
.label_227:
	mov	rax, qword ptr [r15]
	movsx	ebp, byte ptr [rax]
	test	ebp, ebp
	je	.label_218
	mov	rdi, r13
	mov	esi, ebp
	call	strchr
	test	rax, rax
	je	.label_221
	mov	esi, 0x400
	mov	ebx, 1
	add	ebp, -0x45
	cmp	ebp, 0x2f
	ja	.label_214
	movabs	rax, 0x814400308945
	bt	rax, rbp
	jae	.label_214
	mov	esi, 0x30
	mov	rdi, r13
	call	strchr
	mov	ebx, 1
	test	rax, rax
	je	.label_229
	mov	rax, qword ptr [r15]
	movsx	ecx, byte ptr [rax + 1]
	mov	ebx, 1
	cmp	ecx, 0x42
	mov	esi, 0x400
	je	.label_216
	cmp	ecx, 0x44
	je	.label_216
	cmp	ecx, 0x69
	jne	.label_214
	xor	ecx, ecx
	cmp	byte ptr [rax + 2], 0x42
	sete	cl
	lea	rbx, [rcx + rcx + 1]
	jmp	.label_214
.label_229:
	mov	esi, 0x400
	jmp	.label_214
.label_216:
	mov	esi, 0x3e8
	mov	ebx, 2
.label_214:
	mov	rax, qword ptr [r15]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	cmp	ecx, 0x35
	ja	.label_221
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_223]]
.label_434:
	lea	rdi, [rsp + 8]
	mov	edx, 3
	call	bkm_scale_by_power
	jmp	.label_217
.label_221:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [r14], rax
	or	r12d, 2
	jmp	.label_215
.label_435:
	lea	rdi, [rsp + 8]
	mov	edx, 1
	call	bkm_scale_by_power
	jmp	.label_217
.label_436:
	lea	rdi, [rsp + 8]
	mov	edx, 2
	call	bkm_scale_by_power
	jmp	.label_217
.label_438:
	lea	rdi, [rsp + 8]
	mov	edx, 4
	call	bkm_scale_by_power
	jmp	.label_217
.label_432:
	lea	rdi, [rsp + 8]
	mov	esi, 0x400
	jmp	.label_219
.label_433:
	lea	rdi, [rsp + 8]
	mov	edx, 6
	call	bkm_scale_by_power
	jmp	.label_217
.label_437:
	lea	rdi, [rsp + 8]
	mov	edx, 5
	call	bkm_scale_by_power
	jmp	.label_217
.label_439:
	lea	rdi, [rsp + 8]
	mov	edx, 8
	call	bkm_scale_by_power
	jmp	.label_217
.label_440:
	lea	rdi, [rsp + 8]
	mov	edx, 7
	call	bkm_scale_by_power
	jmp	.label_217
.label_441:
	lea	rdi, [rsp + 8]
	mov	esi, 0x200
	jmp	.label_219
.label_442:
	lea	rdi, [rsp + 8]
	mov	esi, 2
.label_219:
	call	bkm_scale
.label_217:
	or	eax, r12d
	mov	rcx, qword ptr [r15]
	lea	rdx, [rcx + rbx]
	mov	qword ptr [r15], rdx
	mov	r12d, eax
	or	r12d, 2
	cmp	byte ptr [rcx + rbx], 0
	cmove	r12d, eax
.label_218:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [r14], rax
.label_215:
	mov	eax, r12d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_228:
	mov	edi, OFFSET FLAT:label_224
	mov	esi, OFFSET FLAT:label_225
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_226
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x40365e
	.globl sub_40365e
	.type sub_40365e, @function
sub_40365e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403660
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_230:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_230
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x403681
	.globl sub_403681
	.type sub_403681, @function
sub_403681:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403690
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
	#Procedure 0x403702
	.globl sub_403702
	.type sub_403702, @function
sub_403702:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403710

	.globl do_ftruncate
	.type do_ftruncate, @function
do_ftruncate:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	ebx, r8d
	mov	rbp, rcx
	mov	r12, rdx
	mov	r14, rsi
	mov	r15d, edi
	mov	al,  byte ptr [byte ptr [rip + block_mode]]
	test	al, al
	jne	.label_233
	test	rbp, rbp
	jns	.label_237
	test	ebx, ebx
	je	.label_237
.label_233:
	lea	rsi, [rsp + 8]
	mov	edi, r15d
	call	fstat
	test	eax, eax
	je	.label_237
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_246
.label_236:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	jmp	.label_242
.label_237:
	movabs	r13, 0x7fffffffffffffff
	cmp	byte ptr [byte ptr [rip + block_mode]],  1
	jne	.label_235
	mov	qword ptr [rsp], r14
	mov	rax, qword ptr [rsp + 0x40]
	movabs	rcx, 0x2000000000000001
	cmp	rax, rcx
	mov	ecx, 0x200
	mov	r14d, 0x200
	cmovb	r14, rax
	test	rax, rax
	cmovle	r14, rcx
	lea	rax, [r13 + 1]
	cqo	
	idiv	r14
	cmp	rax, r12
	jg	.label_241
	mov	rax, r13
	cqo	
	idiv	r14
	cmp	rax, r12
	jge	.label_249
.label_241:
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_250
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp]
	call	quotearg_style
	mov	rbp, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	mov	rcx, r12
	mov	r8, r14
	mov	r9, rbp
	call	error
	jmp	.label_242
.label_249:
	imul	r12, r14
	mov	r14, qword ptr [rsp]
.label_235:
	test	ebx, ebx
	je	.label_231
	test	rbp, rbp
	jns	.label_244
	lea	rdi, [rsp + 8]
	call	usable_st_size
	test	al, al
	je	.label_245
	mov	rbp, qword ptr [rsp + 0x38]
	test	rbp, rbp
	jns	.label_244
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_248
	jmp	.label_240
.label_245:
	xor	esi, esi
	mov	edx, 2
	mov	edi, r15d
	call	lseek
	mov	rbp, rax
	test	rbp, rbp
	js	.label_251
.label_244:
	add	ebx, -2
	cmp	ebx, 3
	ja	.label_232
	jmp	qword ptr [word ptr [+ (rbx * 8) + label_234]]
.label_520:
	cmp	rbp, r12
	cmova	r12, rbp
	jmp	.label_231
.label_232:
	sub	r13, rbp
	cmp	r12, r13
	jle	.label_238
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_239
	jmp	.label_240
.label_521:
	cmp	rbp, r12
	cmovb	r12, rbp
	jmp	.label_231
.label_522:
	xor	edx, edx
	mov	rax, rbp
	div	r12
	sub	rbp, rdx
	mov	r12, rbp
	jmp	.label_231
.label_523:
	lea	rcx, [r12 + rbp - 1]
	xor	edx, edx
	mov	rax, rcx
	div	r12
	sub	rcx, rdx
	mov	r12, rcx
	jns	.label_231
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_247
.label_240:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	jmp	.label_242
.label_238:
	add	r12, rbp
.label_231:
	xor	ebx, ebx
	test	r12, r12
	cmovns	rbx, r12
	mov	edi, r15d
	mov	rsi, rbx
	call	ftruncate
	mov	r15b, 1
	cmp	eax, -1
	jne	.label_242
	call	__errno_location
	mov	r12, r14
	mov	r14d, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_243
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	mov	r8, rbx
	call	error
.label_242:
	mov	eax, r15d
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_251:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_119
	jmp	.label_236
	.section	.text
	.align	32
	#Procedure 0x4039aa
	.globl sub_4039aa
	.type sub_4039aa, @function
sub_4039aa:

	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4039b0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_135
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_252
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4039d5
	.globl sub_4039d5
	.type sub_4039d5, @function
sub_4039d5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4039e0
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
	#Procedure 0x4039ed
	.globl sub_4039ed
	.type sub_4039ed, @function
sub_4039ed:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4039f0

	.globl emit_size_note
	.type emit_size_note, @function
emit_size_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_253
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x403a12
	.globl sub_403a12
	.type sub_403a12, @function
sub_403a12:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403a20
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	32
	#Procedure 0x403a2a
	.globl sub_403a2a
	.type sub_403a2a, @function
sub_403a2a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403a30

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
	#Procedure 0x403a69
	.globl sub_403a69
	.type sub_403a69, @function
sub_403a69:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403a70

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
	#Procedure 0x403a81
	.globl sub_403a81
	.type sub_403a81, @function
sub_403a81:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403a90
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
	#Procedure 0x403aa4
	.globl sub_403aa4
	.type sub_403aa4, @function
sub_403aa4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ab0

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
	jne	.label_254
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_254
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_255
.label_254:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_255:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_256
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_256:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403b1e
	.globl sub_403b1e
	.type sub_403b1e, @function
sub_403b1e:

	nop	
.label_258:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_257
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
	#Procedure 0x403b58
	.globl sub_403b58
	.type sub_403b58, @function
sub_403b58:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b63

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_258
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_261
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_264
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_mandatory_arg_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_259
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_266
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_265
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_263
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_260
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_size_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_262
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
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
.label_337:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_343
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_346]]
.label_474:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_350
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_188
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_475:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_363
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_363
	xor	r14d, r14d
.label_371:
	cmp	r14, r11
	jae	.label_369
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_369:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_371
.label_363:
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
	jmp	.label_271
.label_467:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_271
.label_470:
	mov	al, 1
.label_468:
	mov	r12b, 1
.label_471:
	test	r12b, 1
	mov	cl, 1
	je	.label_277
	mov	ecx, eax
.label_277:
	mov	al, cl
.label_469:
	test	r12b, 1
	jne	.label_280
	test	r11, r11
	je	.label_353
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_353:
	mov	r14d, 1
	jmp	.label_288
.label_280:
	xor	r14d, r14d
.label_288:
	mov	ecx, OFFSET FLAT:label_188
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_271
.label_472:
	test	r12b, 1
	jne	.label_297
	test	r11, r11
	je	.label_320
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_320:
	mov	r14d, 1
	jmp	.label_338
.label_473:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_187
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_271
.label_297:
	xor	r14d, r14d
.label_338:
	mov	eax, OFFSET FLAT:label_187
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_271:
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
	jmp	.label_284
	.section	.text
	.align	32
	#Procedure 0x403f6c
	.globl sub_403f6c
	.type sub_403f6c, @function
sub_403f6c:

	nop	dword ptr [rax]
.label_342:
	inc	rsi
.label_284:
	cmp	rbp, -1
	je	.label_356
	cmp	rsi, rbp
	jne	.label_358
	jmp	.label_351
	.section	.text
	.align	32
	#Procedure 0x403f83
	.globl sub_403f83
	.type sub_403f83, @function
sub_403f83:

	nop	word ptr cs:[rax + rax]
.label_356:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_351
.label_358:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_365
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_275
	cmp	rbp, -1
	jne	.label_275
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
.label_275:
	cmp	rbx, rbp
	jbe	.label_374
.label_365:
	xor	r8d, r8d
.label_289:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_375
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_379]]
.label_450:
	test	rsi, rsi
	jne	.label_270
	jmp	.label_273
	.section	.text
	.align	32
	#Procedure 0x40401e
	.globl sub_40401e
	.type sub_40401e, @function
sub_40401e:

	nop	
.label_374:
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
	jne	.label_286
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_289
	jmp	.label_298
.label_286:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_289
.label_454:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_306
	test	rsi, rsi
	jne	.label_308
	cmp	rbp, 1
	je	.label_273
	xor	r13d, r13d
	jmp	.label_269
.label_443:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_312
	cmp	byte ptr [rsp + 7], 0
	jne	.label_272
	cmp	r12d, 2
	jne	.label_319
	mov	eax, r9d
	and	al, 1
	jne	.label_319
	cmp	r14, r11
	jae	.label_322
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_322:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_326
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_326:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_331
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_331:
	add	r14, 3
	mov	r9b, 1
.label_319:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_315
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_315:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_341
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_341
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_341
	cmp	r14, r11
	jae	.label_354
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_354:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_340
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_340:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_269
.label_444:
	mov	bl, 0x62
	jmp	.label_362
.label_445:
	mov	cl, 0x74
	jmp	.label_364
.label_446:
	mov	bl, 0x76
	jmp	.label_362
.label_447:
	mov	bl, 0x66
	jmp	.label_362
.label_448:
	mov	cl, 0x72
	jmp	.label_364
.label_451:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_368
	cmp	byte ptr [rsp + 7], 0
	jne	.label_272
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
	jae	.label_372
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_372:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_267
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_267:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_274
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_274:
	add	r14, 3
	xor	r9d, r9d
.label_368:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_269
.label_452:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_285
	cmp	r12d, 2
	jne	.label_270
	cmp	byte ptr [rsp + 7], 0
	je	.label_270
	jmp	.label_272
.label_453:
	cmp	r12d, 2
	jne	.label_295
	cmp	byte ptr [rsp + 7], 0
	jne	.label_272
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_299
.label_375:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_302
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
.label_303:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_318
	test	r8b, r8b
	je	.label_318
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_269
.label_306:
	test	rsi, rsi
	jne	.label_336
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_336
.label_273:
	mov	dl, 1
.label_449:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_272
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_269:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_347
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_348
	jmp	.label_352
	.section	.text
	.align	32
	#Procedure 0x404364
	.globl sub_404364
	.type sub_404364, @function
sub_404364:

	nop	word ptr cs:[rax + rax]
.label_347:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_352
.label_348:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_357
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_299
	jmp	.label_367
	.section	.text
	.align	32
	#Procedure 0x4043ad
	.globl sub_4043ad
	.type sub_4043ad, @function
sub_4043ad:

	nop	dword ptr [rax]
.label_352:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_367
	jmp	.label_299
.label_357:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_367
.label_312:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_342
	xor	r15d, r15d
	jmp	.label_270
.label_295:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_364
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_299
.label_364:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_272
.label_362:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_269
	nop	word ptr cs:[rax + rax]
.label_367:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_272
	cmp	r12d, 2
	jne	.label_278
	mov	eax, r9d
	and	al, 1
	jne	.label_278
	cmp	r14, r11
	jae	.label_282
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_282:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_313
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_313:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_292
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_292:
	add	r14, 3
	mov	r9b, 1
.label_278:
	cmp	r14, r11
	jae	.label_296
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_296:
	inc	r14
	jmp	.label_300
.label_302:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_304
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_304:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_361:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_325
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_328
	cmp	rbp, -2
	je	.label_290
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_334
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_316:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_373
	bt	rsi, rdx
	jb	.label_298
.label_373:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_316
.label_334:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_359
	xor	r13d, r13d
.label_359:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_361
	jmp	.label_303
.label_341:
	xor	r13d, r13d
	jmp	.label_269
.label_336:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_269
.label_285:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_270
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_270
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_270
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_376
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_378
	cmp	byte ptr [rsp + 7], 0
	jne	.label_272
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_323
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_323:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_366
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_366:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_287
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_287:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_291
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_291:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_269
.label_270:
	xor	eax, eax
.label_308:
	xor	r13d, r13d
	jmp	.label_269
.label_318:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_301
	.section	.text
	.align	32
	#Procedure 0x404693
	.globl sub_404693
	.type sub_404693, @function
sub_404693:

	nop	word ptr cs:[rax + rax]
.label_370:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_301:
	test	r8b, r8b
	je	.label_309
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_310
	cmp	r14, r11
	jae	.label_294
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_294:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_310
	.section	.text
	.align	32
	#Procedure 0x4046dc
	.globl sub_4046dc
	.type sub_4046dc, @function
sub_4046dc:

	nop	dword ptr [rax]
.label_309:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_298
	cmp	r12d, 2
	jne	.label_324
	mov	eax, r9d
	and	al, 1
	jne	.label_324
	cmp	r14, r11
	jae	.label_327
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_327:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_330
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_330:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_335
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_335:
	add	r14, 3
	mov	r9b, 1
.label_324:
	cmp	r14, r11
	jae	.label_339
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_339:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_360
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_360:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_349
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_349:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_310:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_299
	test	r9b, 1
	je	.label_355
	mov	ebx, eax
	and	bl, 1
	jne	.label_355
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_314
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_314:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_329
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_329:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_355:
	cmp	r14, r11
	jae	.label_370
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_370
	.section	.text
	.align	32
	#Procedure 0x4047e3
	.globl sub_4047e3
	.type sub_4047e3, @function
sub_4047e3:

	nop	word ptr cs:[rax + rax]
.label_299:
	test	r9b, 1
	je	.label_268
	and	al, 1
	jne	.label_268
	cmp	r14, r11
	jae	.label_377
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_377:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_281
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_281:
	add	r14, 2
	xor	r9d, r9d
.label_268:
	mov	ebx, r15d
.label_300:
	cmp	r14, r11
	jae	.label_276
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_276:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_342
.label_328:
	xor	r13d, r13d
.label_325:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_303
.label_290:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_293
	mov	rsi, qword ptr [rsp + 0x50]
.label_321:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_305
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_321
	xor	r13d, r13d
	jmp	.label_303
.label_293:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_303
.label_305:
	xor	r13d, r13d
	jmp	.label_303
.label_376:
	xor	r13d, r13d
	jmp	.label_269
.label_378:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_269
	.section	.text
	.align	32
	#Procedure 0x4048b8
	.globl sub_4048b8
	.type sub_4048b8, @function
sub_4048b8:

	nop	dword ptr [rax + rax]
.label_351:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_311
	or	dl, al
	je	.label_298
.label_311:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_332
	or	dl, al
	jne	.label_332
	test	r10b, 1
	jne	.label_333
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_332
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_337
.label_332:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_344
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_345
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_345
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_317:
	cmp	r14, r11
	jae	.label_307
	mov	byte ptr [rcx + r14], al
.label_307:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_317
	jmp	.label_345
.label_272:
	mov	qword ptr [rsp + 0x20], rbp
.label_298:
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
.label_279:
	mov	r14, rax
.label_283:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_333:
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
	jmp	.label_279
.label_344:
	mov	rcx, qword ptr [rsp + 8]
.label_345:
	cmp	r14, r11
	jae	.label_283
	mov	byte ptr [rcx + r14], 0
	jmp	.label_283
.label_343:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404a4c
	.globl sub_404a4c
	.type sub_404a4c, @function
sub_404a4c:

	nop	dword ptr [rax]
.label_380:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404a56
	.globl sub_404a56
	.type sub_404a56, @function
sub_404a56:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a5b

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_380
	test	rdx, rdx
	je	.label_380
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
	.section	.text
	.align	32
	#Procedure 0x404a80

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	mov	eax, edi
	ret	
	.section	.text
	.align	32
	#Procedure 0x404a83
	.globl sub_404a83
	.type sub_404a83, @function
sub_404a83:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a90

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
	je	.label_381
	cmp	r15, -2
	jb	.label_381
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_381
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_381:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x404ae6
	.globl sub_404ae6
	.type sub_404ae6, @function
sub_404ae6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404af0

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
	.align	32
	#Procedure 0x404b21
	.globl sub_404b21
	.type sub_404b21, @function
sub_404b21:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b30

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	32
	#Procedure 0x404b35
	.globl sub_404b35
	.type sub_404b35, @function
sub_404b35:

	nop	word ptr cs:[rax + rax]
.label_388:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404b45
	.globl sub_404b45
	.type sub_404b45, @function
sub_404b45:

	nop	dword ptr [rax]
.label_390:
	call	xalloc_die
.label_387:
	test	rcx, rcx
	jne	.label_386
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_386:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_388
.label_389:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
	.section	.text
	.align	32
	#Procedure 0x404b93

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_387
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_390
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_389
	.section	.text
	.align	32
	#Procedure 0x404bc0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	32
	#Procedure 0x404bca
	.globl sub_404bca
	.type sub_404bca, @function
sub_404bca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404bd0

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
	je	.label_391
	mov	qword ptr [rax], rbx
.label_391:
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
	#Procedure 0x404cbc
	.globl sub_404cbc
	.type sub_404cbc, @function
sub_404cbc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404d25
	.globl sub_404d25
	.type sub_404d25, @function
sub_404d25:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d32
	.globl sub_404d32
	.type sub_404d32, @function
sub_404d32:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d56
	.globl sub_404d56
	.type sub_404d56, @function
sub_404d56:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d69
	.globl sub_404d69
	.type sub_404d69, @function
sub_404d69:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404d70

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	32
	#Procedure 0x404d80

	.globl fstat
	.type fstat, @function
fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
