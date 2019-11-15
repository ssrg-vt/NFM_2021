	.section	.text
	.align	16
	#Procedure 0x401199
	.globl sub_401199
	.type sub_401199, @function
sub_401199:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x40119a
	.globl sub_40119a
	.type sub_40119a, @function
sub_40119a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4011d2
	.globl sub_4011d2
	.type sub_4011d2, @function
sub_4011d2:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40121a
	.globl sub_40121a
	.type sub_40121a, @function
sub_40121a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40123c
	.globl sub_40123c
	.type sub_40123c, @function
sub_40123c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40124d
	.globl sub_40124d
	.type sub_40124d, @function
sub_40124d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401266
	.globl sub_401266
	.type sub_401266, @function
sub_401266:

	nop	word ptr cs:[rax + rax]
.label_9:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401275
	.globl sub_401275
	.type sub_401275, @function
sub_401275:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401279
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
	je	.label_9
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
	#Procedure 0x4012e0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4012ea
	.globl sub_4012ea
	.type sub_4012ea, @function
sub_4012ea:

	nop	word ptr [rax + rax]
.label_10:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4012f5
	.globl sub_4012f5
	.type sub_4012f5, @function
sub_4012f5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401300
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
	je	.label_10
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
	.align	16
	#Procedure 0x401390

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_11]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_12]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_13]
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
	#Procedure 0x4013e5
	.globl sub_4013e5
	.type sub_4013e5, @function
sub_4013e5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4013f0

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
	#Procedure 0x401407
	.globl sub_401407
	.type sub_401407, @function
sub_401407:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401410

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_15
	cmp	byte ptr [rax], 0x43
	jne	.label_17
	cmp	byte ptr [rax + 1], 0
	je	.label_14
.label_17:
	mov	esi, OFFSET FLAT:label_16
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_15
.label_14:
	xor	ebx, ebx
.label_15:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401441
	.globl sub_401441
	.type sub_401441, @function
sub_401441:

	nop	word ptr cs:[rax + rax]
.label_19:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_18
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_18:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401484
	.globl sub_401484
	.type sub_401484, @function
sub_401484:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401486

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
	jne	.label_20
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_20
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_19
.label_20:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	16
	#Procedure 0x4014c0
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
	#Procedure 0x4014d8
	.globl sub_4014d8
	.type sub_4014d8, @function
sub_4014d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4014e0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_21:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_21
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x401501
	.globl sub_401501
	.type sub_401501, @function
sub_401501:

	nop	word ptr cs:[rax + rax]
.label_22:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401515
	.globl sub_401515
	.type sub_401515, @function
sub_401515:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40151f
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_22
	call	rpl_calloc
	test	rax, rax
	je	.label_22
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401540
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x401548
	.globl sub_401548
	.type sub_401548, @function
sub_401548:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401550
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_27
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_25
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_28
.label_25:
	call	xalloc_die
.label_29:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401587
	.globl sub_401587
	.type sub_401587, @function
sub_401587:

	nop	word ptr [rax + rax]
.label_27:
	test	rcx, rcx
	jne	.label_23
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_23:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_29
.label_28:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
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
	.section	.text
	.align	16
	#Procedure 0x4015f0

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
	je	.label_30
	cmp	r15, -2
	jb	.label_30
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_30
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_30:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x401646
	.globl sub_401646
	.type sub_401646, @function
sub_401646:

	nop	word ptr cs:[rax + rax]
.label_35:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_31
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401670
	.globl sub_401670
	.type sub_401670, @function
sub_401670:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40167f

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_35
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_33
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_36
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_33
	mov	esi, OFFSET FLAT:label_34
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_32
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_32:
	mov	rbx, r14
.label_33:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x401700
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_11]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_12]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_13]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_37
	test	rdx, rdx
	je	.label_37
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_37:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40176a
	.globl sub_40176a
	.type sub_40176a, @function
sub_40176a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401770
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
	#Procedure 0x401788
	.globl sub_401788
	.type sub_401788, @function
sub_401788:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401790
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4017a1
	.globl sub_4017a1
	.type sub_4017a1, @function
sub_4017a1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4017b0
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
	.align	16
	#Procedure 0x40189c
	.globl sub_40189c
	.type sub_40189c, @function
sub_40189c:

	nop	dword ptr [rax]
.label_39:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4018a5
	.globl sub_4018a5
	.type sub_4018a5, @function
