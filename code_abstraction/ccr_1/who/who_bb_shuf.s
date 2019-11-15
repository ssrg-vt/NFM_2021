	.section	.text
	.align	16
	#Procedure 0x401919
	.globl sub_401919
	.type sub_401919, @function
sub_401919:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x40191a
	.globl sub_40191a
	.type sub_40191a, @function
sub_40191a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401952
	.globl sub_401952
	.type sub_401952, @function
sub_401952:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40199a
	.globl sub_40199a
	.type sub_40199a, @function
sub_40199a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4019bc
	.globl sub_4019bc
	.type sub_4019bc, @function
sub_4019bc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4019cd
	.globl sub_4019cd
	.type sub_4019cd, @function
sub_4019cd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4019e6
	.globl sub_4019e6
	.type sub_4019e6, @function
sub_4019e6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4019f0
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
	.align	16
	#Procedure 0x401a17
	.globl sub_401a17
	.type sub_401a17, @function
sub_401a17:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a20

	.globl print_initspawn
	.type print_initspawn, @function
print_initspawn:
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rdi
	call	make_id_equals_comment
	mov	r14, rax
	movsxd	r8, dword ptr [rbx + 4]
	lea	r15, [rsp + 0xc]
	mov	esi, 1
	mov	edx, 0xc
	mov	ecx, OFFSET FLAT:label_9
	xor	eax, eax
	mov	rdi, r15
	call	__sprintf_chk
	lea	r12, [rbx + 8]
	mov	rdi, rbx
	call	time_string
	mov	edi, 0xffffffff
	mov	esi, OFFSET FLAT:label_10
	mov	edx, 0x20
	mov	ecx, 0x20
	mov	r8, r12
	mov	r9, rax
	push	OFFSET FLAT:label_10
	push	r14
	push	r15
	push	OFFSET FLAT:label_10
	call	print_line
	add	rsp, 0x20
	mov	rdi, r14
	call	free
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x401aa9
	.globl sub_401aa9
	.type sub_401aa9, @function
sub_401aa9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401ab0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	16
	#Procedure 0x401aba
	.globl sub_401aba
	.type sub_401aba, @function
sub_401aba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ac0

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
	je	.label_11
	mov	qword ptr [rax], rbx
.label_11:
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
	#Procedure 0x401bac
	.globl sub_401bac
	.type sub_401bac, @function
sub_401bac:

	nop	dword ptr [rax]
.label_13:
	add	rsi, 0x13
	movabs	r8, 0x6666666666666667
	nop	dword ptr [rax]
.label_12:
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
	ja	.label_12
	mov	byte ptr [rsi], 0x2d
.label_14:
	mov	rax, rsi
	ret	
	.section	.text
	.align	16
	#Procedure 0x401c08
	.globl sub_401c08
	.type sub_401c08, @function
sub_401c08:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401c15

	.globl imaxtostr
	.type imaxtostr, @function
imaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	test	rcx, rcx
	js	.label_13
	add	rsi, 0x14
	movabs	r8, 0x6666666666666667
	nop	word ptr [rax + rax]
.label_15:
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
	ja	.label_15
	jmp	.label_14
	.section	.text
	.align	16
	#Procedure 0x401c70

	.globl print_user
	.type print_user, @function
print_user:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x1e8
	mov	rbx, rsi
	mov	r12, rdi
	movsxd	r8, dword ptr [r12 + 4]
	lea	r14, [rsp + 0x14]
	mov	esi, 1
	mov	edx, 0xc
	mov	ecx, OFFSET FLAT:label_9
	xor	eax, eax
	mov	rdi, r14
	call	__sprintf_chk
	lea	r15, [r12 + 8]
	cmp	byte ptr [r12 + 8], 0x2f
	jne	.label_23
	lea	rdi, [rsp + 0x20]
	jmp	.label_29
.label_23:
	lea	rdi, [rsp + 0x25]
	mov	word ptr [rsp + 0x24], 0x2f
	mov	dword ptr [rsp + 0x20], 0x7665642f
.label_29:
	mov	edx, 0x20
	mov	rsi, r15
	call	stzncpy
	lea	rdi, [rsp + 0x20]
	lea	rsi, [rsp + 0x50]
	call	stat
	mov	r13b, 0x3f
	test	eax, eax
	jne	.label_17
	lea	rdi, [rsp + 0x50]
	call	is_tty_writable
	test	al, al
	mov	r13b, 0x2b
	jne	.label_34
	mov	r13b, 0x2d
.label_34:
	mov	rdi, qword ptr [rsp + 0x98]
	test	rdi, rdi
	je	.label_17
	mov	rsi, rbx
	call	idle_string
	mov	rbp, rax
	lea	rdi, [rsp + 1]
	mov	esi, 1
	mov	edx, 7
	mov	ecx, OFFSET FLAT:label_21
	mov	r8d, 6
	xor	eax, eax
	mov	r9, rbp
	call	__sprintf_chk
	jmp	.label_26
.label_17:
	lea	rdi, [rsp + 1]
	mov	esi, 1
	mov	edx, 7
	mov	ecx, OFFSET FLAT:label_27
	xor	eax, eax
	call	__sprintf_chk
.label_26:
	cmp	byte ptr [r12 + 0x4c], 0
	je	.label_32
	mov	byte ptr [rsp], r13b
	lea	rsi, [r12 + 0x4c]
	lea	rbx, [rsp + 0xe0]
	mov	edx, 0x100
	mov	rdi, rbx
	call	stzncpy
	mov	esi, 0x3a
	mov	rdi, rbx
	call	strchr
	xor	ebp, ebp
	test	rax, rax
	je	.label_19
	mov	rbp, rax
	inc	rbp
	mov	byte ptr [rax], 0
.label_19:
	mov	qword ptr [rsp + 8], r15
	xor	r13d, r13d
	cmp	byte ptr [rsp + 0xe0], 0
	je	.label_22
	xor	r13d, r13d
	cmp	byte ptr [byte ptr [rip + do_lookup]],  1
	jne	.label_22
	lea	rdi, [rsp + 0xe0]
	call	canon_host
	mov	r13, rax
.label_22:
	test	r13, r13
	cmovne	rbx, r13
	mov	r15,  qword ptr [word ptr [rip + print_user.hostlen]]
	mov	rdi, rbx
	call	strlen
	mov	r14, rax
	test	rbp, rbp
	je	.label_25
	mov	rdi, rbp
	call	strlen
	lea	rax, [r14 + rax + 4]
	cmp	r15, rax
	jae	.label_16
	mov	qword ptr [word ptr [rip + print_user.hostlen]],  rax
	mov	rdi,  qword ptr [word ptr [rip + print_user.hoststr]]
	call	free
	mov	rdi,  qword ptr [word ptr [rip + print_user.hostlen]]
	call	xmalloc
	mov	qword ptr [word ptr [rip + print_user.hoststr]],  rax
.label_16:
	mov	rdi,  qword ptr [word ptr [rip + print_user.hoststr]]
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_24
	xor	eax, eax
	mov	r8, rbx
	mov	r9, rbp
	call	__sprintf_chk
	jmp	.label_30
.label_32:
	cmp	qword ptr [word ptr [rip + print_user.hostlen]],  0
	jne	.label_31
	mov	qword ptr [word ptr [rip + print_user.hostlen]],  1
	mov	rdi,  qword ptr [word ptr [rip + print_user.hoststr]]
	call	free
	mov	rdi,  qword ptr [word ptr [rip + print_user.hostlen]]
	call	xmalloc
	mov	qword ptr [word ptr [rip + print_user.hoststr]],  rax
.label_31:
	mov	rax,  qword ptr [word ptr [rip + print_user.hoststr]]
	mov	byte ptr [rax], 0
	jmp	.label_18
.label_25:
	add	r14, 3
	cmp	r15, r14
	jae	.label_20
	mov	qword ptr [word ptr [rip + print_user.hostlen]],  r14
	mov	rdi,  qword ptr [word ptr [rip + print_user.hoststr]]
	call	free
	mov	rdi,  qword ptr [word ptr [rip + print_user.hostlen]]
	call	xmalloc
	mov	qword ptr [word ptr [rip + print_user.hoststr]],  rax
.label_20:
	mov	rdi,  qword ptr [word ptr [rip + print_user.hoststr]]
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_28
	xor	eax, eax
	mov	r8, rbx
	call	__sprintf_chk
.label_30:
	lea	r14, [rsp + 0x14]
	mov	r15, qword ptr [rsp + 8]
	test	r13, r13
	je	.label_33
	mov	rdi, rbx
	call	free
.label_33:
	mov	r13b, byte ptr [rsp]
