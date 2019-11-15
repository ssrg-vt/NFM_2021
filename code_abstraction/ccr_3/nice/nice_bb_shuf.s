	.section	.text
	.align	32
	#Procedure 0x401429
	.globl sub_401429
	.type sub_401429, @function
sub_401429:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x40142a
	.globl sub_40142a
	.type sub_40142a, @function
sub_40142a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401462
	.globl sub_401462
	.type sub_401462, @function
sub_401462:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4014aa
	.globl sub_4014aa
	.type sub_4014aa, @function
sub_4014aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4014cc
	.globl sub_4014cc
	.type sub_4014cc, @function
sub_4014cc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4014dd
	.globl sub_4014dd
	.type sub_4014dd, @function
sub_4014dd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4014f6
	.globl sub_4014f6
	.type sub_4014f6, @function
sub_4014f6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401500
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
	#Procedure 0x401513
	.globl sub_401513
	.type sub_401513, @function
sub_401513:

	nop	word ptr cs:[rax + rax]
.label_9:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401525
	.globl sub_401525
	.type sub_401525, @function
sub_401525:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401530
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
	je	.label_9
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
	#Procedure 0x4015c0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x4015ca
	.globl sub_4015ca
	.type sub_4015ca, @function
sub_4015ca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4015d0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_14
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_17
.label_14:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_17:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_16
	cmp	r10d, 0x29
	jae	.label_13
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_15
.label_13:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_15:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_16
	cmp	r10d, 0x29
	jae	.label_11
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_12
.label_11:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_12:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_16
	cmp	r10d, 0x29
	jae	.label_22
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_10
.label_22:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_10:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_16
	cmp	r10d, 0x29
	jae	.label_20
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_21
.label_20:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_21:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_16
	cmp	r10d, 0x29
	jae	.label_18
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_19
.label_18:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_19:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_16
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_16
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_16
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_16
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_16:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x4017b2
	.globl sub_4017b2
	.type sub_4017b2, @function
sub_4017b2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4017c0

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
	jne	.label_24
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_31
	cmp	ecx, 0x55
	jne	.label_23
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_23
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_23
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_23
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_23
	cmp	byte ptr [rax + 5], 0
	jne	.label_23
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_28
	mov	eax, OFFSET FLAT:label_29
	jmp	.label_30
.label_31:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_23
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_23
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_23
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_23
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_23
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_23
	cmp	byte ptr [rax + 7], 0
	je	.label_25
.label_23:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_26
	mov	eax, OFFSET FLAT:label_27
.label_30:
	cmove	rax, rcx
.label_24:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_25:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_32
	mov	eax, OFFSET FLAT:label_33
	jmp	.label_30
	.section	.text
	.align	32
	#Procedure 0x401885
	.globl sub_401885
	.type sub_401885, @function
sub_401885:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401890
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
	#Procedure 0x401905
	.globl sub_401905
	.type sub_401905, @function
sub_401905:

	nop	word ptr cs:[rax + rax]
.label_34:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401915
	.globl sub_401915
	.type sub_401915, @function
sub_401915:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401923
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
	je	.label_35
	test	r15, r15
	je	.label_34
.label_35:
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
	#Procedure 0x401960

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
	#Procedure 0x4019b5
	.globl sub_4019b5
	.type sub_4019b5, @function
sub_4019b5:

	nop	word ptr cs:[rax + rax]
.label_41:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_39
	test	rax, rax
	je	.label_40
.label_39:
	pop	rbx
	ret	
.label_40:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4019d9
	.globl sub_4019d9
	.type sub_4019d9, @function
sub_4019d9:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4019e1
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_40
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_41
	test	rbx, rbx
	jne	.label_41
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_42:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401a15
	.globl sub_401a15
	.type sub_401a15, @function
sub_401a15:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401a1f
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_42
	call	rpl_calloc
	test	rax, rax
	je	.label_42
	pop	rcx
	ret	
.label_391:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_45
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
.label_43:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x401a95
	.globl sub_401a95
	.type sub_401a95, @function
sub_401a95:

	nop	dword ptr [rax + rax]
.label_392:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_44
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
	jmp	.label_43
.label_387:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_55
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
	jmp	.label_43
.label_389:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_54
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
	jmp	.label_43
.label_390:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_58
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
	jmp	.label_43
.label_386:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_61
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
.label_383:
	add	rsp, 8
	jmp	.label_43
	.section	.text
	.align	32
	#Procedure 0x401c01

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
	je	.label_46
	mov	edx, OFFSET FLAT:label_52
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_47
.label_46:
	mov	edx, OFFSET FLAT:label_59
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_47:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_48
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
	mov	esi, OFFSET FLAT:label_60
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_50
	jmp	qword ptr [(r12 * 8) + label_57]
.label_50:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_53
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
	jmp	.label_43
.label_385:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_49
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
.label_384:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_56
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
.label_388:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_51
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
	jmp	.label_43
	.section	.text
	.align	32
	#Procedure 0x401da0
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
	#Procedure 0x401daf
	.globl sub_401daf
	.type sub_401daf, @function
sub_401daf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401db0
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
	je	.label_62
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
.label_62:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401e18
	.globl sub_401e18
	.type sub_401e18, @function
sub_401e18:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e20

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_64
	cmp	byte ptr [rax], 0x43
	jne	.label_66
	cmp	byte ptr [rax + 1], 0
	je	.label_63
.label_66:
	mov	esi, OFFSET FLAT:label_65
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_64
.label_63:
	xor	ebx, ebx
.label_64:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401e51
	.globl sub_401e51
	.type sub_401e51, @function
sub_401e51:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e60
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
	#Procedure 0x401e96
	.globl sub_401e96
	.type sub_401e96, @function
