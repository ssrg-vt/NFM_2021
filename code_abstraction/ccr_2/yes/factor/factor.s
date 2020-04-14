	.section	.text
	.align	16
	#Procedure 0x4021d0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_14
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_17
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_13
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_24
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_11
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_21
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_9
	mov	ecx, OFFSET FLAT:label_10
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_18
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_18
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_23
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_18:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_19
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_10
	mov	ecx, OFFSET FLAT:label_15
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_12
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_15
	mov	ecx, OFFSET FLAT:label_16
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_14:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_22
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
	nop	
	.section	.text
	.align	16
	#Procedure 0x402370

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x18
	mov	r14, rsi
	mov	r15d, edi
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_27
	call	setlocale
	mov	edi, OFFSET FLAT:label_32
	mov	esi, OFFSET FLAT:label_33
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_32
	call	textdomain
	cmp	qword ptr [rip + lbuf.0],  0
	jne	.label_42
	mov	edi, 0x400
	call	xmalloc
	mov	qword ptr [rip + lbuf.0],  rax
	mov	qword ptr [rip + lbuf.1],  rax
.label_42:
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	edi, OFFSET FLAT:lbuf_flush
	call	atexit
	jmp	.label_39
	nop	dword ptr [rax + rax]
.label_30:
	mov	byte ptr [rip + dev_debug],  1
.label_39:
	mov	edx, OFFSET FLAT:label_27
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, r15d
	mov	rsi, r14
	call	getopt_long
	cmp	eax, 0x7f
	jle	.label_29
	cmp	eax, 0x80
	je	.label_30
	jmp	.label_34
.label_29:
	cmp	eax, -1
	jne	.label_38
	movsxd	rax, dword ptr [rip + optind]
	cmp	eax, r15d
	jge	.label_40
	lea	rbp, [r14 + rax*8]
	sub	r15d, eax
	mov	bl, 1
	nop	
.label_45:
	mov	rdi, qword ptr [rbp]
	call	print_factors
	mov	r14d, eax
	test	r14b, r14b
	je	.label_28
	mov	r14d, ebx
.label_28:
	add	rbp, 8
	dec	r15d
	mov	ebx, r14d
	jne	.label_45
	jmp	.label_44
.label_40:
	lea	rbx, [rsp + 8]
	mov	rdi, rbx
	call	init_tokenbuffer
	mov	rdi, qword ptr [rip + stdin]
	mov	esi, OFFSET FLAT:label_37
	mov	edx, 3
	mov	rcx, rbx
	call	readtoken
	cmp	rax, -1
	mov	r14b, 1
	mov	rdi, qword ptr [rsp + 0x10]
	je	.label_43
	mov	bl, 1
	lea	rbp, [rsp + 8]
	nop	dword ptr [rax]
.label_46:
	call	print_factors
	and	bl, al
	mov	rdi, qword ptr [rip + stdin]
	mov	esi, OFFSET FLAT:label_37
	mov	edx, 3
	mov	rcx, rbp
	call	readtoken
	mov	rdi, qword ptr [rsp + 0x10]
	cmp	rax, -1
	jne	.label_46
	test	bl, bl
	setne	r14b
.label_43:
	call	free
.label_44:
	not	r14b
	and	r14b, 1
	movzx	eax, r14b
	add	rsp, 0x18
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_38:
	cmp	eax, 0xffffff7d
	je	.label_41
	cmp	eax, 0xffffff7e
	jne	.label_34
	xor	edi, edi
	call	usage
.label_41:
	mov	r14, qword ptr [rip + stdout]
	mov	r15, qword ptr [rip + Version]
	mov	edi, OFFSET FLAT:label_25
	mov	esi, OFFSET FLAT:label_26
	call	proper_name_utf8
	mov	rbx, rax
	mov	edi, OFFSET FLAT:label_35
	mov	esi, OFFSET FLAT:label_36
	call	proper_name_utf8
	mov	rbp, rax
	mov	esi, OFFSET FLAT:label_15
	mov	edx, OFFSET FLAT:label_9
	mov	r8d, OFFSET FLAT:label_31
	mov	eax, 0
	mov	rdi, r14
	mov	rcx, r15
	mov	r9, rbx
	push	0
	push	rbp
	call	version_etc
	add	rsp, 0x10
	xor	edi, edi
	call	exit
.label_34:
	mov	edi, 1
	call	usage
	nop	
	.section	.text
	.align	16
	#Procedure 0x402570

	.globl lbuf_flush
	.type lbuf_flush, @function
lbuf_flush:
	push	rbx
	mov	rbx, qword ptr [rip + lbuf.1]
	mov	rsi, qword ptr [rip + lbuf.0]
	sub	rbx, rsi
	mov	edi, 1
	mov	rdx, rbx
	call	full_write
	cmp	rax, rbx
	jne	.label_49
	mov	rax, qword ptr [rip + lbuf.0]
	mov	qword ptr [rip + lbuf.1],  rax
	pop	rbx
	ret	
.label_49:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_47
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_48
	xor	eax, eax
	mov	esi, ebx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4025e0

	.globl print_factors
	.type print_factors, @function
print_factors:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x120
	mov	r14, rdi
	mov	rax, r14
	jmp	.label_73
	nop	word ptr [rax + rax]
.label_51:
	inc	rax
.label_73:
	movzx	ecx, byte ptr [rax]
	cmp	cl, 0x20
	je	.label_51
	cmp	cl, 0x2b
	jne	.label_52
	inc	rax
.label_52:
	mov	dl, 4
	mov	rcx, rax
	nop	dword ptr [rax + rax]
.label_64:
	movsx	esi, byte ptr [rcx]
	test	esi, esi
	je	.label_61
	inc	rcx
	add	esi, -0x30
	xor	edx, edx
	cmp	esi, 9
	jbe	.label_64
	jmp	.label_69
.label_61:
	test	dl, 7
	je	.label_70
.label_69:
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_67
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r14
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_63:
	mov	eax, r15d
	add	rsp, 0x120
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_70:
	xor	r15d, r15d
	movabs	rcx, 0x1999999999999999
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_62:
	movsx	rdx, byte ptr [rax]
	test	rdx, rdx
	je	.label_80
	cmp	rbx, rcx
	ja	.label_58
	inc	rax
	add	edx, -0x30
	add	rbx, rbx
	lea	rsi, [rbx + rbx*4]
	mov	rdi, r15
	shr	rdi, 0x3d
	mov	rbx, r15
	shr	rbx, 0x3f
	add	rbx, rdi
	add	r15, r15
	lea	rdi, [r15 + r15*4]
	cmp	rdi, r15
	adc	rbx, 0
	add	rdx, rdi
	adc	rbx, 0
	add	rbx, rsi
	mov	r15, rdx
	jae	.label_62
	jmp	.label_58
.label_80:
	movabs	rax, 0x7fffffffffffffff
	and	rax, rbx
	cmp	rax, rbx
	jne	.label_58
	cmp	byte ptr [rip + dev_debug],  1
	jne	.label_84
	mov	rdi, qword ptr [rip + stderr]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_50
	xor	eax, eax
	call	__fprintf_chk
.label_84:
	mov	rdi, rbx
	mov	rsi, r15
	call	print_uintmaxes
	mov	rax, qword ptr [rip + lbuf.1]
	lea	rcx, [rax + 1]
	mov	qword ptr [rip + lbuf.1],  rcx
	mov	byte ptr [rax], 0x3a
	lea	rdx, [rsp + 0x20]
	mov	rdi, rbx
	mov	rsi, r15
	call	factor
	mov	al, byte ptr [rsp + 0x11a]
	test	al, al
	je	.label_76
	xor	r15d, r15d
	lea	r14, [rsp]
	nop	
.label_68:
	mov	r15d, r15d
	cmp	byte ptr [rsp + r15 + 0x100], 0
	je	.label_79
	xor	ebp, ebp
	mov	rax, qword ptr [rip + lbuf.1]
	nop	word ptr [rax + rax]
.label_71:
	lea	rcx, [rax + 1]
	mov	qword ptr [rip + lbuf.1],  rcx
	mov	byte ptr [rax], 0x20
	mov	rdi, qword ptr [rsp + r15*8 + 0x30]
	mov	rsi, r14
	call	umaxtostr
	mov	rbx, r14
	sub	rbx, rax
	lea	rdx, [rbx + 0x14]
	mov	r12, qword ptr [rip + lbuf.1]
	mov	rdi, r12
	mov	rsi, rax
	call	memcpy
	lea	rax, [r12 + rbx + 0x14]
	mov	qword ptr [rip + lbuf.1],  rax
	inc	ebp
	movzx	ecx, byte ptr [rsp + r15 + 0x100]
	cmp	ebp, ecx
	jb	.label_71
	mov	al, byte ptr [rsp + 0x11a]
.label_79:
	inc	r15d
	movzx	ecx, al
	cmp	r15d, ecx
	jb	.label_68
.label_76:
	cmp	qword ptr [rsp + 0x28], 0
	je	.label_81
	mov	rax, qword ptr [rip + lbuf.1]
	lea	rcx, [rax + 1]
	mov	qword ptr [rip + lbuf.1],  rcx
	mov	byte ptr [rax], 0x20
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 0x28]
	call	print_uintmaxes
.label_81:
	mov	rax, qword ptr [rip + lbuf.1]
	lea	rbx, [rax + 1]
	mov	qword ptr [rip + lbuf.1],  rbx
	mov	byte ptr [rax], 0xa
	sub	rbx, qword ptr [rip + lbuf.0]
	mov	eax, dword ptr [rip + lbuf_putc.line_buffered]
	cmp	eax, -1
	jne	.label_55
	xor	edi, edi
	call	isatty
	mov	dword ptr [rip + lbuf_putc.line_buffered],  eax
.label_55:
	test	eax, eax
	je	.label_75
	mov	rbx, qword ptr [rip + lbuf.1]
	mov	rsi, qword ptr [rip + lbuf.0]
	sub	rbx, rsi
	mov	edi, 1
	mov	rdx, rbx
	call	full_write
	cmp	rax, rbx
	jne	.label_56
	mov	rax, qword ptr [rip + lbuf.0]
	mov	qword ptr [rip + lbuf.1],  rax
	mov	r15b, 1
	jmp	.label_63
.label_58:
	cmp	byte ptr [rip + dev_debug],  1
	jne	.label_53
	mov	rdi, qword ptr [rip + stderr]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_57
	xor	eax, eax
	call	__fprintf_chk
.label_53:
	lea	rbx, [rsp]
	mov	edx, 0xa
	mov	rdi, rbx
	mov	rsi, r14
	call	__gmpz_init_set_str
	mov	edi, OFFSET FLAT:label_74
	xor	eax, eax
	mov	rsi, rbx
	call	__gmp_printf
	lea	rsi, [rsp + 0x20]
	mov	rdi, rbx
	call	mp_factor
	mov	rcx, qword ptr [rsp + 0x30]
	test	rcx, rcx
	je	.label_72
	mov	rax, qword ptr [rsp + 0x28]
	xor	ebx, ebx
	nop	
.label_66:
	cmp	qword ptr [rax + rbx*8], 0
	je	.label_82
	mov	ebp, 1
	nop	dword ptr [rax]
.label_59:
	mov	rsi, rbx
	shl	rsi, 4
	add	rsi, qword ptr [rsp + 0x20]
	mov	edi, OFFSET FLAT:label_77
	xor	eax, eax
	call	__gmp_printf
	mov	ecx, ebp
	mov	rax, qword ptr [rsp + 0x28]
	inc	ebp
	cmp	rcx, qword ptr [rax + rbx*8]
	jb	.label_59
	mov	rcx, qword ptr [rsp + 0x30]
.label_82:
	lea	ebx, [rbx + 1]
	cmp	rbx, rcx
	jb	.label_66
	test	rcx, rcx
	je	.label_72
	mov	ebx, 1
	xor	edi, edi
.label_78:
	shl	rdi, 4
	add	rdi, qword ptr [rsp + 0x20]
	call	__gmpz_clear
	mov	edi, ebx
	inc	ebx
	cmp	rdi, qword ptr [rsp + 0x30]
	jb	.label_78
.label_72:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	rdi, qword ptr [rsp + 0x28]
	call	free
	lea	rdi, [rsp]
	call	__gmpz_clear
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_83
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_60:
	mov	rdi, qword ptr [rip + stdout]
	call	fflush_unlocked
	mov	r15b, 1
	jmp	.label_63
.label_75:
	cmp	rbx, 0x200
	jb	.label_65
	mov	r14, qword ptr [rip + lbuf.1]
	mov	rsi, qword ptr [rip + lbuf.0]
	lea	rbx, [rsi + 0x201]
	nop	dword ptr [rax + rax]
.label_54:
	cmp	byte ptr [rbx - 2], 0xa
	lea	rbx, [rbx - 1]
	jne	.label_54
	mov	qword ptr [rip + lbuf.1],  rbx
	mov	r15, rbx
	sub	r15, rsi
	mov	edi, 1
	mov	rdx, r15
	call	full_write
	cmp	rax, r15
	jne	.label_56
	mov	r15, qword ptr [rip + lbuf.0]
	sub	r14, rbx
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r14
	call	memcpy
	add	r14, r15
	mov	qword ptr [rip + lbuf.1],  r14
.label_65:
	mov	r15b, 1
	jmp	.label_63
.label_83:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_60
.label_56:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_47
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_48
	xor	eax, eax
	mov	esi, ebx
	call	error
	.section	.text
	.align	16
	#Procedure 0x402a60

	.globl mp_factor
	.type mp_factor, @function
mp_factor:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x20
	mov	r14, rsi
	mov	r15, rdi
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	qword ptr [r14 + 0x10], 0
	cmp	dword ptr [r15 + 4], 0
	je	.label_91
	cmp	byte ptr [rip + dev_debug],  1
	jne	.label_87
	mov	rdi, qword ptr [rip + stderr]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_90
	xor	eax, eax
	call	__fprintf_chk
.label_87:
	lea	rdi, [rsp]
	call	__gmpz_init
	xor	esi, esi
	mov	rdi, r15
	call	__gmpz_scan1
	mov	rbx, rax
	mov	rdi, r15
	mov	rsi, r15
	mov	rdx, rbx
	call	__gmpz_fdiv_q_2exp
	test	rbx, rbx
	je	.label_89
	lea	r12, [rsp + 0x10]
	nop	dword ptr [rax]
.label_85:
	mov	esi, 2
	mov	rdi, r12
	call	__gmpz_init_set_ui
	mov	rdi, r14
	mov	rsi, r12
	call	mp_factor_insert
	mov	rdi, r12
	call	__gmpz_clear
	dec	rbx
	jne	.label_85
.label_89:
	mov	ebx, 3
	mov	r13d, 1
	lea	r12, [rsp + 0x10]
	nop	word ptr cs:[rax + rax]
.label_86:
	cmp	r13, 0x29c
	jbe	.label_92
	jmp	.label_95
	nop	dword ptr [rax + rax]
.label_94:
	mov	rdi, r15
	mov	rsi, r15
	mov	rdx, rbx
	call	__gmpz_tdiv_q_ui
	mov	rdi, r12
	mov	rsi, rbx
	call	__gmpz_init_set_ui
	mov	rdi, r14
	mov	rsi, r12
	call	mp_factor_insert
	mov	rdi, r12
	call	__gmpz_clear
.label_92:
	mov	rdi, r15
	mov	rsi, rbx
	call	__gmpz_divisible_ui_p
	test	eax, eax
	jne	.label_94
	movzx	eax, byte ptr [r13 + primes_diff]
	inc	r13
	add	rbx, rax
	mov	rsi, rbx
	imul	rsi, rsi
	mov	rdi, r15
	call	__gmpz_cmp_ui
	test	eax, eax
	jns	.label_86
.label_95:
	lea	rdi, [rsp]
	call	__gmpz_clear
	mov	esi, 1
	mov	rdi, r15
	call	__gmpz_cmp_ui
	test	eax, eax
	je	.label_91
	cmp	byte ptr [rip + dev_debug],  1
	jne	.label_93
	mov	rdi, qword ptr [rip + stderr]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_96
	xor	eax, eax
	call	__fprintf_chk
.label_93:
	mov	rdi, r15
	call	mp_prime_p
	test	al, al
	je	.label_88
	mov	rdi, r14
	mov	rsi, r15
	call	mp_factor_insert
	jmp	.label_91
.label_88:
	mov	esi, 1
	mov	rdi, r15
	mov	rdx, r14
	call	mp_factor_using_pollard_rho
.label_91:
	add	rsp, 0x20
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x402c00

	.globl print_uintmaxes
	.type print_uintmaxes, @function
print_uintmaxes:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x30
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_97
	mov	r9, rdi
	shr	r9, 9
	movabs	r8, 0x44b82fa09b5a53
	mov	rax, r9
	mul	r8
	shr	rdx, 0xb
	imul	rax, rdx, 0x3b9aca00
	sub	rdi, rax
	mov	eax, 0xffffffc0
	mov	edx, 0x3b9aca00
	xor	esi, esi
	xor	ecx, ecx
	nop	dword ptr [rax]
.label_102:
	shrd	rcx, rdx, 1
	shr	rdx, 1
	add	rsi, rsi
	cmp	rdi, rdx
	ja	.label_100
	jne	.label_98
	cmp	rbx, rcx
	jb	.label_98
.label_100:
	or	rsi, 1
	mov	qword ptr [rsp + 8], rdx
	mov	qword ptr [rsp], rcx
	sub	rbx, qword ptr [rsp]
	sbb	rdi, qword ptr [rsp + 8]
.label_98:
	inc	eax
	jne	.label_102
	mov	rax, r9
	mul	r8
	shr	rdx, 0xb
	mov	rdi, rdx
	call	print_uintmaxes
	lea	r12, [rsp + 0x10]
	mov	rdi, rbx
	mov	rsi, r12
	call	umaxtostr
	mov	r14, rax
	mov	rbx, r12
	sub	rbx, r14
	add	rbx, 0x14
	mov	r15, qword ptr [rip + lbuf.1]
	cmp	rbx, 8
	ja	.label_99
	mov	r13, -0xb
	sub	r13, r12
	add	r13, r14
	mov	esi, 0x30
	mov	rdi, r15
	mov	rdx, r13
	call	memset
	add	r15, r13
	mov	qword ptr [rip + lbuf.1],  r15
.label_99:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	add	r15, rbx
	mov	qword ptr [rip + lbuf.1],  r15
	jmp	.label_101
.label_97:
	lea	r14, [rsp + 0x10]
	mov	rdi, rbx
	mov	rsi, r14
	call	umaxtostr
	sub	r14, rax
	lea	rdx, [r14 + 0x14]
	mov	rbx, qword ptr [rip + lbuf.1]
	mov	rdi, rbx
	mov	rsi, rax
	call	memcpy
	lea	rax, [rbx + r14 + 0x14]
	mov	qword ptr [rip + lbuf.1],  rax
.label_101:
	add	rsp, 0x30
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d50

	.globl factor
	.type factor, @function
factor:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r8, rdx
	mov	r12, rsi
	mov	byte ptr [r8 + 0xfa], 0
	mov	qword ptr [r8 + 8], 0
	test	rdi, rdi
	jne	.label_131
	cmp	r12, 2
	jb	.label_134
.label_131:
	test	r12b, 1
	jne	.label_106
	test	r12, r12
	je	.label_107
	mov	qword ptr [rsp + 0x30], r12
	bsf	rcx, qword ptr [rsp + 0x30]
	shrd	r12, rdi, cl
	shr	rdi, cl
	mov	rbp, rdi
	jmp	.label_108
.label_107:
	mov	qword ptr [rsp + 0x28], rdi
	bsf	rcx, qword ptr [rsp + 0x28]
	shr	rdi, cl
	add	ecx, 0x40
	mov	r12, rdi
	xor	ebp, ebp
.label_108:
	mov	esi, 2
	mov	rdi, r8
	mov	edx, ecx
	mov	rbx, r8
	call	factor_insert_multiplicity
	mov	r8, rbx
	mov	rdi, rbp
.label_106:
	xor	ebp, ebp
	mov	r10d, 3
	test	rdi, rdi
	je	.label_133
	mov	r10d, 3
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_112:
	mov	rsi, rbp
	shl	rsi, 4
	mov	r14, qword ptr [rsi + primes_dtab]
	mov	rcx, r14
	imul	rcx, r12
	mov	qword ptr [rsp + 0x20], r10
	mov	rax, rcx
	mul	qword ptr [rsp + 0x20]
	cmp	rdi, rdx
	jb	.label_117
	mov	r15, qword ptr [rsi + label_113]
	mov	rbx, rdi
	mov	r13, r12
.label_137:
	mov	r12, r13
	mov	rdi, rbx
	mov	r13, rcx
	sub	rbx, rdx
	imul	rbx, r14
	cmp	rbx, r15
	ja	.label_117
	mov	edx, 1
	mov	rdi, r8
	mov	rsi, r10
	mov	r12, r8
	mov	qword ptr [rsp], r10
	call	factor_insert_multiplicity
	mov	r10, qword ptr [rsp]
	mov	r8, r12
	mov	rcx, r13
	imul	rcx, r14
	mov	qword ptr [rsp + 0x18], r10
	mov	rax, rcx
	mul	qword ptr [rsp + 0x18]
	cmp	rbx, rdx
	mov	r12, r13
	mov	rdi, rbx
	jae	.label_137
	nop	word ptr cs:[rax + rax]
.label_117:
	movzx	eax, byte ptr [rbp + label_104]
	inc	rbp
	add	r10, rax
	cmp	rbp, 0x29b
	ja	.label_105
	test	rdi, rdi
	jne	.label_112
.label_105:
	cmp	ebp, 0x29b
	jbe	.label_115
	jmp	.label_109
.label_133:
	xor	edi, edi
	jmp	.label_115
.label_147:
	lea	eax, [rsi + 1]
	movzx	eax, byte ptr [rax + primes_diff]
	add	rax, r10
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp], rdi
	mov	qword ptr [rsp + 8], rsi
.label_125:
	mov	edx, 1
	mov	rdi, r8
	mov	rsi, qword ptr [rsp + 0x10]
	mov	r15, r8
	mov	r12, r10
	call	factor_insert_multiplicity
	mov	rsi, qword ptr [rsp + 8]
	mov	r10, r12
	mov	rdi, qword ptr [rsp]
	mov	r8, r15
	mov	r12, rbx
	imul	rbx, r14
	cmp	rbx, rbp
	ja	.label_140
	jmp	.label_125
.label_114:
	lea	eax, [rsi + 1]
	movzx	eax, byte ptr [rax + primes_diff]
	add	rax, r10
	lea	ecx, [rsi + 2]
	movzx	ecx, byte ptr [rcx + primes_diff]
	add	rcx, rax
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp], rdi
	mov	qword ptr [rsp + 8], rsi
.label_119:
	mov	edx, 1
	mov	rdi, r8
	mov	rsi, qword ptr [rsp + 0x10]
	mov	r15, r8
	mov	r12, r10
	call	factor_insert_multiplicity
	mov	rsi, qword ptr [rsp + 8]
	mov	r10, r12
	mov	rdi, qword ptr [rsp]
	mov	r8, r15
	mov	r12, rbx
	imul	rbx, r14
	cmp	rbx, rbp
	ja	.label_128
	jmp	.label_119
.label_124:
	lea	eax, [rsi + 1]
	movzx	eax, byte ptr [rax + primes_diff]
	add	rax, r10
	lea	ecx, [rsi + 2]
	lea	edx, [rsi + 3]
	movzx	ecx, byte ptr [rcx + primes_diff]
	add	rcx, rax
	movzx	eax, byte ptr [rdx + primes_diff]
	add	rax, rcx
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp], rdi
	mov	qword ptr [rsp + 8], rsi
.label_135:
	mov	edx, 1
	mov	rdi, r8
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rbx, r8
	mov	r12, r10
	call	factor_insert_multiplicity
	mov	rsi, qword ptr [rsp + 8]
	mov	r10, r12
	mov	rdi, qword ptr [rsp]
	mov	r8, rbx
	mov	r12, rbp
	imul	rbp, r14
	cmp	rbp, r15
	ja	.label_122
	jmp	.label_135
.label_130:
	lea	eax, [rsi + 1]
	movzx	eax, byte ptr [rax + primes_diff]
	add	rax, r10
	lea	ecx, [rsi + 2]
	lea	edx, [rsi + 3]
	lea	ebx, [rsi + 4]
	movzx	ecx, byte ptr [rcx + primes_diff]
	add	rcx, rax
	movzx	eax, byte ptr [rdx + primes_diff]
	add	rax, rcx
	movzx	ecx, byte ptr [rbx + primes_diff]
	add	rcx, rax
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp], rdi
	mov	qword ptr [rsp + 8], rsi
