	.section	.text
	.align	32
	#Procedure 0x4014a9
	.globl sub_4014a9
	.type sub_4014a9, @function
sub_4014a9:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x4014aa
	.globl sub_4014aa
	.type sub_4014aa, @function
sub_4014aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4014e2
	.globl sub_4014e2
	.type sub_4014e2, @function
sub_4014e2:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40152a
	.globl sub_40152a
	.type sub_40152a, @function
sub_40152a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40154c
	.globl sub_40154c
	.type sub_40154c, @function
sub_40154c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40155d
	.globl sub_40155d
	.type sub_40155d, @function
sub_40155d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401576
	.globl sub_401576
	.type sub_401576, @function
sub_401576:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401580
	.globl make_timespec
	.type make_timespec, @function
make_timespec:

	mov	rax, rdi
	mov	rdx, rsi
	ret	
	.section	.text
	.align	32
	#Procedure 0x401587
	.globl sub_401587
	.type sub_401587, @function
sub_401587:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401590

	.globl expr
	.type expr, @function
expr:
	mov	eax,  dword ptr [dword ptr [rip + pos]]
	cmp	eax,  dword ptr [dword ptr [rip + argc]]
	jge	.label_9
	jmp	or
.label_9:
	push	rax
	call	beyond
	.section	.text
	.align	32
	#Procedure 0x4015a9
	.globl sub_4015a9
	.type sub_4015a9, @function
sub_4015a9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4015b0

	.globl get_stat_atime
	.type get_stat_atime, @function
get_stat_atime:
	mov	rax, qword ptr [rdi + 0x48]
	mov	rdx, qword ptr [rdi + 0x50]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4015b9
	.globl sub_4015b9
	.type sub_4015b9, @function
sub_4015b9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4015c0
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_10
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_10:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x4015de
	.globl sub_4015de
	.type sub_4015de, @function
sub_4015de:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4015e0

	.globl term
	.type term, @function
term:
	push	rbp
	push	r14
	push	rbx
	mov	eax,  dword ptr [dword ptr [rip + pos]]
	cmp	eax,  dword ptr [dword ptr [rip + argc]]
	jge	.label_30
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_20:
	cdqe	
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	byte ptr [rax], 0x21
	jne	.label_11
	cmp	byte ptr [rax + 1], 0
	jne	.label_11
	mov	edi, 1
	call	advance
	xor	bpl, 1
	mov	eax,  dword ptr [dword ptr [rip + pos]]
	cmp	eax,  dword ptr [dword ptr [rip + argc]]
	jl	.label_20
	jmp	.label_11
.label_30:
	xor	ebp, ebp
.label_11:
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	cmp	eax,  dword ptr [dword ptr [rip + argc]]
	jge	.label_28
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	byte ptr [rax], 0x28
	jne	.label_26
	cmp	byte ptr [rax + 1], 0
	je	.label_29
.label_26:
	mov	ecx,  dword ptr [dword ptr [rip + argc]]
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	sub	ecx, eax
	cmp	ecx, 4
	jl	.label_14
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	byte ptr [rax], 0x2d
	jne	.label_14
	cmp	byte ptr [rax + 1], 0x6c
	jne	.label_14
	cmp	byte ptr [rax + 2], 0
	jne	.label_14
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rcx + rax*8 + 0x10]
	call	binop
	test	al, al
	je	.label_14
	mov	edi, 1
	jmp	.label_22
.label_14:
	mov	ecx,  dword ptr [dword ptr [rip + argc]]
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	sub	ecx, eax
	cmp	ecx, 3
	jl	.label_24
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rcx + rax*8 + 8]
	call	binop
	test	al, al
	je	.label_24
	xor	edi, edi
.label_22:
	call	binary_operator
	movzx	ebx, al
	jmp	.label_19
.label_24:
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	byte ptr [rax], 0x2d
	jne	.label_13
	cmp	byte ptr [rax + 1], 0
	je	.label_13
	cmp	byte ptr [rax + 2], 0
	je	.label_16
.label_13:
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rcx + rax*8]
	xor	ebx, ebx
	cmp	byte ptr [rax], 0
	setne	bl
	jmp	.label_18
.label_29:
	mov	ebx, 1
	mov	edi, 1
	call	advance
	mov	edi,  dword ptr [dword ptr [rip + pos]]
	inc	edi
	cmp	edi,  dword ptr [dword ptr [rip + argc]]
	jge	.label_17
	mov	rax,  qword ptr [word ptr [rip + argv]]
	mov	ecx,  dword ptr [dword ptr [rip + pos]]
	mov	esi, 1
	mov	edx,  dword ptr [dword ptr [rip + argc]]
	nop	dword ptr [rax]
.label_21:
	movsxd	rdi, edi
	mov	rdi, qword ptr [rax + rdi*8]
	cmp	byte ptr [rdi], 0x29
	jne	.label_31
	cmp	byte ptr [rdi + 1], 0
	je	.label_33
.label_31:
	cmp	esi, 4
	je	.label_12
	lea	ebx, [rsi + 1]
	lea	edi, [rcx + rsi + 1]
	cmp	edi, edx
	mov	esi, ebx
	jl	.label_21
	jmp	.label_17
.label_16:
	call	unary_operator
	movzx	ebx, al
	jmp	.label_19
.label_12:
	mov	ebx,  dword ptr [dword ptr [rip + argc]]
	sub	ebx,  dword ptr [dword ptr [rip + pos]]
	jmp	.label_17
.label_33:
	mov	ebx, esi
.label_17:
	mov	edi, ebx
	call	posixtest
	movsxd	rcx,  dword ptr [dword ptr [rip + pos]]
	mov	rdx,  qword ptr [word ptr [rip + argv]]
	mov	rcx, qword ptr [rdx + rcx*8]
	test	rcx, rcx
	je	.label_23
	cmp	byte ptr [rcx], 0x29
	jne	.label_27
	cmp	byte ptr [rcx + 1], 0
	jne	.label_27
	movzx	ebx, al
.label_18:
	xor	edi, edi
	call	advance
.label_19:
	and	bpl, 1
	movzx	eax, bpl
	cmp	eax, ebx
	setne	al
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_28:
	call	beyond
.label_27:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_32
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_15
	call	quote_n
	mov	rbx, rax
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rsi, qword ptr [rcx + rax*8]
	mov	edi, 1
	call	quote_n
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, r14
	mov	rsi, rbx
	mov	rdx, rcx
	call	test_syntax_error
.label_23:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_25
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, OFFSET FLAT:label_15
	call	quote
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rbx
	mov	rsi, rcx
	call	test_syntax_error
	.section	.text
	.align	32
	#Procedure 0x40187a
	.globl sub_40187a
	.type sub_40187a, @function
sub_40187a:

	nop	word ptr [rax + rax]
.label_34:
	xor	edi, edi
	call	advance
	call	and
	or	bl, al
.label_36:
	mov	eax,  dword ptr [dword ptr [rip + pos]]
	cmp	eax,  dword ptr [dword ptr [rip + argc]]
	jge	.label_35
	cdqe	
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	byte ptr [rax], 0x2d
	jne	.label_35
	cmp	byte ptr [rax + 1], 0x6f
	jne	.label_35
	cmp	byte ptr [rax + 2], 0
	je	.label_34
.label_35:
	and	bl, 1
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4018c1
	.globl sub_4018c1
	.type sub_4018c1, @function
sub_4018c1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4018d0

	.globl or
	.type or, @function
or:
	push	rbx
	call	and
	mov	ebx, eax
	jmp	.label_36
	.section	.text
	.align	32
	#Procedure 0x4018da
	.globl sub_4018da
	.type sub_4018da, @function
sub_4018da:

	nop	word ptr [rax + rax]
.label_38:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_37
	test	cl, cl
	jne	.label_37
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_37:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40190b
	.globl sub_40190b
	.type sub_40190b, @function
sub_40190b:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401915

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
	je	.label_38
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_37
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_37
.label_41:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_39
.label_40:
	mov	eax, 1
	test	bpl, bpl
	je	.label_39
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
.label_39:
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
	#Procedure 0x401998
	.globl sub_401998
	.type sub_401998, @function
sub_401998:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40199b

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
	je	.label_41
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_40
	jmp	.label_39
	.section	.text
	.align	32
	#Procedure 0x4019d0
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_42
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
.label_42:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x4019e8
	.globl sub_4019e8
	.type sub_4019e8, @function
sub_4019e8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4019f0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	32
	#Procedure 0x4019f5
	.globl sub_4019f5
	.type sub_4019f5, @function
sub_4019f5:

	nop	word ptr cs:[rax + rax]
.label_46:
	inc	rdi
.label_49:
	movzx	edx, byte ptr [rcx + rdi*2]
	cmp	dl, 0x25
	jne	.label_43
	cmp	byte ptr [rcx + rdi*2 + 1], 0x73
	je	.label_46
	jmp	.label_45
	.section	.text
	.align	32
	#Procedure 0x401a15

	.globl xvasprintf
	.type xvasprintf, @function
xvasprintf:
	push	rax
	mov	rax, rsi
	mov	rcx, rdi
	xor	edi, edi
	jmp	.label_49
	.section	.text
	.align	32
	#Procedure 0x401a20
	.globl sub_401a20
	.type sub_401a20, @function
sub_401a20:

	nop	dword ptr [rax + rax]
.label_43:
	test	dl, dl
	jne	.label_45
	mov	rsi, rax
	call	xstrcat
	pop	rcx
	ret	
.label_44:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401a38
	.globl sub_401a38
	.type sub_401a38, @function
sub_401a38:

	nop	word ptr [rax + rax]
.label_45:
	lea	rdi, [rsp]
	mov	esi, 1
	mov	rdx, rcx
	mov	rcx, rax
	call	__vasprintf_chk
	test	eax, eax
	js	.label_47
	mov	rax, qword ptr [rsp]
	jmp	.label_48
.label_47:
	call	__errno_location
	mov	rcx, rax
	xor	eax, eax
	cmp	dword ptr [rcx], 0xc
	je	.label_44
.label_48:
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401a70
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_50
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_50:
	push	rax
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401a93
	.globl sub_401a93
	.type sub_401a93, @function
sub_401a93:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401aa0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_51
	test	rax, rax
	je	.label_52
.label_51:
	pop	rbx
	ret	
.label_52:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401aba
	.globl sub_401aba
	.type sub_401aba, @function
sub_401aba:

	nop	word ptr [rax + rax]
.label_53:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401ac5
	.globl sub_401ac5
	.type sub_401ac5, @function