.label_18:
	lea	rbx, [r12 + 0x2c]
	mov	rdi, r12
	call	time_string
	mov	rcx,  qword ptr [word ptr [rip + print_user.hoststr]]
	test	rcx, rcx
	mov	ebp, OFFSET FLAT:label_10
	cmovne	rbp, rcx
	lea	r10, [rsp + 1]
	movsx	edx, r13b
	mov	edi, 0x20
	mov	ecx, 0x20
	mov	rsi, rbx
	mov	r8, r15
	mov	r9, rax
	push	OFFSET FLAT:label_10
	push	rbp
	push	r14
	push	r10
	call	print_line
	add	rsp, 0x208
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401f64
	.globl sub_401f64
	.type sub_401f64, @function
sub_401f64:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f70

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
	#Procedure 0x401f87
	.globl sub_401f87
	.type sub_401f87, @function
sub_401f87:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f90
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
	.align	16
	#Procedure 0x402002
	.globl sub_402002
	.type sub_402002, @function
sub_402002:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402010

	.globl print_runlevel
	.type print_runlevel, @function
print_runlevel:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	ebx, dword ptr [r14 + 4]
	mov	ebp, ebx
	sar	ebp, 0x1f
	shr	ebp, 0x18
	add	ebp, ebx
	cmp	qword ptr [word ptr [rip + print_runlevel.runlevline]],  0
	jne	.label_36
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_37
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	call	strlen
	lea	rdi, [rax + 3]
	call	xmalloc
	mov	qword ptr [word ptr [rip + print_runlevel.runlevline]],  rax
.label_36:
	sar	ebp, 8
	mov	r15,  qword ptr [word ptr [rip + print_runlevel.runlevline]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_37
	mov	edx, 5
	call	dcgettext
	mov	r8, rax
	movzx	r9d, bl
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_39
	xor	eax, eax
	mov	rdi, r15
	call	__sprintf_chk
	cmp	qword ptr [word ptr [rip + print_runlevel.comment]],  0
	jne	.label_40
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_35
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	call	strlen
	lea	rdi, [rax + 2]
	call	xmalloc
	mov	qword ptr [word ptr [rip + print_runlevel.comment]],  rax
.label_40:
	mov	r15,  qword ptr [word ptr [rip + print_runlevel.comment]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_35
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movzx	ebp, bpl
	cmp	ebp, 0x4e
	mov	r9d, 0x53
	cmovne	r9d, ebp
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_38
	xor	eax, eax
	mov	rdi, r15
	mov	r8, rbx
	call	__sprintf_chk
	mov	r15,  qword ptr [word ptr [rip + print_runlevel.runlevline]]
	mov	rdi, r14
	call	time_string
	mov	rbx, rax
	mov	edi, ebp
	call	c_isprint
	mov	ecx, OFFSET FLAT:label_10
	test	al, al
	mov	rax,  qword ptr [word ptr [rip + print_runlevel.comment]]
	cmove	rax, rcx
	mov	edi, 0xffffffff
	mov	esi, OFFSET FLAT:label_10
	mov	edx, 0x20
	mov	ecx, 0xffffffff
	mov	r8, r15
	mov	r9, rbx
	push	OFFSET FLAT:label_10
	push	rax
	push	OFFSET FLAT:label_10
	push	OFFSET FLAT:label_10
	call	print_line
	add	rsp, 0x28
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40217a
	.globl sub_40217a
	.type sub_40217a, @function
sub_40217a:

	nop	word ptr [rax + rax]
.label_41:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402185
	.globl sub_402185
	.type sub_402185, @function
sub_402185:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402193

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
	je	.label_41
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
	.align	16
	#Procedure 0x4021e0
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x4021ea
	.globl sub_4021ea
	.type sub_4021ea, @function
sub_4021ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4021f0

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
	je	.label_43
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_44
	jmp	.label_42
.label_43:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_42
.label_44:
	mov	eax, 1
	test	bpl, bpl
	je	.label_42
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
.label_42:
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
	#Procedure 0x40226d
	.globl sub_40226d
	.type sub_40226d, @function
sub_40226d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402270
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_45
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_45:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402296
	.globl sub_402296
	.type sub_402296, @function
sub_402296:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4022a0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_46
	test	rbx, rbx
	jne	.label_46
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_46:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_48
	test	rax, rax
	je	.label_47
.label_48:
	pop	rbx
	ret	
.label_47:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4022d0
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_49
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_49:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x4022ee
	.globl sub_4022ee
	.type sub_4022ee, @function
sub_4022ee:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4022f0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_51
	cmp	byte ptr [rax], 0x43
	jne	.label_53
	cmp	byte ptr [rax + 1], 0
	je	.label_50
.label_53:
	mov	esi, OFFSET FLAT:label_52
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_51
.label_50:
	xor	ebx, ebx
.label_51:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402321
	.globl sub_402321
	.type sub_402321, @function
sub_402321:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402330

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
	je	.label_64
	mov	edx, OFFSET FLAT:label_59
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_66
.label_64:
	mov	edx, OFFSET FLAT:label_67
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_66:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_72
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
	mov	esi, OFFSET FLAT:label_68
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_55
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_56]]
.label_527:
	add	rsp, 8
	jmp	.label_54
.label_55:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_63
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
	jmp	.label_54
.label_528:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_70
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
.label_529:
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
.label_530:
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
.label_531:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_57
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
	jmp	.label_54
.label_532:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_60
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
	jmp	.label_54
.label_533:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_58
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
	jmp	.label_54
.label_534:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_62
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
	jmp	.label_54
.label_536:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_65
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
	jmp	.label_54
.label_535:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_71
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
.label_54:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x402688
	.globl sub_402688
	.type sub_402688, @function
sub_402688:

	nop	dword ptr [rax + rax]
.label_73:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	16
	#Procedure 0x40269c
	.globl sub_40269c
	.type sub_40269c, @function
sub_40269c:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4026a9

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_73
	ret	
	.section	.text
	.align	16
	#Procedure 0x4026b0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_74:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_74
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x4026d1
	.globl sub_4026d1
	.type sub_4026d1, @function
sub_4026d1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4026e0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_78
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_75
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_75
.label_78:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_79
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_75:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_81
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_77
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_76
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_79:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_77:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_80
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4027a0

	.globl print_line
	.type print_line, @function
print_line:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	qword ptr [rsp + 0x18], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	r12d, ecx
	mov	rbx, rsi
	mov	r13d, edi
	mov	byte ptr [byte ptr [rip + label_91]],  dl
	cmp	byte ptr [byte ptr [rip + include_idle]],  1
	jne	.label_92
	mov	al,  byte ptr [byte ptr [rip + short_output]]
	test	al, al
	jne	.label_92
	mov	r14, qword ptr [rsp + 0x70]
	mov	rdi, r14
	call	strlen
	cmp	rax, 6
	ja	.label_92
	lea	rdi, [rsp + 0x10]
	mov	esi, 1
	mov	edx, 8
	mov	ecx, OFFSET FLAT:label_94
	xor	eax, eax
	mov	r8, r14
	call	__sprintf_chk
	jmp	.label_85
.label_92:
	mov	byte ptr [rsp + 0x10], 0
.label_85:
	mov	al,  byte ptr [byte ptr [rip + short_output]]
	test	al, al
	jne	.label_88
	mov	r14, qword ptr [rsp + 0x78]
	mov	rdi, r14
	call	strlen
	cmp	rax, 0xb
	ja	.label_88
	lea	rdi, [rsp + 0x2b]
	mov	esi, 1
	mov	edx, 0xd
	mov	ecx, OFFSET FLAT:label_95
	xor	eax, eax
	mov	r8, r14
	call	__sprintf_chk
	jmp	.label_86
.label_88:
	mov	byte ptr [rsp + 0x2b], 0
.label_86:
	mov	r14, qword ptr [rsp + 0x88]
	mov	edi, 1
	cmp	byte ptr [byte ptr [rip + include_exit]],  1
	jne	.label_89
	mov	rdi, r14
	call	strlen
	cmp	rax, 0xc
	lea	rax, [rax + 2]
	mov	edi, 0xe
	cmovae	rdi, rax
.label_89:
	mov	r15, qword ptr [rsp + 0x80]
	call	xmalloc
	mov	rbp, rax
	cmp	byte ptr [byte ptr [rip + include_exit]],  1
	jne	.label_87
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_90
	xor	eax, eax
	mov	rdi, rbp
	mov	r8, r14
	call	__sprintf_chk
	jmp	.label_96
.label_87:
	mov	byte ptr [rbp], 0