.label_127:
	mov	edx, 1
	mov	rdi, r8
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rbx, r8
	mov	r12, r10
	call	factor_insert_multiplicity
	mov	rsi, qword ptr [rsp + 8]
	mov	r10, r12
	mov	rdi, qword ptr [rsp]
	mov	r8, rbx
	mov	r12, rbp
	imul	rbp, r14
	cmp	rbp, r15
	ja	.label_123
	jmp	.label_127
.label_138:
	lea	eax, [rsi + 1]
	movzx	eax, byte ptr [rax + primes_diff]
	add	rax, r10
	lea	ecx, [rsi + 2]
	lea	edx, [rsi + 3]
	lea	ebx, [rsi + 4]
	lea	r9d, [rsi + 5]
	movzx	ecx, byte ptr [rcx + primes_diff]
	add	rcx, rax
	movzx	eax, byte ptr [rdx + primes_diff]
	add	rax, rcx
	movzx	ecx, byte ptr [rbx + primes_diff]
	add	rcx, rax
	movzx	eax, byte ptr [r9 + primes_diff]
	add	rax, rcx
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp], rdi
	mov	qword ptr [rsp + 8], rsi
.label_121:
	mov	edx, 1
	mov	rdi, r8
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rbx, r8
	mov	r12, r10
	call	factor_insert_multiplicity
	mov	rsi, qword ptr [rsp + 8]
	mov	r10, r12
	mov	rdi, qword ptr [rsp]
	mov	r8, rbx
	mov	r12, rbp
	imul	rbp, r14
	cmp	rbp, r15
	ja	.label_126
	jmp	.label_121
.label_136:
	lea	eax, [rsi + 1]
	movzx	eax, byte ptr [rax + primes_diff]
	add	rax, r10
	lea	ecx, [rsi + 2]
	lea	edx, [rsi + 3]
	lea	ebx, [rsi + 4]
	lea	r11d, [rsi + 5]
	lea	r9d, [rsi + 6]
	movzx	ecx, byte ptr [rcx + primes_diff]
	add	rcx, rax
	movzx	eax, byte ptr [rdx + primes_diff]
	add	rax, rcx
	movzx	ecx, byte ptr [rbx + primes_diff]
	add	rcx, rax
	movzx	eax, byte ptr [r11 + primes_diff]
	add	rax, rcx
	movzx	ecx, byte ptr [r9 + primes_diff]
	add	rcx, rax
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp], rdi
	mov	qword ptr [rsp + 8], rsi
.label_129:
	mov	edx, 1
	mov	rdi, r8
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rbx, r8
	mov	r12, r10
	call	factor_insert_multiplicity
	mov	rsi, qword ptr [rsp + 8]
	mov	r10, r12
	mov	rdi, qword ptr [rsp]
	mov	r8, rbx
	mov	r12, rbp
	imul	rbp, r14
	cmp	rbp, r15
	ja	.label_120
	jmp	.label_129
.label_111:
	lea	eax, [rsi + 1]
	movzx	eax, byte ptr [rax + primes_diff]
	add	rax, r10
	lea	ecx, [rsi + 2]
	lea	edx, [rsi + 3]
	lea	ebp, [rsi + 4]
	lea	ebx, [rsi + 5]
	lea	r11d, [rsi + 6]
	lea	r9d, [rsi + 7]
	movzx	ecx, byte ptr [rcx + primes_diff]
	add	rcx, rax
	movzx	eax, byte ptr [rdx + primes_diff]
	add	rax, rcx
	movzx	ecx, byte ptr [rbp + primes_diff]
	add	rcx, rax
	movzx	eax, byte ptr [rbx + primes_diff]
	add	rax, rcx
	movzx	ecx, byte ptr [r11 + primes_diff]
	add	rcx, rax
	movzx	eax, byte ptr [r9 + primes_diff]
	add	rax, rcx
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp], rdi
	mov	qword ptr [rsp + 8], rsi
.label_118:
	mov	r12, r14
	mov	edx, 1
	mov	rdi, r8
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rbx, r8
	mov	rbp, r10
	call	factor_insert_multiplicity
	mov	rsi, qword ptr [rsp + 8]
	mov	r10, rbp
	mov	rdi, qword ptr [rsp]
	mov	r8, rbx
	imul	r14, r15
	cmp	r14, r13
	ja	.label_139
	jmp	.label_118
	nop	
.label_115:
	mov	esi, ebp
	mov	rax, rsi
	shl	rax, 4
	lea	r13, qword ptr [rax + primes_dtab]
	mov	r14, qword ptr [rax + primes_dtab]
	mov	rbx, r14
	imul	rbx, r12
	mov	rbp, qword ptr [rax + label_113]
	jmp	.label_116
.label_103:
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp], rdi
	mov	edx, 1
	mov	rdi, r8
	mov	rsi, r10
	mov	r15, r8
	mov	r12, r10
	call	factor_insert_multiplicity
	mov	rsi, qword ptr [rsp + 8]
	mov	r10, r12
	mov	rdi, qword ptr [rsp]
	mov	r8, r15
	mov	r12, rbx
	imul	rbx, r14
	nop	dword ptr [rax]
.label_116:
	cmp	rbx, rbp
	jbe	.label_103
	mov	r14, qword ptr [r13 + 0x10]
	mov	rbp, qword ptr [r13 + 0x18]
	mov	rbx, r14
	imul	rbx, r12
	cmp	rbx, rbp
	jbe	.label_147
.label_140:
	mov	r14, qword ptr [r13 + 0x20]
	mov	rbp, qword ptr [r13 + 0x28]
	mov	rbx, r14
	imul	rbx, r12
	cmp	rbx, rbp
	jbe	.label_114
.label_128:
	mov	r14, qword ptr [r13 + 0x30]
	mov	r15, qword ptr [r13 + 0x38]
	mov	rbp, r14
	imul	rbp, r12
	cmp	rbp, r15
	jbe	.label_124
.label_122:
	mov	r14, qword ptr [r13 + 0x40]
	mov	r15, qword ptr [r13 + 0x48]
	mov	rbp, r14
	imul	rbp, r12
	cmp	rbp, r15
	jbe	.label_130
.label_123:
	mov	r14, qword ptr [r13 + 0x50]
	mov	r15, qword ptr [r13 + 0x58]
	mov	rbp, r14
	imul	rbp, r12
	cmp	rbp, r15
	jbe	.label_138
.label_126:
	mov	r14, qword ptr [r13 + 0x60]
	mov	r15, qword ptr [r13 + 0x68]
	mov	rbp, r14
	imul	rbp, r12
	cmp	rbp, r15
	jbe	.label_136
.label_120:
	mov	r15, qword ptr [r13 + 0x70]
	mov	r13, qword ptr [r13 + 0x78]
	mov	r14, r15
	imul	r14, r12
	cmp	r14, r13
	jbe	.label_111
.label_139:
	movzx	eax, byte ptr [rsi + primes_diff8]
	lea	ebp, [rsi + 8]
	cmp	ebp, 0x29b
	ja	.label_109
	add	r10, rax
	mov	rax, r10
	imul	rax, rax
	cmp	rax, r12
	jbe	.label_115
.label_109:
	test	rdi, rdi
	jne	.label_132
	cmp	r12, 2
	jb	.label_134
.label_132:
	mov	rbx, r8
	mov	rsi, r12
	mov	rbp, rdi
	call	prime2_p
	test	al, al
	je	.label_141
	test	rbp, rbp
	mov	rdi, rbx
	je	.label_142
	cmp	qword ptr [rdi + 8], 0
	jne	.label_146
	mov	qword ptr [rdi], r12
	mov	qword ptr [rdi + 8], rbp
.label_134:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_141:
	test	rbp, rbp
	mov	rcx, rbx
	mov	rdi, rbp
	je	.label_110
	mov	edx, 1
	mov	rsi, r12
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	factor_using_pollard_rho2
.label_142:
	mov	edx, 1
	mov	rsi, r12
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	factor_insert_multiplicity
.label_110:
	mov	esi, 1
	mov	rdi, r12
	mov	rdx, rcx
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	factor_using_pollard_rho
.label_146:
	mov	edi, OFFSET FLAT:label_143
	mov	esi, OFFSET FLAT:label_144
	mov	edx, 0x235
	mov	ecx, OFFSET FLAT:label_145
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403410

	.globl prime2_p
	.type prime2_p, @function
prime2_p:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x208
	mov	r14, rsi
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_151
	cmp	r14, 1
	mov	rbp, rbx
	sbb	rbp, 0
	mov	r15, r14
	dec	r15
	je	.label_157
	mov	qword ptr [rsp + 0x100], r15
	bsf	rcx, qword ptr [rsp + 0x100]
	mov	rax, r15
	shrd	rax, rbp, cl
	mov	rdx, rbp
	mov	dword ptr [rsp + 4], ecx
	shr	rdx, cl
	jmp	.label_161
.label_151:
	mov	rdi, r14
	call	prime_p
	jmp	.label_150
.label_157:
	mov	qword ptr [rsp + 0xf8], rbp
	bsf	rcx, qword ptr [rsp + 0xf8]
	mov	rax, rbp
	shr	rax, cl
	add	ecx, 0x40
	mov	dword ptr [rsp + 4], ecx
	xor	edx, edx
.label_161:
	mov	qword ptr [rsp + 0x80], rax
	mov	qword ptr [rsp + 0x88], rdx
	mov	eax, r14d
	shr	eax, 1
	and	eax, 0x7f
	movzx	ecx, byte ptr [rax + binvert_table]
	mov	rdx, rcx
	imul	rdx, r14
	mov	eax, 2
	mov	esi, 2
	sub	rsi, rdx
	imul	rsi, rcx
	mov	rcx, rsi
	imul	rcx, r14
	mov	edx, 2
	sub	rdx, rcx
	imul	rdx, rsi
	mov	qword ptr [rsp + 8], rdx
	mov	rcx, rdx
	imul	rcx, r14
	sub	rax, rcx
	xor	r13d, r13d
	cmp	rbx, 1
	seta	r13b
	mov	edx, 0x3f
	mov	ecx, 0x7f
	cmova	rcx, rdx
	mov	r12, r13
	xor	r12, 1
	not	rcx
	nop	dword ptr [rax]
.label_163:
	shld	r13, r12, 1
	add	r12, r12
	cmp	r13, rbx
	ja	.label_152
	cmp	r12, r14
	jb	.label_154
	cmp	r13, rbx
	jne	.label_154
.label_152:
	mov	qword ptr [rsp + 0xf0], rbx
	mov	qword ptr [rsp + 0xe8], r14
	sub	r12, qword ptr [rsp + 0xe8]
	sbb	r13, qword ptr [rsp + 0xf0]
.label_154:
	inc	rcx
	jne	.label_163
	mov	rcx, qword ptr [rsp + 8]
	imul	rcx, rax
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp + 0x58], r13
	mov	qword ptr [rsp + 0x50], r12
	mov	qword ptr [rsp + 0xe0], r13
	mov	qword ptr [rsp + 0xd8], r12
	mov	rax, r13
	mov	rcx, r12
	add	rcx, qword ptr [rsp + 0xd8]
	adc	rax, qword ptr [rsp + 0xe0]
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x20], rcx
	cmp	rax, rbx
	ja	.label_164
	jne	.label_153
	cmp	rcx, r14
	jb	.label_153
.label_164:
	mov	qword ptr [rsp + 0xd0], rbx
	mov	qword ptr [rsp + 0xc8], r14
	sub	rcx, qword ptr [rsp + 0xc8]
	sbb	rax, qword ptr [rsp + 0xd0]
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x20], rcx
.label_153:
	mov	qword ptr [rsp + 0x40], r14
	mov	qword ptr [rsp + 0x48], rbx
	lea	rdi, [rsp + 0x40]
	lea	rdx, [rsp + 0x20]
	lea	rcx, [rsp + 0x80]
	lea	r9, [rsp + 0x50]
	mov	rsi, qword ptr [rsp + 8]
	mov	r8d, dword ptr [rsp + 4]
	call	millerrabin2
	test	al, al
	je	.label_168
	lea	rdx, [rsp + 0x108]
	mov	rdi, rbp
	mov	rsi, r15
	call	factor
	mov	rax, rbp
	mov	qword ptr [rsp + 0x78], r15
	shld	rax, r15, 0x3f
	mov	qword ptr [rsp + 0xa0], rax
	mov	qword ptr [rsp + 0xa8], rbp
	shr	rbp, 1
	mov	qword ptr [rsp + 0x98], rbp
	mov	eax, 2
	mov	qword ptr [rsp + 0x70], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x68], rax
	nop	
.label_148:
	mov	r15b, 1
	cmp	qword ptr [rsp + 0x110], 0
	je	.label_167
	mov	rax, qword ptr [rsp + 0x108]
	mov	ecx, eax
	shr	ecx, 1
	and	ecx, 0x7f
	movzx	ecx, byte ptr [rcx + binvert_table]
	mov	rdx, rcx
	imul	rdx, rax
	mov	esi, 2
	sub	rsi, rdx
	imul	rsi, rcx
	mov	rcx, rsi
	imul	rcx, rax
	mov	edx, 2
	sub	rdx, rcx
	imul	rdx, rsi
	imul	rax, rdx
	mov	ecx, 2
	sub	rcx, rax
	imul	rcx, rdx
	imul	rcx, qword ptr [rsp + 0x78]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 0x18], 0
	lea	rdi, [rsp + 0x38]
	lea	rsi, [rsp + 0x20]
	lea	rdx, [rsp + 0x10]
	lea	rcx, [rsp + 0x40]
	mov	r8, qword ptr [rsp + 8]
	lea	r9, [rsp + 0x50]
	call	powm2
	mov	qword ptr [rsp + 0x30], rax
	cmp	rax, r12
	jne	.label_167
	cmp	qword ptr [rsp + 0x38], r13
	setne	r15b
.label_167:
	test	r15b, r15b
	je	.label_149
	mov	al, byte ptr [rsp + 0x202]
	test	al, al
	je	.label_149
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_166:
	mov	eax, ebp
	mov	rax, qword ptr [rsp + rax*8 + 0x118]
	cmp	rax, 2
	jne	.label_162
	mov	rax, qword ptr [rsp + 0xa0]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0x98]
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_158
	nop	
.label_162:
	mov	ecx, eax
	shr	ecx, 1
	and	ecx, 0x7f
	movzx	ecx, byte ptr [rcx + binvert_table]
	mov	rdx, rcx
	imul	rdx, rax
	mov	esi, 2
	sub	rsi, rdx
	imul	rsi, rcx
	mov	rcx, rsi
	imul	rcx, rax
	mov	edx, 2
	sub	rdx, rcx
	imul	rdx, rsi
	mov	rcx, rdx
	imul	rcx, rax
	mov	esi, 2
	sub	rsi, rcx
	imul	rsi, rdx
	mov	rcx, rsi
	imul	rcx, qword ptr [rsp + 0x78]
	mov	rdi, qword ptr [rsp + 0xa8]
	cmp	rdi, rax
	jae	.label_165
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 0x18], 0
	jmp	.label_158
	nop	dword ptr [rax]
.label_165:
	mov	qword ptr [rsp + 0xc0], rax
	mov	rax, rcx
	mul	qword ptr [rsp + 0xc0]
	mov	rax, rdi
	sub	rax, rdx
	imul	rax, rsi
	mov	qword ptr [rsp + 0x18], rax
	mov	qword ptr [rsp + 0x10], rcx
.label_158:
	lea	rdi, [rsp + 0x38]
	lea	rsi, [rsp + 0x20]
	lea	rdx, [rsp + 0x10]
	lea	rcx, [rsp + 0x40]
	mov	r8, qword ptr [rsp + 8]
	lea	r9, [rsp + 0x50]
	call	powm2
	mov	qword ptr [rsp + 0x30], rax
	cmp	qword ptr [rsp + 0x38], r13
	setne	cl
	cmp	rax, r12
	setne	r15b
	or	r15b, cl
	cmp	r15b, 1
	jne	.label_149
	inc	ebp
	movzx	eax, byte ptr [rsp + 0x202]
	cmp	ebp, eax
	jb	.label_166
.label_149:
	mov	al, 1
	test	r15b, r15b
	jne	.label_150
	mov	rbp, qword ptr [rsp + 0x68]
	mov	r15, rbp
	movzx	eax, byte ptr [r15 + primes_diff]
	mov	rbp, qword ptr [rsp + 0x70]
	add	rbp, rax
	cmp	rbp, rbx
	mov	rax, rbp
	mov	ecx, 0
	cmovb	rax, rcx
	mov	ecx, 0
	cmovb	rcx, rbp
	mov	edx, 0x7f
	mov	esi, 0x3f
	cmovb	rdx, rsi
	not	rdx
	nop	word ptr cs:[rax + rax]
.label_156:
	shld	rcx, rax, 1
	add	rax, rax
	cmp	rcx, rbx
	ja	.label_155
	cmp	rax, r14
	jb	.label_159
	cmp	rcx, rbx
	jne	.label_159
.label_155:
	mov	qword ptr [rsp + 0xb8], rbx
	mov	qword ptr [rsp + 0xb0], r14
	sub	rax, qword ptr [rsp + 0xb0]
	sbb	rcx, qword ptr [rsp + 0xb8]
.label_159:
	inc	rdx
	jne	.label_156
	mov	qword ptr [rsp + 0x28], rcx
	mov	qword ptr [rsp + 0x20], rax
	lea	rdi, [rsp + 0x40]
	mov	rsi, qword ptr [rsp + 8]
	lea	rdx, [rsp + 0x20]
	lea	rcx, [rsp + 0x80]
	mov	r8d, dword ptr [rsp + 4]
	lea	r9, [rsp + 0x50]
	call	millerrabin2
	test	al, al
	je	.label_168
	mov	qword ptr [rsp + 0x70], rbp
	inc	r15
	mov	rax, r15
	mov	qword ptr [rsp + 0x68], rax
	cmp	r15, 0x29c
	jb	.label_148
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_160
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	call	abort
.label_168:
	xor	eax, eax
.label_150:
	add	rsp, 0x208
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403960

	.globl factor_using_pollard_rho
	.type factor_using_pollard_rho, @function
factor_using_pollard_rho:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x78
	mov	qword ptr [rsp + 8], rdx
	mov	qword ptr [rsp + 0x10], rsi
	mov	rbx, rdi
	cmp	rbx, 2
	jb	.label_173
.label_191:
	mov	eax, 0xffffffc0
	xor	r12d, r12d
	mov	ecx, 1
	xor	edx, edx
	mov	rsi, rbx
	nop	word ptr [rax + rax]
.label_189:
	shrd	rdx, rsi, 1
	shr	rsi, 1
	cmp	rcx, rsi
	ja	.label_177
	jne	.label_182
	cmp	r12, rdx
	jb	.label_182
.label_177:
	mov	qword ptr [rsp + 0x70], rsi
	mov	qword ptr [rsp + 0x68], rdx
	sub	r12, qword ptr [rsp + 0x68]
	sbb	rcx, qword ptr [rsp + 0x70]
.label_182:
	inc	eax
	jne	.label_189
	mov	rax, rbx
	sub	rax, r12
	mov	rbp, r12
	sub	rbp, rax
	mov	eax, 0
	cmovb	rax, rbx
	cmp	rbx, 1
	je	.label_187
	add	rbp, rax
	mov	rax, qword ptr [rsp + 0x10]
	inc	rax
	mov	qword ptr [rsp + 0x18], rax
	mov	rcx, rbp
	mov	r14, rbp
	mov	r13d, 1
	mov	esi, 1
	nop	dword ptr [rax]
.label_171:
	mov	qword ptr [rsp], rcx
	mov	r10, rbx
	sub	r10, qword ptr [rsp + 0x10]
	jbe	.label_184
	mov	eax, ebx
	shr	eax, 1
	and	eax, 0x7f
	movzx	eax, byte ptr [rax + binvert_table]
	mov	rcx, rax
	imul	rcx, rbx
	mov	edx, 2
	sub	rdx, rcx
	imul	rdx, rax
	mov	rax, rdx
	imul	rax, rbx
	mov	ecx, 2
	sub	rcx, rax
	imul	rcx, rdx
	mov	rax, rcx
	imul	rax, rbx
	mov	edi, 2
	sub	rdi, rax
	imul	rdi, rcx
	mov	r8d, ebx
	and	r8d, 1
	mov	r9, rsi
	jmp	.label_176
	nop	word ptr cs:[rax + rax]
.label_170:
	mov	r13, r11
	mov	qword ptr [rsp], rbp
	mov	rbp, r14
.label_176:
	mov	r11, r9
	mov	r9, qword ptr [rsp]
	nop	word ptr cs:[rax + rax]
.label_174:
	mov	qword ptr [rsp + 0x60], rbp
	mov	rax, rbp
	mul	qword ptr [rsp + 0x60]
	mov	rcx, rdx
	imul	rax, rdi
	mov	qword ptr [rsp + 0x58], rbx
	mul	qword ptr [rsp + 0x58]
	sub	rcx, rdx
	mov	eax, 0
	cmovb	rax, rbx
	add	rax, rcx
	sub	rax, r10
	mov	ebp, 0
	cmovb	rbp, rbx
	add	rbp, rax
	mov	rax, r9
	sub	rax, rbp
	mov	ecx, 0
	cmovb	rcx, rbx
	add	rcx, rax
	mov	qword ptr [rsp + 0x50], rcx
	mov	rax, r12
	mul	qword ptr [rsp + 0x50]
	mov	rcx, rdx
	imul	rax, rdi
	mov	qword ptr [rsp + 0x48], rbx
	mul	qword ptr [rsp + 0x48]
	sub	rcx, rdx
	mov	r12d, 0
	cmovb	r12, rbx
	add	r12, rcx
	mov	eax, r13d
	and	eax, 0x1f
	cmp	rax, 1
	jne	.label_175
	test	r8, r8
	mov	rax, rbx
	cmove	rax, r12
	mov	rcx, r12
	cmove	rcx, rbx
	test	rcx, rcx
	je	.label_179
	shr	rax, 1
	jmp	.label_186
.label_196:
	mov	rdx, rcx
	sar	rdx, 0x3f
	mov	rsi, rdx
	and	rsi, rcx
	add	rax, rsi
	xor	rcx, rdx
	sub	rcx, rdx
	nop	dword ptr [rax]
.label_186:
	mov	rdx, rcx
	shr	rcx, 1
	test	dl, 1
	je	.label_186
	sub	rcx, rax
	jne	.label_196
	or	rdx, 1
	mov	rax, rdx
.label_179:
	cmp	rax, 1
	mov	rax, rbp
	je	.label_190
	jmp	.label_169
	nop	word ptr cs:[rax + rax]
.label_175:
	mov	rax, r14
.label_190:
	dec	r13
	mov	r14, rax
	jne	.label_174
	lea	r9, [r11 + r11]
	test	r11, r11
	mov	r13d, 0
	mov	r14, rbp
	mov	qword ptr [rsp], rbp
	je	.label_176
	mov	rsi, r11
	mov	r14, rbp
	nop	
.label_188:
	mov	qword ptr [rsp + 0x30], r14
	mov	rax, r14
	mul	qword ptr [rsp + 0x30]
	mov	rcx, rdx
	imul	rax, rdi
	mov	qword ptr [rsp + 0x28], rbx
	mul	qword ptr [rsp + 0x28]
	sub	rcx, rdx
	mov	eax, 0
	cmovb	rax, rbx
	add	rax, rcx
	sub	rax, r10
	mov	r14d, 0
	cmovb	r14, rbx
	add	r14, rax
	dec	rsi
	jne	.label_188
	jmp	.label_170
	nop	word ptr [rax + rax]
.label_169:
	mov	qword ptr [rsp + 0x40], r14
	mov	rax, r14
	mul	qword ptr [rsp + 0x40]
	mov	rcx, rdx
	imul	rax, rdi
	mov	qword ptr [rsp + 0x38], rbx
	mul	qword ptr [rsp + 0x38]
	sub	rcx, rdx
	mov	eax, 0
	cmovb	rax, rbx
	add	rax, rcx
	sub	rax, r10
	mov	r14d, 0
	cmovb	r14, rbx
	add	r14, rax
	mov	rcx, r9
	sub	rcx, r14
	mov	eax, 0
	cmovb	rax, rbx
	add	rax, rcx
	test	r8, r8
	mov	r15, rbx
	cmove	r15, rax
	cmove	rax, rbx
	test	rax, rax
	je	.label_172
	shr	r15, 1
	jmp	.label_193
.label_178:
	mov	rcx, rax
	sar	rcx, 0x3f
	mov	rdx, rcx
	and	rdx, rax
	add	r15, rdx
	xor	rax, rcx
	sub	rax, rcx
	nop	dword ptr [rax]
