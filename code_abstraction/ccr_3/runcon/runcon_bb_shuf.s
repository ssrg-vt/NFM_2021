	.section	.text
	.align	16
	#Procedure 0x401259
	.globl sub_401259
	.type sub_401259, @function
sub_401259:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x40125a
	.globl sub_40125a
	.type sub_40125a, @function
sub_40125a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401292
	.globl sub_401292
	.type sub_401292, @function
sub_401292:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4012da
	.globl sub_4012da
	.type sub_4012da, @function
sub_4012da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4012fc
	.globl sub_4012fc
	.type sub_4012fc, @function
sub_4012fc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40130d
	.globl sub_40130d
	.type sub_40130d, @function
sub_40130d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401326
	.globl sub_401326
	.type sub_401326, @function
sub_401326:

	nop	word ptr cs:[rax + rax]
.label_9:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401335
	.globl sub_401335
	.type sub_401335, @function
sub_401335:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401340
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_9
	imul	rbx, rdi
	mov	rdi, rbx
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
	#Procedure 0x401370

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
	je	.label_22
	mov	edx, OFFSET FLAT:label_17
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_24
.label_22:
	mov	edx, OFFSET FLAT:label_25
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_24:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_29
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
	mov	esi, OFFSET FLAT:label_26
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_12
	jmp	qword ptr [(r12 * 8) + label_14]
.label_336:
	add	rsp, 8
	jmp	.label_11
.label_12:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_21
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
	jmp	.label_11
.label_337:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_27
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
.label_338:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_13
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
.label_339:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_19
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
.label_340:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_15
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
	jmp	.label_11
.label_341:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_18
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
	jmp	.label_11
.label_342:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_16
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
	jmp	.label_11
.label_343:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
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
	jmp	.label_11
.label_345:
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
	jmp	.label_11
.label_344:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_28
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
.label_11:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4016c8
	.globl sub_4016c8
	.type sub_4016c8, @function
sub_4016c8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4016d0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_30
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_30
	test	byte ptr [rbx + 1], 1
	je	.label_30
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_30:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x401703
	.globl sub_401703
	.type sub_401703, @function
sub_401703:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401710
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x401718
	.globl sub_401718
	.type sub_401718, @function
sub_401718:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401720
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
	je	.label_31
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
.label_31:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4017b5
	.globl sub_4017b5
	.type sub_4017b5, @function
sub_4017b5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4017c0
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
	#Procedure 0x401881
	.globl sub_401881
	.type sub_401881, @function
sub_401881:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401890
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
	#Procedure 0x4018c3
	.globl sub_4018c3
	.type sub_4018c3, @function
sub_4018c3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4018d0

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
	jmp	.label_108
	.section	.text
	.align	16
	#Procedure 0x40197f
	.globl sub_40197f
	.type sub_40197f, @function
sub_40197f:

	nop	
.label_149:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_101
	or	al, dl
	jne	.label_101
	test	dil, 1
	jne	.label_146
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_101
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_108
	jmp	.label_101
.label_426:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_154
	test	rbp, rbp
	je	.label_145
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_145:
	mov	r14d, 1
	jmp	.label_32
.label_427:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_34
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_35
.label_154:
	xor	r14d, r14d
.label_32:
	mov	eax, OFFSET FLAT:label_34
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_48
	.section	.text
	.align	16
	#Procedure 0x401a4f
	.globl sub_401a4f
	.type sub_401a4f, @function
sub_401a4f:

	nop	
.label_108:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_56
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_63]
.label_428:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_71
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_132
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_429:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_82
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_82
	xor	r14d, r14d
	nop	
.label_139:
	cmp	r14, rbp
	jae	.label_119
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_119:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_139
.label_82:
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
	jmp	.label_35
.label_421:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_35
.label_424:
	mov	al, 1
.label_422:
	mov	r12b, 1
.label_425:
	test	r12b, 1
	mov	cl, 1
	je	.label_121
	mov	ecx, eax
.label_121:
	mov	al, cl
.label_423:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_124
	test	rbp, rbp
	je	.label_129
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_129:
	mov	r14d, 1
	jmp	.label_130
.label_124:
	xor	r14d, r14d
.label_130:
	mov	ecx, OFFSET FLAT:label_132
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_48:
	mov	sil, r12b
