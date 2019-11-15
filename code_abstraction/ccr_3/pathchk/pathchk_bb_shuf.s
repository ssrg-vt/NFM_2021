	.section	.text
	.align	32
	#Procedure 0x401349
	.globl sub_401349
	.type sub_401349, @function
sub_401349:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x40134a
	.globl sub_40134a
	.type sub_40134a, @function
sub_40134a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401382
	.globl sub_401382
	.type sub_401382, @function
sub_401382:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4013ca
	.globl sub_4013ca
	.type sub_4013ca, @function
sub_4013ca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4013ec
	.globl sub_4013ec
	.type sub_4013ec, @function
sub_4013ec:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4013fd
	.globl sub_4013fd
	.type sub_4013fd, @function
sub_4013fd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401416
	.globl sub_401416
	.type sub_401416, @function
sub_401416:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401420
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x401431
	.globl sub_401431
	.type sub_401431, @function
sub_401431:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401440
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_9:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_9
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x401461
	.globl sub_401461
	.type sub_401461, @function
sub_401461:

	nop	word ptr cs:[rax + rax]
.label_10:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401475
	.globl sub_401475
	.type sub_401475, @function
sub_401475:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401480

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
	je	.label_10
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
	#Procedure 0x401510
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x401518
	.globl sub_401518
	.type sub_401518, @function
sub_401518:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401520

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_11
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_12
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401545
	.globl sub_401545
	.type sub_401545, @function
sub_401545:

	nop	word ptr cs:[rax + rax]
.label_14:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_13
	call	__errno_location
	mov	dword ptr [rax], 0
.label_13:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40156b

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
	jne	.label_14
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_13
	test	cl, cl
	jne	.label_13
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_13
.label_15:
	call	xalloc_die
.label_16:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_17
	test	rax, rax
	je	.label_15
.label_17:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4015c9

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_16
	test	rbx, rbx
	jne	.label_16
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_20:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_18
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401600
	.globl sub_401600
	.type sub_401600, @function
sub_401600:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40160f

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_20
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_21
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_23
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_21
	mov	esi, OFFSET FLAT:label_22
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_19
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_19:
	mov	rbx, r14
.label_21:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x401690
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40169a
	.globl sub_40169a
	.type sub_40169a, @function
sub_40169a:

	nop	word ptr [rax + rax]
.label_28:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_24
	mov	qword ptr [rsi], rbx
.label_26:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_25
	test	rax, rax
	je	.label_24
.label_25:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4016c8
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_28
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_27
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_26
	call	free
	xor	eax, eax
	jmp	.label_25
.label_27:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4016ff
	.globl sub_4016ff
	.type sub_4016ff, @function
sub_4016ff:

	nop	word ptr cs:[rax + rax]
.label_24:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401710

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_29]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_30]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_31]
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
	#Procedure 0x401765
	.globl sub_401765
	.type sub_401765, @function
sub_401765:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401770
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40177e
	.globl sub_40177e
	.type sub_40177e, @function
sub_40177e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401780

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
	js	.label_32
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_35
	cmp	r12d, 0x7fffffff
	je	.label_37
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
	jne	.label_33
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_33:
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
.label_35:
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
	jbe	.label_38
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_34
.label_38:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_36
	mov	rdi, r14
	call	free
.label_36:
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
.label_34:
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
.label_32:
	call	abort
.label_37:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40193d
	.globl sub_40193d
	.type sub_40193d, @function
sub_40193d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401940

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
	jne	.label_39
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_39
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_40
.label_39:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_40:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_41
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_41:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4019ae
	.globl sub_4019ae
	.type sub_4019ae, @function
sub_4019ae:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4019b0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x4019ba
	.globl sub_4019ba
	.type sub_4019ba, @function
sub_4019ba:

	nop	word ptr [rax + rax]
.label_42:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4019c6
	.globl sub_4019c6
	.type sub_4019c6, @function
sub_4019c6:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4019cb
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_42
	test	rdx, rdx
	je	.label_42
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4019f0
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
	#Procedure 0x401a08
	.globl sub_401a08
	.type sub_401a08, @function
sub_401a08:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401a10
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
	je	.label_43
	mov	qword ptr [rax], rbx
.label_43:
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
	#Procedure 0x401afc
	.globl sub_401afc
	.type sub_401afc, @function
sub_401afc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401b00

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_44
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_44:
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
	#Procedure 0x401b83
	.globl sub_401b83
	.type sub_401b83, @function
sub_401b83:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b90
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_29]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_30]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_31]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_45
	test	rdx, rdx
	je	.label_45
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_45:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401bfe
	.globl sub_401bfe
	.type sub_401bfe, @function