sub_401ac5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ad3

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
	je	.label_53
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
	.section	.text
	.align	32
	#Procedure 0x401b20

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_55
	cmp	byte ptr [rax], 0x43
	jne	.label_57
	cmp	byte ptr [rax + 1], 0
	je	.label_54
.label_57:
	mov	esi, OFFSET FLAT:label_56
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_55
.label_54:
	xor	ebx, ebx
.label_55:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401b51
	.globl sub_401b51
	.type sub_401b51, @function
sub_401b51:

	nop	word ptr cs:[rax + rax]
.label_62:
	test	rcx, rcx
	jne	.label_58
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_58:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_59
.label_61:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_59:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401ba7
	.globl sub_401ba7
	.type sub_401ba7, @function
sub_401ba7:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401bae

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_62
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_60
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_61
.label_60:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401be0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_63
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_64
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401c10
	.globl get_stat_mtime_ns
	.type get_stat_mtime_ns, @function
get_stat_mtime_ns:

	mov	rax, qword ptr [rdi + 0x60]
	ret	
	.section	.text
	.align	32
	#Procedure 0x401c15
	.globl sub_401c15
	.type sub_401c15, @function
sub_401c15:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c20

	.globl get_mtime
	.type get_mtime, @function
get_mtime:
	push	rbp
	push	rbx
	sub	rsp, 0x98
	mov	rbx, rsi
	lea	rsi, [rsp + 8]
	call	stat
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_65
	lea	rdi, [rsp + 8]
	call	get_stat_mtime
	mov	qword ptr [rbx], rax
	mov	qword ptr [rbx + 8], rdx
.label_65:
	test	ebp, ebp
	sete	al
	add	rsp, 0x98
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401c5c
	.globl sub_401c5c
	.type sub_401c5c, @function
sub_401c5c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401c60

	.globl and
	.type and, @function
and:
	push	rbx
	call	term
	mov	ebx, eax
	jmp	.label_68
	.section	.text
	.align	32
	#Procedure 0x401c6a
	.globl sub_401c6a
	.type sub_401c6a, @function
sub_401c6a:

	nop	word ptr [rax + rax]
.label_66:
	xor	edi, edi
	call	advance
	call	term
	and	bl, al
.label_68:
	mov	eax,  dword ptr [dword ptr [rip + pos]]
	cmp	eax,  dword ptr [dword ptr [rip + argc]]
	jge	.label_67
	cdqe	
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	byte ptr [rax], 0x2d
	jne	.label_67
	cmp	byte ptr [rax + 1], 0x61
	jne	.label_67
	cmp	byte ptr [rax + 2], 0
	je	.label_66
.label_67:
	test	bl, bl
	setne	al
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401cb1
	.globl sub_401cb1
	.type sub_401cb1, @function
sub_401cb1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401cc0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x401cc8
	.globl sub_401cc8
	.type sub_401cc8, @function
sub_401cc8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401cd0

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	word ptr cs:[rax + rax]
.label_69:
	mov	rax, rcx
	mul	r8
	shr	rdx, 3
	lea	eax, [rdx + rdx]
	lea	eax, [rax + rax*4]
	mov	edi, ecx
	sub	edi, eax
	or	edi, 0x30
	mov	byte ptr [rsi - 1], dil
	dec	rsi
	cmp	rcx, 9
	mov	rcx, rdx
	ja	.label_69
	mov	rax, rsi
	ret	
	.section	.text
	.align	32
	#Procedure 0x401d1b
	.globl sub_401d1b
	.type sub_401d1b, @function
sub_401d1b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d20

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	mov	eax, edi
	ret	
	.section	.text
	.align	32
	#Procedure 0x401d23
	.globl sub_401d23
	.type sub_401d23, @function
sub_401d23:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d30
	.globl stat_time_normalize
	.type stat_time_normalize, @function
stat_time_normalize:

	mov	eax, edi
	ret	
	.section	.text
	.align	32
	#Procedure 0x401d33
	.globl sub_401d33
	.type sub_401d33, @function
sub_401d33:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d40

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_73
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_70
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_70
.label_73:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_74
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_74:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_71:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_72
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_70:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_75
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_71
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_64
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x401e00

	.globl binary_operator
	.type binary_operator, @function
binary_operator:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x120
	mov	ebx, edi
	test	bl, bl
	je	.label_76
	xor	edi, edi
	call	advance
.label_76:
	movsxd	rbp,  dword ptr [dword ptr [rip + pos]]
	lea	eax, [rbp + 1]
	mov	ecx,  dword ptr [dword ptr [rip + argc]]
	add	ecx, -2
	cmp	eax, ecx
	jge	.label_79
	mov	rax,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rax + rbp*8 + 0x10]
	cmp	byte ptr [rax], 0x2d
	jne	.label_79
	cmp	byte ptr [rax + 1], 0x6c
	jne	.label_79
	cmp	byte ptr [rax + 2], 0
	je	.label_102
.label_79:
	xor	r14d, r14d
.label_83:
	mov	rax,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rax + rbp*8 + 8]
	mov	cl, byte ptr [rax]
	cmp	cl, 0x3d
	je	.label_104
	cmp	cl, 0x2d
	jne	.label_88
	mov	al, byte ptr [rax + 1]
	cmp	al, 0x6c
	je	.label_105
	cmp	al, 0x67
	jne	.label_92
.label_105:
	mov	rax,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rax + rbp*8 + 8]
	mov	al, byte ptr [rax + 2]
	cmp	al, 0x65
	je	.label_93
	cmp	al, 0x74
	je	.label_93
.label_92:
	mov	rax,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rax + rbp*8 + 8]
	cmp	byte ptr [rax + 1], 0x65
	jne	.label_94
	cmp	byte ptr [rax + 2], 0x71
	je	.label_93
.label_94:
	mov	rax,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rax + rbp*8 + 8]
	cmp	byte ptr [rax + 1], 0x6e
	jne	.label_103
	cmp	byte ptr [rax + 2], 0x65
	jne	.label_103
.label_93:
	mov	rax,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rax + rbp*8 + 8]
	cmp	byte ptr [rax + 3], 0
	je	.label_108
.label_103:
	mov	rax,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rax + rbp*8 + 8]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x65
	je	.label_109
	cmp	ecx, 0x6f
	je	.label_111
	cmp	ecx, 0x6e
	jne	.label_77
	cmp	byte ptr [rax + 2], 0x74
	jne	.label_77
	cmp	byte ptr [rax + 3], 0
	jne	.label_77
	add	dword ptr [dword ptr [rip + pos]],  3
	or	r14b, bl
	cmp	r14b, 1
	je	.label_80
	mov	rax,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rax + rbp*8]
	lea	rsi, [rsp + 0x90]
	call	get_mtime
	mov	bl, al
	mov	rax,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rax + rbp*8 + 0x10]
	lea	rsi, [rsp]
	call	get_mtime
	test	bl, bl
	je	.label_78
	test	al, al
	je	.label_78
	mov	rdi, qword ptr [rsp + 0x90]
	mov	rsi, qword ptr [rsp + 0x98]
	mov	rdx, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	call	timespec_cmp
	test	eax, eax
	setg	bl
	jmp	.label_78
.label_104:
	mov	cl, byte ptr [rax + 1]
	test	cl, cl
	je	.label_100
	cmp	cl, 0x3d
	jne	.label_88
	cmp	byte ptr [rax + 2], 0
	je	.label_100
.label_88:
	mov	rax,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rax + rbp*8 + 8]
	cmp	byte ptr [rax], 0x21
	jne	.label_107
	cmp	byte ptr [rax + 1], 0x3d
	jne	.label_107
	cmp	byte ptr [rax + 2], 0
	jne	.label_107
	movsxd	rbp,  dword ptr [dword ptr [rip + pos]]
	mov	rax,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rax + rbp*8]
	mov	rsi, qword ptr [rax + rbp*8 + 0x10]
	call	strcmp
	test	eax, eax
	setne	bl
	jmp	.label_110
.label_100:
	movsxd	rbp,  dword ptr [dword ptr [rip + pos]]
	mov	rax,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rax + rbp*8]
	mov	rsi, qword ptr [rax + rbp*8 + 0x10]
	call	strcmp
	test	eax, eax
	sete	bl
.label_110:
	lea	eax, [rbp + 3]
	mov	dword ptr [dword ptr [rip + pos]],  eax
.label_78:
	mov	eax, ebx
	add	rsp, 0x120
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_108:
	mov	rax,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rax + rbp*8]
	test	bl, bl
	je	.label_82
	call	strlen
	lea	rsi, [rsp + 0x90]
	mov	rdi, rax
	call	umaxtostr
	jmp	.label_86
.label_109:
	cmp	byte ptr [rax + 2], 0x66
	jne	.label_77
	cmp	byte ptr [rax + 3], 0
	jne	.label_77
	add	dword ptr [dword ptr [rip + pos]],  3
	or	r14b, bl
	cmp	r14b, 1
	je	.label_90
	mov	rax,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rax + rbp*8]
	lea	rsi, [rsp + 0x90]
	call	stat
	test	eax, eax
	je	.label_101
	xor	ebx, ebx
	jmp	.label_78
.label_111:
	cmp	byte ptr [rax + 2], 0x74
	jne	.label_77
	cmp	byte ptr [rax + 3], 0
	jne	.label_77
	add	dword ptr [dword ptr [rip + pos]],  3
	or	r14b, bl
	cmp	r14b, 1
	je	.label_106
	mov	rax,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rax + rbp*8]
	lea	rsi, [rsp + 0x90]
	call	get_mtime
	mov	r14d, eax
	mov	rax,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rax + rbp*8 + 0x10]
	lea	rsi, [rsp]
	call	get_mtime
	mov	bl, al
	test	r14b, r14b
	je	.label_78
	test	bl, bl
	je	.label_78
	mov	rdi, qword ptr [rsp + 0x90]
	mov	rsi, qword ptr [rsp + 0x98]
	mov	rdx, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	call	timespec_cmp
	mov	ebx, eax
	shr	ebx, 0x1f
	jmp	.label_78
.label_102:
	xor	edi, edi
	call	advance
	mov	r14b, 1
	jmp	.label_83
.label_82:
	call	find_int
.label_86:
	mov	rbx, rax
	test	r14b, r14b
	je	.label_85
	mov	rax,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rax + rbp*8 + 0x18]
	call	strlen
	lea	rsi, [rsp]
	mov	rdi, rax
	call	umaxtostr
	jmp	.label_91
.label_85:
	mov	rax,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rax + rbp*8 + 0x10]
	call	find_int
