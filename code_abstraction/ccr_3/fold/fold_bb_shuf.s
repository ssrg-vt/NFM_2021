	.section	.text
	.align	16
	#Procedure 0x401559
	.globl sub_401559
	.type sub_401559, @function
sub_401559:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x40155a
	.globl sub_40155a
	.type sub_40155a, @function
sub_40155a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401592
	.globl sub_401592
	.type sub_401592, @function
sub_401592:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4015da
	.globl sub_4015da
	.type sub_4015da, @function
sub_4015da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4015fc
	.globl sub_4015fc
	.type sub_4015fc, @function
sub_4015fc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40160d
	.globl sub_40160d
	.type sub_40160d, @function
sub_40160d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401626
	.globl sub_401626
	.type sub_401626, @function
sub_401626:

	nop	word ptr cs:[rax + rax]
.label_13:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_9
	mov	eax, OFFSET FLAT:label_10
	jmp	.label_11
	.section	.text
	.align	16
	#Procedure 0x40163f
	.globl sub_40163f
	.type sub_40163f, @function
sub_40163f:

	nop	word ptr cs:[rax + rax]
.label_19:
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
.label_18:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401692

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
	jne	.label_18
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_19
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
.label_23:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401705
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_20
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_23
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_26
.label_24:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401737
	.globl sub_401737
	.type sub_401737, @function
sub_401737:

	nop	word ptr [rax + rax]
.label_21:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_22
	test	rax, rax
	je	.label_23
.label_22:
	pop	rbx
	ret	
.label_20:
	test	rcx, rcx
	jne	.label_25
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_25:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_24
.label_26:
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
	.section	.text
	.align	16
	#Procedure 0x4017a0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4017aa
	.globl sub_4017aa
	.type sub_4017aa, @function
sub_4017aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4017b0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4017b8
	.globl sub_4017b8
	.type sub_4017b8, @function
sub_4017b8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4017c0

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
	jne	.label_28
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_27
	test	cl, cl
	jne	.label_27
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_27
.label_28:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_27
	call	__errno_location
	mov	dword ptr [rax], 0
.label_27:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401820

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
	je	.label_29
	cmp	r15, -2
	jb	.label_29
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_29
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_29:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x401876
	.globl sub_401876
	.type sub_401876, @function
sub_401876:

	nop	word ptr cs:[rax + rax]
.label_30:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401885
	.globl sub_401885
	.type sub_401885, @function
sub_401885:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401893
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
	je	.label_31
	test	r15, r15
	je	.label_30
.label_31:
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
	#Procedure 0x4018d0
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
	#Procedure 0x4018e8
	.globl sub_4018e8
	.type sub_4018e8, @function
sub_4018e8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4018f0
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
	#Procedure 0x4018ff
	.globl sub_4018ff
	.type sub_4018ff, @function
sub_4018ff:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401900
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_32
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_33
	test	rax, rax
	je	.label_32
.label_33:
	pop	rbx
	ret	
.label_32:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401935
	.globl sub_401935
	.type sub_401935, @function
sub_401935:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401940
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
	#Procedure 0x40194f
	.globl sub_40194f
	.type sub_40194f, @function
sub_40194f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401950
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40195e
	.globl sub_40195e
	.type sub_40195e, @function
sub_40195e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401960

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
	js	.label_34
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_37
	cmp	r12d, 0x7fffffff
	je	.label_39
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
	jne	.label_35
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_35:
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
.label_37:
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
	jbe	.label_40
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_36
.label_40:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_38
	mov	rdi, r14
	call	free
.label_38:
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
.label_36:
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
.label_34:
	call	abort
.label_39:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401b1d
	.globl sub_401b1d
	.type sub_401b1d, @function
sub_401b1d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401b20

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_41
	test	rsi, rsi
	mov	ecx, 1
	je	.label_42
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_42
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_41:
	mov	ecx, 1
.label_42:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x401b6b
	.globl sub_401b6b
	.type sub_401b6b, @function
sub_401b6b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401b70

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_44
	cmp	byte ptr [rax], 0x43
	jne	.label_46
	cmp	byte ptr [rax + 1], 0
	je	.label_43
.label_46:
	mov	esi, OFFSET FLAT:label_45
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_44
.label_43:
	xor	ebx, ebx
.label_44:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401ba1
	.globl sub_401ba1
	.type sub_401ba1, @function
sub_401ba1:

	nop	word ptr cs:[rax + rax]
.label_48:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_47
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_47:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401be4
	.globl sub_401be4
	.type sub_401be4, @function
sub_401be4:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401be6

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
	jne	.label_49
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_49
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_48
.label_49:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	16
	#Procedure 0x401c20
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x401c28
	.globl sub_401c28
	.type sub_401c28, @function
sub_401c28:

	nop	dword ptr [rax + rax]
.label_51:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_53
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_54:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_50
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_51
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_52
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_55:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x401cad

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_56
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_54
	cmp	dword ptr [rbp], 0x20
	jne	.label_54
.label_56:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_55
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401cf0

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
	je	.label_57
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
.label_57:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401d85
	.globl sub_401d85
	.type sub_401d85, @function
sub_401d85:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401d90

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_58
	test	rax, rax
	je	.label_59
.label_58:
	pop	rbx
	ret	
.label_59:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401daa
	.globl sub_401daa
	.type sub_401daa, @function
sub_401daa:

	nop	word ptr [rax + rax]
.label_60:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401db5
	.globl sub_401db5
	.type sub_401db5, @function
sub_401db5:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401db9
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_61]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_62]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_63]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_60
	test	rsi, rsi
	je	.label_60
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
.label_67:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401e25
	.globl sub_401e25
	.type sub_401e25, @function
sub_401e25:

	nop	word ptr cs:[rax + rax]
.label_68:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_64
	mov	qword ptr [rsi], rbx
.label_66:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_65
	test	rax, rax
	je	.label_64
.label_65:
	pop	rbx
	ret	