.label_35:
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
	jmp	.label_136
	.section	.text
	.align	16
	#Procedure 0x401c11
	.globl sub_401c11
	.type sub_401c11, @function
sub_401c11:

	nop	word ptr cs:[rax + rax]
.label_138:
	inc	r12
.label_136:
	cmp	r11, -1
	je	.label_42
	cmp	r12, r11
	jne	.label_44
	jmp	.label_47
	.section	.text
	.align	16
	#Procedure 0x401c33
	.globl sub_401c33
	.type sub_401c33, @function
sub_401c33:

	nop	word ptr cs:[rax + rax]
.label_42:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_52
.label_44:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_58
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_62
	cmp	r11, -1
	jne	.label_62
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_62:
	cmp	rbx, r11
	jbe	.label_74
.label_58:
	xor	esi, esi
.label_106:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_76
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_79]
.label_384:
	test	r12, r12
	jne	.label_33
	jmp	.label_83
	.section	.text
	.align	16
	#Procedure 0x401cc6
	.globl sub_401cc6
	.type sub_401cc6, @function
sub_401cc6:

	nop	word ptr cs:[rax + rax]
.label_74:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_93
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_106
	jmp	.label_60
.label_93:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_106
.label_388:
	xor	eax, eax
	cmp	r11, -1
	je	.label_113
	test	r12, r12
	jne	.label_117
	cmp	r11, 1
	je	.label_83
	xor	r13d, r13d
	jmp	.label_46
.label_377:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_126
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_60
	cmp	r8d, 2
	jne	.label_67
	mov	eax, r9d
	and	al, 1
	jne	.label_67
	cmp	r14, rbp
	jae	.label_133
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_133:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_134
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_134:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_140
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_140:
	add	r14, 3
	mov	r9b, 1
.label_67:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_144
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_144:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_147
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_147
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_147
	cmp	r14, rbp
	jae	.label_143
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_143:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_87
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_87:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_46
.label_378:
	mov	bl, 0x62
	jmp	.label_43
.label_379:
	mov	cl, 0x74
	jmp	.label_36
.label_380:
	mov	bl, 0x76
	jmp	.label_43
.label_381:
	mov	bl, 0x66
	jmp	.label_43
.label_382:
	mov	cl, 0x72
	jmp	.label_36
.label_385:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_55
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_41
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
	jae	.label_64
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_64:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_77
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_77:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_81
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_81:
	add	r14, 3
	xor	r9d, r9d
.label_55:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_46
.label_386:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_86
	cmp	r8d, 2
	jne	.label_33
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_33
	jmp	.label_41
.label_387:
	cmp	r8d, 2
	jne	.label_98
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_41
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_105
.label_76:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_107
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_123
.label_113:
	test	r12, r12
	jne	.label_131
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_131
.label_83:
	mov	dl, 1
.label_383:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_41
	xor	eax, eax
	mov	r13b, dl
.label_46:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_137
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_141
	jmp	.label_142
	.section	.text
	.align	16
	#Procedure 0x401fa4
	.globl sub_401fa4
	.type sub_401fa4, @function
sub_401fa4:

	nop	word ptr cs:[rax + rax]
.label_137:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_142
.label_141:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_38
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_152
	.section	.text
	.align	16
	#Procedure 0x401fdd
	.globl sub_401fdd
	.type sub_401fdd, @function
sub_401fdd:

	nop	dword ptr [rax]
.label_142:
	test	sil, sil
.label_152:
	mov	ebx, r15d
	je	.label_73
	jmp	.label_157
.label_38:
	mov	ebx, r15d
	jmp	.label_157
.label_126:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_138
	xor	r15d, r15d
	jmp	.label_33
.label_98:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_36
	xor	eax, eax
	mov	r15b, 0x5c
.label_105:
	xor	r13d, r13d
	jmp	.label_73
.label_36:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_41
.label_43:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_46
	nop	
.label_157:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_60
	cmp	r8d, 2
	jne	.label_57
	mov	eax, r9d
	and	al, 1
	jne	.label_57
	cmp	r14, rbp
	jae	.label_61
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_61:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_65
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_65:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_70
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_70:
	add	r14, 3
	mov	r9b, 1