.label_96:
	test	rbx, rbx
	mov	r8d, OFFSET FLAT:label_82
	cmovne	r8, rbx
	mov	al,  byte ptr [byte ptr [rip + include_mesg]]
	mov	ecx, OFFSET FLAT:print_line.mesg
	mov	r9d, OFFSET FLAT:label_10
	test	al, al
	cmovne	r9, rcx
	mov	ebx,  dword ptr [dword ptr [rip + time_format_width]]
	lea	r10, [rsp + 0x2b]
	lea	r11, [rsp + 0x10]
	lea	rdi, [rsp + 8]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_83
	mov	eax, 0
	mov	ecx, r13d
	push	rbp
	push	r15
	push	r10
	push	r11
	push	qword ptr [rsp + 0x38]
	push	rbx
	push	qword ptr [rsp + 0x50]
	push	r12
	call	__asprintf_chk
	add	rsp, 0x40
	cmp	eax, -1
	je	.label_93
	mov	rbx, qword ptr [rsp + 8]
	mov	rdi, rbx
	call	strlen
	lea	rax, [rbx + rax + 1]
	nop	dword ptr [rax]
.label_84:
	cmp	byte ptr [rax - 2], 0x20
	lea	rax, [rax - 1]
	je	.label_84
	mov	byte ptr [rax], 0
	mov	rdi, qword ptr [rsp + 8]
	call	puts
	mov	rdi, qword ptr [rsp + 8]
	call	free
	mov	rdi, rbp
	call	free
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_93:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40297d
	.globl sub_40297d
	.type sub_40297d, @function
sub_40297d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402980

	.globl print_clockchange
	.type print_clockchange, @function
print_clockchange:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_97
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi, rbx
	call	time_string
	mov	edi, 0xffffffff
	mov	esi, OFFSET FLAT:label_10
	mov	edx, 0x20
	mov	ecx, 0xffffffff
	mov	r8, r14
	mov	r9, rax
	push	OFFSET FLAT:label_10
	push	OFFSET FLAT:label_10
	push	OFFSET FLAT:label_10
	push	OFFSET FLAT:label_10
	call	print_line
	add	rsp, 0x28
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x4029de
	.globl sub_4029de
	.type sub_4029de, @function
sub_4029de:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4029e0

	.globl timetostr
	.type timetostr, @function
timetostr:
	mov	esi, OFFSET FLAT:time_string.buf
	jmp	imaxtostr
	.section	.text
	.align	16
	#Procedure 0x4029ea
	.globl sub_4029ea
	.type sub_4029ea, @function
sub_4029ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4029f0
	.globl ch_strerror
	.type ch_strerror, @function
ch_strerror:

	mov	edi,  dword ptr [dword ptr [rip + last_cherror]]
	jmp	gai_strerror
	.section	.text
	.align	16
	#Procedure 0x4029fb
	.globl sub_4029fb
	.type sub_4029fb, @function
sub_4029fb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a00

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_98
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_100
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_102
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_100
	mov	esi, OFFSET FLAT:label_101
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_103
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_103:
	mov	rbx, r14
.label_100:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_98:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_99
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402aa1
	.globl sub_402aa1
	.type sub_402aa1, @function
sub_402aa1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ab0

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
	#Procedure 0x402ae6
	.globl sub_402ae6
	.type sub_402ae6, @function
sub_402ae6:

	nop	word ptr cs:[rax + rax]
.label_104:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x402af3
	.globl sub_402af3
	.type sub_402af3, @function
sub_402af3:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402af5
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_104
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_105:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_106
	test	cl, cl
	jne	.label_106
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_106:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402b3b
	.globl sub_402b3b
	.type sub_402b3b, @function
sub_402b3b:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b45

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
	je	.label_105
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_106
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_106
	.section	.text
	.align	16
	#Procedure 0x402b80
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_107
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_107:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402ba3
	.globl sub_402ba3
	.type sub_402ba3, @function
sub_402ba3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402bb0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_108
	test	rax, rax
	je	.label_109
.label_108:
	pop	rbx
	ret	
.label_109:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402bca
	.globl sub_402bca
	.type sub_402bca, @function
sub_402bca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402bd0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x402bd8
	.globl sub_402bd8
	.type sub_402bd8, @function
sub_402bd8:

	nop	dword ptr [rax + rax]
.label_115:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_110
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
	.align	16
	#Procedure 0x402c18
	.globl sub_402c18
	.type sub_402c18, @function
sub_402c18:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c23

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_115
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_119
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_113
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_121
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_111
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_114
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_120
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_116
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_112
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_122
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_123
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_117
	mov	ecx, OFFSET FLAT:label_118
	xor	eax, eax
	call	__printf_chk
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
	.section	.text
	.align	16
	#Procedure 0x402d90
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x402d9a
	.globl sub_402d9a
	.type sub_402d9a, @function
sub_402d9a:

	nop	word ptr [rax + rax]
.label_124:
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
	jb	.label_124
	call	rpl_calloc
	test	rax, rax
	je	.label_124
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402dd0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_10
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_125
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402df5
	.globl sub_402df5
	.type sub_402df5, @function
sub_402df5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e00

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
	jne	.label_133
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
	je	.label_132
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_134
	mov	eax, OFFSET FLAT:label_135
	jmp	.label_130
.label_132:
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
	je	.label_131
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_128
	mov	eax, OFFSET FLAT:label_129
	jmp	.label_130
.label_131:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_126
	mov	eax, OFFSET FLAT:label_127
.label_130:
	cmove	rax, rcx
.label_133:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402ebd
	.globl sub_402ebd
	.type sub_402ebd, @function
sub_402ebd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402ec0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x402ece
	.globl sub_402ece
	.type sub_402ece, @function
sub_402ece:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402ed0

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
	js	.label_139
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_142
	cmp	r12d, 0x7fffffff
	je	.label_137
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
	jne	.label_140
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_140:
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
.label_142:
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
	jbe	.label_138
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_141
.label_138:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_136
	mov	rdi, r14
	call	free
.label_136:
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
.label_141:
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
.label_139:
	call	abort
.label_137:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40308d
	.globl sub_40308d
	.type sub_40308d, @function
sub_40308d:

	nop	dword ptr [rax]
.label_143:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403096
	.globl sub_403096
	.type sub_403096, @function
sub_403096:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40309b

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
	.align	16
	#Procedure 0x4030c0

	.globl extract_trimmed_name
	.type extract_trimmed_name, @function
extract_trimmed_name:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	edi, 0x21
	call	xmalloc
	mov	rbx, rax
	lea	rsi, [r14 + 0x2c]
	mov	edx, 0x20
	mov	rdi, rbx
	call	strncpy
	mov	byte ptr [rbx + 0x20], 0
	mov	rdi, rbx
	call	strlen
	test	rax, rax
	jle	.label_145
	add	rax, rbx
	nop	dword ptr [rax]
.label_144:
	cmp	byte ptr [rax - 1], 0x20
	jne	.label_145
	mov	byte ptr [rax - 1], 0
	dec	rax
	cmp	rbx, rax
	jb	.label_144
.label_145:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x40311d
	.globl sub_40311d
	.type sub_40311d, @function
sub_40311d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403120

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
	.align	16
	#Procedure 0x40314d
	.globl sub_40314d
	.type sub_40314d, @function
sub_40314d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403150
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
	.align	16
	#Procedure 0x403163
	.globl sub_403163
	.type sub_403163, @function
sub_403163:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403170
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x40317a
	.globl sub_40317a
	.type sub_40317a, @function
sub_40317a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403180
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
	.align	16
	#Procedure 0x40318f
	.globl sub_40318f
	.type sub_40318f, @function
sub_40318f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403190

	.globl print_heading
	.type print_heading, @function
print_heading:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_146
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_152
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_147
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_148
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_150
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_151
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_149
	mov	edx, 5
	call	dcgettext
	mov	edi, 0xffffffff
	mov	edx, 0x20
	mov	ecx, 0xffffffff
	mov	rsi, r14
	mov	r8, r15
	mov	r9, r12
	push	rax
	push	rbp
	push	rbx
	push	r13
	call	print_line
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
	#Procedure 0x403255
	.globl sub_403255
	.type sub_403255, @function
sub_403255:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403260

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
	mov	rcx,  qword ptr [word ptr [rip + label_153]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_154]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_155]]
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
	.align	16
	#Procedure 0x4032cd
	.globl sub_4032cd
	.type sub_4032cd, @function
sub_4032cd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4032d0

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x4032dd
	.globl sub_4032dd
	.type sub_4032dd, @function
sub_4032dd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4032e0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	16
	#Procedure 0x4032e7
	.globl sub_4032e7
	.type sub_4032e7, @function
