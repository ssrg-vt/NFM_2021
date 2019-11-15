	.section	.text
	.align	16
	#Procedure 0x401519
	.globl sub_401519
	.type sub_401519, @function
sub_401519:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x40151a
	.globl sub_40151a
	.type sub_40151a, @function
sub_40151a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401552
	.globl sub_401552
	.type sub_401552, @function
sub_401552:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40159a
	.globl sub_40159a
	.type sub_40159a, @function
sub_40159a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4015bc
	.globl sub_4015bc
	.type sub_4015bc, @function
sub_4015bc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4015cd
	.globl sub_4015cd
	.type sub_4015cd, @function
sub_4015cd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4015e6
	.globl sub_4015e6
	.type sub_4015e6, @function
sub_4015e6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4015f0
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_9
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_9:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 4]
	mov	dword ptr [rbp - 0x10], ecx
	mov	ecx, dword ptr [rbp - 0xc]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 4], ecx
	mov	eax, dword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40162d
	.globl sub_40162d
	.type sub_40162d, @function
sub_40162d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401630
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax, 1
	mov	edx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	x2nrealloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40165a
	.globl sub_40165a
	.type sub_40165a, @function
sub_40165a:

	nop	word ptr [rax + rax]
.label_10:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401677
	.globl sub_401677
	.type sub_401677, @function
sub_401677:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40167f

	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 8]
	jae	.label_10
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4016b0
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x30
	sub	eax, 0xa
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_11
	jmp	.label_14
.label_14:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_11
	jmp	.label_12
.label_12:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_13
	jmp	.label_11
.label_11:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_15
.label_13:
	mov	byte ptr [rbp - 1], 0
.label_15:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401715
	.globl sub_401715
	.type sub_401715, @function
sub_401715:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401720

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	r8, -1
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	call	quotearg_n_custom_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401758
	.globl sub_401758
	.type sub_401758, @function
sub_401758:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401760

	.globl set_nth_bit
	.type set_nth_bit, @function
set_nth_bit:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], 1
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 8]
	and	rdi, 0x3f
	mov	rcx, rdi
	shl	rsi, cl
	mov	rdi, qword ptr [rbp - 8]
	shr	rdi, 6
	mov	rax, qword ptr [rbp - 0x10]
	or	rsi, qword ptr [rax + rdi*8]
	mov	qword ptr [rax + rdi*8], rsi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40179c
	.globl sub_40179c
	.type sub_40179c, @function
sub_40179c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4017a0

	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	al, dl
	lea	rcx, [rbp - 0x50]
	mov	edx, 1
	movabs	r8, OFFSET FLAT:default_quoting_options
	mov	r9d, 0x38
	mov	r10d, r9d
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	byte ptr [rbp - 0x11], al
	mov	rsi, rcx
	mov	rdi, rsi
	mov	rsi, r8
	mov	dword ptr [rbp - 0x54], edx
	mov	rdx, r10
	mov	qword ptr [rbp - 0x60], rcx
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x60]
	movsx	esi, byte ptr [rbp - 0x11]
	mov	edx, dword ptr [rbp - 0x54]
	call	set_char_quoting
	xor	edi, edi
	lea	rcx, [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x64], eax
	call	quotearg_n_options
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401815
	.globl sub_401815
	.type sub_401815, @function
sub_401815:

	nop	word ptr cs:[rax + rax]
.label_17:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_18:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40182b
	.globl sub_40182b
	.type sub_40182b, @function
sub_40182b:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401834

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_17
	jmp	.label_16
.label_16:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_18
	.section	.text
	.align	16
	#Procedure 0x401860
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	sub	edi, 0x20
	mov	dword ptr [rbp - 0xc], eax
	mov	dword ptr [rbp - 0x10], edi
	jb	.label_19
	jmp	.label_21
.label_21:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_22
	jmp	.label_19
.label_19:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_20
.label_22:
	mov	byte ptr [rbp - 1], 0
.label_20:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4018a8
	.globl sub_4018a8
	.type sub_4018a8, @function
sub_4018a8:

	nop	dword ptr [rax + rax]
.label_24:
	jmp	.label_23
.label_23:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4018c3
	.globl sub_4018c3
	.type sub_4018c3, @function
sub_4018c3:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4018c9

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	add	edi, 0xffffd828
	sub	edi, 0xb
	mov	dword ptr [rbp - 8], edi
	ja	.label_24
	jmp	.label_25
.label_25:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	add	eax, 0x2001a
	mov	dword ptr [rbp - 4], eax
	jmp	.label_23
	.section	.text
	.align	16
	#Procedure 0x401900

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	lea	rax, [rbp - 0x48]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	qword ptr [rbp - 0x10], rdx
	mov	esi, dword ptr [rbp - 8]
	mov	rdi, rax
	call	quoting_options_from_style
	mov	rdx, -1
	lea	rcx, [rbp - 0x48]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_n_options
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40193e
	.globl sub_40193e
	.type sub_40193e, @function
sub_40193e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401940
	.globl version_etc
	.type version_etc, @function
version_etc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1a0
	test	al, al
	movaps	xmmword ptr [rbp - 0x100], xmm7
	movaps	xmmword ptr [rbp - 0x110], xmm6
	movaps	xmmword ptr [rbp - 0x120], xmm5
	movaps	xmmword ptr [rbp - 0x130], xmm4
	movaps	xmmword ptr [rbp - 0x140], xmm3
	movaps	xmmword ptr [rbp - 0x150], xmm2
	movaps	xmmword ptr [rbp - 0x160], xmm1
	movaps	xmmword ptr [rbp - 0x170], xmm0
	mov	qword ptr [rbp - 0x178], rdi
	mov	qword ptr [rbp - 0x180], r9
	mov	qword ptr [rbp - 0x188], r8
	mov	qword ptr [rbp - 0x190], rcx
	mov	qword ptr [rbp - 0x198], rdx
	mov	qword ptr [rbp - 0x1a0], rsi
	je	.label_26
	movaps	xmm0, xmmword ptr [rbp - 0x170]
	movaps	xmmword ptr [rbp - 0xc0], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x150]
	movaps	xmmword ptr [rbp - 0xa0], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x130]
	movaps	xmmword ptr [rbp - 0x80], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x120]
	movaps	xmmword ptr [rbp - 0x70], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0x110]
	movaps	xmmword ptr [rbp - 0x60], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0x100]
	movaps	xmmword ptr [rbp - 0x50], xmm7
.label_26:
	mov	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rcx, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0xd0], rcx
	mov	rdx, qword ptr [rbp - 0x190]
	mov	rsi, qword ptr [rbp - 0x198]
	mov	rdi, qword ptr [rbp - 0x1a0]
	mov	r8, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 8], r8
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	lea	rdx, [rbp - 0xf0]
	mov	qword ptr [rbp - 0x30], rdx
	lea	rdx, [rbp + 0x10]
	mov	qword ptr [rbp - 0x38], rdx
	mov	dword ptr [rbp - 0x3c], 0x30
	mov	dword ptr [rbp - 0x40], 0x20
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	r8, [rbp - 0x40]
	call	version_etc_va
	add	rsp, 0x1a0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401aa4
	.globl sub_401aa4
	.type sub_401aa4, @function
sub_401aa4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ab0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rcx, OFFSET FLAT:quote_quoting_options
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_n_options
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401ae3
	.globl sub_401ae3
	.type sub_401ae3, @function
sub_401ae3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401af0
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	esi, dword ptr [rbp - 0xc]
	cmp	qword ptr [rbp - 8], 0
	mov	dword ptr [rbp - 0x10], esi
	je	.label_27
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_28
.label_27:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_28
.label_28:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401b37
	.globl sub_401b37
	.type sub_401b37, @function
sub_401b37:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401b40
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -9
	sub	eax, 5
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_29
	jmp	.label_31
.label_31:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_32
	jmp	.label_29
.label_29:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_30
.label_32:
	mov	byte ptr [rbp - 1], 0
.label_30:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401b8b
	.globl sub_401b8b
	.type sub_401b8b, @function
sub_401b8b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401b90

	.globl quote
	.type quote, @function
quote:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	call	quote_n
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401baf
	.globl sub_401baf
	.type sub_401baf, @function
sub_401baf:

	nop	
.label_35:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_33:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401bc2
	.globl sub_401bc2
	.type sub_401bc2, @function
sub_401bc2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401bd1

	.globl rpl_mbrtowc
	.type rpl_mbrtowc, @function
rpl_mbrtowc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_34
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_34:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	mbrtowc
	mov	rcx, -2
	mov	qword ptr [rbp - 0x30], rax
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_35
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_35
	xor	edi, edi
	call	hard_locale
	test	al, 1
	jne	.label_35
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], edx
	mov	qword ptr [rbp - 8], 1
	jmp	.label_33
	.section	.text
	.align	16
	#Procedure 0x401c60
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	call	quote_n_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401c87
	.globl sub_401c87
	.type sub_401c87, @function
sub_401c87:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401c90

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	dword ptr [rbp - 0x1c], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x1c]
	call	posix_fadvise
	mov	dword ptr [rbp - 0x20], eax
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401cc2
	.globl sub_401cc2
	.type sub_401cc2, @function
sub_401cc2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401cd0

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	call	xmalloc
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x18], rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401d07
	.globl sub_401d07
	.type sub_401d07, @function
sub_401d07:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401d10
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	call	quotearg_alloc_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401d4a
	.globl sub_401d4a
	.type sub_401d4a, @function
sub_401d4a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401d50

	.globl walk_tree
	.type walk_tree, @function
walk_tree:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	cmp	qword ptr [rsi + 0x10], 0
	je	.label_36
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 0x10]
	mov	rsi, qword ptr [rbp - 0x10]
	call	recurse_tree
	mov	byte ptr [rbp - 0x11], al
.label_36:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401d89
	.globl sub_401d89
	.type sub_401d89, @function
sub_401d89:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401d90

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdi]
	and	eax, 0x100
	cmp	eax, 0
	je	.label_37
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fseeko
	mov	dword ptr [rbp - 0xc], eax
.label_37:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401dcb
	.globl sub_401dcb
	.type sub_401dcb, @function
sub_401dcb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401dd0

	.globl c_strcasecmp
	.type c_strcasecmp, @function
c_strcasecmp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	rsi, qword ptr [rbp - 0x28]
	jne	.label_38
	mov	dword ptr [rbp - 4], 0
	jmp	.label_42
.label_40:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	je	.label_39
.label_41:
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_42:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401e48
	.globl sub_401e48
	.type sub_401e48, @function
sub_401e48:

	nop	word ptr cs:[rax + rax]
.label_38:
	jmp	.label_39
.label_39:
	mov	rax, qword ptr [rbp - 0x20]
	movzx	edi, byte ptr [rax]
	call	c_tolower
	mov	cl, al
	mov	byte ptr [rbp - 0x29], cl
	mov	rdx, qword ptr [rbp - 0x28]
	movzx	edi, byte ptr [rdx]
	call	c_tolower
	mov	cl, al
	mov	byte ptr [rbp - 0x2a], cl
	movzx	eax, byte ptr [rbp - 0x29]
	cmp	eax, 0
	jne	.label_40
	jmp	.label_41
	.section	.text
	.align	16
	#Procedure 0x401e90

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_43
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:label_44
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401ecf
	.globl sub_401ecf
	.type sub_401ecf, @function
sub_401ecf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401ed0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	edx, 0x3a
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_char_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401ef8
	.globl sub_401ef8
	.type sub_401ef8, @function
sub_401ef8:

	nop	dword ptr [rax + rax]