sub_401bfe:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401c00

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xc8
	mov	r12, rsi
	mov	dword ptr [rsp + 4], edi
	mov	rdi, qword ptr [r12]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_11
	call	setlocale
	mov	edi, OFFSET FLAT:label_58
	mov	esi, OFFSET FLAT:label_68
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_58
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	xor	ecx, ecx
	jmp	.label_63
.label_78:
	mov	al, 1
	mov	qword ptr [rsp + 8], rax
	movzx	eax, byte ptr [rsp + 2]
	mov	cl, al
	nop	dword ptr [rax]
.label_63:
	mov	eax, ecx
	mov	byte ptr [rsp + 2], al
	mov	edx, OFFSET FLAT:label_66
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, dword ptr [rsp + 4]
	mov	rsi, r12
	call	getopt_long
	cmp	eax, 0x4f
	jle	.label_70
	mov	cl, 1
	cmp	eax, 0x50
	je	.label_63
	cmp	eax, 0x80
	mov	dl, 1
	mov	qword ptr [rsp + 8], rdx
	je	.label_63
	cmp	eax, 0x70
	je	.label_78
	jmp	.label_79
.label_70:
	cmp	eax, -1
	jne	.label_81
	mov	eax, dword ptr [rip + optind]
	cmp	eax, dword ptr [rsp + 4]
	je	.label_82
	mov	cl, 1
	jge	.label_86
	xor	edx, edx
	mov	rcx, qword ptr [rsp + 8]
	test	cl, cl
	mov	ecx, 0xe
	cmovne	rdx, rcx
	mov	qword ptr [rsp + 0x30], rdx
	mov	cl, 1
	mov	qword ptr [rsp + 0x20], r12
	jmp	.label_69
.label_62:
	mov	edi, 1
	mov	rsi, rbx
	lea	rdx, [rsp + 0x38]
	call	__lxstat
	test	eax, eax
	je	.label_55
	call	__errno_location
	mov	r14, rax
	test	rbp, rbp
	mov	r13d, dword ptr [r14]
	je	.label_51
	cmp	r13d, 2
	jne	.label_51
	cmp	rbp, 0x100
	jb	.label_54
	cmp	byte ptr [rbx], 0x2f
	mov	r15d, OFFSET FLAT:label_56
	mov	eax, OFFSET FLAT:label_57
	cmove	r15, rax
	mov	dword ptr [r14], 0
	mov	esi, 4
	mov	rdi, r15
	call	pathconf
	mov	r13, rax
	test	r13, r13
	jns	.label_46
	mov	r14d, dword ptr [r14]
	test	r14d, r14d
	je	.label_46
	mov	rbx, r15
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_65
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rcx
	mov	rcx, rbx
	call	error
	jmp	.label_53
.label_46:
	cmp	r13, rbp
	jbe	.label_74
	mov	rax, qword ptr [rsp + 8]
	test	al, al
	mov	edx, 0xe
	jne	.label_96
.label_54:
	mov	rax, rbx
	nop	dword ptr [rax]
.label_61:
	mov	cl, byte ptr [rax]
	inc	rax
	cmp	cl, 0x2f
	je	.label_61
	mov	r15b, 1
	test	cl, cl
	je	.label_53
	xor	ecx, ecx
	jmp	.label_98
	.section	.text
	.align	32
	#Procedure 0x401dd9
	.globl sub_401dd9
	.type sub_401dd9, @function
sub_401dd9:

	nop	dword ptr [rax]
.label_95:
	inc	rcx
.label_98:
	movzx	edx, byte ptr [rax + rcx]
	test	dl, dl
	je	.label_93
	cmp	dl, 0x2f
	jne	.label_95
.label_93:
	add	rax, rcx
	inc	rcx
	cmp	rcx, 0xf
	jb	.label_61
	mov	rdx, qword ptr [rsp + 0x30]
.label_96:
	mov	eax, 0xe
	mov	rbp, rbx
.label_97:
	mov	rcx, rax
	nop	dword ptr [rax]
.label_48:
	mov	r13, rbp
	movzx	r14d, byte ptr [r13]
	lea	rbp, [r13 + 1]
	cmp	r14b, 0x2f
	je	.label_48
	mov	r15b, 1
	test	r14b, r14b
	mov	r12, qword ptr [rsp + 0x20]
	je	.label_53
	test	rdx, rdx
	mov	rax, rdx
	jne	.label_47
	cmp	r13, rbx
	mov	r15, rbx
	mov	eax, OFFSET FLAT:label_56
	cmove	r15, rax
	mov	qword ptr [rsp + 0x18], rcx
	call	__errno_location
	mov	qword ptr [rsp + 0x10], rax
	mov	dword ptr [rax], 0
	mov	byte ptr [r13], 0
	mov	esi, 3
	mov	qword ptr [rsp + 0x28], r15
	mov	rdi, r15
	call	pathconf
	mov	rsi, qword ptr [rsp + 0x18]
	mov	byte ptr [r13], r14b
	test	rax, rax
	mov	edx, 0
	jns	.label_47
	mov	rax, qword ptr [rsp + 0x10]
	mov	ecx, dword ptr [rax]
	mov	rax, -1
	test	ecx, ecx
	mov	edx, 0
	je	.label_47
	cmp	ecx, 2
	mov	rdx, rsi
	mov	rax, rsi
	jne	.label_84
	nop	
