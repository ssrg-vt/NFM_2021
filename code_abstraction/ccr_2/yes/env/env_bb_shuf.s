	.section	.text
	.align	32
	#Procedure 0x401989
	.globl sub_401989
	.type sub_401989, @function
sub_401989:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x40198a
	.globl sub_40198a
	.type sub_40198a, @function
sub_40198a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4019c2
	.globl sub_4019c2
	.type sub_4019c2, @function
sub_4019c2:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401a0a
	.globl sub_401a0a
	.type sub_401a0a, @function
sub_401a0a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401a2c
	.globl sub_401a2c
	.type sub_401a2c, @function
sub_401a2c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401a3d
	.globl sub_401a3d
	.type sub_401a3d, @function
sub_401a3d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401a56
	.globl sub_401a56
	.type sub_401a56, @function
sub_401a56:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401a60

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_10
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_10:
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
	#Procedure 0x401ae3
	.globl sub_401ae3
	.type sub_401ae3, @function
sub_401ae3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401af0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x401afa
	.globl sub_401afa
	.type sub_401afa, @function
sub_401afa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b00

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
	je	.label_11
	cmp	r15, -2
	jb	.label_11
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_11
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_11:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x401b56
	.globl sub_401b56
	.type sub_401b56, @function
sub_401b56:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b60

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
	je	.label_24
	mov	edx, OFFSET FLAT:label_15
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_21
.label_24:
	mov	edx, OFFSET FLAT:label_22
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_21:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_26
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
	mov	esi, OFFSET FLAT:label_23
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_27
	jmp	qword ptr [(r12 * 8) + label_28]
.label_663:
	add	rsp, 8
	jmp	.label_14
.label_27:
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
	push	qword ptr [r15 + 0x40]
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
	jmp	.label_14
.label_664:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_13
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
.label_665:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_19
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
.label_666:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_16
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
.label_667:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_30
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
	jmp	.label_14
.label_668:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_29
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
	jmp	.label_14
.label_669:
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
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x28
	jmp	.label_14
.label_670:
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
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x28
	jmp	.label_14
.label_672:
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
	jmp	.label_14
.label_671:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_25
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
.label_14:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x401eb8
	.globl sub_401eb8
	.type sub_401eb8, @function
sub_401eb8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ec0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_31
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_33
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_35
	call	free
	xor	eax, eax
	jmp	.label_34
.label_33:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401ef7
	.globl sub_401ef7
	.type sub_401ef7, @function
sub_401ef7:

	nop	word ptr cs:[rax + rax]
.label_31:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_32
	mov	qword ptr [rsi], rbx
.label_35:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_34
	test	rax, rax
	je	.label_32
.label_34:
	pop	rbx
	ret	
.label_32:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401f30
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_36
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_37
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_39
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_40
	mov	ecx, OFFSET FLAT:label_41
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_38
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x401fa4
	.globl sub_401fa4
	.type sub_401fa4, @function
sub_401fa4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401fb0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_42]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_43]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_44]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_45
	test	rsi, rsi
	je	.label_45
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
.label_45:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40201c
	.globl sub_40201c
	.type sub_40201c, @function
sub_40201c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402020
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_46
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_48
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_47
.label_48:
	call	xalloc_die
.label_51:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402057
	.globl sub_402057
	.type sub_402057, @function
sub_402057:

	nop	word ptr [rax + rax]
.label_49:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_50
	test	rax, rax
	je	.label_48
.label_50:
	pop	rbx
	ret	
.label_46:
	test	rcx, rcx
	jne	.label_52
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_52:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_51
.label_47:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_49
	test	rbx, rbx
	jne	.label_49
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4020c0
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
	#Procedure 0x4020cf
	.globl sub_4020cf
	.type sub_4020cf, @function
sub_4020cf:

	nop	
.label_53:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4020d5
	.globl sub_4020d5
	.type sub_4020d5, @function
sub_4020d5:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4020db
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_54
	test	rax, rax
	je	.label_53
.label_54:
	pop	rbx
	ret	
.label_59:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x4020fb

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_57
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_55
	cmp	dword ptr [rbp], 0x20
	jne	.label_55
.label_57:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_59
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_55:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_61
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_58
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_60
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_58:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_56
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
	#Procedure 0x4021b0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_42]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_43]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_44]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_62
	test	rdx, rdx
	je	.label_62
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_62:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40221e
	.globl sub_40221e
	.type sub_40221e, @function
sub_40221e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402220

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_63
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_63
	test	byte ptr [rbx + 1], 1
	je	.label_63
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_63:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x402253
	.globl sub_402253
	.type sub_402253, @function
sub_402253:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402260
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
	#Procedure 0x402293
	.globl sub_402293
	.type sub_402293, @function
sub_402293:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4022a0

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
.label_71:
	mov	edx, eax
	cmp	dword ptr [rcx], ebp
	je	.label_64
	lea	esi, [rdx + 1]
	cmp	dword ptr [rcx + 0xc], ebp
	je	.label_67
	lea	esi, [rdx + 2]
	cmp	dword ptr [rcx + 0x18], ebp
	je	.label_67
	add	edx, 3
	cmp	dword ptr [rcx + 0x24], ebp
	mov	rsi, rdx
	je	.label_67
	cmp	dword ptr [rcx + 0x30], ebp
	je	.label_69
	add	rax, 5
	add	rcx, 0x3c
	cmp	eax, 0x23
	jb	.label_71
	call	__libc_current_sigrtmin
	mov	r14d, eax
	call	__libc_current_sigrtmax
	cmp	r14d, ebp
	mov	ebx, 0xffffffff
	jg	.label_65
	cmp	eax, ebp
	jl	.label_65
	mov	ecx, eax
	sub	ecx, r14d
	mov	edx, ecx
	shr	edx, 0x1f
	add	edx, ecx
	sar	edx, 1
	add	edx, r14d
	cmp	edx, ebp
	jge	.label_68
	mov	word ptr [r15 + 4], 0x58
	mov	dword ptr [r15], 0x414d5452
	mov	r14d, eax
	jmp	.label_70
.label_64:
	mov	rsi, rdx
	jmp	.label_67
.label_69:
	add	rax, 4
	mov	rsi, rax
.label_67:
	lea	rax, [rsi + rsi*2]
	lea	rsi, qword ptr [(rax * 4) + label_66]
	mov	rdi, r15
	call	strcpy
	xor	ebx, ebx
.label_65:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_68:
	mov	word ptr [r15 + 4], 0x4e
	mov	dword ptr [r15], 0x494d5452
.label_70:
	xor	ebx, ebx
	sub	ebp, r14d
	je	.label_65
	add	r15, 5
	xor	ebx, ebx
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_72
	xor	eax, eax
	mov	rdi, r15
	mov	r8d, ebp
	call	__sprintf_chk
	jmp	.label_65
	.section	.text
	.align	32
	#Procedure 0x4023a0

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
	je	.label_73
	test	r15, r15
	je	.label_74
.label_73:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_74:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4023dc
	.globl sub_4023dc
	.type sub_4023dc, @function
sub_4023dc:

	nop	dword ptr [rax]
.label_75:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4023e5
	.globl sub_4023e5
	.type sub_4023e5, @function
sub_4023e5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4023f3

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
	je	.label_76
	test	r15, r15
	je	.label_75
.label_76:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_82:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_80
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402450
	.globl sub_402450
	.type sub_402450, @function
sub_402450:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40245f

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_82
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_77
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_79
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_77
	mov	esi, OFFSET FLAT:label_78
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_81
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_81:
	mov	rbx, r14
.label_77:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x4024e0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_83
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_84
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402505
	.globl sub_402505
	.type sub_402505, @function
sub_402505:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402510

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x198
	mov	r15, rsi
	mov	r13d, edi
	mov	rdi, qword ptr [r15]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_83
	call	setlocale
	mov	edi, OFFSET FLAT:label_201
	mov	esi, OFFSET FLAT:label_202
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_201
	call	textdomain
	mov	dword ptr [rip + exit_failure],  0x7d
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	edi, 0x104
	call	xmalloc
	mov	qword ptr [rip + signals],  rax
	xor	esi, esi
	mov	edx, 0x104
	mov	rdi, rax
	call	memset
	xor	r14d, r14d
	xor	eax, eax
	mov	qword ptr [rsp + 0x48], rax
	xor	eax, eax
	jmp	.label_96
	.section	.text
	.align	32
	#Procedure 0x402599
	.globl sub_402599
	.type sub_402599, @function
sub_402599:

	nop	dword ptr [rax]
.label_85:
	mov	al, byte ptr [rsp + 0xd]
.label_96:
	mov	ebp, eax
	mov	edx, OFFSET FLAT:shortopts
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, r13d
	mov	rsi, r15
	call	getopt_long
	mov	ebx, eax
	cmp	ebx, 8
	jle	.label_235
	mov	byte ptr [rsp + 0xd], bpl
	lea	ecx, [rbx - 0x20]
	cmp	ecx, 0x63
	ja	.label_154
	mov	al, 1
	jmp	qword ptr [(rcx * 8) + label_247]
.label_652:
	mov	al, 1
	mov	qword ptr [rsp + 0x48], rax
	jmp	.label_85
.label_653:
	mov	r14, qword ptr [rip + optarg]
	jmp	.label_85