.label_64:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401e5e

	.globl x2realloc
	.type x2realloc, @function
x2realloc:
	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_68
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_67
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_66
	call	free
	xor	eax, eax
	jmp	.label_65
	.section	.text
	.align	16
	#Procedure 0x401e90
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
	#Procedure 0x401ec3
	.globl sub_401ec3
	.type sub_401ec3, @function
sub_401ec3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ed0

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
	je	.label_78
	mov	edx, OFFSET FLAT:label_84
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_71
.label_78:
	mov	edx, OFFSET FLAT:label_73
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_71:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_77
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
	mov	esi, OFFSET FLAT:label_74
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_79
	jmp	qword ptr [(r12 * 8) + label_80]
.label_483:
	add	rsp, 8
	jmp	.label_72
.label_79:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_87
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
	jmp	.label_72
.label_484:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_75
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
.label_485:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_69
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
.label_486:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_85
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
.label_487:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_82
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
	jmp	.label_72
.label_488:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_81
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
	jmp	.label_72
.label_489:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_83
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
	jmp	.label_72
.label_490:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_86
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
	jmp	.label_72
.label_492:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_70
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
	jmp	.label_72
.label_491:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_76
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
.label_72:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x402228
	.globl sub_402228
	.type sub_402228, @function
sub_402228:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402230

	.globl xdectoumax
	.type xdectoumax, @function
xdectoumax:
	push	rax
	mov	r10, r8
	mov	rax, rcx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	dword ptr [rsp], r9d
	mov	esi, 0xa
	mov	r8, rax
	mov	r9, r10
	call	xnumtoumax
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402253
	.globl sub_402253
	.type sub_402253, @function
sub_402253:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402260
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x402271
	.globl sub_402271
	.type sub_402271, @function
sub_402271:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402280

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_88
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_90
.label_88:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_90:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_91
	cmp	r10d, 0x29
	jae	.label_100
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_89
.label_100:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_89:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_91
	cmp	r10d, 0x29
	jae	.label_98
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_99
.label_98:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_99:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_91
	cmp	r10d, 0x29
	jae	.label_96
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_97
.label_96:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_97:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_91
	cmp	r10d, 0x29
	jae	.label_94
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_95
.label_94:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_95:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_91
	cmp	r10d, 0x29
	jae	.label_92
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_93
.label_92:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_93:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_91
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_91
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_91
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_91
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_91:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x402462
	.globl sub_402462
	.type sub_402462, @function
sub_402462:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402470

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_101
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_101:
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
	#Procedure 0x4024f3
	.globl sub_4024f3
	.type sub_4024f3, @function
sub_4024f3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402500

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_102
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_52
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402530
	.globl fdadvise
	.type fdadvise, @function
fdadvise:

	jmp	posix_fadvise
	.section	.text
	.align	16
	#Procedure 0x402535
	.globl sub_402535
	.type sub_402535, @function
sub_402535:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402540
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
	#Procedure 0x402558
	.globl sub_402558
	.type sub_402558, @function
sub_402558:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402560

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_103
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_104
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_103
.label_104:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_103
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_105
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_105:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_103:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x4025d4
	.globl sub_4025d4
	.type sub_4025d4, @function
sub_4025d4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4025e0
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
	#Procedure 0x4025f3
	.globl sub_4025f3
	.type sub_4025f3, @function
sub_4025f3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402600

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r14, r8
	mov	r12d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	cmp	r12d, 0x25
	jae	.label_106
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_123:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_123
	test	rbp, rbp
	lea	rsi, [rsp + 0x20]
	cmovne	rsi, rbp
	mov	r13d, 4
	cmp	al, 0x2d
	je	.label_119
	xor	ebp, ebp
	xor	ecx, ecx
	mov	rdi, rbx
	mov	qword ptr [rsp + 0x18], rsi
	mov	edx, r12d
	call	__strtoul_internal
	mov	r12, rax
	mov	rax, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rax]
	cmp	rcx, rbx
	je	.label_109
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_117
	cmp	eax, 0x22
	jne	.label_119
	mov	ebp, 1
.label_117:
	test	r14, r14
	mov	r15d, ebp
	jne	.label_118
	jmp	.label_122
.label_109:
	test	r14, r14
	je	.label_119
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_119
	mov	rdi, r14
	mov	rbx, rcx
	call	strchr
	mov	rcx, rbx
	xor	r15d, r15d
	mov	r12d, 1
	test	rax, rax
	je	.label_119
.label_118:
	movsx	r13d, byte ptr [rcx]
	test	r13d, r13d
	je	.label_122
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_110
	mov	ecx, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_113
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_113
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	ecx, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_113
	mov	rax, qword ptr [rsp + 0x10]
	movsx	eax, byte ptr [rax + 1]
	mov	ecx, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_124
	cmp	eax, 0x44
	je	.label_124
	cmp	eax, 0x69
	jne	.label_113
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	byte ptr [rcx + 2], 0x42
	sete	al
	lea	rcx, [rax + rax + 1]
	mov	esi, 0x400
	jmp	.label_113
.label_124:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_113:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_110
	xor	eax, eax
	jmp	qword ptr [(r13 * 8) + label_120]
.label_398:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	bl, bl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	dl, r8b
	jmp	.label_121
.label_110:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
	or	r15d, 2
	jmp	.label_107
.label_399:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, r12
	cmp	rax, r12
	cmovb	rsi, rdi
	sbb	eax, eax
	jmp	.label_111
.label_400:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	imul	rsi, rbx
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	jmp	.label_125
.label_402:
	mov	r9, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, r9
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, r9
	cmp	rax, rbp
	sbb	r10b, r10b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	bl, bl
	imul	rsi, rdi
	cmp	rax, rdi
	cmovb	rsi, r9
	or	dl, r8b
	jmp	.label_127
.label_396:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x36
	setne	al
	shl	r12, 0xa
	jmp	.label_126