.label_46:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_45
.label_45:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x30], rax
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x34], ecx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r9d, dword ptr [rax + 4]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x30]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x30]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x40], rax
	mov	r8d, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x4c], r8d
	call	__errno_location
	mov	r8d, dword ptr [rbp - 0x4c]
	mov	dword ptr [rax], r8d
	mov	rax, qword ptr [rbp - 0x40]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401f91
	.globl sub_401f91
	.type sub_401f91, @function
sub_401f91:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f9c
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_46
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_45
	.section	.text
	.align	16
	#Procedure 0x401fd0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_47
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_48
.label_47:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	jmp	.label_49
.label_48:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_49:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402028
	.globl sub_402028
	.type sub_402028, @function
sub_402028:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402030

	.globl xstrdup
	.type xstrdup, @function
xstrdup:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, rax
	call	strlen
	add	rax, 1
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	call	xmemdup
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402066
	.globl sub_402066
	.type sub_402066, @function
sub_402066:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402070

	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	lea	rax, [rbp - 0x50]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	qword ptr [rbp - 0x10], rdx
	mov	qword ptr [rbp - 0x18], rcx
	mov	esi, dword ptr [rbp - 8]
	mov	rdi, rax
	call	quoting_options_from_style
	lea	rcx, [rbp - 0x50]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_n_options
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4020af
	.globl sub_4020af
	.type sub_4020af, @function
sub_4020af:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4020b0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdx, -1
	movabs	rcx, OFFSET FLAT:default_quoting_options
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_n_options
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4020e2
	.globl sub_4020e2
	.type sub_4020e2, @function
sub_4020e2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4020f0

	.globl count_items
	.type count_items, @function
count_items:
	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	cl, al
	mov	qword ptr [rbp - 8], rdi
	mov	rdi,  qword ptr [word ptr [n_strings]]
	add	rdi, 1
	mov	qword ptr [word ptr [n_strings]],  rdi
	and	cl, 1
	movzx	eax, cl
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402118
	.globl sub_402118
	.type sub_402118, @function
sub_402118:

	nop	dword ptr [rax + rax]
.label_52:
	mov	byte ptr [rbp - 1], 0
.label_51:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40212e
	.globl sub_40212e
	.type sub_40212e, @function
sub_40212e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40212f
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_52
	jmp	.label_50
.label_50:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_51
	.section	.text
	.align	16
	#Procedure 0x402150

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	je	.label_53
	mov	rdi, qword ptr [rbp - 8]
	call	fileno
	xor	ecx, ecx
	mov	edi, ecx
	mov	ecx, dword ptr [rbp - 0xc]
	mov	qword ptr [rbp - 0x18], rdi
	mov	edi, eax
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x18]
	call	fdadvise
.label_53:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402193
	.globl sub_402193
	.type sub_402193, @function
sub_402193:

	nop	word ptr cs:[rax + rax]
.label_664:
	mov	byte ptr [rbp - 0x80], 0x6e
	jmp	.label_93
.label_79:
	mov	byte ptr [rbp - 0x81], 1
.label_67:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 0x7f], dl
	movzx	esi, byte ptr [rbp - 0x7f]
	mov	eax, esi
	mov	rcx, rax
	sub	rcx, 0x7e
	mov	qword ptr [rbp - 0xf0], rax
	mov	qword ptr [rbp - 0xf8], rcx
	ja	.label_138
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_146]]
	jmp	rcx
.label_669:
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_85
.label_239:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], edx
.label_152:
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_157
	jmp	.label_161
.label_157:
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	je	.label_67
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_67
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_67
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	jne	.label_172
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_172
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_182
.label_622:
	mov	byte ptr [rbp - 0x79], 1
.label_621:
	mov	byte ptr [rbp - 0x7b], 1
.label_623:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_189
	mov	byte ptr [rbp - 0x79], 1
.label_189:
	jmp	.label_193
.label_193:
	mov	dword ptr [rbp - 0x34], 2
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_196
	jmp	.label_200
.label_200:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_201
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_201:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_196
.label_196:
	movabs	rax, OFFSET FLAT:label_178
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_123
.label_673:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_210
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_206
	jmp	.label_216
.label_214:
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_225
	mov	byte ptr [rbp - 0x91], 0
.label_235:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_217
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_217:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_130
	jmp	.label_234
.label_130:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_235
.label_251:
	jmp	.label_86
.label_86:
	test	byte ptr [rbp - 0x79], 1
	je	.label_243
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_122
.label_171:
	jmp	.label_165
.label_165:
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_253
	mov	byte ptr [rbp - 0x91], 0
.label_253:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_255
.label_255:
	jmp	.label_58
.label_58:
	jmp	.label_59
.label_59:
	lea	rdi, [rbp - 0xa0]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_63
.label_149:
	jmp	.label_57
.label_57:
	mov	eax, 1
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	jb	.label_131
	test	byte ptr [rbp - 0x79], 1
	je	.label_77
	test	byte ptr [rbp - 0x91], 1
	jne	.label_77
.label_131:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_256:
	test	byte ptr [rbp - 0x79], 1
	je	.label_83
	test	byte ptr [rbp - 0x91], 1
	jne	.label_83
	jmp	.label_88
.label_88:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_254
	jmp	.label_70
.label_667:
	mov	byte ptr [rbp - 0x80], 0x72
	jmp	.label_93
.label_70:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_97
	test	byte ptr [rbp - 0x79], 1
	je	.label_97
	mov	dword ptr [rbp - 0x34], 4
.label_97:
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	eax, dword ptr [rbp - 0x34]
	mov	r9d, dword ptr [rbp - 0x38]
	and	r9d, 0xfffffffd
	mov	r10, qword ptr [rbp - 0x48]
	mov	r11, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x148], rcx
	mov	rcx, r8
	mov	r8d, eax
	mov	qword ptr [rsp], 0
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x10], rax
.label_61:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402538
	.globl sub_402538
	.type sub_402538, @function
sub_402538:

	nop	dword ptr [rax + rax]
.label_188:
	jmp	.label_116
.label_116:
	mov	byte ptr [rbp - 0x79], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_123
.label_137:
	jmp	.label_122
.label_122:
	jmp	.label_125
.label_125:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_126
	jmp	.label_70
.label_77:
	jmp	.label_85
.label_85:
	test	byte ptr [rbp - 0x79], 1
	je	.label_129
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_132
.label_129:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_134
.label_132:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_134
	movzx	eax, byte ptr [rbp - 0x7f]
	mov	ecx, eax
	shr	rcx, 5
	mov	rdx, qword ptr [rbp - 0x40]
	mov	eax, dword ptr [rdx + rcx*4]
	movzx	esi, byte ptr [rbp - 0x7f]
	mov	ecx, esi
	and	rcx, 0x1f
	mov	esi, ecx
	mov	ecx, esi
	shr	eax, cl
	and	eax, 1
	cmp	eax, 0
	jne	.label_137
.label_134:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_137
	jmp	.label_60
.label_234:
	jmp	.label_149
.label_123:
	mov	qword ptr [rbp - 0x58], 0
.label_163:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_239
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_152
.label_671:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0x100], ecx
	je	.label_159
	jmp	.label_166
.label_166:
	mov	eax, dword ptr [rbp - 0xfc]
	sub	eax, 5
	mov	dword ptr [rbp - 0x104], eax
	je	.label_168
	jmp	.label_170
.label_662:
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_86
.label_627:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_174
	movabs	rdi, OFFSET FLAT:label_176
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	movabs	rdi, OFFSET FLAT:label_178
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_174:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_116
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_205:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_188
	jmp	.label_191
.label_191:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_195
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_195:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_203
.label_203:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_205
.label_168:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_207
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_207
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3f
	jne	.label_207
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 2]
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	je	.label_73
	jmp	.label_218
.label_218:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	jb	.label_73
	jmp	.label_222
.label_222:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	je	.label_73
	jmp	.label_230
.label_230:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2f
	mov	dword ptr [rbp - 0x118], eax
	je	.label_73
	jmp	.label_236
.label_236:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	ja	.label_238
	jmp	.label_73
.label_73:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_245
	jmp	.label_70
.label_54:
	jmp	.label_93
.label_93:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_251
	test	byte ptr [rbp - 0x7b], 1
	je	.label_251
	jmp	.label_70
.label_208:
	test	byte ptr [rbp - 0x79], 1
	je	.label_54
	test	byte ptr [rbp - 0x7b], 1
	je	.label_54
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_54
	jmp	.label_60
.label_192:
	jmp	.label_62
.label_62:
	mov	byte ptr [rbp - 0x83], 1
.label_668:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_65
	test	byte ptr [rbp - 0x7b], 1
	je	.label_65
	jmp	.label_70
.label_245:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_72
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_72:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_231
.label_231:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_82
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_82:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_89
.label_89:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_92
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_92:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_102
.label_102:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_104
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_104:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_110
.label_243:
	jmp	.label_85
.label_154:
	jmp	.label_112
.label_246:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_228
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_228:
	jmp	.label_63
.label_63:
	lea	rdi, [rbp - 0xa4]
	lea	rcx, [rbp - 0xa0]
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	add	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x58]
	add	rsi, qword ptr [rbp - 0x90]
	sub	rdx, rsi
	mov	rsi, rax
	call	rpl_mbrtowc
	mov	qword ptr [rbp - 0xb0], rax
	cmp	qword ptr [rbp - 0xb0], 0
	jne	.label_135
	jmp	.label_149
.label_240:
	call	abort
.label_626:
	mov	byte ptr [rbp - 0x79], 1
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_123
.label_65:
	jmp	.label_85
.label_254:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_143
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_143
	jmp	.label_147
.label_147:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_148
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_148:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_153
.label_153:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_156
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_156:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_160
.label_160:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_164
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_164:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_143:
	jmp	.label_173
.label_173:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_175
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_175:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_179
.label_179:
	jmp	.label_181
.label_181:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_183
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 6
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_183:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_194
.label_194:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_198
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 3
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_198:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_144
.label_625:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_624:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_211
	jmp	.label_213
.label_213:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_215
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_215:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_211
.label_211:
	movabs	rax, OFFSET FLAT:label_219
	mov	byte ptr [rbp - 0x79], 1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_123
.label_660:
	test	byte ptr [rbp - 0x79], 1
	je	.label_223
	jmp	.label_227
.label_227:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_229
	jmp	.label_70
.label_670:
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_232
	test	byte ptr [rbp - 0x7b], 1
	je	.label_237
	jmp	.label_70
.label_81:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_242
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_242
	test	byte ptr [rbp - 0x7d], 1
	je	.label_242
	test	byte ptr [rbp - 0x7e], 1
	je	.label_212
	mov	r8d, 5
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r9d, dword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x40]
	mov	r10, qword ptr [rbp - 0x48]
	mov	r11, qword ptr [rbp - 0x50]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_61
.label_172:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_182:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	ja	.label_67
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_67
	test	byte ptr [rbp - 0x7b], 1
	je	.label_79
	jmp	.label_70
.label_161:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_81
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_81
	test	byte ptr [rbp - 0x7b], 1
	je	.label_81
	jmp	.label_70
.label_126:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_91
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_91
	jmp	.label_94
.label_94:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_96
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_96:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_103
.label_103:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_106
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_106:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_111
.label_111:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_177
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_177:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_91:
	jmp	.label_117
.label_117:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_118
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_118:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_121
.label_121:
	jmp	.label_60
.label_60:
	jmp	.label_127
.label_127:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_128
	test	byte ptr [rbp - 0x82], 1
	jne	.label_128
	jmp	.label_133
.label_133:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_257
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_257:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_158
.label_158:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_142
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_142:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_128:
	jmp	.label_150
.label_150:
	jmp	.label_151