sub_4032e7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4032f0
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x4032fa
	.globl sub_4032fa
	.type sub_4032fa, @function
sub_4032fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403300
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_156
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_157
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_159
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_160
	mov	ecx, OFFSET FLAT:label_161
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_158
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x403374
	.globl sub_403374
	.type sub_403374, @function
sub_403374:

	nop	word ptr cs:[rax + rax]
.label_163:
	call	scan_entries
.label_164:
	mov	rdi, qword ptr [rsp + 8]
	call	free
	add	rsp, 0x18
	pop	rbx
	pop	rbp
	ret	
.label_162:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_76
	xor	eax, eax
	mov	esi, ebp
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4033c6

	.globl who
	.type who, @function
who:
	push	rbp
	push	rbx
	sub	rsp, 0x18
	mov	eax, esi
	mov	rbx, rdi
	lea	rsi, [rsp + 0x10]
	lea	rdx, [rsp + 8]
	mov	ecx, eax
	call	read_utmp
	test	eax, eax
	jne	.label_162
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 8]
	cmp	byte ptr [byte ptr [rip + short_list]],  1
	jne	.label_163
	call	list_entries_who
	jmp	.label_164
	.section	.text
	.align	16
	#Procedure 0x403400

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_165
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_165
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_165:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x403426
	.globl sub_403426
	.type sub_403426, @function
sub_403426:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403430
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_166
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_168]]
.label_166:
	xor	eax, eax
	jmp	.label_167
	.section	.text
	.align	16
	#Procedure 0x403445
	.globl sub_403445
	.type sub_403445, @function
sub_403445:

	nop	word ptr cs:[rax + rax]
.label_167:
	ret	
	.section	.text
	.align	16
	#Procedure 0x403450

	.globl print_deadprocs
	.type print_deadprocs, @function
print_deadprocs:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rdi
	call	make_id_equals_comment
	mov	r15, rax
	movsxd	r8, dword ptr [rbx + 4]
	lea	rdi, [rsp + 0xc]
	mov	esi, 1
	mov	edx, 0xc
	mov	ecx, OFFSET FLAT:label_9
	xor	eax, eax
	call	__sprintf_chk
	cmp	qword ptr [word ptr [rip + print_deadprocs.exitstr]],  0
	jne	.label_170
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_172
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	call	strlen
	mov	r12, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_169
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	call	strlen
	lea	rdi, [r12 + rax + 0xe]
	call	xmalloc
	mov	qword ptr [word ptr [rip + print_deadprocs.exitstr]],  rax
.label_170:
	mov	r12,  qword ptr [word ptr [rip + print_deadprocs.exitstr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_172
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	movsx	r14d, word ptr [rbx + 0x14c]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_169
	mov	edx, 5
	call	dcgettext
	mov	r10, rax
	movsx	ebp, word ptr [rbx + 0x14e]
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_171
	mov	eax, 0
	mov	rdi, r12
	mov	r8, r13
	mov	r9d, r14d
	push	rbp
	push	r10
	call	__sprintf_chk
	add	rsp, 0x10
	lea	rbp, [rbx + 8]
	mov	rdi, rbx
	call	time_string
	mov	edi, 0xffffffff
	mov	esi, OFFSET FLAT:label_10
	mov	edx, 0x20
	mov	ecx, 0x20
	mov	r8, rbp
	mov	r9, rax
	push	qword ptr [word ptr [rip + print_deadprocs.exitstr]]
	push	r15
	lea	rax, [rsp + 0x1c]
	push	rax
	push	OFFSET FLAT:label_10
	call	print_line
	add	rsp, 0x20
	mov	rdi, r15
	call	free
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
	#Procedure 0x40359a
	.globl sub_40359a
	.type sub_40359a, @function
sub_40359a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4035a0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	16
	#Procedure 0x4035a9
	.globl sub_4035a9
	.type sub_4035a9, @function
sub_4035a9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4035b0

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
	mov	rax,  qword ptr [word ptr [rip + label_153]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_154]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_155]]
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
	.align	16
	#Procedure 0x403618
	.globl sub_403618
	.type sub_403618, @function
sub_403618:

	nop	dword ptr [rax + rax]
.label_175:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_174:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_176
	inc	r9
	cmp	r9, 0xa
	jb	.label_173
.label_176:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x40364f
	.globl sub_40364f
	.type sub_40364f, @function
sub_40364f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403650

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_173:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_175
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_174
	.section	.text
	.align	16
	#Procedure 0x403679
	.globl sub_403679
	.type sub_403679, @function
sub_403679:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403680
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
	.align	16
	#Procedure 0x403699
	.globl sub_403699
	.type sub_403699, @function
sub_403699:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4036a0

	.globl stzncpy
	.type stzncpy, @function
stzncpy:
	test	rdx, rdx
	jle	.label_177
	add	rdx, rsi
	nop	dword ptr [rax + rax]
.label_178:
	movzx	eax, byte ptr [rsi]
	test	al, al
	je	.label_177
	inc	rsi
	mov	byte ptr [rdi], al
	inc	rdi
	cmp	rsi, rdx
	jb	.label_178
.label_177:
	mov	byte ptr [rdi], 0
	ret	
	.section	.text
	.align	16
	#Procedure 0x4036c8
	.globl sub_4036c8
	.type sub_4036c8, @function
sub_4036c8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4036d0

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
	je	.label_179
	cmp	r15, -2
	jb	.label_179
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_179
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_179:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x403726
	.globl sub_403726
	.type sub_403726, @function
sub_403726:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403730

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_180
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_180:
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
	#Procedure 0x4037b3
	.globl sub_4037b3
	.type sub_4037b3, @function
sub_4037b3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4037c0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rsi
	mov	ebx, edi
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_10
	call	setlocale
	mov	edi, OFFSET FLAT:label_197
	mov	esi, OFFSET FLAT:label_198
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_197
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	bpl, 1
	jmp	.label_181
.label_182:
	mov	byte ptr [byte ptr [rip + include_idle]],  1
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_181:
	mov	edx, OFFSET FLAT:label_185
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, ebx
	mov	rsi, r14
	call	getopt_long
	lea	ecx, [rax + 1]
	cmp	ecx, 0x81
	ja	.label_193
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_187]]
.label_435:
	mov	byte ptr [byte ptr [rip + include_mesg]],  1
	jmp	.label_181
.label_434:
	mov	byte ptr [byte ptr [rip + include_heading]],  1
	jmp	.label_181
.label_437:
	mov	byte ptr [byte ptr [rip + need_boottime]],  1
	xor	ebp, ebp
	jmp	.label_181
.label_438:
	mov	byte ptr [byte ptr [rip + need_deadprocs]],  1
	jmp	.label_200
.label_439:
	mov	byte ptr [byte ptr [rip + need_login]],  1
	jmp	.label_182
.label_440:
	mov	byte ptr [byte ptr [rip + my_line_only]],  1
	jmp	.label_181
.label_443:
	mov	byte ptr [byte ptr [rip + need_runlevel]],  1
	jmp	.label_182
.label_444:
	mov	byte ptr [byte ptr [rip + short_output]],  1
	jmp	.label_181
.label_447:
	mov	byte ptr [byte ptr [rip + do_lookup]],  1
	jmp	.label_181
.label_436:
	mov	byte ptr [byte ptr [rip + need_boottime]],  1
	mov	byte ptr [byte ptr [rip + need_deadprocs]],  1
	mov	byte ptr [byte ptr [rip + need_login]],  1
	mov	byte ptr [byte ptr [rip + need_initspawn]],  1
	mov	byte ptr [byte ptr [rip + need_runlevel]],  1
	mov	byte ptr [byte ptr [rip + need_clockchange]],  1
	mov	byte ptr [byte ptr [rip + need_users]],  1
	mov	byte ptr [byte ptr [rip + include_mesg]],  1
.label_200:
	mov	byte ptr [byte ptr [rip + include_idle]],  1
	mov	byte ptr [byte ptr [rip + include_exit]],  1
	xor	ebp, ebp
	jmp	.label_181
.label_441:
	mov	byte ptr [byte ptr [rip + need_initspawn]],  1
	xor	ebp, ebp
	jmp	.label_181
.label_442:
	mov	byte ptr [byte ptr [rip + short_list]],  1
	jmp	.label_181
.label_445:
	mov	byte ptr [byte ptr [rip + need_clockchange]],  1
	xor	ebp, ebp
	jmp	.label_181
.label_446:
	mov	byte ptr [byte ptr [rip + need_users]],  1
	jmp	.label_182
.label_433:
	test	bpl, bpl
	je	.label_188
	mov	byte ptr [byte ptr [rip + need_users]],  1
	mov	byte ptr [byte ptr [rip + short_output]],  1