.label_654:
	mov	r12, qword ptr [rip + optarg]
	call	__ctype_b_loc
	mov	rcx, rax
	mov	rax, qword ptr [rcx]
	dec	r12
	nop	word ptr [rax + rax]
.label_120:
	movsx	rbp, byte ptr [r12 + 1]
	inc	r12
	movzx	ebx, word ptr [rax + rbp*2]
	test	bh, 0x20
	jne	.label_120
	test	bpl, bpl
	mov	al, byte ptr [rsp + 0xd]
	je	.label_96
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 0x28], r14
	mov	qword ptr [rsp + 0x18], r13
	mov	qword ptr [rsp + 0x20], r15
	test	r12, r12
	je	.label_102
	mov	eax, dword ptr [rip + optind]
	mov	dword ptr [rsp + 0x38], eax
	mov	rdi, r12
	call	strlen
	inc	rax
	mov	qword ptr [rsp + 0x30], rax
	xor	eax, eax
	mov	r14d, 1
	mov	r13, r12
	xor	edi, edi
	xor	esi, esi
	xor	r9d, r9d
	mov	r8, qword ptr [rsp + 0x10]
	jmp	.label_119
	.section	.text
	.align	32
	#Procedure 0x40267f
	.globl sub_40267f
	.type sub_40267f, @function
sub_40267f:

	nop	
.label_214:
	movzx	eax, r15b
	inc	r13
	mov	rcx, qword ptr [r8]
	mov	bx, word ptr [rcx + rbp*2]
.label_119:
	mov	edx, r14d
	and	ebx, 0xe000
	shr	ebx, 0xd
	mov	ecx, esi
	or	cl, dil
	and	cl, 1
	sete	r15b
	and	r15b, bl
	cmovne	eax, r9d
	mov	r14d, eax
	add	r14d, edx
	movsx	eax, bpl
	cmp	eax, 0x26
	jg	.label_135
	cmp	eax, 0x22
	je	.label_156
	cmp	eax, 0x24
	jne	.label_157
	test	dil, 1
	jne	.label_157
	mov	ebp, esi
	mov	ebx, edi
	mov	rdi, r13
	call	extract_varname
	test	rax, rax
	je	.label_171
	mov	rdi, rax
	call	getenv
	test	rax, rax
	je	.label_176
	mov	rdi, rax
	call	strlen
	add	qword ptr [rsp + 0x30], rax
.label_176:
	xor	r9d, r9d
	mov	r8, qword ptr [rsp + 0x10]
	mov	edi, ebx
	mov	esi, ebp
	jmp	.label_157
	.section	.text
	.align	32
	#Procedure 0x402711
	.globl sub_402711
	.type sub_402711, @function
sub_402711:

	nop	word ptr cs:[rax + rax]
.label_135:
	cmp	eax, 0x5c
	je	.label_192
	cmp	eax, 0x27
	jne	.label_157
	and	dil, sil
	test	dil, 1
	jne	.label_194
	xor	cl, 1
	mov	dil, cl
	jmp	.label_157
.label_156:
	and	sil, dil
	test	sil, 1
	jne	.label_203
	xor	cl, 1
	mov	sil, cl
	jmp	.label_157
.label_192:
	movsx	ebp, byte ptr [r13 + 1]
	test	sil, 1
	je	.label_208
	cmp	bpl, 0x63
	je	.label_213
.label_208:
	movzx	eax, bpl
	cmp	al, 0x76
	ja	.label_215
	jmp	qword ptr [(rax * 8) + label_180]
	.section	.text
	.align	32
	#Procedure 0x40277c

	.globl sub_40277c
	.type sub_40277c, @function
sub_40277c:
	inc	r13
	xor	eax, eax
	cmp	bpl, 0x5f
	sete	al
	add	r14d, eax
	nop	dword ptr [rax + rax]
.label_157:
	movsx	rbp, byte ptr [r13 + 1]
	test	rbp, rbp
	jne	.label_214
	or	dil, sil
	test	dil, 1
	jne	.label_229
	mov	rdi, qword ptr [rsp + 0x30]
	add	rdi, 7
	call	xmalloc
	mov	rbx, rax
	mov	rax, qword ptr [rsp + 0x18]
	lea	eax, [rax + 2]
	sub	eax, dword ptr [rsp + 0x38]
	add	eax, r14d
	movsxd	rdi, eax
	shl	rdi, 3
	call	xmalloc
	mov	rsi, rbx
	mov	rdi, rax
	mov	word ptr [rsi + 4], 0x59
	mov	dword ptr [rsi], 0x4d4d5544
	lea	r10, [rdi + 8]
	mov	qword ptr [rdi], rsi
	add	rsi, 6
	mov	cl, byte ptr [r12]
	test	cl, cl
	je	.label_245
	mov	bpl, 1
	xor	r9d, r9d
	mov	r15, r12
	xor	r11d, r11d
	mov	r8, r10
.label_258:
	mov	ebx, r11d
	and	bl, 1
.label_166:
	mov	r13d, r9d
	or	r13b, r11b
	and	r13b, 1
	mov	r14d, r9d
	and	r14b, 1
	mov	rax, r15
	jmp	.label_94
.label_248:
	mov	ecx, edx
	add	cl, 0xde
	cmp	cl, 3
	jae	.label_101
	mov	ecx, edx
	jmp	.label_97
.label_101:
	cmp	dl, 0x63
	je	.label_107
	movsx	edx, dl
	add	edx, -0x66
	cmp	edx, 0x10
	ja	.label_110
	mov	cl, 0xc
	jmp	qword ptr [(rdx * 8) + label_232]
.label_599:
	mov	cl, 0xa
	jmp	.label_97
.label_177:
	cmp	byte ptr [rip + dev_debug],  1
	jne	.label_123
	mov	rdi, qword ptr [rip + stderr]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_95
	xor	eax, eax
	mov	rcx, rbx
	call	__fprintf_chk
.label_123:
	mov	esi, 0x7d
	mov	rdi, r15
	call	strchr
	mov	r10, qword ptr [rsp + 0x30]
	mov	rsi, r14
	mov	r8, qword ptr [rsp + 0x10]
	mov	bl, byte ptr [rsp + 0xe]
	mov	rdi, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x44]
	mov	r11d, dword ptr [rsp + 0x40]
	mov	r14b, byte ptr [rsp + 0xf]
	jmp	.label_225
.label_600:
	mov	cl, 0xd
	jmp	.label_97
.label_601:
	mov	cl, 9
	jmp	.label_97
.label_602:
	mov	cl, 0xb
	jmp	.label_97
	.section	.text
	.align	32
	#Procedure 0x4028d7
	.globl sub_4028d7
	.type sub_4028d7, @function
sub_4028d7:

	nop	word ptr [rax + rax]
.label_94:
	mov	r15, rax
	nop	word ptr cs:[rax + rax]
.label_195:
	movsx	eax, cl
	lea	edx, [rax - 9]
	cmp	edx, 0x1e
	ja	.label_231
	mov	rax, r15
	jmp	qword ptr [(rdx * 8) + label_181]
.label_533:
	test	r13b, r13b
	je	.label_186
	jmp	.label_139
	.section	.text
	.align	32
	#Procedure 0x40290f
	.globl sub_40290f
	.type sub_40290f, @function
sub_40290f:

	nop	
.label_141:
	movzx	ecx, byte ptr [r15 + 1]
	inc	r15
.label_186:
	movsx	eax, cl
	cmp	eax, 0x20
	je	.label_141
	cmp	eax, 9
	je	.label_141
	jmp	.label_223
	.section	.text
	.align	32
	#Procedure 0x402927
	.globl sub_402927
	.type sub_402927, @function
sub_402927:

	nop	word ptr [rax + rax]
.label_231:
	cmp	eax, 0x5c
	jne	.label_139
	mov	dl, byte ptr [r15 + 1]
	test	bl, bl
	je	.label_124
	cmp	dl, 0x5c
	je	.label_124
	cmp	dl, 0x27
	jne	.label_139
.label_124:
	lea	rax, [r15 + 1]
	cmp	dl, 0x27
	je	.label_207
	cmp	dl, 0x5c
	je	.label_207
	test	bl, bl
	je	.label_260
	cmp	dl, 0x5f
	je	.label_150
	jmp	.label_101
.label_260:
	cmp	dl, 0x5f
	jne	.label_248
.label_150:
	mov	cl, 0x20
	test	r14b, r14b
	jne	.label_97
	mov	cl, byte ptr [r15 + 2]
	add	r15, 2
.label_223:
	mov	bpl, 1
	test	cl, cl
	jne	.label_195
	jmp	.label_107
.label_207:
	mov	ecx, edx
	jmp	.label_97
.label_534:
	test	bl, bl
	jne	.label_139
	jmp	.label_160
.label_535:
	test	bpl, 1
	mov	rax, r15
	je	.label_97
	jmp	.label_107
.label_536:
	test	bl, bl
	jne	.label_139
	mov	byte ptr [rsp + 0xf], r14b
	mov	dword ptr [rsp + 0x40], r11d
	mov	dword ptr [rsp + 0x44], r9d
	mov	qword ptr [rsp + 0x38], rdi
	mov	byte ptr [rsp + 0xe], bl
	mov	qword ptr [rsp + 0x10], r8
	mov	r14, rsi
	mov	qword ptr [rsp + 0x30], r10
	mov	rdi, r15
	call	extract_varname
	mov	rbx, rax
	mov	rdi, rax
	call	getenv
	test	rax, rax
	je	.label_177
	test	bpl, 1
	je	.label_87
	mov	byte ptr [r14], 0
	inc	r14
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [rcx], r14
	add	rcx, 8
	mov	qword ptr [rsp + 0x10], rcx
	xor	ebp, ebp