.label_397:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	bpl, bpl
	imul	rsi, rbx
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	or	dl, r11b
	or	dl, bpl
	jmp	.label_125
.label_401:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	bl, bl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
.label_127:
	or	dl, r10b
.label_121:
	or	dl, bl
.label_125:
	and	dl, 1
	movzx	eax, dl
	mov	r12, rsi
	jmp	.label_108
.label_403:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r14b, r14b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	mov	r13d, r15d
	sbb	r15b, r15b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	bpl, bpl
	imul	rsi, rbx
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	or	dl, r11b
	and	dl, 1
	or	dl, r14b
	or	dl, r15b
	mov	r15d, r13d
	or	dl, bpl
	jmp	.label_112
.label_404:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r14b, r14b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	bl, bl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	and	dl, 1
	or	dl, r11b
	or	dl, r14b
	or	dl, bl
.label_112:
	movzx	eax, dl
.label_111:
	and	eax, 1
	mov	r12, rsi
	jmp	.label_108
.label_405:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x37
	setne	al
	shl	r12, 9
.label_126:
	cmp	rdx, 1
	sbb	rdx, rdx
	not	rdx
	or	r12, rdx
	jmp	.label_108
.label_406:
	lea	rax, [r12 + r12]
	test	r12, r12
	mov	rdx, -1
	cmovns	rdx, rax
	shr	r12, 0x3f
	mov	eax, r12d
	mov	r12, rdx
.label_108:
	or	eax, r15d
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rdx, [rdi + rcx]
	mov	rsi, qword ptr [rsp + 0x18]
	mov	qword ptr [rsi], rdx
	lea	r15d, [rax + 2]
	cmp	byte ptr [rdi + rcx], 0
	cmove	r15d, eax
.label_122:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
.label_107:
	mov	r13d, r15d
.label_119:
	mov	eax, r13d
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_106:
	mov	edi, OFFSET FLAT:label_114
	mov	esi, OFFSET FLAT:label_115
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_116
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x402c31
	.globl sub_402c31
	.type sub_402c31, @function
sub_402c31:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c40
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_128
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_129
	test	rbx, rbx
	jne	.label_129
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_128:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402c74
	.globl sub_402c74
	.type sub_402c74, @function
sub_402c74:

	nop	dword ptr [rax + rax]
.label_129:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_130
	test	rax, rax
	je	.label_128
.label_130:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402c90

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
	#Procedure 0x402ca7
	.globl sub_402ca7
	.type sub_402ca7, @function
sub_402ca7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402cb0
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
	je	.label_131
	mov	qword ptr [rax], rbx
.label_131:
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
	#Procedure 0x402d9c
	.globl sub_402d9c
	.type sub_402d9c, @function
sub_402d9c:

	nop	dword ptr [rax]
.label_132:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402da5
	.globl sub_402da5
	.type sub_402da5, @function
sub_402da5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402daf
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_132
	call	rpl_calloc
	test	rax, rax
	je	.label_132
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402dd0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_61]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_62]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_63]
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
	#Procedure 0x402e24
	.globl sub_402e24
	.type sub_402e24, @function
sub_402e24:

	nop	word ptr cs:[rax + rax]
.label_133:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402e35
	.globl sub_402e35
	.type sub_402e35, @function
sub_402e35:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e3b
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_134
	test	rax, rax
	je	.label_133
.label_134:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402e50

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_144
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_148
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_140
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_141
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_142
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_143
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_147
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_151
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_138
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_136
	mov	ecx, OFFSET FLAT:label_137
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_146
	mov	esi, OFFSET FLAT:label_135
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_146
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_150
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_146:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_152
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_137
	mov	ecx, OFFSET FLAT:label_139
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_149
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_139
	mov	ecx, OFFSET FLAT:label_153
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_144:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_145
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
	#Procedure 0x40304b
	.globl sub_40304b
	.type sub_40304b, @function
sub_40304b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403050

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
	jmp	.label_198
	.section	.text
	.align	16
	#Procedure 0x4030ff
	.globl sub_4030ff
	.type sub_4030ff, @function
sub_4030ff:

	nop	
.label_236:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_221
	or	al, dl
	jne	.label_221
	test	dil, 1
	jne	.label_234
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_221
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_198
	jmp	.label_221
.label_430:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_244
	test	rbp, rbp
	je	.label_204
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_204:
	mov	r14d, 1
	jmp	.label_249
.label_431:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_14
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_193
.label_244:
	xor	r14d, r14d
.label_249:
	mov	eax, OFFSET FLAT:label_14
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_169
	.section	.text
	.align	16
	#Procedure 0x4031cf
	.globl sub_4031cf
	.type sub_4031cf, @function
sub_4031cf:

	nop	
.label_198:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_264
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_271]
.label_432:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_278
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_15
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_433:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_168
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_168
	xor	r14d, r14d
	nop	
.label_196:
	cmp	r14, rbp
	jae	.label_214
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_214:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_196
.label_168:
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
	jmp	.label_193
.label_425:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_193
.label_428:
	mov	al, 1
.label_426:
	mov	r12b, 1
.label_429:
	test	r12b, 1
	mov	cl, 1
	je	.label_209
	mov	ecx, eax
.label_209:
	mov	al, cl
.label_427:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_211
	test	rbp, rbp
	je	.label_216
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_216:
	mov	r14d, 1
	jmp	.label_158
.label_211:
	xor	r14d, r14d
.label_158:
	mov	ecx, OFFSET FLAT:label_15
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_169:
	mov	sil, r12b
.label_193:
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
	jmp	.label_225
	.section	.text
	.align	16
	#Procedure 0x403391
	.globl sub_403391
	.type sub_403391, @function
sub_403391:

	nop	word ptr cs:[rax + rax]
.label_228:
	inc	r12
.label_225:
	cmp	r11, -1
	je	.label_253
	cmp	r12, r11
	jne	.label_255
	jmp	.label_256
	.section	.text
	.align	16
	#Procedure 0x4033b3
	.globl sub_4033b3
	.type sub_4033b3, @function
