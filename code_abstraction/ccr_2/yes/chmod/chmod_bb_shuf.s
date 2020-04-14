	.section	.text
	.align	16
	#Procedure 0x4017f9
	.globl sub_4017f9
	.type sub_4017f9, @function
sub_4017f9:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x4017fa
	.globl sub_4017fa
	.type sub_4017fa, @function
sub_4017fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401832
	.globl sub_401832
	.type sub_401832, @function
sub_401832:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40187a
	.globl sub_40187a
	.type sub_40187a, @function
sub_40187a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40189c
	.globl sub_40189c
	.type sub_40189c, @function
sub_40189c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4018ad
	.globl sub_4018ad
	.type sub_4018ad, @function
sub_4018ad:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4018c6
	.globl sub_4018c6
	.type sub_4018c6, @function
sub_4018c6:

	nop	word ptr cs:[rax + rax]
.label_9:
	mov	edi, eax
	call	close
.label_10:
	mov	rdi, rbx
	call	i_ring_empty
	test	al, al
	jne	.label_11
	mov	rdi, rbx
	call	i_ring_pop
	test	eax, eax
	jns	.label_9
	jmp	.label_10
	.section	.text
	.align	16
	#Procedure 0x4018f1

	.globl restore_initial_cwd
	.type restore_initial_cwd, @function
restore_initial_cwd:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0x48]
	test	al, 4
	jne	.label_12
	test	ah, 2
	jne	.label_15
	mov	edi, dword ptr [rbx + 0x28]
	call	fchdir
	test	eax, eax
	setne	al
	jmp	.label_14
.label_11:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40191b
	.globl sub_40191b
	.type sub_40191b, @function
sub_40191b:

	nop	word ptr [rax + rax]
.label_15:
	mov	esi, dword ptr [rbx + 0x2c]
	lea	rdi, [rbx + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_13
	mov	edi, eax
	call	close
.label_13:
	mov	dword ptr [rbx + 0x2c], 0xffffff9c
.label_12:
	xor	eax, eax
.label_14:
	movzx	ebp, al
	add	rbx, 0x60
	jmp	.label_10
	.section	.text
	.align	16
	#Procedure 0x40194a
	.globl sub_40194a
	.type sub_40194a, @function
sub_40194a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401950
	.globl filemodestring
	.type filemodestring, @function
filemodestring:

	mov	edi, dword ptr [rdi + 0x18]
	jmp	strmode
	.section	.text
	.align	16
	#Procedure 0x401958
	.globl sub_401958
	.type sub_401958, @function
sub_401958:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401960

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
	#Procedure 0x401977
	.globl sub_401977
	.type sub_401977, @function
sub_401977:

	nop	word ptr [rax + rax]
.label_21:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_16
	test	rax, rax
	je	.label_17
.label_16:
	pop	rbx
	ret	
.label_22:
	test	rcx, rcx
	jne	.label_20
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_20:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_18
.label_19:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_21
	test	rbx, rbx
	jne	.label_21
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_18:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4019e5
	.globl sub_4019e5
	.type sub_4019e5, @function
sub_4019e5:

	nop	word ptr [rax + rax]
.label_17:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4019f3
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_22
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_17
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_19
	.section	.text
	.align	16
	#Procedure 0x401a20
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_23
	imul	rbx, rsi
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
	je	.label_25
	test	rax, rax
	je	.label_23
.label_25:
	pop	rbx
	ret	
.label_23:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401a68
	.globl sub_401a68
	.type sub_401a68, @function
sub_401a68:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a70

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_36
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_38
.label_36:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_38:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_26
	cmp	r10d, 0x29
	jae	.label_35
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_37
.label_35:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_37:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_26
	cmp	r10d, 0x29
	jae	.label_33
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_34
.label_33:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_34:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_26
	cmp	r10d, 0x29
	jae	.label_31
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_32
.label_31:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_32:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_26
	cmp	r10d, 0x29
	jae	.label_29
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_30
.label_29:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_30:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_26
	cmp	r10d, 0x29
	jae	.label_27
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_28
.label_27:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_28:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_26
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_26
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_26
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_26
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_26:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x401c52
	.globl sub_401c52
	.type sub_401c52, @function
sub_401c52:

	nop	word ptr cs:[rax + rax]
.label_43:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_42
	mov	edi, OFFSET FLAT:label_39
	mov	esi, OFFSET FLAT:label_40
	mov	edx, 0x29
	mov	ecx, OFFSET FLAT:label_41
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x401c83

	.globl xfts_open
	.type xfts_open, @function
xfts_open:
	push	rax
	or	esi, 0x200
	call	rpl_fts_open
	test	rax, rax
	je	.label_43
	pop	rcx
	ret	
.label_42:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401c9b
	.globl sub_401c9b
	.type sub_401c9b, @function
sub_401c9b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ca0

	.globl cycle_warning_required
	.type cycle_warning_required, @function
cycle_warning_required:
	mov	ecx, dword ptr [rdi + 0x48]
	and	ecx, 0x11
	mov	al, 1
	cmp	ecx, 0x10
	je	.label_44
	cmp	ecx, 0x11
	jne	.label_45
	cmp	qword ptr [rsi + 0x58], 0
	setne	al
.label_44:
	ret	
.label_45:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x401cbe
	.globl sub_401cbe
	.type sub_401cbe, @function
sub_401cbe:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401cc0
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax, dword ptr [rip + label_46]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0, xmmword ptr [rip + default_tuning]
	movups	xmmword ptr [rdi], xmm0
	ret	
	.section	.text
	.align	16
	#Procedure 0x401cd4
	.globl sub_401cd4
	.type sub_401cd4, @function
sub_401cd4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ce0

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
	je	.label_47
	cmp	r15, -2
	jb	.label_47
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_47
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_47:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x401d36
	.globl sub_401d36
	.type sub_401d36, @function
sub_401d36:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401d40

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_48
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_49
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401d70
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
	je	.label_50
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
.label_50:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401dd8
	.globl sub_401dd8
	.type sub_401dd8, @function
sub_401dd8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401de0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_51
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_51
	test	byte ptr [rbx + 1], 1
	je	.label_51
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_51:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x401e13
	.globl sub_401e13
	.type sub_401e13, @function
sub_401e13:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401e20

	.globl fts_sort
	.type fts_sort, @function
fts_sort:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdx
	mov	rbx, rsi
	mov	r12, rdi
	mov	r15, qword ptr [r12 + 0x40]
	cmp	qword ptr [r12 + 0x38], r14
	jae	.label_56
	lea	rsi, [r14 + 0x28]
	mov	qword ptr [r12 + 0x38], rsi
	mov	rax, rsi
	shr	rax, 0x3d
	jne	.label_58
	lea	r13, [r12 + 0x10]
	mov	rdi, qword ptr [r13]
	shl	rsi, 3
	call	realloc
	mov	rdi, rax
	test	rdi, rdi
	je	.label_58
	mov	qword ptr [r13], rdi
	jmp	.label_61
.label_58:
	mov	rdi, qword ptr [r12 + 0x10]
	call	free
	mov	qword ptr [r12 + 0x10], 0
	mov	qword ptr [r12 + 0x38], 0
	jmp	.label_52
.label_56:
	mov	rdi, qword ptr [r12 + 0x10]
	add	r12, 0x10
	mov	r13, r12
.label_61:
	test	rbx, rbx
	je	.label_57
	nop	dword ptr [rax]
.label_60:
	mov	qword ptr [rdi], rbx
	add	rdi, 8
	mov	rbx, qword ptr [rbx + 0x10]
	test	rbx, rbx
	jne	.label_60
	mov	rdi, qword ptr [r13]
.label_57:
	mov	edx, 8
	mov	rsi, r14
	mov	rcx, r15
	call	qsort
	mov	r8, qword ptr [r13]
	mov	rbx, qword ptr [r8]
	cmp	r14, 1
	mov	rcx, rbx
	je	.label_54
	mov	rcx, qword ptr [r8 + 8]
	mov	qword ptr [rbx + 0x10], rcx
	mov	rcx, r14
	add	rcx, -2
	je	.label_55
	lea	rsi, [r8 + 8]
	lea	rdx, [r14 - 3]
	and	ecx, 3
	cmp	rdx, 3
	jae	.label_62
	mov	rdx, rsi
	jmp	.label_53
.label_62:
	lea	rdi, [rcx + 2]
	sub	rdi, r14
	nop	dword ptr [rax + rax]
.label_63:
	mov	rdx, qword ptr [rsi]
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rdx + 0x10], rax
	mov	rax, qword ptr [rsi + 8]
	mov	rdx, qword ptr [rsi + 0x10]
	mov	qword ptr [rax + 0x10], rdx
	mov	rax, qword ptr [rsi + 0x10]
	mov	rdx, qword ptr [rsi + 0x18]
	mov	qword ptr [rax + 0x10], rdx
	lea	rdx, [rsi + 0x20]
	mov	rax, qword ptr [rsi + 0x18]
	mov	rsi, qword ptr [rsi + 0x20]
	mov	qword ptr [rax + 0x10], rsi
	add	rdi, 4
	mov	rsi, rdx
	jne	.label_63
.label_53:
	test	rcx, rcx
	je	.label_55
	add	rdx, 8
	neg	rcx
	nop	dword ptr [rax + rax]
.label_59:
	mov	rax, qword ptr [rdx - 8]
	mov	rsi, qword ptr [rdx]
	mov	qword ptr [rax + 0x10], rsi
	add	rdx, 8
	inc	rcx
	jne	.label_59
.label_55:
	mov	rcx, qword ptr [r8 + r14*8 - 8]
.label_54:
	mov	qword ptr [rcx + 0x10], 0
.label_52:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x401f9e
	.globl sub_401f9e
	.type sub_401f9e, @function
sub_401f9e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401fa0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_64
	test	rbx, rbx
	jne	.label_64
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_64:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_66
	test	rax, rax
	je	.label_65
.label_66:
	pop	rbx
	ret	
.label_65:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401fd0

	.globl AD_hash
	.type AD_hash, @function
AD_hash:
	mov	rax, qword ptr [rdi + 8]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401fdd
	.globl sub_401fdd
	.type sub_401fdd, @function
sub_401fdd:

	nop	dword ptr [rax]
.label_68:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401fe5
	.globl sub_401fe5
	.type sub_401fe5, @function
sub_401fe5:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401fe9

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
	je	.label_67
	test	r15, r15
	je	.label_68
.label_67:
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
	#Procedure 0x402020

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x402027
	.globl sub_402027
	.type sub_402027, @function
sub_402027:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402030
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
	#Procedure 0x4020a5
	.globl sub_4020a5
	.type sub_4020a5, @function
sub_4020a5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4020b0

	.globl cycle_check_init
	.type cycle_check_init, @function
cycle_check_init:
	mov	qword ptr [rdi + 0x10], 0
	mov	dword ptr [rdi + 0x18], 0x95f616
	ret	
	.section	.text
	.align	16
	#Procedure 0x4020c0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_69
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_69:
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
	#Procedure 0x402143
	.globl sub_402143
	.type sub_402143, @function
sub_402143:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402150

	.globl i_ring_init
	.type i_ring_init, @function
i_ring_init:
	mov	byte ptr [rdi + 0x1c], 1
	mov	dword ptr [rdi + 0x14], 0
	mov	dword ptr [rdi + 0x18], 0
	movd	xmm0, esi
	pshufd	xmm0, xmm0, 0
	movdqu	xmmword ptr [rdi], xmm0
	mov	dword ptr [rdi + 0x10], esi
	ret	
	.section	.text
	.align	16
	#Procedure 0x402173
	.globl sub_402173
	.type sub_402173, @function
sub_402173:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402180

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
	je	.label_70
	mov	edx, OFFSET FLAT:label_80
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_86
.label_70:
	mov	edx, OFFSET FLAT:label_87
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_86:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_73
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
	mov	esi, OFFSET FLAT:label_88
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_75
	jmp	qword ptr [(r12 * 8) + label_76]
.label_1056:
	add	rsp, 8
	jmp	.label_74
.label_75:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_83
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
	jmp	.label_74
.label_1057:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_71
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
.label_1058:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_84
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
.label_1059:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_81
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
.label_1060:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_78
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
	jmp	.label_74
.label_1061:
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
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x18
	jmp	.label_74
.label_1062:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_79
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
	jmp	.label_74
.label_1063:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_82
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
	jmp	.label_74
.label_1065:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_85
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
	jmp	.label_74
.label_1064:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_72
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
.label_74:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4024d8
	.globl sub_4024d8
	.type sub_4024d8, @function
sub_4024d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4024e0

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_89
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_89:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	xor	ecx, ecx
	test	dl, 0x40
	je	.label_90
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x18
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_91
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_92
.label_91:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_92:
	mov	ecx, dword ptr [rax]
.label_90:
	xor	eax, eax
	call	openat
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	16
	#Procedure 0x40259e
	.globl sub_40259e
	.type sub_40259e, @function
sub_40259e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4025a0
	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:

	mov	rax, qword ptr [rdi + 0x20]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4025a5
	.globl sub_4025a5
	.type sub_4025a5, @function
sub_4025a5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4025b0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_93
	test	rax, rax
	je	.label_94
.label_93:
	pop	rbx
	ret	
.label_94:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4025ca
	.globl sub_4025ca
	.type sub_4025ca, @function
sub_4025ca:

	nop	word ptr [rax + rax]
.label_96:
	mov	rdi, qword ptr [rbp + 0x58]
	lea	rsi, [r14 + 0x78]
	call	cycle_check
	mov	bpl, 1
	test	al, al
	je	.label_95
	mov	qword ptr [r14], r14
.label_98:
	mov	word ptr [r14 + 0x70], 2
	jmp	.label_95
	.section	.text
	.align	16
	#Procedure 0x4025f0

	.globl enter_dir
	.type enter_dir, @function
enter_dir:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbp, rdi
	movzx	eax, word ptr [rbp + 0x48]
	test	ax, 0x102
	je	.label_96
	mov	edi, 0x18
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_97
	movups	xmm0, xmmword ptr [r14 + 0x78]
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], r14
	mov	rdi, qword ptr [rbp + 0x58]
	mov	rsi, rbx
	call	hash_insert
	mov	r15, rax
	mov	bpl, 1
	cmp	r15, rbx
	je	.label_95
	mov	rdi, rbx
	call	free
	test	r15, r15
	je	.label_97
	mov	rax, qword ptr [r15 + 0x10]
	mov	qword ptr [r14], rax
	jmp	.label_98
.label_97:
	xor	ebp, ebp
.label_95:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402661
	.globl sub_402661
	.type sub_402661, @function
sub_402661:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402670
	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:

	mov	rcx, qword ptr [rdi]
	mov	rdi, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	rcx, rdi
	jae	.label_102
	mov	rax, rcx
	not	rax
	add	rdi, rax
	shr	rdi, 4
	lea	rsi, [rdi + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	eax, eax
	test	rdi, rdi
	je	.label_100
	sub	rsi, r8
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_104:
	cmp	qword ptr [rcx], 0
	je	.label_105
	xor	edi, edi
	mov	rdx, rcx
	nop	dword ptr [rax + rax]
.label_99:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_99
	cmp	rdi, rax
	cmova	rax, rdi
.label_105:
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_103
	lea	rdx, [rcx + 0x10]
	xor	edi, edi
.label_101:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_101
	cmp	rdi, rax
	cmova	rax, rdi
.label_103:
	add	rcx, 0x20
	add	rsi, -2
	jne	.label_104
.label_100:
	test	r8, r8
	je	.label_102
	cmp	qword ptr [rcx], 0
	je	.label_102
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_106:
	mov	rcx, qword ptr [rcx + 8]
	inc	rdx
	test	rcx, rcx
	jne	.label_106
	cmp	rdx, rax
	cmova	rax, rdx
.label_102:
	ret	
	.section	.text
	.align	16
	#Procedure 0x402724
	.globl sub_402724
	.type sub_402724, @function
sub_402724:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402730
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r9, qword ptr [rdi]
	mov	r8, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	r9, r8
	jae	.label_107
	xor	eax, eax
.label_109:
	cmp	qword ptr [r9], 0
	je	.label_108
	test	r9, r9
	je	.label_108
	mov	r8, r9
	nop	
.label_110:
	cmp	rax, rdx
	jae	.label_107
	mov	rcx, qword ptr [r8]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r8, qword ptr [r8 + 8]
	test	r8, r8
	jne	.label_110
	mov	r8, qword ptr [rdi + 8]
.label_108:
	add	r9, 0x10
	cmp	r9, r8
	jb	.label_109
.label_107:
	ret	
	.section	.text
	.align	16
	#Procedure 0x402776
	.globl sub_402776
	.type sub_402776, @function
sub_402776:

	nop	word ptr cs:[rax + rax]
.label_112:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	xor	ebx, ebx
.label_111:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40279f
	.globl sub_40279f
	.type sub_40279f, @function
sub_40279f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4027a0

	.globl opendirat
	.type opendirat, @function
opendirat:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rcx
	or	edx, 0x90900
	xor	ebx, ebx
	xor	eax, eax
	call	openat_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_111
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_112
	mov	dword ptr [r14], ebp
	jmp	.label_111
	.section	.text
	.align	16
	#Procedure 0x4027d0

	.globl i_ring_push
	.type i_ring_push, @function
i_ring_push:
	movzx	ecx, byte ptr [rdi + 0x1c]
	xor	ecx, 1
	add	ecx, dword ptr [rdi + 0x14]
	mov	edx, ecx
	and	edx, 3
	mov	eax, dword ptr [rdi + rdx*4]
	mov	dword ptr [rdi + rdx*4], esi
	mov	dword ptr [rdi + 0x14], edx
	cmp	edx, dword ptr [rdi + 0x18]
	jne	.label_113
	mov	dl, byte ptr [rdi + 0x1c]
	xor	dl, 1
	movzx	edx, dl
	add	edx, ecx
	and	edx, 3
	mov	dword ptr [rdi + 0x18], edx
.label_113:
	mov	byte ptr [rdi + 0x1c], 0
	ret	
	.section	.text
	.align	16
	#Procedure 0x402803
	.globl sub_402803
	.type sub_402803, @function
sub_402803:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402810

	.globl dev_type_hash
	.type dev_type_hash, @function
dev_type_hash:
	mov	rax, qword ptr [rdi]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40281c
	.globl sub_40281c
	.type sub_40281c, @function
sub_40281c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402820
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
	#Procedure 0x402838
	.globl sub_402838
	.type sub_402838, @function
sub_402838:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402840
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rax, qword ptr [rdi]
	mov	r9, qword ptr [rdi + 8]
	xor	r10d, r10d
	cmp	rax, r9
	mov	ecx, 0
	jae	.label_114
	mov	rcx, rax
	not	rcx
	add	r9, rcx
	shr	r9, 4
	lea	rsi, [r9 + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	ecx, ecx
	test	r9, r9
	je	.label_118
	sub	rsi, r8
	xor	ecx, ecx
	xor	r10d, r10d
	nop	
.label_124:
	cmp	qword ptr [rax], 0
	je	.label_115
	mov	rdx, rax
	nop	dword ptr [rax]
.label_117:
	inc	rcx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	jne	.label_117
	inc	r10
.label_115:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_119
	lea	rdx, [rax + 0x10]
	nop	word ptr [rax + rax]
.label_122:
	inc	rcx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	jne	.label_122
	inc	r10
.label_119:
	add	rax, 0x20
	add	rsi, -2
	jne	.label_124
	jmp	.label_116
.label_118:
	xor	r10d, r10d
.label_116:
	test	r8, r8
	je	.label_114
	cmp	qword ptr [rax], 0
	je	.label_114
	nop	dword ptr [rax]
.label_120:
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_120
	inc	r10
.label_114:
	cmp	r10, qword ptr [rdi + 0x18]
	jne	.label_121
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	je	.label_123
.label_121:
	xor	eax, eax
.label_123:
	ret	
.label_127:
	call	xalloc_die
.label_128:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_127
	mov	qword ptr [rsi], rbx
.label_129:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_125
	test	rax, rax
	je	.label_127
.label_125:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40292d

	.globl x2realloc
	.type x2realloc, @function
x2realloc:
	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_128
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_126
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_129
	call	free
	xor	eax, eax
	jmp	.label_125
.label_126:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402964
	.globl sub_402964
	.type sub_402964, @function
sub_402964:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402970

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_130]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_131]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_132]
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
	#Procedure 0x4029c5
	.globl sub_4029c5
	.type sub_4029c5, @function
sub_4029c5:

	nop	word ptr cs:[rax + rax]
.label_133:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4029d6
	.globl sub_4029d6
	.type sub_4029d6, @function
sub_4029d6:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4029db
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_133
	test	rdx, rdx
	je	.label_133
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402a00

	.globl hash_insert
	.type hash_insert, @function
hash_insert:
	push	rbx
	sub	rsp, 0x10
	mov	rbx, rsi
	lea	rdx, [rsp + 8]
	call	hash_insert_if_absent
	mov	ecx, eax
	xor	eax, eax
	cmp	ecx, -1
	je	.label_134
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_134:
	add	rsp, 0x10
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402a2c
	.globl sub_402a2c
	.type sub_402a2c, @function