.label_87:
	cmp	byte ptr [rip + dev_debug],  1
	jne	.label_100
	mov	rcx, qword ptr [rip + stderr]
	mov	qword ptr [rsp + 0x50], rcx
	mov	rdi, rax
	mov	qword ptr [rsp + 0x58], rax
	call	quote
	mov	r8, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_109
	xor	eax, eax
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rcx, rbx
	call	__fprintf_chk
	mov	rax, qword ptr [rsp + 0x58]
.label_100:
	mov	rdi, r14
	mov	rsi, rax
	call	stpcpy
	mov	r14, rax
	jmp	.label_123
.label_537:
	test	r14b, r14b
	je	.label_134
	nop	word ptr cs:[rax + rax]
.label_139:
	mov	rax, r15
.label_97:
	test	bpl, 1
	je	.label_219
	mov	byte ptr [rsi], 0
	inc	rsi
	mov	qword ptr [r8], rsi
	add	r8, 8
	xor	ebp, ebp
.label_219:
	mov	byte ptr [rsi], cl
	inc	rsi
.label_225:
	mov	cl, byte ptr [rax + 1]
	inc	rax
	test	cl, cl
	jne	.label_94
	jmp	.label_107
.label_160:
	test	bpl, 1
	je	.label_198
	mov	byte ptr [rsi], 0
	inc	rsi
	mov	qword ptr [r8], rsi
	add	r8, 8
	xor	ebp, ebp
.label_198:
	xor	r14b, 1
	mov	cl, byte ptr [r15 + 1]
	inc	r15
	test	cl, cl
	mov	r9b, r14b
	jne	.label_166
	jmp	.label_107
.label_134:
	test	bpl, 1
	je	.label_222
	mov	byte ptr [rsi], 0
	inc	rsi
	mov	qword ptr [r8], rsi
	add	r8, 8
	xor	ebp, ebp
.label_222:
	xor	bl, 1
	mov	cl, byte ptr [r15 + 1]
	inc	r15
	test	cl, cl
	mov	r11b, bl
	jne	.label_258
	jmp	.label_107
.label_655:
	mov	rbp, qword ptr [rip + optarg]
	mov	rsi, qword ptr [rip + usvars_used]
	cmp	rsi, qword ptr [rip + usvars_alloc]
	jne	.label_191
	mov	rdi, qword ptr [rip + usvars]
	test	rdi, rdi
	je	.label_200
	movabs	rax, 0xaaaaaaaaaaaaaaa
	cmp	rsi, rax
	jae	.label_206
	mov	rax, rsi
	shr	rax, 1
	lea	rsi, [rsi + rax + 1]
	mov	bl, byte ptr [rsp + 0xd]
	jmp	.label_212
.label_657:
	mov	rdi, qword ptr [rip + optarg]
	mov	esi, 1
	call	parse_signal_action_params
	mov	rdi, qword ptr [rip + optarg]
	xor	esi, esi
	call	parse_block_signal_params
	jmp	.label_85
.label_659:
	mov	rdi, qword ptr [rip + optarg]
	mov	esi, 1
	call	parse_block_signal_params
	jmp	.label_85
.label_660:
	mov	byte ptr [rip + report_signal_handling],  1
	jmp	.label_85
.label_656:
	mov	byte ptr [rip + dev_debug],  1
	jmp	.label_85
.label_658:
	mov	rdi, qword ptr [rip + optarg]
	xor	esi, esi
	call	parse_signal_action_params
	jmp	.label_85
.label_191:
	mov	rax, qword ptr [rip + usvars]
	mov	bl, byte ptr [rsp + 0xd]
	jmp	.label_244
.label_200:
	test	rsi, rsi
	mov	eax, 0x10
	cmove	rsi, rax
	mov	rax, rsi
	shr	rax, 0x3c
	mov	bl, byte ptr [rsp + 0xd]
	jne	.label_251
.label_212:
	mov	qword ptr [rip + usvars_alloc],  rsi
	shl	rsi, 3
	call	xrealloc
	mov	qword ptr [rip + usvars],  rax
	mov	rsi, qword ptr [rip + usvars_used]
.label_244:
	lea	rcx, [rsi + 1]
	mov	qword ptr [rip + usvars_used],  rcx
	mov	qword ptr [rax + rsi*8], rbp
	mov	al, bl
	jmp	.label_96
.label_245:
	mov	r8, r10
.label_107:
	mov	byte ptr [rsi], 0
	mov	qword ptr [r8], 0
	mov	r14, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [r14]
	mov	qword ptr [rdi], rax
	cmp	byte ptr [rip + dev_debug],  1
	mov	rax, rdi
	mov	r15, qword ptr [rsp + 0x18]
	jne	.label_105
	cmp	qword ptr [r10], 0
	mov	rax, rdi
	je	.label_105
	mov	r13, rdi
	mov	rbp, qword ptr [rip + stderr]
	mov	rdi, r12
	mov	r12, r10
	call	quote
	mov	rcx, rax
	xor	ebx, ebx
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_174
	xor	eax, eax
	mov	rdi, rbp
	call	__fprintf_chk
	mov	r10, r12
	cmp	byte ptr [rip + dev_debug],  1
	mov	rbp, r10
	jne	.label_136
	mov	rbx, qword ptr [rip + stderr]
	mov	rax, r13
	mov	rbp, rax
	add	rbp, 0x10
	mov	rdi, qword ptr [rax + 8]
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_125
	jmp	.label_126
	.section	.text
	.align	32
	#Procedure 0x402ccc
	.globl sub_402ccc
	.type sub_402ccc, @function
sub_402ccc:

	nop	dword ptr [rax]
.label_105:
	lea	rbp, [rax + 8]
	cmp	qword ptr [rax + 8], 0
	mov	rax, rbp
	jne	.label_105
	jmp	.label_170
.label_126:
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	bl, byte ptr [rip + dev_debug]
	mov	r10, r12
.label_136:
	mov	rdi, qword ptr [rbp]
	test	rdi, rdi
	je	.label_178
	test	bl, 1
	je	.label_103
	mov	rbx, qword ptr [rip + stderr]
	add	rbp, 8
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_188
	jmp	.label_126
.label_178:
	mov	rdi, r13
.label_170:
	movsxd	rdx, dword ptr [rip + optind]
	cmp	edx, r15d
	jge	.label_93
	mov	r9, rdi
	movsxd	rdi, r15d
	mov	rax, rdi
	sub	rax, rdx
	lea	rsi, [rdi - 1]
	sub	rsi, rdx
	mov	ecx, eax
	and	ecx, 7
	cmp	rsi, 7
	mov	r8b, byte ptr [rsp + 0xd]
	jae	.label_197
	mov	rsi, rbp
	jmp	.label_209
.label_93:
	mov	r8b, byte ptr [rsp + 0xd]
	jmp	.label_210
.label_197:
	sub	rdi, rcx
	mov	rsi, rbp
	nop	dword ptr [rax + rax]
.label_218:
	mov	rbx, qword ptr [r14 + rdx*8]
	mov	qword ptr [rsi], rbx
	mov	rbx, qword ptr [r14 + rdx*8 + 8]
	mov	qword ptr [rsi + 8], rbx
	mov	rbx, qword ptr [r14 + rdx*8 + 0x10]
	mov	qword ptr [rsi + 0x10], rbx
	mov	rbx, qword ptr [r14 + rdx*8 + 0x18]
	mov	qword ptr [rsi + 0x18], rbx
	mov	rbx, qword ptr [r14 + rdx*8 + 0x20]
	mov	qword ptr [rsi + 0x20], rbx
	mov	rbx, qword ptr [r14 + rdx*8 + 0x28]
	mov	qword ptr [rsi + 0x28], rbx
	mov	rbx, qword ptr [r14 + rdx*8 + 0x30]
	mov	qword ptr [rsi + 0x30], rbx
	mov	rbx, qword ptr [r14 + rdx*8 + 0x38]
	mov	qword ptr [rsi + 0x38], rbx
	add	rsi, 0x40
	add	rdx, 8
	cmp	rdi, rdx
	jne	.label_218
.label_209:
	test	rcx, rcx
	je	.label_240
	lea	rdx, [r14 + rdx*8]
	neg	rcx
	nop	
.label_241:
	mov	rdi, qword ptr [rdx]
	mov	qword ptr [rsi], rdi
	add	rsi, 8
	add	rdx, 8
	inc	rcx
	jne	.label_241
.label_240:
	lea	rbp, [rbp + rax*8]
	mov	rdi, r9
.label_210:
	mov	qword ptr [rbp], 0
	xor	r13d, r13d
	cmp	qword ptr [rdi], 0
	mov	r14, qword ptr [rsp + 0x28]
	je	.label_256
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_155:
	cmp	qword ptr [r10 + r13*8], 0
	lea	r13, [r13 + 1]
	jne	.label_155
.label_256:
	mov	dword ptr [rip + optind],  0
	mov	r15, rdi
	mov	al, r8b
	jmp	.label_96
.label_103:
	jmp	.label_103