.label_188:
	cmp	byte ptr [byte ptr [rip + include_exit]],  1
	jne	.label_194
	mov	byte ptr [byte ptr [rip + short_output]],  0
.label_194:
	mov	edi, 2
	call	hard_locale
	mov	ecx, OFFSET FLAT:label_201
	mov	edx, OFFSET FLAT:label_202
	test	al, al
	cmovne	rdx, rcx
	movzx	eax, al
	lea	eax, [rax*4 + 0xc]
	mov	qword ptr [word ptr [rip + time_format]],  rdx
	mov	dword ptr [dword ptr [rip + time_format_width]],  eax
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	sub	ebx, eax
	lea	ecx, [rbx + 1]
	cmp	ecx, 2
	jb	.label_203
	cmp	ebx, 1
	je	.label_183
	cmp	ebx, 2
	jne	.label_199
	mov	byte ptr [byte ptr [rip + my_line_only]],  1
.label_203:
	mov	edi, OFFSET FLAT:label_117
	mov	esi, 1
	jmp	.label_186
.label_183:
	mov	rdi, qword ptr [r14 + rax*8]
	xor	esi, esi
.label_186:
	call	who
	xor	eax, eax
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_193:
	cmp	eax, 0xffffff7d
	je	.label_195
	cmp	eax, 0xffffff7e
	jne	.label_196
	xor	edi, edi
	call	usage
.label_196:
	mov	edi, 1
	call	usage
.label_195:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:label_189
	mov	edx, OFFSET FLAT:label_160
	mov	r8d, OFFSET FLAT:label_190
	mov	r9d, OFFSET FLAT:label_191
	mov	eax, 0
	push	0
	push	OFFSET FLAT:label_192
	call	version_etc
	add	rsp, 0x10
	xor	edi, edi
	call	exit
.label_199:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_184
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, qword ptr [r14 + rax*8 + 0x10]
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
	#Procedure 0x403a5e
	.globl sub_403a5e
	.type sub_403a5e, @function
sub_403a5e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403a60

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
	je	.label_206
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_204
	jmp	.label_205
.label_206:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_205
.label_204:
	mov	eax, 1
	test	bpl, bpl
	je	.label_205
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
.label_205:
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
	#Procedure 0x403ae8
	.globl sub_403ae8
	.type sub_403ae8, @function
sub_403ae8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403af0

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
	je	.label_207
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_209
	jmp	.label_208
.label_207:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_208
.label_209:
	mov	eax, 1
	test	bpl, bpl
	je	.label_208
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
.label_208:
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
	#Procedure 0x403b69
	.globl sub_403b69
	.type sub_403b69, @function
sub_403b69:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403b70

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
	je	.label_212
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_211
	jmp	.label_210
.label_212:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_210
.label_211:
	mov	eax, 1
	test	bpl, bpl
	je	.label_210
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
.label_210:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403bd3
	.globl sub_403bd3
	.type sub_403bd3, @function
sub_403bd3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403be0

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
	je	.label_215
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_213
	jmp	.label_214
.label_215:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_214
.label_213:
	mov	eax, 1
	test	bpl, bpl
	je	.label_214
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_214:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403c3f
	.globl sub_403c3f
	.type sub_403c3f, @function
sub_403c3f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403c40

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
	je	.label_216
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_218
	jmp	.label_217
.label_216:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_217
.label_218:
	mov	eax, 1
	test	bpl, bpl
	je	.label_217
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_217:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403c89
	.globl sub_403c89
	.type sub_403c89, @function
sub_403c89:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403c90

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
	je	.label_221
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_220
	jmp	.label_219
.label_221:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_219
.label_220:
	mov	eax, 1
	test	bpl, bpl
	je	.label_219
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_219:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403cd5
	.globl sub_403cd5
	.type sub_403cd5, @function
sub_403cd5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ce0

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_223
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_224
	jmp	.label_222
.label_223:
	mov	eax, 1
	test	cl, cl
	je	.label_222
.label_224:
	xor	eax, eax
.label_222:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403d0f
	.globl sub_403d0f
	.type sub_403d0f, @function
sub_403d0f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403d10

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x403d1a
	.globl sub_403d1a
	.type sub_403d1a, @function
sub_403d1a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d20
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	16
	#Procedure 0x403d2d
	.globl sub_403d2d
	.type sub_403d2d, @function
sub_403d2d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403d30
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
	.align	16
	#Procedure 0x403d40

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_225
	test	rsi, rsi
	mov	ecx, 1
	je	.label_226
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_226
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_225:
	mov	ecx, 1
.label_226:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x403d8b
	.globl sub_403d8b
	.type sub_403d8b, @function
sub_403d8b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d90
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
	#Procedure 0x403d9f
	.globl sub_403d9f
	.type sub_403d9f, @function
sub_403d9f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403da0

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
	.align	16
	#Procedure 0x403dd7
	.globl sub_403dd7
	.type sub_403dd7, @function
sub_403dd7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403de0

	.globl read_utmp
	.type read_utmp, @function
read_utmp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	ebp, ecx
	mov	r14, rdx
	mov	r15, rsi
	mov	qword ptr [rsp], 0
	call	utmpxname
	call	setutxent
	xor	r13d, r13d
	xor	r12d, r12d
	jmp	.label_228
.label_227:
	lea	rdi, [r12 + r12*2]
	inc	r12
	shl	rdi, 7
	add	rdi, r13
	mov	edx, 0x180
	mov	rsi, rbx
	call	memcpy
	nop	dword ptr [rax + rax]
.label_228:
	call	getutxent
	mov	rbx, rax
	test	rbx, rbx
	je	.label_229
	mov	rdi, rbx
	mov	esi, ebp
	call	desirable_utmp_entry
	test	al, al
	je	.label_228
	cmp	r12, qword ptr [rsp]
	jne	.label_227
	mov	edx, 0x180
	mov	rdi, r13
	lea	rsi, [rsp]
	call	x2nrealloc
	mov	r13, rax
	jmp	.label_227
.label_229:
	call	endutxent
	mov	qword ptr [r15], r12
	mov	qword ptr [r14], r13
	xor	eax, eax
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
	#Procedure 0x403e83
	.globl sub_403e83
	.type sub_403e83, @function
sub_403e83:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e90
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
	#Procedure 0x403ec3
	.globl sub_403ec3
	.type sub_403ec3, @function
sub_403ec3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ed0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_230
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_232
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_230
.label_232:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_230
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_231
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_231:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_230:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x403f47
	.globl sub_403f47
	.type sub_403f47, @function
sub_403f47:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f50

	.globl list_entries_who
	.type list_entries_who, @function
list_entries_who:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	rbx, rsi
	mov	r15, rdi
	xor	r14d, r14d
	test	r15, r15
	je	.label_233
	mov	r12d, OFFSET FLAT:label_10
	xor	r14d, r14d
.label_236:
	dec	r15
	cmp	byte ptr [rbx + 0x2c], 0
	je	.label_237
	movzx	eax, word ptr [rbx]
	cmp	eax, 7
	jne	.label_237
	mov	rdi, rbx
	call	extract_trimmed_name
	mov	r13, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_235
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, r13
	call	__printf_chk
	mov	rdi, r13
	call	free
	inc	r14
	mov	r12d, OFFSET FLAT:label_238
.label_237:
	add	rbx, 0x180
	test	r15, r15
	jne	.label_236
.label_233:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_234
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rdx, r14
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	__printf_chk
	.section	.text
	.align	16
	#Procedure 0x403fef
	.globl sub_403fef
	.type sub_403fef, @function
sub_403fef:

	nop	
.label_241:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_239
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_239:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404024
	.globl sub_404024
	.type sub_404024, @function
sub_404024:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404026

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
	jne	.label_240
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_240
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_241
.label_240:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	16
	#Procedure 0x404060

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
	.align	16
	#Procedure 0x4040a9
	.globl sub_4040a9
	.type sub_4040a9, @function
sub_4040a9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4040b0

	.globl print_boottime
	.type print_boottime, @function
print_boottime:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_242
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi, rbx
	call	time_string
	mov	edi, 0xffffffff
	mov	esi, OFFSET FLAT:label_10
	mov	edx, 0x20
	mov	ecx, 0xffffffff
	mov	r8, r14
	mov	r9, rax
	push	OFFSET FLAT:label_10
	push	OFFSET FLAT:label_10
	push	OFFSET FLAT:label_10
	push	OFFSET FLAT:label_10
	call	print_line
	add	rsp, 0x28
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x40410e
	.globl sub_40410e
	.type sub_40410e, @function