.label_193:
	mov	rcx, rax
	shr	rax, 1
	test	cl, 1
	je	.label_193
	sub	rax, r15
	jne	.label_178
	or	rcx, 1
	mov	r15, rcx
.label_172:
	cmp	r15, 1
	je	.label_169
	cmp	rbx, r15
	je	.label_183
	mov	qword ptr [rsp + 0x20], r11
	xor	edx, edx
	mov	rax, rbx
	div	r15
	mov	rbx, rax
	mov	rdi, r15
	call	prime_p
	test	al, al
	je	.label_192
	mov	edx, 1
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, r15
	call	factor_insert_multiplicity
	jmp	.label_195
	nop	word ptr [rax + rax]
.label_192:
	mov	rdi, r15
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rsp + 8]
	call	factor_using_pollard_rho
.label_195:
	mov	rdi, rbx
	call	prime_p
	test	al, al
	jne	.label_185
	xor	edx, edx
	mov	rax, rbp
	div	rbx
	mov	rbp, rdx
	xor	edx, edx
	mov	rax, qword ptr [rsp]
	div	rbx
	mov	rcx, rdx
	xor	edx, edx
	mov	rax, r14
	div	rbx
	cmp	rbx, 1
	mov	r14, rdx
	mov	rsi, qword ptr [rsp + 0x20]
	jne	.label_171
	jmp	.label_187
	nop	word ptr cs:[rax + rax]
.label_183:
	cmp	rbx, 1
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rsp + 0x10], rax
	ja	.label_191
.label_173:
	mov	edi, OFFSET FLAT:label_194
	mov	esi, OFFSET FLAT:label_144
	mov	edx, 0x5c2
	mov	ecx, OFFSET FLAT:label_181
	call	__assert_fail
.label_187:
	add	rsp, 0x78
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_185:
	mov	edx, 1
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, rbx
	add	rsp, 0x78
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	factor_insert_multiplicity
.label_184:
	mov	edi, OFFSET FLAT:label_180
	mov	esi, OFFSET FLAT:label_144
	mov	edx, 0x5c8
	mov	ecx, OFFSET FLAT:label_181
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403dd0

	.globl factor_using_pollard_rho2
	.type factor_using_pollard_rho2, @function
factor_using_pollard_rho2:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x198
	mov	qword ptr [rsp + 0x20], rdx
	mov	r14, rsi
	mov	r9, rdi
	xor	ebp, ebp
	cmp	r9, 1
	seta	bpl
	mov	edx, 0x3f
	mov	eax, 0x7f
	cmova	rax, rdx
	mov	rsi, rbp
	xor	rsi, 1
	not	rax
	nop	
.label_213:
	shld	rbp, rsi, 1
	add	rsi, rsi
	cmp	rbp, r9
	ja	.label_199
	cmp	rsi, r14
	jb	.label_203
	cmp	rbp, r9
	jne	.label_203
.label_199:
	mov	qword ptr [rsp + 0x190], r9
	mov	qword ptr [rsp + 0x188], r14
	sub	rsi, qword ptr [rsp + 0x188]
	sbb	rbp, qword ptr [rsp + 0x190]
.label_203:
	inc	rax
	jne	.label_213
	mov	qword ptr [rsp + 0x180], rbp
	mov	qword ptr [rsp + 0x178], rsi
	mov	rbx, rbp
	mov	rdx, rsi
	add	rdx, qword ptr [rsp + 0x178]
	adc	rbx, qword ptr [rsp + 0x180]
	cmp	rbx, r9
	ja	.label_214
	jne	.label_222
	cmp	rdx, r14
	jb	.label_222
.label_214:
	mov	qword ptr [rsp + 0x170], r9
	mov	qword ptr [rsp + 0x168], r14
	sub	rdx, qword ptr [rsp + 0x168]
	sbb	rbx, qword ptr [rsp + 0x170]
.label_222:
	cmp	r14, 1
	jne	.label_229
	test	r9, r9
	je	.label_204
.label_229:
	mov	r15, rcx
	mov	qword ptr [rsp + 0x70], rsi
	mov	rax, qword ptr [rsp + 0x20]
	inc	rax
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x48], rax
	mov	qword ptr [rsp + 8], rdx
	mov	r13, rdx
	mov	eax, 1
	mov	qword ptr [rsp + 0x60], rax
	mov	r10, rbx
	mov	r8, rbx
	mov	qword ptr [rsp + 0x30], r15
	jmp	.label_211
	nop	dword ptr [rax + rax]
.label_242:
	mov	rbx, rdi
.label_211:
	mov	r12, rbp
	mov	eax, r14d
	shr	eax, 1
	and	eax, 0x7f
	movzx	eax, byte ptr [rax + binvert_table]
	mov	rdi, rax
	imul	rdi, r14
	mov	esi, 2
	sub	rsi, rdi
	imul	rsi, rax
	mov	rax, rsi
	imul	rax, r14
	mov	edi, 2
	sub	rdi, rax
	imul	rdi, rsi
	mov	rax, rdi
	mov	qword ptr [rsp], r14
	imul	rax, r14
	mov	ecx, 2
	sub	rcx, rax
	imul	rcx, rdi
	mov	qword ptr [rsp + 0x50], rcx
	mov	rsi, r8
	mov	rax, qword ptr [rsp + 0x60]
	mov	rcx, rax
	jmp	.label_201
	nop	word ptr cs:[rax + rax]
.label_239:
	mov	r10, qword ptr [rsp + 0x40]
	mov	rbx, rsi
	mov	qword ptr [rsp + 0x48], r15
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 8], rax
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 0x10]
.label_201:
	mov	qword ptr [rsp + 0x38], r10
	mov	qword ptr [rsp + 0x60], rcx
	mov	rcx, rbx
	mov	rbx, rsi
	mov	r15, qword ptr [rsp]
	nop	word ptr cs:[rax + rax]
.label_197:
	mov	qword ptr [rsp + 0x10], rcx
	lea	rdi, [rsp + 0x18]
	mov	rsi, rbx
	mov	rcx, rbx
	mov	r8, rdx
	mov	r14, r9
	push	qword ptr [rsp + 0x50]
	push	r15
	call	mulredc2
	mov	rbp, r14
	add	rsp, 0x10
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 0x160], rdx
	add	rax, qword ptr [rsp + 0x160]
	adc	rcx, 0
	cmp	rcx, rbp
	mov	rdx, qword ptr [rsp + 0x70]
	mov	rsi, qword ptr [rsp + 0x38]
	ja	.label_236
	jne	.label_244
	cmp	rax, r15
	jb	.label_244
.label_236:
	mov	qword ptr [rsp + 0x158], rbp
	mov	qword ptr [rsp + 0x150], r15
	sub	rax, qword ptr [rsp + 0x150]
	sbb	rcx, qword ptr [rsp + 0x158]
.label_244:
	mov	qword ptr [rsp + 0x40], rcx
	mov	qword ptr [rsp + 0x148], rcx
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x140], rax
	mov	rcx, rsi
	mov	r8, qword ptr [rsp + 8]
	sub	r8, qword ptr [rsp + 0x140]
	sbb	rcx, qword ptr [rsp + 0x148]
	test	rcx, rcx
	jns	.label_202
	mov	qword ptr [rsp + 0x138], rbp
	mov	qword ptr [rsp + 0x130], r15
	add	r8, qword ptr [rsp + 0x130]
	adc	rcx, qword ptr [rsp + 0x138]
.label_202:
	lea	rdi, [rsp + 0x18]
	mov	rsi, r12
	mov	r12, rbp
	mov	r9, r12
	push	qword ptr [rsp + 0x50]
	push	r15
	call	mulredc2
	add	rsp, 0x10
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rsp + 0x48]
	and	ecx, 0x1f
	cmp	rcx, 1
	mov	qword ptr [rsp + 0x70], rax
	jne	.label_226
	lea	rdi, [rsp + 0x68]
	mov	rsi, rbp
	mov	rdx, rax
	mov	rcx, r12
	mov	r8, r15
	call	gcd2_odd
	cmp	rax, 1
	mov	r9, r12
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rbx, qword ptr [rsp + 0x40]
	jne	.label_221
	mov	rax, qword ptr [rsp + 0x68]
	test	rax, rax
	mov	rcx, rbx
	mov	rax, rdx
	je	.label_245
	jmp	.label_221
	nop	word ptr [rax + rax]
.label_226:
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rax, r13
	mov	r9, r12
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rbx, qword ptr [rsp + 0x40]
.label_245:
	mov	r12, rbp
	dec	qword ptr [rsp + 0x48]
	mov	r13, rax
	jne	.label_197
	mov	r15, qword ptr [rsp + 0x60]
	lea	rcx, [r15 + r15]
	test	r15, r15
	mov	rsi, rbx
	mov	r10, rbx
	mov	eax, 0
	mov	qword ptr [rsp + 0x48], rax
	mov	r13, rdx
	mov	qword ptr [rsp + 8], rdx
	je	.label_201
	mov	qword ptr [rsp + 0x10], rcx
	mov	rbp, r15
	mov	r13, rdx
	mov	rsi, rbx
	nop	
.label_238:
	lea	rdi, [rsp + 0x18]
	mov	rdx, r13
	mov	rcx, rsi
	mov	r8, r13
	mov	r9, r14
	push	qword ptr [rsp + 0x50]
	mov	rbx, qword ptr [rsp + 8]
	push	rbx
	call	mulredc2
	mov	r9, r14
	add	rsp, 0x10
	mov	r13, rax
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 0x128], rax
	add	r13, qword ptr [rsp + 0x128]
	adc	rsi, 0
	cmp	rsi, r9
	ja	.label_220
	jne	.label_228
	mov	rbx, qword ptr [rsp]
	cmp	r13, rbx
	jb	.label_228
.label_220:
	mov	qword ptr [rsp + 0x120], r9
	mov	qword ptr [rsp + 0x118], rbx
	sub	r13, qword ptr [rsp + 0x118]
	sbb	rsi, qword ptr [rsp + 0x120]
.label_228:
	dec	rbp
	jne	.label_238
	jmp	.label_239
	nop	word ptr cs:[rax + rax]
.label_221:
	lea	rdi, [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, r13
	mov	rcx, rsi
	mov	r8, r13
	mov	r9, r14
	push	qword ptr [rsp + 0x50]
	mov	rbx, qword ptr [rsp + 8]
	push	rbx
	call	mulredc2
	mov	rcx, r14
	add	rsp, 0x10
	mov	r13, rax
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 0x110], rax
	add	r13, qword ptr [rsp + 0x110]
	adc	rdi, 0
	cmp	rdi, rcx
	mov	rax, qword ptr [rsp + 0x38]
	ja	.label_231
	jne	.label_208
	cmp	r13, rbx
	jb	.label_208
.label_231:
	mov	qword ptr [rsp + 0x108], rcx
	mov	qword ptr [rsp + 0x100], rbx
	sub	r13, qword ptr [rsp + 0x100]
	sbb	rdi, qword ptr [rsp + 0x108]
.label_208:
	mov	qword ptr [rsp + 0xf8], rdi
	mov	qword ptr [rsp + 0xf0], r13
	mov	rsi, rax
	mov	rdx, qword ptr [rsp + 8]
	sub	rdx, qword ptr [rsp + 0xf0]
	sbb	rsi, qword ptr [rsp + 0xf8]
	test	rsi, rsi
	mov	qword ptr [rsp + 0x10], rdi
	jns	.label_217
	mov	qword ptr [rsp + 0xe8], rcx
	mov	qword ptr [rsp + 0xe0], rbx
	add	rdx, qword ptr [rsp + 0xe0]
	adc	rsi, qword ptr [rsp + 0xe8]
.label_217:
	lea	rdi, [rsp + 0x68]
	mov	r8, rbx
	call	gcd2_odd
	mov	rdi, r14
	mov	r12, rax
	mov	rbx, qword ptr [rsp + 0x68]
	cmp	r12, 1
	jne	.label_234
	test	rbx, rbx
	je	.label_221
.label_234:
	test	rbx, rbx
	jne	.label_241
	mov	eax, r12d
	shr	eax, 1
	and	eax, 0x7f
	movzx	eax, byte ptr [rax + binvert_table]
	mov	rcx, rax
	imul	rcx, r12
	mov	edx, 2
	sub	rdx, rcx
	imul	rdx, rax
	mov	rax, rdx
	imul	rax, r12
	mov	esi, 2
	sub	rsi, rax
	imul	rsi, rdx
	mov	rax, rsi
	imul	rax, r12
	mov	ecx, 2
	sub	rcx, rax
	imul	rcx, rsi
	mov	rax, qword ptr [rsp]
	imul	rax, rcx
	mov	qword ptr [rsp], rax
	cmp	rdi, r12
	mov	eax, 0
	jb	.label_210
	mov	qword ptr [rsp + 0xd8], r12
	mov	rax, qword ptr [rsp]
	mul	qword ptr [rsp + 0xd8]
	sub	rdi, rdx
	imul	rdi, rcx
	mov	rax, rdi
.label_210:
	mov	rbx, rax
	mov	rdi, r12
	call	prime_p
	test	al, al
	mov	rax, qword ptr [rsp + 0x30]
	je	.label_218
	mov	edx, 1
	mov	r15, rax
	mov	rdi, rax
	mov	rsi, r12
	call	factor_insert_multiplicity
	jmp	.label_225
	nop	word ptr cs:[rax + rax]
.label_218:
	mov	rdi, r12
	mov	rsi, qword ptr [rsp + 0x58]
	mov	r15, rax
	mov	rdx, rax
	call	factor_using_pollard_rho
.label_225:
	mov	rdi, rbx
	test	rdi, rdi
	mov	r14, qword ptr [rsp]
	je	.label_230
	mov	rsi, r14
	call	prime2_p
	test	al, al
	jne	.label_233
	mov	r8, qword ptr [rsp + 0x40]
	test	r8, r8
	je	.label_237
	mov	r9, rbx
	mov	qword ptr [rsp + 0xd0], r9
	bsr	rax, qword ptr [rsp + 0xd0]
	xor	eax, 0x3f
	mov	qword ptr [rsp + 0xc8], r8
	bsr	rcx, qword ptr [rsp + 0xc8]
	xor	ecx, 0x3f
	sub	eax, ecx
	mov	rdx, qword ptr [rsp + 0x28]
	mov	r10, qword ptr [rsp + 0x38]
	mov	rdi, qword ptr [rsp + 0x10]
	jle	.label_223
	mov	rbx, r14
	mov	ecx, eax
	shl	rbx, cl
	mov	ecx, 0x40
	sub	ecx, eax
	mov	r11, r14
	shr	r11, cl
	mov	rsi, r9
	mov	ecx, eax
	shl	rsi, cl
	or	rsi, r11
	nop	word ptr cs:[rax + rax]
.label_219:
	cmp	r8, rsi
	ja	.label_216
	jne	.label_212
	cmp	rdx, rbx
	jb	.label_212
.label_216:
	mov	qword ptr [rsp + 0xc0], rsi
	mov	qword ptr [rsp + 0xb8], rbx
	sub	rdx, qword ptr [rsp + 0xb8]
	sbb	r8, qword ptr [rsp + 0xc0]
.label_212:
	shrd	rbx, rsi, 1
	shr	rsi, 1
	dec	eax
	jne	.label_219
	jmp	.label_223
	nop	word ptr [rax + rax]
.label_237:
	xor	r8d, r8d
	mov	r9, rbx
	mov	rdx, qword ptr [rsp + 0x28]
	mov	r10, qword ptr [rsp + 0x38]
	mov	rdi, qword ptr [rsp + 0x10]
.label_223:
	test	r10, r10
	je	.label_227
	mov	qword ptr [rsp + 0xb0], r9
	bsr	rax, qword ptr [rsp + 0xb0]
	xor	eax, 0x3f
	mov	qword ptr [rsp + 0xa8], r10
	bsr	rcx, qword ptr [rsp + 0xa8]
	xor	ecx, 0x3f
	sub	eax, ecx
	jle	.label_207
	mov	rbx, r14
	mov	ecx, eax
	shl	rbx, cl
	mov	ecx, 0x40
	sub	ecx, eax
	mov	r11, r14
	shr	r11, cl
	mov	rsi, r9
	mov	ecx, eax
	shl	rsi, cl
	or	rsi, r11
	nop	word ptr [rax + rax]
.label_206:
	cmp	r10, rsi
	ja	.label_215
	jne	.label_235
	cmp	qword ptr [rsp + 8], rbx
	jb	.label_235
.label_215:
	mov	qword ptr [rsp + 0xa0], rsi
	mov	qword ptr [rsp + 0x98], rbx
	mov	rcx, qword ptr [rsp + 8]
	sub	rcx, qword ptr [rsp + 0x98]
	sbb	r10, qword ptr [rsp + 0xa0]
	mov	qword ptr [rsp + 8], rcx
.label_235:
	shrd	rbx, rsi, 1
	shr	rsi, 1
	dec	eax
	jne	.label_206
	jmp	.label_207
	nop	word ptr cs:[rax + rax]
.label_227:
	xor	r10d, r10d
.label_207:
	test	rdi, rdi
	mov	ebx, 0
	je	.label_211
	mov	qword ptr [rsp + 0x90], r9
	bsr	rax, qword ptr [rsp + 0x90]
	xor	eax, 0x3f
	mov	qword ptr [rsp + 0x88], rdi
	bsr	rcx, qword ptr [rsp + 0x88]
	xor	ecx, 0x3f
	sub	eax, ecx
	mov	rbx, rdi
	jle	.label_211
	mov	rbx, r14
	mov	ecx, eax
	shl	rbx, cl
	mov	ecx, 0x40
	sub	ecx, eax
	mov	r11, r14
	shr	r11, cl
	mov	rsi, r9
	mov	ecx, eax
	shl	rsi, cl
	or	rsi, r11
	nop	word ptr cs:[rax + rax]
.label_240:
	cmp	rdi, rsi
	ja	.label_205
	jne	.label_209
	cmp	r13, rbx
	jb	.label_209
.label_205:
	mov	qword ptr [rsp + 0x80], rsi
	mov	qword ptr [rsp + 0x78], rbx
	sub	r13, qword ptr [rsp + 0x78]
	sbb	rdi, qword ptr [rsp + 0x80]
.label_209:
	shrd	rbx, rsi, 1
	shr	rsi, 1
	dec	eax
	jne	.label_240
	jmp	.label_242
.label_241:
	cmp	qword ptr [rsp], r12
	jne	.label_243
	cmp	rdi, rbx
	jne	.label_243
	mov	rsi, qword ptr [rsp]
	mov	rdx, qword ptr [rsp + 0x58]
	mov	rcx, qword ptr [rsp + 0x30]
	call	factor_using_pollard_rho2
	jmp	.label_204
.label_230:
	mov	rbp, r14
	jmp	.label_198
.label_233:
	cmp	qword ptr [r15 + 8], 0
	jne	.label_200
	mov	qword ptr [r15], r14
	mov	qword ptr [r15 + 8], rbx
	jmp	.label_204
.label_243:
	mov	eax, r12d
	shr	eax, 1
	and	eax, 0x7f
	movzx	eax, byte ptr [rax + binvert_table]
	mov	rcx, rax
	imul	rcx, r12
	mov	ebp, 2
	mov	edx, 2
	sub	rdx, rcx
	imul	rdx, rax
	mov	rax, rdx
	imul	rax, r12
	mov	ecx, 2
	sub	rcx, rax
	imul	rcx, rdx
	mov	rax, r12
	imul	rax, rcx
	sub	rbp, rax
	imul	rbp, rcx
	imul	rbp, qword ptr [rsp]
	mov	rdi, rbx
	mov	rsi, r12
	call	prime2_p
	test	al, al
	je	.label_224
	mov	r15, qword ptr [rsp + 0x30]
	cmp	qword ptr [r15 + 8], 0
	jne	.label_200
	mov	qword ptr [r15], r12
	mov	qword ptr [r15 + 8], rbx
	jmp	.label_198
.label_224:
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, qword ptr [rsp + 0x58]
	mov	rcx, qword ptr [rsp + 0x30]
	mov	r15, rcx
	call	factor_using_pollard_rho2
.label_198:
	mov	rdi, rbp
	call	prime_p
	test	al, al
	je	.label_232
	mov	edx, 1
	mov	rdi, r15
	mov	rsi, rbp
	call	factor_insert_multiplicity
	jmp	.label_204
.label_232:
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, r15
	call	factor_using_pollard_rho
.label_204:
	add	rsp, 0x198
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_200:
	mov	edi, OFFSET FLAT:label_143
	mov	esi, OFFSET FLAT:label_144
	mov	edx, 0x235
	mov	ecx, OFFSET FLAT:label_145
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404710

	.globl factor_insert_multiplicity
	.type factor_insert_multiplicity, @function
factor_insert_multiplicity:
	push	r14
	push	rbx
	movzx	r8d, byte ptr [rdi + 0xfa]
	lea	r9d, [r8 - 1]
	test	r8d, r8d
	mov	r10d, r9d
	je	.label_252
	movabs	rbx, 0xffffffff00000000
	mov	rax, r8
	shl	rax, 0x20
	add	rax, rbx
	mov	r10, r8
	nop	
.label_253:
	cmp	qword ptr [rdi + r10*8 + 8], rsi
	jbe	.label_246
	dec	r10
	add	rax, rbx
	test	r10, r10
	jg	.label_253
	dec	r10d
	jmp	.label_252
.label_246:
	mov	rcx, rax
	sar	rcx, 0x1d
	cmp	qword ptr [rdi + rcx + 0x10], rsi
	jne	.label_254
	sar	rax, 0x20
	movzx	ecx, byte ptr [rdi + rax + 0xe0]
	add	ecx, edx
	mov	byte ptr [rdi + rax + 0xe0], cl
	jmp	.label_250
.label_254:
	dec	r10
.label_252:
	cmp	r9d, r10d
	jle	.label_247
	lea	r9d, [r8 - 1]
	sub	r9d, r10d
	mov	eax, r8d
	add	eax, -2
	sub	eax, r10d
	and	r9d, 3
	cmp	eax, 3
	mov	rax, r8
	jb	.label_248
	lea	r11, [rdi + r8 + 0xe0]
	lea	rcx, [rdi + r8*8 + 0xe0]
	mov	r14d, r10d
	not	r14d
	sub	r14d, r9d
	add	r14, r8
	xor	eax, eax
	nop	dword ptr [rax]
.label_249:
	mov	rbx, qword ptr [rcx + rax*8 - 0xd8]
	mov	qword ptr [rcx + rax*8 - 0xd0], rbx
	movzx	ebx, byte ptr [r11 + rax - 1]
	mov	byte ptr [r11 + rax], bl
	mov	rbx, qword ptr [rcx + rax*8 - 0xe0]
	mov	qword ptr [rcx + rax*8 - 0xd8], rbx
	movzx	ebx, byte ptr [r11 + rax - 2]
	mov	byte ptr [r11 + rax - 1], bl
	mov	rbx, qword ptr [rcx + rax*8 - 0xe8]
	mov	qword ptr [rcx + rax*8 - 0xe0], rbx
	movzx	ebx, byte ptr [r11 + rax - 3]
	mov	byte ptr [r11 + rax - 2], bl
	mov	rbx, qword ptr [rcx + rax*8 - 0xf0]
	mov	qword ptr [rcx + rax*8 - 0xe8], rbx
	movzx	ebx, byte ptr [r11 + rax - 4]
	mov	byte ptr [r11 + rax - 3], bl
	add	rax, -4
	mov	ebx, r14d
	add	ebx, eax
	jne	.label_249
	add	rax, r8
.label_248:
	test	r9d, r9d
	je	.label_247
	neg	r9d
	nop	word ptr cs:[rax + rax]
.label_251:
	mov	rcx, qword ptr [rdi + rax*8 + 8]
	mov	qword ptr [rdi + rax*8 + 0x10], rcx
	movzx	ecx, byte ptr [rdi + rax + 0xdf]
	mov	byte ptr [rdi + rax + 0xe0], cl
	dec	rax
	inc	r9d
	jne	.label_251
.label_247:
	movsxd	rax, r10d
	mov	qword ptr [rdi + rax*8 + 0x18], rsi
	mov	byte ptr [rdi + rax + 0xe1], dl
	inc	r8b
	mov	byte ptr [rdi + 0xfa], r8b
.label_250:
	pop	rbx
	pop	r14
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4048a0

	.globl prime_p
	.type prime_p, @function
prime_p:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x1c8
	mov	rbx, rdi
	cmp	rbx, 2
	jae	.label_259
	xor	eax, eax
	jmp	.label_278
.label_259:
	cmp	rbx, 0x17ded79
	jb	.label_279
	lea	r13, [rbx - 1]
	xor	r9d, r9d
	test	r13b, 1
	mov	qword ptr [rsp + 0x10], r13
	jne	.label_282
	xor	r9d, r9d
	mov	rax, qword ptr [rsp + 0x10]
	nop	dword ptr [rax + rax]