sub_402a2c:

	nop	dword ptr [rax]
.label_139:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_135
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_136
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_49
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x402a71

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_138
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_139
	cmp	dword ptr [rbp], 0x20
	jne	.label_139
.label_138:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_140
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_140:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_136:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_137
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
	#Procedure 0x402af0

	.globl strmode
	.type strmode, @function
strmode:
	mov	eax, edi
	mov	edx, eax
	and	edx, 0xfffff000
	movsx	ecx, dx
	cmp	ecx, 0xfff
	jle	.label_151
	cmp	ecx, 0x3fff
	jg	.label_143
	movzx	ecx, dx
	cmp	ecx, 0x1000
	je	.label_145
	cmp	ecx, 0x2000
	jne	.label_149
	mov	cl, 0x63
	jmp	.label_142
.label_145:
	mov	cl, 0x70
	jmp	.label_142
.label_154:
	mov	cl, 0x62
	jmp	.label_142
.label_149:
	mov	cl, 0x3f
	jmp	.label_142
.label_143:
	movzx	ecx, dx
	cmp	ecx, 0x6000
	je	.label_154
	cmp	ecx, 0x4000
	jne	.label_149
	mov	cl, 0x64
	jmp	.label_142
.label_151:
	mov	cl, 0x2d
	movzx	edx, dx
	cmp	edx, 0x8000
	je	.label_142
	cmp	edx, 0xa000
	je	.label_147
	cmp	edx, 0xc000
	jne	.label_149
	mov	cl, 0x73
	jmp	.label_142
.label_147:
	mov	cl, 0x6c
.label_142:
	push	rbx
	mov	byte ptr [rsi], cl
	mov	bl, ah
	test	bl, 1
	mov	r9b, 0x72
	mov	cl, 0x72
	jne	.label_153
	mov	cl, 0x2d
.label_153:
	mov	byte ptr [rsi + 1], cl
	mov	ecx, eax
	sar	cl, 7
	and	cl, 0x4a
	add	cl, 0x2d
	mov	byte ptr [rsi + 2], cl
	mov	ecx, eax
	and	ecx, 0x40
	mov	edx, ecx
	shr	edx, 1
	or	edx, 0x53
	test	ecx, ecx
	mov	r8b, 0x78
	mov	cl, 0x78
	jne	.label_144
	mov	cl, 0x2d
.label_144:
	test	bl, 8
	jne	.label_152
	mov	dl, cl
.label_152:
	mov	byte ptr [rsi + 3], dl
	test	al, 0x20
	mov	cl, 0x72
	jne	.label_157
	mov	cl, 0x2d
.label_157:
	mov	byte ptr [rsi + 4], cl
	test	al, 0x10
	mov	dl, 0x77
	mov	cl, 0x77
	jne	.label_156
	mov	cl, 0x2d
.label_156:
	mov	byte ptr [rsi + 5], cl
	mov	ecx, eax
	and	ecx, 8
	lea	edi, [rcx*4 + 0x53]
	mov	cl, 0x78
	jne	.label_141
	mov	cl, 0x2d
.label_141:
	test	bl, 4
	jne	.label_148
	mov	dil, cl
.label_148:
	mov	byte ptr [rsi + 6], dil
	test	al, 4
	jne	.label_150
	mov	r9b, 0x2d
.label_150:
	mov	byte ptr [rsi + 7], r9b
	test	al, 2
	jne	.label_146
	mov	dl, 0x2d
.label_146:
	mov	byte ptr [rsi + 8], dl
	and	eax, 1
	jne	.label_155
	mov	r8b, 0x2d
.label_155:
	test	bl, 2
	pop	rbx
	je	.label_158
	shl	eax, 5
	or	eax, 0x54
	mov	r8d, eax
.label_158:
	mov	byte ptr [rsi + 9], r8b
	mov	byte ptr [rsi + 0xa], 0x20
	mov	byte ptr [rsi + 0xb], 0
	ret	
	.section	.text
	.align	16
	#Procedure 0x402c1b
	.globl sub_402c1b
	.type sub_402c1b, @function
sub_402c1b:

	nop	dword ptr [rax + rax]
.label_160:
	mov	eax, ebx
.label_159:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402c2d
	.globl sub_402c2d
	.type sub_402c2d, @function
sub_402c2d:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c3c

	.globl fd_safer
	.type fd_safer, @function
fd_safer:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebx, edi
	cmp	ebx, 2
	ja	.label_160
	mov	edi, ebx
	call	dup_safer
	mov	r14d, eax
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r15d
	mov	eax, r14d
	jmp	.label_159
	.section	.text
	.align	16
	#Procedure 0x402c70
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_161:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_161
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x402c91
	.globl sub_402c91
	.type sub_402c91, @function
sub_402c91:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ca0

	.globl raw_hasher
	.type raw_hasher, @function
raw_hasher:
	rol	rdi, 0x3d
	xor	edx, edx
	mov	rax, rdi
	div	rsi
	mov	rax, rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402cb0

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
	test	al, al
	je	.label_174
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_174:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xf0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	cmp	esi, 0xb
	ja	.label_177
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_175
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_165
	test	esi, esi
	jne	.label_177
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_178
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_179
.label_177:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_180
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_165
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_166
.label_175:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_170
.label_165:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_171
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_172
.label_171:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_172:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
.label_173:
	call	fcntl
.label_170:
	mov	ebp, eax
.label_164:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_166:
	cmp	eax, 6
	jne	.label_180
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_182
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_169
.label_180:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_162
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_168
.label_178:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_179:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	jmp	.label_173
.label_182:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_169:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0
	js	.label_176
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_181
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_181
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_164
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0xffffffff
	mov	al, 1
	jmp	.label_167
.label_181:
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  1
	jmp	.label_164
.label_162:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_168:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_170
.label_176:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  -1
	sete	al
.label_167:
	test	al, al
	je	.label_164
	test	ebp, ebp
	js	.label_164
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_163
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_164
.label_163:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_164
	.section	.text
	.align	16
	#Procedure 0x402f41
	.globl sub_402f41
	.type sub_402f41, @function
sub_402f41:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402f50

	.globl cycle_check
	.type cycle_check, @function
cycle_check:
	cmp	dword ptr [rdi + 0x18], 0x95f616
	jne	.label_183
	mov	rcx, qword ptr [rdi + 0x10]
	test	rcx, rcx
	je	.label_184
	mov	rax, qword ptr [rsi + 8]
	cmp	rax, qword ptr [rdi]
	jne	.label_184
	mov	rdx, qword ptr [rsi]
	mov	al, 1
	cmp	rdx, qword ptr [rdi + 8]
	je	.label_185
.label_184:
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x10], rdx
	test	rdx, rcx
	jne	.label_186
	mov	al, 1
	test	rdx, rdx
	je	.label_185
	mov	rax, qword ptr [rsi]
	mov	qword ptr [rdi + 8], rax
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rdi], rax
.label_186:
	xor	eax, eax
.label_185:
	ret	
.label_183:
	push	rax
	mov	edi, OFFSET FLAT:label_187
	mov	esi, OFFSET FLAT:label_188
	mov	edx, 0x3c
	mov	ecx, OFFSET FLAT:label_189
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x402fb5
	.globl sub_402fb5
	.type sub_402fb5, @function
sub_402fb5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402fc0

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_190
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_190:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_191
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_193
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_192
.label_193:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_192:
	mov	edx, dword ptr [rax]
.label_191:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	16
	#Procedure 0x403084
	.globl sub_403084
	.type sub_403084, @function
sub_403084:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403090
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
	#Procedure 0x4030c6
	.globl sub_4030c6
	.type sub_4030c6, @function
sub_4030c6:

	nop	word ptr cs:[rax + rax]
.label_198:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_194
	mov	eax, OFFSET FLAT:label_195
	jmp	.label_196
	.section	.text
	.align	16
	#Procedure 0x4030df
	.globl sub_4030df
	.type sub_4030df, @function
sub_4030df:

	nop	word ptr cs:[rax + rax]
.label_203:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_197
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_197
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_197
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_197
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_197
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_197
	cmp	byte ptr [rax + 7], 0
	je	.label_198
.label_197:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_199
	mov	eax, OFFSET FLAT:label_200
.label_196:
	cmove	rax, rcx
.label_204:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403132

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
	jne	.label_204
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_203
	cmp	ecx, 0x55
	jne	.label_197
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_197
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_197
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_197
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_197
	cmp	byte ptr [rax + 5], 0
	jne	.label_197
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_201
	mov	eax, OFFSET FLAT:label_202
	jmp	.label_196
.label_207:
	add	rcx, 0x10
.label_208:
	cmp	rcx, rdx
	jae	.label_206
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_207
.label_205:
	ret	
.label_206:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4031b8
	.globl sub_4031b8
	.type sub_4031b8, @function
sub_4031b8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4031c0
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_205
	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	jmp	.label_208
	.section	.text
	.align	16
	#Procedure 0x4031d2
	.globl sub_4031d2
	.type sub_4031d2, @function
sub_4031d2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4031e0
	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:

	mov	rax, qword ptr [rdi + 0x10]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4031e5
	.globl sub_4031e5
	.type sub_4031e5, @function
sub_4031e5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4031f0

	.globl fts_compare_ino
	.type fts_compare_ino, @function
fts_compare_ino:
	mov	rax, qword ptr [rdi]
	mov	rax, qword ptr [rax + 0x80]
	mov	rcx, qword ptr [rsi]
	mov	rcx, qword ptr [rcx + 0x80]
	cmp	rcx, rax
	sbb	edx, edx
	and	edx, 1
	cmp	rax, rcx
	mov	eax, 0xffffffff
	cmovae	eax, edx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403218
	.globl sub_403218
	.type sub_403218, @function
sub_403218:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403220

	.globl rpl_fts_close
	.type rpl_fts_close, @function
rpl_fts_close:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rdi
	mov	rdi, qword ptr [r14]
	test	rdi, rdi
	je	.label_214
	cmp	qword ptr [rdi + 0x58], 0
	js	.label_216
	nop	word ptr cs:[rax + rax]
.label_222:
	mov	rbx, qword ptr [rdi + 0x10]
	test	rbx, rbx
	jne	.label_219
	mov	rbx, qword ptr [rdi + 8]
.label_219:
	call	free
	cmp	qword ptr [rbx + 0x58], 0
	mov	rdi, rbx
	jns	.label_222
	jmp	.label_224
.label_216:
	mov	rbx, rdi
.label_224:
	mov	rdi, rbx
	call	free
.label_214:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_226
	nop	word ptr cs:[rax + rax]
.label_212:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_209
	call	closedir
.label_209:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_212
.label_226:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rdi, qword ptr [r14 + 0x20]
	call	free
	mov	eax, dword ptr [r14 + 0x48]
	test	ah, 2
	jne	.label_217
	xor	ebp, ebp
	test	al, 4
	jne	.label_218
	mov	edi, dword ptr [r14 + 0x28]
	call	fchdir
	xor	ebp, ebp
	test	eax, eax
	je	.label_221
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_221:
	mov	edi, dword ptr [r14 + 0x28]
	call	close
	test	ebp, ebp
	je	.label_225
	jmp	.label_218
.label_217:
	mov	edi, dword ptr [r14 + 0x2c]
	xor	ebp, ebp
	test	edi, edi
	js	.label_218
	call	close
.label_225:
	test	eax, eax
	je	.label_218
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_218:
	lea	rbx, [r14 + 0x60]
	jmp	.label_210
	.section	.text
	.align	16
	#Procedure 0x403308
	.globl sub_403308
	.type sub_403308, @function
sub_403308:

	nop	dword ptr [rax + rax]
.label_220:
	mov	rdi, qword ptr [r14 + 0x50]
	test	rdi, rdi
	je	.label_211
	call	hash_free
.label_211:
	movzx	eax, word ptr [r14 + 0x48]
	test	ax, 0x102
	je	.label_213
	mov	rdi, qword ptr [r14 + 0x58]
	test	rdi, rdi
	je	.label_215
	call	hash_free
	jmp	.label_215
.label_223:
	mov	edi, eax
	call	close
.label_210:
	mov	rdi, rbx
	call	i_ring_empty
	test	al, al
	jne	.label_220
	mov	rdi, rbx
	call	i_ring_pop
	test	eax, eax
	jns	.label_223
	jmp	.label_210
.label_213:
	mov	rdi, qword ptr [r14 + 0x58]
	call	free
.label_215:
	mov	rdi, r14
	call	free
	xor	eax, eax
	test	ebp, ebp
	je	.label_227
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_227:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403382
	.globl sub_403382
	.type sub_403382, @function
sub_403382:

	nop	word ptr cs:[rax + rax]
.label_228:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403395
	.globl sub_403395
	.type sub_403395, @function
sub_403395:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403397
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_130]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_131]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_132]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_228
	test	rdx, rdx
	je	.label_228
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
	#Procedure 0x403400

	.globl hash_rehash
	.type hash_rehash, @function
hash_rehash:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x50
	mov	r14, rdi
	mov	rax, qword ptr [r14 + 0x28]
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_229
	mov	ecx, esi
	and	ecx, 1
	test	rsi, rsi
	js	.label_238
	cvtsi2ss	xmm0, rsi
	jmp	.label_242
.label_238:
	shr	rsi, 1
	or	rcx, rsi
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_242:
	divss	xmm0, dword ptr [rax + 8]
	movss	xmm1, dword ptr [rip + label_247]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	ucomiss	xmm0, dword ptr [rip + label_248]
	jae	.label_237
.label_229:
	cmp	rsi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rsi
	or	rbx, 1
	jmp	.label_246
	.section	.text
	.align	16
	#Procedure 0x40348b
	.globl sub_40348b
	.type sub_40348b, @function
sub_40348b:

	nop	dword ptr [rax + rax]
.label_240:
	add	rbx, 2
.label_246:
	cmp	rbx, -1
	je	.label_237
	cmp	rbx, 0xa
	mov	ecx, 3
	jb	.label_230
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	nop	dword ptr [rax + rax]
.label_235:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_230
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_235
.label_230:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_240
	lea	rax, [rbx - 1]
	movabs	rcx, 0xffffffffffffffe
	cmp	rax, rcx
	ja	.label_237
	mov	bpl, 1
	cmp	rbx, qword ptr [r14 + 0x10]
	je	.label_231
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_237
	mov	qword ptr [rsp + 0x10], rbx
	shl	rbx, 4
	add	rax, rbx
	mov	qword ptr [rsp + 8], rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsp + 0x18], xmm0
	movups	xmm0, xmmword ptr [r14 + 0x28]
	movups	xmmword ptr [rsp + 0x28], xmm0
	movups	xmm0, xmmword ptr [r14 + 0x38]
	movups	xmmword ptr [rsp + 0x38], xmm0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rsp + 0x48], rax
	lea	rdi, [rsp]
	xor	edx, edx
	mov	rsi, r14
	call	transfer_entries
	test	al, al
	je	.label_244
	mov	rdi, qword ptr [r14]
	call	free
	movaps	xmm0, xmmword ptr [rsp]
	movups	xmmword ptr [r14], xmm0
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14 + 0x10], xmm0
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	jmp	.label_231
.label_244:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	mov	r12, qword ptr [rsp]
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_239
	.section	.text
	.align	16
	#Procedure 0x4035ae
	.globl sub_4035ae
	.type sub_4035ae, @function
sub_4035ae:

	nop	
.label_233:
	add	r12, 0x10
.label_239:
	cmp	r12, r15
	jae	.label_245
	cmp	qword ptr [r12], 0
	je	.label_233
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	je	.label_232
	mov	rsi, qword ptr [r14 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_249:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_243
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_236
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_234
	.section	.text
	.align	16
	#Procedure 0x40361a
	.globl sub_40361a
	.type sub_40361a, @function
sub_40361a:

	nop	word ptr [rax + rax]
.label_236:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_234:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_249
.label_232:
	mov	qword ptr [r12 + 8], 0
	jmp	.label_233
.label_245:
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, r14
	call	transfer_entries
	test	al, al
	je	.label_241
	mov	rdi, qword ptr [rsp]
	call	free
.label_237:
	xor	ebp, ebp
.label_231:
	mov	eax, ebp
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_243:
	call	abort
.label_241:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40368a
	.globl sub_40368a
	.type sub_40368a, @function
sub_40368a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403690
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
	#Procedure 0x403751
	.globl sub_403751
	.type sub_403751, @function
sub_403751:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403760

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
	mov	r14, rsi
	mov	r12d, edi
	mov	qword ptr [rsp + 0x28], 0
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_309
	call	setlocale
	mov	edi, OFFSET FLAT:label_312
	mov	esi, OFFSET FLAT:label_313
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_312
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	byte ptr [rip + diagnose_surprises],  0
	mov	byte ptr [rip + force_silent],  0
	mov	byte ptr [rip + recurse],  0
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	xor	ebx, ebx
	xor	ebp, ebp
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	mov	qword ptr [rsp + 8], r14
	mov	dword ptr [rsp + 0x10], r12d
	jmp	.label_280
	.section	.text
	.align	16
	#Procedure 0x4037ed
	.globl sub_4037ed
	.type sub_4037ed, @function
sub_4037ed:

	nop	dword ptr [rax]
.label_271:
	mov	byte ptr [rax + rbp], 0x2c
	mov	rcx, rax
	mov	qword ptr [rsp + 0x18], rcx
	add	r12, rax
	inc	r14
	mov	rdi, r12
	mov	rsi, rbx
	mov	rdx, r14
	call	memcpy
	mov	byte ptr [rip + diagnose_surprises],  1
	mov	bl, r15b
	mov	rbp, r13
	mov	r14, qword ptr [rsp + 8]
	mov	r12d, dword ptr [rsp + 0x10]
.label_280:
	mov	r15d, ebx
	xor	ebx, ebx
	mov	edx, OFFSET FLAT:label_256
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, r12d
	mov	rsi, r14
	call	getopt_long
	add	eax, 0x83
	cmp	eax, 0x105
	ja	.label_260
	jmp	qword ptr [(rax * 8) + label_267]
.label_990:
	movsxd	rax, dword ptr [rip + optind]
	mov	rbx, qword ptr [r14 + rax*8 - 8]
	mov	rdi, rbx
	call	strlen
	mov	r14, rax
	cmp	rbp, 1
	mov	r12, rbp
	sbb	r12, -1
	lea	r13, [r14 + r12]
	cmp	qword ptr [rsp + 0x28], r13
	jbe	.label_281
	mov	rax, qword ptr [rsp + 0x18]
	jmp	.label_271
	.section	.text
	.align	16
	#Procedure 0x403892
	.globl sub_403892
	.type sub_403892, @function
sub_403892:

	nop	word ptr cs:[rax + rax]
.label_281:
	lea	rax, [r13 + 1]
	mov	qword ptr [rsp + 0x28], rax
	mov	rdi, qword ptr [rsp + 0x18]
	lea	rsi, [rsp + 0x28]
	call	x2realloc
	jmp	.label_271
.label_991:
	mov	byte ptr [rip + recurse],  1
	mov	bl, r15b
	jmp	.label_280
.label_992:
	mov	dword ptr [rip + verbosity],  1
	mov	bl, r15b
	jmp	.label_280
.label_993:
	mov	byte ptr [rip + force_silent],  1
	mov	bl, r15b
	jmp	.label_280
.label_994:
	mov	dword ptr [rip + verbosity],  0
	mov	bl, r15b
	jmp	.label_280
.label_995:
	mov	bl, 1
	jmp	.label_280
.label_996:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rsp + 0x20], rax
	mov	bl, r15b
	jmp	.label_280
.label_989:
	mov	rbx, qword ptr [rsp + 0x20]
	test	rbx, rbx
	je	.label_296
	cmp	qword ptr [rsp + 0x18], 0
	mov	ecx, 0
	je	.label_298
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_301
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
.label_296:
	mov	rcx, qword ptr [rsp + 0x18]
	test	rcx, rcx
	jne	.label_298
	movsxd	rax, dword ptr [rip + optind]
	lea	ecx, [rax + 1]
	mov	dword ptr [rip + optind],  ecx
	mov	rcx, qword ptr [r14 + rax*8]
.label_298:
	movsxd	rax, dword ptr [rip + optind]
	cmp	eax, r12d
	jge	.label_307
	test	rbx, rbx
	je	.label_302
	mov	rdi, rbx
	call	mode_create_from_ref
	mov	qword ptr [rip + change],  rax
	test	rax, rax
	jne	.label_314
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_258
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	call	error
.label_302:
	mov	rbp, rcx
	mov	rdi, rbp
	call	mode_compile
	mov	qword ptr [rip + change],  rax
	test	rax, rax
	je	.label_327
	xor	edi, edi
	call	umask
	mov	dword ptr [rip + umask_value],  eax
