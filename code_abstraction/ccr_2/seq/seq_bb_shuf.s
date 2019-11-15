	.section	.text
	.align	32
	#Procedure 0x4016a9
	.globl sub_4016a9
	.type sub_4016a9, @function
sub_4016a9:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x4016aa
	.globl sub_4016aa
	.type sub_4016aa, @function
sub_4016aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4016e2
	.globl sub_4016e2
	.type sub_4016e2, @function
sub_4016e2:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40172a
	.globl sub_40172a
	.type sub_40172a, @function
sub_40172a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40174c
	.globl sub_40174c
	.type sub_40174c, @function
sub_40174c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40175d
	.globl sub_40175d
	.type sub_40175d, @function
sub_40175d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401776
	.globl sub_401776
	.type sub_401776, @function
sub_401776:

	nop	word ptr cs:[rax + rax]
.label_13:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_9
	mov	eax, OFFSET FLAT:label_10
	jmp	.label_11
	.section	.text
	.align	32
	#Procedure 0x40178f
	.globl sub_40178f
	.type sub_40178f, @function
sub_40178f:

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
	#Procedure 0x4017e2

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
	#Procedure 0x401850
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
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x4018c4
	.globl sub_4018c4
	.type sub_4018c4, @function
sub_4018c4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4018d0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
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
	je	.label_27
	test	r15, r15
	je	.label_26
.label_27:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_26:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401922
	.globl sub_401922
	.type sub_401922, @function
sub_401922:

	nop	word ptr cs:[rax + rax]
.label_30:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_28
	test	rax, rax
	je	.label_29
.label_28:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401944

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_30
	test	rbx, rbx
	jne	.label_30
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_29:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401960
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_31
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_34
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_35
	call	free
	xor	eax, eax
	jmp	.label_32
.label_31:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_33
	mov	qword ptr [rsi], rbx
.label_35:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_32
	test	rax, rax
	je	.label_33
.label_32:
	pop	rbx
	ret	
.label_33:
	call	xalloc_die
.label_34:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4019c4
	.globl sub_4019c4
	.type sub_4019c4, @function
sub_4019c4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4019d0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_36]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_37]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_38]
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
	#Procedure 0x401a25
	.globl sub_401a25
	.type sub_401a25, @function
sub_401a25:

	nop	word ptr cs:[rax + rax]
.label_39:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401a35
	.globl sub_401a35
	.type sub_401a35, @function
sub_401a35:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401a3b

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
	.section	.text
	.align	32
	#Procedure 0x401a50
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_36]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_37]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_38]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_41
	test	rsi, rsi
	je	.label_41
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_41:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401ac0

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
	je	.label_42
	cmp	r15, -2
	jb	.label_42
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_42
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_42:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x401b16
	.globl sub_401b16
	.type sub_401b16, @function
sub_401b16:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b20

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_43
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_43
	test	byte ptr [rbx + 1], 1
	je	.label_43
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_43:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x401b53
	.globl sub_401b53
	.type sub_401b53, @function
sub_401b53:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b60

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_44
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_45
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401b90

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_46
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_48
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_46
.label_48:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_46
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_47
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_47:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_46:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x401c04
	.globl sub_401c04
	.type sub_401c04, @function
sub_401c04:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c10
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
	#Procedure 0x401c28
	.globl sub_401c28
	.type sub_401c28, @function
sub_401c28:

	nop	dword ptr [rax + rax]
.label_53:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_49
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
	mov	edi, 1
	call	usage
	.section	.text
	.align	32
	#Procedure 0x401c67

	.globl scan_arg
	.type scan_arg, @function
scan_arg:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	rbx, rsi
	mov	r14, rdi
	lea	rdx, [rsp + 0x10]
	xor	esi, esi
	mov	ecx, OFFSET FLAT:cl_strtold
	mov	rdi, rbx
	call	xstrtold
	test	al, al
	je	.label_53
	fld	xword ptr [rsp + 0x10]
	fld	st(0)
	fstp	xword ptr [rsp]
	fucomip	st(0)
	jp	.label_56
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	dec	rbx
	nop	dword ptr [rax]
.label_61:
	movzx	edx, byte ptr [rbx + 1]
	inc	rbx
	movzx	ecx, word ptr [rax + rdx*2]
	and	ecx, 0x2000
	cmp	rdx, 0x2b
	je	.label_61
	test	cx, cx
	jne	.label_61
	mov	qword ptr [rsp + 0x20], 0
	mov	dword ptr [rsp + 0x28], 0x7fffffff
	mov	esi, 0x2e
	mov	rdi, rbx
	call	strchr
	mov	r15, rax
	test	r15, r15
	jne	.label_52
	mov	esi, 0x70
	mov	rdi, rbx
	call	strchr
	test	rax, rax
	jne	.label_52
	mov	dword ptr [rsp + 0x28], 0
.label_52:
	mov	rax, rbx
	nop	
.label_57:
	movsx	ecx, byte ptr [rax]
	test	ecx, ecx
	je	.label_55
	inc	rax
	or	ecx, 0x20
	cmp	ecx, 0x78
	jne	.label_57
	jmp	.label_50
.label_56:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_60
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_63
	call	quote_n
	mov	r15, rax
	mov	edi, 1
	mov	rsi, rbx
	call	quote_n
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, r15
	mov	r8, rbx
	call	error
	mov	edi, 1
	call	usage
	.section	.text
	.align	32
	#Procedure 0x401d7f
	.globl sub_401d7f
	.type sub_401d7f, @function
sub_401d7f:

	nop	dword ptr [rax + rax]
.label_55:
	fldz	
	fld	xword ptr [rsp]
	fmul	st(1)
	fucomip	st(1)
	fstp	st(0)
	jne	.label_50
	jp	.label_50
	mov	rdi, rbx
	call	strlen
	mov	qword ptr [rsp + 0x20], rax
	xor	ebp, ebp
	test	r15, r15
	je	.label_58
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_65:
	mov	rbp, rcx
	movsx	edx, byte ptr [r15 + rbp + 1]
	test	edx, edx
	je	.label_51
	lea	rcx, [rbp + 1]
	or	edx, 0x20
	cmp	edx, 0x65
	jne	.label_65
.label_51:
	cmp	rbp, 0x7fffffff
	ja	.label_68
	mov	dword ptr [rsp + 0x28], ebp
	mov	rcx, -1
	test	rbp, rbp
	je	.label_69
.label_68:
	mov	cl, 1
	cmp	r15, rbx
	je	.label_70
	movsx	ecx, byte ptr [r15 - 1]
	add	ecx, -0x30
	cmp	ecx, 9
	seta	cl
.label_70:
	movzx	ecx, cl
.label_69:
	add	rax, rcx
	mov	qword ptr [rsp + 0x20], rax
.label_58:
	mov	esi, 0x65
	mov	rdi, rbx
	call	strchr
	mov	r13, rax
	test	r13, r13
	jne	.label_62
	mov	esi, 0x45
	mov	rdi, rbx
	call	strchr
	mov	r13, rax
	test	r13, r13
	je	.label_50
.label_62:
	mov	qword ptr [rsp], r14
	lea	rdi, [r13 + 1]
	xor	esi, esi
	mov	edx, 0xa
	call	strtol
	mov	r12, rax
	test	r12, r12
	movsxd	r14, dword ptr [rsp + 0x28]
	js	.label_67
	cmp	r14, r12
	mov	rax, r12
	cmovle	rax, r14
.label_67:
	sub	r14d, eax
	mov	dword ptr [rsp + 0x28], r14d
	mov	rdi, rbx
	call	strlen
	mov	rcx, r13
	sub	rcx, rbx
	sub	rcx, rax
	add	rcx, qword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 0x20], rcx
	test	r12, r12
	js	.label_71
	test	r15, r15
	je	.label_54
	test	rbp, rbp
	je	.label_54
	test	r14d, r14d
	jne	.label_54
	dec	rcx
	mov	qword ptr [rsp + 0x20], rcx