.label_151:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_241
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_241:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x83], 1
	jne	.label_155
	mov	byte ptr [rbp - 0x7e], 0
.label_155:
	jmp	.label_162
.label_162:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_163
.label_83:
	test	byte ptr [rbp - 0x81], 1
	je	.label_167
	jmp	.label_145
.label_145:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_169
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_169:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x81], 0
.label_167:
	jmp	.label_144
.label_144:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_180
	jmp	.label_184
.label_223:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_186
	jmp	.label_162
.label_206:
	jmp	.label_190
.label_190:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_192
	jmp	.label_85
.label_98:
	jmp	.label_90
.label_90:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_199
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_199:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_61
.label_661:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_86
.label_159:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_154
	jmp	.label_70
.label_186:
	jmp	.label_136
.label_136:
	jmp	.label_85
.label_210:
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_206
.label_216:
	jmp	.label_85
.label_184:
	jmp	.label_60
.label_135:
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_214
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_149
.label_238:
	jmp	.label_110
.label_110:
	jmp	.label_207
.label_207:
	jmp	.label_112
.label_665:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_86
.label_180:
	jmp	.label_220
.label_220:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_221
	test	byte ptr [rbp - 0x82], 1
	jne	.label_221
	jmp	.label_224
.label_224:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_226
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_226:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_233
.label_233:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_244
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_244:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_221:
	jmp	.label_248
.label_248:
	jmp	.label_249
.label_249:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_250
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_250:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 1]
	mov	byte ptr [rbp - 0x7f], dl
	jmp	.label_256
.label_229:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_68
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_68
	jmp	.label_71
.label_71:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_74
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_74:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_76
.label_76:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_80
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_80:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_84
.label_84:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_87
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_87:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_68:
	jmp	.label_99
.label_99:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_100
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_100:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_105
.label_105:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_108
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_108
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_108
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x39
	jg	.label_108
	jmp	.label_119
.label_119:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_120
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_120:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_124
.label_124:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_114
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_114:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_108
.label_108:
	mov	byte ptr [rbp - 0x7f], 0x30
	jmp	.label_136
.label_620:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_123
.label_204:
	jmp	.label_139
.label_139:
	jmp	.label_140
.label_140:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_141
.label_663:
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_93
.label_138:
	test	byte ptr [rbp - 0x7a], 1
	je	.label_246
	mov	qword ptr [rbp - 0x90], 1
	movzx	eax, byte ptr [rbp - 0x7f]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x128], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x128]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x4000
	cmp	edx, 0
	setne	sil
	and	sil, 1
	mov	byte ptr [rbp - 0x91], sil
	jmp	.label_57
.label_209:
	jmp	.label_60
.label_170:
	jmp	.label_112
.label_112:
	jmp	.label_85
.label_225:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_165
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_165
	mov	qword ptr [rbp - 0xb8], 1
.label_141:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_171
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x90]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0xb8]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	add	esi, -0x5b
	sub	esi, 2
	mov	dword ptr [rbp - 0x130], edx
	mov	dword ptr [rbp - 0x134], esi
	jb	.label_185
	jmp	.label_187
.label_187:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x138], eax
	je	.label_185
	jmp	.label_197
.label_197:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_185
	jmp	.label_202
.label_202:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_204
	jmp	.label_185
.label_185:
	jmp	.label_70
.label_672:
	mov	al, byte ptr [rbp - 0x7f]
	mov	byte ptr [rbp - 0x80], al
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_208
	test	byte ptr [rbp - 0x7b], 1
	je	.label_209
	jmp	.label_70
	.section	.text
	.align	16
	#Procedure 0x403321

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x158
	mov	rax, qword ptr [rbp + 0x20]
	mov	r10, qword ptr [rbp + 0x18]
	mov	r11, qword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	dword ptr [rbp - 0x34], r8d
	mov	dword ptr [rbp - 0x38], r9d
	mov	qword ptr [rbp - 0x40], r11
	mov	qword ptr [rbp - 0x48], r10
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x60], 0
	mov	qword ptr [rbp - 0x68], 0
	mov	qword ptr [rbp - 0x70], 0
	mov	qword ptr [rbp - 0x78], 0
	mov	byte ptr [rbp - 0x79], 0
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	sete	bl
	and	bl, 1
	mov	byte ptr [rbp - 0x7a], bl
	mov	r8d, dword ptr [rbp - 0x38]
	and	r8d, 2
	cmp	r8d, 0
	setne	bl
	and	bl, 1
	mov	byte ptr [rbp - 0x7b], bl
	mov	byte ptr [rbp - 0x7c], 0
	mov	byte ptr [rbp - 0x7d], 0
	mov	byte ptr [rbp - 0x7e], 1
.label_115:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_240
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_247]]
	jmp	rcx
.label_237:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_252
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_252
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_252:
	jmp	.label_55
.label_55:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_56
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_56:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_64
.label_64:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_69
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_69:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_75
.label_75:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_78
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_78:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_232:
	jmp	.label_85
.label_666:
	mov	byte ptr [rbp - 0x80], 0x66
	jmp	.label_86
.label_113:
	jmp	.label_66
.label_66:
	jmp	.label_242
.label_242:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_90
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_90
	jmp	.label_95
.label_95:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_98
	jmp	.label_101
.label_101:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_109
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_109:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_107
.label_107:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_95
.label_212:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_113
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_113
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_115
	.section	.text
	.align	16
	#Procedure 0x403540
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edi, eax
	call	quotearg_n_style_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40356d
	.globl sub_40356d
	.type sub_40356d, @function
sub_40356d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403570
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_258
	call	gettext
	movabs	rsi, OFFSET FLAT:label_260
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_261
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_262
	movabs	rdx, OFFSET FLAT:label_263
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_259
	mov	dword ptr [rbp - 8], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0xc], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4035f6
	.globl sub_4035f6
	.type sub_4035f6, @function
sub_4035f6:

	nop	
	nop	dword ptr [rax + rax]
.label_265:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_266:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40360b
	.globl sub_40360b
	.type sub_40360b, @function
sub_40360b:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403614
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_265
	jmp	.label_264
.label_264:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_266
	.section	.text
	.align	16
	#Procedure 0x403640

	.globl init_tokenbuffer
	.type init_tokenbuffer, @function
init_tokenbuffer:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 8], 0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403661
	.globl sub_403661
	.type sub_403661, @function
sub_403661:

	nop	word ptr cs:[rax + rax]
.label_269:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_267
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_267
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40369c

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_269
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_269
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_268
.label_267:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_268:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4036ea
	.globl sub_4036ea
	.type sub_4036ea, @function
sub_4036ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4036f0

	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	lea	rax, [rbp - 0x60]
	movabs	r9, OFFSET FLAT:default_quoting_options
	mov	r10d, 0x38
	mov	r11d, r10d
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	rcx, rax
	mov	rdi, rcx
	mov	rsi, r9
	mov	rdx, r11
	mov	qword ptr [rbp - 0x68], rax
	call	memcpy
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x68]
	call	set_custom_quoting
	lea	rcx, [rbp - 0x60]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	call	quotearg_n_options
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403762
	.globl sub_403762
	.type sub_403762, @function
sub_403762:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403770

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	al, sil
	mov	rsi, -1
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	mov	rdi, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rbp - 9]
	call	quotearg_char_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40379c
	.globl sub_40379c
	.type sub_40379c, @function
sub_40379c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4037a0
	.globl parse_long_options
	.type parse_long_options, @function
parse_long_options:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1c0
	test	al, al
	movaps	xmmword ptr [rbp - 0x110], xmm7
	movaps	xmmword ptr [rbp - 0x120], xmm6
	movaps	xmmword ptr [rbp - 0x130], xmm5
	movaps	xmmword ptr [rbp - 0x140], xmm4
	movaps	xmmword ptr [rbp - 0x150], xmm3
	movaps	xmmword ptr [rbp - 0x160], xmm2
	movaps	xmmword ptr [rbp - 0x170], xmm1
	movaps	xmmword ptr [rbp - 0x180], xmm0
	mov	dword ptr [rbp - 0x184], edi
	mov	qword ptr [rbp - 0x190], r9
	mov	qword ptr [rbp - 0x198], r8
	mov	qword ptr [rbp - 0x1a0], rcx
	mov	qword ptr [rbp - 0x1a8], rdx
	mov	qword ptr [rbp - 0x1b0], rsi
	je	.label_270
	movaps	xmm0, xmmword ptr [rbp - 0x180]
	movaps	xmmword ptr [rbp - 0xd0], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x170]
	movaps	xmmword ptr [rbp - 0xc0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x150]
	movaps	xmmword ptr [rbp - 0xa0], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x130]
	movaps	xmmword ptr [rbp - 0x80], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0x120]
	movaps	xmmword ptr [rbp - 0x70], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0x110]
	movaps	xmmword ptr [rbp - 0x60], xmm7
.label_270:
	mov	rax, qword ptr [rbp - 0x190]
	mov	rcx, qword ptr [rbp - 0x198]
	mov	rdx, qword ptr [rbp - 0x1a0]
	mov	rsi, qword ptr [rbp - 0x1a8]
	mov	rdi, qword ptr [rbp - 0x1b0]
	mov	r8d, dword ptr [rbp - 0x184]
	mov	dword ptr [rbp - 4], r8d
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], rax
	mov	r8d,  dword ptr [dword ptr [opterr]]
	mov	dword ptr [rbp - 0x38], r8d
	mov	dword ptr [dword ptr [opterr]],  0
	cmp	dword ptr [rbp - 4], 2
	jne	.label_271
	movabs	rdx, OFFSET FLAT:label_277
	movabs	rcx, OFFSET FLAT:long_options
	xor	eax, eax
	mov	r8d, eax
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0x34], eax
	cmp	eax, -1
	je	.label_271
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 0x68
	mov	dword ptr [rbp - 0x1b4], eax
	mov	dword ptr [rbp - 0x1b8], ecx
	je	.label_275
	jmp	.label_272
.label_272:
	mov	eax, dword ptr [rbp - 0x1b4]
	sub	eax, 0x76
	mov	dword ptr [rbp - 0x1bc], eax
	je	.label_274
	jmp	.label_276
.label_274:
	lea	rax, [rbp - 0x50]
	mov	rcx, rax
	lea	rdx, [rbp - 0x100]
	mov	qword ptr [rcx + 0x10], rdx
	lea	rdx, [rbp + 0x10]
	mov	qword ptr [rcx + 8], rdx
	mov	dword ptr [rcx + 4], 0x30
	mov	dword ptr [rcx], 0x30
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, rax
	call	version_etc_va
	xor	edi, edi
	call	exit
.label_276:
	jmp	.label_273
.label_273:
	jmp	.label_271
.label_271:
	mov	eax, dword ptr [rbp - 0x38]
	mov	dword ptr [dword ptr [rip + opterr]],  eax
	mov	dword ptr [dword ptr [rip + optind]],  0
	add	rsp, 0x1c0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4039b8
	.globl sub_4039b8
	.type sub_4039b8, @function
sub_4039b8:

	nop	word ptr cs:[rax + rax]
.label_275:
	xor	edi, edi
	call	qword ptr [rbp - 0x30]
	jmp	.label_273
.label_278:
	mov	byte ptr [rbp - 1], 0
.label_281:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4039de
	.globl sub_4039de
	.type sub_4039de, @function
sub_4039de:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4039e9
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x30
	sub	eax, 0xa
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_279
	jmp	.label_282
.label_282:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_279
	jmp	.label_280
.label_280:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_278
	jmp	.label_279
.label_279:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_281
	.section	.text
	.align	16
	#Procedure 0x403a40
	.globl quotearg
	.type quotearg, @function