.label_289:
	mov	r13, rax
	shr	r13, 1
	inc	r9d
	bt	rax, 1
	mov	rax, r13
	jae	.label_289
.label_282:
	mov	eax, ebx
	shr	eax, 1
	and	eax, 0x7f
	movzx	eax, byte ptr [rax + binvert_table]
	mov	r14d, 2
	cmp	rbx, 2
	jb	.label_256
	mov	rcx, rax
	imul	rcx, rbx
	mov	edx, 2
	sub	rdx, rcx
	imul	rdx, rax
	mov	rax, rdx
	imul	rax, rbx
	mov	ecx, 2
	sub	rcx, rax
	imul	rcx, rdx
	mov	rax, rcx
	imul	rax, rbx
	sub	r14, rax
	imul	r14, rcx
	mov	eax, 0xffffffc0
	mov	ecx, 1
	xor	r15d, r15d
	xor	edx, edx
	mov	rsi, rbx
	nop	word ptr [rax + rax]
.label_269:
	shrd	rdx, rsi, 1
	shr	rsi, 1
	cmp	rcx, rsi
	ja	.label_281
	jne	.label_274
	cmp	r15, rdx
	jb	.label_274
.label_281:
	mov	qword ptr [rsp + 0xc0], rsi
	mov	qword ptr [rsp + 0xb8], rdx
	sub	r15, qword ptr [rsp + 0xb8]
	sbb	rcx, qword ptr [rsp + 0xc0]
.label_274:
	inc	eax
	jne	.label_269
	mov	rcx, rbx
	sub	rcx, r15
	xor	r12d, r12d
	mov	rax, r15
	mov	qword ptr [rsp + 0x18], rcx
	sub	rax, rcx
	cmovb	r12, rbx
	add	r12, rax
	mov	rbp, r13
	mov	rsi, r12
	mov	r8, r12
	jmp	.label_271
	nop	
.label_286:
	mov	qword ptr [rsp + 0xa0], rsi
	mov	rax, r8
	mul	qword ptr [rsp + 0xa0]
	mov	rdi, rdx
	imul	rax, r14
	mov	qword ptr [rsp + 0x98], rbx
	mul	qword ptr [rsp + 0x98]
	sub	rdi, rdx
	mov	r8d, 0
	cmovb	r8, rbx
	add	r8, rdi
.label_271:
	mov	rcx, rbp
	nop	dword ptr [rax]
.label_263:
	test	rcx, rcx
	je	.label_276
	mov	qword ptr [rsp + 0xb0], rsi
	mov	rax, rsi
	mul	qword ptr [rsp + 0xb0]
	mov	rdi, rdx
	imul	rax, r14
	mov	qword ptr [rsp + 0xa8], rbx
	mul	qword ptr [rsp + 0xa8]
	sub	rdi, rdx
	mov	esi, 0
	cmovb	rsi, rbx
	add	rsi, rdi
	mov	rbp, rcx
	shr	rbp, 1
	bt	rcx, 1
	mov	rcx, rbp
	jae	.label_263
	jmp	.label_286
.label_276:
	cmp	r8, r15
	mov	rcx, qword ptr [rsp + 0x18]
	je	.label_277
	cmp	r8, rcx
	je	.label_277
	cmp	r9d, 2
	jb	.label_287
	mov	edi, 2
	nop	word ptr cs:[rax + rax]
.label_284:
	mov	qword ptr [rsp + 0x90], r8
	mov	rax, r8
	mul	qword ptr [rsp + 0x90]
	mov	rsi, rdx
	imul	rax, r14
	mov	qword ptr [rsp + 0x88], rbx
	mul	qword ptr [rsp + 0x88]
	sub	rsi, rdx
	mov	r8d, 0
	cmovb	r8, rbx
	add	r8, rsi
	cmp	r8, rcx
	je	.label_277
	xor	eax, eax
	cmp	edi, r9d
	jae	.label_278
	inc	edi
	cmp	r8, r15
	jne	.label_284
	jmp	.label_278
.label_277:
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	lea	rdx, [rsp + 0xc8]
	xor	edi, edi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	dword ptr [rsp + 4], r9d
	call	factor
	movzx	r9d, byte ptr [rsp + 0x1c2]
	mov	r8d, 2
	jmp	.label_258
	nop	word ptr [rax + rax]
.label_267:
	xor	r11d, r11d
	nop	word ptr cs:[rax + rax]
.label_288:
	xor	edx, edx
	mov	rax, qword ptr [rsp + 0x10]
	div	qword ptr [rsp + r11*8 + 0xd8]
	mov	rdi, rax
	test	dil, 1
	mov	rcx, r12
	cmove	rcx, r15
	mov	rsi, r12
	jmp	.label_273
	nop	word ptr cs:[rax + rax]
.label_283:
	mov	qword ptr [rsp + 0x70], rsi
	mov	rax, rcx
	mul	qword ptr [rsp + 0x70]
	mov	r8, rdx
	imul	rax, r14
	mov	qword ptr [rsp + 0x68], rbx
	mul	qword ptr [rsp + 0x68]
	sub	r8, rdx
	mov	ecx, 0
	cmovb	rcx, rbx
	add	rcx, r8
.label_273:
	mov	rbp, rdi
.label_293:
	test	rbp, rbp
	je	.label_260
	mov	qword ptr [rsp + 0x80], rsi
	mov	rax, rsi
	mul	qword ptr [rsp + 0x80]
	mov	rdi, rdx
	imul	rax, r14
	mov	qword ptr [rsp + 0x78], rbx
	mul	qword ptr [rsp + 0x78]
	sub	rdi, rdx
	mov	esi, 0
	cmovb	rsi, rbx
	add	rsi, rdi
	mov	rdi, rbp
	shr	rdi, 1
	bt	rbp, 1
	mov	rbp, rdi
	jae	.label_293
	jmp	.label_283
	nop	word ptr [rax + rax]
.label_260:
	cmp	rcx, r15
	je	.label_270
	inc	r11
	cmp	r11, r9
	jb	.label_288
.label_270:
	cmp	rcx, r15
	jne	.label_279
	mov	rax, qword ptr [rsp + 8]
	movzx	r8d, byte ptr [rax + primes_diff]
	add	r8, r10
	mov	qword ptr [rsp + 0x60], r8
	mov	rax, r15
	mul	qword ptr [rsp + 0x60]
	mov	r12, rax
	test	rdx, rdx
	jne	.label_292
	xor	edx, edx
	mov	rax, r12
	div	rbx
	mov	r12, rdx
	mov	r11d, dword ptr [rsp + 4]
.label_268:
	mov	rbp, r13
	mov	rsi, r12
	mov	r10, r12
	jmp	.label_291
	nop	
.label_280:
	mov	qword ptr [rsp + 0x38], rsi
	mov	rax, r10
	mul	qword ptr [rsp + 0x38]
	mov	rdi, rdx
	imul	rax, r14
	mov	qword ptr [rsp + 0x30], rbx
	mul	qword ptr [rsp + 0x30]
	sub	rdi, rdx
	mov	r10d, 0
	cmovb	r10, rbx
	add	r10, rdi
.label_291:
	mov	rcx, rbp
	nop	word ptr cs:[rax + rax]
.label_266:
	test	rcx, rcx
	je	.label_255
	mov	qword ptr [rsp + 0x48], rsi
	mov	rax, rsi
	mul	qword ptr [rsp + 0x48]
	mov	rdi, rdx
	imul	rax, r14
	mov	qword ptr [rsp + 0x40], rbx
	mul	qword ptr [rsp + 0x40]
	sub	rdi, rdx
	mov	esi, 0
	cmovb	rsi, rbx
	add	rsi, rdi
	mov	rbp, rcx
	shr	rbp, 1
	bt	rcx, 1
	mov	rcx, rbp
	jae	.label_266
	jmp	.label_280
	nop	word ptr [rax + rax]
.label_255:
	cmp	r10, r15
	mov	rcx, qword ptr [rsp + 0x18]
	je	.label_264
	cmp	r10, rcx
	je	.label_264
	cmp	r11d, 2
	jb	.label_287
	mov	edi, 2
	nop	
.label_272:
	mov	qword ptr [rsp + 0x28], r10
	mov	rax, r10
	mul	qword ptr [rsp + 0x28]
	mov	rsi, rdx
	imul	rax, r14
	mov	qword ptr [rsp + 0x20], rbx
	mul	qword ptr [rsp + 0x20]
	sub	rsi, rdx
	mov	r10d, 0
	cmovb	r10, rbx
	add	r10, rsi
	cmp	r10, rcx
	je	.label_264
	xor	eax, eax
	cmp	edi, r11d
	jae	.label_278
	inc	edi
	cmp	r10, r15
	jne	.label_272
	jmp	.label_278
	nop	word ptr [rax + rax]
.label_264:
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, rax
	inc	rcx
	mov	rax, rcx
	mov	qword ptr [rsp + 8], rax
	cmp	rcx, 0x29c
	jb	.label_258
	jmp	.label_285
.label_292:
	cmp	rdx, rbx
	mov	r11d, dword ptr [rsp + 4]
	jae	.label_275
	mov	eax, 0xffffffc0
	xor	ecx, ecx
	mov	rsi, rbx
.label_265:
	shrd	rcx, rsi, 1
	shr	rsi, 1
	cmp	rdx, rsi
	ja	.label_290
	jne	.label_257
	cmp	r12, rcx
	jb	.label_257
.label_290:
	mov	qword ptr [rsp + 0x58], rsi
	mov	qword ptr [rsp + 0x50], rcx
	sub	r12, qword ptr [rsp + 0x50]
	sbb	rdx, qword ptr [rsp + 0x58]
.label_257:
	inc	eax
	jne	.label_265
	jmp	.label_268
	nop	word ptr [rax + rax]
.label_258:
	mov	r10, r8
	test	r9b, r9b
	jne	.label_267
.label_279:
	mov	al, 1
.label_278:
	add	rsp, 0x1c8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_287:
	xor	eax, eax
	jmp	.label_278
.label_285:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_160
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	call	abort
.label_256:
	mov	edi, OFFSET FLAT:label_194
	mov	esi, OFFSET FLAT:label_144
	mov	edx, 0x4c4
	mov	ecx, OFFSET FLAT:label_262
	call	__assert_fail
.label_275:
	mov	edi, OFFSET FLAT:label_261
	mov	esi, OFFSET FLAT:label_144
	mov	edx, 0x4f4
	mov	ecx, OFFSET FLAT:label_262
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404e30

	.globl millerrabin2
	.type millerrabin2, @function
millerrabin2:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, r9
	mov	dword ptr [rsp + 0x14], r8d
	mov	r12, rsi
	mov	rbp, rdi
	lea	rdi, [rsp + 8]
	mov	rsi, rdx
	mov	rdx, rcx
	mov	rcx, rbp
	mov	r8, r12
	call	powm2
	mov	rsi, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rbx]
	mov	rdx, qword ptr [rbx + 8]
	mov	r15b, 1
	cmp	rax, rcx
	jne	.label_295
	cmp	rsi, rdx
	je	.label_297
.label_295:
	mov	r10, qword ptr [rbp]
	mov	r9, qword ptr [rbp + 8]
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x18], rcx
	mov	r13, r9
	mov	r14, r10
	sub	r14, qword ptr [rsp + 0x18]
	sbb	r13, qword ptr [rsp + 0x20]
	cmp	rax, r14
	jne	.label_300
	cmp	rsi, r13
	je	.label_297
.label_300:
	cmp	dword ptr [rsp + 0x14], 2
	jb	.label_296
	lea	rdi, [rsp + 8]
	mov	rdx, rax
	mov	rcx, rsi
	mov	r8, rax
	push	r12
	push	r10
	call	mulredc2
	add	rsp, 0x10
	mov	rsi, qword ptr [rsp + 8]
	cmp	rax, r14
	jne	.label_299
	cmp	rsi, r13
	je	.label_297
.label_299:
	mov	r15d, 1
	nop	word ptr [rax + rax]
.label_298:
	cmp	rax, qword ptr [rbx]
	jne	.label_294
	cmp	rsi, qword ptr [rbx + 8]
	je	.label_296
.label_294:
	inc	r15d
	cmp	r15d, dword ptr [rsp + 0x14]
	jae	.label_296
	mov	r9, qword ptr [rbp + 8]
	lea	rdi, [rsp + 8]
	mov	rdx, rax
	mov	rcx, rsi
	mov	r8, rax
	push	r12
	push	qword ptr [rbp]
	call	mulredc2
	add	rsp, 0x10
	mov	rsi, qword ptr [rsp + 8]
	cmp	rax, r14
	jne	.label_298
	cmp	rsi, r13
	jne	.label_298
	mov	r15b, 1
	jmp	.label_297
.label_296:
	xor	r15d, r15d
.label_297:
	mov	eax, r15d
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404f50

	.globl powm2
	.type powm2, @function
powm2:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	qword ptr [rsp + 0x28], r8
	mov	qword ptr [rsp + 0x20], rdi
	mov	rbx, qword ptr [rsi]
	mov	r12, qword ptr [rsi + 8]
	mov	r15, qword ptr [rcx]
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	rax, qword ptr [r9 + 8]
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x30], rdx
	mov	r14, qword ptr [rdx]
	mov	ebp, 0xffffffc0
	nop	dword ptr [rax]
.label_307:
	mov	r13, r15
	test	r14b, 1
	jne	.label_301
	mov	r10, qword ptr [rsp + 0x28]
	mov	r15, qword ptr [rsp + 0x20]
	mov	r9, qword ptr [rsp + 8]
	jmp	.label_302
	nop	word ptr [rax + rax]
.label_301:
	mov	r15, qword ptr [rsp + 0x20]
	mov	rdi, r15
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rcx, r12
	mov	r8, rbx
	mov	r9, qword ptr [rsp + 8]
	push	qword ptr [rsp + 0x28]
	push	r13
	call	mulredc2
	mov	r10, qword ptr [rsp + 0x38]
	mov	r9, qword ptr [rsp + 0x18]
	add	rsp, 0x10
	mov	qword ptr [rsp + 0x18], rax
	mov	rax, qword ptr [r15]
	mov	qword ptr [rsp + 0x10], rax
.label_302:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbx
	mov	rcx, r12
	mov	r8, rbx
	push	r10
	push	r13
	call	mulredc2
	add	rsp, 0x10
	mov	rbx, rax
	shr	r14, 1
	mov	r12, qword ptr [r15]
	inc	ebp
	mov	r15, r13
	jne	.label_307
	mov	rax, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rax + 8]
	test	rbp, rbp
	je	.label_305
	mov	r14, qword ptr [rsp + 0x28]
	mov	r13, qword ptr [rsp + 0x20]
	nop	dword ptr [rax + rax]
.label_303:
	test	bpl, 1
	mov	r9, qword ptr [rsp + 8]
	je	.label_304
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rcx, r12
	mov	r8, rbx
	mov	r9, qword ptr [rsp + 8]
	push	r14
	push	r15
	call	mulredc2
	mov	r9, qword ptr [rsp + 0x18]
	add	rsp, 0x10
	mov	qword ptr [rsp + 0x18], rax
	mov	rax, qword ptr [r13]
	mov	qword ptr [rsp + 0x10], rax
.label_304:
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, rbx
	mov	rcx, r12
	mov	r8, rbx
	push	r14
	push	r15
	call	mulredc2
	add	rsp, 0x10
	mov	rbx, rax
	mov	r12, qword ptr [r13]
	shr	rbp, 1
	jne	.label_303
	jmp	.label_306
.label_305:
	mov	r13, qword ptr [rsp + 0x20]
.label_306:
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [r13], rax
	mov	rax, qword ptr [rsp + 0x18]
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4050e0

	.globl mulredc2
	.type mulredc2, @function
mulredc2:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	rbx, rdx
	mov	r14, rsi
	xor	r10d, r10d
	test	r14, r14
	js	.label_308
	test	rcx, rcx
	js	.label_311
	test	r9, r9
	js	.label_316
	mov	rbp, qword ptr [rsp + 0xe0]
	sub	r10, qword ptr [rsp + 0xe8]
	mov	qword ptr [rsp + 0xa0], r8
	mov	rax, rbx
	mul	qword ptr [rsp + 0xa0]
	mov	r12, rax
	mov	r15, rdx
	mov	qword ptr [rsp + 0x98], rcx
	mov	rax, rbx
	mul	qword ptr [rsp + 0x98]
	mov	rbx, rax
	mov	r11, rdx
	mov	rsi, r12
	imul	rsi, r10
	mov	qword ptr [rsp + 0x90], rbp
	mov	rax, rsi
	mul	qword ptr [rsp + 0x90]
	mov	r13, rdx
	mov	qword ptr [rsp + 0x88], r9
	mov	rax, rsi
	mul	qword ptr [rsp + 0x88]
	cmp	r12, 1
	sbb	rbx, -1
	mov	qword ptr [rsp + 0x80], r13
	add	rbx, qword ptr [rsp + 0x80]
	adc	r11, 0
	mov	qword ptr [rsp + 0x78], r15
	add	rbx, qword ptr [rsp + 0x78]
	adc	r11, 0
	mov	qword ptr [rsp + 0x70], rdx
	mov	qword ptr [rsp + 0x68], rax
	add	rbx, qword ptr [rsp + 0x68]
	adc	r11, qword ptr [rsp + 0x70]
	mov	qword ptr [rsp + 0x60], r8
	mov	rax, r14
	mul	qword ptr [rsp + 0x60]
	mov	r15, rax
	mov	r8, rdx
	mov	qword ptr [rsp + 0x58], rcx
	mov	rax, r14
	mul	qword ptr [rsp + 0x58]
	mov	rsi, rax
	mov	rcx, rdx
	mov	qword ptr [rsp + 0x50], rbx
	add	r15, qword ptr [rsp + 0x50]
	adc	r8, 0
	imul	r10, r15
	mov	qword ptr [rsp + 0x48], r11
	add	rsi, qword ptr [rsp + 0x48]
	adc	rcx, 0
	mov	qword ptr [rsp + 0x40], rbp
	mov	rax, r10
	mul	qword ptr [rsp + 0x40]
	mov	rbx, rdx
	mov	qword ptr [rsp + 0x38], r9
	mov	rax, r10
	mul	qword ptr [rsp + 0x38]
	cmp	r15, 1
	sbb	rsi, -1
	mov	qword ptr [rsp + 0x30], rbx
	add	rsi, qword ptr [rsp + 0x30]
	adc	rcx, 0
	mov	qword ptr [rsp + 0x28], r8
	add	rsi, qword ptr [rsp + 0x28]
	adc	rcx, 0
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x18], rax
	add	rsi, qword ptr [rsp + 0x18]
	adc	rcx, qword ptr [rsp + 0x20]
	cmp	rcx, r9
	ja	.label_312
	jne	.label_313
	cmp	rsi, rbp
	jb	.label_313
.label_312:
	mov	qword ptr [rsp + 0x10], r9
	mov	qword ptr [rsp + 8], rbp
	sub	rsi, qword ptr [rsp + 8]
	sbb	rcx, qword ptr [rsp + 0x10]
.label_313:
	mov	qword ptr [rdi], rcx
	mov	rax, rsi
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_308:
	mov	edi, OFFSET FLAT:label_314
	mov	esi, OFFSET FLAT:label_144
	mov	edx, 0x3e7
	mov	ecx, OFFSET FLAT:label_310
	call	__assert_fail
.label_311:
	mov	edi, OFFSET FLAT:label_309
	mov	esi, OFFSET FLAT:label_144
	mov	edx, 0x3e8
	mov	ecx, OFFSET FLAT:label_310
	call	__assert_fail
.label_316:
	mov	edi, OFFSET FLAT:label_315
	mov	esi, OFFSET FLAT:label_144
	mov	edx, 0x3e9
	mov	ecx, OFFSET FLAT:label_310
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4052f0

	.globl gcd2_odd
	.type gcd2_odd, @function
gcd2_odd:
	sub	rsp, 0x28
	test	r8b, 1
	je	.label_334
	mov	rax, rdx
	or	rax, rsi
	je	.label_337
	test	dl, 1
	jne	.label_322
	nop	dword ptr [rax + rax]
.label_326:
	mov	rax, rsi
	shld	rax, rdx, 0x3f
	shr	rsi, 1
	bt	rdx, 1
	mov	rdx, rax
	jae	.label_326
	jmp	.label_332
.label_337:
	mov	qword ptr [rdi], rcx
	jmp	.label_329
.label_322:
	mov	rax, rdx
.label_332:
	mov	rdx, rsi
	or	rdx, rcx
	jne	.label_327
	jmp	.label_336
.label_323:
	mov	rcx, rsi
.label_317:
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], r8
	sub	rax, qword ptr [rsp + 8]
	sbb	rsi, qword ptr [rsp + 0x10]
	nop	word ptr cs:[rax + rax]
.label_330:
	mov	rdx, rax
	mov	rax, rsi
	shld	rax, rdx, 0x3f
	shr	rsi, 1
	bt	rdx, 1
	jae	.label_330
	jmp	.label_335
	nop	word ptr [rax + rax]
.label_327:
	cmp	rsi, rcx
	ja	.label_317
	jne	.label_321
	cmp	rax, r8
	ja	.label_323
.label_321:
	cmp	rsi, rcx
	sete	dl
	cmp	rax, r8
	sbb	r9b, r9b
	cmp	rcx, rsi
	ja	.label_325
	and	dl, r9b
	je	.label_324
.label_325:
	mov	qword ptr [rsp + 0x20], rsi
	mov	qword ptr [rsp + 0x18], rax
	sub	r8, qword ptr [rsp + 0x18]
	sbb	rcx, qword ptr [rsp + 0x20]
	nop	word ptr [rax + rax]
.label_331:
	mov	rdx, r8
	mov	r8, rcx
	shld	r8, rdx, 0x3f
	shr	rcx, 1
	bt	rdx, 1
	jae	.label_331
.label_335:
	mov	rdx, rcx
	or	rdx, rsi
	jne	.label_327
.label_336:
	mov	rcx, r8
	mov	qword ptr [rdi], 0
	mov	rdx, rax
	and	rdx, 1
	mov	r8, rax
	cmove	r8, rcx
	test	rdx, rdx
	cmove	rcx, rax
	test	rcx, rcx
	je	.label_329
	shr	r8, 1
	jmp	.label_318
.label_333:
	mov	rax, rcx
	sar	rax, 0x3f
	mov	rdx, rax
	and	rdx, rcx
	add	r8, rdx
	xor	rcx, rax
	sub	rcx, rax
	nop	dword ptr [rax]
.label_318:
	mov	rax, rcx
	shr	rcx, 1
	test	al, 1
	je	.label_318
	sub	rcx, r8
	jne	.label_333
	or	rax, 1
	jmp	.label_328
.label_324:
	mov	qword ptr [rdi], rsi
.label_328:
	mov	r8, rax
.label_329:
	mov	rax, r8
	add	rsp, 0x28
	ret	
.label_334:
	mov	edi, OFFSET FLAT:label_319
	mov	esi, OFFSET FLAT:label_144
	mov	edx, 0x1e3
	mov	ecx, OFFSET FLAT:label_320
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405460

	.globl mp_prime_p
	.type mp_prime_p, @function
mp_prime_p:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x78
	mov	r15, rdi
	mov	esi, 1
	call	__gmpz_cmp_ui
	test	eax, eax
	jle	.label_346
	mov	esi, 0x17ded79
	mov	rdi, r15
	call	__gmpz_cmp_ui
	mov	ecx, eax
	mov	al, 1
	test	ecx, ecx
	js	.label_340
	xor	r14d, r14d
	lea	r13, [rsp + 0x60]
	lea	r12, [rsp + 0x50]
	lea	rbp, [rsp + 0x40]
	lea	rcx, [rsp + 0x20]
	xor	r8d, r8d
	xor	eax, eax
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, rbp
	call	__gmpz_inits
	mov	edx, 1
	mov	rdi, rbp
	mov	rsi, r15
	call	__gmpz_sub_ui
	xor	esi, esi
	mov	rdi, rbp
	call	__gmpz_scan1
	mov	rbx, rax
	mov	rdi, r13
	mov	rsi, rbp
	mov	rdx, rbx
	call	__gmpz_tdiv_q_2exp
	mov	esi, 2
	mov	rdi, r12
	call	__gmpz_set_ui
	mov	rdi, r15
	mov	rsi, rbp
	mov	rdx, r12
	lea	rcx, [rsp + 0x20]
	mov	r8, r13
	mov	qword ptr [rsp + 0x30], rbx
	mov	r9, rbx
	call	mp_millerrabin
	test	al, al
	je	.label_341
	lea	rbx, [rsp + 0x20]
	lea	r12, [rsp + 0x40]
	mov	rdi, rbx
	mov	rsi, r12
	call	__gmpz_set
	lea	rsi, [rsp + 8]
	mov	rdi, rbx
	call	mp_factor
	xor	ebp, ebp
	lea	r13, [rsp + 0x50]
	nop	dword ptr [rax]