.label_54:
	mov	r14, qword ptr [rsp]
	cmp	rbp, r12
	cmovae	rbp, r12
	sub	r12, rbp
	jmp	.label_59
.label_71:
	test	r15, r15
	mov	r14, qword ptr [rsp]
	je	.label_66
	inc	r15
	cmp	r13, r15
	jne	.label_64
.label_66:
	inc	rcx
	mov	qword ptr [rsp + 0x20], rcx
.label_64:
	neg	r12
.label_59:
	add	rcx, r12
	mov	qword ptr [rsp + 0x20], rcx
.label_50:
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	movaps	xmm1, xmmword ptr [rsp + 0x20]
	movaps	xmmword ptr [r14 + 0x10], xmm1
	movaps	xmmword ptr [r14], xmm0
	mov	rax, r14
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401f00

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
	#Procedure 0x401f17
	.globl sub_401f17
	.type sub_401f17, @function
sub_401f17:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401f20

	.globl seq_fast
	.type seq_fast, @function
seq_fast:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r15, rsi
	mov	rbp, rdi
	movzx	eax, byte ptr [r15]
	mov	ebx, 0x69
	sub	ebx, eax
	jne	.label_83
	movzx	ecx, byte ptr [r15 + 1]
	mov	ebx, 0x6e
	sub	ebx, ecx
	jne	.label_83
	movzx	ecx, byte ptr [r15 + 2]
	mov	ebx, 0x66
	sub	ebx, ecx
	jne	.label_83
	movzx	ebx, byte ptr [r15 + 3]
	neg	ebx
.label_83:
	xor	ecx, ecx
	jmp	.label_89
	.section	.text
	.align	32
	#Procedure 0x401f68
	.globl sub_401f68
	.type sub_401f68, @function
sub_401f68:

	nop	dword ptr [rax + rax]
.label_92:
	inc	rcx
.label_89:
	movzx	edx, byte ptr [rbp + rcx]
	cmp	dl, 0x30
	je	.label_92
	test	dl, dl
	jne	.label_94
	lea	rdx, [rbp + rcx]
	test	rcx, rcx
	lea	rbp, [rbp + rcx - 1]
	cmove	rbp, rdx
	jmp	.label_72
.label_94:
	add	rbp, rcx
.label_72:
	xor	ecx, ecx
	jmp	.label_75
	.section	.text
	.align	32
	#Procedure 0x401f9b
	.globl sub_401f9b
	.type sub_401f9b, @function
sub_401f9b:

	nop	dword ptr [rax + rax]
.label_77:
	mov	al, byte ptr [r15 + rcx + 1]
	inc	rcx
.label_75:
	cmp	al, 0x30
	je	.label_77
	test	al, al
	jne	.label_79
	lea	rax, [r15 + rcx]
	test	rcx, rcx
	lea	r15, [r15 + rcx - 1]
	cmove	r15, rax
	jmp	.label_80
.label_79:
	add	r15, rcx
.label_80:
	mov	rdi, rbp
	call	strlen
	mov	r13, rax
	xor	eax, eax
	mov	dword ptr [rsp + 4], ebx
	test	ebx, ebx
	je	.label_85
	mov	rdi, r15
	call	strlen
.label_85:
	lea	r12, [r13 + 1]
	cmp	r12, rax
	mov	qword ptr [rsp + 0x28], rax
	cmova	rax, r12
	cmp	rax, 0x1f
	mov	r14d, 0x1f
	cmova	r14, rax
	lea	rdi, [r14 + 1]
	mov	qword ptr [rsp + 8], rdi
	call	xmalloc
	mov	qword ptr [rsp + 0x20], rax
	lea	rbx, [rax + r14]
	sub	rbx, r13
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, r12
	call	memcpy
	mov	rdi, qword ptr [rsp + 8]
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	mov	r12d, dword ptr [rsp + 4]
	test	r12d, r12d
	mov	ebp, 0
	je	.label_90
	call	xmalloc
	mov	qword ptr [rsp + 0x10], rax
	mov	rdi, rax
	add	rdi, r14
	mov	rbp, qword ptr [rsp + 0x28]
	sub	rdi, rbp
	lea	rdx, [rbp + 1]
	mov	rax, rdi
	mov	qword ptr [rsp + 0x18], rax
	mov	rsi, r15
	call	memcpy
	cmp	r13, rbp
	jae	.label_91
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, qword ptr [rsp + 0x10]
.label_90:
	mov	qword ptr [rsp + 0x10], rbp
	add	rdi, rdi
	cmp	rdi, 0x2000
	mov	ebp, 0x2000
	cmovae	rbp, rdi
	mov	rdi, rbp
	call	xmalloc
	mov	r15, rax
	mov	qword ptr [rsp + 0x30], rbp
	lea	rax, [r15 + rbp]
	mov	qword ptr [rsp + 8], rax
	mov	rcx, -1
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r13
	call	__mempcpy_chk
	mov	rbp, rax
	nop	dword ptr [rax + rax]
.label_78:
	test	r12d, r12d
	je	.label_86
	cmp	r13, qword ptr [rsp + 0x28]
	jb	.label_86
	cmp	qword ptr [rsp + 0x28], r13
	jb	.label_88
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0x18]
	call	strcmp
	test	eax, eax
	jns	.label_88
.label_86:
	mov	rax, qword ptr [rip + separator]
	mov	al, byte ptr [rax]
	mov	byte ptr [rbp], al
	inc	rbp
	lea	rax, [rbx + r13 - 1]
.label_82:
	movzx	ecx, byte ptr [rax]
	mov	edx, ecx
	inc	dl
	mov	byte ptr [rax], dl
	cmp	cl, 0x39
	jl	.label_74
	mov	byte ptr [rax], 0x30
	dec	rax
	cmp	rax, rbx
	jae	.label_82
	mov	byte ptr [rbx - 1], 0x31
	dec	rbx
	inc	r13
.label_74:
	cmp	r13, r14
	jne	.label_81
	lea	rsi, [r14 + r14 + 1]
	mov	rdi, qword ptr [rsp + 0x20]
	call	xrealloc
	lea	rbx, [rax + r14]
	lea	rdx, [r14 + 1]
	lea	r14, [r14 + r14]
	mov	rdi, rbx
	mov	qword ptr [rsp + 0x20], rax
	mov	rsi, rax
	call	memmove
	lea	r12, [r14 + r14 + 2]
	cmp	qword ptr [rsp + 0x30], r12
	jae	.label_87
	sub	rbp, r15
	mov	rdi, r15
	mov	rsi, r12
	call	xrealloc
	mov	r15, rax
	add	rbp, r15
	lea	rax, [r15 + r12]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x30], r12
.label_87:
	mov	r12d, dword ptr [rsp + 4]
.label_81:
	mov	rcx, -1
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, r13
	call	__mempcpy_chk
	mov	rbp, rax
	mov	rax, r13
	not	rax
	add	rax, qword ptr [rsp + 8]
	cmp	rax, rbp
	jae	.label_78
	sub	rbp, r15
	mov	rcx, qword ptr [rip + stdout]
	mov	edx, 1
	mov	rdi, r15
	mov	rsi, rbp
	call	fwrite_unlocked
	cmp	rax, 1
	mov	rbp, r15
	je	.label_78
	call	io_error
.label_88:
	mov	byte ptr [rbp], 0xa
	inc	rbp
	sub	rbp, r15
	mov	rcx, qword ptr [rip + stdout]
	mov	edx, 1
	mov	rdi, r15
	mov	rsi, rbp
	call	fwrite_unlocked
	mov	bl, 1
	cmp	rax, 1
	mov	rbp, qword ptr [rsp + 0x10]
	jne	.label_73