quotearg:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	call	quotearg_n
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403a5f
	.globl sub_403a5f
	.type sub_403a5f, @function
sub_403a5f:

	nop	
.label_288:
	lea	rax, [rbp - 0x80]
	mov	rcx, rax
	lea	rdx, [rbp - 0x130]
	mov	qword ptr [rcx + 0x10], rdx
	lea	rdx, [rbp + 0x18]
	mov	qword ptr [rcx + 8], rdx
	mov	dword ptr [rcx + 4], 0x30
	mov	dword ptr [rcx], 0x30
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	r8, rax
	call	version_etc_va
	xor	edi, edi
	call	exit
.label_286:
	mov	rax, qword ptr [rbp - 0x58]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	rax
.label_283:
	jmp	.label_284
.label_284:
	mov	eax, dword ptr [rbp - 0x60]
	mov	dword ptr [dword ptr [rip + opterr]],  eax
	add	rsp, 0x1d0
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403ad5
	.globl sub_403ad5
	.type sub_403ad5, @function
sub_403ad5:

	nop	word ptr [rax + rax]
.label_289:
	xor	edi, edi
	call	qword ptr [rbp - 0x58]
	jmp	.label_283
	.section	.text
	.align	16
	#Procedure 0x403ae5

	.globl parse_gnu_standard_options_only
	.type parse_gnu_standard_options_only, @function
parse_gnu_standard_options_only:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x1d0
	test	al, al
	movaps	xmmword ptr [rbp - 0x140], xmm7
	movaps	xmmword ptr [rbp - 0x150], xmm6
	movaps	xmmword ptr [rbp - 0x160], xmm5
	movaps	xmmword ptr [rbp - 0x170], xmm4
	movaps	xmmword ptr [rbp - 0x180], xmm3
	movaps	xmmword ptr [rbp - 0x190], xmm2
	movaps	xmmword ptr [rbp - 0x1a0], xmm1
	movaps	xmmword ptr [rbp - 0x1b0], xmm0
	mov	dword ptr [rbp - 0x1b4], edi
	mov	dword ptr [rbp - 0x1b8], r9d
	mov	qword ptr [rbp - 0x1c0], r8
	mov	qword ptr [rbp - 0x1c8], rcx
	mov	qword ptr [rbp - 0x1d0], rdx
	mov	qword ptr [rbp - 0x1d8], rsi
	je	.label_287
	movaps	xmm0, xmmword ptr [rbp - 0x1b0]
	movaps	xmmword ptr [rbp - 0x100], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x1a0]
	movaps	xmmword ptr [rbp - 0xf0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x190]
	movaps	xmmword ptr [rbp - 0xe0], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x180]
	movaps	xmmword ptr [rbp - 0xd0], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x170]
	movaps	xmmword ptr [rbp - 0xc0], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0x150]
	movaps	xmmword ptr [rbp - 0xa0], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm7
.label_287:
	mov	eax, dword ptr [rbp - 0x1b8]
	mov	cl, al
	mov	rdx, qword ptr [rbp + 0x10]
	mov	rsi, qword ptr [rbp - 0x1c0]
	mov	rdi, qword ptr [rbp - 0x1c8]
	mov	r8, qword ptr [rbp - 0x1d0]
	mov	r9, qword ptr [rbp - 0x1d8]
	mov	r10d, dword ptr [rbp - 0x1b4]
	movabs	r11, OFFSET FLAT:long_options
	xor	ebx, ebx
	mov	r14d, ebx
	movabs	r15, OFFSET FLAT:label_277
	movabs	r12, OFFSET FLAT:label_285
	mov	dword ptr [rbp - 0x24], r10d
	mov	qword ptr [rbp - 0x30], r9
	mov	qword ptr [rbp - 0x38], r8
	mov	qword ptr [rbp - 0x40], rdi
	mov	qword ptr [rbp - 0x48], rsi
	and	cl, 1
	mov	byte ptr [rbp - 0x49], cl
	mov	qword ptr [rbp - 0x58], rdx
	mov	r10d,  dword ptr [dword ptr [opterr]]
	mov	dword ptr [rbp - 0x60], r10d
	mov	dword ptr [dword ptr [opterr]],  1
	mov	cl, byte ptr [rbp - 0x49]
	test	cl, 1
	cmovne	r15, r12
	mov	qword ptr [rbp - 0x68], r15
	mov	edi, dword ptr [rbp - 0x24]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rcx, r11
	mov	r8, r14
	call	getopt_long
	mov	dword ptr [rbp - 0x5c], eax
	cmp	eax, -1
	je	.label_284
	mov	eax, dword ptr [rbp - 0x5c]
	mov	ecx, eax
	sub	ecx, 0x68
	mov	dword ptr [rbp - 0x1dc], eax
	mov	dword ptr [rbp - 0x1e0], ecx
	je	.label_289
	jmp	.label_290
.label_290:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x76
	mov	dword ptr [rbp - 0x1e4], eax
	je	.label_288
	jmp	.label_286
	.section	.text
	.align	16
	#Procedure 0x403cc0
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_291
	jmp	.label_293
.label_293:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_292
.label_291:
	mov	byte ptr [rbp - 1], 0
.label_292:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403cf2
	.globl sub_403cf2
	.type sub_403cf2, @function
sub_403cf2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d00

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	esi, eax
	mov	dword ptr [rbp - 4], edi
	mov	byte ptr [rbp - 5], 1
	mov	edi, dword ptr [rbp - 4]
	call	setlocale
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_294
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_297
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_298
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_296
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_295
.label_298:
	mov	byte ptr [rbp - 5], 0
.label_295:
	jmp	.label_294
.label_294:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403d73
	.globl sub_403d73
	.type sub_403d73, @function
sub_403d73:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d80

	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_299
	call	xalloc_die
.label_299:
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	xrealloc
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403dd0

	.globl close_stream
	.type close_stream, @function
close_stream:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	call	__fpending
	cmp	rax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x11], cl
	mov	rdi, qword ptr [rbp - 0x10]
	call	ferror_unlocked
	cmp	eax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x12], cl
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fclose
	cmp	eax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x13], cl
	test	byte ptr [rbp - 0x12], 1
	jne	.label_300
	test	byte ptr [rbp - 0x13], 1
	je	.label_301
	test	byte ptr [rbp - 0x11], 1
	jne	.label_300
	call	__errno_location
	cmp	dword ptr [rax], 9
	je	.label_301
.label_300:
	test	byte ptr [rbp - 0x13], 1
	jne	.label_302
	call	__errno_location
	mov	dword ptr [rax], 0
.label_302:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_303
.label_301:
	mov	dword ptr [rbp - 4], 0
.label_303:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403e79
	.globl sub_403e79
	.type sub_403e79, @function
sub_403e79:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403e80

	.globl detect_loop
	.type detect_loop, @function
detect_loop:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rdi + 0x20], 0
	jbe	.label_304
	cmp	qword ptr [word ptr [loop]],  0
	jne	.label_309
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [word ptr [loop]],  rax
	jmp	.label_313
.label_307:
	mov	rax,  qword ptr [word ptr [loop]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [word ptr [loop]],  rax
	jmp	.label_314
.label_309:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x30
	mov	qword ptr [rbp - 0x18], rax
.label_305:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	je	.label_314
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax]
	cmp	rax,  qword ptr [word ptr [loop]]
	jne	.label_316
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x28], 0
	je	.label_307
	jmp	.label_306
.label_306:
	cmp	qword ptr [word ptr [loop]],  0
	je	.label_311
	xor	eax, eax
	movabs	rdx, OFFSET FLAT:label_44
	mov	rcx,  qword ptr [word ptr [loop]]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx,  qword ptr [word ptr [loop]]
	mov	rcx, qword ptr [rcx]
	mov	edi, eax
	mov	esi, eax
	mov	al, 0
	call	error
	mov	rcx,  qword ptr [word ptr [loop]]
	cmp	rcx, qword ptr [rbp - 0x10]
	jne	.label_312
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, -1
	mov	qword ptr [rax + 0x20], rcx
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	jmp	.label_311
.label_312:
	mov	rax,  qword ptr [word ptr [loop]]
	mov	qword ptr [rax + 0x28], 0
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [word ptr [loop]],  rax
	jmp	.label_306
.label_316:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	add	rax, 8
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_305
.label_311:
	jmp	.label_308
.label_308:
	cmp	qword ptr [word ptr [loop]],  0
	je	.label_315
	mov	rax,  qword ptr [word ptr [loop]]
	mov	rax, qword ptr [rax + 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax,  qword ptr [word ptr [loop]]
	mov	qword ptr [rax + 0x28], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [word ptr [loop]],  rax
	jmp	.label_308
.label_315:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_310
.label_314:
	jmp	.label_313
.label_313:
	jmp	.label_304
.label_304:
	mov	byte ptr [rbp - 1], 0
.label_310:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404041
	.globl sub_404041
	.type sub_404041, @function
sub_404041:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404050

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	edi, 0xe
	call	rpl_nl_langinfo
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	jne	.label_317
	movabs	rax, OFFSET FLAT:label_285
	mov	qword ptr [rbp - 8], rax
.label_317:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_318
	movabs	rax, OFFSET FLAT:label_319
	mov	qword ptr [rbp - 8], rax
.label_318:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4040a7
	.globl sub_4040a7
	.type sub_4040a7, @function
sub_4040a7:

	nop	word ptr [rax + rax]
.label_328:
	jmp	.label_324
.label_324:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x10]
	call	rax
	test	al, 1
	jne	.label_327
	jmp	.label_322
.label_327:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_323
.label_329:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	je	.label_324
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 8]
	mov	rsi, qword ptr [rbp - 0x18]
	call	recurse_tree
	test	al, 1
	jne	.label_330
	jmp	.label_328
.label_330:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_323
.label_322:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	je	.label_320
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	recurse_tree
	test	al, 1
	jne	.label_326
	jmp	.label_325
.label_326:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_323
.label_325:
	jmp	.label_320
.label_320:
	jmp	.label_321
.label_321:
	mov	byte ptr [rbp - 1], 0
.label_323:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40415d
	.globl sub_40415d
	.type sub_40415d, @function
sub_40415d:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40415e

	.globl recurse_tree
	.type recurse_tree, @function
recurse_tree:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rsi + 8], 0
	jne	.label_329
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_329
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x10]
	call	rax
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_323
.label_342:
	test	byte ptr [rbp - 0x1a], 1
	je	.label_346
	mov	edi, 1
	call	protect_fd
	test	al, 1
	jne	.label_346
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_332
.label_331:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	rpl_freopen
	mov	qword ptr [rbp - 0x18], rax
.label_338:
	jmp	.label_332
.label_332:
	jmp	.label_334
.label_334:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x20], ecx
	test	byte ptr [rbp - 0x1b], 1
	je	.label_335
	mov	edi, 2
	call	close
	mov	dword ptr [rbp - 0x30], eax
.label_335:
	test	byte ptr [rbp - 0x1a], 1
	je	.label_337
	mov	edi, 1
	call	close
	mov	dword ptr [rbp - 0x34], eax
.label_337:
	test	byte ptr [rbp - 0x19], 1
	je	.label_333
	xor	edi, edi
	call	close
	mov	dword ptr [rbp - 0x38], eax
.label_333:
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_336
	mov	eax, dword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 0x3c], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x3c]
	mov	dword ptr [rax], ecx
.label_336:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404259
	.globl sub_404259
	.type sub_404259, @function
sub_404259:

	nop	dword ptr [rax]
.label_346:
	test	byte ptr [rbp - 0x1b], 1
	je	.label_331
	mov	edi, 2
	call	protect_fd
	test	al, 1
	jne	.label_331
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_338
	.section	.text
	.align	16
	#Procedure 0x404285

	.globl freopen_safer
	.type freopen_safer, @function