.label_344:
	mov	r14b, 1
	cmp	qword ptr [rsp + 0x18], 0
	je	.label_339
	mov	qword ptr [rsp + 0x38], rbp
	xor	ebp, ebp
	mov	r14d, 1
	nop	dword ptr [rax]
.label_343:
	mov	rdx, qword ptr [rsp + 8]
	add	rdx, rbp
	mov	rdi, rbx
	mov	rsi, r12
	call	__gmpz_divexact
	mov	rdi, rbx
	mov	rsi, r13
	mov	rdx, rbx
	mov	rcx, r15
	call	__gmpz_powm
	mov	esi, 1
	mov	rdi, rbx
	call	__gmpz_cmp_ui
	mov	rcx, qword ptr [rsp + 0x18]
	test	eax, eax
	je	.label_338
	add	rbp, 0x10
	cmp	r14, rcx
	lea	r14, [r14 + 1]
	jb	.label_343
.label_338:
	mov	r14b, 1
	test	eax, eax
	jne	.label_345
	mov	rbp, qword ptr [rsp + 0x38]
	movzx	edx, byte ptr [rbp + primes_diff]
	mov	rdi, r13
	mov	rsi, r13
	call	__gmpz_add_ui
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, r13
	mov	rcx, rbx
	lea	r8, [rsp + 0x60]
	mov	r9, qword ptr [rsp + 0x30]
	call	mp_millerrabin
	test	al, al
	je	.label_347
	inc	rbp
	cmp	rbp, 0x29b
	jbe	.label_344
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_160
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	call	abort
.label_346:
	xor	eax, eax
	jmp	.label_340
.label_347:
	mov	rcx, qword ptr [rsp + 0x18]
	xor	r14d, r14d
.label_345:
	test	rcx, rcx
	je	.label_339
	mov	ebx, 1
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_342:
	shl	rdi, 4
	add	rdi, qword ptr [rsp + 8]
	call	__gmpz_clear
	mov	edi, ebx
	inc	ebx
	cmp	rdi, qword ptr [rsp + 0x18]
	jb	.label_342
.label_339:
	mov	rdi, qword ptr [rsp + 8]
	call	free
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
.label_341:
	lea	rdi, [rsp + 0x60]
	lea	rsi, [rsp + 0x50]
	lea	rdx, [rsp + 0x40]
	lea	rcx, [rsp + 0x20]
	xor	r8d, r8d
	xor	eax, eax
	call	__gmpz_clears
	test	r14b, r14b
	setne	al
.label_340:
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
	#Procedure 0x4056b0

	.globl mp_factor_insert
	.type mp_factor_insert, @function
mp_factor_insert:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r15, rsi
	mov	rbx, qword ptr [rdi + 0x10]
	mov	r13, qword ptr [rdi]
	mov	qword ptr [rsp + 0x10], rdi
	mov	rax, qword ptr [rdi + 8]
	mov	qword ptr [rsp], rax
	mov	r12, rbx
	dec	r12
	mov	r14, r12
	js	.label_349
	mov	rbp, r12
	shl	rbp, 4
	add	rbp, r13
	mov	r14, r12
	nop	dword ptr [rax]
.label_354:
	mov	rdi, rbp
	mov	rsi, r15
	call	__gmpz_cmp
	test	eax, eax
	jle	.label_352
	add	rbp, -0x10
	test	r14, r14
	lea	r14, [r14 - 1]
	jg	.label_354
	jmp	.label_349
.label_352:
	je	.label_350
.label_349:
	lea	rsi, [rbx + 1]
	mov	qword ptr [rsp + 8], rsi
	shl	rsi, 4
	mov	rdi, r13
	call	xrealloc
	mov	rbp, rax
	lea	rsi, [rbx*8 + 8]
	mov	rdi, qword ptr [rsp]
	call	xrealloc
	mov	r13, rax
	shl	rbx, 4
	add	rbx, rbp
	mov	rdi, rbx
	call	__gmpz_init
	jmp	.label_351
	nop	word ptr cs:[rax + rax]
.label_353:
	mov	rdi, rbx
	lea	rbx, [rbx - 0x10]
	mov	rsi, rbx
	call	__gmpz_set
	mov	rax, qword ptr [r13 + r12*8]
	mov	qword ptr [r13 + r12*8 + 8], rax
	dec	r12
.label_351:
	cmp	r12, r14
	jg	.label_353
	lea	rax, [r14 + 1]
	shl	rax, 4
	mov	rdi, rbp
	add	rdi, rax
	mov	rsi, r15
	call	__gmpz_set
	mov	qword ptr [r13 + r14*8 + 8], 1
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax], rbp
	mov	qword ptr [rax + 8], r13
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rax + 0x10], rcx
.label_348:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_350:
	mov	rax, qword ptr [rsp]
	inc	qword ptr [rax + r14*8]
	jmp	.label_348
	nop	
	.section	.text
	.align	16
	#Procedure 0x4057d0

	.globl mp_factor_using_pollard_rho
	.type mp_factor_using_pollard_rho, @function
mp_factor_using_pollard_rho:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	qword ptr [rsp + 8], rdx
	mov	r14, rsi
	mov	r15, rdi
	cmp	byte ptr [rip + dev_debug],  1
	jne	.label_363
	mov	rdi, qword ptr [rip + stderr]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_367
	xor	eax, eax
	mov	rcx, r14
	call	__fprintf_chk
.label_363:
	lea	rdi, [rsp + 0x80]
	lea	rsi, [rsp + 0x70]
	xor	edx, edx
	xor	eax, eax
	call	__gmpz_inits
	lea	rdi, [rsp + 0x40]
	mov	esi, 2
	call	__gmpz_init_set_si
	lea	rdi, [rsp + 0x20]
	mov	esi, 2
	call	__gmpz_init_set_si
	lea	rdi, [rsp + 0x10]
	mov	esi, 2
	call	__gmpz_init_set_si
	lea	rdi, [rsp + 0x50]
	mov	esi, 1
	call	__gmpz_init_set_ui
	mov	esi, 1
	mov	rdi, r15
	call	__gmpz_cmp_ui
	test	eax, eax
	je	.label_357
	lea	rax, [r14 + 1]
	mov	qword ptr [rsp + 0x68], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	lea	rbp, [rsp + 0x80]
	lea	r13, [rsp + 0x20]
	mov	r12d, 1
	jmp	.label_359
.label_355:
	lea	rbx, [r12 + r12]
	lea	rdi, [rsp + 0x40]
	mov	rsi, r13
	call	__gmpz_set
	mov	qword ptr [rsp + 0x38], rbx
	nop	word ptr cs:[rax + rax]
.label_359:
	mov	rdi, rbp
	mov	rsi, r13
	mov	rdx, r13
	call	__gmpz_mul
	mov	rdi, r13
	mov	rsi, rbp
	mov	rdx, r15
	call	__gmpz_mod
	mov	rdi, r13
	mov	rsi, r13
	mov	rbx, r13
	mov	r13, r14
	mov	rdx, r14
	call	__gmpz_add_ui
	mov	rdi, rbp
	lea	rsi, [rsp + 0x10]
	mov	rdx, rbx
	call	__gmpz_sub
	lea	r14, [rsp + 0x70]
	mov	rdi, r14
	lea	rbx, [rsp + 0x50]
	mov	rsi, rbx
	mov	rdx, rbp
	call	__gmpz_mul
	mov	rdi, rbx
	mov	rsi, r14
	mov	rbx, r15
	mov	rdx, r15
	call	__gmpz_mod
	mov	eax, r12d
	and	eax, 0x1f
	cmp	rax, 1
	jne	.label_360
	mov	rdi, rbp
	lea	rsi, [rsp + 0x50]
	mov	rdx, rbx
	call	__gmpz_gcd
	mov	esi, 1
	mov	rdi, rbp
	call	__gmpz_cmp_ui
	test	eax, eax
	jne	.label_364
	lea	rdi, [rsp + 0x40]
	lea	rsi, [rsp + 0x20]
	call	__gmpz_set
.label_360:
	dec	r12
	mov	r14, r13
	mov	r15, rbx
	lea	r13, [rsp + 0x20]
	jne	.label_359
	lea	rdi, [rsp + 0x10]
	mov	rsi, r13
	call	__gmpz_set
	mov	r12, qword ptr [rsp + 0x38]
	test	r12, r12
	mov	rbx, r12
	je	.label_355
	nop	word ptr [rax + rax]
.label_362:
	mov	rdi, rbp
	mov	rsi, r13
	mov	rdx, r13
	call	__gmpz_mul
	mov	rdi, r13
	mov	rsi, rbp
	mov	rdx, r15
	call	__gmpz_mod
	mov	rdi, r13
	mov	rsi, r13
	mov	rdx, r14
	call	__gmpz_add_ui
	dec	rbx
	jne	.label_362
	jmp	.label_355
.label_364:
	mov	r14, r13
	mov	r15, rbx
	lea	rbx, [rsp + 0x40]
	lea	r13, [rsp + 0x10]
	nop	word ptr cs:[rax + rax]
.label_361:
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, rbx
	call	__gmpz_mul
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, r15
	call	__gmpz_mod
	mov	rdi, rbx
	mov	rsi, rbx
	mov	rdx, r14
	call	__gmpz_add_ui
	mov	rdi, rbp
	mov	rsi, r13
	mov	rdx, rbx
	call	__gmpz_sub
	mov	rdi, rbp
	mov	rsi, rbp
	mov	rdx, r15
	call	__gmpz_gcd
	mov	esi, 1
	mov	rdi, rbp
	call	__gmpz_cmp_ui
	test	eax, eax
	je	.label_361
	mov	rdi, r15
	mov	rsi, r15
	mov	rdx, rbp
	call	__gmpz_divexact
	mov	rdi, rbp
	call	mp_prime_p
	test	al, al
	lea	r13, [rsp + 0x20]
	je	.label_365
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, rbp
	call	mp_factor_insert
	jmp	.label_366
.label_365:
	cmp	byte ptr [rip + dev_debug],  1
	jne	.label_356
	mov	rdi, qword ptr [rip + stderr]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_358
	xor	eax, eax
	call	__fprintf_chk
.label_356:
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x68]
	mov	rdx, qword ptr [rsp + 8]
	call	mp_factor_using_pollard_rho
.label_366:
	mov	rdi, r15
	call	mp_prime_p
	test	al, al
	jne	.label_368
	mov	rdi, r13
	mov	rsi, r13
	mov	rdx, r15
	call	__gmpz_mod
	lea	rdi, [rsp + 0x10]
	mov	rsi, rdi
	mov	rdx, r15
	call	__gmpz_mod
	mov	rdi, rbx
	mov	rsi, rbx
	mov	rdx, r15
	call	__gmpz_mod
	mov	esi, 1
	mov	rdi, r15
	call	__gmpz_cmp_ui
	test	eax, eax
	jne	.label_359
	jmp	.label_357
.label_368:
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, r15
	call	mp_factor_insert
.label_357:
	mov	qword ptr [rsp], 0
	lea	rdi, [rsp + 0x50]
	lea	rsi, [rsp + 0x70]
	lea	rdx, [rsp + 0x80]
	lea	rcx, [rsp + 0x10]
	lea	r8, [rsp + 0x20]
	lea	r9, [rsp + 0x40]
	xor	eax, eax
	call	__gmpz_clears
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405b50

	.globl mp_millerrabin
	.type mp_millerrabin, @function
mp_millerrabin:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, r9
	mov	r13, rcx
	mov	r15, rsi
	mov	r12, rdi
	mov	rdi, r13
	mov	rsi, rdx
	mov	rdx, r8
	mov	rcx, r12
	call	__gmpz_powm
	mov	esi, 1
	mov	rdi, r13
	call	__gmpz_cmp_ui
	test	eax, eax
	je	.label_369
	mov	rdi, r13
	mov	rsi, r15
	call	__gmpz_cmp
	test	eax, eax
	je	.label_369
	cmp	r14, 2
	jb	.label_372
	mov	ebx, 2
	nop	word ptr cs:[rax + rax]
.label_370:
	mov	edx, 2
	mov	rdi, r13
	mov	rsi, r13
	mov	rcx, r12
	call	__gmpz_powm_ui
	mov	rdi, r13
	mov	rsi, r15
	call	__gmpz_cmp
	test	eax, eax
	je	.label_369
	mov	esi, 1
	mov	rdi, r13
	call	__gmpz_cmp_ui
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	je	.label_371
	cmp	rbx, r14
	lea	rbx, [rbx + 1]
	jb	.label_370
	jmp	.label_371
.label_369:
	mov	al, 1
	jmp	.label_371
.label_372:
	xor	eax, eax
.label_371:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c10
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c20
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c30

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_377
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_375
	cmp	dword ptr [rbp], 0x20
	jne	.label_375
.label_377:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_374
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_375:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_47
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_373
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_48
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_374:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_373:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_376
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
	#Procedure 0x405cf0

	.globl full_write
	.type full_write, @function
full_write:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbx, rsi
	mov	ebp, edi
	xor	r14d, r14d
	test	r15, r15
	je	.label_378
	nop	word ptr [rax + rax]
.label_380:
	mov	edi, ebp
	mov	rsi, rbx
	mov	rdx, r15
	call	safe_write
	cmp	rax, -1
	je	.label_378
	test	rax, rax
	je	.label_379
	add	r14, rax
	add	rbx, rax
	sub	r15, rax
	jne	.label_380
	jmp	.label_378
.label_379:
	call	__errno_location
	mov	dword ptr [rax], 0x1c
.label_378:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405d50

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	word ptr cs:[rax + rax]
.label_381:
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
	ja	.label_381
	mov	rax, rsi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405da0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_382
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_384
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_386
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_384
	mov	esi, OFFSET FLAT:label_385
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_387
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_387:
	mov	rbx, r14
.label_384:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_382:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_383
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e50
	.globl proper_name
	.type proper_name, @function
proper_name:

	push	r15
	push	r14
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	mov	r14, rax
	cmp	r14, rbx
	je	.label_390
	mov	rdi, r14
	mov	rsi, rbx
	call	mbsstr_trimmed_wordbounded
	test	al, al
	je	.label_389
	mov	rbx, r14
	jmp	.label_390
.label_389:
	mov	rdi, r14
	call	strlen
	mov	r15, rax
	mov	rdi, rbx
	call	strlen
	lea	rdi, [r15 + rax + 4]
	call	xmalloc
	mov	r15, rax
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_388
	xor	eax, eax
	mov	rdi, r15
	mov	r8, r14
	mov	r9, rbx
	call	__sprintf_chk
	mov	rbx, r15
.label_390:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x405ed0

	.globl mbsstr_trimmed_wordbounded
	.type mbsstr_trimmed_wordbounded, @function
mbsstr_trimmed_wordbounded:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x88
	mov	rax, rsi
	mov	rbp, rdi
	mov	esi, 2
	mov	rdi, rax
	call	trim2
	mov	r14, rax
	cmp	byte ptr [rbp], 0
	je	.label_395
	lea	r12, [rsp + 8]
	lea	r15, [rsp + 0x48]
	nop	dword ptr [rax + rax]
.label_408:
	mov	rdi, rbp
	mov	rsi, r14
	call	mbsstr
	mov	rbx, rax
	test	rbx, rbx
	je	.label_395
	call	__ctype_get_mb_cur_max
	cmp	rax, 2
	jb	.label_400
	mov	qword ptr [rsp + 0x18], rbp
	mov	byte ptr [rsp + 8], 0
	mov	qword ptr [rsp + 0xc], 0
	mov	byte ptr [rsp + 0x14], 0
	mov	r13b, 1
	cmp	rbp, rbx
	jae	.label_396
	nop	word ptr cs:[rax + rax]
.label_391:
	mov	rdi, r12
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x28]
	mov	rdi, rax
	shr	rdi, 0x20
	test	al, al
	je	.label_406
	test	edi, edi
	je	.label_403
.label_406:
	mov	rcx, qword ptr [rsp + 0x18]
	add	rcx, qword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 0x18], rcx
	mov	byte ptr [rsp + 0x14], 0
	cmp	rcx, rbx
	jb	.label_391
	test	al, al
	je	.label_396
	call	iswalnum
	test	eax, eax
	sete	r13b
.label_396:
	mov	qword ptr [rsp + 0x18], rbx
	mov	byte ptr [rsp + 8], 0
	mov	qword ptr [rsp + 0xc], 0
	mov	byte ptr [rsp + 0x14], 0
	mov	qword ptr [rsp + 0x58], r14
	mov	byte ptr [rsp + 0x48], 0
	mov	qword ptr [rsp + 0x4c], 0
	jmp	.label_399
	nop	word ptr cs:[rax + rax]
.label_397:
	mov	rax, qword ptr [rsp + 0x20]
	add	qword ptr [rsp + 0x18], rax
	mov	byte ptr [rsp + 0x14], 0
	mov	rax, qword ptr [rsp + 0x60]
	add	qword ptr [rsp + 0x58], rax
.label_399:
	mov	byte ptr [rsp + 0x54], 0
	mov	rdi, r15
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x68]
	test	al, al
	je	.label_393
	shr	rax, 0x20
	je	.label_394
.label_393:
	mov	rdi, r12
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x28]
	test	al, al
	je	.label_397
	shr	rax, 0x20
	jne	.label_397
	jmp	.label_403
	nop	word ptr cs:[rax + rax]
.label_400:
	mov	r15, r14
	mov	r13b, 1
	cmp	rbp, rbx
	mov	r14b, 1
	jae	.label_402
	movzx	ebp, byte ptr [rbx - 1]
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + rbp*2], 8
	sete	r14b
.label_402:
	mov	rdi, r15
	call	strlen
	movzx	ebp, byte ptr [rbx + rax]
	test	rbp, rbp
	je	.label_407
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + rbp*2], 8
	sete	r13b
.label_407:
	mov	bpl, 1
	test	r14b, r13b
	mov	r14, r15
	jne	.label_392
	cmp	byte ptr [rbx], 0
	je	.label_395
	inc	rbx
	mov	rbp, rbx
	lea	r15, [rsp + 0x48]
	jmp	.label_398
	nop	dword ptr [rax + rax]
.label_394:
	mov	rdi, r12
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x28]
	mov	rdi, rax
	shr	rdi, 0x20
	test	edi, edi
	sete	cl
	test	al, al
	setne	dl
	test	al, al
	mov	bpl, 1
	mov	al, 1
	je	.label_401
	and	dl, cl
	mov	al, 1
	jne	.label_401
	call	iswalnum
	test	eax, eax
	sete	al
.label_401:
	test	r13b, r13b
	je	.label_405
	test	al, al
	jne	.label_392
.label_405:
	mov	qword ptr [rsp + 0x18], rbx
	mov	byte ptr [rsp + 8], 0
	mov	qword ptr [rsp + 0xc], 0
	mov	byte ptr [rsp + 0x14], 0
	mov	rdi, r12
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x28]
	test	al, al
	je	.label_404
	shr	rax, 0x20
	je	.label_395
.label_404:
	add	rbx, qword ptr [rsp + 0x20]
	mov	rbp, rbx
.label_398:
	cmp	byte ptr [rbp], 0
	jne	.label_408
.label_395:
	xor	ebp, ebp
.label_392:
	mov	rdi, r14
	call	free
	mov	eax, ebp
	add	rsp, 0x88
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_403:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406160

	.globl proper_name_utf8
	.type proper_name_utf8, @function
proper_name_utf8:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, rsi
	mov	r12, rdi
	xor	edi, edi
	mov	edx, 5
	mov	rsi, r12
	call	dcgettext
	mov	rbx, rax
	call	locale_charset
	mov	r14, rax
	mov	esi, OFFSET FLAT:label_411
	mov	rdi, r14
	call	c_strcasecmp
	test	eax, eax
	je	.label_419
	mov	qword ptr [rsp + 0x10], rbx
	mov	esi, OFFSET FLAT:label_411
	mov	rdi, r13
	mov	rdx, r14
	call	xstr_iconv
	mov	r15, rax
	mov	rdi, r14
	call	strlen
	mov	rbx, rax
	lea	rdi, [rbx + 0xb]
	call	xmalloc
	mov	rbp, rax
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	movabs	rax, 0x4c534e4152542f2f
	mov	qword ptr [rbp + rbx], rax
	mov	byte ptr [rbp + rbx + 0xa], 0
	mov	word ptr [rbp + rbx + 8], 0x5449
	mov	esi, OFFSET FLAT:label_411
	mov	rdi, r13
	mov	rdx, rbp
	call	xstr_iconv
	mov	r13, rax
	mov	rdi, rbp
	call	free
	test	r13, r13
	je	.label_413
	mov	esi, 0x3f
	mov	rdi, r13
	call	strchr
	test	rax, rax
	je	.label_416
	mov	rdi, r13
	call	free
	xor	r13d, r13d
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	jmp	.label_418
.label_419:
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	mov	r15, r13
	xor	ebp, ebp
	jmp	.label_420
.label_413:
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	xor	r13d, r13d
	jmp	.label_418
.label_416:
	mov	qword ptr [rsp + 8], r13
.label_418:
	mov	rbp, r15
	mov	rbx, qword ptr [rsp + 0x10]
.label_420:
	test	r13, r13
	mov	r14, r12
	cmovne	r14, r13
	test	r15, r15
	cmovne	r14, r15
	mov	rdi, rbx
	mov	rsi, r12
	call	strcmp
	test	eax, eax
	je	.label_409
	mov	rdi, rbx
	mov	rsi, r12
	call	mbsstr_trimmed_wordbounded
	test	al, al
	jne	.label_414
	test	r15, r15
	je	.label_421
	mov	rdi, rbx
	mov	rsi, r15
	call	mbsstr_trimmed_wordbounded
	test	al, al
	jne	.label_414
.label_421:
	test	r13, r13
	je	.label_417
	mov	rdi, rbx
	mov	rsi, r13
	call	mbsstr_trimmed_wordbounded
	test	al, al
	jne	.label_414
.label_417:
	mov	rdi, rbx
	call	strlen
	mov	r15, rbx
	mov	rbx, rax
	mov	rdi, r14
	call	strlen
	lea	rdi, [rbx + rax + 4]
	call	xmalloc
	mov	rbx, rax
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_388
	xor	eax, eax
	mov	rdi, rbx
	mov	r8, r15
	mov	r9, r14
	call	__sprintf_chk
.label_414:
	test	rbp, rbp
	je	.label_422
	mov	rdi, rbp
	call	free
.label_422:
	mov	rdi, qword ptr [rsp + 8]
	test	rdi, rdi
	je	.label_412
	call	free
	jmp	.label_412
.label_409:
	test	rbp, rbp
	je	.label_415
	cmp	rbp, r14
	je	.label_415
	mov	rdi, rbp
	call	free
.label_415:
	mov	rdi, qword ptr [rsp + 8]
	test	rdi, rdi
	je	.label_410
	cmp	rdi, r14
	je	.label_410
	call	free
.label_410:
	mov	rbx, r14
.label_412:
	mov	rax, rbx
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
	#Procedure 0x406360
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4063a0
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	eax, dword ptr [rax]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4063b0
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], esi
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4063c0
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406400
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	test	rdi, rdi
	mov	ecx, OFFSET FLAT:default_quoting_options
	cmovne	rcx, rdi
	mov	eax, dword ptr [rcx + 4]
	mov	dword ptr [rcx + 4], esi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406420
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_423
	test	rdx, rdx
	je	.label_423
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_423:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406450
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4064d0

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
.label_519:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_517
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_520]
.label_950:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_524
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_468
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_951:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_532
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_532
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_432:
	cmp	r14, r11
	jae	.label_427
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_427:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_432
.label_532:
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
	jmp	.label_440
.label_943:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_440
.label_946:
	mov	al, 1
.label_944:
	mov	r12b, 1
.label_947:
	test	r12b, 1
	mov	cl, 1
	je	.label_455
	mov	ecx, eax
.label_455:
	mov	al, cl
.label_945:
	test	r12b, 1
	jne	.label_458
	test	r11, r11
	je	.label_504
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_504:
	mov	r14d, 1
	jmp	.label_463
.label_458:
	xor	r14d, r14d
.label_463:
	mov	ecx, OFFSET FLAT:label_468
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_440
.label_948:
	test	r12b, 1
	jne	.label_477
	test	r11, r11
	je	.label_479
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_479:
	mov	r14d, 1
	jmp	.label_482
.label_949:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_483
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_440
.label_477:
	xor	r14d, r14d