.label_84:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	rdi, rbp
	call	free
	mov	eax, ebx
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_91:
	cmp	rbp, r13
	jae	.label_93
	xor	ebx, ebx
	mov	rbp, qword ptr [rsp + 0x10]
	jmp	.label_84
.label_93:
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0x18]
	call	strcmp
	test	eax, eax
	mov	rbp, qword ptr [rsp + 0x10]
	jle	.label_76
	xor	ebx, ebx
	jmp	.label_84
.label_76:
	mov	rdi, qword ptr [rsp + 8]
	jmp	.label_90
.label_73:
	call	io_error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402280
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_95
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_97:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_97
.label_95:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_99
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_98], OFFSET FLAT:slot0
.label_99:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_96
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_96:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x402311
	.globl sub_402311
	.type sub_402311, @function
sub_402311:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402320
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
	je	.label_100
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
.label_100:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402388
	.globl sub_402388
	.type sub_402388, @function
sub_402388:

	nop	dword ptr [rax + rax]
.label_103:
	fstp	st(0)
	mov	dword ptr [r15], ebp
	fld	xword ptr [rsp + 0x14]
.label_102:
	test	r14, r14
	je	.label_101
	mov	qword ptr [r14], r12
.label_101:
	add	rsp, 0x20
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4023ae
	.globl sub_4023ae
	.type sub_4023ae, @function
sub_4023ae:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4023bb

	.globl cl_strtold
	.type cl_strtold, @function
cl_strtold:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x20
	mov	r14, rsi
	mov	rbx, rdi
	lea	rsi, [rsp]
	call	strtold
	mov	r12, qword ptr [rsp]
	cmp	byte ptr [r12], 0
	je	.label_102
	fstp	xword ptr [rsp + 0x14]
	call	__errno_location
	mov	r15, rax
	mov	ebp, dword ptr [r15]
	lea	rsi, [rsp + 8]
	mov	rdi, rbx
	call	c_strtold
	mov	rax, qword ptr [rsp + 8]
	cmp	r12, rax
	jae	.label_103
	mov	qword ptr [rsp], rax
	mov	r12, rax
	jmp	.label_102
	.section	.text
	.align	32
	#Procedure 0x402410
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_36]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_37]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_38]
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
	#Procedure 0x402464
	.globl sub_402464
	.type sub_402464, @function
sub_402464:

	nop	word ptr cs:[rax + rax]
.label_108:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x40247b

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_106
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_104
	cmp	dword ptr [rbp], 0x20
	jne	.label_104
.label_106:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_108
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_104:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_109
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_107
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_45
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_107:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_105
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
	#Procedure 0x402530

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_110
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_111
	cmovne	rax, rcx
	pop	rcx
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
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x402568
	.globl sub_402568
	.type sub_402568, @function
sub_402568:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402570
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40257a
	.globl sub_40257a
	.type sub_40257a, @function
sub_40257a:

	nop	word ptr [rax + rax]
.label_112:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402585
	.globl sub_402585
	.type sub_402585, @function
sub_402585:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40258f
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
	#Procedure 0x4025b0
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
	je	.label_114
	test	r14, r14
	je	.label_113
.label_114:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_113:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4025e6
	.globl sub_4025e6
	.type sub_4025e6, @function
sub_4025e6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4025f0

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
	#Procedure 0x402609
	.globl sub_402609
	.type sub_402609, @function
sub_402609:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402610

	.globl c_strtold
	.type c_strtold, @function
c_strtold:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x18
	mov	r15, rsi
	mov	r14, rdi
	cmp	qword ptr [rip + c_locale_cache],  0
	jne	.label_118
	mov	edi, 0x1fbf
	mov	esi, OFFSET FLAT:label_116
	xor	edx, edx
	call	newlocale
	mov	qword ptr [rip + c_locale_cache],  rax
.label_118:
	mov	rdi, qword ptr [rip + c_locale_cache]
	test	rdi, rdi
	je	.label_115
	call	uselocale
	mov	rbx, rax
	test	rbx, rbx
	je	.label_115
	mov	rdi, r14
	mov	rsi, r15
	call	strtold
	fstp	xword ptr [rsp + 0xc]
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	uselocale
	test	rax, rax
	je	.label_119
	mov	dword ptr [r14], ebp
	fld	xword ptr [rsp + 0xc]
	jmp	.label_117
.label_115:
	fldz	
	test	r15, r15
	je	.label_117
	mov	qword ptr [r15], r14
.label_117:
	add	rsp, 0x18
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_119:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4026a5
	.globl sub_4026a5
	.type sub_4026a5, @function
sub_4026a5:

	nop	word ptr cs:[rax + rax]
.label_120:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4026b5
	.globl sub_4026b5
	.type sub_4026b5, @function
sub_4026b5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4026c0
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
	je	.label_120
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
	#Procedure 0x402750

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_122
	cmp	byte ptr [rax], 0x43
	jne	.label_124
	cmp	byte ptr [rax + 1], 0
	je	.label_121
.label_124:
	mov	esi, OFFSET FLAT:label_123
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_122
.label_121:
	xor	ebx, ebx
.label_122:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402781
	.globl sub_402781
	.type sub_402781, @function
sub_402781:

	nop	word ptr cs:[rax + rax]
.label_125:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402795
	.globl sub_402795
	.type sub_402795, @function
sub_402795:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40279b
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_36]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_37]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_38]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_125
	test	rdx, rdx
	je	.label_125
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
	#Procedure 0x402800
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
	#Procedure 0x402818
	.globl sub_402818
	.type sub_402818, @function
sub_402818:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402820

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
	jne	.label_126
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_126
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_127
.label_126:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_127:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_128
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_128:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40288e
	.globl sub_40288e
	.type sub_40288e, @function
sub_40288e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402890
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
	#Procedure 0x402905
	.globl sub_402905
	.type sub_402905, @function
sub_402905:

	nop	word ptr cs:[rax + rax]
.label_129:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402915
	.globl sub_402915
	.type sub_402915, @function
sub_402915:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40291b
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_130
	test	rax, rax
	je	.label_129
.label_130:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402930

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
	je	.label_146
	mov	edx, OFFSET FLAT:label_136
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_143
.label_146:
	mov	edx, OFFSET FLAT:label_144
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_143:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_149
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
	mov	esi, OFFSET FLAT:label_145
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_132
	jmp	qword ptr [(r12 * 8) + label_133]
.label_438:
	add	rsp, 8
	jmp	.label_131
.label_132:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_140
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
	jmp	.label_131
.label_439:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_141
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
.label_440:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_148
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
.label_441:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_138
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
.label_442:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_134
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
	jmp	.label_131
.label_443:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_137
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
	jmp	.label_131
.label_444:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_135
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
	jmp	.label_131
.label_445:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_139
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
	jmp	.label_131
.label_447:
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
	push	qword ptr [r15 + 0x40]
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
	jmp	.label_131
.label_446:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_147
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
.label_131:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x402c88
	.globl sub_402c88
	.type sub_402c88, @function
sub_402c88:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c90
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
	je	.label_150
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
.label_150:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402cf8
	.globl sub_402cf8
	.type sub_402cf8, @function
sub_402cf8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402d00

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_151
	test	rsi, rsi
	mov	ecx, 1
	je	.label_152
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_152
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_151:
	mov	ecx, 1
.label_152:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x402d4b
	.globl sub_402d4b
	.type sub_402d4b, @function
sub_402d4b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402d50
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
	je	.label_153
	mov	qword ptr [rax], rbx
.label_153:
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
	#Procedure 0x402e3c
	.globl sub_402e3c
	.type sub_402e3c, @function
sub_402e3c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402e40
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_154
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_155
	test	rax, rax
	je	.label_154