sub_401e96:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ea0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_77
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_82
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_73
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, 0xffffffec
	mov	ecx, 0x13
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_67
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_78
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_75
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_76
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_69
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_71
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_80
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_85
	mov	ecx, OFFSET FLAT:label_81
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_84
	mov	esi, OFFSET FLAT:label_79
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_84
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_70
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_84:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_74
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_81
	mov	ecx, OFFSET FLAT:label_71
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_68
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_71
	mov	ecx, OFFSET FLAT:label_72
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_77:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_83
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
	#Procedure 0x4020ad
	.globl sub_4020ad
	.type sub_4020ad, @function
sub_4020ad:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4020b0
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
	#Procedure 0x4020c9
	.globl sub_4020c9
	.type sub_4020c9, @function
sub_4020c9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4020d0
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
	#Procedure 0x40213e
	.globl sub_40213e
	.type sub_40213e, @function
sub_40213e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402140
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
	je	.label_86
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
.label_86:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4021ac
	.globl sub_4021ac
	.type sub_4021ac, @function
sub_4021ac:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4021b0
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
	je	.label_87
	test	rdx, rdx
	je	.label_87
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_87:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40221a
	.globl sub_40221a
	.type sub_40221a, @function
sub_40221a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402220
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
	je	.label_88
	test	rsi, rsi
	je	.label_88
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_88:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402290
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
	#Procedure 0x4022e4
	.globl sub_4022e4
	.type sub_4022e4, @function
sub_4022e4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4022f0
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
	je	.label_89
	test	rdx, rdx
	je	.label_89
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_89:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40235e
	.globl sub_40235e
	.type sub_40235e, @function
sub_40235e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402360
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
	#Procedure 0x402421
	.globl sub_402421
	.type sub_402421, @function
sub_402421:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402430
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
	#Procedure 0x402463
	.globl sub_402463
	.type sub_402463, @function
sub_402463:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402470
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_90
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_91
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_93
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_85
	mov	ecx, OFFSET FLAT:label_81
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_92
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x4024e4
	.globl sub_4024e4
	.type sub_4024e4, @function
sub_4024e4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4024f0
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
	#Procedure 0x402508
	.globl sub_402508
	.type sub_402508, @function
sub_402508:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402510
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_94:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_94
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x402531
	.globl sub_402531
	.type sub_402531, @function
sub_402531:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402540
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
	je	.label_96
	test	r14, r14
	je	.label_95
.label_96:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_95:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402576
	.globl sub_402576
	.type sub_402576, @function
sub_402576:

	nop	word ptr cs:[rax + rax]
.label_97:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402585
	.globl sub_402585
	.type sub_402585, @function
sub_402585:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40258b
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_98
	test	rax, rax
	je	.label_97
.label_98:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4025a0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_99
	test	rax, rax
	je	.label_100
.label_99:
	pop	rbx
	ret	
.label_100:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4025ba
	.globl sub_4025ba
	.type sub_4025ba, @function
sub_4025ba:

	nop	word ptr [rax + rax]
.label_101:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4025c5
	.globl sub_4025c5
	.type sub_4025c5, @function
sub_4025c5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4025d0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_101
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_102
	test	rax, rax
	je	.label_101
.label_102:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402600
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_103
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_105:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_105
.label_103:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_106
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_107], OFFSET FLAT:slot0
.label_106:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_104
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_104:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x402691
	.globl sub_402691
	.type sub_402691, @function
sub_402691:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4026a0
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
	je	.label_108
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
.label_108:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402708
	.globl sub_402708
	.type sub_402708, @function
sub_402708:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402710

	.globl xstrtol
	.type xstrtol, @function
xstrtol:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r14, r8
	mov	qword ptr [rsp + 8], rcx
	mov	ebp, edx
	mov	r13, rdi
	cmp	ebp, 0x25
	jae	.label_116
	test	rsi, rsi
	lea	r15, [rsp + 0x20]
	cmovne	r15, rsi
	call	__errno_location
	mov	rbx, rax
	mov	dword ptr [rbx], 0
	mov	rdi, r13
	mov	rsi, r15
	mov	edx, ebp
	call	strtol
	mov	r12, rax
	mov	rcx, qword ptr [r15]
	cmp	rcx, r13
	je	.label_159
	mov	eax, dword ptr [rbx]
	xor	ebp, ebp
	test	eax, eax
	je	.label_134
	mov	ebp, 4
	cmp	eax, 0x22
	jne	.label_130
	mov	ebp, 1
.label_134:
	test	r14, r14
	je	.label_139
	mov	ebx, ebp
	jmp	.label_141
.label_159:
	mov	ebp, 4
	test	r14, r14
	je	.label_130
	movsx	esi, byte ptr [r13]
	test	esi, esi
	je	.label_130
	mov	rdi, r14
	mov	rbx, rcx
	call	strchr
	mov	rcx, rbx
	xor	ebx, ebx
	mov	r12d, 1
	test	rax, rax
	je	.label_130
.label_141:
	movsx	r13d, byte ptr [rcx]
	test	r13d, r13d
	je	.label_151
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_132
	mov	edi, 1
	mov	r8d, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_111
	movabs	rcx, 0x814400308945
	bt	rcx, rax
	jae	.label_111
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	edi, 1
	mov	r8d, 0x400
	test	rax, rax
	je	.label_111
	mov	rax, qword ptr [rsp + 0x10]
	movsx	eax, byte ptr [rax + 1]
	mov	edi, 1
	mov	r8d, 0x400
	cmp	eax, 0x42
	je	.label_121
	cmp	eax, 0x44
	je	.label_121
	cmp	eax, 0x69
	jne	.label_111
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	byte ptr [rcx + 2], 0x42
	sete	al
	lea	rdi, [rax + rax + 1]
	mov	r8d, 0x400
	jmp	.label_111
.label_139:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
	jmp	.label_130