.label_47:
	xor	r14d, r14d
	jmp	.label_80
	.section	.text
	.align	32
	#Procedure 0x401eb5
	.globl sub_401eb5
	.type sub_401eb5, @function
sub_401eb5:

	nop	word ptr cs:[rax + rax]
.label_85:
	inc	r14
.label_80:
	movzx	r12d, byte ptr [rbp + r14]
	test	r12b, r12b
	je	.label_72
	cmp	r12b, 0x2f
	jne	.label_85
.label_72:
	lea	rcx, [r14 + 1]
	add	rbp, r14
	cmp	rax, rcx
	jae	.label_97
	mov	byte ptr [r13 + r14 + 1], 0
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_94
	mov	qword ptr [rsp + 0x18], rax
	mov	edx, 5
	mov	rbp, rcx
	call	dcgettext
	mov	qword ptr [rsp + 0x10], rax
	mov	rdi, r13
	call	quote
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	r8, rbp
	mov	r9, rbx
	call	error
	mov	byte ptr [r13 + r14 + 1], r12b
	mov	r12, qword ptr [rsp + 0x20]
	jmp	.label_53
.label_74:
	dec	r13
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_67
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, r13
	mov	r8, rbp
	mov	r9, rbx
	call	error
	jmp	.label_53
.label_55:
	mov	r15b, 1
	jmp	.label_53
.label_51:
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_75
	xor	eax, eax
	mov	esi, r13d
	call	error
	jmp	.label_53
.label_84:
	mov	byte ptr [r13], 0
	mov	rax, qword ptr [rsp + 0x10]
	mov	ebx, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x28]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_75
	xor	eax, eax
	mov	esi, ebx
	call	error
	mov	byte ptr [r13], r14b
	jmp	.label_53
	.section	.text
	.align	32
	#Procedure 0x401ff5
	.globl sub_401ff5
	.type sub_401ff5, @function
sub_401ff5:

	nop	word ptr cs:[rax + rax]
.label_69:
	mov	byte ptr [rsp + 3], cl
	cdqe	
	mov	rbx, qword ptr [r12 + rax*8]
	mov	rdi, rbx
	call	strlen
	mov	rbp, rax
	cmp	byte ptr [rsp + 2], 0
	je	.label_49
	mov	esi, 0x2d
	mov	rdi, rbx
	jmp	.label_52
	.section	.text
	.align	32
	#Procedure 0x402026
	.globl sub_402026
	.type sub_402026, @function
sub_402026:

	nop	word ptr cs:[rax + rax]
.label_60:
	inc	rax
	mov	esi, 0x2d
	mov	rdi, rax
.label_52:
	call	strchr
	test	rax, rax
	je	.label_49
	cmp	rax, rbx
	je	.label_59
	cmp	byte ptr [rax - 1], 0x2f
	jne	.label_60
.label_59:
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_92
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	jmp	.label_53
	.section	.text
	.align	32
	#Procedure 0x40208a
	.globl sub_40208a
	.type sub_40208a, @function
sub_40208a:

	nop	word ptr [rax + rax]
.label_49:
	mov	rax, qword ptr [rsp + 8]
	test	al, al
	je	.label_71
	test	rbp, rbp
	je	.label_73
	mov	esi, OFFSET FLAT:label_76
	mov	rdi, rbx
	call	strspn
	cmp	byte ptr [rbx + rax], 0
	mov	r13d, 0x100
	je	.label_46
	lea	r14, [rbx + rax]
	mov	qword ptr [rsp + 0x38], 0
	sub	rbp, rax
	mov	rdi, r14
	mov	rsi, rbp
	lea	rdx, [rsp + 0x38]
	call	rpl_mbrlen
	mov	rbp, rax
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_77
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	cmp	rbp, 0x11
	mov	eax, 1
	cmovae	rbp, rax
	mov	edi, 1
	mov	esi, 8
	mov	rdx, r14
	mov	rcx, rbp
	call	quotearg_n_style_mem
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r13
	mov	rcx, rbp
	mov	r8, rbx
	call	error
	jmp	.label_53
	.section	.text
	.align	32
	#Procedure 0x40214a
	.globl sub_40214a
	.type sub_40214a, @function
sub_40214a:

	nop	word ptr [rax + rax]