.label_235:
	cmp	ebx, -1
	jne	.label_104
	movsxd	rax, dword ptr [rip + optind]
	cmp	eax, r13d
	jge	.label_106
	mov	rcx, qword ptr [r15 + rax*8]
	cmp	byte ptr [rcx], 0x2d
	jne	.label_106
	cmp	byte ptr [rcx + 1], 0
	je	.label_113
.label_106:
	test	bpl, bpl
	jne	.label_115
	cmp	qword ptr [rip + usvars_used],  0
	je	.label_117
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_152:
	cmp	byte ptr [rip + dev_debug],  1
	jne	.label_127
	mov	rdi, qword ptr [rip + stderr]
	mov	rax, qword ptr [rip + usvars]
	mov	rcx, qword ptr [rax + rbx*8]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_129
	xor	eax, eax
	call	__fprintf_chk
.label_127:
	mov	rax, qword ptr [rip + usvars]
	mov	rdi, qword ptr [rax + rbx*8]
	call	unsetenv
	test	eax, eax
	jne	.label_147
	inc	rbx
	cmp	rbx, qword ptr [rip + usvars_used]
	jb	.label_152
	jmp	.label_117
.label_113:
	inc	eax
	mov	dword ptr [rip + optind],  eax
.label_115:
	cmp	byte ptr [rip + dev_debug],  1
	jne	.label_161
	mov	rdi, qword ptr [rip + stderr]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_165
	xor	eax, eax
	call	__fprintf_chk
.label_161:
	mov	qword ptr [rip + __environ], OFFSET FLAT:main.dummy_environ
.label_117:
	mov	qword ptr [rsp + 0x28], r14
	mov	ebx, dword ptr [rip + optind]
	jmp	.label_179
	.section	.text
	.align	32
	#Procedure 0x402f03
	.globl sub_402f03
	.type sub_402f03, @function
sub_402f03:

	nop	word ptr cs:[rax + rax]
.label_221:
	mov	ebx, dword ptr [rip + optind]
	inc	ebx
	mov	dword ptr [rip + optind],  ebx
.label_179:
	cmp	ebx, r13d
	jge	.label_190
	movsxd	rax, ebx
	mov	rbp, qword ptr [r15 + rax*8]
	mov	esi, 0x3d
	mov	rdi, rbp
	call	strchr
	mov	r14, rax
	test	r14, r14
	je	.label_190
	cmp	byte ptr [rip + dev_debug],  1
	jne	.label_204
	mov	rdi, qword ptr [rip + stderr]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_238
	xor	eax, eax
	mov	rcx, rbp
	call	__fprintf_chk
	movsxd	rax, dword ptr [rip + optind]
	mov	rbp, qword ptr [r15 + rax*8]
.label_204:
	mov	rdi, rbp
	call	putenv
	test	eax, eax
	je	.label_221
	mov	byte ptr [r14], 0
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_224
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [r15 + rax*8]
	call	quote
.label_159:
	mov	rcx, rax
	mov	edi, 0x7d
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_190:
	mov	rcx, qword ptr [rsp + 0x48]
	test	cl, cl
	je	.label_236
	cmp	ebx, r13d
	jl	.label_239
.label_236:
	cmp	qword ptr [rsp + 0x28], 0
	sete	al
	cmp	ebx, r13d
	jl	.label_242
	test	al, al
	je	.label_250
.label_242:
	cmp	ebx, r13d
	jge	.label_255
	mov	qword ptr [rsp + 0x18], r13
	mov	qword ptr [rsp + 0x20], r15
	mov	ebx, 1
	lea	r13, [rsp + 0x80]
	lea	r15, [rsp + 0x60]
	nop	
.label_175:
	mov	rax, qword ptr [rip + signals]
	mov	r14d, dword ptr [rax + rbx*4]
	test	r14d, r14d
	je	.label_138
	mov	r12b, 1
	cmp	r14d, 2
	je	.label_98
	cmp	r14d, 4
	je	.label_98
	xor	r12d, r12d
.label_98:
	xor	esi, esi
	mov	edi, ebx
	mov	rdx, r13
	call	sigaction
	mov	ebp, eax
	test	ebp, ebp
	sete	al
	test	r12b, r12b
	jne	.label_108
	test	al, al
	je	.label_111
.label_108:
	dec	r14d
	test	ebp, ebp
	jne	.label_227
	xor	eax, eax
	cmp	r14d, 1
	seta	al
	mov	qword ptr [rsp + 0x80], rax
	xor	edx, edx
	mov	edi, ebx
	mov	rsi, r13
	call	sigaction
	mov	ebp, eax
	test	ebp, ebp
	sete	al
	or	r12b, al
	je	.label_130
.label_227:
	cmp	byte ptr [rip + dev_debug],  1
	jne	.label_138
	mov	edi, ebx
	mov	rsi, r15
	call	sig2str
	cmp	byte ptr [rip + dev_debug],  1
	jne	.label_138
	cmp	r14d, 2
	mov	rdi, qword ptr [rip + stderr]
	mov	r9d, OFFSET FLAT:label_122
	mov	eax, OFFSET FLAT:label_142
	cmovb	r9, rax
	test	ebp, ebp
	mov	ebp, OFFSET FLAT:label_83
	mov	eax, OFFSET FLAT:label_143
	cmovne	rbp, rax
	sub	rsp, 8
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_144
	xor	eax, eax
	mov	rcx, r15
	mov	r8d, ebx
	push	rbp
	call	__fprintf_chk
	add	rsp, 0x10
.label_138:
	inc	rbx
	cmp	rbx, 0x41
	jl	.label_175
	cmp	byte ptr [rip + sig_mask_changed],  1
	mov	r12, qword ptr [rsp + 0x20]
	mov	r13, qword ptr [rsp + 0x18]
	mov	r14, qword ptr [rsp + 0x28]
	jne	.label_257
	lea	rbx, [rsp + 0x80]
	mov	rdi, rbx
	call	sigemptyset
	xor	edi, edi
	xor	esi, esi
	mov	rdx, rbx
	call	sigprocmask
	test	eax, eax
	jne	.label_199
	mov	ebx, 1
	lea	r13, [rsp + 0x80]
	lea	r15, [rsp + 0x60]
	nop	
.label_158:
	mov	edi, OFFSET FLAT:block_signals
	mov	esi, ebx
	call	sigismember
	test	eax, eax
	je	.label_116
	mov	rdi, r13
	mov	esi, ebx
	call	sigaddset
	mov	ebp, OFFSET FLAT:label_216
	jmp	.label_217
	.section	.text
	.align	32
	#Procedure 0x403171
	.globl sub_403171
	.type sub_403171, @function
sub_403171:

	nop	word ptr cs:[rax + rax]
.label_116:
	mov	edi, OFFSET FLAT:unblock_signals
	mov	esi, ebx
	call	sigismember
	test	eax, eax
	je	.label_230
	mov	rdi, r13
	mov	esi, ebx
	call	sigdelset
	mov	ebp, OFFSET FLAT:label_228
.label_217:
	cmp	byte ptr [rip + dev_debug],  1
	jne	.label_230
	mov	edi, ebx
	mov	rsi, r15
	call	sig2str
	cmp	byte ptr [rip + dev_debug],  1
	jne	.label_230
	mov	rdi, qword ptr [rip + stderr]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_234
	xor	eax, eax
	mov	rcx, r15
	mov	r8d, ebx
	mov	r9, rbp
	call	__fprintf_chk
.label_230:
	inc	ebx
	cmp	ebx, 0x41
	jne	.label_158
	lea	rsi, [rsp + 0x80]
	mov	edi, 2
	xor	edx, edx
	call	sigprocmask
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x20]
	mov	r13, qword ptr [rsp + 0x18]
	jne	.label_182
.label_257:
	cmp	byte ptr [rip + report_signal_handling],  1
	jne	.label_88
	lea	rbx, [rsp + 0x118]
	mov	rdi, rbx
	call	sigemptyset
	xor	edi, edi
	xor	esi, esi
	mov	rdx, rbx
	call	sigprocmask
	test	eax, eax
	jne	.label_199
	mov	ebx, 1
	lea	rbp, [rsp + 0x80]
	lea	r13, [rsp + 0x60]
.label_86:
	xor	esi, esi
	mov	edi, ebx
	mov	rdx, rbp
	call	sigaction
	test	eax, eax
	jne	.label_118
	cmp	qword ptr [rsp + 0x80], 1
	mov	r14d, OFFSET FLAT:label_83
	mov	eax, OFFSET FLAT:label_122
	cmove	r14, rax
	lea	rdi, [rsp + 0x118]
	mov	esi, ebx
	call	sigismember
	test	eax, eax
	mov	r15d, OFFSET FLAT:label_83
	mov	eax, OFFSET FLAT:label_216
	cmovne	r15, rax
	cmp	byte ptr [r14], 0
	movzx	eax, byte ptr [r15]
	je	.label_252
	test	al, al
	mov	r12d, OFFSET FLAT:label_83
	mov	eax, OFFSET FLAT:label_253
	cmovne	r12, rax
	jmp	.label_254
.label_252:
	test	al, al
	mov	r12d, OFFSET FLAT:label_83
	je	.label_118
