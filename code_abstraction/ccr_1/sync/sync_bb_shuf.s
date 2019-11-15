	.section	.text
	.align	32
	#Procedure 0x401469
	.globl sub_401469
	.type sub_401469, @function
sub_401469:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x40146a
	.globl sub_40146a
	.type sub_40146a, @function
sub_40146a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4014a2
	.globl sub_4014a2
	.type sub_4014a2, @function
sub_4014a2:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4014ea
	.globl sub_4014ea
	.type sub_4014ea, @function
sub_4014ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40150c
	.globl sub_40150c
	.type sub_40150c, @function
sub_40150c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40151d
	.globl sub_40151d
	.type sub_40151d, @function
sub_40151d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401536
	.globl sub_401536
	.type sub_401536, @function
sub_401536:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401540

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40154a
	.globl sub_40154a
	.type sub_40154a, @function
sub_40154a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401550
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
	#Procedure 0x401560

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	32
	#Procedure 0x401569
	.globl sub_401569
	.type sub_401569, @function
sub_401569:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401570
	.globl quote
	.type quote, @function
quote:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	32
	#Procedure 0x40157a
	.globl sub_40157a
	.type sub_40157a, @function
sub_40157a:

	nop	word ptr [rax + rax]
.label_9:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401586
	.globl sub_401586
	.type sub_401586, @function
sub_401586:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40158b

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_9
	test	rdx, rdx
	je	.label_9
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4015b0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x4015be
	.globl sub_4015be
	.type sub_4015be, @function
sub_4015be:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4015c0

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
	js	.label_10
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_13
	cmp	r12d, 0x7fffffff
	je	.label_15
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
	jne	.label_11
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_11:
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
.label_13:
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
	jbe	.label_16
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_12
.label_16:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_14
	mov	rdi, r14
	call	free
.label_14:
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
.label_12:
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
.label_10:
	call	abort
.label_15:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40177d
	.globl sub_40177d
	.type sub_40177d, @function
sub_40177d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401780

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_17
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebp
	mov	edx, r14d
	call	fcntl
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_19
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_19
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_20
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_21
.label_19:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_21
.label_17:
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_21:
	test	ebx, ebx
	js	.label_20
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_20
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_18
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebx
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_20
.label_18:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_20:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401843
	.globl sub_401843
	.type sub_401843, @function
sub_401843:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401850
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
	#Procedure 0x4018c2
	.globl sub_4018c2
	.type sub_4018c2, @function
sub_4018c2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4018d0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_22
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_22:
	push	rax
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4018f3
	.globl sub_4018f3
	.type sub_4018f3, @function
sub_4018f3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401900

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_23
	test	rax, rax
	je	.label_24
.label_23:
	pop	rbx
	ret	
.label_24:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40191a
	.globl sub_40191a
	.type sub_40191a, @function
sub_40191a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401920
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40192a
	.globl sub_40192a
	.type sub_40192a, @function
sub_40192a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401930

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
	#Procedure 0x401969
	.globl sub_401969
	.type sub_401969, @function
sub_401969:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401970

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
	#Procedure 0x401981
	.globl sub_401981
	.type sub_401981, @function
sub_401981:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401990
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
	#Procedure 0x4019a4
	.globl sub_4019a4
	.type sub_4019a4, @function
sub_4019a4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4019b0

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
.label_44:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_28
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_53]]
.label_424:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_59
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_65
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_425:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_72
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_72
	xor	r14d, r14d
.label_131:
	cmp	r14, r11
	jae	.label_81
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_81:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_131
.label_72:
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
	jmp	.label_36
.label_417:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_36
.label_420:
	mov	al, 1
.label_418:
	mov	r12b, 1
.label_421:
	test	r12b, 1
	mov	cl, 1
	je	.label_103
	mov	ecx, eax
.label_103:
	mov	al, cl
.label_419:
	test	r12b, 1
	jne	.label_106
	test	r11, r11
	je	.label_109
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_109:
	mov	r14d, 1
	jmp	.label_113
.label_106:
	xor	r14d, r14d
.label_113:
	mov	ecx, OFFSET FLAT:label_65
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_36
.label_422:
	test	r12b, 1
	jne	.label_120
	test	r11, r11
	je	.label_86
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_86:
	mov	r14d, 1
	jmp	.label_136