.label_482:
	mov	eax, OFFSET FLAT:label_483
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_440:
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
	jmp	.label_497
	nop	dword ptr [rax]
.label_433:
	inc	rsi
.label_497:
	cmp	rbp, -1
	je	.label_534
	cmp	rsi, rbp
	jne	.label_535
	jmp	.label_537
	nop	word ptr cs:[rax + rax]
.label_534:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_541
.label_535:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_544
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_462
	cmp	rbp, -1
	jne	.label_462
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
.label_462:
	cmp	rbx, rbp
	jbe	.label_441
.label_544:
	xor	r8d, r8d
.label_473:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_442
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_447]
.label_1023:
	test	rsi, rsi
	jne	.label_435
	jmp	.label_453
	nop	word ptr cs:[rax + rax]
.label_441:
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
	jne	.label_469
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_473
	jmp	.label_481
.label_469:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_473
.label_1027:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_489
	test	rsi, rsi
	jne	.label_491
	cmp	rbp, 1
	je	.label_453
	xor	r13d, r13d
	jmp	.label_430
.label_1016:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_496
	cmp	byte ptr [rsp + 6], 0
	jne	.label_457
	cmp	r12d, 2
	jne	.label_501
	mov	eax, r9d
	and	al, 1
	jne	.label_501
	cmp	r14, r11
	jae	.label_505
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_505:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_509
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_509:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_466
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_466:
	add	r14, 3
	mov	r9b, 1
.label_501:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_490
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_490:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_522
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_522
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_522
	cmp	r14, r11
	jae	.label_459
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_459:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_527
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_527:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_430
.label_1017:
	mov	bl, 0x62
	jmp	.label_424
.label_1018:
	mov	cl, 0x74
	jmp	.label_445
.label_1019:
	mov	bl, 0x76
	jmp	.label_424
.label_1020:
	mov	bl, 0x66
	jmp	.label_424
.label_1021:
	mov	cl, 0x72
	jmp	.label_445
.label_1024:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_428
	cmp	byte ptr [rsp + 6], 0
	jne	.label_434
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
	jae	.label_438
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_438:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_450
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_450:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_456
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_456:
	add	r14, 3
	xor	r9d, r9d
.label_428:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_430
.label_1025:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_465
	cmp	r12d, 2
	jne	.label_435
	cmp	byte ptr [rsp + 6], 0
	je	.label_435
	jmp	.label_434
.label_1026:
	cmp	r12d, 2
	jne	.label_478
	cmp	byte ptr [rsp + 6], 0
	jne	.label_434
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_429
.label_442:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_486
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
.label_425:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_500
	test	r8b, r8b
	je	.label_500
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_430
.label_489:
	test	rsi, rsi
	jne	.label_502
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_502
.label_453:
	mov	dl, 1
.label_1022:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_434
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_430:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_526
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_528
	jmp	.label_533
	nop	word ptr cs:[rax + rax]
.label_526:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_533
.label_528:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_538
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_429
	jmp	.label_426
	nop	dword ptr [rax]
.label_533:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_426
	jmp	.label_429
.label_538:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_426
.label_496:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_433
	xor	r15d, r15d
	jmp	.label_435
.label_478:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_445
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_429
.label_445:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_434
.label_424:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_430
	nop	word ptr cs:[rax + rax]
.label_426:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_457
	cmp	r12d, 2
	jne	.label_460
	mov	eax, r9d
	and	al, 1
	jne	.label_460
	cmp	r14, r11
	jae	.label_521
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_521:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_471
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_471:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_448
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_448:
	add	r14, 3
	mov	r9b, 1
.label_460:
	cmp	r14, r11
	jae	.label_488
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_488:
	inc	r14
	jmp	.label_536
.label_486:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_487
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_487:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_529:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_507
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_511
	cmp	rbp, -2
	je	.label_516
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_480
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_470:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_476
	bt	rsi, rdx
	jb	.label_531
.label_476:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_470
.label_480:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_443
	xor	r13d, r13d
.label_443:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_529
	jmp	.label_425
.label_522:
	xor	r13d, r13d
	jmp	.label_430
.label_502:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_430
.label_465:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_435
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_435
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_435
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_542
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_464
	cmp	byte ptr [rsp + 6], 0
	jne	.label_540
	cmp	r14, r11
	jae	.label_543
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_543:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_512
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_512:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_467
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_467:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_439
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_439:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_430
.label_435:
	xor	eax, eax
.label_491:
	xor	r13d, r13d
	jmp	.label_430
.label_500:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_485
	nop	word ptr cs:[rax + rax]
.label_436:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_485:
	test	r8b, r8b
	je	.label_492
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_493
	cmp	r14, r11
	jae	.label_508
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_508:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_493
	nop	dword ptr [rax]
.label_492:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_481
	cmp	r12d, 2
	jne	.label_506
	mov	eax, r9d
	and	al, 1
	jne	.label_506
	cmp	r14, r11
	jae	.label_510
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_510:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_514
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_514:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_518
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_518:
	add	r14, 3
	mov	r9b, 1
.label_506:
	cmp	r14, r11
	jae	.label_461
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_461:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_525
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_525:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_530
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_530:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_493:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_429
	test	r9b, 1
	je	.label_452
	mov	ebx, eax
	and	bl, 1
	jne	.label_452
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_545
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_545:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_513
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_513:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_452:
	cmp	r14, r11
	jae	.label_436
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_436
	nop	word ptr cs:[rax + rax]
.label_429:
	test	r9b, 1
	je	.label_446
	and	al, 1
	jne	.label_446
	cmp	r14, r11
	jae	.label_449
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_449:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_454
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_454:
	add	r14, 2
	xor	r9d, r9d
.label_446:
	mov	ebx, r15d
.label_536:
	cmp	r14, r11
	jae	.label_494
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_494:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_433
.label_511:
	xor	r13d, r13d
.label_507:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_425
.label_516:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_475
	mov	rsi, qword ptr [rsp + 0x58]
.label_498:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_437
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_498
	xor	r13d, r13d
	jmp	.label_425
.label_475:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_425
.label_437:
	xor	r13d, r13d
	jmp	.label_425
.label_542:
	xor	r13d, r13d
	jmp	.label_430
.label_464:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_430
	nop	dword ptr [rax + rax]
.label_537:
	mov	rcx, rsi
.label_541:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_495
	or	al, dl
	je	.label_499
.label_495:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_503
	or	al, dl
	jne	.label_503
	test	r10b, 1
	jne	.label_515
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_503
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_519
.label_503:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_523
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_444
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_444
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_539:
	cmp	r14, r11
	jae	.label_484
	mov	byte ptr [rcx + r14], al
.label_484:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_539
	jmp	.label_444
.label_457:
	mov	qword ptr [rsp + 0x20], rbp
.label_481:
	mov	rdx, rdi
	jmp	.label_451
.label_434:
	mov	qword ptr [rsp + 0x20], rbp
.label_531:
	mov	rdx, rdi
	mov	eax, 2
.label_431:
	mov	qword ptr [rsp + 0x38], rax
.label_451:
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
.label_472:
	mov	r14, rax
.label_474:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_499:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_451
.label_515:
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
	jmp	.label_472
.label_523:
	mov	rcx, qword ptr [rsp + 8]
.label_444:
	cmp	r14, r11
	jae	.label_474
	mov	byte ptr [rcx + r14], 0
	jmp	.label_474
.label_540:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_431
.label_517:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4072e0
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4073b0
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
	je	.label_546
	mov	qword ptr [rax], rbx
.label_546:
	mov	rax, r14
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4074a0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_547
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_550:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_550
.label_547:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_551
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_548], OFFSET FLAT:slot0
.label_551:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_549
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_549:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407540
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x407550

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
	js	.label_555
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_558
	cmp	r12d, 0x7fffffff
	je	.label_553
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
	jne	.label_556
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_556:
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
.label_558:
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
	jbe	.label_554
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_557
.label_554:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_552
	mov	rdi, r14
	call	free
.label_552:
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
.label_557:
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
.label_555:
	call	abort
.label_553:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407710
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407720
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	mov	rsi, rax
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407740
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407760
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
	je	.label_559
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
.label_559:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4077d0
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
	je	.label_560
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
.label_560:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407840
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
	je	.label_561
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
.label_561:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4078b0
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
	je	.label_562
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
.label_562:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407920
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_563]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_564]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_565]
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
	nop	
	.section	.text
	.align	16
	#Procedure 0x407990
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_563]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_564]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_565]
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
	nop	
	.section	.text
	.align	16
	#Procedure 0x407a00

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_563]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_564]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_565]
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407a60
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_563]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_564]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_565]
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407ac0
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
	je	.label_566
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
.label_566:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407b60
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_563]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_564]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_565]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_567
	test	rdx, rdx
	je	.label_567
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_567:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x407bd0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_563]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_564]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_565]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_568
	test	rdx, rdx
	je	.label_568
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_568:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407c40
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_563]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_564]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_565]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_569
	test	rsi, rsi
	je	.label_569
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_569:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x407cb0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_563]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_564]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_565]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_570
	test	rsi, rsi
	je	.label_570
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
.label_570:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407d20
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407d30
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407d50
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407d70

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsi, rax
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407d90

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
	jne	.label_575
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_579
	cmp	ecx, 0x55
	jne	.label_571
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_571
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_571
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_571
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_571
	cmp	byte ptr [rax + 5], 0
	jne	.label_571
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_577
	mov	eax, OFFSET FLAT:label_578
	jmp	.label_574
.label_579:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_571
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_571
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_571
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_571
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_571
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_571
	cmp	byte ptr [rax + 7], 0
	je	.label_576
.label_571:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_483
	mov	eax, OFFSET FLAT:label_468
.label_574:
	cmove	rax, rcx
.label_575:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_576:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_572
	mov	eax, OFFSET FLAT:label_573
	jmp	.label_574
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407e60

	.globl init_tokenbuffer
	.type init_tokenbuffer, @function
init_tokenbuffer:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi], xmm0
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407e70

	.globl readtoken
	.type readtoken, @function
readtoken:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	qword ptr [rsp + 8], rcx
	mov	r15, rdi
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	test	rdx, rdx
	je	.label_584
	mov	eax, edx
	and	eax, 1
	xor	edi, edi
	cmp	rdx, 1
	je	.label_585
	sub	rdx, rax
	xor	edi, edi
	nop	word ptr [rax + rax]
.label_591:
	movzx	ecx, byte ptr [rsi + rdi]
	mov	ebp, 1
	shl	rbp, cl
	shr	rcx, 6
	or	qword ptr [rsp + rcx*8 + 0x10], rbp
	movzx	ecx, byte ptr [rsi + rdi + 1]
	mov	ebp, 1
	shl	rbp, cl
	shr	rcx, 6
	or	qword ptr [rsp + rcx*8 + 0x10], rbp
	add	rdi, 2
	cmp	rdx, rdi
	jne	.label_591
.label_585:
	test	rax, rax
	je	.label_584
	movzx	ecx, byte ptr [rsi + rdi]
	mov	eax, 1
	shl	rax, cl
	shr	rcx, 6
	or	qword ptr [rsp + rcx*8 + 0x10], rax
	nop	
.label_584:
	mov	rax, qword ptr [r15 + 8]
	cmp	rax, qword ptr [r15 + 0x10]
	jae	.label_580
	lea	rcx, [rax + 1]
	mov	qword ptr [r15 + 8], rcx
	movzx	ebx, byte ptr [rax]
.label_592:
	movsxd	rax, ebx
	shr	rax, 6
	mov	rax, qword ptr [rsp + rax*8 + 0x10]
	bt	rax, rbx
	jb	.label_584
	jmp	.label_589
.label_580:
	mov	rdi, r15
	call	__uflow
	mov	ebx, eax
	mov	rax, -1
	test	ebx, ebx
	jns	.label_592
	jmp	.label_587
.label_589:
	mov	rax, qword ptr [rsp + 8]
	mov	r13, qword ptr [rax]
	mov	r12, qword ptr [rax + 8]
	xor	ecx, ecx
	xor	ebp, ebp
	jmp	.label_581
	nop	word ptr cs:[rax + rax]
.label_588:
	lea	rcx, [rax + 1]
	mov	qword ptr [r15 + 8], rcx
	movzx	ebx, byte ptr [rax]
	xor	ecx, ecx
.label_581:
	mov	r14, rbp
	cmp	r14, r13
	jne	.label_590
	test	r12, r12
	je	.label_593
	movabs	rax, 0x5555555555555554
	cmp	r14, rax
	jae	.label_594
	mov	rbp, rcx
	mov	r13, r14
	shr	r13, 1
	inc	r13
	add	r13, r14
	jmp	.label_582
.label_593:
	mov	rbp, rcx
	test	r14, r14
	mov	r13, r14
	mov	eax, 0x80
	cmove	r13, rax
	test	r13, r13
	js	.label_586
.label_582:
	mov	rdi, r12
	mov	rsi, r13
	call	xrealloc
	mov	r12, rax
	mov	rcx, rbp
.label_590:
	test	cl, 1
	jne	.label_583
	movsxd	rax, ebx
	shr	rax, 6
	mov	rax, qword ptr [rsp + rax*8 + 0x10]
	bt	rax, rbx
	jb	.label_583
	lea	rbp, [r14 + 1]
	mov	byte ptr [r12 + r14], bl
	mov	rax, qword ptr [r15 + 8]
	cmp	rax, qword ptr [r15 + 0x10]
	jb	.label_588
	mov	rdi, r15
	call	__uflow
	mov	ebx, eax
	mov	ecx, ebx
	shr	ecx, 0x1f
	test	ebx, ebx
	jns	.label_581
	mov	rax, -1
	cmp	r14, -1
	jne	.label_581
	jmp	.label_587
.label_583:
	mov	byte ptr [r12 + r14], 0
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax + 8], r12
	mov	qword ptr [rax], r13
	mov	rax, r14
.label_587:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_594:
	call	xalloc_die
.label_586:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x408050
	.globl readtokens
	.type readtokens, @function
readtokens:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	qword ptr [rsp + 0x30], r9
	mov	qword ptr [rsp + 0x28], r8
	mov	rbx, rcx
	mov	qword ptr [rsp + 0x48], rdx
	mov	qword ptr [rsp + 0x40], rdi
	test	rsi, rsi
	lea	rax, [rsi + 1]
	mov	ebp, 0x40
	cmovne	rbp, rax
	mov	rax, rbp
	shr	rax, 0x3c
	jne	.label_596
	lea	r14, [rbp*8]
	mov	rdi, r14
	call	xmalloc
	mov	qword ptr [rsp], rax
	mov	rdi, r14
	call	xmalloc
	mov	qword ptr [rsp + 8], rax
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	xor	r14d, r14d
	mov	qword ptr [rsp + 0x38], rbx
	jmp	.label_598
	nop	word ptr cs:[rax + rax]
.label_597:
	mov	rdi, rbx
	call	xmalloc
	mov	r13, rax
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax + r14*8], r12
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdi, r13
	mov	rdx, rbx
	call	memcpy
	mov	qword ptr [rbp + r14*8], r13
	inc	r14
	mov	rbx, r15
	mov	rbp, qword ptr [rsp + 0x50]
.label_598:
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsi, qword ptr [rsp + 0x48]
	mov	rdx, rbx
	lea	rcx, [rsp + 0x10]
	call	readtoken
	cmp	r14, rbp
	jb	.label_599
	mov	r15, rax
	cmp	qword ptr [rsp], 0
	je	.label_600
	movabs	rax, 0xaaaaaaaaaaaaaaa
	cmp	rbp, rax
	jae	.label_596
	mov	rax, rbp
	shr	rax, 1
	lea	rcx, [rbp + rax]
	lea	rbp, [rbp + rax + 1]
	lea	r13, [rcx*8 + 8]
	mov	rdi, qword ptr [rsp]
	mov	rsi, r13
	call	xrealloc
	mov	qword ptr [rsp], rax
	movabs	rax, 0xfffffffffffffff
	cmp	rbp, rax
	jbe	.label_601
	jmp	.label_596
.label_600:
	test	rbp, rbp
	mov	eax, 0x10
	cmove	rbp, rax
	movabs	rax, 0xfffffffffffffff
	cmp	rbp, rax
	ja	.label_603
	lea	r13, [rbp*8]
	mov	rdi, qword ptr [rsp]
	mov	rsi, r13
	call	xrealloc
	mov	qword ptr [rsp], rax
.label_601:
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, r13
	call	xrealloc
	mov	qword ptr [rsp + 8], rax
	mov	rbx, qword ptr [rsp + 0x38]
	mov	rax, r15
.label_599:
	cmp	rax, -1
	je	.label_595
	mov	qword ptr [rsp + 0x50], rbp
	mov	r15, rbx
	mov	rbp, qword ptr [rsp]
	mov	rbx, rax
	inc	rbx
	mov	r12, rax
	jns	.label_597
.label_596:
	call	xalloc_die
.label_595:
	mov	rbp, qword ptr [rsp]
	mov	qword ptr [rbp + r14*8], 0
	mov	rbx, qword ptr [rsp + 8]
	mov	qword ptr [rbx + r14*8], 0
	mov	rdi, qword ptr [rsp + 0x18]
	call	free
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rax], rbp
	mov	rax, qword ptr [rsp + 0x30]
	test	rax, rax
	je	.label_604
	mov	qword ptr [rax], rbx
	jmp	.label_602
.label_604:
	mov	rdi, rbx
	call	free
.label_602:
	mov	rax, r14
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_603:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408250

	.globl safe_write
	.type safe_write, @function
safe_write:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15d, edi
.label_606:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	write
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_605
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_606
	cmp	rbx, 0x7ff00001
	jb	.label_605
	cmp	eax, 0x16
	mov	ebx, 0x7ff00000
	je	.label_606
.label_605:
	mov	rax, rbp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4082b0

	.globl trim2
	.type trim2, @function
trim2:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x50
	mov	r14d, esi
	call	__strdup
	mov	r12, rax
	test	r12, r12
	je	.label_615
	call	__ctype_get_mb_cur_max
	cmp	rax, 2
	jb	.label_618
	test	r14d, r14d
	je	.label_619
	mov	qword ptr [rsp + 0x20], r12
	mov	rdi, r12
	call	strlen
	lea	rcx, [r12 + rax]
	mov	qword ptr [rsp + 8], rcx
	mov	byte ptr [rsp + 0x10], 0
	mov	qword ptr [rsp + 0x14], 0
	mov	byte ptr [rsp + 0x1c], 0
	test	rax, rax
	mov	rbp, r12
	jle	.label_614
	lea	rbp, [rsp + 8]
	nop	
.label_623:
	mov	rdi, rbp
	call	mbiter_multi_next
	mov	rdi, qword ptr [rsp + 0x30]
	test	dil, dil
	je	.label_611
	shr	rdi, 0x20
	call	iswspace
	test	eax, eax
	je	.label_611
	mov	rax, qword ptr [rsp + 0x20]
	add	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x20], rax
	mov	byte ptr [rsp + 0x1c], 0
	cmp	rax, qword ptr [rsp + 8]
	jb	.label_623
.label_611:
	mov	rbp, qword ptr [rsp + 0x20]
.label_614:
	mov	rdi, rbp
	call	strlen
	lea	rdx, [rax + 1]
	mov	rdi, r12
	mov	rsi, rbp
	call	memmove
	cmp	r14d, 1
	je	.label_609
.label_619:
	mov	qword ptr [rsp + 0x20], r12
	mov	rdi, r12
	call	strlen
	mov	rcx, r12
	add	rcx, rax
	mov	qword ptr [rsp + 8], rcx
	mov	byte ptr [rsp + 0x10], 0
	mov	qword ptr [rsp + 0x14], 0
	mov	byte ptr [rsp + 0x1c], 0
	test	rax, rax
	jle	.label_609
	xor	ebp, ebp
	lea	r14, [rsp + 8]
	nop	dword ptr [rax + rax]
.label_608:
	mov	rdi, r14
	call	mbiter_multi_next
	cmp	ebp, 1
	je	.label_616
	test	ebp, ebp
	jne	.label_617
	mov	rdi, qword ptr [rsp + 0x30]
	mov	ebp, 1
	test	dil, dil
	je	.label_610
	shr	rdi, 0x20
	call	iswspace
	test	eax, eax
	je	.label_622
	xor	ebp, ebp
	jmp	.label_610
	nop	dword ptr [rax + rax]
.label_616:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	ebp, 1
	test	dil, dil
	je	.label_610
	shr	rdi, 0x20
	call	iswspace
	test	eax, eax
	je	.label_610
	mov	rdi, qword ptr [rsp + 0x30]
	test	dil, dil
	je	.label_607
	shr	rdi, 0x20
	call	iswspace
	test	eax, eax
	je	.label_607
	mov	ebp, 2
	mov	r15, qword ptr [rsp + 0x20]
	jmp	.label_610
	nop	
.label_617:
	mov	rdi, qword ptr [rsp + 0x30]
	test	dil, dil
	je	.label_607
	shr	rdi, 0x20
	call	iswspace
	mov	ebp, 2
	test	eax, eax
	jne	.label_610
	jmp	.label_607
.label_622:
	mov	rdi, qword ptr [rsp + 0x30]
	test	dil, dil
	je	.label_610
	shr	rdi, 0x20
	call	iswspace
	test	eax, eax
	je	.label_610
	nop	word ptr cs:[rax + rax]
.label_607:
	mov	ebp, 1
.label_610:
	mov	rax, qword ptr [rsp + 0x20]
	add	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x20], rax
	mov	byte ptr [rsp + 0x1c], 0
	cmp	rax, qword ptr [rsp + 8]
	jb	.label_608
	cmp	ebp, 2
	jne	.label_609
	mov	byte ptr [r15], 0
	jmp	.label_609
.label_618:
	test	r14d, r14d
	je	.label_612
	mov	bl, byte ptr [r12]
	test	bl, bl
	mov	rbp, r12
	je	.label_620
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rbp, r12
	nop	word ptr cs:[rax + rax]
.label_621:
	movzx	ecx, bl
	test	byte ptr [rax + rcx*2 + 1], 0x20
	je	.label_620
	movzx	ebx, byte ptr [rbp + 1]
	inc	rbp
	test	bl, bl
	jne	.label_621
.label_620:
	mov	rdi, rbp
	call	strlen
	lea	rdx, [rax + 1]
	mov	rdi, r12
	mov	rsi, rbp
	call	memmove
	cmp	r14d, 1
	je	.label_609
.label_612:
	mov	rdi, r12
	call	strlen
	lea	rbp, [r12 + rax - 1]
	cmp	rbp, r12
	jb	.label_609
	call	__ctype_b_loc
	nop	dword ptr [rax]
.label_613:
	movzx	ecx, byte ptr [rbp]
	mov	rdx, qword ptr [rax]
	test	byte ptr [rdx + rcx*2 + 1], 0x20
	je	.label_609
	mov	byte ptr [rbp], 0
	dec	rbp
	cmp	rbp, r12
	jae	.label_613
.label_609:
	mov	rax, r12
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_615:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x408560

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
	je	.label_636
	mov	edx, OFFSET FLAT:label_627
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_633
.label_636:
	mov	edx, OFFSET FLAT:label_634
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_633:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_638
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
	mov	esi, OFFSET FLAT:label_635
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_639
	jmp	qword ptr [(r12 * 8) + label_640]
.label_993:
	add	rsp, 8
	jmp	.label_626
.label_639:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_630
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
	jmp	.label_626
.label_994:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_625
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
.label_995:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_631
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
.label_996:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_628
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
.label_997:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_642
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
	jmp	.label_626
.label_998:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_641
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
	jmp	.label_626
.label_999:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_624
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
	jmp	.label_626
.label_1000:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_629
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
	jmp	.label_626
.label_1002:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_632
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
	jmp	.label_626
.label_1001:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_637
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
.label_626:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4088c0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_643:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_643
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4088f0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_654
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_656
.label_654:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_656:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_644
	cmp	r10d, 0x29
	jae	.label_653
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_655
.label_653:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_655:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_644
	cmp	r10d, 0x29
	jae	.label_651
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_652
.label_651:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_652:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_644
	cmp	r10d, 0x29
	jae	.label_649
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_650
.label_649:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_650:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_644
	cmp	r10d, 0x29
	jae	.label_647
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_648
.label_647:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_648:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_644
	cmp	r10d, 0x29
	jae	.label_645
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_646
.label_645:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_646:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_644
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_644
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_644
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_644
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_644:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408ae0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_657
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_657:
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408b70
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_658
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_659
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_661
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_9
	mov	ecx, OFFSET FLAT:label_10
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_660
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408bf0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_662
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_663
	test	rax, rax
	je	.label_662
.label_663:
	pop	rbx
	ret	
.label_662:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408c30

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_664
	test	rax, rax
	je	.label_665
.label_664:
	pop	rbx
	ret	
