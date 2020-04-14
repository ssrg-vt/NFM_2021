	.section	.text
	.align	32
	#Procedure 0x4014e9
	.globl sub_4014e9
	.type sub_4014e9, @function
sub_4014e9:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x4014ea
	.globl sub_4014ea
	.type sub_4014ea, @function
sub_4014ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401522
	.globl sub_401522
	.type sub_401522, @function
sub_401522:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40156a
	.globl sub_40156a
	.type sub_40156a, @function
sub_40156a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40158c
	.globl sub_40158c
	.type sub_40158c, @function
sub_40158c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40159d
	.globl sub_40159d
	.type sub_40159d, @function
sub_40159d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4015b6
	.globl sub_4015b6
	.type sub_4015b6, @function
sub_4015b6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4015c0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
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
	#Procedure 0x401614
	.globl sub_401614
	.type sub_401614, @function
sub_401614:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401620
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
	#Procedure 0x4016e1
	.globl sub_4016e1
	.type sub_4016e1, @function
sub_4016e1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4016f0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_12
	test	rax, rax
	je	.label_13
.label_12:
	pop	rbx
	ret	
.label_13:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40170a
	.globl sub_40170a
	.type sub_40170a, @function
sub_40170a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401710
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_14:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_14
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x401731
	.globl sub_401731
	.type sub_401731, @function
sub_401731:

	nop	word ptr cs:[rax + rax]
.label_15:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401745
	.globl sub_401745
	.type sub_401745, @function
sub_401745:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40174b
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_16
	test	rax, rax
	je	.label_15
.label_16:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401760
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
	#Procedure 0x401793
	.globl sub_401793
	.type sub_401793, @function
sub_401793:

	nop	word ptr cs:[rax + rax]
.label_25:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_17
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
	#Procedure 0x4017d8
	.globl sub_4017d8
	.type sub_4017d8, @function
sub_4017d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4017dd

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_25
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_29
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_22
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_32
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_33
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_30
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_23
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_28
	mov	ecx, OFFSET FLAT:label_24
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_20
	mov	esi, OFFSET FLAT:label_21
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_20
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_26
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_20:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_27
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_24
	mov	ecx, OFFSET FLAT:label_18
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_31
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_18
	mov	ecx, OFFSET FLAT:label_19
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
	.section	.text
	.align	32
	#Procedure 0x401960

	.globl detect_loop
	.type detect_loop, @function
detect_loop:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14 + 0x20], 0
	je	.label_34
	mov	r15, qword ptr [rip + loop]
	test	r15, r15
	je	.label_41
	mov	rax, qword ptr [r14 + 0x30]
	test	rax, rax
	je	.label_34
	lea	rbx, [r14 + 0x30]
	nop	dword ptr [rax]
.label_42:
	cmp	qword ptr [rax], r15
	je	.label_40
	mov	rbx, rax
	add	rbx, 8
	mov	rax, qword ptr [rbx]
	test	rax, rax
	jne	.label_42
	jmp	.label_34
.label_40:
	cmp	qword ptr [r14 + 0x28], 0
	je	.label_36
	nop	dword ptr [rax]
.label_39:
	mov	rcx, qword ptr [r15]
	mov	r15, qword ptr [r15 + 0x28]
	xor	edi, edi
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_35
	xor	eax, eax
	call	error
	mov	rax, qword ptr [rip + loop]
	cmp	rax, r14
	je	.label_37
	mov	qword ptr [rax + 0x28], 0
	mov	qword ptr [rip + loop],  r15
	test	r15, r15
	mov	al, 1
	jne	.label_39
	jmp	.label_38
.label_36:
	mov	qword ptr [r14 + 0x28], r15
.label_41:
	mov	qword ptr [rip + loop],  r14
.label_34:
	xor	eax, eax
.label_38:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_37:
	mov	rax, qword ptr [rbx]
	mov	rcx, qword ptr [rax]
	dec	qword ptr [rcx + 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbx], rax
	mov	al, 1
	test	r14, r14
	je	.label_38
	nop	word ptr cs:[rax + rax]
.label_43:
	mov	rcx, qword ptr [r14 + 0x28]
	mov	qword ptr [r14 + 0x28], 0
	test	rcx, rcx
	mov	r14, rcx
	jne	.label_43
	mov	qword ptr [rip + loop],  0
	jmp	.label_38
	.section	.text
	.align	32
	#Procedure 0x401a41
	.globl sub_401a41
	.type sub_401a41, @function
sub_401a41:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401a50

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
	je	.label_44
	cmp	r15, -2
	jb	.label_44
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_44
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_44:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x401aa6
	.globl sub_401aa6
	.type sub_401aa6, @function
sub_401aa6:

	nop	word ptr cs:[rax + rax]
.label_46:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401ab5
	.globl sub_401ab5
	.type sub_401ab5, @function
sub_401ab5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401abf
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
	je	.label_45
	test	r14, r14
	je	.label_46
.label_45:
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
	#Procedure 0x401af0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_47
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_48
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401b15
	.globl sub_401b15
	.type sub_401b15, @function
sub_401b15:

	nop	word ptr cs:[rax + rax]
.label_49:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401b25
	.globl sub_401b25
	.type sub_401b25, @function
sub_401b25:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b30

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
	je	.label_49
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
	#Procedure 0x401bc0

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_50
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
.label_50:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401bdd
	.globl sub_401bdd
	.type sub_401bdd, @function
sub_401bdd:

	nop	dword ptr [rax]
.label_51:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401be5
	.globl sub_401be5
	.type sub_401be5, @function
sub_401be5:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401be9
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
	je	.label_51
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
	#Procedure 0x401c50

	.globl init_tokenbuffer
	.type init_tokenbuffer, @function
init_tokenbuffer:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi], xmm0
	ret	
	.section	.text
	.align	32
	#Procedure 0x401c57
	.globl sub_401c57
	.type sub_401c57, @function
sub_401c57:

	nop	word ptr [rax + rax]
.label_52:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401c65
	.globl sub_401c65
	.type sub_401c65, @function
sub_401c65:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401c67
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_52
	test	rdx, rdx
	je	.label_52
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
	#Procedure 0x401cd0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_53
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_35
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401d00
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_54
	test	rdx, rdx
	je	.label_54
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_54:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401d6a
	.globl sub_401d6a
	.type sub_401d6a, @function
sub_401d6a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d70
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_55
	test	rdx, rdx
	je	.label_55
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_55:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401d9b
	.globl sub_401d9b
	.type sub_401d9b, @function
sub_401d9b:

	nop	dword ptr [rax + rax]
.label_60:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401da5
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_56
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_59
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_58
	call	free
	xor	eax, eax
	jmp	.label_57
.label_56:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_60
	mov	qword ptr [rsi], rbx
.label_58:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_57
	test	rax, rax
	je	.label_60
.label_57:
	pop	rbx
	ret	
.label_59:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401e04
	.globl sub_401e04
	.type sub_401e04, @function
sub_401e04:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e10
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
	#Procedure 0x401e28
	.globl sub_401e28
	.type sub_401e28, @function
sub_401e28:

	nop	dword ptr [rax + rax]
.label_63:
	mov	rdi, rbx
	call	r14
	mov	bpl, al
.label_62:
	mov	eax, ebp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401e40
	.globl sub_401e40
	.type sub_401e40, @function
sub_401e40:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
.label_65:
	cmp	qword ptr [rbx + 0x10], 0
	je	.label_63