.label_121:
	mov	edi, 2
	mov	r8d, 0x3e8
.label_111:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_132
	movabs	r9, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	r14, r12
	jmp	qword ptr [(r13 * 8) + label_142]
.label_396:
	lea	r14, [r9 + 1]
	mov	rax, r14
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	r12, r10
	mov	r11d, 1
	mov	rsi, r14
	mov	ecx, 1
	jl	.label_145
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, r12
	imul	rsi, r8
	xor	ecx, ecx
	cmp	rax, r12
	setl	cl
	cmovl	rsi, r9
.label_145:
	cmp	rsi, r10
	mov	rbp, r14
	jl	.label_160
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rbp, rsi
	imul	rbp, r8
	xor	r11d, r11d
	cmp	rax, rsi
	setl	r11b
	cmovl	rbp, r9
.label_160:
	or	r11d, ecx
	cmp	rbp, r10
	mov	ecx, 1
	jl	.label_133
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rbp
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	r8, r9
	mov	r14, r8
.label_133:
	or	ecx, r11d
	jmp	.label_122
.label_132:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
	or	ebx, 2
	jmp	.label_124
.label_397:
	lea	r14, [r9 + 1]
	mov	rax, r14
	cqo	
	idiv	r8
	cmp	r12, rax
	mov	ecx, 1
	jl	.label_122
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, r12
	xor	ecx, ecx
	cmp	rax, r12
	setl	cl
	cmovl	r8, r9
	mov	r14, r8
	jmp	.label_122
.label_398:
	lea	r14, [r9 + 1]
	mov	rax, r14
	cqo	
	idiv	r8
	mov	rbp, rax
	cmp	r12, rbp
	mov	ecx, 1
	mov	rsi, r14
	mov	r10d, 1
	jl	.label_146
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, r12
	imul	rsi, r8
	xor	r10d, r10d
	cmp	rax, r12
	setl	r10b
	cmovl	rsi, r9
.label_146:
	cmp	rsi, rbp
	jl	.label_152
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rsi
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	r8, r9
	mov	r14, r8
.label_152:
	or	ecx, r10d
	jmp	.label_122
.label_400:
	mov	r13, rdi
	lea	r14, [r9 + 1]
	mov	rax, r14
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	r12, r10
	mov	r11d, 1
	mov	rsi, r14
	mov	ecx, 1
	jl	.label_161
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, r12
	imul	rsi, r8
	xor	ecx, ecx
	cmp	rax, r12
	setl	cl
	cmovl	rsi, r9
.label_161:
	cmp	rsi, r10
	mov	rdi, r14
	jl	.label_120
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rdi, rsi
	imul	rdi, r8
	xor	r11d, r11d
	cmp	rax, rsi
	setl	r11b
	cmovl	rdi, r9
.label_120:
	or	r11d, ecx
	cmp	rdi, r10
	mov	ecx, 1
	mov	rsi, r14
	mov	ebp, 1
	jl	.label_128
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rdi
	imul	rsi, r8
	xor	ebp, ebp
	cmp	rax, rdi
	setl	bpl
	cmovl	rsi, r9
.label_128:
	or	ebp, r11d
	cmp	rsi, r10
	jl	.label_140
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rsi
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	r8, r9
	mov	r14, r8
.label_140:
	or	ecx, ebp
	mov	rdi, r13
	jmp	.label_122
.label_394:
	movabs	rax, 0xffe0000000000000
	cmp	r12, rax
	jl	.label_147
	mov	r14, r12
	shl	r14, 0xa
	movabs	rax, 0x1fffffffffffff
	jmp	.label_149
.label_395:
	lea	r14, [r9 + 1]
	mov	rax, r14
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	r12, r10
	mov	r13d, 1
	mov	rcx, r14
	mov	esi, 1
	jl	.label_156
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, r12
	imul	rcx, r8
	xor	esi, esi
	cmp	rax, r12
	setl	sil
	cmovl	rcx, r9
.label_156:
	mov	qword ptr [rsp + 0x18], rdi
	cmp	rcx, r10
	mov	rbp, r14
	jl	.label_117
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rbp, rcx
	imul	rbp, r8
	xor	r13d, r13d
	cmp	rax, rcx
	setl	r13b
	cmovl	rbp, r9
.label_117:
	or	r13d, esi
	cmp	rbp, r10
	mov	r11d, 1
	mov	rcx, r14
	mov	edi, 1
	jl	.label_126
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	imul	rcx, r8
	xor	edi, edi
	cmp	rax, rbp
	setl	dil
	cmovl	rcx, r9
.label_126:
	or	edi, r13d
	cmp	rcx, r10
	mov	rbp, r14
	jl	.label_138
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rbp, rcx
	imul	rbp, r8
	xor	r11d, r11d
	cmp	rax, rcx
	setl	r11b
	cmovl	rbp, r9
.label_138:
	or	r11d, edi
	cmp	rbp, r10
	mov	ecx, 1
	mov	rdi, r14
	mov	r12d, 1
	jl	.label_148
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rdi, rbp
	imul	rdi, r8
	xor	r12d, r12d
	cmp	rax, rbp
	setl	r12b
	cmovl	rdi, r9
.label_148:
	or	r12d, r11d
	cmp	rdi, r10
	jl	.label_154
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rdi
	xor	ecx, ecx
	cmp	rax, rdi
	setl	cl
	cmovl	r8, r9
	mov	r14, r8
.label_154:
	or	ecx, r12d
	mov	rdi, qword ptr [rsp + 0x18]
	jmp	.label_122
.label_399:
	lea	r14, [r9 + 1]
	mov	rax, r14
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	r12, r10
	mov	r13d, 1
	mov	rcx, r14
	mov	esi, 1
	jl	.label_110
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, r12
	imul	rcx, r8
	xor	esi, esi
	cmp	rax, r12
	setl	sil
	cmovl	rcx, r9