sub_4018a5:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4018ab

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_40
	test	rax, rax
	je	.label_39
.label_40:
	pop	rbx
	ret	
.label_41:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4018c5
	.globl sub_4018c5
	.type sub_4018c5, @function
sub_4018c5:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4018c7
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_11]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_12]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_13]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_41
	test	rdx, rdx
	je	.label_41
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
	#Procedure 0x401930
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_11]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_12]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_13]
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
	#Procedure 0x40199e
	.globl sub_40199e
	.type sub_40199e, @function
sub_40199e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4019a0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_42
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_44:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_44
.label_42:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_46
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_45], OFFSET FLAT:slot0
.label_46:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_43
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_43:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x401a31
	.globl sub_401a31
	.type sub_401a31, @function
sub_401a31:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a40

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_47
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_47
	test	byte ptr [rbx + 1], 1
	je	.label_47
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_47:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x401a73
	.globl sub_401a73
	.type sub_401a73, @function
sub_401a73:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a80
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_11]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_12]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_13]
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
	#Procedure 0x401aef
	.globl sub_401aef
	.type sub_401aef, @function
sub_401aef:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401af0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_48
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_49
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_51
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_52
	mov	ecx, OFFSET FLAT:label_53
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_50
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x401b64
	.globl sub_401b64
	.type sub_401b64, @function
sub_401b64:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401b70

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
	jne	.label_55
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_62
	cmp	ecx, 0x55
	jne	.label_54
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_54
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_54
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_54
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_54
	cmp	byte ptr [rax + 5], 0
	jne	.label_54
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_59
	mov	eax, OFFSET FLAT:label_60
	jmp	.label_61
.label_62:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_54
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_54
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_54
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_54
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_54
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_54
	cmp	byte ptr [rax + 7], 0
	je	.label_56
.label_54:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_57
	mov	eax, OFFSET FLAT:label_58
.label_61:
	cmove	rax, rcx
.label_55:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_56:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_63
	mov	eax, OFFSET FLAT:label_64
	jmp	.label_61
	.section	.text
	.align	16
	#Procedure 0x401c35
	.globl sub_401c35
	.type sub_401c35, @function
sub_401c35:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401c40

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
	je	.label_65
	mov	edx, OFFSET FLAT:label_75
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_81
.label_65:
	mov	edx, OFFSET FLAT:label_82
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_81:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_68
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
	mov	esi, OFFSET FLAT:label_83
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_70
	jmp	qword ptr [(r12 * 8) + label_71]
.label_366:
	add	rsp, 8
	jmp	.label_69
.label_70:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_78
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
	jmp	.label_69
.label_367:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_66
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
.label_368:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_79
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
.label_369:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_76
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
.label_370:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_73
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
	jmp	.label_69
.label_371:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_72
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
	jmp	.label_69
.label_372:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_74
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
	jmp	.label_69
.label_373:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_77
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
	jmp	.label_69
.label_375:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_80
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
	jmp	.label_69
.label_374:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_67
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
.label_69:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x401f98
	.globl sub_401f98
	.type sub_401f98, @function
sub_401f98:

	nop	dword ptr [rax + rax]
.label_85:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401fa5
	.globl sub_401fa5
	.type sub_401fa5, @function
sub_401fa5:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401fa9

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
	je	.label_84
	test	r15, r15
	je	.label_85
.label_84:
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
	#Procedure 0x401fe0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_88
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_86
	cmp	dword ptr [rbp], 0x20
	jne	.label_86
.label_88:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_91
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_91:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_86:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_87
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_92
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_89
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_92:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_90
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
	#Procedure 0x4020a0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4020a8
	.globl sub_4020a8
	.type sub_4020a8, @function
sub_4020a8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4020b0

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
.label_175:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_173
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_176]
.label_343:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_181
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_58
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_344:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_199
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_199
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_212:
	cmp	r14, r11
	jae	.label_166
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_166:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_212
.label_199:
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
	jmp	.label_99
.label_336:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_99
.label_339:
	mov	al, 1
.label_337:
	mov	r12b, 1
.label_340:
	test	r12b, 1
	mov	cl, 1
	je	.label_113
	mov	ecx, eax
.label_113:
	mov	al, cl
.label_338:
	test	r12b, 1
	jne	.label_118
	test	r11, r11
	je	.label_119
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_119:
	mov	r14d, 1
	jmp	.label_121
.label_118:
	xor	r14d, r14d