.label_254:
	mov	edi, ebx
	mov	rsi, r13
	call	sig2str
	mov	rdi, qword ptr [rip + stderr]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_164
	mov	eax, 0
	mov	rcx, r13
	mov	r8d, ebx
	mov	r9, r15
	push	r14
	push	r12
	call	__fprintf_chk
	add	rsp, 0x10
.label_118:
	inc	ebx
	cmp	ebx, 0x41
	jne	.label_86
	mov	r12, qword ptr [rsp + 0x20]
	mov	r13, qword ptr [rsp + 0x18]
	mov	r14, qword ptr [rsp + 0x28]
.label_88:
	test	r14, r14
	je	.label_187
	cmp	byte ptr [rip + dev_debug],  1
	jne	.label_189
	mov	rbx, qword ptr [rip + stderr]
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_243
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
.label_189:
	mov	rdi, r14
	call	chdir
	test	eax, eax
	jne	.label_259
.label_187:
	cmp	byte ptr [rip + dev_debug],  1
	jne	.label_211
	mov	rdi, qword ptr [rip + stderr]
	movsxd	rax, dword ptr [rip + optind]
	mov	rcx, qword ptr [r12 + rax*8]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_128
	xor	eax, eax
	call	__fprintf_chk
	mov	ebp, dword ptr [rip + optind]
	cmp	ebp, r13d
	jge	.label_211
	movsxd	rax, ebp
	lea	rbx, [r12 + rax*8]
	nop	
.label_249:
	cmp	byte ptr [rip + dev_debug],  1
	jne	.label_121
	mov	r15, qword ptr [rip + stderr]
	mov	r14d, ebp
	sub	r14d, dword ptr [rip + optind]
	mov	rdi, qword ptr [rbx]
	call	quote
	mov	r8, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_237
	xor	eax, eax
	mov	rdi, r15
	mov	ecx, r14d
	call	__fprintf_chk
.label_121:
	inc	ebp
	add	rbx, 8
	cmp	r13d, ebp
	jne	.label_249
.label_211:
	movsxd	rax, dword ptr [rip + optind]
	lea	rsi, [r12 + rax*8]
	mov	rdi, qword ptr [r12 + rax*8]
	call	execvp
	call	__errno_location
	mov	ebp, dword ptr [rax]
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [r12 + rax*8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_60
	xor	eax, eax
	mov	esi, ebp
	call	error
	mov	r14d, 0x7e
	cmp	ebp, 2
	jne	.label_99
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [r12 + rax*8]
	mov	esi, 0x20
	call	strchr
	mov	r14d, 0x7f
	test	rax, rax
	je	.label_99
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_114
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	jmp	.label_99
.label_255:
	mov	rbx, qword ptr [rip + __environ]
	mov	rdx, qword ptr [rbx]
	xor	r14d, r14d
	test	rdx, rdx
	je	.label_99
	xor	r14d, r14d
	test	cl, cl
	mov	ebp, 0xa
	cmovne	ebp, r14d
	add	rbx, 8
	nop	dword ptr [rax]
.label_151:
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_140
	xor	eax, eax
	mov	ecx, ebp
	call	__printf_chk
	mov	rdx, qword ptr [rbx]
	add	rbx, 8
	test	rdx, rdx
	jne	.label_151
.label_99:
	mov	eax, r14d
	add	rsp, 0x198
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_111:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_168
	jmp	.label_169
.label_147:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_220
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rax, qword ptr [rip + usvars]
	mov	rdi, qword ptr [rax + rbx*8]
	call	quote
	mov	rcx, rax
	mov	edi, 0x7d
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	call	error
.label_104:
	cmp	ebx, 0xffffff7d
	je	.label_193
	cmp	ebx, 0xffffff7e
	jne	.label_196
	xor	edi, edi
	call	usage
.label_130:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_205
.label_169:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 0x7d
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	mov	ecx, ebx
	call	error
.label_194:
	mov	edi, OFFSET FLAT:label_148
	mov	esi, OFFSET FLAT:label_132
	mov	edx, 0x12f
	mov	ecx, OFFSET FLAT:label_149
	call	__assert_fail
.label_203:
	mov	edi, OFFSET FLAT:label_148
	mov	esi, OFFSET FLAT:label_132
	mov	edx, 0x134
	mov	ecx, OFFSET FLAT:label_149
	call	__assert_fail
.label_213:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_246
	jmp	.label_163
.label_154:
	cmp	ebx, 9
	jne	.label_196
.label_651:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_233
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, ebx
	call	error
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_114
.label_146:
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
.label_196:
	mov	edi, 0x7d
	call	usage
.label_193:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_89
	mov	edx, OFFSET FLAT:label_40
	mov	r8d, OFFSET FLAT:label_90
	mov	r9d, OFFSET FLAT:label_91
	mov	eax, 0
	push	0
	push	OFFSET FLAT:label_92
	call	version_etc
	add	rsp, 0x10
	xor	edi, edi
	call	exit
.label_171:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_112
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 0x7d
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, r13
	call	error
.label_559:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_162
	jmp	.label_163
.label_215:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_183
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 0x7d
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, ebp
	call	error
.label_239:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_145
	jmp	.label_146
.label_250:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_153
	jmp	.label_146
.label_102:
	mov	edi, OFFSET FLAT:label_131
	mov	esi, OFFSET FLAT:label_132
	mov	edx, 0x18b
	mov	ecx, OFFSET FLAT:label_133
	call	__assert_fail
.label_229:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_167
.label_163:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 0x7d
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_199:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_184
	jmp	.label_185
.label_206:
	call	xalloc_die
.label_259:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_137
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	jmp	.label_159
.label_182:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_226
.label_185:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 0x7d
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_251:
	call	xalloc_die
.label_110:
	mov	edi, OFFSET FLAT:label_172
	mov	esi, OFFSET FLAT:label_132
	mov	edx, 0xd2
	mov	ecx, OFFSET FLAT:label_173
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x403789
	.globl sub_403789
	.type sub_403789, @function
sub_403789:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403790
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
	#Procedure 0x4037a8
	.globl sub_4037a8
	.type sub_4037a8, @function
sub_4037a8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4037b0

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
	#Procedure 0x4037c9
	.globl sub_4037c9
	.type sub_4037c9, @function
sub_4037c9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4037d0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x4037da
	.globl sub_4037da
	.type sub_4037da, @function
sub_4037da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4037e0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_42]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_43]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_44]
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
	#Procedure 0x403835
	.globl sub_403835
	.type sub_403835, @function
sub_403835:

	nop	word ptr cs:[rax + rax]
.label_261:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403845
	.globl sub_403845
	.type sub_403845, @function
sub_403845:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40384d

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
	je	.label_261
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
.label_263:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_262
	call	__errno_location
	mov	dword ptr [rax], 0
.label_262:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4038cb

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
	jne	.label_263
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_262
	test	cl, cl
	jne	.label_262
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_262
.label_264:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403916
	.globl sub_403916
	.type sub_403916, @function
sub_403916:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40391b
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_264
	test	rdx, rdx
	je	.label_264
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403940
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_265:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_265
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x403961
	.globl sub_403961
	.type sub_403961, @function
sub_403961:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403970

	.globl parse_block_signal_params
	.type parse_block_signal_params, @function
parse_block_signal_params:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r15d, esi
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_272
	mov	al, byte ptr [rip + sig_mask_changed]
	test	al, al
	jne	.label_270
	mov	edi, OFFSET FLAT:block_signals
	call	sigemptyset
	mov	edi, OFFSET FLAT:unblock_signals
	call	sigemptyset
.label_270:
	mov	byte ptr [rip + sig_mask_changed],  1
	mov	rdi, rbx
	call	xstrdup
	mov	r14, rax
	mov	esi, OFFSET FLAT:label_253
	mov	rdi, r14
	call	strtok
	mov	rbp, rax
	test	rbp, rbp
	je	.label_268
	mov	r12d, OFFSET FLAT:block_signals
	mov	eax, OFFSET FLAT:unblock_signals
	test	r15b, r15b
	mov	r13d, OFFSET FLAT:unblock_signals
	cmovne	r13, r12
	cmovne	r12, rax
	lea	r15, [rsp]
	nop	word ptr cs:[rax + rax]
.label_273:
	mov	rdi, rbp
	mov	rsi, r15
	call	operand2sig
	mov	ebx, eax
	test	ebx, ebx
	je	.label_269
	jle	.label_271
	mov	rdi, r13
	mov	esi, ebx
	call	sigaddset
	mov	rdi, r12
	mov	esi, ebx
	call	sigdelset
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_253
	call	strtok
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_273
.label_268:
	mov	rdi, r14
	call	free
	jmp	.label_266
.label_269:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_267
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, rbp
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_271:
	mov	edi, dword ptr [rip + exit_failure]
	call	usage
	.section	.text
	.align	32
	#Procedure 0x403a81
	.globl sub_403a81
	.type sub_403a81, @function
sub_403a81:

	nop	
.label_272:
	mov	ebx, OFFSET FLAT:block_signals
	mov	eax, OFFSET FLAT:unblock_signals
	test	r15b, r15b
	mov	edi, OFFSET FLAT:unblock_signals
	cmovne	rdi, rbx
	cmovne	rbx, rax
	call	sigfillset
	mov	rdi, rbx
	call	sigemptyset
	mov	byte ptr [rip + sig_mask_changed],  1
.label_266:
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
	#Procedure 0x403ac0
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
	#Procedure 0x403ad8
	.globl sub_403ad8
	.type sub_403ad8, @function
