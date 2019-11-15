	.section	.text
	.align	32
	#Procedure 0x401909
	.globl sub_401909
	.type sub_401909, @function
sub_401909:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x40190a
	.globl sub_40190a
	.type sub_40190a, @function
sub_40190a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401942
	.globl sub_401942
	.type sub_401942, @function
sub_401942:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40198a
	.globl sub_40198a
	.type sub_40198a, @function
sub_40198a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4019ac
	.globl sub_4019ac
	.type sub_4019ac, @function
sub_4019ac:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4019bd
	.globl sub_4019bd
	.type sub_4019bd, @function
sub_4019bd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4019d6
	.globl sub_4019d6
	.type sub_4019d6, @function
sub_4019d6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4019e0

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
	.align	32
	#Procedure 0x401a13
	.globl sub_401a13
	.type sub_401a13, @function
sub_401a13:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401a20

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_9
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:label_10
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401a5f
	.globl sub_401a5f
	.type sub_401a5f, @function
sub_401a5f:

	nop	
.label_12:
	mov	byte ptr [rbp - 1], 0
.label_13:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401a6e
	.globl sub_401a6e
	.type sub_401a6e, @function
sub_401a6e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401a7c
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_12
	jmp	.label_11
.label_11:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_13
	.section	.text
	.align	32
	#Procedure 0x401aa0

	.globl print_deadprocs
	.type print_deadprocs, @function
print_deadprocs:
	push	rbp
	mov	rbp, rsp
	push	r14
	push	rbx
	sub	rsp, 0x90
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, qword ptr [rbp - 0x18]
	call	make_id_equals_comment
	movabs	rsi, OFFSET FLAT:label_18
	lea	rdi, [rbp - 0x2c]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	movsxd	rdx, dword ptr [rax + 4]
	mov	al, 0
	call	sprintf
	cmp	qword ptr [word ptr [print_deadprocs.exitstr]],  0
	mov	dword ptr [rbp - 0x30], eax
	jne	.label_19
	movabs	rdi, OFFSET FLAT:label_16
	call	gettext
	movabs	rdi, OFFSET FLAT:label_14
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rax
	call	strlen
	add	rax, 6
	add	rax, 1
	mov	rdi, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x40], rax
	call	gettext
	mov	rdi, rax
	call	strlen
	mov	rdi, qword ptr [rbp - 0x40]
	add	rdi, rax
	add	rdi, 6
	add	rdi, 1
	call	xmalloc
	mov	qword ptr [word ptr [print_deadprocs.exitstr]],  rax
.label_19:
	movabs	rdi, OFFSET FLAT:label_16
	mov	rax,  qword ptr [word ptr [print_deadprocs.exitstr]]
	mov	qword ptr [rbp - 0x48], rax
	call	gettext
	movabs	rdi, OFFSET FLAT:label_14
	mov	rcx, qword ptr [rbp - 0x18]
	movsx	ecx, word ptr [rcx + 0x14c]
	mov	qword ptr [rbp - 0x50], rax
	mov	dword ptr [rbp - 0x54], ecx
	call	gettext
	movabs	rsi, OFFSET FLAT:label_17
	mov	rdi, qword ptr [rbp - 0x18]
	movsx	r9d, word ptr [rdi + 0x14e]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	ecx, dword ptr [rbp - 0x54]
	mov	r8, rax
	mov	al, 0
	call	sprintf
	mov	rdx, qword ptr [rbp - 0x18]
	add	rdx, 8
	mov	rdi, qword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x58], eax
	mov	qword ptr [rbp - 0x60], rdx
	call	time_string
	mov	edi, 0xffffffff
	movabs	rdx, OFFSET FLAT:label_15
	mov	ecx, 0x20
	lea	rsi, [rbp - 0x2c]
	mov	r8, qword ptr [rbp - 0x20]
	mov	r10,  qword ptr [word ptr [print_deadprocs.exitstr]]
	mov	qword ptr [rbp - 0x68], rsi
	mov	rsi, rdx
	mov	qword ptr [rbp - 0x70], rdx
	mov	edx, ecx
	mov	r11, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x78], r8
	mov	r8, r11
	mov	r9, rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rsp], rax
	mov	rbx, qword ptr [rbp - 0x68]
	mov	qword ptr [rsp + 8], rbx
	mov	r14, qword ptr [rbp - 0x78]
	mov	qword ptr [rsp + 0x10], r14
	mov	qword ptr [rsp + 0x18], r10
	call	print_line
	mov	rdi, qword ptr [rbp - 0x20]
	call	free
	add	rsp, 0x90
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401c43
	.globl sub_401c43
	.type sub_401c43, @function
sub_401c43:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c50

	.globl canon_host
	.type canon_host, @function
canon_host:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rsi, OFFSET FLAT:last_cherror
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	canon_host_r
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401c75
	.globl sub_401c75
	.type sub_401c75, @function
sub_401c75:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c80

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
	je	.label_20
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
.label_20:
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
	.align	32
	#Procedure 0x401de4
	.globl sub_401de4
	.type sub_401de4, @function
sub_401de4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401df0
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_21
	jmp	.label_23
.label_23:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_22
.label_21:
	mov	byte ptr [rbp - 1], 0
.label_22:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401e22
	.globl sub_401e22
	.type sub_401e22, @function
sub_401e22:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e30

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
	.align	32
	#Procedure 0x401e6e
	.globl sub_401e6e
	.type sub_401e6e, @function
sub_401e6e:

	nop	
.label_24:
	movabs	rsi, OFFSET FLAT:time_string.buf
	mov	rdi, qword ptr [rbp - 0x18]
	call	timetostr
	mov	qword ptr [rbp - 8], rax
.label_25:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401e91

	.globl time_string
	.type time_string, @function
time_string:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rax, [rbp - 0x18]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	movsxd	rdi, dword ptr [rdi + 0x154]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rax
	call	localtime
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_24
	movabs	rdi, OFFSET FLAT:time_string.buf
	mov	eax, 0x21
	mov	esi, eax
	mov	rdx,  qword ptr [word ptr [time_format]]
	mov	rcx, qword ptr [rbp - 0x20]
	call	strftime
	movabs	rcx, OFFSET FLAT:time_string.buf
	mov	qword ptr [rbp - 8], rcx
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_25
	.section	.text
	.align	32
	#Procedure 0x401f00

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
	.align	32
	#Procedure 0x401f32
	.globl sub_401f32
	.type sub_401f32, @function
sub_401f32:

	nop	word ptr cs:[rax + rax]
.label_27:
	mov	byte ptr [rbp - 1], 0
.label_29:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401f4e
	.globl sub_401f4e
	.type sub_401f4e, @function
sub_401f4e:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401f56
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
	jb	.label_26
	jmp	.label_28
.label_28:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_27
	jmp	.label_26
.label_26:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_29
	.section	.text
	.align	32
	#Procedure 0x401f90

	.globl c_isprint
	.type c_isprint, @function
c_isprint:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_30
	jmp	.label_32
.label_32:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_31
.label_30:
	mov	byte ptr [rbp - 1], 0
.label_31:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401fc2
	.globl sub_401fc2
	.type sub_401fc2, @function
sub_401fc2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401fd0
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
	.align	32
	#Procedure 0x40200a
	.globl sub_40200a
	.type sub_40200a, @function
sub_40200a:

	nop	word ptr [rax + rax]
.label_33:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402027
	.globl sub_402027
	.type sub_402027, @function
sub_402027:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40202f
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
	jae	.label_33
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402060
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
.label_36:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_34
	jmp	.label_35
.label_35:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_36
.label_34:
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
.label_51:
	test	byte ptr [byte ptr [need_initspawn]],  1
	je	.label_52
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, word ptr [rax]
	cmp	ecx, 5
	jne	.label_52
	mov	rdi, qword ptr [rbp - 0x10]
	call	print_initspawn
	jmp	.label_37
.label_39:
	test	byte ptr [byte ptr [need_boottime]],  1
	je	.label_41
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, word ptr [rax]
	cmp	ecx, 2
	jne	.label_41
	mov	rdi, qword ptr [rbp - 0x10]
	call	print_boottime
	jmp	.label_46
.label_56:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40212e
	.globl sub_40212e
	.type sub_40212e, @function
sub_40212e:

	nop	dword ptr [rax]
.label_58:
	movabs	rsi, OFFSET FLAT:label_48
	mov	eax, 5
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_50
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 5
	mov	qword ptr [rbp - 0x18], rax
.label_50:
	jmp	.label_54
.label_54:
	jmp	.label_55
.label_55:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 8], rcx
	cmp	rax, 0
	je	.label_56
	test	byte ptr [byte ptr [my_line_only]],  1
	je	.label_38
	mov	eax, 0x20
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 8
	mov	rsi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_43
.label_38:
	test	byte ptr [byte ptr [need_users]],  1
	je	.label_47
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 0x2c]
	cmp	ecx, 0
	je	.label_47
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, word ptr [rax]
	cmp	ecx, 7
	jne	.label_47
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	print_user
	jmp	.label_57
.label_47:
	test	byte ptr [byte ptr [need_runlevel]],  1
	je	.label_39
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, word ptr [rax]
	cmp	ecx, 1
	jne	.label_39
	mov	rdi, qword ptr [rbp - 0x10]
	call	print_runlevel
	jmp	.label_42
.label_52:
	test	byte ptr [byte ptr [need_login]],  1
	je	.label_45
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, word ptr [rax]
	cmp	ecx, 6
	jne	.label_45
	mov	rdi, qword ptr [rbp - 0x10]
	call	print_login
	jmp	.label_49
.label_41:
	test	byte ptr [byte ptr [need_clockchange]],  1
	je	.label_51
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, word ptr [rax]
	cmp	ecx, 3
	jne	.label_51
	mov	rdi, qword ptr [rbp - 0x10]
	call	print_clockchange
	jmp	.label_40
	.section	.text
	.align	32
	#Procedure 0x40227a

	.globl scan_entries
	.type scan_entries, @function
scan_entries:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, 0x8000000000000000
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x20], rax
	test	byte ptr [byte ptr [include_heading]],  1
	je	.label_59
	call	print_heading
.label_59:
	test	byte ptr [byte ptr [my_line_only]],  1
	je	.label_54
	xor	edi, edi
	call	ttyname
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_58
	jmp	.label_56
.label_45:
	test	byte ptr [byte ptr [need_deadprocs]],  1
	je	.label_53
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, word ptr [rax]
	cmp	ecx, 8
	jne	.label_53
	mov	rdi, qword ptr [rbp - 0x10]
	call	print_deadprocs
.label_53:
	jmp	.label_49
.label_49:
	jmp	.label_37
.label_37:
	jmp	.label_40
.label_40:
	jmp	.label_46
.label_46:
	jmp	.label_42
.label_42:
	jmp	.label_57
.label_57:
	jmp	.label_43
.label_43:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, word ptr [rax]
	cmp	ecx, 2
	jne	.label_44
	mov	rax, qword ptr [rbp - 0x10]
	movsxd	rax, dword ptr [rax + 0x154]
	mov	qword ptr [rbp - 0x20], rax
.label_44:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x180
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_55
	.section	.text
	.align	32
	#Procedure 0x402350
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
	.align	32
	#Procedure 0x402377
	.globl sub_402377
	.type sub_402377, @function