.label_155:
	pop	rbx
	ret	
.label_154:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402e75
	.globl sub_402e75
	.type sub_402e75, @function
sub_402e75:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402e80
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
	#Procedure 0x402e93
	.globl sub_402e93
	.type sub_402e93, @function
sub_402e93:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ea0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_36]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_37]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_38]
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
	#Procedure 0x402f0e
	.globl sub_402f0e
	.type sub_402f0e, @function
sub_402f0e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402f10

	.globl io_error
	.type io_error, @function
io_error:
	push	rbx
	mov	rdi, qword ptr [rip + stdout]
	call	clearerr_unlocked
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_109
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	dword ptr [rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402f50

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_156
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_156:
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
	#Procedure 0x402fd3
	.globl sub_402fd3
	.type sub_402fd3, @function
sub_402fd3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402fe0
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
	#Procedure 0x402ff9
	.globl sub_402ff9
	.type sub_402ff9, @function
sub_402ff9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403000
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
	#Procedure 0x403036
	.globl sub_403036
	.type sub_403036, @function
sub_403036:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403040
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_36]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_37]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_38]
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
	#Procedure 0x4030af
	.globl sub_4030af
	.type sub_4030af, @function
sub_4030af:

	nop	
.label_161:
	xor	eax, eax
.label_158:
	test	r15, r15
	je	.label_157
	mov	qword ptr [r15], rcx
.label_157:
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
	#Procedure 0x4030cb
	.globl sub_4030cb
	.type sub_4030cb, @function
sub_4030cb:

	nop	
.label_160:
	mov	al, 1
	fldz	
	fxch	st(1)
	fucomi	st(1)
	fstp	st(1)
	jne	.label_159
	jnp	.label_158
.label_159:
	cmp	dword ptr [r12], 0x22
	setne	al
	jmp	.label_158
	.section	.text
	.align	32
	#Procedure 0x4030e4

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
	mov	rcx, qword ptr [rsp + 8]
	cmp	rcx, rbx
	je	.label_161
	test	r15, r15
	jne	.label_160
	cmp	byte ptr [rcx], 0
	je	.label_160
	xor	eax, eax
	jmp	.label_157
	.section	.text
	.align	32
	#Procedure 0x403130

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x403141
	.globl sub_403141
	.type sub_403141, @function
sub_403141:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403150
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
	je	.label_162
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
.label_162:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4031b1
	.globl sub_4031b1
	.type sub_4031b1, @function
sub_4031b1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4031c0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x4031ce
	.globl sub_4031ce
	.type sub_4031ce, @function
sub_4031ce:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4031d0

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
	js	.label_166
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_169
	cmp	r12d, 0x7fffffff
	je	.label_164
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
	jne	.label_167
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_167:
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
.label_169:
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
	jbe	.label_165
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_168
.label_165:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_163
	mov	rdi, r14
	call	free
.label_163:
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
.label_168:
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
.label_166:
	call	abort
.label_164:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40338d
	.globl sub_40338d
	.type sub_40338d, @function
sub_40338d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403390
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
	#Procedure 0x40339f
	.globl sub_40339f
	.type sub_40339f, @function
sub_40339f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4033a0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x4033a8
	.globl sub_4033a8
	.type sub_4033a8, @function
sub_4033a8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4033b0
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
	#Procedure 0x403471
	.globl sub_403471
	.type sub_403471, @function
sub_403471:

	nop	word ptr cs:[rax + rax]
.label_176:
	test	rcx, rcx
	jne	.label_170
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_170:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_174
.label_175:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_173
	test	rbx, rbx
	jne	.label_173
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4034cc
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_176
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_172
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_175
.label_173:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_171
	test	rax, rax
	je	.label_172
.label_171:
	pop	rbx
	ret	
.label_172:
	call	xalloc_die
.label_174:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403517
	.globl sub_403517
	.type sub_403517, @function
sub_403517:

	nop	word ptr [rax + rax]
.label_177:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403525
	.globl sub_403525
	.type sub_403525, @function
sub_403525:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403529
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_36]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_37]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_38]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_177
	test	rsi, rsi
	je	.label_177
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
.label_178:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403595
	.globl sub_403595
	.type sub_403595, @function
sub_403595:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403597
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_36]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_37]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_38]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_178
	test	rdx, rdx
	je	.label_178
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
	#Procedure 0x403600
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
	#Procedure 0x403633
	.globl sub_403633
	.type sub_403633, @function
sub_403633:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403640
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_179:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_179
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x403661
	.globl sub_403661
	.type sub_403661, @function
sub_403661:

	nop	word ptr cs:[rax + rax]
.label_181:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403675
	.globl sub_403675
	.type sub_403675, @function
sub_403675:

	nop	dword ptr [rax + rax]
.label_182:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_180
	test	rax, rax
	je	.label_181
.label_180:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403691
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_181
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_182
	test	rbx, rbx
	jne	.label_182
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4036c0

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
.label_276:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_274
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_279]
.label_486:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_282
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
.label_487:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_273
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_273
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_188:
	cmp	r14, r11
	jae	.label_183
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_183:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_188
.label_273:
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
	jmp	.label_208
.label_479:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_208
.label_482:
	mov	al, 1
.label_480:
	mov	r12b, 1
.label_483:
	test	r12b, 1
	mov	cl, 1
	je	.label_213
	mov	ecx, eax
.label_213:
	mov	al, cl
.label_481:
	test	r12b, 1
	jne	.label_215
	test	r11, r11
	je	.label_216
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_216:
	mov	r14d, 1
	jmp	.label_220
.label_215:
	xor	r14d, r14d
.label_220:
	mov	ecx, OFFSET FLAT:label_15
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_208
.label_484:
	test	r12b, 1
	jne	.label_230
	test	r11, r11
	je	.label_232
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_232:
	mov	r14d, 1
	jmp	.label_237
.label_485:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_14
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_208
.label_230:
	xor	r14d, r14d
.label_237:
	mov	eax, OFFSET FLAT:label_14
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_208:
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
	jmp	.label_252
	.section	.text
	.align	32
	#Procedure 0x4039ad
	.globl sub_4039ad
	.type sub_4039ad, @function
sub_4039ad:

	nop	dword ptr [rax]
.label_190:
	inc	rsi
.label_252:
	cmp	rbp, -1
	je	.label_289
	cmp	rsi, rbp
	jne	.label_290
	jmp	.label_291
	.section	.text
	.align	32
	#Procedure 0x4039c3
	.globl sub_4039c3
	.type sub_4039c3, @function
sub_4039c3:

	nop	word ptr cs:[rax + rax]
.label_289:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_296
.label_290:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_299
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
	jbe	.label_200
.label_299:
	xor	r8d, r8d
.label_233:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_202
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_204]
.label_496:
	test	rsi, rsi
	jne	.label_193
	jmp	.label_211
	.section	.text
	.align	32
	#Procedure 0x403a65
	.globl sub_403a65
	.type sub_403a65, @function
sub_403a65:

	nop	word ptr cs:[rax + rax]
.label_200:
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
	jne	.label_223
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_233
	jmp	.label_236
.label_223:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_233
.label_500:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_244
	test	rsi, rsi
	jne	.label_245
	cmp	rbp, 1
	je	.label_211
	xor	r13d, r13d
	jmp	.label_185
.label_489:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_251
	cmp	byte ptr [rsp + 6], 0
	jne	.label_227
	cmp	r12d, 2
	jne	.label_255
	mov	eax, r9d
	and	al, 1
	jne	.label_255
	cmp	r14, r11
	jae	.label_258
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_258:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_263
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_263:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_201
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_201:
	add	r14, 3
	mov	r9b, 1