.label_121:
	mov	ecx, OFFSET FLAT:label_58
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_99
.label_341:
	test	r12b, 1
	jne	.label_133
	test	r11, r11
	je	.label_135
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_135:
	mov	r14d, 1
	jmp	.label_138
.label_342:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_57
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_99
.label_133:
	xor	r14d, r14d
.label_138:
	mov	eax, OFFSET FLAT:label_57
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_99:
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
	jmp	.label_155
	.section	.text
	.align	16
	#Procedure 0x40239d
	.globl sub_40239d
	.type sub_40239d, @function
sub_40239d:

	nop	dword ptr [rax]
.label_93:
	inc	rsi
.label_155:
	cmp	rbp, -1
	je	.label_191
	cmp	rsi, rbp
	jne	.label_193
	jmp	.label_195
	.section	.text
	.align	16
	#Procedure 0x4023b3
	.globl sub_4023b3
	.type sub_4023b3, @function
sub_4023b3:

	nop	word ptr cs:[rax + rax]
.label_191:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_200
.label_193:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_146
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_205
	cmp	rbp, -1
	jne	.label_205
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
.label_205:
	cmp	rbx, rbp
	jbe	.label_100
.label_146:
	xor	r8d, r8d
.label_128:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_103
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_107]
.label_316:
	test	rsi, rsi
	jne	.label_95
	jmp	.label_112
	.section	.text
	.align	16
	#Procedure 0x402455
	.globl sub_402455
	.type sub_402455, @function
sub_402455:

	nop	word ptr cs:[rax + rax]
.label_100:
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
	jne	.label_125
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_128
	jmp	.label_137
.label_125:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_128
.label_320:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_145
	test	rsi, rsi
	jne	.label_147
	cmp	rbp, 1
	je	.label_112
	xor	r13d, r13d
	jmp	.label_109
.label_309:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_153
	cmp	byte ptr [rsp + 6], 0
	jne	.label_117
	cmp	r12d, 2
	jne	.label_158
	mov	eax, r9d
	and	al, 1
	jne	.label_158
	cmp	r14, r11
	jae	.label_162
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_162:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_167
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_167:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_196
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_196:
	add	r14, 3
	mov	r9b, 1
.label_158:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_144
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_144:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_178
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_178
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_178
	cmp	r14, r11
	jae	.label_202
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_202:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_163
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_163:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_109
.label_310:
	mov	bl, 0x62
	jmp	.label_204
.label_311:
	mov	cl, 0x74
	jmp	.label_132
.label_312:
	mov	bl, 0x76
	jmp	.label_204
.label_313:
	mov	bl, 0x66
	jmp	.label_204
.label_314:
	mov	cl, 0x72
	jmp	.label_132
.label_317:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_210
	cmp	byte ptr [rsp + 6], 0
	jne	.label_94
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
	jae	.label_97
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_97:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_110
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_110:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_114
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_114:
	add	r14, 3
	xor	r9d, r9d
.label_210:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_109
.label_318:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_123
	cmp	r12d, 2
	jne	.label_95
	cmp	byte ptr [rsp + 6], 0
	je	.label_95
	jmp	.label_94
.label_319:
	cmp	r12d, 2
	jne	.label_134
	cmp	byte ptr [rsp + 6], 0
	jne	.label_94
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_102
.label_103:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_141
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
.label_104:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_157
	test	r8b, r8b
	je	.label_157
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_109
.label_145:
	test	rsi, rsi
	jne	.label_122
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_122
.label_112:
	mov	dl, 1
.label_315:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_94
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_109:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_184
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_186
	jmp	.label_190
	.section	.text
	.align	16
	#Procedure 0x4027a4
	.globl sub_4027a4
	.type sub_4027a4, @function
sub_4027a4:

	nop	word ptr cs:[rax + rax]
.label_184:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_190
.label_186:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_197
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_102
	jmp	.label_207
	.section	.text
	.align	16
	#Procedure 0x4027ed
	.globl sub_4027ed
	.type sub_4027ed, @function
sub_4027ed:

	nop	dword ptr [rax]
.label_190:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_207
	jmp	.label_102
.label_197:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_207
.label_153:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_93
	xor	r15d, r15d
	jmp	.label_95
.label_134:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_132
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_102
.label_132:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_94
.label_204:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_109
	nop	word ptr cs:[rax + rax]
