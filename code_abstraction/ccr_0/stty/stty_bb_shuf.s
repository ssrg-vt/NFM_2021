	.section	.text
	.align	16
	#Procedure 0x401859
	.globl sub_401859
	.type sub_401859, @function
sub_401859:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x40185a
	.globl sub_40185a
	.type sub_40185a, @function
sub_40185a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401892
	.globl sub_401892
	.type sub_401892, @function
sub_401892:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4018da
	.globl sub_4018da
	.type sub_4018da, @function
sub_4018da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4018fc
	.globl sub_4018fc
	.type sub_4018fc, @function
sub_4018fc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40190d
	.globl sub_40190d
	.type sub_40190d, @function
sub_40190d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401926
	.globl sub_401926
	.type sub_401926, @function
sub_401926:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401930

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_13
	movabs	rdi, OFFSET FLAT:label_10
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x1c], eax
	call	abort
.label_9:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_16:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cmp	rax, 7
	jl	.label_12
	movabs	rsi, OFFSET FLAT:label_11
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, -7
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_12
	movabs	rsi, OFFSET FLAT:label_14
	mov	eax, 3
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_15
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname]],  rax
.label_15:
	jmp	.label_12
.label_12:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401a1b
	.globl sub_401a1b
	.type sub_401a1b, @function
sub_401a1b:

	nop	dword ptr [rax]
.label_13:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	call	strrchr
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_9
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_16
	.section	.text
	.align	16
	#Procedure 0x401a50

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_17
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401a80

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
	#Procedure 0x401ab3
	.globl sub_401ab3
	.type sub_401ab3, @function
sub_401ab3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ac0

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
	jne	.label_19
	movabs	rax, OFFSET FLAT:label_18
	mov	qword ptr [rbp - 8], rax
.label_19:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_20
	movabs	rax, OFFSET FLAT:label_21
	mov	qword ptr [rbp - 8], rax
.label_20:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401b17
	.globl sub_401b17
	.type sub_401b17, @function
sub_401b17:

	nop	word ptr [rax + rax]
.label_22:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401b2a
	.globl sub_401b2a
	.type sub_401b2a, @function
sub_401b2a:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401b2c

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
	jne	.label_22
	cmp	qword ptr [rbp - 8], 0
	je	.label_22
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401b60

	.globl strtoul_cc_t
	.type strtoul_cc_t, @function
strtoul_cc_t:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	al, r8b
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	byte ptr [rbp - 0x29], al
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rbp - 0x14]
	call	strtoul
	mov	qword ptr [rbp - 0x38], rax
	call	__errno_location
	cmp	dword ptr [rax], 0
	jne	.label_23
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	movsx	edx, byte ptr [rbp - 0x29]
	cmp	ecx, edx
	jne	.label_23
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	je	.label_23
	mov	rax, qword ptr [rbp - 0x38]
	mov	cl, al
	movzx	edx, cl
	mov	eax, edx
	cmp	rax, qword ptr [rbp - 0x38]
	je	.label_25
.label_23:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_24
.label_25:
	mov	rax, qword ptr [rbp - 0x38]
	mov	cl, al
	mov	rax, qword ptr [rbp - 0x28]
	mov	byte ptr [rax], cl
	mov	dword ptr [rbp - 4], 0
.label_24:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401c0e
	.globl sub_401c0e
	.type sub_401c0e, @function
sub_401c0e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401c10

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
	#Procedure 0x401c82
	.globl sub_401c82
	.type sub_401c82, @function
sub_401c82:

	nop	word ptr cs:[rax + rax]
.label_34:
	movabs	rax, OFFSET FLAT:label_26
	movabs	rcx, OFFSET FLAT:label_27
	mov	dl, byte ptr [rbp - 1]
	test	dl, 1
	cmovne	rax, rcx
	movzx	esi, word ptr [rbp - 0x18]
	movzx	edx, word ptr [rbp - 0x16]
	mov	rdi, rax
	mov	al, 0
	call	wrapf
	test	byte ptr [rbp - 1], 1
	jne	.label_28
	mov	dword ptr [dword ptr [current_col]],  0
.label_28:
	jmp	.label_29
.label_29:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401ce0
	.globl sub_401ce0
	.type sub_401ce0, @function
sub_401ce0:

	nop	word ptr cs:[rax + rax]
.label_48:
	jmp	.label_29
	.section	.text
	.align	16
	#Procedure 0x401cef

	.globl display_window_size
	.type display_window_size, @function
display_window_size:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	al, dil
	xor	edi, edi
	lea	rcx, [rbp - 0x18]
	and	al, 1
	mov	byte ptr [rbp - 1], al
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, rcx
	call	get_win_size
	cmp	eax, 0
	je	.label_34
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_38
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x1c], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_43
	mov	esi, dword ptr [rbp - 0x1c]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_38:
	test	byte ptr [rbp - 1], 1
	jne	.label_48
	movabs	rdi, OFFSET FLAT:label_51
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
	call	quotearg_n_style_colon
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_63:
	mov	eax, dword ptr [rbp - 8]
	test	eax, eax
	mov	dword ptr [rbp - 0x1dc], eax
	je	.label_32
	jmp	.label_40
.label_40:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 1
	mov	dword ptr [rbp - 0x1e0], eax
	je	.label_33
	jmp	.label_44
.label_44:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 2
	mov	dword ptr [rbp - 0x1e4], eax
	je	.label_32
	jmp	.label_49
.label_49:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 3
	mov	dword ptr [rbp - 0x1e8], eax
	je	.label_33
	jmp	.label_56
.label_56:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 4
	mov	dword ptr [rbp - 0x1ec], eax
	je	.label_32
	jmp	.label_35
.label_35:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 8
	mov	dword ptr [rbp - 0x1f0], eax
	je	.label_32
	jmp	.label_41
.label_41:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 9
	mov	dword ptr [rbp - 0x1f4], eax
	je	.label_33
	jmp	.label_45
.label_45:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x1f8], eax
	je	.label_32
	jmp	.label_52
.label_52:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xb
	mov	dword ptr [rbp - 0x1fc], eax
	je	.label_33
	jmp	.label_31
.label_31:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x400
	mov	dword ptr [rbp - 0x200], eax
	je	.label_32
	jmp	.label_37
.label_37:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x401
	mov	dword ptr [rbp - 0x204], eax
	je	.label_33
	jmp	.label_42
.label_42:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x402
	mov	dword ptr [rbp - 0x208], eax
	je	.label_32
	jmp	.label_47
.label_47:
	mov	eax, dword ptr [rbp - 0x1dc]
	add	eax, 0xfffffbfa
	sub	eax, 2
	mov	dword ptr [rbp - 0x20c], eax
	jb	.label_32
	jmp	.label_53
.label_53:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x408
	mov	dword ptr [rbp - 0x210], eax
	jne	.label_54
	jmp	.label_33
.label_33:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_46
.label_60:
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1d8], rdx
.label_61:
	mov	rax, qword ptr [rbp - 0x1d8]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x2c], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x2c]
	call	rpl_fcntl_DUPFD_CLOEXEC
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_50
.label_59:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1c8], rax
	mov	dword ptr [rbp - 0x1cc], ecx
	ja	.label_60
	mov	eax, dword ptr [rbp - 0x1cc]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1c8]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1d8], rcx
	jmp	.label_61
.label_30:
	mov	rax, qword ptr [rbp - 0x230]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x240], rdx
.label_39:
	mov	rax, qword ptr [rbp - 0x240]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
.label_46:
	jmp	.label_50
.label_50:
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x240
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401ff8
	.globl sub_401ff8
	.type sub_401ff8, @function
sub_401ff8:

	nop	dword ptr [rax + rax]
.label_54:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x230], rax
	mov	dword ptr [rbp - 0x234], ecx
	ja	.label_30
	mov	eax, dword ptr [rbp - 0x234]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x230]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x240], rcx
	jmp	.label_39
.label_57:
	mov	rax, qword ptr [rbp - 0x1b0]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1c0], rdx
.label_64:
	mov	rax, qword ptr [rbp - 0x1c0]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x28], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x28]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_50
.label_32:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x218], rax
	mov	dword ptr [rbp - 0x21c], ecx
	ja	.label_55
	mov	eax, dword ptr [rbp - 0x21c]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x218]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x228], rcx
	jmp	.label_36
.label_62:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1b0], rax
	mov	dword ptr [rbp - 0x1b4], ecx
	ja	.label_57
	mov	eax, dword ptr [rbp - 0x1b4]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1b0]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1c0], rcx
	jmp	.label_64
	.section	.text
	.align	16
	#Procedure 0x402102

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x240
	test	al, al
	movaps	xmmword ptr [rbp - 0x100], xmm7
	movaps	xmmword ptr [rbp - 0x110], xmm6
	movaps	xmmword ptr [rbp - 0x120], xmm5
	movaps	xmmword ptr [rbp - 0x130], xmm4
	movaps	xmmword ptr [rbp - 0x140], xmm3
	movaps	xmmword ptr [rbp - 0x150], xmm2
	movaps	xmmword ptr [rbp - 0x160], xmm1
	movaps	xmmword ptr [rbp - 0x170], xmm0
	mov	dword ptr [rbp - 0x174], edi
	mov	qword ptr [rbp - 0x180], r9
	mov	qword ptr [rbp - 0x188], r8
	mov	qword ptr [rbp - 0x190], rcx
	mov	qword ptr [rbp - 0x198], rdx
	mov	dword ptr [rbp - 0x19c], esi
	je	.label_58
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
.label_58:
	mov	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rcx, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0xd0], rcx
	mov	rdx, qword ptr [rbp - 0x190]
	mov	qword ptr [rbp - 0xd8], rdx
	mov	rsi, qword ptr [rbp - 0x198]
	mov	qword ptr [rbp - 0xe0], rsi
	mov	edi, dword ptr [rbp - 0x19c]
	mov	r8d, dword ptr [rbp - 0x174]
	mov	dword ptr [rbp - 4], r8d
	mov	dword ptr [rbp - 8], edi
	mov	dword ptr [rbp - 0x24], 0xffffffff
	lea	r9, [rbp - 0xf0]
	mov	qword ptr [rbp - 0x10], r9
	lea	r9, [rbp + 0x10]
	mov	qword ptr [rbp - 0x18], r9
	mov	dword ptr [rbp - 0x1c], 0x30
	mov	dword ptr [rbp - 0x20], 0x10
	mov	edi, dword ptr [rbp - 8]
	test	edi, edi
	mov	dword ptr [rbp - 0x1a0], edi
	je	.label_62
	jmp	.label_65
.label_65:
	mov	eax, dword ptr [rbp - 0x1a0]
	sub	eax, 0x406
	mov	dword ptr [rbp - 0x1a4], eax
	je	.label_59
	jmp	.label_63
.label_55:
	mov	rax, qword ptr [rbp - 0x218]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x228], rdx
.label_36:
	mov	rax, qword ptr [rbp - 0x228]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x30], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 0x30]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_46
	.section	.text
	.align	16
	#Procedure 0x4022c0

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
	#Procedure 0x4022f7
	.globl sub_4022f7
	.type sub_4022f7, @function
sub_4022f7:

	nop	word ptr [rax + rax]
.label_66:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402317
	.globl sub_402317
	.type sub_402317, @function
sub_402317:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40231f
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
	jae	.label_66
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402350

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
	jne	.label_67
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_67:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	mbrtowc
	mov	rcx, -2
	mov	qword ptr [rbp - 0x30], rax
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_68
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_68
	xor	edi, edi
	call	hard_locale
	test	al, 1
	jne	.label_68
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], edx
	mov	qword ptr [rbp - 8], 1
	jmp	.label_69
.label_68:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_69:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4023f1
	.globl sub_4023f1
	.type sub_4023f1, @function
sub_4023f1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402400
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_70
	call	gettext
	movabs	rsi, OFFSET FLAT:label_72
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_71
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_74
	movabs	rdx, OFFSET FLAT:label_75
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_73
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
	#Procedure 0x402486
	.globl sub_402486
	.type sub_402486, @function
sub_402486:

	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402490
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
	#Procedure 0x4024c1
	.globl sub_4024c1
	.type sub_4024c1, @function
sub_4024c1:

	nop	word ptr cs:[rax + rax]
.label_111:
	movzx	eax, byte ptr [rbp - 0x59]
	cmp	eax, 0x2d
	jne	.label_103
	mov	dword ptr [rbp - 4], 4
	jmp	.label_77
.label_108:
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_106
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	je	.label_109
	mov	dword ptr [rbp - 4], 4
	jmp	.label_77
.label_1066:
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_83
.label_103:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x1c]
	call	strtoumax
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_108
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_88
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_88
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	je	.label_88
	mov	qword ptr [rbp - 0x48], 1
	jmp	.label_95
.label_1070:
	lea	rdi, [rbp - 0x48]
	mov	edx, 4
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_83
.label_1075:
	lea	rdi, [rbp - 0x48]
	mov	esi, 2
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_83
.label_88:
	mov	dword ptr [rbp - 4], 4
	jmp	.label_77
	.section	.text
	.align	16
	#Procedure 0x4025d2

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xd0
	xor	eax, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	dword ptr [rbp - 0x4c], 0
	cmp	eax, dword ptr [rbp - 0x1c]
	jg	.label_114
	cmp	dword ptr [rbp - 0x1c], 0x24
	jg	.label_114
	jmp	.label_113
.label_98:
	mov	dword ptr [rbp - 0x60], 0x3e8
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 1
	mov	dword ptr [rbp - 0x64], eax
.label_79:
	jmp	.label_80
.label_80:
	jmp	.label_81
.label_81:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	mov	eax, ecx
	sub	ecx, 0x35
	mov	qword ptr [rbp - 0xc0], rax
	mov	dword ptr [rbp - 0xc4], ecx
	ja	.label_82
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_89]]
	jmp	rcx
.label_83:
	mov	eax, dword ptr [rbp - 0x68]
	or	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x4c], eax
	mov	eax, dword ptr [rbp - 0x64]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rcx]
	movsxd	rsi, eax
	add	rdx, rsi
	mov	qword ptr [rcx], rdx
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx]
	cmp	byte ptr [rcx], 0
	je	.label_91
	mov	eax, dword ptr [rbp - 0x4c]
	or	eax, 2
	mov	dword ptr [rbp - 0x4c], eax
.label_91:
	jmp	.label_94
.label_94:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
.label_77:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4026b8
	.globl sub_4026b8
	.type sub_4026b8, @function
sub_4026b8:

	nop	dword ptr [rax + rax]
.label_1072:
	lea	rdi, [rbp - 0x48]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_83
.label_1074:
	mov	dword ptr [rbp - 0x68], 0
	jmp	.label_83
.label_118:
	lea	rax, [rbp - 0x38]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_110
.label_110:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x40], rax
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x59], cl
.label_112:
	movzx	eax, byte ptr [rbp - 0x59]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x78], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x2000
	cmp	edx, 0
	je	.label_111
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x59], dl
	jmp	.label_112
.label_1067:
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_83
.label_1073:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x200
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_83
.label_87:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_94
	mov	dword ptr [rbp - 0x60], 0x400
	mov	dword ptr [rbp - 0x64], 1
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	jne	.label_100
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_77
.label_113:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_118
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_110
.label_95:
	jmp	.label_85
.label_114:
	movabs	rdi, OFFSET FLAT:label_115
	movabs	rsi, OFFSET FLAT:label_116
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:label_117
	call	__assert_fail
.label_1064:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x400
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_83
.label_82:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_77
.label_1069:
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_83
.label_1068:
	lea	rdi, [rbp - 0x48]
	mov	edx, 2
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_83
.label_100:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x7c], ecx
	mov	dword ptr [rbp - 0x80], edx
	je	.label_78
	jmp	.label_96
.label_96:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x84], eax
	je	.label_78
	jmp	.label_99
.label_99:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x88], eax
	je	.label_78
	jmp	.label_102
.label_102:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_78
	jmp	.label_105
.label_105:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x90], eax
	je	.label_78
	jmp	.label_107
.label_107:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x94], eax
	je	.label_78
	jmp	.label_92
.label_92:
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, -0x59
	sub	eax, 2
	mov	dword ptr [rbp - 0x98], eax
	jb	.label_78
	jmp	.label_76
.label_76:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_78
	jmp	.label_86
.label_86:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_78
	jmp	.label_90
.label_90:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_78
	jmp	.label_93
.label_93:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xa8], eax
	jne	.label_81
	jmp	.label_78
.label_78:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x30]
	call	strchr
	cmp	rax, 0
	je	.label_80
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	edx, ecx
	sub	edx, 0x42
	mov	dword ptr [rbp - 0xac], ecx
	mov	dword ptr [rbp - 0xb0], edx
	je	.label_98
	jmp	.label_101
.label_101:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_98
	jmp	.label_104
.label_104:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xb8], eax
	jne	.label_79
	jmp	.label_97
.label_97:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x42
	jne	.label_84
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 2
	mov	dword ptr [rbp - 0x64], eax
.label_84:
	jmp	.label_79
.label_1071:
	lea	rdi, [rbp - 0x48]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_83
.label_109:
	mov	dword ptr [rbp - 0x4c], 1
.label_106:
	jmp	.label_85