.label_314:
	test	r15b, r15b
	je	.label_251
	mov	al, byte ptr [rip + recurse]
	xor	al, 1
	test	al, 1
	jne	.label_251
	mov	edi, OFFSET FLAT:main.dev_ino_buf
	call	get_root_dev_ino
	mov	qword ptr [rip + root_dev_ino],  rax
	test	rax, rax
	jne	.label_255
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_258
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:label_261
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_251:
	mov	qword ptr [rip + root_dev_ino],  0
.label_255:
	movsxd	rax, dword ptr [rip + optind]
	lea	rdi, [r14 + rax*8]
	mov	esi, 0x411
	xor	edx, edx
	call	xfts_open
	mov	qword ptr [rsp + 0x18], rax
	mov	rdi, rax
	call	rpl_fts_read
	mov	r12, rax
	mov	bpl, 1
	test	r12, r12
	je	.label_274
	mov	r14b, 1
	jmp	.label_277
.label_328:
	mov	qword ptr [r12 + 0x20], 1
	mov	edx, 1
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, r12
	call	rpl_fts_set
	mov	bpl, 1
	jmp	.label_268
.label_319:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_291
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r13
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	jmp	.label_292
	.section	.text
	.align	16
	#Procedure 0x403b0c
	.globl sub_403b0c
	.type sub_403b0c, @function
sub_403b0c:

	nop	dword ptr [rax]
.label_277:
	mov	rbx, qword ptr [r12 + 0x30]
	mov	r13, qword ptr [r12 + 0x38]
	movzx	eax, word ptr [r12 + 0x70]
	add	eax, -2
	movzx	eax, ax
	cmp	eax, 0xb
	ja	.label_293
	mov	bpl, 1
	jmp	qword ptr [(rax * 8) + label_300]
.label_998:
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, r12
	call	cycle_warning_required
	test	al, al
	je	.label_293
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_303
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r13
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	jmp	.label_268
	.section	.text
	.align	16
	#Procedure 0x403b81
	.globl sub_403b81
	.type sub_403b81, @function
sub_403b81:

	nop	word ptr cs:[rax + rax]
.label_293:
	mov	rax, qword ptr [rip + root_dev_ino]
	test	rax, rax
	je	.label_310
	mov	rcx, qword ptr [r12 + 0x80]
	cmp	rcx, qword ptr [rax]
	jne	.label_310
	mov	rcx, qword ptr [r12 + 0x78]
	cmp	rcx, qword ptr [rax + 8]
	jne	.label_310
	cmp	byte ptr [r13], 0x2f
	jne	.label_317
	cmp	byte ptr [r13 + 1], 0
	je	.label_319
.label_317:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_321
	mov	edx, 5
	call	dcgettext
	mov	rdx, r13
	mov	r13, rax
	xor	edi, edi
	mov	esi, 4
	call	quotearg_n_style
	mov	rbp, rax
	mov	edi, 1
	mov	esi, 4
	mov	edx, OFFSET FLAT:label_261
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r13
	mov	rcx, rbp
	mov	r8, rbx
	call	error
.label_292:
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_283
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	edx, 4
	mov	rbx, qword ptr [rsp + 0x18]
	mov	rdi, rbx
	mov	rsi, r12
	call	rpl_fts_set
	mov	rdi, rbx
	call	rpl_fts_read
	jmp	.label_268
.label_310:
	mov	qword ptr [rsp + 0x10], rbx
	mov	byte ptr [rsp + 0x20], r14b
	mov	edi, dword ptr [r12 + 0x90]
	mov	ebx, edi
	and	ebx, 0xf000
	xor	esi, esi
	cmp	ebx, 0x4000
	sete	sil
	mov	edx, dword ptr [rip + umask_value]
	mov	rcx, qword ptr [rip + change]
	xor	r15d, r15d
	xor	r8d, r8d
	mov	r14d, edi
	call	mode_adjust
	mov	ebp, eax
	cmp	ebx, 0xa000
	mov	qword ptr [rsp + 8], r13
	jne	.label_282
	mov	r13b, 1
	mov	ebx, ebp
	jmp	.label_279
.label_999:
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r13
	xor	r15d, r15d
	movzx	eax, byte ptr [rip + force_silent]
	test	al, al
	mov	r13d, 0
	jne	.label_253
	mov	ebx, dword ptr [r12 + 0x40]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_286
	jmp	.label_287
.label_1002:
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r13
	xor	r15d, r15d
	movzx	eax, byte ptr [rip + force_silent]
	test	al, al
	mov	r13d, 0
	jne	.label_253
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_297
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 8]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	jmp	.label_311
.label_1000:
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r13
	xor	r15d, r15d
	movzx	eax, byte ptr [rip + force_silent]
	test	al, al
	mov	r13d, 0
	jne	.label_253
	mov	ebx, dword ptr [r12 + 0x40]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 8]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_49
	xor	eax, eax
	mov	esi, ebx
	jmp	.label_311
.label_1001:
	cmp	qword ptr [r12 + 0x58], 0
	jne	.label_315
	cmp	qword ptr [r12 + 0x20], 0
	je	.label_328
.label_315:
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r13
	xor	r15d, r15d
	movzx	eax, byte ptr [rip + force_silent]
	test	al, al
	mov	r13d, 0
	jne	.label_253
	mov	ebx, dword ptr [r12 + 0x40]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_322
.label_287:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 8]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
.label_311:
	call	error
	xor	r13d, r13d
	jmp	.label_253
.label_282:
	mov	rax, qword ptr [rsp + 0x18]
	mov	edi, dword ptr [rax + 0x2c]
	xor	ecx, ecx
	mov	rsi, qword ptr [rsp + 0x10]
	mov	edx, ebp
	call	fchmodat
	mov	r15b, 1
	test	eax, eax
	mov	ebx, ebp
	je	.label_299
	xor	r15d, r15d
	movzx	eax, byte ptr [rip + force_silent]
	test	al, al
	mov	ebp, r14d
	jne	.label_259
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_266
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0x40], rax
	mov	edi, 4
	mov	rsi, r13
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, qword ptr [rsp + 0x40]
	call	error
.label_259:
	xor	r13d, r13d
	jmp	.label_272
.label_299:
	mov	r13b, 1
.label_279:
	mov	ebp, r14d
.label_272:
	movzx	r14d, byte ptr [rsp + 0x20]
.label_253:
	cmp	dword ptr [rip + verbosity],  2
	je	.label_270
	test	r15b, r15b
	je	.label_276
	test	bh, 0xe
	mov	eax, ebx
	je	.label_278
	mov	rax, qword ptr [rsp + 0x18]
	mov	esi, dword ptr [rax + 0x2c]
	mov	edi, 1
	xor	r8d, r8d
	mov	rdx, qword ptr [rsp + 0x10]
	lea	rcx, [rsp + 0x48]
	call	__fxstatat
	test	eax, eax
	je	.label_284
	movzx	eax, byte ptr [rip + force_silent]
	test	al, al
	jne	.label_276
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rsp + 0x10], eax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_289
	mov	edx, 5
	call	dcgettext
	mov	byte ptr [rsp + 0x20], r14b
	mov	r14d, ebp
	mov	ebp, ebx
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 8]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, dword ptr [rsp + 0x10]
	mov	rdx, rbx
	mov	ebx, ebp
	mov	ebp, r14d
	movzx	r14d, byte ptr [rsp + 0x20]
	call	error
	nop	word ptr cs:[rax + rax]
.label_276:
	xor	eax, eax
	jmp	.label_304
.label_284:
	mov	eax, dword ptr [rsp + 0x60]
.label_278:
	xor	eax, ebp
	test	ax, 0xfff
	setne	al
.label_304:
	test	al, al
	jne	.label_305
	mov	ecx, dword ptr [rip + verbosity]
	test	ecx, ecx
	jne	.label_270
.label_305:
	mov	dword ptr [rsp + 0x10], ebp
	mov	ebp, ebx
	xor	ecx, ecx
	test	al, al
	sete	cl
	lea	ebx, [rcx + rcx + 1]
	test	r15b, r15b
	mov	eax, 0
	cmove	ebx, eax
	test	r13b, r13b
	mov	eax, 2
	cmove	ebx, eax
	test	ebx, ebx
	je	.label_306
	mov	edi, ebp
	lea	rsi, [rsp + 0x48]
	call	strmode
	mov	byte ptr [rsp + 0x52], 0
	mov	edi, dword ptr [rsp + 0x10]
	lea	rsi, [rsp + 0x34]
	call	strmode
	mov	byte ptr [rsp + 0x3e], 0
	and	bl, 3
	cmp	bl, 3
	je	.label_316
	cmp	bl, 2
	je	.label_320
	cmp	bl, 1
	jne	.label_290
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_324
	jmp	.label_325
.label_306:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_326
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 8]
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	call	__printf_chk
	jmp	.label_254
.label_316:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_285
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 8]
	call	quotearg_style
	mov	rdx, rax
	mov	eax, ebp
	mov	ecx, eax
	and	ecx, 0xfff
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	lea	r8, [rsp + 0x49]
	call	__printf_chk
	jmp	.label_254
.label_320:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_269
.label_325:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 8]
	call	quotearg_style
	mov	rdx, rax
	mov	eax, dword ptr [rsp + 0x10]
	mov	ecx, eax
	and	ecx, 0xfff
	mov	eax, ebp
	mov	r9d, eax
	and	r9d, 0xfff
	lea	rax, [rsp + 0x49]
	mov	qword ptr [rsp], rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	lea	r8, [rsp + 0x35]
	call	__printf_chk
.label_254:
	mov	ebx, ebp
	mov	ebp, dword ptr [rsp + 0x10]
.label_270:
	test	r15b, r15b
	je	.label_257
	cmp	byte ptr [rip + diagnose_surprises],  1
	jne	.label_257
	mov	eax, ebp
	and	eax, 0xf000
	xor	esi, esi
	cmp	eax, 0x4000
	sete	sil
	mov	rcx, qword ptr [rip + change]
	xor	edx, edx
	xor	r8d, r8d
	mov	edi, ebp
	call	mode_adjust
	mov	ebp, eax
	not	eax
	test	ebx, eax
	je	.label_257
	mov	edi, ebx
	lea	rsi, [rsp + 0x48]
	call	strmode
	mov	edi, ebp
	lea	rsi, [rsp + 0x34]
	call	strmode
	mov	byte ptr [rsp + 0x3e], 0
	mov	byte ptr [rsp + 0x52], 0
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_288
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 8]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	lea	r8, [rsp + 0x49]
	lea	r9, [rsp + 0x35]
	call	error
	nop	word ptr cs:[rax + rax]
.label_257:
	movzx	eax, byte ptr [rip + recurse]
	test	al, al
	jne	.label_308
	mov	edx, 4
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, r12
	call	rpl_fts_set
.label_308:
	test	r13b, r13b
	setne	bpl
.label_268:
	and	bpl, r14b
	mov	rdi, qword ptr [rsp + 0x18]
	call	rpl_fts_read
	mov	r12, rax
	test	r12, r12
	mov	r14d, ebp
	jne	.label_277
.label_274:
	call	__errno_location
	mov	r14, rax
	mov	ebx, dword ptr [r14]
	test	ebx, ebx
	je	.label_318
	mov	al, byte ptr [rip + force_silent]
	xor	ebp, ebp
	test	al, al
	jne	.label_318
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_323
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_318:
	mov	rdi, qword ptr [rsp + 0x18]
	call	rpl_fts_close
	test	eax, eax
	je	.label_250
	mov	ebx, dword ptr [r14]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_252
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_250:
	movzx	eax, bpl
	xor	eax, 1
	add	rsp, 0xd8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_987:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_262
	mov	edx, OFFSET FLAT:label_263
	mov	r8d, OFFSET FLAT:label_264
	mov	r9d, OFFSET FLAT:label_265
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_988:
	xor	edi, edi
	call	usage
.label_260:
	mov	edi, 1
	call	usage
.label_290:
	call	abort
.label_307:
	mov	rdx, rcx
	test	rcx, rcx
	je	.label_273
	cmp	rdx, qword ptr [r14 + rax*8 - 8]
	jne	.label_273
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_275
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax, r12d
	mov	rdi, qword ptr [r14 + rax*8 - 8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
.label_273:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_294
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
.label_327:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_295
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
	mov	edi, 1
	call	usage
	.section	.text
	.align	16
	#Procedure 0x404349
	.globl sub_404349
	.type sub_404349, @function
sub_404349:

	nop	dword ptr [rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404350

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
	#Procedure 0x404369
	.globl sub_404369
	.type sub_404369, @function
sub_404369:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404370

	.globl fts_build
	.type fts_build, @function
fts_build:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	r14d, esi
	mov	r15, rdi
	mov	rbp, qword ptr [r15]
	mov	rbx, qword ptr [rbp + 0x18]
	test	rbx, rbx
	mov	qword ptr [rsp + 0x10], r15
	je	.label_391
	mov	rdi, rbx
	call	dirfd
	mov	dword ptr [rsp + 8], eax
	test	eax, eax
	js	.label_396
	mov	qword ptr [rsp + 0x68], rbx
	lea	rax, [r15 + 0x40]
	mov	qword ptr [rsp + 0x40], rax
	cmp	qword ptr [r15 + 0x40], 1
	sbb	rax, rax
	not	rax
	or	rax, 0x186a0
	mov	qword ptr [rsp + 0x70], rax
	lea	r12, [r15 + 0x48]
	mov	al, 1
	mov	dword ptr [rsp + 0xc], eax
	jmp	.label_400
.label_391:
	mov	eax, dword ptr [r15 + 0x48]
	mov	ecx, eax
	and	ecx, 0x204
	mov	edi, 0xffffff9c
	cmp	ecx, 0x200
	jne	.label_379
	mov	edi, dword ptr [r15 + 0x2c]
.label_379:
	mov	rsi, qword ptr [rbp + 0x30]
	xor	edx, edx
	test	al, 0x10
	je	.label_333
	test	al, 1
	je	.label_332
	cmp	qword ptr [rbp + 0x58], 0
	je	.label_333
.label_332:
	mov	edx, 0x20000
.label_333:
	lea	rcx, [rsp + 8]
	call	opendirat
	mov	qword ptr [rbp + 0x18], rax
	test	rax, rax
	je	.label_337
	mov	qword ptr [rsp + 0x68], rbx
	lea	r12, [r15 + 0x48]
	movzx	eax, word ptr [rbp + 0x70]
	cmp	eax, 0xb
	jne	.label_341
	xor	edx, edx
	mov	rdi, r15
	mov	rsi, rbp
	call	fts_stat
	mov	word ptr [rbp + 0x70], ax
	jmp	.label_346
.label_396:
	mov	rdi, qword ptr [rbp + 0x18]
	call	closedir
	mov	qword ptr [rbp + 0x18], 0
.label_337:
	xor	ebx, ebx
	cmp	r14d, 3
	jne	.label_335
	mov	word ptr [rbp + 0x70], 4
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbp + 0x40], eax
	jmp	.label_349
.label_341:
	test	byte ptr [r12 + 1], 1
	je	.label_346
	mov	rdi, r15
	mov	rsi, rbp
	call	leave_dir
	xor	edx, edx
	mov	rdi, r15
	mov	rsi, rbp
	call	fts_stat
	mov	rdi, r15
	mov	rsi, rbp
	call	enter_dir
	test	al, al
	je	.label_357
.label_346:
	lea	rax, [r15 + 0x40]
	mov	qword ptr [rsp + 0x40], rax
	cmp	qword ptr [r15 + 0x40], 1
	sbb	rax, rax
	not	rax
	or	rax, 0x186a0
	mov	qword ptr [rsp + 0x70], rax
	cmp	r14d, 2
	je	.label_358
	mov	eax, dword ptr [r12]
	and	eax, 0x38
	cmp	eax, 0x18
	jne	.label_339
	cmp	qword ptr [rbp + 0x88], 2
	jne	.label_339
	mov	esi, dword ptr [rsp + 8]
	mov	rdi, rbp
	call	filesystem_type
	cmp	rax, 0x9f9f
	jle	.label_371
	cmp	rax, 0x9fa0
	je	.label_339
	mov	ecx, 0xff534d42
	cmp	rax, rcx
	je	.label_339
	cmp	rax, 0x5346414f
	je	.label_339
	jmp	.label_358
.label_357:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_349
.label_371:
	test	rax, rax
	je	.label_339
	cmp	rax, 0x6969
	jne	.label_358
.label_339:
	mov	rax, rbp
	mov	r13d, r14d
	cmp	r14d, 3
	sete	bpl
	mov	r14b, 1
	jmp	.label_378
.label_358:
	mov	rax, rbp
	mov	r13d, r14d
	cmp	r14d, 3
	sete	bpl
	mov	r14d, 0
	jne	.label_381
.label_378:
	mov	r15, rax
	test	byte ptr [r12 + 1], 2
	mov	ebx, dword ptr [rsp + 8]
	je	.label_387
	mov	esi, 0x406
	mov	edx, 3
	xor	eax, eax
	mov	edi, ebx
	call	rpl_fcntl
	mov	ebx, eax
	mov	dword ptr [rsp + 8], ebx
.label_387:
	test	ebx, ebx
	js	.label_394
	xor	ecx, ecx
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r15
	mov	edx, ebx
	call	fts_safe_changedir
	test	eax, eax
	je	.label_397
.label_394:
	and	bpl, r14b
	cmp	bpl, 1
	jne	.label_398
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
.label_398:
	or	byte ptr [r15 + 0x72], 1
	mov	rdi, qword ptr [r15 + 0x18]
	call	closedir
	mov	rbx, r15
	mov	qword ptr [r15 + 0x18], 0
	mov	eax, dword ptr [r12]
	test	ah, 2
	mov	r15, qword ptr [rsp + 0x10]
	mov	r14d, r13d
	je	.label_403
	mov	edi, dword ptr [rsp + 8]
	test	edi, edi
	js	.label_403
	call	close
.label_403:
	mov	rbp, rbx
	mov	qword ptr [rbp + 0x18], 0
	mov	dword ptr [rsp + 0xc], 0
	jmp	.label_400
.label_381:
	mov	dword ptr [rsp + 0xc], 0
	jmp	.label_331
.label_397:
	mov	al, 1
	mov	dword ptr [rsp + 0xc], eax
	mov	rax, r15
	mov	r15, qword ptr [rsp + 0x10]
.label_331:
	mov	r14d, r13d
	mov	rbp, rax
.label_400:
	mov	dword ptr [rsp + 0x54], r14d
	mov	rax, qword ptr [rbp + 0x38]
	mov	rcx, qword ptr [rbp + 0x48]
	lea	rdx, [rcx - 1]
	cmp	byte ptr [rax + rcx - 1], 0x2f
	cmovne	rdx, rcx
	xor	eax, eax
	mov	qword ptr [rsp + 0x48], rax
	test	byte ptr [r12], 4
	je	.label_338
	mov	rax, qword ptr [r15 + 0x20]
	lea	rcx, [rax + rdx + 1]
	mov	qword ptr [rsp + 0x48], rcx
	mov	byte ptr [rax + rdx], 0x2f
.label_338:
	lea	rax, [rdx + 1]
	mov	qword ptr [rsp + 0x58], rax
	mov	rcx, qword ptr [r15 + 0x30]
	sub	rcx, rax
	mov	qword ptr [rsp + 0x88], rcx
	mov	rax, qword ptr [rbp + 0x58]
	inc	rax
	mov	qword ptr [rsp + 0x98], rax
	add	rdx, 0x102
	mov	qword ptr [rsp + 0x90], rdx
	xor	eax, eax
	mov	qword ptr [rsp + 0x60], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x78], rax
	mov	dword ptr [rsp + 0x1c], 0
	xor	eax, eax
	xor	ebx, ebx
	xor	r14d, r14d
	mov	qword ptr [rsp + 0x38], rbp
	mov	qword ptr [rsp + 0x30], r12
.label_348:
	mov	qword ptr [rsp + 0x28], rbx
	mov	rbx, qword ptr [rbp + 0x18]
	test	rbx, rbx
	je	.label_361
	mov	qword ptr [rsp + 0xa0], rax
	mov	qword ptr [rsp + 0x20], r14
	nop	dword ptr [rax]
.label_382:
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	mov	rdi, rbx
	call	readdir
	mov	r14, rax
	test	r14, r14
	je	.label_372
	mov	r13, r14
	add	r13, 0x13
	test	byte ptr [r12], 0x20
	jne	.label_374
	cmp	byte ptr [r13], 0x2e
	jne	.label_374
	movzx	eax, byte ptr [r14 + 0x14]
	cmp	al, 0x2e
	je	.label_353
	test	al, al
	je	.label_377
	jmp	.label_374
	.section	.text
	.align	16
	#Procedure 0x404727
	.globl sub_404727
	.type sub_404727, @function
sub_404727:

	nop	word ptr [rax + rax]
.label_353:
	cmp	byte ptr [r14 + 0x15], 0
	jne	.label_374
.label_377:
	mov	rbx, qword ptr [rbp + 0x18]
	test	rbx, rbx
	jne	.label_382
	jmp	.label_392
	.section	.text
	.align	16
	#Procedure 0x404745
	.globl sub_404745
	.type sub_404745, @function
sub_404745:

	nop	word ptr cs:[rax + rax]