.label_57:
	cmp	r14, rbp
	jae	.label_75
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_75:
	inc	r14
	jmp	.label_155
.label_107:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_80
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_80:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_84
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_111:
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
	je	.label_99
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_115
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_97
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_127
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_122:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_49
	bt	rsi, rdx
	jb	.label_41
.label_49:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_122
.label_127:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_120
	xor	r13d, r13d
.label_120:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_111
	jmp	.label_118
.label_147:
	xor	r13d, r13d
	jmp	.label_46
.label_131:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_46
.label_86:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_33
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_33
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_33
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_40
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_153
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_51
	cmp	r14, rbp
	jae	.label_53
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_53:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_104
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_104:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_66
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_66:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_88
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_88:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_153:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_46
.label_33:
	xor	eax, eax
.label_117:
	xor	r13d, r13d
	jmp	.label_46
.label_84:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_112:
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
	je	.label_94
	cmp	rbp, -1
	je	.label_96
	cmp	rbp, -2
	je	.label_99
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_103
	xor	r13d, r13d
.label_103:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_112
	jmp	.label_118
.label_99:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_90
	lea	rax, [r10 + r12]
.label_151:
	cmp	byte ptr [rax + rsi], 0
	je	.label_90
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_151
.label_90:
	mov	qword ptr [rsp + 0x40], rsi
.label_115:
	xor	r13d, r13d
	jmp	.label_97
.label_96:
	xor	r13d, r13d
.label_94:
	mov	r10, qword ptr [rsp + 0x28]
.label_97:
	mov	r12, qword ptr [rsp + 0x40]
.label_118:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_123:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_135
	test	al, al
	je	.label_135
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_46
.label_135:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_150
	.section	.text
	.align	16
	#Procedure 0x4023d7
	.globl sub_4023d7
	.type sub_4023d7, @function
sub_4023d7:

	nop	word ptr [rax + rax]
.label_109:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_150:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_156
	test	sil, 1
	je	.label_37
	cmp	r14, rbp
	jae	.label_158
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_158:
	inc	r14
	xor	esi, esi
	jmp	.label_37
	.section	.text
	.align	16
	#Procedure 0x402415
	.globl sub_402415
	.type sub_402415, @function
sub_402415:

	nop	word ptr cs:[rax + rax]
.label_156:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_60
	cmp	r8d, 2
	jne	.label_45
	mov	eax, r9d
	and	al, 1
	jne	.label_45
	cmp	r14, rbp
	jae	.label_50
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_50:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_54
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_54:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_148
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_148:
	add	r14, 3
	mov	r9b, 1
.label_45:
	cmp	r14, rbp
	jae	.label_68
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_68:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_102
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_102:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_78
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_78:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_37:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_73
	test	r9b, 1
	je	.label_89
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_116
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_92
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_92:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_100
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_100:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_89
	.section	.text
	.align	16
	#Procedure 0x402526
	.globl sub_402526
	.type sub_402526, @function
sub_402526:

	nop	word ptr cs:[rax + rax]
.label_116:
	mov	rbx, rcx
.label_89:
	cmp	r14, rbp
	jae	.label_109
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_109
	.section	.text
	.align	16
	#Procedure 0x40254e
	.globl sub_40254e
	.type sub_40254e, @function
sub_40254e:

	nop	
.label_73:
	test	r9b, 1
	je	.label_125
	and	al, 1
	jne	.label_125
	cmp	r14, rbp
	jae	.label_128
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_128:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_69
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_69:
	add	r14, 2
	xor	r9d, r9d
.label_125:
	mov	ebx, r15d
.label_155:
	cmp	r14, rbp
	jae	.label_110
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_110:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_138
.label_40:
	xor	r13d, r13d
	jmp	.label_46
	.section	.text
	.align	16
	#Procedure 0x4025b1
	.globl sub_4025b1
	.type sub_4025b1, @function
sub_4025b1:

	nop	word ptr cs:[rax + rax]
.label_47:
	mov	rcx, r12
.label_52:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_149
	or	al, dl
	jne	.label_149
	mov	r11, rcx
	jmp	.label_60
.label_41:
	mov	eax, 2
.label_95:
	mov	qword ptr [rsp + 0x38], rax
.label_60:
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
.label_85:
	mov	r14, rax