.label_85:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_87
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
	jmp	.label_77
.label_1065:
	lea	rdi, [rbp - 0x48]
	mov	edx, 6
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_83
.label_120:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_121:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402a9e
	.globl sub_402a9e
	.type sub_402a9e, @function
sub_402a9e:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402aa6

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_119
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_120
.label_119:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	jmp	.label_121
	.section	.text
	.align	16
	#Procedure 0x402ae0
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_122
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_122:
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
	#Procedure 0x402b1d
	.globl sub_402b1d
	.type sub_402b1d, @function
sub_402b1d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402b20

	.globl strtoul_tcflag_t
	.type strtoul_tcflag_t, @function
strtoul_tcflag_t:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	al, r8b
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	byte ptr [rbp - 0x29], al
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rbp - 0x14]
	call	strtoul
	mov	qword ptr [rbp - 0x38], rax
	call	__errno_location
	cmp	dword ptr [rax], 0
	jne	.label_123
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	movsx	edx, byte ptr [rbp - 0x29]
	cmp	ecx, edx
	jne	.label_123
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	je	.label_123
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, eax
	mov	ecx, ecx
	mov	eax, ecx
	cmp	rax, qword ptr [rbp - 0x38]
	je	.label_125
.label_123:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_124
.label_125:
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x28]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 4], 0
.label_124:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402bcd
	.globl sub_402bcd
	.type sub_402bcd, @function
sub_402bcd:

	nop	dword ptr [rax]
.label_126:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_127:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402be2
	.globl sub_402be2
	.type sub_402be2, @function
sub_402be2:

	nop	word ptr [rax + rax]
.label_128:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_126
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_126
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402c14

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_128
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_128
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_127
	.section	.text
	.align	16
	#Procedure 0x402c50
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_129
	jmp	.label_131
.label_131:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_130
.label_129:
	mov	byte ptr [rbp - 1], 0
.label_130:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402c82
	.globl sub_402c82
	.type sub_402c82, @function
sub_402c82:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c90

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
	#Procedure 0x402cc8
	.globl sub_402cc8
	.type sub_402cc8, @function
sub_402cc8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402cd0
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_132
	jmp	.label_134
.label_134:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_133
.label_132:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_133:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402d07
	.globl sub_402d07
	.type sub_402d07, @function
sub_402d07:

	nop	word ptr [rax + rax]
.label_144:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax], 0x5e
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax], 0x3f
.label_147:
	jmp	.label_136
.label_143:
	movzx	eax, byte ptr [rbp - 9]
	cmp	eax, 0x20
	jl	.label_145
	movzx	eax, byte ptr [rbp - 9]
	cmp	eax, 0x7f
	jge	.label_140
	mov	al, byte ptr [rbp - 9]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rcx], al
	jmp	.label_137
	.section	.text
	.align	16
	#Procedure 0x402d6c

	.globl visible
	.type visible, @function
visible:
	push	rbp
	mov	rbp, rsp
	mov	al, dil
	movabs	rcx, OFFSET FLAT:visible.buf
	mov	byte ptr [rbp - 9], al
	mov	qword ptr [rbp - 0x18], rcx
	movzx	edi, byte ptr [rbp - 9]
	cmp	edi, 0
	jne	.label_143
	movabs	rax, OFFSET FLAT:label_141
	mov	qword ptr [rbp - 8], rax
	jmp	.label_142
.label_140:
	movzx	eax, byte ptr [rbp - 9]
	cmp	eax, 0x7f
	jne	.label_139
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax], 0x5e
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax], 0x3f
	jmp	.label_135
.label_139:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax], 0x4d
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax], 0x2d
	movzx	edx, byte ptr [rbp - 9]
	cmp	edx, 0xa0
	jl	.label_146
	movzx	eax, byte ptr [rbp - 9]
	cmp	eax, 0xff
	jge	.label_144
	movzx	eax, byte ptr [rbp - 9]
	sub	eax, 0x80
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rbp - 0x18], rsi
	mov	byte ptr [rdx], cl
	jmp	.label_147
.label_146:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax], 0x5e
	movzx	edx, byte ptr [rbp - 9]
	sub	edx, 0x80
	add	edx, 0x40
	mov	sil, dl
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax], sil
.label_136:
	jmp	.label_135
.label_135:
	jmp	.label_137
.label_137:
	jmp	.label_138
.label_145:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax], 0x5e
	movzx	edx, byte ptr [rbp - 9]
	add	edx, 0x40
	mov	sil, dl
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax], sil
.label_138:
	movabs	rax, OFFSET FLAT:visible.buf
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx], 0
	mov	qword ptr [rbp - 8], rax
.label_142:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402eca
	.globl sub_402eca
	.type sub_402eca, @function
sub_402eca:

	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402ed0

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
	jne	.label_148
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_148
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_148
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_150
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_149
.label_150:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x90], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_149
.label_148:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fseeko
	mov	dword ptr [rbp - 4], eax
.label_149:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402f92
	.globl sub_402f92
	.type sub_402f92, @function
sub_402f92:

	nop	word ptr cs:[rax + rax]
.label_1178:
	lea	rdi, [rbp - 0x48]
	mov	edx, 2
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_151
.label_172:
	lea	rax, [rbp - 0x38]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_173
.label_173:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x40], rax
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x1c]
	call	strtol
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_185
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_155
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_155
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	je	.label_155
	mov	qword ptr [rbp - 0x48], 1
	jmp	.label_165
.label_1175:
	lea	rdi, [rbp - 0x48]
	mov	edx, 6
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_151
.label_185:
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_170
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	je	.label_171
	mov	dword ptr [rbp - 4], 4
	jmp	.label_168
.label_1181:
	lea	rdi, [rbp - 0x48]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_151
.label_177:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x64], ecx
	mov	dword ptr [rbp - 0x68], edx
	je	.label_158
	jmp	.label_169
.label_169:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x6c], eax
	je	.label_158
	jmp	.label_180
.label_180:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x70], eax
	je	.label_158
	jmp	.label_184
.label_184:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x74], eax
	je	.label_158
	jmp	.label_187
.label_187:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x78], eax
	je	.label_158
	jmp	.label_157
.label_157:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x7c], eax
	je	.label_158
	jmp	.label_189
.label_189:
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, -0x59
	sub	eax, 2
	mov	dword ptr [rbp - 0x80], eax
	jb	.label_158
	jmp	.label_164
.label_164:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x84], eax
	je	.label_158
	jmp	.label_166
.label_166:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0x88], eax
	je	.label_158
	jmp	.label_167
.label_167:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_158
	jmp	.label_188
.label_188:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x90], eax
	jne	.label_174
	jmp	.label_158
.label_158:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x30]
	call	strchr
	cmp	rax, 0
	je	.label_175
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	edx, ecx
	sub	edx, 0x42
	mov	dword ptr [rbp - 0x94], ecx
	mov	dword ptr [rbp - 0x98], edx
	je	.label_178
	jmp	.label_181
.label_181:
	mov	eax, dword ptr [rbp - 0x94]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_178
	jmp	.label_186
.label_186:
	mov	eax, dword ptr [rbp - 0x94]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xa0], eax
	jne	.label_161
	jmp	.label_154
.label_154:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x42
	jne	.label_156
	mov	eax, dword ptr [rbp - 0x54]
	add	eax, 2
	mov	dword ptr [rbp - 0x54], eax
.label_156:
	jmp	.label_161
.label_1176:
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_151
.label_1174:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x400
	call	bkm_scale_0
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_151
.label_1177:
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_151
.label_160:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_172
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_173
.label_1185:
	lea	rdi, [rbp - 0x48]
	mov	esi, 2
	call	bkm_scale_0
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_151
.label_1179:
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_151
.label_1184:
	mov	dword ptr [rbp - 0x58], 0
	jmp	.label_151
.label_1180:
	lea	rdi, [rbp - 0x48]
	mov	edx, 4
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_151
.label_165:
	jmp	.label_162
	.section	.text
	.align	16
	#Procedure 0x4032e5

	.globl xstrtol
	.type xstrtol, @function
xstrtol:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
	xor	eax, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	dword ptr [rbp - 0x4c], 0
	cmp	eax, dword ptr [rbp - 0x1c]
	jg	.label_159
	cmp	dword ptr [rbp - 0x1c], 0x24
	jg	.label_159
	jmp	.label_160
.label_171:
	mov	dword ptr [rbp - 0x4c], 1
.label_170:
	jmp	.label_162
.label_162:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_163
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
	jmp	.label_168
.label_1182:
	lea	rdi, [rbp - 0x48]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_151
.label_155:
	mov	dword ptr [rbp - 4], 4
	jmp	.label_168
.label_178:
	mov	dword ptr [rbp - 0x50], 0x3e8
	mov	eax, dword ptr [rbp - 0x54]
	add	eax, 1
	mov	dword ptr [rbp - 0x54], eax
.label_161:
	jmp	.label_175
.label_175:
	jmp	.label_174
.label_174:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	mov	eax, ecx
	sub	ecx, 0x35
	mov	qword ptr [rbp - 0xa8], rax
	mov	dword ptr [rbp - 0xac], ecx
	ja	.label_176
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_179]]
	jmp	rcx
.label_159:
	movabs	rdi, OFFSET FLAT:label_115
	movabs	rsi, OFFSET FLAT:label_182
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:label_183
	call	__assert_fail
.label_1183:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x200
	call	bkm_scale_0
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_151
.label_151:
	mov	eax, dword ptr [rbp - 0x58]
	or	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x4c], eax
	mov	eax, dword ptr [rbp - 0x54]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rcx]
	movsxd	rsi, eax
	add	rdx, rsi
	mov	qword ptr [rcx], rdx
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx]
	cmp	byte ptr [rcx], 0
	je	.label_152
	mov	eax, dword ptr [rbp - 0x4c]
	or	eax, 2
	mov	dword ptr [rbp - 0x4c], eax
.label_152:
	jmp	.label_153
.label_153:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
.label_168:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xb0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40345b
	.globl sub_40345b
	.type sub_40345b, @function
sub_40345b:

	nop	dword ptr [rax + rax]
.label_176:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_168
.label_163:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_153
	mov	dword ptr [rbp - 0x50], 0x400
	mov	dword ptr [rbp - 0x54], 1
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	jne	.label_177
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_168
	.section	.text
	.align	16
	#Procedure 0x4034d0
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
	#Procedure 0x4034ea
	.globl sub_4034ea
	.type sub_4034ea, @function
sub_4034ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4034f0

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
	#Procedure 0x40352e
	.globl sub_40352e
	.type sub_40352e, @function
sub_40352e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403530
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
	#Procedure 0x40356a
	.globl sub_40356a
	.type sub_40356a, @function
sub_40356a:

	nop	word ptr [rax + rax]
.label_192:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_193:
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
	#Procedure 0x4035aa
	.globl sub_4035aa
	.type sub_4035aa, @function
sub_4035aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4035b3

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
	jne	.label_190
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_194
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
.label_194:
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_191
	call	xalloc_die
.label_190:
	movabs	rax, 0x5555555555555554
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_192
	call	xalloc_die
.label_191:
	jmp	.label_193
	.section	.text
	.align	16
	#Procedure 0x403660
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
	#Procedure 0x40368a
	.globl sub_40368a
	.type sub_40368a, @function
sub_40368a:

	nop	word ptr [rax + rax]
.label_196:
	mov	byte ptr [rbp - 1], 0
.label_198:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40369e
	.globl sub_40369e
	.type sub_40369e, @function
sub_40369e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4036a0
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
	jb	.label_195
	jmp	.label_197
.label_197:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_196
	jmp	.label_195
.label_195:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_198
	.section	.text
	.align	16
	#Procedure 0x4036e0

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
	#Procedure 0x40378d
	.globl sub_40378d
	.type sub_40378d, @function
sub_40378d:

	nop	dword ptr [rax]
.label_200:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40379a
	.globl sub_40379a
	.type sub_40379a, @function
sub_40379a:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4037a4
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
	jb	.label_199
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_200
.label_199:
	call	xalloc_die
.label_208:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x54], ecx
.label_204:
	mov	eax, dword ptr [rbp - 0x54]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x58], eax
	mov	qword ptr [rbp - 0x60], rcx
	call	quote
	movabs	rdx, OFFSET FLAT:label_205
	mov	edi, dword ptr [rbp - 0x50]
	mov	esi, dword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	r8, rax
	mov	al, 0
	call	error
.label_202:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x58
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40383a
	.globl sub_40383a
	.type sub_40383a, @function
sub_40383a:

	nop	word ptr cs:[rax + rax]
.label_211:
	cmp	dword ptr [rbp - 0x40], 3
	jne	.label_203
	call	__errno_location
	mov	dword ptr [rax], 0
.label_203:
	jmp	.label_207
.label_207:
	jmp	.label_209
.label_209:
	cmp	dword ptr [rbp - 0x40], 0
	je	.label_202
	cmp	dword ptr [rbp - 0x3c], 0
	je	.label_206
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_201
.label_206:
	mov	eax, 1
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_201
.label_201:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x50], eax
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_208
	xor	eax, eax
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_204
.label_212:
	cmp	dword ptr [rbp - 0x40], 1
	jne	.label_211
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_207
	.section	.text
	.align	16
	#Procedure 0x4038c7

	.globl xnumtoumax
	.type xnumtoumax, @function
xnumtoumax:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x58
	mov	eax, dword ptr [rbp + 0x10]
	xor	r10d, r10d
	mov	r11d, r10d
	lea	rbx, [rbp - 0x48]
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	dword ptr [rbp - 0x3c], eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	mov	r8, qword ptr [rbp - 0x30]
	mov	rsi, r11
	mov	rcx, rbx
	call	xstrtoumax
	mov	dword ptr [rbp - 0x40], eax
	cmp	dword ptr [rbp - 0x40], 0
	jne	.label_212
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x20]
	jb	.label_215
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x48]
	jae	.label_210
.label_215:
	mov	dword ptr [rbp - 0x40], 1
	cmp	qword ptr [rbp - 0x48], 0x3fffffff
	jbe	.label_214
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_213
.label_214:
	call	__errno_location
	mov	dword ptr [rax], 0x22
.label_213:
	jmp	.label_210
.label_210:
	jmp	.label_209
.label_1172:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_292
	movabs	rdi, OFFSET FLAT:label_295
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	movabs	rdi, OFFSET FLAT:label_261
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_292:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_300
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_279:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_303
	jmp	.label_306
.label_306:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_307
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_307:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_399
.label_399:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_279
.label_257:
	test	byte ptr [rbp - 0x7a], 1
	je	.label_320
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
	jmp	.label_218
.label_343:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_334
	jmp	.label_351
.label_334:
	jmp	.label_340
.label_340:
	jmp	.label_245
.label_314:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], edx
.label_318:
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_348
	jmp	.label_357
.label_348:
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	je	.label_275
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_275
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_275
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	jne	.label_364
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_364
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_347
.label_410:
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_379
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_383
.label_285:
	call	abort
.label_330:
	jmp	.label_387
.label_387:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_388
	test	byte ptr [rbp - 0x82], 1
	jne	.label_388
	jmp	.label_235
.label_235:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_395
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_395:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_400
.label_400:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_403
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_403:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_388:
	jmp	.label_409
.label_409:
	jmp	.label_345
.label_345:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_412
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_412:
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
	jmp	.label_389
.label_250:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_221
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_221
	test	byte ptr [rbp - 0x7d], 1
	je	.label_221
	test	byte ptr [rbp - 0x7e], 1
	je	.label_229
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
	jmp	.label_241
.label_1167:
	mov	byte ptr [rbp - 0x79], 1
.label_1166:
	mov	byte ptr [rbp - 0x7b], 1
.label_1168:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_369
	mov	byte ptr [rbp - 0x79], 1
.label_369:
	jmp	.label_390
.label_390:
	mov	dword ptr [rbp - 0x34], 2
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_248
	jmp	.label_252
.label_252:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_253
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_253:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_248
.label_248:
	movabs	rax, OFFSET FLAT:label_261
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_262
.label_263:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_264
	jmp	.label_223
.label_228:
	jmp	.label_269
.label_269:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_270
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_270:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_241
.label_230:
	jmp	.label_245
.label_245:
	test	byte ptr [rbp - 0x79], 1
	je	.label_281
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_284
.label_281:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_413
.label_284:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_413
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
	jne	.label_278
.label_413:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_278
	jmp	.label_249
.label_364:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_347:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	ja	.label_275
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_275
	test	byte ptr [rbp - 0x7b], 1
	je	.label_310
	jmp	.label_223
.label_1165:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_262
.label_262:
	mov	qword ptr [rbp - 0x58], 0
.label_255:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_314
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_318
.label_1142:
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_271
.label_219:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_325
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_325
	jmp	.label_329
.label_329:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_332
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_332:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_339
.label_339:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_342
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_342:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_350
.label_350:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_356
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_356:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_325:
	jmp	.label_361
.label_361:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_362
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_362:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_367
.label_367:
	jmp	.label_249
.label_249:
	jmp	.label_372
.label_372:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_374
	test	byte ptr [rbp - 0x82], 1
	jne	.label_374
	jmp	.label_378
.label_378:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_380
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_380:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_386
.label_386:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_419
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_419:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_374:
	jmp	.label_268