.label_91:
	mov	rsi, rax
	mov	rdi, rbx
	call	strintcmp
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rcx, qword ptr [rcx + rbp*8 + 8]
	mov	cl, byte ptr [rcx + 2]
	add	dword ptr [dword ptr [rip + pos]],  3
	mov	rdx,  qword ptr [word ptr [rip + argv]]
	mov	rdx, qword ptr [rdx + rbp*8 + 8]
	mov	dl, byte ptr [rdx + 1]
	cmp	dl, 0x67
	je	.label_98
	cmp	dl, 0x6c
	jne	.label_87
	xor	edx, edx
	cmp	cl, 0x65
	sete	dl
	cmp	eax, edx
	setl	bl
	jmp	.label_78
.label_101:
	mov	rax,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rax + rbp*8 + 0x10]
	lea	rsi, [rsp]
	call	stat
	test	eax, eax
	je	.label_89
	xor	ebx, ebx
	jmp	.label_78
.label_98:
	xor	edx, edx
	cmp	cl, 0x65
	mov	ecx, 0xffffffff
	cmovne	ecx, edx
	cmp	eax, ecx
	setg	bl
	jmp	.label_78
.label_87:
	cmp	cl, 0x65
	sete	cl
	test	eax, eax
	setne	bl
	xor	bl, cl
	xor	bl, 1
	jmp	.label_78
.label_89:
	mov	rax, qword ptr [rsp + 0x90]
	cmp	rax, qword ptr [rsp]
	jne	.label_81
	mov	rax, qword ptr [rsp + 0x98]
	cmp	rax, qword ptr [rsp + 8]
	sete	bl
	jmp	.label_78
.label_81:
	xor	ebx, ebx
	jmp	.label_78
.label_107:
	call	abort
.label_77:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_84
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rax,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rax + rbp*8 + 8]
	call	quote
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rbx
	mov	rsi, rcx
	call	test_syntax_error
.label_80:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_95
	jmp	.label_96
.label_90:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_97
	jmp	.label_96
.label_106:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_99
.label_96:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	xor	eax, eax
	mov	rdi, rcx
	call	test_syntax_error
	.section	.text
	.align	32
	#Procedure 0x4022b4
	.globl sub_4022b4
	.type sub_4022b4, @function
sub_4022b4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4022c0

	.globl xsum
	.type xsum, @function
xsum:
	add	rsi, rdi
	cmp	rsi, rdi
	mov	rax, -1
	cmovae	rax, rsi
	ret	
	.section	.text
	.align	32
	#Procedure 0x4022d2
	.globl sub_4022d2
	.type sub_4022d2, @function
sub_4022d2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4022e0
	.globl xsum3
	.type xsum3, @function
xsum3:

	push	rbx
	mov	rbx, rdx
	call	xsum
	mov	rdi, rax
	mov	rsi, rbx
	pop	rbx
	jmp	xsum
	.section	.text
	.align	32
	#Procedure 0x4022f2
	.globl sub_4022f2
	.type sub_4022f2, @function
sub_4022f2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402300
	.globl xsum4
	.type xsum4, @function
xsum4:

	push	r14
	push	rbx
	push	rax
	mov	r14, rcx
	mov	rbx, rdx
	call	xsum
	mov	rdi, rax
	mov	rsi, rbx
	call	xsum
	mov	rdi, rax
	mov	rsi, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	xsum
	.section	.text
	.align	32
	#Procedure 0x402329
	.globl sub_402329
	.type sub_402329, @function
sub_402329:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402330

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_121
	nop	
.label_120:
	mov	edi, OFFSET FLAT:label_112
	call	strcmp
	test	eax, eax
	je	.label_117
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_120
.label_117:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_112
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_122
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_115
	mov	ecx, OFFSET FLAT:label_116
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_113
	mov	esi, OFFSET FLAT:label_114
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_113
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_118
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_113:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_123
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_112
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_116
	mov	ecx, OFFSET FLAT:label_112
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_119
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_124
	mov	ecx, OFFSET FLAT:label_125
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
	#Procedure 0x40244a
	.globl sub_40244a
	.type sub_40244a, @function
sub_40244a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402450
	.globl get_stat_ctime
	.type get_stat_ctime, @function
get_stat_ctime:

	mov	rax, qword ptr [rdi + 0x68]
	mov	rdx, qword ptr [rdi + 0x70]
	ret	
	.section	.text
	.align	32
	#Procedure 0x402459
	.globl sub_402459
	.type sub_402459, @function
sub_402459:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402460

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40246a
	.globl sub_40246a
	.type sub_40246a, @function
sub_40246a:

	nop	word ptr [rax + rax]
.label_127:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_126
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x40247b
	.globl sub_40247b
	.type sub_40247b, @function
sub_40247b:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402485
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_127
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_127
.label_126:
	ret	
	.section	.text
	.align	32
	#Procedure 0x4024a0

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
	jne	.label_137
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
	je	.label_134
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_135
	mov	eax, OFFSET FLAT:label_136
	jmp	.label_132
.label_134:
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
	je	.label_133
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_130
	mov	eax, OFFSET FLAT:label_131
	jmp	.label_132
.label_133:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_128
	mov	eax, OFFSET FLAT:label_129
.label_132:
	cmove	rax, rcx
.label_137:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40255d
	.globl sub_40255d
	.type sub_40255d, @function
sub_40255d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402560
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_138
.label_139:
	ret	
.label_138:
	cmp	edi, 0x7f
	je	.label_139
	xor	eax, eax
	jmp	.label_139
	.section	.text
	.align	32
	#Procedure 0x402571
	.globl sub_402571
	.type sub_402571, @function
sub_402571:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402580

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
	#Procedure 0x4025b7
	.globl sub_4025b7
	.type sub_4025b7, @function
sub_4025b7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4025c0
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x4025ca
	.globl sub_4025ca
	.type sub_4025ca, @function
sub_4025ca:

	nop	word ptr [rax + rax]
.label_140:
	xor	edi, edi
	call	advance
	call	one_argument
	xor	al, 1
	pop	rcx
	ret	
.label_141:
	call	beyond
	.section	.text
	.align	32
	#Procedure 0x4025e5
	.globl sub_4025e5
	.type sub_4025e5, @function
sub_4025e5:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4025e8

	.globl two_arguments
	.type two_arguments, @function
two_arguments:
	push	rax
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	byte ptr [rax], 0x21
	jne	.label_142
	cmp	byte ptr [rax + 1], 0
	je	.label_140
.label_142:
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	byte ptr [rax], 0x2d
	jne	.label_141
	cmp	byte ptr [rax + 1], 0
	je	.label_141
	cmp	byte ptr [rax + 2], 0
	jne	.label_141
	call	unary_operator
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402630
	.globl get_stat_atime_ns
	.type get_stat_atime_ns, @function
get_stat_atime_ns:

	mov	rax, qword ptr [rdi + 0x50]
	ret	
	.section	.text
	.align	32
	#Procedure 0x402635
	.globl sub_402635
	.type sub_402635, @function
sub_402635:

	nop	word ptr cs:[rax + rax]
.label_143:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402646
	.globl sub_402646
	.type sub_402646, @function
sub_402646:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40264b

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_143
	test	rdx, rdx
	je	.label_143
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402670

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	32
	#Procedure 0x402679
	.globl sub_402679
	.type sub_402679, @function
sub_402679:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402680

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
	mov	rax,  qword ptr [word ptr [rip + label_144]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_145]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_146]]
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
	#Procedure 0x4026e8
	.globl sub_4026e8
	.type sub_4026e8, @function
sub_4026e8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4026f0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_147
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_150:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_150
.label_147:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_151
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_148]], OFFSET FLAT:slot0
.label_151:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_149
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_149:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x402781
	.globl sub_402781
	.type sub_402781, @function
sub_402781:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402790
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
	#Procedure 0x4027a6
	.globl sub_4027a6
	.type sub_4027a6, @function
sub_4027a6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4027b0
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x4027ba
	.globl sub_4027ba
	.type sub_4027ba, @function
sub_4027ba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4027c0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	32
	#Procedure 0x4027ca
	.globl sub_4027ca
	.type sub_4027ca, @function
sub_4027ca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4027d0

	.globl unary_operator
	.type unary_operator, @function
unary_operator:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x90
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rcx + rax*8]
	movsx	eax, byte ptr [rax + 1]
	add	eax, -0x47
	cmp	eax, 0x33
	ja	.label_168
	jmp	qword ptr [word ptr [+ (rax * 8) + label_153]]
.label_497:
	call	unary_advance
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rcx + rax*8 - 8]
	lea	rsi, [rsp]
	call	lstat
	test	eax, eax
	je	.label_171
	xor	ebx, ebx
	jmp	.label_152
.label_496:
	call	unary_advance
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rcx + rax*8 - 8]
	lea	rsi, [rsp]
	call	stat
	test	eax, eax
	je	.label_160
	xor	ebx, ebx
	jmp	.label_152
.label_498:
	call	unary_advance
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rcx + rax*8 - 8]
	lea	rsi, [rsp]
	call	stat
	test	eax, eax
	je	.label_165
	xor	ebx, ebx
	jmp	.label_152
.label_499:
	call	unary_advance
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rcx + rax*8 - 8]
	lea	rsi, [rsp]
	call	stat
	test	eax, eax
	je	.label_166
	xor	ebx, ebx
	jmp	.label_152
.label_500:
	call	unary_advance
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rcx + rax*8 - 8]
	lea	rsi, [rsp]
	call	stat
	test	eax, eax
	je	.label_170
	xor	ebx, ebx
	jmp	.label_152
.label_501:
	call	unary_advance
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rcx + rax*8 - 8]
	lea	rsi, [rsp]
	call	stat
	test	eax, eax
	je	.label_155
	xor	ebx, ebx
	jmp	.label_152
.label_502:
	call	unary_advance
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rcx + rax*8 - 8]
	lea	rsi, [rsp]
	call	stat
	test	eax, eax
	je	.label_159
	xor	ebx, ebx
	jmp	.label_152
.label_503:
	call	unary_advance
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rcx + rax*8 - 8]
	lea	rsi, [rsp]
	call	stat
	test	eax, eax
	je	.label_163
	xor	ebx, ebx
	jmp	.label_152
.label_504:
	call	unary_advance
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rcx + rax*8 - 8]
	lea	rsi, [rsp]
	call	stat
	test	eax, eax
	jmp	.label_154
.label_505:
	call	unary_advance
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rcx + rax*8 - 8]
	lea	rsi, [rsp]
	call	stat
	test	eax, eax
	je	.label_167
	xor	ebx, ebx
	jmp	.label_152
.label_506:
	call	unary_advance
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rcx + rax*8 - 8]
	lea	rsi, [rsp]
	call	stat
	test	eax, eax
	je	.label_172
	xor	ebx, ebx
	jmp	.label_152