.label_207:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_117
	cmp	r12d, 2
	jne	.label_120
	mov	eax, r9d
	and	al, 1
	jne	.label_120
	cmp	r14, r11
	jae	.label_143
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_143:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_159
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_159:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_168
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_168:
	add	r14, 3
	mov	r9b, 1
.label_120:
	cmp	r14, r11
	jae	.label_105
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_105:
	inc	r14
	jmp	.label_126
.label_141:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_142
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_142:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_150:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_165
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_169
	cmp	rbp, -2
	je	.label_172
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_185
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_208:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_154
	bt	rsi, rdx
	jb	.label_188
.label_154:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_208
.label_185:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_115
	xor	r13d, r13d
.label_115:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_150
	jmp	.label_104
.label_178:
	xor	r13d, r13d
	jmp	.label_109
.label_122:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_109
.label_123:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_95
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_95
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_95
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_161
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_180
	cmp	byte ptr [rsp + 6], 0
	jne	.label_177
	cmp	r14, r11
	jae	.label_189
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_189:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_131
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_131:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_124
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_124:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_98
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_98:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_109
.label_95:
	xor	eax, eax
.label_147:
	xor	r13d, r13d
	jmp	.label_109
.label_157:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_140
	.section	.text
	.align	16
	#Procedure 0x402ad2
	.globl sub_402ad2
	.type sub_402ad2, @function
sub_402ad2:

	nop	word ptr cs:[rax + rax]
.label_96:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_140:
	test	r8b, r8b
	je	.label_148
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_149
	cmp	r14, r11
	jae	.label_151
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_151:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_149
	.section	.text
	.align	16
	#Procedure 0x402b1c
	.globl sub_402b1c
	.type sub_402b1c, @function
sub_402b1c:

	nop	dword ptr [rax]
.label_148:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_137
	cmp	r12d, 2
	jne	.label_164
	mov	eax, r9d
	and	al, 1
	jne	.label_164
	cmp	r14, r11
	jae	.label_209
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_209:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_170
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_170:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_174
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_174:
	add	r14, 3
	mov	r9b, 1
.label_164:
	cmp	r14, r11
	jae	.label_136
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_136:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_182
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_182:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_187
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_187:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_149:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_102
	test	r9b, 1
	je	.label_203
	mov	ebx, eax
	and	bl, 1
	jne	.label_203
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_206
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_206:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_192
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_192:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_203:
	cmp	r14, r11
	jae	.label_96
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_96
	.section	.text
	.align	16
	#Procedure 0x402c23
	.globl sub_402c23
	.type sub_402c23, @function
sub_402c23:

	nop	word ptr cs:[rax + rax]
.label_102:
	test	r9b, 1
	je	.label_106
	and	al, 1
	jne	.label_106
	cmp	r14, r11
	jae	.label_108
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_108:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_211
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_211:
	add	r14, 2
	xor	r9d, r9d
.label_106:
	mov	ebx, r15d
.label_126:
	cmp	r14, r11
	jae	.label_116
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_116:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_93
.label_169:
	xor	r13d, r13d
.label_165:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_104
.label_172:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_130
	mov	rsi, qword ptr [rsp + 0x58]
.label_139:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_194
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_139
	xor	r13d, r13d
	jmp	.label_104
.label_130:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_104
.label_194:
	xor	r13d, r13d
	jmp	.label_104
.label_161:
	xor	r13d, r13d
	jmp	.label_109
.label_180:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_109
	.section	.text
	.align	16
	#Procedure 0x402cf8
	.globl sub_402cf8
	.type sub_402cf8, @function
sub_402cf8:

	nop	dword ptr [rax + rax]
.label_195:
	mov	rcx, rsi
.label_200:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_152
	or	al, dl
	je	.label_156
.label_152:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_160
	or	al, dl
	jne	.label_160
	test	r10b, 1
	jne	.label_171
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_160
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_175
.label_160:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_179
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_183
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_183
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_198:
	cmp	r14, r11
	jae	.label_101
	mov	byte ptr [rcx + r14], al
.label_101:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_198
	jmp	.label_183
.label_117:
	mov	qword ptr [rsp + 0x20], rbp
.label_137:
	mov	rdx, rdi
	jmp	.label_111
.label_94:
	mov	qword ptr [rsp + 0x20], rbp
.label_188:
	mov	rdx, rdi
	mov	eax, 2
.label_201:
	mov	qword ptr [rsp + 0x38], rax
.label_111:
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
.label_127:
	mov	r14, rax
.label_129:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_156:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_111
.label_171:
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
	jmp	.label_127