.label_268:
	jmp	.label_277
.label_277:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_222
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_222:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x83], 1
	jne	.label_406
	mov	byte ptr [rbp - 0x7e], 0
.label_406:
	jmp	.label_351
.label_351:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_255
.label_366:
	jmp	.label_375
.label_375:
	mov	byte ptr [rbp - 0x83], 1
.label_1147:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_392
	test	byte ptr [rbp - 0x7b], 1
	je	.label_392
	jmp	.label_223
.label_278:
	jmp	.label_316
.label_316:
	jmp	.label_217
.label_217:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_219
	jmp	.label_223
.label_223:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_226
	test	byte ptr [rbp - 0x79], 1
	je	.label_226
	mov	dword ptr [rbp - 0x34], 4
.label_226:
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
.label_241:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40408e
	.globl sub_40408e
	.type sub_40408e, @function
sub_40408e:

	nop	dword ptr [rax + rax]
.label_304:
	jmp	.label_397
.label_397:
	jmp	.label_414
.label_414:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_251
.label_1170:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_1169:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_256
	jmp	.label_259
.label_259:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_260
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_260:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_256
.label_256:
	movabs	rax, OFFSET FLAT:label_309
	mov	byte ptr [rbp - 0x79], 1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_262
.label_353:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_276
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_276
	mov	qword ptr [rbp - 0xb8], 1
.label_251:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_283
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
	jb	.label_286
	jmp	.label_297
.label_297:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x138], eax
	je	.label_286
	jmp	.label_299
.label_299:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_286
	jmp	.label_333
.label_333:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_304
	jmp	.label_286
.label_286:
	jmp	.label_223
.label_1141:
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_242
.label_1148:
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_245
.label_274:
	jmp	.label_242
.label_242:
	test	byte ptr [rbp - 0x79], 1
	je	.label_313
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_316
.label_236:
	test	byte ptr [rbp - 0x81], 1
	je	.label_321
	jmp	.label_323
.label_323:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_324
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_324:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x81], 0
.label_321:
	jmp	.label_305
.label_305:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_330
	jmp	.label_337
.label_344:
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_338
.label_352:
	jmp	.label_245
.label_1146:
	mov	byte ptr [rbp - 0x80], 0x72
	jmp	.label_271
.label_1152:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_344
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_338
	jmp	.label_352
.label_267:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_354
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_354
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3f
	jne	.label_354
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 2]
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	je	.label_363
	jmp	.label_370
.label_370:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	jb	.label_363
	jmp	.label_377
.label_377:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	je	.label_363
	jmp	.label_384
.label_384:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2f
	mov	dword ptr [rbp - 0x118], eax
	je	.label_363
	jmp	.label_418
.label_418:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	ja	.label_391
	jmp	.label_363
.label_363:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_398
	jmp	.label_223
.label_273:
	jmp	.label_280
.label_280:
	jmp	.label_245
.label_1144:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_242
.label_1171:
	mov	byte ptr [rbp - 0x79], 1
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_262
.label_283:
	jmp	.label_276
.label_276:
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_407
	mov	byte ptr [rbp - 0x91], 0
.label_407:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_411
.label_411:
	jmp	.label_415
.label_415:
	jmp	.label_417
.label_417:
	lea	rdi, [rbp - 0xa0]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_401
.label_383:
	jmp	.label_218
.label_218:
	mov	eax, 1
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	jb	.label_220
	test	byte ptr [rbp - 0x79], 1
	je	.label_230
	test	byte ptr [rbp - 0x91], 1
	jne	.label_230
.label_220:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_389:
	test	byte ptr [rbp - 0x79], 1
	je	.label_236
	test	byte ptr [rbp - 0x91], 1
	jne	.label_236
	jmp	.label_240
.label_240:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_243
	jmp	.label_223
.label_229:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_246
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_246
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_402
.label_239:
	jmp	.label_249
.label_1149:
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_254
	test	byte ptr [rbp - 0x7b], 1
	je	.label_258
	jmp	.label_223
.label_1150:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0x100], ecx
	je	.label_263
	jmp	.label_265
.label_265:
	mov	eax, dword ptr [rbp - 0xfc]
	sub	eax, 5
	mov	dword ptr [rbp - 0x104], eax
	je	.label_267
	jmp	.label_273
.label_244:
	jmp	.label_271
.label_271:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_274
	test	byte ptr [rbp - 0x7b], 1
	je	.label_274
	jmp	.label_223
.label_264:
	jmp	.label_280
.label_243:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_282
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_282
	jmp	.label_287
.label_287:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_288
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_288:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_291
.label_291:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_296
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_296:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_298
.label_298:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_302
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_302:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_282:
	jmp	.label_308
.label_308:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_290
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_290:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_312
.label_312:
	jmp	.label_317
.label_317:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_319
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 6
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_319:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_272
.label_272:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_328
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 3
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_328:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_305
.label_1139:
	test	byte ptr [rbp - 0x79], 1
	je	.label_343
	jmp	.label_346
.label_346:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_349
	jmp	.label_223
.label_379:
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_353
	mov	byte ptr [rbp - 0x91], 0
.label_373:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_358
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_358:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_368
	jmp	.label_371
.label_368:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_373
.label_303:
	jmp	.label_300
.label_300:
	mov	byte ptr [rbp - 0x79], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_262
.label_320:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_231
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_231:
	jmp	.label_401
.label_401:
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
	jne	.label_410
	jmp	.label_383
.label_371:
	jmp	.label_383
.label_246:
	jmp	.label_416
.label_416:
	jmp	.label_221
.label_221:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_269
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_269
	jmp	.label_216
.label_216:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_228
	jmp	.label_224
.label_224:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_247
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_247:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_233
.label_233:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_216
.label_1151:
	mov	al, byte ptr [rbp - 0x7f]
	mov	byte ptr [rbp - 0x80], al
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_237
	test	byte ptr [rbp - 0x7b], 1
	je	.label_239
	jmp	.label_223
.label_237:
	test	byte ptr [rbp - 0x79], 1
	je	.label_244
	test	byte ptr [rbp - 0x7b], 1
	je	.label_244
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_244
	jmp	.label_249
.label_1145:
	mov	byte ptr [rbp - 0x80], 0x66
	jmp	.label_242
.label_1140:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_242
	.section	.text
	.align	16
	#Procedure 0x4048ae

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
.label_402:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_285
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_289]]
	jmp	rcx
.label_398:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_293
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_293:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_301
.label_301:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_331
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_331:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_365
.label_365:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_311
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_311:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_315
.label_315:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_322
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_322:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_294
.label_258:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_327
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_327
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_327:
	jmp	.label_335
.label_335:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_336
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_336:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_341
.label_341:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_393
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_393:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_355
.label_355:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_359
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_359:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_254:
	jmp	.label_245
.label_391:
	jmp	.label_294
.label_294:
	jmp	.label_354
.label_354:
	jmp	.label_280
.label_349:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_326
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_326
	jmp	.label_376
.label_376:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_381
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_381:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_382
.label_382:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_385
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_385:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_394
.label_394:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_396
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_396:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_326:
	jmp	.label_404
.label_404:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_405
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_405:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_408
.label_408:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_238
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_238
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_238
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x39
	jg	.label_238
	jmp	.label_225
.label_225:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_227
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_227:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_232
.label_232:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_234
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_234:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_238
.label_238:
	mov	byte ptr [rbp - 0x7f], 0x30
	jmp	.label_340
.label_338:
	jmp	.label_360
.label_360:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_366
	jmp	.label_245
.label_357:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_250
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_250
	test	byte ptr [rbp - 0x7b], 1
	je	.label_250
	jmp	.label_223
.label_337:
	jmp	.label_249
.label_313:
	jmp	.label_245
.label_310:
	mov	byte ptr [rbp - 0x81], 1
.label_275:
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
	ja	.label_257
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_266]]
	jmp	rcx
.label_392:
	jmp	.label_245
.label_1143:
	mov	byte ptr [rbp - 0x80], 0x6e
	jmp	.label_271
	.section	.text
	.align	16
	#Procedure 0x404d10

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	cmp	eax,  dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]]
	jg	.label_421
	mov	esi, 0x406
	mov	edi, dword ptr [rbp - 4]
	mov	edx, dword ptr [rbp - 8]
	mov	al, 0
	call	fcntl
	xor	edx, edx
	mov	dword ptr [rbp - 0xc], eax
	cmp	edx, dword ptr [rbp - 0xc]
	jle	.label_422
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_423
.label_422:
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_420
.label_423:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
	cmp	dword ptr [rbp - 0xc], 0
	jl	.label_428
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
.label_428:
	jmp	.label_420
.label_420:
	jmp	.label_424
.label_421:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
.label_424:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0xc]
	jg	.label_426
	cmp	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_426
	mov	esi, 1
	mov	edi, dword ptr [rbp - 0xc]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x10], eax
	cmp	dword ptr [rbp - 0x10], 0
	jl	.label_425
	mov	esi, 2
	mov	edi, dword ptr [rbp - 0xc]
	mov	eax, dword ptr [rbp - 0x10]
	or	eax, 1
	mov	edx, eax
	mov	al, 0
	call	fcntl
	cmp	eax, -1
	jne	.label_427
.label_425:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
	mov	edi, dword ptr [rbp - 0xc]
	call	close
	mov	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x18], eax
	mov	dword ptr [rbp - 0x1c], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x1c]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0xc], 0xffffffff
.label_427:
	jmp	.label_426
.label_426:
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404e35
	.globl sub_404e35
	.type sub_404e35, @function
sub_404e35:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e40

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
.label_435:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_434
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_433
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_431
.label_430:
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
	#Procedure 0x404ee3
	.globl sub_404ee3
	.type sub_404ee3, @function
sub_404ee3:

	nop	dword ptr [rax]
.label_433:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_431:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x81], dl
.label_434:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_429
	jmp	.label_430
.label_429:
	jmp	.label_432
.label_432:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_435
.label_1287:
	movabs	rdi, OFFSET FLAT:label_443
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
	jmp	.label_439
.label_1282:
	movabs	rdi, OFFSET FLAT:label_437
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
	jmp	.label_439
	.section	.text
	.align	16
	#Procedure 0x405059

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
	je	.label_445
	movabs	rsi, OFFSET FLAT:label_440
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_450
.label_1283:
	movabs	rdi, OFFSET FLAT:label_438
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
	jmp	.label_439
.label_1278:
	jmp	.label_439
.label_1281:
	movabs	rdi, OFFSET FLAT:label_449
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
	jmp	.label_439
.label_1286:
	movabs	rdi, OFFSET FLAT:label_453
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
	jmp	.label_439
.label_1285:
	movabs	rdi, OFFSET FLAT:label_447
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
	jmp	.label_439
.label_1280:
	movabs	rdi, OFFSET FLAT:label_454
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
	jmp	.label_439
.label_451:
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
.label_439:
	add	rsp, 0x180
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4053b2
	.globl sub_4053b2
	.type sub_4053b2, @function
sub_4053b2:

	nop	
.label_1284:
	movabs	rdi, OFFSET FLAT:label_452
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
	jmp	.label_439
.label_445:
	movabs	rsi, OFFSET FLAT:label_436
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_450:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:label_448
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
	mov	ecx, OFFSET FLAT:label_444
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
	ja	.label_451
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_442]]
	jmp	rcx
.label_1279:
	movabs	rdi, OFFSET FLAT:label_446
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
	jmp	.label_439
	.section	.text
	.align	16
	#Procedure 0x405510

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
	#Procedure 0x40552b
	.globl sub_40552b
	.type sub_40552b, @function
sub_40552b:

	nop	dword ptr [rax + rax]
.label_459:
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	je	.label_457
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_456
.label_457:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_456
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_456:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_455
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_455:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_458:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4055bd
	.globl sub_4055bd
	.type sub_4055bd, @function
sub_4055bd:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4055bf

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
	jge	.label_459
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	jmp	.label_458
.label_460:
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
	#Procedure 0x40561b
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
	jae	.label_460
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405650
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
	#Procedure 0x40567d
	.globl sub_40567d
	.type sub_40567d, @function
sub_40567d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405680

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
	#Procedure 0x40569f
	.globl sub_40569f
	.type sub_40569f, @function
sub_40569f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4056a0
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
	jb	.label_461
	jmp	.label_464
.label_464:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_461
	jmp	.label_462
.label_462:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_463
	jmp	.label_461
.label_461:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_465
.label_463:
	mov	byte ptr [rbp - 1], 0
.label_465:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405705
	.globl sub_405705
	.type sub_405705, @function
sub_405705:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405710

	.globl rpl_fcntl_DUPFD
	.type rpl_fcntl_DUPFD, @function
rpl_fcntl_DUPFD:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	edi, dword ptr [rbp - 4]
	mov	edx, dword ptr [rbp - 8]
	mov	esi, eax
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0xc], eax
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40573b
	.globl sub_40573b
	.type sub_40573b, @function
sub_40573b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405740

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
	#Procedure 0x405772
	.globl sub_405772
	.type sub_405772, @function
sub_405772:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405780

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
	#Procedure 0x4057f5
	.globl sub_4057f5
	.type sub_4057f5, @function
sub_4057f5:

	nop	word ptr cs:[rax + rax]
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
	#Procedure 0x40580e
	.globl sub_40580e
	.type sub_40580e, @function
sub_40580e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40581c
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_467
	jmp	.label_466
.label_466:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_468
	.section	.text
	.align	16
	#Procedure 0x405840
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
	#Procedure 0x405867
	.globl sub_405867
	.type sub_405867, @function
sub_405867:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405870

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
	je	.label_469
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fseeko
	mov	dword ptr [rbp - 0xc], eax
.label_469:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4058ab
	.globl sub_4058ab
	.type sub_4058ab, @function
sub_4058ab:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4058b0
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_470
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_470:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4058da
	.globl sub_4058da
	.type sub_4058da, @function
sub_4058da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4058e0

	.globl baud_to_value
	.type baud_to_value, @function
baud_to_value:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], 0
.label_471:
	movabs	rax, OFFSET FLAT:speeds
	movsxd	rcx, dword ptr [rbp - 0x10]
	imul	rcx, rcx, 0x18
	add	rax, rcx
	cmp	qword ptr [rax], 0
	je	.label_472
	movabs	rax, OFFSET FLAT:speeds
	mov	ecx, dword ptr [rbp - 0xc]
	movsxd	rdx, dword ptr [rbp - 0x10]
	imul	rdx, rdx, 0x18
	add	rax, rdx
	cmp	ecx, dword ptr [rax + 8]
	jne	.label_473
	movabs	rax, OFFSET FLAT:speeds
	movsxd	rcx, dword ptr [rbp - 0x10]
	imul	rcx, rcx, 0x18
	add	rax, rcx
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_474
.label_472:
	mov	qword ptr [rbp - 8], 0
.label_474:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40595e
	.globl sub_40595e
	.type sub_40595e, @function
sub_40595e:

	nop	word ptr cs:[rax + rax]
.label_473:
	jmp	.label_475
.label_475:
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, 1
	mov	dword ptr [rbp - 0x10], eax
	jmp	.label_471
.label_480:
	test	byte ptr [rbp - 0x31], 1
	je	.label_476
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_479
.label_476:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_479:
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
	je	.label_483
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_481]]
	mov	qword ptr [rax + 8], rcx
.label_483:
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
.label_477:
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
	je	.label_482
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_482:
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
	#Procedure 0x405b75
	.globl sub_405b75
	.type sub_405b75, @function
sub_405b75:

	nop	word ptr cs:[rax + rax]
.label_484:
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_477
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x31], cl
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	jge	.label_480
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405bc1

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
	jge	.label_484
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405c00
	.globl xdectoumax
	.type xdectoumax, @function
xdectoumax:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	eax, 0xa
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	dword ptr [rbp - 0x2c], r9d
	mov	rdi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x20]
	mov	r9, qword ptr [rbp - 0x28]
	mov	r10d, dword ptr [rbp - 0x2c]
	mov	esi, eax
	mov	dword ptr [rsp], r10d
	call	xnumtoumax
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405c4e
	.globl sub_405c4e
	.type sub_405c4e, @function
sub_405c4e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405c50

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
	#Procedure 0x405c83
	.globl sub_405c83
	.type sub_405c83, @function
sub_405c83:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c90
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
.label_487:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_485
	jmp	.label_486
.label_486:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_487
.label_485:
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
.label_488:
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
	#Procedure 0x405d2a
	.globl sub_405d2a
	.type sub_405d2a, @function
sub_405d2a:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d36

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
	jne	.label_488
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405d70
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
	#Procedure 0x405d95
	.globl sub_405d95
	.type sub_405d95, @function
sub_405d95:

	nop	word ptr cs:[rax + rax]
.label_551:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	mov	ecx, OFFSET FLAT:label_489
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	jne	.label_499
	mov	rax, qword ptr [rbp - 0x20]
	mov	byte ptr [rax + 0x11], 3
	mov	rax, qword ptr [rbp - 0x20]
	mov	byte ptr [rax + 0x13], 0x7f
	mov	rax, qword ptr [rbp - 0x20]
	mov	byte ptr [rax + 0x14], 0x15
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 0xc]
	or	ecx, 0xa10
	mov	dword ptr [rax + 0xc], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xfffff7ff
	mov	dword ptr [rax], ecx