sub_40410e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404110

	.globl scan_entries
	.type scan_entries, @function
scan_entries:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	cmp	byte ptr [byte ptr [rip + include_heading]],  1
	jne	.label_245
	call	print_heading
.label_245:
	cmp	byte ptr [byte ptr [rip + my_line_only]],  1
	jne	.label_250
	xor	edi, edi
	call	ttyname
	mov	r12, rax
	test	r12, r12
	je	.label_252
	mov	esi, OFFSET FLAT:label_253
	mov	edx, 5
	mov	rdi, r12
	call	strncmp
	lea	r15, [r12 + 5]
	test	eax, eax
	cmovne	r15, r12
.label_250:
	test	r14, r14
	je	.label_252
	movabs	r12, 0x8000000000000000
	nop	dword ptr [rax + rax]
.label_246:
	cmp	byte ptr [byte ptr [rip + my_line_only]],  1
	jne	.label_243
	lea	rsi, [rbx + 8]
	mov	edx, 0x20
	mov	rdi, r15
	call	strncmp
	test	eax, eax
	jne	.label_248
.label_243:
	cmp	byte ptr [byte ptr [rip + need_users]],  1
	jne	.label_249
	cmp	byte ptr [rbx + 0x2c], 0
	je	.label_249
	movzx	eax, word ptr [rbx]
	cmp	eax, 7
	jne	.label_249
	mov	rdi, rbx
	mov	rsi, r12
	call	print_user
	jmp	.label_248
	.section	.text
	.align	16
	#Procedure 0x4041c9
	.globl sub_4041c9
	.type sub_4041c9, @function
sub_4041c9:

	nop	dword ptr [rax]
.label_249:
	cmp	byte ptr [byte ptr [rip + need_runlevel]],  1
	jne	.label_255
	movzx	eax, word ptr [rbx]
	cmp	eax, 1
	jne	.label_255
	mov	rdi, rbx
	call	print_runlevel
	jmp	.label_248
	.section	.text
	.align	16
	#Procedure 0x4041ee
	.globl sub_4041ee
	.type sub_4041ee, @function
sub_4041ee:

	nop	
.label_255:
	cmp	byte ptr [byte ptr [rip + need_boottime]],  1
	jne	.label_256
	movzx	eax, word ptr [rbx]
	cmp	eax, 2
	jne	.label_256
	mov	rdi, rbx
	call	print_boottime
	jmp	.label_248
	.section	.text
	.align	16
	#Procedure 0x40420b
	.globl sub_40420b
	.type sub_40420b, @function
sub_40420b:

	nop	dword ptr [rax + rax]
.label_256:
	cmp	byte ptr [byte ptr [rip + need_clockchange]],  1
	jne	.label_247
	movzx	eax, word ptr [rbx]
	cmp	eax, 3
	jne	.label_247
	mov	rdi, rbx
	call	print_clockchange
	jmp	.label_248
	.section	.text
	.align	16
	#Procedure 0x40422b
	.globl sub_40422b
	.type sub_40422b, @function
sub_40422b:

	nop	dword ptr [rax + rax]
.label_247:
	cmp	byte ptr [byte ptr [rip + need_initspawn]],  1
	jne	.label_251
	movzx	eax, word ptr [rbx]
	cmp	eax, 5
	jne	.label_251
	mov	rdi, rbx
	call	print_initspawn
	jmp	.label_248
.label_251:
	cmp	byte ptr [byte ptr [rip + need_login]],  1
	jne	.label_254
	movzx	eax, word ptr [rbx]
	cmp	eax, 6
	jne	.label_254
	mov	rdi, rbx
	call	print_login
	jmp	.label_248
.label_254:
	cmp	byte ptr [byte ptr [rip + need_deadprocs]],  1
	jne	.label_248
	movzx	eax, word ptr [rbx]
	cmp	eax, 8
	jne	.label_248
	mov	rdi, rbx
	call	print_deadprocs
	nop	
.label_248:
	dec	r14
	movzx	eax, word ptr [rbx]
	cmp	eax, 2
	jne	.label_244
	movsxd	r12, dword ptr [rbx + 0x154]
.label_244:
	add	rbx, 0x180
	test	r14, r14
	jne	.label_246
.label_252:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4042ae
	.globl sub_4042ae
	.type sub_4042ae, @function
sub_4042ae:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4042b0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_257
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_76
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4042e0
	.globl c_tolower
	.type c_tolower, @function
c_tolower:

	lea	ecx, [rdi - 0x41]
	lea	eax, [rdi + 0x20]
	cmp	ecx, 0x1a
	cmovae	eax, edi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4042ed
	.globl sub_4042ed
	.type sub_4042ed, @function
sub_4042ed:

	nop	dword ptr [rax]
.label_259:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_258
	mov	edx, 5
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	dcgettext
	.section	.text
	.align	16
	#Procedure 0x404308

	.globl idle_string
	.type idle_string, @function
idle_string:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	movabs	rax, 0x8000000000000000
	cmp	qword ptr [word ptr [rip + idle_string.now]],  rax
	jne	.label_264
	mov	edi, OFFSET FLAT:idle_string.now
	call	time
.label_264:
	cmp	r14, rbx
	jge	.label_259
	mov	rax,  qword ptr [word ptr [rip + idle_string.now]]
	cmp	rax, rbx
	jl	.label_259
	lea	rcx, [rax - 0x15180]
	cmp	rcx, rbx
	jge	.label_259
	sub	eax, ebx
	mov	ebx, OFFSET FLAT:label_266
	cmp	eax, 0x3c
	jl	.label_267
	cmp	eax, 0x15180
	jge	.label_260
	mov	ecx, eax
	mov	r8d, 0x91a2b3c5
	imul	r8, rcx
	shr	r8, 0x2b
	imul	ecx, r8d, 0xe10
	sub	eax, ecx
	mov	r9d, 0x88888889
	imul	r9, rax
	shr	r9, 0x25
	mov	ebx, OFFSET FLAT:idle_string.idle_hhmm
	mov	edi, OFFSET FLAT:idle_string.idle_hhmm
	mov	esi, 1
	mov	edx, 6
	mov	ecx, OFFSET FLAT:label_265
	xor	eax, eax
	call	__sprintf_chk
.label_267:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_260:
	mov	edi, OFFSET FLAT:label_261
	mov	esi, OFFSET FLAT:label_262
	mov	edx, 0xcd
	mov	ecx, OFFSET FLAT:label_263
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x4043ca
	.globl sub_4043ca
	.type sub_4043ca, @function
sub_4043ca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4043d0

	.globl make_id_equals_comment
	.type make_id_equals_comment, @function
make_id_equals_comment:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_268
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	call	strlen
	lea	rdi, [rax + 5]
	call	xmalloc
	mov	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_268
	mov	edx, 5
	call	dcgettext
	mov	rdi, rbx
	mov	rsi, rax
	call	strcpy
	lea	rsi, [r14 + 0x28]
	mov	edx, 4
	mov	rcx, -1
	mov	rdi, rbx
	call	__strncat_chk
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x40443b
	.globl sub_40443b
	.type sub_40443b, @function
sub_40443b:

	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404440

	.globl canon_host
	.type canon_host, @function
canon_host:
	mov	esi, OFFSET FLAT:last_cherror
	jmp	canon_host_r
	.section	.text
	.align	16
	#Procedure 0x404447
	.globl sub_404447
	.type sub_404447, @function
sub_404447:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404450

	.globl canon_host_r
	.type canon_host_r, @function
canon_host_r:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	qword ptr [rsp], 0
	mov	dword ptr [dword ptr [rip + canon_host_r.hints]],  2
	lea	rcx, [rsp]
	xor	esi, esi
	mov	edx, OFFSET FLAT:canon_host_r.hints
	call	getaddrinfo
	test	eax, eax
	je	.label_271
	xor	ebx, ebx
	test	r14, r14
	je	.label_269
	mov	dword ptr [r14], eax
	xor	ebx, ebx
	jmp	.label_269
.label_271:
	mov	rax, qword ptr [rsp]
	mov	rax, qword ptr [rax + 0x20]
	test	rax, rax
	cmovne	rbx, rax
	mov	rdi, rbx
	call	__strdup
	mov	rbx, rax
	test	r14, r14
	je	.label_270
	test	rbx, rbx
	jne	.label_270
	mov	dword ptr [r14], 0xfffffff6
.label_270:
	mov	rdi, qword ptr [rsp]
	call	freeaddrinfo
.label_269:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x4044cd
	.globl sub_4044cd
	.type sub_4044cd, @function
