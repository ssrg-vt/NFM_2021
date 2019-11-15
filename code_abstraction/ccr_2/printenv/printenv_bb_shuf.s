	.section	.text
	.align	16
	#Procedure 0x4012f9
	.globl sub_4012f9
	.type sub_4012f9, @function
sub_4012f9:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x4012fa
	.globl sub_4012fa
	.type sub_4012fa, @function
sub_4012fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401332
	.globl sub_401332
	.type sub_401332, @function
sub_401332:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40137a
	.globl sub_40137a
	.type sub_40137a, @function
sub_40137a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40139c
	.globl sub_40139c
	.type sub_40139c, @function
sub_40139c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4013ad
	.globl sub_4013ad
	.type sub_4013ad, @function
sub_4013ad:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4013c6
	.globl sub_4013c6
	.type sub_4013c6, @function
sub_4013c6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4013d0
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
	#Procedure 0x401491
	.globl sub_401491
	.type sub_401491, @function
sub_401491:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4014a0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x4014a8
	.globl sub_4014a8
	.type sub_4014a8, @function
sub_4014a8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4014b0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_9
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_9:
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
	#Procedure 0x401533
	.globl sub_401533
	.type sub_401533, @function
sub_401533:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401540
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_10
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_11
	test	rbx, rbx
	jne	.label_11
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_11:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_12
	test	rax, rax
	je	.label_10
.label_12:
	pop	rbx
	ret	
.label_10:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401588
	.globl sub_401588
	.type sub_401588, @function
sub_401588:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401590
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
	#Procedure 0x4015a3
	.globl sub_4015a3
	.type sub_4015a3, @function
sub_4015a3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4015b0
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_13
	test	rdx, rdx
	je	.label_13
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_13:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4015db
	.globl sub_4015db
	.type sub_4015db, @function
sub_4015db:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4015e0

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
	je	.label_26
	mov	edx, OFFSET FLAT:label_17
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_23
.label_26:
	mov	edx, OFFSET FLAT:label_24
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_23:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_28
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
	mov	esi, OFFSET FLAT:label_25
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_29
	jmp	qword ptr [(r12 * 8) + label_30]
.label_382:
	add	rsp, 8
	jmp	.label_16
.label_29:
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
	push	qword ptr [r15 + 0x40]
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
	jmp	.label_16
.label_383:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_15
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
.label_384:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_21
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
.label_385:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_18
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
.label_386:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_32
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
	jmp	.label_16
.label_387:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_31
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
	jmp	.label_16
.label_388:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_14
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
	jmp	.label_16
.label_389:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_19
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
	jmp	.label_16
.label_391:
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
	push	qword ptr [r15 + 0x40]
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
	jmp	.label_16
.label_390:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_27
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
.label_16:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x401938
	.globl sub_401938
	.type sub_401938, @function
sub_401938:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401940
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
	je	.label_34
	test	r14, r14
	je	.label_33
.label_34:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_33:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401976
	.globl sub_401976
	.type sub_401976, @function
sub_401976:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401980
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_35]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_36]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_37]
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
	#Procedure 0x4019d4
	.globl sub_4019d4
	.type sub_4019d4, @function
sub_4019d4:

	nop	word ptr cs:[rax + rax]
.label_38:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x4019ec
	.globl sub_4019ec
	.type sub_4019ec, @function
sub_4019ec:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4019f8

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_38
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_40
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_38
.label_40:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_38
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_39
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_39:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401a60
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_35]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_36]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_37]
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
.label_41:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401ace
	.globl sub_401ace
	.type sub_401ace, @function
sub_401ace:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401ad0
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
	je	.label_42
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
.label_42:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401b3c
	.globl sub_401b3c
	.type sub_401b3c, @function
sub_401b3c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401b40

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
	#Procedure 0x401b57
	.globl sub_401b57
	.type sub_401b57, @function
sub_401b57:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401b60
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x401b68
	.globl sub_401b68
	.type sub_401b68, @function
sub_401b68:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401b70
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_35]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_36]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_37]
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
	#Procedure 0x401bdf
	.globl sub_401bdf
	.type sub_401bdf, @function
sub_401bdf:

	nop	
.label_43:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401be5
	.globl sub_401be5
	.type sub_401be5, @function