.label_71:
	cmp	byte ptr [rsp + 2], 0
	je	.label_62
	test	rbp, rbp
	jne	.label_62
.label_73:
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_64
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_53:
	mov	cl, byte ptr [rsp + 3]
	and	cl, r15b
	mov	eax, dword ptr [rip + optind]
	inc	eax
	mov	dword ptr [rip + optind],  eax
	cmp	eax, dword ptr [rsp + 4]
	jl	.label_69
.label_86:
	movzx	eax, cl
	xor	eax, 1
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_81:
	cmp	eax, 0xffffff7d
	je	.label_83
	cmp	eax, 0xffffff7e
	jne	.label_79
	xor	edi, edi
	call	usage
.label_83:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_87
	mov	edx, OFFSET FLAT:label_88
	mov	r8d, OFFSET FLAT:label_89
	mov	r9d, OFFSET FLAT:label_90
	mov	eax, 0
	push	0
	push	OFFSET FLAT:label_91
	call	version_etc
	add	rsp, 0x10
	xor	edi, edi
	call	exit
.label_82:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_50
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
.label_79:
	mov	edi, 1
	call	usage
	.section	.text
	.align	32
	#Procedure 0x40224b
	.globl sub_40224b
	.type sub_40224b, @function
sub_40224b:

	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402250
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_29]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_30]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_31]
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
	#Procedure 0x4022be
	.globl sub_4022be
	.type sub_4022be, @function
sub_4022be:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4022c0

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
	#Procedure 0x4022d9
	.globl sub_4022d9
	.type sub_4022d9, @function
sub_4022d9:

	nop	dword ptr [rax]
.label_99:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4022e5
	.globl sub_4022e5
	.type sub_4022e5, @function
sub_4022e5:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4022e9

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
	je	.label_99
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
	#Procedure 0x402350
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_29]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_30]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_31]
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
	#Procedure 0x4023a4
	.globl sub_4023a4
	.type sub_4023a4, @function
sub_4023a4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4023b0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_100
	test	rsi, rsi
	mov	ecx, 1
	je	.label_101
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_101
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_100:
	mov	ecx, 1
.label_101:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x4023fb
	.globl sub_4023fb
	.type sub_4023fb, @function
sub_4023fb:

	nop	dword ptr [rax + rax]
.label_107:
	test	rcx, rcx
	jne	.label_102
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_102:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_106
.label_108:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_105
	test	rbx, rbx
	jne	.label_105
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_106:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402451
	.globl sub_402451
	.type sub_402451, @function
sub_402451:

	nop	word ptr [rax + rax]
.label_105:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_103
	test	rax, rax
	je	.label_104
.label_103:
	pop	rbx
	ret	
.label_104:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402473
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_107
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_104
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_108
	.section	.text
	.align	32
	#Procedure 0x4024a0
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
	je	.label_110
	test	r14, r14
	je	.label_109
.label_110:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_109:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4024d6
	.globl sub_4024d6
	.type sub_4024d6, @function
sub_4024d6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4024e0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_111
	test	rax, rax
	je	.label_112
.label_111:
	pop	rbx
	ret	
.label_112:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4024fa
	.globl sub_4024fa
	.type sub_4024fa, @function
sub_4024fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402500
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
	#Procedure 0x40250f
	.globl sub_40250f
	.type sub_40250f, @function
sub_40250f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402510
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
	#Procedure 0x40251f
	.globl sub_40251f
	.type sub_40251f, @function
sub_40251f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402520

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
	#Procedure 0x402537
	.globl sub_402537
	.type sub_402537, @function
sub_402537:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402540
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x402548
	.globl sub_402548
	.type sub_402548, @function
sub_402548:

	nop	dword ptr [rax + rax]
.label_114:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x40255c
	.globl sub_40255c
	.type sub_40255c, @function
sub_40255c:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402568

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_114
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_113
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_114
.label_113:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_114
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_115
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_115:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4025d0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_120
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_126
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_117
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_128
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_125
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_124
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_88
	mov	ecx, OFFSET FLAT:label_118
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_122
	mov	esi, OFFSET FLAT:label_123
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_122
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_129
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_122:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_119
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_118
	mov	ecx, OFFSET FLAT:label_87
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_116
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_87
	mov	ecx, OFFSET FLAT:label_121
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_120:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_127
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
	#Procedure 0x40276b
	.globl sub_40276b
	.type sub_40276b, @function