.label_499:
	jmp	.label_498
.label_498:
	jmp	.label_500
.label_500:
	jmp	.label_503
.label_503:
	jmp	.label_490
.label_490:
	jmp	.label_493
.label_493:
	jmp	.label_494
.label_494:
	jmp	.label_496
.label_496:
	jmp	.label_504
.label_504:
	jmp	.label_501
.label_501:
	jmp	.label_502
.label_502:
	jmp	.label_491
.label_491:
	jmp	.label_492
.label_492:
	jmp	.label_495
.label_495:
	jmp	.label_497
.label_536:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	mov	ecx, OFFSET FLAT:label_517
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	jne	.label_524
	test	byte ptr [rbp - 0x11], 1
	je	.label_527
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xfffffeff
	and	ecx, 0xffffffcf
	or	ecx, 0x30
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax + 8], ecx
	jmp	.label_563
.label_509:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	mov	ecx, OFFSET FLAT:label_533
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	jne	.label_539
	mov	rax, qword ptr [rbp - 0x20]
	mov	byte ptr [rax + 0x13], 0x7f
	mov	rax, qword ptr [rbp - 0x20]
	mov	byte ptr [rax + 0x14], 0x15
	jmp	.label_502
.label_562:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	mov	ecx, OFFSET FLAT:label_545
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	jne	.label_550
	test	byte ptr [rbp - 0x11], 1
	je	.label_553
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffffcf
	or	ecx, 0x20
	or	ecx, 0x100
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax + 8], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax]
	or	ecx, 0x20
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 4]
	or	ecx, 1
	mov	dword ptr [rax + 4], ecx
	jmp	.label_556
.label_532:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	mov	ecx, OFFSET FLAT:label_506
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	je	.label_510
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	mov	ecx, OFFSET FLAT:label_513
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	jne	.label_519
.label_510:
	test	byte ptr [rbp - 0x11], 1
	je	.label_522
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 0xc]
	and	ecx, 0xfffffffb
	mov	dword ptr [rax + 0xc], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xfffffdff
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 4]
	and	ecx, 0xfffffffd
	mov	dword ptr [rax + 4], ecx
	jmp	.label_526
.label_541:
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 4]
	and	ecx, 0xfffffffe
	mov	dword ptr [rax + 4], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 0xc]
	and	ecx, 0xfffffff8
	mov	dword ptr [rax + 0xc], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	byte ptr [rax + 0x17], 1
	mov	rax, qword ptr [rbp - 0x20]
	mov	byte ptr [rax + 0x16], 0
.label_547:
	jmp	.label_493
.label_519:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	mov	ecx, OFFSET FLAT:label_546
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	jne	.label_551
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 0xc]
	or	ecx, 0xa10
	mov	dword ptr [rax + 0xc], ecx
	jmp	.label_498
.label_548:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xfffffdff
	and	ecx, 0xffffffcf
	or	ecx, 0x100
	or	ecx, 0x20
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax + 8], ecx
.label_561:
	jmp	.label_495
.label_524:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	mov	ecx, OFFSET FLAT:label_505
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	jne	.label_509
	test	byte ptr [rbp - 0x11], 1
	je	.label_512
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax]
	or	ecx, 0x100
	and	ecx, 0xffffffbf
	and	ecx, 0xffffff7f
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 4]
	or	ecx, 4
	and	ecx, 0xfffffff7
	and	ecx, 0xffffffdf
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax + 4], ecx
	jmp	.label_514
.label_549:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	mov	ecx, OFFSET FLAT:label_530
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	jne	.label_532
	test	byte ptr [rbp - 0x11], 1
	je	.label_534
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 4]
	and	ecx, 0xffffe7ff
	or	ecx, 0x1800
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax + 4], ecx
	jmp	.label_537
.label_531:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	mov	ecx, OFFSET FLAT:label_544
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	jne	.label_549
	test	byte ptr [rbp - 0x11], 1
	je	.label_552
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax]
	or	ecx, 0x800
	mov	dword ptr [rax], ecx
	jmp	.label_555
.label_535:
	test	byte ptr [rbp - 0x11], 1
	je	.label_558
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	mov	eax, ecx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x18]
	xor	rdx, 0xffffffffffffffff
	and	rax, rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	xor	rdx, 0xffffffffffffffff
	and	rax, rdx
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x28]
	mov	dword ptr [rax], ecx
	jmp	.label_560
.label_525:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	mov	ecx, OFFSET FLAT:label_511
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	jne	.label_516
	test	byte ptr [rbp - 0x11], 1
	je	.label_520
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 0xc]
	or	ecx, 2
	mov	dword ptr [rax + 0xc], ecx
	jmp	.label_523
.label_512:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xfffffeff
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 4]
	and	ecx, 0xfffffffb
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax + 4], ecx
.label_514:
	jmp	.label_491
.label_534:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 4]
	and	ecx, 0xffffe7ff
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax + 4], ecx
.label_537:
	jmp	.label_503
	.section	.text
	.align	16
	#Procedure 0x40619a

	.globl set_mode
	.type set_mode, @function
set_mode:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	al, sil
	mov	qword ptr [rbp - 0x10], rdi
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	mov	qword ptr [rbp - 0x20], rdx
	test	byte ptr [rbp - 0x11], 1
	je	.label_542
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 0xc]
	and	ecx, 4
	cmp	ecx, 0
	jne	.label_542
	mov	byte ptr [rbp - 1], 0
	jmp	.label_554
.label_552:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xfffff7ff
	mov	dword ptr [rax], ecx
.label_555:
	jmp	.label_490
.label_516:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	mov	ecx, OFFSET FLAT:label_559
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	jne	.label_562
	test	byte ptr [rbp - 0x11], 1
	je	.label_515
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffffcf
	or	ecx, 0x20
	or	ecx, 0x100
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax + 8], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax]
	or	ecx, 0x20
	mov	dword ptr [rax], ecx
	jmp	.label_507
.label_553:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xfffffeff
	and	ecx, 0xffffffcf
	or	ecx, 0x30
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax + 8], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffdf
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 4]
	and	ecx, 0xfffffffe
	mov	dword ptr [rax + 4], ecx
.label_556:
	jmp	.label_494
.label_542:
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax + 8]
	mov	rsi, qword ptr [rbp - 0x20]
	call	mode_type_flag
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_535
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	mov	ecx, OFFSET FLAT:label_540
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	je	.label_543
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	mov	ecx, OFFSET FLAT:label_508
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	jne	.label_536
.label_543:
	test	byte ptr [rbp - 0x11], 1
	je	.label_548
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xfffffeff
	and	ecx, 0xffffffcf
	or	ecx, 0x30
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax + 8], ecx
	jmp	.label_561
.label_527:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffffcf
	or	ecx, 0x20
	or	ecx, 0x200
	or	ecx, 0x100
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax + 8], ecx
.label_563:
	jmp	.label_492
.label_515:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xfffffeff
	and	ecx, 0xffffffcf
	or	ecx, 0x30
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax + 8], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffdf
	mov	dword ptr [rax], ecx
.label_507:
	jmp	.label_496
.label_550:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	mov	ecx, OFFSET FLAT:label_521
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	je	.label_528
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	mov	ecx, OFFSET FLAT:label_529
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	jne	.label_531
.label_528:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x72
	jne	.label_557
	test	byte ptr [rbp - 0x11], 1
	jne	.label_538
.label_557:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x63
	jne	.label_541
	test	byte ptr [rbp - 0x11], 1
	jne	.label_541
.label_538:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax]
	or	ecx, 0x526
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 4]
	or	ecx, 1
	mov	dword ptr [rax + 4], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 0xc]
	or	ecx, 3
	mov	dword ptr [rax + 0xc], ecx
	jmp	.label_547
.label_558:
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	mov	eax, ecx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x18]
	xor	rdx, 0xffffffffffffffff
	and	rax, rdx
	mov	rdx, qword ptr [rbp - 0x10]
	or	rax, qword ptr [rdx + 0x10]
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x28]
	mov	dword ptr [rax], ecx
.label_560:
	jmp	.label_497
.label_497:
	mov	byte ptr [rbp - 1], 1
.label_554:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40641f
	.globl sub_40641f
	.type sub_40641f, @function
sub_40641f:

	nop	dword ptr [rax + rax]
.label_520:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 0xc]
	and	ecx, 0xfffffffd
	mov	dword ptr [rax + 0xc], ecx
.label_523:
	jmp	.label_504
.label_539:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	mov	ecx, OFFSET FLAT:label_518
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	jne	.label_525
	mov	rdi, qword ptr [rbp - 0x20]
	call	sane_mode
	jmp	.label_501
.label_522:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 0xc]
	or	ecx, 4
	mov	dword ptr [rax + 0xc], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax]
	or	ecx, 0x200
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 4]
	or	ecx, 2
	mov	dword ptr [rax + 4], ecx
.label_526:
	jmp	.label_500
	.section	.text
	.align	16
	#Procedure 0x406490

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
	.align	16
	#Procedure 0x4064b0
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
	jb	.label_564
	jmp	.label_566
.label_566:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_567
	jmp	.label_564
.label_564:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_565
.label_567:
	mov	byte ptr [rbp - 1], 0
.label_565:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4064fb
	.globl sub_4064fb
	.type sub_4064fb, @function
sub_4064fb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406500

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_568
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:label_43
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40653f
	.globl sub_40653f
	.type sub_40653f, @function
sub_40653f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x406540

	.globl get_win_size
	.type get_win_size, @function
get_win_size:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	eax, 0x5413
	mov	ecx, eax
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, rcx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	al, 0
	call	ioctl
	mov	dword ptr [rbp - 0x14], eax
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40657b
	.globl sub_40657b
	.type sub_40657b, @function
sub_40657b:

	nop	dword ptr [rax + rax]
.label_644:
	movabs	rdi, OFFSET FLAT:label_606
	call	gettext
	mov	qword ptr [rbp - 0x70], rax
.label_655:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rsi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_618
	mov	dword ptr [rbp - 0x74], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_621
	mov	dword ptr [rbp - 0x78], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_634
	mov	dword ptr [rbp - 0x7c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_589
	mov	dword ptr [rbp - 0x80], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_580
	mov	dword ptr [rbp - 0x84], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_637
	mov	dword ptr [rbp - 0x88], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_603
	mov	dword ptr [rbp - 0x8c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_611
	mov	dword ptr [rbp - 0x90], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_623
	mov	dword ptr [rbp - 0x94], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_633
	mov	dword ptr [rbp - 0x98], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_570
	mov	dword ptr [rbp - 0x9c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_581
	mov	dword ptr [rbp - 0xa0], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_594
	mov	dword ptr [rbp - 0xa4], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_604
	mov	dword ptr [rbp - 0xa8], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_616
	mov	dword ptr [rbp - 0xac], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_625
	mov	dword ptr [rbp - 0xb0], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_640
	mov	dword ptr [rbp - 0xb4], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_571
	mov	dword ptr [rbp - 0xb8], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_583
	mov	dword ptr [rbp - 0xbc], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_595
	mov	dword ptr [rbp - 0xc0], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_605
	mov	dword ptr [rbp - 0xc4], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_617
	mov	dword ptr [rbp - 0xc8], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_627
	mov	dword ptr [rbp - 0xcc], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_636
	mov	dword ptr [rbp - 0xd0], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_572
	mov	dword ptr [rbp - 0xd4], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_584
	mov	dword ptr [rbp - 0xd8], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_641
	mov	dword ptr [rbp - 0xdc], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_593
	mov	dword ptr [rbp - 0xe0], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_620
	mov	dword ptr [rbp - 0xe4], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_628
	mov	dword ptr [rbp - 0xe8], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_638
	mov	dword ptr [rbp - 0xec], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_573
	mov	dword ptr [rbp - 0xf0], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_585
	mov	dword ptr [rbp - 0xf4], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_596
	mov	dword ptr [rbp - 0xf8], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_607
	mov	dword ptr [rbp - 0xfc], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_619
	mov	dword ptr [rbp - 0x100], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_629
	mov	dword ptr [rbp - 0x104], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_639
	mov	dword ptr [rbp - 0x108], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_574
	mov	dword ptr [rbp - 0x10c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_588
	mov	dword ptr [rbp - 0x110], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_598
	mov	dword ptr [rbp - 0x114], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_608
	mov	dword ptr [rbp - 0x118], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_569
	mov	dword ptr [rbp - 0x11c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_630
	mov	dword ptr [rbp - 0x120], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_632
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_631
	mov	dword ptr [rbp - 0x124], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_577
	mov	dword ptr [rbp - 0x128], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_599
	mov	dword ptr [rbp - 0x12c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_600
	mov	dword ptr [rbp - 0x130], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_609
	mov	dword ptr [rbp - 0x134], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_590
	mov	dword ptr [rbp - 0x138], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_615
	mov	dword ptr [rbp - 0x13c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_642
	mov	dword ptr [rbp - 0x140], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_578
	mov	dword ptr [rbp - 0x144], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_624
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_591
	mov	dword ptr [rbp - 0x148], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_597
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_622
	mov	dword ptr [rbp - 0x14c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_610
	mov	dword ptr [rbp - 0x150], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_601
	mov	dword ptr [rbp - 0x154], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_592
	mov	dword ptr [rbp - 0x158], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_579
	mov	dword ptr [rbp - 0x15c], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_575
	movabs	rdx, OFFSET FLAT:label_576
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_586
	mov	dword ptr [rbp - 0x160], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_587
	mov	dword ptr [rbp - 0x164], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_602
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_582
	mov	dword ptr [rbp - 0x168], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_612
	movabs	rdx, OFFSET FLAT:label_613
	movabs	rcx, OFFSET FLAT:label_614
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_626
	mov	dword ptr [rbp - 0x16c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_635
	mov	dword ptr [rbp - 0x170], eax
	call	emit_ancillary_info
.label_661:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	16
	#Procedure 0x406f07
	.globl sub_406f07
	.type sub_406f07, @function
sub_406f07:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406f14

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x170
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_647
	jmp	.label_653
.label_653:
	movabs	rdi, OFFSET FLAT:label_654
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_661
.label_647:
	movabs	rdi, OFFSET FLAT:label_665
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rcx,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_649
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x1c], eax
	call	emit_mandatory_arg_note
	movabs	rdi, OFFSET FLAT:label_658
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_662
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_645
	mov	dword ptr [rbp - 0x24], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_652
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_660
	mov	dword ptr [rbp - 0x2c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_666
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_646
	mov	dword ptr [rbp - 0x34], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_651
	mov	dword ptr [rbp - 0x38], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_667
	mov	dword ptr [rbp - 0x3c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_668
	mov	dword ptr [rbp - 0x40], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_648
	mov	dword ptr [rbp - 0x44], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_656
	mov	dword ptr [rbp - 0x48], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_663
	mov	dword ptr [rbp - 0x4c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_669
	mov	dword ptr [rbp - 0x50], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_650
	mov	dword ptr [rbp - 0x54], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_657
	mov	dword ptr [rbp - 0x58], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_664
	mov	dword ptr [rbp - 0x5c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_643
	mov	dword ptr [rbp - 0x60], eax
	call	gettext
	cmp	dword ptr [dword ptr [tcsetattr_options]],  1
	mov	qword ptr [rbp - 0x68], rax
	jne	.label_644
	movabs	rdi, OFFSET FLAT:label_659
	call	gettext
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_655
	.section	.text
	.align	16
	#Procedure 0x407240

	.globl sub_407240
	.type sub_407240, @function
sub_407240:
	mov	qword ptr [rbp - 8], 0
	jmp	.label_670
	.section	.text
	.align	16
	#Procedure 0x40724d

	.globl mode_type_flag
	.type mode_type_flag, @function
mode_type_flag:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 0x18], rsi
	mov	edi, dword ptr [rbp - 0xc]
	mov	esi, edi
	mov	rax, rsi
	sub	rax, 4
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rax
	ja	.label_671
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_672]]
	jmp	rcx
.label_1230:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0xc
	mov	qword ptr [rbp - 8], rax
	jmp	.label_670
.label_671:
	call	abort
.label_670:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4072a4
	.globl sub_4072a4
	.type sub_4072a4, @function
sub_4072a4:

	nop	word ptr cs:[rax + rax]
.label_1229:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 8
	mov	qword ptr [rbp - 8], rax
	jmp	.label_670
	.section	.text
	.align	16
	#Procedure 0x4072c2

	.globl sub_4072c2
	.type sub_4072c2, @function
sub_4072c2:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_670
	.section	.text
	.align	16
	#Procedure 0x4072cf

	.globl sub_4072cf
	.type sub_4072cf, @function
sub_4072cf:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 4
	mov	qword ptr [rbp - 8], rax
	jmp	.label_670
	.section	.text
	.align	16
	#Procedure 0x4072e0
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
	#Procedure 0x407307
	.globl sub_407307
	.type sub_407307, @function
sub_407307:

	nop	word ptr [rax + rax]
.label_675:
	mov	byte ptr [rbp - 1], 0
.label_674:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40731e
	.globl sub_40731e
	.type sub_40731e, @function
sub_40731e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40731f
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_675
	jmp	.label_673
.label_673:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_674
	.section	.text
	.align	16
	#Procedure 0x407340

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale_0:
	push	rbp
	mov	rbp, rsp
	mov	rax, -1
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	movsxd	rdi, dword ptr [rbp - 0x14]
	xor	esi, esi
	mov	edx, esi
	div	rdi
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rdi]
	jae	.label_676
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], -1
	mov	dword ptr [rbp - 4], 1
	jmp	.label_677
.label_676:
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_677:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40739c
	.globl sub_40739c
	.type sub_40739c, @function
sub_40739c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4073a0

	.globl screen_columns
	.type screen_columns, @function
screen_columns:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	edi, 1
	lea	rsi, [rbp - 0x10]
	call	get_win_size
	cmp	eax, 0
	jne	.label_682
	xor	eax, eax
	movzx	ecx, word ptr [rbp - 0xe]
	cmp	eax, ecx
	jge	.label_682
	movzx	eax, word ptr [rbp - 0xe]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_680
.label_682:
	movabs	rdi, OFFSET FLAT:label_681
	call	getenv
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_678
	xor	eax, eax
	mov	esi, eax
	xor	edx, edx
	lea	rcx, [rbp - 0x20]
	movabs	r8, OFFSET FLAT:label_18
	mov	rdi, qword ptr [rbp - 0x18]
	call	xstrtol
	cmp	eax, 0
	jne	.label_678
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x20]
	jge	.label_678
	cmp	qword ptr [rbp - 0x20], 0x7fffffff
	jle	.label_679
.label_678:
	mov	qword ptr [rbp - 0x20], 0x50
.label_679:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, eax
	mov	dword ptr [rbp - 4], ecx
.label_680:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407453
	.globl sub_407453
	.type sub_407453, @function
sub_407453:

	nop	word ptr cs:[rax + rax]
.label_684:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_683
.label_683:
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
	#Procedure 0x4074a4
	.globl sub_4074a4
	.type sub_4074a4, @function
sub_4074a4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4074b2
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
	je	.label_684
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_683
.label_687:
	jmp	.label_685
.label_685:
	mov	eax, dword ptr [rbp - 0x14]
	add	eax, 1
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_689
	.section	.text
	.align	16
	#Procedure 0x4074f3

	.globl string_to_baud
	.type string_to_baud, @function
string_to_baud:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], 0
.label_689:
	movabs	rax, OFFSET FLAT:speeds
	movsxd	rcx, dword ptr [rbp - 0x14]
	imul	rcx, rcx, 0x18
	add	rax, rcx
	cmp	qword ptr [rax], 0
	je	.label_686
	movabs	rax, OFFSET FLAT:speeds
	mov	rdi, qword ptr [rbp - 0x10]
	movsxd	rcx, dword ptr [rbp - 0x14]
	imul	rcx, rcx, 0x18
	add	rax, rcx
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	jne	.label_687
	movabs	rax, OFFSET FLAT:speeds
	movsxd	rcx, dword ptr [rbp - 0x14]
	imul	rcx, rcx, 0x18
	add	rax, rcx
	mov	edx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 4], edx
	jmp	.label_688
.label_686:
	mov	dword ptr [rbp - 4], 0xffffffff
.label_688:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40757f
	.globl sub_40757f
	.type sub_40757f, @function
sub_40757f:

	nop	
.label_698:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_690
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_690:
	movabs	rdi, OFFSET FLAT:label_697
	call	gettext
	movabs	rsi, OFFSET FLAT:label_74
	movabs	rdx, OFFSET FLAT:label_75
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
	je	.label_691
	movabs	rsi, OFFSET FLAT:label_693
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_691
	movabs	rdi, OFFSET FLAT:label_694
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_691:
	movabs	rdi, OFFSET FLAT:label_695
	call	gettext
	movabs	rsi, OFFSET FLAT:label_75
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_696
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:label_18
	movabs	rsi, OFFSET FLAT:label_692
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
	#Procedure 0x4076a5
	.globl sub_4076a5
	.type sub_4076a5, @function
sub_4076a5:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4076ac

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
.label_701:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_700
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_700:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_699
	jmp	.label_698
.label_699:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_701
	.section	.text
	.align	16
	#Procedure 0x407720
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
	je	.label_702
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_703
.label_702:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_703
.label_703:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407767
	.globl sub_407767
	.type sub_407767, @function
sub_407767:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407770

	.globl bkm_scale_0
	.type bkm_scale_0, @function
bkm_scale:
	push	rbp
	mov	rbp, rsp
	movabs	rax, 0x8000000000000000
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi]
	movsxd	rcx, dword ptr [rbp - 0x14]
	cqo	
	idiv	rcx
	cmp	rdi, rax
	jge	.label_704
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 1
	jmp	.label_705
.label_704:
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0x14]
	cqo	
	idiv	rcx
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx]
	jge	.label_706
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 1
	jmp	.label_705
.label_706:
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_705:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407813
	.globl sub_407813
	.type sub_407813, @function
sub_407813:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407820

	.globl integer_arg
	.type integer_arg, @function
integer_arg:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	movabs	rax, OFFSET FLAT:label_707
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rax
	mov	qword ptr [rbp - 0x20], rcx
	call	gettext
	xor	esi, esi
	xor	edx, edx
	movabs	r8, OFFSET FLAT:label_708
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r9, rax
	mov	dword ptr [rsp], 0
	call	xnumtoumax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40787d
	.globl sub_40787d
	.type sub_40787d, @function
sub_40787d:

	nop	dword ptr [rax]
.label_714:
	mov	rdi, qword ptr [rbp - 0x10]
	call	display_recoverable
.label_711:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40788f
	.globl sub_40788f
	.type sub_40788f, @function
sub_40788f:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407892

	.globl display_settings
	.type display_settings, @function
display_settings:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	edi, dword ptr [rbp - 4]
	test	edi, edi
	mov	dword ptr [rbp - 0x1c], edi
	je	.label_709
	jmp	.label_710
.label_710:
	mov	eax, dword ptr [rbp - 0x1c]
	sub	eax, 1
	mov	dword ptr [rbp - 0x20], eax
	je	.label_713
	jmp	.label_712
.label_712:
	mov	eax, dword ptr [rbp - 0x1c]
	sub	eax, 2
	mov	dword ptr [rbp - 0x24], eax
	je	.label_714
	jmp	.label_711
.label_713:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	display_all
	jmp	.label_711
.label_709:
	mov	rdi, qword ptr [rbp - 0x10]
	call	display_changed
	jmp	.label_711
	.section	.text
	.align	16
	#Procedure 0x407900

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
	je	.label_715
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_718
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_719
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_716
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_717
.label_719:
	mov	byte ptr [rbp - 5], 0
.label_717:
	jmp	.label_715
.label_715:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407973
	.globl sub_407973
	.type sub_407973, @function
sub_407973:

	nop	word ptr cs:[rax + rax]
.label_763:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:label_764
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_769
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:label_772
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_783
.label_769:
	jmp	.label_787
.label_787:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	ecx, dword ptr [rbp - 0x1c]
	sub	ecx, 1
	cmp	eax, ecx
	je	.label_788
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx + rcx*8], 0
	jne	.label_792