sub_401be5:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401beb
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_35]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_36]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_37]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_43
	test	rdx, rdx
	je	.label_43
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
	#Procedure 0x401c50
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_44:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_44
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x401c71
	.globl sub_401c71
	.type sub_401c71, @function
sub_401c71:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401c80

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
	mov	r12, rsi
	mov	r15d, edi
	mov	rdi, qword ptr [r12]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_52
	call	setlocale
	mov	edi, OFFSET FLAT:label_55
	mov	esi, OFFSET FLAT:label_56
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_55
	call	textdomain
	mov	dword ptr [rip + exit_failure],  2
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	r14d, 0xa
.label_71:
	mov	edx, OFFSET FLAT:label_64
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, r15d
	mov	rsi, r12
	call	getopt_long
	cmp	eax, 0x2f
	jle	.label_70
	cmp	eax, 0x30
	mov	r14d, 0
	je	.label_71
	jmp	.label_47
.label_70:
	cmp	eax, -1
	jne	.label_48
	movsxd	rbx, dword ptr [rip + optind]
	cmp	ebx, r15d
	jge	.label_51
	mov	dword ptr [rsp + 0x14], r14d
	xor	r14d, r14d
	nop	dword ptr [rax]
.label_57:
	mov	rbp, qword ptr [r12 + rbx*8]
	mov	esi, 0x3d
	mov	rdi, rbp
	call	strchr
	test	rax, rax
	jne	.label_50
	mov	r13, qword ptr [rip + __environ]
	mov	rdx, qword ptr [r13]
	xor	esi, esi
	test	rdx, rdx
	jne	.label_60
	jmp	.label_63
	.section	.text
	.align	16
	#Procedure 0x401d5e
	.globl sub_401d5e
	.type sub_401d5e, @function
sub_401d5e:

	nop	
.label_61:
	add	r13, 8
	mov	rbp, qword ptr [r12 + rbx*8]
.label_60:
	mov	cl, byte ptr [rdx]
	test	cl, cl
	je	.label_45
	mov	al, byte ptr [rbp]
	test	al, al
	je	.label_45
	add	rdx, 2
	inc	rbp
	nop	dword ptr [rax]
.label_54:
	cmp	cl, al
	jne	.label_45
	movzx	ecx, byte ptr [rdx - 1]
	cmp	cl, 0x3d
	je	.label_46
	test	cl, cl
	jne	.label_49
	jmp	.label_45
	.section	.text
	.align	16
	#Procedure 0x401d93
	.globl sub_401d93
	.type sub_401d93, @function
sub_401d93:

	nop	word ptr cs:[rax + rax]
.label_46:
	mov	cl, 0x3d
	cmp	byte ptr [rbp], 0
	je	.label_58
.label_49:
	movzx	eax, byte ptr [rbp]
	inc	rdx
	inc	rbp
	test	al, al
	jne	.label_54
	jmp	.label_45
.label_58:
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_53
	xor	eax, eax
	mov	ecx, dword ptr [rsp + 0x14]
	call	__printf_chk
	mov	sil, 1
.label_45:
	mov	rdx, qword ptr [r13 + 8]
	test	rdx, rdx
	jne	.label_61
.label_63:
	and	sil, 1
	movzx	eax, sil
	add	r14d, eax
.label_50:
	inc	rbx
	cmp	ebx, r15d
	jne	.label_57
	sub	r15d, dword ptr [rip + optind]
	cmp	r14d, r15d
	sete	bl
	jmp	.label_69
.label_51:
	mov	rbp, qword ptr [rip + __environ]
	mov	rdx, qword ptr [rbp]
	mov	bl, 1
	test	rdx, rdx
	je	.label_69
	add	rbp, 8
	nop	word ptr cs:[rax + rax]
.label_59:
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_53
	xor	eax, eax
	mov	ecx, r14d
	call	__printf_chk
	mov	rdx, qword ptr [rbp]
	add	rbp, 8
	test	rdx, rdx
	jne	.label_59
.label_69:
	movzx	eax, bl
	xor	eax, 1
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_48:
	cmp	eax, 0xffffff7d
	je	.label_62
	cmp	eax, 0xffffff7e
	jne	.label_47
	xor	edi, edi
	call	usage