.label_507:
	call	unary_advance
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rcx + rax*8 - 8]
	lea	rsi, [rsp]
	call	stat
	test	eax, eax
	je	.label_158
	xor	ebx, ebx
	jmp	.label_152
.label_508:
	call	unary_advance
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rcx + rax*8 - 8]
	cmp	byte ptr [rax], 0
	setne	bl
	jmp	.label_152
.label_509:
	call	unary_advance
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rcx + rax*8 - 8]
	lea	rsi, [rsp]
	call	stat
	test	eax, eax
	je	.label_164
	xor	ebx, ebx
	jmp	.label_152
.label_510:
	call	unary_advance
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rcx + rax*8 - 8]
	mov	esi, 4
	jmp	.label_156
.label_511:
	call	unary_advance
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rcx + rax*8 - 8]
	lea	rsi, [rsp]
	call	stat
	test	eax, eax
	sete	al
	cmp	qword ptr [rsp + 0x30], 0
	setg	bl
	and	bl, al
	jmp	.label_152
.label_512:
	call	unary_advance
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rcx + rax*8 - 8]
	call	find_int
	mov	r15, rax
	call	__errno_location
	mov	r14, rax
	mov	dword ptr [r14], 0
	xor	ebx, ebx
	xor	esi, esi
	mov	edx, 0xa
	mov	rdi, r15
	call	strtol
	cmp	rax, 0x7fffffff
	ja	.label_152
	cmp	dword ptr [r14], 0x22
	je	.label_152
	mov	edi, eax
	call	isatty
	test	eax, eax
	setne	bl
	jmp	.label_152
.label_513:
	call	unary_advance
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rcx + rax*8 - 8]
	lea	rsi, [rsp]
	call	stat
	test	eax, eax
	je	.label_162
	xor	ebx, ebx
	jmp	.label_152
.label_514:
	call	unary_advance
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rcx + rax*8 - 8]
	mov	esi, 2
	jmp	.label_156
.label_515:
	call	unary_advance
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rcx + rax*8 - 8]
	mov	esi, 1
.label_156:
	call	euidaccess
	test	eax, eax
	jmp	.label_154
.label_516:
	call	unary_advance
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rcx + rax*8 - 8]
	cmp	byte ptr [rax], 0
	jmp	.label_154
.label_171:
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x18]
	cmp	eax, 0xa000
	jmp	.label_154
.label_160:
	call	__errno_location
	mov	rbx, rax
	mov	dword ptr [rbx], 0
	call	getegid
	cmp	eax, -1
	jne	.label_157
	cmp	dword ptr [rbx], 0
	je	.label_157
	xor	ebx, ebx
	jmp	.label_152
.label_165:
	lea	r14, [rsp]
	mov	rdi, r14
	call	get_stat_atime
	mov	rbx, rax
	mov	r15, rdx
	mov	rdi, r14
	call	get_stat_mtime
	mov	rdi, rax
	mov	rsi, rdx
	mov	rdx, rbx
	mov	rcx, r15
	call	timespec_cmp
	test	eax, eax
	setg	bl
	jmp	.label_152
.label_166:
	call	__errno_location
	mov	rbx, rax
	mov	dword ptr [rbx], 0
	call	geteuid
	cmp	eax, -1
	jne	.label_161
	cmp	dword ptr [rbx], 0
	je	.label_161
	xor	ebx, ebx
	jmp	.label_152
.label_170:
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x18]
	cmp	eax, 0xc000
	jmp	.label_154
.label_155:
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x18]
	cmp	eax, 0x6000
	jmp	.label_154
.label_159:
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x18]
	cmp	eax, 0x2000
	jmp	.label_154
.label_163:
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x18]
	cmp	eax, 0x4000
	jmp	.label_154
.label_167:
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x18]
	cmp	eax, 0x8000
	jmp	.label_154
.label_172:
	mov	bl, byte ptr [rsp + 0x19]
	and	bl, 4
	shr	bl, 2
	jmp	.label_152
.label_158:
	mov	bl, byte ptr [rsp + 0x19]
	and	bl, 2
	shr	bl, 1
	jmp	.label_152
.label_164:
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x18]
	cmp	eax, 0x1000
	jmp	.label_154
.label_162:
	mov	bl, byte ptr [rsp + 0x19]
	and	bl, 8
	shr	bl, 3
	jmp	.label_152
.label_157:
	cmp	eax, dword ptr [rsp + 0x20]
	jmp	.label_154
.label_161:
	cmp	eax, dword ptr [rsp + 0x1c]
.label_154:
	sete	bl
.label_152:
	mov	eax, ebx
	add	rsp, 0x90
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_168:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_169
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rcx + rax*8]
	call	quote
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rbx
	mov	rsi, rcx
	call	test_syntax_error
	.section	.text
	.align	32
	#Procedure 0x402d61
	.globl sub_402d61
	.type sub_402d61, @function
sub_402d61:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402d70
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
	#Procedure 0x402d7f
	.globl sub_402d7f
	.type sub_402d7f, @function
sub_402d7f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402d80
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_173
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_173:
	push	rax
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402da6
	.globl sub_402da6
	.type sub_402da6, @function
sub_402da6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402db0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_174
	test	rbx, rbx
	jne	.label_174
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_174:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_176
	test	rax, rax
	je	.label_175
.label_176:
	pop	rbx
	ret	
.label_175:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402de0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x402dea
	.globl sub_402dea
	.type sub_402dea, @function
sub_402dea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402df0
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
	#Procedure 0x402e00

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	32
	#Procedure 0x402e09
	.globl sub_402e09
	.type sub_402e09, @function
sub_402e09:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402e10

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	32
	#Procedure 0x402e1a
	.globl sub_402e1a
	.type sub_402e1a, @function
sub_402e1a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402e20

	.globl find_int
	.type find_int, @function
find_int:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rdi
	call	__ctype_b_loc
	mov	r15, rax
	mov	rbx, qword ptr [r15]
	lea	r12, [r14 - 1]
	nop	word ptr [rax + rax]
.label_178:
	movzx	ebp, byte ptr [r12 + 1]
	inc	r12
	movsx	edi, bpl
	call	to_uchar
	movzx	eax, al
	test	byte ptr [rbx + rax*2], 1
	jne	.label_178
	lea	rax, [r12 + 1]
	xor	ebx, ebx
	cmp	bpl, 0x2d
	sete	bl
	add	rbx, r12
	cmp	bpl, 0x2b
	cmove	rbx, rax
	cmove	r12, rax
	movsx	eax, byte ptr [rbx]
	add	eax, -0x30
	cmp	eax, 9
	ja	.label_177
	nop	word ptr cs:[rax + rax]
.label_179:
	movsx	eax, byte ptr [rbx + 1]
	inc	rbx
	add	eax, -0x30
	cmp	eax, 0xa
	jb	.label_179
	mov	rbp, qword ptr [r15]
	nop	word ptr cs:[rax + rax]
.label_181:
	movzx	r15d, byte ptr [rbx]
	movsx	edi, r15b
	call	to_uchar
	movzx	eax, al
	inc	rbx
	test	byte ptr [rbp + rax*2], 1
	jne	.label_181
	test	r15b, r15b
	jne	.label_177
	mov	rax, r12
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_177:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_180
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r14
	call	quote
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rbx
	mov	rsi, rcx
	call	test_syntax_error
	.section	.text
	.align	32
	#Procedure 0x402f07
	.globl sub_402f07
	.type sub_402f07, @function
sub_402f07:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402f10
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
	#Procedure 0x402f1d
	.globl sub_402f1d
	.type sub_402f1d, @function
sub_402f1d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402f20

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
	#Procedure 0x402f59
	.globl sub_402f59
	.type sub_402f59, @function
sub_402f59:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402f60
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
	#Procedure 0x402f71
	.globl sub_402f71
	.type sub_402f71, @function
sub_402f71:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402f80
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
	#Procedure 0x402f94
	.globl sub_402f94
	.type sub_402f94, @function
sub_402f94:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402fa0

	.globl test_syntax_error
	.type test_syntax_error, @function
test_syntax_error:
	sub	rsp, 0xd8
	mov	r10, rdi
	test	al, al
	je	.label_182
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_182:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	mov	qword ptr [rsp + 0x28], rsi
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 8
	lea	rcx, [rsp]
	xor	edi, edi
	xor	esi, esi
	mov	rdx, r10
	call	verror
	mov	edi, 2
	call	exit
	.section	.text
	.align	32
	#Procedure 0x40303e
	.globl sub_40303e
	.type sub_40303e, @function
sub_40303e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403040

	.globl unary_advance
	.type unary_advance, @function
unary_advance:
	push	rax
	mov	edi, 1
	call	advance
	inc	dword ptr [dword ptr [rip + pos]]
	pop	rax
	ret	
	.section	.text
	.align	32
	#Procedure 0x403053
	.globl sub_403053
	.type sub_403053, @function
sub_403053:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403060
	.globl xmax
	.type xmax, @function
xmax:

	cmp	rdi, rsi
	cmovae	rsi, rdi
	mov	rax, rsi
	ret	
	.section	.text
	.align	32
	#Procedure 0x40306b
	.globl sub_40306b
	.type sub_40306b, @function
sub_40306b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403070
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x403078
	.globl sub_403078
	.type sub_403078, @function
sub_403078:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403080

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
	je	.label_183
	cmp	r15, -2
	jb	.label_183
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_183
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_183:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4030d6
	.globl sub_4030d6
	.type sub_4030d6, @function
sub_4030d6:

	nop	word ptr cs:[rax + rax]
.label_185:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_184
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403100
	.globl sub_403100
	.type sub_403100, @function
sub_403100:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40310f

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_185
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_187
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_189
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_187
	mov	esi, OFFSET FLAT:label_188
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_186
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_186:
	mov	rbx, r14
.label_187:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x403190

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_190
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_190
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_190:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x4031b6
	.globl sub_4031b6
	.type sub_4031b6, @function
sub_4031b6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4031c0
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
	#Procedure 0x4031d9
	.globl sub_4031d9
	.type sub_4031d9, @function
sub_4031d9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4031e0
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
	#Procedure 0x403252
	.globl sub_403252
	.type sub_403252, @function
sub_403252:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403260

	.globl beyond
	.type beyond, @function
beyond:
	push	rbx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_191
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax,  dword ptr [dword ptr [rip + argc]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rcx + rax*8 - 8]
	call	quote
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rbx
	mov	rsi, rcx
	call	test_syntax_error
	.section	.text
	.align	32
	#Procedure 0x40329d
	.globl sub_40329d
	.type sub_40329d, @function