.label_91:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_101:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_39
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_59
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_59
	inc	rdx
	nop	dword ptr [rax + rax]
.label_72:
	cmp	r14, rbp
	jae	.label_114
	mov	byte ptr [rcx + r14], al
.label_114:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_72
	jmp	.label_59
.label_146:
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
	jmp	.label_85
.label_39:
	mov	rcx, qword ptr [rsp + 0x10]
.label_59:
	cmp	r14, rbp
	jae	.label_91
	mov	byte ptr [rcx + r14], 0
	jmp	.label_91
.label_51:
	mov	eax, 5
	jmp	.label_95
.label_56:
	call	abort
.label_160:
	call	xalloc_die
.label_163:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40270a
	.globl sub_40270a
	.type sub_40270a, @function
sub_40270a:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402716
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_162
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_163
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_161
	call	free
	xor	eax, eax
	jmp	.label_159
.label_162:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_160
	mov	qword ptr [rsi], rbx
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
	.align	16
	#Procedure 0x402770

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_164]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_165]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_166]
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
	#Procedure 0x4027c5
	.globl sub_4027c5
	.type sub_4027c5, @function
sub_4027c5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4027d0
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
	je	.label_167
	mov	qword ptr [rax], rbx
.label_167:
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
	#Procedure 0x4028bc
	.globl sub_4028bc
	.type sub_4028bc, @function
sub_4028bc:

	nop	dword ptr [rax]
.label_170:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4028c5
	.globl sub_4028c5
	.type sub_4028c5, @function
sub_4028c5:

	nop	word ptr [rax + rax]
.label_171:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_168
	test	rax, rax
	je	.label_169
.label_168:
	pop	rbx
	ret	
.label_173:
	test	rcx, rcx
	jne	.label_172
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_172:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_170
.label_174:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_171
	test	rbx, rbx
	jne	.label_171
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_169:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402933
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_173
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_169
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_174
	.section	.text
	.align	16
	#Procedure 0x402960
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
	#Procedure 0x402978
	.globl sub_402978
	.type sub_402978, @function
sub_402978:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402980
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_164]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_165]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_166]
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
	#Procedure 0x4029d4
	.globl sub_4029d4
	.type sub_4029d4, @function
sub_4029d4:

	nop	word ptr cs:[rax + rax]
.label_175:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4029e5
	.globl sub_4029e5
	.type sub_4029e5, @function
sub_4029e5:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4029e7
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_164]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_165]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_166]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_175
	test	rdx, rdx
	je	.label_175
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
	#Procedure 0x402a50
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_176
	test	rax, rax
	je	.label_177
.label_176:
	pop	rbx
	ret	
.label_177:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402a6a
	.globl sub_402a6a
	.type sub_402a6a, @function
sub_402a6a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a70

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_178
	test	rsi, rsi
	mov	ecx, 1
	je	.label_179
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_179
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_178:
	mov	ecx, 1
.label_179:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x402abb
	.globl sub_402abb
	.type sub_402abb, @function
sub_402abb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ac0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x402ace
	.globl sub_402ace
	.type sub_402ace, @function
sub_402ace:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402ad0

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
	js	.label_183
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_186
	cmp	r12d, 0x7fffffff
	je	.label_181
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
	jne	.label_184
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_184:
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
.label_186:
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
	jbe	.label_182
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_185
.label_182:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_180
	mov	rdi, r14
	call	free
.label_180:
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
.label_185:
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
.label_183:
	call	abort
.label_181:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402c8d
	.globl sub_402c8d
	.type sub_402c8d, @function
sub_402c8d:

	nop	dword ptr [rax]
.label_188:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402c95
	.globl sub_402c95
	.type sub_402c95, @function
sub_402c95:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c9f
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
	je	.label_187
	test	r14, r14
	je	.label_188
.label_187:
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
	.align	16
	#Procedure 0x402cd0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
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
	#Procedure 0x402d53
	.globl sub_402d53
	.type sub_402d53, @function
sub_402d53:

	nop	word ptr cs:[rax + rax]
.label_192:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_190
	test	rax, rax
	je	.label_191
.label_190:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402d74

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_192
	test	rbx, rbx
	jne	.label_192
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_191:
	call	xalloc_die
.label_193:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402d95
	.globl sub_402d95
	.type sub_402d95, @function