.label_374:
	mov	rdi, r13
	call	strlen
	mov	rbx, rax
	lea	rdi, [rbx + 0x110]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_389
	mov	rdi, r12
	add	rdi, 0x108
	mov	qword ptr [rsp + 0x80], rdi
	mov	rsi, r13
	mov	rdx, rbx
	call	memcpy
	mov	byte ptr [r12 + rbx + 0x108], 0
	mov	qword ptr [r12 + 0x60], rbx
	mov	rbp, qword ptr [rsp + 0x10]
	mov	qword ptr [r12 + 0x50], rbp
	mov	r13, qword ptr [rbp + 0x20]
	mov	qword ptr [r12 + 0x38], r13
	mov	dword ptr [r12 + 0x40], 0
	mov	qword ptr [r12 + 0x18], 0
	mov	word ptr [r12 + 0x72], 0
	mov	word ptr [r12 + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [r12 + 0x20], xmm0
	cmp	rbx, qword ptr [rsp + 0x88]
	jae	.label_395
	mov	rbp, qword ptr [rsp + 0x38]
	mov	rax, qword ptr [rsp + 0x58]
	jmp	.label_406
	.section	.text
	.align	16
	#Procedure 0x4047f9
	.globl sub_4047f9
	.type sub_4047f9, @function
sub_4047f9:

	nop	dword ptr [rax]
.label_395:
	mov	rax, qword ptr [rsp + 0x90]
	lea	rsi, [rax + rbx]
	add	rsi, qword ptr [rbp + 0x30]
	jb	.label_330
	mov	qword ptr [rbp + 0x30], rsi
	mov	rdi, r13
	call	realloc
	test	rax, rax
	je	.label_364
	mov	qword ptr [rbp + 0x20], rax
	cmp	r13, rax
	je	.label_342
	mov	rdx, qword ptr [rsp + 0x58]
	add	rax, rdx
	mov	rcx, qword ptr [rsp + 0x30]
	test	byte ptr [rcx], 4
	mov	rcx, qword ptr [rsp + 0x48]
	cmovne	rcx, rax
	mov	qword ptr [rsp + 0x48], rcx
	mov	al, 1
	mov	qword ptr [rsp + 0x78], rax
	mov	rbp, qword ptr [rsp + 0x38]
	jmp	.label_344
.label_342:
	mov	rbp, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 0x58]
.label_344:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rax + 0x30]
	sub	rax, rdx
	mov	qword ptr [rsp + 0x88], rax
	mov	rax, rdx
.label_406:
	add	rbx, rax
	jb	.label_351
	mov	rax, qword ptr [rsp + 0x98]
	mov	qword ptr [r12 + 0x58], rax
	mov	r15, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [r15]
	mov	qword ptr [r12 + 8], rax
	mov	qword ptr [r12 + 0x48], rbx
	mov	rax, qword ptr [r14]
	mov	qword ptr [r12 + 0x80], rax
	mov	rax, qword ptr [rsp + 0x30]
	test	byte ptr [rax], 4
	jne	.label_352
	mov	rax, qword ptr [rsp + 0x80]
	mov	qword ptr [r12 + 0x30], rax
	jmp	.label_362
	.section	.text
	.align	16
	#Procedure 0x4048cd
	.globl sub_4048cd
	.type sub_4048cd, @function
sub_4048cd:

	nop	dword ptr [rax]
.label_352:
	mov	rax, qword ptr [r12 + 0x38]
	mov	qword ptr [r12 + 0x30], rax
	mov	rdx, qword ptr [r12 + 0x60]
	inc	rdx
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x80]
	call	memmove
.label_362:
	mov	rbx, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rsp + 0x30]
	mov	edx, dword ptr [rax]
	mov	rax, qword ptr [rsp + 0x40]
	cmp	qword ptr [rax], 0
	je	.label_370
	mov	eax, edx
	and	eax, 0x400
	jne	.label_370
	xor	edx, edx
	mov	rdi, r15
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	mov	rsi, qword ptr [rsp + 0x20]
	jmp	.label_363
	.section	.text
	.align	16
	#Procedure 0x40492e
	.globl sub_40492e
	.type sub_40492e, @function
sub_40492e:

	nop	
.label_370:
	and	edx, 0x18
	movzx	ecx, byte ptr [r14 + 0x12]
	xor	eax, eax
	cmp	edx, 0x18
	mov	edx, 0
	jne	.label_407
	cmp	cl, 4
	setne	bl
	test	cl, cl
	setne	dl
	and	dl, bl
	mov	rbx, qword ptr [rsp + 0x28]
.label_407:
	mov	word ptr [r12 + 0x70], 0xb
	lea	esi, [rcx - 1]
	cmp	esi, 0xb
	mov	rsi, qword ptr [rsp + 0x20]
	ja	.label_385
	mov	eax, dword ptr [(rcx * 4) + label_366]
.label_385:
	mov	dword ptr [r12 + 0x90], eax
	cmp	dl, 1
	mov	eax, 1
	adc	rax, 0
	mov	qword ptr [r12 + 0xa8], rax
.label_363:
	mov	qword ptr [r12 + 0x10], 0
	test	rsi, rsi
	mov	rax, r12
	je	.label_368
	mov	rax, qword ptr [rsp + 0xa0]
	mov	qword ptr [rax + 0x10], r12
	mov	rax, rsi
.label_368:
	mov	r14, rax
	cmp	rbx, 0x2710
	jne	.label_334
	mov	rax, qword ptr [rsp + 0x40]
	cmp	qword ptr [rax], 0
	jne	.label_334
	mov	esi, dword ptr [rsp + 8]
	mov	rdi, rbp
	call	filesystem_type
	mov	dword ptr [rsp + 0x1c], 0
	cmp	rax, 0x6969
	je	.label_334
	cmp	rax, 0x1021994
	je	.label_334
	mov	ecx, 0xff534d42
	cmp	rax, rcx
	je	.label_334
	mov	al, 1
	mov	dword ptr [rsp + 0x1c], eax
	nop	dword ptr [rax]
.label_334:
	inc	rbx
	cmp	qword ptr [rsp + 0x70], rbx
	mov	rax, r12
	mov	r12, qword ptr [rsp + 0x30]
	ja	.label_348
	jmp	.label_345
.label_372:
	mov	eax, dword ptr [r15]
	test	eax, eax
	mov	rbx, qword ptr [rsp + 0x28]
	je	.label_336
	mov	dword ptr [rbp + 0x40], eax
	mov	rax, qword ptr [rsp + 0x68]
	or	rax, rbx
	mov	ax, 7
	mov	cx, 4
	cmovne	cx, ax
	mov	word ptr [rbp + 0x70], cx
.label_336:
	mov	rdi, qword ptr [rbp + 0x18]
	test	rdi, rdi
	mov	r15, qword ptr [rsp + 0x10]
	mov	r14, qword ptr [rsp + 0x20]
	je	.label_345
	call	closedir
	mov	qword ptr [rbp + 0x18], 0
	jmp	.label_345
.label_392:
	mov	r15, qword ptr [rsp + 0x10]
	mov	r14, qword ptr [rsp + 0x20]
.label_361:
	mov	rbx, qword ptr [rsp + 0x28]
.label_345:
	mov	rax, qword ptr [rsp + 0x78]
	test	al, 1
	je	.label_340
	mov	rcx, qword ptr [r15 + 8]
	mov	rax, qword ptr [r15 + 0x20]
	jmp	.label_350
	.section	.text
	.align	16
	#Procedure 0x404a87
	.globl sub_404a87
	.type sub_404a87, @function
sub_404a87:

	nop	word ptr [rax + rax]
.label_356:
	mov	qword ptr [rcx + 0x38], rax
	mov	rcx, qword ptr [rcx + 0x10]
.label_350:
	test	rcx, rcx
	je	.label_355
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rsi, [rcx + 0x108]
	cmp	rdx, rsi
	je	.label_356
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
	jmp	.label_356
.label_355:
	cmp	qword ptr [r14 + 0x58], 0
	js	.label_340
	mov	rcx, r14
	nop	word ptr cs:[rax + rax]
.label_373:
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rsi, [rcx + 0x108]
	cmp	rdx, rsi
	je	.label_367
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
.label_367:
	mov	qword ptr [rcx + 0x38], rax
	mov	rdx, qword ptr [rcx + 0x10]
	test	rdx, rdx
	jne	.label_369
	mov	rdx, qword ptr [rcx + 8]
.label_369:
	cmp	qword ptr [rdx + 0x58], 0
	mov	rcx, rdx
	jns	.label_373
.label_340:
	test	byte ptr [r12], 4
	je	.label_376
	mov	rax, qword ptr [rsp + 0x48]
	mov	rcx, rax
	lea	rax, [rcx - 1]
	mov	rdx, qword ptr [rsp + 0x58]
	cmp	rdx, qword ptr [r15 + 0x30]
	cmove	rcx, rax
	test	rbx, rbx
	cmove	rcx, rax
	mov	byte ptr [rcx], 0
.label_376:
	cmp	qword ptr [rsp + 0x68], 0
	mov	eax, dword ptr [rsp + 0xc]
	jne	.label_360
	test	al, al
	je	.label_360
	cmp	dword ptr [rsp + 0x54], 1
	je	.label_380
	test	rbx, rbx
	jne	.label_360
.label_380:
	cmp	qword ptr [rbp + 0x58], 0
	je	.label_383
	mov	rsi, qword ptr [rbp + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:label_384
	mov	rdi, r15
	call	fts_safe_changedir
	jmp	.label_388
.label_383:
	mov	rdi, r15
	call	restore_initial_cwd
.label_388:
	test	eax, eax
	je	.label_360
	mov	word ptr [rbp + 0x70], 7
	or	byte ptr [r12 + 1], 0x20
	xor	ebx, ebx
	test	r14, r14
	je	.label_335
	xor	ebx, ebx
.label_399:
	mov	rbp, qword ptr [r14 + 0x10]
	mov	rdi, qword ptr [r14 + 0x18]
	test	rdi, rdi
	je	.label_386
	call	closedir
.label_386:
	mov	rdi, r14
	call	free
	test	rbp, rbp
	mov	r14, rbp
	jne	.label_399
	jmp	.label_335
.label_360:
	test	rbx, rbx
	je	.label_401
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, 1
	jne	.label_402
	cmp	rbx, 2
	jb	.label_404
	mov	rax, qword ptr [rsp + 0x40]
	mov	rax, qword ptr [rax]
	test	rax, rax
	je	.label_404
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	fts_sort
	mov	rbx, rax
	jmp	.label_335
.label_401:
	cmp	dword ptr [rsp + 0x54], 3
	jne	.label_329
	movzx	eax, word ptr [rbp + 0x70]
	cmp	eax, 4
	je	.label_329
	movzx	eax, ax
	cmp	eax, 7
	je	.label_329
	mov	word ptr [rbp + 0x70], 6
.label_329:
	xor	ebx, ebx
	test	r14, r14
	je	.label_335
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_347:
	mov	rbp, qword ptr [r14 + 0x10]
	mov	rdi, qword ptr [r14 + 0x18]
	test	rdi, rdi
	je	.label_343
	call	closedir
.label_343:
	mov	rdi, r14
	call	free
	test	rbp, rbp
	mov	r14, rbp
	jne	.label_347
	jmp	.label_335
.label_402:
	mov	rbp, qword ptr [rsp + 0x40]
	mov	qword ptr [rbp], OFFSET FLAT:fts_compare_ino
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	fts_sort
	mov	rbx, rax
	mov	qword ptr [rbp], 0
	jmp	.label_335
.label_404:
	mov	rbx, r14
	jmp	.label_335
.label_351:
	mov	rdi, r12
	call	free
	mov	rax, qword ptr [rsp + 0x20]
	test	rax, rax
	mov	r14, qword ptr [rsp + 0x30]
	je	.label_354
	nop	word ptr cs:[rax + rax]
.label_365:
	mov	rbx, qword ptr [rax + 0x10]
	mov	r12, rax
	mov	rdi, qword ptr [rax + 0x18]
	test	rdi, rdi
	je	.label_359
	call	closedir
.label_359:
	mov	rdi, r12
	call	free
	test	rbx, rbx
	mov	rax, rbx
	jne	.label_365
.label_354:
	mov	rdi, qword ptr [rbp + 0x18]
	call	closedir
	mov	qword ptr [rbp + 0x18], 0
	mov	word ptr [rbp + 0x70], 7
	or	byte ptr [r14 + 1], 0x20
	mov	dword ptr [r15], 0x24
	jmp	.label_349
.label_330:
	mov	rdi, r13
	call	free
	mov	qword ptr [rbp + 0x20], 0
	mov	dword ptr [r15], 0x24
	jmp	.label_375
.label_364:
	mov	rdi, qword ptr [rbp + 0x20]
	call	free
	mov	qword ptr [rbp + 0x20], 0
.label_375:
	mov	qword ptr [rsp + 0x60], r12
	mov	rbp, qword ptr [rsp + 0x38]
.label_389:
	mov	r13, rbp
	mov	r14d, dword ptr [r15]
	mov	rdi, qword ptr [rsp + 0x60]
	call	free
	mov	rax, qword ptr [rsp + 0x20]
	test	rax, rax
	mov	r12, qword ptr [rsp + 0x30]
	je	.label_393
.label_390:
	mov	rbp, qword ptr [rax + 0x10]
	mov	rbx, rax
	mov	rdi, qword ptr [rax + 0x18]
	test	rdi, rdi
	je	.label_405
	call	closedir
.label_405:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rax, rbp
	jne	.label_390
.label_393:
	mov	rbx, r13
	mov	rdi, qword ptr [rbx + 0x18]
	call	closedir
	mov	qword ptr [rbx + 0x18], 0
	mov	word ptr [rbx + 0x70], 7
	or	byte ptr [r12 + 1], 0x20
	mov	dword ptr [r15], r14d
.label_349:
	xor	ebx, ebx
.label_335:
	mov	rax, rbx
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404daf
	.globl sub_404daf
	.type sub_404daf, @function
sub_404daf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404db0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_130]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_131]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_132]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_408
	test	rsi, rsi
	je	.label_408
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_408:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404e20
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_409
	test	rax, rax
	je	.label_410
.label_409:
	pop	rbx
	ret	
.label_410:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404e3a
	.globl sub_404e3a
	.type sub_404e3a, @function
sub_404e3a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e40
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
	#Procedure 0x404e4f
	.globl sub_404e4f
	.type sub_404e4f, @function
sub_404e4f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404e50

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_309
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_411
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404e75
	.globl sub_404e75
	.type sub_404e75, @function
sub_404e75:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e80
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x404e8a
	.globl sub_404e8a
	.type sub_404e8a, @function
sub_404e8a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e90

	.globl fts_stat
	.type fts_stat, @function
fts_stat:
	push	r15
	push	r14
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	mov	eax, dword ptr [r14 + 0x48]
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_416
	test	al, 1
	je	.label_416
	mov	dl, 1
.label_416:
	lea	rbx, [r15 + 0x78]
	test	dl, dl
	jne	.label_421
	and	eax, 2
	jne	.label_421
	mov	esi, dword ptr [r14 + 0x2c]
	mov	rdx, qword ptr [r15 + 0x30]
	mov	edi, 1
	mov	r8d, 0x100
	mov	rcx, rbx
	call	__fxstatat
	test	eax, eax
	je	.label_417
	call	__errno_location
	mov	eax, dword ptr [rax]
	jmp	.label_420
.label_421:
	mov	rsi, qword ptr [r15 + 0x30]
	mov	edi, 1
	mov	rdx, rbx
	call	__xstat
	test	eax, eax
	je	.label_417
	call	__errno_location
	mov	r14, rax
	mov	eax, dword ptr [r14]
	cmp	eax, 2
	jne	.label_420
	mov	rsi, qword ptr [r15 + 0x30]
	mov	edi, 1
	mov	rdx, rbx
	call	__lxstat
	test	eax, eax
	je	.label_418
	mov	eax, dword ptr [r14]
.label_420:
	mov	dword ptr [r15 + 0x40], eax
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x80], xmm0
	movups	xmmword ptr [rbx + 0x70], xmm0
	movups	xmmword ptr [rbx + 0x60], xmm0
	movups	xmmword ptr [rbx + 0x50], xmm0
	movups	xmmword ptr [rbx + 0x40], xmm0
	movups	xmmword ptr [rbx + 0x30], xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	movups	xmmword ptr [rbx + 0x10], xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	ax, 0xa
.label_412:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_417:
	movzx	ecx, word ptr [r15 + 0x90]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	je	.label_419
	mov	ax, 0xc
	movzx	ecx, cx
	cmp	ecx, 0xa000
	je	.label_412
	cmp	ecx, 0x4000
	jne	.label_413
	mov	rax, qword ptr [r15 + 0x88]
	mov	rcx, -1
	cmp	rax, 2
	jb	.label_414
	cmp	qword ptr [r15 + 0x58], 0
	jle	.label_414
	mov	ecx, dword ptr [r14 + 0x48]
	shr	ecx, 4
	not	ecx
	and	ecx, 2
	sub	rax, rcx
	mov	rcx, rax
.label_414:
	mov	qword ptr [r15 + 0x68], rcx
	mov	ecx, dword ptr [r15 + 0x108]
	mov	ax, 1
	cmp	cl, 0x2e
	jne	.label_412
	mov	edx, ecx
	shr	edx, 8
	test	dl, dl
	je	.label_415
	cmp	dl, 0x2e
	jne	.label_412
	test	ecx, 0xff0000
	jne	.label_412
.label_415:
	cmp	qword ptr [r15 + 0x58], 0
	mov	cx, 1
	mov	ax, 5
	cmove	ax, cx
	jmp	.label_412
.label_419:
	mov	ax, 8
	jmp	.label_412
.label_413:
	mov	ax, 3
	jmp	.label_412
.label_418:
	mov	dword ptr [r14], 0
	mov	ax, 0xd
	jmp	.label_412
	.section	.text
	.align	16
	#Procedure 0x405025
	.globl sub_405025
	.type sub_405025, @function
sub_405025:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405030
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_426
	.section	.text
	.align	16
	#Procedure 0x405041
	.globl sub_405041
	.type sub_405041, @function
sub_405041:

	nop	word ptr cs:[rax + rax]
.label_425:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x40505e
	.globl sub_40505e
	.type sub_40505e, @function
sub_40505e:

	nop	word ptr [rax + rax]
.label_422:
	add	r14, 0x10
.label_426:
	cmp	r14, rax
	jae	.label_425
	cmp	qword ptr [r14], 0
	je	.label_422
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_427
	nop	word ptr cs:[rax + rax]
.label_423:
	test	cl, 1
	je	.label_428
	mov	rdi, qword ptr [rbx]
	call	rax
	mov	rax, qword ptr [r15 + 0x40]
.label_428:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [r15 + 0x48], rbx
	test	rax, rax
	setne	cl
	test	rdx, rdx
	mov	rbx, rdx
	jne	.label_423
.label_427:
	test	cl, cl
	je	.label_424
	mov	rdi, qword ptr [r14]
	call	rax
.label_424:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_422
	.section	.text
	.align	16
	#Procedure 0x4050e0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_430
	cmp	byte ptr [rax], 0x43
	jne	.label_432
	cmp	byte ptr [rax + 1], 0
	je	.label_429
.label_432:
	mov	esi, OFFSET FLAT:label_431
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_430
.label_429:
	xor	ebx, ebx
.label_430:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405111
	.globl sub_405111
	.type sub_405111, @function
sub_405111:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405120
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40512a
	.globl sub_40512a
	.type sub_40512a, @function
sub_40512a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405130

	.globl hash_insert_if_absent
	.type hash_insert_if_absent, @function
hash_insert_if_absent:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r14, rsi
	mov	r13, rdi
	test	r14, r14
	je	.label_453
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_453
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_434
	cmp	rsi, r14
	je	.label_465
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_435
	mov	rax, qword ptr [r12]
.label_433:
	test	rax, rax
	jne	.label_439
	jmp	.label_434
.label_465:
	mov	rax, r14
.label_439:
	xor	ebp, ebp
	test	r15, r15
	je	.label_442
	mov	qword ptr [r15], rax
	jmp	.label_442
.label_435:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_434
	lea	rbp, [rbx + rbp + 8]
	nop	word ptr [rax + rax]
.label_459:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_456
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_458
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_459
.label_434:
	mov	rcx, qword ptr [r13 + 0x10]
	mov	rax, qword ptr [r13 + 0x18]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_461
	cvtsi2ss	xmm1, rax
	jmp	.label_467
.label_461:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_467:
	mov	rax, qword ptr [r13 + 0x28]
	movss	xmm2, dword ptr [rax + 8]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_440
	cvtsi2ss	xmm0, rcx
	jmp	.label_449