.label_255:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_277
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_277:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_280
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_280
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_280
	cmp	r14, r11
	jae	.label_198
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_198:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_241
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_241:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_185
.label_490:
	mov	bl, 0x62
	jmp	.label_264
.label_491:
	mov	cl, 0x74
	jmp	.label_199
.label_492:
	mov	bl, 0x76
	jmp	.label_264
.label_493:
	mov	bl, 0x66
	jmp	.label_264
.label_494:
	mov	cl, 0x72
	jmp	.label_199
.label_497:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_186
	cmp	byte ptr [rsp + 6], 0
	jne	.label_192
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
	jae	.label_196
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_196:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_209
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_209:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_214
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_214:
	add	r14, 3
	xor	r9d, r9d
.label_186:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_185
.label_498:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_221
	cmp	r12d, 2
	jne	.label_193
	cmp	byte ptr [rsp + 6], 0
	je	.label_193
	jmp	.label_192
.label_499:
	cmp	r12d, 2
	jne	.label_231
	cmp	byte ptr [rsp + 6], 0
	jne	.label_192
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_187
.label_202:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_242
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
.label_226:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_254
	test	r8b, r8b
	je	.label_254
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_185
.label_244:
	test	rsi, rsi
	jne	.label_229
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_229
.label_211:
	mov	dl, 1
.label_495:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_192
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_185:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_285
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_301
	jmp	.label_288
	.section	.text
	.align	32
	#Procedure 0x403db4
	.globl sub_403db4
	.type sub_403db4, @function
sub_403db4:

	nop	word ptr cs:[rax + rax]
.label_285:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_288
.label_301:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_293
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_187
	jmp	.label_184
	.section	.text
	.align	32
	#Procedure 0x403dfd
	.globl sub_403dfd
	.type sub_403dfd, @function
sub_403dfd:

	nop	dword ptr [rax]
.label_288:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_184
	jmp	.label_187
.label_293:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_184
.label_251:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_190
	xor	r15d, r15d
	jmp	.label_193
.label_231:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_199
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_187
.label_199:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_192
.label_264:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_185
	nop	word ptr cs:[rax + rax]
.label_184:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_227
	cmp	r12d, 2
	jne	.label_217
	mov	eax, r9d
	and	al, 1
	jne	.label_217
	cmp	r14, r11
	jae	.label_257
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_257:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_224
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_224:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_278
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_278:
	add	r14, 3
	mov	r9b, 1
.label_217:
	cmp	r14, r11
	jae	.label_234
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_234:
	inc	r14
	jmp	.label_239
.label_242:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_243
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_243:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_270:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_260
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_266
	cmp	rbp, -2
	je	.label_272
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_189
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_235:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_292
	bt	rsi, rdx
	jb	.label_287
.label_292:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_235
.label_189:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_248
	xor	r13d, r13d
.label_248:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_270
	jmp	.label_226
.label_280:
	xor	r13d, r13d
	jmp	.label_185
.label_229:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_185
.label_221:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_193
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_193
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_193
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_203
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_267
	cmp	byte ptr [rsp + 6], 0
	jne	.label_212
	cmp	r14, r11
	jae	.label_298
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_298:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_261
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_261:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_222
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_222:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_297
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_297:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_185
.label_193:
	xor	eax, eax
.label_245:
	xor	r13d, r13d
	jmp	.label_185
.label_254:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_240
	.section	.text
	.align	32
	#Procedure 0x4040e2
	.globl sub_4040e2
	.type sub_4040e2, @function
sub_4040e2:

	nop	word ptr cs:[rax + rax]
.label_194:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_240:
	test	r8b, r8b
	je	.label_246
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_247
	cmp	r14, r11
	jae	.label_249
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_249:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_247
	.section	.text
	.align	32
	#Procedure 0x40412c
	.globl sub_40412c
	.type sub_40412c, @function
sub_40412c:

	nop	dword ptr [rax]
.label_246:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_236
	cmp	r12d, 2
	jne	.label_259
	mov	eax, r9d
	and	al, 1
	jne	.label_259
	cmp	r14, r11
	jae	.label_265
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_265:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_269
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_269:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_275
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_275:
	add	r14, 3
	mov	r9b, 1
.label_259:
	cmp	r14, r11
	jae	.label_268
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_268:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_283
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_283:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_286
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_286:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_247:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_187
	test	r9b, 1
	je	.label_207
	mov	ebx, eax
	and	bl, 1
	jne	.label_207
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_302
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_302:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_191
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_191:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_207:
	cmp	r14, r11
	jae	.label_194
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_194
	.section	.text
	.align	32
	#Procedure 0x404233
	.globl sub_404233
	.type sub_404233, @function
sub_404233:

	nop	word ptr cs:[rax + rax]
.label_187:
	test	r9b, 1
	je	.label_205
	and	al, 1
	jne	.label_205
	cmp	r14, r11
	jae	.label_206
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_206:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_219
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_219:
	add	r14, 2
	xor	r9d, r9d
.label_205:
	mov	ebx, r15d
.label_239:
	cmp	r14, r11
	jae	.label_295
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_295:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_190
.label_266:
	xor	r13d, r13d
.label_260:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_226
.label_272:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_197
	mov	rsi, qword ptr [rsp + 0x58]
.label_238:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_218
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_238
	xor	r13d, r13d
	jmp	.label_226
.label_197:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_226
.label_218:
	xor	r13d, r13d
	jmp	.label_226
.label_203:
	xor	r13d, r13d
	jmp	.label_185
.label_267:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_185
	.section	.text
	.align	32
	#Procedure 0x404308
	.globl sub_404308
	.type sub_404308, @function
sub_404308:

	nop	dword ptr [rax + rax]
.label_291:
	mov	rcx, rsi
.label_296:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_250
	or	al, dl
	je	.label_253
.label_250:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_256
	or	al, dl
	jne	.label_256
	test	r10b, 1
	jne	.label_271
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_256
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_276
.label_256:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_281
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_284
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_284
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_294:
	cmp	r14, r11
	jae	.label_262
	mov	byte ptr [rcx + r14], al
.label_262:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_294
	jmp	.label_284
.label_227:
	mov	qword ptr [rsp + 0x20], rbp
.label_236:
	mov	rdx, rdi
	jmp	.label_210
.label_192:
	mov	qword ptr [rsp + 0x20], rbp
.label_287:
	mov	rdx, rdi
	mov	eax, 2
.label_195:
	mov	qword ptr [rsp + 0x38], rax
.label_210:
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
.label_225:
	mov	r14, rax
.label_228:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_253:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_210
.label_271:
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
	jmp	.label_225
.label_281:
	mov	rcx, qword ptr [rsp + 8]
.label_284:
	cmp	r14, r11
	jae	.label_228
	mov	byte ptr [rcx + r14], 0
	jmp	.label_228
.label_212:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_195
.label_274:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4044c7
	.globl sub_4044c7
	.type sub_4044c7, @function
sub_4044c7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4044d0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x108
	mov	r14, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_110
	call	setlocale
	test	rax, rax
	setne	byte ptr [rip + locale_ok]
	mov	edi, OFFSET FLAT:label_343
	mov	esi, OFFSET FLAT:label_344
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_343
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	byte ptr [rip + equal_width],  0
	mov	qword ptr [rip + separator], OFFSET FLAT:label_326
	mov	eax, dword ptr [rip + optind]
	xor	ebx, ebx
	cmp	eax, ebp
	jge	.label_311
	xor	ebx, ebx
.label_383:
	movsxd	rcx, eax
	mov	rcx, qword ptr [r14 + rcx*8]
	cmp	byte ptr [rcx], 0x2d
	jne	.label_361
	movsx	ecx, byte ptr [rcx + 1]
	cmp	ecx, 0x2e
	je	.label_311
	add	ecx, -0x30
	cmp	ecx, 0xa
	jb	.label_311