.label_64:
	mov	rdi, rbx
	call	r14
	mov	bpl, 1
	test	al, al
	jne	.label_62
	mov	rdi, qword ptr [rbx + 0x10]
	test	rdi, rdi
	je	.label_61
	mov	rsi, r14
	call	recurse_tree
	test	al, al
	jne	.label_62
.label_61:
	xor	ebp, ebp
	jmp	.label_62
	.section	.text
	.align	32
	#Procedure 0x401e7c

	.globl recurse_tree
	.type recurse_tree, @function
recurse_tree:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rsi
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx + 8]
	test	rdi, rdi
	je	.label_65
	mov	rsi, r14
	call	recurse_tree
	mov	bpl, 1
	test	al, al
	je	.label_64
	jmp	.label_62
	.section	.text
	.align	32
	#Procedure 0x401ea0
	.globl version_etc
	.type version_etc, @function
version_etc:

	sub	rsp, 0xd8
	test	al, al
	je	.label_66
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_66:
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
	#Procedure 0x401f23
	.globl sub_401f23
	.type sub_401f23, @function
sub_401f23:

	nop	word ptr cs:[rax + rax]
.label_68:
	call	xalloc_die
.label_67:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_69
	test	rax, rax
	je	.label_68
.label_69:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401f49

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_67
	test	rbx, rbx
	jne	.label_67
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401f60

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	rbx, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_47
	call	setlocale
	mov	edi, OFFSET FLAT:label_112
	mov	esi, OFFSET FLAT:label_113
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_112
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	r8, qword ptr [rip + Version]
	sub	rsp, 8
	mov	edx, OFFSET FLAT:label_18
	mov	ecx, OFFSET FLAT:label_28
	mov	r9d, 1
	mov	eax, 0
	mov	edi, ebp
	mov	rsi, rbx
	push	0
	push	OFFSET FLAT:label_117
	push	OFFSET FLAT:usage
	call	parse_gnu_standard_options_only
	add	rsp, 0x20
	movsxd	rax, dword ptr [rip + optind]
	mov	ecx, ebp
	sub	ecx, eax
	cmp	ecx, 2
	jge	.label_135
	mov	r15d, OFFSET FLAT:label_140
	cmp	eax, ebp
	je	.label_141
	mov	r15, qword ptr [rbx + rax*8]
.label_141:
	movzx	eax, byte ptr [r15]
	mov	ebx, 0x2d
	sub	ebx, eax
	jne	.label_86
	movzx	ebx, byte ptr [r15 + 1]
	neg	ebx
.label_86:
	mov	edi, 0x38
	call	xmalloc
	mov	r12, rax
	mov	dword ptr [rsp + 0x1c], ebx
	test	ebx, ebx
	xorps	xmm0, xmm0
	movups	xmmword ptr [r12 + 0x20], xmm0
	mov	qword ptr [r12 + 0x30], 0
	movups	xmmword ptr [r12 + 0xc], xmm0
	movups	xmmword ptr [r12], xmm0
	je	.label_78
	mov	rdx, qword ptr [rip + stdin]
	mov	esi, OFFSET FLAT:label_94
	mov	rdi, r15
	call	freopen_safer
	test	rax, rax
	je	.label_101
.label_78:
	mov	rdi, qword ptr [rip + stdin]
	mov	esi, 2
	call	fadvise
	lea	rbx, [rsp + 0x38]
	mov	rdi, rbx
	call	init_tokenbuffer
	jmp	.label_88
.label_130:
	inc	qword ptr [r13 + 0x20]
	mov	edi, 0x10
	call	xmalloc
	mov	qword ptr [rax], r13
	mov	rcx, qword ptr [rbp + 0x30]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp + 0x30], rax
	nop	dword ptr [rax]
.label_88:
	xor	eax, eax
.label_116:
	mov	rbp, rax
	mov	rdi, qword ptr [rip + stdin]
	mov	esi, OFFSET FLAT:label_82
	mov	edx, 3
	mov	rcx, rbx
	call	readtoken
	cmp	rax, -1
	je	.label_124
	test	rax, rax
	je	.label_129
	test	r12, r12
	je	.label_134
	mov	qword ptr [rsp + 0x20], rbp
	mov	rbx, qword ptr [rsp + 0x40]
	mov	rbp, qword ptr [r12 + 0x10]
	test	rbp, rbp
	mov	qword ptr [rsp + 0x30], r15
	mov	qword ptr [rsp + 0x28], r12
	je	.label_139
	mov	rsi, qword ptr [rbp]
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	je	.label_72
	mov	qword ptr [rsp + 0x10], rbx
	mov	r14, rbp
	mov	r15, r12
	nop	word ptr [rax + rax]
.label_100:
	lea	r13, [rbp + 8]
	lea	r12, [rbp + 0x10]
	test	eax, eax
	mov	rcx, r12
	cmovs	rcx, r13
	mov	rbx, qword ptr [rcx]
	test	rbx, rbx
	je	.label_84
	cmp	dword ptr [rbx + 0x18], 0
	cmovne	r15, rbp
	cmovne	r14, rbx
	mov	rsi, qword ptr [rbx]
	mov	rdi, qword ptr [rsp + 0x10]
	call	strcmp
	test	eax, eax
	mov	rbp, rbx
	mov	r13, rbx
	jne	.label_100
	jmp	.label_93
.label_139:
	mov	edi, 0x38
	call	xmalloc
	mov	r13, rax
	test	rbx, rbx
	mov	eax, 0
	je	.label_105
	mov	rdi, rbx
	call	xstrdup
.label_105:
	mov	qword ptr [r13], rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [r13 + 8], xmm0
	mov	dword ptr [r13 + 0x18], 0
	movups	xmmword ptr [r13 + 0x20], xmm0
	mov	qword ptr [r13 + 0x30], 0
	mov	qword ptr [r12 + 0x10], r13
	jmp	.label_93
.label_72:
	mov	r13, rbp
	jmp	.label_93
.label_84:
	mov	ebp, eax
	mov	edi, 0x38
	call	xmalloc
	mov	rbx, rax
	mov	rdi, qword ptr [rsp + 0x10]
	test	rdi, rdi
	mov	eax, 0
	je	.label_131
	call	xstrdup
.label_131:
	mov	qword ptr [rbx], rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 8], xmm0
	mov	dword ptr [rbx + 0x18], 0
	movups	xmmword ptr [rbx + 0x20], xmm0
	mov	qword ptr [rbx + 0x30], 0
	test	ebp, ebp
	mov	qword ptr [rsp + 8], r15
	js	.label_102
	mov	qword ptr [r12], rbx
	jmp	.label_70
.label_102:
	mov	qword ptr [r13], rbx
.label_70:
	mov	r13, rbx
	mov	r15, r14
	mov	rsi, qword ptr [r15]
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rdi, rbp
	call	strcmp
	mov	r14d, eax
	test	r14d, r14d
	je	.label_81
	lea	rax, [r15 + 0x10]
	lea	rcx, [r15 + 8]
	test	r14d, r14d
	cmovs	rax, rcx
	mov	rax, qword ptr [rax]
	mov	r12, rax
	cmp	rax, r13
	je	.label_87
	mov	rbx, r12
	nop	word ptr cs:[rax + rax]