.label_440:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_449:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_455
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_457
	ucomiss	xmm2, dword ptr [rip + label_436]
	jbe	.label_437
	movss	xmm3, dword ptr [rip + label_460]
	ucomiss	xmm3, xmm2
	jbe	.label_437
	movss	xmm3, dword ptr [rax + 0xc]
	ucomiss	xmm3, dword ptr [rip + label_462]
	jbe	.label_437
	movss	xmm3, dword ptr [rax]
	xorps	xmm4, xmm4
	ucomiss	xmm3, xmm4
	jb	.label_437
	addss	xmm3, dword ptr [rip + label_436]
	ucomiss	xmm2, xmm3
	jbe	.label_437
	movss	xmm4, dword ptr [rax + 4]
	movss	xmm5, dword ptr [rip + label_464]
	ucomiss	xmm5, xmm4
	jb	.label_437
	ucomiss	xmm4, xmm3
	ja	.label_448
.label_437:
	mov	qword ptr [r13 + 40], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	movss	xmm2, dword ptr [rip + label_450]
	jmp	.label_448
.label_457:
	mov	eax, OFFSET FLAT:default_tuning
.label_448:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_455
	cmp	byte ptr [rax + 0x10], 0
	mulss	xmm0, dword ptr [rax + 0xc]
	jne	.label_443
	mulss	xmm0, xmm2
.label_443:
	mov	ebp, 0xffffffff
	ucomiss	xmm0, dword ptr [rip + label_248]
	jae	.label_442
	movss	xmm1, dword ptr [rip + label_247]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	mov	rdi, r13
	call	hash_rehash
	test	al, al
	je	.label_442
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_453
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_455
	cmp	rsi, r14
	mov	rax, r14
	je	.label_444
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_463
	mov	rax, qword ptr [r12]
.label_444:
	test	rax, rax
	jne	.label_466
.label_455:
	cmp	qword ptr [r12], 0
	je	.label_447
	mov	rax, qword ptr [r13 + 0x48]
	test	rax, rax
	je	.label_438
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [r13 + 0x48], rcx
	jmp	.label_441
.label_447:
	mov	qword ptr [r12], r14
	movdqu	xmm0, xmmword ptr [r13 + 0x18]
	paddq	xmm0, xmmword ptr [rip + label_445]
	movdqu	xmmword ptr [r13 + 0x18], xmm0
	jmp	.label_446
.label_438:
	mov	edi, 0x10
	call	malloc
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_442
.label_441:
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [r12 + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r12 + 8], rax
	inc	qword ptr [r13 + 0x20]
.label_446:
	mov	ebp, 1
.label_442:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_456:
	mov	rax, r14
	jmp	.label_433
.label_458:
	mov	rax, qword ptr [rbp]
	jmp	.label_433
.label_463:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_455
	lea	rbp, [rbx + rbp + 8]
.label_454:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_452
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_451
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_454
	jmp	.label_455
.label_452:
	mov	rax, r14
	jmp	.label_444
.label_451:
	mov	rax, qword ptr [rbp]
	jmp	.label_444
.label_453:
	call	abort
.label_466:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405461
	.globl sub_405461
	.type sub_405461, @function
sub_405461:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405470
	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:

	mov	rax, qword ptr [rdi + 0x18]
	ret	
	.section	.text
	.align	16
	#Procedure 0x405475
	.globl sub_405475
	.type sub_405475, @function
sub_405475:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405480

	.globl rpl_fts_open
	.type rpl_fts_open, @function
rpl_fts_open:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	r13, rdx
	mov	r12d, esi
	mov	r14, rdi
	cmp	r12d, 0x1000
	jae	.label_468
	mov	eax, r12d
	and	eax, 0x204
	cmp	eax, 0x204
	je	.label_468
	test	r12b, 0x12
	je	.label_468
	mov	edi, 0x80
	call	malloc
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_484
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x70], xmm0
	movups	xmmword ptr [rbx + 0x60], xmm0
	movups	xmmword ptr [rbx + 0x50], xmm0
	movups	xmmword ptr [rbx + 0x40], xmm0
	movups	xmmword ptr [rbx + 0x30], xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	movups	xmmword ptr [rbx + 0x10], xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x40], r13
	mov	eax, r12d
	and	eax, 0xfffffdfb
	or	eax, 4
	test	r12b, 2
	cmove	eax, r12d
	mov	dword ptr [rbx + 0x48], eax
	mov	dword ptr [rbx + 0x2c], 0xffffff9c
	mov	rdi, qword ptr [r14]
	mov	ebp, 1
	test	rdi, rdi
	je	.label_491
	mov	rax, r14
	mov	r14, rbx
	mov	r15, rax
	lea	rbx, [rax + 8]
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_486:
	call	strlen
	cmp	rax, rbp
	cmova	rbp, rax
	mov	rdi, qword ptr [rbx]
	add	rbx, 8
	test	rdi, rdi
	jne	.label_486
	inc	rbp
	mov	rbx, r14
	mov	r14, r15
.label_491:
	cmp	rbp, 0x1000
	mov	esi, 0x1000
	cmova	rsi, rbp
	add	rsi, 0x100
	mov	qword ptr [rbx + 0x30], rsi
	xor	edi, edi
	call	realloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_470
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rbx + 0x20], rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	r15, qword ptr [r14]
	xor	r14d, r14d
	test	r15, r15
	je	.label_492
	mov	edi, 0x110
	call	malloc
	mov	r14, rax
	test	r14, r14
	je	.label_483
	mov	byte ptr [r14 + 0x108], 0
	mov	qword ptr [r14 + 0x60], 0
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [r14 + 0x50], rax
	mov	qword ptr [r14 + 0x38], rbp
	mov	dword ptr [r14 + 0x40], 0
	mov	qword ptr [r14 + 0x18], 0
	mov	word ptr [r14 + 0x72], 0
	mov	word ptr [r14 + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14 + 0x20], xmm0
	mov	qword ptr [r14 + 0x58], -1
	mov	qword ptr [r14 + 0x68], -1
.label_492:
	mov	byte ptr [rsp + 0xf], 1
	test	r13, r13
	je	.label_473
	mov	rax, qword ptr [rsp + 0x10]
	mov	al, byte ptr [rax + 0x49]
	and	al, 4
	shr	al, 2
	mov	byte ptr [rsp + 0xf], al
.label_473:
	xor	ebp, ebp
	test	r15, r15
	mov	qword ptr [rsp + 0x28], r14
	je	.label_482
	and	r12d, 0x800
	xor	ebp, ebp
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x20], r13
	nop	word ptr cs:[rax + rax]
.label_487:
	mov	qword ptr [rsp + 0x30], rbp
	mov	rdi, r15
	call	strlen
	mov	rbp, rax
	test	r12d, r12d
	jne	.label_472
	cmp	rbp, 3
	jb	.label_472
	cmp	byte ptr [r15 + rbp - 1], 0x2f
	jne	.label_472
	nop	word ptr cs:[rax + rax]
.label_475:
	cmp	byte ptr [r15 + rbp - 2], 0x2f
	jne	.label_472
	dec	rbp
	cmp	rbp, 1
	ja	.label_475
	nop	word ptr cs:[rax + rax]
.label_472:
	mov	r14d, r12d
	lea	rdi, [rbp + 0x110]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_474
	mov	qword ptr [rsp + 0x40], rbx
	mov	r13, r12
	add	r13, 0x108
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, rbp
	call	memcpy
	mov	byte ptr [r12 + rbp + 0x108], 0
	mov	qword ptr [r12 + 0x60], rbp
	mov	rdi, qword ptr [rsp + 0x10]
	mov	qword ptr [r12 + 0x50], rdi
	mov	rax, qword ptr [rdi + 0x20]
	mov	qword ptr [r12 + 0x38], rax
	mov	dword ptr [r12 + 0x40], 0
	mov	qword ptr [r12 + 0x18], 0
	mov	word ptr [r12 + 0x72], 0
	mov	word ptr [r12 + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [r12 + 0x20], xmm0
	mov	qword ptr [r12 + 0x58], 0
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [r12 + 8], rax
	mov	qword ptr [r12 + 0x30], r13
	mov	rbx, qword ptr [rsp + 0x30]
	test	rbx, rbx
	setne	al
	and	al, byte ptr [rsp + 0xf]
	cmp	al, 1
	jne	.label_495
	mov	word ptr [r12 + 0x70], 0xb
	mov	qword ptr [r12 + 0xa8], 2
	jmp	.label_493
	.section	.text
	.align	16
	#Procedure 0x405779
	.globl sub_405779
	.type sub_405779, @function
sub_405779:

	nop	dword ptr [rax]
.label_495:
	xor	edx, edx
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
.label_493:
	mov	r13, qword ptr [rsp + 0x20]
	test	r13, r13
	je	.label_488
	mov	rbp, r12
	mov	qword ptr [r12 + 0x10], rbx
	mov	r12, qword ptr [rsp + 0x18]
	jmp	.label_478
.label_488:
	mov	qword ptr [r12 + 0x10], 0
	test	rbx, rbx
	mov	rbp, r12
	je	.label_478
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rax + 0x10], r12
	mov	rbp, rbx
.label_478:
	mov	rbx, qword ptr [rsp + 0x40]
	inc	rbx
	mov	rax, qword ptr [rsp + 0x38]
	mov	r15, qword ptr [rax + 8]
	add	rax, 8
	mov	qword ptr [rsp + 0x38], rax
	test	r15, r15
	mov	qword ptr [rsp + 0x18], r12
	mov	r12d, r14d
	jne	.label_487
	test	r13, r13
	je	.label_482
	cmp	rbx, 2
	jb	.label_482
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, rbp
	mov	rdx, rbx
	call	fts_sort
	mov	rbp, rax
.label_482:
	mov	edi, 0x110
	call	malloc
	test	rax, rax
	je	.label_476
	mov	byte ptr [rax + 0x108], 0
	mov	qword ptr [rax + 0x60], 0
	mov	rbx, qword ptr [rsp + 0x10]
	mov	qword ptr [rax + 0x50], rbx
	mov	rcx, qword ptr [rbx + 0x20]
	mov	qword ptr [rax + 0x38], rcx
	mov	dword ptr [rax + 0x40], 0
	mov	qword ptr [rax + 0x18], 0
	mov	word ptr [rax + 0x72], 0
	mov	word ptr [rax + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 0x20], xmm0
	mov	qword ptr [rbx], rax
	mov	qword ptr [rax + 0x10], rbp
	mov	word ptr [rax + 0x70], 9
	mov	qword ptr [rax + 0x58], 1
	movzx	eax, word ptr [rbx + 0x48]
	test	ax, 0x102
	je	.label_489
	mov	edi, 0x1f
	xor	esi, esi
	mov	edx, OFFSET FLAT:AD_hash
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [rbx + 0x58], rax
	test	rax, rax
	jne	.label_481
	jmp	.label_480
.label_468:
	call	__errno_location
	mov	dword ptr [rax], 0x16
.label_485:
	xor	eax, eax
.label_484:
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_470:
	mov	rdi, qword ptr [rbx + 0x20]
	jmp	.label_490
.label_474:
	mov	rbp, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x10]
	jmp	.label_480
.label_483:
	mov	rbx, qword ptr [rsp + 0x10]
	jmp	.label_494
.label_476:
	mov	rbx, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx], 0
.label_480:
	mov	r14, rbx
	test	rbp, rbp
	je	.label_498
	nop	dword ptr [rax + rax]
.label_477:
	mov	rbx, qword ptr [rbp + 0x10]
	mov	rdi, qword ptr [rbp + 0x18]
	test	rdi, rdi
	je	.label_469
	call	closedir
.label_469:
	mov	rdi, rbp
	call	free
	test	rbx, rbx
	mov	rbp, rbx
	jne	.label_477
.label_498:
	mov	rdi, qword ptr [rsp + 0x28]
	call	free
	mov	rbx, r14
	mov	rbp, qword ptr [rbx + 0x20]
.label_494:
	mov	rdi, rbp
.label_490:
	call	free
	mov	rdi, rbx
	call	free
	jmp	.label_485
.label_489:
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [rbx + 0x58], rax
	test	rax, rax
	je	.label_480
	mov	rdi, rax
	call	cycle_check_init
.label_481:
	mov	eax, dword ptr [rbx + 0x48]
	test	ax, 0x204
	jne	.label_479
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_497
	mov	edi, OFFSET FLAT:label_496
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_471
.label_497:
	mov	edi, dword ptr [rbx + 0x2c]
	mov	esi, OFFSET FLAT:label_496
	xor	eax, eax
	call	openat_safer
.label_471:
	mov	dword ptr [rbx + 0x28], eax
	test	eax, eax
	jns	.label_479
	or	byte ptr [rbx + 0x48], 4
.label_479:
	mov	rdi, rbx
	add	rdi, 0x60
	mov	esi, 0xffffffff
	call	i_ring_init
	mov	rax, rbx
	jmp	.label_484
	.section	.text
	.align	16
	#Procedure 0x4059c2
	.globl sub_4059c2
	.type sub_4059c2, @function
sub_4059c2:

	nop	word ptr cs:[rax + rax]
.label_500:
	mov	r15, qword ptr [rbx]
.label_499:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4059e2

	.globl hash_lookup
	.type hash_lookup, @function
hash_lookup:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r12, rsi
	mov	r14, rdi
	mov	rsi, qword ptr [r14 + 0x10]
	mov	rdi, r12
	call	qword ptr [r14 + 0x30]
	cmp	rax, qword ptr [r14 + 0x10]
	jae	.label_503
	mov	rbx, qword ptr [r14]
	shl	rax, 4
	mov	rsi, qword ptr [rbx + rax]
	xor	r15d, r15d
	test	rsi, rsi
	je	.label_499
	add	rbx, rax
	je	.label_499
	cmp	rsi, r12
	je	.label_502
	xor	r15d, r15d
	nop	
.label_501:
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_500
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	je	.label_499
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	jne	.label_501
.label_502:
	mov	r15, r12
	jmp	.label_499
.label_503:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405a48
	.globl sub_405a48
	.type sub_405a48, @function
sub_405a48:

	nop	dword ptr [rax + rax]
.label_504:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405a56
	.globl sub_405a56
	.type sub_405a56, @function
sub_405a56:

	nop	
.label_505:
	add	ecx, 3
	and	ecx, 3
	mov	dword ptr [rdi + 0x14], ecx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405a61

	.globl i_ring_pop
	.type i_ring_pop, @function
i_ring_pop:
	cmp	byte ptr [rdi + 0x1c], 0
	jne	.label_504
	mov	ecx, dword ptr [rdi + 0x10]
	mov	edx, dword ptr [rdi + 0x14]
	mov	eax, dword ptr [rdi + rdx*4]
	mov	dword ptr [rdi + rdx*4], ecx
	mov	ecx, dword ptr [rdi + 0x14]
	cmp	ecx, dword ptr [rdi + 0x18]
	jne	.label_505
	mov	byte ptr [rdi + 0x1c], 1
	ret	
.label_506:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405a85
	.globl sub_405a85
	.type sub_405a85, @function
sub_405a85:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405a8f
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
	je	.label_507
	test	r14, r14
	je	.label_506
.label_507:
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
	#Procedure 0x405ac0
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
	#Procedure 0x405ad3
	.globl sub_405ad3
	.type sub_405ad3, @function
sub_405ad3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ae0
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
	#Procedure 0x405af9
	.globl sub_405af9
	.type sub_405af9, @function
sub_405af9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405b00

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_508
	test	rsi, rsi
	mov	ecx, 1
	je	.label_509
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_509
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_508:
	mov	ecx, 1
.label_509:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x405b4b
	.globl sub_405b4b
	.type sub_405b4b, @function
sub_405b4b:

	nop	dword ptr [rax + rax]
.label_510:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405b55
	.globl sub_405b55
	.type sub_405b55, @function
sub_405b55:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405b59
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_130]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_131]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_132]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_510
	test	rsi, rsi
	je	.label_510
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
	#Procedure 0x405bc0

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
	jne	.label_512
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_511
	test	cl, cl
	jne	.label_511
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_511
.label_512:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_511
	call	__errno_location
	mov	dword ptr [rax], 0
.label_511:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405c20
	.globl hash_print_statistics
	.type hash_print_statistics, @function
hash_print_statistics:

	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	rcx, qword ptr [rdi + 0x20]
	mov	r12, qword ptr [rdi + 0x10]
	mov	r14, qword ptr [rdi + 0x18]
	mov	rax, qword ptr [rdi]
	mov	rdi, qword ptr [rdi + 8]
	xor	ebx, ebx
	cmp	rax, rdi
	jae	.label_513
	mov	rdx, rax
	not	rdx
	add	rdi, rdx
	shr	rdi, 4
	lea	rsi, [rdi + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	ebx, ebx
	test	rdi, rdi
	je	.label_517
	sub	rsi, r8
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_516:
	cmp	qword ptr [rax], 0
	je	.label_525
	xor	edi, edi
	mov	rdx, rax
	nop	dword ptr [rax + rax]
.label_518:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_518
	cmp	rdi, rbx
	cmova	rbx, rdi
.label_525:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_526
	lea	rdx, [rax + 0x10]
	xor	edi, edi
.label_519:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_519
	cmp	rdi, rbx
	cmova	rbx, rdi
.label_526:
	add	rax, 0x20
	add	rsi, -2
	jne	.label_516
.label_517:
	test	r8, r8
	je	.label_513
	cmp	qword ptr [rax], 0
	je	.label_513
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_514:
	mov	rax, qword ptr [rax + 8]
	inc	rdx
	test	rax, rax
	jne	.label_514
	cmp	rdx, rbx
	cmova	rbx, rdx
.label_513:
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_515
	xor	eax, eax
	mov	rdi, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_527
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r14
	movdqa	xmm2, xmmword ptr [rip + label_521]
	punpckldq	xmm1, xmm2
	movapd	xmm3, xmmword ptr [rip + label_522]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0, qword ptr [rip + label_523]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_524
	mov	al, 1
	mov	rdi, r15
	mov	rcx, r14
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_520
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
	.section	.text
	.align	16
	#Procedure 0x405d8f
	.globl sub_405d8f
	.type sub_405d8f, @function
sub_405d8f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405d90
	.globl rpl_fts_children
	.type rpl_fts_children, @function
rpl_fts_children:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12d, esi
	mov	r13, rdi
	mov	eax, r12d
	or	eax, 0x1000
	cmp	eax, 0x1000
	jne	.label_540
	mov	r15, qword ptr [r13]
	call	__errno_location
	mov	r14, rax
	mov	dword ptr [r14], 0
	xor	eax, eax
	test	byte ptr [r13 + 0x49], 0x20
	jne	.label_537
	movzx	ecx, word ptr [r15 + 0x70]
	xor	eax, eax
	cmp	ecx, 1
	je	.label_535
	movzx	ecx, cx
	cmp	ecx, 9
	jne	.label_537
	mov	rax, qword ptr [r15 + 0x10]
	jmp	.label_537
.label_540:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	xor	eax, eax
	jmp	.label_537
.label_535:
	mov	rbx, qword ptr [r13 + 8]
	test	rbx, rbx
	je	.label_529
	nop	dword ptr [rax]
.label_541:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_534
	call	closedir
.label_534:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_541
.label_529:
	mov	ebx, 1
	cmp	r12d, 0x1000
	jne	.label_543
	or	byte ptr [r13 + 0x49], 0x10
	mov	ebx, 2
.label_543:
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_531
	mov	rax, qword ptr [r15 + 0x30]
	cmp	byte ptr [rax], 0x2f
	je	.label_531
	mov	eax, dword ptr [r13 + 0x48]
	test	al, 4
	jne	.label_531
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_533
	mov	edi, OFFSET FLAT:label_496
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_544
.label_531:
	mov	rdi, r13
	mov	esi, ebx
	call	fts_build
	mov	qword ptr [r13 + 8], rax
.label_537:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_533:
	mov	edi, dword ptr [r13 + 0x2c]
	mov	esi, OFFSET FLAT:label_496
	xor	eax, eax
	call	openat_safer
.label_544:
	mov	r15d, eax
	test	r15d, r15d
	js	.label_542
	mov	rdi, r13
	mov	esi, ebx
	call	fts_build
	mov	qword ptr [r13 + 8], rax
	test	byte ptr [r13 + 0x49], 2
	jne	.label_530
	mov	edi, r15d
	call	fchdir
	test	eax, eax
	je	.label_532
	mov	ebx, dword ptr [r14]
	mov	edi, r15d
	call	close
	mov	dword ptr [r14], ebx
	xor	eax, eax
	jmp	.label_537
.label_542:
	mov	qword ptr [r13 + 8], 0
	xor	eax, eax
	jmp	.label_537
.label_530:
	mov	esi, dword ptr [r13 + 0x2c]
	cmp	esi, r15d
	jne	.label_536
	cmp	esi, -0x64
	jne	.label_528
.label_536:
	lea	rdi, [r13 + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_538
	mov	edi, eax
	call	close
.label_538:
	mov	dword ptr [r13 + 0x2c], r15d
	jmp	.label_539
.label_532:
	mov	edi, r15d
	call	close
.label_539:
	mov	rax, qword ptr [r13 + 8]
	jmp	.label_537
.label_528:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405f37
	.globl sub_405f37
	.type sub_405f37, @function
sub_405f37:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405f40
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_130]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_131]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_132]
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
	#Procedure 0x405fae
	.globl sub_405fae
	.type sub_405fae, @function