freopen_safer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rbp - 0x19], 0
	mov	byte ptr [rbp - 0x1a], 0
	mov	byte ptr [rbp - 0x1b], 0
	mov	rdi, qword ptr [rbp - 0x18]
	call	fileno
	mov	ecx, eax
	test	eax, eax
	mov	dword ptr [rbp - 0x24], ecx
	je	.label_340
	jmp	.label_350
.label_350:
	mov	eax, dword ptr [rbp - 0x24]
	sub	eax, 1
	mov	dword ptr [rbp - 0x28], eax
	je	.label_339
	jmp	.label_343
.label_343:
	mov	eax, dword ptr [rbp - 0x24]
	sub	eax, 2
	mov	dword ptr [rbp - 0x2c], eax
	je	.label_341
	jmp	.label_347
.label_347:
	mov	eax, 2
	mov	edi, eax
	mov	esi, eax
	call	dup2
	cmp	eax, 2
	je	.label_349
	mov	byte ptr [rbp - 0x1b], 1
.label_349:
	jmp	.label_341
.label_341:
	mov	eax, 1
	mov	edi, eax
	mov	esi, eax
	call	dup2
	cmp	eax, 1
	je	.label_344
	mov	byte ptr [rbp - 0x1a], 1
.label_344:
	jmp	.label_339
.label_339:
	xor	eax, eax
	mov	edi, eax
	mov	esi, eax
	call	dup2
	cmp	eax, 0
	je	.label_348
	mov	byte ptr [rbp - 0x19], 1
.label_348:
	jmp	.label_340
.label_340:
	jmp	.label_345
.label_345:
	test	byte ptr [rbp - 0x19], 1
	je	.label_342
	xor	edi, edi
	call	protect_fd
	test	al, 1
	jne	.label_342
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_334
.label_352:
	mov	byte ptr [rbp - 1], 0
.label_353:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40437e
	.globl sub_40437e
	.type sub_40437e, @function
sub_40437e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40438c
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_352
	jmp	.label_351
.label_351:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_353
	.section	.text
	.align	16
	#Procedure 0x4043b0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_355:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_357
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_355
.label_357:
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 8], rax
	je	.label_358
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	qword ptr [word ptr [label_356]],  rax
.label_358:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_354
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_354:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404484
	.globl sub_404484
	.type sub_404484, @function
sub_404484:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404490

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	lea	rax, [rbp - 0x80]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	qword ptr [rbp - 0x10], rdx
	mov	esi, dword ptr [rbp - 8]
	mov	rdi, rax
	call	quoting_options_from_style
	lea	rax, [rbp - 0x48]
	mov	esi, 0x3a
	mov	edx, 1
	mov	ecx, 0x38
	mov	edi, ecx
	lea	r8, [rbp - 0x80]
	mov	r9, rax
	mov	qword ptr [rbp - 0x88], rdi
	mov	rdi, r9
	mov	dword ptr [rbp - 0x8c], esi
	mov	rsi, r8
	mov	r8, qword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x90], edx
	mov	rdx, r8
	mov	qword ptr [rbp - 0x98], rax
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x98]
	mov	esi, dword ptr [rbp - 0x8c]
	mov	edx, dword ptr [rbp - 0x90]
	call	set_char_quoting
	mov	rdx, -1
	lea	rcx, [rbp - 0x48]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x9c], eax
	call	quotearg_n_options
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40453d
	.globl sub_40453d
	.type sub_40453d, @function
sub_40453d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404540
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], 0
.label_361:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_359
	jmp	.label_360
.label_360:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_361
.label_359:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x28]
	mov	r9, qword ptr [rbp - 0x30]
	call	version_etc_arn
	add	rsp, 0x30
	pop	rbp
	ret	
.label_370:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_369
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_369:
	movabs	rdi, OFFSET FLAT:label_364
	call	gettext
	movabs	rsi, OFFSET FLAT:label_262
	movabs	rdx, OFFSET FLAT:label_263
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	edi, 5
	xor	ecx, ecx
	mov	esi, ecx
	mov	dword ptr [rbp - 0x28], eax
	call	setlocale
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_363
	movabs	rsi, OFFSET FLAT:label_366
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_363
	movabs	rdi, OFFSET FLAT:label_371
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_363:
	movabs	rdi, OFFSET FLAT:label_367
	call	gettext
	movabs	rsi, OFFSET FLAT:label_263
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_362
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:label_285
	movabs	rsi, OFFSET FLAT:label_365
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rcx, qword ptr [rbp - 8]
	cmove	rdx, rsi
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x38]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x3c], eax
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4046d5
	.globl sub_4046d5
	.type sub_4046d5, @function
sub_4046d5:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4046dc

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rax
.label_373:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_372
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_372:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_368
	jmp	.label_370
.label_368:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_373
	.section	.text
	.align	16
	#Procedure 0x404750

	.globl new_item
	.type new_item, @function
new_item:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	eax, 0x38
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, rcx
	call	xmalloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 8], 0
	je	.label_375
	mov	rdi, qword ptr [rbp - 8]
	call	xstrdup
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_374
.label_375:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_374
.label_374:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0x18], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x20], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x28], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x30], 0
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4047f5
	.globl sub_4047f5
	.type sub_4047f5, @function
sub_4047f5:

	nop	word ptr cs:[rax + rax]
.label_377:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_376
.label_376:
	mov	rax, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40481b
	.globl sub_40481b
	.type sub_40481b, @function
sub_40481b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404820
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_377
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_376
	.section	.text
	.align	16
	#Procedure 0x404840
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [file_name]],  rdi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404856
	.globl sub_404856
	.type sub_404856, @function
sub_404856:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404860

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_378
	jmp	.label_382
.label_382:
	movabs	rdi, OFFSET FLAT:label_383
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_379
.label_378:
	movabs	rdi, OFFSET FLAT:label_381
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x18], eax
	call	emit_stdin_note
	movabs	rdi, OFFSET FLAT:label_385
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_384
	mov	dword ptr [rbp - 0x1c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_386
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_380
	mov	dword ptr [rbp - 0x24], eax
	call	emit_ancillary_info
.label_379:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	16
	#Procedure 0x404959
	.globl sub_404959
	.type sub_404959, @function
sub_404959:

	nop	dword ptr [rax]
.label_390:
	mov	byte ptr [rbp - 1], 1
.label_389:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404972
	.globl sub_404972
	.type sub_404972, @function
sub_404972:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404976

	.globl protect_fd
	.type protect_fd, @function
protect_fd:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rax, OFFSET FLAT:label_387
	xor	esi, esi
	mov	dword ptr [rbp - 8], edi
	mov	rdi, rax
	mov	al, 0
	call	open
	mov	dword ptr [rbp - 0xc], eax
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax, dword ptr [rbp - 8]
	je	.label_390
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0xc]
	jg	.label_388
	mov	edi, dword ptr [rbp - 0xc]
	call	close
	mov	dword ptr [rbp - 0x10], eax
	call	__errno_location
	mov	dword ptr [rax], 9
.label_388:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_389
.label_395:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_393:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cmp	rax, 7
	jl	.label_392
	movabs	rsi, OFFSET FLAT:label_394
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, -7
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_392
	movabs	rsi, OFFSET FLAT:label_396
	mov	eax, 3
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_391
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname]],  rax
.label_391:
	jmp	.label_392
.label_392:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404a85
	.globl sub_404a85
	.type sub_404a85, @function
sub_404a85:

	nop	dword ptr [rax]
.label_398:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	call	strrchr
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_395
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_393
	.section	.text
	.align	16
	#Procedure 0x404aba

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_398
	movabs	rdi, OFFSET FLAT:label_397
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x1c], eax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404af0
	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	call	quotearg_n_style
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404b15
	.globl sub_404b15
	.type sub_404b15, @function
sub_404b15:

	nop	word ptr cs:[rax + rax]
.label_401:
	lea	rsi, [rbp - 0x70]
	movsxd	rdi, dword ptr [rbp - 0x34]
	call	get_nth_bit
	test	al, 1
	jne	.label_402
	jmp	.label_404
.label_402:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	byte ptr [rcx + rax], 0
	jmp	.label_400
.label_404:
	mov	eax, dword ptr [rbp - 0x34]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rbp - 0x40], rsi
	mov	rsi, qword ptr [rbp - 0x30]
	mov	byte ptr [rsi + rdx], cl
	mov	rdi, qword ptr [rbp - 0x10]
	call	getc_unlocked
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_403
.label_399:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x48]
	jne	.label_405
	lea	rsi, [rbp - 0x48]
	mov	eax, 1
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x30]
	call	x2nrealloc
	mov	qword ptr [rbp - 0x30], rax
.label_405:
	cmp	dword ptr [rbp - 0x34], 0
	jge	.label_401
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	byte ptr [rcx + rax], 0
	jmp	.label_400
.label_410:
	mov	rdi, qword ptr [rbp - 0x10]
	call	getc_unlocked
	mov	dword ptr [rbp - 0x34], eax
.label_407:
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x34], 0
	mov	byte ptr [rbp - 0x72], cl
	jl	.label_408
	lea	rsi, [rbp - 0x70]
	movsxd	rdi, dword ptr [rbp - 0x34]
	call	get_nth_bit
	mov	byte ptr [rbp - 0x72], al
.label_408:
	mov	al, byte ptr [rbp - 0x72]
	test	al, 1
	jne	.label_409
	jmp	.label_412
.label_409:
	jmp	.label_413
.label_413:
	mov	rdi, qword ptr [rbp - 0x10]
	call	getc_unlocked
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_407
.label_400:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
.label_406:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404c37
	.globl sub_404c37
	.type sub_404c37, @function
sub_404c37:

	nop	word ptr cs:[rax + rax]
.label_412:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x48], rax
	mov	qword ptr [rbp - 0x40], 0
.label_403:
	cmp	dword ptr [rbp - 0x34], 0
	jge	.label_399
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_399
	mov	qword ptr [rbp - 8], -1
	jmp	.label_406
	.section	.text
	.align	16
	#Procedure 0x404c87

	.globl readtoken
	.type readtoken, @function
readtoken:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	xor	eax, eax
	mov	r8d, 0x20
	mov	r9d, r8d
	lea	r10, [rbp - 0x70]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rdi, r10
	mov	esi, eax
	mov	rdx, r9
	call	memset
	mov	qword ptr [rbp - 0x40], 0
.label_411:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_410
	lea	rsi, [rbp - 0x70]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 0x71], dl
	movzx	edi, byte ptr [rbp - 0x71]
	call	set_nth_bit
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_411
.label_416:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x90], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_414
	.section	.text
	.align	16
	#Procedure 0x404d26

	.globl rpl_fseeko
	.type rpl_fseeko, @function
rpl_fseeko:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x10]
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rsi, qword ptr [rdi + 8]
	jne	.label_415
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_415
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_415
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_416
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_414
.label_415:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fseeko
	mov	dword ptr [rbp - 4], eax
.label_414:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404dc2
	.globl sub_404dc2
	.type sub_404dc2, @function
sub_404dc2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404dd0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404deb
	.globl sub_404deb
	.type sub_404deb, @function
sub_404deb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404df0

	.globl sub_404df0
	.type sub_404df0, @function
sub_404df0:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_417
.label_419:
	mov	byte ptr [rbp - 1], 0
.label_417:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404e07
	.globl sub_404e07
	.type sub_404e07, @function
sub_404e07:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e16
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	mov	eax, edi
	sub	edi, 0x5d
	mov	qword ptr [rbp - 0x10], rax
	mov	dword ptr [rbp - 0x14], edi
	ja	.label_419
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_418]]
	jmp	rcx