.label_788:
	movabs	rdi, OFFSET FLAT:label_726
	call	gettext
	mov	rdi, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x88], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_734:
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407a29
	.globl sub_407a29
	.type sub_407a29, @function
sub_407a29:

	nop	word ptr cs:[rax + rax]
.label_767:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:label_740
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_793
	test	byte ptr [rbp - 1], 1
	je	.label_752
	jmp	.label_755
.label_775:
	jmp	.label_777
.label_777:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	test	byte ptr [rbp - 1], 1
	je	.label_750
	jmp	.label_755
.label_731:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:label_795
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_767
	jmp	.label_770
.label_770:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	ecx, dword ptr [rbp - 0x1c]
	sub	ecx, 1
	cmp	eax, ecx
	je	.label_771
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx + rcx*8], 0
	jne	.label_782
.label_771:
	movabs	rdi, OFFSET FLAT:label_726
	call	gettext
	mov	rdi, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x90], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x90]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_751:
	mov	eax, 0x7fffffff
	mov	esi, eax
	movsxd	rcx, dword ptr [rbp - 0x3c]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rdx + rcx*8]
	call	integer_arg
	mov	edi, 0xffffffff
	mov	r8d, eax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	esi, r8d
	call	set_window_size
	jmp	.label_723
.label_796:
	jmp	.label_738
.label_738:
	mov	eax, dword ptr [rbp - 0x50]
	add	eax, 1
	mov	dword ptr [rbp - 0x50], eax
	jmp	.label_749
.label_792:
	jmp	.label_748
.label_748:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	test	byte ptr [rbp - 1], 1
	je	.label_751
	jmp	.label_755
.label_779:
	jmp	.label_756
.label_756:
	mov	eax, dword ptr [rbp - 0x50]
	add	eax, 1
	mov	dword ptr [rbp - 0x50], eax
	jmp	.label_759
.label_766:
	jmp	.label_762
.label_762:
	test	byte ptr [rbp - 0x49], 1
	je	.label_725
	test	byte ptr [rbp - 0x4a], 1
	je	.label_765
.label_725:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:label_768
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_774
	jmp	.label_781
.label_781:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	ecx, dword ptr [rbp - 0x1c]
	sub	ecx, 1
	cmp	eax, ecx
	je	.label_721
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx + rcx*8], 0
	jne	.label_790
.label_721:
	movabs	rdi, OFFSET FLAT:label_726
	call	gettext
	mov	rdi, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_760:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x28]
	call	recover_mode
	test	al, 1
	jne	.label_780
	movabs	rdi, OFFSET FLAT:label_733
	call	gettext
	mov	rdi, qword ptr [rbp - 0x48]
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
.label_782:
	jmp	.label_758
.label_758:
	mov	rsi, -1
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	movsxd	rcx, dword ptr [rbp - 0x3c]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rdx + rcx*8]
	call	integer_arg
	mov	qword ptr [rbp - 0x58], rax
	mov	r8b, al
	mov	rax, qword ptr [rbp - 0x28]
	mov	byte ptr [rax + 0x10], r8b
	mov	rax, qword ptr [rbp - 0x28]
	movzx	r9d, byte ptr [rax + 0x10]
	mov	eax, r9d
	cmp	rax, qword ptr [rbp - 0x58]
	je	.label_742
	movabs	rdi, OFFSET FLAT:label_785
	call	gettext
	movsxd	rdi, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rdi*8]
	mov	qword ptr [rbp - 0x98], rax
	call	quote
	xor	edx, edx
	mov	edi, edx
	mov	esi, edx
	mov	rdx, qword ptr [rbp - 0x98]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_742:
	mov	rax, qword ptr [rbp - 0x38]
	mov	byte ptr [rax], 1
	jmp	.label_720
.label_735:
	call	screen_columns
	xor	edi, edi
	mov	dword ptr [dword ptr [max_col]],  eax
	mov	dword ptr [dword ptr [current_col]],  0
	mov	rsi, qword ptr [rbp - 0x10]
	call	display_window_size
	jmp	.label_722
.label_739:
	mov	rax, qword ptr [rbp - 0x48]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	jne	.label_732
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	byte ptr [rbp - 0x4b], 1
.label_732:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:label_745
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_753
	mov	eax, 1
	xor	ecx, ecx
	mov	dl, byte ptr [rbp - 0x4b]
	test	dl, 1
	cmovne	eax, ecx
	mov	dword ptr [dword ptr [tcsetattr_options]],  eax
	jmp	.label_755
.label_747:
	mov	edi, 1
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rcx + rax*8]
	mov	rdx, qword ptr [rbp - 0x28]
	call	set_speed
	mov	rax, qword ptr [rbp - 0x30]
	mov	byte ptr [rax], 1
	mov	rax, qword ptr [rbp - 0x38]
	mov	byte ptr [rax], 1
	jmp	.label_729
.label_774:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:label_778
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_786
	jmp	.label_789
.label_789:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	ecx, dword ptr [rbp - 0x1c]
	sub	ecx, 1
	cmp	eax, ecx
	je	.label_791
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx + rcx*8], 0
	jne	.label_754
.label_791:
	movabs	rdi, OFFSET FLAT:label_726
	call	gettext
	mov	rdi, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x78], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_752:
	call	screen_columns
	xor	esi, esi
	mov	dword ptr [dword ptr [max_col]],  eax
	mov	rdi, qword ptr [rbp - 0x28]
	call	display_speed
	jmp	.label_743
.label_754:
	jmp	.label_744
.label_744:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	test	byte ptr [rbp - 1], 1
	je	.label_747
	jmp	.label_755
.label_753:
	mov	dword ptr [rbp - 0x50], 0
.label_759:
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0x50]
	shl	rcx, 5
	add	rax, rcx
	cmp	qword ptr [rax], 0
	je	.label_757
	movabs	rax, OFFSET FLAT:mode_info
	mov	rdi, qword ptr [rbp - 0x48]
	movsxd	rcx, dword ptr [rbp - 0x50]
	shl	rcx, 5
	add	rax, rcx
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	jne	.label_779
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0x50]
	shl	rcx, 5
	add	rax, rcx
	movsx	edx, byte ptr [rax + 0xc]
	and	edx, 0x10
	cmp	edx, 0
	jne	.label_784
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0x50]
	shl	rcx, 5
	add	rax, rcx
	mov	dl, byte ptr [rbp - 0x4b]
	mov	rcx, qword ptr [rbp - 0x28]
	and	dl, 1
	mov	rdi, rax
	movzx	esi, dl
	mov	rdx, rcx
	call	set_mode
	and	al, 1
	mov	byte ptr [rbp - 0x49], al
	mov	rcx, qword ptr [rbp - 0x38]
	mov	byte ptr [rcx], 1
	jmp	.label_746
.label_783:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:label_724
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_731
	test	byte ptr [rbp - 1], 1
	je	.label_735
	jmp	.label_755
.label_757:
	test	byte ptr [rbp - 0x49], 1
	jne	.label_741
	test	byte ptr [rbp - 0x4b], 1
	je	.label_741
	movabs	rdi, OFFSET FLAT:label_733
	call	gettext
	mov	rdi, qword ptr [rbp - 0x48]
	add	rdi, -1
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
.label_741:
	test	byte ptr [rbp - 0x49], 1
	jne	.label_762
	mov	dword ptr [rbp - 0x50], 0
.label_749:
	movabs	rax, OFFSET FLAT:control_info
	movsxd	rcx, dword ptr [rbp - 0x50]
	imul	rcx, rcx, 0x18
	add	rax, rcx
	cmp	qword ptr [rax], 0
	je	.label_766
	movabs	rax, OFFSET FLAT:control_info
	mov	rdi, qword ptr [rbp - 0x48]
	movsxd	rcx, dword ptr [rbp - 0x50]
	imul	rcx, rcx, 0x18
	add	rax, rcx
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	jne	.label_796
	jmp	.label_797
.label_797:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	ecx, dword ptr [rbp - 0x1c]
	sub	ecx, 1
	cmp	eax, ecx
	je	.label_798
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx + rcx*8], 0
	jne	.label_794
.label_798:
	movabs	rdi, OFFSET FLAT:label_726
	call	gettext
	mov	rdi, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x68], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_761:
	mov	edi, 2
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x28]
	call	set_speed
	mov	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rdx], 1
	mov	rdx, qword ptr [rbp - 0x38]
	mov	byte ptr [rdx], 1
	jmp	.label_736
.label_786:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:label_773
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_763
	jmp	.label_801
.label_801:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	ecx, dword ptr [rbp - 0x1c]
	sub	ecx, 1
	cmp	eax, ecx
	je	.label_799
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx + rcx*8], 0
	jne	.label_775
.label_799:
	movabs	rdi, OFFSET FLAT:label_726
	call	gettext
	mov	rdi, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x80], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
	.section	.text
	.align	16
	#Procedure 0x4080f0

	.globl apply_settings
	.type apply_settings, @function
apply_settings:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	al, dil
	mov	r10, qword ptr [rbp + 0x10]
	and	al, 1
	mov	byte ptr [rbp - 1], al
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	dword ptr [rbp - 0x1c], ecx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], r9
	mov	qword ptr [rbp - 0x38], r10
	mov	dword ptr [rbp - 0x3c], 1
.label_737:
	mov	eax, dword ptr [rbp - 0x3c]
	cmp	eax, dword ptr [rbp - 0x1c]
	jge	.label_734
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x48], rax
	mov	byte ptr [rbp - 0x49], 0
	mov	byte ptr [rbp - 0x4a], 0
	mov	byte ptr [rbp - 0x4b], 0
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_739
	jmp	.label_755
.label_793:
	mov	rdi, qword ptr [rbp - 0x48]
	call	string_to_baud
	cmp	eax, -1
	je	.label_760
	test	byte ptr [rbp - 1], 1
	je	.label_761
	jmp	.label_755
.label_790:
	jmp	.label_800
.label_800:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	test	byte ptr [rbp - 1], 1
	je	.label_728
	jmp	.label_755