.label_62:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_65
	mov	edx, OFFSET FLAT:label_66
	mov	r8d, OFFSET FLAT:label_67
	mov	r9d, OFFSET FLAT:label_68
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_47:
	mov	edi, 2
	call	usage
	.section	.text
	.align	16
	#Procedure 0x401eaf
	.globl sub_401eaf
	.type sub_401eaf, @function
sub_401eaf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401eb0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_72
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_73
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401ee0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_74
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_77:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_77
.label_74:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_78
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_75], OFFSET FLAT:slot0
.label_78:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_76
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_76:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x401f71
	.globl sub_401f71
	.type sub_401f71, @function
sub_401f71:

	nop	word ptr cs:[rax + rax]
.label_79:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401f85
	.globl sub_401f85
	.type sub_401f85, @function
sub_401f85:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f8b

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_80
	test	rax, rax
	je	.label_79
.label_80:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401fa0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_88
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_92
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_81
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_93
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_84
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_94
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_65
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_87
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_66
	mov	ecx, OFFSET FLAT:label_89
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_83
	mov	esi, OFFSET FLAT:label_86
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_83
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_90
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_83:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_82
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_89
	mov	ecx, OFFSET FLAT:label_65
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_95
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_65
	mov	ecx, OFFSET FLAT:label_85
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_88:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_91
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
	#Procedure 0x402163
	.globl sub_402163
	.type sub_402163, @function
sub_402163:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402170

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
	je	.label_96
	test	r15, r15
	je	.label_97
.label_96:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_97:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4021ac
	.globl sub_4021ac
	.type sub_4021ac, @function
sub_4021ac:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4021b0
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
	#Procedure 0x4021c9
	.globl sub_4021c9
	.type sub_4021c9, @function
sub_4021c9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4021d0
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
	#Procedure 0x4021e8
	.globl sub_4021e8
	.type sub_4021e8, @function
sub_4021e8:

	nop	dword ptr [rax + rax]
.label_102:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_98
	mov	eax, OFFSET FLAT:label_99
	jmp	.label_100
	.section	.text
	.align	16
	#Procedure 0x4021ff
	.globl sub_4021ff
	.type sub_4021ff, @function
sub_4021ff:

	nop	word ptr cs:[rax + rax]
.label_107:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_101
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_101
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_101
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_101
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_101
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_101
	cmp	byte ptr [rax + 7], 0
	je	.label_102
.label_101:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_103
	mov	eax, OFFSET FLAT:label_104
.label_100:
	cmove	rax, rcx
.label_108:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402252

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
	jne	.label_108
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_107
	cmp	ecx, 0x55
	jne	.label_101
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_101
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_101
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_101
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_101
	cmp	byte ptr [rax + 5], 0
	jne	.label_101
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_105
	mov	eax, OFFSET FLAT:label_106
	jmp	.label_100
	.section	.text
	.align	16
	#Procedure 0x4022c0

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
.label_196:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_194
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_200]
.label_369:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_203
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_104
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_370:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_193
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_193
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_114:
	cmp	r14, r11
	jae	.label_109
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_109:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_114
.label_193:
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
	jmp	.label_122
.label_362:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_122
.label_365:
	mov	al, 1
.label_363:
	mov	r12b, 1
.label_366:
	test	r12b, 1
	mov	cl, 1
	je	.label_135
	mov	ecx, eax
.label_135:
	mov	al, cl
.label_364:
	test	r12b, 1
	jne	.label_137
	test	r11, r11
	je	.label_138
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_138:
	mov	r14d, 1
	jmp	.label_140
.label_137:
	xor	r14d, r14d
.label_140:
	mov	ecx, OFFSET FLAT:label_104
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_122
.label_367:
	test	r12b, 1
	jne	.label_152
	test	r11, r11
	je	.label_155
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_155:
	mov	r14d, 1
	jmp	.label_158
.label_368:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_103
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_122
.label_152:
	xor	r14d, r14d
.label_158:
	mov	eax, OFFSET FLAT:label_103
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_122:
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
	jmp	.label_174
	.section	.text
	.align	16
	#Procedure 0x4025ad
	.globl sub_4025ad
	.type sub_4025ad, @function
sub_4025ad:

	nop	dword ptr [rax]
.label_115:
	inc	rsi
.label_174:
	cmp	rbp, -1
	je	.label_124
	cmp	rsi, rbp
	jne	.label_213
	jmp	.label_214
	.section	.text
	.align	16
	#Procedure 0x4025c3
	.globl sub_4025c3
	.type sub_4025c3, @function