sub_402d95:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d9b

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_194
	test	rax, rax
	je	.label_193
.label_194:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402db0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_164]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_165]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_166]
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
	#Procedure 0x402e1f
	.globl sub_402e1f
	.type sub_402e1f, @function
sub_402e1f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402e20
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_195
	test	rdx, rdx
	je	.label_195
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_195:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402e4b
	.globl sub_402e4b
	.type sub_402e4b, @function
sub_402e4b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e50
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
	je	.label_196
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
.label_196:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402eb1
	.globl sub_402eb1
	.type sub_402eb1, @function
sub_402eb1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ec0

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
	#Procedure 0x402ed7
	.globl sub_402ed7
	.type sub_402ed7, @function
sub_402ed7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ee0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_197
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_198
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402f05
	.globl sub_402f05
	.type sub_402f05, @function
sub_402f05:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402f10

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
	jne	.label_199
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_199
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_200
.label_199:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_200:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_201
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_201:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402f7e
	.globl sub_402f7e
	.type sub_402f7e, @function
sub_402f7e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402f80

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_203
	cmp	byte ptr [rax], 0x43
	jne	.label_205
	cmp	byte ptr [rax + 1], 0
	je	.label_202
.label_205:
	mov	esi, OFFSET FLAT:label_204
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_203
.label_202:
	xor	ebx, ebx
.label_203:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402fb1
	.globl sub_402fb1
	.type sub_402fb1, @function
sub_402fb1:

	nop	word ptr cs:[rax + rax]
.label_206:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402fc5
	.globl sub_402fc5
	.type sub_402fc5, @function
sub_402fc5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402fd3
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
	je	.label_207
	test	r15, r15
	je	.label_206
.label_207:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_208:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403015
	.globl sub_403015
	.type sub_403015, @function
sub_403015:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40301b
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_164]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_165]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_166]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_208
	test	rdx, rdx
	je	.label_208
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
	#Procedure 0x403080
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_209
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_211:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_211
.label_209:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_212
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_213], OFFSET FLAT:slot0
.label_212:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_210
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_210:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x403111
	.globl sub_403111
	.type sub_403111, @function
sub_403111:

	nop	word ptr cs:[rax + rax]
.label_216:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_214
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403140
	.globl sub_403140
	.type sub_403140, @function
sub_403140:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40314f

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_216
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_218
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_219
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_218
	mov	esi, OFFSET FLAT:label_217
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_215
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_215:
	mov	rbx, r14
.label_218:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x4031d0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_220
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_221
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403200

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_222
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_225
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
	mov	esi, OFFSET FLAT:label_232
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_233
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_239
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_227
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_231
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_229
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_235
	mov	ecx, OFFSET FLAT:label_230
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_226
	mov	esi, OFFSET FLAT:label_228
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_226
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_236
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_226:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_237
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_230
	mov	ecx, OFFSET FLAT:label_223
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_238
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_223
	mov	ecx, OFFSET FLAT:label_224
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_222:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_234
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
	#Procedure 0x4033de
	.globl sub_4033de
	.type sub_4033de, @function
sub_4033de:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4033e0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_240
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_242
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_240
.label_242:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_240
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_241
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_241:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_240:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x403454
	.globl sub_403454
	.type sub_403454, @function
sub_403454:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403460

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_197
	call	setlocale
	mov	edi, OFFSET FLAT:label_248
	mov	esi, OFFSET FLAT:label_249
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_248
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	lea	r14, [rsp + 0x14]
	xor	r13d, r13d
	xor	eax, eax
	mov	qword ptr [rsp], rax
	xor	r12d, r12d
	xor	r15d, r15d
	jmp	.label_259
	.section	.text
	.align	16
	#Procedure 0x4034ca
	.globl sub_4034ca
	.type sub_4034ca, @function
sub_4034ca:

	nop	word ptr [rax + rax]
.label_264:
	mov	r12b, cl
.label_259:
	mov	dword ptr [rsp + 0x14], 0
	mov	edx, OFFSET FLAT:label_263
	mov	ecx, OFFSET FLAT:long_options
	mov	edi, ebp
	mov	rsi, rbx
	mov	r8, r14
	call	getopt_long
	cmp	eax, 0x62
	jle	.label_269
	add	eax, -0x63
	cmp	eax, 0x12
	ja	.label_271
	mov	cl, 1
	jmp	qword ptr [(rax * 8) + label_243]