.label_179:
	mov	rcx, qword ptr [rsp + 8]
.label_183:
	cmp	r14, r11
	jae	.label_129
	mov	byte ptr [rcx + r14], 0
	jmp	.label_129
.label_177:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_201
.label_173:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402eb7
	.globl sub_402eb7
	.type sub_402eb7, @function
sub_402eb7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ec0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_213
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_214
	test	rax, rax
	je	.label_213
.label_214:
	pop	rbx
	ret	
.label_213:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402ef5
	.globl sub_402ef5
	.type sub_402ef5, @function
sub_402ef5:

	nop	word ptr cs:[rax + rax]
.label_215:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402f05
	.globl sub_402f05
	.type sub_402f05, @function
sub_402f05:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402f0d
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
	je	.label_215
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
	#Procedure 0x402f70
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
	#Procedure 0x402f7f
	.globl sub_402f7f
	.type sub_402f7f, @function
sub_402f7f:

	nop	
.label_217:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_216
	call	__errno_location
	mov	dword ptr [rax], 0
.label_216:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402f9b

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
	jne	.label_217
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_216
	test	cl, cl
	jne	.label_216
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_216
	.section	.text
	.align	16
	#Procedure 0x402fe0
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
	#Procedure 0x402fef
	.globl sub_402fef
	.type sub_402fef, @function
sub_402fef:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402ff0
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
	je	.label_219
	test	r14, r14
	je	.label_218
.label_219:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_218:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403026
	.globl sub_403026
	.type sub_403026, @function
sub_403026:

	nop	word ptr cs:[rax + rax]
.label_220:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403035
	.globl sub_403035
	.type sub_403035, @function
sub_403035:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40303b
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_221
	test	rax, rax
	je	.label_220
.label_221:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403050
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
	#Procedure 0x403086
	.globl sub_403086
	.type sub_403086, @function
sub_403086:

	nop	word ptr cs:[rax + rax]
.label_225:
	xor	edi, edi
	call	usage
	.section	.text
	.align	16
	#Procedure 0x403097

	.globl main
	.type main, @function
main:
	push	rbx
	mov	rbx, rsi
	cmp	edi, 2
	jne	.label_222
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_223
	call	setlocale
	mov	edi, OFFSET FLAT:label_224
	mov	esi, OFFSET FLAT:label_229
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_224
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	rbx, qword ptr [rbx + 8]
	mov	esi, OFFSET FLAT:label_230
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	je	.label_225
	mov	esi, OFFSET FLAT:label_226
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	jne	.label_222
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_227
	mov	edx, OFFSET FLAT:label_52
	mov	r8d, OFFSET FLAT:label_228
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
.label_222:
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403130
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_11]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_12]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_13]
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
	#Procedure 0x403184
	.globl sub_403184
	.type sub_403184, @function
sub_403184:

	nop	word ptr cs:[rax + rax]
.label_231:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403195
	.globl sub_403195
	.type sub_403195, @function
sub_403195:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403199
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_11]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_12]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_13]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_231
	test	rsi, rsi
	je	.label_231
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
.label_232:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_233
	test	rax, rax
	je	.label_234
.label_233:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403214

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_232
	test	rbx, rbx
	jne	.label_232
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_234:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403230
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
	#Procedure 0x403263
	.globl sub_403263
	.type sub_403263, @function
sub_403263:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403270
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40327e
	.globl sub_40327e
	.type sub_40327e, @function
sub_40327e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403280

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
	js	.label_235
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_238
	cmp	r12d, 0x7fffffff
	je	.label_240
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
	jne	.label_236
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_236:
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
.label_238:
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
	jbe	.label_241
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_237
.label_241:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_239
	mov	rdi, r14
	call	free
.label_239:
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
.label_237:
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
.label_235:
	call	abort
.label_240:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40343d
	.globl sub_40343d
	.type sub_40343d, @function
sub_40343d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403440

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_242
	test	rsi, rsi
	mov	ecx, 1
	je	.label_243
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_243
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_242:
	mov	ecx, 1
.label_243:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x40348b
	.globl sub_40348b
	.type sub_40348b, @function
sub_40348b:

	nop	dword ptr [rax + rax]
.label_245:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x40349c
	.globl sub_40349c
	.type sub_40349c, @function
sub_40349c:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4034a8

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_245
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_244
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_245
.label_244:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_245
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_246
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_246:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403510
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
	#Procedure 0x403529
	.globl sub_403529
	.type sub_403529, @function