sub_4025c3:

	nop	word ptr cs:[rax + rax]
.label_124:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_220
.label_213:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_225
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_227
	cmp	rbp, -1
	jne	.label_227
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
.label_227:
	cmp	rbx, rbp
	jbe	.label_123
.label_225:
	xor	r8d, r8d
.label_146:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_125
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_127]
.label_347:
	test	rsi, rsi
	jne	.label_117
	jmp	.label_133
	.section	.text
	.align	16
	#Procedure 0x402665
	.globl sub_402665
	.type sub_402665, @function
sub_402665:

	nop	word ptr cs:[rax + rax]
.label_123:
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
	jne	.label_143
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_146
	jmp	.label_157
.label_143:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_146
.label_351:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_166
	test	rsi, rsi
	jne	.label_167
	cmp	rbp, 1
	je	.label_133
	xor	r13d, r13d
	jmp	.label_111
.label_340:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_173
	cmp	byte ptr [rsp + 6], 0
	jne	.label_147
	cmp	r12d, 2
	jne	.label_178
	mov	eax, r9d
	and	al, 1
	jne	.label_178
	cmp	r14, r11
	jae	.label_181
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_181:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_184
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_184:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_223
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_223:
	add	r14, 3
	mov	r9b, 1
.label_178:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_197
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_197:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_201
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_201
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_201
	cmp	r14, r11
	jae	.label_121
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_121:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_217
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_217:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_111
.label_341:
	mov	bl, 0x62
	jmp	.label_185
.label_342:
	mov	cl, 0x74
	jmp	.label_130
.label_343:
	mov	bl, 0x76
	jmp	.label_185
.label_344:
	mov	bl, 0x66
	jmp	.label_185
.label_345:
	mov	cl, 0x72
	jmp	.label_130
.label_348:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_112
	cmp	byte ptr [rsp + 6], 0
	jne	.label_116
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
	jae	.label_120
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_120:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_212
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_212:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_136
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_136:
	add	r14, 3
	xor	r9d, r9d
.label_112:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_111
.label_349:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_141
	cmp	r12d, 2
	jne	.label_117
	cmp	byte ptr [rsp + 6], 0
	je	.label_117
	jmp	.label_116
.label_350:
	cmp	r12d, 2
	jne	.label_153
	cmp	byte ptr [rsp + 6], 0
	jne	.label_116
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_113
.label_125:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_162
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
.label_163:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_176
	test	r8b, r8b
	je	.label_176
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_111
.label_166:
	test	rsi, rsi
	jne	.label_149
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_149
.label_133:
	mov	dl, 1
.label_346:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_116
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_111:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_206
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_208
	jmp	.label_211
	.section	.text
	.align	16
	#Procedure 0x4029b4
	.globl sub_4029b4
	.type sub_4029b4, @function
sub_4029b4:

	nop	word ptr cs:[rax + rax]
.label_206:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_211
.label_208:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_218
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_113
	jmp	.label_110
	.section	.text
	.align	16
	#Procedure 0x4029fd
	.globl sub_4029fd
	.type sub_4029fd, @function
sub_4029fd:

	nop	dword ptr [rax]
.label_211:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_110
	jmp	.label_113
.label_218:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_110
.label_173:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_115
	xor	r15d, r15d
	jmp	.label_117
.label_153:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_130
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_113
.label_130:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_116
.label_185:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_111
	nop	word ptr cs:[rax + rax]
.label_110:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_147
	cmp	r12d, 2
	jne	.label_139
	mov	eax, r9d
	and	al, 1
	jne	.label_139
	cmp	r14, r11
	jae	.label_180
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_180:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_144
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_144:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_177
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_177:
	add	r14, 3
	mov	r9b, 1
.label_139:
	cmp	r14, r11
	jae	.label_156
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_156:
	inc	r14
	jmp	.label_160
.label_162:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_164
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_164:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_189:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_183
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_187
	cmp	rbp, -2
	je	.label_192
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_198
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_154:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_216
	bt	rsi, rdx
	jb	.label_210
.label_216:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_154
.label_198:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_190
	xor	r13d, r13d
.label_190:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_189
	jmp	.label_163
.label_201:
	xor	r13d, r13d
	jmp	.label_111