sub_403ad8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ae0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_274
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_60
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403b10
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
	je	.label_275
	mov	qword ptr [rax], rbx
.label_275:
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
	#Procedure 0x403bfc
	.globl sub_403bfc
	.type sub_403bfc, @function
sub_403bfc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403c00

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
	jae	.label_276
	lea	rsi, [rsp + 8]
	mov	edx, 0xa
	mov	rdi, r12
	call	strtol
	cmp	rax, 0x40
	jg	.label_277
	mov	rcx, qword ptr [rsp + 8]
	mov	cl, byte ptr [rcx]
	test	cl, cl
	je	.label_279
	jmp	.label_277
.label_276:
	xor	ebx, ebx
	mov	ebp, OFFSET FLAT:label_66
	nop	word ptr cs:[rax + rax]
.label_286:
	mov	rdi, rbp
	mov	rsi, r12
	call	strcmp
	test	eax, eax
	je	.label_284
	inc	rbx
	add	rbp, 0xc
	cmp	rbx, 0x22
	jbe	.label_286
	call	__libc_current_sigrtmin
	mov	ebp, eax
	call	__libc_current_sigrtmax
	mov	r15d, eax
	test	ebp, ebp
	jle	.label_278
	mov	esi, OFFSET FLAT:label_281
	mov	edx, 5
	mov	rdi, r12
	call	strncmp
	test	eax, eax
	je	.label_282
.label_278:
	test	r15d, r15d
	jle	.label_277
	mov	esi, OFFSET FLAT:label_285
	mov	edx, 5
	mov	rdi, r12
	call	strncmp
	test	eax, eax
	jne	.label_277
	add	r12, 5
	lea	rsi, [rsp + 8]
	mov	edx, 0xa
	mov	rdi, r12
	call	strtol
	mov	rcx, qword ptr [rsp + 8]
	cmp	byte ptr [rcx], 0
	jne	.label_277
	sub	ebp, r15d
	movsxd	rcx, ebp
	cmp	rcx, rax
	jg	.label_277
	test	rax, rax
	jg	.label_277
	mov	ecx, r15d
	jmp	.label_280
.label_284:
	mov	eax, dword ptr [rbp - 4]
	jmp	.label_279
.label_282:
	add	r12, 5
	lea	rsi, [rsp + 8]
	mov	edx, 0xa
	mov	rdi, r12
	call	strtol
	test	rax, rax
	js	.label_277
	mov	rcx, qword ptr [rsp + 8]
	mov	cl, byte ptr [rcx]
	test	cl, cl
	jne	.label_277
	sub	r15d, ebp
	movsxd	rcx, r15d
	cmp	rax, rcx
	jle	.label_283
.label_277:
	mov	eax, 0xffffffff
.label_279:
	mov	dword ptr [r14], eax
	sar	eax, 0x1f
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_283:
	mov	ecx, ebp
.label_280:
	add	rax, rcx
	jmp	.label_279
	.section	.text
	.align	32
	#Procedure 0x403d52
	.globl sub_403d52
	.type sub_403d52, @function
sub_403d52:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403d60
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_42]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_43]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_44]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_287
	test	rsi, rsi
	je	.label_287
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_287:
	call	abort
.label_296:
	xor	r12d, r12d
	cmp	al, 0x5f
	jne	.label_288
.label_290:
	lea	r14, [rdi + 2]
	lea	rsi, [rdi + 3]
	xor	r12d, r12d
	movabs	rax, 0x3ffffff03ffffff
	jmp	.label_295
	.section	.text
	.align	32
	#Procedure 0x403df2
	.globl sub_403df2
	.type sub_403df2, @function
sub_403df2:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403df9

	.globl extract_varname
	.type extract_varname, @function
extract_varname:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	test	rdi, rdi
	je	.label_289
	cmp	byte ptr [rdi], 0x24
	jne	.label_289
	xor	r12d, r12d
	cmp	byte ptr [rdi + 1], 0x7b
	jne	.label_288
	movsx	eax, byte ptr [rdi + 2]
	mov	ecx, eax
	add	ecx, -0x41
	cmp	ecx, 0x39
	ja	.label_296
	movabs	rdx, 0x3ffffff03ffffff
	shr	rdx, cl
	and	edx, 1
	xor	r12d, r12d
	cmp	al, 0x5f
	je	.label_290
	test	rdx, rdx
	je	.label_288
	jmp	.label_290
.label_297:
	inc	rsi
.label_295:
	movzx	ecx, byte ptr [rsi]
	movsx	edx, cl
	lea	ebx, [rdx - 0x41]
	cmp	ebx, 0x39
	ja	.label_293
	bt	rax, rbx
	jb	.label_297
.label_293:
	add	edx, -0x30
	cmp	edx, 0xa
	jb	.label_297
	cmp	cl, 0x5f
	je	.label_297
	cmp	cl, 0x7d
	jne	.label_288
	sub	rsi, rdi
	lea	r15, [rsi - 2]
	cmp	r15, qword ptr [rip + vnlen]
	jb	.label_294
	dec	rsi
	mov	qword ptr [rip + vnlen],  rsi
	mov	rdi, qword ptr [rip + varname]
	call	xrealloc
	mov	qword ptr [rip + varname],  rax
.label_294:
	mov	r12, qword ptr [rip + varname]
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, r15
	call	memcpy
	mov	byte ptr [r12 + r15], 0
.label_288:
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_289:
	mov	edi, OFFSET FLAT:label_291
	mov	esi, OFFSET FLAT:label_132
	mov	edx, 0xdd
	mov	ecx, OFFSET FLAT:label_292
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x403ee8
	.globl sub_403ee8
	.type sub_403ee8, @function
sub_403ee8:

	nop	dword ptr [rax + rax]
.label_298:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403ef5
	.globl sub_403ef5
	.type sub_403ef5, @function
sub_403ef5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403f00
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
	je	.label_298
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
	#Procedure 0x403f90
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_42]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_43]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_44]
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
	#Procedure 0x403fe4
	.globl sub_403fe4
	.type sub_403fe4, @function
sub_403fe4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ff0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_321
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_322
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_301
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_312
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_320
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_314
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_303
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_315
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_304
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_309
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_308
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_316
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_306
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_300
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_307
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_317
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_318
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_40
	mov	ecx, OFFSET FLAT:label_41
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_310
	mov	esi, OFFSET FLAT:label_305
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_310
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_313
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_310:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_319
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_41
	mov	ecx, OFFSET FLAT:label_89
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_299
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_89
	mov	ecx, OFFSET FLAT:label_302
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_321:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_311
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
	#Procedure 0x4042eb
	.globl sub_4042eb
	.type sub_4042eb, @function
sub_4042eb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4042f0
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
	#Procedure 0x404303
	.globl sub_404303
	.type sub_404303, @function
sub_404303:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404310
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
	#Procedure 0x404385
	.globl sub_404385
	.type sub_404385, @function
sub_404385:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404390
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
	#Procedure 0x404451
	.globl sub_404451
	.type sub_404451, @function
sub_404451:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404460
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
	#Procedure 0x404479
	.globl sub_404479
	.type sub_404479, @function
sub_404479:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404480
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_42]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_43]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_44]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_323
	test	rdx, rdx
	je	.label_323
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_323:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4044ea
	.globl sub_4044ea
	.type sub_4044ea, @function
sub_4044ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4044f0
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x404501
	.globl sub_404501
	.type sub_404501, @function
sub_404501:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404510

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
.label_435:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_432
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_370]
.label_548:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_400
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_407
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_549:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_332
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_332
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_350:
	cmp	r14, r11
	jae	.label_347
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_347:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_350
.label_332:
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
	jmp	.label_359
.label_541:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_359
.label_544:
	mov	al, 1
.label_542:
	mov	r12b, 1
.label_545:
	test	r12b, 1
	mov	cl, 1
	je	.label_368
	mov	ecx, eax
.label_368:
	mov	al, cl
.label_543:
	test	r12b, 1
	jne	.label_372
	test	r11, r11
	je	.label_326
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_326:
	mov	r14d, 1
	jmp	.label_374
.label_372:
	xor	r14d, r14d
.label_374:
	mov	ecx, OFFSET FLAT:label_407
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_359
.label_546:
	test	r12b, 1
	jne	.label_385
	test	r11, r11
	je	.label_387
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_387:
	mov	r14d, 1
	jmp	.label_389
.label_547:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_391
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_359
.label_385:
	xor	r14d, r14d
.label_389:
	mov	eax, OFFSET FLAT:label_391
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_359:
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
	jmp	.label_412
	.section	.text
	.align	32
	#Procedure 0x4047fd
	.globl sub_4047fd
	.type sub_4047fd, @function
sub_4047fd:

	nop	dword ptr [rax]
.label_351:
	inc	rsi
.label_412:
	cmp	rbp, -1
	je	.label_325
	cmp	rsi, rbp
	jne	.label_328
	jmp	.label_329
	.section	.text
	.align	32
	#Procedure 0x404813
	.globl sub_404813
	.type sub_404813, @function
sub_404813:

	nop	word ptr cs:[rax + rax]
.label_325:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_333
.label_328:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_338
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_406
	cmp	rbp, -1
	jne	.label_406
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
.label_406:
	cmp	rbx, rbp
	jbe	.label_360