.label_665:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408c50
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_666
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_667
	test	rbx, rbx
	jne	.label_667
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_667:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_668
	test	rax, rax
	je	.label_666
.label_668:
	pop	rbx
	ret	
.label_666:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408ca0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_669
	test	rbx, rbx
	jne	.label_669
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_669:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_671
	test	rax, rax
	je	.label_670
.label_671:
	pop	rbx
	ret	
.label_670:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x408cd0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_676
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_674
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_672
.label_676:
	test	rcx, rcx
	jne	.label_678
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_678:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_673
.label_672:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_675
	test	rbx, rbx
	jne	.label_675
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_675:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_677
	test	rax, rax
	je	.label_674
.label_677:
	pop	rbx
	ret	
.label_674:
	call	xalloc_die
.label_673:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408d70
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_679
	test	rax, rax
	je	.label_680
.label_679:
	pop	rbx
	ret	
.label_680:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408d90
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_683
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_685
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_682
	call	free
	xor	eax, eax
	jmp	.label_684
.label_683:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_681
	mov	qword ptr [rsi], rbx
.label_682:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_684
	test	rax, rax
	je	.label_681
.label_684:
	pop	rbx
	ret	
.label_681:
	call	xalloc_die
.label_685:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408e00
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
	je	.label_687
	test	r14, r14
	je	.label_686
.label_687:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_686:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408e40
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_688
	call	rpl_calloc
	test	rax, rax
	je	.label_688
	pop	rcx
	ret	
.label_688:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408e70

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
	je	.label_689
	test	r15, r15
	je	.label_690
.label_689:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_690:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408eb0
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
	je	.label_692
	test	r15, r15
	je	.label_691
.label_692:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_691:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408f00

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_693
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_48
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x408f30
	.globl xmem_cd_iconv
	.type xmem_cd_iconv, @function
xmem_cd_iconv:

	push	rbx
	call	mem_cd_iconv
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_695
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_694
.label_695:
	mov	eax, ebx
	pop	rbx
	ret	
.label_694:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x408f50
	.globl xstr_cd_iconv
	.type xstr_cd_iconv, @function
xstr_cd_iconv:

	push	rbx
	call	str_cd_iconv
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_697
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_696
.label_697:
	mov	rax, rbx
	pop	rbx
	ret	
.label_696:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408f80

	.globl xstr_iconv
	.type xstr_iconv, @function
xstr_iconv:
	push	rbx
	call	str_iconv
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_699
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_698
.label_699:
	mov	rax, rbx
	pop	rbx
	ret	
.label_698:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408fb0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_700
	test	rsi, rsi
	mov	ecx, 1
	je	.label_701
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_701
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_700:
	mov	ecx, 1
.label_701:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409000

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
	je	.label_702
	cmp	r15, -2
	jb	.label_702
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_702
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_702:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409060

	.globl c_strcasecmp
	.type c_strcasecmp, @function
c_strcasecmp:
	xor	eax, eax
	cmp	rdi, rsi
	je	.label_703
	nop	word ptr [rax + rax]
.label_706:
	movzx	ecx, byte ptr [rdi]
	lea	edx, [rcx - 0x41]
	lea	eax, [rcx + 0x20]
	cmp	edx, 0x1a
	cmovae	eax, ecx
	movzx	edx, byte ptr [rsi]
	lea	r8d, [rdx - 0x41]
	lea	ecx, [rdx + 0x20]
	cmp	r8d, 0x1a
	cmovae	ecx, edx
	and	eax, 0xff
	je	.label_704
	inc	rdi
	inc	rsi
	movzx	ecx, cl
	cmp	eax, ecx
	je	.label_706
	jmp	.label_705
.label_704:
	movzx	ecx, cl
	xor	eax, eax
.label_705:
	sub	eax, ecx
.label_703:
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4090b0

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
	jne	.label_708
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_707
	test	cl, cl
	jne	.label_707
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_707
.label_708:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_707
	call	__errno_location
	mov	dword ptr [rax], 0
.label_707:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409110

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_710
	cmp	byte ptr [rax], 0x43
	jne	.label_712
	cmp	byte ptr [rax + 1], 0
	je	.label_709
.label_712:
	mov	esi, OFFSET FLAT:label_711
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_710
.label_709:
	xor	ebx, ebx
.label_710:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409150

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_27
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_713
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409180

	.globl mbiter_multi_next
	.type mbiter_multi_next, @function
mbiter_multi_next:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	rbx, rdi
	cmp	byte ptr [rbx + 0x14], 0
	jne	.label_714
	cmp	byte ptr [rbx + 8], 0
	je	.label_719
	lea	r13, [rbx + 0x18]
	mov	r15, qword ptr [rbx + 0x18]
	lea	r14, [rbx + 0xc]
.label_726:
	lea	r12, [rbx + 0x2c]
	mov	rdx, qword ptr [rbx]
	sub	rdx, r15
	mov	rdi, r12
	mov	rsi, r15
	mov	rcx, r14
	call	rpl_mbrtowc
	mov	qword ptr [rbx + 0x20], rax
	cmp	rax, -2
	je	.label_715
	test	rax, rax
	je	.label_717
	cmp	rax, -1
	jne	.label_718
	mov	qword ptr [rbx + 0x20], 1
	mov	byte ptr [rbx + 0x28], 0
	jmp	.label_716
.label_719:
	mov	r15, qword ptr [rbx + 0x18]
	movzx	eax, byte ptr [r15]
	mov	rcx, rax
	shr	rcx, 5
	mov	ecx, dword ptr [(rcx * 4) + is_basic_table]
	bt	ecx, eax
	jae	.label_720
	mov	qword ptr [rbx + 0x20], 1
	movsx	eax, byte ptr [r15]
	mov	dword ptr [rbx + 0x2c], eax
	mov	byte ptr [rbx + 0x28], 1
	jmp	.label_716
.label_715:
	mov	rax, qword ptr [rbx]
	sub	rax, qword ptr [r13]
	mov	qword ptr [rbx + 0x20], rax
	mov	byte ptr [rbx + 0x28], 0
	jmp	.label_716
.label_717:
	mov	qword ptr [rbx + 0x20], 1
	mov	rax, qword ptr [rbx + 0x18]
	cmp	byte ptr [rax], 0
	jne	.label_721
	cmp	dword ptr [r12], 0
	jne	.label_727
.label_718:
	mov	byte ptr [rbx + 0x28], 1
	mov	rdi, r14
	call	mbsinit
	test	eax, eax
	je	.label_716
	mov	byte ptr [rbx + 8], 0
.label_716:
	mov	byte ptr [rbx + 0x14], 1
.label_714:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
.label_720:
	lea	r14, [rbx + 0xc]
	mov	rdi, r14
	call	mbsinit
	test	eax, eax
	je	.label_722
	mov	byte ptr [rbx + 8], 1
	lea	r13, [rbx + 0x18]
	jmp	.label_726
.label_721:
	mov	edi, OFFSET FLAT:label_729
	mov	esi, OFFSET FLAT:label_724
	mov	edx, 0xa9
	mov	ecx, OFFSET FLAT:label_725
	call	__assert_fail
.label_727:
	mov	edi, OFFSET FLAT:label_728
	mov	esi, OFFSET FLAT:label_724
	mov	edx, 0xaa
	mov	ecx, OFFSET FLAT:label_725
	call	__assert_fail
.label_722:
	mov	edi, OFFSET FLAT:label_723
	mov	esi, OFFSET FLAT:label_724
	mov	edx, 0x8e
	mov	ecx, OFFSET FLAT:label_725
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4092d0
	.globl mbiter_multi_reloc
	.type mbiter_multi_reloc, @function
mbiter_multi_reloc:

	add	qword ptr [rdi + 0x18], rsi
	add	qword ptr [rdi], rsi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4092e0
	.globl mbiter_multi_copy
	.type mbiter_multi_copy, @function
mbiter_multi_copy:

	push	r15
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	mov	rax, qword ptr [rbx]
	mov	qword ptr [r14], rax
	mov	al, byte ptr [rbx + 8]
	test	al, al
	mov	byte ptr [r14 + 8], al
	je	.label_730
	mov	rax, qword ptr [rbx + 0xc]
	mov	qword ptr [r14 + 0xc], rax
	jmp	.label_732
.label_730:
	mov	qword ptr [r14 + 0xc], 0
.label_732:
	mov	al, byte ptr [rbx + 0x14]
	mov	byte ptr [r14 + 0x14], al
	mov	rsi, qword ptr [rbx + 0x18]
	lea	rax, [rbx + 0x30]
	cmp	rsi, rax
	jne	.label_733
	lea	r15, [r14 + 0x30]
	mov	rdx, qword ptr [rbx + 0x20]
	mov	rdi, r15
	call	memcpy
	mov	rsi, r15
.label_733:
	mov	qword ptr [r14 + 0x18], rsi
	mov	rax, qword ptr [rbx + 0x20]
	mov	qword ptr [r14 + 0x20], rax
	mov	rax, qword ptr [rbx + 0x28]
	test	al, al
	mov	byte ptr [r14 + 0x28], al
	je	.label_731
	shr	rax, 0x20
	mov	dword ptr [r14 + 0x2c], eax
.label_731:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409360

	.globl mbsstr
	.type mbsstr, @function
mbsstr:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x168
	mov	rbp, rsi
	mov	qword ptr [rsp], rdi
	call	__ctype_get_mb_cur_max
	cmp	rax, 2
	mov	qword ptr [rsp + 8], rbp
	jb	.label_764
	mov	qword ptr [rsp + 0xf8], rbp
	mov	byte ptr [rsp + 0xe8], 0
	mov	qword ptr [rsp + 0xec], 0
	mov	byte ptr [rsp + 0xf4], 0
	lea	rdi, [rsp + 0xe8]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x108]
	test	al, al
	je	.label_758
	shr	rax, 0x20
	jne	.label_758
	mov	rax, qword ptr [rsp]
	jmp	.label_738
.label_764:
	mov	r12b, byte ptr [rbp]
	test	r12b, r12b
	mov	rdi, rbp
	je	.label_740
	mov	rbp, qword ptr [rsp]
	mov	r15b, byte ptr [rbp]
	xor	eax, eax
	test	r15b, r15b
	je	.label_738
	mov	r9b, 1
	xor	r8d, r8d
	mov	r10, rdi
	xor	r13d, r13d
	xor	r14d, r14d
.label_735:
	cmp	r14, 0xa
	jb	.label_737
	mov	eax, r9d
	and	al, 1
	je	.label_737
	lea	rax, [r14 + r14*4]
	cmp	r13, rax
	jb	.label_737
	test	r10, r10
	je	.label_742
	mov	byte ptr [rsp], r12b
	mov	rsi, r13
	sub	rsi, r8
	mov	rbx, rbp
	mov	rdi, r10
	mov	rbp, r9
	mov	r12, r10
	call	strnlen
	mov	r10, r12
	mov	r9, rbp
	mov	r12b, byte ptr [rsp]
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, rbx
	cmp	byte ptr [r10 + rax], 0
	mov	r8, r13
	je	.label_742
	add	r10, rax
	mov	r8, r13
	jne	.label_737
.label_742:
	mov	qword ptr [rsp], r13
	mov	r13, r8
	mov	rbx, rbp
	mov	rbp, rdi
	call	strlen
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, rax
	lea	rcx, [rsp + 0xe8]
	call	knuth_morris_pratt
	test	al, al
	jne	.label_754
	mov	r15b, byte ptr [rbx]
	xor	r9d, r9d
	xor	r10d, r10d
	mov	rbp, rbx
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, r13
	mov	r13, qword ptr [rsp]
.label_737:
	cmp	r15b, r12b
	jne	.label_759
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_763:
	movzx	edx, byte ptr [rdi + rcx]
	test	dl, dl
	je	.label_760
	movzx	ebx, byte ptr [rbp + rcx]
	test	bl, bl
	mov	eax, 0
	je	.label_738
	inc	rcx
	cmp	bl, dl
	je	.label_763
	add	r13, rcx
	jmp	.label_765
	nop	word ptr [rax + rax]
.label_759:
	inc	r13
.label_765:
	inc	r14
	mov	r15b, byte ptr [rbp + 1]
	inc	rbp
	test	r15b, r15b
	mov	eax, 0
	jne	.label_735
	jmp	.label_738
.label_758:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x138], rax
	mov	byte ptr [rsp + 0x128], 0
	mov	qword ptr [rsp + 0x12c], 0
	mov	byte ptr [rsp + 0x134], 0
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rsp + 0x70], rax
	mov	byte ptr [rsp + 0x60], 0
	mov	qword ptr [rsp + 0x64], 0
	mov	byte ptr [rsp + 0x6c], 0
	lea	rdi, [rsp + 0x60]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x80]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x18], rcx
	test	al, al
	je	.label_750
	shr	rax, 0x20
	je	.label_753
.label_750:
	mov	al, 1
	mov	dword ptr [rsp + 0x14], eax
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	lea	r12, [rsp + 0x60]
	lea	rbx, [rsp + 0x128]
	xor	ebp, ebp
	xor	r14d, r14d
	xor	r13d, r13d
.label_757:
	mov	r15, r14
	cmp	r13, 0xa
	jb	.label_741
	mov	eax, dword ptr [rsp + 0x14]
	and	al, 1
	je	.label_741
	lea	rax, [r13 + r13*4]
	cmp	r15, rax
	jb	.label_741
	cmp	r15, rbp
	je	.label_761
	sub	rbp, r15
	nop	dword ptr [rax]
.label_766:
	mov	rdi, rbx
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x148]
	test	al, al
	je	.label_762
	shr	rax, 0x20
	je	.label_761
.label_762:
	mov	rax, qword ptr [rsp + 0x140]
	add	qword ptr [rsp + 0x138], rax
	mov	byte ptr [rsp + 0x134], 0
	inc	rbp
	jne	.label_766
.label_761:
	mov	rdi, rbx
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x148]
	test	al, al
	je	.label_739
	shr	rax, 0x20
	mov	rbp, r15
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_741
	mov	rdi, rax
	mov	rsi, rcx
	lea	rdx, [rsp + 0xa0]
	call	knuth_morris_pratt_multibyte
	test	al, al
	jne	.label_745
	mov	dword ptr [rsp + 0x14], 0
.label_739:
	mov	rbp, r15
.label_741:
	lea	r14, [r15 + 1]
	mov	rax, qword ptr [rsp + 0x80]
	test	al, al
	je	.label_748
	mov	rcx, qword ptr [rsp + 0x108]
	test	cl, cl
	je	.label_748
	shr	rcx, 0x20
	shr	rax, 0x20
	cmp	eax, ecx
	je	.label_752
	jmp	.label_747
.label_748:
	mov	rdx, qword ptr [rsp + 0x78]
	cmp	rdx, qword ptr [rsp + 0x100]
	jne	.label_747
	mov	rdi, qword ptr [rsp + 0x70]
	mov	rsi, qword ptr [rsp + 0xf8]
	call	memcmp
	test	eax, eax
	jne	.label_747
.label_752:
	mov	qword ptr [rsp + 0xe0], r13
	movups	xmm0, xmmword ptr [rsp + 0x60]
	movups	xmm1, xmmword ptr [rsp + 0x70]
	movups	xmm2, xmmword ptr [rsp + 0x80]
	movups	xmm3, xmmword ptr [rsp + 0x90]
	movaps	xmmword ptr [rsp + 0xd0], xmm3
	movaps	xmmword ptr [rsp + 0xc0], xmm2
	movaps	xmmword ptr [rsp + 0xb0], xmm1
	movaps	xmmword ptr [rsp + 0xa0], xmm0
	mov	rax, qword ptr [rsp + 0xb8]
	add	qword ptr [rsp + 0xb0], rax
	mov	byte ptr [rsp + 0xac], 0
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x30], rax
	mov	byte ptr [rsp + 0x20], 0
	mov	qword ptr [rsp + 0x24], 0
	mov	byte ptr [rsp + 0x2c], 0
	lea	rdi, [rsp + 0x20]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x40]
	test	al, al
	je	.label_743
	shr	rax, 0x20
	je	.label_744
.label_743:
	mov	rax, qword ptr [rsp + 0x38]
	add	qword ptr [rsp + 0x30], rax
	mov	byte ptr [rsp + 0x2c], 0
	lea	rdi, [rsp + 0x20]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x40]
	test	al, al
	je	.label_749
	shr	rax, 0x20
	je	.label_751
.label_749:
	add	r15, 2
	mov	r14, r15
	nop	word ptr cs:[rax + rax]
.label_746:
	lea	rdi, [rsp + 0xa0]
	call	mbuiter_multi_next
	mov	rcx, qword ptr [rsp + 0xc0]
	mov	rax, rcx
	shr	rax, 0x20
	test	cl, cl
	je	.label_755
	test	eax, eax
	je	.label_753
.label_755:
	test	cl, cl
	sete	dl
	mov	rcx, qword ptr [rsp + 0x40]
	test	cl, cl
	je	.label_756
	test	dl, dl
	jne	.label_756
	shr	rcx, 0x20
	cmp	eax, ecx
	jne	.label_734
	mov	r15, qword ptr [rsp + 0xb0]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	r12, qword ptr [rsp + 0x30]
	mov	r13, qword ptr [rsp + 0x38]
	jmp	.label_736
	nop	word ptr cs:[rax + rax]
.label_756:
	mov	r13, qword ptr [rsp + 0xb8]
	cmp	r13, qword ptr [rsp + 0x38]
	jne	.label_734
	mov	r15, qword ptr [rsp + 0xb0]
	mov	r12, qword ptr [rsp + 0x30]
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	mov	rax, r13
	jne	.label_734
.label_736:
	add	r15, rax
	mov	qword ptr [rsp + 0xb0], r15
	mov	byte ptr [rsp + 0xac], 0
	add	r12, r13
	mov	qword ptr [rsp + 0x30], r12
	mov	byte ptr [rsp + 0x2c], 0
	lea	rdi, [rsp + 0x20]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x40]
	inc	r14
	test	al, al
	je	.label_746
	shr	rax, 0x20
	jne	.label_746
	jmp	.label_751
.label_734:
	lea	r12, [rsp + 0x60]
	mov	r13, qword ptr [rsp + 0xe0]
	nop	word ptr cs:[rax + rax]
.label_747:
	inc	r13
	mov	rax, qword ptr [rsp + 0x78]
	add	qword ptr [rsp + 0x70], rax
	mov	byte ptr [rsp + 0x6c], 0
	mov	rdi, r12
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x80]
	test	al, al
	je	.label_757
	shr	rax, 0x20
	jne	.label_757
	jmp	.label_753
.label_740:
	mov	rax, qword ptr [rsp]
	jmp	.label_738
.label_760:
	mov	rax, rbp
	jmp	.label_738
.label_751:
	mov	rax, qword ptr [rsp + 0x70]
.label_767:
	mov	qword ptr [rsp + 0x18], rax
.label_753:
	mov	rax, qword ptr [rsp + 0x18]
.label_738:
	add	rsp, 0x168
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_754:
	mov	rax, qword ptr [rsp + 0xe8]
	jmp	.label_738
.label_745:
	mov	rax, qword ptr [rsp + 0xa0]
	jmp	.label_767
.label_744:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409910

	.globl knuth_morris_pratt_multibyte
	.type knuth_morris_pratt_multibyte, @function
knuth_morris_pratt_multibyte:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	r15, rdx
	mov	r14, rsi
	mov	r12, rdi
	mov	rdi, r14
	call	mbslen
	mov	rbx, rax
	movabs	rax, 0x249249249249249
	cmp	rbx, rax
	ja	.label_768
	imul	rdi, rbx, 0x38
	cmp	rdi, 0xfa0
	ja	.label_785
	mov	rax, rsp
	add	rdi, 0x2e
	and	rdi, 0xfffffffffffffff0
	mov	rcx, rax
	sub	rcx, rdi
	mov	rsp, rcx
	neg	rdi
	lea	r13, [rax + rdi + 0x1f]
	and	r13, 0xffffffffffffffe0
	jmp	.label_787
.label_785:
	call	mmalloca
	mov	r13, rax
.label_787:
	test	r13, r13
	je	.label_768
	mov	qword ptr [rbp - 0xc8], r12
	mov	qword ptr [rbp - 0x30], rbx
	lea	rax, [rbx + rbx*2]
	shl	rax, 4
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x68], r14
	mov	byte ptr [rbp - 0x78], 0
	mov	qword ptr [rbp - 0x74], 0
	mov	byte ptr [rbp - 0x6c], 0
	lea	rdi, [rbp - 0x78]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rbp - 0x58]
	test	al, al
	je	.label_781
	shr	rax, 0x20
	je	.label_784
.label_781:
	lea	rbx, [rbp - 0x50]
	lea	r14, [r13 + 0x18]
	lea	r12, [rbp - 0x78]
	nop	dword ptr [rax]
.label_779:
	mov	rax, qword ptr [rbp - 0x68]
	cmp	rax, rbx
	jne	.label_789
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rdi, r14
	mov	rsi, rbx
	call	memcpy
	mov	rax, r14
.label_789:
	mov	qword ptr [r14 - 0x18], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [r14 - 0x10], rax
	mov	rax, qword ptr [rbp - 0x58]
	test	al, al
	mov	byte ptr [r14 - 8], al
	je	.label_797
	shr	rax, 0x20
	mov	dword ptr [r14 - 4], eax
.label_797:
	mov	rax, qword ptr [rbp - 0x60]
	add	qword ptr [rbp - 0x68], rax
	mov	byte ptr [rbp - 0x6c], 0
	mov	rdi, r12
	call	mbuiter_multi_next
	mov	rax, qword ptr [rbp - 0x58]
	add	r14, 0x30
	test	al, al
	je	.label_779
	shr	rax, 0x20
	jne	.label_779
.label_784:
	mov	qword ptr [rbp - 0x80], r15
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [r13 + rax]
	mov	qword ptr [r13 + rax + 8], 1
	cmp	qword ptr [rbp - 0x30], 3
	mov	qword ptr [rbp - 0x38], rsi
	jb	.label_782
	mov	r14d, 2
	xor	ebx, ebx
	nop	
.label_790:
	lea	rax, [r14 + r14*2]
	shl	rax, 4
	lea	r12, [r13 + rax - 0x30]
	mov	r15b, byte ptr [r13 + rax - 0x20]
	jmp	.label_795
	nop	word ptr cs:[rax + rax]
.label_798:
	sub	rbx, qword ptr [rsi + rbx*8]
.label_795:
	test	r15b, r15b
	je	.label_772
	lea	rax, [rbx + rbx*2]
	shl	rax, 4
	cmp	byte ptr [r13 + rax + 0x10], 0
	je	.label_772
	mov	ecx, dword ptr [r12 + 0x14]
	cmp	ecx, dword ptr [r13 + rax + 0x14]
	jne	.label_777
	jmp	.label_780
	nop	word ptr [rax + rax]
.label_772:
	mov	rdx, qword ptr [r12 + 8]
	lea	rax, [rbx + rbx*2]
	shl	rax, 4
	cmp	rdx, qword ptr [r13 + rax + 8]
	jne	.label_777
	mov	rdi, qword ptr [r12]
	mov	rsi, qword ptr [r13 + rax]
	call	memcmp
	mov	rsi, qword ptr [rbp - 0x38]
	test	eax, eax
	je	.label_780
.label_777:
	test	rbx, rbx
	jne	.label_798
	mov	qword ptr [rsi + r14*8], r14
	xor	ebx, ebx
	jmp	.label_794
	nop	word ptr [rax + rax]
.label_780:
	inc	rbx
	mov	rax, r14
	sub	rax, rbx
	mov	qword ptr [rsi + r14*8], rax
.label_794:
	inc	r14
	cmp	r14, qword ptr [rbp - 0x30]
	jne	.label_790
.label_782:
	mov	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0x68], rax
	mov	byte ptr [rbp - 0x78], 0
	mov	qword ptr [rbp - 0x74], 0
	mov	byte ptr [rbp - 0x6c], 0
	mov	qword ptr [rbp - 0xb0], rax
	mov	byte ptr [rbp - 0xc0], 0
	mov	qword ptr [rbp - 0xbc], 0
	mov	byte ptr [rbp - 0xb4], 0
	lea	rdi, [rbp - 0xc0]
	call	mbuiter_multi_next
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rax, rcx
	shr	rax, 0x20
	test	cl, cl
	setne	cl
	mov	rbx, qword ptr [rbp - 0x30]
	je	.label_793
	test	eax, eax
	je	.label_769
.label_793:
	xor	r15d, r15d
.label_778:
	lea	rdx, [r15 + r15*2]
	shl	rdx, 4
	cmp	byte ptr [r13 + rdx + 0x10], 0
	je	.label_774
	xor	cl, 1
	test	cl, 1
	jne	.label_774
	cmp	dword ptr [r13 + rdx + 0x14], eax
	jne	.label_776
	mov	r12, qword ptr [rbp - 0xb0]
	mov	r14, qword ptr [rbp - 0xa8]
	jmp	.label_791
	nop	word ptr cs:[rax + rax]