sub_402377:

	nop	word ptr [rax + rax]
.label_70:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_60
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_60:
	movabs	rdi, OFFSET FLAT:label_69
	call	gettext
	movabs	rsi, OFFSET FLAT:label_64
	movabs	rdx, OFFSET FLAT:label_65
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
	je	.label_61
	movabs	rsi, OFFSET FLAT:label_63
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_61
	movabs	rdi, OFFSET FLAT:label_66
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_61:
	movabs	rdi, OFFSET FLAT:label_67
	call	gettext
	movabs	rsi, OFFSET FLAT:label_65
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_68
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:label_15
	movabs	rsi, OFFSET FLAT:label_62
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
	.align	32
	#Procedure 0x4024a5
	.globl sub_4024a5
	.type sub_4024a5, @function
sub_4024a5:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4024ac

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
.label_73:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_72
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_72:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_71
	jmp	.label_70
.label_71:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_73
	.section	.text
	.align	32
	#Procedure 0x402520

	.globl print_heading
	.type print_heading, @function
print_heading:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	movabs	rdi, OFFSET FLAT:label_74
	call	gettext
	movabs	rdi, OFFSET FLAT:label_78
	mov	qword ptr [rbp - 8], rax
	call	gettext
	movabs	rdi, OFFSET FLAT:label_79
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	movabs	rdi, OFFSET FLAT:label_80
	mov	qword ptr [rbp - 0x18], rax
	call	gettext
	movabs	rdi, OFFSET FLAT:label_75
	mov	qword ptr [rbp - 0x20], rax
	call	gettext
	movabs	rdi, OFFSET FLAT:label_76
	mov	qword ptr [rbp - 0x28], rax
	call	gettext
	movabs	rdi, OFFSET FLAT:label_77
	mov	qword ptr [rbp - 0x30], rax
	call	gettext
	mov	ecx, 0xffffffff
	mov	edx, 0x20
	mov	edi, ecx
	mov	rsi, qword ptr [rbp - 8]
	mov	r8, qword ptr [rbp - 0x10]
	mov	r9, qword ptr [rbp - 0x18]
	mov	r10, qword ptr [rbp - 0x20]
	mov	qword ptr [rsp], r10
	mov	r10, qword ptr [rbp - 0x28]
	mov	qword ptr [rsp + 8], r10
	mov	r10, qword ptr [rbp - 0x30]
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], rax
	call	print_line
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4025eb
	.globl sub_4025eb
	.type sub_4025eb, @function
sub_4025eb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4025f0
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_81
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_81:
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
	.align	32
	#Procedure 0x40262d
	.globl sub_40262d
	.type sub_40262d, @function
sub_40262d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402630

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
	.section	.text
	.align	32
	#Procedure 0x402650

	.globl is_tty_writable
	.type is_tty_writable, @function
is_tty_writable:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdi + 0x18]
	and	eax, 0x10
	cmp	eax, 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402670

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
	je	.label_82
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_85
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_86
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_83
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_84
.label_86:
	mov	byte ptr [rbp - 5], 0
.label_84:
	jmp	.label_82
.label_82:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4026e3
	.globl sub_4026e3
	.type sub_4026e3, @function
sub_4026e3:

	nop	word ptr cs:[rax + rax]
.label_90:
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 1
	cmp	eax, 0
	je	.label_87
	test	byte ptr [rbp - 0x15], 1
	je	.label_87
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	eax, dword ptr [rcx + 4]
	jge	.label_87
	xor	esi, esi
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax + 4]
	call	kill
	cmp	eax, 0
	jge	.label_87
	call	__errno_location
	cmp	dword ptr [rax], 3
	jne	.label_87
	mov	byte ptr [rbp - 1], 0
	jmp	.label_88
	.section	.text
	.align	32
	#Procedure 0x402746

	.globl desirable_utmp_entry
	.type desirable_utmp_entry, @function
desirable_utmp_entry:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	cl, al
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rdi, qword ptr [rbp - 0x10]
	movsx	eax, byte ptr [rdi + 0x2c]
	cmp	eax, 0
	mov	byte ptr [rbp - 0x16], cl
	je	.label_91
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, word ptr [rcx]
	cmp	edx, 7
	mov	byte ptr [rbp - 0x17], al
	je	.label_89
	xor	eax, eax
	mov	cl, al
	mov	byte ptr [rbp - 0x17], cl
	jmp	.label_89
.label_89:
	mov	al, byte ptr [rbp - 0x17]
	mov	byte ptr [rbp - 0x16], al
.label_91:
	mov	al, byte ptr [rbp - 0x16]
	and	al, 1
	mov	byte ptr [rbp - 0x15], al
	mov	ecx, dword ptr [rbp - 0x14]
	and	ecx, 2
	cmp	ecx, 0
	je	.label_90
	test	byte ptr [rbp - 0x15], 1
	jne	.label_90
	mov	byte ptr [rbp - 1], 0
	jmp	.label_88
.label_87:
	mov	byte ptr [rbp - 1], 1
.label_88:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4027d0
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
	.align	32
	#Procedure 0x4027ff
	.globl sub_4027ff
	.type sub_4027ff, @function
sub_4027ff:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402800
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
	.align	32
	#Procedure 0x40281f
	.globl sub_40281f
	.type sub_40281f, @function
sub_40281f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402820

	.globl print_line
	.type print_line, @function
print_line:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x108
	mov	al, dl
	mov	r10, qword ptr [rbp + 0x28]
	mov	r11, qword ptr [rbp + 0x20]
	mov	rbx, qword ptr [rbp + 0x18]
	mov	r14, qword ptr [rbp + 0x10]
	mov	dword ptr [rbp - 0x2c], edi
	mov	qword ptr [rbp - 0x38], rsi
	mov	byte ptr [rbp - 0x39], al
	mov	dword ptr [rbp - 0x40], ecx
	mov	qword ptr [rbp - 0x48], r8
	mov	qword ptr [rbp - 0x50], r9
	mov	qword ptr [rbp - 0x58], r14
	mov	qword ptr [rbp - 0x60], rbx
	mov	qword ptr [rbp - 0x68], r11
	mov	qword ptr [rbp - 0x70], r10
	mov	al, byte ptr [rbp - 0x39]
	mov	byte ptr [byte ptr [label_100]],  al
	test	byte ptr [byte ptr [include_idle]],  1
	je	.label_93
	test	byte ptr [byte ptr [short_output]],  1
	jne	.label_93
	mov	rdi, qword ptr [rbp - 0x58]
	call	strlen
	cmp	rax, 7
	jae	.label_93
	movabs	rsi, OFFSET FLAT:label_102
	lea	rdi, [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	al, 0
	call	sprintf
	mov	dword ptr [rbp - 0xac], eax
	jmp	.label_111
.label_104:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	byte ptr [rax + 1], 0
	mov	rdi, qword ptr [rbp - 0x78]
	call	puts
	mov	rdi, qword ptr [rbp - 0x78]
	mov	dword ptr [rbp - 0xf4], eax
	call	free
	mov	rdi, qword ptr [rbp - 0x98]
	call	free
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402909
	.globl sub_402909
	.type sub_402909, @function
sub_402909:

	nop	dword ptr [rax + rax]
.label_101:
	mov	rax, qword ptr [rbp - 0x98]
	mov	byte ptr [rax], 0
.label_107:
	mov	edx, dword ptr [rbp - 0x2c]
	cmp	qword ptr [rbp - 0x38], 0
	mov	dword ptr [rbp - 0xd0], edx
	je	.label_98
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_105
.label_95:
	mov	eax, 1
	mov	ecx, eax
	mov	qword ptr [rbp - 0xc8], rcx
	jmp	.label_92
.label_92:
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rdi, rax
	call	xmalloc
	mov	qword ptr [rbp - 0x98], rax
	test	byte ptr [byte ptr [include_exit]],  1
	je	.label_101
	movabs	rsi, OFFSET FLAT:label_109
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	al, 0
	call	sprintf
	mov	dword ptr [rbp - 0xcc], eax
	jmp	.label_107
.label_96:
	mov	byte ptr [rbp - 0x8d], 0
.label_110:
	test	byte ptr [byte ptr [include_exit]],  1
	je	.label_95
	mov	eax, 0xc
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0xb8], rcx
	call	strlen
	mov	rcx, qword ptr [rbp - 0xb8]
	cmp	rcx, rax
	jbe	.label_94
	mov	eax, 0xc
	mov	ecx, eax
	mov	qword ptr [rbp - 0xc0], rcx
	jmp	.label_97
.label_98:
	movabs	rax, OFFSET FLAT:label_106
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_105
.label_105:
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rbp - 0x78]
	movabs	rsi, OFFSET FLAT:label_103
	lea	rcx, [rbp - 0x8d]
	lea	rdx, [rbp - 0x80]
	movabs	r8, OFFSET FLAT:label_15
	movabs	r9, OFFSET FLAT:print_line.mesg
	mov	r10b,  byte ptr [byte ptr [include_mesg]]
	test	r10b, 1
	cmovne	r8, r9
	mov	r9d, dword ptr [rbp - 0x40]
	mov	r11, qword ptr [rbp - 0x48]
	mov	ebx,  dword ptr [dword ptr [time_format_width]]
	mov	r14, qword ptr [rbp - 0x50]
	mov	r15, qword ptr [rbp - 0x68]
	mov	r12, qword ptr [rbp - 0x98]
	mov	r13d, dword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0xe0], rdx
	mov	edx, r13d
	mov	qword ptr [rbp - 0xe8], rcx
	mov	rcx, rax
	mov	qword ptr [rsp], r11
	mov	dword ptr [rsp + 8], ebx
	mov	qword ptr [rsp + 0x10], r14
	mov	rax, qword ptr [rbp - 0xe0]
	mov	qword ptr [rsp + 0x18], rax
	mov	r11, qword ptr [rbp - 0xe8]
	mov	qword ptr [rsp + 0x20], r11
	mov	qword ptr [rsp + 0x28], r15
	mov	qword ptr [rsp + 0x30], r12
	mov	al, 0
	call	asprintf
	mov	dword ptr [rbp - 0x9c], eax
	cmp	dword ptr [rbp - 0x9c], -1
	jne	.label_108
	call	xalloc_die
.label_94:
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0xc0], rax
.label_97:
	mov	rax, qword ptr [rbp - 0xc0]
	add	rax, 1
	add	rax, 1
	mov	qword ptr [rbp - 0xc8], rax
	jmp	.label_92
.label_93:
	mov	byte ptr [rbp - 0x80], 0
.label_111:
	test	byte ptr [byte ptr [short_output]],  1
	jne	.label_96
	mov	rdi, qword ptr [rbp - 0x60]
	call	strlen
	cmp	rax, 0xc
	jae	.label_96
	movabs	rsi, OFFSET FLAT:label_99
	lea	rdi, [rbp - 0x8d]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	al, 0
	call	sprintf
	mov	dword ptr [rbp - 0xb0], eax
	jmp	.label_110
.label_108:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rdi, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0xf0], rax
	call	strlen
	mov	rdi, qword ptr [rbp - 0xf0]
	add	rdi, rax
	mov	qword ptr [rbp - 0xa8], rdi