.label_338:
	xor	r8d, r8d
.label_365:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_439
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_363]
.label_572:
	test	rsi, rsi
	jne	.label_353
	jmp	.label_367
	.section	.text
	.align	32
	#Procedure 0x4048b5
	.globl sub_4048b5
	.type sub_4048b5, @function
sub_4048b5:

	nop	word ptr cs:[rax + rax]
.label_360:
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
	jne	.label_378
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_365
	jmp	.label_384
.label_378:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_365
.label_576:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_399
	test	rsi, rsi
	jne	.label_402
	cmp	rbp, 1
	je	.label_367
	xor	r13d, r13d
	jmp	.label_334
.label_565:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_411
	cmp	byte ptr [rsp + 6], 0
	jne	.label_371
	cmp	r12d, 2
	jne	.label_415
	mov	eax, r9d
	and	al, 1
	jne	.label_415
	cmp	r14, r11
	jae	.label_419
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_419:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_422
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_422:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_442
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_442:
	add	r14, 3
	mov	r9b, 1
.label_415:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_361
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_361:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_437
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_437
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_437
	cmp	r14, r11
	jae	.label_327
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_327:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_340
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_340:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_334
.label_566:
	mov	bl, 0x62
	jmp	.label_344
.label_567:
	mov	cl, 0x74
	jmp	.label_342
.label_568:
	mov	bl, 0x76
	jmp	.label_344
.label_569:
	mov	bl, 0x66
	jmp	.label_344
.label_570:
	mov	cl, 0x72
	jmp	.label_342
.label_573:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_348
	cmp	byte ptr [rsp + 6], 0
	jne	.label_352
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
	jae	.label_357
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_357:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_366
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_366:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_369
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_369:
	add	r14, 3
	xor	r9d, r9d
.label_348:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_334
.label_574:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_375
	cmp	r12d, 2
	jne	.label_353
	cmp	byte ptr [rsp + 6], 0
	je	.label_353
	jmp	.label_352
.label_575:
	cmp	r12d, 2
	jne	.label_386
	cmp	byte ptr [rsp + 6], 0
	jne	.label_352
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_339
.label_439:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_394
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
.label_336:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_414
	test	r8b, r8b
	je	.label_414
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_334
.label_399:
	test	rsi, rsi
	jne	.label_436
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_436
.label_367:
	mov	dl, 1
.label_571:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_352
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_334:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_441
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_443
	jmp	.label_324
	.section	.text
	.align	32
	#Procedure 0x404c04
	.globl sub_404c04
	.type sub_404c04, @function
sub_404c04:

	nop	word ptr cs:[rax + rax]
.label_441:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_324
.label_443:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_330
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_339
	jmp	.label_346
	.section	.text
	.align	32
	#Procedure 0x404c4d
	.globl sub_404c4d
	.type sub_404c4d, @function
sub_404c4d:

	nop	dword ptr [rax]
.label_324:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_346
	jmp	.label_339
.label_330:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_346
.label_411:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_351
	xor	r15d, r15d
	jmp	.label_353
.label_386:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_342
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_339
.label_342:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_352
.label_344:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_334
	nop	word ptr cs:[rax + rax]
.label_346:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_371
	cmp	r12d, 2
	jne	.label_373
	mov	eax, r9d
	and	al, 1
	jne	.label_373
	cmp	r14, r11
	jae	.label_388
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_388:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_379
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_379:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_425
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_425:
	add	r14, 3
	mov	r9b, 1
.label_373:
	cmp	r14, r11
	jae	.label_355
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_355:
	inc	r14
	jmp	.label_392
.label_394:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_395
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_395:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_398:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_421
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_424
	cmp	rbp, -2
	je	.label_431
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_404
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_396:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_426
	bt	rsi, rdx
	jb	.label_445
.label_426:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_396
.label_404:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_418
	xor	r13d, r13d
.label_418:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_398
	jmp	.label_336
.label_437:
	xor	r13d, r13d
	jmp	.label_334
.label_436:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_334
.label_375:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_353
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_353
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_353
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_409
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_434
	cmp	byte ptr [rsp + 6], 0
	jne	.label_345
	cmp	r14, r11
	jae	.label_356
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_356:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_376
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_376:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_377
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_377:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_416
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_416:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_334
.label_353:
	xor	eax, eax
.label_402:
	xor	r13d, r13d
	jmp	.label_334
.label_414:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_393
	.section	.text
	.align	32
	#Procedure 0x404f32
	.globl sub_404f32
	.type sub_404f32, @function
sub_404f32:

	nop	word ptr cs:[rax + rax]
.label_354:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_393:
	test	r8b, r8b
	je	.label_403
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_405
	cmp	r14, r11
	jae	.label_408
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_408:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_405
	.section	.text
	.align	32
	#Procedure 0x404f7c
	.globl sub_404f7c
	.type sub_404f7c, @function
sub_404f7c:

	nop	dword ptr [rax]
.label_403:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_384
	cmp	r12d, 2
	jne	.label_420
	mov	eax, r9d
	and	al, 1
	jne	.label_420
	cmp	r14, r11
	jae	.label_423
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_423:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_429
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_429:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_433
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_433:
	add	r14, 3
	mov	r9b, 1
.label_420:
	cmp	r14, r11
	jae	.label_381
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_381:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_401
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_401:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_444
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_444:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_405:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_339
	test	r9b, 1
	je	.label_341
	mov	ebx, eax
	and	bl, 1
	jne	.label_341
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_343
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_343:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_440
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_440:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_341:
	cmp	r14, r11
	jae	.label_354
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_354
	.section	.text
	.align	32
	#Procedure 0x405083
	.globl sub_405083
	.type sub_405083, @function
sub_405083:

	nop	word ptr cs:[rax + rax]
.label_339:
	test	r9b, 1
	je	.label_362
	and	al, 1
	jne	.label_362
	cmp	r14, r11
	jae	.label_364
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_364:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_349
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_349:
	add	r14, 2
	xor	r9d, r9d
.label_362:
	mov	ebx, r15d
.label_392:
	cmp	r14, r11
	jae	.label_427
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_427:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_351
.label_424:
	xor	r13d, r13d
.label_421:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_336
.label_431:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_383
	mov	rsi, qword ptr [rsp + 0x58]
.label_390:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_428
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_390
	xor	r13d, r13d
	jmp	.label_336
.label_383:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_336
.label_428:
	xor	r13d, r13d
	jmp	.label_336
.label_409:
	xor	r13d, r13d
	jmp	.label_334
.label_434:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_334
	.section	.text
	.align	32
	#Procedure 0x405158
	.globl sub_405158
	.type sub_405158, @function
sub_405158:

	nop	dword ptr [rax + rax]
.label_329:
	mov	rcx, rsi
.label_333:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_410
	or	al, dl
	je	.label_413
.label_410:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_417
	or	al, dl
	jne	.label_417
	test	r10b, 1
	jne	.label_430
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_417
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_435
.label_417:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_438
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_335
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_335
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_331:
	cmp	r14, r11
	jae	.label_358
	mov	byte ptr [rcx + r14], al
.label_358:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_331
	jmp	.label_335
.label_371:
	mov	qword ptr [rsp + 0x20], rbp
.label_384:
	mov	rdx, rdi
	jmp	.label_337
.label_352:
	mov	qword ptr [rsp + 0x20], rbp
.label_445:
	mov	rdx, rdi
	mov	eax, 2
.label_397:
	mov	qword ptr [rsp + 0x38], rax
.label_337:
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
.label_380:
	mov	r14, rax
.label_382:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_413:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_337
.label_430:
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
	jmp	.label_380
.label_438:
	mov	rcx, qword ptr [rsp + 8]
.label_335:
	cmp	r14, r11
	jae	.label_382
	mov	byte ptr [rcx + r14], 0
	jmp	.label_382
.label_345:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_397
.label_432:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405317
	.globl sub_405317
	.type sub_405317, @function
sub_405317:

	nop	word ptr [rax + rax]
.label_446:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x405325
	.globl sub_405325
	.type sub_405325, @function
sub_405325:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40532f
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_446
	call	rpl_calloc
	test	rax, rax
	je	.label_446
	pop	rcx
	ret	
.label_447:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x405355
	.globl sub_405355
	.type sub_405355, @function
sub_405355:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40535b

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_448
	test	rax, rax
	je	.label_447
.label_448:
	pop	rbx
	ret	
.label_449:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405375
	.globl sub_405375
	.type sub_405375, @function
sub_405375:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405384
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
	je	.label_449
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
	#Procedure 0x4053e0
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
	#Procedure 0x4053ef
	.globl sub_4053ef
	.type sub_4053ef, @function
sub_4053ef:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4053f0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_42]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_43]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_44]
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
	#Procedure 0x40545f
	.globl sub_40545f
	.type sub_40545f, @function
sub_40545f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x405460
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x405468
	.globl sub_405468
	.type sub_405468, @function
sub_405468:

	nop	dword ptr [rax + rax]
.label_451:
	mov	ecx, 1
.label_450:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x405480
	.globl sub_405480
	.type sub_405480, @function
sub_405480:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405485

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_451
	test	rsi, rsi
	mov	ecx, 1
	je	.label_450
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_450
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_452:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x4054cc
	.globl sub_4054cc
	.type sub_4054cc, @function