sub_405fae:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405fb0

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
	je	.label_545
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
.label_545:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x406018
	.globl sub_406018
	.type sub_406018, @function
sub_406018:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406020

	.globl filesystem_type
	.type filesystem_type, @function
filesystem_type:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x78
	mov	r15d, esi
	mov	r13, rdi
	mov	rbx, qword ptr [r13 + 0x50]
	xor	eax, eax
	test	byte ptr [rbx + 0x49], 2
	je	.label_546
	mov	rbp, qword ptr [rbx + 0x50]
	test	rbp, rbp
	jne	.label_547
	xor	r12d, r12d
	mov	edi, 0xd
	xor	esi, esi
	mov	edx, OFFSET FLAT:dev_type_hash
	mov	ecx, OFFSET FLAT:dev_type_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	rbp, rax
	mov	qword ptr [rbx + 0x50], rbp
	test	rbp, rbp
	mov	r14d, 0
	je	.label_549
.label_547:
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsp]
	mov	rdi, rbp
	call	hash_lookup
	test	rax, rax
	je	.label_551
	mov	rax, qword ptr [rax + 8]
	jmp	.label_546
.label_551:
	mov	r12b, 1
	mov	r14, rbp
.label_549:
	xor	eax, eax
	test	r15d, r15d
	js	.label_546
	lea	rsi, [rsp]
	mov	edi, r15d
	call	fstatfs
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_546
	test	r12b, r12b
	je	.label_548
	mov	edi, 0x10
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_548
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rbp], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbp + 8], rax
	mov	rdi, r14
	mov	rsi, rbp
	call	hash_insert
	test	rax, rax
	je	.label_550
	cmp	rax, rbp
	je	.label_548
	call	abort
.label_550:
	mov	rdi, rbp
	call	free
.label_548:
	mov	rax, qword ptr [rsp]
.label_546:
	add	rsp, 0x78
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40611a
	.globl sub_40611a
	.type sub_40611a, @function
sub_40611a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406120
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_552
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_553
	test	rax, rax
	je	.label_552
.label_553:
	pop	rbx
	ret	
.label_552:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x406155
	.globl sub_406155
	.type sub_406155, @function
sub_406155:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406160

	.globl mode_create_from_ref
	.type mode_create_from_ref, @function
mode_create_from_ref:
	push	rbx
	sub	rsp, 0x90
	mov	rax, rdi
	lea	rdx, [rsp]
	mov	edi, 1
	mov	rsi, rax
	call	__xstat
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_554
	mov	ebx, dword ptr [rsp + 0x18]
	mov	edi, 0x20
	call	xmalloc
	mov	byte ptr [rax], 0x3d
	mov	byte ptr [rax + 1], 1
	mov	dword ptr [rax + 4], 0xfff
	mov	dword ptr [rax + 8], ebx
	mov	dword ptr [rax + 0xc], 0xfff
	mov	byte ptr [rax + 0x11], 0
.label_554:
	add	rsp, 0x90
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4061b7
	.globl sub_4061b7
	.type sub_4061b7, @function
sub_4061b7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4061c0

	.globl get_root_dev_ino
	.type get_root_dev_ino, @function
get_root_dev_ino:
	push	rbx
	sub	rsp, 0x90
	mov	rbx, rdi
	lea	rdx, [rsp]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_261
	call	__lxstat
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_555
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx + 8], rax
	mov	rax, rbx
.label_555:
	add	rsp, 0x90
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x406202
	.globl sub_406202
	.type sub_406202, @function
sub_406202:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406210
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x406218
	.globl sub_406218
	.type sub_406218, @function
sub_406218:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406220

	.globl leave_dir
	.type leave_dir, @function
leave_dir:
	sub	rsp, 0x18
	movzx	eax, word ptr [rdi + 0x48]
	test	ax, 0x102
	je	.label_556
	movups	xmm0, xmmword ptr [rsi + 0x78]
	movaps	xmmword ptr [rsp], xmm0
	mov	rdi, qword ptr [rdi + 0x58]
	lea	rsi, [rsp]
	call	hash_delete
	test	rax, rax
	je	.label_557
	mov	rdi, rax
	call	free
	add	rsp, 0x18
	ret	
.label_557:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40625a
	.globl sub_40625a
	.type sub_40625a, @function
sub_40625a:

	nop	word ptr cs:[rax + rax]
.label_556:
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_558
	cmp	qword ptr [rax + 0x58], 0
	js	.label_558
	mov	rcx, qword ptr [rdi + 0x58]
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_557
	mov	rdx, qword ptr [rcx]
	cmp	rdx, qword ptr [rsi + 0x80]
	jne	.label_558
	mov	rdx, qword ptr [rcx + 8]
	cmp	rdx, qword ptr [rsi + 0x78]
	jne	.label_558
	mov	rdx, qword ptr [rax + 0x78]
	mov	qword ptr [rcx + 8], rdx
	mov	rax, qword ptr [rax + 0x80]
	mov	qword ptr [rcx], rax
.label_558:
	add	rsp, 0x18
	ret	
.label_561:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_559
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_559:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4062e4
	.globl sub_4062e4
	.type sub_4062e4, @function
sub_4062e4:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4062e6

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
	jne	.label_560
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_560
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_561
.label_560:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	16
	#Procedure 0x406320

	.globl hash_initialize
	.type hash_initialize, @function
hash_initialize:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r8
	mov	rbx, rsi
	mov	r12, rdi
	test	rdx, rdx
	mov	r13d, OFFSET FLAT:raw_hasher
	cmovne	r13, rdx
	test	rcx, rcx
	mov	ebp, OFFSET FLAT:raw_comparator
	cmovne	rbp, rcx
	mov	edi, 0x50
	call	malloc
	mov	r15, rax
	xor	eax, eax
	test	r15, r15
	je	.label_565
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_tuning
	cmove	rbx, rax
	mov	qword ptr [r15 + 0x28], rbx
	cmp	rbx, rax
	je	.label_567
	movss	xmm0, dword ptr [rbx + 8]
	ucomiss	xmm0, dword ptr [rip + label_436]
	jbe	.label_564
	movss	xmm1, dword ptr [rip + label_460]
	ucomiss	xmm1, xmm0
	jbe	.label_564
	movss	xmm1, dword ptr [rbx + 0xc]
	ucomiss	xmm1, dword ptr [rip + label_462]
	jbe	.label_564
	movss	xmm1, dword ptr [rbx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_564
	addss	xmm1, dword ptr [rip + label_436]
	ucomiss	xmm0, xmm1
	jbe	.label_564
	movss	xmm0, dword ptr [rbx + 4]
	movss	xmm2, dword ptr [rip + label_464]
	ucomiss	xmm2, xmm0
	jb	.label_564
	ucomiss	xmm0, xmm1
	jbe	.label_564
.label_567:
	cmp	byte ptr [rbx + 0x10], 0
	jne	.label_569
	mov	eax, r12d
	and	eax, 1
	test	r12, r12
	js	.label_570
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, r12
	jmp	.label_562
.label_570:
	shr	r12, 1
	or	rax, r12
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_562:
	divss	xmm0, dword ptr [rbx + 8]
	movss	xmm1, dword ptr [rip + label_247]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	r12, xmm0
	ucomiss	xmm0, xmm1
	cmovae	r12, rcx
	ucomiss	xmm0, dword ptr [rip + label_248]
	jae	.label_564
.label_569:
	cmp	r12, 0xa
	mov	ebx, 0xa
	cmovae	rbx, r12
	or	rbx, 1
	jmp	.label_566
	.section	.text
	.align	16
	#Procedure 0x40646e
	.globl sub_40646e
	.type sub_40646e, @function
sub_40646e:

	nop	
.label_571:
	add	rbx, 2
.label_566:
	cmp	rbx, -1
	je	.label_564
	cmp	rbx, 0xa
	mov	ecx, 3
	jb	.label_563
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	nop	dword ptr [rax + rax]
.label_568:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_563
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_568
.label_563:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_571
	mov	rax, rbx
	shr	rax, 0x3c
	jne	.label_564
	mov	qword ptr [r15 + 0x10], rbx
	test	rbx, rbx
	je	.label_564
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [r15], rax
	test	rax, rax
	je	.label_564
	shl	rbx, 4
	add	rax, rbx
	mov	qword ptr [r15 + 8], rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	mov	qword ptr [r15 + 0x30], r13
	mov	qword ptr [r15 + 0x38], rbp
	mov	qword ptr [r15 + 0x40], r14
	mov	qword ptr [r15 + 0x48], 0
	mov	rax, r15
	jmp	.label_565
.label_564:
	mov	rdi, r15
	call	free
	xor	eax, eax
.label_565:
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
	#Procedure 0x406538
	.globl sub_406538
	.type sub_406538, @function
sub_406538:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406540

	.globl rpl_fts_read
	.type rpl_fts_read, @function
rpl_fts_read:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	mov	r12, qword ptr [r14]
	xor	r15d, r15d
	test	r12, r12
	je	.label_572
	mov	eax, dword ptr [r14 + 0x48]
	xor	r15d, r15d
	test	ah, 0x20
	jne	.label_572
	movzx	ecx, word ptr [r12 + 0x74]
	mov	word ptr [r12 + 0x74], 3
	cmp	ecx, 1
	je	.label_605
	movzx	edx, cx
	cmp	edx, 2
	jne	.label_611
	mov	ecx, dword ptr [r12 + 0x70]
	mov	esi, ecx
	and	esi, 0xfffe
	cmp	esi, 0xc
	jne	.label_613
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_578
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_621
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_624
	mov	edi, OFFSET FLAT:label_496
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_626
.label_605:
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	mov	r15, r12
	jmp	.label_572
.label_611:
	lea	r13, [r12 + 0x70]
	mov	ecx, dword ptr [r12 + 0x70]
	jmp	.label_577
.label_613:
	lea	r13, [r12 + 0x70]
.label_577:
	movzx	esi, cx
	cmp	esi, 1
	jne	.label_580
	cmp	edx, 4
	je	.label_583
	test	al, 0x40
	je	.label_587
	mov	rdx, qword ptr [r12 + 0x78]
	cmp	rdx, qword ptr [r14 + 0x18]
	jne	.label_583
.label_587:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_595
	test	ah, 0x10
	jne	.label_597
	mov	rcx, qword ptr [r12 + 0x30]
	mov	edx, 0xffffffff
	mov	rdi, r14
	mov	rsi, r12
	call	fts_safe_changedir
	test	eax, eax
	je	.label_607
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r12 + 0x40], eax
	or	byte ptr [r12 + 0x72], 1
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_628
	.section	.text
	.align	16
	#Procedure 0x406694
	.globl sub_406694
	.type sub_406694, @function
sub_406694:

	nop	word ptr cs:[rax + rax]
.label_580:
	mov	r15, qword ptr [r12 + 0x10]
	test	r15, r15
	je	.label_616
	mov	qword ptr [r14], r15
	mov	rdi, r12
	call	free
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_619
	movzx	eax, word ptr [r15 + 0x74]
	cmp	eax, 4
	mov	r12, r15
	je	.label_580
	movzx	eax, ax
	cmp	eax, 2
	jne	.label_622
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_582
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_582
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_603
	mov	edi, OFFSET FLAT:label_496
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_586
.label_594:
	mov	rcx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rax + 0x30], rcx
	mov	rax, qword ptr [rax + 0x10]
.label_628:
	test	rax, rax
	jne	.label_594
	jmp	.label_607
.label_583:
	test	ecx, 0x20000
	je	.label_596
	mov	edi, dword ptr [r12 + 0x44]
	call	close
.label_596:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_592
	nop	dword ptr [rax]
.label_590:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_606
	call	closedir
.label_606:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_590
	mov	qword ptr [r14 + 8], 0
.label_592:
	mov	word ptr [r12 + 0x70], 6
.label_610:
	mov	rdi, r14
	mov	rsi, r12
	call	leave_dir
	mov	r15, r12
	jmp	.label_572
.label_616:
	mov	r15, qword ptr [r12 + 8]
	cmp	qword ptr [r15 + 0x18], 0
	je	.label_618
	mov	qword ptr [r14], r15
	mov	rax, qword ptr [r15 + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	r15, rax
	test	r15, r15
	je	.label_625
	mov	rdi, r12
	call	free
	jmp	.label_622
.label_578:
	mov	r15, r12
	jmp	.label_581
.label_619:
	mov	rdi, r14
	call	restore_initial_cwd
	test	eax, eax
	mov	eax, dword ptr [r14 + 0x48]
	je	.label_574
	or	eax, 0x2000
	mov	dword ptr [r14 + 0x48], eax
	xor	r15d, r15d
	jmp	.label_572
.label_621:
	mov	r15, r12
	jmp	.label_581
.label_574:
	test	ax, 0x102
	je	.label_584
	mov	rdi, qword ptr [r14 + 0x58]
	test	rdi, rdi
	je	.label_591
	call	hash_free
	jmp	.label_591
.label_597:
	and	eax, 0xffffefff
	mov	dword ptr [r14 + 0x48], eax
	nop	word ptr cs:[rax + rax]
.label_609:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_600
	call	closedir
.label_600:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_609
	mov	qword ptr [r14 + 8], 0
.label_595:
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	qword ptr [r14 + 8], rax
	test	rax, rax
	je	.label_615
.label_607:
	mov	r15, qword ptr [r14 + 8]
	mov	qword ptr [r14 + 8], 0
	jmp	.label_622
.label_615:
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_572
	cmp	dword ptr [r12 + 0x40], 0
	je	.label_610
	movzx	eax, word ptr [r13]
	cmp	eax, 4
	je	.label_610
	mov	word ptr [r13], 7
	jmp	.label_610
.label_624:
	mov	edi, dword ptr [r14 + 0x2c]
	mov	esi, OFFSET FLAT:label_496
	xor	eax, eax
	call	openat_safer
.label_626:
	mov	dword ptr [r12 + 0x44], eax
	test	eax, eax
	js	.label_620
	or	byte ptr [r12 + 0x72], 2
	mov	r15, r12
	jmp	.label_581
.label_625:
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_572
	mov	r15, qword ptr [r12 + 8]
.label_618:
	mov	qword ptr [r14], r15
	mov	rdi, r12
	call	free
	cmp	qword ptr [r15 + 0x58], -1
	je	.label_585
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	je	.label_588
	mov	rax, qword ptr [r15 + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_593
	movzx	eax, word ptr [r15 + 0x72]
	test	al, 2
	jne	.label_599
	test	al, 1
	jne	.label_602
	mov	rsi, qword ptr [r15 + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:label_384
	mov	rdi, r14
	call	fts_safe_changedir
	jmp	.label_612
.label_585:
	mov	rdi, r15
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	qword ptr [r14], 0
	xor	r15d, r15d
	jmp	.label_572
.label_620:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r12 + 0x40], eax
	mov	word ptr [r12 + 0x70], 7
	mov	r15, r12
	jmp	.label_581
.label_584:
	mov	rdi, qword ptr [r14 + 0x58]
	call	free
.label_591:
	mov	rdx, qword ptr [r15 + 0x60]
	mov	qword ptr [r15 + 0x48], rdx
	mov	rdi, qword ptr [r14 + 0x20]
	lea	r12, [r15 + 0x108]
	inc	rdx
	mov	rsi, r12
	call	memmove
	mov	esi, 0x2f
	mov	rdi, r12
	call	strrchr
	mov	rbx, rax
	test	rbx, rbx
	je	.label_601
	cmp	rbx, r12
	jne	.label_573
	cmp	byte ptr [r15 + 0x109], 0
	je	.label_601
.label_573:
	inc	rbx
	mov	rdi, rbx
	call	strlen
	mov	r13, rax
	lea	rdx, [r13 + 1]
	mov	rdi, r12
	mov	rsi, rbx
	call	memmove
	mov	qword ptr [r15 + 0x60], r13
.label_601:
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [r15 + 0x38], rax
	mov	qword ptr [r15 + 0x30], rax
	movzx	eax, word ptr [r14 + 0x48]
	test	ax, 0x102
	je	.label_589
	mov	edi, 0x1f
	xor	esi, esi
	mov	edx, OFFSET FLAT:AD_hash
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [r14 + 0x58], rax
	jmp	.label_581
.label_589:
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [r14 + 0x58], rax
	test	rax, rax
	je	.label_581
	mov	rdi, rax
	call	cycle_check_init
	jmp	.label_581
.label_593:
	mov	rdi, r14
	call	restore_initial_cwd
.label_612:
	test	eax, eax
	je	.label_602
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_602
.label_599:
	mov	eax, dword ptr [r14 + 0x48]
	lea	rbx, [r15 + 0x44]
	test	al, 4
	jne	.label_598
	test	ah, 2
	mov	ebp, dword ptr [r15 + 0x44]
	jne	.label_623
	mov	edi, ebp
	call	fchdir
	test	eax, eax
	je	.label_598
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_598
.label_603:
	mov	edi, dword ptr [r14 + 0x2c]
	mov	esi, OFFSET FLAT:label_496
	xor	eax, eax
	call	openat_safer
.label_586:
	mov	dword ptr [r15 + 0x44], eax
	test	eax, eax
	js	.label_627
	or	byte ptr [r15 + 0x72], 2
	jmp	.label_582
.label_627:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	mov	word ptr [r15 + 0x70], 7
.label_582:
	mov	word ptr [r15 + 0x74], 3
.label_622:
	mov	rax, qword ptr [r14 + 0x20]
	mov	rcx, qword ptr [r15 + 8]
	mov	rdx, qword ptr [rcx + 0x38]
	mov	rcx, qword ptr [rcx + 0x48]
	lea	rsi, [rcx - 1]
	cmp	byte ptr [rdx + rcx - 1], 0x2f
	cmovne	rsi, rcx
	lea	rdi, [rax + rsi + 1]
	mov	byte ptr [rax + rsi], 0x2f
	lea	rsi, [r15 + 0x108]
	mov	rdx, qword ptr [r15 + 0x60]
	inc	rdx
	call	memmove
.label_581:
	mov	qword ptr [r14], r15
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	jne	.label_604
	mov	rax, qword ptr [r15 + 0xa8]
	cmp	rax, 1
	je	.label_608
	cmp	rax, 2
	jne	.label_588
	mov	rbx, qword ptr [r15 + 8]
	cmp	qword ptr [rbx + 0x68], 0
	jne	.label_614
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 0x18
	cmp	eax, 0x18
	jne	.label_614
	mov	esi, dword ptr [r14 + 0x2c]
	mov	rdi, rbx
	call	filesystem_type
	cmp	rax, 0x52654973
	je	.label_608
	cmp	rax, 0x58465342
	je	.label_608
.label_614:
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	mov	ecx, 0xf000
	and	ecx, dword ptr [r15 + 0x90]
	cmp	ecx, 0x4000
	jne	.label_604
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_608
	mov	rax, qword ptr [rbx + 0x68]
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	jb	.label_608
	dec	rax
	mov	qword ptr [rbx + 0x68], rax
.label_608:
	mov	ax, word ptr [r15 + 0x70]
.label_604:
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_572
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_579
	mov	rax, qword ptr [r15 + 0x78]
	mov	qword ptr [r14 + 0x18], rax
.label_579:
	mov	rdi, r14
	mov	rsi, r15
	call	enter_dir
	test	al, al
	jne	.label_572
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	r15d, r15d
	jmp	.label_572
.label_623:
	mov	esi, dword ptr [r14 + 0x2c]
	cmp	esi, ebp
	jne	.label_617
	cmp	esi, -0x64
	jne	.label_588
.label_617:
	lea	rdi, [r14 + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_575
	mov	edi, eax
	call	close
.label_575:
	mov	dword ptr [r14 + 0x2c], ebp
.label_598:
	mov	edi, dword ptr [rbx]
	call	close
.label_602:
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 2
	je	.label_576
	mov	eax, dword ptr [r15 + 0x40]
	xor	ecx, ecx
	cmp	eax, 0
	setne	cl
	or	ecx, 6
	cmp	eax, 0
	mov	word ptr [r15 + 0x70], cx
	jne	.label_576
	mov	rdi, r14
	mov	rsi, r15
	call	leave_dir
.label_576:
	xor	eax, eax
	test	byte ptr [r14 + 0x49], 0x20
	cmovne	r15, rax
.label_572:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_588:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x406cc3
	.globl sub_406cc3
	.type sub_406cc3, @function
sub_406cc3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406cd0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_632
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_634
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_629
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_634
	mov	esi, OFFSET FLAT:label_631
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_630
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_630:
	mov	rbx, r14
.label_634:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_632:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_633
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x406d71
	.globl sub_406d71
	.type sub_406d71, @function
sub_406d71:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406d80

	.globl fts_safe_changedir
	.type fts_safe_changedir, @function
fts_safe_changedir:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	rbx, rcx
	mov	r13d, edx
	mov	r12, rsi
	mov	r15, rdi
	test	rbx, rbx
	je	.label_635
	movzx	edx, byte ptr [rbx]
	mov	ecx, 0x2e
	mov	eax, 0x2e
	sub	eax, edx
	jne	.label_643
	movzx	eax, byte ptr [rbx + 1]
	sub	ecx, eax
	mov	eax, ecx
	jne	.label_643
	movzx	eax, byte ptr [rbx + 2]
	neg	eax
.label_643:
	test	eax, eax
	sete	r14b
	jmp	.label_648
.label_635:
	xor	r14d, r14d
.label_648:
	mov	eax, dword ptr [r15 + 0x48]
	test	al, 4
	jne	.label_649
	test	r13d, r13d
	mov	qword ptr [rsp], r12
	jns	.label_650
	mov	ecx, r14d
	xor	cl, 1
	jne	.label_650
	and	eax, 0x200
	je	.label_650
	lea	rbp, [r15 + 0x60]
	mov	rdi, rbp
	call	i_ring_empty
	test	al, al
	jne	.label_650
	mov	rdi, rbp
	call	i_ring_pop
	xor	ecx, ecx
	test	eax, eax
	cmovns	rbx, rcx
	cmovns	r13d, eax
	mov	r14b, 1
.label_650:
	test	r13d, r13d
	mov	r12d, r13d
	jns	.label_640
	mov	eax, dword ptr [r15 + 0x48]
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_642
	xor	eax, eax
	mov	rdi, rbx
	mov	esi, edx
	call	open_safer
	jmp	.label_647
.label_649:
	xor	ebp, ebp
	test	r13d, r13d
	js	.label_641
	and	eax, 0x200
	je	.label_641
	mov	edi, r13d
	call	close
	jmp	.label_641
.label_642:
	mov	edi, dword ptr [r15 + 0x2c]
	xor	eax, eax
	mov	rsi, rbx
	call	openat_safer
.label_647:
	mov	r12d, eax
	mov	ebp, 0xffffffff
	test	r12d, r12d
	js	.label_641
.label_640:
	mov	eax, dword ptr [r15 + 0x48]
	test	al, 2
	jne	.label_637
	test	rbx, rbx
	je	.label_639
	cmp	byte ptr [rbx], 0x2e
	jne	.label_639
	cmp	byte ptr [rbx + 1], 0x2e
	jne	.label_639
	cmp	byte ptr [rbx + 2], 0
	jne	.label_639
.label_637:
	lea	rdx, [rsp + 8]
	mov	edi, 1
	mov	esi, r12d
	call	__fxstat
	test	eax, eax
	jne	.label_646
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rcx + 0x78]
	cmp	rax, qword ptr [rsp + 8]
	jne	.label_645
	mov	rax, qword ptr [rcx + 0x80]
	cmp	rax, qword ptr [rsp + 0x10]
	jne	.label_645
	mov	eax, dword ptr [r15 + 0x48]
.label_639:
	test	ah, 2
	jne	.label_651
	mov	edi, r12d
	call	fchdir
	mov	ebp, eax
	jmp	.label_652
.label_651:
	mov	esi, dword ptr [r15 + 0x2c]
	cmp	esi, r12d
	jne	.label_653
	cmp	esi, -0x64
	jne	.label_644
.label_653:
	test	r14b, r14b
	je	.label_654
	test	al, 4
	jne	.label_636
	test	esi, esi
	js	.label_636
	mov	edi, esi
	jmp	.label_638
.label_645:
	call	__errno_location
	mov	dword ptr [rax], 2
.label_646:
	mov	ebp, 0xffffffff
.label_652:
	test	r13d, r13d
	jns	.label_641
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, r12d
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_641
.label_654:
	lea	rdi, [r15 + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_636
	mov	edi, eax
.label_638:
	call	close
.label_636:
	mov	dword ptr [r15 + 0x2c], r12d
	xor	ebp, ebp
.label_641:
	mov	eax, ebp
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_644:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x406f69
	.globl sub_406f69
	.type sub_406f69, @function
sub_406f69:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406f70
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_655
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_657:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_657
.label_655:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_658
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_659], OFFSET FLAT:slot0
.label_658:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_656
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_656:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x407001
	.globl sub_407001
	.type sub_407001, @function
sub_407001:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407010

	.globl transfer_entries
	.type transfer_entries, @function
transfer_entries:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	dword ptr [rsp + 4], edx
	mov	r12, rsi
	mov	rbp, rdi
	mov	r14, qword ptr [r12]
	mov	al, 1
	cmp	r14, qword ptr [r12 + 8]
	jae	.label_664
	nop	word ptr cs:[rax + rax]
.label_666:
	mov	r13, qword ptr [r14]
	test	r13, r13
	je	.label_660
	mov	r15, qword ptr [r14 + 8]
	test	r15, r15
	je	.label_663
	mov	rsi, qword ptr [rbp + 0x10]
	nop	dword ptr [rax]
.label_672:
	mov	rbx, qword ptr [r15]
	mov	rdi, rbx
	call	qword ptr [rbp + 0x30]
	mov	rsi, qword ptr [rbp + 0x10]
	cmp	rax, rsi
	jae	.label_668
	mov	rdx, qword ptr [rbp]
	mov	rcx, qword ptr [r15 + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_671
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [r15 + 8], rdi
	mov	qword ptr [rdx + rax + 8], r15
	jmp	.label_662
	.section	.text
	.align	16
	#Procedure 0x407099
	.globl sub_407099
	.type sub_407099, @function
sub_407099:

	nop	dword ptr [rax]
.label_671:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [rbp + 0x18]
	mov	qword ptr [r15], 0
	mov	rax, qword ptr [rbp + 0x48]
	mov	qword ptr [r15 + 8], rax
	mov	qword ptr [rbp + 0x48], r15
.label_662:
	test	rcx, rcx
	mov	r15, rcx
	jne	.label_672
	mov	r13, qword ptr [r14]
.label_663:
	mov	qword ptr [r14 + 8], 0
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	jne	.label_660
	mov	rsi, qword ptr [rbp + 0x10]
	mov	rdi, r13
	call	qword ptr [rbp + 0x30]
	mov	rbx, rax
	cmp	rbx, qword ptr [rbp + 0x10]
	jae	.label_667
	mov	r15, qword ptr [rbp]
	shl	rbx, 4
	cmp	qword ptr [r15 + rbx], 0
	je	.label_669
	mov	rax, qword ptr [rbp + 0x48]
	test	rax, rax
	je	.label_673
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbp + 0x48], rcx
	jmp	.label_661
.label_669:
	add	r15, rbx
	mov	qword ptr [r15], r13
	inc	qword ptr [rbp + 0x18]
	jmp	.label_665
.label_667:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x407122
	.globl sub_407122
	.type sub_407122, @function
sub_407122:

	nop	word ptr [rax + rax]
.label_673:
	mov	edi, 0x10
	call	malloc
	test	rax, rax
	je	.label_670
.label_661:
	mov	qword ptr [rax], r13
	mov	rcx, qword ptr [r15 + rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + rbx + 8], rax
.label_665:
	mov	qword ptr [r14], 0
	dec	qword ptr [r12 + 0x18]
.label_660:
	add	r14, 0x10
	cmp	r14, qword ptr [r12 + 8]
	jb	.label_666
	mov	al, 1
.label_664:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_668:
	call	abort
.label_670:
	xor	eax, eax
	jmp	.label_664
	.section	.text
	.align	16
	#Procedure 0x407180
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_130]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_131]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_132]
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
	#Procedure 0x4071d4
	.globl sub_4071d4
	.type sub_4071d4, @function