.label_361:
	mov	edx, OFFSET FLAT:label_368
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, r14
	call	getopt_long
	cmp	eax, 0x65
	jle	.label_371
	cmp	eax, 0x66
	je	.label_374
	cmp	eax, 0x73
	je	.label_375
	cmp	eax, 0x77
	jne	.label_341
	mov	byte ptr [rip + equal_width],  1
	jmp	.label_378
.label_374:
	mov	rbx, qword ptr [rip + optarg]
	jmp	.label_378
.label_375:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + separator],  rax
.label_378:
	mov	eax, dword ptr [rip + optind]
	cmp	eax, ebp
	jl	.label_383
	jmp	.label_311
.label_371:
	cmp	eax, -1
	jne	.label_384
	mov	eax, dword ptr [rip + optind]
.label_311:
	mov	r13d, ebp
	sub	r13d, eax
	je	.label_345
	cmp	r13d, 4
	jae	.label_386
	xor	r15d, r15d
	test	rbx, rbx
	mov	dword ptr [rsp + 0x10], ebp
	mov	qword ptr [rsp + 0x40], r14
	mov	qword ptr [rsp + 0x30], r13
	je	.label_388
	xor	r15d, r15d
	xor	ebp, ebp
	jmp	.label_303
	.section	.text
	.align	32
	#Procedure 0x40460c
	.globl sub_40460c
	.type sub_40460c, @function
sub_40460c:

	nop	dword ptr [rax]
.label_314:
	xor	ecx, ecx
	cmp	al, 0x25
	sete	cl
	inc	r15
	lea	rbp, [rcx + rbp + 1]
.label_303:
	movzx	eax, byte ptr [rbx + rbp]
	cmp	al, 0x25
	jne	.label_334
	cmp	byte ptr [rbx + rbp + 1], 0x25
	je	.label_314
	jmp	.label_350
.label_334:
	test	al, al
	jne	.label_314
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_316
	jmp	.label_317
.label_350:
	lea	rdi, [rbx + rbp + 1]
	inc	rbp
	mov	esi, OFFSET FLAT:label_319
	call	strspn
	mov	r14, rax
	add	r14, rbp
	lea	rdi, [rbx + r14]
	mov	esi, OFFSET FLAT:label_324
	call	strspn
	mov	r12, rax
	add	r12, r14
	mov	al, byte ptr [rbx + r12]
	cmp	al, 0x2e
	jne	.label_315
	lea	rdi, [rbx + r12 + 1]
	mov	esi, OFFSET FLAT:label_324
	call	strspn
	lea	r12, [rax + r12 + 1]
	mov	al, byte ptr [rbx + r12]
.label_315:
	xor	ecx, ecx
	cmp	al, 0x4c
	sete	cl
	lea	rbp, [rcx + r12]
	movsx	esi, byte ptr [rbx + rbp]
	test	esi, esi
	je	.label_329
	mov	qword ptr [rsp + 0x20], rcx
	mov	edi, OFFSET FLAT:label_331
	mov	edx, 9
	call	memchr
	test	rax, rax
	je	.label_333
	lea	r13, [rbx + r12]
	inc	rbp
	xor	r14d, r14d
	jmp	.label_335
	.section	.text
	.align	32
	#Procedure 0x4046cc
	.globl sub_4046cc
	.type sub_4046cc, @function
sub_4046cc:

	nop	dword ptr [rax]
.label_340:
	xor	ecx, ecx
	cmp	al, 0x25
	sete	cl
	inc	r14
	lea	rbp, [rcx + rbp + 1]
.label_335:
	movzx	eax, byte ptr [rbx + rbp]
	cmp	al, 0x25
	jne	.label_338
	cmp	byte ptr [rbx + rbp + 1], 0x25
	je	.label_340
	jmp	.label_377
	.section	.text
	.align	32
	#Procedure 0x4046f3
	.globl sub_4046f3
	.type sub_4046f3, @function
sub_4046f3:

	nop	word ptr cs:[rax + rax]
.label_338:
	test	al, al
	jne	.label_340
	add	rbp, 2
	mov	rdi, rbp
	call	xmalloc
	mov	rbp, rax
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, r12
	call	memcpy
	mov	byte ptr [rbp + r12], 0x4c
	lea	rdi, [rbp + r12 + 1]
	add	r13, qword ptr [rsp + 0x20]
	mov	rsi, r13
	call	strcpy
	xor	ebx, ebx
	test	rbp, rbp
	je	.label_364
	cmp	byte ptr [rip + equal_width],  1
	je	.label_359
	mov	al, 1
	mov	qword ptr [rsp + 0x68], rax
	mov	rbx, rbp
	jmp	.label_360
.label_388:
	xor	eax, eax
	mov	qword ptr [rsp + 0x68], rax
	xor	ebx, ebx
	xor	r14d, r14d
	jmp	.label_365
.label_364:
	xor	eax, eax
	mov	qword ptr [rsp + 0x68], rax
.label_360:
	mov	ebp, dword ptr [rsp + 0x10]
.label_365:
	mov	r12d, dword ptr [rip + optind]
	movsxd	rcx, r12d
	mov	rax, qword ptr [rsp + 0x40]
	mov	rsi, qword ptr [rax + rcx*8]
	movsx	eax, byte ptr [rsi]
	add	eax, -0x30
	cmp	eax, 9
	ja	.label_339
	mov	qword ptr [rsp + 0x58], rcx
	mov	rdi, rsi
	mov	r13, rsi
	call	strlen
	mov	rbp, rax
	mov	esi, OFFSET FLAT:label_324
	mov	qword ptr [rsp + 0x20], r13
	mov	rdi, r13
	call	strspn
	cmp	rbp, rax
	jne	.label_306
	mov	rax, qword ptr [rsp + 0x30]
	cmp	eax, 1
	je	.label_310
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rbp, qword ptr [rax + rcx*8 + 8]
	movsx	r13d, byte ptr [rbp]
	lea	eax, [r13 - 0x30]
	cmp	eax, 9
	ja	.label_306
	mov	rdi, rbp
	call	strlen
	mov	qword ptr [rsp + 0x98], rax
	mov	esi, OFFSET FLAT:label_324
	mov	rdi, rbp
	call	strspn
	cmp	qword ptr [rsp + 0x98], rax
	jne	.label_306
	mov	rax, qword ptr [rsp + 0x30]
	cmp	eax, 3
	jb	.label_310
	cmp	r13b, 0x31
	mov	rsi, qword ptr [rsp + 0x20]
	jne	.label_313
	cmp	byte ptr [rbp + 1], 0
	jne	.label_313
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rbp, qword ptr [rax + rcx*8 + 0x10]
	movsx	eax, byte ptr [rbp]
	add	eax, -0x30
	cmp	eax, 9
	ja	.label_313
	mov	rdi, rbp
	call	strlen
	mov	r13, rax
	mov	esi, OFFSET FLAT:label_324
	mov	rdi, rbp
	call	strspn
	cmp	r13, rax
	jne	.label_306
.label_310:
	mov	al, byte ptr [rip + equal_width]
	mov	rcx, qword ptr [rsp + 0x68]
	or	al, cl
	test	al, 1
	mov	ebp, dword ptr [rsp + 0x10]
	jne	.label_327
	mov	rdi, qword ptr [rip + separator]
	call	strlen
	cmp	rax, 1
	jne	.label_327
	mov	rcx, qword ptr [rsp + 0x30]
	cmp	ecx, 1
	mov	eax, OFFSET FLAT:label_330
	mov	rdi, qword ptr [rsp + 0x20]
	cmove	rdi, rax
	lea	eax, [rcx + r12 - 1]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rsi, qword ptr [rbp + rax*8]
	call	seq_fast
	test	al, al
	fldz	
	jne	.label_305
	fstp	st(0)
	movsxd	r12, dword ptr [rip + optind]
	mov	rsi, qword ptr [rbp + r12*8]