sub_4033b3:

	nop	word ptr cs:[rax + rax]
.label_253:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_164
.label_255:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_265
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_227
	cmp	r11, -1
	jne	.label_227
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_227:
	cmp	rbx, r11
	jbe	.label_159
.label_265:
	xor	esi, esi
.label_186:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_160
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_165]
.label_444:
	test	r12, r12
	jne	.label_171
	jmp	.label_172
	.section	.text
	.align	16
	#Procedure 0x403446
	.globl sub_403446
	.type sub_403446, @function
sub_403446:

	nop	word ptr cs:[rax + rax]
.label_159:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_182
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_186
	jmp	.label_194
.label_182:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_186
.label_448:
	xor	eax, eax
	cmp	r11, -1
	je	.label_201
	test	r12, r12
	jne	.label_206
	cmp	r11, 1
	je	.label_172
	xor	r13d, r13d
	jmp	.label_163
.label_437:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_213
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_194
	cmp	r8d, 2
	jne	.label_217
	mov	eax, r9d
	and	al, 1
	jne	.label_217
	cmp	r14, rbp
	jae	.label_220
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_220:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_223
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_223:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_229
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_229:
	add	r14, 3
	mov	r9b, 1
.label_217:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_233
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_233:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_243
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_243
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_243
	cmp	r14, rbp
	jae	.label_200
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_200:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_222
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_222:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_163
.label_438:
	mov	bl, 0x62
	jmp	.label_254
.label_439:
	mov	cl, 0x74
	jmp	.label_192
.label_440:
	mov	bl, 0x76
	jmp	.label_254
.label_441:
	mov	bl, 0x66
	jmp	.label_254
.label_442:
	mov	cl, 0x72
	jmp	.label_192
.label_445:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_261
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_155
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
	jae	.label_272
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_272:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_161
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_161:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_167
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_167:
	add	r14, 3
	xor	r9d, r9d
.label_261:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_163
.label_446:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_177
	cmp	r8d, 2
	jne	.label_171
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_171
	jmp	.label_155
.label_447:
	cmp	r8d, 2
	jne	.label_188
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_155
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_242
.label_160:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_197
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_208
.label_201:
	test	r12, r12
	jne	.label_218
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_218
.label_172:
	mov	dl, 1
.label_443:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_155
	xor	eax, eax
	mov	r13b, dl
.label_163:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_226
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_230
	jmp	.label_231
	.section	.text
	.align	16
	#Procedure 0x403724
	.globl sub_403724
	.type sub_403724, @function
sub_403724:

	nop	word ptr cs:[rax + rax]
.label_226:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_231
.label_230:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_239
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_240
	.section	.text
	.align	16
	#Procedure 0x40375d
	.globl sub_40375d
	.type sub_40375d, @function
sub_40375d:

	nop	dword ptr [rax]
.label_231:
	test	sil, sil
.label_240:
	mov	ebx, r15d
	je	.label_175
	jmp	.label_246
.label_239:
	mov	ebx, r15d
	jmp	.label_246
.label_213:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_228
	xor	r15d, r15d
	jmp	.label_171
.label_188:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_192
	xor	eax, eax
	mov	r15b, 0x5c
.label_242:
	xor	r13d, r13d
	jmp	.label_175
.label_192:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_155
.label_254:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_163
	nop	
.label_246:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_194
	cmp	r8d, 2
	jne	.label_262
	mov	eax, r9d
	and	al, 1
	jne	.label_262
	cmp	r14, rbp
	jae	.label_268
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_268:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_273
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_273:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_277
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_277:
	add	r14, 3
	mov	r9b, 1
.label_262:
	cmp	r14, rbp
	jae	.label_183
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_183:
	inc	r14
	jmp	.label_210
.label_197:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_166
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_166:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_173
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
	je	.label_189
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_203
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_219
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_235
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_180:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_263
	bt	rsi, rdx
	jb	.label_155
.label_263:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_180
.label_235:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_232
	xor	r13d, r13d
.label_232:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_250
	jmp	.label_205
.label_243:
	xor	r13d, r13d
	jmp	.label_163
.label_218:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_163
.label_177:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_171
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_171
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_171
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_252
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_276
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_258
	cmp	r14, rbp
	jae	.label_259
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_259:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_266
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_266:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_195
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_195:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_267
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_267:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_276:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_163
.label_171:
	xor	eax, eax
.label_206:
	xor	r13d, r13d
	jmp	.label_163
.label_173:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_274:
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
	je	.label_184
	cmp	rbp, -1
	je	.label_187
	cmp	rbp, -2
	je	.label_189
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_251
	xor	r13d, r13d
.label_251:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_274
	jmp	.label_205
.label_189:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_174
	lea	rax, [r10 + r12]
.label_238:
	cmp	byte ptr [rax + rsi], 0
	je	.label_174
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_238
.label_174:
	mov	qword ptr [rsp + 0x40], rsi
.label_203:
	xor	r13d, r13d
	jmp	.label_219
.label_187:
	xor	r13d, r13d
.label_184:
	mov	r10, qword ptr [rsp + 0x28]
.label_219:
	mov	r12, qword ptr [rsp + 0x40]
.label_205:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_208:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_176
	test	al, al
	je	.label_176
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_163
.label_176:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_237
	.section	.text
	.align	16
	#Procedure 0x403b57
	.globl sub_403b57
	.type sub_403b57, @function
sub_403b57:

	nop	word ptr [rax + rax]
.label_207:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_237:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_245
	test	sil, 1
	je	.label_202
	cmp	r14, rbp
	jae	.label_248
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_248:
	inc	r14
	xor	esi, esi
	jmp	.label_202
	.section	.text
	.align	16
	#Procedure 0x403b95
	.globl sub_403b95
	.type sub_403b95, @function
sub_403b95:

	nop	word ptr cs:[rax + rax]