.label_112:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0xa8], rcx
	movsx	edx, byte ptr [rax - 1]
	cmp	edx, 0x20
	jne	.label_104
	jmp	.label_112
	.section	.text
	.align	32
	#Procedure 0x402b90
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
	.align	32
	#Procedure 0x402ba6
	.globl sub_402ba6
	.type sub_402ba6, @function
sub_402ba6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402bb0

	.globl stzncpy
	.type stzncpy, @function
stzncpy:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	add	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rdx
.label_114:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x21], cl
	jae	.label_116
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	setne	dl
	mov	byte ptr [rbp - 0x21], dl
.label_116:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_113
	jmp	.label_115
.label_113:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	mov	byte ptr [rax], dl
	jmp	.label_114
.label_115:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402c35
	.globl sub_402c35
	.type sub_402c35, @function
sub_402c35:

	nop	word ptr cs:[rax + rax]
.label_118:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402c46
	.globl sub_402c46
	.type sub_402c46, @function
sub_402c46:

	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c4f

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	close_stream
	cmp	eax, 0
	je	.label_117
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_121
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	je	.label_117
.label_121:
	movabs	rdi, OFFSET FLAT:label_120
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_122
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_119
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_123
.label_122:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_10
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	call	error
.label_123:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_117:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_118
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x402d30
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
	.align	32
	#Procedure 0x402d67
	.globl sub_402d67
	.type sub_402d67, @function
sub_402d67:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402d70

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_128
	movabs	rdi, OFFSET FLAT:label_126
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x1c], eax
	call	abort
.label_128:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	call	strrchr
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_130
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_124
.label_130:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_124:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cmp	rax, 7
	jl	.label_127
	movabs	rsi, OFFSET FLAT:label_131
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, -7
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_127
	movabs	rsi, OFFSET FLAT:label_129
	mov	eax, 3
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_125
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname]],  rax
.label_125:
	jmp	.label_127
.label_127:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402e89
	.globl sub_402e89
	.type sub_402e89, @function
sub_402e89:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402e90

	.globl print_boottime
	.type print_boottime, @function
print_boottime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:label_132
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, rax
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	call	time_string
	mov	ecx, 0xffffffff
	movabs	rdi, OFFSET FLAT:label_15
	mov	edx, 0x20
	mov	qword ptr [rbp - 0x18], rdi
	mov	edi, ecx
	mov	rsi, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x10]
	mov	r9, rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x18], rax
	call	print_line
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402f02
	.globl sub_402f02
	.type sub_402f02, @function
sub_402f02:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402f10

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
	.align	32
	#Procedure 0x402f85
	.globl sub_402f85
	.type sub_402f85, @function
sub_402f85:

	nop	word ptr cs:[rax + rax]
.label_135:
	mov	byte ptr [rbp - 1], 0
.label_133:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402f9e
	.globl sub_402f9e
	.type sub_402f9e, @function
sub_402f9e:

	nop	word ptr cs:[rax + rax]
.label_782:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_133
	.section	.text
	.align	32
	#Procedure 0x402fb6
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
	ja	.label_135
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_134]]
	jmp	rcx
	.section	.text
	.align	32
	#Procedure 0x402fe0
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_136
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_136:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
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
	.align	32
	#Procedure 0x403046
	.globl sub_403046
	.type sub_403046, @function
sub_403046:

	nop	word ptr cs:[rax + rax]
.label_145:
	movabs	rdi, OFFSET FLAT:label_137
	call	gettext
	mov	qword ptr [rbp - 8], rax
.label_142:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40306d
	.globl sub_40306d
	.type sub_40306d, @function
sub_40306d:

	nop	dword ptr [rax + rax]
.label_148:
	mov	eax, 0xe10
	mov	ecx, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x2c], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x2c]
	idiv	ecx
	cmp	eax, 0x18
	jge	.label_138
	jmp	.label_144
.label_138:
	movabs	rdi, OFFSET FLAT:label_139
	movabs	rsi, OFFSET FLAT:label_140
	mov	edx, 0xcd
	movabs	rcx, OFFSET FLAT:label_141
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x4030bb

	.globl idle_string
	.type idle_string, @function
idle_string:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	movabs	rax, 0x8000000000000000
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [word ptr [idle_string.now]],  rax
	jne	.label_147
	movabs	rdi, OFFSET FLAT:idle_string.now
	call	time
	mov	qword ptr [rbp - 0x28], rax
.label_147:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x10]
	jge	.label_145
	mov	rax,  qword ptr [word ptr [idle_string.now]]
	sub	rax, 0x15180
	cmp	rax, qword ptr [rbp - 0x10]
	jge	.label_145
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax,  qword ptr [word ptr [idle_string.now]]
	jg	.label_145
	mov	rax,  qword ptr [word ptr [idle_string.now]]
	sub	rax, qword ptr [rbp - 0x10]
	mov	ecx, eax
	mov	dword ptr [rbp - 0x1c], ecx
	cmp	dword ptr [rbp - 0x1c], 0x3c
	jge	.label_148
	movabs	rax, OFFSET FLAT:label_146
	mov	qword ptr [rbp - 8], rax
	jmp	.label_142
.label_144:
	movabs	rdi, OFFSET FLAT:idle_string.idle_hhmm
	movabs	rsi, OFFSET FLAT:label_143
	mov	eax, 0x3c
	mov	ecx, 0xe10
	mov	edx, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x30], eax
	mov	eax, edx
	cdq	
	idiv	ecx
	mov	r8d, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x34], eax
	mov	eax, r8d
	cdq	
	idiv	ecx
	mov	eax, edx
	cdq	
	mov	ecx, dword ptr [rbp - 0x30]
	idiv	ecx
	mov	r8d, dword ptr [rbp - 0x34]
	mov	edx, r8d
	mov	ecx, eax
	mov	al, 0
	call	sprintf
	movabs	rsi, OFFSET FLAT:idle_string.idle_hhmm
	mov	qword ptr [rbp - 8], rsi
	mov	dword ptr [rbp - 0x38], eax
	jmp	.label_142
	.section	.text
	.align	32
	#Procedure 0x4031c0

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
	jge	.label_150
	call	abort
.label_153:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_155:
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
	je	.label_152
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_156]]
	mov	qword ptr [rax + 8], rcx
.label_152:
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
.label_154:
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
	ja	.label_149
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	cmp	qword ptr [rbp - 0x48], rax
	je	.label_151
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_151:
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
.label_149:
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
	.align	32
	#Procedure 0x4033dd
	.globl sub_4033dd
	.type sub_4033dd, @function
sub_4033dd:

	nop	word ptr cs:[rax + rax]
.label_150:
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_154
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x31], cl
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	jge	.label_157
	call	xalloc_die
.label_157:
	test	byte ptr [rbp - 0x31], 1
	je	.label_153
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_155
	.section	.text
	.align	32
	#Procedure 0x403440
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_158
	jmp	.label_160
.label_160:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_159
.label_158:
	mov	byte ptr [rbp - 1], 0
.label_159:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403472
	.globl sub_403472
	.type sub_403472, @function
sub_403472:

	nop	word ptr cs:[rax + rax]
.label_172:
	call	locale_charset
	movabs	rsi, OFFSET FLAT:label_161
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_169
	movabs	rax, OFFSET FLAT:label_170
	movabs	rcx, OFFSET FLAT:label_171
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_164
.label_165:
	movabs	rax, OFFSET FLAT:label_167
	movabs	rcx, OFFSET FLAT:label_168
	cmp	dword ptr [rbp - 0x14], 9
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_164:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4034fa
	.globl sub_4034fa
	.type sub_4034fa, @function
sub_4034fa:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403502

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
	je	.label_172
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_164
.label_169:
	movabs	rsi, OFFSET FLAT:label_166
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_165
	movabs	rax, OFFSET FLAT:label_162
	movabs	rcx, OFFSET FLAT:label_163
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_164
.label_720:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_200
	.section	.text
	.align	32
	#Procedure 0x403589

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
.label_287:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_278
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_244]]
	jmp	rcx
.label_213:
	jmp	.label_261
.label_261:
	jmp	.label_292
.label_292:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_294
	jmp	.label_178
.label_743:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_296
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_238
	jmp	.label_300
.label_238:
	jmp	.label_301
.label_301:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_279
	jmp	.label_206
.label_199:
	jmp	.label_303
.label_303:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_175
	test	byte ptr [rbp - 0x82], 1
	jne	.label_175
	jmp	.label_312
.label_312:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_314
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_314:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_318
.label_318:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_320
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_320:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_175:
	jmp	.label_329
.label_329:
	jmp	.label_331
.label_331:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_332
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_332:
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
	jmp	.label_342
.label_229:
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_344
	mov	byte ptr [rbp - 0x91], 0
.label_362:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_348
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_348:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_291
	jmp	.label_360
.label_291:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_362
.label_277:
	jmp	.label_174
.label_174:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_368
	test	byte ptr [rbp - 0x7b], 1
	je	.label_368
	jmp	.label_178
.label_298:
	jmp	.label_173
.label_173:
	jmp	.label_177
.label_177:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_192
.label_367:
	test	byte ptr [rbp - 0x81], 1
	je	.label_183
	jmp	.label_187
.label_187:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_189
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_189:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x81], 0
.label_183:
	jmp	.label_198
.label_198:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_199
	jmp	.label_203
.label_321:
	test	byte ptr [rbp - 0x7a], 1
	je	.label_205
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
	jmp	.label_211
.label_356:
	jmp	.label_216
.label_216:
	jmp	.label_206
.label_739:
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_206
.label_352:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_358:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	ja	.label_223
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_223
	test	byte ptr [rbp - 0x7b], 1
	je	.label_233
	jmp	.label_178
.label_222:
	jmp	.label_234
.label_234:
	jmp	.label_235
.label_235:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_236
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_236
	jmp	.label_240
.label_240:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_242
	jmp	.label_245
.label_245:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_246
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_246:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_252
.label_252:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_240
.label_264:
	jmp	.label_259
.label_200:
	mov	qword ptr [rbp - 0x58], 0
.label_254:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_263
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_266
.label_735:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_181
.label_732:
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_181
.label_343:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_273
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_273
	test	byte ptr [rbp - 0x7b], 1
	je	.label_273
	jmp	.label_178
.label_742:
	mov	al, byte ptr [rbp - 0x7f]
	mov	byte ptr [rbp - 0x80], al
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_281
	test	byte ptr [rbp - 0x7b], 1
	je	.label_284
	jmp	.label_178
.label_369:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_288
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_288
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3f
	jne	.label_288
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 2]
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	je	.label_262
	jmp	.label_306
.label_306:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	jb	.label_262
	jmp	.label_315
.label_315:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	je	.label_262
	jmp	.label_319
.label_319:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2f
	mov	dword ptr [rbp - 0x118], eax
	je	.label_262
	jmp	.label_322
.label_322:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	ja	.label_323
	jmp	.label_262
.label_262:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_330
	jmp	.label_178
.label_263:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], edx
.label_266:
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_337
	jmp	.label_343
.label_337:
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	je	.label_223
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_223
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_223
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	jne	.label_352
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_352
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_358
.label_741:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0x100], ecx
	je	.label_363
	jmp	.label_350
.label_350:
	mov	eax, dword ptr [rbp - 0xfc]
	sub	eax, 5
	mov	dword ptr [rbp - 0x104], eax
	je	.label_369
	jmp	.label_176
.label_344:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_179
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_179
	mov	qword ptr [rbp - 0xb8], 1