.label_774:
	mov	r14, qword ptr [r13 + rdx + 8]
	cmp	r14, qword ptr [rbp - 0xa8]
	jne	.label_776
	mov	rdi, qword ptr [r13 + rdx]
	mov	r12, qword ptr [rbp - 0xb0]
	mov	rsi, r12
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_791
.label_776:
	test	r15, r15
	je	.label_786
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbx, qword ptr [rax + r15*8]
	sub	r15, rbx
	test	rbx, rbx
	lea	r14, [rbp - 0x78]
	je	.label_775
	nop	word ptr cs:[rax + rax]
.label_788:
	mov	rdi, r14
	call	mbuiter_multi_next
	mov	rax, qword ptr [rbp - 0x58]
	test	al, al
	je	.label_796
	shr	rax, 0x20
	je	.label_771
.label_796:
	mov	rax, qword ptr [rbp - 0x60]
	add	qword ptr [rbp - 0x68], rax
	mov	byte ptr [rbp - 0x6c], 0
	dec	rbx
	jne	.label_788
.label_775:
	mov	rbx, qword ptr [rbp - 0x30]
	jmp	.label_783
	nop	word ptr cs:[rax + rax]
.label_791:
	inc	r15
	add	r12, r14
	mov	qword ptr [rbp - 0xb0], r12
	mov	byte ptr [rbp - 0xb4], 0
	cmp	r15, rbx
	jne	.label_783
	jmp	.label_773
	nop	dword ptr [rax + rax]
.label_786:
	lea	rdi, [rbp - 0x78]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rbp - 0x58]
	test	al, al
	je	.label_770
	shr	rax, 0x20
	je	.label_771
.label_770:
	mov	rax, qword ptr [rbp - 0x60]
	add	qword ptr [rbp - 0x68], rax
	mov	byte ptr [rbp - 0x6c], 0
	mov	rax, qword ptr [rbp - 0xa8]
	add	qword ptr [rbp - 0xb0], rax
	mov	byte ptr [rbp - 0xb4], 0
	xor	r15d, r15d
.label_783:
	lea	rdi, [rbp - 0xc0]
	call	mbuiter_multi_next
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rax, rcx
	shr	rax, 0x20
	test	cl, cl
	setne	cl
	je	.label_778
	test	eax, eax
	jne	.label_778
	jmp	.label_769
.label_768:
	xor	eax, eax
	jmp	.label_792
.label_773:
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	qword ptr [rcx], rax
.label_769:
	mov	rdi, r13
	call	freea
	mov	al, 1
.label_792:
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_771:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409d20

	.globl knuth_morris_pratt
	.type knuth_morris_pratt, @function
knuth_morris_pratt:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rcx
	mov	r12, rdx
	mov	rbx, rsi
	mov	r15, rdi
	mov	rax, r12
	shr	rax, 0x3c
	je	.label_807
	xor	eax, eax
	jmp	.label_799
.label_807:
	lea	rdi, [r12*8]
	cmp	rdi, 0xfa0
	ja	.label_810
	mov	rax, rsp
	add	rdi, 0x2e
	and	rdi, 0xfffffffffffffff0
	mov	rcx, rax
	sub	rcx, rdi
	mov	rsp, rcx
	neg	rdi
	lea	rdi, [rax + rdi + 0x1f]
	and	rdi, 0xffffffffffffffe0
	jmp	.label_804
.label_810:
	call	mmalloca
	mov	rdi, rax
.label_804:
	test	rdi, rdi
	je	.label_801
	mov	qword ptr [rdi + 8], 1
	cmp	r12, 3
	jb	.label_803
	mov	eax, 2
	xor	ecx, ecx
	nop	dword ptr [rax]
.label_806:
	mov	dl, byte ptr [rbx + rax - 1]
	jmp	.label_800
	nop	word ptr cs:[rax + rax]
.label_813:
	sub	rcx, qword ptr [rdi + rcx*8]
.label_800:
	cmp	dl, byte ptr [rbx + rcx]
	je	.label_812
	test	rcx, rcx
	jne	.label_813
	mov	qword ptr [rdi + rax*8], rax
	xor	ecx, ecx
	jmp	.label_815
	nop	word ptr cs:[rax + rax]
.label_812:
	inc	rcx
	mov	rdx, rax
	sub	rdx, rcx
	mov	qword ptr [rdi + rax*8], rdx
.label_815:
	inc	rax
	cmp	rax, r12
	jne	.label_806
.label_803:
	mov	qword ptr [r14], 0
	neg	r12
	xor	r8d, r8d
	mov	r9, r15
	jmp	.label_802
.label_801:
	xor	eax, eax
	jmp	.label_799
.label_808:
	add	r9, rdx
	lea	rax, [rdi + r8*8]
	mov	rax, qword ptr [rax + rdx*8]
	add	r15, rax
	sub	r8, rax
	add	r8, rdx
.label_802:
	lea	rsi, [r12 + r8]
	lea	rcx, [rbx + r8]
	xor	edx, edx
	nop	dword ptr [rax]
.label_811:
	movzx	eax, byte ptr [r9 + rdx]
	test	al, al
	je	.label_814
	cmp	byte ptr [rcx + rdx], al
	jne	.label_809
	inc	rdx
	mov	rax, rsi
	add	rax, rdx
	jne	.label_811
	jmp	.label_805
.label_809:
	mov	rax, r8
	add	rax, rdx
	jne	.label_808
	inc	r15
	lea	r9, [r9 + rdx + 1]
	xor	r8d, r8d
	jmp	.label_802
.label_805:
	mov	qword ptr [r14], r15
.label_814:
	call	freea
	mov	al, 1
.label_799:
	lea	rsp, [rbp - 0x20]
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409e70

	.globl mbuiter_multi_next
	.type mbuiter_multi_next, @function
mbuiter_multi_next:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	rbx, rdi
	cmp	byte ptr [rbx + 0xc], 0
	jne	.label_827
	cmp	byte ptr [rbx], 0
	mov	r15, qword ptr [rbx + 0x10]
	je	.label_817
	lea	r14, [rbx + 4]
.label_824:
	lea	r12, [rbx + 0x24]
	call	__ctype_get_mb_cur_max
	mov	rdi, r15
	mov	rsi, rax
	call	strnlen1
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, rax
	mov	rcx, r14
	call	rpl_mbrtowc
	mov	qword ptr [rbx + 0x18], rax
	cmp	rax, -2
	je	.label_828
	test	rax, rax
	je	.label_816
	cmp	rax, -1
	jne	.label_825
	mov	qword ptr [rbx + 0x18], 1
	mov	byte ptr [rbx + 0x20], 0
	jmp	.label_818
.label_817:
	movzx	eax, byte ptr [r15]
	mov	rcx, rax
	shr	rcx, 5
	mov	ecx, dword ptr [(rcx * 4) + is_basic_table]
	bt	ecx, eax
	jae	.label_820
	mov	qword ptr [rbx + 0x18], 1
	movsx	eax, byte ptr [r15]
	mov	dword ptr [rbx + 0x24], eax
	mov	byte ptr [rbx + 0x20], 1
	jmp	.label_818
.label_828:
	mov	rdi, qword ptr [rbx + 0x10]
	call	strlen
	mov	qword ptr [rbx + 0x18], rax
	mov	byte ptr [rbx + 0x20], 0
	jmp	.label_818
.label_816:
	mov	qword ptr [rbx + 0x18], 1
	mov	rax, qword ptr [rbx + 0x10]
	cmp	byte ptr [rax], 0
	jne	.label_819
	cmp	dword ptr [r12], 0
	jne	.label_826
.label_825:
	mov	byte ptr [rbx + 0x20], 1
	mov	rdi, r14
	call	mbsinit
	test	eax, eax
	je	.label_818
	mov	byte ptr [rbx], 0
.label_818:
	mov	byte ptr [rbx + 0xc], 1
.label_827:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_820:
	lea	r14, [rbx + 4]
	mov	rdi, r14
	call	mbsinit
	test	eax, eax
	je	.label_823
	mov	byte ptr [rbx], 1
	jmp	.label_824
.label_819:
	mov	edi, OFFSET FLAT:label_729
	mov	esi, OFFSET FLAT:label_821
	mov	edx, 0xb2
	mov	ecx, OFFSET FLAT:label_822
	call	__assert_fail
.label_826:
	mov	edi, OFFSET FLAT:label_728
	mov	esi, OFFSET FLAT:label_821
	mov	edx, 0xb3
	mov	ecx, OFFSET FLAT:label_822
	call	__assert_fail
.label_823:
	mov	edi, OFFSET FLAT:label_723
	mov	esi, OFFSET FLAT:label_821
	mov	edx, 0x96
	mov	ecx, OFFSET FLAT:label_822
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409fc0
	.globl mbuiter_multi_reloc
	.type mbuiter_multi_reloc, @function
mbuiter_multi_reloc:

	add	qword ptr [rdi + 0x10], rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409fd0
	.globl mbuiter_multi_copy
	.type mbuiter_multi_copy, @function
mbuiter_multi_copy:

	push	r15
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	mov	al, byte ptr [rbx]
	test	al, al
	mov	byte ptr [r14], al
	je	.label_829
	mov	rax, qword ptr [rbx + 4]
	mov	qword ptr [r14 + 4], rax
	jmp	.label_830
.label_829:
	mov	qword ptr [r14 + 4], 0
.label_830:
	mov	al, byte ptr [rbx + 0xc]
	mov	byte ptr [r14 + 0xc], al
	mov	rsi, qword ptr [rbx + 0x10]
	lea	rax, [rbx + 0x28]
	cmp	rsi, rax
	jne	.label_831
	lea	r15, [r14 + 0x28]
	mov	rdx, qword ptr [rbx + 0x18]
	mov	rdi, r15
	call	memcpy
	mov	rsi, r15
.label_831:
	mov	qword ptr [r14 + 0x10], rsi
	mov	rax, qword ptr [rbx + 0x18]
	mov	qword ptr [r14 + 0x18], rax
	mov	rax, qword ptr [rbx + 0x20]
	test	al, al
	mov	byte ptr [r14 + 0x20], al
	je	.label_832
	shr	rax, 0x20
	mov	dword ptr [r14 + 0x24], eax
.label_832:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a050

	.globl mem_cd_iconv
	.type mem_cd_iconv, @function
mem_cd_iconv:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x1048
	mov	qword ptr [rsp + 0x28], r8
	mov	qword ptr [rsp + 0x40], rcx
	mov	rax, rdx
	mov	rbp, rsi
	mov	r14, rdi
	xor	ebx, ebx
	xor	esi, esi
	xor	edx, edx
	xor	ecx, ecx
	xor	r8d, r8d
	mov	qword ptr [rsp + 0x10], rax
	mov	rdi, rax
	call	iconv
	mov	qword ptr [rsp + 8], r14
	mov	qword ptr [rsp + 0x20], r14
	mov	qword ptr [rsp + 0x18], rbp
	mov	qword ptr [rsp + 0x38], rbp
	test	rbp, rbp
	je	.label_835
	xor	ebx, ebx
	lea	r12, [rsp + 0x48]
	lea	rbp, [rsp + 0x18]
	lea	r15, [rsp]
	lea	r13, [rsp + 0x30]
	nop	
.label_843:
	mov	qword ptr [rsp], r12
	mov	qword ptr [rsp + 0x30], 0x1000
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rsi, [rsp + 0x20]
	mov	rdx, rbp
	mov	rcx, r15
	mov	r8, r13
	call	iconv
	cmp	rax, -1
	jne	.label_852
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 7
	je	.label_852
	mov	r14d, 3
	cmp	eax, 0x16
	je	.label_833
	mov	r14d, 1
	jmp	.label_833
	nop	word ptr [rax + rax]
.label_852:
	sub	rbx, r12
	add	rbx, qword ptr [rsp]
	xor	r14d, r14d
.label_833:
	mov	eax, r14d
	and	al, 3
	jne	.label_840
	cmp	qword ptr [rsp + 0x18], 0
	jne	.label_843
	jmp	.label_835
.label_840:
	cmp	al, 3
	jne	.label_845
.label_835:
	lea	rbp, [rsp + 0x48]
	mov	qword ptr [rsp], rbp
	mov	qword ptr [rsp + 0x30], 0x1000
	xor	r14d, r14d
	lea	rcx, [rsp]
	lea	r8, [rsp + 0x30]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, qword ptr [rsp + 0x10]
	call	iconv
	cmp	rax, -1
	je	.label_851
	sub	rbx, rbp
	add	rbx, qword ptr [rsp]
	jmp	.label_845
.label_851:
	mov	r14d, 1
.label_845:
	mov	ebp, 0xffffffff
	test	r14d, r14d
	jne	.label_836
	test	rbx, rbx
	je	.label_855
	mov	r12, qword ptr [rsp + 0x40]
	mov	r14, qword ptr [r12]
	test	r14, r14
	je	.label_834
	mov	rax, qword ptr [rsp + 0x28]
	cmp	qword ptr [rax], rbx
	jae	.label_838
.label_834:
	mov	rdi, rbx
	call	malloc
	mov	r14, rax
	test	r14, r14
	je	.label_844
.label_838:
	xor	esi, esi
	xor	edx, edx
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rdi, qword ptr [rsp + 0x10]
	call	iconv
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x48], rax
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [rsp + 0x20], rax
	mov	qword ptr [rsp + 8], r14
	mov	qword ptr [rsp + 0x18], r14
	mov	qword ptr [rsp], rbx
	test	rax, rax
	je	.label_847
	lea	r13, [rsp + 0x48]
	lea	rbp, [rsp + 0x20]
	lea	r15, [rsp + 0x18]
	lea	r14, [rsp]
.label_849:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r13
	mov	rdx, rbp
	mov	rcx, r15
	mov	r8, r14
	call	iconv
	cmp	rax, -1
	je	.label_839
	xor	eax, eax
	jmp	.label_841
.label_839:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	setne	al
	add	al, 5
.label_841:
	and	al, 7
	jne	.label_846
	cmp	qword ptr [rsp + 0x20], 0
	jne	.label_849
	jmp	.label_847
.label_855:
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rax], 0
	jmp	.label_848
.label_844:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_836
.label_846:
	cmp	al, 5
	jne	.label_850
.label_847:
	lea	rcx, [rsp + 0x18]
	lea	r8, [rsp]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, qword ptr [rsp + 0x10]
	call	iconv
	cmp	rax, -1
	je	.label_853
	cmp	qword ptr [rsp], 0
	mov	rax, qword ptr [rsp + 8]
	jne	.label_854
	mov	qword ptr [r12], rax
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rax], rbx
.label_848:
	xor	ebp, ebp
	jmp	.label_836
.label_853:
	mov	rbp, qword ptr [rsp + 8]
	jmp	.label_837
.label_850:
	cmp	al, 6
	mov	rbp, qword ptr [rsp + 8]
	jne	.label_842
.label_837:
	cmp	rbp, qword ptr [r12]
	je	.label_842
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	rdi, rbp
	call	free
	mov	dword ptr [rbx], r14d
.label_842:
	mov	ebp, 0xffffffff
.label_836:
	mov	eax, ebp
	add	rsp, 0x1048
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_854:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a2e0

	.globl str_cd_iconv
	.type str_cd_iconv, @function
str_cd_iconv:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r14, rsi
	mov	qword ptr [rsp + 0x20], rdi
	call	strlen
	mov	qword ptr [rsp + 0x18], rax
	mov	rbx, rax
	shl	rbx, 4
	cmp	rax, 0x10000000
	cmovae	rbx, rax
	lea	rbp, [rbx + 1]
	mov	rdi, rbp
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_859
	xor	esi, esi
	xor	edx, edx
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rdi, r14
	call	iconv
	mov	qword ptr [rsp + 8], r12
	mov	qword ptr [rsp + 0x10], rbx
	lea	rsi, [rsp + 0x20]
	lea	rdx, [rsp + 0x18]
	lea	rcx, [rsp + 8]
	lea	r8, [rsp + 0x10]
	mov	rdi, r14
	call	iconv
	cmp	rax, -1
	je	.label_857
	mov	rbx, rbp
	mov	r13, r12
.label_863:
	lea	rcx, [rsp + 8]
	lea	r8, [rsp + 0x10]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r14
	call	iconv
	cmp	rax, -1
	je	.label_858
	mov	rbp, rbx
	mov	r12, r13
.label_867:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp + 8], rcx
	mov	byte ptr [rax], 0
	mov	rsi, qword ptr [rsp + 8]
	sub	rsi, r12
	cmp	rsi, rbp
	jae	.label_856
	mov	rdi, r12
	call	realloc
	test	rax, rax
	cmovne	r12, rax
	jmp	.label_856
.label_859:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_862
.label_857:
	call	__errno_location
	mov	r15, rax
.label_865:
	mov	eax, dword ptr [r15]
	cmp	eax, 7
	jne	.label_868
	lea	rbx, [rbp + rbp]
	cmp	rbx, rbp
	jbe	.label_861
	mov	rbp, qword ptr [rsp + 8]
	mov	rdi, r12
	mov	rsi, rbx
	call	realloc
	mov	r13, rax
	test	r13, r13
	je	.label_861
	sub	rbp, r12
	mov	rax, r13
	add	rax, rbp
	mov	qword ptr [rsp + 8], rax
	lea	rax, [rbx - 1]
	sub	rax, rbp
	mov	qword ptr [rsp + 0x10], rax
	mov	rdi, r14
	lea	rsi, [rsp + 0x20]
	lea	rdx, [rsp + 0x18]
	lea	rcx, [rsp + 8]
	lea	r8, [rsp + 0x10]
	call	iconv
	cmp	rax, -1
	mov	r12, r13
	mov	rbp, rbx
	je	.label_865
	jmp	.label_863
.label_858:
	call	__errno_location
	mov	r15, rax
	nop	word ptr cs:[rax + rax]
.label_860:
	cmp	dword ptr [r15], 7
	jne	.label_869
	lea	rbp, [rbx + rbx]
	cmp	rbp, rbx
	jbe	.label_864
	mov	rbx, qword ptr [rsp + 8]
	mov	rdi, r13
	mov	rsi, rbp
	call	realloc
	mov	r12, rax
	test	r12, r12
	je	.label_864
	sub	rbx, r13
	mov	rax, r12
	add	rax, rbx
	mov	qword ptr [rsp + 8], rax
	lea	rax, [rbp - 1]
	sub	rax, rbx
	mov	qword ptr [rsp + 0x10], rax
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r14
	lea	rcx, [rsp + 8]
	lea	r8, [rsp + 0x10]
	call	iconv
	cmp	rax, -1
	mov	r13, r12
	mov	rbx, rbp
	je	.label_860
	jmp	.label_867
.label_861:
	mov	dword ptr [r15], 0xc
	jmp	.label_866
.label_864:
	mov	dword ptr [r15], 0xc
.label_869:
	mov	r12, r13
.label_866:
	mov	ebx, dword ptr [r15]
	mov	rdi, r12
	call	free
	mov	dword ptr [r15], ebx
.label_862:
	xor	r12d, r12d
.label_856:
	mov	rax, r12
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_868:
	cmp	eax, 0x16
	mov	rbx, rbp
	mov	r13, r12
	je	.label_863
	jmp	.label_866
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a520

	.globl str_iconv
	.type str_iconv, @function
str_iconv:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r14, rsi
	mov	rbx, rdi
	cmp	byte ptr [rbx], 0
	je	.label_870
	mov	rdi, r14
	mov	rsi, r15
	call	c_strcasecmp
	test	eax, eax
	je	.label_870
	mov	rdi, r15
	mov	rsi, r14
	call	iconv_open
	mov	r15, rax
	xor	r14d, r14d
	cmp	r15, -1
	je	.label_872
	mov	rdi, rbx
	mov	rsi, r15
	call	str_cd_iconv
	mov	r14, rax
	test	r14, r14
	je	.label_873
	mov	rdi, r15
	call	iconv_close
	test	eax, eax
	jns	.label_872
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, r14
	call	free
	jmp	.label_874
.label_870:
	mov	rdi, rbx
	call	__strdup
	mov	r14, rax
	test	r14, r14
	jne	.label_872
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_871
.label_873:
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, r15
	call	iconv_close
.label_874:
	mov	dword ptr [rbx], ebp
.label_871:
	xor	r14d, r14d
.label_872:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a5d0

	.globl strnlen1
	.type strnlen1, @function
strnlen1:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	xor	esi, esi
	mov	rdx, r14
	call	memchr
	mov	ecx, 1
	sub	rcx, rbx
	add	rcx, rax
	test	rax, rax
	cmove	rcx, r14
	mov	rax, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a610

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_875
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_877
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_875
.label_877:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_875
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_876
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_876:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_875:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a690

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_878
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_878
	test	byte ptr [rbx + 1], 1
	je	.label_878
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_878:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a6d0

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
	jne	.label_879
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_879
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_880
.label_879:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_880:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_881
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_881:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a740

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	jmp	nl_langinfo
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a760

	.globl mmalloca
	.type mmalloca, @function
mmalloca:
	xor	eax, eax
	cmp	rdi, -0x21
	ja	.label_882
	push	rax
	add	rdi, 0x20
	call	malloc
	mov	rcx, rax
	xor	eax, eax
	test	rcx, rcx
	lea	rsp, [rsp + 8]
	je	.label_882
	mov	rdx, rcx
	add	rdx, 0x10
	and	rdx, 0xffffffffffffffe0
	lea	rax, [rdx + 0x10]
	mov	esi, eax
	sub	esi, ecx
	mov	byte ptr [rdx + 0xf], sil
.label_882:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a7a0

	.globl freea
	.type freea, @function
freea:
	test	dil, 0xf
	jne	.label_883
	test	dil, 0x10
	jne	.label_884
	ret	
.label_884:
	movzx	eax, byte ptr [rdi - 1]
	sub	rdi, rax
	jmp	free
.label_883:
	push	rax
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a7c0
	.globl mb_width_aux
	.type mb_width_aux, @function
mb_width_aux:

	push	rbx
	mov	ebx, edi
	call	wcwidth
	test	eax, eax
	jns	.label_885
	mov	edi, ebx
	call	iswcntrl
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	sete	al
.label_885:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a7e0
	.globl mb_copy
	.type mb_copy, @function
mb_copy:

	push	r15
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	mov	rsi, qword ptr [rbx]
	lea	rax, [rbx + 0x18]
	cmp	rsi, rax
	jne	.label_886
	lea	r15, [r14 + 0x18]
	mov	rdx, qword ptr [rbx + 8]
	mov	rdi, r15
	call	memcpy
	mov	rsi, r15
.label_886:
	mov	qword ptr [r14], rsi
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [r14 + 8], rax
	mov	rax, qword ptr [rbx + 0x10]
	test	al, al
	mov	byte ptr [r14 + 0x10], al
	je	.label_887
	shr	rax, 0x20
	mov	dword ptr [r14 + 0x14], eax
.label_887:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a830
	.globl is_basic
	.type is_basic, @function
is_basic:

	mov	eax, edi
	shr	eax, 3
	and	eax, 0x1c
	mov	eax, dword ptr [rax + is_basic_table]
	bt	eax, edi
	setb	al
	ret	
	nop	word ptr cs:[rax + rax]
	.section .text
	.align	16
	#Procedure 0x40a850

	.globl mbslen
	.type mbslen, @function
mbslen:
	push	r14
	push	rbx
	sub	rsp, 0x48
	mov	rbx, rdi
	call	__ctype_get_mb_cur_max
	cmp	rax, 2
	jb	.label_891
	mov	qword ptr [rsp + 0x18], rbx
	mov	byte ptr [rsp + 8], 0
	mov	qword ptr [rsp + 0xc], 0
	mov	byte ptr [rsp + 0x14], 0
	lea	rdi, [rsp + 8]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x28]
	xor	ebx, ebx
	test	al, al
	je	.label_890
	shr	rax, 0x20
	je	.label_888
.label_890:
	xor	ebx, ebx
	lea	r14, [rsp + 8]
	nop	
.label_889:
	inc	rbx
	mov	rax, qword ptr [rsp + 0x20]
	add	qword ptr [rsp + 0x18], rax
	mov	byte ptr [rsp + 0x14], 0
	mov	rdi, r14
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x28]
	test	al, al
	je	.label_889
	shr	rax, 0x20
	jne	.label_889
.label_888:
	mov	rax, rbx
	add	rsp, 0x48
	pop	rbx
	pop	r14
	ret	
.label_891:
	mov	rdi, rbx
	add	rsp, 0x48
	pop	rbx
	pop	r14
	jmp	strlen
	nop	word ptr cs:[rax + rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