.label_149:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_111
.label_141:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_117
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_117
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_117
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_126
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_150
	cmp	byte ptr [rsp + 6], 0
	jne	.label_134
	cmp	r14, r11
	jae	.label_165
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_165:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_170
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_170:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_142
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_142:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_222
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_222:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_111
.label_117:
	xor	eax, eax
.label_167:
	xor	r13d, r13d
	jmp	.label_111
.label_176:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_161
	.section	.text
	.align	16
	#Procedure 0x402ce2
	.globl sub_402ce2
	.type sub_402ce2, @function
sub_402ce2:

	nop	word ptr cs:[rax + rax]
.label_118:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_161:
	test	r8b, r8b
	je	.label_168
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_169
	cmp	r14, r11
	jae	.label_171
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_171:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_169
	.section	.text
	.align	16
	#Procedure 0x402d2c
	.globl sub_402d2c
	.type sub_402d2c, @function
sub_402d2c:

	nop	dword ptr [rax]
.label_168:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_157
	cmp	r12d, 2
	jne	.label_182
	mov	eax, r9d
	and	al, 1
	jne	.label_182
	cmp	r14, r11
	jae	.label_186
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_186:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_188
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_188:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_195
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_195:
	add	r14, 3
	mov	r9b, 1
.label_182:
	cmp	r14, r11
	jae	.label_151
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_151:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_204
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_204:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_209
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_209:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_169:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_113
	test	r9b, 1
	je	.label_221
	mov	ebx, eax
	and	bl, 1
	jne	.label_221
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_228
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_228:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_199
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_199:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_221:
	cmp	r14, r11
	jae	.label_118
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_118
	.section	.text
	.align	16
	#Procedure 0x402e33
	.globl sub_402e33
	.type sub_402e33, @function
sub_402e33:

	nop	word ptr cs:[rax + rax]
.label_113:
	test	r9b, 1
	je	.label_128
	and	al, 1
	jne	.label_128
	cmp	r14, r11
	jae	.label_129
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_129:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_226
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_226:
	add	r14, 2
	xor	r9d, r9d
.label_128:
	mov	ebx, r15d
.label_160:
	cmp	r14, r11
	jae	.label_131
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_131:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_115
.label_187:
	xor	r13d, r13d
.label_183:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_163
.label_192:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_207
	mov	rsi, qword ptr [rsp + 0x58]
.label_159:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_224
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_159
	xor	r13d, r13d
	jmp	.label_163
.label_207:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_163
.label_224:
	xor	r13d, r13d
	jmp	.label_163
.label_126:
	xor	r13d, r13d
	jmp	.label_111
.label_150:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_111
	.section	.text
	.align	16
	#Procedure 0x402f08
	.globl sub_402f08
	.type sub_402f08, @function
sub_402f08:

	nop	dword ptr [rax + rax]
.label_214:
	mov	rcx, rsi
.label_220:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_172
	or	al, dl
	je	.label_175
.label_172:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_179
	or	al, dl
	jne	.label_179
	test	r10b, 1
	jne	.label_191
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_179
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_196
.label_179:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_202
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_205
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_205
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_219:
	cmp	r14, r11
	jae	.label_215
	mov	byte ptr [rcx + r14], al
.label_215:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_219
	jmp	.label_205
.label_147:
	mov	qword ptr [rsp + 0x20], rbp
.label_157:
	mov	rdx, rdi
	jmp	.label_132
.label_116:
	mov	qword ptr [rsp + 0x20], rbp
.label_210:
	mov	rdx, rdi
	mov	eax, 2
.label_119:
	mov	qword ptr [rsp + 0x38], rax
.label_132:
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
.label_145:
	mov	r14, rax
.label_148:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_175:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_132
.label_191:
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
	jmp	.label_145
.label_202:
	mov	rcx, qword ptr [rsp + 8]
.label_205:
	cmp	r14, r11
	jae	.label_148
	mov	byte ptr [rcx + r14], 0
	jmp	.label_148
.label_134:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_119
.label_194:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4030c7
	.globl sub_4030c7
	.type sub_4030c7, @function
sub_4030c7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4030d0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_35]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_36]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_37]
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
	#Procedure 0x403125
	.globl sub_403125
	.type sub_403125, @function
sub_403125:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403130
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40313a
	.globl sub_40313a
	.type sub_40313a, @function