.label_192:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_185
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
	jb	.label_191
	jmp	.label_202
.label_202:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x138], eax
	je	.label_191
	jmp	.label_209
.label_209:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_191
	jmp	.label_268
.label_268:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_298
	jmp	.label_191
.label_191:
	jmp	.label_178
.label_205:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_219
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_219:
	jmp	.label_230
.label_230:
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
	jne	.label_361
	jmp	.label_195
.label_317:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_247
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_247
	jmp	.label_228
.label_228:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_249
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_249:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_255
.label_255:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_257
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_257:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_265
.label_265:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_269
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_269:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_247:
	jmp	.label_274
.label_274:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_275
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_275:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_280
.label_280:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_272
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_272
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_272
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x39
	jg	.label_272
	jmp	.label_327
.label_327:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_335
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_335:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_305
.label_305:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_309
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_309:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_272
.label_272:
	mov	byte ptr [rbp - 0x7f], 0x30
	jmp	.label_216
.label_233:
	mov	byte ptr [rbp - 0x81], 1
.label_223:
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
	ja	.label_321
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_307]]
	jmp	rcx
.label_185:
	jmp	.label_179
.label_179:
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_338
	mov	byte ptr [rbp - 0x91], 0
.label_338:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_340
.label_340:
	jmp	.label_345
.label_345:
	jmp	.label_347
.label_347:
	lea	rdi, [rbp - 0xa0]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_230
.label_195:
	jmp	.label_211
.label_211:
	mov	eax, 1
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	jb	.label_353
	test	byte ptr [rbp - 0x79], 1
	je	.label_289
	test	byte ptr [rbp - 0x91], 1
	jne	.label_289
.label_353:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_342:
	test	byte ptr [rbp - 0x79], 1
	je	.label_367
	test	byte ptr [rbp - 0x91], 1
	jne	.label_367
	jmp	.label_371
.label_371:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_372
	jmp	.label_178
.label_736:
	mov	byte ptr [rbp - 0x80], 0x66
	jmp	.label_181
.label_734:
	mov	byte ptr [rbp - 0x80], 0x6e
	jmp	.label_174
.label_731:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_181
.label_725:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_724:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_188
	jmp	.label_190
.label_190:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_193
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_193:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_188
.label_188:
	movabs	rax, OFFSET FLAT:label_168
	mov	byte ptr [rbp - 0x79], 1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_200
.label_258:
	jmp	.label_206
.label_330:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_208
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_208:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_214
.label_214:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_226
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_226:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_220
.label_220:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_227
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_227:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_304
.label_304:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_324
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_324:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_310
.label_296:
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_238
.label_300:
	jmp	.label_206
.label_370:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_243
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_243
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_243:
	jmp	.label_250
.label_250:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_251
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_251:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_256
.label_256:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_260
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_260:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_267
.label_267:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_271
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_271:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_366:
	jmp	.label_206
.label_281:
	test	byte ptr [rbp - 0x79], 1
	je	.label_277
	test	byte ptr [rbp - 0x7b], 1
	je	.label_277
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_277
	jmp	.label_221
.label_722:
	mov	byte ptr [rbp - 0x79], 1
.label_721:
	mov	byte ptr [rbp - 0x7b], 1
.label_723:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_286
	mov	byte ptr [rbp - 0x79], 1
.label_286:
	jmp	.label_290
.label_290:
	mov	dword ptr [rbp - 0x34], 2
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_293
	jmp	.label_295
.label_295:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_297
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_297:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_293
.label_293:
	movabs	rax, OFFSET FLAT:label_167
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_200
.label_284:
	jmp	.label_221
.label_323:
	jmp	.label_310
.label_310:
	jmp	.label_288
.label_288:
	jmp	.label_259
.label_328:
	jmp	.label_206
.label_242:
	jmp	.label_236
.label_236:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_316
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_316:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_282
.label_737:
	mov	byte ptr [rbp - 0x80], 0x72
	jmp	.label_174
.label_360:
	jmp	.label_195
.label_279:
	jmp	.label_325
.label_325:
	mov	byte ptr [rbp - 0x83], 1
.label_738:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_328
	test	byte ptr [rbp - 0x7b], 1
	je	.label_328
	jmp	.label_178
.label_278:
	call	abort
.label_178:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_336
	test	byte ptr [rbp - 0x79], 1
	je	.label_336
	mov	dword ptr [rbp - 0x34], 4
.label_336:
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
.label_282:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4043a6
	.globl sub_4043a6
	.type sub_4043a6, @function
sub_4043a6:

	nop	dword ptr [rax + rax]
.label_357:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_356
	jmp	.label_253
.label_730:
	test	byte ptr [rbp - 0x79], 1
	je	.label_357
	jmp	.label_311
.label_311:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_317
	jmp	.label_178
.label_740:
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_366
	test	byte ptr [rbp - 0x7b], 1
	je	.label_370
	jmp	.label_178
.label_733:
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_174
.label_294:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_180
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_180
	jmp	.label_184
.label_184:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_186
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_186:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_194
.label_194:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_196
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_196:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_201
.label_201:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_204
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_204:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_180:
	jmp	.label_373
.label_373:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_212
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_212:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_215
.label_215:
	jmp	.label_221
.label_221:
	jmp	.label_217
.label_217:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_218
	test	byte ptr [rbp - 0x82], 1
	jne	.label_218
	jmp	.label_225
.label_225:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_224
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_224:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_231
.label_231:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_232
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_232:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_218:
	jmp	.label_237
.label_237:
	jmp	.label_239
.label_239:
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
	jne	.label_248
	mov	byte ptr [rbp - 0x7e], 0
.label_248:
	jmp	.label_253
.label_253:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_254
.label_368:
	jmp	.label_181
.label_181:
	test	byte ptr [rbp - 0x79], 1
	je	.label_258
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_261
.label_273:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_235
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_235
	test	byte ptr [rbp - 0x7d], 1
	je	.label_235
	test	byte ptr [rbp - 0x7e], 1
	je	.label_270
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
	jmp	.label_282
.label_727:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_283
	movabs	rdi, OFFSET FLAT:label_285
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	movabs	rdi, OFFSET FLAT:label_167
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_283:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_197
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_313:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_299
	jmp	.label_276
.label_276:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_302
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_302:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_308
.label_308:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_313
.label_176:
	jmp	.label_259
.label_259:
	jmp	.label_206
.label_361:
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_229
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_195
.label_203:
	jmp	.label_221
.label_363:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_264
	jmp	.label_178
.label_372:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_326
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_326
	jmp	.label_333
.label_333:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_334
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_334:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_339
.label_339:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_341
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_341:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_346
.label_346:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_349
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_349:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_326:
	jmp	.label_354
.label_354:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_355
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_355:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_359
.label_359:
	jmp	.label_364
.label_364:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_365
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 6
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_365:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_374
.label_374:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_182
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 3
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_182:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_198
.label_299:
	jmp	.label_197
.label_197:
	mov	byte ptr [rbp - 0x79], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_200
.label_726:
	mov	byte ptr [rbp - 0x79], 1
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_200
.label_289:
	jmp	.label_206
.label_206:
	test	byte ptr [rbp - 0x79], 1
	je	.label_207
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_351
.label_207:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_210
.label_351:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_210
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
	jne	.label_213
.label_210:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_213
	jmp	.label_221
.label_270:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_222
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_222
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_287
	.section	.text
	.align	32
	#Procedure 0x404920

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
	je	.label_375
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fseeko
	mov	dword ptr [rbp - 0xc], eax
.label_375:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40495b
	.globl sub_40495b
	.type sub_40495b, @function
sub_40495b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404960

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
	.align	32
	#Procedure 0x404997
	.globl sub_404997
	.type sub_404997, @function
sub_404997:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4049a0

	.globl read_utmp
	.type read_utmp, @function
read_utmp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	dword ptr [rbp - 0x1c], ecx
	mov	qword ptr [rbp - 0x28], 0
	mov	qword ptr [rbp - 0x30], 0
	mov	qword ptr [rbp - 0x38], 0
	mov	rdi, qword ptr [rbp - 8]
	call	utmpxname
	mov	dword ptr [rbp - 0x44], eax
	call	setutxent
.label_376:
	call	getutxent
	mov	qword ptr [rbp - 0x40], rax
	cmp	rax, 0
	je	.label_377
	mov	rdi, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rbp - 0x1c]
	call	desirable_utmp_entry
	test	al, 1
	jne	.label_380
	jmp	.label_378
.label_380:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	jne	.label_379
	lea	rsi, [rbp - 0x30]
	mov	eax, 0x180
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, rcx
	call	x2nrealloc
	mov	qword ptr [rbp - 0x38], rax
.label_379:
	mov	eax, 0x180
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsi, rcx
	add	rsi, 1
	mov	qword ptr [rbp - 0x28], rsi
	imul	rcx, rcx, 0x180
	add	rcx, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdi, rcx
	call	memcpy
.label_378:
	jmp	.label_376
.label_377:
	call	endutxent
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx], rcx
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx], rcx
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404a8a
	.globl sub_404a8a
	.type sub_404a8a, @function
sub_404a8a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a90

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_381
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_382
.label_381:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	jmp	.label_383
.label_382:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_383:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404ae8
	.globl sub_404ae8
	.type sub_404ae8, @function
sub_404ae8:

	nop	dword ptr [rax + rax]
.label_385:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_384
.label_384:
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
	.align	32
	#Procedure 0x404b63
	.globl sub_404b63
	.type sub_404b63, @function
sub_404b63:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b71

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
	je	.label_385
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_384
	.section	.text
	.align	32
	#Procedure 0x404ba0

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_386
	jmp	.label_388
.label_388:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_387
.label_386:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_387:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404bd7
	.globl sub_404bd7
	.type sub_404bd7, @function
sub_404bd7:

	nop	word ptr [rax + rax]
.label_390:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_389
.label_389:
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
	.align	32
	#Procedure 0x404c71
	.globl sub_404c71
	.type sub_404c71, @function
sub_404c71:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c7c
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
	je	.label_390
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_389
	.section	.text
	.align	32
	#Procedure 0x404cb0
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
	je	.label_391
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_392
.label_391:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_392
.label_392:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404cf7
	.globl sub_404cf7
	.type sub_404cf7, @function
sub_404cf7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d00

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
	.align	32
	#Procedure 0x404d72
	.globl sub_404d72
	.type sub_404d72, @function
sub_404d72:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d80
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
	.align	32
	#Procedure 0x404dad
	.globl sub_404dad
	.type sub_404dad, @function
sub_404dad:

	nop	dword ptr [rax]
.label_395:
	mov	byte ptr [rbp - 1], 0
.label_394:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404dbe
	.globl sub_404dbe
	.type sub_404dbe, @function
sub_404dbe:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404dbf
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_395
	jmp	.label_393
.label_393:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_394
	.section	.text
	.align	32
	#Procedure 0x404de0

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
	.align	32
	#Procedure 0x404dff
	.globl sub_404dff
	.type sub_404dff, @function
sub_404dff:

	nop	
.label_398:
	movabs	rax, 0x5555555555555554
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_396
	call	xalloc_die
.label_396:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_397:
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
	.align	32
	#Procedure 0x404e5b
	.globl sub_404e5b
	.type sub_404e5b, @function
sub_404e5b:

	nop	word ptr [rax + rax]