.label_110:
	mov	r12, rdi
	cmp	rcx, r10
	mov	rbp, r14
	jl	.label_158
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rbp, rcx
	imul	rbp, r8
	xor	r13d, r13d
	cmp	rax, rcx
	setl	r13b
	cmovl	rbp, r9
.label_158:
	or	r13d, esi
	cmp	rbp, r10
	mov	r11d, 1
	mov	rcx, r14
	mov	edi, 1
	jl	.label_135
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	imul	rcx, r8
	xor	edi, edi
	cmp	rax, rbp
	setl	dil
	cmovl	rcx, r9
.label_135:
	or	edi, r13d
	cmp	rcx, r10
	mov	rbp, r14
	jl	.label_143
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rbp, rcx
	imul	rbp, r8
	xor	r11d, r11d
	cmp	rax, rcx
	setl	r11b
	cmovl	rbp, r9
.label_143:
	or	r11d, edi
	cmp	rbp, r10
	mov	ecx, 1
	jl	.label_150
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rbp
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	r8, r9
	mov	r14, r8
.label_150:
	or	ecx, r11d
	mov	rdi, r12
	jmp	.label_122
.label_401:
	lea	r14, [r9 + 1]
	mov	rax, r14
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	r12, r10
	mov	r13d, 1
	mov	rsi, r14
	mov	ebp, 1
	jl	.label_162
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, r12
	imul	rsi, r8
	xor	ebp, ebp
	cmp	rax, r12
	setl	bpl
	cmovl	rsi, r9
.label_162:
	cmp	rsi, r10
	mov	rcx, r14
	jl	.label_136
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rsi
	imul	rcx, r8
	xor	r13d, r13d
	cmp	rax, rsi
	setl	r13b
	cmovl	rcx, r9
.label_136:
	or	r13d, ebp
	cmp	rcx, r10
	mov	r11d, 1
	mov	rsi, r14
	mov	ebp, 1
	jl	.label_129
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	xor	ebp, ebp
	cmp	rax, rcx
	setl	bpl
	cmovl	rsi, r9
.label_129:
	or	ebp, r13d
	cmp	rsi, r10
	mov	rcx, r14
	jl	.label_123
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rsi
	imul	rcx, r8
	xor	r11d, r11d
	cmp	rax, rsi
	setl	r11b
	cmovl	rcx, r9
.label_123:
	or	r11d, ebp
	cmp	rcx, r10
	mov	r12d, 1
	mov	rsi, r14
	mov	r13d, 1
	jl	.label_127
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	xor	r13d, r13d
	cmp	rax, rcx
	setl	r13b
	cmovl	rsi, r9
.label_127:
	or	r13d, r11d
	cmp	rsi, r10
	mov	rbp, r14
	jl	.label_157
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rbp, rsi
	imul	rbp, r8
	xor	r12d, r12d
	cmp	rax, rsi
	setl	r12b
	cmovl	rbp, r9
.label_157:
	or	r12d, r13d
	cmp	rbp, r10
	mov	ecx, 1
	mov	rsi, r14
	mov	r11d, 1
	jl	.label_115
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rbp
	imul	rsi, r8
	xor	r11d, r11d
	cmp	rax, rbp
	setl	r11b
	cmovl	rsi, r9
.label_115:
	or	r11d, r12d
	cmp	rsi, r10
	jl	.label_125
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rsi
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	r8, r9
	mov	r14, r8
.label_125:
	or	ecx, r11d
	jmp	.label_122
.label_402:
	lea	r14, [r9 + 1]
	mov	rax, r14
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	r12, r10
	mov	r13d, 1
	mov	rsi, r14
	mov	ebp, 1
	jl	.label_137
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, r12
	imul	rsi, r8
	xor	ebp, ebp
	cmp	rax, r12
	setl	bpl
	cmovl	rsi, r9
.label_137:
	cmp	rsi, r10
	mov	rcx, r14
	jl	.label_144
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rsi
	imul	rcx, r8
	xor	r13d, r13d
	cmp	rax, rsi
	setl	r13b
	cmovl	rcx, r9
.label_144:
	or	r13d, ebp
	cmp	rcx, r10
	mov	r11d, 1
	mov	rsi, r14
	mov	ebp, 1
	jl	.label_153
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	xor	ebp, ebp
	cmp	rax, rcx
	setl	bpl
	cmovl	rsi, r9
.label_153:
	or	ebp, r13d
	cmp	rsi, r10
	mov	rcx, r14
	jl	.label_109
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rsi
	imul	rcx, r8
	xor	r11d, r11d
	cmp	rax, rsi
	setl	r11b
	cmovl	rcx, r9
.label_109:
	or	r11d, ebp
	cmp	rcx, r10
	mov	r12d, 1
	mov	rsi, r14
	mov	r13d, 1
	jl	.label_119
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	xor	r13d, r13d
	cmp	rax, rcx
	setl	r13b
	cmovl	rsi, r9
.label_119:
	or	r13d, r11d
	cmp	rsi, r10
	mov	rbp, r14
	jl	.label_131
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rbp, rsi
	imul	rbp, r8
	xor	r12d, r12d
	cmp	rax, rsi
	setl	r12b
	cmovl	rbp, r9
.label_131:
	or	r12d, r13d
	cmp	rbp, r10
	mov	ecx, 1
	jl	.label_118
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rbp
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	r8, r9
	mov	r14, r8
.label_118:
	or	ecx, r12d
	jmp	.label_122
.label_403:
	movabs	rax, 0xffc0000000000000
	cmp	r12, rax
	jl	.label_147
	mov	r14, r12
	shl	r14, 9
	movabs	rax, 0x3fffffffffffff
	jmp	.label_149