.label_423:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_127
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_36
.label_120:
	xor	r14d, r14d
.label_136:
	mov	eax, OFFSET FLAT:label_127
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_36:
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
	jmp	.label_25
	.section	.text
	.align	32
	#Procedure 0x401c8c
	.globl sub_401c8c
	.type sub_401c8c, @function
sub_401c8c:

	nop	dword ptr [rax]
.label_82:
	inc	rsi
.label_25:
	cmp	rbp, -1
	je	.label_64
	cmp	rsi, rbp
	jne	.label_121
	jmp	.label_69
	.section	.text
	.align	32
	#Procedure 0x401ca3
	.globl sub_401ca3
	.type sub_401ca3, @function
sub_401ca3:

	nop	word ptr cs:[rax + rax]
.label_64:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_69
.label_121:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_74
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_77
	cmp	rbp, -1
	jne	.label_77
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
.label_77:
	cmp	rbx, rbp
	jbe	.label_92
.label_74:
	xor	r8d, r8d
.label_91:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_94
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_96]]
.label_401:
	test	rsi, rsi
	jne	.label_83
	jmp	.label_99
	.section	.text
	.align	32
	#Procedure 0x401d3e
	.globl sub_401d3e
	.type sub_401d3e, @function
sub_401d3e:

	nop	
.label_92:
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
	jne	.label_111
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_91
	jmp	.label_58
.label_111:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_91
.label_405:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_128
	test	rsi, rsi
	jne	.label_129
	cmp	rbp, 1
	je	.label_99
	xor	r13d, r13d
	jmp	.label_41
.label_394:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_135
	cmp	byte ptr [rsp + 7], 0
	jne	.label_49
	cmp	r12d, 2
	jne	.label_26
	mov	eax, r9d
	and	al, 1
	jne	.label_26
	cmp	r14, r11
	jae	.label_38
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_38:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_31
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_31:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_87
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_87:
	add	r14, 3
	mov	r9b, 1
.label_26:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_89
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_89:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_48
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_48
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_48
	cmp	r14, r11
	jae	.label_60
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_60:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_78
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_78:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_41
.label_395:
	mov	bl, 0x62
	jmp	.label_70
.label_396:
	mov	cl, 0x74
	jmp	.label_73
.label_397:
	mov	bl, 0x76
	jmp	.label_70
.label_398:
	mov	bl, 0x66
	jmp	.label_70
.label_399:
	mov	cl, 0x72
	jmp	.label_73
.label_402:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_80
	cmp	byte ptr [rsp + 7], 0
	jne	.label_49
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
	jae	.label_88
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_88:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_98
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_98:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_100
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_100:
	add	r14, 3
	xor	r9d, r9d
.label_80:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_41
.label_403:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_110
	cmp	r12d, 2
	jne	.label_83
	cmp	byte ptr [rsp + 7], 0
	je	.label_83
	jmp	.label_49
.label_404:
	cmp	r12d, 2
	jne	.label_117
	cmp	byte ptr [rsp + 7], 0
	jne	.label_49
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_71
.label_94:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_125
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
.label_47:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_37
	test	r8b, r8b
	je	.label_37
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_41
.label_128:
	test	rsi, rsi
	jne	.label_46
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_46
.label_99:
	mov	dl, 1
.label_400:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_49
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_41:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_55
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_56
	jmp	.label_61
	.section	.text
	.align	32
	#Procedure 0x402084
	.globl sub_402084
	.type sub_402084, @function
sub_402084:

	nop	word ptr cs:[rax + rax]
.label_55:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_61
.label_56:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_66
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_71
	jmp	.label_79
	.section	.text
	.align	32
	#Procedure 0x4020cd
	.globl sub_4020cd
	.type sub_4020cd, @function
sub_4020cd:

	nop	dword ptr [rax]
.label_61:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_79
	jmp	.label_71
.label_66:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_79
.label_135:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_82
	xor	r15d, r15d
	jmp	.label_83
.label_117:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_73
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_71
.label_73:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_49
.label_70:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_41
	nop	word ptr cs:[rax + rax]
.label_79:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_49
	cmp	r12d, 2
	jne	.label_104
	mov	eax, r9d
	and	al, 1
	jne	.label_104
	cmp	r14, r11
	jae	.label_108
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_108:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_54
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_54:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_115
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_115:
	add	r14, 3
	mov	r9b, 1