sub_4071d4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4071e0

	.globl hash_delete
	.type hash_delete, @function
hash_delete:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	r15, rdi
	mov	rsi, qword ptr [r15 + 0x10]
	mov	rdi, r14
	call	qword ptr [r15 + 0x30]
	mov	rbx, rax
	cmp	rbx, qword ptr [r15 + 0x10]
	jae	.label_694
	mov	rbp, qword ptr [r15]
	shl	rbx, 4
	mov	rsi, qword ptr [rbp + rbx]
	xor	r12d, r12d
	test	rsi, rsi
	je	.label_677
	lea	r13, [rbp + rbx]
	cmp	rsi, r14
	je	.label_681
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	test	al, al
	je	.label_685
	mov	r14, qword ptr [r13]
.label_681:
	mov	rax, qword ptr [rbp + rbx + 8]
	test	rax, rax
	je	.label_690
	movups	xmm0, xmmword ptr [rax]
	movups	xmmword ptr [r13], xmm0
	mov	qword ptr [rax], 0
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + 0x48], rax
	jmp	.label_683
.label_685:
	mov	rax, qword ptr [rbp + rbx + 8]
	xor	r12d, r12d
	test	rax, rax
	je	.label_677
	lea	rbx, [rbp + rbx + 8]
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_679:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_674
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx]
	test	al, al
	jne	.label_678
	mov	rax, qword ptr [rcx + 8]
	add	rcx, 8
	test	rax, rax
	mov	rbx, rcx
	jne	.label_679
	jmp	.label_677
.label_690:
	mov	qword ptr [r13], 0
	jmp	.label_683
.label_674:
	mov	rcx, rax
	jmp	.label_687
.label_678:
	mov	r14, qword ptr [rcx]
.label_687:
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbx], rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [r15 + 0x48], rcx
.label_683:
	xor	r12d, r12d
	test	r14, r14
	je	.label_677
	dec	qword ptr [r15 + 0x20]
	cmp	qword ptr [r13], 0
	jne	.label_682
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_693
	cvtsi2ss	xmm1, rax
	jmp	.label_676
.label_693:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm1, rcx
	addss	xmm1, xmm1
.label_676:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	movss	xmm2, dword ptr [rax]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_680
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rcx
	jmp	.label_686
.label_680:
	shr	rcx, 1
	or	rdx, rcx
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_686:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm3, xmm1
	jbe	.label_682
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_691
	movss	xmm3, dword ptr [rax + 8]
	ucomiss	xmm3, dword ptr [rip + label_436]
	jbe	.label_675
	movss	xmm4, dword ptr [rip + label_460]
	ucomiss	xmm4, xmm3
	jbe	.label_675
	xorps	xmm4, xmm4
	ucomiss	xmm2, xmm4
	jb	.label_675
	movss	xmm4, dword ptr [rax + 0xc]
	ucomiss	xmm4, dword ptr [rip + label_462]
	jbe	.label_675
	movss	xmm4, dword ptr [rip + label_436]
	addss	xmm4, xmm2
	ucomiss	xmm3, xmm4
	jbe	.label_675
	movss	xmm3, dword ptr [rax + 4]
	movss	xmm5, dword ptr [rip + label_464]
	ucomiss	xmm5, xmm3
	jb	.label_675
	ucomiss	xmm3, xmm4
	ja	.label_689
.label_675:
	mov	qword ptr [r15 + 40], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	xorps	xmm2, xmm2
	jmp	.label_689
.label_691:
	mov	eax, OFFSET FLAT:default_tuning
.label_689:
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_682
	mulss	xmm0, dword ptr [rax + 4]
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_692
	mulss	xmm0, dword ptr [rax + 8]
.label_692:
	movss	xmm1, dword ptr [rip + label_247]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	mov	rdi, r15
	call	hash_rehash
	test	al, al
	jne	.label_682
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_684
	nop	word ptr cs:[rax + rax]
.label_688:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_688
.label_684:
	mov	qword ptr [r15 + 0x48], 0
.label_682:
	mov	r12, r14
.label_677:
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_694:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x407473
	.globl sub_407473
	.type sub_407473, @function
sub_407473:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407480
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
	je	.label_695
	mov	qword ptr [rax], rbx
.label_695:
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
	#Procedure 0x40756c
	.globl sub_40756c
	.type sub_40756c, @function
sub_40756c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407570
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x407578
	.globl sub_407578
	.type sub_407578, @function
sub_407578:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407580
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_696
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_697
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_699
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_263
	mov	ecx, OFFSET FLAT:label_700
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_698
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x4075f4
	.globl sub_4075f4
	.type sub_4075f4, @function
sub_4075f4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407600
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
	je	.label_701
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
.label_701:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x407661
	.globl sub_407661
	.type sub_407661, @function
sub_407661:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407670

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_702
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_704
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_702
.label_704:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_702
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_703
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_703:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_702:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x4076e4
	.globl sub_4076e4
	.type sub_4076e4, @function
sub_4076e4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4076f0
	.globl hash_get_next
	.type hash_get_next, @function
hash_get_next:

	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	rsi, qword ptr [r14 + 0x10]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	cmp	rax, qword ptr [r14 + 0x10]
	jae	.label_707
	mov	rcx, qword ptr [r14]
	shl	rax, 4
	lea	rdx, [rcx + rax]
	nop	word ptr cs:[rax + rax]
.label_708:
	cmp	qword ptr [rdx], rbx
	mov	rdx, qword ptr [rdx + 8]
	je	.label_705
	test	rdx, rdx
	jne	.label_708
	jmp	.label_706
.label_705:
	test	rdx, rdx
	je	.label_706
	mov	rax, qword ptr [rdx]
	jmp	.label_709
.label_706:
	mov	rdx, qword ptr [r14 + 8]
	lea	rcx, [rcx + rax + 0x10]
	nop	word ptr cs:[rax + rax]
.label_710:
	cmp	rcx, rdx
	mov	eax, 0
	jae	.label_709
	mov	rax, qword ptr [rcx]
	add	rcx, 0x10
	test	rax, rax
	je	.label_710
.label_709:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_707:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x407773
	.globl sub_407773
	.type sub_407773, @function
sub_407773:

	nop	word ptr cs:[rax + rax]
.label_711:
	mov	word ptr [rsi + 0x74], dx
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x407787
	.globl sub_407787
	.type sub_407787, @function
sub_407787:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407795

	.globl rpl_fts_set
	.type rpl_fts_set, @function
rpl_fts_set:
	cmp	edx, 5
	jb	.label_711
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	eax, 1
	add	rsp, 8
	ret	
.label_712:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4077b5
	.globl sub_4077b5
	.type sub_4077b5, @function
sub_4077b5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4077bf
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_712
	call	rpl_calloc
	test	rax, rax
	je	.label_712
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4077e0

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
.label_750:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_745
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_752]
.label_962:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_758
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_200
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_963:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_774
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_774
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_784:
	cmp	r14, r11
	jae	.label_782
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_782:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_784
.label_774:
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
	jmp	.label_791
.label_955:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_791
.label_958:
	mov	al, 1
.label_956:
	mov	r12b, 1
.label_959:
	test	r12b, 1
	mov	cl, 1
	je	.label_803
	mov	ecx, eax
.label_803:
	mov	al, cl
.label_957:
	test	r12b, 1
	jne	.label_805
	test	r11, r11
	je	.label_806
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_806:
	mov	r14d, 1
	jmp	.label_808
.label_805:
	xor	r14d, r14d
.label_808:
	mov	ecx, OFFSET FLAT:label_200
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_791
.label_960:
	test	r12b, 1
	jne	.label_819
	test	r11, r11
	je	.label_821
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_821:
	mov	r14d, 1
	jmp	.label_825
.label_961:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_199
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_791
.label_819:
	xor	r14d, r14d
.label_825:
	mov	eax, OFFSET FLAT:label_199
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_791:
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
	jmp	.label_728
	.section	.text
	.align	16
	#Procedure 0x407acd
	.globl sub_407acd
	.type sub_407acd, @function
sub_407acd:

	nop	dword ptr [rax]
.label_785:
	inc	rsi
.label_728:
	cmp	rbp, -1
	je	.label_767
	cmp	rsi, rbp
	jne	.label_769
	jmp	.label_770
	.section	.text
	.align	16
	#Procedure 0x407ae3
	.globl sub_407ae3
	.type sub_407ae3, @function
sub_407ae3:

	nop	word ptr cs:[rax + rax]
.label_767:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_775
.label_769:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_778
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_747
	cmp	rbp, -1
	jne	.label_747
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
.label_747:
	cmp	rbx, rbp
	jbe	.label_792
.label_778:
	xor	r8d, r8d
.label_826:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_793
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_795]
.label_1016:
	test	rsi, rsi
	jne	.label_786
	jmp	.label_720
	.section	.text
	.align	16
	#Procedure 0x407b85
	.globl sub_407b85
	.type sub_407b85, @function
sub_407b85:

	nop	word ptr cs:[rax + rax]
.label_792:
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
	jne	.label_811
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_826
	jmp	.label_823
.label_811:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_826
.label_1020:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_715
	test	rsi, rsi
	jne	.label_717
	cmp	rbp, 1
	je	.label_720
	xor	r13d, r13d
	jmp	.label_716
.label_1009:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_725
	cmp	byte ptr [rsp + 6], 0
	jne	.label_727
	cmp	r12d, 2
	jne	.label_733
	mov	eax, r9d
	and	al, 1
	jne	.label_733
	cmp	r14, r11
	jae	.label_735
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_735:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_738
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_738:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_832
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_832:
	add	r14, 3
	mov	r9b, 1
.label_733:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_796
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_796:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_749
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_749
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_749
	cmp	r14, r11
	jae	.label_741
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_741:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_759
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_759:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_716
.label_1010:
	mov	bl, 0x62
	jmp	.label_714
.label_1011:
	mov	cl, 0x74
	jmp	.label_723
.label_1012:
	mov	bl, 0x76
	jmp	.label_714
.label_1013:
	mov	bl, 0x66
	jmp	.label_714
.label_1014:
	mov	cl, 0x72
	jmp	.label_723
.label_1017:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_783
	cmp	byte ptr [rsp + 6], 0
	jne	.label_755
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
	jae	.label_789
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_789:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_798
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_798:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_804
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_804:
	add	r14, 3
	xor	r9d, r9d
.label_783:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_716
.label_1018:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_809
	cmp	r12d, 2
	jne	.label_786
	cmp	byte ptr [rsp + 6], 0
	je	.label_786
	jmp	.label_755
.label_1019:
	cmp	r12d, 2
	jne	.label_820
	cmp	byte ptr [rsp + 6], 0
	jne	.label_755
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_776
.label_793:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_829
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
.label_713:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_732
	test	r8b, r8b
	je	.label_732
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_716
.label_715:
	test	rsi, rsi
	jne	.label_751
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_751
.label_720:
	mov	dl, 1
.label_1015:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_755
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_716:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_761
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_763
	jmp	.label_766
	.section	.text
	.align	16
	#Procedure 0x407ed4
	.globl sub_407ed4
	.type sub_407ed4, @function
sub_407ed4:

	nop	word ptr cs:[rax + rax]
.label_761:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_766
.label_763:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_772
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_776
	jmp	.label_762
	.section	.text
	.align	16
	#Procedure 0x407f1d
	.globl sub_407f1d
	.type sub_407f1d, @function
sub_407f1d:

	nop	dword ptr [rax]
.label_766:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_762
	jmp	.label_776
.label_772:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_762
.label_725:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_785
	xor	r15d, r15d
	jmp	.label_786
.label_820:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_723
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_776
.label_723:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_755
.label_714:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_716
	nop	word ptr cs:[rax + rax]
.label_762:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_727
	cmp	r12d, 2
	jne	.label_807
	mov	eax, r9d
	and	al, 1
	jne	.label_807
	cmp	r14, r11
	jae	.label_754
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_754:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_812
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_812:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_831
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_831:
	add	r14, 3
	mov	r9b, 1
.label_807:
	cmp	r14, r11
	jae	.label_824
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_824:
	inc	r14
	jmp	.label_827
.label_829:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_830
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_830:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_760:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_737
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_740
	cmp	rbp, -2
	je	.label_744
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_822
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_790:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_748
	bt	rsi, rdx
	jb	.label_765
.label_748:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_790
.label_822:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_800
	xor	r13d, r13d
.label_800:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_760
	jmp	.label_713
.label_749:
	xor	r13d, r13d
	jmp	.label_716
.label_751:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_716
.label_809:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_786
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_786
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_786
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_729
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_753
	cmp	byte ptr [rsp + 6], 0
	jne	.label_816
	cmp	r14, r11
	jae	.label_781
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_781:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_814
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_814:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_810
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_810:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_779
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_779:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_716
.label_786:
	xor	eax, eax
.label_717:
	xor	r13d, r13d
	jmp	.label_716
.label_732:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_828
	.section	.text
	.align	16
	#Procedure 0x408202
	.globl sub_408202
	.type sub_408202, @function
sub_408202:

	nop	word ptr cs:[rax + rax]
.label_787:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_828:
	test	r8b, r8b
	je	.label_718
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_719
	cmp	r14, r11
	jae	.label_722
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_722:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_719
	.section	.text
	.align	16
	#Procedure 0x40824c
	.globl sub_40824c
	.type sub_40824c, @function
sub_40824c:

	nop	dword ptr [rax]
.label_718:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_823
	cmp	r12d, 2
	jne	.label_736
	mov	eax, r9d
	and	al, 1
	jne	.label_736
	cmp	r14, r11
	jae	.label_739
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_739:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_742
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_742:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_746
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_746:
	add	r14, 3
	mov	r9b, 1