sub_40276b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402770

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_130
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_75
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4027a0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_141
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_143
.label_141:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_143:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_132
	cmp	r10d, 0x29
	jae	.label_140
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_142
.label_140:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_142:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_132
	cmp	r10d, 0x29
	jae	.label_138
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_139
.label_138:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_139:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_132
	cmp	r10d, 0x29
	jae	.label_136
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_137
.label_136:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_137:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_132
	cmp	r10d, 0x29
	jae	.label_134
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_135
.label_134:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_135:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_132
	cmp	r10d, 0x29
	jae	.label_131
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_133
.label_131:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_133:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_132
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_132
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_132
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_132
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_132:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x402982
	.globl sub_402982
	.type sub_402982, @function
sub_402982:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402990
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
	#Procedure 0x402a51
	.globl sub_402a51
	.type sub_402a51, @function
sub_402a51:

	nop	word ptr cs:[rax + rax]
.label_144:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402a65
	.globl sub_402a65
	.type sub_402a65, @function
sub_402a65:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a6d

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
	je	.label_144
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
	.align	32
	#Procedure 0x402ad0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_145
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_145
	test	byte ptr [rbx + 1], 1
	je	.label_145
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_145:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x402b03
	.globl sub_402b03
	.type sub_402b03, @function
sub_402b03:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b10
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_146
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_147
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_149
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_88
	mov	ecx, OFFSET FLAT:label_118
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_148
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x402b84
	.globl sub_402b84
	.type sub_402b84, @function
sub_402b84:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b90

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
	jmp	.label_196
	.section	.text
	.align	32
	#Procedure 0x402c3f
	.globl sub_402c3f
	.type sub_402c3f, @function
sub_402c3f:

	nop	
.label_193:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_187
	or	al, dl
	jne	.label_187
	test	dil, 1
	jne	.label_190
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_187
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_196
	jmp	.label_187
.label_430:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_201
	test	rbp, rbp
	je	.label_186
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_186:
	mov	r14d, 1
	jmp	.label_209
.label_431:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_211
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_212
.label_201:
	xor	r14d, r14d
.label_209:
	mov	eax, OFFSET FLAT:label_211
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_222
	.section	.text
	.align	32
	#Procedure 0x402d0f
	.globl sub_402d0f
	.type sub_402d0f, @function
sub_402d0f:

	nop	
.label_196:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_229
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_235]
.label_432:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_240
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_168
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
	jne	.label_180
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_180
	xor	r14d, r14d
	nop	
.label_158:
	cmp	r14, rbp
	jae	.label_257
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_257:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_158
.label_180:
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
	jmp	.label_212
.label_425:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_212
.label_428:
	mov	al, 1
.label_426:
	mov	r12b, 1
.label_429:
	test	r12b, 1
	mov	cl, 1
	je	.label_151
	mov	ecx, eax
.label_151:
	mov	al, cl
.label_427:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_154
	test	rbp, rbp
	je	.label_161
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_161:
	mov	r14d, 1
	jmp	.label_164
.label_154:
	xor	r14d, r14d
.label_164:
	mov	ecx, OFFSET FLAT:label_168
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_222:
	mov	sil, r12b
.label_212:
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
	jmp	.label_178
	.section	.text
	.align	32
	#Procedure 0x402ed1
	.globl sub_402ed1
	.type sub_402ed1, @function
sub_402ed1:

	nop	word ptr cs:[rax + rax]
.label_181:
	inc	r12
.label_178:
	cmp	r11, -1
	je	.label_217
	cmp	r12, r11
	jne	.label_219
	jmp	.label_221
	.section	.text
	.align	32
	#Procedure 0x402ef3
	.globl sub_402ef3
	.type sub_402ef3, @function
sub_402ef3:

	nop	word ptr cs:[rax + rax]
.label_217:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_225
.label_219:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_230
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_199
	cmp	r11, -1
	jne	.label_199
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_199:
	cmp	rbx, r11
	jbe	.label_243
.label_230:
	xor	esi, esi
.label_170:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_244
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_247]
.label_408:
	test	r12, r12
	jne	.label_204
	jmp	.label_150
	.section	.text
	.align	32
	#Procedure 0x402f86
	.globl sub_402f86
	.type sub_402f86, @function
sub_402f86:

	nop	word ptr cs:[rax + rax]
.label_243:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_259
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_170
	jmp	.label_162
.label_259:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_170
.label_412:
	xor	eax, eax
	cmp	r11, -1
	je	.label_272
	test	r12, r12
	jne	.label_276
	cmp	r11, 1
	je	.label_150
	xor	r13d, r13d
	jmp	.label_171
.label_401:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_156
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_162
	cmp	r8d, 2
	jne	.label_167
	mov	eax, r9d
	and	al, 1
	jne	.label_167
	cmp	r14, rbp
	jae	.label_169
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_169:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_174
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_174:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_182
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_182:
	add	r14, 3
	mov	r9b, 1
.label_167:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_189
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_189:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_195
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_195
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_195
	cmp	r14, rbp
	jae	.label_163
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_163:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_192
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_192:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_171
.label_402:
	mov	bl, 0x62
	jmp	.label_218