.label_313:
	mov	ebp, dword ptr [rsp + 0x10]
	jmp	.label_339
.label_306:
	mov	ebp, dword ptr [rsp + 0x10]
.label_327:
	mov	rsi, qword ptr [rsp + 0x20]
.label_339:
	inc	r12d
	mov	dword ptr [rip + optind],  r12d
	lea	rdi, [rsp + 0xe0]
	call	scan_arg
	fld	xword ptr [rsp + 0xe0]
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	r13d, dword ptr [rsp + 0xf8]
	movsxd	rax, dword ptr [rip + optind]
	fld1	
	xor	r12d, r12d
	mov	edx, 1
	cmp	eax, ebp
	jge	.label_348
	fstp	st(0)
	fstp	xword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rdi
	lea	ecx, [rax + 1]
	mov	dword ptr [rip + optind],  ecx
	mov	r12, qword ptr [rsp + 0x40]
	mov	rsi, qword ptr [r12 + rax*8]
	lea	rdi, [rsp + 0xc0]
	call	scan_arg
	fld	xword ptr [rsp + 0xc0]
	mov	ecx, dword ptr [rsp + 0xd8]
	movsxd	rax, dword ptr [rip + optind]
	cmp	eax, ebp
	fld	st(0)
	fstp	xword ptr [rsp + 0x30]
	jge	.label_367
	mov	ebp, ecx
	fldz	
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	jne	.label_372
	jnp	.label_366
.label_372:
	lea	ecx, [rax + 1]
	mov	dword ptr [rip + optind],  ecx
	mov	rsi, qword ptr [r12 + rax*8]
	lea	rdi, [rsp + 0xa0]
	call	scan_arg
	fld	xword ptr [rsp + 0x30]
	fld	xword ptr [rsp + 0xa0]
	mov	rdx, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rsp + 0xb0]
	mov	r12d, ebp
	mov	ecx, dword ptr [rsp + 0xb8]
	mov	rdi, rax
	mov	ebp, r13d
	fld	xword ptr [rsp + 0x20]
	fxch	st(1)
	fstp	xword ptr [rsp + 0x30]
	jmp	.label_380
.label_348:
	xor	ebp, ebp
	fld	st(0)
	mov	ecx, r13d
	fxch	st(2)
	fstp	xword ptr [rsp + 0x30]
	jmp	.label_387
.label_367:
	fstp	st(0)
	mov	rdx, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rsp + 0xd0]
	mov	rdi, rax
	mov	ebp, r13d
	fld	xword ptr [rsp + 0x20]
	fld1	
	xor	r12d, r12d
.label_387:
	fxch	st(1)
.label_380:
	fldz	
	fld	st(1)
	fstp	xword ptr [rsp + 0x20]
	fmul	st(1), st(0)
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	fld	st(0)
	fstp	xword ptr [rsp + 0x58]
	jne	.label_307
	jp	.label_307
	mov	eax, r12d
	or	eax, ebp
	jne	.label_307
	fld1	
	fxch	st(1)
	fucomi	st(1)
	fstp	st(1)
	jne	.label_307
	jp	.label_307
	fld	xword ptr [rsp + 0x20]
	fldz	
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	jb	.label_307
	test	ecx, ecx
	jne	.label_307
	fld	xword ptr [rsp + 0x30]
	fldz	
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	jb	.label_307
	mov	rax, qword ptr [rsp + 0x68]
	or	al, byte ptr [rip + equal_width]
	test	al, 1
	jne	.label_307
	fstp	st(0)
	mov	qword ptr [rsp + 0x10], rdi
	mov	rdi, qword ptr [rip + separator]
	mov	qword ptr [rsp + 0x40], rdx
	mov	r13d, ecx
	call	strlen
	mov	ecx, r13d
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x10]
	fld	xword ptr [rsp + 0x58]
	cmp	rax, 1
	jne	.label_307
	fstp	st(0)
	fld	xword ptr [rsp + 0x20]
	fstp	xword ptr [rsp]
	lea	rdi, [rsp + 0x80]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_309
	xor	eax, eax
	call	__asprintf_chk
	test	eax, eax
	js	.label_336
	fld	xword ptr [rsp + 0x30]
	fldz	
	fld	st(1)
	fmul	st(1)
	fucomip	st(1)
	fstp	st(0)
	jne	.label_342
	jp	.label_342
	fstp	xword ptr [rsp]
	lea	rdi, [rsp + 0x50]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_309
	xor	eax, eax
	call	__asprintf_chk
	test	eax, eax
	jns	.label_352
	jmp	.label_336
.label_342:
	fstp	st(0)
	mov	edi, OFFSET FLAT:label_354
	call	xstrdup
	mov	qword ptr [rsp + 0x50], rax
.label_352:
	mov	rdi, qword ptr [rsp + 0x80]
	cmp	byte ptr [rdi], 0x2d
	je	.label_357
	mov	rsi, qword ptr [rsp + 0x50]
	cmp	byte ptr [rsi], 0x2d
	je	.label_357
	call	seq_fast
	test	al, al
	je	.label_363
	fldz	
	jmp	.label_305
.label_363:
	mov	rdi, qword ptr [rsp + 0x80]
.label_357:
	call	free
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	fld	xword ptr [rsp + 0x58]
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 0x40]
	mov	ecx, r13d
.label_307:
	test	rbx, rbx
	jne	.label_373
	cmp	ebp, r12d
	cmovge	r12d, ebp
	cmp	r12d, 0x7fffffff
	mov	ebx, OFFSET FLAT:label_376
	je	.label_373
	cmp	ecx, 0x7fffffff
	je	.label_373
	cmp	byte ptr [rip + equal_width],  1
	jne	.label_382
	mov	eax, r12d
	sub	eax, ebp
	movsxd	r8, eax
	mov	eax, r12d
	sub	eax, ecx
	cdqe	
	test	r12d, r12d
	sete	sil
	setne	r9b
	test	ecx, ecx
	setne	bl
	sete	cl
	and	bl, sil
	and	cl, r9b
	movzx	ecx, cl
	add	rax, rdi
	movzx	esi, bl
	sub	rax, rsi
	add	rax, rcx
	test	ebp, ebp
	sete	cl
	and	cl, r9b
	movzx	ecx, cl
	add	r8, rdx
	add	r8, rcx
	cmp	r8, rax
	cmovbe	r8, rax
	mov	ebx, OFFSET FLAT:label_376
	cmp	r8, 0x7fffffff
	ja	.label_373
	fstp	st(0)
	mov	ebx, OFFSET FLAT:get_default_format.format_buf
	mov	edi, OFFSET FLAT:get_default_format.format_buf
	mov	esi, 1
	mov	edx, 0x1c
	mov	ecx, OFFSET FLAT:label_312
	xor	eax, eax
	mov	r9d, r12d
	call	__sprintf_chk
	jmp	.label_320
.label_382:
	fstp	st(0)
	mov	ebx, OFFSET FLAT:get_default_format.format_buf
	mov	edi, OFFSET FLAT:get_default_format.format_buf
	mov	esi, 1
	mov	edx, 0x1c
	mov	ecx, OFFSET FLAT:label_321
	xor	eax, eax
	mov	r8d, r12d
	call	__sprintf_chk
.label_320:
	fld	xword ptr [rsp + 0x58]
.label_373:
	fld	xword ptr [rsp + 0x30]
	fld	xword ptr [rsp + 0x20]
	fxch	st(1)
	fucomi	st(1)
	seta	al
	fxch	st(1)
	fucomi	st(1)
	fstp	st(1)
	seta	cl
	fldz	
	fucomip	st(2)
	fstp	st(1)
	ja	.label_325
	mov	eax, ecx