.label_104:
	cmp	r14, r11
	jae	.label_119
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_119:
	inc	r14
	jmp	.label_122
.label_125:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_126
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_126:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_93:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_29
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_33
	cmp	rbp, -2
	je	.label_39
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_42
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_97:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_43
	bt	rsi, rdx
	jb	.label_58
.label_43:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_97
.label_42:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_68
	xor	r13d, r13d
.label_68:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_93
	jmp	.label_47
.label_48:
	xor	r13d, r13d
	jmp	.label_41
.label_46:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_41
.label_110:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_83
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_83
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_83
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_51
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_75
	cmp	byte ptr [rsp + 7], 0
	jne	.label_49
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_101
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_101:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_139
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_139:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_112
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_112:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_114
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_114:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_41
.label_83:
	xor	eax, eax
.label_129:
	xor	r13d, r13d
	jmp	.label_41
.label_37:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_124
	.section	.text
	.align	32
	#Procedure 0x4023b3
	.globl sub_4023b3
	.type sub_4023b3, @function
sub_4023b3:

	nop	word ptr cs:[rax + rax]
.label_85:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_124:
	test	r8b, r8b
	je	.label_130
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_132
	cmp	r14, r11
	jae	.label_133
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_133:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_132
	.section	.text
	.align	32
	#Procedure 0x4023fc
	.globl sub_4023fc
	.type sub_4023fc, @function
sub_4023fc:

	nop	dword ptr [rax]
.label_130:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_58
	cmp	r12d, 2
	jne	.label_30
	mov	eax, r9d
	and	al, 1
	jne	.label_30
	cmp	r14, r11
	jae	.label_32
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_32:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_84
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_84:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_107
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_107:
	add	r14, 3
	mov	r9b, 1
.label_30:
	cmp	r14, r11
	jae	.label_137
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_137:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_45
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_45:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_57
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_57:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_132:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_71
	test	r9b, 1
	je	.label_35
	mov	ebx, eax
	and	bl, 1
	jne	.label_35
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_76
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_76:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_118
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_118:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_35:
	cmp	r14, r11
	jae	.label_85
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_85
	.section	.text
	.align	32
	#Procedure 0x402503
	.globl sub_402503
	.type sub_402503, @function
sub_402503:

	nop	word ptr cs:[rax + rax]
.label_71:
	test	r9b, 1
	je	.label_62
	and	al, 1
	jne	.label_62
	cmp	r14, r11
	jae	.label_95
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_95:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_90
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_90:
	add	r14, 2
	xor	r9d, r9d
.label_62:
	mov	ebx, r15d
.label_122:
	cmp	r14, r11
	jae	.label_102
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_102:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_82
.label_33:
	xor	r13d, r13d
.label_29:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_47
.label_39:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_116
	mov	rsi, qword ptr [rsp + 0x50]
.label_123:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_138
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_123
	xor	r13d, r13d
	jmp	.label_47
.label_116:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_47
.label_138:
	xor	r13d, r13d
	jmp	.label_47
.label_51:
	xor	r13d, r13d
	jmp	.label_41
.label_75:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_41
	.section	.text
	.align	32
	#Procedure 0x4025d8
	.globl sub_4025d8
	.type sub_4025d8, @function
sub_4025d8:

	nop	dword ptr [rax + rax]
.label_69:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_134
	or	dl, al
	je	.label_58
.label_134:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_27
	or	dl, al
	jne	.label_27
	test	r10b, 1
	jne	.label_40
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_27
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_44
.label_27:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_50
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_52
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_52
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_67:
	cmp	r14, r11
	jae	.label_63
	mov	byte ptr [rcx + r14], al
.label_63:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_67
	jmp	.label_52
.label_49:
	mov	qword ptr [rsp + 0x20], rbp
.label_58:
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
.label_105:
	mov	r14, rax
.label_34:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_40:
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
	jmp	.label_105
.label_50:
	mov	rcx, qword ptr [rsp + 8]
.label_52:
	cmp	r14, r11
	jae	.label_34
	mov	byte ptr [rcx + r14], 0
	jmp	.label_34
.label_28:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40276c
	.globl sub_40276c
	.type sub_40276c, @function