sub_4044cd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4044d0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_272
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_275:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_275
.label_272:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_276
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_273]], OFFSET FLAT:slot0
.label_276:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_274
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_274:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x404561
	.globl sub_404561
	.type sub_404561, @function
sub_404561:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404570

	.globl is_tty_writable
	.type is_tty_writable, @function
is_tty_writable:
	mov	al, byte ptr [rdi + 0x18]
	and	al, 0x10
	shr	al, 4
	ret	
	.section	.text
	.align	16
	#Procedure 0x404579
	.globl sub_404579
	.type sub_404579, @function
sub_404579:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404580
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	lea	ecx, [rdi - 0x61]
	lea	eax, [rdi - 0x20]
	cmp	ecx, 0x1a
	cmovae	eax, edi
	ret	
	.section	.text
	.align	16
	#Procedure 0x40458d
	.globl sub_40458d
	.type sub_40458d, @function
sub_40458d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404590

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
	.align	16
	#Procedure 0x4045c9
	.globl sub_4045c9
	.type sub_4045c9, @function
sub_4045c9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4045d0
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
	.align	16
	#Procedure 0x4045e1
	.globl sub_4045e1
	.type sub_4045e1, @function
sub_4045e1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4045f0
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
	.align	16
	#Procedure 0x404604
	.globl sub_404604
	.type sub_404604, @function
sub_404604:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404610
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	16
	#Procedure 0x40461a
	.globl sub_40461a
	.type sub_40461a, @function
sub_40461a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404620

	.globl time_string
	.type time_string, @function
time_string:
	push	rbx
	sub	rsp, 0x10
	movsxd	rax, dword ptr [rdi + 0x154]
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rsp + 8]
	call	localtime
	test	rax, rax
	je	.label_277
	mov	rdx,  qword ptr [word ptr [rip + time_format]]
	mov	ebx, OFFSET FLAT:time_string.buf
	mov	edi, OFFSET FLAT:time_string.buf
	mov	esi, 0x21
	mov	rcx, rax
	call	strftime
	jmp	.label_278
.label_277:
	mov	rdi, qword ptr [rsp + 8]
	call	timetostr
	mov	rbx, rax
.label_278:
	mov	rax, rbx
	add	rsp, 0x10
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404676
	.globl sub_404676
	.type sub_404676, @function
sub_404676:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404680
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_279
.label_280:
	ret	
.label_279:
	cmp	edi, 0x7f
	je	.label_280
	xor	eax, eax
	jmp	.label_280
	.section	.text
	.align	16
	#Procedure 0x404691
	.globl sub_404691
	.type sub_404691, @function
sub_404691:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4046a0

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x4046aa
	.globl sub_4046aa
	.type sub_4046aa, @function
sub_4046aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4046b0

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
.label_355:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_315
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_363]]
.label_466:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_369
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_127
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_467:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_381
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_381
	xor	r14d, r14d
.label_391:
	cmp	r14, r11
	jae	.label_387
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_387:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_391
.label_381:
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
	jmp	.label_284
.label_459:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_284
.label_462:
	mov	al, 1
.label_460:
	mov	r12b, 1
.label_463:
	test	r12b, 1
	mov	cl, 1
	je	.label_302
	mov	ecx, eax
.label_302:
	mov	al, cl
.label_461:
	test	r12b, 1
	jne	.label_306
	test	r11, r11
	je	.label_308
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_308:
	mov	r14d, 1
	jmp	.label_314
.label_306:
	xor	r14d, r14d
.label_314:
	mov	ecx, OFFSET FLAT:label_127
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_284
.label_464:
	test	r12b, 1
	jne	.label_322
	test	r11, r11
	je	.label_375
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_375:
	mov	r14d, 1
	jmp	.label_325
.label_465:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_126
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_284
.label_322:
	xor	r14d, r14d
.label_325:
	mov	eax, OFFSET FLAT:label_126
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_284:
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
	jmp	.label_339
	.section	.text
	.align	16
	#Procedure 0x40498c
	.globl sub_40498c
	.type sub_40498c, @function
sub_40498c:

	nop	dword ptr [rax]
.label_305:
	inc	rsi
.label_339:
	cmp	rbp, -1
	je	.label_370
	cmp	rsi, rbp
	jne	.label_358
	jmp	.label_376
	.section	.text
	.align	16
	#Procedure 0x4049a3
	.globl sub_4049a3
	.type sub_4049a3, @function
sub_4049a3:

	nop	word ptr cs:[rax + rax]
.label_370:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_376
.label_358:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_383
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_385
	cmp	rbp, -1
	jne	.label_385
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
.label_385:
	cmp	rbx, rbp
	jbe	.label_283
.label_383:
	xor	r8d, r8d
.label_313:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_285
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_289]]
.label_495:
	test	rsi, rsi
	jne	.label_282
	jmp	.label_297
	.section	.text
	.align	16
	#Procedure 0x404a3e
	.globl sub_404a3e
	.type sub_404a3e, @function
sub_404a3e:

	nop	
.label_283:
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
	jne	.label_311
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_313
	jmp	.label_320
.label_311:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_313
.label_499:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_327
	test	rsi, rsi
	jne	.label_328
	cmp	rbp, 1
	je	.label_297
	xor	r13d, r13d
	jmp	.label_290
.label_488:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_334
	cmp	byte ptr [rsp + 7], 0
	jne	.label_287
	cmp	r12d, 2
	jne	.label_309
	mov	eax, r9d
	and	al, 1
	jne	.label_309
	cmp	r14, r11
	jae	.label_296
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_296:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_343
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_343:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_348
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_348:
	add	r14, 3
	mov	r9b, 1
.label_309:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_353
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_353:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_357
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_357
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_357
	cmp	r14, r11
	jae	.label_367
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_367:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_354
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_354:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_290
.label_489:
	mov	bl, 0x62
	jmp	.label_380
.label_490:
	mov	cl, 0x74
	jmp	.label_382
.label_491:
	mov	bl, 0x76
	jmp	.label_380
.label_492:
	mov	bl, 0x66
	jmp	.label_380
.label_493:
	mov	cl, 0x72
	jmp	.label_382
.label_496:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_386
	cmp	byte ptr [rsp + 7], 0
	jne	.label_287
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
	jae	.label_392
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_392:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_295
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_295:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_298
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_298:
	add	r14, 3
	xor	r9d, r9d
.label_386:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_290
.label_497:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_364
	cmp	r12d, 2
	jne	.label_282
	cmp	byte ptr [rsp + 7], 0
	je	.label_282
	jmp	.label_287
.label_498:
	cmp	r12d, 2
	jne	.label_346
	cmp	byte ptr [rsp + 7], 0
	jne	.label_287
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_281
.label_285:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_388
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
.label_299:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_338
	test	r8b, r8b
	je	.label_338
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_290
.label_327:
	test	rsi, rsi
	jne	.label_356
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_356
.label_297:
	mov	dl, 1
.label_494:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_287
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_290:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_365
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_366
	jmp	.label_361
	.section	.text
	.align	16
	#Procedure 0x404d84
	.globl sub_404d84
	.type sub_404d84, @function
sub_404d84:

	nop	word ptr cs:[rax + rax]
.label_365:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_361
.label_366:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_371
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_281
	jmp	.label_333
	.section	.text
	.align	16
	#Procedure 0x404dcd
	.globl sub_404dcd
	.type sub_404dcd, @function
sub_404dcd:

	nop	dword ptr [rax]
.label_361:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_333
	jmp	.label_281
.label_371:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_333
.label_334:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_305
	xor	r15d, r15d
	jmp	.label_282
.label_346:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_382
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_281
.label_382:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_287
.label_380:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_290
	nop	word ptr cs:[rax + rax]
.label_333:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_287
	cmp	r12d, 2
	jne	.label_303
	mov	eax, r9d
	and	al, 1
	jne	.label_303
	cmp	r14, r11
	jae	.label_307
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_307:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_319
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_319:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_317
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_317:
	add	r14, 3
	mov	r9b, 1
.label_303:
	cmp	r14, r11
	jae	.label_321
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_321:
	inc	r14
	jmp	.label_323
.label_388:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_326
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_326:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_374:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_342
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_345
	cmp	rbp, -2
	je	.label_349
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_351
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_347:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_378
	bt	rsi, rdx
	jb	.label_320
.label_378:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_347
.label_351:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_373
	xor	r13d, r13d
.label_373:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_374
	jmp	.label_299
.label_357:
	xor	r13d, r13d
	jmp	.label_290
.label_356:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_290
.label_364:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_282
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_282
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_282
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_310
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_294
	cmp	byte ptr [rsp + 7], 0
	jne	.label_287
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_292
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_292:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_393
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_393:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_312
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_312:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_316
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_316:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_290
.label_282:
	xor	eax, eax