.label_426:
	cmp	qword ptr [rbp - 8], 0
	je	.label_420
	mov	rdi, qword ptr [rbp - 0x20]
	call	fileno
	mov	dword ptr [rbp - 0x2c], eax
	mov	edi, dword ptr [rbp - 0x2c]
	mov	esi, dword ptr [rbp - 0x2c]
	call	dup2
	cmp	eax, 0
	jge	.label_424
	call	__errno_location
	cmp	dword ptr [rax], 9
	jne	.label_424
	mov	esi, 0x80000
	mov	rdi, qword ptr [rbp - 0x28]
	mov	al, 0
	call	open
	mov	dword ptr [rbp - 0x30], eax
	mov	dword ptr [rbp - 0x34], 0
	mov	eax, dword ptr [rbp - 0x30]
	cmp	eax, dword ptr [rbp - 0x2c]
	je	.label_422
	mov	edi, dword ptr [rbp - 0x30]
	mov	esi, dword ptr [rbp - 0x2c]
	call	dup2
	cmp	eax, 0
	jge	.label_425
	mov	dword ptr [rbp - 0x34], 1
.label_425:
	mov	edi, dword ptr [rbp - 0x30]
	call	close
	mov	dword ptr [rbp - 0x38], eax
.label_422:
	cmp	dword ptr [rbp - 0x34], 0
	jne	.label_421
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x20]
	call	orig_freopen
	mov	qword ptr [rbp - 0x20], rax
.label_421:
	jmp	.label_424
.label_424:
	jmp	.label_420
.label_420:
	jmp	.label_423
.label_423:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404efd
	.globl sub_404efd
	.type sub_404efd, @function
sub_404efd:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f09

	.globl rpl_freopen
	.type rpl_freopen, @function
rpl_freopen:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:label_387
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	orig_freopen
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_426
	jmp	.label_423
	.section	.text
	.align	16
	#Procedure 0x404f50

	.globl get_nth_bit
	.type get_nth_bit, @function
get_nth_bit:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	shr	rsi, 6
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rdi + rsi*8]
	mov	rdi, qword ptr [rbp - 8]
	and	rdi, 0x3f
	mov	rcx, rdi
	shr	rsi, cl
	and	rsi, 1
	cmp	rsi, 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404f8d
	.globl sub_404f8d
	.type sub_404f8d, @function
sub_404f8d:

	nop	dword ptr [rax]
.label_433:
	mov	eax,  dword ptr [dword ptr [optind]]
	cmp	eax, dword ptr [rbp - 0x10]
	jne	.label_427
	movabs	rax, OFFSET FLAT:label_428
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_429
.label_427:
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x68], rax
.label_429:
	mov	rax, qword ptr [rbp - 0x68]
	mov	rdi, rax
	call	tsort
	mov	ecx, 1
	xor	edx, edx
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	al, byte ptr [rbp - 0x19]
	test	al, 1
	cmovne	ecx, edx
	mov	eax, ecx
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404ff0
	.globl sub_404ff0
	.type sub_404ff0, @function
sub_404ff0:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404ff4

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x78
	mov	dword ptr [rbp - 0xc], 0
	mov	dword ptr [rbp - 0x10], edi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:label_285
	call	setlocale
	movabs	rdi, OFFSET FLAT:label_430
	movabs	rsi, OFFSET FLAT:label_431
	mov	qword ptr [rbp - 0x28], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:label_430
	mov	qword ptr [rbp - 0x30], rax
	call	textdomain
	movabs	rdi, OFFSET FLAT:close_stdout
	mov	qword ptr [rbp - 0x38], rax
	call	atexit
	movabs	rdx, OFFSET FLAT:label_380
	movabs	rcx, OFFSET FLAT:label_262
	mov	r9d, 1
	movabs	rsi, OFFSET FLAT:usage
	movabs	rdi, OFFSET FLAT:label_434
	xor	r8d, r8d
	mov	r10d, r8d
	mov	r8d, dword ptr [rbp - 0x10]
	mov	r11, qword ptr [rbp - 0x18]
	mov	rbx,  qword ptr [word ptr [Version]]
	mov	qword ptr [rbp - 0x40], rdi
	mov	edi, r8d
	mov	qword ptr [rbp - 0x48], rsi
	mov	rsi, r11
	mov	r8, rbx
	mov	r11, qword ptr [rbp - 0x48]
	mov	qword ptr [rsp], r11
	mov	rbx, qword ptr [rbp - 0x40]
	mov	qword ptr [rsp + 8], rbx
	mov	qword ptr [rsp + 0x10], 0
	mov	dword ptr [rbp - 0x4c], eax
	mov	al, 0
	mov	qword ptr [rbp - 0x58], r10
	call	parse_gnu_standard_options_only
	mov	edi, 1
	mov	r9d, dword ptr [rbp - 0x10]
	sub	r9d,  dword ptr [dword ptr [optind]]
	cmp	edi, r9d
	jge	.label_433
	movabs	rdi, OFFSET FLAT:label_432
	call	gettext
	mov	ecx,  dword ptr [dword ptr [optind]]
	add	ecx, 1
	movsxd	rdi, ecx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rdx + rdi*8]
	mov	qword ptr [rbp - 0x60], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_453:
	movabs	rsi, OFFSET FLAT:label_446
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_442:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:label_450
	mov	ecx, eax
	mov	qword ptr [rbp - 0x50], rdi
	mov	rdi, rcx
	call	gettext
	mov	edx, OFFSET FLAT:version_etc_copyright
	mov	esi, edx
	xor	edx, edx
	mov	r8b, dl
	mov	ecx, 0x7e3
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rdx, rax
	mov	al, r8b
	call	fprintf
	mov	ecx, OFFSET FLAT:label_447
	mov	edi, ecx
	mov	dword ptr [rbp - 0x54], eax
	call	gettext
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rsi, rdx
	sub	rsi, 9
	mov	dword ptr [rbp - 0x58], eax
	mov	qword ptr [rbp - 0x60], rdx
	mov	qword ptr [rbp - 0x68], rsi
	ja	.label_437
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_445]]
	jmp	rcx
.label_698:
	movabs	rdi, OFFSET FLAT:label_448
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x90], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x90]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x94], eax
	jmp	.label_436
.label_699:
	movabs	rdi, OFFSET FLAT:label_452
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xa0], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xa4], eax
	jmp	.label_436
.label_437:
	movabs	rdi, OFFSET FLAT:label_441
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x148], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x38]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x38]
	mov	rbx, qword ptr [rbx + 0x40]
	mov	r14, qword ptr [rbp - 0x148]
	mov	qword ptr [rbp - 0x150], rdi
	mov	rdi, r14
	mov	qword ptr [rbp - 0x158], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x150]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0x158]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	mov	qword ptr [rsp + 0x20], rbx
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x15c], eax
.label_436:
	add	rsp, 0x180
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405349
	.globl sub_405349
	.type sub_405349, @function
sub_405349:

	nop	
.label_703:
	movabs	rdi, OFFSET FLAT:label_435
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x108], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x38]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x110], rdi
	mov	rdi, rbx
	mov	qword ptr [rbp - 0x118], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0x118]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x11c], eax
	jmp	.label_436
.label_702:
	movabs	rdi, OFFSET FLAT:label_451
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xe8], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0xf0], rdi
	mov	rdi, r11
	mov	qword ptr [rbp - 0xf8], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xf0]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0xf8]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xfc], eax
	jmp	.label_436
.label_697:
	movabs	rdi, OFFSET FLAT:label_440
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x80], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_436
.label_696:
	movabs	rdi, OFFSET FLAT:label_439
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x74], eax
	jmp	.label_436
	.section	.text
	.align	16
	#Procedure 0x4054fe

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	push	rbp
	mov	rbp, rsp
	push	r14
	push	rbx
	sub	rsp, 0x180
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	qword ptr [rbp - 0x38], r8
	mov	qword ptr [rbp - 0x40], r9
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_453
	movabs	rsi, OFFSET FLAT:label_449
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_442
.label_695:
	jmp	.label_436
.label_704:
	movabs	rdi, OFFSET FLAT:label_444
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x128], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x38]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x38]
	mov	rbx, qword ptr [rbx + 0x40]
	mov	r14, qword ptr [rbp - 0x128]
	mov	qword ptr [rbp - 0x130], rdi
	mov	rdi, r14
	mov	qword ptr [rbp - 0x138], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x130]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0x138]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	mov	qword ptr [rsp + 0x20], rbx
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x13c], eax
	jmp	.label_436
.label_700:
	movabs	rdi, OFFSET FLAT:label_443
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xb0], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0xb8], rdi
	mov	rdi, rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rsp], rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xbc], eax
	jmp	.label_436
.label_701:
	movabs	rdi, OFFSET FLAT:label_438
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xc8], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0xd0], rdi
	mov	rdi, r10
	mov	qword ptr [rbp - 0xd8], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rsp + 8], rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xdc], eax
	jmp	.label_436
.label_455:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_459
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x405732

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	close_stream
	cmp	eax, 0
	je	.label_455
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_457
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	je	.label_455
.label_457:
	movabs	rdi, OFFSET FLAT:label_456
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_458
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_460
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_454
.label_458:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_44
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	call	error
.label_454:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_459:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4057f7
	.globl sub_4057f7
	.type sub_4057f7, @function
sub_4057f7:

	nop	
	nop	dword ptr [rax + rax]
.label_463:
	jmp	.label_461
	.section	.text
	.align	16
	#Procedure 0x405805

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x20], rdx
	cmp	qword ptr [rbp - 8], 0
	jne	.label_462
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_465
	mov	eax, 0x80
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	setne	sil
	xor	sil, 0xff
	and	sil, 1
	movzx	ecx, sil
	movsxd	rax, ecx
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_465:
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_463
	call	xalloc_die
.label_462:
	movabs	rax, 0x5555555555555554
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_464
	call	xalloc_die
.label_464:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_461:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x20]
	imul	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	xrealloc
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4058e7
	.globl sub_4058e7
	.type sub_4058e7, @function
sub_4058e7:

	nop	word ptr [rax + rax]
.label_467:
	mov	byte ptr [rbp - 1], 0
.label_468:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4058fe
	.globl sub_4058fe
	.type sub_4058fe, @function
sub_4058fe:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40590c
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_467
	jmp	.label_466
.label_466:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_468
.label_470:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_469
.label_469:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, 0x38
	mov	esi, ecx
	mov	rdi, rax
	call	xmemdup
	mov	qword ptr [rbp - 0x18], rax
	mov	ecx, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x24], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x24]
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405974
	.globl sub_405974
	.type sub_405974, @function
sub_405974:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405982
	.globl clone_quoting_options
	.type clone_quoting_options, @function
clone_quoting_options:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0xc], ecx
	cmp	qword ptr [rbp - 8], 0
	je	.label_470
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_469
.label_472:
	mov	byte ptr [rbp - 1], 0
.label_473:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4059be
	.globl sub_4059be
	.type sub_4059be, @function
sub_4059be:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4059c0
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_471
	jmp	.label_474
.label_474:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_472
	jmp	.label_471
.label_471:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_473
.label_475:
	mov	eax, 0x38
	mov	edx, eax
	lea	rcx, [rbp - 0x40]
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0x40], eax
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdi, rsi
	mov	rsi, rcx
	call	memcpy
	mov	rax, qword ptr [rbp - 0x50]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405a2a
	.globl sub_405a2a
	.type sub_405a2a, @function
sub_405a2a:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405a36

	.globl quoting_options_from_style
	.type quoting_options_from_style, @function