.label_115:
	mov	rsi, qword ptr [rbx]
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_104
	js	.label_106
	mov	dword ptr [rbx + 0x18], 1
	add	rbx, 0x10
	jmp	.label_108
	.section	.text
	.align	32
	#Procedure 0x402282
	.globl sub_402282
	.type sub_402282, @function
sub_402282:

	nop	word ptr cs:[rax + rax]
.label_106:
	mov	dword ptr [rbx + 0x18], 0xffffffff
	add	rbx, 8
.label_108:
	mov	rbx, qword ptr [rbx]
	cmp	rbx, r13
	jne	.label_115
.label_87:
	sar	r14d, 0x1f
	or	r14d, 1
	mov	eax, dword ptr [r15 + 0x18]
	test	eax, eax
	je	.label_126
	mov	ecx, r14d
	neg	ecx
	cmp	eax, ecx
	jne	.label_118
.label_126:
	add	eax, r14d
	mov	dword ptr [r15 + 0x18], eax
	jmp	.label_93
.label_118:
	cmp	dword ptr [r12 + 0x18], r14d
	jne	.label_123
	test	r14d, r14d
	js	.label_132
	mov	rax, qword ptr [r12 + 8]
	mov	qword ptr [r15 + 0x10], rax
	mov	qword ptr [r12 + 8], r15
	jmp	.label_127
.label_123:
	test	r14d, r14d
	js	.label_136
	mov	rax, qword ptr [r12 + 8]
	mov	rdx, qword ptr [rax + 0x10]
	mov	qword ptr [r12 + 8], rdx
	mov	qword ptr [rax + 0x10], r12
	mov	rdx, qword ptr [rax + 8]
	mov	qword ptr [r15 + 0x10], rdx
	mov	qword ptr [rax + 8], r15
	jmp	.label_138
.label_132:
	mov	rax, qword ptr [r12 + 0x10]
	mov	qword ptr [r15 + 8], rax
	mov	qword ptr [r12 + 0x10], r15
.label_127:
	mov	rcx, qword ptr [rsp + 8]
	mov	dword ptr [r12 + 0x18], 0
	mov	dword ptr [r15 + 0x18], 0
	mov	rax, r12
	jmp	.label_73
.label_136:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdx, qword ptr [rax + 8]
	mov	qword ptr [r12 + 0x10], rdx
	mov	qword ptr [rax + 8], r12
	mov	rdx, qword ptr [rax + 0x10]
	mov	qword ptr [r15 + 8], rdx
	mov	qword ptr [rax + 0x10], r15
.label_138:
	mov	dword ptr [r15 + 0x18], 0
	mov	dword ptr [r12 + 0x18], 0
	mov	edx, dword ptr [rax + 0x18]
	cmp	edx, r14d
	jne	.label_95
	mov	dword ptr [r15 + 0x18], ecx
	jmp	.label_103
.label_95:
	cmp	edx, ecx
	jne	.label_103
	mov	dword ptr [r12 + 0x18], r14d
.label_103:
	mov	dword ptr [rax + 0x18], 0
	mov	rcx, qword ptr [rsp + 8]
.label_73:
	cmp	r15, qword ptr [rcx + 0x10]
	je	.label_111
	mov	qword ptr [rcx + 8], rax
	jmp	.label_93
.label_111:
	mov	qword ptr [rcx + 0x10], rax
	nop	word ptr cs:[rax + rax]
.label_93:
	mov	rbp, qword ptr [rsp + 0x20]
	test	rbp, rbp
	mov	rax, r13
	mov	r15, qword ptr [rsp + 0x30]
	mov	r12, qword ptr [rsp + 0x28]
	lea	rbx, [rsp + 0x38]
	je	.label_116
	mov	rdi, qword ptr [rbp]
	mov	rsi, qword ptr [r13]
	call	strcmp
	test	eax, eax
	mov	eax, 0
	je	.label_116
	jmp	.label_130
.label_124:
	test	rbp, rbp
	jne	.label_133
	mov	r14, qword ptr [r12 + 0x10]
	test	r14, r14
	je	.label_137
	mov	esi, OFFSET FLAT:count_items
	mov	rdi, r14
	call	recurse_tree
.label_137:
	xor	ebp, ebp
.label_85:
	mov	rax, qword ptr [rip + n_strings]
	nop	dword ptr [rax + rax]
.label_122:
	test	rax, rax
	je	.label_71
	test	r14, r14
	je	.label_74
	mov	esi, OFFSET FLAT:scan_zeros
	mov	rdi, r14
	call	recurse_tree
.label_74:
	mov	rcx, qword ptr [rip + head]
	test	rcx, rcx
	je	.label_80
	nop	dword ptr [rax + rax]
.label_121:
	mov	rdi, qword ptr [rcx]
	mov	rbx, qword ptr [rcx + 0x30]
	call	puts
	mov	rcx, qword ptr [rip + head]
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [rip + n_strings]
	dec	rax
	mov	qword ptr [rip + n_strings],  rax
	jmp	.label_92
	.section	.text
	.align	32
	#Procedure 0x40246d
	.globl sub_40246d
	.type sub_40246d, @function
sub_40246d:

	nop	dword ptr [rax]
.label_110:
	mov	rbx, qword ptr [rbx + 8]
.label_92:
	test	rbx, rbx
	je	.label_107
	mov	rdx, qword ptr [rbx]
	dec	qword ptr [rdx + 0x20]
	jne	.label_110
	mov	rsi, qword ptr [rip + zeros]
	mov	qword ptr [rsi + 0x28], rdx
	mov	qword ptr [rip + zeros],  rdx
	jmp	.label_110
	.section	.text
	.align	32
	#Procedure 0x402496
	.globl sub_402496
	.type sub_402496, @function
sub_402496:

	nop	word ptr cs:[rax + rax]
.label_107:
	mov	rcx, qword ptr [rcx + 0x28]
	mov	qword ptr [rip + head],  rcx
	test	rcx, rcx
	jne	.label_121
	jmp	.label_75
	.section	.text
	.align	32
	#Procedure 0x4024b2
	.globl sub_4024b2
	.type sub_4024b2, @function
sub_4024b2:

	nop	word ptr cs:[rax + rax]
.label_80:
	mov	rax, qword ptr [rip + n_strings]
.label_75:
	test	rax, rax
	mov	eax, 0
	je	.label_122
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_128
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	nop	dword ptr [rax]
.label_76:
	test	r14, r14
	je	.label_99
	mov	esi, OFFSET FLAT:detect_loop
	mov	rdi, r14
	call	recurse_tree
.label_99:
	mov	ebp, 1
	cmp	qword ptr [rip + loop],  0
	jne	.label_76
	jmp	.label_85
.label_71:
	mov	rdi, qword ptr [rip + stdin]
	call	rpl_fclose
	test	eax, eax
	jne	.label_90
	mov	eax, ebp
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_104:
	mov	edi, OFFSET FLAT:label_96
	mov	esi, OFFSET FLAT:label_97
	mov	edx, 0xb6
	mov	ecx, OFFSET FLAT:label_98
	call	__assert_fail
.label_129:
	mov	edi, OFFSET FLAT:label_119
	mov	esi, OFFSET FLAT:label_97
	mov	edx, 0x1cd
	mov	ecx, OFFSET FLAT:label_120
	call	__assert_fail