.label_404:
	movabs	rax, 0xc000000000000000
	cmp	r12, rax
	jge	.label_155
.label_147:
	inc	r9
	mov	ecx, 1
	mov	r14, r9
	jmp	.label_122
.label_155:
	lea	r14, [r12 + r12]
	movabs	rax, 0x3fffffffffffffff
.label_149:
	xor	ecx, ecx
	cmp	r12, rax
	setg	cl
	cmovg	r14, r9
.label_122:
	or	ecx, ebx
	mov	rdx, qword ptr [rsp + 0x10]
	lea	rax, [rdx + rdi]
	mov	qword ptr [r15], rax
	lea	ebx, [rcx + 2]
	cmp	byte ptr [rdx + rdi], 0
	cmove	ebx, ecx
	mov	r12, r14
.label_151:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
.label_124:
	mov	ebp, ebx
.label_130:
	mov	eax, ebp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_116:
	mov	edi, OFFSET FLAT:label_112
	mov	esi, OFFSET FLAT:label_113
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_114
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x403059
	.globl sub_403059
	.type sub_403059, @function
sub_403059:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403060
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
	#Procedure 0x40306f
	.globl sub_40306f
	.type sub_40306f, @function
sub_40306f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403070
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
	je	.label_163
	test	rsi, rsi
	je	.label_163
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
.label_163:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4030dc
	.globl sub_4030dc
	.type sub_4030dc, @function
sub_4030dc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4030e0
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
	je	.label_164
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
.label_164:
	call	abort
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
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x403161
	.globl sub_403161
	.type sub_403161, @function
sub_403161:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403170

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
	jmp	.label_192
	.section	.text
	.align	32
	#Procedure 0x40321f
	.globl sub_40321f
	.type sub_40321f, @function
sub_40321f:

	nop	
.label_190:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_175
	or	al, dl
	jne	.label_175
	test	dil, 1
	jne	.label_188
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_175
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_192
	jmp	.label_175
.label_421:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_198
	test	rbp, rbp
	je	.label_262
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_262:
	mov	r14d, 1
	jmp	.label_204
.label_422:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_26
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_205
.label_198:
	xor	r14d, r14d
.label_204:
	mov	eax, OFFSET FLAT:label_26
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_216
	.section	.text
	.align	32
	#Procedure 0x4032ef
	.globl sub_4032ef
	.type sub_4032ef, @function
sub_4032ef:

	nop	
.label_192:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_222
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_229]
.label_423:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_239
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_27
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_424:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_252
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_252
	xor	r14d, r14d
	nop	
.label_253:
	cmp	r14, rbp
	jae	.label_228
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_228:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_253
.label_252:
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
	jmp	.label_205
.label_416:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_205
.label_419:
	mov	al, 1
.label_417:
	mov	r12b, 1
.label_420:
	test	r12b, 1
	mov	cl, 1
	je	.label_281
	mov	ecx, eax
.label_281:
	mov	al, cl
.label_418:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_283
	test	rbp, rbp
	je	.label_288
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_288:
	mov	r14d, 1
	jmp	.label_166
.label_283:
	xor	r14d, r14d
.label_166:
	mov	ecx, OFFSET FLAT:label_27
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_216:
	mov	sil, r12b
.label_205:
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
	jmp	.label_179
	.section	.text
	.align	32
	#Procedure 0x4034b1
	.globl sub_4034b1
	.type sub_4034b1, @function
sub_4034b1:

	nop	word ptr cs:[rax + rax]
.label_181:
	inc	r12
.label_179:
	cmp	r11, -1
	je	.label_210
	cmp	r12, r11
	jne	.label_213
	jmp	.label_215
	.section	.text
	.align	32
	#Procedure 0x4034d3
	.globl sub_4034d3
	.type sub_4034d3, @function
sub_4034d3:

	nop	word ptr cs:[rax + rax]
.label_210:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_282
.label_213:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_223
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_226
	cmp	r11, -1
	jne	.label_226
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_226:
	cmp	rbx, r11
	jbe	.label_244
.label_223:
	xor	esi, esi
.label_233:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_245
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_248]
.label_454:
	test	r12, r12
	jne	.label_170
	jmp	.label_255
	.section	.text
	.align	32
	#Procedure 0x403566
	.globl sub_403566
	.type sub_403566, @function
sub_403566:

	nop	word ptr cs:[rax + rax]
.label_244:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_267
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_233
	jmp	.label_196
.label_267:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_233
.label_458:
	xor	eax, eax
	cmp	r11, -1
	je	.label_278
	test	r12, r12
	jne	.label_280
	cmp	r11, 1
	je	.label_255
	xor	r13d, r13d
	jmp	.label_186
.label_447:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_285
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_196
	cmp	r8d, 2
	jne	.label_169
	mov	eax, r9d
	and	al, 1
	jne	.label_169
	cmp	r14, rbp
	jae	.label_172
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_172:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_176
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_176:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_182
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_182:
	add	r14, 3
	mov	r9b, 1
.label_169:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_187
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_187:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_189
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_189
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_189
	cmp	r14, rbp
	jae	.label_256
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_256:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_277
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_277:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_186
.label_448:
	mov	bl, 0x62
	jmp	.label_211
.label_449:
	mov	cl, 0x74
	jmp	.label_174
.label_450:
	mov	bl, 0x76
	jmp	.label_211
.label_451:
	mov	bl, 0x66
	jmp	.label_211
.label_452:
	mov	cl, 0x72
	jmp	.label_174
.label_455:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_219
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_209
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
	jae	.label_231
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_231:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_246
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_246:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_251
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_251:
	add	r14, 3
	xor	r9d, r9d
.label_219:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_186
.label_456:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_261
	cmp	r8d, 2
	jne	.label_170
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_170
	jmp	.label_209
