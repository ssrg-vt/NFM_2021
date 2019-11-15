	.section	.text
	.align	16
	#Procedure 0x401b19
	.globl sub_401b19
	.type sub_401b19, @function
sub_401b19:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x401b1a
	.globl sub_401b1a
	.type sub_401b1a, @function
sub_401b1a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401b52
	.globl sub_401b52
	.type sub_401b52, @function
sub_401b52:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401b9a
	.globl sub_401b9a
	.type sub_401b9a, @function
sub_401b9a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401bbc
	.globl sub_401bbc
	.type sub_401bbc, @function
sub_401bbc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401bcd
	.globl sub_401bcd
	.type sub_401bcd, @function
sub_401bcd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401be6
	.globl sub_401be6
	.type sub_401be6, @function
sub_401be6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401bf0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x401bfa
	.globl sub_401bfa
	.type sub_401bfa, @function
sub_401bfa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401c00
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
	#Procedure 0x401c0f
	.globl sub_401c0f
	.type sub_401c0f, @function
sub_401c0f:

	nop	
.label_10:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401c15
	.globl sub_401c15
	.type sub_401c15, @function
sub_401c15:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401c19

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
	je	.label_9
	test	r15, r15
	je	.label_10
.label_9:
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
	#Procedure 0x401c50

	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, r9
	mov	r15, r8
	mov	r12, rcx
	mov	r13, rdx
	mov	rbp, rsi
	mov	rbx, rdi
	mov	rdi, rbp
	mov	rsi, r13
	mov	rdx, r12
	mov	rcx, r15
	call	argmatch
	test	rax, rax
	jns	.label_11
	cmp	rax, -1
	mov	qword ptr [rsp + 0x10], rbx
	mov	rbx, r14
	je	.label_12
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_13
	jmp	.label_14
.label_12:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_15
.label_14:
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 8], rax
	xor	edi, edi
	mov	esi, 8
	mov	rdx, rbp
	call	quotearg_n_style
	mov	r14, rax
	mov	edi, 1
	mov	rsi, qword ptr [rsp + 0x10]
	call	quote_n
	mov	rbp, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 8]
	mov	rcx, r14
	mov	r8, rbp
	call	error
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	call	argmatch_valid
	call	rbx
	mov	rax, -1
.label_11:
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
	#Procedure 0x401d13
	.globl sub_401d13
	.type sub_401d13, @function
sub_401d13:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401d20
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_16]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_17]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_18]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_19
	test	rdx, rdx
	je	.label_19
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_19:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401d8a
	.globl sub_401d8a
	.type sub_401d8a, @function
sub_401d8a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401d90

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_20
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_21
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401db5
	.globl sub_401db5
	.type sub_401db5, @function
sub_401db5:

	nop	word ptr cs:[rax + rax]
.label_22:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401dc5
	.globl sub_401dc5
	.type sub_401dc5, @function
sub_401dc5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401dcf
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
	je	.label_23
	test	r14, r14
	je	.label_22
.label_23:
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
	#Procedure 0x401e00
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_24
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_25
	test	rax, rax
	je	.label_24
.label_25:
	pop	rbx
	ret	
.label_24:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401e35
	.globl sub_401e35
	.type sub_401e35, @function
sub_401e35:

	nop	word ptr cs:[rax + rax]
.label_26:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401e45
	.globl sub_401e45
	.type sub_401e45, @function
sub_401e45:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401e4f
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_26
	call	rpl_calloc
	test	rax, rax
	je	.label_26
	pop	rcx
	ret	
.label_27:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401e75
	.globl sub_401e75
	.type sub_401e75, @function
sub_401e75:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401e84
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
	je	.label_27
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
	#Procedure 0x401ee0

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
	je	.label_40
	mov	edx, OFFSET FLAT:label_31
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_37
.label_40:
	mov	edx, OFFSET FLAT:label_38
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_37:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_42
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
	mov	esi, OFFSET FLAT:label_39
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_43
	jmp	qword ptr [(r12 * 8) + label_44]
.label_1687:
	add	rsp, 8
	jmp	.label_30
.label_43:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_34
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
	jmp	.label_30
.label_1688:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_29
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
.label_1689:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_35
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
.label_1690:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_32
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
.label_1691:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_46
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
	jmp	.label_30
.label_1692:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_45
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
	jmp	.label_30
.label_1693:
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
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x28
	jmp	.label_30
.label_1694:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_33
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
	jmp	.label_30
.label_1696:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_36
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
	jmp	.label_30
.label_1695:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_41
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
.label_30:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x402238
	.globl sub_402238
	.type sub_402238, @function
sub_402238:

	nop	dword ptr [rax + rax]
.label_65:
	cmp	qword ptr [r14 + 0x78], 0
	je	.label_47
	xor	eax, eax
	jmp	.label_51
.label_59:
	cmp	dword ptr [r14 + 0x98], 0
	je	.label_54
	xor	eax, eax
	jmp	.label_51
.label_69:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_54:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_61
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stderr]
	mov	rdi, rax
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	fputs
	.section	.text
	.align	16
	#Procedure 0x40228e
	.globl sub_40228e
	.type sub_40228e, @function
sub_40228e:

	nop	dword ptr [rax]
.label_47:
	cmp	qword ptr [r14 + 0x80], 0
	je	.label_55
	xor	eax, eax
	jmp	.label_51
.label_63:
	cmp	qword ptr [r14 + 0x90], 0
	je	.label_59
	xor	eax, eax
	jmp	.label_51
.label_55:
	cmp	qword ptr [r14 + 0x88], 0
	je	.label_63
	xor	eax, eax
	jmp	.label_51
	.section	.text
	.align	16
	#Procedure 0x4022c5

	.globl debug_print_relative_time
	.type debug_print_relative_time, @function
debug_print_relative_time:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	cmp	byte ptr [r14 + 0xd9], 0
	je	.label_69
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_71
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	mov	rsi, rbx
	call	dbg_printf
	mov	rcx, qword ptr [r14 + 0x68]
	test	rcx, rcx
	je	.label_72
	mov	rdi, qword ptr [rip + stderr]
	xor	ebx, ebx
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_67
	mov	r8d, OFFSET FLAT:label_68
	xor	eax, eax
	call	__fprintf_chk
	mov	rcx, qword ptr [r14 + 0x70]
	mov	al, 1
	test	rcx, rcx
	jne	.label_70
	jmp	.label_51
.label_72:
	mov	rcx, qword ptr [r14 + 0x70]
	mov	ebx, 1
	test	rcx, rcx
	je	.label_65
.label_70:
	mov	rdi, qword ptr [rip + stderr]
	lea	rdx, qword ptr [rbx + label_49]
	mov	esi, 1
	mov	r8d, OFFSET FLAT:label_66
	xor	eax, eax
	call	__fprintf_chk
	mov	al, 1
.label_51:
	mov	rcx, qword ptr [r14 + 0x78]
	test	rcx, rcx
	je	.label_60
	mov	rdi, qword ptr [rip + stderr]
	movzx	eax, al
	xor	rax, 1
	lea	rdx, qword ptr [rax + label_49]
	mov	esi, 1
	mov	r8d, OFFSET FLAT:label_62
	xor	eax, eax
	call	__fprintf_chk
	mov	al, 1
.label_60:
	mov	rcx, qword ptr [r14 + 0x80]
	test	rcx, rcx
	je	.label_56
	mov	rdi, qword ptr [rip + stderr]
	movzx	eax, al
	xor	rax, 1
	lea	rdx, qword ptr [rax + label_49]
	mov	esi, 1
	mov	r8d, OFFSET FLAT:label_58
	xor	eax, eax
	call	__fprintf_chk
	mov	al, 1
.label_56:
	mov	rcx, qword ptr [r14 + 0x88]
	test	rcx, rcx
	je	.label_52
	mov	rdi, qword ptr [rip + stderr]
	movzx	eax, al
	xor	rax, 1
	lea	rdx, qword ptr [rax + label_49]
	mov	esi, 1
	mov	r8d, OFFSET FLAT:label_57
	xor	eax, eax
	call	__fprintf_chk
	mov	al, 1
.label_52:
	mov	rcx, qword ptr [r14 + 0x90]
	test	rcx, rcx
	je	.label_48
	mov	rdi, qword ptr [rip + stderr]
	movzx	eax, al
	xor	rax, 1
	lea	rdx, qword ptr [rax + label_49]
	mov	esi, 1
	mov	r8d, OFFSET FLAT:label_53
	xor	eax, eax
	call	__fprintf_chk
	mov	al, 1
.label_48:
	movsxd	rcx, dword ptr [r14 + 0x98]
	test	rcx, rcx
	je	.label_64
	mov	rdi, qword ptr [rip + stderr]
	movzx	eax, al
	xor	rax, 1
	lea	rdx, qword ptr [rax + label_49]
	mov	esi, 1
	mov	r8d, OFFSET FLAT:label_50
	xor	eax, eax
	call	__fprintf_chk
.label_64:
	mov	rsi, qword ptr [rip + stderr]
	mov	edi, 0xa
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	fputc
	.section	.text
	.align	16
	#Procedure 0x402480
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_73
	test	rdx, rdx
	je	.label_73
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_73:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4024ab
	.globl sub_4024ab
	.type sub_4024ab, @function
sub_4024ab:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4024b0

	.globl debug_print_current_time
	.type debug_print_current_time, @function
debug_print_current_time:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x70
	mov	r15, rsi
	mov	rbx, rdi
	cmp	byte ptr [r15 + 0xd9], 0
	jne	.label_86
.label_97:
	add	rsp, 0x70
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
.label_86:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_71
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	mov	rsi, rbx
	call	dbg_printf
	cmp	qword ptr [r15 + 0xa8], 0
	je	.label_89
	cmp	byte ptr [r15 + 0xda], 0
	jne	.label_75
	mov	rdi, qword ptr [rip + stderr]
	mov	rcx, qword ptr [r15 + 0x28]
	mov	r8, qword ptr [r15 + 0x38]
	mov	r9, qword ptr [r15 + 0x40]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_78
	xor	eax, eax
	call	__fprintf_chk
	mov	byte ptr [r15 + 0xda], 1
	mov	r12b, 1
	jmp	.label_89
.label_75:
	xor	r12d, r12d
.label_89:
	mov	rax, qword ptr [r15 + 0xd8]
	mov	rcx, rax
	shr	rcx, 0x38
	cmp	al, cl
	je	.label_92
	test	r12b, r12b
	je	.label_96
	mov	rsi, qword ptr [rip + stderr]
	mov	edi, 0x20
	call	fputc
.label_96:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_82
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15 + 0x28]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	rax, qword ptr [r15 + 0xd8]
	mov	byte ptr [r15 + 0xdf], al
	mov	r12b, 1
.label_92:
	cmp	qword ptr [r15 + 0xc8], 0
	je	.label_85
	shr	rax, 0x28
	test	al, al
	jne	.label_85
	mov	r9, qword ptr [r15 + 0x58]
	mov	rdi, qword ptr [rip + stderr]
	xor	r12b, 1
	movzx	eax, r12b
	lea	rdx, qword ptr [rax + label_80]
	mov	rcx, qword ptr [r15 + 0x48]
	mov	r8, qword ptr [r15 + 0x50]
	mov	esi, 1
	xor	eax, eax
	call	__fprintf_chk
	mov	rcx, qword ptr [r15 + 0x60]
	test	rcx, rcx
	je	.label_99
	mov	rdi, qword ptr [rip + stderr]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_101
	xor	eax, eax
	call	__fprintf_chk
.label_99:
	cmp	dword ptr [r15 + 0x1c], 1
	jne	.label_100
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_81
	mov	esi, 2
	mov	edx, 1
	call	fwrite
.label_100:
	mov	byte ptr [r15 + 0xdd], 1
	mov	r12b, 1
.label_85:
	cmp	qword ptr [r15 + 0xb0], 0
	je	.label_91
	cmp	byte ptr [r15 + 0xdb], 0
	jne	.label_91
	test	r12b, r12b
	je	.label_95
	mov	rsi, qword ptr [rip + stderr]
	mov	edi, 0x20
	call	fputc
.label_95:
	mov	r14, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_98
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rsi, [rsp]
	mov	rdi, r15
	call	str_days
	mov	rcx, rax
	mov	r8, qword ptr [r15 + 8]
	mov	r9d, dword ptr [r15 + 0x10]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, rbx
	call	__fprintf_chk
	mov	byte ptr [r15 + 0xdb], 1
	mov	r12b, 1
.label_91:
	cmp	qword ptr [r15 + 0xb8], 0
	je	.label_90
	cmp	byte ptr [r15 + 0xdc], 0
	jne	.label_90
	mov	rdi, qword ptr [rip + stderr]
	xor	r12b, 1
	movzx	eax, r12b
	lea	rdx, qword ptr [rax + label_93]
	cmp	qword ptr [r15 + 0xc0], 0
	mov	ecx, dword ptr [r15 + 0x14]
	mov	eax, OFFSET FLAT:label_94
	mov	r8d, OFFSET FLAT:label_20
	cmovne	r8, rax
	mov	esi, 1
	xor	eax, eax
	call	__fprintf_chk
	mov	byte ptr [r15 + 0xdc], 1
	mov	r12b, 1
.label_90:
	cmp	qword ptr [r15 + 0xd0], 0
	je	.label_79
	cmp	byte ptr [r15 + 0xde], 0
	jne	.label_79
	mov	r14, qword ptr [rip + stderr]
	xor	r12b, 1
	movsxd	r13, dword ptr [r15 + 0x18]
	mov	eax, r13d
	shr	eax, 0x1f
	imul	rbx, r13, -0x6e5d4c3b
	shr	rbx, 0x20
	add	ebx, r13d
	mov	ecx, ebx
	shr	ecx, 0x1f
	sar	ebx, 0xb
	add	ebx, ecx
	mov	r9d, ebx
	neg	r9d
	cmp	r13, -0xe10
	lea	r8d, [rax + rax + 0x2b]
	cmovg	r9d, ebx
	lea	rdi, [rsp]
	mov	esi, 1
	mov	edx, 0x1b
	mov	ecx, OFFSET FLAT:label_87
	xor	eax, eax
	call	__sprintf_chk
	imul	edx, ebx, 0xe10
	mov	esi, r13d
	sub	esi, edx
	mov	ecx, esi
	neg	ecx
	cmovl	ecx, esi
	cmp	r13d, edx
	movzx	edx, r12b
	lea	rdx, qword ptr [rdx + label_76]
	je	.label_77
	cdqe	
	lea	rax, [rsp + rax]
	movsxd	r9, ecx
	imul	rsi, r9, -0x77777777
	shr	rsi, 0x20
	add	esi, r9d
	mov	edi, esi
	shr	edi, 0x1f
	sar	esi, 5
	add	esi, edi
	imul	r8d, esi, 0x3c
	imul	rbx, r9, 0x1b4e81b5
	mov	r10, rbx
	shr	r10, 0x3f
	shr	rbx, 0x26
	movsxd	rsi, esi
	imul	rcx, rsi, 0x66666667
	mov	rdi, rcx
	shr	rdi, 0x3f
	sar	rcx, 0x22
	add	ecx, edi
	add	ecx, ecx
	lea	ecx, [rcx + rcx*4]
	sub	esi, ecx
	add	esi, 0x30
	sub	r9d, r8d
	mov	byte ptr [rax], 0x3a
	lea	ecx, [rbx + r10 + 0x30]
	mov	byte ptr [rax + 1], cl
	mov	byte ptr [rax + 2], sil
	jne	.label_88
	add	rax, 3
	jmp	.label_83
.label_88:
	mov	byte ptr [rax + 3], 0x3a
	movsxd	rcx, r9d
	imul	rcx, rcx, 0x66666667
	mov	rsi, rcx
	shr	rsi, 0x3f
	sar	rcx, 0x22
	lea	edi, [rcx + rsi]
	lea	ecx, [rcx + rsi + 0x30]
	mov	byte ptr [rax + 4], cl
	add	edi, edi
	lea	ecx, [rdi + rdi*4]
	neg	ecx
	lea	ecx, [r9 + rcx + 0x30]
	mov	byte ptr [rax + 5], cl
	add	rax, 6
.label_83:
	mov	byte ptr [rax], 0
.label_77:
	lea	rcx, [rsp]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	call	__fprintf_chk
	mov	byte ptr [r15 + 0xde], 1
	mov	r12b, 1
.label_79:
	cmp	byte ptr [r15 + 0xa0], 0
	je	.label_102
	mov	r14, qword ptr [r15 + 0x58]
	test	r12b, r12b
	je	.label_74
	mov	rsi, qword ptr [rip + stderr]
	mov	edi, 0x20
	call	fputc
.label_74:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_84
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	mov	rdx, rcx
	mov	rcx, r14
	call	__fprintf_chk
.label_102:
	mov	rsi, qword ptr [rip + stderr]
	mov	edi, 0xa
	call	fputc
	jmp	.label_97
	.section	.text
	.align	16
	#Procedure 0x4028e7
	.globl sub_4028e7
	.type sub_4028e7, @function
sub_4028e7:

	nop	word ptr [rax + rax]
.label_103:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4028f5
	.globl sub_4028f5
	.type sub_4028f5, @function
sub_4028f5:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4028f9

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
	je	.label_103
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
	#Procedure 0x402960
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_104
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_106:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_106
.label_104:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_108
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_107], OFFSET FLAT:slot0
.label_108:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_105
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_105:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4029f1
	.globl sub_4029f1
	.type sub_4029f1, @function
sub_4029f1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a00
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
	#Procedure 0x402a0f
	.globl sub_402a0f
	.type sub_402a0f, @function
sub_402a0f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402a10
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x402a18
	.globl sub_402a18
	.type sub_402a18, @function
sub_402a18:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a20

	.globl argmatch
	.type argmatch, @function
argmatch:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r13, rcx
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	call	strlen
	mov	r12, rax
	mov	qword ptr [rsp + 0x18], rbx
	mov	rbp, qword ptr [rbx]
	test	rbp, rbp
	je	.label_117
	test	r14, r14
	je	.label_111
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x20], r14
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_113:
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, r12
	call	strncmp
	test	eax, eax
	jne	.label_110
	mov	rdi, rbp
	call	strlen
	cmp	rax, r12
	je	.label_112
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, -1
	je	.label_114
	mov	rdi, rax
	imul	rdi, r13
	add	rdi, qword ptr [rsp + 0x20]
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_110
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_110
.label_114:
	mov	qword ptr [rsp + 8], rbx
	nop	word ptr [rax + rax]
.label_110:
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rax + rbx*8 + 8]
	inc	rbx
	add	r14, r13
	test	rbp, rbp
	jne	.label_113
	jmp	.label_116
.label_117:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_116
.label_111:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_109:
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, r12
	call	strncmp
	test	eax, eax
	jne	.label_115
	mov	rdi, rbp
	call	strlen
	cmp	rax, r12
	je	.label_112
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, -1
	cmove	rax, rbx
	mov	qword ptr [rsp + 8], rax
	je	.label_115
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	nop	word ptr [rax + rax]
.label_115:
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rax + rbx*8 + 8]
	inc	rbx
	test	rbp, rbp
	jne	.label_109
.label_116:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbx, -2
	cmove	rbx, qword ptr [rsp + 8]
.label_112:
	mov	rax, rbx
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
	#Procedure 0x402b98
	.globl sub_402b98
	.type sub_402b98, @function
sub_402b98:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ba0

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r12, rsi
	mov	rbp, rdi
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_118
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stderr]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [rbp]
	test	rbx, rbx
	je	.label_123
	xor	r13d, r13d
	xor	r15d, r15d
	mov	qword ptr [rsp], rbp
	nop	dword ptr [rax + rax]
.label_122:
	test	r15, r15
	je	.label_121
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_119
.label_121:
	mov	r13, qword ptr [rip + stderr]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_124
	xor	eax, eax
	mov	rdi, r13
	call	__fprintf_chk
	mov	r13, r12
	jmp	.label_120
	.section	.text
	.align	16
	#Procedure 0x402c32
	.globl sub_402c32
	.type sub_402c32, @function
sub_402c32:

	nop	word ptr cs:[rax + rax]
.label_126:
	mov	esi, 0xa
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	__overflow
	.section	.text
	.align	16
	#Procedure 0x402c58
	.globl sub_402c58
	.type sub_402c58, @function
sub_402c58:

	nop	word ptr cs:[rax + rax]
.label_119:
	mov	rbp, qword ptr [rip + stderr]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_125
	xor	eax, eax
	mov	rdi, rbp
	mov	rbp, qword ptr [rsp]
	call	__fprintf_chk
.label_120:
	mov	rbx, qword ptr [rbp + r15*8 + 8]
	inc	r15
	add	r12, r14
	test	rbx, rbx
	jne	.label_122
.label_123:
	mov	rdi, qword ptr [rip + stderr]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_126
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
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
	#Procedure 0x402cd0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_16]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_17]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_18]
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
	#Procedure 0x402d25
	.globl sub_402d25
	.type sub_402d25, @function
sub_402d25:

	nop	word ptr cs:[rax + rax]
.label_127:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402d35
	.globl sub_402d35
	.type sub_402d35, @function
sub_402d35:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d3d
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
	je	.label_127
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
	#Procedure 0x402da0
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
	#Procedure 0x402db3
	.globl sub_402db3
	.type sub_402db3, @function
sub_402db3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402dc0
	.globl parse_datetime
	.type parse_datetime, @function
parse_datetime:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	mov	r12, rdi
	mov	edi, OFFSET FLAT:label_128
	call	getenv
	mov	r13, rax
	mov	rdi, r13
	call	tzalloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_130
	xor	ecx, ecx
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	mov	r8, rbx
	mov	r9, r13
	call	parse_datetime2
	mov	bpl, al
	mov	rdi, rbx
	call	tzfree
	jmp	.label_129
.label_130:
	xor	ebp, ebp
.label_129:
	mov	eax, ebp
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
	#Procedure 0x402e27
	.globl sub_402e27
	.type sub_402e27, @function
sub_402e27:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e30

	.globl save_abbr
	.type save_abbr, @function
save_abbr:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	r12, rdi
	mov	rbx, qword ptr [r15 + 0x30]
	mov	r14b, 1
	test	rbx, rbx
	je	.label_132
	cmp	r15, rbx
	ja	.label_134
	lea	rax, [r15 + 0x38]
	cmp	rbx, rax
	jb	.label_132
.label_134:
	mov	ebp, OFFSET FLAT:label_20
	cmp	byte ptr [rbx], 0
	je	.label_137
	lea	rbp, [r12 + 9]
	jmp	.label_140
.label_133:
	mov	rax, qword ptr [r12]
	lea	rbp, [rax + 9]
	test	rax, rax
	cmove	rbp, rcx
	cmovne	r12, rax
.label_140:
	lea	r13, [r12 + 9]
.label_142:
	mov	rdi, rbp
	mov	rsi, rbx
	call	strcmp
	test	eax, eax
	je	.label_137
	cmp	byte ptr [rbp], 0
	jne	.label_135
	cmp	rbp, r13
	jne	.label_138
	cmp	byte ptr [r12 + 8], 0
	je	.label_139
.label_135:
	mov	rdi, rbp
	call	strlen
	lea	rcx, [rbp + rax + 1]
	cmp	byte ptr [rbp + rax + 1], 0
	mov	rbp, rcx
	jne	.label_142
	jmp	.label_133
.label_139:
	mov	rbp, r13
.label_138:
	mov	rdi, rbx
	call	strlen
	lea	rdx, [rax + 1]
	mov	rcx, rbp
	sub	rcx, r13
	mov	rsi, rcx
	not	rsi
	cmp	rdx, rsi
	jbe	.label_136
	call	__errno_location
	mov	dword ptr [rax], 0xc
.label_131:
	xor	r14d, r14d
	jmp	.label_132
.label_136:
	add	rcx, rdx
	cmp	rcx, 0x76
	ja	.label_143
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rbx, rdx
	call	memcpy
	mov	byte ptr [rbp + rbx], 0
	jmp	.label_137
.label_143:
	add	rax, 0x12
	and	rax, 0xfffffffffffffff8
	mov	r13, rdx
	cmp	rdx, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	test	rax, rax
	je	.label_141
	mov	qword ptr [rax], 0
	mov	word ptr [rax + 8], 1
	mov	rbp, rax
	add	rbp, 9
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, r13
	mov	rbx, rax
	call	memcpy
	mov	byte ptr [rbx + r13 + 9], 0
	mov	qword ptr [r12], rbx
	mov	byte ptr [rbx + 8], 0
.label_137:
	mov	qword ptr [r15 + 0x30], rbp
.label_132:
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_141:
	mov	qword ptr [r12], 0
	jmp	.label_131
	.section	.text
	.align	16
	#Procedure 0x402f95
	.globl sub_402f95
	.type sub_402f95, @function
sub_402f95:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402fa0

	.globl dbg_printf
	.type dbg_printf, @function
dbg_printf:
	push	rbx
	sub	rsp, 0xd0
	mov	rbx, rdi
	test	al, al
	je	.label_144
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_144:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	mov	qword ptr [rsp + 0x28], rsi
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_145
	mov	esi, 6
	mov	edx, 1
	call	fwrite
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 8
	mov	rdi, qword ptr [rip + stderr]
	lea	rcx, [rsp]
	mov	esi, 1
	mov	rdx, rbx
	call	__vfprintf_chk
	add	rsp, 0xd0
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403061
	.globl sub_403061
	.type sub_403061, @function
sub_403061:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403070

	.globl fprintftime
	.type fprintftime, @function
fprintftime:
	push	rax
	mov	eax, r8d
	mov	r10, rcx
	mov	ecx, 0
	mov	r8d, 0
	mov	r9d, 0xffffffff
	push	rax
	push	r10
	call	__strftime_internal
	add	rsp, 0x10
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403096
	.globl sub_403096
	.type sub_403096, @function
sub_403096:

	nop	word ptr cs:[rax + rax]
.label_146:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4030a5
	.globl sub_4030a5
	.type sub_4030a5, @function
sub_4030a5:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4030ad
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
	je	.label_146
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
	#Procedure 0x403110
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
	#Procedure 0x403128
	.globl sub_403128
	.type sub_403128, @function
sub_403128:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403130

	.globl __strftime_internal_0
	.type __strftime_internal_0, @function
__strftime_internal_0:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x4b8
	mov	dword ptr [rsp + 0x88], r9d
	mov	dword ptr [rsp + 0x8c], r8d
	mov	r11, rcx
	mov	rbp, rdx
	mov	qword ptr [rsp + 0x48], rsi
	mov	r10, rdi
	mov	eax, dword ptr [r11 + 8]
	mov	rcx, qword ptr [r11 + 0x30]
	test	rcx, rcx
	mov	edx, OFFSET FLAT:label_20
	cmovne	rdx, rcx
	lea	ecx, [rax - 0xc]
	test	eax, eax
	mov	esi, 0xc
	cmovne	esi, eax
	cmp	eax, 0xc
	cmovg	esi, ecx
	mov	dword ptr [rsp + 0x7c], esi
	mov	al, byte ptr [rbp]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x70], rcx
	test	al, al
	je	.label_210
	mov	edi, dword ptr [rsp + 0x4f0]
	mov	qword ptr [rsp + 0x68], rdx
	lea	rcx, [rdx - 1]
	mov	qword ptr [rsp + 0x80], rcx
	xor	r8d, r8d
	mov	qword ptr [rsp + 0x38], r11
	jmp	.label_229
.label_210:
	xor	r8d, r8d
	jmp	.label_270
.label_202:
	mov	rdx, r10
	mov	rsi, qword ptr [rsp + 0x80]
	mov	r9, r15
.label_290:
	movzx	ebx, byte ptr [rsi + rdx]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rbx*4]
	mov	byte ptr [r9 + rdx - 1], bl
	movzx	ebx, byte ptr [rsi + rdx - 1]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rbx*4]
	mov	byte ptr [r9 + rdx - 2], bl
	movzx	ebx, byte ptr [rsi + rdx - 2]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rbx*4]
	mov	byte ptr [r9 + rdx - 3], bl
	movzx	ebx, byte ptr [rsi + rdx - 3]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rbx*4]
	mov	byte ptr [r9 + rdx - 4], bl
	lea	rdx, [rdx - 4]
	cmp	rcx, rdx
	jne	.label_290
.label_207:
	test	rcx, rcx
	mov	r8, qword ptr [rsp + 0x18]
	je	.label_195
	lea	rsi, [r9 + rdx - 1]
	add	rdx, qword ptr [rsp + 0x80]
	neg	rcx
.label_263:
	movzx	edi, byte ptr [rdx]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rdi*4]
	mov	byte ptr [rsi], bl
	dec	rsi
	dec	rdx
	inc	rcx
	jne	.label_263
.label_195:
	add	r9, r10
	mov	rcx, r9
	jmp	.label_228
.label_246:
	mov	esi, 0x20
.label_247:
	mov	rdx, r14
	mov	r12, rdi
	call	memset
	mov	rdi, r12
	mov	r8, qword ptr [rsp + 0x18]
	add	rdi, r14
	mov	cl, byte ptr [rbp]
	mov	r14d, r15d
.label_240:
	mov	byte ptr [rdi], cl
	inc	rdi
	mov	rdx, rdi
.label_237:
	add	r8, rbx
	mov	r10, rdx
	mov	r11, qword ptr [rsp + 0x38]
	jmp	.label_148
.label_318:
	mov	edi, 3
	jmp	.label_275
	.section	.text
	.align	16
	#Procedure 0x40329e
	.globl sub_40329e
	.type sub_40329e, @function
sub_40329e:

	nop	
.label_229:
	cmp	al, 0x25
	jne	.label_278
	xor	eax, eax
	mov	ecx, dword ptr [rsp + 0x8c]
	mov	r12b, cl
	xor	r9d, r9d
.label_1702:
	mov	ebx, eax
	mov	al, r12b
.label_291:
	mov	r12b, al
	inc	rbp
	jmp	.label_282
	.section	.text
	.align	16
	#Procedure 0x4032c4
	.globl sub_4032c4
	.type sub_4032c4, @function
sub_4032c4:

	nop	word ptr cs:[rax + rax]
.label_238:
	inc	rbp
	mov	r9d, edx
.label_282:
	mov	cl, byte ptr [rbp]
	movsx	edx, cl
	mov	al, 1
	lea	esi, [rdx - 0x23]
	cmp	esi, 0xd
	ja	.label_284
	jmp	qword ptr [(rsi * 8) + label_289]
	.section	.text
	.align	16
	#Procedure 0x4032ed
	.globl sub_4032ed
	.type sub_4032ed, @function
sub_4032ed:

	nop	dword ptr [rax]
.label_284:
	cmp	edx, 0x5f
	je	.label_238
	cmp	edx, 0x5e
	je	.label_291
.label_1703:
	add	edx, -0x30
	cmp	edx, 9
	ja	.label_292
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_301:
	mov	edi, 0x7fffffff
	cmp	eax, 0xccccccc
	jg	.label_297
	movsx	ecx, cl
	cmp	eax, 0xccccccc
	jne	.label_279
	lea	edx, [rcx - 0x30]
	cmp	edx, 7
	jg	.label_297
.label_279:
	lea	eax, [rax + rax*4]
	lea	edi, [rcx + rax*2 - 0x30]
.label_297:
	movsx	ecx, byte ptr [rbp + 1]
	inc	rbp
	mov	eax, ecx
	add	eax, -0x30
	cmp	eax, 0xa
	mov	eax, edi
	jb	.label_301
.label_292:
	mov	qword ptr [rsp + 0x18], r8
	movsx	r8d, cl
	cmp	r8d, 0x4f
	je	.label_304
	cmp	r8d, 0x45
	jne	.label_306
.label_304:
	mov	cl, byte ptr [rbp + 1]
	inc	rbp
	jmp	.label_310
	.section	.text
	.align	16
	#Procedure 0x40336c
	.globl sub_40336c
	.type sub_40336c, @function
sub_40336c:

	nop	dword ptr [rax]
.label_278:
	test	edi, edi
	mov	ecx, edi
	mov	edx, 0
	cmovs	ecx, edx
	movsxd	rbx, ecx
	cmp	ebx, 1
	mov	edx, 1
	cmovbe	rbx, rdx
	mov	rdx, qword ptr [rsp + 0x48]
	sub	rdx, r8
	mov	r15d, 1
	cmp	rbx, rdx
	jae	.label_314
	test	r10, r10
	mov	edx, 0
	je	.label_324
	cmp	ecx, 2
	jb	.label_327
	mov	dword ptr [rsp + 0x2c], r14d
	movsxd	r14, edi
	lea	rdx, [r14 - 1]
	mov	esi, 0x20
	mov	rdi, r10
	mov	r15, r8
	mov	r12, r10
	call	memset
	mov	r11, qword ptr [rsp + 0x38]
	mov	r10, r12
	mov	r8, r15
	lea	r10, [r10 + r14 - 1]
	mov	r14d, dword ptr [rsp + 0x2c]
	mov	al, byte ptr [rbp]
.label_327:
	mov	byte ptr [r10], al
	inc	r10
	mov	rdx, r10
.label_324:
	add	r8, rbx
	xor	r15d, r15d
	mov	r10, rdx
.label_314:
	test	r15d, r15d
	mov	eax, 4
	cmove	r15d, eax
.label_206:
	or	r15d, 4
	cmp	r15d, 4
	je	.label_148
	jmp	.label_151
.label_306:
	xor	r8d, r8d
.label_310:
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 8], rdi
	movsx	esi, cl
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	cmp	esi, 0x7a
	ja	.label_149
	mov	r15d, OFFSET FLAT:label_160
	mov	dl, 0x72
	mov	r10d, 0xffffffff
	xor	eax, eax
	xor	edi, edi
	jmp	qword ptr [(rsi * 8) + label_161]
.label_1716:
	cmp	r8d, 0x45
	je	.label_149
	mov	dword ptr [rsp + 0x30], r9d
	mov	qword ptr [rsp + 0x40], r12
	mov	eax, dword ptr [r11 + 0x14]
	mov	r9d, dword ptr [r11 + 0x18]
	mov	edx, eax
	sar	edx, 0x1f
	and	edx, 0x190
	lea	r10d, [rax + rdx - 0x64]
	mov	r11d, dword ptr [r11 + 0x1c]
	lea	edx, [r11 + 0x17e]
	sub	edx, r9d
	movsxd	rbx, edx
	imul	rdx, rbx, -0x6db6db6d
	shr	rdx, 0x20
	add	edx, ebx
	mov	edi, edx
	shr	edi, 0x1f
	sar	edx, 2
	add	edx, edi
	lea	edi, [rdx*8]
	sub	edi, edx
	sub	ebx, edi
	lea	r12d, [r11 + 3]
	sub	r12d, ebx
	js	.label_166
	mov	ebx, 0x16d
	test	r10b, 3
	jne	.label_184
	movsxd	rdi, r10d
	imul	rdi, rdi, 0x51eb851f
	mov	rbx, rdi
	sar	rbx, 0x25
	mov	r14, rdi
	shr	r14, 0x3f
	add	ebx, r14d
	imul	r15d, ebx, 0x64
	sar	rdi, 0x27
	add	edi, r14d
	imul	ebx, edi, 0x190
	xor	edi, edi
	cmp	r10d, ebx
	sete	dil
	add	edi, 0x16d
	cmp	r10d, r15d
	mov	ebx, 0x16e
	cmove	ebx, edi
.label_184:
	sub	r11d, ebx
	lea	edi, [r11 + 0x17e]
	sub	edi, r9d
	movsxd	rdi, edi
	imul	rbx, rdi, -0x6db6db6d
	shr	rbx, 0x20
	add	ebx, edi
	mov	edx, ebx
	shr	edx, 0x1f
	sar	ebx, 2
	add	ebx, edx
	lea	edx, [rbx*8]
	sub	edx, ebx
	sub	edi, edx
	add	r11d, 3
	sub	r11d, edi
	cmovns	r12d, r11d
	shr	r11d, 0x1f
	xor	r11d, 1
	jmp	.label_200
.label_1730:
	test	bl, bl
	je	.label_218
	mov	r12b, 1
.label_218:
	cmp	r8d, 0x45
	jne	.label_220
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	jmp	.label_149
.label_1708:
	dec	rbp
	jmp	.label_149
.label_1709:
	test	r8d, r8d
	jne	.label_149
	mov	r15d, r14d
	xor	eax, eax
	mov	rsi, qword ptr [rsp + 8]
	test	esi, esi
	cmovns	eax, esi
	movsxd	rdx, eax
	cmp	edx, 1
	mov	ebx, 1
	cmova	rbx, rdx
	mov	rdx, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 0x18]
	sub	rdx, r8
	cmp	rbx, rdx
	mov	rdi, qword ptr [rsp + 0x10]
	jae	.label_159
	xor	edx, edx
	test	rdi, rdi
	mov	r14d, r15d
	je	.label_237
	cmp	eax, 2
	jb	.label_240
	movsxd	r14, esi
	dec	r14
	cmp	r9d, 0x30
	je	.label_243
	cmp	r9d, 0x2b
	jne	.label_246
.label_243:
	mov	esi, 0x30
	jmp	.label_247
.label_1710:
	mov	edx, 1
	jmp	.label_250
	.section	.text
	.align	16
	#Procedure 0x4035fa
	.globl sub_4035fa
	.type sub_4035fa, @function
sub_4035fa:

	nop	word ptr [rax + rax]
.label_254:
	inc	rdx
.label_250:
	movzx	ebx, byte ptr [rbp + rdx]
	cmp	bl, 0x3a
	je	.label_254
	cmp	bl, 0x7a
	jne	.label_149
	add	rbp, rdx
	mov	qword ptr [rsp + 0x20], rdx
.label_1747:
	cmp	dword ptr [r11 + 0x20], 0
	js	.label_258
	mov	dword ptr [rsp + 0x30], r9d
	mov	rdx, r11
	mov	r11, qword ptr [rsp + 0x10]
	mov	r9d, dword ptr [rdx + 0x28]
	mov	sil, 1
	test	r9d, r9d
	mov	r10, qword ptr [rsp + 0x20]
	js	.label_259
	test	r9d, r9d
	je	.label_266
	xor	esi, esi
	jmp	.label_259
.label_1711:
	test	r8d, r8d
	jne	.label_149
	test	bl, bl
	je	.label_269
	mov	r12b, 1
.label_269:
	xor	eax, eax
	mov	dl, 0x41
	jmp	.label_245
.label_1712:
	cmp	r8d, 0x45
	je	.label_149
	test	bl, bl
	je	.label_271
	mov	r12b, 1
.label_271:
	xor	eax, eax
	mov	dl, 0x42
	jmp	.label_245
.label_1713:
	cmp	r8d, 0x45
	jne	.label_274
	xor	eax, eax
	mov	dl, 0x43
	jmp	.label_245
.label_1714:
	test	r8d, r8d
	jne	.label_149
	mov	r15d, OFFSET FLAT:label_280
	mov	r10d, 0xffffffff
	jmp	.label_154
.label_1715:
	test	r8d, r8d
	jne	.label_149
	test	r9d, r9d
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_283
	test	ecx, ecx
	jns	.label_283
	mov	r15d, OFFSET FLAT:label_153
	mov	r9d, 0x2b
	mov	r10d, 4
	jmp	.label_154
.label_1717:
	cmp	r8d, 0x45
	je	.label_149
	mov	r13d, dword ptr [r11 + 8]
	jmp	.label_152
.label_1718:
	mov	edi, 2
	cmp	r8d, 0x45
	je	.label_149
	mov	edx, dword ptr [rsp + 0x7c]
	mov	r13d, edx
	jmp	.label_223
.label_1719:
	cmp	r8d, 0x45
	je	.label_149
	mov	r13d, dword ptr [r11 + 4]
	jmp	.label_152
.label_1720:
	cmp	r8d, 0x45
	je	.label_149
	mov	edi, 9
	mov	r11, qword ptr [rsp + 8]
	cmp	r11d, -1
	je	.label_302
	cmp	r11d, 8
	jg	.label_336
	mov	edx, 9
	sub	edx, r11d
	mov	esi, 8
	sub	esi, r11d
	and	edx, 3
	cmp	esi, 3
	mov	esi, dword ptr [rsp + 0x500]
	mov	r13d, esi
	mov	r10, qword ptr [rsp + 0x10]
	jb	.label_307
	lea	esi, [r11 + rdx - 9]
	mov	edi, dword ptr [rsp + 0x500]
	mov	r13d, edi
.label_320:
	movsxd	rdi, r13d
	imul	r13, rdi, 0x68db8bad
	mov	rdi, r13
	shr	rdi, 0x3f
	sar	r13, 0x2c
	add	r13d, edi
	add	esi, 4
	jne	.label_320
.label_307:
	test	edx, edx
	je	.label_328
	neg	edx
	nop	word ptr cs:[rax + rax]
.label_332:
	movsxd	rsi, r13d
	imul	r13, rsi, 0x66666667
	mov	rsi, r13
	shr	rsi, 0x3f
	sar	r13, 0x22
	add	r13d, esi
	inc	edx
	jne	.label_332
.label_328:
	mov	edi, r11d
	jmp	.label_319
.label_1721:
	mov	dil, 1
.label_1739:
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	test	bl, bl
	je	.label_337
	mov	r12d, 0
.label_337:
	je	.label_338
	mov	dil, 1
.label_338:
	mov	dl, 0x70
	mov	al, dil
	jmp	.label_188
.label_1722:
	cmp	r8d, 0x45
	je	.label_149
	mov	r13d, dword ptr [r11]
	jmp	.label_152
.label_1723:
	mov	r15d, OFFSET FLAT:label_155
.label_154:
	mov	dword ptr [rsp + 0x2c], r14d
	mov	qword ptr [rsp + 0x58], r13
	xor	r8d, r8d
	mov	qword ptr [rsp + 0x40], r12
	test	r12b, r12b
	setne	r8b
	sub	rsp, 8
	xor	r14d, r14d
	xor	edi, edi
	mov	rsi, -1
	mov	rdx, r15
	mov	rcx, r11
	mov	r13d, r9d
	mov	eax, dword ptr [rsp + 0x508]
	push	rax
	push	qword ptr [rsp + 0x508]
	mov	qword ptr [rsp + 0x38], r10
	push	r10
	call	__strftime_internal_0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r8, qword ptr [rsp + 0x38]
	add	rsp, 0x20
	mov	rbx, rax
	mov	rdx, qword ptr [rsp + 8]
	test	edx, edx
	cmovns	r14d, edx
	movsxd	rax, r14d
	cmp	rbx, rax
	mov	r14, rbx
	cmovb	r14, rax
	mov	r12, qword ptr [rsp + 0x48]
	sub	r12, r8
	cmp	r14, r12
	jae	.label_159
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_180
	cmp	rbx, rax
	jae	.label_182
	movsxd	rcx, edx
	mov	qword ptr [rsp + 8], rbx
	sub	rcx, rbx
	mov	eax, r13d
	cmp	eax, 0x30
	mov	qword ptr [rsp + 0x30], rcx
	je	.label_168
	cmp	eax, 0x2b
	jne	.label_189
.label_168:
	mov	esi, 0x30
	jmp	.label_192
.label_1724:
	cmp	r8d, 0x45
	je	.label_149
	mov	edx, dword ptr [r11 + 0x1c]
	add	edx, 7
	sub	edx, dword ptr [r11 + 0x18]
	movsxd	r13, edx
	jmp	.label_231
.label_1725:
	cmp	r8d, 0x45
	je	.label_149
	mov	edx, dword ptr [r11 + 0x18]
	mov	esi, dword ptr [r11 + 0x1c]
	lea	edi, [rdx + 6]
	movsxd	rdi, edi
	imul	rbx, rdi, -0x6db6db6d
	shr	rbx, 0x20
	lea	edx, [rbx + rdx + 6]
	mov	ebx, edx
	shr	ebx, 0x1f
	sar	edx, 2
	add	edx, ebx
	lea	ebx, [rdx*8]
	sub	ebx, edx
	sub	edi, ebx
	add	esi, 7
	sub	esi, edi
	movsxd	r13, esi
.label_231:
	imul	rdx, r13, -0x6db6db6d
	shr	rdx, 0x20
	add	r13d, edx
	mov	edx, r13d
	shr	edx, 0x1f
	sar	r13d, 2
	add	r13d, edx
	jmp	.label_152
.label_1726:
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	cmp	r8d, 0x4f
	je	.label_149
	mov	dl, 0x58
	jmp	.label_225
.label_1727:
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	cmp	r8d, 0x45
	je	.label_226
	cmp	r8d, 0x4f
	je	.label_149
	mov	r13d, dword ptr [r11 + 0x14]
	cmp	r13d, 0xfffff894
	setl	bl
	add	r13d, 0x76c
	mov	esi, 4
	jmp	.label_227
.label_1728:
	mov	r15d, r9d
	mov	qword ptr [rsp + 0x40], r12
	mov	r12d, r14d
	mov	qword ptr [rsp + 0x58], r13
	mov	rdi, qword ptr [rsp + 0x68]
	call	strlen
	mov	r9, qword ptr [rsp + 0x10]
	mov	r8, qword ptr [rsp + 0x18]
	mov	r10, rax
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 8]
	test	edx, edx
	cmovns	eax, edx
	cdqe	
	cmp	r10, rax
	mov	r13, r10
	cmovb	r13, rax
	mov	rcx, qword ptr [rsp + 0x48]
	sub	rcx, r8
	cmp	r13, rcx
	jae	.label_159
	xor	ecx, ecx
	test	r9, r9
	mov	r14d, r12d
	je	.label_228
	cmp	r10, rax
	jae	.label_256
	movsxd	rax, edx
	mov	qword ptr [rsp + 0x20], r10
	sub	rax, r10
	cmp	r15d, 0x30
	mov	qword ptr [rsp + 8], rax
	je	.label_257
	cmp	r15d, 0x2b
	jne	.label_261
.label_257:
	mov	esi, 0x30
	jmp	.label_264
.label_1729:
	test	r8d, r8d
	jne	.label_149
	test	bl, bl
	je	.label_267
	mov	r12b, 1
.label_267:
	xor	eax, eax
	mov	dl, 0x61
	jmp	.label_245
.label_1731:
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	cmp	r8d, 0x4f
	je	.label_149
	mov	dl, 0x63
	jmp	.label_225
.label_1732:
	cmp	r8d, 0x45
	je	.label_149
	mov	r13d, dword ptr [r11 + 0xc]
.label_152:
	mov	edi, 2
	jmp	.label_223
.label_1733:
	cmp	r8d, 0x45
	je	.label_149
	mov	edx, dword ptr [r11 + 0xc]
	jmp	.label_277
.label_1734:
	cmp	r8d, 0x45
	je	.label_149
	mov	r13d, dword ptr [r11 + 0x1c]
	cmp	r13d, -1
	setl	bl
	inc	r13d
	mov	edi, 3
	jmp	.label_233
.label_1735:
	cmp	r8d, 0x45
	je	.label_149
	mov	edx, dword ptr [r11 + 8]
	jmp	.label_277
.label_1736:
	cmp	r8d, 0x45
	mov	edx, dword ptr [rsp + 0x7c]
	je	.label_149
.label_277:
	test	r9d, r9d
	mov	esi, 0x5f
	cmove	r9d, esi
	mov	edi, 2
	mov	r13d, edx
	jmp	.label_223
.label_1737:
	cmp	r8d, 0x45
	je	.label_149
	mov	r13d, dword ptr [r11 + 0x10]
	cmp	r13d, -1
	setl	bl
	inc	r13d
	mov	edi, 2
.label_233:
	xor	r14d, r14d
	xor	edx, edx
	jmp	.label_298
.label_1738:
	mov	r15d, r14d
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 8]
	test	edx, edx
	cmovns	eax, edx
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 0x18]
	sub	rcx, r8
	cmp	rbx, rcx
	mov	rdi, qword ptr [rsp + 0x10]
	jae	.label_159
	xor	ecx, ecx
	test	rdi, rdi
	mov	r14d, r15d
	je	.label_204
	cmp	eax, 2
	jb	.label_311
	movsxd	r14, edx
	dec	r14
	cmp	r9d, 0x30
	je	.label_313
	cmp	r9d, 0x2b
	jne	.label_315
.label_313:
	mov	esi, 0x30
	jmp	.label_317
.label_1740:
	imul	r13d, dword ptr [r11 + 0x10], 0xb
	sar	r13d, 5
	inc	r13d
	mov	edi, 1
	xor	r14d, r14d
	xor	edx, edx
	xor	ebx, ebx
.label_298:
	mov	r11, qword ptr [rsp + 8]
	mov	r10, qword ptr [rsp + 0x10]
	jmp	.label_191
.label_1741:
	mov	dword ptr [rsp + 0x30], r9d
	mov	qword ptr [rsp + 0x40], r12
	mov	dword ptr [rsp + 0x2c], r14d
	mov	r14, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp + 0xe0], rax
	movups	xmm0, xmmword ptr [r11]
	movups	xmm1, xmmword ptr [r11 + 0x10]
	movups	xmm2, xmmword ptr [r11 + 0x20]
	movaps	xmmword ptr [rsp + 0xd0], xmm2
	movaps	xmmword ptr [rsp + 0xc0], xmm1
	movaps	xmmword ptr [rsp + 0xb0], xmm0
	lea	rsi, [rsp + 0xb0]
	mov	rdi, qword ptr [rsp + 0x4f8]
	call	mktime_z
	mov	rcx, rax
	mov	r15, rcx
	shr	r15, 0x3f
	lea	r12, [rsp + 0xa7]
	je	.label_150
	nop	word ptr cs:[rax + rax]
.label_205:
	movabs	rdx, 0x6666666666666667
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + rax]
	add	edi, edi
	lea	edi, [rdi + rdi*4]
	mov	ebx, ecx
	sub	ebx, edi
	add	rdx, rax
	mov	al, 0x30
	sub	al, bl
	mov	byte ptr [r12 - 1], al
	dec	r12
	add	rcx, 9
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_205
	jmp	.label_173
	.section	.text
	.align	16
	#Procedure 0x403c75
	.globl sub_403c75
	.type sub_403c75, @function
sub_403c75:

	nop	word ptr cs:[rax + rax]
.label_150:
	movabs	rdx, 0x6666666666666667
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + rax]
	add	edi, edi
	lea	edi, [rdi + rdi*4]
	mov	ebx, ecx
	sub	ebx, edi
	add	rdx, rax
	add	bl, 0x30
	mov	byte ptr [r12 - 1], bl
	dec	r12
	add	rcx, 9
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_150
.label_173:
	xor	edx, edx
	mov	r8, r14
	mov	r10, qword ptr [rsp + 0x10]
	mov	esi, 1
	mov	eax, dword ptr [rsp + 0x2c]
	mov	r9d, dword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 8]
	mov	rbx, r15
	jmp	.label_186
.label_1742:
	mov	r15d, r14d
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 8]
	test	edx, edx
	cmovns	eax, edx
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 0x18]
	sub	rcx, r8
	cmp	rbx, rcx
	mov	rdi, qword ptr [rsp + 0x10]
	jae	.label_159
	xor	ecx, ecx
	test	rdi, rdi
	mov	r14d, r15d
	je	.label_204
	cmp	eax, 2
	jb	.label_209
	movsxd	r14, edx
	dec	r14
	cmp	r9d, 0x30
	je	.label_211
	cmp	r9d, 0x2b
	jne	.label_213
.label_211:
	mov	esi, 0x30
	jmp	.label_215
.label_1743:
	mov	edx, dword ptr [r11 + 0x18]
	lea	esi, [rdx + 6]
	movsxd	r13, esi
	imul	rsi, r13, -0x6db6db6d
	shr	rsi, 0x20
	lea	edx, [rsi + rdx + 6]
	mov	esi, edx
	shr	esi, 0x1f
	sar	edx, 2
	add	edx, esi
	lea	esi, [rdx*8]
	sub	esi, edx
	sub	r13d, esi
	inc	r13d
	jmp	.label_219
.label_1744:
	cmp	r8d, 0x45
	je	.label_149
	mov	r13d, dword ptr [r11 + 0x18]
.label_219:
	mov	edi, 1
.label_223:
	mov	r11, qword ptr [rsp + 8]
.label_158:
	mov	r10, qword ptr [rsp + 0x10]
.label_319:
	mov	ebx, r13d
	shr	ebx, 0x1f
	xor	r14d, r14d
	xor	edx, edx
	jmp	.label_191
.label_1745:
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	cmp	r8d, 0x4f
	je	.label_149
	mov	dl, 0x78
	jmp	.label_225
.label_1746:
	cmp	r8d, 0x45
	jne	.label_241
	xor	eax, eax
	mov	dl, 0x79
	jmp	.label_245
.label_220:
	xor	eax, eax
	mov	edx, ecx
.label_245:
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_188
.label_182:
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	mov	rdx, r15
	mov	r10, qword ptr [rsp + 0x20]
	jmp	.label_249
.label_166:
	dec	r10d
	mov	r14d, 0x16d
	test	r10b, 3
	jne	.label_273
	movsxd	rdx, r10d
	imul	rdx, rdx, 0x51eb851f
	mov	rdi, rdx
	sar	rdi, 0x25
	mov	rbx, rdx
	shr	rbx, 0x3f
	add	edi, ebx
	imul	edi, edi, 0x64
	sar	rdx, 0x27
	add	edx, ebx
	imul	edx, edx, 0x190
	xor	ebx, ebx
	cmp	r10d, edx
	sete	bl
	add	ebx, 0x16d
	cmp	r10d, edi
	mov	r14d, 0x16e
	cmove	r14d, ebx
.label_273:
	lea	edi, [r14 + r11 + 0x17e]
	sub	edi, r9d
	movsxd	rdi, edi
	imul	rbx, rdi, -0x6db6db6d
	shr	rbx, 0x20
	add	ebx, edi
	mov	edx, ebx
	shr	edx, 0x1f
	sar	ebx, 2
	add	ebx, edx
	lea	edx, [rbx*8]
	sub	edx, ebx
	sub	edi, edx
	lea	r12d, [r14 + r11 + 3]
	sub	r12d, edi
	mov	r11d, 0xffffffff
.label_200:
	cmp	esi, 0x47
	je	.label_276
	cmp	esi, 0x67
	jne	.label_330
	movsxd	rdx, eax
	imul	rdx, rdx, 0x51eb851f
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x25
	add	edx, esi
	imul	edx, edx, 0x64
	mov	esi, eax
	sub	esi, edx
	add	esi, r11d
	movsxd	r13, esi
	imul	rdx, r13, 0x51eb851f
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x25
	add	edx, esi
	imul	edx, edx, 0x64
	sub	r13d, edx
	mov	esi, 2
	jns	.label_234
	mov	edx, 0xfffff894
	sub	edx, r11d
	mov	edi, r13d
	neg	edi
	add	r13d, 0x64
	cmp	eax, edx
	cmovl	r13d, edi
.label_234:
	xor	ebx, ebx
	jmp	.label_295
.label_258:
	mov	r8, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 0x10]
	jmp	.label_148
.label_274:
	movsxd	rdx, dword ptr [r11 + 0x14]
	cmp	rdx, -0x76c
	setl	sil
	setg	bl
	imul	r13, rdx, 0x51eb851f
	mov	rdi, r13
	shr	rdi, 0x3f
	sar	r13, 0x25
	add	r13d, edi
	imul	edi, r13d, 0x64
	cmp	edx, edi
	sets	dl
	and	dl, bl
	mov	rbx, rsi
	movzx	edx, dl
	sub	r13d, edx
	add	r13d, 0x13
	mov	esi, 2
	jmp	.label_227
.label_241:
	movsxd	rdx, dword ptr [r11 + 0x14]
	imul	rsi, rdx, 0x51eb851f
	mov	rdi, rsi
	shr	rdi, 0x3f
	sar	rsi, 0x25
	add	esi, edi
	imul	esi, esi, 0x64
	mov	r13d, edx
	sub	r13d, esi
	mov	esi, 2
	jns	.label_309
	mov	edi, r13d
	neg	edi
	add	r13d, 0x64
	cmp	edx, 0xfffff894
	cmovl	r13d, edi
.label_309:
	xor	ebx, ebx
.label_227:
	mov	r11, qword ptr [rsp + 8]
	mov	r10, qword ptr [rsp + 0x10]
	jmp	.label_323
.label_276:
	mov	edx, 0xfffff894
	sub	edx, r11d
	cmp	eax, edx
	setl	bl
	lea	r13d, [r11 + rax + 0x76c]
	mov	esi, 4
.label_295:
	mov	r10, qword ptr [rsp + 0x10]
	mov	r12, qword ptr [rsp + 0x40]
	mov	r9d, dword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 8]
.label_323:
	test	r9d, r9d
	cmove	r9d, dword ptr [rsp + 0x88]
	xor	r14d, r14d
	cmp	r9d, 0x2b
	mov	edx, 0
	jne	.label_335
	cmp	esi, 2
	mov	edx, 0x63
	mov	edi, 0x270f
	cmove	edi, edx
	cmp	edi, r13d
	mov	rdi, rbx
	setb	bl
	cmp	esi, r11d
	setl	dl
	or	dl, bl
	mov	rbx, rdi
.label_335:
	mov	rdi, rsi
.label_191:
	cmp	r8d, 0x4f
	jne	.label_156
	test	bl, bl
	jne	.label_156
	mov	qword ptr [rsp + 8], r11
	xor	eax, eax
	mov	edx, ecx
	mov	r11, qword ptr [rsp + 0x38]
	mov	qword ptr [rsp + 0x20], rdi
	jmp	.label_188
.label_156:
	mov	qword ptr [rsp + 0x40], r12
	mov	eax, r13d
	neg	eax
	test	bl, bl
	cmove	eax, r13d
	lea	r12, [rsp + 0xa7]
	mov	rsi, rdi
	mov	r8, qword ptr [rsp + 0x18]
	nop	word ptr [rax + rax]
.label_172:
	test	r14b, 1
	je	.label_169
	mov	byte ptr [r12 - 1], 0x3a
	dec	r12
.label_169:
	sar	r14d, 1
	mov	ecx, eax
	mov	r13d, 0xcccccccd
	imul	r13, rcx
	shr	r13, 0x23
	lea	ecx, [r13 + r13]
	lea	ecx, [rcx + rcx*4]
	mov	edi, eax
	sub	edi, ecx
	or	edi, 0x30
	mov	byte ptr [r12 - 1], dil
	dec	r12
	cmp	eax, 9
	mov	eax, r13d
	ja	.label_172
	test	r14d, r14d
	mov	eax, r13d
	jne	.label_172
	xor	eax, eax
.label_186:
	cmp	esi, r11d
	cmovl	esi, r11d
	test	dl, dl
	je	.label_181
	mov	dl, 0x2b
.label_181:
	test	bl, bl
	mov	byte ptr [rsp + 0x50], 0x2d
	jne	.label_183
	mov	ecx, edx
	mov	byte ptr [rsp + 0x50], cl
.label_183:
	cmp	r9d, 0x2d
	mov	dword ptr [rsp + 0x2c], eax
	mov	qword ptr [rsp + 0x58], r13
	mov	dword ptr [rsp + 0x30], r9d
	mov	qword ptr [rsp + 0x20], rsi
	jne	.label_221
	cmp	byte ptr [rsp + 0x50], 0
	je	.label_193
	xor	eax, eax
	test	r11d, r11d
	cmovns	eax, r11d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x48]
	sub	rcx, r8
	cmp	rbx, rcx
	jae	.label_159
	xor	ecx, ecx
	test	r10, r10
	je	.label_203
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x20]
	test	ecx, ecx
	jne	.label_177
	test	al, al
	jne	.label_177
	movsxd	r14, r11d
	lea	rdx, [r14 - 1]
	mov	esi, 0x20
	mov	rdi, r10
	mov	r15, r8
	mov	r13, r10
	mov	qword ptr [rsp + 8], r11
	call	memset
	mov	r11, qword ptr [rsp + 8]
	mov	r10, r13
	mov	r8, r15
	lea	r10, [r10 + r14 - 1]
	jmp	.label_177
.label_221:
	movsxd	rax, esi
	mov	rcx, r12
	lea	rdx, [rsp + 0xa7]
	sub	rcx, rdx
	mov	dl, byte ptr [rsp + 0x50]
	neg	dl
	sbb	rbx, rbx
	add	rbx, rcx
	add	rbx, rax
	test	ebx, ebx
	jle	.label_224
	cmp	r9d, 0x5f
	jne	.label_230
	movsxd	r14, ebx
	mov	rax, qword ptr [rsp + 0x48]
	sub	rax, r8
	cmp	r14, rax
	jae	.label_159
	xor	edx, edx
	test	r10, r10
	mov	r15d, 0
	je	.label_268
	mov	esi, 0x20
	mov	rdi, r10
	mov	rdx, r14
	mov	r13, r8
	mov	r15, r10
	mov	qword ptr [rsp + 8], r11
	call	memset
	xor	edx, edx
	mov	r11, qword ptr [rsp + 8]
	mov	r8, r13
	add	r15, r14
.label_268:
	add	r8, r14
	sub	r11d, ebx
	cmovg	edx, r11d
	cmp	byte ptr [rsp + 0x50], 0
	je	.label_248
	xor	eax, eax
	test	edx, edx
	cmovns	eax, edx
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x48]
	sub	rcx, r8
	cmp	rbx, rcx
	jae	.label_159
	xor	r10d, r10d
	test	r15, r15
	je	.label_288
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x20]
	test	ecx, ecx
	jne	.label_260
	test	al, al
	jne	.label_260
	movsxd	r14, edx
	mov	qword ptr [rsp + 0x18], rdx
	lea	rdx, [r14 - 1]
	mov	esi, 0x20
	mov	rdi, r15
	mov	r13, r8
	call	memset
	mov	rdx, qword ptr [rsp + 0x18]
	mov	r8, r13
	lea	r15, [r15 + r14 - 1]
.label_260:
	mov	al, byte ptr [rsp + 0x50]
	mov	byte ptr [r15], al
	inc	r15
	mov	r10, r15
.label_288:
	add	r8, rbx
	mov	r11d, edx
	jmp	.label_193
.label_224:
	cmp	byte ptr [rsp + 0x50], 0
	je	.label_193
	xor	eax, eax
	test	r11d, r11d
	cmovns	eax, r11d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x48]
	sub	rcx, r8
	cmp	rbx, rcx
	jae	.label_159
	xor	ecx, ecx
	test	r10, r10
	je	.label_203
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x20]
	test	ecx, ecx
	jne	.label_177
	test	al, al
	jne	.label_177
	movsxd	r14, r11d
	dec	r14
	mov	eax, dword ptr [rsp + 0x30]
	cmp	eax, 0x30
	mov	qword ptr [rsp + 8], r11
	je	.label_285
	cmp	eax, 0x2b
	jne	.label_235
.label_285:
	mov	esi, 0x30
	jmp	.label_293
.label_230:
	mov	rcx, qword ptr [rsp + 0x48]
	sub	rcx, r8
	cmp	rax, rcx
	jae	.label_159
	cmp	byte ptr [rsp + 0x50], 0
	je	.label_272
	xor	eax, eax
	test	r11d, r11d
	cmovns	eax, r11d
	movsxd	rdx, eax
	cmp	edx, 1
	mov	r15d, 1
	cmova	r15, rdx
	cmp	r15, rcx
	jae	.label_159
	xor	ecx, ecx
	test	r10, r10
	je	.label_322
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x20]
	test	ecx, ecx
	jne	.label_305
	test	al, al
	jne	.label_305
	movsxd	r14, r11d
	dec	r14
	mov	eax, dword ptr [rsp + 0x30]
	cmp	eax, 0x30
	je	.label_312
	cmp	eax, 0x2b
	jne	.label_316
.label_312:
	mov	esi, 0x30
	jmp	.label_308
.label_330:
	movsxd	rdx, r12d
	imul	rsi, rdx, -0x6db6db6d
	shr	rsi, 0x20
	add	edx, esi
	mov	esi, edx
	sar	esi, 2
	shr	edx, 0x1f
	lea	r13d, [rsi + rdx + 1]
	mov	edi, 2
	mov	r10, qword ptr [rsp + 0x10]
	mov	r12, qword ptr [rsp + 0x40]
	mov	r9d, dword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 8]
	jmp	.label_319
.label_248:
	mov	r10, r15
	mov	r11d, edx
	jmp	.label_193
.label_226:
	mov	dl, 0x59
.label_225:
	xor	eax, eax
.label_188:
	mov	dword ptr [rsp + 0x40], eax
	mov	dword ptr [rsp + 0x30], r9d
	mov	qword ptr [rsp + 0x58], r13
	mov	r13, qword ptr [rsp + 0x10]
	mov	word ptr [rsp + 0x63], 0x2520
	test	r8d, r8d
	lea	rcx, [rsp + 0x65]
	je	.label_334
	mov	byte ptr [rsp + 0x65], r8b
	lea	rcx, [rsp + 0x66]
.label_334:
	mov	byte ptr [rcx], dl
	mov	byte ptr [rcx + 1], 0
	lea	rdi, [rsp + 0xb0]
	lea	rdx, [rsp + 0x63]
	mov	esi, 0x400
	mov	rcx, r11
	call	strftime
	mov	rbx, rax
	test	rbx, rbx
	je	.label_157
	mov	rsi, qword ptr [rsp + 0x20]
	mov	r15, r12
	lea	r10, [rbx - 1]
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 8]
	test	edx, edx
	cmovns	eax, edx
	cdqe	
	cmp	r10, rax
	mov	r12, r10
	cmovb	r12, rax
	mov	rcx, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 0x18]
	sub	rcx, r8
	cmp	r12, rcx
	jae	.label_159
	xor	ecx, ecx
	mov	rdi, r13
	test	rdi, rdi
	mov	r11, qword ptr [rsp + 0x38]
	je	.label_171
	cmp	r10, rax
	setae	al
	test	esi, esi
	jne	.label_174
	test	al, al
	jne	.label_174
	mov	dword ptr [rsp + 0x2c], r14d
	movsxd	r14, edx
	sub	r14, r10
	mov	eax, dword ptr [rsp + 0x30]
	cmp	eax, 0x30
	mov	qword ptr [rsp + 0x50], r10
	je	.label_165
	cmp	eax, 0x2b
	jne	.label_179
.label_165:
	mov	esi, 0x30
	jmp	.label_251
.label_157:
	mov	r8, qword ptr [rsp + 0x18]
	mov	r10, r13
	mov	r13, qword ptr [rsp + 0x58]
	mov	r11, qword ptr [rsp + 0x38]
	jmp	.label_148
.label_174:
	mov	eax, dword ptr [rsp + 0x40]
	jmp	.label_187
.label_179:
	mov	esi, 0x20
.label_251:
	mov	rdx, r14
	call	memset
	mov	r10, qword ptr [rsp + 0x50]
	mov	r11, qword ptr [rsp + 0x38]
	mov	rdi, r13
	mov	r8, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rsp + 0x40]
	add	rdi, r14
	mov	r14d, dword ptr [rsp + 0x2c]
.label_187:
	test	al, 1
	jne	.label_196
	test	r15b, 1
	jne	.label_197
	lea	rsi, [rsp + 0xb1]
	mov	rdx, r10
	mov	rbx, rdi
	mov	r15, r10
	call	memcpy
	mov	r10, r15
	mov	r11, qword ptr [rsp + 0x38]
	mov	rdi, rbx
	mov	r8, qword ptr [rsp + 0x18]
	jmp	.label_170
.label_196:
	test	r10, r10
	je	.label_170
	mov	r13d, r14d
	mov	r14, rdi
	mov	r15, r10
	call	__ctype_tolower_loc
	mov	r10, r15
	mov	rdi, r14
	mov	rdx, rbx
	add	rdx, -2
	mov	r9d, r10d
	and	r9d, 3
	cmp	rdx, 3
	mov	rsi, r10
	jb	.label_214
	lea	r8, [r9 + 1]
	nop	dword ptr [rax]
.label_217:
	movzx	esi, byte ptr [rsp + rbx + 0xaf]
	mov	rdx, qword ptr [rax]
	movzx	edx, byte ptr [rdx + rsi*4]
	mov	byte ptr [rdi + rbx - 2], dl
	movzx	edx, byte ptr [rsp + rbx + 0xae]
	mov	rsi, qword ptr [rax]
	movzx	edx, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rbx - 3], dl
	movzx	edx, byte ptr [rsp + rbx + 0xad]
	mov	rsi, qword ptr [rax]
	movzx	edx, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rbx - 4], dl
	movzx	edx, byte ptr [rsp + rbx + 0xac]
	mov	rsi, qword ptr [rax]
	movzx	edx, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rbx - 5], dl
	add	rbx, -4
	cmp	r8, rbx
	jne	.label_217
	dec	rbx
	mov	rsi, rbx
.label_214:
	test	r9, r9
	mov	r8, qword ptr [rsp + 0x18]
	mov	r14d, r13d
	mov	r11, qword ptr [rsp + 0x38]
	je	.label_170
	lea	rdx, [rdi + rsi - 1]
	lea	rsi, [rsp + rsi + 0xb0]
	neg	r9
	nop	word ptr cs:[rax + rax]
.label_147:
	movzx	ecx, byte ptr [rsi]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rcx*4]
	mov	byte ptr [rdx], bl
	dec	rdx
	dec	rsi
	inc	r9
	jne	.label_147
	jmp	.label_170
.label_197:
	test	r10, r10
	je	.label_170
	mov	r13d, r14d
	mov	r14, rdi
	mov	r15, r10
	call	__ctype_toupper_loc
	mov	r10, r15
	mov	rdi, r14
	mov	rdx, rbx
	add	rdx, -2
	mov	r9d, r10d
	and	r9d, 3
	cmp	rdx, 3
	mov	rsi, r10
	jb	.label_262
	lea	r8, [r9 + 1]
	nop	word ptr cs:[rax + rax]
.label_265:
	movzx	esi, byte ptr [rsp + rbx + 0xaf]
	mov	rdx, qword ptr [rax]
	movzx	edx, byte ptr [rdx + rsi*4]
	mov	byte ptr [rdi + rbx - 2], dl
	movzx	edx, byte ptr [rsp + rbx + 0xae]
	mov	rsi, qword ptr [rax]
	movzx	edx, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rbx - 3], dl
	movzx	edx, byte ptr [rsp + rbx + 0xad]
	mov	rsi, qword ptr [rax]
	movzx	edx, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rbx - 4], dl
	movzx	edx, byte ptr [rsp + rbx + 0xac]
	mov	rsi, qword ptr [rax]
	movzx	edx, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rbx - 5], dl
	add	rbx, -4
	cmp	r8, rbx
	jne	.label_265
	dec	rbx
	mov	rsi, rbx
.label_262:
	test	r9, r9
	mov	r8, qword ptr [rsp + 0x18]
	mov	r14d, r13d
	mov	r11, qword ptr [rsp + 0x38]
	je	.label_170
	lea	rdx, [rdi + rsi - 1]
	lea	rsi, [rsp + rsi + 0xb0]
	neg	r9
	nop	dword ptr [rax]
.label_286:
	movzx	ecx, byte ptr [rsi]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rcx*4]
	mov	byte ptr [rdx], bl
	dec	rdx
	dec	rsi
	inc	r9
	jne	.label_286
.label_170:
	add	rdi, r10
	mov	rcx, rdi
.label_171:
	add	r8, r12
	mov	r10, rcx
	jmp	.label_294
.label_256:
	mov	r15, qword ptr [rsp + 0x68]
	mov	rax, qword ptr [rsp + 0x40]
	jmp	.label_296
.label_189:
	mov	esi, 0x20
.label_192:
	mov	rdx, rcx
	mov	rbx, rdi
	call	memset
	mov	rcx, qword ptr [rsp + 0x38]
	add	rbx, qword ptr [rsp + 0x30]
	mov	rdi, rbx
	mov	r9d, r13d
	mov	rdx, r15
	mov	r10, qword ptr [rsp + 0x20]
	mov	rbx, qword ptr [rsp + 8]
.label_249:
	xor	r8d, r8d
	mov	rax, qword ptr [rsp + 0x40]
	test	al, al
	setne	r8b
	sub	rsp, 8
	mov	rsi, r12
	mov	eax, dword ptr [rsp + 0x508]
	push	rax
	push	qword ptr [rsp + 0x508]
	push	r10
	mov	r15, rdi
	call	__strftime_internal_0
	add	rsp, 0x20
	add	rbx, r15
	mov	rcx, rbx
	mov	r8, qword ptr [rsp + 0x18]
.label_180:
	add	r8, r14
	jmp	.label_199
.label_266:
	mov	rdx, qword ptr [rsp + 0x68]
	cmp	byte ptr [rdx], 0x2d
	sete	sil
.label_259:
	cmp	r10, 3
	ja	.label_321
	movsxd	rax, r9d
	imul	rbx, rax, -0x77777777
	shr	rbx, 0x20
	add	ebx, r9d
	mov	edi, ebx
	shr	edi, 0x1f
	sar	ebx, 5
	add	ebx, edi
	imul	r13, rax, -0x6e5d4c3b
	shr	r13, 0x20
	add	r13d, r9d
	mov	edi, r13d
	shr	edi, 0x1f
	sar	r13d, 0xb
	add	r13d, edi
	movsxd	rdi, ebx
	imul	rbx, rdi, -0x77777777
	shr	rbx, 0x20
	add	ebx, edi
	mov	edx, ebx
	shr	edx, 0x1f
	sar	ebx, 5
	add	ebx, edx
	imul	edx, ebx, 0x3c
	imul	ebx, edi, 0x3c
	sub	edi, edx
	sub	r9d, ebx
	jmp	qword ptr [(r10 * 8) + label_325]
.label_1661:
	imul	r13d, r13d, 0x64
	add	r13d, edi
	mov	edi, 5
.label_275:
	xor	r14d, r14d
	jmp	.label_164
.label_283:
	xor	eax, eax
	mov	r10d, ecx
	add	r10d, -6
	cmovs	r10d, eax
	mov	r15d, OFFSET FLAT:label_153
	jmp	.label_154
.label_302:
	mov	edx, dword ptr [rsp + 0x500]
	mov	r13d, edx
	mov	r11d, 9
	jmp	.label_158
.label_321:
	xor	edi, edi
	mov	r15d, 0xe
	jmp	.label_162
.label_1664:
	test	r9d, r9d
	je	.label_163
.label_1663:
	imul	r13d, r13d, 0x2710
	imul	edx, edi, 0x64
	add	r13d, r9d
	add	r13d, edx
	mov	edi, 9
	mov	r14d, 0x14
	jmp	.label_164
.label_336:
	mov	edx, dword ptr [rsp + 0x500]
	mov	r13d, edx
	mov	edi, r11d
	jmp	.label_158
.label_261:
	mov	esi, 0x20
.label_264:
	mov	rdi, r9
	mov	rdx, rax
	mov	r14, r9
	call	memset
	mov	r15, qword ptr [rsp + 0x68]
	add	r14, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x18]
	mov	r9, r14
	mov	r14d, r12d
	mov	rax, qword ptr [rsp + 0x40]
	mov	r10, qword ptr [rsp + 0x20]
.label_296:
	test	bl, bl
	je	.label_185
	test	r10, r10
	je	.label_195
	mov	r12, r9
	mov	rbx, r10
	call	__ctype_tolower_loc
	mov	r10, rbx
	lea	rdx, [r10 - 1]
	mov	ecx, r10d
	and	ecx, 3
	cmp	rdx, 3
	jae	.label_198
	mov	rdx, r10
	mov	r8, qword ptr [rsp + 0x18]
	mov	r9, r12
	jmp	.label_194
.label_185:
	test	al, al
	je	.label_242
	test	r10, r10
	je	.label_195
	mov	r15, r9
	mov	rbx, r10
	call	__ctype_toupper_loc
	mov	r10, rbx
	lea	rdx, [r10 - 1]
	mov	ecx, r10d
	and	ecx, 3
	cmp	rdx, 3
	jae	.label_202
	mov	rdx, r10
	mov	r9, r15
	jmp	.label_207
.label_198:
	mov	rdx, r10
	mov	r8, qword ptr [rsp + 0x18]
	mov	r9, r12
	nop	word ptr cs:[rax + rax]
.label_216:
	movzx	esi, byte ptr [r15 + rdx - 1]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rsi*4]
	mov	byte ptr [r9 + rdx - 1], bl
	movzx	esi, byte ptr [r15 + rdx - 2]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rsi*4]
	mov	byte ptr [r9 + rdx - 2], bl
	movzx	esi, byte ptr [r15 + rdx - 3]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rsi*4]
	mov	byte ptr [r9 + rdx - 3], bl
	movzx	esi, byte ptr [r15 + rdx - 4]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rsi*4]
	mov	byte ptr [r9 + rdx - 4], bl
	lea	rdx, [rdx - 4]
	cmp	rcx, rdx
	jne	.label_216
.label_194:
	test	rcx, rcx
	je	.label_195
	lea	rsi, [r9 + rdx - 1]
	add	rdx, qword ptr [rsp + 0x80]
	neg	rcx
	nop	word ptr [rax + rax]
.label_239:
	movzx	edi, byte ptr [rdx]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rdi*4]
	mov	byte ptr [rsi], bl
	dec	rsi
	dec	rdx
	inc	rcx
	jne	.label_239
	jmp	.label_195
.label_315:
	mov	esi, 0x20
.label_317:
	mov	rdx, r14
	mov	r12, rdi
	call	memset
	add	r12, r14
	mov	r8, qword ptr [rsp + 0x18]
	mov	rdi, r12
	mov	r14d, r15d
.label_311:
	mov	byte ptr [rdi], 0xa
	jmp	.label_252
.label_213:
	mov	esi, 0x20
.label_215:
	mov	rdx, r14
	mov	r12, rdi
	call	memset
	add	r12, r14
	mov	r8, qword ptr [rsp + 0x18]
	mov	rdi, r12
	mov	r14d, r15d
.label_209:
	mov	byte ptr [rdi], 9
.label_252:
	inc	rdi
	mov	rcx, rdi
.label_204:
	add	r8, rbx
	mov	r10, rcx
	mov	r11, qword ptr [rsp + 0x38]
	jmp	.label_148
.label_235:
	mov	esi, 0x20
.label_293:
	mov	rdi, r10
	mov	rdx, r14
	mov	r15, r8
	mov	r13, r10
	call	memset
	mov	r11, qword ptr [rsp + 8]
	mov	r10, r13
	mov	r8, r15
	add	r10, r14
.label_177:
	mov	al, byte ptr [rsp + 0x50]
	mov	byte ptr [r10], al
	inc	r10
	mov	rcx, r10
.label_203:
	add	r8, rbx
	mov	r10, rcx
	jmp	.label_193
.label_242:
	mov	rdi, r9
	mov	rsi, r15
	mov	rdx, r10
	mov	rbx, r9
	mov	r15, r10
	call	memcpy
	mov	r10, r15
	mov	r9, rbx
	mov	r8, qword ptr [rsp + 0x18]
	jmp	.label_195
.label_163:
	test	edi, edi
	je	.label_318
.label_1662:
	imul	r13d, r13d, 0x64
	add	r13d, edi
	mov	edi, 6
	mov	r14d, 4
.label_164:
	mov	r15d, 0x21
.label_162:
	mov	r10, r11
	mov	r9d, dword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 8]
	mov	ebx, r15d
	and	bl, 0x3f
	cmp	bl, 0xe
	je	.label_281
	mov	dl, 1
	cmp	bl, 0x21
	mov	rbx, rsi
	je	.label_191
	mov	r11, qword ptr [rsp + 0x38]
	mov	r8, qword ptr [rsp + 0x18]
	jmp	.label_206
.label_281:
	mov	qword ptr [rsp + 0x20], rdi
.label_149:
	mov	r10, qword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 0x40], r12
	mov	dword ptr [rsp + 0x2c], r14d
	mov	qword ptr [rsp + 0x58], r13
	lea	rax, [rbp - 2]
	xor	ecx, ecx
	xor	r15d, r15d
	mov	edx, 1
	nop	word ptr cs:[rax + rax]
.label_300:
	mov	r12, rdx
	mov	r14, rax
	mov	r13, rcx
	mov	ebx, 1
	sub	rbx, r12
	lea	rdx, [r12 + 1]
	lea	rax, [r14 - 1]
	inc	r15b
	lea	rcx, [r13 - 1]
	cmp	byte ptr [rbp + rbx], 0x25
	jne	.label_300
	mov	r11, qword ptr [rsp + 8]
	test	r11d, r11d
	mov	eax, r11d
	mov	ecx, 0
	cmovs	eax, ecx
	cmp	r12d, eax
	mov	ecx, eax
	cmova	ecx, r12d
	movsxd	rsi, ecx
	mov	rcx, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 0x18]
	sub	rcx, r8
	cmp	rsi, rcx
	mov	rdi, qword ptr [rsp + 0x10]
	jae	.label_159
	test	rdi, rdi
	mov	ecx, 0
	je	.label_201
	movsxd	rdx, r12d
	test	r10d, r10d
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x30], rsi
	jne	.label_222
	cmp	r12d, eax
	jae	.label_222
	movsxd	rax, r11d
	sub	rax, rdx
	cmp	r9d, 0x30
	mov	qword ptr [rsp + 8], rax
	je	.label_326
	cmp	r9d, 0x2b
	jne	.label_329
.label_326:
	mov	esi, 0x30
	jmp	.label_331
.label_329:
	mov	esi, 0x20
.label_331:
	mov	rdx, rax
	call	memset
	mov	rax, qword ptr [rsp + 0x10]
	add	rax, qword ptr [rsp + 8]
	mov	rdi, rax
	mov	rdx, qword ptr [rsp + 0x20]
.label_222:
	mov	rax, qword ptr [rsp + 0x40]
	test	al, 1
	jne	.label_299
	add	rbx, rbp
	mov	rsi, rbx
	mov	rbx, rdi
	call	memcpy
	mov	r10, qword ptr [rsp + 0x20]
	mov	r9, rbx
	mov	r8, qword ptr [rsp + 0x18]
	jmp	.label_178
.label_299:
	mov	rbx, rdi
	call	__ctype_toupper_loc
	mov	r10, qword ptr [rsp + 0x20]
	mov	r9, rbx
	movsxd	rcx, r12d
	lea	rdx, [rcx - 1]
	and	ecx, 3
	cmp	rdx, 3
	mov	rdx, r10
	jb	.label_175
	movsxd	rdx, r12d
	add	r14, rdx
	and	r15b, 3
	movzx	esi, r15b
	mov	rdx, r10
	nop	word ptr cs:[rax + rax]
.label_333:
	movzx	edi, byte ptr [r14 + 1]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rdi*4]
	mov	byte ptr [r9 + rdx - 1], bl
	movzx	edi, byte ptr [r14]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rdi*4]
	mov	byte ptr [r9 + rdx - 2], bl
	movzx	edi, byte ptr [r14 - 1]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rdi*4]
	mov	byte ptr [r9 + rdx - 3], bl
	movzx	edi, byte ptr [r14 - 2]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rdi*4]
	mov	byte ptr [r9 + rdx - 4], bl
	add	rdx, -4
	add	r14, -4
	cmp	rsi, rdx
	jne	.label_333
.label_175:
	test	rcx, rcx
	mov	r8, qword ptr [rsp + 0x18]
	je	.label_178
	lea	rcx, [r9 + rdx - 1]
	add	rdx, rbp
	lea	rdx, [r13 + rdx - 1]
	and	r12d, 3
	neg	r12
	nop	
.label_176:
	movzx	esi, byte ptr [rdx]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rsi*4]
	mov	byte ptr [rcx], bl
	dec	rcx
	dec	rdx
	inc	r12
	jne	.label_176
.label_178:
	add	r9, r10
	mov	rcx, r9
	mov	rsi, qword ptr [rsp + 0x30]
.label_201:
	add	r8, rsi
.label_199:
	mov	r10, rcx
	mov	r11, qword ptr [rsp + 0x38]
	mov	r13, qword ptr [rsp + 0x58]
	mov	r14d, dword ptr [rsp + 0x2c]
	jmp	.label_148
.label_316:
	mov	esi, 0x20
.label_308:
	mov	rdi, r10
	mov	rdx, r14
	mov	r13, r10
	call	memset
	mov	r10, r13
	mov	r8, qword ptr [rsp + 0x18]
	add	r10, r14
.label_305:
	mov	al, byte ptr [rsp + 0x50]
	mov	byte ptr [r10], al
	inc	r10
	mov	rcx, r10
.label_322:
	add	r8, r15
	mov	r10, rcx
.label_272:
	xor	r11d, r11d
	test	r10, r10
	movsxd	r15, ebx
	mov	eax, 0
	je	.label_208
	mov	esi, 0x30
	mov	rdi, r10
	mov	rdx, r15
	mov	r14, r8
	mov	rbx, r10
	call	memset
	xor	r11d, r11d
	mov	r8, r14
	add	rbx, r15
	mov	rax, rbx
.label_208:
	add	r8, r15
	mov	r10, rax
.label_193:
	lea	r15, [rsp + 0xa7]
	sub	r15, r12
	xor	eax, eax
	test	r11d, r11d
	cmovns	eax, r11d
	cdqe	
	cmp	r15, rax
	mov	r13, r15
	cmovb	r13, rax
	mov	rcx, qword ptr [rsp + 0x48]
	sub	rcx, r8
	cmp	r13, rcx
	jae	.label_159
	xor	ecx, ecx
	test	r10, r10
	mov	r14d, dword ptr [rsp + 0x2c]
	je	.label_228
	cmp	r15, rax
	setae	al
	mov	rcx, qword ptr [rsp + 0x20]
	test	ecx, ecx
	jne	.label_232
	test	al, al
	jne	.label_232
	mov	qword ptr [rsp + 0x18], r13
	mov	r13, r8
	movsxd	r14, r11d
	sub	r14, r15
	mov	eax, dword ptr [rsp + 0x30]
	cmp	eax, 0x30
	je	.label_236
	cmp	eax, 0x2b
	jne	.label_287
.label_236:
	mov	esi, 0x30
	jmp	.label_244
.label_287:
	mov	esi, 0x20
.label_244:
	mov	rdi, r10
	mov	rdx, r14
	mov	rbx, r10
	call	memset
	add	rbx, r14
	mov	r8, r13
	mov	r10, rbx
	mov	r14d, dword ptr [rsp + 0x2c]
	mov	r13, qword ptr [rsp + 0x18]
.label_232:
	mov	rax, qword ptr [rsp + 0x40]
	test	al, al
	je	.label_253
	test	r15, r15
	je	.label_167
	mov	r14, r8
	mov	rbx, r10
	call	__ctype_toupper_loc
	mov	r10, rbx
	lea	rcx, [rsp + 0xa7]
	sub	ecx, r12d
	lea	rdx, [rsp + 0xa6]
	sub	rdx, r12
	and	ecx, 3
	cmp	rdx, 3
	mov	rdx, r15
	jb	.label_190
	mov	r8, r12
	neg	r8
	mov	rdi, r10
	sub	rdi, r12
	dec	rdi
	mov	r9, -1
	sub	r8, rcx
	lea	rdx, [rsp + 0xa7]
	nop	dword ptr [rax]
.label_255:
	movzx	esi, byte ptr [r9 + rdx]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rsi*4]
	mov	byte ptr [rdi + rdx], bl
	movzx	esi, byte ptr [r9 + rdx - 1]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rsi*4]
	mov	byte ptr [rdi + rdx - 1], bl
	movzx	esi, byte ptr [r9 + rdx - 2]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rsi*4]
	mov	byte ptr [rdi + rdx - 2], bl
	movzx	esi, byte ptr [r9 + rdx - 3]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rsi*4]
	mov	byte ptr [rdi + rdx - 3], bl
	add	rdx, -4
	mov	rsi, r8
	add	rsi, rdx
	jne	.label_255
	sub	rdx, r12
.label_190:
	test	rcx, rcx
	mov	r8, r14
	mov	r14d, dword ptr [rsp + 0x2c]
	je	.label_167
	lea	rsi, [r10 + rdx - 1]
	lea	rdx, [r12 + rdx - 1]
	neg	rcx
	nop	dword ptr [rax + rax]
.label_212:
	movzx	edi, byte ptr [rdx]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rdi*4]
	mov	byte ptr [rsi], bl
	dec	rsi
	dec	rdx
	inc	rcx
	jne	.label_212
	jmp	.label_167
.label_253:
	mov	rdi, r10
	mov	rsi, r12
	mov	rdx, r15
	mov	r14, r8
	mov	rbx, r10
	call	memcpy
	mov	r10, rbx
	mov	r8, r14
	mov	r14d, dword ptr [rsp + 0x2c]
.label_167:
	add	r10, r15
	mov	rcx, r10
.label_228:
	add	r8, r13
	mov	r10, rcx
	mov	r11, qword ptr [rsp + 0x38]
.label_294:
	mov	r13, qword ptr [rsp + 0x58]
	nop	
.label_148:
	mov	al, byte ptr [rbp + 1]
	inc	rbp
	mov	edi, 0xffffffff
	test	al, al
	jne	.label_229
.label_270:
	cmp	qword ptr [rsp + 0x48], 0
	je	.label_303
	test	r10, r10
	je	.label_303
	mov	byte ptr [r10], 0
.label_303:
	mov	qword ptr [rsp + 0x70], r8
.label_151:
	mov	rax, qword ptr [rsp + 0x70]
	add	rsp, 0x4b8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_159:
	xor	eax, eax
	mov	qword ptr [rsp + 0x70], rax
	jmp	.label_151
	.section	.text
	.align	16
	#Procedure 0x404f79
	.globl sub_404f79
	.type sub_404f79, @function
sub_404f79:

	nop	dword ptr [rax]
.label_340:
	add	rsi, 0x13
	movabs	r8, 0x6666666666666667
	nop	dword ptr [rax]
.label_339:
	mov	rax, rcx
	imul	r8
	mov	r10, rdx
	shr	r10, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + r10]
	add	edi, edi
	lea	r9d, [rdi + rdi*4]
	mov	edi, ecx
	sub	edi, r9d
	mov	eax, 0x30
	sub	eax, edi
	mov	byte ptr [rsi], al
	add	rdx, r10
	add	rcx, 9
	dec	rsi
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_339
	mov	byte ptr [rsi], 0x2d
.label_341:
	mov	rax, rsi
	ret	
	.section	.text
	.align	16
	#Procedure 0x404fd8
	.globl sub_404fd8
	.type sub_404fd8, @function
sub_404fd8:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404fe5

	.globl imaxtostr
	.type imaxtostr, @function
imaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	test	rcx, rcx
	js	.label_340
	add	rsi, 0x14
	movabs	r8, 0x6666666666666667
	nop	word ptr [rax + rax]
.label_342:
	mov	rax, rcx
	imul	r8
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + rax]
	add	edi, edi
	lea	r9d, [rdi + rdi*4]
	mov	edi, ecx
	sub	edi, r9d
	add	edi, 0x30
	mov	byte ptr [rsi - 1], dil
	dec	rsi
	add	rdx, rax
	add	rcx, 9
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_342
	jmp	.label_341
	.section	.text
	.align	16
	#Procedure 0x405040

	.globl tzfree
	.type tzfree, @function
tzfree:
	push	rbx
	cmp	rdi, 2
	jb	.label_343
	nop	word ptr [rax + rax]
.label_344:
	mov	rbx, qword ptr [rdi]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_344
.label_343:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405062
	.globl sub_405062
	.type sub_405062, @function
sub_405062:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405070

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_379
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_378
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
	mov	esi, OFFSET FLAT:label_375
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_361
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_380
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_362
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_381
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_363
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_346
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_365
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_383
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_369
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_345
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_349
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_360
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_364
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_376
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_367
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_382
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_368
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_348
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_358
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_350
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_370
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_351
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_347
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_352
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_371
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_353
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_373
	mov	ecx, OFFSET FLAT:label_374
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_356
	mov	esi, OFFSET FLAT:label_359
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_356
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_377
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_356:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_372
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_374
	mov	ecx, OFFSET FLAT:label_354
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_357
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_354
	mov	ecx, OFFSET FLAT:label_355
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_379:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_366
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
	#Procedure 0x4054ee
	.globl sub_4054ee
	.type sub_4054ee, @function
sub_4054ee:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4054f0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_386
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_385
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_384
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_385
	mov	esi, OFFSET FLAT:label_388
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_389
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_389:
	mov	rbx, r14
.label_385:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_386:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_387
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405591
	.globl sub_405591
	.type sub_405591, @function
sub_405591:

	nop	word ptr cs:[rax + rax]
.label_393:
	mov	byte ptr [r14], 0
	xor	eax, eax
	jmp	.label_390
	.section	.text
	.align	16
	#Procedure 0x4055a8

	.globl str_days
	.type str_days, @function
str_days:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	cmp	byte ptr [rbx + 0xe0], 0
	je	.label_393
	mov	r9, qword ptr [rbx + 8]
	lea	rax, [r9 + 1]
	cmp	rax, 0xd
	ja	.label_396
	imul	rax, rax, 0xb
	lea	r9, qword ptr [rax + str_days.ordinal_values]
	mov	esi, 0x64
	mov	edx, 1
	mov	rcx, -1
	mov	r8d, OFFSET FLAT:label_394
	jmp	.label_395
.label_396:
	mov	esi, 0x64
	mov	edx, 1
	mov	rcx, -1
	mov	r8d, OFFSET FLAT:label_397
.label_395:
	xor	eax, eax
	mov	rdi, r14
	call	__snprintf_chk
.label_390:
	movsxd	rcx, dword ptr [rbx + 0x10]
	test	rcx, rcx
	js	.label_392
	cmp	eax, 0x63
	ja	.label_392
	cmp	ecx, 6
	jg	.label_392
	movsxd	rdi, eax
	add	rdi, r14
	mov	edx, 0x64
	sub	edx, eax
	movsxd	rsi, edx
	mov	r8d, OFFSET FLAT:label_391
	cmp	eax, 1
	adc	r8, 0
	lea	r9, qword ptr [(rcx * 4) + str_days.days_values]
	mov	edx, 1
	mov	rcx, -1
	xor	eax, eax
	call	__snprintf_chk
.label_392:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x405664
	.globl sub_405664
	.type sub_405664, @function
sub_405664:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405670
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
	#Procedure 0x4056a3
	.globl sub_4056a3
	.type sub_4056a3, @function
sub_4056a3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4056b0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_398
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_399
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_401
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_373
	mov	ecx, OFFSET FLAT:label_374
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_400
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x405724
	.globl sub_405724
	.type sub_405724, @function
sub_405724:

	nop	word ptr cs:[rax + rax]
.label_402:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405735
	.globl sub_405735
	.type sub_405735, @function
sub_405735:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405740

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
	je	.label_402
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
	#Procedure 0x4057d0
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
	#Procedure 0x405806
	.globl sub_405806
	.type sub_405806, @function
sub_405806:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405810

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
	jne	.label_407
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_413
	cmp	ecx, 0x55
	jne	.label_403
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_403
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_403
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_403
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_403
	cmp	byte ptr [rax + 5], 0
	jne	.label_403
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_411
	mov	eax, OFFSET FLAT:label_412
	jmp	.label_406
.label_413:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_403
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_403
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_403
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_403
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_403
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_403
	cmp	byte ptr [rax + 7], 0
	je	.label_408
.label_403:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_409
	mov	eax, OFFSET FLAT:label_410
.label_406:
	cmove	rax, rcx
.label_407:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_408:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_404
	mov	eax, OFFSET FLAT:label_405
	jmp	.label_406
	.section	.text
	.align	16
	#Procedure 0x4058d5
	.globl sub_4058d5
	.type sub_4058d5, @function
sub_4058d5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4058e0

	.globl gettime
	.type gettime, @function
gettime:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	clock_gettime
	.section	.text
	.align	16
	#Procedure 0x4058ed
	.globl sub_4058ed
	.type sub_4058ed, @function
sub_4058ed:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4058f0

	.globl lookup_zone
	.type lookup_zone, @function
lookup_zone:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	r15, rdi
	mov	esi, OFFSET FLAT:label_421
	mov	rdi, r14
	call	strcmp
	mov	r12d, OFFSET FLAT:universal_time_zone_table
	test	eax, eax
	je	.label_415
	mov	esi, OFFSET FLAT:label_423
	mov	rdi, r14
	call	strcmp
	mov	r12d, OFFSET FLAT:label_416
	test	eax, eax
	je	.label_415
	mov	esi, OFFSET FLAT:label_422
	mov	rdi, r14
	call	strcmp
	mov	r12d, OFFSET FLAT:label_414
	test	eax, eax
	je	.label_415
	mov	rsi, qword ptr [r15 + 0xe8]
	test	rsi, rsi
	je	.label_419
	add	r15, 0xe8
	mov	r12, r15
	nop	word ptr cs:[rax + rax]
.label_424:
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_415
	mov	rsi, qword ptr [r12 + 0x10]
	add	r12, 0x10
	test	rsi, rsi
	jne	.label_424
.label_419:
	mov	ebx, OFFSET FLAT:time_zone_table
	mov	esi, OFFSET FLAT:label_418
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_420:
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_417
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_420
	jmp	.label_415
.label_417:
	mov	r12, rbx
.label_415:
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4059cd
	.globl sub_4059cd
	.type sub_4059cd, @function
sub_4059cd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4059d0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_16]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_17]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_18]
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
	#Procedure 0x405a24
	.globl sub_405a24
	.type sub_405a24, @function
sub_405a24:

	nop	word ptr cs:[rax + rax]
.label_426:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x405a3c
	.globl sub_405a3c
	.type sub_405a3c, @function
sub_405a3c:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405a48

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_426
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_425
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_426
.label_425:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_426
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_427
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_427:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405ab0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x405ac1
	.globl sub_405ac1
	.type sub_405ac1, @function
sub_405ac1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ad0

	.globl apply_relative_time
	.type apply_relative_time, @function
apply_relative_time:
	lea	r8, [rsp + 8]
	movabs	r10, 0x7fffffffffffffff
	mov	edx, dword ptr [rsp + 0x38]
	test	esi, esi
	js	.label_474
	test	edx, edx
	js	.label_453
	mov	esi, 0x7fffffff
	sub	esi, edx
	lea	rcx, [rdi + 0x98]
	mov	eax, dword ptr [rdi + 0x98]
	cmp	esi, eax
	jl	.label_479
	jmp	.label_429
.label_474:
	test	edx, edx
	js	.label_437
	lea	rcx, [rdi + 0x98]
	mov	eax, dword ptr [rdi + 0x98]
	mov	esi, edx
	xor	esi, 0x80000000
	cmp	eax, esi
	jl	.label_432
	jmp	.label_439
.label_453:
	lea	rcx, [rdi + 0x98]
	mov	eax, dword ptr [rdi + 0x98]
	mov	esi, 0x80000000
	sub	esi, edx
	cmp	eax, esi
	jge	.label_429
.label_479:
	add	edx, eax
	mov	dword ptr [rcx], edx
	mov	r9d, 1
	jmp	.label_443
.label_429:
	add	edx, eax
	mov	dword ptr [rcx], edx
	xor	r9d, r9d
.label_443:
	mov	rdx, qword ptr [r8 + 0x28]
	test	rdx, rdx
	js	.label_446
	mov	rsi, r10
	sub	rsi, rdx
	lea	rcx, [rdi + 0x90]
	mov	rax, qword ptr [rdi + 0x90]
	cmp	rsi, rax
	jl	.label_457
	jmp	.label_458
.label_446:
	lea	rcx, [rdi + 0x90]
	mov	rax, qword ptr [rdi + 0x90]
	lea	rsi, [r10 + 1]
	sub	rsi, rdx
	cmp	rax, rsi
	jge	.label_458
.label_457:
	add	rdx, rax
	mov	qword ptr [rcx], rdx
	mov	r11d, 1
	jmp	.label_462
.label_458:
	add	rdx, rax
	mov	qword ptr [rcx], rdx
	xor	r11d, r11d
.label_462:
	or	r11d, r9d
	mov	rsi, qword ptr [r8 + 0x20]
	test	rsi, rsi
	js	.label_466
	mov	rcx, r10
	sub	rcx, rsi
	lea	r9, [rdi + 0x88]
	mov	rax, qword ptr [rdi + 0x88]
	cmp	rcx, rax
	jl	.label_449
	jmp	.label_475
.label_466:
	lea	r9, [rdi + 0x88]
	mov	rax, qword ptr [rdi + 0x88]
	lea	rcx, [r10 + 1]
	sub	rcx, rsi
	cmp	rax, rcx
	jge	.label_475
.label_449:
	add	rsi, rax
	mov	qword ptr [r9], rsi
	mov	eax, 1
	jmp	.label_481
.label_475:
	add	rsi, rax
	mov	qword ptr [r9], rsi
	xor	eax, eax
.label_481:
	or	r11d, eax
	mov	rsi, qword ptr [r8 + 0x18]
	test	rsi, rsi
	js	.label_430
	mov	rdx, r10
	sub	rdx, rsi
	mov	rcx, rdi
	sub	rcx, -0x80
	mov	rax, qword ptr [rdi + 0x80]
	cmp	rdx, rax
	jl	.label_451
	jmp	.label_433
.label_430:
	mov	rcx, rdi
	sub	rcx, -0x80
	mov	rax, qword ptr [rdi + 0x80]
	lea	rdx, [r10 + 1]
	sub	rdx, rsi
	cmp	rax, rdx
	jge	.label_433
.label_451:
	add	rsi, rax
	mov	qword ptr [rcx], rsi
	mov	eax, 1
	jmp	.label_442
.label_433:
	add	rsi, rax
	mov	qword ptr [rcx], rsi
	xor	eax, eax
.label_442:
	or	r11d, eax
	mov	rsi, qword ptr [r8 + 0x10]
	test	rsi, rsi
	js	.label_447
	mov	rdx, r10
	sub	rdx, rsi
	lea	rcx, [rdi + 0x78]
	mov	rax, qword ptr [rdi + 0x78]
	cmp	rdx, rax
	jl	.label_484
	jmp	.label_456
.label_447:
	lea	rcx, [rdi + 0x78]
	mov	rax, qword ptr [rdi + 0x78]
	lea	rdx, [r10 + 1]
	sub	rdx, rsi
	cmp	rax, rdx
	jge	.label_456
.label_484:
	add	rsi, rax
	mov	qword ptr [rcx], rsi
	mov	eax, 1
	jmp	.label_461
.label_456:
	add	rsi, rax
	mov	qword ptr [rcx], rsi
	xor	eax, eax
.label_461:
	or	r11d, eax
	mov	rsi, qword ptr [r8 + 8]
	test	rsi, rsi
	js	.label_477
	mov	rdx, r10
	sub	rdx, rsi
	lea	rcx, [rdi + 0x70]
	mov	rax, qword ptr [rdi + 0x70]
	cmp	rdx, rax
	jl	.label_467
	jmp	.label_471
.label_477:
	lea	rcx, [rdi + 0x70]
	mov	rax, qword ptr [rdi + 0x70]
	lea	rdx, [r10 + 1]
	sub	rdx, rsi
	cmp	rax, rdx
	jge	.label_471
.label_467:
	add	rsi, rax
	mov	qword ptr [rcx], rsi
	mov	eax, 1
	jmp	.label_476
.label_471:
	add	rsi, rax
	mov	qword ptr [rcx], rsi
	xor	eax, eax
.label_476:
	or	r11d, eax
	mov	rcx, qword ptr [r8]
	test	rcx, rcx
	js	.label_480
	sub	r10, rcx
	lea	rsi, [rdi + 0x68]
	mov	rax, qword ptr [rdi + 0x68]
	cmp	r10, rax
	jl	.label_483
	jmp	.label_431
.label_480:
	lea	rsi, [rdi + 0x68]
	mov	rax, qword ptr [rdi + 0x68]
	inc	r10
	sub	r10, rcx
	cmp	rax, r10
	jge	.label_431
.label_483:
	add	rcx, rax
	mov	qword ptr [rsi], rcx
	mov	eax, 1
	jmp	.label_469
.label_431:
	add	rcx, rax
	mov	qword ptr [rsi], rcx
	xor	eax, eax
.label_469:
	or	r11d, eax
	je	.label_440
	xor	eax, eax
	ret	
.label_437:
	lea	esi, [rdx + 0x7fffffff]
	lea	rcx, [rdi + 0x98]
	mov	eax, dword ptr [rdi + 0x98]
	cmp	esi, eax
	jge	.label_439
.label_432:
	sub	eax, edx
	mov	dword ptr [rcx], eax
	mov	r9d, 1
	jmp	.label_445
.label_439:
	sub	eax, edx
	mov	dword ptr [rcx], eax
	xor	r9d, r9d
.label_445:
	mov	rdx, qword ptr [r8 + 0x28]
	test	rdx, rdx
	js	.label_452
	lea	rcx, [rdi + 0x90]
	mov	rsi, qword ptr [rdi + 0x90]
	lea	rax, [r10 + 1]
	xor	rax, rdx
	cmp	rsi, rax
	jl	.label_455
	jmp	.label_460
.label_452:
	lea	rax, [rdx + r10]
	lea	rcx, [rdi + 0x90]
	mov	rsi, qword ptr [rdi + 0x90]
	cmp	rax, rsi
	jge	.label_460
.label_455:
	sub	rsi, rdx
	mov	qword ptr [rcx], rsi
	mov	r11d, 1
	jmp	.label_464
.label_460:
	sub	rsi, rdx
	mov	qword ptr [rcx], rsi
	xor	r11d, r11d
.label_464:
	or	r11d, r9d
	mov	rsi, qword ptr [r8 + 0x20]
	test	rsi, rsi
	js	.label_470
	lea	r9, [rdi + 0x88]
	mov	rcx, qword ptr [rdi + 0x88]
	lea	rax, [r10 + 1]
	xor	rax, rsi
	cmp	rcx, rax
	jl	.label_472
	jmp	.label_448
.label_470:
	lea	rax, [rsi + r10]
	lea	r9, [rdi + 0x88]
	mov	rcx, qword ptr [rdi + 0x88]
	cmp	rax, rcx
	jge	.label_448
.label_472:
	sub	rcx, rsi
	mov	qword ptr [r9], rcx
	mov	eax, 1
	jmp	.label_485
.label_448:
	sub	rcx, rsi
	mov	qword ptr [r9], rcx
	xor	eax, eax
.label_485:
	or	r11d, eax
	mov	rsi, qword ptr [r8 + 0x18]
	test	rsi, rsi
	js	.label_434
	mov	rcx, rdi
	sub	rcx, -0x80
	mov	rax, qword ptr [rdi + 0x80]
	lea	rdx, [r10 + 1]
	xor	rdx, rsi
	cmp	rax, rdx
	jl	.label_436
	jmp	.label_441
.label_434:
	lea	r9, [rsi + r10]
	mov	rcx, rdi
	sub	rcx, -0x80
	mov	rax, qword ptr [rdi + 0x80]
	cmp	r9, rax
	jge	.label_441
.label_436:
	sub	rax, rsi
	mov	qword ptr [rcx], rax
	mov	eax, 1
	jmp	.label_444
.label_441:
	sub	rax, rsi
	mov	qword ptr [rcx], rax
	xor	eax, eax
.label_444:
	or	r11d, eax
	mov	rsi, qword ptr [r8 + 0x10]
	test	rsi, rsi
	js	.label_450
	lea	rcx, [rdi + 0x78]
	mov	rax, qword ptr [rdi + 0x78]
	lea	rdx, [r10 + 1]
	xor	rdx, rsi
	cmp	rax, rdx
	jl	.label_454
	jmp	.label_459
.label_450:
	lea	rdx, [rsi + r10]
	lea	rcx, [rdi + 0x78]
	mov	rax, qword ptr [rdi + 0x78]
	cmp	rdx, rax
	jge	.label_459
.label_454:
	sub	rax, rsi
	mov	qword ptr [rcx], rax
	mov	eax, 1
	jmp	.label_463
.label_459:
	sub	rax, rsi
	mov	qword ptr [rcx], rax
	xor	eax, eax
.label_463:
	or	r11d, eax
	mov	rsi, qword ptr [r8 + 8]
	test	rsi, rsi
	js	.label_465
	lea	rcx, [rdi + 0x70]
	mov	rax, qword ptr [rdi + 0x70]
	lea	rdx, [r10 + 1]
	xor	rdx, rsi
	cmp	rax, rdx
	jl	.label_468
	jmp	.label_473
.label_465:
	lea	rdx, [rsi + r10]
	lea	rcx, [rdi + 0x70]
	mov	rax, qword ptr [rdi + 0x70]
	cmp	rdx, rax
	jge	.label_473
.label_468:
	sub	rax, rsi
	mov	qword ptr [rcx], rax
	mov	eax, 1
	jmp	.label_478
.label_473:
	sub	rax, rsi
	mov	qword ptr [rcx], rax
	xor	eax, eax
.label_478:
	or	r11d, eax
	mov	rcx, qword ptr [r8]
	test	rcx, rcx
	js	.label_482
	lea	r8, [rdi + 0x68]
	mov	rsi, qword ptr [rdi + 0x68]
	inc	r10
	xor	r10, rcx
	cmp	rsi, r10
	jl	.label_428
	jmp	.label_435
.label_482:
	add	r10, rcx
	lea	r8, [rdi + 0x68]
	mov	rsi, qword ptr [rdi + 0x68]
	cmp	r10, rsi
	jge	.label_435
.label_428:
	sub	rsi, rcx
	mov	qword ptr [r8], rsi
	mov	eax, 1
	jmp	.label_438
.label_435:
	sub	rsi, rcx
	mov	qword ptr [r8], rsi
	xor	eax, eax
.label_438:
	or	r11d, eax
	je	.label_440
	xor	eax, eax
	ret	
.label_440:
	mov	byte ptr [rdi + 0xa1], 1
	mov	al, 1
	ret	
	.section	.text
	.align	16
	#Procedure 0x405f4c
	.globl sub_405f4c
	.type sub_405f4c, @function
sub_405f4c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405f50
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
	#Procedure 0x406011
	.globl sub_406011
	.type sub_406011, @function
sub_406011:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406020

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
	je	.label_486
	cmp	r15, -2
	jb	.label_486
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_486
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_486:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x406076
	.globl sub_406076
	.type sub_406076, @function
sub_406076:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406080

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_487
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_394
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4060b0

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
	jne	.label_488
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_488
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_489
.label_488:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_489:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_490
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_490:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40611e
	.globl sub_40611e
	.type sub_40611e, @function
sub_40611e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x406120

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_492
	cmp	byte ptr [rax], 0x43
	jne	.label_494
	cmp	byte ptr [rax + 1], 0
	je	.label_491
.label_494:
	mov	esi, OFFSET FLAT:label_493
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_492
.label_491:
	xor	ebx, ebx
.label_492:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x406151
	.globl sub_406151
	.type sub_406151, @function
sub_406151:

	nop	word ptr cs:[rax + rax]
.label_495:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_496
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_498:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_497
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_495
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_394
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_499:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x4061dd

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_500
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_498
	cmp	dword ptr [rbp], 0x20
	jne	.label_498
.label_500:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_499
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406220
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
	je	.label_501
	mov	qword ptr [rax], rbx
.label_501:
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
	#Procedure 0x40630c
	.globl sub_40630c
	.type sub_40630c, @function
sub_40630c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406310

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
	jne	.label_503
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_502
	test	cl, cl
	jne	.label_502
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_502
.label_503:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_502
	call	__errno_location
	mov	dword ptr [rax], 0
.label_502:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406370

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
	#Procedure 0x406389
	.globl sub_406389
	.type sub_406389, @function
sub_406389:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406390

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	.section	.text
	.align	16
	#Procedure 0x40639a
	.globl sub_40639a
	.type sub_40639a, @function
sub_40639a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4063a0
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
	#Procedure 0x4063b9
	.globl sub_4063b9
	.type sub_4063b9, @function
sub_4063b9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4063c0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_16]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_17]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_18]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_504
	test	rsi, rsi
	je	.label_504
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
.label_504:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40642c
	.globl sub_40642c
	.type sub_40642c, @function
sub_40642c:

	nop	dword ptr [rax]
.label_505:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x406435
	.globl sub_406435
	.type sub_406435, @function
sub_406435:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40643b

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_506
	test	rax, rax
	je	.label_505
.label_506:
	pop	rbx
	ret	
.label_510:
	call	xalloc_die
.label_508:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_510
	mov	qword ptr [rsi], rbx
.label_507:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_509
	test	rax, rax
	je	.label_510
.label_509:
	pop	rbx
	ret	
.label_511:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x406482
	.globl sub_406482
	.type sub_406482, @function
sub_406482:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40648e
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_508
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_511
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_507
	call	free
	xor	eax, eax
	jmp	.label_509
.label_513:
	call	xalloc_die
.label_512:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_514
	test	rax, rax
	je	.label_513
.label_514:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4064d9

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_512
	test	rbx, rbx
	jne	.label_512
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4064f0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_16]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_17]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_18]
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
	#Procedure 0x40655e
	.globl sub_40655e
	.type sub_40655e, @function
sub_40655e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x406560
	.globl argmatch_to_argument
	.type argmatch_to_argument, @function
argmatch_to_argument:

	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rcx
	mov	r15, rdx
	mov	rbx, rsi
	mov	r12, rdi
	mov	r13, qword ptr [rbx]
	xor	eax, eax
	test	r13, r13
	je	.label_515
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_516:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_515
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_516
.label_515:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4065c3
	.globl sub_4065c3
	.type sub_4065c3, @function
sub_4065c3:

	nop	word ptr cs:[rax + rax]
.label_517:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4065d5
	.globl sub_4065d5
	.type sub_4065d5, @function
sub_4065d5:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4065db
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_518
	test	rax, rax
	je	.label_517
.label_518:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4065f0
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
	#Procedure 0x406665
	.globl sub_406665
	.type sub_406665, @function
sub_406665:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406670
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40667a
	.globl sub_40667a
	.type sub_40667a, @function
sub_40667a:

	nop	word ptr [rax + rax]
.label_519:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x406685
	.globl sub_406685
	.type sub_406685, @function
sub_406685:

	nop	
	.section	.text
	.align	16
	#Procedure 0x406687
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_16]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_17]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_18]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_519
	test	rdx, rdx
	je	.label_519
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
	#Procedure 0x4066f0

	.globl __strftime_internal
	.type __strftime_internal, @function
__strftime_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x4a8
	mov	r13d, r9d
	mov	dword ptr [rsp + 0x70], r8d
	mov	dword ptr [rsp + 0x74], ecx
	mov	rbx, rdx
	mov	r12, rsi
	mov	qword ptr [rsp + 8], rdi
	mov	eax, dword ptr [rbx + 8]
	mov	rcx, qword ptr [rbx + 0x30]
	test	rcx, rcx
	mov	edx, OFFSET FLAT:label_20
	cmovne	rdx, rcx
	mov	qword ptr [rsp + 0x60], rdx
	lea	ecx, [rax - 0xc]
	test	eax, eax
	mov	edx, 0xc
	cmovne	edx, eax
	cmp	eax, 0xc
	cmovg	edx, ecx
	mov	dword ptr [rsp + 0x6c], edx
	mov	cl, byte ptr [r12]
	test	cl, cl
	mov	eax, 0
	je	.label_645
	lea	rax, [rsp + 0x80]
	mov	rdx, -0x17
	sub	rdx, rax
	mov	qword ptr [rsp + 0x78], rdx
	xor	r11d, r11d
	mov	qword ptr [rsp + 0x28], rbx
	jmp	.label_643
.label_659:
	test	rbp, rbp
	mov	rbx, qword ptr [rsp + 8]
	je	.label_655
.label_673:
	mov	edi, 0x20
	mov	rsi, rbx
	call	fputc
	dec	rbp
	jne	.label_673
.label_655:
	movsx	edi, byte ptr [r12]
.label_649:
	mov	rsi, rbx
	call	fputc
	mov	r11, qword ptr [rsp + 0x20]
	mov	r9d, dword ptr [rsp + 0x14]
.label_591:
	add	r11, r15
	mov	r8, qword ptr [rsp + 0x30]
	jmp	.label_620
.label_663:
	mov	eax, 3
	jmp	.label_681
	.section	.text
	.align	16
	#Procedure 0x4067c3
	.globl sub_4067c3
	.type sub_4067c3, @function
sub_4067c3:

	nop	word ptr cs:[rax + rax]
.label_643:
	cmp	cl, 0x25
	jne	.label_685
	xor	eax, eax
	mov	ecx, dword ptr [rsp + 0x74]
	mov	dil, cl
	xor	r14d, r14d
.label_1837:
	mov	ebx, eax
	mov	al, dil
.label_535:
	mov	dil, al
	inc	r12
	jmp	.label_688
	.section	.text
	.align	16
	#Procedure 0x4067f2
	.globl sub_4067f2
	.type sub_4067f2, @function
sub_4067f2:

	nop	word ptr cs:[rax + rax]
.label_534:
	inc	r12
	mov	r14d, edx
.label_688:
	mov	cl, byte ptr [r12]
	movsx	edx, cl
	mov	al, 1
	lea	esi, [rdx - 0x23]
	cmp	esi, 0xd
	ja	.label_522
	jmp	qword ptr [(rsi * 8) + label_530]
	.section	.text
	.align	16
	#Procedure 0x40681e
	.globl sub_40681e
	.type sub_40681e, @function
sub_40681e:

	nop	
.label_522:
	cmp	edx, 0x5f
	je	.label_534
	cmp	edx, 0x5e
	je	.label_535
.label_1838:
	add	edx, -0x30
	cmp	edx, 9
	ja	.label_537
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_550:
	mov	r13d, 0x7fffffff
	cmp	eax, 0xccccccc
	jg	.label_541
	movsx	ecx, cl
	cmp	eax, 0xccccccc
	jne	.label_545
	lea	edx, [rcx - 0x30]
	cmp	edx, 7
	jg	.label_541
.label_545:
	lea	eax, [rax + rax*4]
	lea	r13d, [rcx + rax*2 - 0x30]
.label_541:
	movsx	ecx, byte ptr [r12 + 1]
	inc	r12
	mov	eax, ecx
	add	eax, -0x30
	cmp	eax, 0xa
	mov	eax, r13d
	jb	.label_550
.label_537:
	movsx	r10d, cl
	cmp	r10d, 0x4f
	je	.label_552
	cmp	r10d, 0x45
	jne	.label_555
.label_552:
	mov	cl, byte ptr [r12 + 1]
	inc	r12
	jmp	.label_560
	.section	.text
	.align	16
	#Procedure 0x40689e
	.globl sub_40689e
	.type sub_40689e, @function
sub_40689e:

	nop	
.label_685:
	test	r13d, r13d
	mov	eax, r13d
	mov	edx, 0
	cmovs	eax, edx
	movsxd	r14, eax
	cmp	r14d, 1
	mov	edx, 1
	cmovbe	r14, rdx
	mov	rdx, r11
	not	rdx
	mov	edi, 1
	cmp	r14, rdx
	jae	.label_561
	cmp	qword ptr [rsp + 8], 0
	je	.label_570
	cmp	eax, 2
	mov	qword ptr [rsp + 0x30], r8
	mov	dword ptr [rsp + 0x14], r9d
	mov	r15, r11
	jb	.label_573
	movsxd	rbp, r13d
	dec	rbp
	mov	rbx, qword ptr [rsp + 8]
	je	.label_578
	nop	word ptr cs:[rax + rax]
.label_588:
	mov	edi, 0x20
	mov	rsi, rbx
	call	fputc
	dec	rbp
	jne	.label_588
	mov	cl, byte ptr [r12]
	jmp	.label_578
.label_555:
	xor	r10d, r10d
.label_560:
	mov	qword ptr [rsp + 0x48], rdi
	movsx	esi, cl
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	cmp	esi, 0x7a
	ja	.label_523
	mov	ebp, OFFSET FLAT:label_160
	mov	dl, 0x72
	mov	r15d, 0xffffffff
	xor	eax, eax
	xor	edi, edi
	jmp	qword ptr [(rsi * 8) + label_594]
.label_1765:
	cmp	r10d, 0x45
	je	.label_523
	mov	rax, qword ptr [rsp + 0x28]
	mov	r8d, dword ptr [rax + 0x14]
	mov	r9d, dword ptr [rax + 0x18]
	mov	edx, r8d
	sar	edx, 0x1f
	and	edx, 0x190
	mov	rdi, rax
	lea	eax, [r8 + rdx - 0x64]
	mov	edi, dword ptr [rdi + 0x1c]
	lea	ebp, [rdi + 0x17e]
	sub	ebp, r9d
	movsxd	rbp, ebp
	imul	rbx, rbp, -0x6db6db6d
	shr	rbx, 0x20
	add	ebx, ebp
	mov	edx, ebx
	shr	edx, 0x1f
	sar	ebx, 2
	add	ebx, edx
	lea	edx, [rbx*8]
	sub	edx, ebx
	sub	ebp, edx
	lea	r15d, [rdi + 3]
	sub	r15d, ebp
	js	.label_603
	mov	ebp, 0x16d
	test	al, 3
	jne	.label_612
	movsxd	rdx, eax
	imul	rdx, rdx, 0x51eb851f
	mov	rbp, rdx
	sar	rbp, 0x25
	mov	rbx, r11
	mov	r11, rdx
	shr	r11, 0x3f
	add	ebp, r11d
	imul	ebp, ebp, 0x64
	mov	dword ptr [rsp + 0x14], ebp
	sar	rdx, 0x27
	add	edx, r11d
	mov	r11, rbx
	imul	ebp, edx, 0x190
	xor	edx, edx
	cmp	eax, ebp
	sete	dl
	add	edx, 0x16d
	cmp	eax, dword ptr [rsp + 0x14]
	mov	ebp, 0x16e
	cmove	ebp, edx
.label_612:
	sub	edi, ebp
	lea	edx, [rdi + 0x17e]
	sub	edx, r9d
	movsxd	rdx, edx
	imul	rbp, rdx, -0x6db6db6d
	shr	rbp, 0x20
	add	ebp, edx
	mov	ebx, ebp
	shr	ebx, 0x1f
	sar	ebp, 2
	add	ebp, ebx
	lea	ebx, [rbp*8]
	sub	ebx, ebp
	sub	edx, ebx
	add	edi, 3
	sub	edi, edx
	cmovns	r15d, edi
	shr	edi, 0x1f
	xor	edi, 1
	jmp	.label_627
.label_573:
	mov	rbx, qword ptr [rsp + 8]
.label_578:
	movsx	edi, cl
	mov	rsi, rbx
	call	fputc
	mov	r11, r15
	mov	r8, qword ptr [rsp + 0x30]
	mov	r9d, dword ptr [rsp + 0x14]
.label_570:
	add	r11, r14
	xor	edi, edi
.label_561:
	test	edi, edi
	mov	eax, 4
	cmove	edi, eax
.label_672:
	or	edi, 4
	cmp	edi, 4
	mov	eax, 0
	je	.label_620
	jmp	.label_645
.label_1779:
	test	bl, bl
	je	.label_646
	mov	al, 1
	mov	qword ptr [rsp + 0x48], rax
.label_646:
	cmp	r10d, 0x45
	jne	.label_647
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_523
.label_1757:
	dec	r12
	jmp	.label_523
.label_1758:
	test	r10d, r10d
	jne	.label_523
	mov	dword ptr [rsp + 0x14], r9d
	mov	qword ptr [rsp + 0x30], r8
	xor	eax, eax
	test	r13d, r13d
	cmovns	eax, r13d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	r15d, 1
	cmova	r15, rcx
	mov	rcx, r11
	not	rcx
	cmp	r15, rcx
	jae	.label_538
	cmp	qword ptr [rsp + 8], 0
	mov	r9d, dword ptr [rsp + 0x14]
	je	.label_591
	mov	qword ptr [rsp + 0x20], r11
	cmp	eax, 2
	mov	rbx, qword ptr [rsp + 8]
	jb	.label_655
	movsxd	rbp, r13d
	dec	rbp
	cmp	r14d, 0x30
	je	.label_657
	cmp	r14d, 0x2b
	jne	.label_659
.label_657:
	test	rbp, rbp
	mov	rbx, qword ptr [rsp + 8]
	je	.label_655
.label_665:
	mov	edi, 0x30
	mov	rsi, rbx
	call	fputc
	dec	rbp
	jne	.label_665
	jmp	.label_655
.label_1759:
	mov	edx, 1
	jmp	.label_667
	.section	.text
	.align	16
	#Procedure 0x406b6e
	.globl sub_406b6e
	.type sub_406b6e, @function
sub_406b6e:

	nop	
.label_670:
	inc	rdx
.label_667:
	movzx	ebx, byte ptr [r12 + rdx]
	cmp	bl, 0x3a
	je	.label_670
	cmp	bl, 0x7a
	jne	.label_523
	add	r12, rdx
	mov	qword ptr [rsp + 0x18], rdx
.label_1796:
	mov	rbx, qword ptr [rsp + 0x28]
	cmp	dword ptr [rbx + 0x20], 0
	js	.label_620
	mov	rdx, qword ptr [rsp + 0x18]
	mov	qword ptr [rsp + 0x20], r11
	mov	eax, dword ptr [rbx + 0x28]
	mov	sil, 1
	test	eax, eax
	js	.label_675
	test	eax, eax
	je	.label_680
	xor	esi, esi
	jmp	.label_675
.label_1760:
	test	r10d, r10d
	jne	.label_523
	test	bl, bl
	je	.label_684
	mov	al, 1
	mov	qword ptr [rsp + 0x48], rax
.label_684:
	xor	eax, eax
	mov	dl, 0x41
	jmp	.label_524
.label_1761:
	cmp	r10d, 0x45
	je	.label_523
	test	bl, bl
	je	.label_689
	mov	al, 1
	mov	qword ptr [rsp + 0x48], rax
.label_689:
	xor	eax, eax
	mov	dl, 0x42
	jmp	.label_524
.label_1762:
	cmp	r10d, 0x45
	jne	.label_693
	xor	eax, eax
	mov	dl, 0x43
	jmp	.label_524
.label_1763:
	test	r10d, r10d
	jne	.label_523
	mov	ebp, OFFSET FLAT:label_280
	mov	r15d, 0xffffffff
	jmp	.label_532
.label_1764:
	test	r10d, r10d
	jne	.label_523
	test	r14d, r14d
	jne	.label_539
	test	r13d, r13d
	jns	.label_539
	mov	ebp, OFFSET FLAT:label_153
	mov	r14d, 0x2b
	mov	r15d, 4
	jmp	.label_532
.label_1766:
	cmp	r10d, 0x45
	je	.label_523
	mov	rbx, qword ptr [rsp + 0x28]
	mov	r8d, dword ptr [rbx + 8]
	mov	edi, 2
	jmp	.label_542
.label_1767:
	mov	edi, 2
	cmp	r10d, 0x45
	je	.label_523
	mov	edx, dword ptr [rsp + 0x6c]
	mov	r8d, edx
	jmp	.label_542
.label_1768:
	cmp	r10d, 0x45
	je	.label_523
	mov	rbx, qword ptr [rsp + 0x28]
	mov	r8d, dword ptr [rbx + 4]
	mov	edi, 2
	jmp	.label_542
.label_1769:
	cmp	r10d, 0x45
	je	.label_523
	mov	edi, 9
	cmp	r13d, -1
	je	.label_568
	cmp	r13d, 8
	jg	.label_569
	mov	edx, 9
	sub	edx, r13d
	mov	esi, 8
	sub	esi, r13d
	and	edx, 3
	cmp	esi, 3
	mov	esi, dword ptr [rsp + 0x4e8]
	mov	r8d, esi
	jb	.label_571
	lea	esi, [r13 + rdx - 9]
	mov	edi, dword ptr [rsp + 0x4e8]
	mov	r8d, edi
	nop	word ptr cs:[rax + rax]
.label_586:
	movsxd	rdi, r8d
	imul	r8, rdi, 0x68db8bad
	mov	rdi, r8
	shr	rdi, 0x3f
	sar	r8, 0x2c
	add	r8d, edi
	add	esi, 4
	jne	.label_586
.label_571:
	test	edx, edx
	je	.label_590
	neg	edx
	nop	word ptr [rax + rax]
.label_592:
	movsxd	rsi, r8d
	imul	r8, rsi, 0x66666667
	mov	rsi, r8
	shr	rsi, 0x3f
	sar	r8, 0x22
	add	r8d, esi
	inc	edx
	jne	.label_592
	jmp	.label_590
.label_1770:
	mov	dil, 1
.label_1788:
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	test	bl, bl
	je	.label_602
	mov	eax, 0
	mov	qword ptr [rsp + 0x48], rax
.label_602:
	je	.label_676
	mov	dil, 1
.label_676:
	mov	dl, 0x70
	mov	al, dil
	jmp	.label_520
.label_1771:
	cmp	r10d, 0x45
	je	.label_523
	mov	rbx, qword ptr [rsp + 0x28]
	mov	r8d, dword ptr [rbx]
	mov	edi, 2
	jmp	.label_542
.label_1772:
	mov	ebp, OFFSET FLAT:label_155
.label_532:
	mov	dword ptr [rsp + 0x14], r9d
	mov	qword ptr [rsp + 0x30], r8
	xor	ecx, ecx
	mov	rax, qword ptr [rsp + 0x48]
	test	al, al
	setne	cl
	xor	ebx, ebx
	xor	edi, edi
	mov	rsi, rbp
	mov	rdx, qword ptr [rsp + 0x28]
	mov	r8d, r14d
	mov	r9d, r15d
	mov	eax, dword ptr [rsp + 0x4e8]
	push	rax
	push	qword ptr [rsp + 0x4e8]
	mov	qword ptr [rsp + 0x30], r11
	call	__strftime_internal
	mov	r11, qword ptr [rsp + 0x30]
	add	rsp, 0x10
	test	r13d, r13d
	cmovns	ebx, r13d
	movsxd	rcx, ebx
	cmp	rax, rcx
	mov	rsi, rax
	cmovb	rsi, rcx
	mov	rdx, r11
	not	rdx
	cmp	rsi, rdx
	jae	.label_538
	cmp	qword ptr [rsp + 8], 0
	mov	r9d, dword ptr [rsp + 0x14]
	je	.label_626
	mov	qword ptr [rsp + 0x40], rsi
	mov	dword ptr [rsp + 0x18], r15d
	cmp	rax, rcx
	mov	r15, qword ptr [rsp + 8]
	jae	.label_619
	movsxd	rbx, r13d
	sub	rbx, rax
	cmp	r14d, 0x30
	je	.label_632
	cmp	r14d, 0x2b
	jne	.label_634
.label_632:
	test	rbx, rbx
	mov	r15, qword ptr [rsp + 8]
	je	.label_619
	nop	word ptr cs:[rax + rax]
.label_639:
	mov	edi, 0x30
	mov	rsi, r15
	call	fputc
	dec	rbx
	jne	.label_639
	jmp	.label_619
.label_1773:
	cmp	r10d, 0x45
	je	.label_523
	mov	rbx, qword ptr [rsp + 0x28]
	mov	edx, dword ptr [rbx + 0x1c]
	add	edx, 7
	sub	edx, dword ptr [rbx + 0x18]
	movsxd	r8, edx
	jmp	.label_641
.label_1774:
	cmp	r10d, 0x45
	je	.label_523
	mov	rbx, qword ptr [rsp + 0x28]
	mov	edx, dword ptr [rbx + 0x18]
	mov	esi, dword ptr [rbx + 0x1c]
	lea	edi, [rdx + 6]
	movsxd	rdi, edi
	imul	rbp, rdi, -0x6db6db6d
	shr	rbp, 0x20
	lea	edx, [rbp + rdx + 6]
	mov	ebp, edx
	shr	ebp, 0x1f
	sar	edx, 2
	add	edx, ebp
	lea	ebp, [rdx*8]
	sub	ebp, edx
	sub	edi, ebp
	add	esi, 7
	sub	esi, edi
	movsxd	r8, esi
.label_641:
	imul	rdx, r8, -0x6db6db6d
	shr	rdx, 0x20
	add	r8d, edx
	mov	edx, r8d
	shr	edx, 0x1f
	sar	r8d, 2
	add	r8d, edx
	mov	edi, 2
	jmp	.label_542
.label_1775:
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	cmp	r10d, 0x4f
	je	.label_523
	mov	dl, 0x58
	jmp	.label_540
.label_1776:
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	cmp	r10d, 0x45
	je	.label_656
	cmp	r10d, 0x4f
	je	.label_523
	mov	rbx, qword ptr [rsp + 0x28]
	mov	r8d, dword ptr [rbx + 0x14]
	cmp	r8d, 0xfffff894
	setl	sil
	add	r8d, 0x76c
	jmp	.label_662
.label_1777:
	mov	dword ptr [rsp + 0x14], r9d
	mov	qword ptr [rsp + 0x30], r8
	mov	rdi, qword ptr [rsp + 0x60]
	mov	qword ptr [rsp + 0x20], r11
	call	strlen
	mov	r15, rax
	xor	eax, eax
	test	r13d, r13d
	cmovns	eax, r13d
	cdqe	
	cmp	r15, rax
	mov	rdx, r15
	cmovb	rdx, rax
	mov	rcx, qword ptr [rsp + 0x20]
	not	rcx
	cmp	rdx, rcx
	jae	.label_538
	mov	qword ptr [rsp + 0x18], rdx
	cmp	qword ptr [rsp + 8], 0
	je	.label_554
	cmp	r15, rax
	jae	.label_521
	movsxd	rbp, r13d
	sub	rbp, r15
	cmp	r14d, 0x30
	je	.label_682
	cmp	r14d, 0x2b
	jne	.label_683
.label_682:
	test	rbp, rbp
	mov	r14, qword ptr [rsp + 8]
	je	.label_521
	nop	word ptr cs:[rax + rax]
.label_694:
	mov	edi, 0x30
	mov	rsi, r14
	call	fputc
	dec	rbp
	jne	.label_694
	jmp	.label_521
.label_1778:
	test	r10d, r10d
	jne	.label_523
	test	bl, bl
	je	.label_528
	mov	al, 1
	mov	qword ptr [rsp + 0x48], rax
.label_528:
	xor	eax, eax
	mov	dl, 0x61
	jmp	.label_524
.label_1780:
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	cmp	r10d, 0x4f
	je	.label_523
	mov	dl, 0x63
	jmp	.label_540
.label_1781:
	cmp	r10d, 0x45
	je	.label_523
	mov	rbx, qword ptr [rsp + 0x28]
	mov	r8d, dword ptr [rbx + 0xc]
	mov	edi, 2
	jmp	.label_542
.label_1782:
	cmp	r10d, 0x45
	je	.label_523
	mov	rbx, qword ptr [rsp + 0x28]
	mov	edx, dword ptr [rbx + 0xc]
	jmp	.label_549
.label_1783:
	cmp	r10d, 0x45
	je	.label_523
	mov	rbx, qword ptr [rsp + 0x28]
	mov	r8d, dword ptr [rbx + 0x1c]
	cmp	r8d, -1
	setl	sil
	inc	r8d
	mov	eax, 3
	jmp	.label_551
.label_1784:
	cmp	r10d, 0x45
	je	.label_523
	mov	rbx, qword ptr [rsp + 0x28]
	mov	edx, dword ptr [rbx + 8]
	jmp	.label_549
.label_1785:
	cmp	r10d, 0x45
	mov	edx, dword ptr [rsp + 0x6c]
	je	.label_523
.label_549:
	test	r14d, r14d
	mov	esi, 0x5f
	cmove	r14d, esi
	mov	edi, 2
	mov	r8d, edx
	jmp	.label_542
.label_1786:
	cmp	r10d, 0x45
	je	.label_523
	mov	rbx, qword ptr [rsp + 0x28]
	mov	r8d, dword ptr [rbx + 0x10]
	cmp	r8d, -1
	setl	sil
	inc	r8d
	mov	eax, 2
.label_551:
	mov	qword ptr [rsp + 0x18], rax
	xor	r9d, r9d
	xor	edx, edx
	jmp	.label_576
.label_1787:
	mov	dword ptr [rsp + 0x14], r9d
	mov	qword ptr [rsp + 0x30], r8
	xor	eax, eax
	test	r13d, r13d
	cmovns	eax, r13d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	r15d, 1
	cmova	r15, rcx
	mov	rcx, r11
	not	rcx
	cmp	r15, rcx
	jae	.label_538
	cmp	qword ptr [rsp + 8], 0
	mov	r9d, dword ptr [rsp + 0x14]
	je	.label_591
	mov	qword ptr [rsp + 0x20], r11
	cmp	eax, 2
	mov	rbx, qword ptr [rsp + 8]
	jb	.label_593
	movsxd	rbp, r13d
	dec	rbp
	cmp	r14d, 0x30
	je	.label_599
	cmp	r14d, 0x2b
	jne	.label_600
.label_599:
	test	rbp, rbp
	mov	rbx, qword ptr [rsp + 8]
	je	.label_593
	nop	dword ptr [rax]
.label_597:
	mov	edi, 0x30
	mov	rsi, rbx
	call	fputc
	dec	rbp
	jne	.label_597
	jmp	.label_593
.label_1789:
	mov	rbx, qword ptr [rsp + 0x28]
	imul	r8d, dword ptr [rbx + 0x10], 0xb
	sar	r8d, 5
	inc	r8d
	mov	eax, 1
	mov	qword ptr [rsp + 0x18], rax
	xor	r9d, r9d
	xor	edx, edx
	xor	esi, esi
	jmp	.label_576
.label_1790:
	mov	dword ptr [rsp + 0x14], r9d
	mov	qword ptr [rsp + 0x30], r8
	mov	rbx, r11
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0xd0], rax
	movups	xmm0, xmmword ptr [rcx]
	movups	xmm1, xmmword ptr [rcx + 0x10]
	movups	xmm2, xmmword ptr [rcx + 0x20]
	movaps	xmmword ptr [rsp + 0xc0], xmm2
	movaps	xmmword ptr [rsp + 0xb0], xmm1
	movaps	xmmword ptr [rsp + 0xa0], xmm0
	lea	rsi, [rsp + 0xa0]
	mov	rdi, qword ptr [rsp + 0x4e0]
	call	mktime_z
	mov	rcx, rax
	mov	rsi, rcx
	shr	rsi, 0x3f
	lea	r15, [rsp + 0x97]
	je	.label_625
	nop	dword ptr [rax + rax]
.label_629:
	movabs	rdx, 0x6666666666666667
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + rax]
	add	edi, edi
	lea	edi, [rdi + rdi*4]
	mov	ebp, ecx
	sub	ebp, edi
	add	rdx, rax
	mov	al, 0x30
	sub	al, bpl
	mov	byte ptr [r15 - 1], al
	dec	r15
	add	rcx, 9
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_629
	jmp	.label_637
	.section	.text
	.align	16
	#Procedure 0x407275
	.globl sub_407275
	.type sub_407275, @function
sub_407275:

	nop	word ptr cs:[rax + rax]
.label_625:
	movabs	rdx, 0x6666666666666667
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + rax]
	add	edi, edi
	lea	edi, [rdi + rdi*4]
	mov	ebp, ecx
	sub	ebp, edi
	add	rdx, rax
	add	bpl, 0x30
	mov	byte ptr [r15 - 1], bpl
	dec	r15
	add	rcx, 9
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_625
.label_637:
	mov	edi, 1
	xor	edx, edx
	mov	r11, rbx
	mov	rbp, qword ptr [rsp + 0x30]
	mov	ebx, dword ptr [rsp + 0x14]
	jmp	.label_557
.label_1791:
	mov	dword ptr [rsp + 0x14], r9d
	mov	qword ptr [rsp + 0x30], r8
	xor	eax, eax
	test	r13d, r13d
	cmovns	eax, r13d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	r15d, 1
	cmova	r15, rcx
	mov	rcx, r11
	not	rcx
	cmp	r15, rcx
	jae	.label_538
	cmp	qword ptr [rsp + 8], 0
	mov	r9d, dword ptr [rsp + 0x14]
	je	.label_591
	mov	qword ptr [rsp + 0x20], r11
	cmp	eax, 2
	mov	rbx, qword ptr [rsp + 8]
	jb	.label_650
	movsxd	rbp, r13d
	dec	rbp
	cmp	r14d, 0x30
	je	.label_658
	cmp	r14d, 0x2b
	jne	.label_668
.label_658:
	test	rbp, rbp
	mov	rbx, qword ptr [rsp + 8]
	je	.label_650
	nop	word ptr cs:[rax + rax]
.label_558:
	mov	edi, 0x30
	mov	rsi, rbx
	call	fputc
	dec	rbp
	jne	.label_558
	jmp	.label_650
.label_1792:
	mov	rbx, qword ptr [rsp + 0x28]
	mov	edx, dword ptr [rbx + 0x18]
	lea	esi, [rdx + 6]
	movsxd	r8, esi
	imul	rsi, r8, -0x6db6db6d
	shr	rsi, 0x20
	lea	edx, [rsi + rdx + 6]
	mov	esi, edx
	shr	esi, 0x1f
	sar	edx, 2
	add	edx, esi
	lea	esi, [rdx*8]
	sub	esi, edx
	sub	r8d, esi
	inc	r8d
	mov	edi, 1
	jmp	.label_542
.label_1793:
	cmp	r10d, 0x45
	je	.label_523
	mov	rbx, qword ptr [rsp + 0x28]
	mov	r8d, dword ptr [rbx + 0x18]
	mov	edi, 1
	jmp	.label_542
.label_1794:
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	cmp	r10d, 0x4f
	je	.label_523
	mov	dl, 0x78
	jmp	.label_540
.label_1795:
	cmp	r10d, 0x45
	jne	.label_690
	xor	eax, eax
	mov	dl, 0x79
	jmp	.label_524
.label_647:
	xor	eax, eax
	mov	edx, ecx
.label_524:
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x18], rcx
	jmp	.label_520
.label_603:
	mov	qword ptr [rsp + 0x20], r11
	dec	eax
	mov	r11d, 0x16d
	test	al, 3
	jne	.label_526
	movsxd	rdx, eax
	imul	rdx, rdx, 0x51eb851f
	mov	rbp, rdx
	sar	rbp, 0x25
	mov	rbx, rdx
	shr	rbx, 0x3f
	add	ebp, ebx
	imul	r11d, ebp, 0x64
	sar	rdx, 0x27
	add	edx, ebx
	imul	edx, edx, 0x190
	xor	ebp, ebp
	cmp	eax, edx
	sete	bpl
	add	ebp, 0x16d
	cmp	eax, r11d
	mov	r11d, 0x16e
	cmove	r11d, ebp
.label_526:
	lea	edx, [r11 + rdi + 0x17e]
	sub	edx, r9d
	movsxd	rdx, edx
	imul	rbp, rdx, -0x6db6db6d
	shr	rbp, 0x20
	add	ebp, edx
	mov	ebx, ebp
	shr	ebx, 0x1f
	sar	ebp, 2
	add	ebp, ebx
	lea	ebx, [rbp*8]
	sub	ebx, ebp
	sub	edx, ebx
	lea	r15d, [r11 + rdi + 3]
	sub	r15d, edx
	mov	edi, 0xffffffff
	mov	r11, qword ptr [rsp + 0x20]
.label_627:
	cmp	esi, 0x47
	je	.label_562
	cmp	esi, 0x67
	jne	.label_564
	movsxd	rdx, r8d
	imul	rdx, rdx, 0x51eb851f
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x25
	add	edx, esi
	imul	edx, edx, 0x64
	mov	esi, r8d
	sub	esi, edx
	add	esi, edi
	mov	rax, r8
	movsxd	r8, esi
	imul	rdx, r8, 0x51eb851f
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x25
	add	edx, esi
	imul	edx, edx, 0x64
	sub	r8d, edx
	jns	.label_566
	mov	edx, 0xfffff894
	sub	edx, edi
	mov	esi, r8d
	neg	esi
	add	r8d, 0x64
	cmp	eax, edx
	cmovl	r8d, esi
.label_566:
	xor	esi, esi
	jmp	.label_585
.label_693:
	mov	rax, qword ptr [rsp + 0x28]
	movsxd	rdx, dword ptr [rax + 0x14]
	cmp	rdx, -0x76c
	setl	sil
	setg	bl
	imul	r8, rdx, 0x51eb851f
	mov	rdi, r8
	shr	rdi, 0x3f
	sar	r8, 0x25
	add	r8d, edi
	imul	edi, r8d, 0x64
	cmp	edx, edi
	sets	dl
	and	dl, bl
	movzx	edx, dl
	sub	r8d, edx
	add	r8d, 0x13
.label_585:
	mov	eax, 2
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_598
.label_690:
	mov	rbx, qword ptr [rsp + 0x28]
	movsxd	rdx, dword ptr [rbx + 0x14]
	imul	rsi, rdx, 0x51eb851f
	mov	rdi, rsi
	shr	rdi, 0x3f
	sar	rsi, 0x25
	add	esi, edi
	imul	esi, esi, 0x64
	mov	r8d, edx
	mov	eax, 2
	sub	r8d, esi
	js	.label_601
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_606
.label_562:
	mov	edx, 0xfffff894
	sub	edx, edi
	cmp	r8d, edx
	setl	sil
	lea	r8d, [rdi + r8 + 0x76c]
.label_662:
	mov	eax, 4
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_598
.label_564:
	movsxd	rdx, r15d
	imul	rsi, rdx, -0x6db6db6d
	shr	rsi, 0x20
	add	edx, esi
	mov	esi, edx
	sar	esi, 2
	shr	edx, 0x1f
	lea	r8d, [rsi + rdx + 1]
	mov	edi, 2
	jmp	.label_542
.label_656:
	mov	dl, 0x59
.label_540:
	xor	eax, eax
	jmp	.label_520
.label_634:
	test	rbx, rbx
	mov	r15, qword ptr [rsp + 8]
	je	.label_619
	nop	dword ptr [rax]
.label_546:
	mov	edi, 0x20
	mov	rsi, r15
	call	fputc
	dec	rbx
	jne	.label_546
.label_619:
	xor	ecx, ecx
	mov	rax, qword ptr [rsp + 0x48]
	test	al, al
	setne	cl
	mov	rdi, r15
	mov	rsi, rbp
	mov	rbx, qword ptr [rsp + 0x28]
	mov	rdx, rbx
	mov	r8d, r14d
	mov	r9d, dword ptr [rsp + 0x18]
	mov	eax, dword ptr [rsp + 0x4e8]
	push	rax
	push	qword ptr [rsp + 0x4e8]
	call	__strftime_internal
	add	rsp, 0x10
	mov	r11, qword ptr [rsp + 0x20]
	mov	r9d, dword ptr [rsp + 0x14]
	mov	rsi, qword ptr [rsp + 0x40]
.label_626:
	add	r11, rsi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	.label_620
.label_680:
	mov	rsi, qword ptr [rsp + 0x60]
	cmp	byte ptr [rsi], 0x2d
	sete	sil
.label_675:
	mov	r11, rdx
	cmp	r11, 3
	ja	.label_638
	movsxd	rdi, eax
	imul	rbp, rdi, -0x77777777
	shr	rbp, 0x20
	add	ebp, eax
	mov	ebx, ebp
	shr	ebx, 0x1f
	sar	ebp, 5
	add	ebp, ebx
	imul	r8, rdi, -0x6e5d4c3b
	shr	r8, 0x20
	add	r8d, eax
	mov	edi, r8d
	shr	edi, 0x1f
	sar	r8d, 0xb
	add	r8d, edi
	movsxd	rdi, ebp
	imul	rbp, rdi, -0x77777777
	shr	rbp, 0x20
	add	ebp, edi
	mov	ebx, ebp
	shr	ebx, 0x1f
	sar	ebp, 5
	add	ebp, ebx
	imul	ebp, ebp, 0x3c
	imul	ebx, edi, 0x3c
	sub	edi, ebp
	sub	eax, ebx
	jmp	qword ptr [(r11 * 8) + label_640]
.label_1872:
	imul	r8d, r8d, 0x64
	add	r8d, edi
	mov	eax, 5
.label_681:
	mov	qword ptr [rsp + 0x18], rax
	xor	r9d, r9d
	jmp	.label_608
.label_539:
	xor	eax, eax
	mov	r15d, r13d
	add	r15d, -6
	cmovs	r15d, eax
	mov	ebp, OFFSET FLAT:label_153
	jmp	.label_532
.label_568:
	mov	edx, dword ptr [rsp + 0x4e8]
	mov	r8d, edx
	mov	r13d, 9
	jmp	.label_542
.label_601:
	mov	qword ptr [rsp + 0x18], rax
	mov	esi, r8d
	neg	esi
	add	r8d, 0x64
	cmp	edx, 0xfffff894
	cmovl	r8d, esi
.label_606:
	xor	esi, esi
.label_598:
	test	r14d, r14d
	cmove	r14d, dword ptr [rsp + 0x70]
	xor	r9d, r9d
	cmp	r14d, 0x2b
	mov	edx, 0
	jne	.label_576
	mov	rbp, qword ptr [rsp + 0x18]
	cmp	ebp, 2
	mov	edx, 0x63
	mov	edi, 0x270f
	cmove	edi, edx
	cmp	edi, r8d
	setb	bl
	cmp	ebp, r13d
	setl	dl
	or	dl, bl
	jmp	.label_576
.label_638:
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	mov	edi, 0x18
	jmp	.label_582
.label_1875:
	test	eax, eax
	je	.label_674
.label_1874:
	imul	r8d, r8d, 0x2710
	imul	edi, edi, 0x64
	add	r8d, eax
	add	r8d, edi
	mov	eax, 9
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 0x14
	jmp	.label_608
.label_569:
	mov	edx, dword ptr [rsp + 0x4e8]
	mov	r8d, edx
.label_590:
	mov	edi, r13d
.label_542:
	mov	esi, r8d
	shr	esi, 0x1f
	xor	r9d, r9d
	xor	edx, edx
	mov	eax, edi
	mov	qword ptr [rsp + 0x18], rax
.label_576:
	cmp	r10d, 0x4f
	jne	.label_669
	test	sil, sil
	jne	.label_669
	xor	eax, eax
	mov	edx, ecx
.label_520:
	mov	dword ptr [rsp + 0x40], eax
	mov	qword ptr [rsp + 0x30], r8
	mov	rbp, qword ptr [rsp + 0x18]
	mov	dword ptr [rsp + 0x14], r9d
	mov	qword ptr [rsp + 0x20], r11
	mov	word ptr [rsp + 0x5b], 0x2520
	test	r10d, r10d
	lea	rcx, [rsp + 0x5d]
	je	.label_692
	mov	byte ptr [rsp + 0x5d], r10b
	lea	rcx, [rsp + 0x5e]
.label_692:
	mov	byte ptr [rcx], dl
	mov	byte ptr [rcx + 1], 0
	lea	rdi, [rsp + 0xa0]
	lea	rdx, [rsp + 0x5b]
	mov	esi, 0x400
	mov	rcx, qword ptr [rsp + 0x28]
	call	strftime
	test	rax, rax
	je	.label_544
	lea	rsi, [rax - 1]
	xor	ecx, ecx
	test	r13d, r13d
	cmovns	ecx, r13d
	movsxd	rdx, ecx
	cmp	rsi, rdx
	mov	r15, rsi
	cmovb	r15, rdx
	mov	rcx, qword ptr [rsp + 0x20]
	not	rcx
	cmp	r15, rcx
	jae	.label_538
	cmp	qword ptr [rsp + 8], 0
	je	.label_553
	mov	qword ptr [rsp + 0x50], rax
	mov	qword ptr [rsp + 0x38], rsi
	cmp	rsi, rdx
	setae	al
	test	ebp, ebp
	jne	.label_556
	test	al, al
	jne	.label_556
	movsxd	rbx, r13d
	sub	rbx, qword ptr [rsp + 0x38]
	cmp	r14d, 0x30
	je	.label_563
	cmp	r14d, 0x2b
	jne	.label_567
.label_563:
	test	rbx, rbx
	mov	rbp, qword ptr [rsp + 8]
	je	.label_556
.label_572:
	mov	edi, 0x30
	mov	rsi, rbp
	call	fputc
	dec	rbx
	jne	.label_572
	jmp	.label_556
.label_669:
	mov	eax, r8d
	neg	eax
	test	sil, sil
	cmove	eax, r8d
	lea	r15, [rsp + 0x97]
	nop	dword ptr [rax + rax]
.label_584:
	test	r9b, 1
	je	.label_580
	mov	byte ptr [r15 - 1], 0x3a
	dec	r15
.label_580:
	sar	r9d, 1
	mov	ecx, eax
	mov	ebp, 0xcccccccd
	imul	rbp, rcx
	shr	rbp, 0x23
	lea	ecx, [rbp + rbp]
	lea	ecx, [rcx + rcx*4]
	mov	edi, eax
	sub	edi, ecx
	or	edi, 0x30
	mov	byte ptr [r15 - 1], dil
	dec	r15
	cmp	eax, 9
	mov	eax, ebp
	ja	.label_584
	test	r9d, r9d
	mov	eax, ebp
	jne	.label_584
	xor	ebx, ebx
	mov	rdi, qword ptr [rsp + 0x18]
.label_557:
	cmp	edi, r13d
	cmovl	edi, r13d
	test	dl, dl
	je	.label_595
	mov	dl, 0x2b
.label_595:
	test	sil, sil
	mov	sil, 0x2d
	jne	.label_525
	mov	esi, edx
.label_525:
	cmp	r14d, 0x2d
	mov	qword ptr [rsp + 0x30], rbp
	mov	dword ptr [rsp + 0x14], ebx
	jne	.label_543
	test	sil, sil
	je	.label_604
	xor	eax, eax
	test	r13d, r13d
	cmovns	eax, r13d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	edx, 1
	cmova	rdx, rcx
	mov	rcx, r11
	not	rcx
	cmp	rdx, rcx
	jae	.label_538
	cmp	qword ptr [rsp + 8], 0
	je	.label_609
	mov	qword ptr [rsp + 0x38], rdx
	mov	byte ptr [rsp + 0x40], sil
	mov	qword ptr [rsp + 0x20], r11
	cmp	eax, 2
	setb	al
	mov	qword ptr [rsp + 0x18], rdi
	test	edi, edi
	mov	rbx, qword ptr [rsp + 8]
	jne	.label_611
	test	al, al
	jne	.label_611
	movsxd	rbp, r13d
	jmp	.label_615
	.section	.text
	.align	16
	#Procedure 0x4079dc
	.globl sub_4079dc
	.type sub_4079dc, @function
sub_4079dc:

	nop	dword ptr [rax]
.label_618:
	mov	edi, 0x20
	mov	rsi, rbx
	call	fputc
.label_615:
	dec	rbp
	jne	.label_618
.label_611:
	movzx	edi, byte ptr [rsp + 0x40]
	mov	rsi, rbx
	jmp	.label_678
.label_544:
	mov	r11, qword ptr [rsp + 0x20]
	mov	r9d, dword ptr [rsp + 0x14]
	mov	r8, qword ptr [rsp + 0x30]
	jmp	.label_620
.label_543:
	movsxd	rax, edi
	mov	rcx, r15
	lea	rdx, [rsp + 0x97]
	sub	rcx, rdx
	mov	edx, esi
	neg	dl
	sbb	rdx, rdx
	add	rdx, rcx
	add	rdx, rax
	test	edx, edx
	jle	.label_624
	cmp	r14d, 0x5f
	jne	.label_631
	movsxd	rcx, edx
	mov	rax, r11
	not	rax
	cmp	rcx, rax
	jae	.label_538
	mov	qword ptr [rsp + 0x50], r13
	mov	qword ptr [rsp + 0x38], rdx
	mov	byte ptr [rsp + 0x40], sil
	mov	qword ptr [rsp + 0x18], rdi
	mov	qword ptr [rsp + 0x20], r11
	mov	rbx, qword ptr [rsp + 8]
	test	rbx, rbx
	je	.label_614
	test	rcx, rcx
	je	.label_614
	xor	ebp, ebp
	nop	
.label_666:
	mov	edi, 0x20
	mov	rsi, rbx
	mov	r13, rcx
	call	fputc
	mov	rcx, r13
	inc	rbp
	cmp	rbp, rcx
	jb	.label_666
.label_614:
	mov	r11, qword ptr [rsp + 0x20]
	add	r11, rcx
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r13, qword ptr [rsp + 0x50]
	sub	r13d, ecx
	cmovle	r13d, eax
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_644
	test	r13d, r13d
	cmovns	eax, r13d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	edx, 1
	cmova	rdx, rcx
	mov	rcx, r11
	not	rcx
	cmp	rdx, rcx
	mov	rdi, qword ptr [rsp + 0x18]
	jae	.label_538
	cmp	qword ptr [rsp + 8], 0
	je	.label_609
	mov	qword ptr [rsp + 0x50], rdx
	mov	qword ptr [rsp + 0x20], r11
	cmp	eax, 2
	setb	al
	test	edi, edi
	mov	rbp, qword ptr [rsp + 8]
	jne	.label_653
	test	al, al
	jne	.label_653
	movsxd	rax, r13d
	dec	rax
	je	.label_653
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x38], rax
	nop	word ptr cs:[rax + rax]
.label_661:
	mov	edi, 0x20
	mov	rsi, rbp
	call	fputc
	mov	rax, qword ptr [rsp + 0x38]
	inc	rbx
	cmp	rbx, rax
	jb	.label_661
.label_653:
	movzx	edi, byte ptr [rsp + 0x40]
	mov	rsi, rbp
	call	fputc
	mov	r11, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rsp + 0x50]
	jmp	.label_609
.label_624:
	test	sil, sil
	je	.label_604
	xor	eax, eax
	test	r13d, r13d
	cmovns	eax, r13d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	edx, 1
	cmova	rdx, rcx
	mov	rcx, r11
	not	rcx
	cmp	rdx, rcx
	jae	.label_538
	cmp	qword ptr [rsp + 8], 0
	je	.label_609
	mov	qword ptr [rsp + 0x38], rdx
	mov	byte ptr [rsp + 0x40], sil
	mov	qword ptr [rsp + 0x20], r11
	cmp	eax, 2
	setb	al
	mov	qword ptr [rsp + 0x18], rdi
	test	edi, edi
	mov	rbp, qword ptr [rsp + 8]
	jne	.label_621
	test	al, al
	jne	.label_621
	movsxd	rbx, r13d
	dec	rbx
	cmp	r14d, 0x30
	je	.label_686
	cmp	r14d, 0x2b
	jne	.label_687
.label_686:
	test	rbx, rbx
	mov	rbp, qword ptr [rsp + 8]
	je	.label_621
	nop	word ptr [rax + rax]
.label_527:
	mov	edi, 0x30
	mov	rsi, rbp
	call	fputc
	dec	rbx
	jne	.label_527
	jmp	.label_621
.label_631:
	mov	rcx, r11
	not	rcx
	cmp	rax, rcx
	jae	.label_538
	test	sil, sil
	je	.label_536
	xor	eax, eax
	test	r13d, r13d
	cmovns	eax, r13d
	movsxd	rbp, eax
	cmp	ebp, 1
	mov	ebx, 1
	cmova	rbx, rbp
	cmp	rbx, rcx
	jae	.label_538
	cmp	qword ptr [rsp + 8], 0
	je	.label_617
	mov	qword ptr [rsp + 0x50], rbx
	mov	qword ptr [rsp + 0x38], rdx
	mov	byte ptr [rsp + 0x40], sil
	mov	qword ptr [rsp + 0x20], r11
	cmp	eax, 2
	setb	al
	mov	qword ptr [rsp + 0x18], rdi
	test	edi, edi
	mov	rbp, qword ptr [rsp + 8]
	jne	.label_575
	test	al, al
	jne	.label_575
	movsxd	rbx, r13d
	dec	rbx
	cmp	r14d, 0x30
	je	.label_559
	cmp	r14d, 0x2b
	jne	.label_677
.label_559:
	test	rbx, rbx
	mov	rbp, qword ptr [rsp + 8]
	je	.label_575
	nop	word ptr cs:[rax + rax]
.label_691:
	mov	edi, 0x30
	mov	rsi, rbp
	call	fputc
	dec	rbx
	jne	.label_691
	jmp	.label_575
.label_567:
	test	rbx, rbx
	mov	rbp, qword ptr [rsp + 8]
	je	.label_556
	nop	word ptr cs:[rax + rax]
.label_579:
	mov	edi, 0x20
	mov	rsi, rbp
	call	fputc
	dec	rbx
	jne	.label_579
.label_556:
	mov	eax, dword ptr [rsp + 0x40]
	test	al, 1
	jne	.label_581
	mov	rax, qword ptr [rsp + 0x48]
	test	al, 1
	jne	.label_583
	mov	edx, 1
	lea	rdi, [rsp + 0xa1]
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rsp + 8]
	call	fwrite
	jmp	.label_553
.label_581:
	cmp	qword ptr [rsp + 0x38], 0
	mov	r13, qword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 0x50]
	je	.label_553
	mov	ebx, 1
	sub	rbx, rax
	lea	rbp, [rsp + 0xa1]
	nop	word ptr [rax + rax]
.label_533:
	movzx	r14d, byte ptr [rbp]
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	edi, dword ptr [rax + r14*4]
	mov	rsi, r13
	call	fputc
	inc	rbp
	inc	rbx
	jne	.label_533
	jmp	.label_553
.label_583:
	cmp	qword ptr [rsp + 0x38], 0
	mov	r13, qword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 0x50]
	je	.label_553
	mov	ebx, 1
	sub	rbx, rax
	lea	rbp, [rsp + 0xa1]
	nop	word ptr cs:[rax + rax]
.label_613:
	movzx	r14d, byte ptr [rbp]
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	edi, dword ptr [rax + r14*4]
	mov	rsi, r13
	call	fputc
	inc	rbp
	inc	rbx
	jne	.label_613
.label_553:
	mov	r11, qword ptr [rsp + 0x20]
	add	r11, r15
	jmp	.label_610
.label_644:
	mov	rdi, qword ptr [rsp + 0x18]
	jmp	.label_604
.label_683:
	test	rbp, rbp
	mov	r14, qword ptr [rsp + 8]
	je	.label_521
	nop	word ptr cs:[rax + rax]
.label_622:
	mov	edi, 0x20
	mov	rsi, r14
	call	fputc
	dec	rbp
	jne	.label_622
.label_521:
	test	bl, bl
	je	.label_623
	test	r15, r15
	mov	r14, qword ptr [rsp + 8]
	je	.label_554
	mov	rbp, qword ptr [rsp + 0x60]
	nop	dword ptr [rax]
.label_633:
	movzx	ebx, byte ptr [rbp]
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	edi, dword ptr [rax + rbx*4]
	mov	rsi, r14
	call	fputc
	inc	rbp
	dec	r15
	jne	.label_633
	jmp	.label_554
.label_623:
	mov	rax, qword ptr [rsp + 0x48]
	test	al, al
	je	.label_635
	test	r15, r15
	mov	r14, qword ptr [rsp + 8]
	je	.label_554
	mov	rbp, qword ptr [rsp + 0x60]
	nop	word ptr cs:[rax + rax]
.label_642:
	movzx	ebx, byte ptr [rbp]
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	edi, dword ptr [rax + rbx*4]
	mov	rsi, r14
	call	fputc
	inc	rbp
	dec	r15
	jne	.label_642
	jmp	.label_554
.label_600:
	test	rbp, rbp
	mov	rbx, qword ptr [rsp + 8]
	je	.label_593
	nop	
.label_648:
	mov	edi, 0x20
	mov	rsi, rbx
	call	fputc
	dec	rbp
	jne	.label_648
.label_593:
	mov	edi, 0xa
	jmp	.label_649
.label_668:
	test	rbp, rbp
	mov	rbx, qword ptr [rsp + 8]
	je	.label_650
	nop	word ptr cs:[rax + rax]
.label_652:
	mov	edi, 0x20
	mov	rsi, rbx
	call	fputc
	dec	rbp
	jne	.label_652
.label_650:
	mov	edi, 9
	jmp	.label_649
.label_687:
	test	rbx, rbx
	mov	rbp, qword ptr [rsp + 8]
	je	.label_621
.label_654:
	mov	edi, 0x20
	mov	rsi, rbp
	call	fputc
	dec	rbx
	jne	.label_654
.label_621:
	movzx	edi, byte ptr [rsp + 0x40]
	mov	rsi, rbp
.label_678:
	call	fputc
	mov	r11, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rsp + 0x38]
.label_609:
	add	r11, rdx
	jmp	.label_604
.label_635:
	mov	edx, 1
	mov	rdi, qword ptr [rsp + 0x60]
	mov	rsi, r15
	jmp	.label_660
.label_674:
	test	edi, edi
	je	.label_663
.label_1873:
	imul	r8d, r8d, 0x64
	add	r8d, edi
	mov	eax, 6
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 4
.label_608:
	mov	edi, 0x4b
.label_582:
	mov	r11, qword ptr [rsp + 0x20]
	mov	ebx, edi
	and	bl, 0x7f
	cmp	bl, 0x18
	je	.label_523
	mov	dl, 1
	cmp	bl, 0x4b
	je	.label_576
	jmp	.label_672
.label_523:
	mov	dword ptr [rsp + 0x14], r9d
	mov	qword ptr [rsp + 0x30], r8
	xor	ebp, ebp
	xor	ebx, ebx
	movabs	rax, 0x100000000
	nop	dword ptr [rax]
.label_679:
	mov	r15, rbp
	add	rbx, rax
	lea	rbp, [r15 - 1]
	cmp	byte ptr [r12 + r15], 0x25
	jne	.label_679
	mov	rax, rbp
	neg	rax
	test	r13d, r13d
	mov	ecx, r13d
	mov	edx, 0
	cmovs	ecx, edx
	cmp	eax, ecx
	mov	edx, ecx
	cmova	edx, eax
	movsxd	rsi, edx
	mov	rdx, r11
	not	rdx
	cmp	rsi, rdx
	mov	rdx, qword ptr [rsp + 0x18]
	jae	.label_538
	mov	qword ptr [rsp + 0x40], rsi
	mov	qword ptr [rsp + 0x20], r11
	cmp	qword ptr [rsp + 8], 0
	je	.label_565
	sar	rbx, 0x20
	test	edx, edx
	jne	.label_529
	cmp	eax, ecx
	jae	.label_529
	movsxd	r13, r13d
	mov	rax, r13
	sub	rax, rbx
	cmp	r14d, 0x30
	je	.label_531
	cmp	r14d, 0x2b
	jne	.label_577
.label_531:
	test	rax, rax
	mov	r14, qword ptr [rsp + 8]
	je	.label_529
	mov	eax, 1
	sub	eax, r15d
	cdqe	
	sub	r13, rax
	nop	word ptr cs:[rax + rax]
.label_548:
	mov	edi, 0x30
	mov	rsi, r14
	call	fputc
	dec	r13
	jne	.label_548
	jmp	.label_529
.label_577:
	test	rax, rax
	mov	r14, qword ptr [rsp + 8]
	je	.label_529
	mov	eax, 1
	sub	eax, r15d
	cdqe	
	sub	r13, rax
	nop	dword ptr [rax + rax]
.label_664:
	mov	edi, 0x20
	mov	rsi, r14
	call	fputc
	dec	r13
	jne	.label_664
.label_529:
	lea	rbp, [r12 + rbp + 1]
	mov	rax, qword ptr [rsp + 0x48]
	test	al, 1
	jne	.label_589
	mov	edx, 1
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rcx, qword ptr [rsp + 8]
	call	fwrite
	jmp	.label_565
.label_589:
	mov	eax, 1
	sub	eax, r15d
	movsxd	rbx, eax
	neg	rbx
	mov	r15, qword ptr [rsp + 8]
	nop	word ptr [rax + rax]
.label_574:
	movzx	r14d, byte ptr [rbp]
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	edi, dword ptr [rax + r14*4]
	mov	rsi, r15
	call	fputc
	inc	rbp
	inc	rbx
	jne	.label_574
.label_565:
	mov	r11, qword ptr [rsp + 0x20]
	add	r11, qword ptr [rsp + 0x40]
	jmp	.label_610
.label_677:
	test	rbx, rbx
	mov	rbp, qword ptr [rsp + 8]
	je	.label_575
.label_587:
	mov	edi, 0x20
	mov	rsi, rbp
	call	fputc
	dec	rbx
	jne	.label_587
.label_575:
	movzx	edi, byte ptr [rsp + 0x40]
	mov	rsi, rbp
	call	fputc
	mov	r11, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	rbx, qword ptr [rsp + 0x50]
.label_617:
	add	r11, rbx
.label_536:
	mov	r13, qword ptr [rsp + 8]
	test	r13, r13
	movsxd	rbx, edx
	je	.label_605
	xor	eax, eax
	test	rbx, rbx
	je	.label_596
	mov	qword ptr [rsp + 0x18], rdi
	mov	qword ptr [rsp + 0x20], r11
	xor	ebp, ebp
.label_651:
	mov	edi, 0x30
	mov	rsi, r13
	call	fputc
	inc	rbp
	cmp	rbp, rbx
	jb	.label_651
	mov	rax, rbx
	mov	r11, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 0x18]
	jmp	.label_596
.label_605:
	mov	rax, rbx
.label_596:
	add	r11, rax
	xor	r13d, r13d
.label_604:
	lea	rbx, [rsp + 0x97]
	sub	rbx, r15
	xor	eax, eax
	test	r13d, r13d
	cmovns	eax, r13d
	cdqe	
	cmp	rbx, rax
	mov	rdx, rbx
	cmovb	rdx, rax
	mov	rcx, r11
	not	rcx
	cmp	rdx, rcx
	jae	.label_538
	mov	qword ptr [rsp + 0x18], rdx
	mov	qword ptr [rsp + 0x20], r11
	cmp	qword ptr [rsp + 8], 0
	je	.label_554
	cmp	rbx, rax
	setae	al
	test	edi, edi
	jne	.label_547
	test	al, al
	jne	.label_547
	movsxd	rbp, r13d
	sub	rbp, rbx
	cmp	r14d, 0x30
	je	.label_616
	cmp	r14d, 0x2b
	jne	.label_671
.label_616:
	test	rbp, rbp
	mov	r14, qword ptr [rsp + 8]
	je	.label_547
	nop	dword ptr [rax]
.label_607:
	mov	edi, 0x30
	mov	rsi, r14
	call	fputc
	dec	rbp
	jne	.label_607
	jmp	.label_547
.label_671:
	test	rbp, rbp
	mov	r14, qword ptr [rsp + 8]
	je	.label_547
	nop	
.label_628:
	mov	edi, 0x20
	mov	rsi, r14
	call	fputc
	dec	rbp
	jne	.label_628
.label_547:
	mov	rax, qword ptr [rsp + 0x48]
	test	al, al
	je	.label_630
	test	rbx, rbx
	mov	r14, qword ptr [rsp + 8]
	je	.label_554
	mov	rax, qword ptr [rsp + 0x78]
	lea	rbx, [rax + r15]
	nop	
.label_636:
	movzx	ebp, byte ptr [r15]
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	edi, dword ptr [rax + rbp*4]
	mov	rsi, r14
	call	fputc
	inc	r15
	inc	rbx
	jne	.label_636
	jmp	.label_554
.label_630:
	mov	edx, 1
	mov	rdi, r15
	mov	rsi, rbx
.label_660:
	mov	rcx, qword ptr [rsp + 8]
	call	fwrite
.label_554:
	mov	r11, qword ptr [rsp + 0x20]
	add	r11, qword ptr [rsp + 0x18]
.label_610:
	mov	r8, qword ptr [rsp + 0x30]
	mov	r9d, dword ptr [rsp + 0x14]
.label_620:
	mov	cl, byte ptr [r12 + 1]
	inc	r12
	mov	r13d, 0xffffffff
	test	cl, cl
	mov	rax, r11
	jne	.label_643
	jmp	.label_645
.label_538:
	xor	eax, eax
.label_645:
	add	rsp, 0x4a8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4082c9
	.globl sub_4082c9
	.type sub_4082c9, @function
sub_4082c9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4082d0

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
	#Procedure 0x4082e7
	.globl sub_4082e7
	.type sub_4082e7, @function
sub_4082e7:

	nop	word ptr [rax + rax]
.label_695:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4082f5
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_16]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_17]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_18]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_695
	test	rsi, rsi
	je	.label_695
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
	#Procedure 0x408360

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_706
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_708
.label_706:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_708:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_697
	cmp	r10d, 0x29
	jae	.label_705
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_707
.label_705:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_707:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_697
	cmp	r10d, 0x29
	jae	.label_703
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_704
.label_703:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_704:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_697
	cmp	r10d, 0x29
	jae	.label_701
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_702
.label_701:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_702:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_697
	cmp	r10d, 0x29
	jae	.label_699
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_700
.label_699:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_700:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_697
	cmp	r10d, 0x29
	jae	.label_696
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_698
.label_696:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_698:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_697
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_697
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_697
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_697
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_697:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x408542
	.globl sub_408542
	.type sub_408542, @function
sub_408542:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408550
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
	#Procedure 0x408568
	.globl sub_408568
	.type sub_408568, @function
sub_408568:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408570

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_709
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_709
	test	byte ptr [rbx + 1], 1
	je	.label_709
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_709:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x4085a3
	.globl sub_4085a3
	.type sub_4085a3, @function
sub_4085a3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4085b0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_16]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_17]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_18]
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
	#Procedure 0x40861f
	.globl sub_40861f
	.type sub_40861f, @function
sub_40861f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x408620

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
	jmp	.label_744
	.section	.text
	.align	16
	#Procedure 0x4086cf
	.globl sub_4086cf
	.type sub_4086cf, @function
sub_4086cf:

	nop	
.label_783:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_768
	or	al, dl
	jne	.label_768
	test	dil, 1
	jne	.label_781
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_768
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_744
	jmp	.label_768
.label_1919:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_788
	test	rbp, rbp
	je	.label_791
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_791:
	mov	r14d, 1
	jmp	.label_793
.label_1920:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_409
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_736
.label_788:
	xor	r14d, r14d
.label_793:
	mov	eax, OFFSET FLAT:label_409
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_803
	.section	.text
	.align	16
	#Procedure 0x40879f
	.globl sub_40879f
	.type sub_40879f, @function
sub_40879f:

	nop	
.label_744:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_811
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_817]
.label_1921:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_822
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_410
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_1922:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_710
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_710
	xor	r14d, r14d
	nop	
.label_726:
	cmp	r14, rbp
	jae	.label_787
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_787:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_726
.label_710:
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
	jmp	.label_736
.label_1914:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_736
.label_1917:
	mov	al, 1
.label_1915:
	mov	r12b, 1
.label_1918:
	test	r12b, 1
	mov	cl, 1
	je	.label_754
	mov	ecx, eax
.label_754:
	mov	al, cl
.label_1916:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_755
	test	rbp, rbp
	je	.label_760
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_760:
	mov	r14d, 1
	jmp	.label_762
.label_755:
	xor	r14d, r14d
.label_762:
	mov	ecx, OFFSET FLAT:label_410
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_803:
	mov	sil, r12b
.label_736:
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
	jmp	.label_773
	.section	.text
	.align	16
	#Procedure 0x408961
	.globl sub_408961
	.type sub_408961, @function
sub_408961:

	nop	word ptr cs:[rax + rax]
.label_775:
	inc	r12
.label_773:
	cmp	r11, -1
	je	.label_798
	cmp	r12, r11
	jne	.label_800
	jmp	.label_802
	.section	.text
	.align	16
	#Procedure 0x408983
	.globl sub_408983
	.type sub_408983, @function
sub_408983:

	nop	word ptr cs:[rax + rax]
.label_798:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_806
.label_800:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_812
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_717
	cmp	r11, -1
	jne	.label_717
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_717:
	cmp	rbx, r11
	jbe	.label_826
.label_812:
	xor	esi, esi
.label_728:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_829
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_832]
.label_1807:
	test	r12, r12
	jne	.label_711
	jmp	.label_713
	.section	.text
	.align	16
	#Procedure 0x408a16
	.globl sub_408a16
	.type sub_408a16, @function
sub_408a16:

	nop	word ptr cs:[rax + rax]
.label_826:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_725
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_728
	jmp	.label_740
.label_725:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_728
.label_1811:
	xor	eax, eax
	cmp	r11, -1
	je	.label_748
	test	r12, r12
	jne	.label_752
	cmp	r11, 1
	je	.label_713
	xor	r13d, r13d
	jmp	.label_715
.label_1800:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_757
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_740
	cmp	r8d, 2
	jne	.label_733
	mov	eax, r9d
	and	al, 1
	jne	.label_733
	cmp	r14, rbp
	jae	.label_766
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_766:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_769
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_769:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_776
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_776:
	add	r14, 3
	mov	r9b, 1
.label_733:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_780
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_780:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_741
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_741
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_741
	cmp	r14, rbp
	jae	.label_804
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_804:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_827
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_827:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_715
.label_1801:
	mov	bl, 0x62
	jmp	.label_799
.label_1802:
	mov	cl, 0x74
	jmp	.label_794
.label_1803:
	mov	bl, 0x76
	jmp	.label_799
.label_1804:
	mov	bl, 0x66
	jmp	.label_799
.label_1805:
	mov	cl, 0x72
	jmp	.label_794
.label_1808:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_808
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_734
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
	jae	.label_818
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_818:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_830
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_830:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_834
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_834:
	add	r14, 3
	xor	r9d, r9d
.label_808:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_715
.label_1809:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_718
	cmp	r8d, 2
	jne	.label_711
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_711
	jmp	.label_734
.label_1810:
	cmp	r8d, 2
	jne	.label_730
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_734
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_796
.label_829:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_743
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_810
.label_748:
	test	r12, r12
	jne	.label_763
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_763
.label_713:
	mov	dl, 1
.label_1806:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_734
	xor	eax, eax
	mov	r13b, dl
.label_715:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_774
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_777
	jmp	.label_778
	.section	.text
	.align	16
	#Procedure 0x408cf4
	.globl sub_408cf4
	.type sub_408cf4, @function
sub_408cf4:

	nop	word ptr cs:[rax + rax]
.label_774:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_778
.label_777:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_782
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_786
	.section	.text
	.align	16
	#Procedure 0x408d2d
	.globl sub_408d2d
	.type sub_408d2d, @function
sub_408d2d:

	nop	dword ptr [rax]
.label_778:
	test	sil, sil
.label_786:
	mov	ebx, r15d
	je	.label_716
	jmp	.label_790
.label_782:
	mov	ebx, r15d
	jmp	.label_790
.label_757:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_775
	xor	r15d, r15d
	jmp	.label_711
.label_730:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_794
	xor	eax, eax
	mov	r15b, 0x5c
.label_796:
	xor	r13d, r13d
	jmp	.label_716
.label_794:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_734
.label_799:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_715
	nop	
.label_790:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_740
	cmp	r8d, 2
	jne	.label_809
	mov	eax, r9d
	and	al, 1
	jne	.label_809
	cmp	r14, rbp
	jae	.label_815
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_815:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_819
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_819:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_761
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_761:
	add	r14, 3
	mov	r9b, 1
.label_809:
	cmp	r14, rbp
	jae	.label_828
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_828:
	inc	r14
	jmp	.label_814
.label_743:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_833
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_833:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_753
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_745:
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
	je	.label_746
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_749
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_764
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_758
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_797:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_772
	bt	rsi, rdx
	jb	.label_734
.label_772:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_797
.label_758:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_779
	xor	r13d, r13d
.label_779:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_745
	jmp	.label_751
.label_741:
	xor	r13d, r13d
	jmp	.label_715
.label_763:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_715
.label_718:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_711
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_711
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_711
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_795
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_771
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_767
	cmp	r14, rbp
	jae	.label_807
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_807:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_813
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_813:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_719
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_719:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_714
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_714:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_771:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_715
.label_711:
	xor	eax, eax
.label_752:
	xor	r13d, r13d
	jmp	.label_715
.label_753:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_747:
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
	je	.label_821
	cmp	rbp, -1
	je	.label_729
	cmp	rbp, -2
	je	.label_746
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_738
	xor	r13d, r13d
.label_738:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_747
	jmp	.label_751
.label_746:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_739
	lea	rax, [r10 + r12]
.label_737:
	cmp	byte ptr [rax + rsi], 0
	je	.label_739
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_737
.label_739:
	mov	qword ptr [rsp + 0x40], rsi
.label_749:
	xor	r13d, r13d
	jmp	.label_764
.label_729:
	xor	r13d, r13d
.label_821:
	mov	r10, qword ptr [rsp + 0x28]
.label_764:
	mov	r12, qword ptr [rsp + 0x40]
.label_751:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_810:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_721
	test	al, al
	je	.label_721
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_715
.label_721:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_785
	.section	.text
	.align	16
	#Procedure 0x409127
	.globl sub_409127
	.type sub_409127, @function
sub_409127:

	nop	word ptr [rax + rax]
.label_750:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_785:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_789
	test	sil, 1
	je	.label_731
	cmp	r14, rbp
	jae	.label_792
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_792:
	inc	r14
	xor	esi, esi
	jmp	.label_731
	.section	.text
	.align	16
	#Procedure 0x409165
	.globl sub_409165
	.type sub_409165, @function
sub_409165:

	nop	word ptr cs:[rax + rax]
.label_789:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_740
	cmp	r8d, 2
	jne	.label_801
	mov	eax, r9d
	and	al, 1
	jne	.label_801
	cmp	r14, rbp
	jae	.label_805
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_805:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_742
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_742:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_712
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_712:
	add	r14, 3
	mov	r9b, 1
.label_801:
	cmp	r14, rbp
	jae	.label_820
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_820:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_824
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_824:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_831
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_831:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_731:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_716
	test	r9b, 1
	je	.label_720
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_784
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_724
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_724:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_732
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_732:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_720
	.section	.text
	.align	16
	#Procedure 0x409276
	.globl sub_409276
	.type sub_409276, @function
sub_409276:

	nop	word ptr cs:[rax + rax]
.label_784:
	mov	rbx, rcx
.label_720:
	cmp	r14, rbp
	jae	.label_750
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_750
	.section	.text
	.align	16
	#Procedure 0x40929e
	.globl sub_40929e
	.type sub_40929e, @function
sub_40929e:

	nop	
.label_716:
	test	r9b, 1
	je	.label_756
	and	al, 1
	jne	.label_756
	cmp	r14, rbp
	jae	.label_759
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_759:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_735
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_735:
	add	r14, 2
	xor	r9d, r9d
.label_756:
	mov	ebx, r15d
.label_814:
	cmp	r14, rbp
	jae	.label_770
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_770:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_775
.label_795:
	xor	r13d, r13d
	jmp	.label_715
	.section	.text
	.align	16
	#Procedure 0x409301
	.globl sub_409301
	.type sub_409301, @function
sub_409301:

	nop	word ptr cs:[rax + rax]
.label_802:
	mov	rcx, r12
.label_806:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_783
	or	al, dl
	jne	.label_783
	mov	r11, rcx
	jmp	.label_740
.label_734:
	mov	eax, 2
.label_727:
	mov	qword ptr [rsp + 0x38], rax
.label_740:
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
.label_765:
	mov	r14, rax
.label_722:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_768:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_816
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_723
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_723
	inc	rdx
	nop	dword ptr [rax + rax]
.label_825:
	cmp	r14, rbp
	jae	.label_823
	mov	byte ptr [rcx + r14], al
.label_823:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_825
	jmp	.label_723
.label_781:
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
	jmp	.label_765
.label_816:
	mov	rcx, qword ptr [rsp + 0x10]
.label_723:
	cmp	r14, rbp
	jae	.label_722
	mov	byte ptr [rcx + r14], 0
	jmp	.label_722
.label_767:
	mov	eax, 5
	jmp	.label_727
.label_811:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x409450

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_835
	test	rsi, rsi
	mov	ecx, 1
	je	.label_836
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_836
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_835:
	mov	ecx, 1
.label_836:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x40949b
	.globl sub_40949b
	.type sub_40949b, @function
sub_40949b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4094a0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x4094a8
	.globl sub_4094a8
	.type sub_4094a8, @function
sub_4094a8:

	nop	dword ptr [rax + rax]
.label_837:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4094b5
	.globl sub_4094b5
	.type sub_4094b5, @function
sub_4094b5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4094c3
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
	je	.label_838
	test	r15, r15
	je	.label_837
.label_838:
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
	#Procedure 0x409500

	.globl show_date
	.type show_date, @function
show_date:
	push	r14
	push	rbx
	sub	rsp, 0x68
	mov	r14, rcx
	mov	rbx, rdi
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp + 0x10], rdx
	lea	rsi, [rsp + 8]
	lea	rdx, [rsp + 0x18]
	mov	rdi, r14
	call	localtime_rz
	test	rax, rax
	je	.label_845
	mov	eax, OFFSET FLAT:rfc_email_format
	cmp	rbx, rax
	je	.label_841
	mov	rdi, qword ptr [rip + stdout]
	mov	r8d, dword ptr [rsp + 0x10]
	lea	rdx, [rsp + 0x18]
	mov	rsi, rbx
	mov	rcx, r14
	call	fprintftime
	jmp	.label_843
.label_845:
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_840
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi, qword ptr [rsp + 8]
	lea	rsi, [rsp + 0x50]
	call	imaxtostr
	mov	rdi, rax
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
	jmp	.label_846
.label_841:
	mov	edi, 2
	mov	esi, OFFSET FLAT:label_844
	call	setlocale
	mov	rdi, qword ptr [rip + stdout]
	mov	r8d, dword ptr [rsp + 0x10]
	lea	rdx, [rsp + 0x18]
	mov	esi, OFFSET FLAT:rfc_email_format
	mov	rcx, r14
	call	fprintftime
	mov	edi, 2
	mov	esi, OFFSET FLAT:label_20
	call	setlocale
.label_843:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_842
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_839:
	mov	bl, 1
.label_846:
	mov	eax, ebx
	add	rsp, 0x68
	pop	rbx
	pop	r14
	ret	
.label_842:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_839
	.section	.text
	.align	16
	#Procedure 0x409606
	.globl sub_409606
	.type sub_409606, @function
sub_409606:

	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409610
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_847:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_847
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x409631
	.globl sub_409631
	.type sub_409631, @function
sub_409631:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409640
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40964e
	.globl sub_40964e
	.type sub_40964e, @function
sub_40964e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x409650

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
	js	.label_851
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_854
	cmp	r12d, 0x7fffffff
	je	.label_849
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
	jne	.label_852
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_852:
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
.label_854:
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
	jbe	.label_850
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_853
.label_850:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_848
	mov	rdi, r14
	call	free
.label_848:
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
.label_853:
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
.label_851:
	call	abort
.label_849:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40980d
	.globl sub_40980d
	.type sub_40980d, @function
sub_40980d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409810

	.globl mktime_z
	.type mktime_z, @function
mktime_z:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	rbp, rsi
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_859
	mov	edi, OFFSET FLAT:label_128
	call	getenv
	mov	r13, rax
	test	r13, r13
	mov	r12b, byte ptr [rbx + 8]
	mov	qword ptr [rsp + 8], rbp
	je	.label_867
	test	r12b, r12b
	je	.label_871
	lea	rdi, [rbx + 9]
	mov	rsi, r13
	call	strcmp
	mov	r15d, 1
	test	eax, eax
	je	.label_858
.label_871:
	mov	rdi, r13
	call	strlen
	mov	rbp, rax
	inc	rbp
	mov	r14b, 1
	jmp	.label_855
.label_859:
	mov	rdi, rbp
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	timegm
.label_867:
	xor	r14d, r14d
	mov	r15d, 1
	test	r12b, r12b
	mov	ebp, 0
	je	.label_858
.label_855:
	lea	rax, [rbp + 0x11]
	and	rax, 0xfffffffffffffff8
	cmp	rbp, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	mov	r15, rax
	mov	rax, -1
	test	r15, r15
	je	.label_869
	mov	qword ptr [r15], 0
	mov	byte ptr [r15 + 8], r14b
	mov	byte ptr [r15 + 9], 0
	test	r14b, r14b
	je	.label_872
	lea	r14, [r15 + 9]
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, rbp
	call	memcpy
	mov	byte ptr [r14 + rbp], 0
.label_872:
	test	r12b, r12b
	je	.label_876
	lea	rsi, [rbx + 9]
	mov	edi, OFFSET FLAT:label_128
	mov	edx, 1
	call	setenv
	jmp	.label_860
.label_876:
	mov	edi, OFFSET FLAT:label_128
	call	unsetenv
.label_860:
	test	eax, eax
	je	.label_863
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	cmp	r15, 2
	jb	.label_865
	nop	word ptr cs:[rax + rax]
.label_870:
	mov	rbx, qword ptr [r15]
	mov	rdi, r15
	call	free
	test	rbx, rbx
	mov	r15, rbx
	jne	.label_870
.label_865:
	mov	dword ptr [rbp], r14d
	jmp	.label_873
.label_863:
	call	tzset
.label_858:
	mov	rbp, qword ptr [rsp + 8]
	mov	rdi, rbp
	call	mktime
	mov	qword ptr [rsp], rax
	cmp	rax, -1
	jne	.label_861
	lea	rdi, [rsp]
	lea	rsi, [rsp + 0x10]
	call	localtime_r
	test	rax, rax
	je	.label_857
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 0x18]
	xor	rax, qword ptr [rbp]
	xor	rcx, qword ptr [rbp + 8]
	mov	edx, ecx
	or	edx, eax
	shr	rax, 0x20
	or	edx, eax
	shr	rcx, 0x20
	mov	rax, qword ptr [rsp + 0x20]
	xor	rax, qword ptr [rbp + 0x10]
	mov	esi, eax
	or	esi, ecx
	or	esi, edx
	shr	rax, 0x20
	or	eax, esi
	mov	edi, dword ptr [rbp + 0x20]
	mov	edx, dword ptr [rsp + 0x30]
	test	edi, edi
	sete	sil
	test	edx, edx
	sete	cl
	xor	cl, sil
	or	edx, edi
	setns	dl
	and	dl, cl
	movzx	ecx, dl
	or	ecx, eax
	jne	.label_857
.label_861:
	mov	rdi, rbx
	mov	rsi, rbp
	call	save_abbr
	test	al, al
	jne	.label_857
	mov	qword ptr [rsp], -1
.label_857:
	cmp	r15, 1
	je	.label_875
	call	__errno_location
	mov	r14, rax
	mov	r12d, dword ptr [r14]
	cmp	byte ptr [r15 + 8], 0
	je	.label_856
	lea	rsi, [r15 + 9]
	mov	edi, OFFSET FLAT:label_128
	mov	edx, 1
	call	setenv
	jmp	.label_864
.label_856:
	mov	edi, OFFSET FLAT:label_128
	call	unsetenv
.label_864:
	test	eax, eax
	je	.label_866
	mov	r12d, dword ptr [r14]
	xor	ebp, ebp
	jmp	.label_868
.label_866:
	call	tzset
	mov	bpl, 1
.label_868:
	cmp	r15, 2
	jb	.label_862
	nop	word ptr [rax + rax]
.label_874:
	mov	rbx, qword ptr [r15]
	mov	rdi, r15
	call	free
	test	rbx, rbx
	mov	r15, rbx
	jne	.label_874
.label_862:
	mov	dword ptr [r14], r12d
	test	bpl, bpl
	je	.label_873
.label_875:
	mov	rax, qword ptr [rsp]
	jmp	.label_869
.label_873:
	mov	rax, -1
.label_869:
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409a87
	.globl sub_409a87
	.type sub_409a87, @function
sub_409a87:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409a90

	.globl tzalloc
	.type tzalloc, @function
tzalloc:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	xor	r15d, r15d
	test	r14, r14
	je	.label_877
	mov	rdi, r14
	call	strlen
	mov	r15, rax
	inc	r15
.label_877:
	lea	rax, [r15 + 0x11]
	and	rax, 0xfffffffffffffff8
	cmp	r15, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_878
	mov	qword ptr [rbx], 0
	test	r14, r14
	setne	byte ptr [rbx + 8]
	mov	byte ptr [rbx + 9], 0
	je	.label_878
	mov	r12, rbx
	add	r12, 9
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, r15
	call	memcpy
	mov	byte ptr [r12 + r15], 0
.label_878:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x409b10

	.globl localtime_rz
	.type localtime_rz, @function
localtime_rz:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbp, rsi
	mov	r15, rdi
	test	r15, r15
	je	.label_879
	mov	qword ptr [rsp + 8], rdx
	mov	edi, OFFSET FLAT:label_128
	call	getenv
	mov	r13, rax
	test	r13, r13
	mov	bl, byte ptr [r15 + 8]
	mov	qword ptr [rsp + 0x10], rbp
	je	.label_886
	test	bl, bl
	je	.label_889
	lea	rdi, [r15 + 9]
	mov	rsi, r13
	call	strcmp
	mov	r14d, 1
	test	eax, eax
	je	.label_881
.label_889:
	mov	rdi, r13
	call	strlen
	mov	rbp, rax
	inc	rbp
	mov	r12b, 1
	jmp	.label_896
.label_879:
	mov	rdi, rbp
	mov	rsi, rdx
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	gmtime_r
.label_886:
	xor	r12d, r12d
	mov	r14d, 1
	test	bl, bl
	mov	ebp, 0
	je	.label_881
.label_896:
	lea	rax, [rbp + 0x11]
	and	rax, 0xfffffffffffffff8
	cmp	rbp, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	mov	r14, rax
	test	r14, r14
	je	.label_888
	mov	qword ptr [r14], 0
	mov	byte ptr [r14 + 8], r12b
	mov	byte ptr [r14 + 9], 0
	test	r12b, r12b
	je	.label_891
	lea	r12, [r14 + 9]
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, rbp
	call	memcpy
	mov	byte ptr [r12 + rbp], 0
.label_891:
	test	bl, bl
	je	.label_899
	lea	rsi, [r15 + 9]
	mov	edi, OFFSET FLAT:label_128
	mov	edx, 1
	call	setenv
	jmp	.label_895
.label_899:
	mov	edi, OFFSET FLAT:label_128
	call	unsetenv
.label_895:
	test	eax, eax
	je	.label_883
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	cmp	r14, 2
	jb	.label_884
	nop	word ptr cs:[rax + rax]
.label_890:
	mov	rbx, qword ptr [r14]
	mov	rdi, r14
	call	free
	test	rbx, rbx
	mov	r14, rbx
	jne	.label_890
.label_884:
	mov	dword ptr [rbp], r15d
.label_888:
	xor	eax, eax
	jmp	.label_892
.label_883:
	call	tzset
.label_881:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rbx, qword ptr [rsp + 8]
	mov	rsi, rbx
	call	localtime_r
	mov	bpl, 1
	test	rax, rax
	mov	r12b, 1
	je	.label_898
	mov	rdi, r15
	mov	rsi, rbx
	call	save_abbr
	mov	r12d, eax
	xor	r12b, 1
.label_898:
	cmp	r14, 1
	je	.label_880
	call	__errno_location
	mov	r15, rax
	mov	r13d, dword ptr [r15]
	cmp	byte ptr [r14 + 8], 0
	je	.label_882
	lea	rsi, [r14 + 9]
	mov	edi, OFFSET FLAT:label_128
	mov	edx, 1
	call	setenv
	jmp	.label_887
.label_882:
	mov	edi, OFFSET FLAT:label_128
	call	unsetenv
.label_887:
	test	eax, eax
	je	.label_885
	mov	r13d, dword ptr [r15]
	xor	ebp, ebp
	jmp	.label_897
.label_885:
	call	tzset
	mov	bpl, 1
.label_897:
	cmp	r14, 2
	jb	.label_894
	nop	word ptr cs:[rax + rax]
.label_893:
	mov	rbx, qword ptr [r14]
	mov	rdi, r14
	call	free
	test	rbx, rbx
	mov	r14, rbx
	jne	.label_893
.label_894:
	mov	dword ptr [r15], r13d
	mov	rbx, qword ptr [rsp + 8]
.label_880:
	xor	eax, eax
	xor	bpl, 1
	cmovne	rbx, rax
	test	r12b, r12b
	cmovne	rbx, rax
	mov	rax, rbx
.label_892:
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
	#Procedure 0x409d2e
	.globl sub_409d2e
	.type sub_409d2e, @function
sub_409d2e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x409d30

	.globl settime
	.type settime, @function
settime:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	r14, rdi
	xor	ebp, ebp
	xor	edi, edi
	mov	rsi, r14
	call	clock_settime
	mov	ebx, eax
	test	ebx, ebx
	je	.label_900
	call	__errno_location
	cmp	dword ptr [rax], 1
	mov	ebp, ebx
	je	.label_900
	mov	rax, qword ptr [r14]
	mov	qword ptr [rsp], rax
	movabs	rax, 0x20c49ba5e353f7cf
	imul	qword ptr [r14 + 8]
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 7
	add	rdx, rax
	mov	qword ptr [rsp + 8], rdx
	lea	rdi, [rsp]
	xor	esi, esi
	call	settimeofday
	mov	ebp, eax
.label_900:
	mov	eax, ebp
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409d99
	.globl sub_409d99
	.type sub_409d99, @function
sub_409d99:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409da0
	.globl current_timespec
	.type current_timespec, @function
current_timespec:

	sub	rsp, 0x18
	lea	rsi, [rsp + 8]
	xor	edi, edi
	call	clock_gettime
	mov	rax, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rsp + 0x10]
	add	rsp, 0x18
	ret	
	.section	.text
	.align	16
	#Procedure 0x409dbf
	.globl sub_409dbf
	.type sub_409dbf, @function
sub_409dbf:

	nop	
.label_902:
	mov	esi, OFFSET FLAT:label_15
.label_901:
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	esi, 8
	mov	rdx, r15
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	rsi, r14
	call	quote_n
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, r15
	mov	r8, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	error
	.section	.text
	.align	16
	#Procedure 0x409e13
	.globl argmatch_invalid
	.type argmatch_invalid, @function
argmatch_invalid:

	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	r14, rdi
	xor	edi, edi
	cmp	rdx, -1
	je	.label_902
	mov	esi, OFFSET FLAT:label_13
	jmp	.label_901
	.section	.text
	.align	16
	#Procedure 0x409e30

	.globl yyparse
	.type yyparse, @function
yyparse:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x588
	mov	r13, rdi
	lea	r12, [rsp + 0x120]
	mov	word ptr [rsp + 0xf0], 0
	lea	rax, [r13 + 0x58]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [r13 + 0x50]
	mov	qword ptr [rsp + 0xd0], rax
	lea	rax, [r13 + 0x20]
	mov	qword ptr [rsp + 0xb8], rax
	mov	ebx, 0xfffffffe
	movabs	r10, 0x8000000000000000
	movabs	rax, 0x3ffffff03ffffff
	movabs	rcx, 0x3ffffffffffffff
	and	rcx, rax
	mov	qword ptr [rsp + 0xe8], rcx
	mov	r15d, 0x80001f
	mov	eax, 0
	mov	r8d, 0
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xd8], rcx
	mov	dword ptr [rsp + 0xb4], 0
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xc8], rcx
	jmp	.label_1085
.label_1084:
	movsxd	rsi, eax
	movsx	r14d, byte ptr [rsi + yypact]
	cmp	r14d, -0x5d
	je	.label_1101
	cmp	ebx, -2
	jne	.label_1129
	mov	qword ptr [rsp + 0x48], rsi
	mov	rdi, qword ptr [r13]
	mov	rdx, rdi
	jmp	.label_1131
.label_919:
	mov	rdi, rdx
	nop	
.label_1131:
	mov	al, byte ptr [rdx]
	movzx	ecx, al
	lea	ebp, [rcx - 9]
	cmp	ebp, 0x17
	ja	.label_1136
	inc	rdx
.label_1141:
	mov	rsi, rdx
	bt	r15d, ebp
	jae	.label_1138
	mov	qword ptr [r13], rsi
	mov	al, byte ptr [rsi]
	movzx	ecx, al
	lea	ebp, [rcx - 9]
	lea	rdx, [rsi + 1]
	cmp	ebp, 0x18
	mov	rdi, rsi
	jb	.label_1141
	dec	rdx
	mov	rdi, rsi
	jmp	.label_1136
	.section	.text
	.align	16
	#Procedure 0x409f49
	.globl sub_409f49
	.type sub_409f49, @function
sub_409f49:

	nop	dword ptr [rax]
.label_1138:
	dec	rsi
	mov	rdx, rsi
.label_1136:
	lea	esi, [rcx - 0x30]
	cmp	esi, 0xa
	jae	.label_1152
	cmp	al, 0x2d
	je	.label_961
	xor	ecx, ecx
	cmp	al, 0x2b
	je	.label_961
	jmp	.label_1158
	.section	.text
	.align	16
	#Procedure 0x409f6d
	.globl sub_409f6d
	.type sub_409f6d, @function
sub_409f6d:

	nop	dword ptr [rax]
.label_1152:
	cmp	al, 0x2b
	je	.label_961
	cmp	al, 0x2d
	jne	.label_1160
.label_961:
	inc	rdx
	mov	rsi, rdx
	nop	
.label_957:
	mov	rdx, rsi
	mov	qword ptr [r13], rdx
	mov	bpl, byte ptr [rdx]
	movzx	ecx, bpl
	lea	edi, [rcx - 9]
	cmp	edi, 0x17
	ja	.label_1164
	lea	rsi, [rdx + 1]
	bt	r15d, edi
	jb	.label_957
.label_1164:
	add	ecx, -0x30
	cmp	ecx, 9
	mov	rdi, rdx
	ja	.label_1131
	jmp	.label_1081
.label_1160:
	add	ecx, -0x41
	cmp	ecx, 0x39
	ja	.label_1180
	movabs	rsi, 0x3ffffff03ffffff
	bt	rsi, rcx
	jb	.label_1095
.label_1180:
	cmp	al, 0x28
	mov	rsi, qword ptr [rsp + 0x48]
	jne	.label_1189
	xor	eax, eax
	nop	dword ptr [rax]
.label_916:
	mov	rcx, rdx
	lea	rdx, [rcx + 1]
	mov	qword ptr [r13], rdx
	movzx	ebx, byte ptr [rcx]
	cmp	bl, 0x28
	je	.label_1192
	cmp	bl, 0x29
	je	.label_1199
	xor	ecx, ecx
	test	bl, bl
	jne	.label_908
	jmp	.label_1091
	.section	.text
	.align	16
	#Procedure 0x40a003
	.globl sub_40a003
	.type sub_40a003, @function
sub_40a003:

	nop	word ptr cs:[rax + rax]
.label_1199:
	dec	rax
	jmp	.label_908
	.section	.text
	.align	16
	#Procedure 0x40a015
	.globl sub_40a015
	.type sub_40a015, @function
sub_40a015:

	nop	word ptr cs:[rax + rax]
.label_1192:
	inc	rax
.label_908:
	test	rax, rax
	jne	.label_916
	jmp	.label_919
.label_1081:
	cmp	al, 0x2d
	mov	ecx, 1
	mov	eax, 0xffffffff
	cmove	ecx, eax
	jne	.label_921
	mov	rsi, rdx
	xor	eax, eax
	nop	word ptr [rax + rax]
.label_969:
	mov	ebx, 0x3f
	test	rax, rax
	js	.label_934
	movabs	rdi, 0xccccccccccccccc
	cmp	rax, rdi
	jle	.label_1082
	jmp	.label_940
	.section	.text
	.align	16
	#Procedure 0x40a06e
	.globl sub_40a06e
	.type sub_40a06e, @function
sub_40a06e:

	nop	
.label_934:
	movabs	rdi, 0xf333333333333334
	cmp	rax, rdi
	jl	.label_940
.label_1082:
	add	rax, rax
	lea	rdi, [rax + rax*4]
	movzx	eax, bpl
	mov	ebp, 0x30
	sub	ebp, eax
	movsxd	rax, ebp
	js	.label_948
	lea	rbp, [r10 - 1]
	sub	rbp, rax
	mov	ebx, 0x3f
	cmp	rbp, rdi
	jge	.label_1175
	jmp	.label_940
.label_948:
	mov	rbp, r10
	sub	rbp, rax
	mov	ebx, 0x3f
	cmp	rdi, rbp
	jl	.label_940
.label_1175:
	add	rax, rdi
	movzx	ebp, byte ptr [rsi + 1]
	inc	rsi
	mov	edi, ebp
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_969
	mov	qword ptr [rsp + 0x60], r9
	mov	qword ptr [rsp + 0x58], r8
	lea	r9, [rsi - 1]
	mov	r8b, 1
	mov	rdi, rdx
	jmp	.label_977
.label_921:
	mov	ecx, 1
	mov	al, bpl
	mov	rdi, rdx
.label_1158:
	mov	bpl, al
	mov	rsi, rdx
	xor	eax, eax
	nop	dword ptr [rax + rax]
.label_1032:
	mov	ebx, 0x3f
	test	rax, rax
	js	.label_992
	movabs	rdx, 0xccccccccccccccc
	cmp	rax, rdx
	jle	.label_996
	jmp	.label_940
	.section	.text
	.align	16
	#Procedure 0x40a12e
	.globl sub_40a12e
	.type sub_40a12e, @function
sub_40a12e:

	nop	
.label_992:
	movabs	rdx, 0xf333333333333334
	cmp	rax, rdx
	jl	.label_940
.label_996:
	add	rax, rax
	lea	rdx, [rax + rax*4]
	movzx	eax, bpl
	cmp	al, 0x2f
	ja	.label_1011
	lea	rbp, [r10 + 0x30]
	sub	rbp, rax
	mov	ebx, 0x3f
	cmp	rdx, rbp
	jge	.label_1016
	jmp	.label_940
	.section	.text
	.align	16
	#Procedure 0x40a168
	.globl sub_40a168
	.type sub_40a168, @function
sub_40a168:

	nop	dword ptr [rax + rax]
.label_1011:
	lea	rbp, [r10 + 0x2f]
	sub	rbp, rax
	mov	ebx, 0x3f
	cmp	rbp, rdx
	jl	.label_940
.label_1016:
	lea	rax, [rax - 0x30]
	add	rax, rdx
	movzx	ebp, byte ptr [rsi + 1]
	inc	rsi
	mov	edx, ebp
	add	edx, -0x30
	cmp	edx, 0xa
	jb	.label_1032
	mov	qword ptr [rsp + 0x60], r9
	mov	qword ptr [rsp + 0x58], r8
	lea	r9, [rsi - 1]
	xor	r8d, r8d
.label_977:
	or	bpl, 2
	cmp	bpl, 0x2e
	jne	.label_1048
	movsx	edx, byte ptr [r9 + 2]
	add	edx, -0x30
	cmp	edx, 9
	ja	.label_1048
	lea	edx, [rdx + rdx*4]
	movsx	esi, byte ptr [r9 + 3]
	add	esi, -0x30
	lea	rdi, [r9 + 3]
	add	r9, 4
	cmp	esi, 0xa
	cmovae	r9, rdi
	mov	ebx, 0
	cmovae	esi, ebx
	lea	edx, [rsi + rdx*2]
	lea	edx, [rdx + rdx*4]
	movsx	esi, byte ptr [r9]
	add	esi, -0x30
	lea	rdi, [r9 + 1]
	cmp	esi, 0xa
	cmovae	rdi, r9
	cmovae	esi, ebx
	lea	edx, [rsi + rdx*2]
	lea	edx, [rdx + rdx*4]
	movsx	esi, byte ptr [rdi]
	add	esi, -0x30
	lea	rbp, [rdi + 1]
	cmp	esi, 0xa
	cmovae	rbp, rdi
	cmovae	esi, ebx
	lea	edx, [rsi + rdx*2]
	lea	edx, [rdx + rdx*4]
	movsx	esi, byte ptr [rbp]
	add	esi, -0x30
	lea	rdi, [rbp + 1]
	cmp	esi, 0xa
	cmovae	rdi, rbp
	cmovae	esi, ebx
	lea	edx, [rsi + rdx*2]
	lea	edx, [rdx + rdx*4]
	movsx	esi, byte ptr [rdi]
	add	esi, -0x30
	lea	rbp, [rdi + 1]
	cmp	esi, 0xa
	cmovae	rbp, rdi
	cmovae	esi, ebx
	lea	edx, [rsi + rdx*2]
	lea	edx, [rdx + rdx*4]
	movsx	esi, byte ptr [rbp]
	add	esi, -0x30
	lea	rdi, [rbp + 1]
	cmp	esi, 0xa
	cmovae	rdi, rbp
	cmovae	esi, ebx
	lea	edx, [rsi + rdx*2]
	lea	edx, [rdx + rdx*4]
	movsx	esi, byte ptr [rdi]
	add	esi, -0x30
	lea	rbp, [rdi + 1]
	cmp	esi, 0xa
	cmovae	rbp, rdi
	cmovae	esi, ebx
	lea	edx, [rsi + rdx*2]
	lea	esi, [rdx + rdx*4]
	movsx	edi, byte ptr [rbp]
	add	edi, -0x30
	lea	rdx, [rbp + 1]
	cmp	edi, 0xa
	cmovae	rdx, rbp
	cmovae	edi, ebx
	lea	esi, [rdi + rsi*2]
	test	r8b, r8b
	je	.label_1057
	movsx	ebp, byte ptr [rdx]
	mov	edi, ebp
	add	edi, -0x30
	cmp	edi, 9
	mov	r9, qword ptr [rsp + 0x60]
	ja	.label_1116
	nop	
.label_1126:
	cmp	bpl, 0x30
	jne	.label_1120
	movsx	ebp, byte ptr [rdx + 1]
	inc	rdx
	mov	edi, ebp
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_1126
	jmp	.label_1116
.label_1048:
	mov	edx, ecx
	shr	edx, 0x1f
	mov	dword ptr [rsp + 0xb4], edx
	mov	qword ptr [r13], rsi
	sub	rsi, rdi
	xor	ebx, ebx
	test	ecx, ecx
	sete	bl
	or	ebx, 0x112
	mov	qword ptr [rsp + 0xd8], rsi
	mov	r8, qword ptr [rsp + 0x58]
	mov	rsi, qword ptr [rsp + 0x48]
	jmp	.label_1128
.label_1189:
	lea	rax, [rdx + 1]
	mov	qword ptr [r13], rax
	movzx	ebx, byte ptr [rdx]
	jmp	.label_1129
.label_1095:
	lea	rsi, [rsp + 0x70]
	mov	rbp, qword ptr [rsp + 0xe8]
	nop	word ptr cs:[rax + rax]
.label_1170:
	lea	rcx, [rsp + 0x83]
	cmp	rsi, rcx
	jae	.label_1193
	mov	byte ptr [rsi], al
	inc	rsi
	mov	rdx, qword ptr [r13]
.label_1193:
	mov	rax, rdx
	lea	rdx, [rax + 1]
	mov	qword ptr [r13], rdx
	movzx	eax, byte ptr [rax + 1]
	mov	ecx, eax
	add	ecx, -0x41
	cmp	ecx, 0x39
	ja	.label_1157
	mov	rdi, rbp
	shr	rdi, cl
	and	edi, 1
	jmp	.label_1163
	.section	.text
	.align	16
	#Procedure 0x40a38a
	.globl sub_40a38a
	.type sub_40a38a, @function
sub_40a38a:

	nop	word ptr [rax + rax]
.label_1157:
	xor	edi, edi
.label_1163:
	cmp	al, 0x2e
	je	.label_1170
	test	dil, dil
	jne	.label_1170
	mov	byte ptr [rsi], 0
	mov	al, byte ptr [rsp + 0x70]
	test	al, al
	je	.label_1173
	lea	rcx, [rsp + 0x71]
	nop	dword ptr [rax + rax]
.label_1184:
	movzx	edx, al
	add	edx, -0x61
	cmp	edx, 0x1a
	jae	.label_1179
	add	al, 0xe0
.label_1179:
	mov	byte ptr [rcx - 1], al
	movzx	eax, byte ptr [rcx]
	inc	rcx
	test	al, al
	jne	.label_1184
.label_1173:
	mov	qword ptr [rsp + 0x60], r9
	mov	rbp, r8
	mov	esi, OFFSET FLAT:label_1188
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:meridian_table
	je	.label_905
	mov	esi, OFFSET FLAT:label_1196
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1202
	je	.label_905
	mov	esi, OFFSET FLAT:label_928
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_912
	je	.label_905
	mov	esi, OFFSET FLAT:label_917
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_924
	je	.label_905
	lea	rdi, [rsp + 0x70]
	call	strlen
	cmp	rax, 3
	mov	qword ptr [rsp + 0x90], rax
	je	.label_1054
	cmp	rax, 4
	jne	.label_939
	cmp	byte ptr [rsp + 0x73], 0x2e
	jne	.label_939
.label_1054:
	mov	esi, OFFSET FLAT:label_942
	mov	ebx, OFFSET FLAT:month_and_day_table
.label_954:
	mov	edx, 3
	lea	rdi, [rsp + 0x70]
	call	strncmp
	test	eax, eax
	je	.label_951
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_954
.label_1072:
	mov	rdi, r13
	lea	rsi, [rsp + 0x70]
	call	lookup_zone
	test	rax, rax
	jne	.label_905
	mov	esi, OFFSET FLAT:label_965
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:dst_table
	je	.label_905
	mov	esi, OFFSET FLAT:label_973
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:time_units_table
	je	.label_905
	mov	esi, OFFSET FLAT:label_983
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_986
	je	.label_905
	mov	esi, OFFSET FLAT:label_989
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_994
	je	.label_905
	mov	esi, OFFSET FLAT:label_999
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1004
	je	.label_905
	mov	esi, OFFSET FLAT:label_1009
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1015
	je	.label_905
	mov	esi, OFFSET FLAT:label_1017
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_925
	je	.label_905
	mov	esi, OFFSET FLAT:label_1026
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1033
	je	.label_905
	mov	esi, OFFSET FLAT:label_1036
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_997
	je	.label_905
	mov	esi, OFFSET FLAT:label_1022
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1051
	je	.label_905
	mov	esi, OFFSET FLAT:label_1055
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1059
	je	.label_905
	mov	rax, qword ptr [rsp + 0x90]
	cmp	byte ptr [rsp + rax + 0x6f], 0x53
	jne	.label_1066
	mov	rax, qword ptr [rsp + 0x90]
	mov	byte ptr [rsp + rax + 0x6f], 0
	mov	esi, OFFSET FLAT:label_973
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:time_units_table
	je	.label_905
	mov	esi, OFFSET FLAT:label_983
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_986
	je	.label_905
	mov	esi, OFFSET FLAT:label_989
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_994
	je	.label_905
	mov	esi, OFFSET FLAT:label_999
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1004
	je	.label_905
	mov	esi, OFFSET FLAT:label_1009
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1015
	je	.label_905
	mov	esi, OFFSET FLAT:label_1017
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_925
	je	.label_905
	mov	esi, OFFSET FLAT:label_1026
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1033
	je	.label_905
	mov	esi, OFFSET FLAT:label_1036
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_997
	je	.label_905
	mov	esi, OFFSET FLAT:label_1022
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1051
	je	.label_905
	mov	esi, OFFSET FLAT:label_1055
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1059
	je	.label_905
	mov	rax, qword ptr [rsp + 0x90]
	mov	byte ptr [rsp + rax + 0x6f], 0x53
.label_1066:
	mov	esi, OFFSET FLAT:label_1134
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:relative_time_table
	je	.label_905
	mov	esi, OFFSET FLAT:label_1149
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1023
	je	.label_905
	mov	esi, OFFSET FLAT:label_1156
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1159
	je	.label_905
	mov	esi, OFFSET FLAT:label_988
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1169
	je	.label_905
	mov	esi, OFFSET FLAT:label_1174
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1076
	je	.label_905
	mov	esi, OFFSET FLAT:label_1183
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1187
	je	.label_905
	mov	esi, OFFSET FLAT:label_1191
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1151
	je	.label_905
	mov	esi, OFFSET FLAT:label_1198
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1203
	je	.label_905
	mov	esi, OFFSET FLAT:label_906
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_913
	je	.label_905
	mov	esi, OFFSET FLAT:label_1073
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1013
	je	.label_905
	mov	esi, OFFSET FLAT:label_932
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_935
	je	.label_905
	mov	esi, OFFSET FLAT:label_937
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1108
	je	.label_905
	mov	esi, OFFSET FLAT:label_945
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_952
	je	.label_905
	mov	esi, OFFSET FLAT:label_959
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_963
	je	.label_905
	mov	esi, OFFSET FLAT:label_966
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_968
	je	.label_905
	mov	esi, OFFSET FLAT:label_974
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_979
	je	.label_905
	mov	esi, OFFSET FLAT:label_985
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1064
	je	.label_905
	mov	esi, OFFSET FLAT:label_1086
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_995
	je	.label_905
	mov	esi, OFFSET FLAT:label_1000
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1005
	je	.label_905
	mov	esi, OFFSET FLAT:label_1010
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_955
	je	.label_905
	movzx	esi, word ptr [rsp + 0x70]
	cmp	qword ptr [rsp + 0x90], 1
	mov	ecx, esi
	jne	.label_1018
	cmp	cl, 0x41
	mov	eax, OFFSET FLAT:military_table
	je	.label_905
	cmp	cl, 0x42
	mov	eax, OFFSET FLAT:label_1029
	je	.label_905
	cmp	cl, 0x43
	mov	eax, OFFSET FLAT:label_1035
	je	.label_905
	cmp	cl, 0x44
	mov	eax, OFFSET FLAT:label_1044
	je	.label_905
	cmp	cl, 0x45
	mov	eax, OFFSET FLAT:label_1045
	je	.label_905
	cmp	cl, 0x46
	mov	eax, OFFSET FLAT:label_1049
	je	.label_905
	cmp	cl, 0x47
	mov	eax, OFFSET FLAT:label_975
	je	.label_905
	cmp	cl, 0x48
	mov	eax, OFFSET FLAT:label_1058
	je	.label_905
	cmp	cl, 0x49
	mov	eax, OFFSET FLAT:label_1063
	je	.label_905
	cmp	cl, 0x4b
	mov	eax, OFFSET FLAT:label_1186
	je	.label_905
	cmp	cl, 0x4c
	mov	eax, OFFSET FLAT:label_1074
	je	.label_905
	cmp	cl, 0x4d
	mov	eax, OFFSET FLAT:label_1078
	je	.label_905
	cmp	cl, 0x4e
	mov	eax, OFFSET FLAT:label_938
	je	.label_905
	cmp	cl, 0x4f
	mov	eax, OFFSET FLAT:label_1077
	je	.label_905
	cmp	cl, 0x50
	mov	eax, OFFSET FLAT:label_1088
	je	.label_905
	cmp	cl, 0x51
	mov	eax, OFFSET FLAT:label_1092
	je	.label_905
	cmp	cl, 0x52
	mov	eax, OFFSET FLAT:label_1068
	je	.label_905
	cmp	cl, 0x53
	mov	eax, OFFSET FLAT:label_1098
	je	.label_905
	cmp	cl, 0x54
	mov	eax, OFFSET FLAT:label_1100
	je	.label_905
	cmp	cl, 0x55
	mov	eax, OFFSET FLAT:label_1102
	je	.label_905
	cmp	cl, 0x56
	mov	eax, OFFSET FLAT:label_1106
	je	.label_905
	cmp	cl, 0x57
	mov	eax, OFFSET FLAT:label_1107
	je	.label_905
	cmp	cl, 0x58
	mov	eax, OFFSET FLAT:label_1111
	je	.label_905
	cmp	cl, 0x59
	mov	eax, OFFSET FLAT:label_927
	je	.label_905
	test	cl, cl
	je	.label_1025
	cmp	cl, 0x5a
	mov	eax, OFFSET FLAT:label_1119
	je	.label_905
	jmp	.label_1125
.label_1057:
	mov	r9, qword ptr [rsp + 0x60]
	jmp	.label_1116
.label_1120:
	inc	esi
.label_1116:
	dec	rdx
	nop	dword ptr [rax]
.label_1041:
	movsx	edi, byte ptr [rdx + 1]
	inc	rdx
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_1041
	test	esi, esi
	setne	bl
	and	r8b, bl
	cmp	r8b, 1
	jne	.label_1132
	mov	ebx, 0x3f
	cmp	rax, r10
	mov	r8, qword ptr [rsp + 0x58]
	jne	.label_1135
.label_940:
	mov	rax, r9
	mov	rsi, qword ptr [rsp + 0x48]
	jmp	.label_1128
.label_1132:
	mov	r8, qword ptr [rsp + 0x58]
	jmp	.label_1130
.label_1135:
	dec	rax
	mov	edi, 0x3b9aca00
	sub	edi, esi
	mov	esi, edi
.label_1130:
	mov	rdi, rax
	shr	rdi, 8
	mov	qword ptr [rsp + 0xc8], rdi
	mov	dword ptr [rsp + 0xb4], eax
	movsxd	rax, esi
	mov	qword ptr [r13], rdx
	xor	ebx, ebx
	test	ecx, ecx
	sete	bl
	or	ebx, 0x114
	mov	rsi, qword ptr [rsp + 0x48]
	jmp	.label_1128
.label_939:
	mov	esi, OFFSET FLAT:label_942
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:month_and_day_table
	je	.label_905
	mov	esi, OFFSET FLAT:label_1168
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1042
	je	.label_905
	mov	esi, OFFSET FLAT:label_1177
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1182
	je	.label_905
	mov	esi, OFFSET FLAT:label_1185
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1190
	je	.label_905
	mov	esi, OFFSET FLAT:label_1043
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1197
	je	.label_905
	mov	esi, OFFSET FLAT:label_1201
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_904
	je	.label_905
	mov	esi, OFFSET FLAT:label_911
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_918
	je	.label_905
	mov	esi, OFFSET FLAT:label_923
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_931
	je	.label_905
	mov	esi, OFFSET FLAT:label_1062
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_936
	je	.label_905
	mov	esi, OFFSET FLAT:label_1079
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_944
	je	.label_905
	mov	esi, OFFSET FLAT:label_1143
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_958
	je	.label_905
	mov	esi, OFFSET FLAT:label_962
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1007
	je	.label_905
	mov	esi, OFFSET FLAT:label_947
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1047
	je	.label_905
	mov	esi, OFFSET FLAT:label_1144
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1030
	je	.label_905
	mov	esi, OFFSET FLAT:label_1103
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_964
	je	.label_905
	mov	esi, OFFSET FLAT:label_1053
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1122
	je	.label_905
	mov	esi, OFFSET FLAT:label_1139
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1121
	je	.label_905
	mov	esi, OFFSET FLAT:label_1014
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1080
	je	.label_905
	mov	esi, OFFSET FLAT:label_1021
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_970
	je	.label_905
	mov	esi, OFFSET FLAT:label_1031
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1024
	je	.label_905
	mov	esi, OFFSET FLAT:label_1038
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1046
	je	.label_905
	mov	esi, OFFSET FLAT:label_1089
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1052
	je	.label_905
	mov	esi, OFFSET FLAT:label_1056
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1060
	je	.label_905
	mov	esi, OFFSET FLAT:label_1065
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1071
	jne	.label_1072
	jmp	.label_905
.label_951:
	mov	rax, rbx
.label_905:
	mov	ebx, dword ptr [rax + 8]
	mov	eax, dword ptr [rax + 0xc]
	mov	dword ptr [rsp + 0xb4], eax
	sar	eax, 8
	cdqe	
	mov	qword ptr [rsp + 0xc8], rax
.label_1061:
	movabs	r10, 0x8000000000000000
	mov	r8, rbp
	mov	r9, qword ptr [rsp + 0x60]
	mov	rsi, qword ptr [rsp + 0x48]
	nop	word ptr cs:[rax + rax]
.label_1129:
	xor	ecx, ecx
	test	ebx, ebx
	jle	.label_1091
	mov	ecx, 2
	cmp	ebx, 0x115
	mov	rax, r9
	ja	.label_1093
.label_1128:
	movsxd	rcx, ebx
	movzx	ecx, byte ptr [rcx + yytranslate]
	mov	r9, rax
	jmp	.label_1093
	.section	.text
	.align	16
	#Procedure 0x40ae65
	.globl sub_40ae65
	.type sub_40ae65, @function
sub_40ae65:

	nop	word ptr cs:[rax + rax]
.label_1091:
	xor	ebx, ebx
.label_1093:
	add	r14d, ecx
	cmp	r14d, 0x70
	ja	.label_1101
	movsxd	rdx, r14d
	movsx	eax, byte ptr [rdx + yycheck]
	cmp	eax, ecx
	jne	.label_1101
	movzx	eax, byte ptr [rdx + yytable]
	or	rdx, 4
	cmp	rdx, 0x6f
	jne	.label_1105
	neg	eax
	jmp	.label_1109
	.section	.text
	.align	16
	#Procedure 0x40aea2
	.globl sub_40aea2
	.type sub_40aea2, @function
sub_40aea2:

	nop	word ptr cs:[rax + rax]
.label_1101:
	movzx	eax, byte ptr [rsi + yydefact]
	test	eax, eax
	mov	ebp, 1
	je	.label_929
.label_1109:
	movsxd	rdi, eax
	movzx	r14d, byte ptr [rdi + yyr2]
	mov	eax, 1
	sub	rax, r14
	imul	rax, rax, 0x38
	mov	r11, qword ptr [r12 + rax]
	mov	rcx, qword ptr [r12 + rax + 8]
	mov	qword ptr [rsp + 0x48], rcx
	mov	rsi, qword ptr [r12 + rax + 0x10]
	mov	rcx, qword ptr [r12 + rax + 0x18]
	mov	qword ptr [rsp + 0x90], rcx
	mov	rcx, qword ptr [r12 + rax + 0x20]
	mov	qword ptr [rsp + 0xa0], rcx
	mov	rcx, qword ptr [r12 + rax + 0x28]
	mov	qword ptr [rsp + 0x98], rcx
	mov	ecx, dword ptr [r12 + rax + 0x30]
	mov	dword ptr [rsp + 0x44], ecx
	mov	edx, dword ptr [r12 + rax + 0x34]
	lea	eax, [rdi - 4]
	cmp	eax, 0x57
	ja	.label_914
	jmp	qword ptr [(rax * 8) + label_1142]
.label_1610:
	mov	rax, qword ptr [r12 + 0x30]
	mov	qword ptr [rsp + 0x30], rax
	movdqu	xmm0, xmmword ptr [r12]
	movups	xmm1, xmmword ptr [r12 + 0x10]
	movups	xmm2, xmmword ptr [r12 + 0x20]
	movups	xmmword ptr [rsp + 0x20], xmm2
	movups	xmmword ptr [rsp + 0x10], xmm1
	movdqu	xmmword ptr [rsp], xmm0
	mov	ebp, 1
	mov	qword ptr [rsp + 0x68], rsi
	mov	esi, 1
	mov	qword ptr [rsp + 0x50], rdi
	mov	rdi, r13
	mov	qword ptr [rsp + 0x58], r8
	mov	qword ptr [rsp + 0x60], r9
	mov	dword ptr [rsp + 0x40], edx
	mov	qword ptr [rsp + 0xa8], r11
	call	apply_relative_time
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rsi, qword ptr [rsp + 0x68]
	mov	edx, dword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	r9, qword ptr [rsp + 0x60]
	mov	r8, qword ptr [rsp + 0x58]
	movabs	r10, 0x8000000000000000
	jmp	.label_1171
.label_1105:
	mov	rcx, qword ptr [rsp + 0xc8]
	shl	rcx, 8
	mov	edx, dword ptr [rsp + 0xb4]
	movzx	edx, dl
	or	rdx, rcx
	mov	qword ptr [r12 + 0x38], rdx
	mov	qword ptr [r12 + 0x40], r9
	mov	rcx, qword ptr [rsp + 0xd8]
	mov	qword ptr [r12 + 0x48], rcx
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r12 + 0x60], xmm0
	movdqu	xmmword ptr [r12 + 0x50], xmm0
	lea	rcx, [r12 + 0x38]
	mov	ebx, 0xfffffffe
	jmp	.label_1145
.label_1624:
	mov	rax, qword ptr [r12 - 0x30]
	jmp	.label_909
.label_1631:
	mov	r11, qword ptr [r12 + 8]
	xor	eax, eax
	mov	qword ptr [rsp + 0x48], rax
	jmp	.label_914
.label_1612:
	mov	r11, qword ptr [r12 - 0x30]
	jmp	.label_922
.label_1627:
	mov	rax, qword ptr [r12 - 0x30]
	jmp	.label_926
.label_1615:
	mov	rax, qword ptr [r12 - 0x30]
	jmp	.label_930
.label_1628:
	mov	rax, qword ptr [r12 - 0x38]
	mov	qword ptr [rsp + 0x98], rax
	mov	eax, dword ptr [r12 - 0x30]
	mov	dword ptr [rsp + 0x44], eax
	xor	r11d, r11d
	xor	eax, eax
	mov	qword ptr [rsp + 0x48], rax
	xor	esi, esi
	xor	eax, eax
	mov	qword ptr [rsp + 0x90], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0xa0], rax
	jmp	.label_914
.label_1619:
	mov	rsi, qword ptr [r12]
	jmp	.label_950
.label_1621:
	mov	rax, qword ptr [r12 - 0x30]
	jmp	.label_1155
.label_1633:
	mov	qword ptr [rsp + 0x50], rdi
	movdqu	xmm0, xmmword ptr [r12 - 0x38]
	mov	rdi, qword ptr [r12 - 0x28]
	mov	rax, qword ptr [r13 + 0xa8]
	test	rax, rax
	mov	qword ptr [rsp + 0x58], r8
	mov	qword ptr [rsp + 0x60], r9
	mov	dword ptr [rsp + 0x40], edx
	mov	qword ptr [rsp + 0x68], rsi
	mov	qword ptr [rsp + 0xa8], r11
	je	.label_960
	cmp	qword ptr [r13 + 0x30], 0
	jne	.label_960
	cmp	byte ptr [r13 + 0xa1], 0
	je	.label_976
.label_960:
	cmp	rdi, 5
	jl	.label_982
	inc	rax
	mov	qword ptr [r13 + 0xa8], rax
	pshufd	xmm0, xmm0, 0x4e
	movq	rcx, xmm0
	movabs	rbp, 0xa3d70a3d70a3d70b
	mov	rax, rcx
	imul	rbp
	mov	rsi, rdx
	add	rsi, rcx
	mov	rax, rsi
	shr	rax, 0x3f
	sar	rsi, 6
	add	rsi, rax
	imul	rax, rsi, 0x64
	mov	rdx, rcx
	sub	rdx, rax
	mov	qword ptr [r13 + 0x40], rdx
	mov	rax, rsi
	imul	rbp
	add	rdx, rsi
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 6
	add	rdx, rax
	imul	rax, rdx, 0x64
	sub	rsi, rax
	mov	qword ptr [r13 + 0x38], rsi
	movabs	rdx, 0x346dc5d63886594b
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 0xb
	add	rdx, rax
	mov	qword ptr [r13 + 0x28], rdx
	add	rdi, -4
	mov	qword ptr [r13 + 0x30], rdi
	jmp	.label_1012
.label_1617:
	mov	rsi, qword ptr [r12]
	test	rsi, rsi
	js	.label_1034
	lea	r11, [r12 - 0x38]
	jmp	.label_1037
.label_1616:
	xor	r11d, r11d
	mov	eax, 1
	jmp	.label_1040
.label_1609:
	mov	qword ptr [rsp + 0x68], rsi
	mov	esi, dword ptr [r12]
	mov	rax, qword ptr [r12 - 8]
	mov	qword ptr [rsp + 0x30], rax
	movdqu	xmm0, xmmword ptr [r12 - 0x38]
	movups	xmm1, xmmword ptr [r12 - 0x28]
	movups	xmm2, xmmword ptr [r12 - 0x18]
	movups	xmmword ptr [rsp + 0x20], xmm2
	movups	xmmword ptr [rsp + 0x10], xmm1
	movdqu	xmmword ptr [rsp], xmm0
	mov	qword ptr [rsp + 0x50], rdi
	mov	rdi, r13
	mov	qword ptr [rsp + 0x58], r8
	mov	rbp, r9
	mov	dword ptr [rsp + 0x40], edx
	mov	qword ptr [rsp + 0xa8], r11
	call	apply_relative_time
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rsi, qword ptr [rsp + 0x68]
	mov	edx, dword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	r9, rbp
	mov	r8, qword ptr [rsp + 0x58]
	movabs	r10, 0x8000000000000000
	mov	ebp, 1
.label_1171:
	test	al, al
	jne	.label_914
	jmp	.label_929
.label_1608:
	mov	rax, qword ptr [r12 - 0x60]
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	qword ptr [rcx + 0x10], rax
	movdqu	xmm0, xmmword ptr [r12 - 0x70]
	movdqu	xmmword ptr [rcx], xmm0
	mov	rax, qword ptr [r12 - 0x30]
	mov	rcx, rax
	neg	rcx
	cmp	rax, r10
	mov	qword ptr [r13 + 0x38], rcx
	mov	ebp, 1
	je	.label_929
	mov	rax, qword ptr [r12 + 8]
	mov	rcx, rax
	neg	rcx
	cmp	rax, r10
	mov	qword ptr [r13 + 0x40], rcx
	jne	.label_914
	jmp	.label_929
.label_1606:
	mov	rax, qword ptr [r12 - 0x30]
	mov	qword ptr [r13 + 0x40], rax
	mov	rax, qword ptr [r12]
	mov	qword ptr [r13 + 0x38], rax
	jmp	.label_914
.label_1634:
	mov	r11, -1
	jmp	.label_914
.label_1588:
	mov	dword ptr [r13 + 0x14], 1
	inc	qword ptr [r13 + 0xc0]
	jmp	.label_914
.label_1591:
	mov	eax, dword ptr [r12 - 0x38]
	mov	dword ptr [r13 + 0x18], eax
	jmp	.label_1118
.label_1583:
	mov	rax, qword ptr [r12 - 0x30]
	mov	qword ptr [r13 + 0x48], rax
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rsp + 0xd0]
	movdqu	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	dword ptr [r13 + 0x1c], 2
	jmp	.label_914
.label_1595:
	mov	eax, 0xe10
	add	eax, dword ptr [r12 - 0x38]
	mov	dword ptr [r13 + 0x18], eax
	jmp	.label_914
.label_1593:
	mov	dword ptr [rsp + 0x40], edx
	mov	rdx, qword ptr [r12 - 0x30]
	imul	rcx, rdx, 0x64
	cmp	qword ptr [r12 - 0x28], 3
	mov	rax, qword ptr [r12]
	cmovge	rcx, rdx
	test	rax, rax
	cmovns	rcx, rdx
	js	.label_1137
	mov	rbp, rsi
	mov	dl, byte ptr [r12 - 0x38]
	test	rcx, rcx
	js	.label_1147
	movabs	rsi, 0x222222222222222
	cmp	rcx, rsi
	jg	.label_1001
	jmp	.label_978
.label_1580:
	mov	rax, qword ptr [r12 - 0x30]
	mov	qword ptr [r13 + 0x48], rax
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rsp + 0xd0]
	movdqu	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	jmp	.label_943
.label_1603:
	mov	rax, qword ptr [r12 - 0x70]
	mov	qword ptr [r13 + 0x38], rax
	mov	rax, qword ptr [r12 - 0x30]
	mov	rcx, rax
	neg	rcx
	cmp	rax, r10
	mov	qword ptr [r13 + 0x40], rcx
	mov	ebp, 1
	je	.label_929
	mov	rax, qword ptr [r12 + 8]
	mov	rcx, rax
	neg	rcx
	cmp	rax, r10
	mov	qword ptr [r13 + 0x28], rcx
	jne	.label_1181
	jmp	.label_929
.label_1598:
	mov	rax, qword ptr [r12 - 0x38]
	jmp	.label_915
.label_1592:
	mov	dword ptr [r13 + 0x18], 0x6270
.label_1118:
	mov	rax, qword ptr [r12 + 0x30]
	mov	qword ptr [rsp + 0x30], rax
	movdqu	xmm0, xmmword ptr [r12]
	movups	xmm1, xmmword ptr [r12 + 0x10]
	movups	xmm2, xmmword ptr [r12 + 0x20]
	movups	xmmword ptr [rsp + 0x20], xmm2
	movups	xmmword ptr [rsp + 0x10], xmm1
	movdqu	xmmword ptr [rsp], xmm0
	mov	ebp, 1
	mov	qword ptr [rsp + 0x68], rsi
	mov	esi, 1
	mov	qword ptr [rsp + 0x50], rdi
	mov	rdi, r13
	mov	qword ptr [rsp + 0x58], r8
	mov	qword ptr [rsp + 0x60], r9
	mov	dword ptr [rsp + 0x40], edx
	mov	qword ptr [rsp + 0xa8], r11
	call	apply_relative_time
	test	al, al
	je	.label_929
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_933
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r13
	call	debug_print_relative_time
	mov	r11, qword ptr [rsp + 0xa8]
	jmp	.label_1097
.label_1582:
	mov	rax, qword ptr [r12 - 0x110]
	mov	rcx, qword ptr [r12 - 0xa0]
	mov	ebp, edx
	mov	rdx, qword ptr [r12 - 0x38]
	mov	r10, r9
	mov	r9, r11
	mov	r11, rsi
	movsxd	rsi, dword ptr [r12 - 0x30]
	mov	qword ptr [r13 + 0x48], rax
	mov	qword ptr [r13 + 0x50], rcx
	mov	qword ptr [r13 + 0x58], rdx
	mov	edx, ebp
	mov	qword ptr [r13 + 0x60], rsi
	mov	rsi, r11
	mov	r11, r9
	mov	r9, r10
	movabs	r10, 0x8000000000000000
	jmp	.label_943
.label_1589:
	mov	eax, dword ptr [r12]
	mov	dword ptr [r13 + 0x18], eax
	jmp	.label_914
.label_1572:
	inc	qword ptr [r13 + 0xc8]
	mov	qword ptr [rsp + 0x50], rdi
	xor	edi, edi
	mov	qword ptr [rsp + 0x68], rsi
	mov	esi, OFFSET FLAT:label_971
	jmp	.label_972
.label_1599:
	mov	rax, qword ptr [r12 - 0x30]
.label_915:
	mov	qword ptr [r13 + 8], rax
	mov	eax, dword ptr [r12]
	mov	dword ptr [r13 + 0x10], eax
	mov	byte ptr [r13 + 0xe0], 1
	jmp	.label_914
.label_1601:
	mov	rbp, qword ptr [r12 - 0xd0]
	mov	al, byte ptr [r13 + 0xd9]
	cmp	rbp, 4
	jl	.label_990
	lea	rcx, [r12 - 0xe0]
	mov	qword ptr [rsp + 0xe0], rcx
	test	al, al
	je	.label_998
	mov	qword ptr [rsp + 0x50], rdi
	xor	edi, edi
	mov	qword ptr [rsp + 0x68], rsi
	mov	esi, OFFSET FLAT:label_1006
	mov	dword ptr [rsp + 0x40], edx
	mov	edx, 5
	mov	qword ptr [rsp + 0x58], r8
	mov	qword ptr [rsp + 0x60], r9
	mov	qword ptr [rsp + 0xa8], r11
	call	dcgettext
	mov	rcx, rax
	mov	rsi, qword ptr [r12 - 0xd8]
	xor	eax, eax
	mov	rdi, rcx
	mov	rdx, rbp
	call	dbg_printf
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rsi, qword ptr [rsp + 0x68]
	mov	edx, dword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	r9, qword ptr [rsp + 0x60]
	mov	r8, qword ptr [rsp + 0x58]
	movabs	r10, 0x8000000000000000
.label_998:
	mov	rbp, qword ptr [rsp + 0xe0]
	mov	rax, qword ptr [rbp + 0x10]
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	qword ptr [rcx + 0x10], rax
	movdqu	xmm0, xmmword ptr [rbp]
	movdqu	xmmword ptr [rcx], xmm0
.label_1600:
	mov	rax, qword ptr [r12 - 0x68]
	jmp	.label_1115
.label_1575:
	inc	qword ptr [r13 + 0xa8]
	mov	qword ptr [rsp + 0x50], rdi
	xor	edi, edi
	mov	qword ptr [rsp + 0x68], rsi
	mov	esi, OFFSET FLAT:label_354
	jmp	.label_972
.label_1581:
	mov	rax, qword ptr [r12 - 0xa0]
	mov	rcx, qword ptr [r12 - 0x30]
	mov	qword ptr [r13 + 0x48], rax
	mov	qword ptr [r13 + 0x50], rcx
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rsp + 0xc0]
	movdqu	xmmword ptr [rax], xmm0
.label_943:
	mov	eax, dword ptr [r12]
	mov	dword ptr [r13 + 0x1c], eax
	jmp	.label_914
.label_1594:
	mov	eax, 0xe10
	add	eax, dword ptr [r12]
	mov	dword ptr [r13 + 0x18], eax
	jmp	.label_914
.label_1570:
	movdqu	xmm0, xmmword ptr [r12]
	mov	rax, qword ptr [rsp + 0xc0]
	movdqu	xmmword ptr [rax], xmm0
	mov	byte ptr [r13 + 0xa0], 1
	mov	qword ptr [rsp + 0x50], rdi
	xor	edi, edi
	mov	qword ptr [rsp + 0x68], rsi
	mov	esi, OFFSET FLAT:label_1087
	jmp	.label_972
.label_1571:
	inc	qword ptr [r13 + 0xc8]
	inc	qword ptr [r13 + 0xa8]
	mov	qword ptr [rsp + 0x50], rdi
	xor	edi, edi
	mov	qword ptr [rsp + 0x68], rsi
	mov	esi, OFFSET FLAT:label_1099
	jmp	.label_972
.label_1576:
	inc	qword ptr [r13 + 0xb0]
	mov	qword ptr [rsp + 0x50], rdi
	xor	edi, edi
	mov	qword ptr [rsp + 0x68], rsi
	mov	esi, OFFSET FLAT:label_1104
	jmp	.label_972
.label_1577:
	mov	qword ptr [rsp + 0x50], rdi
	xor	edi, edi
	mov	qword ptr [rsp + 0x68], rsi
	mov	esi, OFFSET FLAT:label_933
	jmp	.label_1110
.label_1584:
	mov	rax, qword ptr [r12 - 0xa0]
	mov	rcx, qword ptr [r12 - 0x30]
	mov	qword ptr [r13 + 0x48], rax
	mov	qword ptr [r13 + 0x50], rcx
	jmp	.label_1117
.label_1613:
	xor	eax, eax
	mov	qword ptr [rsp + 0x48], rax
	mov	r11d, 1
	jmp	.label_1124
.label_1585:
	mov	rax, qword ptr [r12 - 0x110]
	mov	rcx, qword ptr [r12 - 0xa0]
	mov	ebp, edx
	mov	rdx, qword ptr [r12 - 0x38]
	mov	r10, r9
	mov	r9, r11
	mov	r11, rsi
	movsxd	rsi, dword ptr [r12 - 0x30]
	mov	qword ptr [r13 + 0x48], rax
	mov	qword ptr [r13 + 0x50], rcx
	mov	qword ptr [r13 + 0x58], rdx
	mov	edx, ebp
	mov	qword ptr [r13 + 0x60], rsi
	mov	rsi, r11
	mov	r11, r9
	mov	r9, r10
	movabs	r10, 0x8000000000000000
	mov	dword ptr [r13 + 0x1c], 2
	jmp	.label_914
.label_1573:
	inc	qword ptr [r13 + 0xb8]
	mov	qword ptr [rsp + 0x50], rdi
	xor	edi, edi
	mov	qword ptr [rsp + 0x68], rsi
	mov	esi, OFFSET FLAT:label_1146
	jmp	.label_972
.label_1574:
	inc	qword ptr [r13 + 0xd0]
	mov	qword ptr [rsp + 0x50], rdi
	xor	edi, edi
	mov	qword ptr [rsp + 0x68], rsi
	mov	esi, OFFSET FLAT:label_1153
	jmp	.label_972
.label_1635:
	mov	r11, qword ptr [r12 + 8]
	jmp	.label_914
.label_1607:
	mov	rax, qword ptr [r12 - 0x68]
	mov	qword ptr [r13 + 0x40], rax
	mov	rax, qword ptr [r12 - 0x38]
	mov	qword ptr [r13 + 0x38], rax
	jmp	.label_1165
.label_1614:
	mov	rax, qword ptr [r12 - 0x38]
.label_930:
	mov	qword ptr [rsp + 0x48], rax
	xor	r11d, r11d
	jmp	.label_1124
.label_1579:
	mov	qword ptr [rsp + 0x50], rdi
	xor	edi, edi
	mov	qword ptr [rsp + 0x68], rsi
	mov	esi, OFFSET FLAT:label_1178
.label_1110:
	mov	dword ptr [rsp + 0x40], edx
	mov	edx, 5
	mov	qword ptr [rsp + 0x58], r8
	mov	qword ptr [rsp + 0x60], r9
	mov	rbp, r11
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r13
	call	debug_print_relative_time
	jmp	.label_1150
.label_1620:
	mov	rax, qword ptr [r12 - 0x38]
.label_1155:
	mov	qword ptr [rsp + 0x90], rax
	xor	r11d, r11d
	jmp	.label_1195
.label_1578:
	mov	qword ptr [rsp + 0x50], rdi
	xor	edi, edi
	mov	qword ptr [rsp + 0x68], rsi
	mov	esi, OFFSET FLAT:label_1200
.label_972:
	mov	dword ptr [rsp + 0x40], edx
	mov	edx, 5
	mov	qword ptr [rsp + 0x58], r8
	mov	qword ptr [rsp + 0x60], r9
	mov	rbp, r11
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r13
	call	debug_print_current_time
.label_1150:
	mov	r11, rbp
.label_1097:
	mov	rsi, qword ptr [rsp + 0x68]
	mov	edx, dword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	r9, qword ptr [rsp + 0x60]
	mov	r8, qword ptr [rsp + 0x58]
	movabs	r10, 0x8000000000000000
	jmp	.label_914
.label_1587:
	mov	eax, dword ptr [r12]
	mov	dword ptr [r13 + 0x14], eax
	jmp	.label_914
.label_1604:
	mov	rax, qword ptr [r12 - 0x38]
.label_1115:
	mov	qword ptr [r13 + 0x38], rax
	mov	rax, qword ptr [r12 + 8]
	mov	qword ptr [r13 + 0x40], rax
	jmp	.label_914
.label_1586:
	mov	dword ptr [rsp + 0x40], edx
	inc	qword ptr [r13 + 0xd0]
	mov	rdx, qword ptr [r12 - 0x30]
	imul	rcx, rdx, 0x64
	cmp	qword ptr [r12 - 0x28], 3
	mov	rax, qword ptr [r12]
	cmovge	rcx, rdx
	test	rax, rax
	cmovns	rcx, rdx
	js	.label_946
	mov	rbp, rsi
	mov	dl, byte ptr [r12 - 0x38]
	test	rcx, rcx
	js	.label_907
	movabs	rsi, 0x222222222222222
	cmp	rcx, rsi
	jg	.label_967
	jmp	.label_941
.label_1611:
	mov	r11, qword ptr [r12 - 0x38]
.label_922:
	xor	eax, eax
.label_1040:
	mov	qword ptr [rsp + 0x48], rax
.label_1124:
	xor	esi, esi
	jmp	.label_980
.label_1590:
	mov	dword ptr [r13 + 0x18], 0x6270
	jmp	.label_914
.label_1626:
	mov	rax, qword ptr [r12 - 0x38]
.label_926:
	mov	qword ptr [rsp + 0x98], rax
	xor	r11d, r11d
	jmp	.label_987
.label_1632:
	mov	qword ptr [rsp + 0x50], rdi
	movdqu	xmm0, xmmword ptr [r12]
	mov	rdi, qword ptr [r12 + 0x10]
	mov	rax, qword ptr [r13 + 0xa8]
	test	rax, rax
	je	.label_991
	cmp	qword ptr [r13 + 0x30], 0
	jne	.label_991
	cmp	byte ptr [r13 + 0xa1], 0
	je	.label_1002
.label_991:
	cmp	rdi, 5
	jl	.label_1008
	inc	rax
	mov	qword ptr [r13 + 0xa8], rax
	pshufd	xmm0, xmm0, 0x4e
	movq	rcx, xmm0
	movabs	rbp, 0xa3d70a3d70a3d70b
	mov	rax, rcx
	mov	dword ptr [rsp + 0x40], edx
	imul	rbp
	mov	rbp, rsi
	mov	rsi, rdx
	add	rsi, rcx
	mov	rax, rsi
	shr	rax, 0x3f
	sar	rsi, 6
	add	rsi, rax
	imul	rax, rsi, 0x64
	mov	rdx, rcx
	sub	rdx, rax
	mov	qword ptr [r13 + 0x40], rdx
	mov	rax, rsi
	movabs	rdx, 0xa3d70a3d70a3d70b
	imul	rdx
	add	rdx, rsi
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 6
	add	rdx, rax
	imul	rax, rdx, 0x64
	sub	rsi, rax
	mov	qword ptr [r13 + 0x38], rsi
	mov	rsi, rbp
	movabs	rdx, 0x346dc5d63886594b
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 0xb
	add	rdx, rax
	mov	qword ptr [r13 + 0x28], rdx
	mov	edx, dword ptr [rsp + 0x40]
	add	rdi, -4
.label_1020:
	mov	qword ptr [r13 + 0x30], rdi
	mov	rdi, qword ptr [rsp + 0x50]
	jmp	.label_914
.label_1623:
	mov	rax, qword ptr [r12 - 0x38]
.label_909:
	mov	qword ptr [rsp + 0xa0], rax
	xor	r11d, r11d
	jmp	.label_1075
.label_1622:
	xor	r11d, r11d
	mov	eax, 1
	mov	qword ptr [rsp + 0x90], rax
.label_1195:
	xor	eax, eax
	mov	qword ptr [rsp + 0x48], rax
	xor	esi, esi
	jmp	.label_1083
.label_1597:
	mov	qword ptr [r13 + 8], 0
	mov	eax, dword ptr [r12 - 0x38]
	mov	dword ptr [r13 + 0x10], eax
	jmp	.label_914
.label_1596:
	mov	qword ptr [r13 + 8], 0
	mov	eax, dword ptr [r12]
	mov	dword ptr [r13 + 0x10], eax
	jmp	.label_914
.label_1605:
	mov	rax, qword ptr [r12 - 0xa8]
	jmp	.label_1096
.label_1602:
	mov	rax, qword ptr [r12 - 0x68]
	mov	qword ptr [r13 + 0x40], rax
	mov	rax, qword ptr [r12 - 0x38]
	mov	qword ptr [r13 + 0x38], rax
	mov	rax, qword ptr [r12 + 8]
	mov	rcx, rax
	neg	rcx
	cmp	rax, r10
	mov	qword ptr [r13 + 0x28], rcx
	mov	ebp, 1
	je	.label_929
.label_1181:
	mov	rax, qword ptr [r12 + 0x10]
	mov	qword ptr [r13 + 0x30], rax
	jmp	.label_914
.label_1629:
	xor	r11d, r11d
	mov	eax, 1
	mov	qword ptr [rsp + 0x98], rax
.label_987:
	xor	eax, eax
	mov	qword ptr [rsp + 0x48], rax
	xor	esi, esi
	xor	eax, eax
	mov	qword ptr [rsp + 0x90], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0xa0], rax
	jmp	.label_1112
.label_1630:
	mov	rsi, qword ptr [r12]
	test	rsi, rsi
	jns	.label_1123
	mov	rbp, rsi
	lea	r11, [r12 - 0x30]
	mov	rsi, qword ptr [r12 - 0x30]
	test	rsi, rsi
	js	.label_1003
	mov	rcx, rbp
	cmp	rcx, -1
	jne	.label_1067
	mov	rsi, rcx
	jmp	.label_1028
.label_1618:
	mov	rsi, qword ptr [r12]
	test	rsi, rsi
	js	.label_1133
.label_1123:
	lea	r11, [r12 - 0x30]
.label_1037:
	test	rsi, rsi
	je	.label_1028
	mov	rbp, rsi
	mov	dword ptr [rsp + 0x40], edx
	mov	rsi, qword ptr [r11]
	test	rsi, rsi
	js	.label_1140
	lea	rax, [r10 - 1]
	xor	edx, edx
	mov	rcx, rbp
	div	rcx
	mov	ebp, 1
	cmp	rax, rsi
	jmp	.label_1148
.label_1625:
	xor	r11d, r11d
	mov	eax, 1
	mov	qword ptr [rsp + 0xa0], rax
.label_1075:
	xor	eax, eax
	mov	qword ptr [rsp + 0x48], rax
	xor	esi, esi
	xor	eax, eax
	mov	qword ptr [rsp + 0x90], rax
	jmp	.label_1154
.label_990:
	test	al, al
	je	.label_1161
	mov	qword ptr [rsp + 0x50], rdi
	xor	edi, edi
	mov	qword ptr [rsp + 0x68], rsi
	mov	esi, OFFSET FLAT:label_1162
	mov	dword ptr [rsp + 0x40], edx
	mov	edx, 5
	mov	qword ptr [rsp + 0x58], r8
	mov	qword ptr [rsp + 0x60], r9
	mov	rbp, r11
	call	dcgettext
	mov	rcx, rax
	mov	rsi, qword ptr [r12 - 0xd8]
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	mov	r11, rbp
	mov	rsi, qword ptr [rsp + 0x68]
	mov	edx, dword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	r9, qword ptr [rsp + 0x60]
	mov	r8, qword ptr [rsp + 0x58]
	movabs	r10, 0x8000000000000000
.label_1161:
	mov	rax, qword ptr [r12 - 0xd8]
.label_1096:
	mov	qword ptr [r13 + 0x38], rax
	mov	rax, qword ptr [r12 - 0x68]
	mov	qword ptr [r13 + 0x40], rax
.label_1165:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	qword ptr [rcx + 0x10], rax
	movdqu	xmm0, xmmword ptr [r12]
	movdqu	xmmword ptr [rcx], xmm0
	jmp	.label_914
.label_982:
	inc	qword ptr [r13 + 0xc8]
	xor	eax, eax
	cmp	rdi, 3
	pshufd	xmm0, xmm0, 0x4e
	movq	rcx, xmm0
	jl	.label_910
	movabs	rdx, 0xa3d70a3d70a3d70b
	mov	rax, rcx
	imul	rdx
	add	rdx, rcx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 6
	add	rdx, rax
	imul	rsi, rdx, 0x64
	mov	rax, rcx
	sub	rax, rsi
	mov	rcx, rdx
.label_910:
	mov	qword ptr [r13 + 0x48], rcx
	mov	qword ptr [r13 + 0x50], rax
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rsp + 0xc0]
	movdqu	xmmword ptr [rax], xmm0
	mov	dword ptr [r13 + 0x1c], 2
.label_1012:
	mov	rax, qword ptr [r12 + 0x30]
	mov	qword ptr [rsp + 0x30], rax
	movdqu	xmm0, xmmword ptr [r12]
	movups	xmm1, xmmword ptr [r12 + 0x10]
	movups	xmm2, xmmword ptr [r12 + 0x20]
	movups	xmmword ptr [rsp + 0x20], xmm2
	movups	xmmword ptr [rsp + 0x10], xmm1
	movdqu	xmmword ptr [rsp], xmm0
	mov	ebp, 1
	mov	esi, 1
	mov	rdi, r13
	call	apply_relative_time
	test	al, al
	movabs	r10, 0x8000000000000000
	mov	r8, qword ptr [rsp + 0x58]
	mov	r9, qword ptr [rsp + 0x60]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	edx, dword ptr [rsp + 0x40]
	mov	rsi, qword ptr [rsp + 0x68]
	mov	r11, qword ptr [rsp + 0xa8]
	jne	.label_914
	jmp	.label_929
.label_1008:
	inc	qword ptr [r13 + 0xc8]
	xor	eax, eax
	cmp	rdi, 3
	pshufd	xmm0, xmm0, 0x4e
	movq	rcx, xmm0
	jl	.label_984
	mov	edi, edx
	movabs	rdx, 0xa3d70a3d70a3d70b
	mov	rax, rcx
	imul	rdx
	add	rdx, rcx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 6
	add	rdx, rax
	mov	rbp, rsi
	imul	rsi, rdx, 0x64
	mov	rax, rcx
	sub	rax, rsi
	mov	rsi, rbp
	mov	rcx, rdx
	mov	edx, edi
.label_984:
	mov	rdi, qword ptr [rsp + 0x50]
	mov	qword ptr [r13 + 0x48], rcx
	mov	qword ptr [r13 + 0x50], rax
.label_1117:
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rsp + 0xc0]
	movdqu	xmmword ptr [rax], xmm0
	mov	dword ptr [r13 + 0x1c], 2
	jmp	.label_914
.label_1140:
	mov	rax, r10
	cqo	
	mov	rcx, rbp
	idiv	rcx
	mov	ebp, 1
	cmp	rsi, rax
.label_1148:
	mov	rsi, rcx
	mov	edx, dword ptr [rsp + 0x40]
	jge	.label_1028
	jmp	.label_929
.label_1034:
	mov	rbp, rsi
	lea	r11, [r12 - 0x38]
	mov	rsi, qword ptr [r12 - 0x38]
	test	rsi, rsi
	js	.label_1003
	mov	rcx, rbp
	cmp	rcx, -1
	jne	.label_1067
	mov	rsi, rcx
	jmp	.label_1028
.label_1137:
	movabs	rdx, 0xa3d70a3d70a3d70b
	mov	rax, rcx
	imul	rdx
	add	rdx, rcx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 6
	add	rdx, rax
	imul	rax, rdx, 0x3c
	imul	rdx, rdx, 0x64
	sub	rcx, rdx
	add	rcx, rax
	mov	al, 1
	jmp	.label_1050
.label_946:
	movabs	rdx, 0xa3d70a3d70a3d70b
	mov	rax, rcx
	imul	rdx
	add	rdx, rcx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 6
	add	rdx, rax
	imul	rax, rdx, 0x3c
	imul	rdx, rdx, 0x64
	sub	rcx, rdx
	add	rcx, rax
	mov	al, 1
	jmp	.label_1070
.label_1133:
	mov	rbp, rsi
	lea	r11, [r12 - 0x30]
	mov	rsi, qword ptr [r12 - 0x30]
	test	rsi, rsi
	js	.label_1003
	mov	rcx, rbp
	cmp	rcx, -1
	je	.label_1090
.label_1067:
	mov	rax, r10
	mov	ebp, edx
	cqo	
	idiv	rcx
	mov	edx, ebp
	mov	ebp, 1
	cmp	rax, rsi
	jmp	.label_1094
.label_1003:
	lea	rax, [r10 - 1]
	mov	dword ptr [rsp + 0x40], edx
	cqo	
	mov	rcx, rbp
	idiv	rcx
	mov	edx, dword ptr [rsp + 0x40]
	mov	ebp, 1
	cmp	rsi, rax
.label_1094:
	mov	rsi, rcx
	jl	.label_929
.label_1028:
	imul	rsi, qword ptr [r11]
.label_950:
	xor	r11d, r11d
	xor	eax, eax
	mov	qword ptr [rsp + 0x48], rax
.label_980:
	xor	eax, eax
	mov	qword ptr [rsp + 0x90], rax
.label_1083:
	xor	eax, eax
	mov	qword ptr [rsp + 0xa0], rax
.label_1154:
	xor	eax, eax
	mov	qword ptr [rsp + 0x98], rax
.label_1112:
	mov	dword ptr [rsp + 0x44], 0
.label_914:
	sub	r8, r14
	neg	r14
	imul	rax, r14, 0x38
	lea	rcx, [r12 + rax + 0x38]
	mov	qword ptr [r12 + rax + 0x38], r11
	mov	rbp, qword ptr [rsp + 0x48]
	mov	qword ptr [r12 + rax + 0x40], rbp
	mov	qword ptr [r12 + rax + 0x48], rsi
	mov	rsi, qword ptr [rsp + 0x90]
	mov	qword ptr [r12 + rax + 0x50], rsi
	mov	rsi, qword ptr [rsp + 0xa0]
	mov	qword ptr [r12 + rax + 0x58], rsi
	mov	rsi, qword ptr [rsp + 0x98]
	mov	qword ptr [r12 + rax + 0x60], rsi
	mov	esi, dword ptr [rsp + 0x44]
	mov	dword ptr [r12 + rax + 0x68], esi
	mov	dword ptr [r12 + rax + 0x6c], edx
	movzx	eax, byte ptr [rdi + yyr1]
	movsx	esi, byte ptr [rax + label_1113]
	movsx	edx, word ptr [rsp + r8*2 + 0xf0]
	add	esi, edx
	cmp	esi, 0x70
	ja	.label_1114
	movsxd	rsi, esi
	movsx	edi, byte ptr [rsi + yycheck]
	cmp	edi, edx
	jne	.label_1114
	movzx	eax, byte ptr [rsi + yytable]
	jmp	.label_1145
	.section	.text
	.align	16
	#Procedure 0x40bf43
	.globl sub_40bf43
	.type sub_40bf43, @function
sub_40bf43:

	nop	word ptr cs:[rax + rax]
.label_1114:
	movsx	eax, byte ptr [rax + label_1019]
.label_1145:
	mov	word ptr [rsp + r8*2 + 0xf2], ax
	inc	r8
	mov	ebp, 2
	cmp	r8, 0x12
	mov	r12, rcx
	jle	.label_1085
	jmp	.label_929
.label_1147:
	movabs	rsi, 0xfdddddddddddddde
	cmp	rcx, rsi
	jge	.label_978
.label_1001:
	mov	sil, 1
	jmp	.label_1167
.label_978:
	xor	esi, esi
.label_1167:
	imul	rcx, rcx, 0x3c
	test	dl, dl
	je	.label_1166
	mov	rdx, rax
	xor	rdx, r10
	cmp	rcx, rdx
	setl	dl
	sub	rcx, rax
	jmp	.label_1172
.label_1166:
	lea	rdx, [r10 - 1]
	sub	rdx, rax
	cmp	rdx, rcx
	setl	dl
	add	rcx, rax
.label_1172:
	or	dl, sil
	sete	al
	mov	rsi, rbp
.label_1050:
	mov	ebp, 1
	test	al, al
	je	.label_929
	lea	rax, [rcx + 0x5a0]
	cmp	rax, 0xb40
	ja	.label_929
	mov	qword ptr [rsp + 0x68], rsi
	movabs	rsi, 0x3c00000000
	imul	eax, ecx, 0x3c
	mov	dword ptr [r13 + 0x18], eax
	mov	rdx, qword ptr [r12 - 0x70]
	test	rdx, rdx
	js	.label_1194
	mov	qword ptr [rsp + 0x50], rdi
	lea	rdi, [r10 - 1]
	sub	rdi, rdx
	movabs	rsi, 0x3c00000000
	imul	rcx, rsi
	sar	rcx, 0x20
	cmp	rdi, rcx
	mov	rdi, qword ptr [rsp + 0x50]
	jge	.label_903
	jmp	.label_920
.label_1194:
	imul	rcx, rsi
	sar	rcx, 0x20
	mov	rsi, r10
	sub	rsi, rdx
	cmp	rcx, rsi
	jl	.label_920
.label_903:
	add	rcx, rdx
	sub	rcx, -0x80000000
	shr	rcx, 0x20
	jne	.label_920
	add	edx, eax
	mov	dword ptr [r13 + 0x18], edx
	mov	edx, dword ptr [rsp + 0x40]
	mov	rsi, qword ptr [rsp + 0x68]
	jmp	.label_914
.label_907:
	movabs	rsi, 0xfdddddddddddddde
	cmp	rcx, rsi
	jge	.label_941
.label_967:
	mov	sil, 1
	jmp	.label_1127
.label_941:
	xor	esi, esi
.label_1127:
	imul	rcx, rcx, 0x3c
	test	dl, dl
	je	.label_949
	mov	rdx, rax
	xor	rdx, r10
	cmp	rcx, rdx
	setl	dl
	sub	rcx, rax
	jmp	.label_953
.label_949:
	lea	rdx, [r10 - 1]
	sub	rdx, rax
	cmp	rdx, rcx
	setl	dl
	add	rcx, rax
.label_953:
	or	dl, sil
	sete	al
	mov	rsi, rbp
.label_1070:
	mov	ebp, 1
	test	al, al
	mov	edx, dword ptr [rsp + 0x40]
	je	.label_929
	lea	rax, [rcx + 0x5a0]
	cmp	rax, 0xb40
	ja	.label_929
	imul	eax, ecx, 0x3c
	mov	dword ptr [r13 + 0x18], eax
	jmp	.label_914
.label_976:
	cmp	rdi, 2
	jg	.label_981
	mov	rax, qword ptr [r13 + 0xc8]
	test	rax, rax
	jne	.label_981
	mov	qword ptr [r13 + 0xc8], 1
	pshufd	xmm0, xmm0, 0x4e
	movq	rcx, xmm0
	xor	eax, eax
	jmp	.label_910
.label_1002:
	cmp	rdi, 2
	jg	.label_993
	mov	rax, qword ptr [r13 + 0xc8]
	test	rax, rax
	jne	.label_993
	mov	qword ptr [r13 + 0xc8], 1
	pshufd	xmm0, xmm0, 0x4e
	movq	rcx, xmm0
	xor	eax, eax
	jmp	.label_984
.label_1090:
	mov	rsi, rcx
	jmp	.label_1028
.label_981:
	mov	byte ptr [r13 + 0xd8], 1
	movdqu	xmmword ptr [r13 + 0x20], xmm0
	mov	qword ptr [r13 + 0x30], rdi
	jmp	.label_1012
.label_993:
	mov	byte ptr [r13 + 0xd8], 1
	movdqu	xmmword ptr [r13 + 0x20], xmm0
	jmp	.label_1020
.label_1018:
	test	cl, cl
	je	.label_1025
.label_1125:
	shr	esi, 8
	cmp	cl, 0x2e
	sete	dil
	lea	rcx, [rsp + 0x71]
	lea	rdx, [rsp + 0x70]
	cmove	rcx, rdx
	mov	byte ptr [rcx], sil
	test	sil, sil
	je	.label_1027
	lea	rax, [rsp + 0x72]
.label_956:
	lea	rbx, [rcx + 1]
	movzx	edx, byte ptr [rax]
	cmp	byte ptr [rax - 1], 0x2e
	mov	sil, 1
	je	.label_1039
	mov	esi, edi
.label_1039:
	cmovne	rcx, rbx
	mov	byte ptr [rcx], dl
	inc	rax
	test	dl, dl
	mov	edi, esi
	jne	.label_956
	jmp	.label_1176
.label_1027:
	mov	esi, edi
.label_1176:
	test	sil, 1
	je	.label_1025
	mov	rdi, r13
	lea	rsi, [rsp + 0x70]
	call	lookup_zone
	test	rax, rax
	jne	.label_905
.label_1025:
	mov	ebx, 0x3f
	cmp	byte ptr [r13 + 0xd9], 0
	je	.label_1061
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1069
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	lea	rsi, [rsp + 0x70]
	call	dbg_printf
	jmp	.label_1061
	.section	.text
	.align	16
	#Procedure 0x40c219
	.globl sub_40c219
	.type sub_40c219, @function
sub_40c219:

	nop	dword ptr [rax]
.label_1085:
	cmp	eax, 0xc
	jne	.label_1084
	xor	ebp, ebp
.label_929:
	mov	eax, ebp
	add	rsp, 0x588
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_920:
	add	edx, eax
	mov	dword ptr [r13 + 0x18], edx
	jmp	.label_929
	.section	.text
	.align	16
	#Procedure 0x40c247
	.globl sub_40c247
	.type sub_40c247, @function
sub_40c247:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c250

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_1204
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_1204:
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
	#Procedure 0x40c2d3
	.globl sub_40c2d3
	.type sub_40c2d3, @function
sub_40c2d3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c2e0

	.globl posixtime
	.type posixtime, @function
posixtime:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x78
	mov	r13d, edx
	mov	rbx, rsi
	mov	qword ptr [rsp + 0x68], rdi
	mov	rdi, rbx
	call	strlen
	mov	rbp, rax
	xor	r12d, r12d
	test	r13b, 4
	je	.label_1206
	mov	esi, 0x2e
	mov	rdi, rbx
	call	strchr
	xor	r12d, r12d
	test	rax, rax
	je	.label_1206
	mov	rcx, rax
	sub	rcx, rbx
	sub	rbp, rcx
	cmp	rbp, 3
	mov	r12, rax
	mov	rbp, rcx
	jne	.label_1209
.label_1206:
	lea	rcx, [rbp - 8]
	mov	eax, ebp
	and	eax, 1
	cmp	rcx, 4
	ja	.label_1209
	test	rax, rax
	jne	.label_1209
	xor	r14d, r14d
	test	rbp, rbp
	je	.label_1208
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1205:
	movsx	ecx, byte ptr [rbx + rax]
	add	ecx, -0x30
	cmp	ecx, 0xa
	jae	.label_1209
	inc	rax
	cmp	rax, rbp
	jb	.label_1205
	xor	r14d, r14d
	shr	rbp, 1
	je	.label_1208
	mov	ecx, ebp
	and	ecx, 1
	xor	eax, eax
	cmp	rbp, 1
	je	.label_1221
	mov	rdx, rbp
	sub	rdx, rcx
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1214:
	movsx	esi, byte ptr [rbx + rax*2]
	lea	esi, [rsi + rsi*4]
	movsx	edi, byte ptr [rbx + rax*2 + 1]
	lea	esi, [rdi + rsi*2 - 0x210]
	mov	dword ptr [rsp + rax*4 + 0x10], esi
	movsx	esi, byte ptr [rbx + rax*2 + 2]
	lea	esi, [rsi + rsi*4]
	movsx	edi, byte ptr [rbx + rax*2 + 3]
	lea	esi, [rdi + rsi*2 - 0x210]
	mov	dword ptr [rsp + rax*4 + 0x14], esi
	add	rax, 2
	cmp	rdx, rax
	jne	.label_1214
.label_1221:
	test	rcx, rcx
	je	.label_1222
	movsx	ecx, byte ptr [rbx + rax*2]
	lea	ecx, [rcx + rcx*4]
	movsx	edx, byte ptr [rbx + rax*2 + 1]
	lea	ecx, [rdx + rcx*2 - 0x210]
	mov	dword ptr [rsp + rax*4 + 0x10], ecx
.label_1222:
	mov	r14, rbp
.label_1208:
	mov	r15d, r13d
	and	r15d, 1
	je	.label_1207
	lea	rax, [rsp + 0x10]
	jmp	.label_1210
.label_1207:
	movabs	rax, 0x7fffffffffffffff
	and	rax, r14
	cmp	rax, 4
	je	.label_1211
	cmp	rax, 6
	je	.label_1213
	cmp	rax, 5
	jne	.label_1215
	mov	r10d, dword ptr [rsp + 0x10]
	cmp	r10d, 0x44
	jg	.label_1216
	test	r13b, 8
	jne	.label_1209
	add	r10d, 0x64
	jmp	.label_1216
.label_1211:
	lea	rbp, [rsp + 0x50]
	mov	rdi, rbp
	call	time
	mov	rdi, rbp
	call	localtime
	test	rax, rax
	je	.label_1209
	mov	r10d, dword ptr [rax + 0x14]
	jmp	.label_1216
.label_1213:
	test	r13b, 2
	je	.label_1209
	mov	rax, qword ptr [rsp + 0x10]
	imul	ecx, eax, 0x64
	shr	rax, 0x20
	lea	r10d, [rax + rcx - 0x76c]
.label_1216:
	add	r14, -4
	lea	rax, [rsp + r14*4 + 0x10]
	mov	r14d, 4
.label_1210:
	mov	edi, dword ptr [rax]
	mov	r9d, dword ptr [rax + 4]
	mov	r8d, dword ptr [rax + 8]
	mov	esi, dword ptr [rax + 0xc]
	test	r15d, r15d
	je	.label_1212
	movabs	rcx, 0x7fffffffffffffff
	and	r14, rcx
	cmp	r14, 4
	je	.label_1217
	cmp	r14, 6
	je	.label_1223
	cmp	r14, 5
	jne	.label_1215
	mov	r10d, dword ptr [rax + 0x10]
	cmp	r10d, 0x44
	jg	.label_1212
	test	r13b, 8
	jne	.label_1209
	add	r10d, 0x64
	jmp	.label_1212
.label_1217:
	mov	dword ptr [rsp + 8], r9d
	mov	r15d, r8d
	mov	r14d, edi
	mov	ebp, esi
	lea	rdi, [rsp + 0x50]
	call	time
	lea	rdi, [rsp + 0x50]
	call	localtime
	test	rax, rax
	je	.label_1209
	mov	r10d, dword ptr [rax + 0x14]
	mov	esi, ebp
	mov	edi, r14d
	mov	r8d, r15d
	mov	r9d, dword ptr [rsp + 8]
	jmp	.label_1212
.label_1223:
	test	r13b, 2
	je	.label_1209
	imul	ecx, dword ptr [rax + 0x10], 0x64
	mov	eax, dword ptr [rax + 0x14]
	lea	r10d, [rax + rcx - 0x76c]
.label_1212:
	xor	eax, eax
	test	r12, r12
	je	.label_1219
	movsx	eax, byte ptr [r12 + 1]
	add	eax, -0x30
	cmp	eax, 9
	ja	.label_1209
	movsx	ecx, byte ptr [r12 + 2]
	lea	edx, [rcx - 0x30]
	cmp	edx, 9
	ja	.label_1209
	lea	eax, [rax + rax*4]
	lea	eax, [rcx + rax*2 - 0x30]
.label_1219:
	mov	dword ptr [rsp + 0xc], r13d
	dec	edi
	mov	dword ptr [rsp + 8], eax
	mov	dword ptr [rsp + 0x10], eax
	mov	dword ptr [rsp + 0x14], esi
	mov	dword ptr [rsp + 0x18], r8d
	mov	dword ptr [rsp + 0x1c], r9d
	mov	dword ptr [rsp + 0x20], edi
	mov	dword ptr [rsp + 0x24], r10d
	mov	dword ptr [rsp + 0x28], 0xffffffff
	mov	dword ptr [rsp + 0x30], 0xffffffff
	mov	r15d, edi
	lea	rdi, [rsp + 0x10]
	mov	ebp, esi
	mov	r12d, r8d
	mov	r14d, r9d
	mov	r13d, r10d
	call	mktime
	mov	rcx, rax
	cmp	dword ptr [rsp + 0x28], 0
	js	.label_1209
	xor	r13d, dword ptr [rsp + 0x24]
	xor	r15d, dword ptr [rsp + 0x20]
	xor	r14d, dword ptr [rsp + 0x1c]
	or	r14d, r13d
	xor	r12d, dword ptr [rsp + 0x18]
	or	r12d, r14d
	xor	ebp, dword ptr [rsp + 0x14]
	or	ebp, r12d
	or	ebp, r15d
	mov	eax, dword ptr [rsp + 0x10]
	mov	edx, dword ptr [rsp + 8]
	xor	eax, edx
	or	eax, ebp
	je	.label_1220
	cmp	edx, 0x3c
	jne	.label_1209
	lea	rbp, [rsp + 0x50]
	mov	edx, 0x10
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rbx, rcx
	call	__stpcpy_chk
	mov	byte ptr [rax], 0
	mov	word ptr [rax - 2], 0x3935
	lea	rdi, [rsp + 0x70]
	mov	rsi, rbp
	mov	edx, dword ptr [rsp + 0xc]
	call	posixtime
	mov	rcx, rbx
	test	al, al
	je	.label_1209
.label_1220:
	mov	rax, qword ptr [rsp + 0x68]
	mov	qword ptr [rax], rcx
	mov	al, 1
	jmp	.label_1218
.label_1209:
	xor	eax, eax
.label_1218:
	add	rsp, 0x78
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1215:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40c66e
	.globl sub_40c66e
	.type sub_40c66e, @function
sub_40c66e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40c670

	.globl parse_datetime2
	.type parse_datetime2, @function
parse_datetime2:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x408
	mov	qword ptr [rsp + 0x60], r9
	mov	r13, r8
	mov	r14d, ecx
	mov	r15, rdx
	mov	r12, rsi
	mov	qword ptr [rsp + 0x68], rdi
	mov	rdi, r12
	call	strlen
	mov	qword ptr [rsp + 0x58], rax
	test	r15, r15
	jne	.label_1415
	lea	r15, [rsp + 0x390]
	mov	rdi, r15
	call	gettime
.label_1415:
	mov	rax, qword ptr [r15]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [r15 + 8]
	mov	qword ptr [rsp + 8], rax
	movzx	eax, byte ptr [r12]
	add	eax, -9
	cmp	eax, 0x17
	mov	rbp, r12
	ja	.label_1418
	mov	ecx, 0x80001f
	mov	rbp, r12
	nop	word ptr cs:[rax + rax]
.label_1432:
	bt	ecx, eax
	jae	.label_1418
	movzx	eax, byte ptr [rbp + 1]
	inc	rbp
	add	eax, -9
	cmp	eax, 0x18
	jb	.label_1432
.label_1418:
	mov	esi, OFFSET FLAT:label_1435
	mov	edx, 4
	mov	rdi, rbp
	call	strncmp
	test	eax, eax
	jne	.label_1437
	lea	rbx, [rbp + 4]
	mov	edi, 1
	mov	rax, rbx
	jmp	.label_1438
	.section	.text
	.align	16
	#Procedure 0x40c728
	.globl sub_40c728
	.type sub_40c728, @function
sub_40c728:

	nop	dword ptr [rax + rax]
.label_1446:
	inc	rax
	inc	rdi
.label_1438:
	movzx	ecx, byte ptr [rax]
	cmp	cl, 0x5c
	je	.label_1442
	test	cl, cl
	je	.label_1437
	cmp	cl, 0x22
	jne	.label_1446
	jmp	.label_1448
	.section	.text
	.align	16
	#Procedure 0x40c74c
	.globl sub_40c74c
	.type sub_40c74c, @function
sub_40c74c:

	nop	dword ptr [rax]
.label_1442:
	movzx	ecx, byte ptr [rax + 1]
	inc	rax
	cmp	cl, 0x22
	je	.label_1446
	cmp	cl, 0x5c
	je	.label_1446
.label_1437:
	xor	eax, eax
	mov	qword ptr [rsp + 0x78], rax
	mov	rbx, r13
.label_1296:
	lea	rdx, [rsp + 0x358]
	mov	rdi, rbx
	mov	rsi, r15
	call	localtime_rz
	test	rax, rax
	je	.label_1461
	movabs	r15, 0x7fffffffffffffff
	cmp	byte ptr [rbp], 0
	mov	eax, OFFSET FLAT:label_1463
	cmovne	rax, rbp
	mov	qword ptr [rsp + 0xb8], rax
	and	r14b, 1
	mov	byte ptr [rsp + 0x191], r14b
	movsxd	rax, dword ptr [rsp + 0x36c]
	add	rax, 0x76c
	mov	qword ptr [rsp + 0xe0], rax
	mov	qword ptr [rsp + 0xe8], 0
	movsxd	rax, dword ptr [rsp + 0x368]
	inc	rax
	mov	qword ptr [rsp + 0xf0], rax
	movsxd	rax, dword ptr [rsp + 0x364]
	mov	qword ptr [rsp + 0xf8], rax
	movsxd	rax, dword ptr [rsp + 0x360]
	mov	qword ptr [rsp + 0x100], rax
	movsxd	rax, dword ptr [rsp + 0x35c]
	mov	qword ptr [rsp + 0x108], rax
	movsxd	rax, dword ptr [rsp + 0x358]
	mov	qword ptr [rsp + 0x110], rax
	mov	rax, qword ptr [rsp + 8]
	cdqe	
	mov	qword ptr [rsp + 0x118], rax
	mov	eax, dword ptr [rsp + 0x378]
	mov	dword ptr [rsp + 0x40], eax
	mov	dword ptr [rsp + 0xd4], 2
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsp + 0x14a], xmm0
	movups	xmmword ptr [rsp + 0x140], xmm0
	movups	xmmword ptr [rsp + 0x130], xmm0
	movups	xmmword ptr [rsp + 0x120], xmm0
	movups	xmmword ptr [rsp + 0x180], xmm0
	movups	xmmword ptr [rsp + 0x170], xmm0
	movups	xmmword ptr [rsp + 0x160], xmm0
	mov	byte ptr [rsp + 0x190], 0
	mov	byte ptr [rsp + 0x198], 0
	mov	word ptr [rsp + 0x196], 0
	mov	dword ptr [rsp + 0x192], 0
	mov	rcx, qword ptr [rsp + 0x388]
	mov	qword ptr [rsp + 0x1a0], rcx
	mov	dword ptr [rsp + 0x1a8], 0x10d
	mov	dword ptr [rsp + 0x1ac], eax
	mov	qword ptr [rsp + 0x1b0], 0
	lea	rax, [r15 - 0x76a700]
	mov	rbp, qword ptr [rsp]
	cmp	rbp, rax
	jg	.label_1345
	lea	rax, [rbp + 0x76a700]
	mov	qword ptr [rsp + 0x220], rax
	lea	rsi, [rsp + 0x220]
	lea	rdx, [rsp + 0x290]
	mov	rdi, rbx
	call	localtime_rz
	test	rax, rax
	je	.label_1307
	mov	rax, qword ptr [rsp + 0x2c0]
	test	rax, rax
	je	.label_1307
	mov	ecx, dword ptr [rsp + 0x2b0]
	cmp	ecx, dword ptr [rsp + 0x1ac]
	jne	.label_1306
.label_1307:
	lea	rax, [r15 - 0xed4e00]
	cmp	rbp, rax
	jg	.label_1345
	lea	rax, [rbp + 0xed4e00]
	mov	qword ptr [rsp + 0x220], rax
	lea	rsi, [rsp + 0x220]
	lea	rdx, [rsp + 0x290]
	mov	rdi, rbx
	call	localtime_rz
	test	rax, rax
	je	.label_1334
	mov	rax, qword ptr [rsp + 0x2c0]
	test	rax, rax
	je	.label_1334
	mov	ecx, dword ptr [rsp + 0x2b0]
	cmp	ecx, dword ptr [rsp + 0x1ac]
	jne	.label_1306
.label_1334:
	lea	rax, [r15 - 0x163f500]
	cmp	rbp, rax
	jg	.label_1345
	add	rbp, 0x163f500
	mov	qword ptr [rsp + 0x220], rbp
	lea	rsi, [rsp + 0x220]
	lea	rdx, [rsp + 0x290]
	mov	rdi, rbx
	call	localtime_rz
	test	rax, rax
	je	.label_1345
	mov	rax, qword ptr [rsp + 0x2c0]
	test	rax, rax
	je	.label_1345
	mov	ecx, dword ptr [rsp + 0x2b0]
	cmp	ecx, dword ptr [rsp + 0x1ac]
	je	.label_1345
.label_1306:
	mov	qword ptr [rsp + 0x1b0], rax
	mov	dword ptr [rsp + 0x1b8], 0x10d
	mov	dword ptr [rsp + 0x1bc], ecx
	mov	qword ptr [rsp + 0x1c0], 0
.label_1345:
	mov	rdi, qword ptr [rsp + 0x1a0]
	test	rdi, rdi
	je	.label_1374
	mov	rsi, qword ptr [rsp + 0x1b0]
	test	rsi, rsi
	je	.label_1374
	call	strcmp
	test	eax, eax
	jne	.label_1374
	mov	dword ptr [rsp + 0x1ac], 0xffffffff
	mov	qword ptr [rsp + 0x1b0], 0
.label_1374:
	lea	rdi, [rsp + 0xb8]
	call	yyparse
	test	eax, eax
	mov	al, byte ptr [rsp + 0x191]
	je	.label_1390
	test	al, al
	je	.label_1395
	add	r12, qword ptr [rsp + 0x58]
	cmp	r12, qword ptr [rsp + 0xb8]
	jbe	.label_1400
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1404
	jmp	.label_1405
.label_1461:
	xor	ebp, ebp
	jmp	.label_1237
.label_1390:
	test	al, al
	mov	r12, qword ptr [rsp + 0x68]
	jne	.label_1408
.label_1267:
	cmp	byte ptr [rsp + 0x158], 0
	je	.label_1413
	lea	rax, [rsp + 0x110]
	movups	xmm0, xmmword ptr [rax]
	movups	xmmword ptr [r12], xmm0
.label_1377:
	mov	rdi, qword ptr [rsp + 0x60]
	mov	bpl, 1
	cmp	byte ptr [rsp + 0x191], 0
	je	.label_1237
	test	rdi, rdi
	je	.label_1421
	mov	esi, OFFSET FLAT:label_1422
	mov	r14, rdi
	call	strcmp
	mov	r15, rbx
	xor	edi, edi
	test	eax, eax
	je	.label_1427
	mov	esi, OFFSET FLAT:label_1430
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	mov	rsi, r14
	call	dbg_printf
	jmp	.label_1402
.label_1395:
	xor	ebp, ebp
	jmp	.label_1237
.label_1448:
	xor	eax, eax
	cmp	rdi, 0x65
	jl	.label_1439
	call	malloc
	mov	rsi, rax
	xor	ebp, ebp
	test	rsi, rsi
	mov	edi, 0
	jne	.label_1440
	jmp	.label_1444
.label_1400:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1445
.label_1405:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rsi, qword ptr [rsp + 0xb8]
	xor	ebp, ebp
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
.label_1237:
	cmp	rbx, r13
	je	.label_1271
	mov	rdi, rbx
	call	tzfree
.label_1271:
	mov	rdi, qword ptr [rsp + 0x78]
.label_1444:
	call	free
	mov	eax, ebp
	add	rsp, 0x408
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1413:
	mov	rax, qword ptr [rsp + 0x160]
	mov	rcx, qword ptr [rsp + 0x180]
	mov	rdx, rax
	or	rdx, rcx
	or	rdx, qword ptr [rsp + 0x168]
	or	rdx, qword ptr [rsp + 0x178]
	mov	rsi, qword ptr [rsp + 0x188]
	add	rsi, qword ptr [rsp + 0x170]
	or	rsi, rdx
	mov	r14b, byte ptr [rsp + 0x191]
	cmp	rsi, 2
	jl	.label_1354
	test	r14b, r14b
	je	.label_1484
	cmp	rcx, 2
	jl	.label_1489
	mov	edi, OFFSET FLAT:label_1491
	xor	eax, eax
	call	dbg_printf
	mov	rax, qword ptr [rsp + 0x160]
.label_1489:
	cmp	rax, 2
	jl	.label_1225
	mov	edi, OFFSET FLAT:label_1228
	xor	eax, eax
	call	dbg_printf
.label_1225:
	cmp	qword ptr [rsp + 0x168], 2
	jl	.label_1232
	mov	edi, OFFSET FLAT:label_1234
	xor	eax, eax
	call	dbg_printf
.label_1232:
	cmp	qword ptr [rsp + 0x178], 2
	jl	.label_1457
	mov	edi, OFFSET FLAT:label_1244
	xor	eax, eax
	call	dbg_printf
.label_1457:
	mov	rax, qword ptr [rsp + 0x188]
	add	rax, qword ptr [rsp + 0x170]
	xor	ebp, ebp
	cmp	rax, 2
	jl	.label_1237
	mov	edi, OFFSET FLAT:label_1251
	xor	eax, eax
	call	dbg_printf
	jmp	.label_1237
.label_1439:
	lea	rsi, [rsp + 0x3a0]
.label_1440:
	mov	qword ptr [rsp + 0x78], rax
	mov	qword ptr [rsp + 0x10], r13
	mov	cl, byte ptr [rbx]
	mov	rax, rsi
	cmp	cl, 0x22
	jne	.label_1255
	mov	r13, rbx
	jmp	.label_1261
.label_1255:
	xor	edx, edx
	cmp	cl, 0x5c
	sete	dl
	movzx	ecx, byte ptr [rbx + rdx]
	mov	byte ptr [rax], cl
	inc	rax
	lea	r13, [rbx + rdx + 1]
	movzx	ecx, byte ptr [rbx + rdx + 1]
	cmp	cl, 0x22
	mov	rbx, r13
	jne	.label_1255
.label_1261:
	mov	byte ptr [rax], 0
	mov	qword ptr [rsp + 0x60], rsi
	mov	rdi, rsi
	call	tzalloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_1278
	inc	r13
	mov	eax, 0x80001f
	nop	word ptr [rax + rax]
.label_1292:
	mov	rbp, r13
	movzx	ecx, byte ptr [rbp]
	add	ecx, -9
	cmp	ecx, 0x17
	ja	.label_1287
	lea	r13, [rbp + 1]
	bt	eax, ecx
	jb	.label_1292
.label_1287:
	mov	r13, qword ptr [rsp + 0x10]
	jmp	.label_1296
.label_1354:
	mov	qword ptr [rsp], rbx
	mov	rbx, qword ptr [rsp + 0xe0]
	test	rbx, rbx
	js	.label_1299
	cmp	qword ptr [rsp + 0xe8], 2
	jne	.label_1304
	cmp	rbx, 0x45
	mov	eax, 0x7d0
	mov	ebp, 0x76c
	cmovl	rbp, rax
	add	rbp, rbx
	test	r14b, r14b
	je	.label_1426
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1318
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	mov	rsi, rbx
	mov	rdx, rbp
	call	dbg_printf
.label_1426:
	test	rbp, rbp
	jns	.label_1328
	jmp	.label_1331
.label_1278:
	xor	ebp, ebp
	jmp	.label_1271
.label_1421:
	mov	r15, rbx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1335
	jmp	.label_1336
.label_1427:
	mov	esi, OFFSET FLAT:label_1341
.label_1336:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
.label_1402:
	mov	r14, qword ptr [r12]
	mov	ebx, dword ptr [r12 + 8]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1356
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	mov	rsi, r14
	mov	edx, ebx
	call	dbg_printf
	lea	rsi, [rsp + 0x290]
	mov	rdi, r12
	call	gmtime_r
	test	rax, rax
	je	.label_1359
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1361
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	r14, [rsp + 0x220]
	lea	rcx, [rsp + 0x290]
	mov	esi, 0x64
	mov	edx, OFFSET FLAT:label_1264
	xor	r8d, r8d
	xor	r9d, r9d
	mov	rdi, r14
	call	nstrftime
	xor	eax, eax
	mov	rdi, rbx
	mov	rsi, r14
	call	dbg_printf
.label_1359:
	lea	rdx, [rsp + 0x80]
	mov	rbx, r15
	mov	rdi, rbx
	mov	rsi, r12
	call	localtime_rz
	test	rax, rax
	je	.label_1237
	mov	r12, rbx
	movsxd	r15, dword ptr [rsp + 0xa8]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1386
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	lea	rdi, [rsp + 0x220]
	lea	rcx, [rsp + 0x80]
	mov	esi, 0x64
	mov	edx, OFFSET FLAT:label_1264
	xor	r8d, r8d
	xor	r9d, r9d
	call	nstrftime
	mov	eax, r15d
	shr	eax, 0x1f
	imul	rbx, r15, -0x6e5d4c3b
	shr	rbx, 0x20
	add	ebx, r15d
	mov	ecx, ebx
	shr	ecx, 0x1f
	sar	ebx, 0xb
	add	ebx, ecx
	mov	r9d, ebx
	neg	r9d
	cmp	r15, -0xe10
	lea	r8d, [rax + rax + 0x2b]
	cmovg	r9d, ebx
	lea	rdi, [rsp + 0x330]
	mov	esi, 1
	mov	edx, 0x1b
	mov	ecx, OFFSET FLAT:label_87
	xor	eax, eax
	call	__sprintf_chk
	imul	edx, ebx, 0xe10
	mov	esi, r15d
	sub	esi, edx
	mov	ecx, esi
	neg	ecx
	cmovl	ecx, esi
	cmp	r15d, edx
	je	.label_1425
	cdqe	
	lea	rax, [rsp + rax + 0x330]
	movsxd	r9, ecx
	imul	rdx, r9, -0x77777777
	shr	rdx, 0x20
	add	edx, r9d
	mov	esi, edx
	shr	esi, 0x1f
	sar	edx, 5
	add	edx, esi
	imul	r8d, edx, 0x3c
	imul	rdi, r9, 0x1b4e81b5
	mov	rbx, rdi
	shr	rbx, 0x3f
	shr	rdi, 0x26
	movsxd	rdx, edx
	imul	rsi, rdx, 0x66666667
	mov	rcx, rsi
	shr	rcx, 0x3f
	sar	rsi, 0x22
	add	esi, ecx
	add	esi, esi
	lea	ecx, [rsi + rsi*4]
	sub	edx, ecx
	add	edx, 0x30
	sub	r9d, r8d
	mov	byte ptr [rax], 0x3a
	lea	ecx, [rdi + rbx + 0x30]
	mov	byte ptr [rax + 1], cl
	mov	byte ptr [rax + 2], dl
	je	.label_1433
	mov	byte ptr [rax + 3], 0x3a
	movsxd	rcx, r9d
	imul	rcx, rcx, 0x66666667
	mov	rdx, rcx
	shr	rdx, 0x3f
	sar	rcx, 0x22
	lea	esi, [rcx + rdx]
	lea	ecx, [rcx + rdx + 0x30]
	mov	byte ptr [rax + 4], cl
	add	esi, esi
	lea	ecx, [rsi + rsi*4]
	neg	ecx
	lea	ecx, [r9 + rcx + 0x30]
	mov	byte ptr [rax + 5], cl
	add	rax, 6
	jmp	.label_1262
.label_1484:
	xor	ebp, ebp
	jmp	.label_1237
.label_1299:
	mov	rbp, rbx
.label_1331:
	lea	rdx, [rbp + r15]
	mov	ecx, 0x7ffff894
	mov	eax, 0xfffff894
	sub	eax, ebp
	cmp	rdx, -0x76c
	mov	rbx, qword ptr [rsp]
	jl	.label_1471
	sub	rcx, rbp
	shr	rcx, 0x20
	je	.label_1246
	jmp	.label_1471
.label_1408:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1487
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	cmp	byte ptr [rsp + 0x158], 0
	jne	.label_1224
	cmp	qword ptr [rsp + 0x188], 0
	jne	.label_1249
	mov	rax, qword ptr [rsp + 0x60]
	test	rax, rax
	jne	.label_1233
	mov	rbp, rbx
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1238
	jmp	.label_1239
.label_1304:
	mov	rbp, rbx
.label_1328:
	lea	rcx, [rbp + 0x7ffff894]
	lea	eax, [rbp - 0x76c]
	shr	rcx, 0x20
	mov	rbx, qword ptr [rsp]
	je	.label_1246
.label_1471:
	mov	dword ptr [rsp + 0x34], eax
	test	r14b, r14b
	je	.label_1250
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1394
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	mov	rsi, rbp
	call	dbg_printf
	jmp	.label_1250
.label_1246:
	mov	dword ptr [rsp + 0x34], eax
	mov	rax, qword ptr [rsp + 0xf0]
	lea	ecx, [rax - 1]
	cmp	rax, -0x7fffffff
	mov	dword ptr [rsp + 0x30], ecx
	jl	.label_1250
	dec	rax
	cmp	rax, 0x7fffffff
	jg	.label_1250
	mov	rax, qword ptr [rsp + 0xf8]
	mov	dword ptr [rsp + 0x2c], eax
	sub	rax, -0x80000000
	shr	rax, 0x20
	je	.label_1272
.label_1250:
	cmp	byte ptr [rsp + 0x191], 0
	je	.label_1279
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1282
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	jmp	.label_1237
.label_1279:
	xor	ebp, ebp
	jmp	.label_1237
.label_1433:
	add	rax, 3
.label_1262:
	mov	byte ptr [rax], 0
.label_1425:
	lea	rsi, [rsp + 0x220]
	lea	rdx, [rsp + 0x330]
	xor	eax, eax
	mov	rdi, r14
	call	dbg_printf
	mov	rbx, r12
	jmp	.label_1237
.label_1224:
	mov	rbp, rbx
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1310
	jmp	.label_1239
.label_1272:
	mov	rax, qword ptr [rsp + 0x180]
	test	rax, rax
	jne	.label_1459
	cmp	byte ptr [rsp + 0x159], 0
	je	.label_1319
	mov	rcx, qword ptr [rsp + 0x168]
	or	rcx, qword ptr [rsp + 0x160]
	jne	.label_1319
.label_1459:
	mov	rdx, qword ptr [rsp + 0x100]
	mov	ecx, dword ptr [rsp + 0xd4]
	test	ecx, ecx
	je	.label_1260
	cmp	ecx, 1
	jne	.label_1339
	lea	rdi, [rdx - 1]
	lea	rbp, [rdx + 0xc]
	cmp	rdx, 0xc
	mov	rsi, -1
	cmove	rsi, rdx
	cmp	rdi, 0xb
	cmovb	rsi, rbp
	jmp	.label_1342
.label_1249:
	mov	rbp, rbx
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1352
.label_1239:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	mov	rdx, rcx
	call	__fprintf_chk
.label_1305:
	mov	rax, qword ptr [rsp + 0x188]
	cmp	qword ptr [rsp + 0x170], 0
	je	.label_1360
	test	rax, rax
	mov	rbx, rbp
	jne	.label_1301
	cmp	dword ptr [rsp + 0xcc], 0
	jle	.label_1367
	mov	rdi, qword ptr [rip + stderr]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_1372
	xor	eax, eax
	call	__fprintf_chk
	mov	rax, qword ptr [rsp + 0x188]
	jmp	.label_1301
.label_1360:
	mov	rbx, rbp
.label_1301:
	test	rax, rax
	je	.label_1367
	mov	r12, rbx
	mov	r14, qword ptr [rip + stderr]
	movsxd	rbx, dword ptr [rsp + 0xd0]
	mov	eax, ebx
	shr	eax, 0x1f
	imul	rbp, rbx, -0x6e5d4c3b
	shr	rbp, 0x20
	add	ebp, ebx
	mov	ecx, ebp
	shr	ecx, 0x1f
	sar	ebp, 0xb
	add	ebp, ecx
	mov	r9d, ebp
	neg	r9d
	cmp	rbx, -0xe10
	lea	r8d, [rax + rax + 0x2b]
	cmovg	r9d, ebp
	lea	rdi, [rsp + 0x330]
	mov	esi, 1
	mov	edx, 0x1b
	mov	ecx, OFFSET FLAT:label_87
	xor	eax, eax
	call	__sprintf_chk
	imul	edx, ebp, 0xe10
	mov	esi, ebx
	sub	esi, edx
	mov	ecx, esi
	neg	ecx
	cmovl	ecx, esi
	cmp	ebx, edx
	je	.label_1411
	cdqe	
	lea	rax, [rsp + rax + 0x330]
	movsxd	rcx, ecx
	imul	rdx, rcx, -0x77777777
	shr	rdx, 0x20
	add	edx, ecx
	mov	esi, edx
	shr	esi, 0x1f
	sar	edx, 5
	add	edx, esi
	imul	r8d, edx, 0x3c
	imul	rdi, rcx, 0x1b4e81b5
	mov	rbp, rdi
	shr	rbp, 0x3f
	shr	rdi, 0x26
	movsxd	rdx, edx
	imul	rbx, rdx, 0x66666667
	mov	rsi, rbx
	shr	rsi, 0x3f
	sar	rbx, 0x22
	add	ebx, esi
	add	ebx, ebx
	lea	esi, [rbx + rbx*4]
	sub	edx, esi
	add	edx, 0x30
	sub	ecx, r8d
	mov	byte ptr [rax], 0x3a
	lea	esi, [rdi + rbp + 0x30]
	mov	byte ptr [rax + 1], sil
	mov	byte ptr [rax + 2], dl
	jne	.label_1417
	add	rax, 3
	jmp	.label_1284
.label_1233:
	mov	rbp, rbx
	cmp	rbx, r13
	jne	.label_1441
	mov	esi, OFFSET FLAT:label_1422
	mov	rdi, rax
	mov	r14, rax
	call	strcmp
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	test	eax, eax
	jne	.label_1473
	mov	esi, OFFSET FLAT:label_1453
	jmp	.label_1239
.label_1260:
	lea	rdi, [rdx - 1]
	xor	ebp, ebp
	cmp	rdx, 0xc
	mov	rsi, -1
	cmove	rsi, rbp
	cmp	rdi, 0xb
	jmp	.label_1456
.label_1339:
	cmp	rdx, 0x18
	mov	rsi, -1
.label_1456:
	cmovb	rsi, rdx
.label_1342:
	mov	dword ptr [rsp + 0x28], esi
	test	esi, esi
	js	.label_1465
	mov	ecx, dword ptr [rsp + 0x108]
	mov	dword ptr [rsp + 0x24], ecx
	mov	ecx, dword ptr [rsp + 0x110]
	mov	dword ptr [rsp + 0x20], ecx
	cmp	byte ptr [rsp + 0x191], 0
	je	.label_1269
	mov	r12, r13
	xor	edi, edi
	test	rax, rax
	je	.label_1474
	mov	esi, OFFSET FLAT:label_1478
	jmp	.label_1479
.label_1465:
	cmp	byte ptr [rsp + 0x191], 0
	je	.label_1483
	cmp	ecx, 1
	mov	eax, OFFSET FLAT:label_81
	mov	edx, OFFSET FLAT:label_20
	cmove	rdx, rax
	test	ecx, ecx
	mov	ebx, OFFSET FLAT:label_1485
	cmovne	rbx, rdx
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1486
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rsi, qword ptr [rsp + 0x100]
	xor	eax, eax
	mov	rdi, rcx
	mov	rdx, rbx
	mov	rbx, qword ptr [rsp]
	call	dbg_printf
	jmp	.label_1237
.label_1417:
	mov	byte ptr [rax + 3], 0x3a
	movsxd	rdx, ecx
	imul	rdx, rdx, 0x66666667
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x22
	lea	edi, [rdx + rsi]
	lea	edx, [rdx + rsi + 0x30]
	mov	byte ptr [rax + 4], dl
	add	edi, edi
	lea	edx, [rdi + rdi*4]
	neg	edx
	lea	ecx, [rcx + rdx + 0x30]
	mov	byte ptr [rax + 5], cl
	add	rax, 6
.label_1284:
	mov	byte ptr [rax], 0
.label_1411:
	lea	rcx, [rsp + 0x330]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_1254
	xor	eax, eax
	mov	rdi, r14
	call	__fprintf_chk
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x68]
.label_1367:
	mov	rsi, qword ptr [rip + stderr]
	mov	edi, 0xa
	call	fputc
	jmp	.label_1267
.label_1319:
	mov	dword ptr [rsp + 0x20], 0
	mov	dword ptr [rsp + 0x24], 0
	mov	dword ptr [rsp + 0x28], 0
	mov	qword ptr [rsp + 0x118], 0
	cmp	byte ptr [rsp + 0x191], 0
	je	.label_1269
	mov	edi, OFFSET FLAT:label_1283
	xor	eax, eax
	call	dbg_printf
	jmp	.label_1269
.label_1441:
	mov	r14, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1290
	mov	edx, 5
	mov	rbx, rax
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, rcx
	mov	rcx, rbx
	call	__fprintf_chk
	jmp	.label_1305
.label_1474:
	mov	esi, OFFSET FLAT:label_1416
.label_1479:
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rbp, rbx
	shr	rbp, 0x20
	mov	r9d, dword ptr [rsp + 0x28]
	lea	r13, [rsp + 0x220]
	mov	esi, 0x64
	mov	edx, 1
	mov	ecx, 0x64
	mov	r8d, OFFSET FLAT:label_1311
	mov	eax, 0
	mov	rdi, r13
	push	rbx
	push	rbp
	call	__snprintf_chk
	add	rsp, 0x10
	xor	eax, eax
	mov	rdi, r14
	mov	rsi, r13
	call	dbg_printf
	mov	r13, r12
	mov	rbx, qword ptr [rsp]
.label_1269:
	mov	rax, qword ptr [rsp + 0x168]
	or	rax, qword ptr [rsp + 0x160]
	or	rax, qword ptr [rsp + 0x180]
	je	.label_1340
	mov	dword ptr [rsp + 0x40], 0xffffffff
.label_1340:
	cmp	qword ptr [rsp + 0x170], 0
	je	.label_1349
	mov	eax, dword ptr [rsp + 0xcc]
	mov	dword ptr [rsp + 0x40], eax
	jmp	.label_1353
.label_1349:
	mov	eax, dword ptr [rsp + 0x40]
.label_1353:
	mov	rcx, qword ptr [rsp + 0x20]
	mov	dword ptr [rsp + 0x1e8], ecx
	shr	rcx, 0x20
	mov	dword ptr [rsp + 0x1ec], ecx
	mov	rcx, qword ptr [rsp + 0x28]
	mov	dword ptr [rsp + 0x1f0], ecx
	shr	rcx, 0x20
	mov	dword ptr [rsp + 0x1f4], ecx
	mov	rcx, qword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x1f8], ecx
	shr	rcx, 0x20
	mov	dword ptr [rsp + 0x1fc], ecx
	mov	dword ptr [rsp + 0x208], eax
	mov	dword ptr [rsp + 0x38], 0xffffffff
	lea	rsi, [rsp + 0x20]
	mov	rdi, rbx
	call	mktime_z
	mov	r12, rax
	cmp	dword ptr [rsp + 0x38], 0
	js	.label_1378
	mov	rax, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rsp + 0x28]
	xor	rax, qword ptr [rsp + 0x1e8]
	xor	rcx, qword ptr [rsp + 0x1f0]
	mov	edx, ecx
	or	edx, eax
	shr	rax, 0x20
	or	edx, eax
	shr	rcx, 0x20
	mov	rax, qword ptr [rsp + 0x30]
	xor	rax, qword ptr [rsp + 0x1f8]
	mov	esi, eax
	or	esi, ecx
	or	esi, edx
	shr	rax, 0x20
	or	eax, esi
	je	.label_1381
.label_1378:
	mov	rax, qword ptr [rsp + 0x188]
	mov	qword ptr [rsp + 0x58], rax
	test	rax, rax
	je	.label_1403
	mov	byte ptr [rsp + 0x292], 0x58
	mov	word ptr [rsp + 0x290], 0x5858
	movsxd	rbx, dword ptr [rsp + 0xd0]
	mov	eax, ebx
	shr	eax, 0x1f
	imul	rbp, rbx, -0x6e5d4c3b
	shr	rbp, 0x20
	add	ebp, ebx
	mov	ecx, ebp
	shr	ecx, 0x1f
	sar	ebp, 0xb
	add	ebp, ecx
	mov	r9d, ebp
	neg	r9d
	cmp	rbx, -0xe10
	lea	rdi, [rsp + 0x293]
	lea	r8d, [rax + rax + 0x2b]
	cmovg	r9d, ebp
	mov	esi, 1
	mov	edx, 0x1b
	mov	ecx, OFFSET FLAT:label_87
	xor	eax, eax
	call	__sprintf_chk
	imul	ecx, ebp, 0xe10
	mov	esi, ebx
	sub	esi, ecx
	mov	edx, esi
	neg	edx
	cmovl	edx, esi
	cmp	ebx, ecx
	je	.label_1431
	cdqe	
	lea	rcx, [rsp + rax + 0x293]
	movsxd	rax, edx
	imul	rdx, rax, -0x77777777
	shr	rdx, 0x20
	add	edx, eax
	mov	esi, edx
	shr	esi, 0x1f
	sar	edx, 5
	add	edx, esi
	imul	r8d, edx, 0x3c
	imul	rdi, rax, 0x1b4e81b5
	mov	rbp, rdi
	shr	rbp, 0x3f
	shr	rdi, 0x26
	movsxd	rdx, edx
	imul	rbx, rdx, 0x66666667
	mov	rsi, rbx
	shr	rsi, 0x3f
	sar	rbx, 0x22
	add	ebx, esi
	add	ebx, ebx
	lea	esi, [rbx + rbx*4]
	sub	edx, esi
	add	edx, 0x30
	sub	eax, r8d
	mov	byte ptr [rcx], 0x3a
	lea	esi, [rdi + rbp + 0x30]
	mov	byte ptr [rcx + 1], sil
	mov	byte ptr [rcx + 2], dl
	lea	rcx, [rcx + 3]
	je	.label_1388
	mov	byte ptr [rcx], 0x3a
	movsxd	rdx, eax
	imul	rdx, rdx, 0x66666667
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x22
	lea	edi, [rdx + rsi]
	lea	edx, [rdx + rsi + 0x30]
	mov	byte ptr [rcx + 1], dl
	add	edi, edi
	lea	edx, [rdi + rdi*4]
	neg	edx
	lea	eax, [rax + rdx + 0x30]
	mov	byte ptr [rcx + 2], al
	add	rcx, 3
.label_1388:
	mov	byte ptr [rcx], 0
.label_1431:
	lea	rdi, [rsp + 0x290]
	call	tzalloc
	mov	r14, rax
	test	r14, r14
	je	.label_1476
	mov	rax, qword ptr [rsp + 0x1e8]
	mov	dword ptr [rsp + 0x20], eax
	shr	rax, 0x20
	mov	dword ptr [rsp + 0x24], eax
	mov	rax, qword ptr [rsp + 0x1f0]
	mov	dword ptr [rsp + 0x28], eax
	shr	rax, 0x20
	mov	dword ptr [rsp + 0x2c], eax
	mov	rax, qword ptr [rsp + 0x1f8]
	mov	dword ptr [rsp + 0x30], eax
	shr	rax, 0x20
	mov	dword ptr [rsp + 0x34], eax
	mov	eax, dword ptr [rsp + 0x208]
	mov	dword ptr [rsp + 0x40], eax
	mov	dword ptr [rsp + 0x38], 0xffffffff
	lea	rsi, [rsp + 0x20]
	mov	rdi, r14
	call	mktime_z
	mov	r12, rax
	cmp	dword ptr [rsp + 0x38], 0
	js	.label_1482
	mov	rax, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rsp + 0x28]
	xor	rax, qword ptr [rsp + 0x1e8]
	xor	rcx, qword ptr [rsp + 0x1f0]
	mov	edx, ecx
	or	edx, eax
	shr	rax, 0x20
	or	edx, eax
	shr	rcx, 0x20
	mov	rbx, qword ptr [rsp + 0x30]
	xor	rbx, qword ptr [rsp + 0x1f8]
	mov	ebp, ebx
	or	ebp, ecx
	or	ebp, edx
	shr	rbx, 0x20
	mov	rdi, r14
	call	tzfree
	or	ebx, ebp
	mov	rbx, qword ptr [rsp]
	jne	.label_1403
.label_1381:
	cmp	qword ptr [rsp + 0x168], 0
	je	.label_1266
	mov	rax, qword ptr [rsp + 0x160]
	test	rax, rax
	jne	.label_1266
	mov	rcx, qword ptr [rsp + 0xc0]
	test	rcx, rcx
	jle	.label_1270
	mov	eax, dword ptr [rsp + 0x38]
	cmp	eax, dword ptr [rsp + 0xc8]
	setne	al
	jmp	.label_1276
.label_1476:
	cmp	byte ptr [rsp + 0x191], 0
	je	.label_1288
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1285
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	lea	rsi, [rsp + 0x290]
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
.label_1288:
	xor	ebp, ebp
	mov	rbx, qword ptr [rsp]
	jmp	.label_1237
.label_1483:
	xor	ebp, ebp
	jmp	.label_1237
.label_1473:
	mov	esi, OFFSET FLAT:label_1302
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	mov	rdx, rcx
	mov	rcx, r14
	call	__fprintf_chk
	jmp	.label_1305
.label_1482:
	mov	rdi, r14
	call	tzfree
	mov	rbx, qword ptr [rsp]
.label_1403:
	mov	qword ptr [rsp + 0x10], r13
	mov	r9, qword ptr [rsp + 0x1e8]
	mov	r10, qword ptr [rsp + 0x1f0]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rsp + 0x28]
	cmp	r9d, ebp
	sete	r8b
	mov	rsi, r9
	shr	rsi, 0x20
	mov	rdi, rbp
	shr	rdi, 0x20
	cmp	esi, edi
	sete	r14b
	mov	rcx, r10
	shr	rcx, 0x20
	mov	rdx, rax
	shr	rdx, 0x20
	mov	qword ptr [rsp + 0x1e0], rcx
	mov	qword ptr [rsp + 0x1d8], rdx
	cmp	ecx, edx
	sete	r11b
	mov	r12, qword ptr [rsp + 0x1f8]
	mov	r13, qword ptr [rsp + 0x30]
	cmp	r12d, r13d
	sete	r15b
	mov	qword ptr [rsp + 0x60], r12
	shr	r12, 0x20
	mov	qword ptr [rsp + 0x68], r13
	shr	r13, 0x20
	cmp	r12d, r13d
	sete	dl
	cmp	r10d, eax
	setne	cl
	cmp	byte ptr [rsp + 0x191], 0
	je	.label_1320
	mov	byte ptr [rsp + 0x1f], dl
	mov	byte ptr [rsp + 0x1d0], r11b
	mov	qword ptr [rsp + 0x300], rdi
	mov	qword ptr [rsp + 0x308], rsi
	mov	qword ptr [rsp + 0x310], rax
	mov	qword ptr [rsp + 0x318], r10
	mov	qword ptr [rsp + 0x320], rbp
	mov	qword ptr [rsp + 0x328], r9
	and	r8b, cl
	and	r14b, r8b
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1363
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1385
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0x2f8], rax
	lea	rdi, [rsp + 0x290]
	lea	rcx, [rsp + 0x1e8]
	mov	esi, 0x64
	mov	edx, OFFSET FLAT:label_1264
	xor	r8d, r8d
	xor	r9d, r9d
	call	nstrftime
	mov	rbp, rax
	cmp	ebp, 0x63
	jg	.label_1406
	mov	rax, qword ptr [rsp + 0x188]
	test	rax, rax
	je	.label_1406
	mov	byte ptr [rsp + 0x70], r15b
	mov	byte ptr [rsp + 8], r14b
	movsxd	rbx, dword ptr [rsp + 0xd0]
	mov	r14d, 0x64
	sub	r14d, ebp
	mov	eax, ebx
	shr	eax, 0x1f
	imul	r15, rbx, -0x6e5d4c3b
	shr	r15, 0x20
	add	r15d, ebx
	mov	ecx, r15d
	shr	ecx, 0x1f
	sar	r15d, 0xb
	add	r15d, ecx
	mov	r9d, r15d
	neg	r9d
	cmp	rbx, -0xe10
	lea	r8d, [rax + rax + 0x2b]
	cmovg	r9d, r15d
	lea	rdi, [rsp + 0x80]
	mov	esi, 1
	mov	edx, 0x1b
	mov	ecx, OFFSET FLAT:label_87
	xor	eax, eax
	call	__sprintf_chk
	imul	edx, r15d, 0xe10
	mov	esi, ebx
	sub	esi, edx
	mov	ecx, esi
	neg	ecx
	cmovl	ecx, esi
	cmp	ebx, edx
	movsxd	rdx, ebp
	lea	rdi, [rsp + rdx + 0x290]
	movsxd	rsi, r14d
	je	.label_1436
	cdqe	
	lea	rax, [rsp + rax + 0x80]
	movsxd	r9, ecx
	imul	rdx, r9, -0x77777777
	shr	rdx, 0x20
	add	edx, r9d
	mov	ebp, edx
	shr	ebp, 0x1f
	sar	edx, 5
	add	edx, ebp
	imul	r8d, edx, 0x3c
	imul	rbx, r9, 0x1b4e81b5
	mov	r10, rbx
	shr	r10, 0x3f
	shr	rbx, 0x26
	movsxd	rdx, edx
	imul	rcx, rdx, 0x66666667
	mov	rbp, rcx
	shr	rbp, 0x3f
	sar	rcx, 0x22
	add	ecx, ebp
	add	ecx, ecx
	lea	ecx, [rcx + rcx*4]
	sub	edx, ecx
	add	edx, 0x30
	sub	r9d, r8d
	mov	byte ptr [rax], 0x3a
	lea	ecx, [rbx + r10 + 0x30]
	mov	byte ptr [rax + 1], cl
	mov	byte ptr [rax + 2], dl
	je	.label_1443
	mov	byte ptr [rax + 3], 0x3a
	movsxd	rcx, r9d
	imul	rcx, rcx, 0x66666667
	mov	rdx, rcx
	shr	rdx, 0x3f
	sar	rcx, 0x22
	lea	ebp, [rcx + rdx]
	lea	ecx, [rcx + rdx + 0x30]
	mov	byte ptr [rax + 4], cl
	add	ebp, ebp
	lea	ecx, [rbp + rbp*4]
	neg	ecx
	lea	ecx, [r9 + rcx + 0x30]
	mov	byte ptr [rax + 5], cl
	add	rax, 6
	jmp	.label_1469
.label_1270:
	xor	eax, eax
.label_1276:
	movzx	eax, al
	cmp	rcx, rax
	jge	.label_1452
	test	rcx, rcx
	jle	.label_1490
	mov	eax, dword ptr [rsp + 0x38]
	cmp	eax, dword ptr [rsp + 0xc8]
	setne	al
	jmp	.label_1493
.label_1452:
	test	rcx, rcx
	jle	.label_1241
	mov	eax, dword ptr [rsp + 0x38]
	cmp	eax, dword ptr [rsp + 0xc8]
	setne	al
	jmp	.label_1231
.label_1443:
	add	rax, 3
.label_1469:
	mov	byte ptr [rax], 0
.label_1436:
	lea	r9, [rsp + 0x80]
	mov	edx, 1
	mov	rcx, -1
	mov	r8d, OFFSET FLAT:label_1330
	xor	eax, eax
	call	__snprintf_chk
	mov	r14b, byte ptr [rsp + 8]
	mov	r15b, byte ptr [rsp + 0x70]
.label_1406:
	and	r15b, byte ptr [rsp + 0x1f]
	mov	byte ptr [rsp + 0x70], r15b
	and	r14b, byte ptr [rsp + 0x1d0]
	lea	rbx, [rsp + 0x290]
	xor	eax, eax
	mov	rdi, qword ptr [rsp + 0x2f8]
	mov	rsi, rbx
	call	dbg_printf
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1258
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	lea	rcx, [rsp + 0x20]
	mov	esi, 0x64
	mov	edx, OFFSET FLAT:label_1264
	xor	r8d, r8d
	xor	r9d, r9d
	mov	rdi, rbx
	call	nstrftime
	mov	r15, rax
	cmp	r15d, 0x63
	jg	.label_1277
	mov	rax, qword ptr [rsp + 0x188]
	test	rax, rax
	je	.label_1277
	mov	qword ptr [rsp + 0x1d0], rbp
	mov	byte ptr [rsp + 8], r14b
	movsxd	rbx, dword ptr [rsp + 0xd0]
	mov	r14d, 0x64
	sub	r14d, r15d
	mov	eax, ebx
	shr	eax, 0x1f
	imul	rbp, rbx, -0x6e5d4c3b
	shr	rbp, 0x20
	add	ebp, ebx
	mov	ecx, ebp
	shr	ecx, 0x1f
	sar	ebp, 0xb
	add	ebp, ecx
	mov	r9d, ebp
	neg	r9d
	cmp	rbx, -0xe10
	lea	r8d, [rax + rax + 0x2b]
	cmovg	r9d, ebp
	lea	rdi, [rsp + 0x80]
	mov	esi, 1
	mov	edx, 0x1b
	mov	ecx, OFFSET FLAT:label_87
	xor	eax, eax
	call	__sprintf_chk
	imul	edx, ebp, 0xe10
	mov	esi, ebx
	sub	esi, edx
	mov	ecx, esi
	neg	ecx
	cmovl	ecx, esi
	cmp	ebx, edx
	movsxd	rdx, r15d
	lea	rdi, [rsp + rdx + 0x290]
	movsxd	rsi, r14d
	je	.label_1317
	cdqe	
	lea	rax, [rsp + rax + 0x80]
	movsxd	r9, ecx
	imul	rdx, r9, -0x77777777
	shr	rdx, 0x20
	add	edx, r9d
	mov	ebp, edx
	shr	ebp, 0x1f
	sar	edx, 5
	add	edx, ebp
	imul	r8d, edx, 0x3c
	imul	rbx, r9, 0x1b4e81b5
	mov	r10, rbx
	shr	r10, 0x3f
	shr	rbx, 0x26
	movsxd	rdx, edx
	imul	rcx, rdx, 0x66666667
	mov	rbp, rcx
	shr	rbp, 0x3f
	sar	rcx, 0x22
	add	ecx, ebp
	add	ecx, ecx
	lea	ecx, [rcx + rcx*4]
	sub	edx, ecx
	add	edx, 0x30
	sub	r9d, r8d
	mov	byte ptr [rax], 0x3a
	lea	ecx, [rbx + r10 + 0x30]
	mov	byte ptr [rax + 1], cl
	mov	byte ptr [rax + 2], dl
	je	.label_1329
	mov	byte ptr [rax + 3], 0x3a
	movsxd	rcx, r9d
	imul	rcx, rcx, 0x66666667
	mov	rdx, rcx
	shr	rdx, 0x3f
	sar	rcx, 0x22
	lea	ebp, [rcx + rdx]
	lea	ecx, [rcx + rdx + 0x30]
	mov	byte ptr [rax + 4], cl
	add	ebp, ebp
	lea	ecx, [rbp + rbp*4]
	neg	ecx
	lea	ecx, [r9 + rcx + 0x30]
	mov	byte ptr [rax + 5], cl
	add	rax, 6
	jmp	.label_1357
.label_1329:
	add	rax, 3
.label_1357:
	mov	byte ptr [rax], 0
.label_1317:
	lea	r9, [rsp + 0x80]
	mov	edx, 1
	mov	rcx, -1
	mov	r8d, OFFSET FLAT:label_1330
	xor	eax, eax
	call	__snprintf_chk
	mov	r14b, byte ptr [rsp + 8]
	mov	rbp, qword ptr [rsp + 0x1d0]
.label_1277:
	and	r14b, byte ptr [rsp + 0x70]
	mov	byte ptr [rsp + 8], r14b
	lea	r14, [rsp + 0x290]
	xor	eax, eax
	mov	rdi, rbp
	mov	rsi, r14
	call	dbg_printf
	cmp	r12d, r13d
	mov	eax, OFFSET FLAT:label_20
	mov	r9d, OFFSET FLAT:label_1396
	cmove	r9, rax
	mov	rcx, qword ptr [rsp + 0x60]
	mov	rdx, qword ptr [rsp + 0x68]
	cmp	ecx, edx
	mov	r15d, OFFSET FLAT:label_1397
	mov	r10d, OFFSET FLAT:label_1397
	cmove	r10, rax
	mov	r12, qword ptr [rsp + 0x1e0]
	mov	r13, qword ptr [rsp + 0x1d8]
	cmp	r12d, r13d
	mov	r11d, OFFSET FLAT:label_1397
	cmove	r11, rax
	mov	rcx, qword ptr [rsp + 0x318]
	mov	rdx, qword ptr [rsp + 0x310]
	cmp	ecx, edx
	mov	ebx, OFFSET FLAT:label_1397
	cmove	rbx, rax
	mov	rcx, qword ptr [rsp + 0x308]
	mov	rdx, qword ptr [rsp + 0x300]
	cmp	ecx, edx
	mov	ebp, OFFSET FLAT:label_1397
	cmove	rbp, rax
	mov	rcx, qword ptr [rsp + 0x328]
	mov	rdx, qword ptr [rsp + 0x320]
	cmp	ecx, edx
	cmove	r15, rax
	sub	rsp, 8
	mov	esi, 0x64
	mov	edx, 1
	mov	ecx, 0x64
	mov	r8d, OFFSET FLAT:label_1398
	mov	eax, 0
	mov	rdi, r14
	push	r15
	push	rbp
	push	rbx
	push	r11
	push	r10
	call	__snprintf_chk
	add	rsp, 0x30
	test	eax, eax
	mov	rbx, qword ptr [rsp]
	js	.label_1343
	movabs	rcx, 0xffffffff00000000
	cmp	eax, 0x63
	mov	edx, 0x63
	cmovb	edx, eax
	inc	edx
	lea	rax, [rdx - 1]
	shl	rdx, 0x20
	add	rdx, rcx
.label_1454:
	mov	rsi, rdx
	test	rax, rax
	jle	.label_1449
	lea	rdx, [rsi + rcx]
	cmp	byte ptr [rsp + rax + 0x28f], 0x20
	lea	rax, [rax - 1]
	je	.label_1454
.label_1449:
	sar	rsi, 0x20
	mov	byte ptr [rsp + rsi + 0x290], 0
.label_1343:
	lea	rsi, [rsp + 0x290]
	mov	edi, OFFSET FLAT:label_1322
	xor	eax, eax
	call	dbg_printf
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1466
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	cmp	byte ptr [rsp + 8], 0
	je	.label_1470
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1472
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
.label_1470:
	cmp	r12d, r13d
	je	.label_1429
	mov	rax, qword ptr [rsp + 0x60]
	mov	rcx, qword ptr [rsp + 0x68]
	cmp	eax, ecx
	je	.label_1429
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1455
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
.label_1429:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1226
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	cmp	qword ptr [rsp + 0x58], 0
	je	.label_1235
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1294
	jmp	.label_1295
.label_1235:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1242
.label_1295:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, OFFSET FLAT:label_1245
	xor	eax, eax
	mov	rsi, rcx
	call	dbg_printf
.label_1320:
	xor	ebp, ebp
	mov	r13, qword ptr [rsp + 0x10]
	jmp	.label_1237
.label_1490:
	xor	eax, eax
.label_1493:
	movzx	eax, al
	mov	rdx, rcx
	sub	rdx, rax
	movabs	rax, 0xedb6db6db6db6db7
	cmp	rdx, rax
	jge	.label_1253
	jmp	.label_1256
.label_1241:
	xor	eax, eax
.label_1231:
	movzx	eax, al
	mov	rdx, rcx
	sub	rdx, rax
	movabs	rax, 0x1249249249249249
	cmp	rdx, rax
	jg	.label_1256
.label_1253:
	test	rcx, rcx
	jle	.label_1268
	mov	eax, dword ptr [rsp + 0x38]
	cmp	eax, dword ptr [rsp + 0xc8]
	setne	al
	jmp	.label_1379
.label_1268:
	xor	eax, eax
.label_1379:
	movzx	eax, al
	sub	rcx, rax
	lea	rax, [rcx*8]
	sub	rax, rcx
	js	.label_1273
	mov	rsi, r15
	sub	rsi, rax
	mov	ecx, dword ptr [rsp + 0xc8]
	mov	edx, dword ptr [rsp + 0x38]
	lea	edi, [rcx + 7]
	sub	edi, edx
	movsxd	rdi, edi
	imul	rbp, rdi, -0x6db6db6d
	shr	rbp, 0x20
	add	ebp, edi
	mov	ebx, ebp
	shr	ebx, 0x1f
	sar	ebp, 2
	add	ebp, ebx
	lea	ebx, [rbp*8]
	sub	ebx, ebp
	sub	edi, ebx
	mov	rbx, qword ptr [rsp]
	movsxd	rdi, edi
	jmp	.label_1280
.label_1273:
	mov	ecx, dword ptr [rsp + 0xc8]
	mov	edx, dword ptr [rsp + 0x38]
	lea	esi, [rcx + 7]
	sub	esi, edx
	movsxd	rsi, esi
	imul	rdi, rsi, -0x6db6db6d
	shr	rdi, 0x20
	add	edi, esi
	mov	ebp, edi
	shr	ebp, 0x1f
	sar	edi, 2
	add	edi, ebp
	lea	ebp, [rdi*8]
	sub	ebp, edi
	sub	esi, ebp
	movsxd	rsi, esi
	lea	rdi, [r15 + 1]
	sub	rdi, rax
.label_1280:
	cmp	rsi, rdi
	jl	.label_1256
	add	ecx, 7
	sub	ecx, edx
	movsxd	rcx, ecx
	imul	rdx, rcx, -0x6db6db6d
	shr	rdx, 0x20
	add	edx, ecx
	mov	esi, edx
	shr	esi, 0x1f
	sar	edx, 2
	add	edx, esi
	lea	esi, [rdx*8]
	sub	esi, edx
	sub	ecx, esi
	movsxd	rcx, ecx
	add	rcx, rax
	movsxd	rax, dword ptr [rsp + 0x2c]
	test	rax, rax
	js	.label_1323
	mov	rdx, r15
	sub	rdx, rax
	cmp	rdx, rcx
	jge	.label_1316
	jmp	.label_1338
.label_1323:
	lea	rdx, [r15 + 1]
	sub	rdx, rax
	cmp	rcx, rdx
	jl	.label_1338
.label_1316:
	mov	edx, 0x80000000
	lea	rdx, [rcx + rdx]
	add	rdx, rax
	shr	rdx, 0x20
	je	.label_1348
.label_1338:
	add	ecx, eax
	mov	dword ptr [rsp + 0x2c], ecx
.label_1256:
	cmp	byte ptr [rsp + 0x191], 0
	jne	.label_1399
	jmp	.label_1326
.label_1348:
	mov	r14, r13
	add	ecx, eax
	mov	dword ptr [rsp + 0x2c], ecx
	mov	dword ptr [rsp + 0x40], 0xffffffff
	lea	rsi, [rsp + 0x20]
	mov	rdi, rbx
	call	mktime_z
	mov	cl, byte ptr [rsp + 0x191]
	mov	r12, rax
	cmp	rax, -1
	je	.label_1364
	test	cl, cl
	je	.label_1369
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1227
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rsp + 0xb8]
	lea	rsi, [rsp + 0x290]
	call	str_days
	mov	qword ptr [rsp + 0x58], rax
	lea	rdi, [rsp + 0x220]
	lea	rcx, [rsp + 0x20]
	mov	esi, 0x64
	mov	edx, OFFSET FLAT:label_1264
	xor	r8d, r8d
	xor	r9d, r9d
	call	nstrftime
	mov	rbp, rax
	cmp	ebp, 0x63
	jg	.label_1392
	mov	rax, qword ptr [rsp + 0x188]
	test	rax, rax
	je	.label_1392
	movsxd	r13, dword ptr [rsp + 0xd0]
	mov	eax, 0x64
	sub	eax, ebp
	mov	dword ptr [rsp + 0x70], eax
	mov	eax, r13d
	shr	eax, 0x1f
	imul	rbx, r13, -0x6e5d4c3b
	shr	rbx, 0x20
	add	ebx, r13d
	mov	ecx, ebx
	shr	ecx, 0x1f
	sar	ebx, 0xb
	add	ebx, ecx
	mov	r9d, ebx
	neg	r9d
	cmp	r13, -0xe10
	lea	r8d, [rax + rax + 0x2b]
	cmovg	r9d, ebx
	lea	rdi, [rsp + 0x80]
	mov	esi, 1
	mov	edx, 0x1b
	mov	ecx, OFFSET FLAT:label_87
	xor	eax, eax
	call	__sprintf_chk
	imul	edx, ebx, 0xe10
	mov	esi, r13d
	sub	esi, edx
	mov	ecx, esi
	neg	ecx
	cmovl	ecx, esi
	cmp	r13d, edx
	movsxd	rdx, ebp
	lea	rdi, [rsp + rdx + 0x220]
	movsxd	rsi, dword ptr [rsp + 0x70]
	je	.label_1424
	cdqe	
	lea	rax, [rsp + rax + 0x80]
	movsxd	r9, ecx
	imul	rdx, r9, -0x77777777
	shr	rdx, 0x20
	add	edx, r9d
	mov	ebp, edx
	shr	ebp, 0x1f
	sar	edx, 5
	add	edx, ebp
	imul	r8d, edx, 0x3c
	imul	rbx, r9, 0x1b4e81b5
	mov	r10, rbx
	shr	r10, 0x3f
	shr	rbx, 0x26
	movsxd	rdx, edx
	imul	rcx, rdx, 0x66666667
	mov	rbp, rcx
	shr	rbp, 0x3f
	sar	rcx, 0x22
	add	ecx, ebp
	add	ecx, ecx
	lea	ecx, [rcx + rcx*4]
	sub	edx, ecx
	add	edx, 0x30
	sub	r9d, r8d
	mov	byte ptr [rax], 0x3a
	lea	ecx, [rbx + r10 + 0x30]
	mov	byte ptr [rax + 1], cl
	mov	byte ptr [rax + 2], dl
	je	.label_1389
	mov	byte ptr [rax + 3], 0x3a
	movsxd	rcx, r9d
	imul	rcx, rcx, 0x66666667
	mov	rdx, rcx
	shr	rdx, 0x3f
	sar	rcx, 0x22
	lea	ebp, [rcx + rdx]
	lea	ecx, [rcx + rdx + 0x30]
	mov	byte ptr [rax + 4], cl
	add	ebp, ebp
	lea	ecx, [rbp + rbp*4]
	neg	ecx
	lea	ecx, [r9 + rcx + 0x30]
	mov	byte ptr [rax + 5], cl
	add	rax, 6
	jmp	.label_1460
.label_1364:
	test	cl, cl
	mov	r13, r14
	mov	rbx, qword ptr [rsp]
	je	.label_1326
.label_1399:
	mov	qword ptr [rsp + 0x10], r13
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1477
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	lea	rdi, [rsp + 0xb8]
	lea	rsi, [rsp + 0x290]
	call	str_days
	mov	r15, rax
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r13d, dword ptr [rsp + 0xc8]
	lea	rdi, [rsp + 0x220]
	lea	rcx, [rsp + 0x20]
	mov	esi, 0x64
	mov	edx, OFFSET FLAT:label_1264
	xor	r8d, r8d
	xor	r9d, r9d
	call	nstrftime
	mov	r12, rax
	cmp	r12d, 0x63
	jg	.label_1243
	mov	rax, qword ptr [rsp + 0x188]
	test	rax, rax
	je	.label_1243
	mov	qword ptr [rsp + 0x58], rbp
	mov	qword ptr [rsp + 0x60], r15
	mov	qword ptr [rsp + 8], r14
	movsxd	rbx, dword ptr [rsp + 0xd0]
	mov	r14d, 0x64
	sub	r14d, r12d
	mov	eax, ebx
	shr	eax, 0x1f
	imul	r15, rbx, -0x6e5d4c3b
	shr	r15, 0x20
	add	r15d, ebx
	mov	ecx, r15d
	shr	ecx, 0x1f
	sar	r15d, 0xb
	add	r15d, ecx
	mov	r9d, r15d
	neg	r9d
	cmp	rbx, -0xe10
	lea	r8d, [rax + rax + 0x2b]
	cmovg	r9d, r15d
	lea	rdi, [rsp + 0x80]
	mov	esi, 1
	mov	edx, 0x1b
	mov	ecx, OFFSET FLAT:label_87
	xor	eax, eax
	call	__sprintf_chk
	imul	edx, r15d, 0xe10
	mov	esi, ebx
	sub	esi, edx
	mov	ecx, esi
	neg	ecx
	cmovl	ecx, esi
	cmp	ebx, edx
	movsxd	rdx, r12d
	lea	rdi, [rsp + rdx + 0x220]
	movsxd	rsi, r14d
	je	.label_1275
	cdqe	
	lea	rax, [rsp + rax + 0x80]
	movsxd	r9, ecx
	imul	rdx, r9, -0x77777777
	shr	rdx, 0x20
	add	edx, r9d
	mov	ebp, edx
	shr	ebp, 0x1f
	sar	edx, 5
	add	edx, ebp
	imul	r8d, edx, 0x3c
	imul	rbx, r9, 0x1b4e81b5
	mov	r10, rbx
	shr	r10, 0x3f
	shr	rbx, 0x26
	movsxd	rdx, edx
	imul	rcx, rdx, 0x66666667
	mov	rbp, rcx
	shr	rbp, 0x3f
	sar	rcx, 0x22
	add	ecx, ebp
	add	ecx, ecx
	lea	ecx, [rcx + rcx*4]
	sub	edx, ecx
	add	edx, 0x30
	sub	r9d, r8d
	mov	byte ptr [rax], 0x3a
	lea	ecx, [rbx + r10 + 0x30]
	mov	byte ptr [rax + 1], cl
	mov	byte ptr [rax + 2], dl
	je	.label_1289
	mov	byte ptr [rax + 3], 0x3a
	movsxd	rcx, r9d
	imul	rcx, rcx, 0x66666667
	mov	rdx, rcx
	shr	rdx, 0x3f
	sar	rcx, 0x22
	lea	ebp, [rcx + rdx]
	lea	ecx, [rcx + rdx + 0x30]
	mov	byte ptr [rax + 4], cl
	add	ebp, ebp
	lea	ecx, [rbp + rbp*4]
	neg	ecx
	lea	ecx, [r9 + rcx + 0x30]
	mov	byte ptr [rax + 5], cl
	add	rax, 6
	jmp	.label_1488
.label_1289:
	add	rax, 3
.label_1488:
	mov	byte ptr [rax], 0
.label_1275:
	lea	r9, [rsp + 0x80]
	mov	edx, 1
	mov	rcx, -1
	mov	r8d, OFFSET FLAT:label_1330
	xor	eax, eax
	call	__snprintf_chk
	mov	rbx, qword ptr [rsp]
	mov	r14, qword ptr [rsp + 8]
	mov	r15, qword ptr [rsp + 0x60]
	mov	rbp, qword ptr [rsp + 0x58]
.label_1243:
	lea	r8, [rsp + 0x220]
	xor	eax, eax
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, rbp
	mov	ecx, r13d
	call	dbg_printf
	mov	r13, qword ptr [rsp + 0x10]
	xor	ebp, ebp
	jmp	.label_1237
.label_1389:
	add	rax, 3
.label_1460:
	mov	byte ptr [rax], 0
.label_1424:
	lea	r9, [rsp + 0x80]
	mov	edx, 1
	mov	rcx, -1
	mov	r8d, OFFSET FLAT:label_1330
	xor	eax, eax
	call	__snprintf_chk
.label_1392:
	lea	rdx, [rsp + 0x220]
	xor	eax, eax
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 0x58]
	call	dbg_printf
.label_1369:
	mov	r13, r14
	mov	rbx, qword ptr [rsp]
.label_1266:
	cmp	byte ptr [rsp + 0x191], 0
	je	.label_1383
	mov	rax, qword ptr [rsp + 0x160]
	mov	rcx, qword ptr [rsp + 0x168]
	mov	rdx, rcx
	or	rdx, rax
	jne	.label_1384
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1393
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 8], rax
	movsxd	rax, dword ptr [rsp + 0x34]
	xor	ecx, ecx
	cmp	rax, -0x76d
	setg	cl
	lea	rcx, qword ptr [rcx + label_1412]
	imul	rdx, rax, 0x51eb851f
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x25
	lea	edi, [rdx + rsi]
	lea	edx, [rdx + rsi + 0x13]
	mov	r8d, 0xffffffed
	sub	r8d, edi
	test	edx, edx
	cmovns	r8d, edx
	imul	edx, edi, 0x64
	sub	eax, edx
	mov	r9d, eax
	neg	r9d
	cmovl	r9d, eax
	lea	rdi, [rsp + 0x80]
	mov	esi, 1
	mov	edx, 0xd
	xor	eax, eax
	call	__sprintf_chk
	mov	ebx, dword ptr [rsp + 0x2c]
	mov	ebp, dword ptr [rsp + 0x30]
	inc	ebp
	mov	r14, r12
	mov	r12, r13
	lea	r13, [rsp + 0x220]
	mov	esi, 0x64
	mov	edx, 1
	mov	ecx, 0x64
	mov	r8d, OFFSET FLAT:label_1423
	mov	eax, 0
	mov	rdi, r13
	lea	r9, [rsp + 0x80]
	push	rbx
	mov	rbx, qword ptr [rsp + 8]
	push	rbp
	call	__snprintf_chk
	add	rsp, 0x10
	xor	eax, eax
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, r13
	mov	r13, r12
	mov	r12, r14
	call	dbg_printf
	mov	rax, qword ptr [rsp + 0x160]
	mov	rcx, qword ptr [rsp + 0x168]
.label_1384:
	test	rcx, rcx
	je	.label_1481
	test	rax, rax
	je	.label_1481
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1451
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rdi, [rsp + 0xb8]
	lea	rsi, [rsp + 0x290]
	call	str_days
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rbx
	mov	rbx, qword ptr [rsp]
	mov	rsi, rcx
	call	dbg_printf
.label_1481:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1467
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	lea	rdi, [rsp + 0x220]
	lea	rcx, [rsp + 0x20]
	mov	esi, 0x64
	mov	edx, OFFSET FLAT:label_1264
	xor	r8d, r8d
	xor	r9d, r9d
	call	nstrftime
	cmp	eax, 0x63
	jg	.label_1480
	mov	rcx, qword ptr [rsp + 0x188]
	test	rcx, rcx
	je	.label_1480
	mov	qword ptr [rsp + 8], rbp
	mov	qword ptr [rsp + 0x10], r13
	movsxd	rbx, dword ptr [rsp + 0xd0]
	mov	r13d, 0x64
	sub	r13d, eax
	mov	edx, ebx
	shr	edx, 0x1f
	imul	r14, rbx, -0x6e5d4c3b
	shr	r14, 0x20
	add	r14d, ebx
	mov	rbp, rax
	mov	ecx, r14d
	shr	ecx, 0x1f
	sar	r14d, 0xb
	add	r14d, ecx
	mov	r9d, r14d
	neg	r9d
	cmp	rbx, -0xe10
	lea	r8d, [rdx + rdx + 0x2b]
	cmovg	r9d, r14d
	lea	rdi, [rsp + 0x80]
	mov	esi, 1
	mov	edx, 0x1b
	mov	ecx, OFFSET FLAT:label_87
	xor	eax, eax
	call	__sprintf_chk
	imul	edx, r14d, 0xe10
	mov	esi, ebx
	sub	esi, edx
	mov	ecx, esi
	neg	ecx
	cmovl	ecx, esi
	cmp	ebx, edx
	movsxd	rdx, ebp
	lea	rdi, [rsp + rdx + 0x220]
	movsxd	rsi, r13d
	je	.label_1370
	cdqe	
	lea	rax, [rsp + rax + 0x80]
	movsxd	r9, ecx
	imul	rdx, r9, -0x77777777
	shr	rdx, 0x20
	add	edx, r9d
	mov	ebp, edx
	shr	ebp, 0x1f
	sar	edx, 5
	add	edx, ebp
	imul	r8d, edx, 0x3c
	imul	rbx, r9, 0x1b4e81b5
	mov	r10, rbx
	shr	r10, 0x3f
	shr	rbx, 0x26
	movsxd	rdx, edx
	imul	rcx, rdx, 0x66666667
	mov	rbp, rcx
	shr	rbp, 0x3f
	sar	rcx, 0x22
	add	ecx, ebp
	add	ecx, ecx
	lea	ecx, [rcx + rcx*4]
	sub	edx, ecx
	add	edx, 0x30
	sub	r9d, r8d
	mov	byte ptr [rax], 0x3a
	lea	ecx, [rbx + r10 + 0x30]
	mov	byte ptr [rax + 1], cl
	mov	byte ptr [rax + 2], dl
	je	.label_1257
	mov	byte ptr [rax + 3], 0x3a
	movsxd	rcx, r9d
	imul	rcx, rcx, 0x66666667
	mov	rdx, rcx
	shr	rdx, 0x3f
	sar	rcx, 0x22
	lea	ebp, [rcx + rdx]
	lea	ecx, [rcx + rdx + 0x30]
	mov	byte ptr [rax + 4], cl
	add	ebp, ebp
	lea	ecx, [rbp + rbp*4]
	neg	ecx
	lea	ecx, [r9 + rcx + 0x30]
	mov	byte ptr [rax + 5], cl
	add	rax, 6
	jmp	.label_1291
.label_1257:
	add	rax, 3
.label_1291:
	mov	byte ptr [rax], 0
.label_1370:
	lea	r9, [rsp + 0x80]
	mov	edx, 1
	mov	rcx, -1
	mov	r8d, OFFSET FLAT:label_1330
	xor	eax, eax
	call	__snprintf_chk
	mov	r13, qword ptr [rsp + 0x10]
	mov	rbx, qword ptr [rsp]
	mov	rbp, qword ptr [rsp + 8]
.label_1480:
	lea	rsi, [rsp + 0x220]
	xor	eax, eax
	mov	rdi, rbp
	call	dbg_printf
.label_1383:
	mov	rcx, qword ptr [rsp + 0x128]
	mov	rax, qword ptr [rsp + 0x130]
	or	rcx, qword ptr [rsp + 0x120]
	mov	rdx, rcx
	or	rdx, rax
	je	.label_1332
	cmp	byte ptr [rsp + 0x191], 0
	je	.label_1344
	test	rcx, rcx
	je	.label_1346
	cmp	dword ptr [rsp + 0x2c], 0xf
	je	.label_1346
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1350
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	mov	rax, qword ptr [rsp + 0x130]
.label_1346:
	test	rax, rax
	je	.label_1344
	cmp	dword ptr [rsp + 0x28], 0xc
	je	.label_1344
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1358
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
.label_1344:
	mov	r14, r13
	mov	r13, qword ptr [rsp + 0x120]
	test	r13, r13
	js	.label_1365
	mov	rcx, r15
	sub	rcx, r13
	movsxd	rax, dword ptr [rsp + 0x34]
	cmp	rcx, rax
	jge	.label_1371
	jmp	.label_1312
.label_1365:
	movsxd	rax, dword ptr [rsp + 0x34]
	lea	rcx, [r15 + 1]
	sub	rcx, r13
	cmp	rax, rcx
	jl	.label_1312
.label_1371:
	movsxd	rcx, eax
	mov	edx, 0x80000000
	lea	rdx, [r13 + rdx]
	add	rdx, rcx
	shr	rdx, 0x20
	jne	.label_1312
	mov	rdi, qword ptr [rsp + 0x128]
	test	rdi, rdi
	js	.label_1387
	mov	rdx, r15
	sub	rdx, rdi
	movsxd	rcx, dword ptr [rsp + 0x30]
	cmp	rdx, rcx
	jge	.label_1376
	jmp	.label_1312
.label_1387:
	movsxd	rcx, dword ptr [rsp + 0x30]
	lea	rdx, [r15 + 1]
	sub	rdx, rdi
	cmp	rcx, rdx
	jl	.label_1312
.label_1376:
	movsxd	rdx, ecx
	mov	esi, 0x80000000
	lea	rsi, [rdi + rsi]
	add	rsi, rdx
	shr	rsi, 0x20
	jne	.label_1312
	mov	rbx, qword ptr [rsp + 0x130]
	test	rbx, rbx
	js	.label_1409
	mov	rsi, r15
	sub	rsi, rbx
	movsxd	rdx, dword ptr [rsp + 0x2c]
	cmp	rsi, rdx
	jmp	.label_1414
.label_1409:
	movsxd	rdx, dword ptr [rsp + 0x2c]
	lea	rsi, [r15 + 1]
	sub	rsi, rbx
	cmp	rdx, rsi
.label_1414:
	mov	rbp, rdi
	jl	.label_1312
	movsxd	rsi, edx
	mov	edi, 0x80000000
	add	rdi, rbx
	add	rdi, rsi
	shr	rdi, 0x20
	je	.label_1419
.label_1312:
	cmp	byte ptr [rsp + 0x191], 0
	mov	r13, r14
	mov	rbx, qword ptr [rsp]
	je	.label_1326
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1428
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, OFFSET FLAT:label_1434
	mov	edx, 0x877
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	xor	ebp, ebp
	jmp	.label_1237
.label_1419:
	add	r13d, eax
	add	ebp, ecx
	add	ebx, edx
	mov	dword ptr [rsp + 0x34], r13d
	mov	qword ptr [rsp + 0x58], rbp
	mov	dword ptr [rsp + 0x30], ebp
	mov	dword ptr [rsp + 0x2c], ebx
	mov	eax, dword ptr [rsp + 0x1f0]
	mov	dword ptr [rsp + 0x28], eax
	mov	eax, dword ptr [rsp + 0x1ec]
	mov	dword ptr [rsp + 0x24], eax
	mov	eax, dword ptr [rsp + 0x1e8]
	mov	dword ptr [rsp + 0x20], eax
	mov	eax, dword ptr [rsp + 0x208]
	mov	dword ptr [rsp + 0x40], eax
	lea	rsi, [rsp + 0x20]
	mov	rdi, qword ptr [rsp]
	call	mktime_z
	mov	qword ptr [rsp + 8], rax
	cmp	rax, -1
	mov	al, byte ptr [rsp + 0x191]
	je	.label_1380
	test	al, al
	je	.label_1458
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1464
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, qword ptr [rsp + 0x120]
	mov	rdx, qword ptr [rsp + 0x128]
	mov	rcx, qword ptr [rsp + 0x130]
	xor	eax, eax
	call	dbg_printf
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1475
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0x70], rax
	lea	rdi, [rsp + 0x220]
	lea	rcx, [rsp + 0x20]
	mov	esi, 0x64
	mov	edx, OFFSET FLAT:label_1264
	xor	r8d, r8d
	xor	r9d, r9d
	call	nstrftime
	mov	rcx, rax
	cmp	eax, 0x63
	jg	.label_1230
	mov	rax, qword ptr [rsp + 0x188]
	test	rax, rax
	je	.label_1230
	movsxd	r12, dword ptr [rsp + 0xd0]
	mov	eax, 0x64
	mov	qword ptr [rsp + 0x1d8], rcx
	sub	eax, ecx
	mov	dword ptr [rsp + 0x1e0], eax
	mov	eax, r12d
	shr	eax, 0x1f
	imul	rbp, r12, -0x6e5d4c3b
	shr	rbp, 0x20
	add	ebp, r12d
	mov	ecx, ebp
	shr	ecx, 0x1f
	sar	ebp, 0xb
	add	ebp, ecx
	mov	r9d, ebp
	neg	r9d
	cmp	r12, -0xe10
	lea	r8d, [rax + rax + 0x2b]
	cmovg	r9d, ebp
	lea	rdi, [rsp + 0x80]
	mov	esi, 1
	mov	edx, 0x1b
	mov	ecx, OFFSET FLAT:label_87
	xor	eax, eax
	call	__sprintf_chk
	imul	edx, ebp, 0xe10
	mov	esi, r12d
	sub	esi, edx
	mov	ecx, esi
	neg	ecx
	cmovl	ecx, esi
	cmp	r12d, edx
	mov	rdx, qword ptr [rsp + 0x1d8]
	movsxd	rdx, edx
	lea	rdi, [rsp + rdx + 0x220]
	movsxd	rsi, dword ptr [rsp + 0x1e0]
	je	.label_1259
	cdqe	
	lea	r11, [rsp + rax + 0x80]
	movsxd	r9, ecx
	imul	rdx, r9, -0x77777777
	shr	rdx, 0x20
	add	edx, r9d
	mov	ebp, edx
	shr	ebp, 0x1f
	sar	edx, 5
	add	edx, ebp
	imul	r8d, edx, 0x3c
	imul	rbp, r9, 0x1b4e81b5
	mov	r10, rbp
	shr	r10, 0x3f
	shr	rbp, 0x26
	movsxd	rdx, edx
	imul	rcx, rdx, 0x66666667
	mov	rax, rcx
	shr	rax, 0x3f
	sar	rcx, 0x22
	add	ecx, eax
	add	ecx, ecx
	lea	eax, [rcx + rcx*4]
	sub	edx, eax
	add	edx, 0x30
	sub	r9d, r8d
	mov	byte ptr [r11], 0x3a
	lea	eax, [rbp + r10 + 0x30]
	mov	byte ptr [r11 + 1], al
	mov	byte ptr [r11 + 2], dl
	je	.label_1248
	mov	byte ptr [r11 + 3], 0x3a
	movsxd	rax, r9d
	imul	rax, rax, 0x66666667
	mov	rcx, rax
	shr	rcx, 0x3f
	sar	rax, 0x22
	lea	edx, [rax + rcx]
	lea	eax, [rax + rcx + 0x30]
	mov	byte ptr [r11 + 4], al
	add	edx, edx
	lea	eax, [rdx + rdx*4]
	neg	eax
	lea	eax, [r9 + rax + 0x30]
	mov	byte ptr [r11 + 5], al
	add	r11, 6
	jmp	.label_1313
.label_1380:
	test	al, al
	mov	r13, r14
	mov	rbx, qword ptr [rsp]
	je	.label_1326
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1337
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	lea	rdi, [rsp + 0x220]
	lea	rcx, [rsp + 0x20]
	mov	esi, 0x64
	mov	edx, OFFSET FLAT:label_1264
	xor	r8d, r8d
	xor	r9d, r9d
	call	nstrftime
	mov	r12, rax
	cmp	r12d, 0x63
	jg	.label_1355
	mov	rax, qword ptr [rsp + 0x188]
	test	rax, rax
	je	.label_1355
	movsxd	rbx, dword ptr [rsp + 0xd0]
	mov	r15d, 0x64
	sub	r15d, r12d
	mov	eax, ebx
	shr	eax, 0x1f
	imul	rbp, rbx, -0x6e5d4c3b
	shr	rbp, 0x20
	add	ebp, ebx
	mov	ecx, ebp
	shr	ecx, 0x1f
	sar	ebp, 0xb
	add	ebp, ecx
	mov	r9d, ebp
	neg	r9d
	cmp	rbx, -0xe10
	lea	r8d, [rax + rax + 0x2b]
	cmovg	r9d, ebp
	lea	rdi, [rsp + 0x80]
	mov	esi, 1
	mov	edx, 0x1b
	mov	ecx, OFFSET FLAT:label_87
	xor	eax, eax
	call	__sprintf_chk
	imul	edx, ebp, 0xe10
	mov	esi, ebx
	sub	esi, edx
	mov	ecx, esi
	neg	ecx
	cmovl	ecx, esi
	cmp	ebx, edx
	movsxd	rdx, r12d
	lea	rdi, [rsp + rdx + 0x220]
	movsxd	rsi, r15d
	je	.label_1382
	cdqe	
	lea	rax, [rsp + rax + 0x80]
	movsxd	r9, ecx
	imul	rdx, r9, -0x77777777
	shr	rdx, 0x20
	add	edx, r9d
	mov	ebp, edx
	shr	ebp, 0x1f
	sar	edx, 5
	add	edx, ebp
	imul	r8d, edx, 0x3c
	imul	rbx, r9, 0x1b4e81b5
	mov	r10, rbx
	shr	r10, 0x3f
	shr	rbx, 0x26
	movsxd	rdx, edx
	imul	rcx, rdx, 0x66666667
	mov	rbp, rcx
	shr	rbp, 0x3f
	sar	rcx, 0x22
	add	ecx, ebp
	add	ecx, ecx
	lea	ecx, [rcx + rcx*4]
	sub	edx, ecx
	add	edx, 0x30
	sub	r9d, r8d
	mov	byte ptr [rax], 0x3a
	lea	ecx, [rbx + r10 + 0x30]
	mov	byte ptr [rax + 1], cl
	mov	byte ptr [rax + 2], dl
	je	.label_1391
	mov	byte ptr [rax + 3], 0x3a
	movsxd	rcx, r9d
	imul	rcx, rcx, 0x66666667
	mov	rdx, rcx
	shr	rdx, 0x3f
	sar	rcx, 0x22
	lea	ebp, [rcx + rdx]
	lea	ecx, [rcx + rdx + 0x30]
	mov	byte ptr [rax + 4], cl
	add	ebp, ebp
	lea	ecx, [rbp + rbp*4]
	neg	ecx
	lea	ecx, [r9 + rcx + 0x30]
	mov	byte ptr [rax + 5], cl
	add	rax, 6
	jmp	.label_1420
.label_1248:
	add	r11, 3
.label_1313:
	mov	byte ptr [r11], 0
.label_1259:
	lea	r9, [rsp + 0x80]
	mov	edx, 1
	mov	rcx, -1
	mov	r8d, OFFSET FLAT:label_1330
	xor	eax, eax
	call	__snprintf_chk
.label_1230:
	lea	rsi, [rsp + 0x220]
	xor	eax, eax
	mov	rdi, qword ptr [rsp + 0x70]
	call	dbg_printf
	mov	eax, dword ptr [rsp + 0x208]
	cmp	eax, -1
	je	.label_1447
	cmp	dword ptr [rsp + 0x40], eax
	je	.label_1447
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1450
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
.label_1447:
	cmp	qword ptr [rsp + 0x130], 0
	jne	.label_1458
	cmp	dword ptr [rsp + 0x2c], ebx
	jne	.label_1286
	cmp	qword ptr [rsp + 0x128], 0
	jne	.label_1458
	mov	rax, qword ptr [rsp + 0x58]
	cmp	dword ptr [rsp + 0x30], eax
	je	.label_1458
.label_1286:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1468
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1265
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	eax, eax
	cmp	r13d, 0xfffff893
	setg	al
	lea	rcx, qword ptr [rax + label_1412]
	movsxd	rax, r13d
	imul	rax, rax, 0x51eb851f
	mov	rdx, rax
	shr	rdx, 0x3f
	sar	rax, 0x25
	lea	esi, [rax + rdx]
	lea	eax, [rax + rdx + 0x13]
	mov	ebp, 0xffffffed
	mov	r8d, 0xffffffed
	sub	r8d, esi
	test	eax, eax
	cmovns	r8d, eax
	imul	eax, esi, 0x64
	sub	r13d, eax
	mov	r9d, r13d
	neg	r9d
	cmovl	r9d, r13d
	lea	r13, [rsp + 0x80]
	mov	esi, 1
	mov	edx, 0xd
	xor	eax, eax
	mov	rdi, r13
	call	__sprintf_chk
	mov	rdx, qword ptr [rsp + 0x58]
	inc	edx
	xor	eax, eax
	mov	rdi, r12
	mov	rsi, r13
	mov	ecx, ebx
	call	dbg_printf
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1407
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax, dword ptr [rsp + 0x34]
	xor	ecx, ecx
	cmp	rax, -0x76d
	setg	cl
	lea	rcx, qword ptr [rcx + label_1412]
	imul	rdx, rax, 0x51eb851f
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x25
	lea	edi, [rdx + rsi]
	lea	edx, [rdx + rsi + 0x13]
	sub	ebp, edi
	test	edx, edx
	cmovns	ebp, edx
	imul	edx, edi, 0x64
	sub	eax, edx
	mov	r9d, eax
	neg	r9d
	cmovl	r9d, eax
	mov	esi, 1
	mov	edx, 0xd
	xor	eax, eax
	mov	rdi, r13
	mov	r8d, ebp
	call	__sprintf_chk
	mov	ecx, dword ptr [rsp + 0x2c]
	mov	edx, dword ptr [rsp + 0x30]
	inc	edx
	xor	eax, eax
	mov	rdi, rbx
	mov	rsi, r13
	call	dbg_printf
.label_1458:
	mov	r13, r14
	mov	rbx, qword ptr [rsp]
	mov	r12, qword ptr [rsp + 8]
.label_1332:
	cmp	qword ptr [rsp + 0x188], 0
	je	.label_1293
	movsxd	rax, dword ptr [rsp + 0xd0]
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	js	.label_1298
	lea	rsi, [r15 + 1]
	xor	rsi, rdx
	mov	ecx, 1
	cmp	rax, rsi
	jge	.label_1303
	jmp	.label_1309
.label_1298:
	lea	rsi, [rdx + r15]
	mov	ecx, 1
	cmp	rsi, rax
	jl	.label_1309
.label_1303:
	xor	ecx, ecx
.label_1309:
	sub	rax, rdx
	js	.label_1314
	lea	rsi, [r15 + 1]
	xor	rsi, rax
	mov	edx, 1
	cmp	r12, rsi
	jge	.label_1315
	jmp	.label_1321
.label_1314:
	lea	rsi, [rax + r15]
	mov	edx, 1
	cmp	rsi, r12
	jl	.label_1321
.label_1315:
	xor	edx, edx
.label_1321:
	or	edx, ecx
	je	.label_1324
	cmp	byte ptr [rsp + 0x191], 0
	je	.label_1326
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1333
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, dword ptr [rsp + 0xd0]
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	xor	ebp, ebp
	jmp	.label_1237
.label_1324:
	sub	r12, rax
.label_1293:
	cmp	byte ptr [rsp + 0x191], 0
	je	.label_1347
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1351
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rdi, [rsp + 0x220]
	lea	rcx, [rsp + 0x20]
	mov	esi, 0x64
	mov	edx, OFFSET FLAT:label_1264
	xor	r8d, r8d
	xor	r9d, r9d
	call	nstrftime
	mov	r14, rax
	cmp	r14d, 0x63
	jg	.label_1362
	mov	rax, qword ptr [rsp + 0x188]
	test	rax, rax
	je	.label_1362
	mov	qword ptr [rsp + 8], rbx
	mov	qword ptr [rsp + 0x10], r13
	movsxd	rbx, dword ptr [rsp + 0xd0]
	mov	r13d, 0x64
	sub	r13d, r14d
	mov	eax, ebx
	shr	eax, 0x1f
	imul	rbp, rbx, -0x6e5d4c3b
	shr	rbp, 0x20
	add	ebp, ebx
	mov	ecx, ebp
	shr	ecx, 0x1f
	sar	ebp, 0xb
	add	ebp, ecx
	mov	r9d, ebp
	neg	r9d
	cmp	rbx, -0xe10
	lea	r8d, [rax + rax + 0x2b]
	cmovg	r9d, ebp
	lea	rdi, [rsp + 0x80]
	mov	esi, 1
	mov	edx, 0x1b
	mov	ecx, OFFSET FLAT:label_87
	xor	eax, eax
	call	__sprintf_chk
	imul	edx, ebp, 0xe10
	mov	esi, ebx
	sub	esi, edx
	mov	ecx, esi
	neg	ecx
	cmovl	ecx, esi
	cmp	ebx, edx
	movsxd	rdx, r14d
	lea	rdi, [rsp + rdx + 0x220]
	movsxd	rsi, r13d
	je	.label_1401
	cdqe	
	lea	rax, [rsp + rax + 0x80]
	movsxd	r9, ecx
	imul	rdx, r9, -0x77777777
	shr	rdx, 0x20
	add	edx, r9d
	mov	ebp, edx
	shr	ebp, 0x1f
	sar	edx, 5
	add	edx, ebp
	imul	r8d, edx, 0x3c
	imul	rbx, r9, 0x1b4e81b5
	mov	r10, rbx
	shr	r10, 0x3f
	shr	rbx, 0x26
	movsxd	rdx, edx
	imul	rcx, rdx, 0x66666667
	mov	rbp, rcx
	shr	rbp, 0x3f
	sar	rcx, 0x22
	add	ecx, ebp
	add	ecx, ecx
	lea	ecx, [rcx + rcx*4]
	sub	edx, ecx
	add	edx, 0x30
	sub	r9d, r8d
	mov	byte ptr [rax], 0x3a
	lea	ecx, [rbx + r10 + 0x30]
	mov	byte ptr [rax + 1], cl
	mov	byte ptr [rax + 2], dl
	je	.label_1410
	mov	byte ptr [rax + 3], 0x3a
	movsxd	rcx, r9d
	imul	rcx, rcx, 0x66666667
	mov	rdx, rcx
	shr	rdx, 0x3f
	sar	rcx, 0x22
	lea	ebp, [rcx + rdx]
	lea	ecx, [rcx + rdx + 0x30]
	mov	byte ptr [rax + 4], cl
	add	ebp, ebp
	lea	ecx, [rbp + rbp*4]
	neg	ecx
	lea	ecx, [r9 + rcx + 0x30]
	mov	byte ptr [rax + 5], cl
	add	rax, 6
	jmp	.label_1373
.label_1410:
	add	rax, 3
.label_1373:
	mov	byte ptr [rax], 0
.label_1401:
	lea	r9, [rsp + 0x80]
	mov	edx, 1
	mov	rcx, -1
	mov	r8d, OFFSET FLAT:label_1330
	xor	eax, eax
	call	__snprintf_chk
	mov	r13, qword ptr [rsp + 0x10]
	mov	rbx, qword ptr [rsp + 8]
.label_1362:
	lea	rsi, [rsp + 0x220]
	xor	eax, eax
	mov	rdi, rbx
	mov	rdx, r12
	call	dbg_printf
.label_1347:
	movsxd	rdi, dword ptr [rsp + 0x150]
	mov	rsi, qword ptr [rsp + 0x118]
	add	rsi, rdi
	movabs	rbp, 0x112e0be826d694b3
	mov	rax, rsi
	imul	rbp
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 0x1a
	add	rdx, rax
	imul	rax, rdx, 0x3b9aca00
	mov	rcx, rsi
	sub	rcx, rax
	add	rcx, 0x3b9aca00
	mov	rax, rcx
	imul	rbp
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 0x1a
	add	rdx, rax
	imul	rax, rdx, 0x3b9aca00
	sub	rcx, rax
	sub	rsi, rcx
	mov	rax, rsi
	imul	rbp
	mov	rax, qword ptr [rsp + 0x138]
	test	rax, rax
	js	.label_1462
	movabs	rsi, 0x91a2b3c4d5e6f
	cmp	rax, rsi
	jle	.label_1494
	jmp	.label_1229
.label_1462:
	movabs	rsi, 0xfff6e5d4c3b2a191
	cmp	rax, rsi
	jl	.label_1229
.label_1494:
	imul	rbx, rax, 0xe10
	test	rbx, rbx
	js	.label_1236
	mov	rsi, r15
	sub	rsi, rbx
	cmp	rsi, r12
	jge	.label_1240
	jmp	.label_1229
.label_1236:
	lea	rsi, [r15 + 1]
	sub	rsi, rbx
	cmp	r12, rsi
	jl	.label_1229
.label_1240:
	mov	qword ptr [rsp + 0x10], r13
	mov	rsi, qword ptr [rsp + 0x140]
	test	rsi, rsi
	js	.label_1247
	movabs	rbp, 0x222222222222222
	cmp	rsi, rbp
	mov	r13, qword ptr [rsp + 0x10]
	jle	.label_1252
	jmp	.label_1229
.label_1247:
	movabs	rbp, 0xfdddddddddddddde
	cmp	rsi, rbp
	mov	r13, qword ptr [rsp + 0x10]
	jl	.label_1229
.label_1252:
	add	rbx, r12
	imul	r14, rsi, 0x3c
	test	r14, r14
	js	.label_1263
	mov	rbp, r15
	sub	rbp, r14
	cmp	rbp, rbx
	jmp	.label_1375
.label_1263:
	lea	rbp, [r15 + 1]
	sub	rbp, r14
	cmp	rbx, rbp
.label_1375:
	mov	r13, qword ptr [rsp + 0x10]
	jl	.label_1229
	add	r14, rbx
	mov	rbx, qword ptr [rsp + 0x148]
	test	rbx, rbx
	js	.label_1274
	mov	rbp, r15
	sub	rbp, rbx
	cmp	rbp, r14
	jmp	.label_1281
.label_1274:
	lea	rbp, [r15 + 1]
	sub	rbp, rbx
	cmp	r14, rbp
.label_1281:
	mov	r13, qword ptr [rsp + 0x10]
	jl	.label_1229
	mov	rbp, rdx
	shr	rbp, 0x3f
	sar	rdx, 0x1a
	add	rdx, rbp
	add	r14, rbx
	movsxd	rdx, edx
	test	edx, edx
	js	.label_1325
	sub	r15, rdx
	cmp	r15, r14
	jmp	.label_1297
.label_1325:
	inc	r15
	sub	r15, rdx
	cmp	r14, r15
.label_1297:
	mov	r13, qword ptr [rsp + 0x10]
	jge	.label_1300
.label_1229:
	cmp	byte ptr [rsp + 0x191], 0
	je	.label_1288
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1308
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	jmp	.label_1288
.label_1300:
	add	r14, rdx
	mov	rdx, qword ptr [rsp + 0x68]
	mov	qword ptr [rdx], r14
	mov	qword ptr [rdx + 8], rcx
	cmp	byte ptr [rsp + 0x191], 0
	je	.label_1327
	or	rsi, rax
	or	rsi, rbx
	or	rsi, rdi
	je	.label_1327
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1368
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, qword ptr [rsp + 0x138]
	mov	rdx, qword ptr [rsp + 0x140]
	mov	rcx, qword ptr [rsp + 0x148]
	mov	r8d, dword ptr [rsp + 0x150]
	xor	eax, eax
	call	dbg_printf
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1366
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	mov	rsi, r14
	call	dbg_printf
	cmp	dword ptr [rsp + 0x40], -1
	je	.label_1327
	lea	rdx, [rsp + 0x80]
	mov	rdi, qword ptr [rsp]
	mov	rsi, qword ptr [rsp + 0x68]
	call	localtime_rz
	test	rax, rax
	je	.label_1327
	mov	eax, dword ptr [rsp + 0x40]
	cmp	eax, dword ptr [rsp + 0xa0]
	je	.label_1327
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1492
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
.label_1327:
	mov	r13, qword ptr [rsp + 0x10]
	mov	rbx, qword ptr [rsp]
	mov	r12, qword ptr [rsp + 0x68]
	jmp	.label_1377
.label_1391:
	add	rax, 3
.label_1420:
	mov	byte ptr [rax], 0
.label_1382:
	lea	r9, [rsp + 0x80]
	mov	edx, 1
	mov	rcx, -1
	mov	r8d, OFFSET FLAT:label_1330
	xor	eax, eax
	call	__snprintf_chk
.label_1355:
	lea	rsi, [rsp + 0x220]
	xor	eax, eax
	mov	rdi, r13
	call	dbg_printf
	mov	r13, r14
	mov	rbx, qword ptr [rsp]
.label_1326:
	xor	ebp, ebp
	jmp	.label_1237
	.section	.text
	.align	16
	#Procedure 0x40f676
	.globl sub_40f676
	.type sub_40f676, @function
sub_40f676:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f680

	.globl nstrftime
	.type nstrftime, @function
nstrftime:
	push	rax
	mov	eax, r9d
	mov	r10, r8
	sub	rsp, 8
	mov	r8d, 0
	mov	r9d, 0
	push	rax
	push	r10
	push	-1
	call	__strftime_internal_0
	add	rsp, 0x20
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f6a7
	.globl sub_40f6a7
	.type sub_40f6a7, @function
sub_40f6a7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f6b0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xd8
	mov	rbx, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_20
	call	setlocale
	mov	edi, OFFSET FLAT:label_1502
	mov	esi, OFFSET FLAT:label_1503
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_1502
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	xor	r12d, r12d
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	xor	r14d, r14d
	xor	r13d, r13d
	xor	r15d, r15d
	jmp	.label_1495
.label_1753:
	mov	r14b, 1
	mov	r13, qword ptr [rip + optarg]
	nop	word ptr cs:[rax + rax]
.label_1495:
	mov	edx, OFFSET FLAT:short_options
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, rbx
	call	getopt_long
	cmp	eax, 0x48
	jle	.label_1499
	add	eax, -0x49
	cmp	eax, 0x38
	ja	.label_1512
	mov	ecx, OFFSET FLAT:rfc_email_format
	jmp	qword ptr [(rax * 8) + label_1516]
.label_1930:
	mov	rsi, qword ptr [rip + optarg]
	xor	eax, eax
	test	rsi, rsi
	je	.label_1553
	mov	r9, qword ptr [rip + argmatch_die]
	mov	edi, OFFSET FLAT:label_1538
	mov	edx, OFFSET FLAT:time_spec_string
	mov	ecx, OFFSET FLAT:time_spec
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax, dword ptr [(rax * 4) + time_spec]
.label_1553:
	mov	eax, eax
	shl	rax, 5
	lea	rcx, qword ptr [rax + main.iso_8601_format]
	jmp	.label_1530
.label_1932:
	mov	r15, qword ptr [rip + optarg]
	jmp	.label_1495
.label_1933:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rsp + 0x20], rax
	jmp	.label_1495
.label_1752:
	mov	r12, qword ptr [rip + optarg]
	jmp	.label_1495
.label_1754:
	mov	edi, OFFSET FLAT:label_1543
	call	putenv
	test	eax, eax
	je	.label_1495
	jmp	.label_1548
.label_1755:
	mov	rsi, qword ptr [rip + optarg]
	mov	r9, qword ptr [rip + argmatch_die]
	mov	edi, OFFSET FLAT:label_1551
	mov	edx, OFFSET FLAT:label_1552
	mov	ecx, OFFSET FLAT:label_1500
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax, dword ptr [(rax * 4) + label_1500]
	shl	rax, 5
	lea	rcx, qword ptr [rax + main.rfc_3339_format]
.label_1530:
	test	rcx, rcx
	je	.label_1495
.label_1931:
	cmp	qword ptr [rsp + 8], 0
	mov	qword ptr [rsp + 8], rcx
	je	.label_1495
	jmp	.label_1509
.label_1756:
	or	byte ptr [rip + parse_datetime_flags],  1
	jmp	.label_1495
.label_1499:
	cmp	eax, -1
	jne	.label_1514
	xor	eax, eax
	mov	qword ptr [rsp + 0x40], r15
	test	r15, r15
	setne	al
	xor	r15d, r15d
	test	r12, r12
	setne	r15b
	cmp	qword ptr [rsp + 0x20], 1
	sbb	r15d, -1
	add	r15d, eax
	cmp	r15d, 2
	jae	.label_1515
	test	r14b, r14b
	je	.label_1525
	test	r15d, r15d
	jne	.label_1528
.label_1525:
	movsxd	rcx, dword ptr [rip + optind]
	cmp	ecx, ebp
	mov	qword ptr [rsp + 0x28], r14
	mov	qword ptr [rsp + 0x38], r13
	jge	.label_1526
	lea	eax, [rcx + 1]
	cmp	eax, ebp
	jl	.label_1532
	mov	rcx, qword ptr [rbx + rcx*8]
	cmp	byte ptr [rcx], 0x2b
	jne	.label_1533
	cmp	qword ptr [rsp + 8], 0
	jne	.label_1509
	mov	r14, r12
	mov	dword ptr [rip + optind],  eax
	inc	rcx
	jmp	.label_1541
.label_1533:
	test	r14b, r14b
	jne	.label_1545
	test	r15d, r15d
	jne	.label_1545
.label_1526:
	mov	r14, r12
	cmp	qword ptr [rsp + 8], 0
	jne	.label_1522
	mov	edi, 0x2006c
	call	rpl_nl_langinfo
	cmp	byte ptr [rax], 0
	mov	ecx, OFFSET FLAT:label_1496
	cmovne	rcx, rax
.label_1541:
	mov	qword ptr [rsp + 8], rcx
.label_1522:
	mov	edi, OFFSET FLAT:label_128
	call	getenv
	mov	r13, rax
	mov	rdi, r13
	call	tzalloc
	mov	r12, rax
	mov	rdi, qword ptr [rsp + 0x20]
	test	rdi, rdi
	je	.label_1549
	cmp	byte ptr [rdi], 0x2d
	jne	.label_1506
	cmp	byte ptr [rdi + 1], 0
	je	.label_1508
.label_1506:
	mov	esi, OFFSET FLAT:label_1511
	call	fopen
	mov	rbx, rax
	test	rbx, rbx
	je	.label_1513
.label_1550:
	mov	qword ptr [rsp + 0x10], 0
	mov	qword ptr [rsp + 0x30], 0
	lea	rdi, [rsp + 0x10]
	lea	rsi, [rsp + 0x30]
	mov	edx, 0xa
	mov	rcx, rbx
	call	__getdelim
	mov	rbp, rax
	mov	r14b, 1
	test	rbp, rbp
	js	.label_1524
	mov	r14b, 1
	lea	r15, [rsp + 0x30]
	nop	dword ptr [rax]
.label_1510:
	mov	rsi, qword ptr [rsp + 0x10]
	mov	ecx, dword ptr [rip + parse_datetime_flags]
	xor	edx, edx
	lea	rdi, [rsp + 0x48]
	mov	r8, r12
	mov	r9, r13
	call	parse_datetime2
	test	al, al
	je	.label_1534
	mov	rsi, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0x50]
	mov	rdi, qword ptr [rsp + 8]
	mov	rcx, r12
	call	show_date
	and	al, r14b
	mov	r14b, al
	jmp	.label_1544
.label_1534:
	mov	rax, qword ptr [rsp + 0x10]
	cmp	byte ptr [rax + rbp - 1], 0xa
	jne	.label_1542
	mov	byte ptr [rax + rbp - 1], 0
.label_1542:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1531
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, qword ptr [rsp + 0x10]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
.label_1544:
	mov	edx, 0xa
	lea	rdi, [rsp + 0x10]
	mov	rsi, r15
	mov	rcx, rbx
	call	__getdelim
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_1510
.label_1524:
	mov	rdi, rbx
	call	rpl_fclose
	cmp	eax, -1
	je	.label_1513
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	movzx	eax, r14b
	jmp	.label_1517
.label_1549:
	mov	rax, qword ptr [rsp + 0x28]
	test	al, al
	jne	.label_1520
	test	r15d, r15d
	jne	.label_1520
	movsxd	rax, dword ptr [rip + optind]
	cmp	eax, ebp
	jge	.label_1523
	mov	rbp, qword ptr [rbx + rax*8]
	lea	rdi, [rsp + 0x10]
	mov	edx, 7
	mov	rsi, rbp
	call	posixtime
	mov	qword ptr [rsp + 0x18], 0
	test	al, al
	jne	.label_1527
	jmp	.label_1507
.label_1520:
	test	r14, r14
	je	.label_1547
	lea	rdx, [rsp + 0x48]
	mov	edi, 1
	mov	rsi, r14
	call	__xstat
	test	eax, eax
	jne	.label_1537
	movups	xmm0, xmmword ptr [rsp + 0xa0]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	jmp	.label_1539
.label_1508:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1546
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0x20], rax
	mov	rbx, qword ptr [rip + stdin]
	jmp	.label_1550
.label_1523:
	lea	rdi, [rsp + 0x10]
	call	gettime
.label_1539:
	mov	rax, qword ptr [rsp + 0x28]
	jmp	.label_1501
.label_1547:
	mov	rax, qword ptr [rsp + 0x38]
	test	rax, rax
	mov	rbp, qword ptr [rsp + 0x40]
	cmovne	rbp, rax
	mov	ecx, dword ptr [rip + parse_datetime_flags]
	lea	rdi, [rsp + 0x10]
	xor	edx, edx
	mov	rsi, rbp
	mov	r8, r12
	mov	r9, r13
	call	parse_datetime2
	test	al, al
	mov	rax, qword ptr [rsp + 0x28]
	je	.label_1507
.label_1501:
	mov	ebp, 1
	test	al, al
	je	.label_1505
.label_1527:
	lea	rdi, [rsp + 0x10]
	call	settime
	mov	ebp, 1
	test	eax, eax
	je	.label_1505
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1498
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_1505:
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 8]
	mov	rcx, r12
	call	show_date
	movzx	eax, al
	and	eax, ebp
.label_1517:
	not	eax
	and	eax, 1
	add	rsp, 0xd8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1514:
	cmp	eax, 0xffffff7d
	je	.label_1536
	cmp	eax, 0xffffff7e
	jne	.label_1512
	xor	edi, edi
	call	usage
.label_1536:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_354
	mov	edx, OFFSET FLAT:label_373
	mov	r8d, OFFSET FLAT:label_1554
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_1512:
	mov	edi, 1
	call	usage
.label_1509:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1497
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_1513:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x20]
.label_1540:
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_394
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_1548:
	call	xalloc_die
.label_1515:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1518
	jmp	.label_1519
.label_1528:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1521
.label_1519:
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
.label_1532:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1529
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [rbx + rax*8 + 8]
	jmp	.label_1504
.label_1545:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1535
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [rbx + rax*8]
.label_1504:
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	mov	edi, 1
	call	usage
.label_1507:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1531
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, rbp
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_1537:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	jmp	.label_1540
	.section	.text
	.align	16
	#Procedure 0x40fd43
	.globl sub_40fd43
	.type sub_40fd43, @function
sub_40fd43:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40fd50
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_1559
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_1558
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_1555
.label_1557:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_1556
	test	rax, rax
	je	.label_1558
.label_1556:
	pop	rbx
	ret	
.label_1558:
	call	xalloc_die
.label_1559:
	test	rcx, rcx
	jne	.label_1561
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_1561:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_1560
.label_1555:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_1557
	test	rbx, rbx
	jne	.label_1557
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_1560:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40fde7
	.globl sub_40fde7
	.type sub_40fde7, @function
sub_40fde7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40fdf0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_1562
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_1563
	test	rbx, rbx
	jne	.label_1563
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_1563:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_1564
	test	rax, rax
	je	.label_1562
.label_1564:
	pop	rbx
	ret	
.label_1562:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40fe38
	.globl sub_40fe38
	.type sub_40fe38, @function
sub_40fe38:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40fea5
	.globl sub_40fea5
	.type sub_40fea5, @function
sub_40fea5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40feb2
	.globl sub_40feb2
	.type sub_40feb2, @function
sub_40feb2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40fed6
	.globl sub_40fed6
	.type sub_40fed6, @function
sub_40fed6:

	nop	word ptr cs:[rax + rax]