sub_40329d:

	nop	dword ptr [rax]
.label_192:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x4032a3
	.globl sub_4032a3
	.type sub_4032a3, @function
sub_4032a3:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4032a5
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_192
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	32
	#Procedure 0x4032c0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	32
	#Procedure 0x4032ca
	.globl sub_4032ca
	.type sub_4032ca, @function
sub_4032ca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4032d0
	.globl fraccompare
	.type fraccompare, @function
fraccompare:

	cmp	byte ptr [rdi], 0xff
	jne	.label_198
	cmp	byte ptr [rsi], 0xff
	je	.label_199
.label_198:
	cmp	byte ptr [rdi], 0xff
	je	.label_200
	xor	eax, eax
	cmp	byte ptr [rsi], 0xff
	jne	.label_196
	inc	rsi
	nop	dword ptr [rax]
.label_194:
	movsx	eax, byte ptr [rsi]
	inc	rsi
	cmp	eax, 0x30
	je	.label_194
	add	eax, -0x30
	cmp	eax, 0xa
	sbb	eax, eax
	jmp	.label_196
.label_199:
	inc	rdi
	inc	rsi
	nop	dword ptr [rax]
.label_201:
	movsx	eax, byte ptr [rdi]
	movsx	ecx, byte ptr [rsi]
	lea	edx, [rax - 0x30]
	cmp	al, cl
	jne	.label_197
	inc	rdi
	inc	rsi
	xor	eax, eax
	cmp	edx, 0xa
	jb	.label_201
.label_196:
	ret	
.label_200:
	inc	rdi
	nop	dword ptr [rax + rax]
.label_195:
	movsx	eax, byte ptr [rdi]
	inc	rdi
	cmp	eax, 0x30
	je	.label_195
	add	eax, -0x30
	cmp	eax, 0xa
	sbb	eax, eax
	and	eax, 1
	ret	
.label_197:
	cmp	edx, 9
	ja	.label_193
	lea	edx, [rcx - 0x30]
	cmp	edx, 9
	ja	.label_193
	sub	eax, ecx
	ret	
.label_193:
	movsx	eax, byte ptr [rdi]
	add	eax, -0x30
	cmp	eax, 0xa
	jb	.label_195
	movsx	ecx, byte ptr [rsi]
	add	ecx, -0x30
	xor	eax, eax
	cmp	ecx, 0xa
	jb	.label_194
	jmp	.label_196
	.section	.text
	.align	32
	#Procedure 0x403379
	.globl sub_403379
	.type sub_403379, @function
sub_403379:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403380
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
	#Procedure 0x40338f
	.globl sub_40338f
	.type sub_40338f, @function
sub_40338f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403390
	.globl get_stat_birthtime_ns
	.type get_stat_birthtime_ns, @function
get_stat_birthtime_ns:

	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x403393
	.globl sub_403393
	.type sub_403393, @function
sub_403393:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4033a0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_202
	test	rsi, rsi
	mov	ecx, 1
	je	.label_203
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_203
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_202:
	mov	ecx, 1
.label_203:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x4033eb
	.globl sub_4033eb
	.type sub_4033eb, @function
sub_4033eb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4033f0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_204
	ret	
.label_204:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	32
	#Procedure 0x403403
	.globl sub_403403
	.type sub_403403, @function
sub_403403:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403410

	.globl xstrcat
	.type xstrcat, @function
xstrcat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, rsi
	mov	r12, rdi
	mov	rax, qword ptr [r14 + 0x10]
	mov	qword ptr [rsp + 0x10], rax
	movups	xmm0, xmmword ptr [r14]
	movaps	xmmword ptr [rsp], xmm0
	test	r12, r12
	je	.label_214
	xor	ebx, ebx
	mov	rbp, r12
	nop	
.label_206:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_205
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_209
	.section	.text
	.align	32
	#Procedure 0x40345a
	.globl sub_40345a
	.type sub_40345a, @function
sub_40345a:

	nop	word ptr [rax + rax]
.label_205:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_209:
	mov	rdi, qword ptr [rax]
	call	strlen
	mov	rdi, rbx
	mov	rsi, rax
	call	xsum
	mov	rbx, rax
	dec	rbp
	jne	.label_206
	test	rbx, -0x80000000
	je	.label_208
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	xor	r15d, r15d
	jmp	.label_211
.label_214:
	mov	edi, 1
	call	xmalloc
	mov	r15, rax
	mov	rbx, r15
	jmp	.label_207
.label_208:
	inc	rbx
	mov	rdi, rbx
	call	xmalloc
	mov	r15, rax
	mov	rbx, r15
	test	r12, r12
	je	.label_207
	nop	dword ptr [rax]
.label_212:
	movsxd	rcx, dword ptr [r14]
	cmp	rcx, 0x28
	ja	.label_210
	mov	rax, rcx
	add	rax, qword ptr [r14 + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [r14], ecx
	jmp	.label_213
	.section	.text
	.align	32
	#Procedure 0x4034e8
	.globl sub_4034e8
	.type sub_4034e8, @function
sub_4034e8:

	nop	dword ptr [rax + rax]
.label_210:
	mov	rax, qword ptr [r14 + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [r14 + 8], rcx
.label_213:
	mov	r13, qword ptr [rax]
	mov	rdi, r13
	call	strlen
	mov	rbp, rax
	mov	rdi, rbx
	mov	rsi, r13
	mov	rdx, rbp
	call	memcpy
	add	rbx, rbp
	dec	r12
	jne	.label_212
.label_207:
	mov	byte ptr [rbx], 0
.label_211:
	mov	rax, r15
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
	#Procedure 0x403535
	.globl sub_403535
	.type sub_403535, @function
sub_403535:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403540
	.globl timespec_sign
	.type timespec_sign, @function
timespec_sign:

	xor	ecx, ecx
	or	rsi, rdi
	setne	cl
	test	rdi, rdi
	mov	eax, 0xffffffff
	cmovns	eax, ecx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403554
	.globl sub_403554
	.type sub_403554, @function
sub_403554:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403560

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40356e
	.globl sub_40356e
	.type sub_40356e, @function
sub_40356e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403570

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
	js	.label_218
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_221
	cmp	r12d, 0x7fffffff
	je	.label_216
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
	jne	.label_219
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_219:
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
.label_221:
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
	jbe	.label_217
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_220
.label_217:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_215
	mov	rdi, r14
	call	free
.label_215:
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
.label_220:
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
.label_218:
	call	abort
.label_216:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40372d
	.globl sub_40372d
	.type sub_40372d, @function
sub_40372d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403730

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
	#Procedure 0x40375d
	.globl sub_40375d
	.type sub_40375d, @function
sub_40375d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403760
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
	#Procedure 0x403773
	.globl sub_403773
	.type sub_403773, @function
sub_403773:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403780

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
	mov	rcx,  qword ptr [word ptr [rip + label_144]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_145]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_146]]
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
	#Procedure 0x4037ed
	.globl sub_4037ed
	.type sub_4037ed, @function
sub_4037ed:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4037f0

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	32
	#Procedure 0x4037fd
	.globl sub_4037fd
	.type sub_4037fd, @function
sub_4037fd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403800

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	32
	#Procedure 0x403807
	.globl sub_403807
	.type sub_403807, @function
sub_403807:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403810
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
	#Procedure 0x40381d
	.globl sub_40381d
	.type sub_40381d, @function
sub_40381d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403820
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
	#Procedure 0x403833
	.globl sub_403833
	.type sub_403833, @function
sub_403833:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403840

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
	#Procedure 0x403857
	.globl sub_403857
	.type sub_403857, @function
sub_403857:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403860

	.globl verror
	.type verror, @function
verror:
	mov	r9, rcx
	mov	rax, rdx
	xor	edx, edx
	xor	ecx, ecx
	mov	r8, rax
	jmp	verror_at_line
	.section	.text
	.align	32
	#Procedure 0x40386f
	.globl sub_40386f
	.type sub_40386f, @function
sub_40386f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403870

	.globl verror_at_line
	.type verror_at_line, @function
verror_at_line:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r15d, ecx
	mov	rbp, rdx
	mov	r14d, esi
	mov	r12d, edi
	mov	rdi, r8
	mov	rsi, r9
	call	xvasprintf
	mov	rbx, rax
	test	rbx, rbx
	je	.label_225
	test	rbp, rbp
	je	.label_223
	mov	r8d, OFFSET FLAT:label_64
	xor	eax, eax
	mov	edi, r12d
	mov	esi, r14d
	mov	rdx, rbp
	mov	ecx, r15d
	mov	r9, rbx
	call	error_at_line
	jmp	.label_224
.label_223:
	mov	edx, OFFSET FLAT:label_64
	xor	eax, eax
	mov	edi, r12d
	mov	esi, r14d
	mov	rcx, rbx
	call	error
.label_224:
	mov	rdi, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	jmp	free
.label_225:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_222
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40390d
	.globl sub_40390d
	.type sub_40390d, @function
sub_40390d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403910

	.globl posixtest
	.type posixtest, @function
posixtest:
	push	rbx
	lea	eax, [rdi - 1]
	cmp	eax, 3
	ja	.label_228
	jmp	qword ptr [word ptr [+ (rax * 8) + label_231]]
.label_474:
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	byte ptr [rax], 0x21
	jne	.label_232
	cmp	byte ptr [rax + 1], 0
	je	.label_233
.label_232:
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	byte ptr [rax], 0x28
	jne	.label_227
	cmp	byte ptr [rax + 1], 0
	jne	.label_227
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rcx + rax*8 + 0x18]
	cmp	byte ptr [rax], 0x29
	jne	.label_227
	cmp	byte ptr [rax + 1], 0
	jne	.label_227
	xor	edi, edi
	call	advance
	call	two_arguments
	mov	ebx, eax
	xor	edi, edi
	call	advance
	jmp	.label_229
.label_226:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403998
	.globl sub_403998
	.type sub_403998, @function
sub_403998:

	nop	word ptr cs:[rax + rax]
.label_233:
	mov	edi, 1
	call	advance
	call	three_arguments
	mov	ebx, eax
	xor	bl, 1
	jmp	.label_229
.label_472:
	call	two_arguments
	jmp	.label_230
.label_228:
	test	edi, edi
	jle	.label_226
.label_227:
	call	expr
.label_230:
	mov	ebx, eax
.label_229:
	mov	eax, ebx
	pop	rbx
	ret	
.label_473:
	call	three_arguments
	jmp	.label_230
.label_471:
	call	one_argument
	jmp	.label_230
	.section	.text
	.align	32
	#Procedure 0x4039e0
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
	#Procedure 0x403a07
	.globl sub_403a07
	.type sub_403a07, @function