.label_360:
	cmp	qword ptr [rsp], 0
	jne	.label_250
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rsp], rax
	jmp	.label_254
.label_361:
	test	r15, r15
	jne	.label_256
	mov	r15, qword ptr [rip + optarg]
	jmp	.label_254
.label_362:
	cmp	qword ptr [rsp + 8], 0
	jne	.label_261
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rsp + 8], rax
	jmp	.label_254
.label_363:
	test	r13, r13
	jne	.label_253
	mov	r13, qword ptr [rip + optarg]
.label_254:
	mov	ecx, r12d
	jmp	.label_264
.label_269:
	cmp	eax, 0xffffff7d
	je	.label_267
	cmp	eax, 0xffffff7e
	je	.label_268
	cmp	eax, -1
	jne	.label_271
	mov	eax, dword ptr [rip + optind]
	cmp	eax, ebp
	jne	.label_272
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_251
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	esi, 0x5f
	jmp	.label_257
.label_267:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_223
	mov	edx, OFFSET FLAT:label_235
	mov	r8d, OFFSET FLAT:label_260
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_268:
	xor	edi, edi
	call	usage
.label_271:
	mov	edi, 1
	call	usage
.label_250:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_270
	jmp	.label_245
.label_256:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_273
	jmp	.label_245
.label_261:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_244
	jmp	.label_245
.label_253:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_252
.label_245:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
.label_257:
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_272:
	or	r13, r15
	mov	rcx, qword ptr [rsp + 8]
	or	rcx, r13
	or	qword ptr [rsp], rcx
	sete	cl
	test	r12b, 1
	jne	.label_262
	test	cl, cl
	je	.label_262
	cmp	eax, ebp
	jge	.label_265
	inc	eax
	mov	dword ptr [rip + optind],  eax
.label_262:
	xor	edi, edi
	cmp	eax, ebp
	jge	.label_258
	mov	esi, OFFSET FLAT:label_266
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	call	error
.label_258:
	mov	esi, OFFSET FLAT:label_246
	jmp	.label_247
.label_265:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_255
.label_247:
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
	.section	.text
	.align	16
	#Procedure 0x4036bc
	.globl sub_4036bc
	.type sub_4036bc, @function
sub_4036bc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4036c0

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
	jne	.label_275
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_274
	test	cl, cl
	jne	.label_274
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_274
.label_275:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_274
	call	__errno_location
	mov	dword ptr [rax], 0
.label_274:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403720

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_286
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_288
.label_286:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_288:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_277
	cmp	r10d, 0x29
	jae	.label_285
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_287
.label_285:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_287:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_277
	cmp	r10d, 0x29
	jae	.label_283
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_284
.label_283:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_284:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_277
	cmp	r10d, 0x29
	jae	.label_281
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_282
.label_281:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_282:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_277
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
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_277
	cmp	r10d, 0x29
	jae	.label_276
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_278
.label_276:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_278:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_277
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_277
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_277
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_277
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_277:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x403902
	.globl sub_403902
	.type sub_403902, @function
sub_403902:

	nop	word ptr cs:[rax + rax]
.label_289:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403915
	.globl sub_403915
	.type sub_403915, @function
sub_403915:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403919
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_164]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_165]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_166]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_289
	test	rsi, rsi
	je	.label_289
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
.label_293:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_290
	mov	eax, OFFSET FLAT:label_291
	jmp	.label_292
	.section	.text
	.align	16
	#Procedure 0x40398f
	.globl sub_40398f
	.type sub_40398f, @function
sub_40398f:

	nop	word ptr cs:[rax + rax]
.label_297:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_294
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_294
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_294
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_294
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_294
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_294
	cmp	byte ptr [rax + 7], 0
	je	.label_293
.label_294:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_34
	mov	eax, OFFSET FLAT:label_132
.label_292:
	cmove	rax, rcx
.label_298:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4039e2

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
	jne	.label_298
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_297
	cmp	ecx, 0x55
	jne	.label_294
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_294
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_294
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_294
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_294
	cmp	byte ptr [rax + 5], 0
	jne	.label_294
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_295
	mov	eax, OFFSET FLAT:label_296
	jmp	.label_292
	.section	.text
	.align	16
	#Procedure 0x403a50
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x403a61
	.globl sub_403a61
	.type sub_403a61, @function