.label_728:
	xor	edi, edi
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rcx + rax*8]
	mov	rdx, qword ptr [rbp - 0x28]
	call	set_speed
	mov	rax, qword ptr [rbp - 0x30]
	mov	byte ptr [rax], 1
	mov	rax, qword ptr [rbp - 0x38]
	mov	byte ptr [rax], 1
	jmp	.label_730
.label_750:
	mov	eax, 0x7fffffff
	mov	esi, eax
	movsxd	rcx, dword ptr [rbp - 0x3c]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rdx + rcx*8]
	call	integer_arg
	mov	esi, 0xffffffff
	mov	r8d, eax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, r8d
	call	set_window_size
	jmp	.label_727
.label_780:
	mov	rax, qword ptr [rbp - 0x38]
	mov	byte ptr [rax], 1
.label_736:
	jmp	.label_743
.label_743:
	jmp	.label_720
.label_720:
	jmp	.label_722
.label_722:
	jmp	.label_723
.label_723:
	jmp	.label_727
.label_727:
	jmp	.label_729
.label_729:
	jmp	.label_730
.label_730:
	jmp	.label_765
.label_765:
	jmp	.label_755
.label_755:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_737
.label_784:
	mov	byte ptr [rbp - 0x4a], 1
	mov	byte ptr [rbp - 0x49], 1
.label_746:
	jmp	.label_757
.label_794:
	jmp	.label_776
.label_776:
	movabs	rax, OFFSET FLAT:control_info
	mov	byte ptr [rbp - 0x49], 1
	mov	ecx, dword ptr [rbp - 0x3c]
	add	ecx, 1
	mov	dword ptr [rbp - 0x3c], ecx
	movsxd	rdx, dword ptr [rbp - 0x50]
	imul	rdx, rdx, 0x18
	add	rax, rdx
	movsxd	rdx, dword ptr [rbp - 0x3c]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + rdx*8]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rdi, rax
	call	set_control_char
	mov	rax, qword ptr [rbp - 0x38]
	mov	byte ptr [rax], 1
	jmp	.label_766
	.section	.text
	.align	16
	#Procedure 0x408290

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
	jne	.label_802
	mov	dword ptr [rbp - 4], 0
	jmp	.label_806
.label_802:
	jmp	.label_803
.label_803:
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
	jne	.label_805
	jmp	.label_804
.label_805:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	je	.label_803
.label_804:
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_806:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408341
	.globl sub_408341
	.type sub_408341, @function
sub_408341:

	nop	word ptr cs:[rax + rax]
.label_810:
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 8], rax
	je	.label_807
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	qword ptr [word ptr [label_481]],  rax
.label_807:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_808
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_808:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4083d6
	.globl sub_4083d6
	.type sub_4083d6, @function
sub_4083d6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4083e2
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_809:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_810
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_809
	.section	.text
	.align	16
	#Procedure 0x408430

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
	#Procedure 0x40845c
	.globl sub_40845c
	.type sub_40845c, @function
sub_40845c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408460

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	dword ptr [rbp - 0x10], edx
	mov	dword ptr [rbp - 0x14], 0
.label_812:
	mov	eax, dword ptr [rbp - 0x10]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x10], ecx
	cmp	eax, 0
	je	.label_811
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	bkm_scale
	or	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_812
.label_811:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4084ad
	.globl sub_4084ad
	.type sub_4084ad, @function
sub_4084ad:

	nop	dword ptr [rax]
.label_814:
	jmp	.label_813
.label_813:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4084c3
	.globl sub_4084c3
	.type sub_4084c3, @function
sub_4084c3:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4084c9

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
	ja	.label_814
	jmp	.label_815
.label_815:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	add	eax, 0x2001a
	mov	dword ptr [rbp - 4], eax
	jmp	.label_813
	.section	.text
	.align	16
	#Procedure 0x408500
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
	#Procedure 0x408536
	.globl sub_408536
	.type sub_408536, @function
sub_408536:

	nop	word ptr cs:[rax + rax]
.label_817:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_816
.label_816:
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
	#Procedure 0x4085d1
	.globl sub_4085d1
	.type sub_4085d1, @function
sub_4085d1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4085dc
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
	je	.label_817
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_816
.label_818:
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
	#Procedure 0x40862e

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
	jne	.label_820
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_820:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_819
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_818
.label_819:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x408680

	.globl set_control_char
	.type set_control_char, @function
set_control_char:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdx]
	mov	eax, OFFSET FLAT:label_821
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_832
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	mov	ecx, OFFSET FLAT:label_834
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	jne	.label_823
.label_832:
	mov	eax, 0xff
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x10]
	call	integer_arg
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_829
.label_823:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_831
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	jne	.label_836
.label_831:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	qword ptr [rbp - 0x20], rcx
	jmp	.label_826
.label_830:
	mov	eax, 0xff
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x10]
	call	integer_arg
	mov	qword ptr [rbp - 0x20], rax
.label_837:
	jmp	.label_835
.label_835:
	jmp	.label_826
.label_826:
	jmp	.label_829
.label_829:
	mov	rax, qword ptr [rbp - 0x20]
	mov	cl, al
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax + 0x11], cl
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40875f
	.globl sub_40875f
	.type sub_40875f, @function
sub_40875f:

	nop	dword ptr [rax]
.label_833:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x5e
	jne	.label_830
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_830
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x3f
	jne	.label_824
	mov	qword ptr [rbp - 0x20], 0x7f
	jmp	.label_827
.label_824:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rax + 1]
	call	to_uchar
	movzx	edi, al
	and	edi, 0xffffff9f
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x20], rcx
.label_827:
	jmp	.label_837
.label_836:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_822
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_825
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_828
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_833
.label_825:
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_835
	.section	.text
	.align	16
	#Procedure 0x408800

	.globl recover_mode
	.type recover_mode, @function
recover_mode:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rsi
	mov	qword ptr [rbp - 0x40], 0
.label_839:
	cmp	qword ptr [rbp - 0x40], 4
	jae	.label_838
	mov	esi, 0x10
	lea	rdx, [rbp - 0x48]
	mov	r8d, 0x3a
	lea	rax, [rbp - 0x30]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x40]
	shl	rcx, 2
	add	rax, rcx
	mov	rcx, rax
	call	strtoul_tcflag_t
	cmp	eax, 0
	je	.label_842
	mov	byte ptr [rbp - 1], 0
	jmp	.label_843
.label_841:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_844
.label_842:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_839
.label_840:
	mov	byte ptr [rbp - 1], 1
.label_843:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4088b3
	.globl sub_4088b3
	.type sub_4088b3, @function
sub_4088b3:

	nop	dword ptr [rax + rax]
.label_838:
	mov	eax, dword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dword ptr [rcx], eax
	mov	eax, dword ptr [rbp - 0x2c]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dword ptr [rcx + 4], eax
	mov	eax, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dword ptr [rcx + 8], eax
	mov	eax, dword ptr [rbp - 0x24]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dword ptr [rcx + 0xc], eax
	mov	qword ptr [rbp - 0x40], 0
.label_844:
	cmp	qword ptr [rbp - 0x40], 0x20
	jae	.label_840
	mov	esi, 0x10
	lea	rdx, [rbp - 0x50]
	xor	eax, eax
	mov	ecx, 0x3a
	cmp	qword ptr [rbp - 0x40], 0x1f
	cmovb	eax, ecx
	mov	dil, al
	mov	byte ptr [rbp - 0x51], dil
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rbp - 0x18]
	add	r8, 0x11
	add	r8, qword ptr [rbp - 0x40]
	mov	rcx, r8
	movsx	r8d, byte ptr [rbp - 0x51]
	call	strtoul_cc_t
	cmp	eax, 0
	je	.label_841
	mov	byte ptr [rbp - 1], 0
	jmp	.label_843
.label_852:
	movabs	rax, OFFSET FLAT:label_261
	movabs	rcx, OFFSET FLAT:label_309
	cmp	dword ptr [rbp - 0x14], 9
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_847:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40896a
	.globl sub_40896a
	.type sub_40896a, @function
sub_40896a:

	nop	dword ptr [rax + rax]
.label_854:
	call	locale_charset
	movabs	rsi, OFFSET FLAT:label_851
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_853
	movabs	rax, OFFSET FLAT:label_848
	movabs	rcx, OFFSET FLAT:label_849
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_847
	.section	.text
	.align	16
	#Procedure 0x4089c2

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
	je	.label_854
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_847
.label_853:
	movabs	rsi, OFFSET FLAT:label_850
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_852
	movabs	rax, OFFSET FLAT:label_845
	movabs	rcx, OFFSET FLAT:label_846
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_847
	.section	.text
	.align	16
	#Procedure 0x408a40

	.globl display_speed
	.type display_speed, @function
display_speed:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	al, sil
	mov	qword ptr [rbp - 8], rdi
	and	al, 1
	mov	byte ptr [rbp - 9], al
	mov	rdi, qword ptr [rbp - 8]
	call	cfgetispeed
	cmp	eax, 0
	je	.label_862
	mov	rdi, qword ptr [rbp - 8]
	call	cfgetispeed
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x10], eax
	call	cfgetospeed
	mov	ecx, dword ptr [rbp - 0x10]
	cmp	ecx, eax
	jne	.label_861
.label_862:
	movabs	rax, OFFSET FLAT:label_856
	movabs	rcx, OFFSET FLAT:label_857
	mov	dl, byte ptr [rbp - 9]
	test	dl, 1
	cmovne	rax, rcx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	call	cfgetospeed
	mov	edi, eax
	call	baud_to_value
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, rax
	mov	al, 0
	call	wrapf
	jmp	.label_858
.label_861:
	movabs	rax, OFFSET FLAT:label_859
	movabs	rcx, OFFSET FLAT:label_860
	mov	dl, byte ptr [rbp - 9]
	test	dl, 1
	cmovne	rax, rcx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	call	cfgetispeed
	mov	edi, eax
	call	baud_to_value
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
	call	cfgetospeed
	mov	edi, eax
	call	baud_to_value
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, rax
	mov	al, 0
	call	wrapf
.label_858:
	test	byte ptr [rbp - 9], 1
	jne	.label_855
	mov	dword ptr [dword ptr [current_col]],  0
.label_855:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408b3e
	.globl sub_408b3e
	.type sub_408b3e, @function
sub_408b3e:

	nop	
.label_864:
	mov	byte ptr [rbp - 1], 0
.label_865:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408b4e
	.globl sub_408b4e
	.type sub_408b4e, @function
sub_408b4e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408b5c
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_864
	jmp	.label_863
.label_863:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_865
.label_866:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408b86
	.globl sub_408b86
	.type sub_408b86, @function
sub_408b86:

	nop	
	nop	dword ptr [rax + rax]
.label_868:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_866
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x408bb1

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	close_stream
	cmp	eax, 0
	je	.label_868
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_870
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	je	.label_868
.label_870:
	movabs	rdi, OFFSET FLAT:label_869
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_871
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_205
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_867
.label_871:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_43
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	call	error
.label_867:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_873:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_874:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408c7b
	.globl sub_408c7b
	.type sub_408c7b, @function
sub_408c7b:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408c84

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_873
	jmp	.label_872
.label_872:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_874
	.section	.text
	.align	16
	#Procedure 0x408cb0
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
	#Procedure 0x408ce7
	.globl sub_408ce7
	.type sub_408ce7, @function
sub_408ce7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408cf0

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
	je	.label_875
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
.label_875:
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
	#Procedure 0x408e54
	.globl sub_408e54
	.type sub_408e54, @function
sub_408e54:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408e60
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
	#Procedure 0x408e8f
	.globl sub_408e8f
	.type sub_408e8f, @function
sub_408e8f:

	nop	
.label_888:
	movabs	rdi, OFFSET FLAT:label_876
	movabs	rsi, OFFSET FLAT:label_877
	mov	edx, 0x8cb
	movabs	rcx, OFFSET FLAT:label_878
	call	__assert_fail
.label_881:
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0xc]
	shl	rcx, 5
	add	rax, rcx
	movsx	edx, byte ptr [rax + 0xc]
	and	edx, 1
	cmp	edx, 0
	je	.label_886
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0xc]
	shl	rcx, 5
	add	rax, rcx
	mov	edi, dword ptr [rax + 8]
	mov	rsi, qword ptr [rbp - 8]
	call	mode_type_flag
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_888
	jmp	.label_883
.label_883:
	movabs	rax, OFFSET FLAT:mode_info
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rcx]
	mov	ecx, edx
	movsxd	rsi, dword ptr [rbp - 0xc]
	shl	rsi, 5
	mov	rdi, rax
	add	rdi, rsi
	mov	rsi, qword ptr [rdi + 0x18]
	xor	rsi, 0xffffffffffffffff
	and	rcx, rsi
	movsxd	rsi, dword ptr [rbp - 0xc]
	shl	rsi, 5
	add	rax, rsi
	or	rcx, qword ptr [rax + 0x10]
	mov	edx, ecx
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax], edx
	jmp	.label_885
.label_886:
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0xc]
	shl	rcx, 5
	add	rax, rcx
	movsx	edx, byte ptr [rax + 0xc]
	and	edx, 2
	cmp	edx, 0
	je	.label_887
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0xc]
	shl	rcx, 5
	add	rax, rcx
	mov	edi, dword ptr [rax + 8]
	mov	rsi, qword ptr [rbp - 8]
	call	mode_type_flag
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_889
	jmp	.label_884
.label_884:
	movabs	rax, OFFSET FLAT:mode_info
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rcx]
	mov	ecx, edx
	movsxd	rsi, dword ptr [rbp - 0xc]
	shl	rsi, 5
	mov	rdi, rax
	add	rdi, rsi
	mov	rsi, qword ptr [rdi + 0x18]
	xor	rsi, 0xffffffffffffffff
	and	rcx, rsi
	movsxd	rsi, dword ptr [rbp - 0xc]
	shl	rsi, 5
	add	rax, rsi
	mov	rax, qword ptr [rax + 0x10]
	xor	rax, 0xffffffffffffffff
	and	rcx, rax
	mov	edx, ecx
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax], edx
.label_887:
	jmp	.label_885
.label_885:
	jmp	.label_879
.label_879:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_880
.label_882:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40901a
	.globl sub_40901a
	.type sub_40901a, @function
sub_40901a:

	nop	word ptr cs:[rax + rax]
.label_891:
	mov	dword ptr [rbp - 0xc], 0
.label_880:
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0xc]
	shl	rcx, 5
	add	rax, rcx
	cmp	qword ptr [rax], 0
	je	.label_882
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0xc]
	shl	rcx, 5
	add	rax, rcx
	movsx	edx, byte ptr [rax + 0xc]
	and	edx, 0x10
	cmp	edx, 0
	je	.label_881
	jmp	.label_879
.label_889:
	movabs	rdi, OFFSET FLAT:label_876
	movabs	rsi, OFFSET FLAT:label_877
	mov	edx, 0x8d1
	movabs	rcx, OFFSET FLAT:label_878
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x40909c

	.globl sane_mode
	.type sane_mode, @function
sane_mode:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], 0
.label_890:
	movabs	rax, OFFSET FLAT:control_info
	movsxd	rcx, dword ptr [rbp - 0xc]
	imul	rcx, rcx, 0x18
	add	rax, rcx
	cmp	qword ptr [rax], 0
	je	.label_891
	movabs	rax, OFFSET FLAT:control_info
	movsxd	rcx, dword ptr [rbp - 0xc]
	imul	rcx, rcx, 0x18
	mov	rdx, rax
	add	rdx, rcx
	mov	sil, byte ptr [rdx + 8]
	movsxd	rcx, dword ptr [rbp - 0xc]
	imul	rcx, rcx, 0x18
	add	rax, rcx
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	byte ptr [rcx + rax + 0x11], sil
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_890
	.section	.text
	.align	16
	#Procedure 0x409110

	.globl set_speed
	.type set_speed, @function
set_speed:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 0x10]
	call	string_to_baud
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 4], 0
	je	.label_895
	cmp	dword ptr [rbp - 4], 2
	jne	.label_894
.label_895:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x1c]
	call	cfsetispeed
	mov	dword ptr [rbp - 0x20], eax
.label_894:
	cmp	dword ptr [rbp - 4], 1
	je	.label_892
	cmp	dword ptr [rbp - 4], 2
	jne	.label_893
.label_892:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x1c]
	call	cfsetospeed
	mov	dword ptr [rbp - 0x24], eax
.label_893:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40917b
	.globl sub_40917b
	.type sub_40917b, @function
sub_40917b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409180
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
	#Procedure 0x40919f
	.globl sub_40919f
	.type sub_40919f, @function
sub_40919f:

	nop	
.label_898:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_896
.label_896:
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
	je	.label_897
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_897:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4092c3
	.globl sub_4092c3
	.type sub_4092c3, @function
sub_4092c3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4092cf

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
	je	.label_898
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_896
	.section	.text
	.align	16
	#Procedure 0x409300

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
	#Procedure 0x409328
	.globl sub_409328
	.type sub_409328, @function
sub_409328:

	nop	dword ptr [rax + rax]