sub_403a07:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403a10
	.globl get_stat_ctime_ns
	.type get_stat_ctime_ns, @function
get_stat_ctime_ns:

	mov	rax, qword ptr [rdi + 0x70]
	ret	
	.section	.text
	.align	32
	#Procedure 0x403a15
	.globl sub_403a15
	.type sub_403a15, @function
sub_403a15:

	nop	word ptr cs:[rax + rax]
.label_234:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x403a2e
	.globl sub_403a2e
	.type sub_403a2e, @function
sub_403a2e:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403a37

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_234
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_236
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_234
.label_236:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_234
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_235
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_235:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403aa0

	.globl main
	.type main, @function
main:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	ebx, edi
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_125
	call	setlocale
	mov	edi, OFFSET FLAT:label_237
	mov	esi, OFFSET FLAT:label_238
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_237
	call	textdomain
	call	initialize_exit_failure
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	qword ptr [word ptr [rip + argv]],  r14
	mov	dword ptr [dword ptr [rip + argc]],  ebx
	mov	dword ptr [dword ptr [rip + pos]],  1
	mov	eax, 1
	cmp	ebx, 2
	jl	.label_239
	dec	ebx
	mov	edi, ebx
	call	posixtest
	mov	ecx,  dword ptr [dword ptr [rip + pos]]
	cmp	ecx,  dword ptr [dword ptr [rip + argc]]
	jne	.label_241
	movzx	eax, al
	xor	eax, 1
.label_239:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_241:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_240
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rcx + rax*8]
	call	quote
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rbx
	mov	rsi, rcx
	call	test_syntax_error
	.section	.text
	.align	32
	#Procedure 0x403b69
	.globl sub_403b69
	.type sub_403b69, @function
sub_403b69:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403b70

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
	jne	.label_242
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_242
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_243
.label_242:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_243:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_244
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_244:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403bde
	.globl sub_403bde
	.type sub_403bde, @function
sub_403bde:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403be0
	.globl timespectod
	.type timespectod, @function
timespectod:

	cvtsi2sd	xmm1, rdi
	cvtsi2sd	xmm0, rsi
	divsd	xmm0,  qword ptr [word ptr [rip + label_245]]
	addsd	xmm0, xmm1
	ret	
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
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_246
	call	rpl_calloc
	test	rax, rax
	je	.label_246
	pop	rcx
	ret	
.label_246:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403c26
	.globl sub_403c26
	.type sub_403c26, @function
sub_403c26:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c30

	.globl initialize_exit_failure
	.type initialize_exit_failure, @function
initialize_exit_failure:
	mov	dword ptr [dword ptr [rip + exit_failure]],  2
	ret	
	.section	.text
	.align	32
	#Procedure 0x403c3b
	.globl sub_403c3b
	.type sub_403c3b, @function
sub_403c3b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c40

	.globl timespec_cmp
	.type timespec_cmp, @function
timespec_cmp:
	mov	eax, 0xffffffff
	cmp	rdi, rdx
	jl	.label_247
	mov	eax, 1
	jg	.label_247
	sub	esi, ecx
	mov	eax, esi
.label_247:
	ret	
	.section	.text
	.align	32
	#Procedure 0x403c56
	.globl sub_403c56
	.type sub_403c56, @function
sub_403c56:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c60

	.globl strintcmp
	.type strintcmp, @function
strintcmp:
	jmp	numcompare
	.section	.text
	.align	32
	#Procedure 0x403c62
	.globl sub_403c62
	.type sub_403c62, @function
sub_403c62:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c70

	.globl numcompare
	.type numcompare, @function
numcompare:
	mov	cl, byte ptr [rdi]
	mov	dl, byte ptr [rsi]
	cmp	cl, 0x2d
	jne	.label_250
	nop	dword ptr [rax]
.label_248:
	movzx	ecx, byte ptr [rdi + 1]
	inc	rdi
	cmp	ecx, 0x30
	je	.label_248
	cmp	dl, 0x2d
	jne	.label_251
	nop	word ptr cs:[rax + rax]
.label_266:
	movzx	r9d, byte ptr [rsi + 1]
	inc	rsi
	cmp	r9b, 0x30
	je	.label_266
	cmp	r9b, cl
	jne	.label_261
	lea	eax, [rcx - 0x30]
	cmp	eax, 9
	ja	.label_261
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_270:
	mov	cl, byte ptr [rdi + rax + 1]
	movzx	r9d, byte ptr [rsi + rax + 1]
	movzx	r8d, cl
	inc	rax
	cmp	r9b, r8b
	jne	.label_267
	lea	edx, [r8 - 0x30]
	cmp	edx, 0xa
	jb	.label_270
.label_267:
	add	rdi, rax
	add	rsi, rax
	jmp	.label_273
.label_250:
	cmp	dl, 0x2d
	jne	.label_278
	inc	rsi
	nop	word ptr cs:[rax + rax]
.label_254:
	movzx	edx, byte ptr [rsi]
	inc	rsi
	cmp	edx, 0x30
	je	.label_254
	add	edx, -0x30
	mov	eax, 1
	cmp	edx, 0xa
	jb	.label_257
	cmp	cl, 0x30
	jne	.label_260
	inc	rdi
	nop	word ptr cs:[rax + rax]
.label_265:
	movzx	ecx, byte ptr [rdi]
	inc	rdi
	cmp	cl, 0x30
	je	.label_265
.label_260:
	movzx	eax, cl
	add	eax, -0x30
	cmp	eax, 0xa
	sbb	eax, eax
	and	eax, 1
	ret	
	.section	.text
	.align	32
	#Procedure 0x403d5a
	.globl sub_403d5a
	.type sub_403d5a, @function
sub_403d5a:

	nop	word ptr [rax + rax]
.label_271:
	movzx	ecx, byte ptr [rdi + 1]
	inc	rdi
.label_278:
	cmp	cl, 0x30
	je	.label_271
	jmp	.label_272
	.section	.text
	.align	32
	#Procedure 0x403d6e
	.globl sub_403d6e
	.type sub_403d6e, @function
sub_403d6e:

	nop	
.label_275:
	movzx	edx, byte ptr [rsi + 1]
	inc	rsi
.label_272:
	cmp	dl, 0x30
	je	.label_275
	movzx	r8d, cl
	cmp	r8b, dl
	jne	.label_249
	lea	eax, [r8 - 0x30]
	cmp	eax, 9
	ja	.label_249
	nop	
.label_259:
	movzx	ecx, byte ptr [rdi + 1]
	inc	rdi
	movzx	edx, byte ptr [rsi + 1]
	inc	rsi
	movzx	r8d, cl
	cmp	r8b, dl
	jne	.label_249
	lea	eax, [r8 - 0x30]
	cmp	eax, 0xa
	jb	.label_259
.label_249:
	movzx	eax, dl
	movzx	edx, cl
	add	edx, -0x30
	xor	ecx, ecx
	cmp	edx, 9
	ja	.label_262
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_269:
	movzx	edx, byte ptr [rdi + rcx + 1]
	inc	rcx
	add	edx, -0x30
	cmp	edx, 0xa
	jb	.label_269
.label_262:
	lea	edi, [rax - 0x30]
	xor	edx, edx
	cmp	edi, 9
	ja	.label_256
	xor	edx, edx
	nop	dword ptr [rax]
.label_277:
	movzx	edi, byte ptr [rsi + rdx + 1]
	inc	rdx
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_277
.label_256:
	cmp	rcx, rdx
	jne	.label_274
	sub	r8d, eax
	xor	eax, eax
	test	rcx, rcx
	cmovne	eax, r8d
	jmp	.label_257
.label_251:
	add	ecx, -0x30
	mov	eax, 0xffffffff
	cmp	ecx, 0xa
	jae	.label_255
.label_257:
	ret	
.label_261:
	mov	r8d, ecx
.label_273:
	movzx	edx, r9b
	movzx	eax, cl
	add	eax, -0x30
	xor	ecx, ecx
	cmp	eax, 9
	ja	.label_258
	xor	ecx, ecx
	nop	word ptr [rax + rax]
.label_276:
	movzx	eax, byte ptr [rdi + rcx + 1]
	inc	rcx
	add	eax, -0x30
	cmp	eax, 0xa
	jb	.label_276
.label_258:
	lea	edi, [rdx - 0x30]
	xor	eax, eax
	cmp	edi, 9
	ja	.label_268
	xor	eax, eax
	nop	dword ptr [rax]
.label_263:
	movzx	edi, byte ptr [rsi + rax + 1]
	inc	rax
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_263
.label_268:
	cmp	rcx, rax
	jne	.label_252
	sub	edx, r8d
	xor	eax, eax
	test	rcx, rcx
	cmovne	eax, edx
	ret	
.label_274:
	mov	ecx, 0xffffffff
	mov	eax, 1
	cmovb	eax, ecx
	ret	
.label_255:
	cmp	dl, 0x30
	jne	.label_253
	inc	rsi
	nop	word ptr [rax + rax]
.label_264:
	movzx	edx, byte ptr [rsi]
	inc	rsi
	cmp	dl, 0x30
	je	.label_264
.label_253:
	movzx	eax, dl
	add	eax, -0x30
	cmp	eax, 0xa
	sbb	eax, eax
	ret	
.label_252:
	mov	ecx, 1
	mov	eax, 0xffffffff
	cmovb	eax, ecx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403ec5
	.globl sub_403ec5
	.type sub_403ec5, @function
sub_403ec5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ed0

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
.label_367:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_336
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_372]]
.label_494:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_376
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_129
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_495:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_386
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_386
	xor	r14d, r14d
.label_282:
	cmp	r14, r11
	jae	.label_279
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_279:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_282
.label_386:
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
	jmp	.label_290
.label_487:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_290
.label_490:
	mov	al, 1
.label_488:
	mov	r12b, 1
.label_491:
	test	r12b, 1
	mov	cl, 1
	je	.label_307
	mov	ecx, eax
.label_307:
	mov	al, cl
.label_489:
	test	r12b, 1
	jne	.label_310
	test	r11, r11
	je	.label_283
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_283:
	mov	r14d, 1
	jmp	.label_316
.label_310:
	xor	r14d, r14d
.label_316:
	mov	ecx, OFFSET FLAT:label_129
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_290
.label_492:
	test	r12b, 1
	jne	.label_328
	test	r11, r11
	je	.label_303
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_303:
	mov	r14d, 1
	jmp	.label_324
.label_493:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_128
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_290
.label_328:
	xor	r14d, r14d