.label_403:
	mov	cl, 0x74
	jmp	.label_213
.label_404:
	mov	bl, 0x76
	jmp	.label_218
.label_405:
	mov	bl, 0x66
	jmp	.label_218
.label_406:
	mov	cl, 0x72
	jmp	.label_213
.label_409:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_227
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_172
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
	jae	.label_236
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_236:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_245
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_245:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_250
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_250:
	add	r14, 3
	xor	r9d, r9d
.label_227:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_171
.label_410:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_255
	cmp	r8d, 2
	jne	.label_204
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_204
	jmp	.label_172
.label_411:
	cmp	r8d, 2
	jne	.label_264
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_172
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_266
.label_244:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_269
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_153
.label_272:
	test	r12, r12
	jne	.label_165
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_165
.label_150:
	mov	dl, 1
.label_407:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_172
	xor	eax, eax
	mov	r13b, dl
.label_171:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_179
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_183
	jmp	.label_185
	.section	.text
	.align	32
	#Procedure 0x403264
	.globl sub_403264
	.type sub_403264, @function
sub_403264:

	nop	word ptr cs:[rax + rax]
.label_179:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_185
.label_183:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_191
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_197
	.section	.text
	.align	32
	#Procedure 0x40329d
	.globl sub_40329d
	.type sub_40329d, @function
sub_40329d:

	nop	dword ptr [rax]
.label_185:
	test	sil, sil
.label_197:
	mov	ebx, r15d
	je	.label_206
	jmp	.label_203
.label_191:
	mov	ebx, r15d
	jmp	.label_203
.label_156:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_181
	xor	r15d, r15d
	jmp	.label_204
.label_264:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_213
	xor	eax, eax
	mov	r15b, 0x5c
.label_266:
	xor	r13d, r13d
	jmp	.label_206
.label_213:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_172
.label_218:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_171
	nop	
.label_203:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_162
	cmp	r8d, 2
	jne	.label_228
	mov	eax, r9d
	and	al, 1
	jne	.label_228
	cmp	r14, rbp
	jae	.label_233
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_233:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_237
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_237:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_239
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_239:
	add	r14, 3
	mov	r9b, 1
.label_228:
	cmp	r14, rbp
	jae	.label_273
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_273:
	inc	r14
	jmp	.label_176
.label_269:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_248
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_248:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_254
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_231:
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
	je	.label_265
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_274
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_166
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_159
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_207:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_268
	bt	rsi, rdx
	jb	.label_172
.label_268:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_207
.label_159:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_188
	xor	r13d, r13d
.label_188:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_231
	jmp	.label_198
.label_195:
	xor	r13d, r13d
	jmp	.label_171
.label_165:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_171
.label_255:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_204
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_204
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_204
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_214
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_251
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_224
	cmp	r14, rbp
	jae	.label_226
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_226:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_232
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_232:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_173
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_173:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_184
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_184:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_251:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_171
.label_204:
	xor	eax, eax
.label_276:
	xor	r13d, r13d
	jmp	.label_171
.label_254:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_270:
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
	je	.label_260
	cmp	rbp, -1
	je	.label_263
	cmp	rbp, -2
	je	.label_265
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_252
	xor	r13d, r13d
.label_252:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_270
	jmp	.label_198
.label_265:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_157
	lea	rax, [r10 + r12]
.label_200:
	cmp	byte ptr [rax + rsi], 0
	je	.label_157
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_200
.label_157:
	mov	qword ptr [rsp + 0x40], rsi
.label_274:
	xor	r13d, r13d
	jmp	.label_166
.label_263:
	xor	r13d, r13d
.label_260:
	mov	r10, qword ptr [rsp + 0x28]
.label_166:
	mov	r12, qword ptr [rsp + 0x40]
.label_198:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_153:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_177
	test	al, al
	je	.label_177
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_171
.label_177:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_194
	.section	.text
	.align	32
	#Procedure 0x403697
	.globl sub_403697
	.type sub_403697, @function
sub_403697:

	nop	word ptr [rax + rax]
.label_275:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_194:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_202
	test	sil, 1
	je	.label_210
	cmp	r14, rbp
	jae	.label_208
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_208:
	inc	r14
	xor	esi, esi
	jmp	.label_210
	.section	.text
	.align	32
	#Procedure 0x4036d5
	.globl sub_4036d5
	.type sub_4036d5, @function
sub_4036d5:

	nop	word ptr cs:[rax + rax]
.label_202:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_162
	cmp	r8d, 2
	jne	.label_220
	mov	eax, r9d
	and	al, 1
	jne	.label_220
	cmp	r14, rbp
	jae	.label_267
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_267:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_216
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_216:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_249
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_249:
	add	r14, 3
	mov	r9b, 1