.label_245:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_194
	cmp	r8d, 2
	jne	.label_199
	mov	eax, r9d
	and	al, 1
	jne	.label_199
	cmp	r14, rbp
	jae	.label_257
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_257:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_260
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_260:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_241
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_241:
	add	r14, 3
	mov	r9b, 1
.label_199:
	cmp	r14, rbp
	jae	.label_275
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_275:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_156
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_156:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_162
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_162:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_202:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_175
	test	r9b, 1
	je	.label_178
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_170
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_181
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_181:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_190
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_190:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_178
	.section	.text
	.align	16
	#Procedure 0x403ca6
	.globl sub_403ca6
	.type sub_403ca6, @function
sub_403ca6:

	nop	word ptr cs:[rax + rax]
.label_170:
	mov	rbx, rcx
.label_178:
	cmp	r14, rbp
	jae	.label_207
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_207
	.section	.text
	.align	16
	#Procedure 0x403cce
	.globl sub_403cce
	.type sub_403cce, @function
sub_403cce:

	nop	
.label_175:
	test	r9b, 1
	je	.label_212
	and	al, 1
	jne	.label_212
	cmp	r14, rbp
	jae	.label_215
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_215:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_247
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_247:
	add	r14, 2
	xor	r9d, r9d
.label_212:
	mov	ebx, r15d
.label_210:
	cmp	r14, rbp
	jae	.label_224
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_224:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_228
.label_252:
	xor	r13d, r13d
	jmp	.label_163
	.section	.text
	.align	16
	#Procedure 0x403d31
	.globl sub_403d31
	.type sub_403d31, @function
sub_403d31:

	nop	word ptr cs:[rax + rax]
.label_256:
	mov	rcx, r12
.label_164:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_236
	or	al, dl
	jne	.label_236
	mov	r11, rcx
	jmp	.label_194
.label_155:
	mov	eax, 2
.label_185:
	mov	qword ptr [rsp + 0x38], rax
.label_194:
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
.label_270:
	mov	r14, rax
.label_179:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_221:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_269
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_191
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_191
	inc	rdx
	nop	dword ptr [rax + rax]
.label_157:
	cmp	r14, rbp
	jae	.label_154
	mov	byte ptr [rcx + r14], al
.label_154:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_157
	jmp	.label_191
.label_234:
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
	jmp	.label_270
.label_269:
	mov	rcx, qword ptr [rsp + 0x10]
.label_191:
	cmp	r14, rbp
	jae	.label_179
	mov	byte ptr [rcx + r14], 0
	jmp	.label_179
.label_258:
	mov	eax, 5
	jmp	.label_185
.label_264:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403e80
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
	#Procedure 0x403ef5
	.globl sub_403ef5
	.type sub_403ef5, @function
sub_403ef5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f00

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
	#Procedure 0x403f19
	.globl sub_403f19
	.type sub_403f19, @function
sub_403f19:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403f20
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_61]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_62]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_63]
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
	#Procedure 0x403f8f
	.globl sub_403f8f
	.type sub_403f8f, @function
sub_403f8f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403f90
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_61]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_62]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_63]
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
	#Procedure 0x403ffe
	.globl sub_403ffe
	.type sub_403ffe, @function
sub_403ffe:

	nop	
.label_279:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404005
	.globl sub_404005
	.type sub_404005, @function
sub_404005:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404007
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_61]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_62]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_63]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_279
	test	rdx, rdx
	je	.label_279
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
	#Procedure 0x404070
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40407a
	.globl sub_40407a
	.type sub_40407a, @function
sub_40407a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404080

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_280
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
.label_280:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40409d
	.globl sub_40409d
	.type sub_40409d, @function
sub_40409d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4040a0
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
	#Procedure 0x404161
	.globl sub_404161
	.type sub_404161, @function
sub_404161:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404170

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_61]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_62]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_63]
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
	#Procedure 0x4041c5
	.globl sub_4041c5
	.type sub_4041c5, @function
sub_4041c5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4041d0
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
	je	.label_281
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
.label_281:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404231
	.globl sub_404231
	.type sub_404231, @function
sub_404231:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404240
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_282:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_282
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x404261
	.globl sub_404261
	.type sub_404261, @function
sub_404261:

	nop	word ptr cs:[rax + rax]
.label_284:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404275
	.globl sub_404275
	.type sub_404275, @function
sub_404275:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40427f
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
	je	.label_283
	test	r14, r14
	je	.label_284
.label_283:
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
	#Procedure 0x4042b0

	.globl fold_file
	.type fold_file, @function
fold_file:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	qword ptr [rsp + 0x20], rsi
	mov	rbx, rdi
	cmp	byte ptr [rbx], 0x2d
	jne	.label_291
	cmp	byte ptr [rbx + 1], 0
	je	.label_317
.label_291:
	mov	esi, OFFSET FLAT:label_319
	mov	rdi, rbx
	call	fopen
	mov	r15, rax
.label_299:
	mov	qword ptr [rsp + 0x10], rbx
	test	r15, r15
	je	.label_300
	mov	esi, 2
	mov	rdi, r15
	call	fadvise
	xor	ebp, ebp
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x18], r15
	jmp	.label_285
.label_314:
	mov	rdi, qword ptr [rip + fold_file.line_out]
	mov	byte ptr [rdi + rbp], bl
	mov	rcx, qword ptr [rip + stdout]
	mov	esi, 1
	mov	rdx, r14
	call	fwrite_unlocked
	xor	ebp, ebp
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
.label_285:
	mov	rax, qword ptr [r15 + 8]
	cmp	rax, qword ptr [r15 + 0x10]
	jae	.label_295
	lea	rcx, [rax + 1]
	mov	qword ptr [r15 + 8], rcx
	movzx	ebx, byte ptr [rax]