.label_457:
	cmp	r8d, 2
	jne	.label_271
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_209
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_178
.label_245:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_276
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_264
.label_278:
	test	r12, r12
	jne	.label_167
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_167
.label_255:
	mov	dl, 1
.label_453:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_209
	xor	eax, eax
	mov	r13b, dl
.label_186:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_180
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_183
	jmp	.label_184
	.section	.text
	.align	32
	#Procedure 0x403844
	.globl sub_403844
	.type sub_403844, @function
sub_403844:

	nop	word ptr cs:[rax + rax]
.label_180:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_184
.label_183:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_168
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_193
	.section	.text
	.align	32
	#Procedure 0x40387d
	.globl sub_40387d
	.type sub_40387d, @function
sub_40387d:

	nop	dword ptr [rax]
.label_184:
	test	sil, sil
.label_193:
	mov	ebx, r15d
	je	.label_197
	jmp	.label_200
.label_168:
	mov	ebx, r15d
	jmp	.label_200
.label_285:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_181
	xor	r15d, r15d
	jmp	.label_170
.label_271:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_174
	xor	eax, eax
	mov	r15b, 0x5c
.label_178:
	xor	r13d, r13d
	jmp	.label_197
.label_174:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_209
.label_211:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_186
	nop	
.label_200:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_196
	cmp	r8d, 2
	jne	.label_220
	mov	eax, r9d
	and	al, 1
	jne	.label_220
	cmp	r14, rbp
	jae	.label_225
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_225:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_232
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_232:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_237
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_237:
	add	r14, 3
	mov	r9b, 1
.label_220:
	cmp	r14, rbp
	jae	.label_243
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_243:
	inc	r14
	jmp	.label_259
.label_276:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_249
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_249:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_194
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_250:
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
	je	.label_272
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_221
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_185
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_286
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_227:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_165
	bt	rsi, rdx
	jb	.label_209
.label_165:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_227
.label_286:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_201
	xor	r13d, r13d
.label_201:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_250
	jmp	.label_195
.label_189:
	xor	r13d, r13d
	jmp	.label_186
.label_167:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_186
.label_261:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_170
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_170
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_170
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_208
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_257
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_217
	cmp	r14, rbp
	jae	.label_218
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_218:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_224
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_224:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_289
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_289:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_202
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_202:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_257:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_186
.label_170:
	xor	eax, eax
.label_280:
	xor	r13d, r13d
	jmp	.label_186
.label_194:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_254:
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
	je	.label_268
	cmp	rbp, -1
	je	.label_270
	cmp	rbp, -2
	je	.label_272
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_275
	xor	r13d, r13d
.label_275:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_254
	jmp	.label_195
.label_272:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_234
	lea	rax, [r10 + r12]
.label_274:
	cmp	byte ptr [rax + rsi], 0
	je	.label_234
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_274
.label_234:
	mov	qword ptr [rsp + 0x40], rsi
.label_221:
	xor	r13d, r13d
	jmp	.label_185
.label_270:
	xor	r13d, r13d
.label_268:
	mov	r10, qword ptr [rsp + 0x28]
.label_185:
	mov	r12, qword ptr [rsp + 0x40]
.label_195:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_264:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_173
	test	al, al
	je	.label_173
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_186
.label_173:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_191
	.section	.text
	.align	32
	#Procedure 0x403c77
	.globl sub_403c77
	.type sub_403c77, @function
sub_403c77:

	nop	word ptr [rax + rax]
.label_279:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_191:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_199
	test	sil, 1
	je	.label_206
	cmp	r14, rbp
	jae	.label_203
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_203:
	inc	r14
	xor	esi, esi
	jmp	.label_206
	.section	.text
	.align	32
	#Procedure 0x403cb5
	.globl sub_403cb5
	.type sub_403cb5, @function
sub_403cb5:

	nop	word ptr cs:[rax + rax]
.label_199:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_196
	cmp	r8d, 2
	jne	.label_214
	mov	eax, r9d
	and	al, 1
	jne	.label_214
	cmp	r14, rbp
	jae	.label_235
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_235:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_258
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_258:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_238
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_238:
	add	r14, 3
	mov	r9b, 1
.label_214:
	cmp	r14, rbp
	jae	.label_236
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_236:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_212
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_212:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_247
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_247:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_206:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_197
	test	r9b, 1
	je	.label_263
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_207
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_266
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_266:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_273
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_273:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_263
	.section	.text
	.align	32
	#Procedure 0x403dc6
	.globl sub_403dc6
	.type sub_403dc6, @function
sub_403dc6:

	nop	word ptr cs:[rax + rax]
.label_207:
	mov	rbx, rcx
.label_263:
	cmp	r14, rbp
	jae	.label_279
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_279
	.section	.text
	.align	32
	#Procedure 0x403dee
	.globl sub_403dee
	.type sub_403dee, @function
sub_403dee:

	nop	
.label_197:
	test	r9b, 1
	je	.label_284
	and	al, 1
	jne	.label_284
	cmp	r14, rbp
	jae	.label_287
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_287:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_230
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_230:
	add	r14, 2
	xor	r9d, r9d
.label_284:
	mov	ebx, r15d
.label_259:
	cmp	r14, rbp
	jae	.label_177
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_177:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_181
.label_208:
	xor	r13d, r13d
	jmp	.label_186
	.section	.text
	.align	32
	#Procedure 0x403e51
	.globl sub_403e51
	.type sub_403e51, @function
sub_403e51:

	nop	word ptr cs:[rax + rax]
.label_215:
	mov	rcx, r12
.label_282:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_190
	or	al, dl
	jne	.label_190
	mov	r11, rcx
	jmp	.label_196
.label_209:
	mov	eax, 2
.label_269:
	mov	qword ptr [rsp + 0x38], rax
.label_196:
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
.label_260:
	mov	r14, rax