sub_4054cc:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4054d8

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_452
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_454
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_452
.label_454:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_452
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_453
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_453:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405540
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
	je	.label_455
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
.label_455:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4055a8
	.globl sub_4055a8
	.type sub_4055a8, @function
sub_4055a8:

	nop	dword ptr [rax + rax]
.label_457:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_456
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_456:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4055e4
	.globl sub_4055e4
	.type sub_4055e4, @function
sub_4055e4:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4055e6

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
	jne	.label_458
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_458
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_457
.label_458:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	32
	#Procedure 0x405620
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
	je	.label_460
	test	r14, r14
	je	.label_459
.label_460:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_459:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x405656
	.globl sub_405656
	.type sub_405656, @function
sub_405656:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405660

	.globl parse_signal_action_params
	.type parse_signal_action_params, @function
parse_signal_action_params:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x18
	mov	ebp, esi
	test	rdi, rdi
	je	.label_466
	call	xstrdup
	mov	r14, rax
	mov	esi, OFFSET FLAT:label_253
	mov	rdi, r14
	call	strtok
	mov	rbx, rax
	test	rbx, rbx
	je	.label_461
	xor	eax, eax
	test	bpl, bpl
	sete	al
	lea	ebp, [rax + rax + 1]
	lea	r15, [rsp]
	nop	
.label_463:
	mov	rdi, rbx
	mov	rsi, r15
	call	operand2sig
	test	eax, eax
	je	.label_467
	jle	.label_468
	cdqe	
	mov	rcx, qword ptr [rip + signals]
	mov	dword ptr [rcx + rax*4], ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_253
	call	strtok
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_463
.label_461:
	mov	rdi, r14
	call	free
	jmp	.label_465
.label_466:
	xor	eax, eax
	test	bpl, bpl
	sete	al
	lea	r14d, [rax + rax + 2]
	mov	ebx, 1
	lea	rbp, [rsp]
	nop	word ptr cs:[rax + rax]
.label_464:
	mov	edi, ebx
	mov	rsi, rbp
	call	sig2str
	test	eax, eax
	jne	.label_462
	mov	rax, qword ptr [rip + signals]
	mov	dword ptr [rax + rbx*4], r14d
.label_462:
	inc	rbx
	cmp	rbx, 0x41
	jne	.label_464
.label_465:
	add	rsp, 0x18
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_467:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_267
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
.label_468:
	mov	edi, dword ptr [rip + exit_failure]
	call	usage
	.section	.text
	.align	32
	#Procedure 0x405765
	.globl sub_405765
	.type sub_405765, @function
sub_405765:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405770

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_469
	test	rbx, rbx
	jne	.label_469
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_469:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_471
	test	rax, rax
	je	.label_470
.label_471:
	pop	rbx
	ret	
.label_470:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4057a0
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
	je	.label_472
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
.label_472:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40580c
	.globl sub_40580c
	.type sub_40580c, @function
sub_40580c:

	nop	dword ptr [rax]
.label_473:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x405815
	.globl sub_405815
	.type sub_405815, @function
sub_405815:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405820
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_473
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_474
	test	rax, rax
	je	.label_473
.label_474:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x405850
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x405858
	.globl sub_405858
	.type sub_405858, @function
sub_405858:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405860
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40586e
	.globl sub_40586e
	.type sub_40586e, @function
sub_40586e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x405870

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
	js	.label_478
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_481
	cmp	r12d, 0x7fffffff
	je	.label_476
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
	jne	.label_479
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_479:
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
.label_481:
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
	jbe	.label_477
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_480
.label_477:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_475
	mov	rdi, r14
	call	free
.label_475:
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
.label_480:
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
.label_478:
	call	abort
.label_476:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x405a2d
	.globl sub_405a2d
	.type sub_405a2d, @function
sub_405a2d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405a30
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_482
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_484:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_484
.label_482:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_485
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_486], OFFSET FLAT:slot0
.label_485:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_483
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_483:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x405ac1
	.globl sub_405ac1
	.type sub_405ac1, @function
sub_405ac1:

	nop	word ptr cs:[rax + rax]
.label_489:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x405ad5
	.globl sub_405ad5
	.type sub_405ad5, @function
sub_405ad5:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405add
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_489
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_488
	test	rbx, rbx
	jne	.label_488
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_488:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_487
	test	rax, rax
	je	.label_489
.label_487:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x405b20

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
	ja	.label_498
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
	je	.label_496
	cmp	byte ptr [rcx], 0
	jne	.label_496
	cmp	dword ptr [rbx], 0
	jne	.label_496
	cmp	eax, -1
	je	.label_496
	movsxd	rcx, eax
	cmp	rcx, rax
	jne	.label_496
	cmp	eax, 0xfe
	mov	ecx, 0xff
	mov	edi, 0x7f
	cmovg	edi, ecx
	and	edi, eax
.label_496:
	mov	dword ptr [rsp + 4], edi
	jmp	.label_493
.label_498:
	mov	rdi, r15
	call	xstrdup
	mov	r12, rax
	mov	bpl, byte ptr [r12]
	test	bpl, bpl
	je	.label_500
	lea	rbx, [r12 + 1]
	nop	word ptr [rax + rax]
.label_499:
	movsx	esi, bpl
	mov	edi, OFFSET FLAT:label_490
	mov	edx, 0x1b
	call	memchr
	test	rax, rax
	je	.label_494
	add	bpl, 0xe0
	mov	byte ptr [rbx - 1], bpl
.label_494:
	movzx	ebp, byte ptr [rbx]
	inc	rbx
	test	bpl, bpl
	jne	.label_499
.label_500:
	lea	rsi, [rsp + 4]
	mov	rdi, r12
	call	str2sig
	test	eax, eax
	je	.label_497
	cmp	byte ptr [r12], 0x53
	jne	.label_492
	cmp	byte ptr [r12 + 1], 0x49
	jne	.label_492
	cmp	byte ptr [r12 + 2], 0x47
	jne	.label_492
	mov	rdi, r12
	add	rdi, 3
	lea	rsi, [rsp + 4]
	call	str2sig
	test	eax, eax
	je	.label_497
.label_492:
	mov	dword ptr [rsp + 4], 0xffffffff
.label_497:
	mov	rdi, r12
	call	free
	mov	edi, dword ptr [rsp + 4]
.label_493:
	test	edi, edi
	js	.label_501
	mov	rsi, r14
	call	sig2str
	test	eax, eax
	je	.label_491
.label_501:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_267
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
	jmp	.label_495
.label_491:
	mov	eax, dword ptr [rsp + 4]
.label_495:
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405c91
	.globl sub_405c91
	.type sub_405c91, @function
sub_405c91:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ca0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_512
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_514
.label_512:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_514:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_503
	cmp	r10d, 0x29
	jae	.label_511
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_513
.label_511:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_513:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_503
	cmp	r10d, 0x29
	jae	.label_509
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_510
.label_509:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_510:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_503
	cmp	r10d, 0x29
	jae	.label_507
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_508
.label_507:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_508:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_503
	cmp	r10d, 0x29
	jae	.label_505
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_506
.label_505:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_506:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_503
	cmp	r10d, 0x29
	jae	.label_502
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_504
.label_502:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_504:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_503
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_503
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_503
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_503
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_503:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x405e82
	.globl sub_405e82
	.type sub_405e82, @function
sub_405e82:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e90
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
	#Procedure 0x405ec6
	.globl sub_405ec6
	.type sub_405ec6, @function
sub_405ec6:

	nop	word ptr cs:[rax + rax]
.label_519:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_515
	mov	eax, OFFSET FLAT:label_516
	jmp	.label_517
	.section	.text
	.align	32
	#Procedure 0x405edf
	.globl sub_405edf
	.type sub_405edf, @function
sub_405edf:

	nop	word ptr cs:[rax + rax]
.label_522:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_518
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_518
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_518
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_518
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_518
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_518
	cmp	byte ptr [rax + 7], 0
	je	.label_519
.label_518:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_391
	mov	eax, OFFSET FLAT:label_407
.label_517:
	cmove	rax, rcx
.label_523:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405f32

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
	jne	.label_523
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_522
	cmp	ecx, 0x55
	jne	.label_518
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_518
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_518
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_518
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_518
	cmp	byte ptr [rax + 5], 0
	jne	.label_518
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_520
	mov	eax, OFFSET FLAT:label_521
	jmp	.label_517
	.section	.text
	.align	32
	#Procedure 0x405fa0

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
	#Procedure 0x405fb7
	.globl sub_405fb7
	.type sub_405fb7, @function
sub_405fb7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405fc0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_42]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_43]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_44]
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
	#Procedure 0x40602e
	.globl sub_40602e
	.type sub_40602e, @function
sub_40602e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x406030

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_525
	cmp	byte ptr [rax], 0x43
	jne	.label_527
	cmp	byte ptr [rax + 1], 0
	je	.label_524
.label_527:
	mov	esi, OFFSET FLAT:label_526
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_525
.label_524:
	xor	ebx, ebx
.label_525:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x406061
	.globl sub_406061
	.type sub_406061, @function
sub_406061:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4060d5
	.globl sub_4060d5
	.type sub_4060d5, @function
sub_4060d5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4060e2
	.globl sub_4060e2
	.type sub_4060e2, @function
sub_4060e2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406106
	.globl sub_406106
	.type sub_406106, @function
sub_406106:

	nop	word ptr cs:[rax + rax]