.label_135:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_114
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [rbx + rax*8 + 8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	mov	edi, 1
	call	usage
.label_134:
	mov	edi, OFFSET FLAT:label_125
	mov	esi, OFFSET FLAT:label_97
	mov	edx, 0x84
	mov	ecx, OFFSET FLAT:label_98
	call	__assert_fail
.label_133:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_79
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_90:
	mov	rbp, r15
	call	__errno_location
	mov	ebx, dword ptr [rax]
	cmp	dword ptr [rsp + 0x1c], 0
	jne	.label_77
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_83
	mov	edx, 5
	call	dcgettext
	jmp	.label_89
.label_101:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	jmp	.label_91
.label_77:
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbp
.label_91:
	call	quotearg_n_style_colon
.label_89:
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_35
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_81:
	mov	edi, OFFSET FLAT:label_109
	mov	esi, OFFSET FLAT:label_97
	mov	edx, 0xa8
	mov	ecx, OFFSET FLAT:label_98
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x402692
	.globl sub_402692
	.type sub_402692, @function
sub_402692:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4026a0
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
	#Procedure 0x4026b9
	.globl sub_4026b9
	.type sub_4026b9, @function
sub_4026b9:

	nop	dword ptr [rax]
.label_142:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4026c5
	.globl sub_4026c5
	.type sub_4026c5, @function
sub_4026c5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4026d0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_142
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_143
	test	rax, rax
	je	.label_142
.label_143:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402700

	.globl count_items
	.type count_items, @function
count_items:
	inc	qword ptr [rip + n_strings]
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x40270a
	.globl sub_40270a
	.type sub_40270a, @function
sub_40270a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402710
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40271a
	.globl sub_40271a
	.type sub_40271a, @function
sub_40271a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402720

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
	jne	.label_144
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_144
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_145
.label_144:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_145:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_146
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_146:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40278e
	.globl sub_40278e
	.type sub_40278e, @function
sub_40278e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402790

	.globl scan_zeros
	.type scan_zeros, @function
scan_zeros:
	cmp	qword ptr [rdi + 0x20], 0
	jne	.label_147
	cmp	qword ptr [rdi], 0
	je	.label_147
	cmp	qword ptr [rip + head],  0
	je	.label_149
	mov	rax, qword ptr [rip + zeros]
	mov	qword ptr [rax + 0x28], rdi
	jmp	.label_148
.label_149:
	mov	qword ptr [rip + head],  rdi
.label_148:
	mov	qword ptr [rip + zeros],  rdi
.label_147:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x4027c5
	.globl sub_4027c5
	.type sub_4027c5, @function
sub_4027c5:

	nop	word ptr cs:[rax + rax]
.label_151:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4027d5
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_154
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_151
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_156
.label_150:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_152
	test	rax, rax
	je	.label_151
.label_152:
	pop	rbx
	ret	
.label_154:
	test	rcx, rcx
	jne	.label_155
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_155:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_153
.label_156:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_150
	test	rbx, rbx
	jne	.label_150
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_153:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402867
	.globl sub_402867
	.type sub_402867, @function
sub_402867:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402870
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x402878
	.globl sub_402878
	.type sub_402878, @function
sub_402878:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402880
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x402891
	.globl sub_402891
	.type sub_402891, @function
sub_402891:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4028a0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_157
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_158
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_160
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_28
	mov	ecx, OFFSET FLAT:label_24
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_159
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x402914
	.globl sub_402914
	.type sub_402914, @function
sub_402914:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402920
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
	#Procedure 0x402956
	.globl sub_402956
	.type sub_402956, @function
sub_402956:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402960
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40296e
	.globl sub_40296e
	.type sub_40296e, @function
sub_40296e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402970

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
	js	.label_164
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_167
	cmp	r12d, 0x7fffffff
	je	.label_162
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
	jne	.label_165
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_165:
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
.label_167:
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
	jbe	.label_163
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_166
.label_163:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_161
	mov	rdi, r14
	call	free
.label_161:
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
.label_166:
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
.label_164:
	call	abort
.label_162:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402b2d
	.globl sub_402b2d
	.type sub_402b2d, @function
sub_402b2d:

	nop	dword ptr [rax]
.label_170:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_168
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402b50
	.globl sub_402b50
	.type sub_402b50, @function
sub_402b50:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b5f

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_170
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_172
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_173
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_172
	mov	esi, OFFSET FLAT:label_171
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_169
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_169:
	mov	rbx, r14
.label_172:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x402be0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_175
	cmp	byte ptr [rax], 0x43
	jne	.label_177
	cmp	byte ptr [rax + 1], 0
	je	.label_174
.label_177:
	mov	esi, OFFSET FLAT:label_176
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_175
.label_174:
	xor	ebx, ebx
.label_175:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402c11
	.globl sub_402c11
	.type sub_402c11, @function
sub_402c11:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c20
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_178
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_180:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_180
.label_178:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_181
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_182], OFFSET FLAT:slot0
.label_181:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_179
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_179:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x402cb1
	.globl sub_402cb1
	.type sub_402cb1, @function
sub_402cb1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402cc0
	.globl parse_long_options
	.type parse_long_options, @function
parse_long_options:

	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0xd0
	mov	rbx, r9
	mov	r14, r8
	mov	r15, rcx
	mov	r12, rdx
	test	al, al
	je	.label_183
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_183:
	mov	ebp, dword ptr [rip + opterr]
	mov	dword ptr [rip + opterr],  0
	cmp	edi, 2
	jne	.label_185
	mov	edi, 2
	mov	edx, OFFSET FLAT:label_186
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	call	getopt_long
	cmp	eax, 0x68
	je	.label_184
	cmp	eax, 0x76
	jne	.label_185
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0x100]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x30
	mov	rdi, qword ptr [rip + stdout]
	lea	r8, [rsp]
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, r14
	call	version_etc_va
	xor	edi, edi
	call	exit
.label_184:
	xor	edi, edi
	call	rbx
.label_185:
	mov	dword ptr [rip + opterr],  ebp
	mov	dword ptr [rip + optind],  0
	add	rsp, 0xd0
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402db6
	.globl sub_402db6
	.type sub_402db6, @function
sub_402db6:

	nop	word ptr cs:[rax + rax]
.label_187:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402dc5
	.globl sub_402dc5
	.type sub_402dc5, @function
sub_402dc5:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402dcd
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
	je	.label_187
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
	#Procedure 0x402e30
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_188
	call	rpl_calloc
	test	rax, rax
	je	.label_188
	pop	rcx
	ret	
.label_188:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402e56
	.globl sub_402e56
	.type sub_402e56, @function
sub_402e56:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402e60

	.globl parse_gnu_standard_options_only
	.type parse_gnu_standard_options_only, @function
parse_gnu_standard_options_only:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0xd8
	mov	r14, r8
	mov	r15, rcx
	mov	rbx, rdx
	test	al, al
	je	.label_189
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_189:
	mov	ebp, dword ptr [rip + opterr]
	mov	dword ptr [rip + opterr],  1
	mov	eax, OFFSET FLAT:label_47
	mov	edx, OFFSET FLAT:label_186
	test	r9b, r9b
	cmovne	rdx, rax
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	call	getopt_long
	cmp	eax, -1
	je	.label_193
	mov	rcx, qword ptr [rsp + 0x100]
	cmp	eax, 0x68
	je	.label_190
	cmp	eax, 0x76
	je	.label_191
	mov	edi, dword ptr [rip + exit_failure]
	jmp	.label_192