sub_403529:

	nop	dword ptr [rax]
.label_247:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403535
	.globl sub_403535
	.type sub_403535, @function
sub_403535:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40353d
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
	je	.label_247
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
.label_249:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4035a5
	.globl sub_4035a5
	.type sub_4035a5, @function
sub_4035a5:

	nop	dword ptr [rax + rax]
.label_250:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_248
	test	rax, rax
	je	.label_249
.label_248:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4035c1
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_249
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_250
	test	rbx, rbx
	jne	.label_250
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_251:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4035f5
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_11]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_12]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_13]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_251
	test	rsi, rsi
	je	.label_251
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
	.align	16
	#Procedure 0x403660

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_252
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_252:
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
	#Procedure 0x4036e3
	.globl sub_4036e3
	.type sub_4036e3, @function
sub_4036e3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4036f0
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
	#Procedure 0x403709
	.globl sub_403709
	.type sub_403709, @function
sub_403709:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403710
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40371a
	.globl sub_40371a
	.type sub_40371a, @function
sub_40371a:

	nop	word ptr [rax + rax]
.label_253:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403726
	.globl sub_403726
	.type sub_403726, @function
sub_403726:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40372b
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_253
	test	rdx, rdx
	je	.label_253
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_258:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_254
	mov	qword ptr [rsi], rbx
.label_257:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_256
	test	rax, rax
	je	.label_254
.label_256:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403778
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_258
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_255
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_257
	call	free
	xor	eax, eax
	jmp	.label_256
.label_254:
	call	xalloc_die
.label_255:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4037b4
	.globl sub_4037b4
	.type sub_4037b4, @function
sub_4037b4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4037c0

	.globl usage
	.type usage, @function
usage:
	push	rbx
	mov	ebx, edi
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_259
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
	mov	esi, OFFSET FLAT:label_268
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_260
	xor	eax, eax
	mov	rdx, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_264
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_270
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_265
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_227
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_261
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_52
	mov	ecx, OFFSET FLAT:label_53
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_262
	mov	esi, OFFSET FLAT:label_271
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_262
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_263
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_262:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_269
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_53
	mov	ecx, OFFSET FLAT:label_227
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_266
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_227
	mov	ecx, OFFSET FLAT:label_267
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebx
	call	exit
	.section	.text
	.align	16
	#Procedure 0x40394c
	.globl sub_40394c
	.type sub_40394c, @function
sub_40394c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403950
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
	#Procedure 0x4039c5
	.globl sub_4039c5
	.type sub_4039c5, @function
sub_4039c5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4039d0
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
	#Procedure 0x4039e3
	.globl sub_4039e3
	.type sub_4039e3, @function
sub_4039e3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4039f0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_282
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_284
.label_282:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_284:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_272
	cmp	r10d, 0x29
	jae	.label_281
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_283
.label_281:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_283:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_272
	cmp	r10d, 0x29
	jae	.label_279
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_280
.label_279:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_280:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_272
	cmp	r10d, 0x29
	jae	.label_277
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_278
.label_277:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_278:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_272
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
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_272
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
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_272
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_272
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_272
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_272
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_272:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x403bd2
	.globl sub_403bd2
	.type sub_403bd2, @function
sub_403bd2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403be0
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
	#Procedure 0x403ca1
	.globl sub_403ca1
	.type sub_403ca1, @function
sub_403ca1:

	nop	word ptr cs:[rax + rax]
.label_285:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403cb5
	.globl sub_403cb5
	.type sub_403cb5, @function
sub_403cb5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403cc3
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
	je	.label_286
	test	r15, r15
	je	.label_285
.label_286:
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
	#Procedure 0x403d00

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_287
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_89
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403d30

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_223
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_288
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403d55
	.globl sub_403d55
	.type sub_403d55, @function
sub_403d55:

	nop	word ptr cs:[rax + rax]
.label_289:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403d65
	.globl sub_403d65
	.type sub_403d65, @function
sub_403d65:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d74
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
	je	.label_289
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
	.align	16
	#Procedure 0x403e35
	.globl sub_403e35
	.type sub_403e35, @function
sub_403e35:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e42
	.globl sub_403e42
	.type sub_403e42, @function
sub_403e42:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e66
	.globl sub_403e66
	.type sub_403e66, @function
sub_403e66:

	nop	word ptr cs:[rax + rax]