.label_400:
	jmp	.label_397
	.section	.text
	.align	32
	#Procedure 0x404e69

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
	jne	.label_398
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_399
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
.label_399:
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_400
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404ef0

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
	jne	.label_401
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_401:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	mbrtowc
	mov	rcx, -2
	mov	qword ptr [rbp - 0x30], rax
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_402
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_402
	xor	edi, edi
	call	hard_locale
	test	al, 1
	jne	.label_402
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], edx
	mov	qword ptr [rbp - 8], 1
	jmp	.label_403
.label_402:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_403:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404f91
	.globl sub_404f91
	.type sub_404f91, @function
sub_404f91:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404fa0
	.globl ch_strerror
	.type ch_strerror, @function
ch_strerror:

	push	rbp
	mov	rbp, rsp
	mov	edi,  dword ptr [dword ptr [last_cherror]]
	call	gai_strerror
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404fb2
	.globl sub_404fb2
	.type sub_404fb2, @function
sub_404fb2:

	nop	word ptr cs:[rax + rax]
.label_407:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404fca
	.globl sub_404fca
	.type sub_404fca, @function
sub_404fca:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404fcd

	.globl extract_trimmed_name
	.type extract_trimmed_name, @function
extract_trimmed_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	eax, 0x21
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, rcx
	call	xmalloc
	mov	edx, 0x20
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x2c
	mov	rsi, rax
	call	strncpy
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + 0x20], 0
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x28], rcx
	call	strlen
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, rax
	mov	qword ptr [rbp - 0x10], rcx
.label_404:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 0x29], cl
	jae	.label_408
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax - 1]
	cmp	ecx, 0x20
	sete	dl
	mov	byte ptr [rbp - 0x29], dl
.label_408:
	mov	al, byte ptr [rbp - 0x29]
	test	al, 1
	jne	.label_405
	jmp	.label_407
.label_405:
	jmp	.label_406
.label_406:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x10], rcx
	mov	byte ptr [rax - 1], 0
	jmp	.label_404
	.section	.text
	.align	32
	#Procedure 0x405080
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_409
	call	gettext
	movabs	rsi, OFFSET FLAT:label_411
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_412
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_64
	movabs	rdx, OFFSET FLAT:label_65
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_410
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
	.align	32
	#Procedure 0x405106
	.globl sub_405106
	.type sub_405106, @function
sub_405106:

	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405110

	.globl print_clockchange
	.type print_clockchange, @function
print_clockchange:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:label_413
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, rax
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	call	time_string
	mov	ecx, 0xffffffff
	movabs	rdi, OFFSET FLAT:label_15
	mov	edx, 0x20
	mov	qword ptr [rbp - 0x18], rdi
	mov	edi, ecx
	mov	rsi, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x10]
	mov	r9, rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x18], rax
	call	print_line
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405182
	.globl sub_405182
	.type sub_405182, @function
sub_405182:

	nop	word ptr cs:[rax + rax]
.label_414:
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	xrealloc
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4051ab
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
	jae	.label_414
	call	xalloc_die
.label_415:
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
	.align	32
	#Procedure 0x40520a
	.globl sub_40520a
	.type sub_40520a, @function
sub_40520a:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405216

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
	jne	.label_415
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405250

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
	.align	32
	#Procedure 0x4052fd
	.globl sub_4052fd
	.type sub_4052fd, @function
sub_4052fd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405300

	.globl print_user
	.type print_user, @function
print_user:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x2d0
	movabs	rax, OFFSET FLAT:label_18
	lea	rcx, [rbp - 0xf4]
	lea	rdx, [rbp - 0xe0]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0xe8], rdx
	mov	rdx, qword ptr [rbp - 8]
	movsxd	rdx, dword ptr [rdx + 4]
	mov	rdi, rcx
	mov	rsi, rax
	mov	al, 0
	call	sprintf
	mov	rcx, qword ptr [rbp - 8]
	movsx	r8d, byte ptr [rcx + 8]
	cmp	r8d, 0x2f
	mov	dword ptr [rbp - 0x214], eax
	je	.label_426
	mov	rdi, qword ptr [rbp - 0xe8]
	mov	eax, OFFSET FLAT:label_48
	mov	esi, eax
	call	stpcpy
	mov	qword ptr [rbp - 0xe8], rax
.label_426:
	mov	eax, 0x20
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 8
	mov	rsi, rcx
	call	stzncpy
	lea	rsi, [rbp - 0xa0]
	lea	rdi, [rbp - 0xe0]
	mov	qword ptr [rbp - 0x220], rax
	call	stat
	cmp	eax, 0
	jne	.label_429
	lea	rdi, [rbp - 0xa0]
	call	is_tty_writable
	mov	ecx, 0x2d
	mov	edx, 0x2b
	test	al, 1
	cmovne	ecx, edx
	mov	al, cl
	mov	byte ptr [rbp - 0xa9], al
	mov	rdi, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0xa8], rdi
	jmp	.label_430
.label_429:
	mov	byte ptr [rbp - 0xa9], 0x3f
	mov	qword ptr [rbp - 0xa8], 0
.label_430:
	cmp	qword ptr [rbp - 0xa8], 0
	je	.label_416
	lea	rdi, [rbp - 0xb0]
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x228], rdi
	mov	rdi, rax
	call	idle_string
	movabs	rsi, OFFSET FLAT:label_420
	mov	edx, 6
	mov	rdi, qword ptr [rbp - 0x228]
	mov	rcx, rax
	mov	al, 0
	call	sprintf
	mov	dword ptr [rbp - 0x22c], eax
	jmp	.label_432
.label_416:
	movabs	rsi, OFFSET FLAT:label_435
	lea	rdi, [rbp - 0xb0]
	mov	al, 0
	call	sprintf
	mov	dword ptr [rbp - 0x230], eax
.label_432:
	mov	rax, qword ptr [rbp - 8]
	cmp	byte ptr [rax + 0x4c], 0
	je	.label_436
	mov	eax, 0x100
	mov	edx, eax
	lea	rdi, [rbp - 0x200]
	mov	qword ptr [rbp - 0x208], 0
	mov	qword ptr [rbp - 0x210], 0
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 0x4c
	mov	rsi, rcx
	call	stzncpy
	mov	esi, 0x3a
	lea	rdi, [rbp - 0x200]
	mov	qword ptr [rbp - 0x238], rax
	call	strchr
	mov	qword ptr [rbp - 0x210], rax
	cmp	qword ptr [rbp - 0x210], 0
	je	.label_433
	mov	rax, qword ptr [rbp - 0x210]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x210], rcx
	mov	byte ptr [rax], 0
.label_433:
	movsx	eax, byte ptr [rbp - 0x200]
	cmp	eax, 0
	je	.label_419
	test	byte ptr [byte ptr [do_lookup]],  1
	je	.label_419
	lea	rdi, [rbp - 0x200]
	call	canon_host
	mov	qword ptr [rbp - 0x208], rax
.label_419:
	cmp	qword ptr [rbp - 0x208], 0
	jne	.label_428
	lea	rax, [rbp - 0x200]
	mov	qword ptr [rbp - 0x208], rax
.label_428:
	cmp	qword ptr [rbp - 0x210], 0
	je	.label_431
	mov	rax,  qword ptr [word ptr [print_user.hostlen]]
	mov	rdi, qword ptr [rbp - 0x208]
	mov	qword ptr [rbp - 0x240], rax
	call	strlen
	mov	rdi, qword ptr [rbp - 0x210]
	mov	qword ptr [rbp - 0x248], rax
	call	strlen
	mov	rdi, qword ptr [rbp - 0x248]
	add	rdi, rax
	add	rdi, 4
	mov	rax, qword ptr [rbp - 0x240]
	cmp	rax, rdi
	jae	.label_417
	mov	rdi, qword ptr [rbp - 0x208]
	call	strlen
	mov	rdi, qword ptr [rbp - 0x210]
	mov	qword ptr [rbp - 0x250], rax
	call	strlen
	mov	rdi, qword ptr [rbp - 0x250]
	add	rdi, rax
	add	rdi, 4
	mov	qword ptr [word ptr [print_user.hostlen]],  rdi
	mov	rdi,  qword ptr [word ptr [print_user.hoststr]]
	call	free
	mov	rdi,  qword ptr [word ptr [print_user.hostlen]]
	call	xmalloc
	mov	qword ptr [word ptr [print_user.hoststr]],  rax
.label_417:
	movabs	rsi, OFFSET FLAT:label_437
	mov	rdi,  qword ptr [word ptr [print_user.hoststr]]
	mov	rdx, qword ptr [rbp - 0x208]
	mov	rcx, qword ptr [rbp - 0x210]
	mov	al, 0
	call	sprintf
	mov	dword ptr [rbp - 0x254], eax
	jmp	.label_423
.label_436:
	cmp	qword ptr [word ptr [print_user.hostlen]],  1
	jae	.label_427
	mov	qword ptr [word ptr [print_user.hostlen]],  1
	mov	rdi,  qword ptr [word ptr [print_user.hoststr]]
	call	free
	mov	rdi,  qword ptr [word ptr [print_user.hostlen]]
	call	xmalloc
	mov	qword ptr [word ptr [print_user.hoststr]],  rax
.label_427:
	mov	rax,  qword ptr [word ptr [print_user.hoststr]]
	mov	byte ptr [rax], 0
.label_421:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x2c
	mov	cl, byte ptr [rbp - 0xa9]
	mov	rdx, qword ptr [rbp - 8]
	add	rdx, 8
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x270], rax
	mov	byte ptr [rbp - 0x271], cl
	mov	qword ptr [rbp - 0x280], rdx
	call	time_string
	lea	rdx, [rbp - 0xf4]
	lea	rdi, [rbp - 0xb0]
	cmp	qword ptr [word ptr [print_user.hoststr]],  0
	mov	qword ptr [rbp - 0x288], rax
	mov	qword ptr [rbp - 0x290], rdx
	mov	qword ptr [rbp - 0x298], rdi
	je	.label_425
	mov	rax,  qword ptr [word ptr [print_user.hoststr]]
	mov	qword ptr [rbp - 0x2a0], rax
	jmp	.label_424
.label_431:
	mov	rax,  qword ptr [word ptr [print_user.hostlen]]
	mov	rdi, qword ptr [rbp - 0x208]
	mov	qword ptr [rbp - 0x260], rax
	call	strlen
	add	rax, 3
	mov	rdi, qword ptr [rbp - 0x260]
	cmp	rdi, rax
	jae	.label_418
	mov	rdi, qword ptr [rbp - 0x208]
	call	strlen
	add	rax, 3
	mov	qword ptr [word ptr [print_user.hostlen]],  rax
	mov	rdi,  qword ptr [word ptr [print_user.hoststr]]
	call	free
	mov	rdi,  qword ptr [word ptr [print_user.hostlen]]
	call	xmalloc
	mov	qword ptr [word ptr [print_user.hoststr]],  rax
.label_418:
	movabs	rsi, OFFSET FLAT:label_434
	mov	rdi,  qword ptr [word ptr [print_user.hoststr]]
	mov	rdx, qword ptr [rbp - 0x208]
	mov	al, 0
	call	sprintf
	mov	dword ptr [rbp - 0x264], eax