.label_191:
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0x108]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x30
	mov	rdi, qword ptr [rip + stdout]
	lea	r8, [rsp]
	mov	rsi, rbx
	mov	rdx, r15
	mov	rcx, r14
	call	version_etc_va
	xor	edi, edi
	call	exit
	.section	.text
	.align	32
	#Procedure 0x402f44
	.globl sub_402f44
	.type sub_402f44, @function
sub_402f44:

	nop	dword ptr [rax]
.label_190:
	xor	edi, edi
.label_192:
	call	rcx
.label_193:
	mov	dword ptr [rip + opterr],  ebp
	add	rsp, 0xd8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_194:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402f65
	.globl sub_402f65
	.type sub_402f65, @function
sub_402f65:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402f6d
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
	je	.label_194
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
	#Procedure 0x402fd0

	.globl rpl_freopen
	.type rpl_freopen, @function
rpl_freopen:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	call	freopen
	mov	rbx, rax
	test	r15, r15
	je	.label_196
	test	rbx, rbx
	je	.label_196
	mov	rdi, rbx
	call	fileno
	mov	ebp, eax
	mov	edi, ebp
	mov	esi, ebp
	call	dup2
	test	eax, eax
	jns	.label_196
	call	__errno_location
	cmp	dword ptr [rax], 9
	jne	.label_196
	mov	edi, OFFSET FLAT:label_197
	mov	esi, 0x80000
	xor	eax, eax
	call	open
	mov	r12d, eax
	cmp	r12d, ebp
	je	.label_195
	mov	edi, r12d
	mov	esi, ebp
	call	dup2
	mov	ebp, eax
	mov	edi, r12d
	call	close
	test	ebp, ebp
	js	.label_196
.label_195:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	jmp	freopen
.label_196:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403064
	.globl sub_403064
	.type sub_403064, @function
sub_403064:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403070
	.globl readtokens
	.type readtokens, @function
readtokens:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	qword ptr [rsp + 0x30], r9
	mov	qword ptr [rsp + 0x28], r8
	mov	rbx, rcx
	mov	qword ptr [rsp + 0x48], rdx
	mov	qword ptr [rsp + 0x40], rdi
	test	rsi, rsi
	lea	rax, [rsi + 1]
	mov	ebp, 0x40
	cmovne	rbp, rax
	mov	rax, rbp
	shr	rax, 0x3c
	jne	.label_201
	lea	r14, [rbp*8]
	mov	rdi, r14
	call	xmalloc
	mov	qword ptr [rsp], rax
	mov	rdi, r14
	call	xmalloc
	mov	qword ptr [rsp + 8], rax
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	xor	r14d, r14d
	mov	qword ptr [rsp + 0x38], rbx
	jmp	.label_202
	.section	.text
	.align	32
	#Procedure 0x4030e5
	.globl sub_4030e5
	.type sub_4030e5, @function
sub_4030e5:

	nop	word ptr cs:[rax + rax]
.label_205:
	mov	rdi, rbx
	call	xmalloc
	mov	r13, rax
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax + r14*8], r12
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdi, r13
	mov	rdx, rbx
	call	memcpy
	mov	qword ptr [rbp + r14*8], r13
	inc	r14
	mov	rbx, r15
	mov	rbp, qword ptr [rsp + 0x50]
.label_202:
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsi, qword ptr [rsp + 0x48]
	mov	rdx, rbx
	lea	rcx, [rsp + 0x10]
	call	readtoken
	cmp	r14, rbp
	jb	.label_207
	mov	r15, rax
	cmp	qword ptr [rsp], 0
	je	.label_198
	movabs	rax, 0xaaaaaaaaaaaaaaa
	cmp	rbp, rax
	jae	.label_201
	mov	rax, rbp
	shr	rax, 1
	lea	rcx, [rbp + rax]
	lea	rbp, [rbp + rax + 1]
	lea	r13, [rcx*8 + 8]
	mov	rdi, qword ptr [rsp]
	mov	rsi, r13
	call	xrealloc
	mov	qword ptr [rsp], rax
	movabs	rax, 0xfffffffffffffff
	cmp	rbp, rax
	jbe	.label_199
	jmp	.label_201
.label_198:
	test	rbp, rbp
	mov	eax, 0x10
	cmove	rbp, rax
	movabs	rax, 0xfffffffffffffff
	cmp	rbp, rax
	ja	.label_203
	lea	r13, [rbp*8]
	mov	rdi, qword ptr [rsp]
	mov	rsi, r13
	call	xrealloc
	mov	qword ptr [rsp], rax
.label_199:
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, r13
	call	xrealloc
	mov	qword ptr [rsp + 8], rax
	mov	rbx, qword ptr [rsp + 0x38]
	mov	rax, r15
.label_207:
	cmp	rax, -1
	je	.label_204
	mov	qword ptr [rsp + 0x50], rbp
	mov	r15, rbx
	mov	rbp, qword ptr [rsp]
	mov	rbx, rax
	inc	rbx
	mov	r12, rax
	jns	.label_205
.label_201:
	call	xalloc_die
.label_204:
	mov	rbp, qword ptr [rsp]
	mov	qword ptr [rbp + r14*8], 0
	mov	rbx, qword ptr [rsp + 8]
	mov	qword ptr [rbx + r14*8], 0
	mov	rdi, qword ptr [rsp + 0x18]
	call	free
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rax], rbp
	mov	rax, qword ptr [rsp + 0x30]
	test	rax, rax
	je	.label_206
	mov	qword ptr [rax], rbx
	jmp	.label_200
.label_206:
	mov	rdi, rbx
	call	free
.label_200:
	mov	rax, r14
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_203:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40326b
	.globl sub_40326b
	.type sub_40326b, @function
sub_40326b:

	nop	dword ptr [rax + rax]
.label_212:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_208
	mov	eax, OFFSET FLAT:label_209
	jmp	.label_210
	.section	.text
	.align	32
	#Procedure 0x40327f
	.globl sub_40327f
	.type sub_40327f, @function
sub_40327f:

	nop	word ptr cs:[rax + rax]
.label_217:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_211
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_211
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_211
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_211
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_211
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_211
	cmp	byte ptr [rax + 7], 0
	je	.label_212
.label_211:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_213
	mov	eax, OFFSET FLAT:label_214
.label_210:
	cmove	rax, rcx
.label_218:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4032d2

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
	jne	.label_218
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_217
	cmp	ecx, 0x55
	jne	.label_211
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_211
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_211
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_211
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_211
	cmp	byte ptr [rax + 5], 0
	jne	.label_211
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_215
	mov	eax, OFFSET FLAT:label_216
	jmp	.label_210
	.section	.text
	.align	32
	#Procedure 0x403340
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40334a
	.globl sub_40334a
	.type sub_40334a, @function
sub_40334a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403350
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
	je	.label_219
	mov	qword ptr [rax], rbx
.label_219:
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
	#Procedure 0x40343c
	.globl sub_40343c
	.type sub_40343c, @function
sub_40343c:

	nop	dword ptr [rax]
.label_220:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x40344c
	.globl sub_40344c
	.type sub_40344c, @function
sub_40344c:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403458

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_220
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_222
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_220
.label_222:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_220
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_221
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_221:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4034c0
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
	#Procedure 0x403535
	.globl sub_403535
	.type sub_403535, @function
sub_403535:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403540
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
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
	#Procedure 0x4035af
	.globl sub_4035af
	.type sub_4035af, @function