.label_907:
	movabs	rax, OFFSET FLAT:mode_info
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rcx]
	mov	ecx, edx
	and	rcx, qword ptr [rbp - 0x20]
	movsxd	rsi, dword ptr [rbp - 0xc]
	shl	rsi, 5
	add	rax, rsi
	cmp	rcx, qword ptr [rax + 0x10]
	jne	.label_912
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0xc]
	shl	rcx, 5
	add	rax, rcx
	movsx	edx, byte ptr [rax + 0xc]
	and	edx, 2
	cmp	edx, 0
	je	.label_905
	movabs	rdi, OFFSET FLAT:label_43
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0xc]
	shl	rcx, 5
	add	rax, rcx
	mov	rsi, qword ptr [rax]
	mov	al, 0
	call	wrapf
	mov	byte ptr [rbp - 0xd], 0
.label_905:
	jmp	.label_904
.label_917:
	test	byte ptr [rbp - 0xd], 1
	jne	.label_926
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x34], eax
.label_926:
	jmp	.label_916
.label_916:
	mov	dword ptr [dword ptr [current_col]],  0
	mov	byte ptr [rbp - 0xd], 1
	mov	dword ptr [rbp - 0xc], 0
.label_908:
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0xc]
	shl	rcx, 5
	add	rax, rcx
	cmp	qword ptr [rax], 0
	je	.label_909
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0xc]
	shl	rcx, 5
	add	rax, rcx
	movsx	edx, byte ptr [rax + 0xc]
	and	edx, 8
	cmp	edx, 0
	je	.label_899
	jmp	.label_906
.label_913:
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0xc]
	shl	rcx, 5
	add	rax, rcx
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x40], rax
.label_903:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_901
	jmp	.label_907
.label_921:
	movabs	rax, OFFSET FLAT:control_info
	mov	byte ptr [rbp - 0xd], 0
	movsxd	rcx, dword ptr [rbp - 0xc]
	imul	rcx, rcx, 0x18
	mov	rdx, rax
	add	rdx, rcx
	mov	rsi, qword ptr [rdx]
	movsxd	rcx, dword ptr [rbp - 0xc]
	imul	rcx, rcx, 0x18
	add	rax, rcx
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movzx	edi, byte ptr [rcx + rax + 0x11]
	mov	qword ptr [rbp - 0x30], rsi
	call	visible
	movabs	rdi, OFFSET FLAT:label_918
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, rax
	mov	al, 0
	call	wrapf
.label_920:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_928
.label_923:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0xc]
	and	ecx, 2
	cmp	ecx, 0
	jne	.label_917
	movabs	rdi, OFFSET FLAT:label_922
	mov	rax, qword ptr [rbp - 8]
	movzx	ecx, byte ptr [rax + 0x17]
	mov	esi, ecx
	mov	rax, qword ptr [rbp - 8]
	movzx	ecx, byte ptr [rax + 0x16]
	mov	edx, ecx
	mov	al, 0
	call	wrapf
	jmp	.label_916
.label_912:
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0xc]
	shl	rcx, 5
	add	rax, rcx
	movsx	edx, byte ptr [rax + 0xc]
	and	edx, 5
	cmp	edx, 5
	jne	.label_900
	movabs	rdi, OFFSET FLAT:label_910
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0xc]
	shl	rcx, 5
	add	rax, rcx
	mov	rsi, qword ptr [rax]
	mov	al, 0
	call	wrapf
	mov	byte ptr [rbp - 0xd], 0
.label_900:
	jmp	.label_904
.label_904:
	jmp	.label_906
.label_906:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_908
.label_899:
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0xc]
	shl	rcx, 5
	add	rax, rcx
	mov	edx, dword ptr [rax + 8]
	cmp	edx, dword ptr [rbp - 0x24]
	je	.label_911
	test	byte ptr [rbp - 0xd], 1
	jne	.label_902
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [dword ptr [current_col]],  0
	mov	byte ptr [rbp - 0xd], 1
	mov	dword ptr [rbp - 0x38], eax
.label_902:
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0xc]
	shl	rcx, 5
	add	rax, rcx
	mov	edx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 0x24], edx
.label_911:
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0xc]
	shl	rcx, 5
	add	rax, rcx
	mov	edi, dword ptr [rax + 8]
	mov	rsi, qword ptr [rbp - 8]
	call	mode_type_flag
	movabs	rcx, OFFSET FLAT:mode_info
	mov	qword ptr [rbp - 0x18], rax
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 5
	add	rcx, rax
	cmp	qword ptr [rcx + 0x18], 0
	je	.label_913
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0xc]
	shl	rcx, 5
	add	rax, rcx
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_903
.label_909:
	test	byte ptr [rbp - 0xd], 1
	jne	.label_914
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x44], eax
.label_914:
	mov	dword ptr [dword ptr [current_col]],  0
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409660
	.globl sub_409660
	.type sub_409660, @function
sub_409660:

	nop	word ptr cs:[rax + rax]
.label_901:
	movabs	rdi, OFFSET FLAT:label_876
	movabs	rsi, OFFSET FLAT:label_877
	mov	edx, 0x7a2
	movabs	rcx, OFFSET FLAT:label_915
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x409692

	.globl display_changed
	.type display_changed, @function
display_changed:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	esi, 1
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0x24], 0
	mov	rdi, qword ptr [rbp - 8]
	call	display_speed
	movabs	rdi, OFFSET FLAT:label_927
	mov	rax, qword ptr [rbp - 8]
	movzx	esi, byte ptr [rax + 0x10]
	mov	al, 0
	call	wrapf
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [dword ptr [current_col]],  0
	mov	byte ptr [rbp - 0xd], 1
	mov	dword ptr [rbp - 0xc], 0
	mov	dword ptr [rbp - 0x28], eax
.label_928:
	movabs	rax, OFFSET FLAT:control_info
	movsxd	rcx, dword ptr [rbp - 0xc]
	imul	rcx, rcx, 0x18
	add	rax, rcx
	mov	rdi, qword ptr [rax]
	mov	edx, OFFSET FLAT:label_821
	mov	esi, edx
	call	strcmp
	cmp	eax, 0
	sete	r8b
	xor	r8b, 0xff
	test	r8b, 1
	jne	.label_919
	jmp	.label_923
.label_919:
	movabs	rax, OFFSET FLAT:control_info
	movsxd	rcx, dword ptr [rbp - 0xc]
	imul	rcx, rcx, 0x18
	mov	rdx, rax
	add	rdx, rcx
	mov	rcx, qword ptr [rdx + 0x10]
	mov	rdx, qword ptr [rbp - 8]
	movzx	esi, byte ptr [rdx + rcx + 0x11]
	movsxd	rcx, dword ptr [rbp - 0xc]
	imul	rcx, rcx, 0x18
	add	rax, rcx
	movzx	edi, byte ptr [rax + 8]
	cmp	esi, edi
	jne	.label_924
	jmp	.label_920
.label_924:
	movabs	rax, OFFSET FLAT:control_info
	movsxd	rcx, dword ptr [rbp - 0xc]
	imul	rcx, rcx, 0x18
	add	rax, rcx
	mov	rdi, qword ptr [rax]
	mov	edx, OFFSET FLAT:label_925
	mov	esi, edx
	call	strcmp
	cmp	eax, 0
	jne	.label_921
	jmp	.label_920
.label_931:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0x18]
	mov	rdi, rcx
	call	memset
.label_929:
	cmp	dword ptr [rbp - 4], 0
	jl	.label_933
	mov	eax, dword ptr [rbp - 4]
	mov	cx, ax
	mov	word ptr [rbp - 0x18], cx
.label_933:
	cmp	dword ptr [rbp - 8], 0
	jl	.label_930
	mov	eax, dword ptr [rbp - 8]
	mov	cx, ax
	mov	word ptr [rbp - 0x16], cx
.label_930:
	xor	edi, edi
	mov	eax, 0x5414
	mov	esi, eax
	lea	rcx, [rbp - 0x18]
	mov	rdx, rcx
	mov	al, 0
	call	ioctl
	cmp	eax, 0
	je	.label_932
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x20], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_43
	mov	esi, dword ptr [rbp - 0x20]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_932:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409839
	.globl sub_409839
	.type sub_409839, @function
sub_409839:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409841

	.globl set_window_size
	.type set_window_size, @function
set_window_size:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	lea	rcx, [rbp - 0x18]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	qword ptr [rbp - 0x10], rdx
	mov	edi, eax
	mov	rsi, rcx
	call	get_win_size
	cmp	eax, 0
	je	.label_929
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_931
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x1c], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_43
	mov	esi, dword ptr [rbp - 0x1c]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_935:
	mov	byte ptr [rbp - 1], 0
.label_936:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4098be
	.globl sub_4098be
	.type sub_4098be, @function
sub_4098be:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4098cc
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_935
	jmp	.label_934
.label_934:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_936
.label_939:
	xor	eax, eax
	cmp	eax,  dword ptr [dword ptr [current_col]]
	jge	.label_940
	mov	eax,  dword ptr [dword ptr [max_col]]
	sub	eax,  dword ptr [dword ptr [current_col]]
	cmp	eax, dword ptr [rbp - 0x2c]
	jge	.label_941
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [dword ptr [current_col]],  0
	mov	dword ptr [rbp - 0x19c], eax
	jmp	.label_937
	.section	.text
	.align	16
	#Procedure 0x409936

	.globl wrapf
	.type wrapf, @function
wrapf:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1b0
	test	al, al
	movaps	xmmword ptr [rbp - 0xf0], xmm7
	movaps	xmmword ptr [rbp - 0x100], xmm6
	movaps	xmmword ptr [rbp - 0x110], xmm5
	movaps	xmmword ptr [rbp - 0x120], xmm4
	movaps	xmmword ptr [rbp - 0x130], xmm3
	movaps	xmmword ptr [rbp - 0x140], xmm2
	movaps	xmmword ptr [rbp - 0x150], xmm1
	movaps	xmmword ptr [rbp - 0x160], xmm0
	mov	qword ptr [rbp - 0x168], rdi
	mov	qword ptr [rbp - 0x170], r9
	mov	qword ptr [rbp - 0x178], r8
	mov	qword ptr [rbp - 0x180], rcx
	mov	qword ptr [rbp - 0x188], rdx
	mov	qword ptr [rbp - 0x190], rsi
	je	.label_938
	movaps	xmm0, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x150]
	movaps	xmmword ptr [rbp - 0xa0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x130]
	movaps	xmmword ptr [rbp - 0x80], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x120]
	movaps	xmmword ptr [rbp - 0x70], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x110]
	movaps	xmmword ptr [rbp - 0x60], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0x100]
	movaps	xmmword ptr [rbp - 0x50], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0xf0]
	movaps	xmmword ptr [rbp - 0x40], xmm7
.label_938:
	mov	rax, qword ptr [rbp - 0x170]
	mov	qword ptr [rbp - 0xb8], rax
	mov	rcx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0xc0], rcx
	mov	rdx, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rdx
	mov	rsi, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0xd0], rsi
	mov	rdi, qword ptr [rbp - 0x190]
	mov	qword ptr [rbp - 0xd8], rdi
	mov	r8, qword ptr [rbp - 0x168]
	lea	rdi, [rbp - 0x28]
	lea	r9, [rbp - 0x20]
	mov	qword ptr [rbp - 8], r8
	mov	r8, r9
	lea	r10, [rbp - 0xe0]
	mov	qword ptr [r8 + 0x10], r10
	lea	r10, [rbp + 0x10]
	mov	qword ptr [r8 + 8], r10
	mov	dword ptr [r8 + 4], 0x30
	mov	dword ptr [r8], 8
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, r9
	call	vasprintf
	lea	rcx, [rbp - 0x20]
	mov	dword ptr [rbp - 0x2c], eax
	cmp	dword ptr [rbp - 0x2c], 0
	mov	qword ptr [rbp - 0x198], rcx
	jge	.label_939
	call	xalloc_die
.label_941:
	mov	edi, 0x20
	call	putchar_unlocked
	mov	edi,  dword ptr [dword ptr [current_col]]
	add	edi, 1
	mov	dword ptr [dword ptr [current_col]],  edi
	mov	dword ptr [rbp - 0x1a0], eax
.label_937:
	jmp	.label_940
.label_940:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
	mov	rdi, qword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x1a4], eax
	call	free
	mov	eax, dword ptr [rbp - 0x2c]
	mov	ecx,  dword ptr [dword ptr [rip + current_col]]
	add	ecx, eax
	mov	dword ptr [dword ptr [rip + current_col]],  ecx
	add	rsp, 0x1b0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409b12
	.globl sub_409b12
	.type sub_409b12, @function
sub_409b12:

	nop	word ptr cs:[rax + rax]
.label_951:
	test	byte ptr [rbp - 0x23], 1
	jne	.label_947
	test	byte ptr [rbp - 0x24], 1
	jne	.label_947
	test	byte ptr [rbp - 0x25], 1
	je	.label_950
.label_947:
	call	screen_columns
	movabs	rsi, OFFSET FLAT:main.mode
	mov	dword ptr [dword ptr [max_col]],  eax
	mov	dword ptr [dword ptr [current_col]],  0
	mov	edi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x38]
	call	display_settings
	mov	dword ptr [rbp - 4], 0
	jmp	.label_964
.label_950:
	xor	edi, edi
	movabs	r8, OFFSET FLAT:main.mode
	lea	r9, [rbp - 0x22]
	lea	rax, [rbp - 0x21]
	mov	byte ptr [rbp - 0x22], 0
	mov	byte ptr [rbp - 0x21], 0
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 8]
	mov	qword ptr [rsp], rax
	call	apply_settings
	test	byte ptr [rbp - 0x21], 1
	je	.label_966
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:main.mode
	mov	esi,  dword ptr [dword ptr [tcsetattr_options]]
	call	tcsetattr
	cmp	eax, 0
	je	.label_972
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	dword ptr [rbp - 0x98], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_43
	mov	esi, dword ptr [rbp - 0x98]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_943:
	mov	eax, dword ptr [rbp - 0x1c]
	add	eax, dword ptr [rbp - 0x20]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdx + rcx*8]
	mov	eax, OFFSET FLAT:label_944
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_949
	mov	eax, dword ptr [rbp - 0x1c]
	add	eax, dword ptr [rbp - 0x20]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdx + rcx*8]
	mov	eax, OFFSET FLAT:label_745
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_949
	mov	byte ptr [rbp - 0x25], 0
.label_949:
	mov	eax, dword ptr [rbp - 0x20]
	add	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x1c], eax
	mov	dword ptr [rbp - 0x20], 1
	mov	dword ptr [dword ptr [optind]],  0
.label_962:
	jmp	.label_961
.label_961:
	mov	eax, dword ptr [rbp - 0x20]
	cmp	eax,  dword ptr [dword ptr [optind]]
	jge	.label_963
	mov	eax, dword ptr [rbp - 0x1c]
	mov	ecx, dword ptr [rbp - 0x20]
	mov	edx, ecx
	add	edx, 1
	mov	dword ptr [rbp - 0x20], edx
	add	eax, ecx
	movsxd	rsi, eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + rsi*8], 0
	jmp	.label_961
.label_985:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_962
.label_969:
	test	byte ptr [rbp - 0x23], 1
	je	.label_976
	test	byte ptr [rbp - 0x24], 1
	je	.label_976
	movabs	rdi, OFFSET FLAT:label_981
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_953:
	mov	byte ptr [rbp - 0x24], 1
	mov	dword ptr [rbp - 0x14], 2
	jmp	.label_962
.label_946:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_942
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_960
.label_956:
	jmp	.label_974
.label_974:
	xor	edi, edi
	movabs	rsi, OFFSET FLAT:main.mode
	call	tcgetattr
	cmp	eax, 0
	je	.label_951
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	dword ptr [rbp - 0x94], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_43
	mov	esi, dword ptr [rbp - 0x94]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_984:
	mov	byte ptr [rbp - 0x23], 1
	mov	dword ptr [rbp - 0x14], 1
	jmp	.label_962
.label_977:
	jmp	.label_965
.label_965:
	jmp	.label_966
.label_966:
	mov	dword ptr [rbp - 4], 0
.label_964:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xb0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409da7
	.globl sub_409da7
	.type sub_409da7, @function
sub_409da7:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409daf

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x1c], 0
	mov	dword ptr [rbp - 0x20], 1
	mov	byte ptr [rbp - 0x25], 1
	mov	qword ptr [rbp - 0x30], 0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:label_18
	call	setlocale
	movabs	rdi, OFFSET FLAT:label_989
	movabs	rsi, OFFSET FLAT:label_990
	mov	qword ptr [rbp - 0x48], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:label_989
	mov	qword ptr [rbp - 0x50], rax
	call	textdomain
	movabs	rdi, OFFSET FLAT:close_stdout
	mov	qword ptr [rbp - 0x58], rax
	call	atexit
	mov	dword ptr [rbp - 0x14], 0
	mov	byte ptr [rbp - 0x23], 0
	mov	byte ptr [rbp - 0x24], 0
	mov	dword ptr [dword ptr [opterr]],  0
	mov	dword ptr [rbp - 0x5c], eax