sub_40276c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402770

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_140
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_140:
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
	#Procedure 0x4027f3
	.globl sub_4027f3
	.type sub_4027f3, @function
sub_4027f3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402800

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
	mov	rcx,  qword ptr [word ptr [rip + label_141]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_142]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_143]]
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
	#Procedure 0x40286d
	.globl sub_40286d
	.type sub_40286d, @function
sub_40286d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402870

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	32
	#Procedure 0x40287d
	.globl sub_40287d
	.type sub_40287d, @function
sub_40287d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402880

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	32
	#Procedure 0x402887
	.globl sub_402887
	.type sub_402887, @function
sub_402887:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402890

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
	je	.label_144
	cmp	r15, -2
	jb	.label_144
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_144
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_144:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4028e6
	.globl sub_4028e6
	.type sub_4028e6, @function
sub_4028e6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4028f0
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
	#Procedure 0x4028fd
	.globl sub_4028fd
	.type sub_4028fd, @function
sub_4028fd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402900
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	32
	#Procedure 0x40290a
	.globl sub_40290a
	.type sub_40290a, @function
sub_40290a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402910
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_145
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_145:
	push	rax
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402936
	.globl sub_402936
	.type sub_402936, @function
sub_402936:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402940

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_146
	test	rbx, rbx
	jne	.label_146
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_146:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_148
	test	rax, rax
	je	.label_147
.label_148:
	pop	rbx
	ret	
.label_147:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402970

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
	je	.label_150
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_149
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_149
.label_150:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_149
	test	cl, cl
	jne	.label_149
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_149:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4029d6
	.globl sub_4029d6
	.type sub_4029d6, @function
sub_4029d6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4029e0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_151:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_151
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x402a01
	.globl sub_402a01
	.type sub_402a01, @function
sub_402a01:

	nop	word ptr cs:[rax + rax]
.label_156:
	call	xalloc_die
.label_155:
	test	rcx, rcx
	jne	.label_154
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_154:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_152
.label_153:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_152:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402a5c
	.globl sub_402a5c
	.type sub_402a5c, @function
sub_402a5c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402a63

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_155
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_156
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_153
	.section	.text
	.align	32
	#Procedure 0x402a90
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_157
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_158]]
.label_159:
	ret	
.label_157:
	xor	eax, eax
	jmp	.label_159
	.section	.text
	.align	32
	#Procedure 0x402aa6
	.globl sub_402aa6
	.type sub_402aa6, @function
sub_402aa6:

	nop	word ptr cs:[rax + rax]
.label_161:
	cmp	edi, 0x7f
	je	.label_160
	xor	eax, eax
	jmp	.label_160
	.section	.text
	.align	32
	#Procedure 0x402ab9
	.globl sub_402ab9
	.type sub_402ab9, @function
sub_402ab9:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ac8
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_161
.label_160:
	ret	
	.section	.text
	.align	32
	#Procedure 0x402ad0

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x402ada
	.globl sub_402ada
	.type sub_402ada, @function
sub_402ada:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ae0
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	32
	#Procedure 0x402aed
	.globl sub_402aed
	.type sub_402aed, @function
sub_402aed:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402af0
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
	#Procedure 0x402b00
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x402b08
	.globl sub_402b08
	.type sub_402b08, @function
sub_402b08:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b10

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_163
	cmp	byte ptr [rax], 0x43
	jne	.label_165
	cmp	byte ptr [rax + 1], 0
	je	.label_162
.label_165:
	mov	esi, OFFSET FLAT:label_164
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_163
.label_162:
	xor	ebx, ebx
.label_163:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402b41
	.globl sub_402b41
	.type sub_402b41, @function
sub_402b41:

	nop	word ptr cs:[rax + rax]
.label_169:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_166
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
	#Procedure 0x402b88
	.globl sub_402b88
	.type sub_402b88, @function
sub_402b88:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b8d

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_169
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_171
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_168
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_172
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_173
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_170
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_167
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
	.section	.text
	.align	32
	#Procedure 0x402c70
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
	#Procedure 0x402cb9
	.globl sub_402cb9
	.type sub_402cb9, @function
sub_402cb9:

	nop	dword ptr [rax]