sub_4035af:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4035b0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_223
	test	rsi, rsi
	je	.label_223
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
.label_223:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40361c
	.globl sub_40361c
	.type sub_40361c, @function
sub_40361c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403620
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
	#Procedure 0x403638
	.globl sub_403638
	.type sub_403638, @function
sub_403638:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403640

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_224
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_224
	test	byte ptr [rbx + 1], 1
	je	.label_224
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_224:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x403673
	.globl sub_403673
	.type sub_403673, @function
sub_403673:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403680

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
	je	.label_225
	mov	edx, OFFSET FLAT:label_235
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_241
.label_225:
	mov	edx, OFFSET FLAT:label_242
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_241:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_228
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
	mov	esi, OFFSET FLAT:label_243
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_230
	jmp	qword ptr [(r12 * 8) + label_231]
.label_486:
	add	rsp, 8
	jmp	.label_229
.label_230:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_238
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
	jmp	.label_229
.label_487:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_226
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
.label_488:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_239
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
.label_489:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_236
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
.label_490:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_233
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
	jmp	.label_229
.label_491:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_232
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
	jmp	.label_229
.label_492:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_234
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
	jmp	.label_229
.label_493:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_237
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
	jmp	.label_229
.label_495:
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
	push	qword ptr [r15 + 0x40]
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
	jmp	.label_229
.label_494:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_227
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
.label_229:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4039d8
	.globl sub_4039d8
	.type sub_4039d8, @function
sub_4039d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4039e0
	.globl fdadvise
	.type fdadvise, @function
fdadvise:

	jmp	posix_fadvise
	.section	.text
	.align	32
	#Procedure 0x4039e5
	.globl sub_4039e5
	.type sub_4039e5, @function
sub_4039e5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4039f0
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
	#Procedure 0x4039ff
	.globl sub_4039ff
	.type sub_4039ff, @function
sub_4039ff:

	nop	
.label_244:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403a05
	.globl sub_403a05
	.type sub_403a05, @function
sub_403a05:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403a14
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
	je	.label_244
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
	#Procedure 0x403a70

	.globl freopen_safer
	.type freopen_safer, @function
freopen_safer:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	rbp, rdi
	mov	rdi, rbx
	call	fileno
	xor	r12d, r12d
	test	eax, eax
	je	.label_248
	cmp	eax, 1
	je	.label_251
	cmp	eax, 2
	je	.label_253
	mov	edi, 2
	mov	esi, 2
	call	dup2
	cmp	eax, 2
	setne	r12b
.label_253:
	mov	r15b, r12b
	mov	edi, 1
	mov	esi, 1
	call	dup2
	cmp	eax, 1
	setne	r12b
	jmp	.label_247
.label_248:
	xor	r15d, r15d
	xor	r13d, r13d
	jmp	.label_250
.label_251:
	xor	r15d, r15d
.label_247:
	xor	r13d, r13d
	xor	edi, edi
	xor	esi, esi
	call	dup2
	test	eax, eax
	je	.label_254
	mov	edi, OFFSET FLAT:label_197
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	r13b, 1
	test	eax, eax
	je	.label_254
	mov	r13b, 1
	jmp	.label_256
.label_254:
	test	r12b, r12b
	je	.label_246
	mov	edi, OFFSET FLAT:label_197
	xor	esi, esi
	xor	eax, eax
	call	open
	cmp	eax, 1
	jne	.label_257
.label_246:
	test	r15b, r15b
	je	.label_250
	mov	edi, OFFSET FLAT:label_197
	xor	esi, esi
	xor	eax, eax
	call	open
	cmp	eax, 2
	jne	.label_256
.label_250:
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, rbx
	call	rpl_freopen
	mov	r14, rax
	jmp	.label_245
.label_257:
	mov	r12b, 1
.label_256:
	xor	r14d, r14d
	test	eax, eax
	js	.label_245
	mov	edi, eax
	call	close
	call	__errno_location
	mov	dword ptr [rax], 9
	xor	r14d, r14d
.label_245:
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	test	r15b, r15b
	je	.label_255
	mov	edi, 2
	call	close
.label_255:
	test	r12b, r12b
	je	.label_258
	mov	edi, 1
	call	close
.label_258:
	test	r13b, r13b
	je	.label_249
	xor	edi, edi
	call	close
.label_249:
	test	r14, r14
	jne	.label_252
	mov	dword ptr [rbx], ebp
.label_252:
	mov	rax, r14
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
	#Procedure 0x403bb2
	.globl sub_403bb2
	.type sub_403bb2, @function
sub_403bb2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403bc0

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
	#Procedure 0x403bd9
	.globl sub_403bd9
	.type sub_403bd9, @function
sub_403bd9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403be0

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
	#Procedure 0x403bf7
	.globl sub_403bf7
	.type sub_403bf7, @function
sub_403bf7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c00
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
	#Procedure 0x403c13
	.globl sub_403c13
	.type sub_403c13, @function
sub_403c13:

	nop	word ptr cs:[rax + rax]
.label_260:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403c25
	.globl sub_403c25
	.type sub_403c25, @function
sub_403c25:

	nop	dword ptr [rax + rax]
.label_261:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_259
	test	rax, rax
	je	.label_260
.label_259:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403c41
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_260
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_261
	test	rbx, rbx
	jne	.label_261
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_263:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_266
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_262
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_35
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_267:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x403cbc

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_265
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_263
	cmp	dword ptr [rbp], 0x20
	jne	.label_263
.label_265:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_267
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_262:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_264
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403d30

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_278
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_280
.label_278:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_280:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_268
	cmp	r10d, 0x29
	jae	.label_277
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_279
.label_277:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_279:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_268
	cmp	r10d, 0x29
	jae	.label_275
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_276
.label_275:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_276:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_268
	cmp	r10d, 0x29
	jae	.label_273
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_274
.label_273:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_274:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_268
	cmp	r10d, 0x29
	jae	.label_271
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_272
.label_271:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_272:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_268
	cmp	r10d, 0x29
	jae	.label_269
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_270
.label_269:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_270:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_268
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_268
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_268
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_268
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_268:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x403f12
	.globl sub_403f12
	.type sub_403f12, @function
sub_403f12:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403f20
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
	#Procedure 0x403f2f
	.globl sub_403f2f
	.type sub_403f2f, @function
sub_403f2f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403f30

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
	je	.label_281
	test	r15, r15
	je	.label_282
.label_281:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_282:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403f6c
	.globl sub_403f6c
	.type sub_403f6c, @function
sub_403f6c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403f70

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
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
	#Procedure 0x403fc5
	.globl sub_403fc5
	.type sub_403fc5, @function
sub_403fc5:

	nop	word ptr cs:[rax + rax]
.label_284:
	mov	ecx, 1
.label_283:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x403fe0
	.globl sub_403fe0
	.type sub_403fe0, @function
sub_403fe0:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403fe5

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_284
	test	rsi, rsi
	mov	ecx, 1
	je	.label_283
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_283
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x404020

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
	jne	.label_286
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_285
	test	cl, cl
	jne	.label_285
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_285
.label_286:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_285
	call	__errno_location
	mov	dword ptr [rax], 0
.label_285:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404080
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
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
	#Procedure 0x4040ee
	.globl sub_4040ee
	.type sub_4040ee, @function
sub_4040ee:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4040f0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x4040f8
	.globl sub_4040f8
	.type sub_4040f8, @function