.label_423:
	lea	rax, [rbp - 0x200]
	mov	rcx, qword ptr [rbp - 0x208]
	cmp	rcx, rax
	je	.label_422
	mov	rdi, qword ptr [rbp - 0x208]
	call	free
.label_422:
	jmp	.label_421
.label_425:
	movabs	rax, OFFSET FLAT:label_15
	mov	qword ptr [rbp - 0x2a0], rax
	jmp	.label_424
.label_424:
	mov	rax, qword ptr [rbp - 0x2a0]
	mov	ecx, 0x20
	movabs	rdx, OFFSET FLAT:label_15
	mov	edi, ecx
	mov	rsi, qword ptr [rbp - 0x270]
	mov	r8b, byte ptr [rbp - 0x271]
	movsx	r9d, r8b
	mov	qword ptr [rbp - 0x2a8], rdx
	mov	edx, r9d
	mov	r8, qword ptr [rbp - 0x280]
	mov	r9, qword ptr [rbp - 0x288]
	mov	r10, qword ptr [rbp - 0x298]
	mov	qword ptr [rsp], r10
	mov	r11, qword ptr [rbp - 0x290]
	mov	qword ptr [rsp + 8], r11
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rbp - 0x2a8]
	mov	qword ptr [rsp + 0x18], rax
	call	print_line
	add	rsp, 0x2d0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405835
	.globl sub_405835
	.type sub_405835, @function
sub_405835:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405840

	.globl timetostr
	.type timetostr, @function
timetostr:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	imaxtostr
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405863
	.globl sub_405863
	.type sub_405863, @function
sub_405863:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405870

	.globl list_entries_who
	.type list_entries_who, @function
list_entries_who:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	movabs	rax, OFFSET FLAT:label_15
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], 0
	mov	qword ptr [rbp - 0x20], rax
.label_443:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 8], rcx
	cmp	rax, 0
	je	.label_440
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 0x2c]
	cmp	ecx, 0
	je	.label_438
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, word ptr [rax]
	cmp	ecx, 7
	jne	.label_438
	mov	rdi, qword ptr [rbp - 0x10]
	call	extract_trimmed_name
	movabs	rdi, OFFSET FLAT:label_442
	mov	qword ptr [rbp - 0x28], rax
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	al, 0
	call	printf
	mov	rdi, qword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x2c], eax
	call	free
	movabs	rdx, OFFSET FLAT:label_439
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	add	rdx, 1
	mov	qword ptr [rbp - 0x18], rdx
.label_438:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x180
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_443
.label_440:
	movabs	rdi, OFFSET FLAT:label_441
	call	gettext
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x30], eax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405955
	.globl sub_405955
	.type sub_405955, @function
sub_405955:

	nop	word ptr cs:[rax + rax]
.label_444:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40596a
	.globl sub_40596a
	.type sub_40596a, @function
sub_40596a:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40596c

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
	jne	.label_444
	cmp	qword ptr [rbp - 8], 0
	je	.label_444
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4059a0
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
	.align	32
	#Procedure 0x4059ba
	.globl sub_4059ba
	.type sub_4059ba, @function
sub_4059ba:

	nop	word ptr [rax + rax]
.label_460:
	movabs	rdi, OFFSET FLAT:label_445
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_452
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_446
	mov	dword ptr [rbp - 0x1c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_453
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_447
	mov	dword ptr [rbp - 0x24], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_454
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_448
	mov	dword ptr [rbp - 0x2c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_455
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_451
	mov	dword ptr [rbp - 0x34], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_456
	mov	dword ptr [rbp - 0x38], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_449
	movabs	rdx, OFFSET FLAT:label_450
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_457
	mov	dword ptr [rbp - 0x3c], eax
	call	emit_ancillary_info
.label_458:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	32
	#Procedure 0x405b3b
	.globl sub_405b3b
	.type sub_405b3b, @function
sub_405b3b:

	nop	
	.section	.text
	.align	32
	#Procedure 0x405b3d

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_460
	jmp	.label_459
.label_459:
	movabs	rdi, OFFSET FLAT:label_461
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_458
	.section	.text
	.align	32
	#Procedure 0x405b90

	.globl make_id_equals_comment
	.type make_id_equals_comment, @function
make_id_equals_comment:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	movabs	rax, OFFSET FLAT:label_462
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], 4
	mov	rdi, rax
	call	gettext
	mov	rdi, rax
	call	strlen
	add	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	rdi, rax
	call	xmalloc
	movabs	rdi, OFFSET FLAT:label_462
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, rax
	call	strcpy
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 8]
	add	rsi, 0x28
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
	call	strncat
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, rdx
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405c1f
	.globl sub_405c1f
	.type sub_405c1f, @function
sub_405c1f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x405c20
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
	je	.label_463
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_464
.label_463:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_464
.label_464:
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
	.align	32
	#Procedure 0x405c92
	.globl sub_405c92
	.type sub_405c92, @function
sub_405c92:

	nop	word ptr cs:[rax + rax]
.label_469:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_465
	mov	eax, dword ptr [rbp - 0x24]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	dword ptr [rcx], eax
.label_465:
	jmp	.label_466
.label_466:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405cc3
	.globl sub_405cc3
	.type sub_405cc3, @function
sub_405cc3:

	nop	word ptr cs:[rax + rax]
.label_468:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
.label_470:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdi, rax
	call	strdup
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_467
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_467
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0xfffffff6
.label_467:
	mov	rdi, qword ptr [rbp - 0x20]
	call	freeaddrinfo
	jmp	.label_466
	.section	.text
	.align	32
	#Procedure 0x405d17

	.globl canon_host_r
	.type canon_host_r, @function
canon_host_r:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	xor	eax, eax
	mov	ecx, eax
	movabs	rdx, OFFSET FLAT:canon_host_r.hints
	lea	r8, [rbp - 0x20]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], 0
	mov	qword ptr [rbp - 0x20], 0
	mov	dword ptr [dword ptr [canon_host_r.hints]],  2
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, rcx
	mov	rcx, r8
	call	getaddrinfo
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 0
	jne	.label_469
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x20], 0
	je	.label_468
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x20]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_470
	.section	.text
	.align	32
	#Procedure 0x405d90

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
	.align	32
	#Procedure 0x405dab
	.globl sub_405dab
	.type sub_405dab, @function
sub_405dab:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405db0

	.globl who
	.type who, @function
who:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rax, [rbp - 0x18]
	lea	rdx, [rbp - 0x20]
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 0xc]
	mov	rsi, rax
	call	read_utmp
	cmp	eax, 0
	je	.label_472
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x24], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_10
	mov	esi, dword ptr [rbp - 0x24]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_471:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	call	scan_entries
.label_473:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	free
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405e34
	.globl sub_405e34
	.type sub_405e34, @function
sub_405e34:

	nop	word ptr cs:[rax + rax]
.label_472:
	test	byte ptr [byte ptr [short_list]],  1
	je	.label_471
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	call	list_entries_who
	jmp	.label_473
	.section	.text
	.align	32
	#Procedure 0x405e60
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_474
	jmp	.label_476
.label_476:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_475
.label_474:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_475:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405e97
	.globl sub_405e97
	.type sub_405e97, @function
sub_405e97:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ea0

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
	.align	32
	#Procedure 0x405ed3
	.globl sub_405ed3
	.type sub_405ed3, @function
sub_405ed3:

	nop	word ptr cs:[rax + rax]
.label_477:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_483:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x81], dl
.label_479:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_480
	jmp	.label_478
.label_480:
	jmp	.label_481
.label_481:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_482
	.section	.text
	.align	32
	#Procedure 0x405f46

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
.label_482:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_479
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_477
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_483
.label_478:
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
	.align	32
	#Procedure 0x405fe9
	.globl sub_405fe9
	.type sub_405fe9, @function
sub_405fe9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405ff0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_486:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_485
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_486
.label_485:
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 8], rax
	je	.label_487
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	qword ptr [word ptr [label_156]],  rax
.label_487:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_484
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_484:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4060c4
	.globl sub_4060c4
	.type sub_4060c4, @function
sub_4060c4:

	nop	word ptr cs:[rax + rax]
.label_504:
	movabs	rsi, OFFSET FLAT:label_492
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_506:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:label_501
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
	mov	ecx, OFFSET FLAT:label_498
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
	ja	.label_488
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_497]]
	jmp	rcx
.label_673:
	movabs	rdi, OFFSET FLAT:label_500
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
	jmp	.label_494
.label_676:
	movabs	rdi, OFFSET FLAT:label_503
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
	jmp	.label_494
.label_674:
	movabs	rdi, OFFSET FLAT:label_491
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
	jmp	.label_494
.label_488:
	movabs	rdi, OFFSET FLAT:label_490
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
.label_494:
	add	rsp, 0x180
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406402
	.globl sub_406402
	.type sub_406402, @function
sub_406402:

	nop	
.label_675:
	movabs	rdi, OFFSET FLAT:label_493
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
	jmp	.label_494
.label_672:
	movabs	rdi, OFFSET FLAT:label_499
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
	jmp	.label_494
.label_671:
	movabs	rdi, OFFSET FLAT:label_496
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
	jmp	.label_494
.label_668:
	movabs	rdi, OFFSET FLAT:label_502
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
	jmp	.label_494
	.section	.text
	.align	32
	#Procedure 0x4065a5

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
	je	.label_504
	movabs	rsi, OFFSET FLAT:label_505
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_506
.label_667:
	jmp	.label_494
.label_669:
	movabs	rdi, OFFSET FLAT:label_495
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
	jmp	.label_494
.label_670:
	movabs	rdi, OFFSET FLAT:label_489
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
	jmp	.label_494
	.section	.text
	.align	32
	#Procedure 0x406690

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
	.align	32
	#Procedure 0x4066c8
	.globl sub_4066c8
	.type sub_4066c8, @function
sub_4066c8:

	nop	dword ptr [rax + rax]
.label_507:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fseeko
	mov	dword ptr [rbp - 4], eax
.label_508:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4066ec
	.globl sub_4066ec
	.type sub_4066ec, @function
sub_4066ec:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4066fa

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
	jne	.label_507
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_507
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_507
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_509
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_508
.label_509:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x90], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_508
.label_513:
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	je	.label_511
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_512
.label_511:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_512
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_512:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_514
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_514:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_510:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40682d
	.globl sub_40682d
	.type sub_40682d, @function
sub_40682d:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40682f

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
	jge	.label_513
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	jmp	.label_510
	.section	.text
	.align	32
	#Procedure 0x406870
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
	.align	32
	#Procedure 0x406895
	.globl sub_406895
	.type sub_406895, @function
sub_406895:

	nop	word ptr cs:[rax + rax]
.label_516:
	jmp	.label_515
.label_515:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4068b3
	.globl sub_4068b3
	.type sub_4068b3, @function
sub_4068b3:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4068b9

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
	ja	.label_516
	jmp	.label_517
.label_517:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	add	eax, 0x2001a
	mov	dword ptr [rbp - 4], eax
	jmp	.label_515
.label_519:
	mov	byte ptr [rbp - 1], 0
.label_520:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4068fe
	.globl sub_4068fe
	.type sub_4068fe, @function
sub_4068fe:

	nop	
	.section	.text
	.align	32
	#Procedure 0x406900
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
	jb	.label_518
	jmp	.label_521
.label_521:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_519
	jmp	.label_518