.label_304:
	lea	r14, [rbp + 1]
	cmp	r14, qword ptr [rip + fold_file.allocated_out]
	jb	.label_308
	mov	rdi, qword ptr [rip + fold_file.line_out]
	mov	esi, OFFSET FLAT:fold_file.allocated_out
	call	x2realloc
	mov	qword ptr [rip + fold_file.line_out],  rax
.label_308:
	cmp	ebx, 0xa
	je	.label_314
	mov	dword ptr [rsp + 4], ebx
	mov	r14, rbp
	mov	rax, qword ptr [rsp + 8]
	jmp	.label_292
	.section	.text
	.align	16
	#Procedure 0x404388
	.globl sub_404388
	.type sub_404388, @function
sub_404388:

	nop	dword ptr [rax + rax]
.label_286:
	mov	byte ptr [r15 + r14], 0xa
	mov	rcx, qword ptr [rip + stdout]
	mov	esi, 1
	mov	rdi, r15
	mov	rdx, rbp
	call	fwrite_unlocked
	xor	r14d, r14d
	xor	eax, eax
.label_292:
	mov	r15, rax
	mov	al, byte ptr [rip + count_bytes]
	jmp	.label_313
.label_302:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_316
	.section	.text
	.align	16
	#Procedure 0x4043cb
	.globl sub_4043cb
	.type sub_4043cb, @function
sub_4043cb:

	nop	dword ptr [rax + rax]
.label_313:
	test	al, 1
	je	.label_310
	inc	r15
	mov	rax, r15
	mov	ecx, dword ptr [rsp + 4]
	jmp	.label_287
.label_310:
	mov	ecx, dword ptr [rsp + 4]
	cmp	cl, 8
	je	.label_321
	cmp	cl, 9
	je	.label_323
	cmp	cl, 0xd
	mov	eax, 0
	je	.label_315
	inc	r15
	mov	rax, r15
	jmp	.label_287
.label_321:
	lea	rax, [r15 - 1]
	test	r15, r15
	cmove	rax, r15
	jmp	.label_287
.label_323:
	mov	eax, r15d
	and	eax, 7
	neg	rax
	lea	rax, [r15 + rax + 8]
	nop	
.label_287:
	cmp	rax, qword ptr [rsp + 0x20]
	jbe	.label_315
	mov	qword ptr [rsp + 8], rax
	mov	r15, qword ptr [rip + fold_file.line_out]
	cmp	byte ptr [rip + break_spaces],  1
	jne	.label_293
	lea	rbx, [r15 + r14]
	mov	r13b, 1
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_303:
	mov	rax, r14
	add	rax, rbp
	je	.label_293
	movzx	r12d, byte ptr [rbx + rbp - 1]
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	dec	rbp
	inc	r13b
	test	byte ptr [rax + r12*2], 1
	je	.label_303
	mov	rcx, qword ptr [rip + stdout]
	lea	rdx, [r14 + rbp + 1]
	mov	esi, 1
	mov	rdi, r15
	call	fwrite_unlocked
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_302
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_316:
	mov	rbx, qword ptr [rip + fold_file.line_out]
	add	r14, rbx
	lea	rsi, [rbp + r14 + 1]
	mov	r15, rbp
	not	r15
	mov	rdi, rbx
	mov	rdx, r15
	call	memmove
	cmp	rbp, -1
	mov	r14d, 0
	mov	eax, 0
	je	.label_292
	mov	al, 1
	mov	cl, byte ptr [rip + count_bytes]
	test	cl, cl
	mov	r14, r15
	jne	.label_313
	mov	r14, rbp
	not	r14
	mov	edi, r14d
	and	edi, 1
	cmp	rbp, -2
	mov	edx, 0
	mov	ecx, 0
	je	.label_324
	not	rbp
	and	r13b, 1
	movzx	eax, r13b
	sub	rbp, rax
	xor	edx, edx
	xor	ecx, ecx
	nop	word ptr [rax + rax]
.label_305:
	movzx	eax, byte ptr [rbx + rcx]
	cmp	al, 0xd
	mov	esi, 0
	je	.label_301
	cmp	al, 9
	je	.label_297
	cmp	al, 8
	jne	.label_298
	lea	rsi, [rdx - 1]
	test	rdx, rdx
	cmove	rsi, rdx
	jmp	.label_301
	.section	.text
	.align	16
	#Procedure 0x404552
	.globl sub_404552
	.type sub_404552, @function
sub_404552:

	nop	word ptr cs:[rax + rax]
.label_297:
	mov	eax, edx
	and	eax, 7
	neg	rax
	lea	rsi, [rdx + rax + 8]
	jmp	.label_301
	.section	.text
	.align	16
	#Procedure 0x40456f
	.globl sub_40456f
	.type sub_40456f, @function
sub_40456f:

	nop	
.label_298:
	inc	rdx
	mov	rsi, rdx
.label_301:
	movzx	eax, byte ptr [rbx + rcx + 1]
	cmp	al, 8
	je	.label_306
	cmp	al, 9
	je	.label_307
	cmp	al, 0xd
	mov	edx, 0
	je	.label_309
	inc	rsi
	mov	rdx, rsi
	jmp	.label_309
	.section	.text
	.align	16
	#Procedure 0x404594
	.globl sub_404594
	.type sub_404594, @function
sub_404594:

	nop	word ptr cs:[rax + rax]
.label_306:
	lea	rdx, [rsi - 1]
	test	rsi, rsi
	cmove	rdx, rsi
	jmp	.label_309
	.section	.text
	.align	16
	#Procedure 0x4045ad
	.globl sub_4045ad
	.type sub_4045ad, @function
sub_4045ad:

	nop	dword ptr [rax]
.label_307:
	mov	eax, esi
	and	eax, 7
	neg	rax
	lea	rdx, [rsi + rax + 8]
.label_309:
	add	rcx, 2
	cmp	rbp, rcx
	jne	.label_305