.label_325:
	test	al, al
	jne	.label_305
	fstp	xword ptr [rsp]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	call	__printf_chk
	test	eax, eax
	fldz	
	js	.label_389
	fstp	st(0)
	fld1	
	xor	r13d, r13d
	fld	xword ptr [rsp + 0x20]
	fxch	st(1)
	fstp	xword ptr [rsp + 0x10]
	nop	word ptr cs:[rax + rax]
.label_322:
	test	r13b, r13b
	fld	xword ptr [rsp + 0x58]
	jne	.label_308
	fld	xword ptr [rsp + 0x10]
	fmul	st(1)
	fld	xword ptr [rsp + 0x20]
	faddp	st(1)
	fld	xword ptr [rsp + 0x30]
	fucomi	st(1)
	seta	r13b
	fld	st(1)
	fstp	xword ptr [rsp + 0x40]
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	seta	al
	fldz	
	fucomip	st(1)
	fstp	st(0)
	ja	.label_337
	mov	r13b, al
.label_337:
	test	r13b, r13b
	fldz	
	je	.label_323
	fstp	st(0)
	fstp	xword ptr [rsp + 0x68]
	cmp	byte ptr [rip + locale_ok],  0
	je	.label_351
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_116
	call	setlocale
.label_351:
	fld	xword ptr [rsp + 0x40]
	fstp	xword ptr [rsp]
	mov	esi, 1
	xor	eax, eax
	lea	rdi, [rsp + 0x50]
	mov	rdx, rbx
	call	__asprintf_chk
	mov	ebp, eax
	cmp	byte ptr [rip + locale_ok],  0
	je	.label_362
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_110
	call	setlocale
.label_362:
	test	ebp, ebp
	js	.label_336
	movsxd	rax, ebp
	sub	rax, r14
	mov	rcx, qword ptr [rsp + 0x50]
	mov	byte ptr [rcx + rax], 0
	mov	rdi, qword ptr [rsp + 0x50]
	add	rdi, r15
	xor	r12d, r12d
	xor	esi, esi
	mov	ecx, OFFSET FLAT:cl_strtold
	lea	rdx, [rsp + 0x80]
	call	xstrtold
	fld	xword ptr [rsp + 0x80]
	test	al, al
	je	.label_379
	fld	xword ptr [rsp + 0x30]
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	jne	.label_304
	jp	.label_304
	mov	qword ptr [rsp + 0x78], 0
	fld	xword ptr [rsp + 0x68]
	fstp	xword ptr [rsp]
	mov	esi, 1
	xor	eax, eax
	lea	rdi, [rsp + 0x78]
	mov	rdx, rbx
	call	__asprintf_chk
	test	eax, eax
	js	.label_336
	mov	rbp, qword ptr [rsp + 0x78]
	mov	rsi, qword ptr [rsp + 0x50]
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	setne	r12b
	mov	rdi, rbp
	call	free
	jmp	.label_304
.label_379:
	fstp	st(0)
.label_304:
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	test	r12b, r12b
	fldz	
	fldz	
	fxch	st(1)
	je	.label_308
.label_323:
	fstp	st(0)
	fstp	st(0)
	mov	rdi, qword ptr [rip + separator]
	mov	rsi, qword ptr [rip + stdout]
	call	fputs_unlocked
	cmp	eax, -1
	je	.label_318
	fld1	
	fld	xword ptr [rsp + 0x10]
	faddp	st(1)
	fstp	xword ptr [rsp + 0x10]
	fld	xword ptr [rsp + 0x40]
	fstp	xword ptr [rsp]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	call	__printf_chk
	test	eax, eax
	fld	xword ptr [rsp + 0x40]
	jns	.label_322
.label_389:
	fstp	st(0)
	call	io_error
.label_308:
	fstp	st(0)
	fstp	st(0)
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_326
	call	fputs_unlocked
	cmp	eax, -1
	fldz	
	je	.label_328
.label_305:
	fstp	st(0)
	xor	eax, eax
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_377:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_332
.label_317:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
.label_318:
	call	io_error
.label_336:
	call	xalloc_die
.label_384:
	cmp	eax, 0xffffff7d
	je	.label_356
	cmp	eax, 0xffffff7e
	jne	.label_341
	xor	edi, edi
	call	usage
.label_345:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_346
	jmp	.label_347
.label_386:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_349
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [r14 + rax*8 + 0x18]
	jmp	.label_353
.label_329:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_355
	jmp	.label_317
.label_333:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_358
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	movsx	r8d, byte ptr [rbx + rbp]
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
.label_356:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_369
	mov	edx, OFFSET FLAT:label_24
	mov	r8d, OFFSET FLAT:label_370
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_328:
	fstp	st(0)
	call	io_error
.label_341:
	mov	edi, 1
	call	usage
.label_359:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_381
.label_347:
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
.label_366:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_385
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [r12 + rax*8 - 8]
.label_353:
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
	.section	.text
	.align	32
	#Procedure 0x40501f
	.globl sub_40501f
	.type sub_40501f, @function
sub_40501f:

	nop	
.label_390:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405025
	.globl sub_405025
	.type sub_405025, @function
sub_405025:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405029
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
	je	.label_390
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
	#Procedure 0x405090

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
	je	.label_391
	test	r15, r15
	je	.label_392
.label_391:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_392:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4050cc
	.globl sub_4050cc
	.type sub_4050cc, @function
sub_4050cc:

	nop	dword ptr [rax]
.label_394:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_393
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4050f0
	.globl sub_4050f0
	.type sub_4050f0, @function
sub_4050f0:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4050ff

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_394
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_396
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_398
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_396
	mov	esi, OFFSET FLAT:label_397
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_395
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_395:
	mov	rbx, r14
.label_396:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x405180

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_399
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_404
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	mov	r8, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_412
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_410
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_413
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_402
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_414
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_409
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_415
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_406
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
	je	.label_403
	mov	esi, OFFSET FLAT:label_405
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_403
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_401
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_403:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_400
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_25
	mov	ecx, OFFSET FLAT:label_369
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_411
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_369
	mov	ecx, OFFSET FLAT:label_407
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_399:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_408
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
	#Procedure 0x4053a1
	.globl sub_4053a1
	.type sub_4053a1, @function
sub_4053a1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4053b0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_426
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_428
.label_426:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_428:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_416
	cmp	r10d, 0x29
	jae	.label_425
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_427
.label_425:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_427:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_416
	cmp	r10d, 0x29
	jae	.label_423
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_424
.label_423:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_424:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_416
	cmp	r10d, 0x29
	jae	.label_421
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_422
.label_421:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_422:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_416
	cmp	r10d, 0x29
	jae	.label_419
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_420
.label_419:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_420:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_416
	cmp	r10d, 0x29
	jae	.label_417
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_418
.label_417:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_418:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_416
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_416
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_416
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_416
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_416:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x405592
	.globl sub_405592
	.type sub_405592, @function
sub_405592:

	nop	word ptr cs:[rax + rax]
.label_429:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4055a6
	.globl sub_4055a6
	.type sub_4055a6, @function
sub_4055a6:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4055ab
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_429
	test	rdx, rdx
	je	.label_429
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_431:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_430
	call	__errno_location
	mov	dword ptr [rax], 0
.label_430:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4055eb

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
	jne	.label_431
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_430
	test	cl, cl
	jne	.label_430
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_430
	.section	.text
	.align	32
	#Procedure 0x405630
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
	#Procedure 0x40563f
	.globl sub_40563f
	.type sub_40563f, @function
sub_40563f:

	nop
	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4056b2
	.globl sub_4056b2
	.type sub_4056b2, @function
sub_4056b2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4056d6
	.globl sub_4056d6
	.type sub_4056d6, @function
sub_4056d6:

	nop	word ptr cs:[rax + rax]