.label_265:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_175:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_242
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_171
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_171
	inc	rdx
	nop	dword ptr [rax + rax]
.label_241:
	cmp	r14, rbp
	jae	.label_240
	mov	byte ptr [rcx + r14], al
.label_240:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_241
	jmp	.label_171
.label_188:
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
	jmp	.label_260
.label_242:
	mov	rcx, qword ptr [rsp + 0x10]
.label_171:
	cmp	r14, rbp
	jae	.label_265
	mov	byte ptr [rcx + r14], 0
	jmp	.label_265
.label_217:
	mov	eax, 5
	jmp	.label_269
.label_222:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403fa0
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
	#Procedure 0x403fb8
	.globl sub_403fb8
	.type sub_403fb8, @function
sub_403fb8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403fc0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_290
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_290
	test	byte ptr [rbx + 1], 1
	je	.label_290
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_290:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x403ff3
	.globl sub_403ff3
	.type sub_403ff3, @function
sub_403ff3:

	nop	word ptr cs:[rax + rax]
.label_295:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_291
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404020
	.globl sub_404020
	.type sub_404020, @function
sub_404020:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40402f

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_295
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_293
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_296
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_293
	mov	esi, OFFSET FLAT:label_294
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_292
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_292:
	mov	rbx, r14
.label_293:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x4040b0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	ebx, edi
	mov	rdi, qword ptr [r15]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_301
	call	setlocale
	mov	edi, OFFSET FLAT:label_320
	mov	esi, OFFSET FLAT:label_321
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_320
	call	textdomain
	mov	dword ptr [rip + exit_failure],  0x7d
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	r12d, 0xa
	mov	ebp, 1
	cmp	ebx, 2
	jl	.label_298
	xor	r14d, r14d
	mov	r13d, 2
.label_310:
	movsxd	rax, ebp
	mov	rax, qword ptr [r15 + rax*8]
	cmp	byte ptr [rax], 0x2d
	jne	.label_307
	movzx	ecx, byte ptr [rax + 1]
	xor	edx, edx
	cmp	cl, 0x2b
	sete	dl
	inc	rdx
	cmp	cl, 0x2d
	cmove	rdx, r13
	movsx	ecx, byte ptr [rax + rdx]
	add	ecx, -0x30
	cmp	ecx, 9
	ja	.label_307
	inc	rax
	inc	ebp
	mov	r14, rax
	jmp	.label_319
	.section	.text
	.align	32
	#Procedure 0x404159
	.globl sub_404159
	.type sub_404159, @function
sub_404159:

	nop	dword ptr [rax]
.label_307:
	dec	ebp
	mov	edi, ebx
	sub	edi, ebp
	movsxd	rbp, ebp
	lea	rsi, [r15 + rbp*8]
	mov	rax, qword ptr [r15]
	mov	qword ptr [r15 + rbp*8], rax
	mov	dword ptr [rip + optind],  0
	mov	edx, OFFSET FLAT:label_325
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	call	getopt_long
	add	ebp, dword ptr [rip + optind]
	cmp	eax, 0x6d
	jle	.label_300
	cmp	eax, 0x6e
	jne	.label_305
	mov	r14, qword ptr [rip + optarg]
.label_319:
	cmp	ebp, ebx
	jl	.label_310
	jmp	.label_312
.label_300:
	cmp	eax, -1
	jne	.label_313
.label_312:
	test	r14, r14
	je	.label_298
	lea	rcx, [rsp]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_301
	mov	rdi, r14
	call	xstrtol
	cmp	eax, 2
	jae	.label_309
	mov	rax, qword ptr [rsp]
	cmp	rax, 0x28
	mov	ecx, 0x27
	cmovl	rcx, rax
	cmp	rax, 0x27
	mov	edx, 0x27
	cmovl	edx, eax
	cmp	rcx, -0x27
	mov	r12d, 0xffffffd9
	cmovg	r12d, edx
	mov	al, 1
	jmp	.label_324
.label_298:
	xor	eax, eax
.label_324:
	cmp	ebp, ebx
	jne	.label_302
	test	al, al
	jne	.label_304
	call	__errno_location
	mov	rbx, rax
	mov	dword ptr [rbx], 0
	xor	r13d, r13d
	xor	edi, edi
	xor	esi, esi
	call	getpriority
	mov	ecx, eax
	cmp	ecx, -1
	jne	.label_314
	mov	ebx, dword ptr [rbx]
	test	ebx, ebx
	jne	.label_297
.label_314:
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_318
	xor	eax, eax
	mov	edx, ecx
	call	__printf_chk
	jmp	.label_317
.label_302:
	call	__errno_location
	mov	r14, rax
	mov	dword ptr [r14], 0
	xor	edi, edi
	xor	esi, esi
	call	getpriority
	cmp	eax, -1
	jne	.label_316
	mov	ebx, dword ptr [r14]
	test	ebx, ebx
	jne	.label_297
.label_316:
	add	eax, r12d
	xor	edi, edi
	xor	esi, esi
	mov	edx, eax
	call	setpriority
	test	eax, eax
	je	.label_308
	mov	r12d, dword ptr [r14]
	cmp	r12d, 1
	mov	r13d, 0x7d
	mov	eax, 0
	mov	ebx, 0x7d
	cmove	ebx, eax
	cmp	r12d, 0xd
	cmove	ebx, eax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_306
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	edi, ebx
	mov	esi, r12d
	mov	rdx, rcx
	call	error
	mov	rax, qword ptr [rip + stderr]
	test	byte ptr [rax], 0x20
	jne	.label_317