sub_4040f8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404100

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
.label_390:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_388
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_312]
.label_443:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_395
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_214
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_444:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_291
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_291
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_306:
	cmp	r14, r11
	jae	.label_374
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_374:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_306
.label_291:
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
	jmp	.label_315
.label_436:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_315
.label_439:
	mov	al, 1
.label_437:
	mov	r12b, 1
.label_440:
	test	r12b, 1
	mov	cl, 1
	je	.label_328
	mov	ecx, eax
.label_328:
	mov	al, cl
.label_438:
	test	r12b, 1
	jne	.label_331
	test	r11, r11
	je	.label_357
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_357:
	mov	r14d, 1
	jmp	.label_335
.label_331:
	xor	r14d, r14d
.label_335:
	mov	ecx, OFFSET FLAT:label_214
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_315
.label_441:
	test	r12b, 1
	jne	.label_344
	test	r11, r11
	je	.label_347
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_347:
	mov	r14d, 1
	jmp	.label_349
.label_442:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_213
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_315
.label_344:
	xor	r14d, r14d
.label_349:
	mov	eax, OFFSET FLAT:label_213
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_315:
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
	jmp	.label_367
	.section	.text
	.align	32
	#Procedure 0x4043ed
	.globl sub_4043ed
	.type sub_4043ed, @function
sub_4043ed:

	nop	dword ptr [rax]
.label_308:
	inc	rsi
.label_367:
	cmp	rbp, -1
	je	.label_404
	cmp	rsi, rbp
	jne	.label_405
	jmp	.label_406
	.section	.text
	.align	32
	#Procedure 0x404403
	.globl sub_404403
	.type sub_404403, @function
sub_404403:

	nop	word ptr cs:[rax + rax]
.label_404:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_293
.label_405:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_334
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_300
	cmp	rbp, -1
	jne	.label_300
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
.label_300:
	cmp	rbx, rbp
	jbe	.label_316
.label_334:
	xor	r8d, r8d
.label_355:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_318
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_322]
.label_506:
	test	rsi, rsi
	jne	.label_310
	jmp	.label_327
	.section	.text
	.align	32
	#Procedure 0x4044a5
	.globl sub_4044a5
	.type sub_4044a5, @function
sub_4044a5:

	nop	word ptr cs:[rax + rax]
.label_316:
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
	jne	.label_338
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_355
	jmp	.label_319
.label_338:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_355
.label_510:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_356
	test	rsi, rsi
	jne	.label_358
	cmp	rbp, 1
	je	.label_327
	xor	r13d, r13d
	jmp	.label_294
.label_499:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_364
	cmp	byte ptr [rsp + 6], 0
	jne	.label_343
	cmp	r12d, 2
	jne	.label_370
	mov	eax, r9d
	and	al, 1
	jne	.label_370
	cmp	r14, r11
	jae	.label_371
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_371:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_377
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_377:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_382
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_382:
	add	r14, 3
	mov	r9b, 1
.label_370:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_299
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_299:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_393
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_393
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_393
	cmp	r14, r11
	jae	.label_317
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_317:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_329
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_329:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_294
.label_500:
	mov	bl, 0x62
	jmp	.label_297
.label_501:
	mov	cl, 0x74
	jmp	.label_321
.label_502:
	mov	bl, 0x76
	jmp	.label_297
.label_503:
	mov	bl, 0x66
	jmp	.label_297
.label_504:
	mov	cl, 0x72
	jmp	.label_321
.label_507:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_305
	cmp	byte ptr [rsp + 6], 0
	jne	.label_309
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
	jae	.label_314
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_314:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_325
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_325:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_330
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_330:
	add	r14, 3
	xor	r9d, r9d
.label_305:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_294
.label_508:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_336
	cmp	r12d, 2
	jne	.label_310
	cmp	byte ptr [rsp + 6], 0
	je	.label_310
	jmp	.label_309
.label_509:
	cmp	r12d, 2
	jne	.label_345
	cmp	byte ptr [rsp + 6], 0
	jne	.label_309
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_298
.label_318:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_353
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
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_369
	test	r8b, r8b
	je	.label_369
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_294
.label_356:
	test	rsi, rsi
	jne	.label_391
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_391
.label_327:
	mov	dl, 1
.label_505:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_309
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_294:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_397
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_400
	jmp	.label_287
	.section	.text
	.align	32
	#Procedure 0x4047f4
	.globl sub_4047f4
	.type sub_4047f4, @function
sub_4047f4:

	nop	word ptr cs:[rax + rax]
.label_397:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_287
.label_400:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_289
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_298
	jmp	.label_302
	.section	.text
	.align	32
	#Procedure 0x40483d
	.globl sub_40483d
	.type sub_40483d, @function
sub_40483d:

	nop	dword ptr [rax]
.label_287:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_302
	jmp	.label_298
.label_289:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_302
.label_364:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_308
	xor	r15d, r15d
	jmp	.label_310
.label_345:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_321
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_298
.label_321:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_309
.label_297:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_294
	nop	word ptr cs:[rax + rax]
.label_302:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_343
	cmp	r12d, 2
	jne	.label_332
	mov	eax, r9d
	and	al, 1
	jne	.label_332
	cmp	r14, r11
	jae	.label_392
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_392:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_339
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_339:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_384
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_384:
	add	r14, 3
	mov	r9b, 1
.label_332:
	cmp	r14, r11
	jae	.label_292
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_292:
	inc	r14
	jmp	.label_351
.label_353:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_354
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_354:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_341:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_373
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_379
	cmp	rbp, -2
	je	.label_386
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_401
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_398:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_361
	bt	rsi, rdx
	jb	.label_402
.label_361:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_398
.label_401:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_375
	xor	r13d, r13d
.label_375:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_341
	jmp	.label_303
.label_393:
	xor	r13d, r13d
	jmp	.label_294
.label_391:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_294
.label_336:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_310
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_310
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_310
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_348
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_366
	cmp	byte ptr [rsp + 6], 0
	jne	.label_399
	cmp	r14, r11
	jae	.label_381
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_381:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_313
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_313:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_337
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_337:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_365
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_365:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_294
.label_310:
	xor	eax, eax
.label_358:
	xor	r13d, r13d
	jmp	.label_294
.label_369:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_352
	.section	.text
	.align	32
	#Procedure 0x404b22
	.globl sub_404b22
	.type sub_404b22, @function
sub_404b22:

	nop	word ptr cs:[rax + rax]
.label_311:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_352:
	test	r8b, r8b
	je	.label_359
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_360
	cmp	r14, r11
	jae	.label_362
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_362:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_360
	.section	.text
	.align	32
	#Procedure 0x404b6c
	.globl sub_404b6c
	.type sub_404b6c, @function
sub_404b6c:

	nop	dword ptr [rax]
.label_359:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_319
	cmp	r12d, 2
	jne	.label_372
	mov	eax, r9d
	and	al, 1
	jne	.label_372
	cmp	r14, r11
	jae	.label_378
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_378:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_380
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_380:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_389
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_389:
	add	r14, 3
	mov	r9b, 1
.label_372:
	cmp	r14, r11
	jae	.label_324
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_324:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_396
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_396:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_403
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_403:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_360:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_298
	test	r9b, 1
	je	.label_346
	mov	ebx, eax
	and	bl, 1
	jne	.label_346
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_301
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_301:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_333
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_333:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_346:
	cmp	r14, r11
	jae	.label_311
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_311
	.section	.text
	.align	32
	#Procedure 0x404c73
	.globl sub_404c73
	.type sub_404c73, @function