.label_954:
	movabs	rdx, OFFSET FLAT:label_957
	movabs	rcx, OFFSET FLAT:longopts
	xor	eax, eax
	mov	r8d, eax
	mov	eax, dword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0x1c]
	mov	rsi, qword ptr [rbp - 0x10]
	movsxd	rdi, dword ptr [rbp - 0x1c]
	shl	rdi, 3
	add	rsi, rdi
	mov	edi, eax
	call	getopt_long
	mov	dword ptr [rbp - 0x18], eax
	cmp	eax, -1
	je	.label_969
	mov	eax, dword ptr [rbp - 0x18]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	mov	dword ptr [rbp - 0x60], eax
	mov	dword ptr [rbp - 0x64], ecx
	je	.label_971
	jmp	.label_973
.label_973:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0xffffff7e
	mov	dword ptr [rbp - 0x68], eax
	je	.label_975
	jmp	.label_978
.label_978:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x46
	mov	dword ptr [rbp - 0x6c], eax
	je	.label_980
	jmp	.label_983
.label_983:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x61
	mov	dword ptr [rbp - 0x70], eax
	je	.label_984
	jmp	.label_986
.label_986:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x74], eax
	je	.label_953
	jmp	.label_943
.label_971:
	movabs	rsi, OFFSET FLAT:label_635
	movabs	rdx, OFFSET FLAT:label_74
	movabs	r8, OFFSET FLAT:label_945
	xor	eax, eax
	mov	r9d, eax
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	rcx,  qword ptr [word ptr [Version]]
	mov	al, 0
	call	version_etc
	xor	edi, edi
	call	exit
.label_963:
	jmp	.label_954
.label_942:
	movabs	rdi, OFFSET FLAT:label_955
	call	gettext
	mov	qword ptr [rbp - 0x80], rax
.label_960:
	mov	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x38], rax
	test	byte ptr [rbp - 0x25], 1
	jne	.label_958
	test	byte ptr [rbp - 0x23], 1
	jne	.label_958
	test	byte ptr [rbp - 0x24], 1
	jne	.label_958
	mov	edi, 1
	movabs	r8, OFFSET FLAT:main.check_mode
	lea	r9, [rbp - 0x22]
	lea	rax, [rbp - 0x21]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 8]
	mov	qword ptr [rsp], rax
	call	apply_settings
.label_958:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_974
	xor	eax, eax
	mov	edx, 0x800
	mov	rsi, qword ptr [rbp - 0x38]
	mov	edi, eax
	mov	ecx, eax
	call	fd_reopen
	cmp	eax, 0
	jge	.label_982
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	dword ptr [rbp - 0x84], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_43
	mov	esi, dword ptr [rbp - 0x84]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_976:
	test	byte ptr [rbp - 0x25], 1
	jne	.label_946
	test	byte ptr [rbp - 0x23], 1
	jne	.label_948
	test	byte ptr [rbp - 0x24], 1
	je	.label_946
.label_948:
	movabs	rdi, OFFSET FLAT:label_952
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_982:
	xor	edi, edi
	mov	esi, 3
	mov	al, 0
	call	rpl_fcntl
	mov	dword ptr [rbp - 0x3c], eax
	cmp	eax, -1
	je	.label_959
	xor	edi, edi
	mov	esi, 4
	mov	eax, dword ptr [rbp - 0x3c]
	and	eax, 0xfffff7ff
	mov	edx, eax
	mov	al, 0
	call	rpl_fcntl
	cmp	eax, 0
	jge	.label_956
.label_959:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_970
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x88], esi
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x90], rax
	call	quotearg_n_style_colon
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x90]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_975:
	xor	edi, edi
	call	usage
.label_980:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_985
	movabs	rdi, OFFSET FLAT:label_987
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_972:
	xor	edi, edi
	movabs	rsi, OFFSET FLAT:main.new_mode
	call	tcgetattr
	cmp	eax, 0
	je	.label_988
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	dword ptr [rbp - 0x9c], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_43
	mov	esi, dword ptr [rbp - 0x9c]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_988:
	mov	eax, OFFSET FLAT:main.mode
	mov	edi, eax
	mov	eax, OFFSET FLAT:main.new_mode
	mov	esi, eax
	mov	eax, 0x3c
	mov	edx, eax
	call	memcmp
	cmp	eax, 0
	je	.label_965
	mov	eax,  dword ptr [dword ptr [label_967]]
	and	eax, 0xeff0ffff
	mov	dword ptr [dword ptr [label_967]],  eax
	test	byte ptr [rbp - 0x22], 1
	jne	.label_968
	mov	eax, OFFSET FLAT:main.mode
	mov	edi, eax
	mov	eax, OFFSET FLAT:main.new_mode
	mov	esi, eax
	mov	eax, 0x3c
	mov	edx, eax
	call	memcmp
	cmp	eax, 0
	je	.label_977
.label_968:
	movabs	rdi, OFFSET FLAT:label_979
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0xa8], rax
	call	quotearg_n_style_colon
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0xa8]
	mov	rcx, rax
	mov	al, 0
	call	error
	.section	.text
	.align	16
	#Procedure 0x40a210
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
	jb	.label_991
	jmp	.label_993
.label_993:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_991
	jmp	.label_992
.label_992:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_994
	jmp	.label_991
.label_991:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_995
.label_994:
	mov	byte ptr [rbp - 1], 0
.label_995:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a275
	.globl sub_40a275
	.type sub_40a275, @function
sub_40a275:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a280

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	push	rbp
	mov	rbp, rsp
	mov	al, dil
	mov	byte ptr [rbp - 1], al
	movzx	eax, byte ptr [rbp - 1]
	pop	rbp
	ret	
.label_997:
	mov	byte ptr [rbp - 1], 0
.label_998:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a29e
	.globl sub_40a29e
	.type sub_40a29e, @function
sub_40a29e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a2ac
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_997
	jmp	.label_996
.label_996:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_998
	.section	.text
	.align	16
	#Procedure 0x40a2d0
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_999
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1000
.label_999:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1000
.label_1000:
	mov	rax, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a30b
	.globl sub_40a30b
	.type sub_40a30b, @function
sub_40a30b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a310

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
	#Procedure 0x40a34f
	.globl sub_40a34f
	.type sub_40a34f, @function
sub_40a34f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40a350
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
	jb	.label_1001
	jmp	.label_1003
.label_1003:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_1004
	jmp	.label_1001
.label_1001:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1002
.label_1004:
	mov	byte ptr [rbp - 1], 0
.label_1002:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a398
	.globl sub_40a398
	.type sub_40a398, @function
sub_40a398:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a3a0

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
	jne	.label_1005
	test	byte ptr [rbp - 0x13], 1
	je	.label_1007
	test	byte ptr [rbp - 0x11], 1
	jne	.label_1005
	call	__errno_location
	cmp	dword ptr [rax], 9
	je	.label_1007
.label_1005:
	test	byte ptr [rbp - 0x13], 1
	jne	.label_1008
	call	__errno_location
	mov	dword ptr [rax], 0
.label_1008:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1006
.label_1007:
	mov	dword ptr [rbp - 4], 0
.label_1006:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a449
	.globl sub_40a449
	.type sub_40a449, @function
sub_40a449:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a450
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
	#Procedure 0x40a466
	.globl sub_40a466
	.type sub_40a466, @function
sub_40a466:

	nop	word ptr cs:[rax + rax]
.label_1009:
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x1c], eax
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a483
	.globl sub_40a483
	.type sub_40a483, @function
sub_40a483:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a486

	.globl display_recoverable
	.type display_recoverable, @function
display_recoverable:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, OFFSET FLAT:label_1012
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rdi]
	mov	esi, ecx
	mov	rdi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rdi + 4]
	mov	edx, ecx
	mov	rdi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 8]
	mov	r8d, dword ptr [rdi + 0xc]
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	qword ptr [rbp - 0x10], 0
	mov	dword ptr [rbp - 0x14], eax
.label_1010:
	cmp	qword ptr [rbp - 0x10], 0x20
	jae	.label_1009
	movabs	rdi, OFFSET FLAT:label_1011
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movzx	edx, byte ptr [rcx + rax + 0x11]
	mov	esi, edx
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x18], eax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1010
	.section	.text
	.align	16
	#Procedure 0x40a510

	.globl fd_reopen
	.type fd_reopen, @function
fd_reopen:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	dword ptr [rbp - 0x18], ecx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	mov	edx, dword ptr [rbp - 0x18]
	mov	al, 0
	call	open
	mov	dword ptr [rbp - 0x1c], eax
	mov	eax, dword ptr [rbp - 0x1c]
	cmp	eax, dword ptr [rbp - 8]
	je	.label_1014
	cmp	dword ptr [rbp - 0x1c], 0
	jge	.label_1013
.label_1014:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1015
.label_1013:
	mov	edi, dword ptr [rbp - 0x1c]
	mov	esi, dword ptr [rbp - 8]
	call	dup2
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], esi
	mov	edi, dword ptr [rbp - 0x1c]
	call	close
	mov	esi, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x28], eax
	mov	dword ptr [rbp - 0x2c], esi
	call	__errno_location
	mov	esi, dword ptr [rbp - 0x2c]
	mov	dword ptr [rax], esi
	mov	esi, dword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 4], esi
.label_1015:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a59c
	.globl sub_40a59c
	.type sub_40a59c, @function
sub_40a59c:

	nop	dword ptr [rax]
.label_1016:
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0x14]
	shl	rcx, 5
	add	rax, rcx
	movsx	edx, byte ptr [rax + 0xc]
	and	edx, 4
	cmp	edx, 0
	je	.label_1024
	movabs	rdi, OFFSET FLAT:label_910
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0x14]
	shl	rcx, 5
	add	rax, rcx
	mov	rsi, qword ptr [rax]
	mov	al, 0
	call	wrapf
.label_1024:
	jmp	.label_1019
.label_1019:
	jmp	.label_1025
.label_1025:
	mov	eax, dword ptr [rbp - 0x14]
	add	eax, 1
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_1028
.label_1030:
	movabs	rdi, OFFSET FLAT:label_1031
	mov	rax, qword ptr [rbp - 8]
	movzx	ecx, byte ptr [rax + 0x17]
	mov	esi, ecx
	mov	rax, qword ptr [rbp - 8]
	movzx	ecx, byte ptr [rax + 0x16]
	mov	edx, ecx
	mov	al, 0
	call	wrapf
	cmp	dword ptr [dword ptr [current_col]],  0
	je	.label_1029
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x3c], eax
.label_1029:
	mov	dword ptr [dword ptr [current_col]],  0
	mov	dword ptr [rbp - 0x14], 0
.label_1028:
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0x14]
	shl	rcx, 5
	add	rax, rcx
	cmp	qword ptr [rax], 0
	je	.label_1021
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0x14]
	shl	rcx, 5
	add	rax, rcx
	movsx	edx, byte ptr [rax + 0xc]
	and	edx, 8
	cmp	edx, 0
	je	.label_1027
	jmp	.label_1025
.label_1021:
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [dword ptr [current_col]],  0
	mov	dword ptr [rbp - 0x4c], eax
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a6bf
	.globl sub_40a6bf
	.type sub_40a6bf, @function
sub_40a6bf:

	nop	
.label_1018:
	movabs	rax, OFFSET FLAT:mode_info
	mov	rcx, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rcx]
	mov	ecx, edx
	and	rcx, qword ptr [rbp - 0x28]
	movsxd	rsi, dword ptr [rbp - 0x14]
	shl	rsi, 5
	add	rax, rsi
	cmp	rcx, qword ptr [rax + 0x10]
	jne	.label_1016
	movabs	rdi, OFFSET FLAT:label_43
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0x14]
	shl	rcx, 5
	add	rax, rcx
	mov	rsi, qword ptr [rax]
	mov	al, 0
	call	wrapf
	jmp	.label_1019
.label_1026:
	movabs	rdi, OFFSET FLAT:label_876
	movabs	rsi, OFFSET FLAT:label_877
	mov	edx, 0x7f6
	movabs	rcx, OFFSET FLAT:label_1022
	call	__assert_fail
.label_1027:
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0x14]
	shl	rcx, 5
	add	rax, rcx
	mov	edx, dword ptr [rax + 8]
	cmp	edx, dword ptr [rbp - 0x2c]
	je	.label_1017
	mov	edi, 0xa
	call	putchar_unlocked
	movabs	rcx, OFFSET FLAT:mode_info
	mov	dword ptr [dword ptr [current_col]],  0
	movsxd	rdx, dword ptr [rbp - 0x14]
	shl	rdx, 5
	add	rcx, rdx
	mov	edi, dword ptr [rcx + 8]
	mov	dword ptr [rbp - 0x2c], edi
	mov	dword ptr [rbp - 0x40], eax
.label_1017:
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0x14]
	shl	rcx, 5
	add	rax, rcx
	mov	edi, dword ptr [rax + 8]
	mov	rsi, qword ptr [rbp - 8]
	call	mode_type_flag
	movabs	rcx, OFFSET FLAT:mode_info
	mov	qword ptr [rbp - 0x20], rax
	movsxd	rax, dword ptr [rbp - 0x14]
	shl	rax, 5
	add	rcx, rax
	cmp	qword ptr [rcx + 0x18], 0
	je	.label_1020
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0x14]
	shl	rcx, 5
	add	rax, rcx
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1023
	.section	.text
	.align	16
	#Procedure 0x40a7fc

	.globl display_all
	.type display_all, @function
display_all:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	eax, 1
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x2c], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, eax
	call	display_speed
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0x10]
	call	display_window_size
	movabs	rdi, OFFSET FLAT:label_927
	mov	rsi, qword ptr [rbp - 8]
	movzx	esi, byte ptr [rsi + 0x10]
	mov	al, 0
	call	wrapf
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [dword ptr [current_col]],  0
	mov	dword ptr [rbp - 0x14], 0
	mov	dword ptr [rbp - 0x30], eax
.label_1033:
	movabs	rax, OFFSET FLAT:control_info
	movsxd	rcx, dword ptr [rbp - 0x14]
	imul	rcx, rcx, 0x18
	add	rax, rcx
	mov	rdi, qword ptr [rax]
	mov	edx, OFFSET FLAT:label_821
	mov	esi, edx
	call	strcmp
	cmp	eax, 0
	sete	r8b
	xor	r8b, 0xff
	test	r8b, 1
	jne	.label_1034
	jmp	.label_1030
.label_1034:
	movabs	rax, OFFSET FLAT:control_info
	movsxd	rcx, dword ptr [rbp - 0x14]
	imul	rcx, rcx, 0x18
	add	rax, rcx
	mov	rdi, qword ptr [rax]
	mov	edx, OFFSET FLAT:label_925
	mov	esi, edx
	call	strcmp
	cmp	eax, 0
	jne	.label_1032
	jmp	.label_1035
.label_1020:
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0x14]
	shl	rcx, 5
	add	rax, rcx
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x48], rax
.label_1023:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1026
	jmp	.label_1018
.label_1032:
	movabs	rax, OFFSET FLAT:control_info
	movsxd	rcx, dword ptr [rbp - 0x14]
	imul	rcx, rcx, 0x18
	mov	rdx, rax
	add	rdx, rcx
	mov	rsi, qword ptr [rdx]
	movsxd	rcx, dword ptr [rbp - 0x14]
	imul	rcx, rcx, 0x18
	add	rax, rcx
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movzx	edi, byte ptr [rcx + rax + 0x11]
	mov	qword ptr [rbp - 0x38], rsi
	call	visible
	movabs	rdi, OFFSET FLAT:label_918
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, rax
	mov	al, 0
	call	wrapf
.label_1035:
	mov	eax, dword ptr [rbp - 0x14]
	add	eax, 1
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_1033
	.section	.text
	.align	16
	#Procedure 0x40a970

	.globl bkm_scale_by_power_0
	.type bkm_scale_by_power_0, @function
bkm_scale_by_power_0:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	dword ptr [rbp - 0x10], edx
	mov	dword ptr [rbp - 0x14], 0
.label_1037:
	mov	eax, dword ptr [rbp - 0x10]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x10], ecx
	cmp	eax, 0
	je	.label_1036
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	bkm_scale_0
	or	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_1037
.label_1036:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a9bd
	.globl sub_40a9bd
	.type sub_40a9bd, @function
sub_40a9bd:

	nop	dword ptr [rax]
.label_1039:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1038
.label_1038:
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
	#Procedure 0x40aa33
	.globl sub_40aa33
	.type sub_40aa33, @function
sub_40aa33:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40aa41

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
	je	.label_1039
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1038
	.section	.text
	.align	16
	#Procedure 0x40aa70
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
	#Procedure 0x40aa98
	.globl sub_40aa98
	.type sub_40aa98, @function
sub_40aa98:

	nop	dword ptr [rax + rax]
.label_1042:
	mov	byte ptr [rbp - 1], 0
.label_1040:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40aaae
	.globl sub_40aaae
	.type sub_40aaae, @function
sub_40aaae:

	nop	word ptr cs:[rax + rax]
.label_1095:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1040
	.section	.text
	.align	16
	#Procedure 0x40aac6
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
	ja	.label_1042
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1041]]
	jmp	rcx
	.section	.text
	.align	16
	#Procedure 0x40ab55
	.globl sub_40ab55
	.type sub_40ab55, @function
sub_40ab55:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ab62
	.globl sub_40ab62
	.type sub_40ab62, @function
sub_40ab62:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ab86
	.globl sub_40ab86
	.type sub_40ab86, @function
sub_40ab86:

	nop	word ptr cs:[rax + rax]