.label_324:
	mov	eax, OFFSET FLAT:label_128
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_290:
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
	jmp	.label_350
	.section	.text
	.align	32
	#Procedure 0x4041ac
	.globl sub_4041ac
	.type sub_4041ac, @function
sub_4041ac:

	nop	dword ptr [rax]
.label_287:
	inc	rsi
.label_350:
	cmp	rbp, -1
	je	.label_380
	cmp	rsi, rbp
	jne	.label_299
	jmp	.label_384
	.section	.text
	.align	32
	#Procedure 0x4041c3
	.globl sub_4041c3
	.type sub_4041c3, @function
sub_4041c3:

	nop	word ptr cs:[rax + rax]
.label_380:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_384
.label_299:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_387
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_377
	cmp	rbp, -1
	jne	.label_377
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
.label_377:
	cmp	rbx, rbp
	jbe	.label_289
.label_387:
	xor	r8d, r8d
.label_317:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_291
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_294]]
.label_554:
	test	rsi, rsi
	jne	.label_285
	jmp	.label_300
	.section	.text
	.align	32
	#Procedure 0x40425e
	.globl sub_40425e
	.type sub_40425e, @function
sub_40425e:

	nop	
.label_289:
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
	jne	.label_314
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_317
	jmp	.label_329
.label_314:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_317
.label_558:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_339
	test	rsi, rsi
	jne	.label_342
	cmp	rbp, 1
	je	.label_300
	xor	r13d, r13d
	jmp	.label_295
.label_547:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_348
	cmp	byte ptr [rsp + 7], 0
	jne	.label_280
	cmp	r12d, 2
	jne	.label_349
	mov	eax, r9d
	and	al, 1
	jne	.label_349
	cmp	r14, r11
	jae	.label_326
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_326:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_356
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_356:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_361
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_361:
	add	r14, 3
	mov	r9b, 1
.label_349:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_296
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_296:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_325
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_325
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_325
	cmp	r14, r11
	jae	.label_385
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_385:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_332
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_332:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_295
.label_548:
	mov	bl, 0x62
	jmp	.label_359
.label_549:
	mov	cl, 0x74
	jmp	.label_322
.label_550:
	mov	bl, 0x76
	jmp	.label_359
.label_551:
	mov	bl, 0x66
	jmp	.label_359
.label_552:
	mov	cl, 0x72
	jmp	.label_322
.label_555:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_391
	cmp	byte ptr [rsp + 7], 0
	jne	.label_280
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
	jae	.label_284
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_284:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_297
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_297:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_301
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_301:
	add	r14, 3
	xor	r9d, r9d
.label_391:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_295
.label_556:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_313
	cmp	r12d, 2
	jne	.label_285
	cmp	byte ptr [rsp + 7], 0
	je	.label_285
	jmp	.label_280
.label_557:
	cmp	r12d, 2
	jne	.label_323
	cmp	byte ptr [rsp + 7], 0
	jne	.label_280
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_288
.label_291:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_334
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
.label_331:
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
	jmp	.label_295
.label_339:
	test	rsi, rsi
	jne	.label_366
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_366
.label_300:
	mov	dl, 1
.label_553:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_280
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_295:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_373
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_374
	jmp	.label_337
	.section	.text
	.align	32
	#Procedure 0x4045a4
	.globl sub_4045a4
	.type sub_4045a4, @function
sub_4045a4:

	nop	word ptr cs:[rax + rax]
.label_373:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_337
.label_374:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_381
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_288
	jmp	.label_390
	.section	.text
	.align	32
	#Procedure 0x4045ed
	.globl sub_4045ed
	.type sub_4045ed, @function
sub_4045ed:

	nop	dword ptr [rax]
.label_337:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_390
	jmp	.label_288
.label_381:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_390
.label_348:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_287
	xor	r15d, r15d
	jmp	.label_285
.label_323:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_322
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_288
.label_322:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_280
.label_359:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_295
	nop	word ptr cs:[rax + rax]
.label_390:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_280
	cmp	r12d, 2
	jne	.label_308
	mov	eax, r9d
	and	al, 1
	jne	.label_308
	cmp	r14, r11
	jae	.label_311
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_311:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_281
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_281:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_320
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_320:
	add	r14, 3
	mov	r9b, 1
.label_308:
	cmp	r14, r11
	jae	.label_327
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_327:
	inc	r14
	jmp	.label_338
.label_334:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_335
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_335:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_345:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_355
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_358
	cmp	rbp, -2
	je	.label_362
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_364
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_389:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_352
	bt	rsi, rdx
	jb	.label_329
.label_352:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_389
.label_364:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_383
	xor	r13d, r13d
.label_383:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_345
	jmp	.label_331
.label_325:
	xor	r13d, r13d
	jmp	.label_295
.label_366:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_295
.label_313:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_285
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_285
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_285
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_351
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_369
	cmp	byte ptr [rsp + 7], 0
	jne	.label_280
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_304
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_304:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_330
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_330:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_315
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_315:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_319
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_319:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_295
.label_285:
	xor	eax, eax
.label_342:
	xor	r13d, r13d
	jmp	.label_295
.label_318:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_333
	.section	.text
	.align	32
	#Procedure 0x4048d3
	.globl sub_4048d3
	.type sub_4048d3, @function
sub_4048d3:

	nop	word ptr cs:[rax + rax]
.label_286:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_333:
	test	r8b, r8b
	je	.label_343
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_344
	cmp	r14, r11
	jae	.label_346
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_346:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_344
	.section	.text
	.align	32
	#Procedure 0x40491c
	.globl sub_40491c
	.type sub_40491c, @function
sub_40491c:

	nop	dword ptr [rax]
.label_343:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_329
	cmp	r12d, 2
	jne	.label_354
	mov	eax, r9d
	and	al, 1
	jne	.label_354
	cmp	r14, r11
	jae	.label_357
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_357:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_360
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_360:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_365
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_365:
	add	r14, 3
	mov	r9b, 1
.label_354:
	cmp	r14, r11
	jae	.label_378
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_378:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_370
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_370:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_375
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_375:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_344:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_288
	test	r9b, 1
	je	.label_341
	mov	ebx, eax
	and	bl, 1
	jne	.label_341
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_388
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_388:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_302
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_302:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_341:
	cmp	r14, r11
	jae	.label_286
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_286
	.section	.text
	.align	32
	#Procedure 0x404a23
	.globl sub_404a23
	.type sub_404a23, @function
sub_404a23:

	nop	word ptr cs:[rax + rax]
.label_288:
	test	r9b, 1
	je	.label_292
	and	al, 1
	jne	.label_292
	cmp	r14, r11
	jae	.label_293
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_293:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_340
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_340:
	add	r14, 2
	xor	r9d, r9d
.label_292:
	mov	ebx, r15d
.label_338:
	cmp	r14, r11
	jae	.label_306
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_306:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_287
.label_358:
	xor	r13d, r13d
.label_355:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_331
.label_362:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_321
	mov	rsi, qword ptr [rsp + 0x50]
.label_305:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_298
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_305
	xor	r13d, r13d
	jmp	.label_331
.label_321:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_331
.label_298:
	xor	r13d, r13d
	jmp	.label_331
.label_351:
	xor	r13d, r13d
	jmp	.label_295
.label_369:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_295
	.section	.text
	.align	32
	#Procedure 0x404af8
	.globl sub_404af8
	.type sub_404af8, @function
sub_404af8:

	nop	dword ptr [rax + rax]
.label_384:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_347
	or	dl, al
	je	.label_329
.label_347:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_353
	or	dl, al
	jne	.label_353
	test	r10b, 1
	jne	.label_363
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_353
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_367
.label_353:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_368
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_371
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_371
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_382:
	cmp	r14, r11
	jae	.label_379
	mov	byte ptr [rcx + r14], al
.label_379:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_382
	jmp	.label_371
.label_280:
	mov	qword ptr [rsp + 0x20], rbp
.label_329:
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
.label_309:
	mov	r14, rax
.label_312:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_363:
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
	jmp	.label_309
.label_368:
	mov	rcx, qword ptr [rsp + 8]
.label_371:
	cmp	r14, r11
	jae	.label_312
	mov	byte ptr [rcx + r14], 0
	jmp	.label_312
.label_336:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404c8c
	.globl sub_404c8c
	.type sub_404c8c, @function
sub_404c8c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404c90
	.globl usage
	.type usage, @function
usage:

	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_392
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_399
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_393
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_404
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_411
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_410
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_407
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_394
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_395
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_406
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_408
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_396
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_397
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_398
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_403
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_400
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_401
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_409
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_405
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	call	__printf_chk
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_392:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_402
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
	#Procedure 0x404f1b
	.globl sub_404f1b
	.type sub_404f1b, @function
sub_404f1b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404f20

	.globl advance
	.type advance, @function
advance:
	mov	eax,  dword ptr [dword ptr [rip + pos]]
	inc	eax
	mov	dword ptr [dword ptr [rip + pos]],  eax
	cmp	eax,  dword ptr [dword ptr [rip + argc]]
	jl	.label_412
	xor	dil, 1
	je	.label_413
.label_412:
	ret	
.label_413:
	push	rax
	call	beyond
	.section	.text
	.align	32
	#Procedure 0x404f43
	.globl sub_404f43
	.type sub_404f43, @function
sub_404f43:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404f50
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	32
	#Procedure 0x404f5a
	.globl sub_404f5a
	.type sub_404f5a, @function
sub_404f5a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404f60

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
	je	.label_414
	mov	qword ptr [rax], rbx
.label_414:
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
	#Procedure 0x40504c
	.globl sub_40504c
	.type sub_40504c, @function
sub_40504c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405050

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
	je	.label_417
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_415
	jmp	.label_416
.label_417:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_416
.label_415:
	mov	eax, 1
	test	bpl, bpl
	je	.label_416
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
.label_416:
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
	#Procedure 0x4050d8
	.globl sub_4050d8
	.type sub_4050d8, @function
sub_4050d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4050e0

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
	je	.label_418
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_420
	jmp	.label_419
.label_418:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_419
.label_420:
	mov	eax, 1
	test	bpl, bpl
	je	.label_419
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
.label_419:
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
	#Procedure 0x405159
	.globl sub_405159
	.type sub_405159, @function
sub_405159:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405160

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
	je	.label_423
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_422
	jmp	.label_421
.label_423:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_421
.label_422:
	mov	eax, 1
	test	bpl, bpl
	je	.label_421
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
.label_421:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4051c3
	.globl sub_4051c3
	.type sub_4051c3, @function
sub_4051c3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4051d0

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
	je	.label_426
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_424
	jmp	.label_425