.label_328:
	xor	r13d, r13d
	jmp	.label_290
.label_338:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_324
	.section	.text
	.align	16
	#Procedure 0x4050b3
	.globl sub_4050b3
	.type sub_4050b3, @function
sub_4050b3:

	nop	word ptr cs:[rax + rax]
.label_389:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_324:
	test	r8b, r8b
	je	.label_329
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_330
	cmp	r14, r11
	jae	.label_331
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_331:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_330
	.section	.text
	.align	16
	#Procedure 0x4050fc
	.globl sub_4050fc
	.type sub_4050fc, @function
sub_4050fc:

	nop	dword ptr [rax]
.label_329:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_320
	cmp	r12d, 2
	jne	.label_341
	mov	eax, r9d
	and	al, 1
	jne	.label_341
	cmp	r14, r11
	jae	.label_344
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_344:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_335
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_335:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_352
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_352:
	add	r14, 3
	mov	r9b, 1
.label_341:
	cmp	r14, r11
	jae	.label_390
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_390:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_301
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_301:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_368
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_368:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_330:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_281
	test	r9b, 1
	je	.label_293
	mov	ebx, eax
	and	bl, 1
	jne	.label_293
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_384
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_384:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_336
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_336:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_293:
	cmp	r14, r11
	jae	.label_389
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_389
	.section	.text
	.align	16
	#Procedure 0x405203
	.globl sub_405203
	.type sub_405203, @function
sub_405203:

	nop	word ptr cs:[rax + rax]
.label_281:
	test	r9b, 1
	je	.label_286
	and	al, 1
	jne	.label_286
	cmp	r14, r11
	jae	.label_288
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_288:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_337
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_337:
	add	r14, 2
	xor	r9d, r9d
.label_286:
	mov	ebx, r15d
.label_323:
	cmp	r14, r11
	jae	.label_300
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_300:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_305
.label_345:
	xor	r13d, r13d
.label_342:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_299
.label_349:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_318
	mov	rsi, qword ptr [rsp + 0x50]
.label_379:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_360
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_379
	xor	r13d, r13d
	jmp	.label_299
.label_318:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_299
.label_360:
	xor	r13d, r13d
	jmp	.label_299
.label_310:
	xor	r13d, r13d
	jmp	.label_290
.label_294:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_290
	.section	.text
	.align	16
	#Procedure 0x4052d8
	.globl sub_4052d8
	.type sub_4052d8, @function
sub_4052d8:

	nop	dword ptr [rax + rax]
.label_376:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_332
	or	dl, al
	je	.label_320
.label_332:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_340
	or	dl, al
	jne	.label_340
	test	r10b, 1
	jne	.label_350
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_340
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_355
.label_340:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_359
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_362
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_362
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_372:
	cmp	r14, r11
	jae	.label_377
	mov	byte ptr [rcx + r14], al
.label_377:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_372
	jmp	.label_362
.label_287:
	mov	qword ptr [rsp + 0x20], rbp
.label_320:
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
.label_304:
	mov	r14, rax
.label_291:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_350:
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
	jmp	.label_304
.label_359:
	mov	rcx, qword ptr [rsp + 8]
.label_362:
	cmp	r14, r11
	jae	.label_291
	mov	byte ptr [rcx + r14], 0
	jmp	.label_291
.label_315:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40546c
	.globl sub_40546c
	.type sub_40546c, @function
sub_40546c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405470

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_399
	nop	
.label_398:
	mov	edi, OFFSET FLAT:label_189
	call	strcmp
	test	eax, eax
	je	.label_396
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_398
.label_396:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_189
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_400
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_160
	mov	ecx, OFFSET FLAT:label_161
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_394
	mov	esi, OFFSET FLAT:label_395
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_394
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_403
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_394:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_401
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_189
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_161
	mov	ecx, OFFSET FLAT:label_189
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_397
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_402
	mov	ecx, OFFSET FLAT:label_10
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
	.align	16
	#Procedure 0x40558a
	.globl sub_40558a
	.type sub_40558a, @function
sub_40558a:

	nop	word ptr [rax + rax]
.label_404:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405595
	.globl sub_405595
	.type sub_405595, @function
sub_405595:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40559c

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_408
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_405
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_407
.label_408:
	test	rcx, rcx
	jne	.label_406
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_406:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_404
.label_407:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_405:
	call	xalloc_die
.label_410:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_409
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x40561b
	.globl sub_40561b
	.type sub_40561b, @function
sub_40561b:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405625
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_410
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_410
.label_409:
	ret	
	.section	.text
	.align	16
	#Procedure 0x405640
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
	#Procedure 0x405653
	.globl sub_405653
	.type sub_405653, @function
sub_405653:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405660

	.globl print_login
	.type print_login, @function
print_login:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	rbx, rdi
	call	make_id_equals_comment
	mov	r15, rax
	movsxd	r8, dword ptr [rbx + 4]
	lea	r14, [rsp + 4]
	mov	esi, 1
	mov	edx, 0xc
	mov	ecx, OFFSET FLAT:label_9
	xor	eax, eax
	mov	rdi, r14
	call	__sprintf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_411
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	lea	r13, [rbx + 8]
	mov	rdi, rbx
	call	time_string
	mov	edi, 0xffffffff
	mov	edx, 0x20
	mov	ecx, 0x20
	mov	rsi, r12
	mov	r8, r13
	mov	r9, rax
	push	OFFSET FLAT:label_10
	push	r15
	push	r14
	push	OFFSET FLAT:label_10
	call	print_line
	add	rsp, 0x20
	mov	rdi, r15
	call	free
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4056ff
	.globl sub_4056ff
	.type sub_4056ff, @function
sub_4056ff:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405700
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
	#Procedure 0x40570f
	.globl sub_40570f
	.type sub_40570f, @function
sub_40570f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405710
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
	.align	16
	#Procedure 0x405726
	.globl sub_405726
	.type sub_405726, @function
sub_405726:

	nop	word ptr cs:[rax + rax]
.label_412:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x405733
	.globl sub_405733
	.type sub_405733, @function
sub_405733:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40573b
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_412
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	16
	#Procedure 0x405750

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40575a
	.globl sub_40575a
	.type sub_40575a, @function
sub_40575a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405760
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
	.align	16
	#Procedure 0x405770

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	16
	#Procedure 0x405779
	.globl sub_405779
	.type sub_405779, @function
sub_405779:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405780

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	16
	#Procedure 0x40578a
	.globl sub_40578a
	.type sub_40578a, @function
sub_40578a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405790
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40579a
	.globl sub_40579a
	.type sub_40579a, @function
sub_40579a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4057a0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4057a8
	.globl sub_4057a8
	.type sub_4057a8, @function
sub_4057a8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4057b0

	.globl c_isprint
	.type c_isprint, @function
c_isprint:
	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x4057ba
	.globl sub_4057ba
	.type sub_4057ba, @function
sub_4057ba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4057c0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	16
	#Procedure 0x4057c5
	.globl sub_4057c5
	.type sub_4057c5, @function
sub_4057c5:

	nop	word ptr cs:[rax + rax]
.label_414:
	mov	al, 1
.label_417:
	pop	rcx
	ret	
.label_415:
	test	sil, 1
	je	.label_414
	xor	al, 1
	jne	.label_414
	mov	edi, dword ptr [rdi + 4]
	test	edi, edi
	jle	.label_414
	xor	esi, esi
	call	kill
	test	eax, eax
	jns	.label_414
	call	__errno_location
	cmp	dword ptr [rax], 3
	jne	.label_414
	xor	eax, eax
	jmp	.label_417
	.section	.text
	.align	16
	#Procedure 0x4057fe

	.globl desirable_utmp_entry
	.type desirable_utmp_entry, @function
desirable_utmp_entry:
	cmp	byte ptr [rdi + 0x2c], 0
	je	.label_416
	movzx	eax, word ptr [rdi]
	cmp	eax, 7
	sete	al
	jmp	.label_413
.label_416:
	xor	eax, eax
.label_413:
	push	rax
	test	sil, 2
	je	.label_415
	test	al, al
	jne	.label_415
	xor	eax, eax
	jmp	.label_417
	.section	.text
	.align	16
	#Procedure 0x405885
	.globl sub_405885
	.type sub_405885, @function
sub_405885:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405892
	.globl sub_405892
	.type sub_405892, @function
sub_405892:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4058b6
	.globl sub_4058b6
	.type sub_4058b6, @function
sub_4058b6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4058c9
	.globl sub_4058c9
	.type sub_4058c9, @function
sub_4058c9:

	nop	dword ptr [rax]