.label_179:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_174
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_175
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_177
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_180:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x402d10

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_178
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_179
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_179
.label_178:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_180
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_175:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_176
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402d80
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x402d88
	.globl sub_402d88
	.type sub_402d88, @function
sub_402d88:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402d90

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_181
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_181
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_181:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x402db6
	.globl sub_402db6
	.type sub_402db6, @function
sub_402db6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402dc0
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x402dca
	.globl sub_402dca
	.type sub_402dca, @function
sub_402dca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402dd0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_182
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_184:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_184
.label_182:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_186
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_185]], OFFSET FLAT:slot0
.label_186:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_183
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_183:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x402e61
	.globl sub_402e61
	.type sub_402e61, @function
sub_402e61:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402e70
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
	#Procedure 0x402ea3
	.globl sub_402ea3
	.type sub_402ea3, @function
sub_402ea3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402eb0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	32
	#Procedure 0x402eba
	.globl sub_402eba
	.type sub_402eba, @function
sub_402eba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ec0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_187
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_188
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402ee5
	.globl sub_402ee5
	.type sub_402ee5, @function
sub_402ee5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ef0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_197
	nop	
.label_196:
	mov	edi, OFFSET FLAT:label_189
	call	strcmp
	test	eax, eax
	je	.label_194
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_196
.label_194:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_189
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_199
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_192
	mov	ecx, OFFSET FLAT:label_193
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_190
	mov	esi, OFFSET FLAT:label_191
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_190
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_198
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_190:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_200
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_189
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_193
	mov	ecx, OFFSET FLAT:label_189
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_195
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_201
	mov	ecx, OFFSET FLAT:label_187
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
	#Procedure 0x40300a
	.globl sub_40300a
	.type sub_40300a, @function
sub_40300a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403010

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xd8
	test	al, al
	je	.label_212
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_212:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	cmp	esi, 0xb
	ja	.label_208
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_207
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_209
	test	esi, esi
	jne	.label_208
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_214
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_205
.label_208:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_204
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_209
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_211
.label_207:
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_209:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_215
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_203
.label_215:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_203:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_211:
	cmp	eax, 6
	jne	.label_204
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_213
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_202
.label_204:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_206
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_210
.label_214:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_205:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD
	add	rsp, 0xd8
	ret	
.label_213:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_202:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xd8
	ret	
.label_206:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_210:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	32
	#Procedure 0x4031c4
	.globl sub_4031c4
	.type sub_4031c4, @function
sub_4031c4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4031d0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
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
	mov	rax,  qword ptr [word ptr [rip + label_141]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_142]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_143]]
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
	#Procedure 0x403248
	.globl sub_403248
	.type sub_403248, @function
sub_403248:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403250
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
	#Procedure 0x403263
	.globl sub_403263
	.type sub_403263, @function
sub_403263:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403270
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_216
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
.label_216:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x403288
	.globl sub_403288
	.type sub_403288, @function
sub_403288:

	nop	dword ptr [rax + rax]
.label_218:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_217
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_217:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4032c4
	.globl sub_4032c4
	.type sub_4032c4, @function
sub_4032c4:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4032c6

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
	jne	.label_219
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_219
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_218
.label_219:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	32
	#Procedure 0x403300

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
	je	.label_222
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_220
	jmp	.label_221
.label_222:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_221
.label_220:
	mov	eax, 1
	test	bpl, bpl
	je	.label_221
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
.label_221:
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
	#Procedure 0x403388
	.globl sub_403388
	.type sub_403388, @function
sub_403388:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403390

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
	je	.label_223
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_225
	jmp	.label_224
.label_223:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_224
.label_225:
	mov	eax, 1
	test	bpl, bpl
	je	.label_224
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
.label_224:
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
	#Procedure 0x403409
	.globl sub_403409
	.type sub_403409, @function
sub_403409:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403410

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
	je	.label_228
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_227
	jmp	.label_226
.label_228:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_226
.label_227:
	mov	eax, 1
	test	bpl, bpl
	je	.label_226
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
.label_226:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403473
	.globl sub_403473
	.type sub_403473, @function
sub_403473:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403480

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
	je	.label_231
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_229
	jmp	.label_230
.label_231:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_230
.label_229:
	mov	eax, 1
	test	bpl, bpl
	je	.label_230
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_230:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4034df
	.globl sub_4034df
	.type sub_4034df, @function