.label_426:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_425
.label_424:
	mov	eax, 1
	test	bpl, bpl
	je	.label_425
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_425:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40522f
	.globl sub_40522f
	.type sub_40522f, @function
sub_40522f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x405230

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
	je	.label_427
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_429
	jmp	.label_428
.label_427:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_428
.label_429:
	mov	eax, 1
	test	bpl, bpl
	je	.label_428
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_428:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405279
	.globl sub_405279
	.type sub_405279, @function
sub_405279:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405280

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
	je	.label_432
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_431
	jmp	.label_430
.label_432:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_430
.label_431:
	mov	eax, 1
	test	bpl, bpl
	je	.label_430
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_430:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4052c5
	.globl sub_4052c5
	.type sub_4052c5, @function
sub_4052c5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4052d0

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_434
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_435
	jmp	.label_433
.label_434:
	mov	eax, 1
	test	cl, cl
	je	.label_433
.label_435:
	xor	eax, eax
.label_433:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4052ff
	.globl sub_4052ff
	.type sub_4052ff, @function
sub_4052ff:

	nop	
	.section	.text
	.align	32
	#Procedure 0x405300

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
	#Procedure 0x405336
	.globl sub_405336
	.type sub_405336, @function
sub_405336:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405340
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
	#Procedure 0x40534f
	.globl sub_40534f
	.type sub_40534f, @function
sub_40534f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x405350

	.globl get_stat_mtime
	.type get_stat_mtime, @function
get_stat_mtime:
	mov	rax, qword ptr [rdi + 0x58]
	mov	rdx, qword ptr [rdi + 0x60]
	ret	
	.section	.text
	.align	32
	#Procedure 0x405359
	.globl sub_405359
	.type sub_405359, @function
sub_405359:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405360
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
	#Procedure 0x4053a9
	.globl sub_4053a9
	.type sub_4053a9, @function
sub_4053a9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4053b0
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x4053ba
	.globl sub_4053ba
	.type sub_4053ba, @function
sub_4053ba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4053c0

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x4053ca
	.globl sub_4053ca
	.type sub_4053ca, @function
sub_4053ca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4053d0
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	32
	#Procedure 0x4053dd
	.globl sub_4053dd
	.type sub_4053dd, @function
sub_4053dd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4053e0
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	mov	rcx, rdi
	xor	edi, edi
	mov	rsi, rcx
	mov	rdx, rax
	jmp	quotearg_n_mem
	.section	.text
	.align	32
	#Procedure 0x4053f0

	.globl three_arguments
	.type three_arguments, @function
three_arguments:
	push	r14
	push	rbx
	push	rax
	movsxd	r14,  dword ptr [dword ptr [rip + pos]]
	mov	rbx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rbx + r14*8 + 8]
	call	binop
	test	al, al
	je	.label_439
	xor	edi, edi
	call	binary_operator
	jmp	.label_442
.label_439:
	mov	rax, qword ptr [rbx + r14*8]
	cmp	byte ptr [rax], 0x21
	jne	.label_443
	cmp	byte ptr [rax + 1], 0
	je	.label_446
.label_443:
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	byte ptr [rax], 0x28
	jne	.label_437
	cmp	byte ptr [rax + 1], 0
	jne	.label_437
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rcx + rax*8 + 0x10]
	cmp	byte ptr [rax], 0x29
	jne	.label_437
	cmp	byte ptr [rax + 1], 0
	je	.label_445
.label_437:
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rcx + rax*8 + 8]
	cmp	byte ptr [rax], 0x2d
	jne	.label_436
	cmp	byte ptr [rax + 1], 0x61
	jne	.label_436
	cmp	byte ptr [rax + 2], 0
	je	.label_438
.label_436:
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rcx + rax*8 + 8]
	cmp	byte ptr [rax], 0x2d
	jne	.label_440
	cmp	byte ptr [rax + 1], 0x6f
	jne	.label_440
	cmp	byte ptr [rax + 2], 0
	jne	.label_440
.label_438:
	call	expr
.label_442:
	mov	ebx, eax
.label_441:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_446:
	mov	edi, 1
	call	advance
	call	two_arguments
	mov	ebx, eax
	xor	bl, 1
	jmp	.label_441
.label_445:
	xor	edi, edi
	call	advance
	call	one_argument
	mov	ebx, eax
	xor	edi, edi
	call	advance
	jmp	.label_441
.label_440:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_444
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rcx + rax*8 + 8]
	call	quote
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rbx
	mov	rsi, rcx
	call	test_syntax_error
	.section	.text
	.align	32
	#Procedure 0x40552c
	.globl sub_40552c
	.type sub_40552c, @function
sub_40552c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405530
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40553a
	.globl sub_40553a
	.type sub_40553a, @function
sub_40553a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405540

	.globl one_argument
	.type one_argument, @function
one_argument:
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	lea	ecx, [rax + 1]
	mov	dword ptr [dword ptr [rip + pos]],  ecx
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	byte ptr [rax], 0
	setne	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x405562
	.globl sub_405562
	.type sub_405562, @function
sub_405562:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405570

	.globl binop
	.type binop, @function
binop:
	cmp	byte ptr [rdi], 0x3d
	jne	.label_454
	mov	al, 1
	cmp	byte ptr [rdi + 1], 0
	je	.label_449
.label_454:
	cmp	byte ptr [rdi], 0x21
	jne	.label_447
	cmp	byte ptr [rdi + 1], 0x3d
	jne	.label_447
	mov	al, 1
	cmp	byte ptr [rdi + 2], 0
	je	.label_449
.label_447:
	cmp	byte ptr [rdi], 0x3d
	jne	.label_451
	cmp	byte ptr [rdi + 1], 0x3d
	jne	.label_451
	mov	al, 1
	cmp	byte ptr [rdi + 2], 0
	je	.label_449
.label_451:
	cmp	byte ptr [rdi], 0x2d
	jne	.label_456
	cmp	byte ptr [rdi + 1], 0x6e
	jne	.label_456
	cmp	byte ptr [rdi + 2], 0x74
	jne	.label_456
	mov	al, 1
	cmp	byte ptr [rdi + 3], 0
	je	.label_449
.label_456:
	cmp	byte ptr [rdi], 0x2d
	jne	.label_458
	cmp	byte ptr [rdi + 1], 0x6f
	jne	.label_458
	cmp	byte ptr [rdi + 2], 0x74
	jne	.label_458
	mov	al, 1
	cmp	byte ptr [rdi + 3], 0
	je	.label_449
.label_458:
	cmp	byte ptr [rdi], 0x2d
	jne	.label_459
	cmp	byte ptr [rdi + 1], 0x65
	jne	.label_459
	cmp	byte ptr [rdi + 2], 0x66
	jne	.label_459
	mov	al, 1
	cmp	byte ptr [rdi + 3], 0
	je	.label_449
.label_459:
	cmp	byte ptr [rdi], 0x2d
	jne	.label_448
	cmp	byte ptr [rdi + 1], 0x65
	jne	.label_448
	cmp	byte ptr [rdi + 2], 0x71
	jne	.label_448
	mov	al, 1
	cmp	byte ptr [rdi + 3], 0
	je	.label_449
.label_448:
	mov	al, byte ptr [rdi]
	cmp	al, 0x2d
	jne	.label_455
	cmp	byte ptr [rdi + 1], 0x6e
	jne	.label_453
	cmp	byte ptr [rdi + 2], 0x65
	jne	.label_453
	mov	al, 1
	cmp	byte ptr [rdi + 3], 0
	je	.label_449
.label_453:
	mov	al, byte ptr [rdi]
.label_455:
	cmp	al, 0x2d
	jne	.label_452
	cmp	byte ptr [rdi + 1], 0x6c
	jne	.label_457
	cmp	byte ptr [rdi + 2], 0x74
	jne	.label_457
	mov	al, 1
	cmp	byte ptr [rdi + 3], 0
	je	.label_449
.label_457:
	cmp	byte ptr [rdi], 0x2d
	jne	.label_460
	cmp	byte ptr [rdi + 1], 0x6c
	jne	.label_452
	cmp	byte ptr [rdi + 2], 0x65
	jne	.label_452
	mov	al, 1
	cmp	byte ptr [rdi + 3], 0
	je	.label_449
.label_452:
	cmp	byte ptr [rdi], 0x2d
	jne	.label_460
	cmp	byte ptr [rdi + 1], 0x67
	jne	.label_460
	cmp	byte ptr [rdi + 2], 0x74
	jne	.label_460
	mov	al, 1
	cmp	byte ptr [rdi + 3], 0
	je	.label_449
.label_460:
	movzx	ecx, byte ptr [rdi]
	mov	eax, 0x2d
	sub	eax, ecx
	jne	.label_450
	movzx	ecx, byte ptr [rdi + 1]
	mov	eax, 0x67
	sub	eax, ecx
	jne	.label_450
	movzx	ecx, byte ptr [rdi + 2]
	mov	eax, 0x65
	sub	eax, ecx
	jne	.label_450
	movzx	eax, byte ptr [rdi + 3]
	neg	eax
.label_450:
	test	eax, eax
	sete	al
.label_449:
	ret	
	.section	.text
	.align	32
	#Procedure 0x4056bb
	.globl sub_4056bb
	.type sub_4056bb, @function
sub_4056bb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4056c0
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_461
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_463]]
.label_461:
	xor	eax, eax
	jmp	.label_462
	.section	.text
	.align	32
	#Procedure 0x4056d5
	.globl sub_4056d5
	.type sub_4056d5, @function
sub_4056d5:

	nop	word ptr cs:[rax + rax]
.label_462:
	ret	
	.section	.text
	.align	32
	#Procedure 0x4056e0
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
	#Procedure 0x405713
	.globl sub_405713
	.type sub_405713, @function
sub_405713:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405720
	.globl get_stat_birthtime
	.type get_stat_birthtime, @function
get_stat_birthtime:

	mov	rax, -1
	mov	rdx, -1
	ret	
	.section	.text
	.align	32
	#Procedure 0x40572f
	.globl sub_40572f
	.type sub_40572f, @function
sub_40572f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x405730
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40573a
	.globl sub_40573a
	.type sub_40573a, @function
sub_40573a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405740

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_125
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_464
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x405765
	.globl sub_405765
	.type sub_405765, @function
sub_405765:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4057d5
	.globl sub_4057d5
	.type sub_4057d5, @function
sub_4057d5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4057e2
	.globl sub_4057e2
	.type sub_4057e2, @function
sub_4057e2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405806
	.globl sub_405806
	.type sub_405806, @function
sub_405806:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405819
	.globl sub_405819
	.type sub_405819, @function
sub_405819:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405820

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