.label_220:
	cmp	r14, rbp
	jae	.label_238
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_238:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_253
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_253:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_246
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_246:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_210:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_206
	test	r9b, 1
	je	.label_215
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_262
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_258
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_258:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_271
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_271:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_215
	.section	.text
	.align	32
	#Procedure 0x4037e6
	.globl sub_4037e6
	.type sub_4037e6, @function
sub_4037e6:

	nop	word ptr cs:[rax + rax]
.label_262:
	mov	rbx, rcx
.label_215:
	cmp	r14, rbp
	jae	.label_275
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_275
	.section	.text
	.align	32
	#Procedure 0x40380e
	.globl sub_40380e
	.type sub_40380e, @function
sub_40380e:

	nop	
.label_206:
	test	r9b, 1
	je	.label_155
	and	al, 1
	jne	.label_155
	cmp	r14, rbp
	jae	.label_160
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_160:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_223
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_223:
	add	r14, 2
	xor	r9d, r9d
.label_155:
	mov	ebx, r15d
.label_176:
	cmp	r14, rbp
	jae	.label_175
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_175:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_181
.label_214:
	xor	r13d, r13d
	jmp	.label_171
	.section	.text
	.align	32
	#Procedure 0x403871
	.globl sub_403871
	.type sub_403871, @function
sub_403871:

	nop	word ptr cs:[rax + rax]
.label_221:
	mov	rcx, r12
.label_225:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_193
	or	al, dl
	jne	.label_193
	mov	r11, rcx
	jmp	.label_162
.label_172:
	mov	eax, 2
.label_261:
	mov	qword ptr [rsp + 0x38], rax
.label_162:
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
.label_205:
	mov	r14, rax
.label_256:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_187:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_234
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_152
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_152
	inc	rdx
	nop	dword ptr [rax + rax]
.label_242:
	cmp	r14, rbp
	jae	.label_241
	mov	byte ptr [rcx + r14], al
.label_241:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_242
	jmp	.label_152
.label_190:
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
	jmp	.label_205
.label_234:
	mov	rcx, qword ptr [rsp + 0x10]
.label_152:
	cmp	r14, rbp
	jae	.label_256
	mov	byte ptr [rcx + r14], 0
	jmp	.label_256
.label_224:
	mov	eax, 5
	jmp	.label_261
.label_229:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4039c0
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
	#Procedure 0x403a35
	.globl sub_403a35
	.type sub_403a35, @function
sub_403a35:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403a40
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_277
	call	rpl_calloc
	test	rax, rax
	je	.label_277
	pop	rcx
	ret	
.label_277:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403a66
	.globl sub_403a66
	.type sub_403a66, @function
sub_403a66:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403a70
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_278
	test	rax, rax
	je	.label_279
.label_278:
	pop	rbx
	ret	
.label_279:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403a8a
	.globl sub_403a8a
	.type sub_403a8a, @function
sub_403a8a:

	nop	word ptr [rax + rax]
.label_280:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403a95
	.globl sub_403a95
	.type sub_403a95, @function
sub_403a95:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403a99

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
	je	.label_281
	test	r15, r15
	je	.label_280
.label_281:
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
	#Procedure 0x403ad0

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
	jne	.label_286
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_290
	cmp	ecx, 0x55
	jne	.label_282
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_282
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_282
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_282
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_282
	cmp	byte ptr [rax + 5], 0
	jne	.label_282
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_288
	mov	eax, OFFSET FLAT:label_289
	jmp	.label_285
.label_290:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_282
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_282
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_282
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_282
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_282
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_282
	cmp	byte ptr [rax + 7], 0
	je	.label_287
.label_282:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_211
	mov	eax, OFFSET FLAT:label_168
.label_285:
	cmove	rax, rcx
.label_286:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_287:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_283
	mov	eax, OFFSET FLAT:label_284
	jmp	.label_285
	.section	.text
	.align	32
	#Procedure 0x403b95
	.globl sub_403b95
	.type sub_403b95, @function
sub_403b95:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ba0
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
	je	.label_291
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
.label_291:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403c01
	.globl sub_403c01
	.type sub_403c01, @function
sub_403c01:

	nop	word ptr cs:[rax + rax]
.label_292:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403c15
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_29]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_30]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_31]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_292
	test	rsi, rsi
	je	.label_292
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
	.align	32
	#Procedure 0x403c80
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_293
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_295:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_295
.label_293:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_297
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_296], OFFSET FLAT:slot0
.label_297:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_294
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_294:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x403d11
	.globl sub_403d11
	.type sub_403d11, @function
sub_403d11:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403d20
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
	#Procedure 0x403d33
	.globl sub_403d33
	.type sub_403d33, @function