sub_4034df:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4034e0

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
	je	.label_232
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_234
	jmp	.label_233
.label_232:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_233
.label_234:
	mov	eax, 1
	test	bpl, bpl
	je	.label_233
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_233:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403529
	.globl sub_403529
	.type sub_403529, @function
sub_403529:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403530

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
	je	.label_237
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_236
	jmp	.label_235
.label_237:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_235
.label_236:
	mov	eax, 1
	test	bpl, bpl
	je	.label_235
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_235:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403575
	.globl sub_403575
	.type sub_403575, @function
sub_403575:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403580

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_240
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_239
	jmp	.label_238
.label_240:
	mov	eax, 1
	test	cl, cl
	je	.label_238
.label_239:
	xor	eax, eax
.label_238:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4035af
	.globl sub_4035af
	.type sub_4035af, @function
sub_4035af:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4035b0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_241
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_243
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_241
.label_243:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_241
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_242
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_242:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_241:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x403627
	.globl sub_403627
	.type sub_403627, @function
sub_403627:

	nop	word ptr [rax + rax]
.label_244:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403635
	.globl sub_403635
	.type sub_403635, @function
sub_403635:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403643

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
	je	.label_244
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
	#Procedure 0x403690

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
	je	.label_255
	mov	edx, OFFSET FLAT:label_260
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_247
.label_255:
	mov	edx, OFFSET FLAT:label_249
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_247:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_254
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
	mov	esi, OFFSET FLAT:label_250
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_256
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_257]]
.label_442:
	add	rsp, 8
	jmp	.label_248
.label_256:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_263
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
	jmp	.label_248
.label_443:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_251
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
.label_444:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_245
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
.label_445:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_261
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
.label_446:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_258
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
	jmp	.label_248
.label_447:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_253
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
	jmp	.label_248
.label_448:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_259
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
	jmp	.label_248
.label_449:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_262
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
	jmp	.label_248
.label_451:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_246
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
	jmp	.label_248
.label_450:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_252
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
.label_248:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4039e8
	.globl sub_4039e8
	.type sub_4039e8, @function
sub_4039e8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4039f0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_264
	ret	
.label_264:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	32
	#Procedure 0x403a03
	.globl sub_403a03
	.type sub_403a03, @function
sub_403a03:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403a10

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
	#Procedure 0x403a46
	.globl sub_403a46
	.type sub_403a46, @function
sub_403a46:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403a50

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_265
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_177
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403a80
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
	#Procedure 0x403a8f
	.globl sub_403a8f
	.type sub_403a8f, @function
sub_403a8f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403a90
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_266
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_267
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_269
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_192
	mov	ecx, OFFSET FLAT:label_193
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_268
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x403b04
	.globl sub_403b04
	.type sub_403b04, @function
sub_403b04:

	nop	word ptr cs:[rax + rax]
.label_270:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403b15
	.globl sub_403b15
	.type sub_403b15, @function
sub_403b15:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b1f
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_270
	call	rpl_calloc
	test	rax, rax
	je	.label_270
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403b40

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x403b4a
	.globl sub_403b4a
	.type sub_403b4a, @function
sub_403b4a:

	nop	word ptr [rax + rax]
.label_274:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_271
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403b70
	.globl sub_403b70
	.type sub_403b70, @function
sub_403b70:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b7f

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_274
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_273
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_276
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_273
	mov	esi, OFFSET FLAT:label_275
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_272
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_272:
	mov	rbx, r14
.label_273:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x403c00
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
	#Procedure 0x403c27
	.globl sub_403c27
	.type sub_403c27, @function
sub_403c27:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c30

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	32
	#Procedure 0x403c35
	.globl sub_403c35
	.type sub_403c35, @function
sub_403c35:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c40

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_277
	test	rsi, rsi
	mov	ecx, 1
	je	.label_278
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_278
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_277:
	mov	ecx, 1
.label_278:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x403c8b
	.globl sub_403c8b
	.type sub_403c8b, @function
sub_403c8b:

	nop	dword ptr [rax + rax]
.label_282:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_280:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_281
	inc	r9
	cmp	r9, 0xa
	jb	.label_279
.label_281:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x403cbf
	.globl sub_403cbf
	.type sub_403cbf, @function