.label_324:
	test	rdi, rdi
	mov	rax, rdx
	je	.label_292
	mov	al, byte ptr [rbx + rcx]
	cmp	al, 8
	je	.label_320
	cmp	al, 0xd
	mov	ecx, 0
	je	.label_290
	cmp	al, 9
	jne	.label_322
	mov	eax, edx
	and	eax, 7
	neg	rax
	lea	rcx, [rdx + rax + 8]
	jmp	.label_290
	.section	.text
	.align	16
	#Procedure 0x4045f9
	.globl sub_4045f9
	.type sub_4045f9, @function
sub_4045f9:

	nop	dword ptr [rax]
.label_293:
	lea	rbp, [r14 + 1]
	test	r14, r14
	jne	.label_286
	jmp	.label_289
.label_320:
	lea	rcx, [rdx - 1]
	test	rdx, rdx
	cmove	rcx, rdx
	jmp	.label_290
.label_322:
	inc	rdx
	mov	rcx, rdx
.label_290:
	mov	rax, rcx
	jmp	.label_292
	.section	.text
	.align	16
	#Procedure 0x40462a
	.globl sub_40462a
	.type sub_40462a, @function
sub_40462a:

	nop	word ptr [rax + rax]
.label_315:
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rip + fold_file.line_out]
	mov	byte ptr [rax + r14], cl
	inc	r14
	mov	rbp, r14
	mov	r15, qword ptr [rsp + 0x18]
	jmp	.label_285
.label_289:
	mov	eax, dword ptr [rsp + 4]
	mov	byte ptr [r15 + r14], al
	mov	r15, qword ptr [rsp + 0x18]
	jmp	.label_285
.label_295:
	mov	rdi, r15
	call	__uflow
	mov	ebx, eax
	cmp	ebx, -1
	jne	.label_304
	call	__errno_location
	mov	r14, rax
	mov	r12d, dword ptr [r14]
	test	rbp, rbp
	je	.label_312
	mov	rdi, qword ptr [rip + fold_file.line_out]
	mov	rcx, qword ptr [rip + stdout]
	mov	esi, 1
	mov	rdx, rbp
	call	fwrite_unlocked
.label_312:
	test	byte ptr [r15], 0x20
	jne	.label_325
	mov	rbp, qword ptr [rsp + 0x10]
	cmp	byte ptr [rbp], 0x2d
	jne	.label_311
	mov	bl, 1
	cmp	byte ptr [rbp + 1], 0
	je	.label_288
.label_311:
	mov	rdi, r15
	call	rpl_fclose
	mov	bl, 1
	cmp	eax, -1
	jne	.label_288
	mov	rdx, rbp
	mov	ebp, dword ptr [r14]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, 3
	jmp	.label_318
.label_300:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x10]
.label_318:
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_52
	xor	eax, eax
	mov	esi, ebp
	call	error
	jmp	.label_288
.label_325:
	xor	edi, edi
	mov	esi, 3
	mov	rbx, qword ptr [rsp + 0x10]
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_52
	xor	eax, eax
	mov	esi, r12d
	call	error
	cmp	byte ptr [rbx], 0x2d
	jne	.label_294
	cmp	byte ptr [rbx + 1], 0
	je	.label_296
.label_294:
	mov	rdi, r15
	call	rpl_fclose
.label_296:
	xor	ebx, ebx
.label_288:
	mov	eax, ebx
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_317:
	mov	r15, qword ptr [rip + stdin]
	mov	byte ptr [rip + have_read_stdin],  1
	jmp	.label_299
	.section	.text
	.align	16
	#Procedure 0x40476d
	.globl sub_40476d
	.type sub_40476d, @function
sub_40476d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404770
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_61]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_62]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_63]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_326
	test	rdx, rdx
	je	.label_326
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_326:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4047da
	.globl sub_4047da
	.type sub_4047da, @function
sub_4047da:

	nop	word ptr [rax + rax]
.label_327:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4047e5
	.globl sub_4047e5
	.type sub_4047e5, @function
sub_4047e5:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4047ed
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
	je	.label_327
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
.label_333:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_331
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404870
	.globl sub_404870
	.type sub_404870, @function
sub_404870:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40487f

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_333
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_328
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_330
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_328
	mov	esi, OFFSET FLAT:label_329
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_332
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_332:
	mov	rbx, r14
.label_328:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x404900

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
	je	.label_334
	test	r15, r15
	je	.label_335
.label_334:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_335:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40493c
	.globl sub_40493c
	.type sub_40493c, @function
sub_40493c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404940

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
	mov	r14, rsi
	mov	r13d, edi
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_340
	call	setlocale
	mov	edi, OFFSET FLAT:label_336
	mov	esi, OFFSET FLAT:label_351
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_336
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	byte ptr [rip + have_read_stdin],  0
	mov	byte ptr [rip + count_bytes],  0
	mov	byte ptr [rip + break_spaces],  0
	mov	edx, OFFSET FLAT:shortopts
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, r13d
	mov	rsi, r14
	call	getopt_long
	mov	r15d, 0x50
	cmp	eax, -1
	je	.label_338
	mov	r15d, 0x50
	lea	r12, [rsp + 6]
	nop	word ptr cs:[rax + rax]
.label_348:
	lea	ecx, [rax - 0x30]
	cmp	ecx, 0x47
	ja	.label_346
	jmp	qword ptr [(rcx * 8) + label_353]
.label_390:
	mov	rbx, qword ptr [rip + optarg]
	test	rbx, rbx
	je	.label_355
	dec	rbx
	mov	qword ptr [rip + optarg],  rbx
	jmp	.label_347
	.section	.text
	.align	16
	#Procedure 0x404a0b
	.globl sub_404a0b
	.type sub_404a0b, @function
sub_404a0b:

	nop	dword ptr [rax + rax]
.label_355:
	mov	byte ptr [rsp + 6], al
	mov	byte ptr [rsp + 7], 0
	mov	qword ptr [rip + optarg],  r12
	mov	rbx, r12
	jmp	.label_347
.label_391:
	mov	byte ptr [rip + count_bytes],  1
	jmp	.label_349