quoting_options_from_style:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rax, rdi
	xor	ecx, ecx
	mov	edx, 0x38
	lea	r8, [rbp - 0x40]
	mov	dword ptr [rbp - 4], esi
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, r8
	mov	esi, ecx
	mov	qword ptr [rbp - 0x50], rax
	call	memset
	cmp	dword ptr [rbp - 4], 0xa
	jne	.label_475
	call	abort
.label_477:
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_481
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x31], cl
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	jge	.label_476
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405aaf

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	call	__errno_location
	mov	edi, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], edi
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 0x30], rax
	cmp	dword ptr [rbp - 4], 0
	jge	.label_477
	call	abort
.label_476:
	test	byte ptr [rbp - 0x31], 1
	je	.label_480
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_483
.label_480:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_483:
	mov	rax, qword ptr [rbp - 0x60]
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	movsxd	rdx, ecx
	shl	rdx, 4
	mov	rdi, rax
	mov	rsi, rdx
	call	xrealloc
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [word ptr [slotvec]],  rax
	test	byte ptr [rbp - 0x31], 1
	je	.label_482
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_356]]
	mov	qword ptr [rax + 8], rcx
.label_482:
	xor	esi, esi
	mov	rax, qword ptr [rbp - 0x30]
	movsxd	rcx,  dword ptr [dword ptr [nslots]]
	shl	rcx, 4
	add	rax, rcx
	mov	edx, dword ptr [rbp - 4]
	add	edx, 1
	sub	edx,  dword ptr [dword ptr [nslots]]
	movsxd	rcx, edx
	shl	rcx, 4
	mov	rdi, rax
	mov	rdx, rcx
	call	memset
	mov	esi, dword ptr [rbp - 4]
	add	esi, 1
	mov	dword ptr [dword ptr [nslots]],  esi
.label_481:
	movsxd	rax, dword ptr [rbp - 4]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	movsxd	rax, dword ptr [rbp - 4]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 4]
	or	ecx, 1
	mov	dword ptr [rbp - 0x4c], ecx
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x4c]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x20]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x20]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x58]
	ja	.label_478
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	cmp	qword ptr [rbp - 0x48], rax
	je	.label_479
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_479:
	mov	rdi, qword ptr [rbp - 0x40]
	call	xcharalloc
	mov	qword ptr [rbp - 0x48], rax
	movsxd	rdi, dword ptr [rbp - 4]
	shl	rdi, 4
	add	rdi, qword ptr [rbp - 0x30]
	mov	qword ptr [rdi + 8], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x4c]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x20]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x20]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x68], rax
.label_478:
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x6c], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x6c]
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405ce3
	.globl sub_405ce3
	.type sub_405ce3, @function
sub_405ce3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405cf0

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rcx, OFFSET FLAT:default_quoting_options
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_n_options
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405d23
	.globl sub_405d23
	.type sub_405d23, @function
sub_405d23:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d30

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 8], 0
	jne	.label_484
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_484:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_486
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_485
.label_486:
	call	abort
.label_485:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x30], rax
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405da0
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	call	quotearg_n_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405dc7
	.globl sub_405dc7
	.type sub_405dc7, @function
sub_405dc7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405dd0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	push	rbp
	mov	rbp, rsp
	mov	al, dil
	and	al, 1
	mov	byte ptr [rbp - 1], al
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	mov	byte ptr [byte ptr [ignore_EPIPE]],  al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405dea
	.globl sub_405dea
	.type sub_405dea, @function
sub_405dea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405df0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	esi, 0x3a
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	quotearg_char
	add	rsp, 0x10
	pop	rbp
	ret	
.label_489:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_487
.label_487:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x30], rax
	call	__errno_location
	xor	ecx, ecx
	mov	edx, ecx
	mov	ecx, 1
	xor	esi, esi
	mov	edi, dword ptr [rax]
	mov	dword ptr [rbp - 0x34], edi
	mov	rax, qword ptr [rbp - 0x30]
	mov	edi, dword ptr [rax + 4]
	cmp	qword ptr [rbp - 0x20], 0
	cmovne	ecx, esi
	or	edi, ecx
	mov	dword ptr [rbp - 0x38], edi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [r8]
	mov	r9d, dword ptr [rbp - 0x38]
	mov	r10, qword ptr [rbp - 0x30]
	add	r10, 8
	mov	r11, qword ptr [rbp - 0x30]
	mov	r11, qword ptr [r11 + 0x28]
	mov	rbx, qword ptr [rbp - 0x30]
	mov	rbx, qword ptr [rbx + 0x30]
	mov	rdi, rdx
	mov	rsi, rdx
	mov	rdx, rax
	mov	qword ptr [rsp], r10
	mov	qword ptr [rsp + 8], r11
	mov	qword ptr [rsp + 0x10], rbx
	call	quotearg_buffer_restyled
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x40]
	call	xcharalloc
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x30]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x30]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	r8d, dword ptr [rbp - 0x34]
	mov	qword ptr [rbp - 0x58], rax
	mov	dword ptr [rbp - 0x5c], r8d
	call	__errno_location
	mov	r8d, dword ptr [rbp - 0x5c]
	mov	dword ptr [rax], r8d
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_488
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_488:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405f33
	.globl sub_405f33
	.type sub_405f33, @function
sub_405f33:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405f3f

	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x78
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_489
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_487
.label_493:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
.label_490:
	mov	eax, 8
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x60], rcx
	mov	rdi, qword ptr [rbp - 0x60]
	call	xnmalloc
	mov	edx, 8
	mov	esi, edx
	mov	qword ptr [rbp - 0x50], rax
	mov	rdi, qword ptr [rbp - 0x60]
	call	xnmalloc
	mov	qword ptr [rbp - 0x58], rax
	mov	qword ptr [rbp - 0x68], 0
	mov	rdi, qword ptr [rbp - 0x48]
	call	init_tokenbuffer
.label_496:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x48]
	call	readtoken
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rbp - 0x60]
	jb	.label_495
	lea	rsi, [rbp - 0x60]
	mov	eax, 8
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rdi, rcx
	call	x2nrealloc
	mov	r8d, 8
	mov	edx, r8d
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rdi, rax
	call	xnrealloc
	mov	qword ptr [rbp - 0x58], rax
.label_495:
	cmp	qword ptr [rbp - 0x78], -1
	jne	.label_492
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rcx + rax*8], 0
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	qword ptr [rcx + rax*8], 0
	jmp	.label_491
.label_492:
	mov	eax, 1
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x78]
	add	rcx, 1
	mov	rdi, rcx
	call	xnmalloc
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	qword ptr [rsi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x78]
	add	rcx, 1
	mov	rdi, rax
	mov	rdx, rcx
	mov	qword ptr [rbp - 0x80], rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rcx + rax*8], rdx
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_496
.label_491:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	qword ptr [rdi], rax
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_494
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx], rax
	jmp	.label_497
	.section	.text
	.align	16
	#Procedure 0x4060ee
	.globl readtokens
	.type readtokens, @function
readtokens:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	lea	rax, [rbp - 0x40]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], r9
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_493
	mov	qword ptr [rbp - 0x10], 0x40
	jmp	.label_490
.label_494:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rdi, rax
	call	free
.label_497:
	mov	rax, qword ptr [rbp - 0x68]
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40614a
	.globl sub_40614a
	.type sub_40614a, @function
sub_40614a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406150

	.globl quote_n
	.type quote_n, @function
quote_n:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdx, -1
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quote_n_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406178
	.globl sub_406178
	.type sub_406178, @function
sub_406178:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406180
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	xmalloc
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x10], rax
	call	memset
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4061b1
	.globl sub_4061b1
	.type sub_4061b1, @function
sub_4061b1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4061c0

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_498
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	pop	rbp
	ret	
.label_499:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4061fa
	.globl sub_4061fa
	.type sub_4061fa, @function
sub_4061fa:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4061fc

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	malloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_499
	cmp	qword ptr [rbp - 8], 0
	je	.label_499
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x406230

	.globl orig_freopen
	.type orig_freopen, @function
orig_freopen:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	freopen
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40625b
	.globl sub_40625b
	.type sub_40625b, @function
sub_40625b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406260

	.globl tsort
	.type tsort, @function
tsort:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], 1
	mov	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x28], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, OFFSET FLAT:label_428
	mov	esi, eax
	mov	qword ptr [rbp - 0x58], rcx
	call	strcmp
	cmp	eax, 0
	sete	dl
	and	dl, 1
	mov	byte ptr [rbp - 0x39], dl
	mov	rdi, qword ptr [rbp - 0x58]
	call	new_item
	mov	qword ptr [rbp - 0x18], rax
	test	byte ptr [rbp - 0x39], 1
	jne	.label_504
	movabs	rsi, OFFSET FLAT:label_508
	mov	rdi, qword ptr [rbp - 8]
	mov	rdx,  qword ptr [word ptr [stdin]]
	call	freopen_safer
	cmp	rax, 0
	jne	.label_504
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x5c], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_44
	mov	esi, dword ptr [rbp - 0x5c]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_517:
	mov	rax,  qword ptr [word ptr [head]]
	mov	rax, qword ptr [rax + 0x28]
	mov	qword ptr [word ptr [head]],  rax
	jmp	.label_502
.label_510:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406343
	.globl sub_406343
	.type sub_406343, @function
sub_406343:

	nop	dword ptr [rax]
.label_503:
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_511
	jmp	.label_513
.label_516:
	movabs	rsi, OFFSET FLAT:count_items
	mov	rdi, qword ptr [rbp - 0x18]
	call	walk_tree
.label_514:
	cmp	qword ptr [word ptr [n_strings]],  0
	jbe	.label_519
	movabs	rsi, OFFSET FLAT:scan_zeros
	mov	rdi, qword ptr [rbp - 0x18]
	call	walk_tree
.label_502:
	cmp	qword ptr [word ptr [head]],  0
	je	.label_501
	mov	rax,  qword ptr [word ptr [head]]
	mov	rax, qword ptr [rax + 0x30]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax,  qword ptr [word ptr [head]]
	mov	rdi, qword ptr [rax]
	call	puts
	mov	rdi,  qword ptr [word ptr [head]]
	mov	qword ptr [rdi], 0
	mov	rdi,  qword ptr [word ptr [n_strings]]
	add	rdi, -1
	mov	qword ptr [word ptr [n_strings]],  rdi
	mov	dword ptr [rbp - 0x6c], eax
.label_500:
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_517
	mov	rax, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, -1
	mov	qword ptr [rax + 0x20], rcx
	mov	rax, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rax]
	cmp	qword ptr [rax + 0x20], 0
	jne	.label_520
	mov	rax, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rax]
	mov	rcx,  qword ptr [word ptr [zeros]]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rax]
	mov	qword ptr [word ptr [zeros]],  rax
.label_520:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_500
.label_507:
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 8]
	call	quotearg_n_style_colon
	mov	qword ptr [rbp - 0x88], rax
.label_525:
	mov	rax, qword ptr [rbp - 0x88]
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_44
	mov	esi, dword ptr [rbp - 0x7c]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_511:
	movabs	rdi, OFFSET FLAT:label_521
	movabs	rsi, OFFSET FLAT:label_522
	mov	edx, 0x1cd
	movabs	rcx, OFFSET FLAT:label_523
	call	__assert_fail
.label_513:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x30]
	call	search_item
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_506
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	call	record_relation
	mov	qword ptr [rbp - 0x28], 0