sub_403cbf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403cc0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_279:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_282
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_280
	.section	.text
	.align	32
	#Procedure 0x403ce9
	.globl sub_403ce9
	.type sub_403ce9, @function
sub_403ce9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403cf0

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
	#Procedure 0x403d1d
	.globl sub_403d1d
	.type sub_403d1d, @function
sub_403d1d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403d20
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
	#Procedure 0x403d33
	.globl sub_403d33
	.type sub_403d33, @function
sub_403d33:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403d40

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r14, rsi
	mov	r12d, edi
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_187
	call	setlocale
	mov	edi, OFFSET FLAT:label_294
	mov	esi, OFFSET FLAT:label_295
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_294
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	xor	r15d, r15d
	xor	ebx, ebx
	jmp	.label_285
	.section	.text
	.align	32
	#Procedure 0x403d93
	.globl sub_403d93
	.type sub_403d93, @function
sub_403d93:

	nop	word ptr cs:[rax + rax]
.label_283:
	mov	r15b, 1
.label_285:
	mov	edx, OFFSET FLAT:label_292
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, r12d
	mov	rsi, r14
	call	getopt_long
	cmp	eax, 0x63
	jle	.label_302
	cmp	eax, 0x64
	je	.label_283
	cmp	eax, 0x66
	mov	bl, 1
	je	.label_285
	jmp	.label_286
.label_302:
	cmp	eax, -1
	jne	.label_287
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	test	r15b, r15b
	je	.label_288
	test	bl, bl
	jne	.label_293
.label_288:
	test	r15b, r15b
	je	.label_297
	cmp	eax, r12d
	jge	.label_299
.label_297:
	cmp	eax, r12d
	jge	.label_296
	test	bl, bl
	movzx	eax, r15b
	mov	ebp, 2
	cmove	ebp, eax
	mov	ecx,  dword ptr [dword ptr [rip + optind]]
	xor	eax, eax
	cmp	ecx, r12d
	jge	.label_284
	mov	bl, 1
	nop	dword ptr [rax]
.label_298:
	movsxd	rax, ecx
	mov	rsi, qword ptr [r14 + rax*8]
	mov	edi, ebp
	call	sync_arg
	and	bl, al
	mov	ecx,  dword ptr [dword ptr [rip + optind]]
	inc	ecx
	mov	dword ptr [dword ptr [rip + optind]],  ecx
	cmp	ecx, r12d
	jl	.label_298
	xor	bl, 1
	movzx	eax, bl
	jmp	.label_284
.label_296:
	call	sync
	xor	eax, eax
.label_284:
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_287:
	cmp	eax, 0xffffff7d
	je	.label_289
	cmp	eax, 0xffffff7e
	jne	.label_286
	xor	edi, edi
	call	usage
.label_293:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_300
	jmp	.label_301
.label_299:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_303
.label_301:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_289:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_189
	mov	edx, OFFSET FLAT:label_192
	mov	r8d, OFFSET FLAT:label_290
	mov	r9d, OFFSET FLAT:label_291
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_286:
	mov	edi, 1
	call	usage
	.section	.text
	.align	32
	#Procedure 0x403ee6
	.globl sub_403ee6
	.type sub_403ee6, @function
sub_403ee6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ef0

	.globl sync_arg
	.type sync_arg, @function
sync_arg:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rsi
	mov	ebx, edi
	mov	esi, 0x800
	xor	eax, eax
	mov	rdi, r14
	call	open
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_306
	call	__errno_location
	mov	r15d, dword ptr [rax]
	mov	esi, 0x801
	xor	eax, eax
	mov	rdi, r14
	call	open
	mov	ebp, eax
	test	ebp, ebp
	js	.label_314
.label_306:
	mov	esi, 3
	xor	eax, eax
	mov	edi, ebp
	call	rpl_fcntl
	mov	ecx, eax
	cmp	ecx, -1
	je	.label_308
	and	ecx, 0xfffff7ff
	mov	esi, 4
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	rpl_fcntl
	test	eax, eax
	js	.label_308
	test	ebx, ebx
	je	.label_309
	cmp	ebx, 2
	je	.label_310
	cmp	ebx, 1
	jne	.label_312
	mov	edi, ebp
	call	fdatasync
	jmp	.label_305
.label_308:
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_315
	jmp	.label_316