.label_392:
	mov	byte ptr [rip + break_spaces],  1
	jmp	.label_349
.label_393:
	mov	rbx, qword ptr [rip + optarg]
	nop	
.label_347:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_344
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	rdx, -0xa
	mov	ecx, OFFSET FLAT:label_340
	xor	r9d, r9d
	mov	rdi, rbx
	mov	r8, rax
	call	xdectoumax
	mov	r15, rax
.label_349:
	mov	edx, OFFSET FLAT:shortopts
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, r13d
	mov	rsi, r14
	call	getopt_long
	cmp	eax, -1
	jne	.label_348
.label_338:
	movsxd	rax, dword ptr [rip + optind]
	cmp	eax, r13d
	jne	.label_339
	mov	edi, OFFSET FLAT:label_342
	mov	rsi, r15
	call	fold_file
	mov	ebx, eax
	jmp	.label_354
.label_339:
	mov	bl, 1
	cmp	eax, r13d
	jge	.label_354
	lea	rbp, [r14 + rax*8]
	sub	r13d, eax
	mov	bl, 1
	nop	word ptr cs:[rax + rax]
.label_343:
	mov	rdi, qword ptr [rbp]
	mov	rsi, r15
	call	fold_file
	and	bl, al
	add	rbp, 8
	dec	r13d
	jne	.label_343
.label_354:
	cmp	byte ptr [rip + have_read_stdin],  1
	jne	.label_350
	mov	rdi, qword ptr [rip + stdin]
	call	rpl_fclose
	cmp	eax, -1
	je	.label_352
.label_350:
	not	bl
	and	bl, 1
	movzx	eax, bl
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_346:
	cmp	eax, 0xffffff7d
	je	.label_341
	cmp	eax, 0xffffff7e
	jne	.label_345
	xor	edi, edi
	call	usage
.label_345:
	mov	edi, 1
	call	usage
.label_341:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_139
	mov	edx, OFFSET FLAT:label_136
	mov	r8d, OFFSET FLAT:label_337
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_352:
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_342
	xor	eax, eax
	call	error
	nop	
	.section	.text
	.align	16
	#Procedure 0x404b80

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_340
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_356
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404ba5
	.globl sub_404ba5
	.type sub_404ba5, @function
sub_404ba5:

	nop	word ptr cs:[rax + rax]
.label_357:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404bb5
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_61]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_62]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_63]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_357
	test	rsi, rsi
	je	.label_357
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
	#Procedure 0x404c20

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_358
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_358
	test	byte ptr [rbx + 1], 1
	je	.label_358
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_358:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x404c53
	.globl sub_404c53
	.type sub_404c53, @function
sub_404c53:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c60
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
	je	.label_359
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
.label_359:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404ccc
	.globl sub_404ccc
	.type sub_404ccc, @function
sub_404ccc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404cd0
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
	#Procedure 0x404d06
	.globl sub_404d06
	.type sub_404d06, @function
sub_404d06:

	nop	word ptr cs:[rax + rax]
.label_360:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404d16
	.globl sub_404d16
	.type sub_404d16, @function
sub_404d16:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d1b
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_360
	test	rdx, rdx
	je	.label_360
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404d40

	.globl xnumtoumax
	.type xnumtoumax, @function
xnumtoumax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r9
	mov	r15, rcx
	mov	r13, rdx
	mov	eax, esi
	mov	r12, rdi
	lea	rcx, [rsp]
	xor	esi, esi
	mov	edx, eax
	call	xstrtoumax
	test	eax, eax
	je	.label_362
	cmp	eax, 1
	je	.label_364
	cmp	eax, 3
	jne	.label_366
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_361
.label_364:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_361
.label_362:
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r13
	jb	.label_365
	cmp	rbx, r15
	jbe	.label_367
.label_365:
	call	__errno_location
	cmp	rbx, 0x40000000
	jb	.label_363
	mov	dword ptr [rax], 0x4b
	jmp	.label_361
.label_366:
	call	__errno_location
	jmp	.label_361
.label_363:
	mov	dword ptr [rax], 0x22
.label_361:
	mov	ecx, dword ptr [rsp + 0x40]
	test	ecx, ecx
	mov	ebx, 1
	cmovne	ebx, ecx
	mov	ebp, dword ptr [rax]
	xor	eax, eax
	cmp	ebp, 0x16
	cmove	ebp, eax
	mov	rdi, r12
	call	quote
	mov	r8, rax
	mov	edx, OFFSET FLAT:label_53
	xor	eax, eax
	mov	edi, ebx
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	rbx, qword ptr [rsp]
.label_367:
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
	#Procedure 0x404e0b
	.globl sub_404e0b
	.type sub_404e0b, @function
sub_404e0b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e10
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
	#Procedure 0x404e29
	.globl sub_404e29
	.type sub_404e29, @function
sub_404e29:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404e30

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_368
	test	rbx, rbx
	jne	.label_368
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_370:
	call	xalloc_die
.label_368:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_369
	test	rax, rax
	je	.label_370
.label_369:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404e60
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_371
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_373:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_373
.label_371:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_374
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_375], OFFSET FLAT:slot0
.label_374:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_372
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_372:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x404ef1
	.globl sub_404ef1
	.type sub_404ef1, @function
sub_404ef1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f00
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
	je	.label_376
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
.label_376:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404f68
	.globl sub_404f68
	.type sub_404f68, @function
sub_404f68:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f70
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_377
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_378
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_380
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_136
	mov	ecx, OFFSET FLAT:label_137
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_379
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x404fe4
	.globl sub_404fe4
	.type sub_404fe4, @function
sub_404fe4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405055
	.globl sub_405055
	.type sub_405055, @function
sub_405055:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405062
	.globl sub_405062
	.type sub_405062, @function
sub_405062:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405086
	.globl sub_405086
	.type sub_405086, @function
sub_405086:

	nop	word ptr cs:[rax + rax]