sub_403a61:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a70
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x403a78
	.globl sub_403a78
	.type sub_403a78, @function
sub_403a78:

	nop	dword ptr [rax + rax]
.label_301:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_299
	test	rax, rax
	je	.label_300
.label_299:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403a94
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_300
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_301
	test	rbx, rbx
	jne	.label_301
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_300:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403ac8
	.globl sub_403ac8
	.type sub_403ac8, @function
sub_403ac8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ad0
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
	#Procedure 0x403ae9
	.globl sub_403ae9
	.type sub_403ae9, @function
sub_403ae9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403af0
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
	je	.label_302
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
.label_302:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403b5c
	.globl sub_403b5c
	.type sub_403b5c, @function
sub_403b5c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403b60
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_303:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_303
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x403b81
	.globl sub_403b81
	.type sub_403b81, @function
sub_403b81:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b90
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_304
	call	rpl_calloc
	test	rax, rax
	je	.label_304
	pop	rcx
	ret	
.label_304:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403bb6
	.globl sub_403bb6
	.type sub_403bb6, @function
sub_403bb6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403bc0
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
	#Procedure 0x403c35
	.globl sub_403c35
	.type sub_403c35, @function
sub_403c35:

	nop	word ptr cs:[rax + rax]
.label_309:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_305
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_306
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_221
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x403c81

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_308
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_309
	cmp	dword ptr [rbp], 0x20
	jne	.label_309
.label_308:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_310
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_310:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_306:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_307
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
	#Procedure 0x403d00
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
	#Procedure 0x403d0f
	.globl sub_403d0f
	.type sub_403d0f, @function
sub_403d0f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403d10
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
	#Procedure 0x403d29
	.globl sub_403d29
	.type sub_403d29, @function
sub_403d29:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403d30
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_164]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_165]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_166]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_311
	test	rsi, rsi
	je	.label_311
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_311:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403da0
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
	#Procedure 0x403db3
	.globl sub_403db3
	.type sub_403db3, @function
sub_403db3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403dc0
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
	#Procedure 0x403dcf
	.globl sub_403dcf
	.type sub_403dcf, @function
sub_403dcf:

	nop	
.label_312:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403dd5
	.globl sub_403dd5
	.type sub_403dd5, @function
sub_403dd5:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ddd
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
	je	.label_312
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
.label_313:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403e45
	.globl sub_403e45
	.type sub_403e45, @function
sub_403e45:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e4d
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
	je	.label_313
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
	#Procedure 0x403eb0

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
	je	.label_314
	cmp	r15, -2
	jb	.label_314
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_314
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_314:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x403f06
	.globl sub_403f06
	.type sub_403f06, @function
sub_403f06:

	nop	word ptr cs:[rax + rax]
.label_316:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403f15
	.globl sub_403f15
	.type sub_403f15, @function
sub_403f15:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403f19

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
	je	.label_315
	test	r15, r15
	je	.label_316
.label_315:
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
	#Procedure 0x403f50
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_317
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_318
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_320
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_235
	mov	ecx, OFFSET FLAT:label_230
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_319
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x403fc4
	.globl sub_403fc4
	.type sub_403fc4, @function
sub_403fc4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403fd0
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
	#Procedure 0x404006
	.globl sub_404006
	.type sub_404006, @function
sub_404006:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404010
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
	#Procedure 0x404028
	.globl sub_404028
	.type sub_404028, @function
sub_404028:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404030
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_164]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_165]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_166]
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
	#Procedure 0x40409e
	.globl sub_40409e
	.type sub_40409e, @function
sub_40409e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4040a0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4040aa
	.globl sub_4040aa
	.type sub_4040aa, @function
sub_4040aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4040b0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4040ba
	.globl sub_4040ba
	.type sub_4040ba, @function
sub_4040ba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404125
	.globl sub_404125
	.type sub_404125, @function
sub_404125:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404132
	.globl sub_404132
	.type sub_404132, @function
sub_404132:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404156
	.globl sub_404156
	.type sub_404156, @function
sub_404156:

	nop	word ptr cs:[rax + rax]