.label_518:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_520
	.section	.text
	.align	32
	#Procedure 0x406940

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
	je	.label_522
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_523
.label_522:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_523
.label_523:
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
	je	.label_524
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_524:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406a94
	.globl sub_406a94
	.type sub_406a94, @function
sub_406a94:

	nop	word ptr cs:[rax + rax]
.label_526:
	mov	dword ptr [rbp - 4], 0
.label_525:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406ab0
	.globl sub_406ab0
	.type sub_406ab0, @function
sub_406ab0:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406ab7

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
	jne	.label_527
	test	byte ptr [rbp - 0x13], 1
	je	.label_526
	test	byte ptr [rbp - 0x11], 1
	jne	.label_527
	call	__errno_location
	cmp	dword ptr [rax], 9
	je	.label_526
.label_527:
	test	byte ptr [rbp - 0x13], 1
	jne	.label_528
	call	__errno_location
	mov	dword ptr [rax], 0
.label_528:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_525
	.section	.text
	.align	32
	#Procedure 0x406b50

	.globl print_login
	.type print_login, @function
print_login:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x68
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	call	make_id_equals_comment
	movabs	rsi, OFFSET FLAT:label_18
	lea	rdi, [rbp - 0x24]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x10]
	movsxd	rdx, dword ptr [rax + 4]
	mov	al, 0
	call	sprintf
	movabs	rdi, OFFSET FLAT:label_529
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	mov	rdx, qword ptr [rbp - 0x10]
	add	rdx, 8
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0x38], rdx
	call	time_string
	mov	edi, 0xffffffff
	mov	ecx, 0x20
	movabs	rdx, OFFSET FLAT:label_15
	lea	rsi, [rbp - 0x24]
	mov	r8, qword ptr [rbp - 0x18]
	mov	r9, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rsi
	mov	rsi, r9
	mov	qword ptr [rbp - 0x48], rdx
	mov	edx, ecx
	mov	r10, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x50], r8
	mov	r8, r10
	mov	r9, rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rsp], rax
	mov	r11, qword ptr [rbp - 0x40]
	mov	qword ptr [rsp + 8], r11
	mov	rbx, qword ptr [rbp - 0x50]
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 0x18], rax
	call	print_line
	mov	rdi, qword ptr [rbp - 0x18]
	call	free
	add	rsp, 0x68
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406c21
	.globl sub_406c21
	.type sub_406c21, @function
sub_406c21:

	nop	word ptr cs:[rax + rax]
.label_561:
	mov	byte ptr [byte ptr [need_boottime]],  1
	mov	byte ptr [byte ptr [need_deadprocs]],  1
	mov	byte ptr [byte ptr [need_login]],  1
	mov	byte ptr [byte ptr [need_initspawn]],  1
	mov	byte ptr [byte ptr [need_runlevel]],  1
	mov	byte ptr [byte ptr [need_clockchange]],  1
	mov	byte ptr [byte ptr [need_users]],  1
	mov	byte ptr [byte ptr [include_mesg]],  1
	mov	byte ptr [byte ptr [include_idle]],  1
	mov	byte ptr [byte ptr [include_exit]],  1
	mov	byte ptr [rbp - 0x15], 0
	jmp	.label_531
.label_571:
	mov	byte ptr [byte ptr [need_deadprocs]],  1
	mov	byte ptr [byte ptr [include_idle]],  1
	mov	byte ptr [byte ptr [include_exit]],  1
	mov	byte ptr [rbp - 0x15], 0
	jmp	.label_531
	.section	.text
	.align	32
	#Procedure 0x406caa

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	byte ptr [rbp - 0x15], 1
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:label_15
	call	setlocale
	movabs	rdi, OFFSET FLAT:label_585
	movabs	rsi, OFFSET FLAT:label_586
	mov	qword ptr [rbp - 0x20], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:label_585
	mov	qword ptr [rbp - 0x28], rax
	call	textdomain
	movabs	rdi, OFFSET FLAT:close_stdout
	mov	qword ptr [rbp - 0x30], rax
	call	atexit
	mov	dword ptr [rbp - 0x34], eax
.label_583:
	movabs	rdx, OFFSET FLAT:label_551
	movabs	rcx, OFFSET FLAT:longopts
	xor	eax, eax
	mov	r8d, eax
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0x14], eax
	cmp	eax, -1
	je	.label_562
	mov	eax, dword ptr [rbp - 0x14]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	mov	dword ptr [rbp - 0x38], eax
	mov	dword ptr [rbp - 0x3c], ecx
	je	.label_569
	jmp	.label_570
.label_570:
	mov	eax, dword ptr [rbp - 0x38]
	sub	eax, 0xffffff7e
	mov	dword ptr [rbp - 0x40], eax
	je	.label_581
	jmp	.label_537
.label_537:
	mov	eax, dword ptr [rbp - 0x38]
	sub	eax, 0x48
	mov	dword ptr [rbp - 0x44], eax
	je	.label_540
	jmp	.label_548
.label_548:
	mov	eax, dword ptr [rbp - 0x38]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x48], eax
	je	.label_541
	jmp	.label_575
.label_575:
	mov	eax, dword ptr [rbp - 0x38]
	sub	eax, 0x61
	mov	dword ptr [rbp - 0x4c], eax
	je	.label_561
	jmp	.label_559
.label_559:
	mov	eax, dword ptr [rbp - 0x38]
	sub	eax, 0x62
	mov	dword ptr [rbp - 0x50], eax
	je	.label_560
	jmp	.label_552
.label_552:
	mov	eax, dword ptr [rbp - 0x38]
	sub	eax, 0x64
	mov	dword ptr [rbp - 0x54], eax
	je	.label_571
	jmp	.label_576
.label_576:
	mov	eax, dword ptr [rbp - 0x38]
	sub	eax, 0x6c
	mov	dword ptr [rbp - 0x58], eax
	je	.label_578
	jmp	.label_532
.label_532:
	mov	eax, dword ptr [rbp - 0x38]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0x5c], eax
	je	.label_536
	jmp	.label_543
.label_543:
	mov	eax, dword ptr [rbp - 0x38]
	sub	eax, 0x70
	mov	dword ptr [rbp - 0x60], eax
	je	.label_546
	jmp	.label_550
.label_550:
	mov	eax, dword ptr [rbp - 0x38]
	sub	eax, 0x71
	mov	dword ptr [rbp - 0x64], eax
	je	.label_539
	jmp	.label_582
.label_582:
	mov	eax, dword ptr [rbp - 0x38]
	sub	eax, 0x72
	mov	dword ptr [rbp - 0x68], eax
	je	.label_558
	jmp	.label_577
.label_577:
	mov	eax, dword ptr [rbp - 0x38]
	sub	eax, 0x73
	mov	dword ptr [rbp - 0x6c], eax
	je	.label_542
	jmp	.label_573
.label_573:
	mov	eax, dword ptr [rbp - 0x38]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x70], eax
	je	.label_574
	jmp	.label_572
.label_572:
	mov	eax, dword ptr [rbp - 0x38]
	sub	eax, 0x75
	mov	dword ptr [rbp - 0x74], eax
	je	.label_579
	jmp	.label_555
.label_555:
	mov	eax, dword ptr [rbp - 0x38]
	sub	eax, 0x77
	mov	dword ptr [rbp - 0x78], eax
	je	.label_541
	jmp	.label_545
.label_545:
	mov	eax, dword ptr [rbp - 0x38]
	sub	eax, 0x80
	mov	dword ptr [rbp - 0x7c], eax
	je	.label_549
	jmp	.label_554
.label_562:
	test	byte ptr [rbp - 0x15], 1
	je	.label_557
	mov	byte ptr [byte ptr [need_users]],  1
	mov	byte ptr [byte ptr [short_output]],  1
.label_557:
	test	byte ptr [byte ptr [include_exit]],  1
	je	.label_566
	mov	byte ptr [byte ptr [short_output]],  0
.label_566:
	mov	edi, 2
	call	hard_locale
	test	al, 1
	jne	.label_580
	jmp	.label_530
.label_580:
	movabs	rax, OFFSET FLAT:label_534
	mov	qword ptr [word ptr [time_format]],  rax
	mov	dword ptr [dword ptr [time_format_width]],  0x10
	jmp	.label_535
.label_540:
	mov	byte ptr [byte ptr [include_heading]],  1
	jmp	.label_531
.label_549:
	mov	byte ptr [byte ptr [do_lookup]],  1
	jmp	.label_531
.label_578:
	mov	byte ptr [byte ptr [need_login]],  1
	mov	byte ptr [byte ptr [include_idle]],  1
	mov	byte ptr [rbp - 0x15], 0
	jmp	.label_531
.label_547:
	movabs	rdi, OFFSET FLAT:label_567
	call	gettext
	mov	ecx,  dword ptr [dword ptr [optind]]
	add	ecx, 2
	movsxd	rdi, ecx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdx + rdi*8]
	mov	qword ptr [rbp - 0xa0], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_554:
	mov	edi, 1
	call	usage
.label_542:
	mov	byte ptr [byte ptr [short_output]],  1
	jmp	.label_531
.label_579:
	mov	byte ptr [byte ptr [need_users]],  1
	mov	byte ptr [byte ptr [include_idle]],  1
	mov	byte ptr [rbp - 0x15], 0
	jmp	.label_531
.label_541:
	mov	byte ptr [byte ptr [include_mesg]],  1
	jmp	.label_531
.label_539:
	mov	byte ptr [byte ptr [short_list]],  1
	jmp	.label_531
.label_533:
	xor	esi, esi
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rax*8]
	call	who
	jmp	.label_538
.label_560:
	mov	byte ptr [byte ptr [need_boottime]],  1
	mov	byte ptr [rbp - 0x15], 0
	jmp	.label_531
.label_574:
	mov	byte ptr [byte ptr [need_clockchange]],  1
	mov	byte ptr [rbp - 0x15], 0
	jmp	.label_531
.label_558:
	mov	byte ptr [byte ptr [need_runlevel]],  1
	mov	byte ptr [byte ptr [include_idle]],  1
	mov	byte ptr [rbp - 0x15], 0
	jmp	.label_531
.label_581:
	xor	edi, edi
	call	usage
.label_569:
	movabs	rsi, OFFSET FLAT:label_457
	movabs	rdx, OFFSET FLAT:label_64
	movabs	r8, OFFSET FLAT:label_563
	movabs	r9, OFFSET FLAT:label_564
	movabs	rax, OFFSET FLAT:label_565
	xor	ecx, ecx
	mov	edi, ecx
	mov	r10,  qword ptr [word ptr [stdout]]
	mov	rcx,  qword ptr [word ptr [Version]]
	mov	qword ptr [rbp - 0x88], rdi
	mov	rdi, r10
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], 0
	mov	al, 0
	call	version_etc
	xor	edi, edi
	call	exit
.label_530:
	movabs	rax, OFFSET FLAT:label_556
	mov	qword ptr [word ptr [time_format]],  rax
	mov	dword ptr [dword ptr [time_format_width]],  0xc
.label_535:
	mov	eax, dword ptr [rbp - 8]
	mov	ecx,  dword ptr [dword ptr [rip + optind]]
	sub	eax, ecx
	mov	ecx, eax
	inc	ecx
	sub	ecx, 2
	mov	dword ptr [rbp - 0x8c], eax
	mov	dword ptr [rbp - 0x90], ecx
	jb	.label_568
	jmp	.label_584