.label_506:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_515
.label_501:
	cmp	qword ptr [word ptr [n_strings]],  0
	jbe	.label_512
	movabs	rdi, OFFSET FLAT:label_524
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x78], rax
	call	quotearg_n_style_colon
	xor	esi, esi
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 9], 0
.label_526:
	movabs	rsi, OFFSET FLAT:detect_loop
	mov	rdi, qword ptr [rbp - 0x18]
	call	walk_tree
	cmp	qword ptr [word ptr [loop]],  0
	jne	.label_526
	jmp	.label_512
.label_512:
	jmp	.label_514
.label_505:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_516
	movabs	rdi, OFFSET FLAT:label_518
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x68], rax
	call	quotearg_n_style_colon
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_519:
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	rpl_fclose
	cmp	eax, 0
	je	.label_510
	call	__errno_location
	mov	esi, dword ptr [rax]
	test	byte ptr [rbp - 0x39], 1
	mov	dword ptr [rbp - 0x7c], esi
	je	.label_507
	movabs	rdi, OFFSET FLAT:label_509
	call	gettext
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_525
.label_504:
	mov	esi, 2
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	fadvise
	lea	rdi, [rbp - 0x38]
	call	init_tokenbuffer
.label_515:
	movabs	rsi, OFFSET FLAT:label_527
	mov	eax, 3
	mov	edx, eax
	lea	rcx, [rbp - 0x38]
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	readtoken
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], -1
	jne	.label_503
	jmp	.label_505
.label_533:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 8], rax
.label_539:
	mov	rax, qword ptr [rbp - 0x30]
	mov	dword ptr [rax + 0x18], 0
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax + 0x18], 0
	jmp	.label_554
.label_529:
	movabs	rdi, OFFSET FLAT:label_561
	movabs	rsi, OFFSET FLAT:label_522
	mov	edx, 0xa8
	movabs	rcx, OFFSET FLAT:label_544
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x40668f

	.globl search_item
	.type search_item, @function
search_item:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_534
	jmp	.label_541
.label_534:
	movabs	rdi, OFFSET FLAT:label_543
	movabs	rsi, OFFSET FLAT:label_522
	mov	edx, 0x84
	movabs	rcx, OFFSET FLAT:label_544
	call	__assert_fail
.label_536:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x38], rax
.label_538:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rax]
	call	strcmp
	mov	dword ptr [rbp - 0x44], eax
	cmp	dword ptr [rbp - 0x44], 0
	jne	.label_566
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_545
.label_547:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rcx + 0x18]
	sub	eax, dword ptr [rbp - 0x44]
	cmp	edx, eax
	jne	.label_537
	mov	eax, dword ptr [rbp - 0x44]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	dword ptr [rcx + 0x18], eax
.label_537:
	jmp	.label_546
.label_546:
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax + 0x18], 0
.label_554:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rcx + 0x10]
	jne	.label_552
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rcx + 0x10], rax
	jmp	.label_557
.label_556:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x30], rax
	mov	dword ptr [rbp - 0x44], 1
.label_558:
	jmp	.label_528
.label_528:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x28]
	je	.label_530
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	je	.label_540
	jmp	.label_542
.label_542:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	jge	.label_532
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax + 0x18], 0xffffffff
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_553
.label_535:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x10], rax
.label_548:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	je	.label_529
	jmp	.label_531
.label_564:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	dword ptr [rax + 0x18], 0
	je	.label_560
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
.label_560:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_538
.label_566:
	cmp	dword ptr [rbp - 0x44], 0
	jge	.label_549
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_551
.label_552:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rcx + 8], rax
.label_557:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_545
.label_540:
	movabs	rdi, OFFSET FLAT:label_562
	movabs	rsi, OFFSET FLAT:label_522
	mov	edx, 0xb6
	movabs	rcx, OFFSET FLAT:label_544
	call	__assert_fail
.label_541:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_536
	mov	rdi, qword ptr [rbp - 0x18]
	call	new_item
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0x10], rax
	mov	qword ptr [rbp - 8], rax
	jmp	.label_545
.label_531:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	jge	.label_556
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x30], rax
	mov	dword ptr [rbp - 0x44], 0xffffffff
	jmp	.label_558
.label_559:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 8], rax
.label_563:
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax + 0x18], 0
	mov	rax, qword ptr [rbp - 0x30]
	mov	dword ptr [rax + 0x18], 0
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 0x18]
	cmp	ecx, dword ptr [rbp - 0x44]
	jne	.label_547
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x44]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	dword ptr [rcx + 0x18], eax
	jmp	.label_546
.label_549:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x28], rax
.label_551:
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_564
	mov	rdi, qword ptr [rbp - 0x18]
	call	new_item
	mov	qword ptr [rbp - 0x28], rax
	cmp	dword ptr [rbp - 0x44], 0
	jge	.label_535
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 8], rax
	jmp	.label_548
.label_545:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4069ba
	.globl sub_4069ba
	.type sub_4069ba, @function
sub_4069ba:

	nop	dword ptr [rax + rax]
.label_530:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rax + 0x18], 0
	je	.label_550
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x38]
	mov	edx, dword ptr [rcx + 0x18]
	sub	eax, dword ptr [rbp - 0x44]
	cmp	edx, eax
	jne	.label_555
.label_550:
	mov	eax, dword ptr [rbp - 0x44]
	mov	rcx, qword ptr [rbp - 0x38]
	add	eax, dword ptr [rcx + 0x18]
	mov	dword ptr [rcx + 0x18], eax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rcx
	jmp	.label_545
.label_555:
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 0x18]
	cmp	ecx, dword ptr [rbp - 0x44]
	jne	.label_565
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x20], rax
	cmp	dword ptr [rbp - 0x44], 0
	jge	.label_533
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x10], rax
	jmp	.label_539
.label_532:
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax + 0x18], 1
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x20], rax
.label_553:
	jmp	.label_528
.label_565:
	cmp	dword ptr [rbp - 0x44], 0
	jge	.label_559
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x10], rax
	jmp	.label_563
	.section	.text
	.align	16
	#Procedure 0x406ab0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edi, eax
	call	quotearg_n_custom
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406adf
	.globl sub_406adf
	.type sub_406adf, @function
sub_406adf:

	nop	
.label_576:
	call	locale_charset
	movabs	rsi, OFFSET FLAT:label_575
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_574
	movabs	rax, OFFSET FLAT:label_568
	movabs	rcx, OFFSET FLAT:label_569
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_570
.label_567:
	movabs	rax, OFFSET FLAT:label_178
	movabs	rcx, OFFSET FLAT:label_219
	cmp	dword ptr [rbp - 0x14], 9
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_570:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406b5a
	.globl sub_406b5a
	.type sub_406b5a, @function
sub_406b5a:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406b62

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rdi, qword ptr [rbp - 0x10]
	call	gettext
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x10]
	je	.label_576
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_570
.label_574:
	movabs	rsi, OFFSET FLAT:label_573
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_567
	movabs	rax, OFFSET FLAT:label_571
	movabs	rcx, OFFSET FLAT:label_572
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_570
	.section	.text
	.align	16
	#Procedure 0x406be0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x20]
	mov	edi, eax
	call	quotearg_n_custom_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406c17
	.globl sub_406c17
	.type sub_406c17, @function
sub_406c17:

	nop	word ptr [rax + rax]
.label_579:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_582:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x81], dl
.label_583:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_578
	jmp	.label_577
.label_578:
	jmp	.label_580
.label_580:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_581
.label_577:
	lea	r8, [rbp - 0x80]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r9, qword ptr [rbp - 0x30]
	call	version_etc_arn
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406cac
	.globl sub_406cac
	.type sub_406cac, @function
sub_406cac:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406cb3

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], 0
.label_581:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_583
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_579
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_582
.label_585:
	mov	byte ptr [rbp - 1], 0
.label_586:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406d3e
	.globl sub_406d3e
	.type sub_406d3e, @function
sub_406d3e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406d4c
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_585
	jmp	.label_584
.label_584:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_586
	.section	.text
	.align	16
	#Procedure 0x406d70
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_587
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_587:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406d9a
	.globl sub_406d9a
	.type sub_406d9a, @function
sub_406d9a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406da0

	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:
	push	rbp
	mov	rbp, rsp
	mov	al, sil
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	mov	dword ptr [rbp - 0x10], edx
	mov	al, byte ptr [rbp - 9]
	mov	byte ptr [rbp - 0x11], al
	cmp	qword ptr [rbp - 8], 0
	je	.label_588
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_589
.label_588:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_589
.label_589:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	movzx	ecx, byte ptr [rbp - 0x11]
	mov	edx, ecx
	shr	rdx, 5
	shl	rdx, 2
	add	rax, rdx
	mov	qword ptr [rbp - 0x20], rax
	movzx	ecx, byte ptr [rbp - 0x11]
	mov	eax, ecx
	and	rax, 0x1f
	mov	ecx, eax
	mov	dword ptr [rbp - 0x24], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax]
	mov	esi, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x34], ecx
	mov	ecx, esi
	mov	esi, dword ptr [rbp - 0x34]
	shr	esi, cl
	and	esi, 1
	mov	dword ptr [rbp - 0x28], esi
	mov	esi, dword ptr [rbp - 0x10]
	and	esi, 1
	xor	esi, dword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rbp - 0x24]
	shl	esi, cl
	mov	rax, qword ptr [rbp - 0x20]
	xor	esi, dword ptr [rax]
	mov	dword ptr [rax], esi
	mov	eax, dword ptr [rbp - 0x28]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406e42
	.globl sub_406e42
	.type sub_406e42, @function
sub_406e42:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406e50

	.globl record_relation
	.type record_relation, @function
record_relation:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi]
	call	strcmp
	cmp	eax, 0
	je	.label_590
	mov	eax, 0x10
	mov	edi, eax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rcx + 0x20]
	add	rdx, 1
	mov	qword ptr [rcx + 0x20], rdx
	call	xmalloc
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x30], rax
.label_590:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406ec9
	.globl sub_406ec9
	.type sub_406ec9, @function
sub_406ec9:

	nop	dword ptr [rax]
.label_592:
	mov	byte ptr [rbp - 1], 0
.label_593:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406ede
	.globl sub_406ede
	.type sub_406ede, @function
sub_406ede:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406eec
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_592
	jmp	.label_591
.label_591:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_593
	.section	.text
	.align	16
	#Procedure 0x406f10

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], 0
	mov	dword ptr [rbp - 0x1c], 0
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	dword ptr [rbp - 0x18], eax
	cmp	dword ptr [rbp - 0x18], 0
	jge	.label_597
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	jmp	.label_594
.label_597:
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	je	.label_598
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_596
.label_598:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_596
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_596:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_595
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_595:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_594:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406fde
	.globl sub_406fde
	.type sub_406fde, @function
sub_406fde:

	nop	
.label_599:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [zeros]]
	mov	qword ptr [rcx + 0x28], rax
.label_601:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [zeros]],  rax
.label_600:
	xor	eax, eax
	mov	cl, al
	and	cl, 1
	movzx	eax, cl
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407008
	.globl sub_407008
	.type sub_407008, @function
sub_407008:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40700b

	.globl scan_zeros
	.type scan_zeros, @function
scan_zeros:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	qword ptr [rdi + 0x20], 0
	jne	.label_600
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax], 0
	je	.label_600
	cmp	qword ptr [word ptr [head]],  0
	jne	.label_599
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [head]],  rax
	jmp	.label_601
.label_603:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40705a
	.globl sub_40705a
	.type sub_40705a, @function
sub_40705a:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407064
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 8]
	jb	.label_602
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_603
.label_602:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x407115
	.globl sub_407115
	.type sub_407115, @function
sub_407115:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407122
	.globl sub_407122
	.type sub_407122, @function
sub_407122:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407146
	.globl sub_407146
	.type sub_407146, @function
sub_407146:

	nop	word ptr cs:[rax + rax]