.label_308:
	movsxd	rbp, ebp
	lea	rsi, [r15 + rbp*8]
	mov	rdi, qword ptr [r15 + rbp*8]
	call	execvp
	mov	ebx, dword ptr [r14]
	xor	r13d, r13d
	cmp	ebx, 2
	sete	r13b
	or	r13d, 0x7e
	mov	rdi, qword ptr [r15 + rbp*8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_303
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_317:
	mov	eax, r13d
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_313:
	cmp	eax, 0xffffff7d
	je	.label_315
	cmp	eax, 0xffffff7e
	jne	.label_305
	xor	edi, edi
	call	usage
.label_304:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_322
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
.label_297:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_299
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 0x7d
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_309:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_311
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r14
	call	quote
	mov	rcx, rax
	mov	edi, 0x7d
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_315:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_71
	mov	edx, OFFSET FLAT:label_85
	mov	r8d, OFFSET FLAT:label_323
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_305:
	mov	edi, 0x7d
	call	usage
	.section	.text
	.align	32
	#Procedure 0x404415
	.globl sub_404415
	.type sub_404415, @function
sub_404415:

	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404420

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
	je	.label_326
	cmp	r15, -2
	jb	.label_326
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_326
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_326:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x404476
	.globl sub_404476
	.type sub_404476, @function
sub_404476:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404480

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
	jne	.label_327
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_327
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_328
.label_327:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_328:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_329
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_329:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4044ee
	.globl sub_4044ee
	.type sub_4044ee, @function
sub_4044ee:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4044f0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x4044fa
	.globl sub_4044fa
	.type sub_4044fa, @function
sub_4044fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404500

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
	#Procedure 0x404517
	.globl sub_404517
	.type sub_404517, @function
sub_404517:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404520
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x404528
	.globl sub_404528
	.type sub_404528, @function
sub_404528:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404530

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_330
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_330:
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
	#Procedure 0x4045b3
	.globl sub_4045b3
	.type sub_4045b3, @function
sub_4045b3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4045c0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x4045ce
	.globl sub_4045ce
	.type sub_4045ce, @function
sub_4045ce:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4045d0

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
	js	.label_334
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_337
	cmp	r12d, 0x7fffffff
	je	.label_332
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
	jne	.label_335
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_335:
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
.label_337:
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
	jbe	.label_333
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_336
.label_333:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_331
	mov	rdi, r14
	call	free
.label_331:
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
.label_336:
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
.label_334:
	call	abort
.label_332:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40478d
	.globl sub_40478d
	.type sub_40478d, @function
sub_40478d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404790

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_338
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_303
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4047c0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x4047c8
	.globl sub_4047c8
	.type sub_4047c8, @function
sub_4047c8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4047d0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_301
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_339
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4047f5
	.globl sub_4047f5
	.type sub_4047f5, @function
sub_4047f5:

	nop	word ptr cs:[rax + rax]
.label_341:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_340
	call	__errno_location
	mov	dword ptr [rax], 0
.label_340:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40481b

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
	jne	.label_341
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_340
	test	cl, cl
	jne	.label_340
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_340
.label_345:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404865
	.globl sub_404865
	.type sub_404865, @function
sub_404865:

	nop	word ptr cs:[rax + rax]
.label_346:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_342
	mov	qword ptr [rsi], rbx
.label_344:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_343
	test	rax, rax
	je	.label_342
.label_343:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x404899
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_346
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_345
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_344
	call	free
	xor	eax, eax
	jmp	.label_343
.label_342:
	call	xalloc_die
.label_348:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x4048dc
	.globl sub_4048dc
	.type sub_4048dc, @function
sub_4048dc:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4048e8

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_348
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_347
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_348
.label_347:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_348
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_349
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_349:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404950

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_350
	test	rbx, rbx
	jne	.label_350
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_352:
	call	xalloc_die
.label_350:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_351
	test	rax, rax
	je	.label_352
.label_351:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x404980

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
	je	.label_353
	test	r15, r15
	je	.label_354
.label_353:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_354:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4049bc
	.globl sub_4049bc
	.type sub_4049bc, @function
sub_4049bc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4049c0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_355
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_357
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_356
.label_359:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4049f2
	.globl sub_4049f2
	.type sub_4049f2, @function
sub_4049f2:

	nop	word ptr [rax + rax]
.label_355:
	test	rcx, rcx
	jne	.label_361
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_361:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_359
.label_356:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_358
	test	rbx, rbx
	jne	.label_358
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_358:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_360
	test	rax, rax
	je	.label_357
.label_360:
	pop	rbx
	ret	
.label_357:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404a60

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
	#Procedure 0x404a79
	.globl sub_404a79
	.type sub_404a79, @function
sub_404a79:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404a80
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
	#Procedure 0x404aef
	.globl sub_404aef
	.type sub_404aef, @function
sub_404aef:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404af0
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
	je	.label_362
	mov	qword ptr [rax], rbx
.label_362:
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
	#Procedure 0x404bdc
	.globl sub_404bdc
	.type sub_404bdc, @function
sub_404bdc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404be0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_363
	test	rsi, rsi
	mov	ecx, 1
	je	.label_364
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_364
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_363:
	mov	ecx, 1
.label_364:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x404c2b
	.globl sub_404c2b
	.type sub_404c2b, @function
sub_404c2b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c30
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_365
	test	rdx, rdx
	je	.label_365
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_365:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404c5b
	.globl sub_404c5b
	.type sub_404c5b, @function
sub_404c5b:

	nop	dword ptr [rax + rax]
.label_370:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_366
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_367
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_303
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x404ca1

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_369
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_370
	cmp	dword ptr [rbp], 0x20
	jne	.label_370
.label_369:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_371
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_367:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_368
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_371:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x404d85
	.globl sub_404d85
	.type sub_404d85, @function
sub_404d85:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d92
	.globl sub_404d92
	.type sub_404d92, @function
sub_404d92:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404db6
	.globl sub_404db6
	.type sub_404db6, @function
sub_404db6:

	nop	word ptr cs:[rax + rax]