.label_736:
	cmp	r14, r11
	jae	.label_818
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_818:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_721
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_721:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_764
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_764:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_719:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_776
	test	r9b, 1
	je	.label_726
	mov	ebx, eax
	and	bl, 1
	jne	.label_726
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_780
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_780:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_799
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_799:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_726:
	cmp	r14, r11
	jae	.label_787
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_787
	.section	.text
	.align	16
	#Procedure 0x408353
	.globl sub_408353
	.type sub_408353, @function
sub_408353:

	nop	word ptr cs:[rax + rax]
.label_776:
	test	r9b, 1
	je	.label_794
	and	al, 1
	jne	.label_794
	cmp	r14, r11
	jae	.label_797
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_797:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_768
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_768:
	add	r14, 2
	xor	r9d, r9d
.label_794:
	mov	ebx, r15d
.label_827:
	cmp	r14, r11
	jae	.label_801
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_801:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_785
.label_740:
	xor	r13d, r13d
.label_737:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_713
.label_744:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_817
	mov	rsi, qword ptr [rsp + 0x58]
.label_802:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_730
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_802
	xor	r13d, r13d
	jmp	.label_713
.label_817:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_713
.label_730:
	xor	r13d, r13d
	jmp	.label_713
.label_729:
	xor	r13d, r13d
	jmp	.label_716
.label_753:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_716
	.section	.text
	.align	16
	#Procedure 0x408428
	.globl sub_408428
	.type sub_408428, @function
sub_408428:

	nop	dword ptr [rax + rax]
.label_770:
	mov	rcx, rsi
.label_775:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_724
	or	al, dl
	je	.label_731
.label_724:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_734
	or	al, dl
	jne	.label_734
	test	r10b, 1
	jne	.label_743
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_734
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_750
.label_734:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_756
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_757
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_757
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_773:
	cmp	r14, r11
	jae	.label_788
	mov	byte ptr [rcx + r14], al
.label_788:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_773
	jmp	.label_757
.label_727:
	mov	qword ptr [rsp + 0x20], rbp
.label_823:
	mov	rdx, rdi
	jmp	.label_777
.label_755:
	mov	qword ptr [rsp + 0x20], rbp
.label_765:
	mov	rdx, rdi
	mov	eax, 2
.label_771:
	mov	qword ptr [rsp + 0x38], rax
.label_777:
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
.label_813:
	mov	r14, rax
.label_815:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_731:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_777
.label_743:
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
	jmp	.label_813
.label_756:
	mov	rcx, qword ptr [rsp + 8]
.label_757:
	cmp	r14, r11
	jae	.label_815
	mov	byte ptr [rcx + r14], 0
	jmp	.label_815
.label_816:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_771
.label_745:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4085e7
	.globl sub_4085e7
	.type sub_4085e7, @function
sub_4085e7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4085f0

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
	je	.label_833
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
.label_833:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x408685
	.globl sub_408685
	.type sub_408685, @function
sub_408685:

	nop	word ptr cs:[rax + rax]
.label_834:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x408695
	.globl sub_408695
	.type sub_408695, @function
sub_408695:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4086a3
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
	je	.label_835
	test	r15, r15
	je	.label_834
.label_835:
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
	#Procedure 0x4086e0
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_836
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_837:
	mov	rcx, rdx
	shl	rcx, 5
	sub	rcx, rdx
	movzx	eax, al
	add	rax, rcx
	xor	edx, edx
	div	rsi
	movzx	eax, byte ptr [rdi]
	inc	rdi
	test	al, al
	jne	.label_837
.label_836:
	mov	rax, rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x408713
	.globl sub_408713
	.type sub_408713, @function
sub_408713:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408720

	.globl i_ring_empty
	.type i_ring_empty, @function
i_ring_empty:
	mov	al, byte ptr [rdi + 0x1c]
	ret	
	.section	.text
	.align	16
	#Procedure 0x408724
	.globl sub_408724
	.type sub_408724, @function
sub_408724:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408730

	.globl AD_compare
	.type AD_compare, @function
AD_compare:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_838
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
.label_838:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x408747
	.globl sub_408747
	.type sub_408747, @function
sub_408747:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408750
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
	#Procedure 0x408768
	.globl sub_408768
	.type sub_408768, @function
sub_408768:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408770

	.globl mode_adjust
	.type mode_adjust, @function
mode_adjust:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	qword ptr [rsp - 8], r8
	and	edi, 0xfff
	mov	al, byte ptr [rcx + 1]
	xor	r13d, r13d
	test	al, al
	je	.label_843
	xor	r13d, r13d
	test	sil, sil
	mov	r9d, 0xc00
	cmove	r9d, r13d
	not	edx
	mov	r10d, r9d
	not	r10d
	movzx	r12d, sil
	mov	r14d, 0x92
	mov	r15d, 0x49
	nop	dword ptr [rax + rax]
.label_841:
	movsx	ebp, al
	mov	ebx, dword ptr [rcx + 4]
	mov	esi, dword ptr [rcx + 8]
	mov	r8d, dword ptr [rcx + 0xc]
	cmp	ebp, 2
	je	.label_839
	cmp	ebp, 3
	jne	.label_844
	and	esi, edi
	mov	ebp, esi
	and	ebp, 0x124
	mov	eax, 0x124
	cmovne	ebp, eax
	mov	r11d, esi
	and	r11d, 0x92
	cmovne	r11d, r14d
	or	r11d, esi
	and	esi, 0x49
	cmovne	esi, r15d
	or	esi, ebp
	or	esi, r11d
	jmp	.label_844
	.section	.text
	.align	16
	#Procedure 0x408808
	.globl sub_408808
	.type sub_408808, @function
sub_408808:

	nop	dword ptr [rax + rax]
.label_839:
	mov	ebp, edi
	and	ebp, 0x49
	mov	eax, esi
	or	eax, 0x49
	or	ebp, r12d
	cmovne	esi, eax
.label_844:
	test	ebx, ebx
	mov	eax, edx
	cmovne	eax, ebx
	mov	ebp, r8d
	or	ebp, r10d
	and	ebp, esi
	and	ebp, eax
	movsx	esi, byte ptr [rcx]
	cmp	esi, 0x2b
	je	.label_842
	cmp	esi, 0x2d
	je	.label_846
	cmp	esi, 0x3d
	jne	.label_840
	not	r8d
	and	r8d, r9d
	test	ebx, ebx
	mov	eax, ebx
	not	eax
	cmove	eax, ebx
	or	eax, r8d
	mov	esi, eax
	not	esi
	and	esi, 0xfff
	or	r13d, esi
	and	eax, edi
	or	ebp, eax
	mov	edi, ebp
	jmp	.label_840
	.section	.text
	.align	16
	#Procedure 0x40886a
	.globl sub_40886a
	.type sub_40886a, @function
sub_40886a:

	nop	word ptr [rax + rax]
.label_846:
	or	r13d, ebp
	not	ebp
	and	edi, ebp
	jmp	.label_840
	.section	.text
	.align	16
	#Procedure 0x408879
	.globl sub_408879
	.type sub_408879, @function
sub_408879:

	nop	dword ptr [rax]
.label_842:
	or	r13d, ebp
	or	edi, ebp
.label_840:
	movzx	eax, byte ptr [rcx + 0x11]
	add	rcx, 0x10
	test	al, al
	jne	.label_841
.label_843:
	mov	rax, qword ptr [rsp - 8]
	test	rax, rax
	je	.label_845
	mov	dword ptr [rax], r13d
.label_845:
	mov	eax, edi
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4088af
	.globl sub_4088af
	.type sub_4088af, @function
sub_4088af:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4088b0
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
	#Procedure 0x4088bf
	.globl sub_4088bf
	.type sub_4088bf, @function
sub_4088bf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4088c0

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	.section	.text
	.align	16
	#Procedure 0x4088ce
	.globl sub_4088ce
	.type sub_4088ce, @function
sub_4088ce:

	nop	
.label_847:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4088d5
	.globl sub_4088d5
	.type sub_4088d5, @function
sub_4088d5:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4088db
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_130]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_131]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_132]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_847
	test	rdx, rdx
	je	.label_847
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
	#Procedure 0x408940

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
	je	.label_848
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
.label_848:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4089ac
	.globl sub_4089ac
	.type sub_4089ac, @function
sub_4089ac:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4089b0
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4089c1
	.globl sub_4089c1
	.type sub_4089c1, @function
sub_4089c1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4089d0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_130]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_131]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_132]
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
	#Procedure 0x408a3f
	.globl sub_408a3f
	.type sub_408a3f, @function
sub_408a3f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x408a40

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14 + 0x40], 0
	je	.label_849
	cmp	qword ptr [r14 + 0x20], 0
	je	.label_849
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_855
	.section	.text
	.align	16
	#Procedure 0x408a5f
	.globl sub_408a5f
	.type sub_408a5f, @function
sub_408a5f:

	nop	
.label_853:
	add	r15, 0x10
.label_855:
	cmp	r15, rax
	jae	.label_849
	mov	rdi, qword ptr [r15]
	test	rdi, rdi
	je	.label_853
	test	r15, r15
	je	.label_853
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [r15 + 8]
	jmp	.label_859
.label_852:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
.label_859:
	test	rbx, rbx
	jne	.label_852
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_853
.label_849:
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_850
	.section	.text
	.align	16
	#Procedure 0x408a9f
	.globl sub_408a9f
	.type sub_408a9f, @function
sub_408a9f:

	nop	
.label_854:
	add	r15, 0x10
.label_850:
	cmp	r15, rax
	jae	.label_857
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	je	.label_854
	nop	word ptr cs:[rax + rax]
.label_851:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_851
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_854
.label_857:
	mov	rdi, qword ptr [r14 + 0x48]
	test	rdi, rdi
	je	.label_856
.label_858:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_858
.label_856:
	mov	rdi, qword ptr [r14]
	call	free
	mov	rdi, r14
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
	.section	.text
	.align	16
	#Procedure 0x408b06
	.globl sub_408b06
	.type sub_408b06, @function
sub_408b06:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408b10

	.globl dev_type_compare
	.type dev_type_compare, @function
dev_type_compare:
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x408b1a
	.globl sub_408b1a
	.type sub_408b1a, @function
sub_408b1a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408b20
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
	#Procedure 0x408b53
	.globl sub_408b53
	.type sub_408b53, @function
sub_408b53:

	nop	word ptr cs:[rax + rax]
.label_874:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_860
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
	#Procedure 0x408b98
	.globl sub_408b98
	.type sub_408b98, @function
sub_408b98:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408ba7

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_874
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_875
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
	mov	esi, OFFSET FLAT:label_868
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_869
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_877
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_870
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_871
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_862
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_866
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_865
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_872
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_263
	mov	ecx, OFFSET FLAT:label_700
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_867
	mov	esi, OFFSET FLAT:label_876
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_867
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_863
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_867:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_873
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_700
	mov	ecx, OFFSET FLAT:label_262
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_861
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_262
	mov	ecx, OFFSET FLAT:label_864
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
	.section	.text
	.align	16
	#Procedure 0x408db0

	.globl mode_compile
	.type mode_compile, @function
mode_compile:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	mov	bl, byte ptr [r14]
	mov	eax, ebx
	and	al, 0xf8
	cmp	al, 0x30
	jne	.label_890
	xor	eax, eax
	xor	r15d, r15d
	mov	rdx, r14
	nop	
.label_898:
	movsx	ecx, bl
	lea	r15d, [rcx + r15*8 - 0x30]
	cmp	r15d, 0xfff
	ja	.label_879
	movzx	ebx, byte ptr [rdx + 1]
	inc	rdx
	mov	ecx, ebx
	and	cl, 0xf8
	cmp	cl, 0x30
	je	.label_898
	xor	eax, eax
	test	bl, bl
	jne	.label_879
	sub	rdx, r14
	mov	eax, r15d
	and	eax, 0xc00
	or	eax, 0x3ff
	cmp	rdx, 5
	mov	ebx, 0xfff
	cmovl	ebx, eax
	mov	edi, 0x20
	call	xmalloc
	mov	byte ptr [rax], 0x3d
	mov	byte ptr [rax + 1], 1
	mov	dword ptr [rax + 4], 0xfff
	mov	dword ptr [rax + 8], r15d
	mov	dword ptr [rax + 0xc], ebx
	mov	byte ptr [rax + 0x11], 0
	jmp	.label_879
.label_890:
	lea	rax, [r14 + 1]
	mov	edi, 1
	jmp	.label_893
	.section	.text
	.align	16
	#Procedure 0x408e4f
	.globl sub_408e4f
	.type sub_408e4f, @function
sub_408e4f:

	nop	
.label_884:
	add	rdi, rdx
	movzx	ebx, byte ptr [rax]
	inc	rax
.label_893:
	cmp	bl, 0x2c
	jle	.label_895
	cmp	bl, 0x2d
	je	.label_897
	cmp	bl, 0x3d
	mov	edx, 1
	je	.label_884
	jmp	.label_903
	.section	.text
	.align	16
	#Procedure 0x408e6f
	.globl sub_408e6f
	.type sub_408e6f, @function
sub_408e6f:

	nop	
.label_895:
	cmp	bl, 0x2b
	mov	edx, 1
	je	.label_884
	test	bl, bl
	je	.label_896
.label_903:
	xor	edx, edx
	jmp	.label_884
	.section	.text
	.align	16
	#Procedure 0x408e82
	.globl sub_408e82
	.type sub_408e82, @function
sub_408e82:

	nop	word ptr cs:[rax + rax]
.label_897:
	mov	edx, 1
	jmp	.label_884
.label_896:
	mov	rax, rdi
	shr	rax, 0x3b
	jne	.label_885
	shl	rdi, 4
	call	xmalloc
	xor	r9d, r9d
	movabs	r8, 0x2000280000000000
	jmp	.label_889
	.section	.text
	.align	16
	#Procedure 0x408ebc

	.globl sub_408ebc
	.type sub_408ebc, @function
sub_408ebc:
	inc	r14
	nop	
.label_889:
	xor	esi, esi
	jmp	.label_878
	.section	.text
	.align	16
	#Procedure 0x408ec4
	.globl sub_408ec4
	.type sub_408ec4, @function
sub_408ec4:

	nop	word ptr cs:[rax + rax]
.label_984:
	or	esi, 0x207
	inc	r14
.label_878:
	movzx	edx, byte ptr [r14]
	movsx	ecx, dl
	lea	edi, [rcx - 0x61]
	cmp	edi, 0x14
	ja	.label_902
	jmp	qword ptr [(rdi * 8) + label_901]
.label_982:
	or	esi, 0xfff
	inc	r14
	jmp	.label_878
	.section	.text
	.align	16
	#Procedure 0x408efa
	.globl sub_408efa
	.type sub_408efa, @function
sub_408efa:

	nop	word ptr [rax + rax]
.label_983:
	or	esi, 0x438
	inc	r14
	jmp	.label_878
	.section	.text
	.align	16
	#Procedure 0x408f0b
	.globl sub_408f0b
	.type sub_408f0b, @function
sub_408f0b:

	nop	dword ptr [rax + rax]
.label_985:
	or	esi, 0x9c0
	inc	r14
	jmp	.label_878
	.section	.text
	.align	16
	#Procedure 0x408f1b
	.globl sub_408f1b
	.type sub_408f1b, @function
sub_408f1b:

	nop	dword ptr [rax + rax]
.label_902:
	mov	edi, ecx
	cmp	ecx, 0x3d
	ja	.label_880
	bt	r8, rdi
	jae	.label_880
.label_1050:
	lea	rbx, [r14 + 1]
	movsx	ecx, byte ptr [r14 + 1]
	mov	edi, ecx
	add	edi, -0x30
	cmp	edi, 0x45
	ja	.label_891
	jmp	qword ptr [(rdi * 8) + label_894]
.label_923:
	xor	edi, edi
	mov	r14, rbx
	nop	word ptr cs:[rax + rax]
.label_904:
	movsx	ecx, cl
	lea	edi, [rcx + rdi*8 - 0x30]
	cmp	edi, 0xfff
	ja	.label_880
	mov	cl, byte ptr [r14 + 1]
	inc	r14
	mov	ebx, ecx
	and	bl, 0xf8
	cmp	bl, 0x30
	je	.label_904
	test	esi, esi
	jne	.label_880
	mov	r11b, 1
	mov	esi, 0xfff
	test	cl, cl
	je	.label_883
	cmp	cl, 0x2c
	mov	r10d, 0xfff
	je	.label_886
	jmp	.label_880
.label_883:
	mov	r10d, 0xfff
	jmp	.label_886
.label_891:
	mov	r11b, 1
	xor	r10d, r10d
	mov	r14, rbx
	xor	edi, edi
	jmp	.label_892
	.section	.text
	.align	16
	#Procedure 0x408fc4
	.globl sub_408fc4
	.type sub_408fc4, @function
sub_408fc4:

	nop	word ptr cs:[rax + rax]
.label_888:
	mov	cl, byte ptr [r14 + 1]
	inc	r14
	mov	r11d, ebx
.label_892:
	movsx	ecx, cl
	add	ecx, -0x58
	cmp	ecx, 0x20
	ja	.label_886
	mov	bl, 2
	jmp	qword ptr [(rcx * 8) + label_900]
.label_931:
	or	edi, 0x124
	jmp	.label_881
.label_932:
	or	edi, 0xc00
	jmp	.label_881
.label_933:
	or	edi, 0x200
	jmp	.label_881
.label_934:
	or	edi, 0x92
	jmp	.label_881
.label_935:
	or	edi, 0x49
	nop	word ptr cs:[rax + rax]
.label_881:
	mov	ebx, r11d
	jmp	.label_888
.label_924:
	add	r14, 2
	mov	r11b, 3
	xor	r10d, r10d
	mov	edi, 0x38
	jmp	.label_886
.label_925:
	add	r14, 2
	mov	r11b, 3
	xor	r10d, r10d
	mov	edi, 7
	jmp	.label_886
.label_926:
	add	r14, 2
	mov	r11b, 3
	xor	r10d, r10d
	mov	edi, 0x1c0
	nop	word ptr cs:[rax + rax]
.label_886:
	mov	rcx, r9
	shl	rcx, 4
	mov	byte ptr [rax + rcx], dl
	mov	byte ptr [rax + rcx + 1], r11b
	mov	dword ptr [rax + rcx + 4], esi
	mov	dword ptr [rax + rcx + 8], edi
	test	r10d, r10d
	jne	.label_899
	cmp	esi, 1
	sbb	r10d, r10d
	or	r10d, esi
	and	r10d, edi
.label_899:
	inc	r9
	mov	dword ptr [rax + rcx + 0xc], r10d
	mov	dl, byte ptr [r14]
	mov	ecx, edx
	add	cl, 0xd5
	movzx	ecx, cl
	cmp	cl, 0x12
	ja	.label_882
	jmp	qword ptr [(rcx * 8) + label_887]
.label_882:
	test	dl, dl
	jne	.label_880
	shl	r9, 4
	mov	byte ptr [rax + r9 + 1], 0
	jmp	.label_879
.label_880:
	mov	rdi, rax
	call	free
	xor	eax, eax
.label_879:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_885:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4090cc
	.globl sub_4090cc
	.type sub_4090cc, @function
sub_4090cc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4090d0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4090de
	.globl sub_4090de
	.type sub_4090de, @function
sub_4090de:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4090e0

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
	js	.label_905
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_908
	cmp	r12d, 0x7fffffff
	je	.label_910
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
	jne	.label_906
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_906:
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
.label_908:
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
	jbe	.label_911
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_907
.label_911:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_909
	mov	rdi, r14
	call	free
.label_909:
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
.label_907:
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
.label_905:
	call	abort
.label_910:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40929d
	.globl sub_40929d
	.type sub_40929d, @function
sub_40929d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4092a0
	.globl hash_do_for_each
	.type hash_do_for_each, @function
hash_do_for_each:

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
	mov	r13, qword ptr [r12]
	mov	rax, qword ptr [r12 + 8]
	xor	ebx, ebx
	cmp	r13, rax
	jae	.label_912
	xor	ebx, ebx
.label_916:
	mov	rdi, qword ptr [r13]
	test	rdi, rdi
	je	.label_914
	test	r13, r13
	je	.label_914
	mov	rsi, r14
	call	r15
	test	al, al
	je	.label_912
	mov	rbp, r13
	nop	word ptr cs:[rax + rax]
.label_913:
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	je	.label_915
	inc	rbx
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	jne	.label_913
	jmp	.label_912
	.section	.text
	.align	16
	#Procedure 0x40930c
	.globl sub_40930c
	.type sub_40930c, @function
sub_40930c:

	nop	dword ptr [rax]
.label_915:
	mov	rax, qword ptr [r12 + 8]
	inc	rbx
.label_914:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_916
.label_912:
	mov	rax, rbx
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
	#Procedure 0x409333
	.globl sub_409333
	.type sub_409333, @function
sub_409333:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4093a5
	.globl sub_4093a5
	.type sub_4093a5, @function
sub_4093a5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4093b2
	.globl sub_4093b2
	.type sub_4093b2, @function
sub_4093b2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4093d6
	.globl sub_4093d6
	.type sub_4093d6, @function
sub_4093d6:

	nop	word ptr cs:[rax + rax]