sub_403d33:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403d40

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_299
	cmp	byte ptr [rax], 0x43
	jne	.label_301
	cmp	byte ptr [rax + 1], 0
	je	.label_298
.label_301:
	mov	esi, OFFSET FLAT:label_300
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_299
.label_298:
	xor	ebx, ebx
.label_299:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403d71
	.globl sub_403d71
	.type sub_403d71, @function
sub_403d71:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403d80

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
	je	.label_302
	mov	edx, OFFSET FLAT:label_312
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_318
.label_302:
	mov	edx, OFFSET FLAT:label_319
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_318:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_305
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
	mov	esi, OFFSET FLAT:label_320
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_307
	jmp	qword ptr [(r12 * 8) + label_308]
.label_374:
	add	rsp, 8
	jmp	.label_306
.label_307:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_315
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
	jmp	.label_306
.label_375:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_303
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
.label_376:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_316
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
.label_377:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_313
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
.label_378:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_310
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
	jmp	.label_306
.label_379:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_309
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
	jmp	.label_306
.label_380:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_311
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
	jmp	.label_306
.label_381:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_314
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
	jmp	.label_306
.label_383:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_317
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
	jmp	.label_306
.label_382:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_304
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
.label_306:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4040d8
	.globl sub_4040d8
	.type sub_4040d8, @function
sub_4040d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4040e0

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
	je	.label_321
	cmp	r15, -2
	jb	.label_321
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_321
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_321:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x404136
	.globl sub_404136
	.type sub_404136, @function
sub_404136:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404140
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_29]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_30]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_31]
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
	#Procedure 0x4041af
	.globl sub_4041af
	.type sub_4041af, @function
sub_4041af:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4041b0
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
	#Procedure 0x4041c8
	.globl sub_4041c8
	.type sub_4041c8, @function
sub_4041c8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4041d0

	.globl rpl_mbrlen
	.type rpl_mbrlen, @function
rpl_mbrlen:
	mov	rax, rsi
	mov	rsi, rdi
	test	rdx, rdx
	mov	ecx, OFFSET FLAT:internal_state
	cmovne	rcx, rdx
	xor	edi, edi
	mov	rdx, rax
	jmp	rpl_mbrtowc
	.section	.text
	.align	32
	#Procedure 0x4041ec
	.globl sub_4041ec
	.type sub_4041ec, @function
sub_4041ec:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4041f0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_29]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_30]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_31]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_322
	test	rsi, rsi
	je	.label_322
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
.label_322:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40425c
	.globl sub_40425c
	.type sub_40425c, @function
sub_40425c:

	nop	dword ptr [rax]
.label_324:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_325
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_326:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_323
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_324
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_75
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_327:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x4042dd

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_328
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_326
	cmp	dword ptr [rbp], 0x20
	jne	.label_326
.label_328:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_327
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404320
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
	#Procedure 0x404339
	.globl sub_404339
	.type sub_404339, @function
sub_404339:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404340

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
	je	.label_329
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
.label_329:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4043a8
	.globl sub_4043a8
	.type sub_4043a8, @function
sub_4043a8:

	nop	dword ptr [rax + rax]
.label_330:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4043b5
	.globl sub_4043b5
	.type sub_4043b5, @function
sub_4043b5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4043c3
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
	je	.label_331
	test	r15, r15
	je	.label_330
.label_331:
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
	#Procedure 0x404400
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
	#Procedure 0x404433
	.globl sub_404433
	.type sub_404433, @function
sub_404433:

	nop	word ptr cs:[rax + rax]
.label_334:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_332
	test	rax, rax
	je	.label_333
.label_332:
	pop	rbx
	ret	
.label_333:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404459
	.globl sub_404459
	.type sub_404459, @function
sub_404459:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404461
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_333
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_334
	test	rbx, rbx
	jne	.label_334
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x404490
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
	#Procedure 0x4044c6
	.globl sub_4044c6
	.type sub_4044c6, @function
sub_4044c6:

	nop	word ptr cs:[rax + rax]
.label_335:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4044d5
	.globl sub_4044d5
	.type sub_4044d5, @function
sub_4044d5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4044e0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_335
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_336
	test	rax, rax
	je	.label_335
.label_336:
	pop	rbx
	ret	
.label_337:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404515
	.globl sub_404515
	.type sub_404515, @function
sub_404515:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40451b
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_29]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_30]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_31]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_337
	test	rdx, rdx
	je	.label_337
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
	#Procedure 0x4045e5
	.globl sub_4045e5
	.type sub_4045e5, @function
sub_4045e5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4045f2
	.globl sub_4045f2
	.type sub_4045f2, @function
sub_4045f2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404616
	.globl sub_404616
	.type sub_404616, @function
sub_404616:

	nop	word ptr cs:[rax + rax]