sub_40313a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403140

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_229
	test	rbx, rbx
	jne	.label_229
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_231:
	call	xalloc_die
.label_229:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_230
	test	rax, rax
	je	.label_231
.label_230:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403170

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_242
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_244
.label_242:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_244:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_232
	cmp	r10d, 0x29
	jae	.label_241
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_243
.label_241:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_243:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_232
	cmp	r10d, 0x29
	jae	.label_239
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_240
.label_239:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_240:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_232
	cmp	r10d, 0x29
	jae	.label_237
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_238
.label_237:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_238:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_232
	cmp	r10d, 0x29
	jae	.label_235
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_236
.label_235:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_236:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_232
	cmp	r10d, 0x29
	jae	.label_233
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_234
.label_233:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_234:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_232
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_232
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_232
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_232
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_232:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x403352
	.globl sub_403352
	.type sub_403352, @function
sub_403352:

	nop	word ptr cs:[rax + rax]
.label_251:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403365
	.globl sub_403365
	.type sub_403365, @function
sub_403365:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40336e
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_247
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_250
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_246
.label_250:
	call	xalloc_die
.label_247:
	test	rcx, rcx
	jne	.label_245
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_245:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_251
.label_246:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_248
	test	rbx, rbx
	jne	.label_248
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_248:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_249
	test	rax, rax
	je	.label_250
.label_249:
	pop	rbx
	ret	
.label_254:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_252
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_255
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_73
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_253:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x40344c

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_257
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_254
	cmp	dword ptr [rbp], 0x20
	jne	.label_254
.label_257:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_253
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_255:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_256
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
	#Procedure 0x4034c0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_258
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_259
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_261
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_66
	mov	ecx, OFFSET FLAT:label_89
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_260
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x403534
	.globl sub_403534
	.type sub_403534, @function
sub_403534:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403540
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_35]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_36]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_37]
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
	#Procedure 0x4035ae
	.globl sub_4035ae
	.type sub_4035ae, @function
sub_4035ae:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4035b0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4035be
	.globl sub_4035be
	.type sub_4035be, @function
sub_4035be:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4035c0

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
	js	.label_262
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_265
	cmp	r12d, 0x7fffffff
	je	.label_267
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
	jne	.label_263
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_263:
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
.label_265:
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
	jbe	.label_268
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_264
.label_268:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_266
	mov	rdi, r14
	call	free
.label_266:
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
.label_264:
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
.label_262:
	call	abort
.label_267:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40377d
	.globl sub_40377d
	.type sub_40377d, @function
sub_40377d:

	nop	dword ptr [rax]
.label_269:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403785
	.globl sub_403785
	.type sub_403785, @function
sub_403785:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403793
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
	je	.label_270
	test	r15, r15
	je	.label_269
.label_270:
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
	#Procedure 0x4037d0

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
	je	.label_271
	cmp	r15, -2
	jb	.label_271
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_271
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_271:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x403826
	.globl sub_403826
	.type sub_403826, @function
sub_403826:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403830

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_272
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_272
	test	byte ptr [rbx + 1], 1
	je	.label_272
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_272:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x403863
	.globl sub_403863
	.type sub_403863, @function
sub_403863:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403870

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_274
	cmp	byte ptr [rax], 0x43
	jne	.label_276
	cmp	byte ptr [rax + 1], 0
	je	.label_273
.label_276:
	mov	esi, OFFSET FLAT:label_275
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_274
.label_273:
	xor	ebx, ebx
.label_274:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4038a1
	.globl sub_4038a1
	.type sub_4038a1, @function
sub_4038a1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4038b0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4038ba
	.globl sub_4038ba
	.type sub_4038ba, @function
sub_4038ba:

	nop	word ptr [rax + rax]
.label_278:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_277
	call	__errno_location
	mov	dword ptr [rax], 0
.label_277:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4038db

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
	jne	.label_278
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_277
	test	cl, cl
	jne	.label_277
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_277
.label_279:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403925
	.globl sub_403925
	.type sub_403925, @function
sub_403925:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40392d
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
	je	.label_279
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
.label_280:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403995
	.globl sub_403995
	.type sub_403995, @function
sub_403995:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40399d
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
	je	.label_280
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
	#Procedure 0x403a00

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_281
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_283
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_285
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_283
	mov	esi, OFFSET FLAT:label_284
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_286
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_286:
	mov	rbx, r14