sub_404c73:

	nop	word ptr cs:[rax + rax]
.label_298:
	test	r9b, 1
	je	.label_320
	and	al, 1
	jne	.label_320
	cmp	r14, r11
	jae	.label_323
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_323:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_383
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_383:
	add	r14, 2
	xor	r9d, r9d
.label_320:
	mov	ebx, r15d
.label_351:
	cmp	r14, r11
	jae	.label_304
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_304:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_308
.label_379:
	xor	r13d, r13d
.label_373:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_303
.label_386:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_376
	mov	rsi, qword ptr [rsp + 0x58]
.label_350:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_307
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_350
	xor	r13d, r13d
	jmp	.label_303
.label_376:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_303
.label_307:
	xor	r13d, r13d
	jmp	.label_303
.label_348:
	xor	r13d, r13d
	jmp	.label_294
.label_366:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_294
	.section	.text
	.align	32
	#Procedure 0x404d48
	.globl sub_404d48
	.type sub_404d48, @function
sub_404d48:

	nop	dword ptr [rax + rax]
.label_406:
	mov	rcx, rsi
.label_293:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_363
	or	al, dl
	je	.label_368
.label_363:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_326
	or	al, dl
	jne	.label_326
	test	r10b, 1
	jne	.label_385
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_326
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_390
.label_326:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_394
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_295
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_295
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_290:
	cmp	r14, r11
	jae	.label_288
	mov	byte ptr [rcx + r14], al
.label_288:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_290
	jmp	.label_295
.label_343:
	mov	qword ptr [rsp + 0x20], rbp
.label_319:
	mov	rdx, rdi
	jmp	.label_296
.label_309:
	mov	qword ptr [rsp + 0x20], rbp
.label_402:
	mov	rdx, rdi
	mov	eax, 2
.label_387:
	mov	qword ptr [rsp + 0x38], rax
.label_296:
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
.label_340:
	mov	r14, rax
.label_342:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_368:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_296
.label_385:
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
	jmp	.label_340
.label_394:
	mov	rcx, qword ptr [rsp + 8]
.label_295:
	cmp	r14, r11
	jae	.label_342
	mov	byte ptr [rcx + r14], 0
	jmp	.label_342
.label_399:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_387
.label_388:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404f07
	.globl sub_404f07
	.type sub_404f07, @function
sub_404f07:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404f10

	.globl readtoken
	.type readtoken, @function
readtoken:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	qword ptr [rsp + 8], rcx
	mov	r15, rdi
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	test	rdx, rdx
	je	.label_407
	mov	eax, edx
	and	eax, 1
	xor	edi, edi
	cmp	rdx, 1
	je	.label_420
	sub	rdx, rax
	xor	edi, edi
	nop	word ptr [rax + rax]
.label_410:
	movzx	ecx, byte ptr [rsi + rdi]
	mov	ebp, 1
	shl	rbp, cl
	shr	rcx, 6
	or	qword ptr [rsp + rcx*8 + 0x10], rbp
	movzx	ecx, byte ptr [rsi + rdi + 1]
	mov	ebp, 1
	shl	rbp, cl
	shr	rcx, 6
	or	qword ptr [rsp + rcx*8 + 0x10], rbp
	add	rdi, 2
	cmp	rdx, rdi
	jne	.label_410
.label_420:
	test	rax, rax
	je	.label_407
	movzx	ecx, byte ptr [rsi + rdi]
	mov	eax, 1
	shl	rax, cl
	shr	rcx, 6
	or	qword ptr [rsp + rcx*8 + 0x10], rax
	nop	
.label_407:
	mov	rax, qword ptr [r15 + 8]
	cmp	rax, qword ptr [r15 + 0x10]
	jae	.label_416
	lea	rcx, [rax + 1]
	mov	qword ptr [r15 + 8], rcx
	movzx	ebx, byte ptr [rax]
.label_411:
	movsxd	rax, ebx
	shr	rax, 6
	mov	rax, qword ptr [rsp + rax*8 + 0x10]
	bt	rax, rbx
	jb	.label_407
	jmp	.label_408
.label_416:
	mov	rdi, r15
	call	__uflow
	mov	ebx, eax
	mov	rax, -1
	test	ebx, ebx
	jns	.label_411
	jmp	.label_414
.label_408:
	mov	rax, qword ptr [rsp + 8]
	mov	r13, qword ptr [rax]
	mov	r12, qword ptr [rax + 8]
	xor	ecx, ecx
	xor	ebp, ebp
	jmp	.label_415
	.section	.text
	.align	32
	#Procedure 0x404ff5
	.globl sub_404ff5
	.type sub_404ff5, @function
sub_404ff5:

	nop	word ptr cs:[rax + rax]
.label_417:
	lea	rcx, [rax + 1]
	mov	qword ptr [r15 + 8], rcx
	movzx	ebx, byte ptr [rax]
	xor	ecx, ecx
.label_415:
	mov	r14, rbp
	cmp	r14, r13
	jne	.label_409
	test	r12, r12
	je	.label_412
	movabs	rax, 0x5555555555555554
	cmp	r14, rax
	jae	.label_413
	mov	rbp, rcx
	mov	r13, r14
	shr	r13, 1
	inc	r13
	add	r13, r14
	jmp	.label_418
.label_412:
	mov	rbp, rcx
	test	r14, r14
	mov	r13, r14
	mov	eax, 0x80
	cmove	r13, rax
	test	r13, r13
	js	.label_421
.label_418:
	mov	rdi, r12
	mov	rsi, r13
	call	xrealloc
	mov	r12, rax
	mov	rcx, rbp
.label_409:
	test	cl, 1
	jne	.label_419
	movsxd	rax, ebx
	shr	rax, 6
	mov	rax, qword ptr [rsp + rax*8 + 0x10]
	bt	rax, rbx
	jb	.label_419
	lea	rbp, [r14 + 1]
	mov	byte ptr [r12 + r14], bl
	mov	rax, qword ptr [r15 + 8]
	cmp	rax, qword ptr [r15 + 0x10]
	jb	.label_417
	mov	rdi, r15
	call	__uflow
	mov	ebx, eax
	mov	ecx, ebx
	shr	ecx, 0x1f
	test	ebx, ebx
	jns	.label_415
	mov	rax, -1
	cmp	r14, -1
	jne	.label_415
	jmp	.label_414
.label_419:
	mov	byte ptr [r12 + r14], 0
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax + 8], r12
	mov	qword ptr [rax], r13
	mov	rax, r14
.label_414:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_413:
	call	xalloc_die
.label_421:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4050ee
	.globl sub_4050ee
	.type sub_4050ee, @function
sub_4050ee:

	nop	
.label_422:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4050f5
	.globl sub_4050f5
	.type sub_4050f5, @function
sub_4050f5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405103

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
	je	.label_423
	test	r15, r15
	je	.label_422
.label_423:
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
	#Procedure 0x405140
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_424
	test	rsi, rsi
	je	.label_424
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_424:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405215
	.globl sub_405215
	.type sub_405215, @function
sub_405215:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405222
	.globl sub_405222
	.type sub_405222, @function
sub_405222:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405246
	.globl sub_405246
	.type sub_405246, @function
sub_405246:

	nop	word ptr cs:[rax + rax]