.label_584:
	mov	eax, dword ptr [rbp - 0x8c]
	sub	eax, 1
	mov	dword ptr [rbp - 0x94], eax
	je	.label_533
	jmp	.label_544
.label_544:
	mov	eax, dword ptr [rbp - 0x8c]
	sub	eax, 2
	mov	dword ptr [rbp - 0x98], eax
	jne	.label_547
	jmp	.label_553
.label_553:
	mov	byte ptr [byte ptr [my_line_only]],  1
.label_568:
	movabs	rdi, OFFSET FLAT:label_449
	mov	esi, 1
	call	who
	jmp	.label_538
.label_546:
	mov	byte ptr [byte ptr [need_initspawn]],  1
	mov	byte ptr [rbp - 0x15], 0
	jmp	.label_531
.label_538:
	xor	eax, eax
	add	rsp, 0xb0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407175
	.globl sub_407175
	.type sub_407175, @function
sub_407175:

	nop	word ptr [rax + rax]
.label_531:
	jmp	.label_583
.label_536:
	mov	byte ptr [byte ptr [my_line_only]],  1
	jmp	.label_531
.label_588:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40719a
	.globl sub_40719a
	.type sub_40719a, @function
sub_40719a:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4071a4
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
	jb	.label_587
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_588
.label_587:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4071f0
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
	.align	32
	#Procedure 0x407221
	.globl sub_407221
	.type sub_407221, @function
sub_407221:

	nop	word ptr cs:[rax + rax]
.label_589:
	mov	byte ptr [rbp - 1], 0
.label_593:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40723e
	.globl sub_40723e
	.type sub_40723e, @function
sub_40723e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407249
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
	jb	.label_590
	jmp	.label_591
.label_591:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_590
	jmp	.label_592
.label_592:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_589
	jmp	.label_590
.label_590:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_593
.label_595:
	mov	byte ptr [rbp - 1], 0
.label_596:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4072ae
	.globl sub_4072ae
	.type sub_4072ae, @function
sub_4072ae:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4072b3
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
	jb	.label_594
	jmp	.label_597
.label_597:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_595
	jmp	.label_594
.label_594:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_596
	.section	.text
	.align	32
	#Procedure 0x4072f0
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
	.align	32
	#Procedure 0x407317
	.globl sub_407317
	.type sub_407317, @function
sub_407317:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407320

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_598
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_598
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_600
.label_599:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_600:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40736e
	.globl sub_40736e
	.type sub_40736e, @function
sub_40736e:

	nop	word ptr [rax + rax]
.label_598:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_599
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_599
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4073a0
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
	.align	32
	#Procedure 0x4073c8
	.globl sub_4073c8
	.type sub_4073c8, @function
sub_4073c8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4073d0

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
	.align	32
	#Procedure 0x4073fc
	.globl sub_4073fc
	.type sub_4073fc, @function
sub_4073fc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407400

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
	.align	32
	#Procedure 0x407428
	.globl sub_407428
	.type sub_407428, @function
sub_407428:

	nop	dword ptr [rax + rax]
.label_601:
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
	.align	32
	#Procedure 0x40744e

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
	jne	.label_603
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_603:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_602
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_601
.label_602:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4074a0

	.globl print_initspawn
	.type print_initspawn, @function
print_initspawn:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	make_id_equals_comment
	movabs	rsi, OFFSET FLAT:label_18
	lea	rdi, [rbp - 0x1c]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 8]
	movsxd	rdx, dword ptr [rax + 4]
	mov	al, 0
	call	sprintf
	mov	rdx, qword ptr [rbp - 8]
	add	rdx, 8
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x20], eax
	mov	qword ptr [rbp - 0x28], rdx
	call	time_string
	mov	edi, 0xffffffff
	movabs	rdx, OFFSET FLAT:label_15
	mov	ecx, 0x20
	lea	rsi, [rbp - 0x1c]
	mov	r8, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rsi
	mov	rsi, rdx
	mov	qword ptr [rbp - 0x38], rdx
	mov	edx, ecx
	mov	r9, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x40], r8
	mov	r8, r9
	mov	r9, rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rsp], rax
	mov	r10, qword ptr [rbp - 0x30]
	mov	qword ptr [rsp + 8], r10
	mov	r11, qword ptr [rbp - 0x40]
	mov	qword ptr [rsp + 0x10], r11
	mov	qword ptr [rsp + 0x18], rax
	call	print_line
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407558
	.globl sub_407558
	.type sub_407558, @function
sub_407558:

	nop	dword ptr [rax + rax]
.label_605:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_604
.label_604:
	mov	rax, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40757b
	.globl sub_40757b
	.type sub_40757b, @function
sub_40757b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407580
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_605
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_604
.label_606:
	movzx	eax, byte ptr [rbp - 9]
	mov	dword ptr [rbp - 0x34], eax
.label_609:
	mov	eax, dword ptr [rbp - 0x34]
	movabs	rsi, OFFSET FLAT:label_610
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	ecx, eax
	mov	al, 0
	call	sprintf
	mov	r8,  qword ptr [word ptr [print_runlevel.runlevline]]
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x38], eax
	mov	qword ptr [rbp - 0x40], r8
	call	time_string
	movzx	edi, byte ptr [rbp - 9]
	mov	qword ptr [rbp - 0x48], rax
	call	c_isprint
	test	al, 1
	jne	.label_611
	jmp	.label_614
.label_611:
	mov	rax,  qword ptr [word ptr [print_runlevel.comment]]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_613
.label_614:
	movabs	rax, OFFSET FLAT:label_15
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_613
.label_613:
	mov	rax, qword ptr [rbp - 0x50]
	mov	ecx, 0xffffffff
	movabs	rdx, OFFSET FLAT:label_15
	mov	esi, 0x20
	mov	edi, ecx
	mov	dword ptr [rbp - 0x54], esi
	mov	rsi, rdx
	mov	r8d, dword ptr [rbp - 0x54]
	mov	qword ptr [rbp - 0x60], rdx
	mov	edx, r8d
	mov	r8, qword ptr [rbp - 0x40]
	mov	r9, qword ptr [rbp - 0x48]
	mov	r10, qword ptr [rbp - 0x60]
	mov	qword ptr [rsp], r10
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x18], r10
	call	print_line
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407673
	.globl sub_407673
	.type sub_407673, @function
sub_407673:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40767b

	.globl print_runlevel
	.type print_runlevel, @function
print_runlevel:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	eax, 0x100
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rdi + 4]
	mov	dword ptr [rbp - 0x10], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x10]
	idiv	ecx
	mov	sil, al
	mov	byte ptr [rbp - 9], sil
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdi + 4]
	cdq	
	idiv	ecx
	mov	sil, dl
	mov	byte ptr [rbp - 0xa], sil
	cmp	qword ptr [word ptr [print_runlevel.runlevline]],  0
	jne	.label_615
	movabs	rdi, OFFSET FLAT:label_607
	call	gettext
	mov	rdi, rax
	call	strlen
	add	rax, 3
	mov	rdi, rax
	call	xmalloc
	mov	qword ptr [word ptr [print_runlevel.runlevline]],  rax
.label_615:
	movabs	rdi, OFFSET FLAT:label_607
	mov	rax,  qword ptr [word ptr [print_runlevel.runlevline]]
	mov	qword ptr [rbp - 0x18], rax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_608
	movzx	ecx, byte ptr [rbp - 0xa]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, rax
	mov	al, 0
	call	sprintf
	cmp	qword ptr [word ptr [print_runlevel.comment]],  0
	mov	dword ptr [rbp - 0x1c], eax
	jne	.label_616
	movabs	rdi, OFFSET FLAT:label_612
	call	gettext
	mov	rdi, rax
	call	strlen
	add	rax, 2
	mov	rdi, rax
	call	xmalloc
	mov	qword ptr [word ptr [print_runlevel.comment]],  rax
.label_616:
	movabs	rdi, OFFSET FLAT:label_612
	mov	rax,  qword ptr [word ptr [print_runlevel.comment]]
	mov	qword ptr [rbp - 0x28], rax
	call	gettext
	movzx	ecx, byte ptr [rbp - 9]
	cmp	ecx, 0x4e
	mov	qword ptr [rbp - 0x30], rax
	jne	.label_606
	mov	eax, 0x53
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_609
	.section	.text
	.align	32
	#Procedure 0x4077a0
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
	.align	32
	#Procedure 0x4077ca
	.globl sub_4077ca
	.type sub_4077ca, @function
sub_4077ca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4077d0

	.globl imaxtostr
	.type imaxtostr, @function
imaxtostr:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	add	rsi, 0x14
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi], 0
	cmp	qword ptr [rbp - 8], 0
	jge	.label_617
	jmp	.label_620
.label_620:
	mov	eax, 0x30
	mov	ecx, eax
	mov	eax, 0xa
	mov	edx, eax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0x20]
	idiv	rsi
	sub	rcx, rdx
	mov	dil, cl
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rcx - 1], dil
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_620
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax - 1], 0x2d
	jmp	.label_619
.label_617:
	jmp	.label_618
.label_618:
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	cqo	
	idiv	rcx
	add	rdx, 0x30
	mov	sil, dl
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rcx - 1], sil
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_618
	jmp	.label_619
.label_619:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4078c5
	.globl sub_4078c5
	.type sub_4078c5, @function
sub_4078c5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4078d0

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
	jne	.label_621
	movabs	rax, OFFSET FLAT:label_15
	mov	qword ptr [rbp - 8], rax
.label_621:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_622
	movabs	rax, OFFSET FLAT:label_623
	mov	qword ptr [rbp - 8], rax
.label_622:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407927
	.globl sub_407927
	.type sub_407927, @function
sub_407927:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407930
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_624
	jmp	.label_626
.label_626:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_625
.label_624:
	mov	byte ptr [rbp - 1], 0
.label_625:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407962
	.globl sub_407962
	.type sub_407962, @function
sub_407962:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407970
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
	jb	.label_627
	jmp	.label_630
.label_630:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_627
	jmp	.label_628
.label_628:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_629
	jmp	.label_627
.label_627:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_631
.label_629:
	mov	byte ptr [rbp - 1], 0
.label_631:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4079d5
	.globl sub_4079d5
	.type sub_4079d5, @function
sub_4079d5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4079e0

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
	.align	32
	#Procedure 0x407a1f
	.globl sub_407a1f
	.type sub_407a1f, @function
sub_407a1f:

	nop	
.label_633:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	je	.label_632
.label_634:
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_635:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407a5e
	.globl sub_407a5e
	.type sub_407a5e, @function
sub_407a5e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407a6d

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
	jne	.label_636
	mov	dword ptr [rbp - 4], 0
	jmp	.label_635
.label_636:
	jmp	.label_632
.label_632:
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
	jne	.label_633
	jmp	.label_634
	.section	.text
	.align	32
	#Procedure 0x407b45
	.globl sub_407b45
	.type sub_407b45, @function
sub_407b45:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407b52
	.globl sub_407b52
	.type sub_407b52, @function
sub_407b52:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407b76
	.globl sub_407b76
	.type sub_407b76, @function
sub_407b76:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407b89
	.globl sub_407b89
	.type sub_407b89, @function
sub_407b89:

	nop	dword ptr [rax]