.label_283:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_281:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_282
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403aa1
	.globl sub_403aa1
	.type sub_403aa1, @function
sub_403aa1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ab0
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
	#Procedure 0x403ac8
	.globl sub_403ac8
	.type sub_403ac8, @function
sub_403ac8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ad0
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
	#Procedure 0x403adf
	.globl sub_403adf
	.type sub_403adf, @function
sub_403adf:

	nop	
.label_288:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_287
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_287:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403b14
	.globl sub_403b14
	.type sub_403b14, @function
sub_403b14:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403b16

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
	je	.label_288
.label_289:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	16
	#Procedure 0x403b50
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
	je	.label_290
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
.label_290:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403be5
	.globl sub_403be5
	.type sub_403be5, @function
sub_403be5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403bf0
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
	#Procedure 0x403bff
	.globl sub_403bff
	.type sub_403bff, @function
sub_403bff:

	nop	
.label_291:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403c05
	.globl sub_403c05
	.type sub_403c05, @function
sub_403c05:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403c0f
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_291
	call	rpl_calloc
	test	rax, rax
	je	.label_291
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403c30
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
	je	.label_292
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
.label_292:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403c91
	.globl sub_403c91
	.type sub_403c91, @function
sub_403c91:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ca0
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
	je	.label_293
	mov	qword ptr [rax], rbx
.label_293:
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
	#Procedure 0x403d8c
	.globl sub_403d8c
	.type sub_403d8c, @function
sub_403d8c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403d90
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
	#Procedure 0x403dc3
	.globl sub_403dc3
	.type sub_403dc3, @function
sub_403dc3:

	nop	word ptr cs:[rax + rax]
.label_297:
	call	xalloc_die
.label_295:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_297
	mov	qword ptr [rsi], rbx
.label_294:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_296
	test	rax, rax
	je	.label_297
.label_296:
	pop	rbx
	ret	
.label_298:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403e02
	.globl sub_403e02
	.type sub_403e02, @function
sub_403e02:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e0e
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_295
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_298
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_294
	call	free
	xor	eax, eax
	jmp	.label_296
	.section	.text
	.align	16
	#Procedure 0x403e40

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_299
	test	rsi, rsi
	mov	ecx, 1
	je	.label_300
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_300
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_299:
	mov	ecx, 1
.label_300:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x403e8b
	.globl sub_403e8b
	.type sub_403e8b, @function
sub_403e8b:

	nop	dword ptr [rax + rax]
.label_301:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403e95
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_35]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_36]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_37]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_301
	test	rsi, rsi
	je	.label_301
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
	#Procedure 0x403f00
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_302
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_303
	test	rax, rax
	je	.label_302
.label_303:
	pop	rbx
	ret	
.label_302:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403f35
	.globl sub_403f35
	.type sub_403f35, @function
sub_403f35:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f40
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_304
	test	rax, rax
	je	.label_305
.label_304:
	pop	rbx
	ret	
.label_305:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403f5a
	.globl sub_403f5a
	.type sub_403f5a, @function
sub_403f5a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f60
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
	#Procedure 0x403f96
	.globl sub_403f96
	.type sub_403f96, @function
sub_403f96:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403fa0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_52
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_306
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403fc5
	.globl sub_403fc5
	.type sub_403fc5, @function
sub_403fc5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403fd0
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
	#Procedure 0x403fe9
	.globl sub_403fe9
	.type sub_403fe9, @function
sub_403fe9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403ff0
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
	#Procedure 0x404065
	.globl sub_404065
	.type sub_404065, @function
sub_404065:

	nop	word ptr cs:[rax + rax]
.label_307:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404075
	.globl sub_404075
	.type sub_404075, @function
sub_404075:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404079
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_35]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_36]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_37]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_307
	test	rsi, rsi
	je	.label_307
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
	#Procedure 0x4040e0
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4040f1
	.globl sub_4040f1
	.type sub_4040f1, @function
sub_4040f1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404165
	.globl sub_404165
	.type sub_404165, @function
sub_404165:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404172
	.globl sub_404172
	.type sub_404172, @function
sub_404172:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404196
	.globl sub_404196
	.type sub_404196, @function
sub_404196:

	nop	word ptr cs:[rax + rax]