.label_314:
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_304
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbp
	call	error
	jmp	.label_318
.label_309:
	mov	edi, ebp
	call	fsync
	jmp	.label_305
.label_310:
	mov	edi, ebp
	call	syncfs
.label_305:
	mov	r12b, 1
	test	eax, eax
	jns	.label_307
.label_312:
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_311
.label_316:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbx
	call	error
.label_307:
	mov	edi, ebp
	call	close
	test	eax, eax
	jns	.label_317
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_313
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_317:
	test	r12b, r12b
	setne	bl
.label_318:
	mov	eax, ebx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404070

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
	#Procedure 0x404087
	.globl sub_404087
	.type sub_404087, @function
sub_404087:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404090

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
	jne	.label_323
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
	je	.label_319
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_324
	mov	eax, OFFSET FLAT:label_325
	jmp	.label_322
.label_319:
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
	je	.label_326
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_320
	mov	eax, OFFSET FLAT:label_321
	jmp	.label_322
.label_326:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_127
	mov	eax, OFFSET FLAT:label_65
.label_322:
	cmove	rax, rcx
.label_323:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40414d
	.globl sub_40414d
	.type sub_40414d, @function
sub_40414d:

	nop	dword ptr [rax]
.label_328:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_327
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x40415b
	.globl sub_40415b
	.type sub_40415b, @function
sub_40415b:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404165
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_328
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_328
.label_327:
	ret	
	.section	.text
	.align	32
	#Procedure 0x404180
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
	#Procedure 0x404196
	.globl sub_404196
	.type sub_404196, @function
sub_404196:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4041a0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	32
	#Procedure 0x4041aa
	.globl sub_4041aa
	.type sub_4041aa, @function
sub_4041aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4041b0

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
	je	.label_329
	mov	qword ptr [rax], rbx
.label_329:
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
	#Procedure 0x40429c
	.globl sub_40429c
	.type sub_40429c, @function
sub_40429c:

	nop	dword ptr [rax]
.label_332:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_330
.label_331:
	mov	eax, 1
	test	bpl, bpl
	je	.label_330
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
.label_330:
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
	#Procedure 0x4042e8
	.globl sub_4042e8
	.type sub_4042e8, @function
sub_4042e8:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4042eb

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
	je	.label_332
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_331
	jmp	.label_330
	.section	.text
	.align	32
	#Procedure 0x404320

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
	#Procedure 0x404357
	.globl sub_404357
	.type sub_404357, @function
sub_404357:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404360
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
	#Procedure 0x404379
	.globl sub_404379
	.type sub_404379, @function
sub_404379:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404380
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
	#Procedure 0x40438f
	.globl sub_40438f
	.type sub_40438f, @function
sub_40438f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404390
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40439a
	.globl sub_40439a
	.type sub_40439a, @function
sub_40439a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4043a0
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x4043aa
	.globl sub_4043aa
	.type sub_4043aa, @function
sub_4043aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4043b0
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_333
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_333:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x4043ce
	.globl sub_4043ce
	.type sub_4043ce, @function
sub_4043ce:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4043d0

	.globl rpl_fcntl_DUPFD
	.type rpl_fcntl_DUPFD, @function
rpl_fcntl_DUPFD:
	mov	ecx, esi
	xor	esi, esi
	xor	eax, eax
	mov	edx, ecx
	jmp	fcntl
	.section	.text
	.align	32
	#Procedure 0x4043dd
	.globl sub_4043dd
	.type sub_4043dd, @function
sub_4043dd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4043e0
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_334
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_334:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x4043fe
	.globl sub_4043fe
	.type sub_4043fe, @function
sub_4043fe:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404400
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40440a
	.globl sub_40440a
	.type sub_40440a, @function
sub_40440a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404410
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
	#Procedure 0x40441d
	.globl sub_40441d
	.type sub_40441d, @function
sub_40441d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404420
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
	#Procedure 0x40442f
	.globl sub_40442f
	.type sub_40442f, @function
sub_40442f:

	nop
	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4044a2
	.globl sub_4044a2
	.type sub_4044a2, @function
sub_4044a2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4044c6
	.globl sub_4044c6
	.type sub_4044c6, @function
sub_4044c6:

	nop	word ptr cs:[rax + rax]
