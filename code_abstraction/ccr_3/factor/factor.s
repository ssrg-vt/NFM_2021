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
	sub	rsp, 0x48
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	mov	byte ptr [r14 + 0xfa], 0
	mov	qword ptr [r14 + 8], 0
	test	r15, r15
	jne	.label_189
	cmp	rbx, 2
	jb	.label_121
.label_189:
	test	bl, 1
	jne	.label_204
	test	rbx, rbx
	je	.label_206
	mov	qword ptr [rsp + 0x40], rbx
	bsf	rcx, qword ptr [rsp + 0x40]
	shrd	rbx, r15, cl
	shr	r15, cl
	jmp	.label_209
.label_206:
	mov	qword ptr [rsp + 0x38], r15
	bsf	rcx, qword ptr [rsp + 0x38]
	shr	r15, cl
	add	ecx, 0x40
	mov	rbx, r15
	xor	r15d, r15d
.label_209:
	mov	qword ptr [r14 + 0x10], 2
	mov	byte ptr [r14 + 0xe0], cl
	mov	byte ptr [r14 + 0xfa], 1
.label_204:
	movabs	rbp, 0xffffffff00000000
	xor	edi, edi
	mov	r10d, 3
	test	r15, r15
	je	.label_231
	lea	r8, [r14 + 0xe0]
	mov	r10d, 3
	xor	edi, edi
	nop	dword ptr [rax]
.label_244:
	mov	rsi, rdi
	shl	rsi, 4
	mov	r11, qword ptr [rsi + primes_dtab]
	mov	rcx, r11
	imul	rcx, rbx
	mov	qword ptr [rsp + 0x30], r10
	mov	rax, rcx
	mul	qword ptr [rsp + 0x30]
	cmp	r15, rdx
	jb	.label_103
	mov	r9, qword ptr [rsi + label_118]
	mov	rsi, r15
	mov	r13, rbx
.label_222:
	mov	rbx, r13
	mov	r15, rsi
	mov	r13, rcx
	sub	rsi, rdx
	imul	rsi, r11
	cmp	rsi, r9
	ja	.label_103
	movzx	edx, byte ptr [r14 + 0xfa]
	lea	r15d, [rdx - 1]
	test	edx, edx
	mov	ecx, r15d
	je	.label_137
	lea	rcx, [rdx + 1]
	mov	rax, rdx
	shl	rax, 0x20
	add	rax, rbp
.label_134:
	cmp	qword ptr [r14 + rcx*8], r10
	jbe	.label_132
	dec	rcx
	add	rax, rbp
	cmp	rcx, 1
	jg	.label_134
	add	ecx, -2
	jmp	.label_137
.label_132:
	mov	rbx, rax
	sar	rbx, 0x1d
	cmp	qword ptr [r14 + rbx + 0x10], r10
	jne	.label_139
	sar	rax, 0x20
	inc	byte ptr [r14 + rax + 0xe0]
	jmp	.label_141
.label_139:
	add	rcx, -2
.label_137:
	cmp	r15d, ecx
	jle	.label_147
	lea	r12d, [rdx - 1]
	sub	r12d, ecx
	mov	eax, edx
	add	eax, -2
	sub	eax, ecx
	and	r12d, 3
	cmp	eax, 3
	jae	.label_151
	mov	rbx, rdx
	jmp	.label_155
.label_151:
	lea	rbp, [r8 + rdx]
	lea	rax, [r8 + rdx*8]
	mov	r15d, ecx
	not	r15d
	sub	r15d, r12d
	mov	qword ptr [rsp + 8], rdx
	add	r15, rdx
	xor	ebx, ebx
.label_166:
	mov	rdx, qword ptr [rax + rbx*8 - 0xd8]
	mov	qword ptr [rax + rbx*8 - 0xd0], rdx
	movzx	edx, byte ptr [rbp + rbx - 1]
	mov	byte ptr [rbp + rbx], dl
	mov	rdx, qword ptr [rax + rbx*8 - 0xe0]
	mov	qword ptr [rax + rbx*8 - 0xd8], rdx
	movzx	edx, byte ptr [rbp + rbx - 2]
	mov	byte ptr [rbp + rbx - 1], dl
	mov	rdx, qword ptr [rax + rbx*8 - 0xe8]
	mov	qword ptr [rax + rbx*8 - 0xe0], rdx
	movzx	edx, byte ptr [rbp + rbx - 3]
	mov	byte ptr [rbp + rbx - 2], dl
	mov	rdx, qword ptr [rax + rbx*8 - 0xf0]
	mov	qword ptr [rax + rbx*8 - 0xe8], rdx
	movzx	edx, byte ptr [rbp + rbx - 4]
	mov	byte ptr [rbp + rbx - 3], dl
	add	rbx, -4
	mov	edx, ebx
	add	edx, r15d
	jne	.label_166
	mov	rdx, qword ptr [rsp + 8]
	add	rbx, rdx
	movabs	rbp, 0xffffffff00000000
.label_155:
	test	r12d, r12d
	je	.label_147
	neg	r12d
.label_198:
	mov	rax, qword ptr [r14 + rbx*8 + 8]
	mov	qword ptr [r14 + rbx*8 + 0x10], rax
	movzx	eax, byte ptr [r14 + rbx + 0xdf]
	mov	byte ptr [r14 + rbx + 0xe0], al
	dec	rbx
	inc	r12d
	jne	.label_198
.label_147:
	movsxd	rax, ecx
	mov	qword ptr [r14 + rax*8 + 0x18], r10
	mov	byte ptr [r14 + rax + 0xe1], 1
	inc	dl
	mov	byte ptr [r14 + 0xfa], dl
.label_141:
	mov	rcx, r13
	imul	rcx, r11
	mov	qword ptr [rsp + 0x28], r10
	mov	rax, rcx
	mul	qword ptr [rsp + 0x28]
	cmp	rsi, rdx
	mov	rbx, r13
	mov	r15, rsi
	jae	.label_222
	nop	dword ptr [rax + rax]
.label_103:
	movzx	eax, byte ptr [rdi + label_236]
	inc	rdi
	add	r10, rax
	cmp	rdi, 0x29b
	ja	.label_237
	test	r15, r15
	jne	.label_244
.label_237:
	cmp	edi, 0x29b
	jbe	.label_248
	jmp	.label_105
.label_231:
	xor	r15d, r15d
.label_248:
	lea	r11, [r14 + 0xe0]
	jmp	.label_104
.label_181:
	movzx	r12d, byte ptr [r14 + 0xfa]
	lea	edi, [r12 - 1]
	test	r12d, r12d
	mov	r8d, edi
	je	.label_112
	lea	r8, [r12 + 1]
	mov	rbx, r12
	shl	rbx, 0x20
	add	rbx, rbp
.label_124:
	cmp	qword ptr [r14 + r8*8], r10
	jbe	.label_123
	dec	r8
	add	rbx, rbp
	cmp	r8, 1
	jg	.label_124
	add	r8d, -2
	jmp	.label_112
.label_123:
	mov	rbp, rbx
	sar	rbp, 0x1d
	cmp	qword ptr [r14 + rbp + 0x10], r10
	jne	.label_107
	sar	rbx, 0x20
	inc	byte ptr [r14 + rbx + 0xe0]
	jmp	.label_130
.label_107:
	add	r8, -2
.label_112:
	cmp	edi, r8d
	jle	.label_135
	lea	r13d, [r12 - 1]
	sub	r13d, r8d
	mov	edi, r12d
	add	edi, -2
	sub	edi, r8d
	and	r13d, 3
	cmp	edi, 3
	jae	.label_136
	mov	rbp, r12
	jmp	.label_142
.label_136:
	mov	rdi, r12
	lea	r12, [r11 + rdi]
	mov	qword ptr [rsp + 0x18], r11
	lea	r11, [r11 + rdi*8]
	mov	ebx, r8d
	not	ebx
	sub	ebx, r13d
	mov	qword ptr [rsp], rdi
	add	rbx, rdi
	mov	qword ptr [rsp + 8], rbx
	xor	ebp, ebp
.label_154:
	mov	rdi, qword ptr [r11 + rbp*8 - 0xd8]
	mov	qword ptr [r11 + rbp*8 - 0xd0], rdi
	movzx	ebx, byte ptr [r12 + rbp - 1]
	mov	byte ptr [r12 + rbp], bl
	mov	rdi, qword ptr [r11 + rbp*8 - 0xe0]
	mov	qword ptr [r11 + rbp*8 - 0xd8], rdi
	movzx	ebx, byte ptr [r12 + rbp - 2]
	mov	byte ptr [r12 + rbp - 1], bl
	mov	rdi, qword ptr [r11 + rbp*8 - 0xe8]
	mov	qword ptr [r11 + rbp*8 - 0xe0], rdi
	movzx	ebx, byte ptr [r12 + rbp - 3]
	mov	byte ptr [r12 + rbp - 2], bl
	mov	rdi, qword ptr [r11 + rbp*8 - 0xf0]
	mov	qword ptr [r11 + rbp*8 - 0xe8], rdi
	movzx	ebx, byte ptr [r12 + rbp - 4]
	mov	byte ptr [r12 + rbp - 3], bl
	add	rbp, -4
	mov	edi, ebp
	mov	rbx, qword ptr [rsp + 8]
	add	edi, ebx
	jne	.label_154
	mov	r12, qword ptr [rsp]
	add	rbp, r12
	mov	r11, qword ptr [rsp + 0x18]
.label_142:
	test	r13d, r13d
	je	.label_135
	neg	r13d
.label_191:
	mov	rdi, qword ptr [r14 + rbp*8 + 8]
	mov	qword ptr [r14 + rbp*8 + 0x10], rdi
	movzx	ebx, byte ptr [r14 + rbp + 0xdf]
	mov	byte ptr [r14 + rbp + 0xe0], bl
	dec	rbp
	inc	r13d
	jne	.label_191
.label_135:
	movsxd	rdi, r8d
	mov	qword ptr [r14 + rdi*8 + 0x18], r10
	mov	byte ptr [r14 + rdi + 0xe1], 1
	inc	r12b
	mov	byte ptr [r14 + 0xfa], r12b
.label_130:
	mov	rbx, rcx
	imul	rcx, rax
	cmp	rcx, rsi
	movabs	rbp, 0xffffffff00000000
	ja	.label_187
	jmp	.label_181
.label_192:
	lea	edi, [r9 + 1]
	movzx	r13d, byte ptr [rdi + primes_diff]
	add	r13, r10
.label_193:
	movzx	ebx, byte ptr [r14 + 0xfa]
	lea	r8d, [rbx - 1]
	test	ebx, ebx
	mov	r12d, r8d
	je	.label_226
	lea	r12, [rbx + 1]
	mov	rdi, rbx
	shl	rdi, 0x20
	add	rdi, rbp
.label_241:
	cmp	qword ptr [r14 + r12*8], r13
	jbe	.label_194
	dec	r12
	add	rdi, rbp
	cmp	r12, 1
	jg	.label_241
	add	r12d, -2
	jmp	.label_226
.label_194:
	mov	rbp, rdi
	sar	rbp, 0x1d
	cmp	qword ptr [r14 + rbp + 0x10], r13
	jne	.label_247
	sar	rdi, 0x20
	inc	byte ptr [r14 + rdi + 0xe0]
	jmp	.label_126
.label_247:
	add	r12, -2
.label_226:
	mov	qword ptr [rsp], rbx
	mov	qword ptr [rsp + 0x20], r13
	cmp	r8d, r12d
	jle	.label_116
	mov	rbx, qword ptr [rsp]
	lea	r13d, [rbx - 1]
	sub	r13d, r12d
	mov	edi, ebx
	add	edi, -2
	sub	edi, r12d
	and	r13d, 3
	cmp	edi, 3
	jae	.label_182
	mov	rdi, rbx
	jmp	.label_128
.label_182:
	lea	r8, [r11 + rbx]
	mov	qword ptr [rsp + 0x18], r11
	lea	r11, [r11 + rbx*8]
	mov	edi, r12d
	not	edi
	sub	edi, r13d
	add	rdi, rbx
	mov	qword ptr [rsp + 8], rdi
	xor	edi, edi
.label_133:
	mov	rbp, qword ptr [r11 + rdi*8 - 0xd8]
	mov	qword ptr [r11 + rdi*8 - 0xd0], rbp
	movzx	ebx, byte ptr [r8 + rdi - 1]
	mov	byte ptr [r8 + rdi], bl
	mov	rbx, qword ptr [r11 + rdi*8 - 0xe0]
	mov	qword ptr [r11 + rdi*8 - 0xd8], rbx
	movzx	ebx, byte ptr [r8 + rdi - 2]
	mov	byte ptr [r8 + rdi - 1], bl
	mov	rbx, qword ptr [r11 + rdi*8 - 0xe8]
	mov	qword ptr [r11 + rdi*8 - 0xe0], rbx
	movzx	ebx, byte ptr [r8 + rdi - 3]
	mov	byte ptr [r8 + rdi - 2], bl
	mov	rbx, qword ptr [r11 + rdi*8 - 0xf0]
	mov	qword ptr [r11 + rdi*8 - 0xe8], rbx
	movzx	ebx, byte ptr [r8 + rdi - 4]
	mov	byte ptr [r8 + rdi - 3], bl
	add	rdi, -4
	mov	ebx, edi
	mov	rbp, qword ptr [rsp + 8]
	add	ebx, ebp
	jne	.label_133
	add	rdi, qword ptr [rsp]
	mov	r11, qword ptr [rsp + 0x18]
.label_128:
	test	r13d, r13d
	je	.label_116
	neg	r13d
.label_170:
	mov	rbp, qword ptr [r14 + rdi*8 + 8]
	mov	qword ptr [r14 + rdi*8 + 0x10], rbp
	movzx	ebx, byte ptr [r14 + rdi + 0xdf]
	mov	byte ptr [r14 + rdi + 0xe0], bl
	dec	rdi
	inc	r13d
	jne	.label_170
.label_116:
	movsxd	rdi, r12d
	mov	r13, qword ptr [rsp + 0x20]
	mov	qword ptr [r14 + rdi*8 + 0x18], r13
	mov	byte ptr [r14 + rdi + 0xe1], 1
	mov	rdi, qword ptr [rsp]
	inc	dil
	mov	byte ptr [r14 + 0xfa], dil
.label_126:
	mov	rbx, rsi
	imul	rsi, rax
	cmp	rsi, rcx
	movabs	rbp, 0xffffffff00000000
	ja	.label_188
	jmp	.label_193
.label_197:
	lea	edi, [r9 + 1]
	movzx	edi, byte ptr [rdi + primes_diff]
	add	rdi, r10
	lea	ebp, [r9 + 2]
	movzx	r13d, byte ptr [rbp + primes_diff]
	movabs	rbp, 0xffffffff00000000
	add	r13, rdi
.label_184:
	movzx	ebx, byte ptr [r14 + 0xfa]
	lea	r8d, [rbx - 1]
	test	ebx, ebx
	mov	r12d, r8d
	je	.label_207
	lea	r12, [rbx + 1]
	mov	rdi, rbx
	shl	rdi, 0x20
	add	rdi, rbp
.label_159:
	cmp	qword ptr [r14 + r12*8], r13
	jbe	.label_220
	dec	r12
	add	rdi, rbp
	cmp	r12, 1
	jg	.label_159
	add	r12d, -2
	jmp	.label_207
.label_220:
	mov	rbp, rdi
	sar	rbp, 0x1d
	cmp	qword ptr [r14 + rbp + 0x10], r13
	jne	.label_227
	sar	rdi, 0x20
	inc	byte ptr [r14 + rdi + 0xe0]
	jmp	.label_233
.label_227:
	add	r12, -2
.label_207:
	mov	qword ptr [rsp], rbx
	cmp	r8d, r12d
	jle	.label_158
	mov	rbx, qword ptr [rsp]
	lea	r8d, [rbx - 1]
	sub	r8d, r12d
	mov	edi, ebx
	add	edi, -2
	sub	edi, r12d
	and	r8d, 3
	cmp	edi, 3
	jae	.label_245
	mov	rdi, rbx
	jmp	.label_108
.label_245:
	mov	qword ptr [rsp + 0x20], r13
	mov	ebp, r8d
	lea	r8, [r11 + rbx]
	mov	qword ptr [rsp + 0x18], r11
	lea	r11, [r11 + rbx*8]
	mov	edi, r12d
	not	edi
	mov	dword ptr [rsp + 0x14], ebp
	sub	edi, ebp
	add	rdi, rbx
	mov	qword ptr [rsp + 8], rdi
	xor	edi, edi
.label_215:
	mov	r13, qword ptr [r11 + rdi*8 - 0xd8]
	mov	qword ptr [r11 + rdi*8 - 0xd0], r13
	movzx	ebx, byte ptr [r8 + rdi - 1]
	mov	byte ptr [r8 + rdi], bl
	mov	rbx, qword ptr [r11 + rdi*8 - 0xe0]
	mov	qword ptr [r11 + rdi*8 - 0xd8], rbx
	movzx	ebx, byte ptr [r8 + rdi - 2]
	mov	byte ptr [r8 + rdi - 1], bl
	mov	rbx, qword ptr [r11 + rdi*8 - 0xe8]
	mov	qword ptr [r11 + rdi*8 - 0xe0], rbx
	movzx	ebx, byte ptr [r8 + rdi - 3]
	mov	byte ptr [r8 + rdi - 2], bl
	mov	rbx, qword ptr [r11 + rdi*8 - 0xf0]
	mov	qword ptr [r11 + rdi*8 - 0xe8], rbx
	movzx	ebx, byte ptr [r8 + rdi - 4]
	mov	byte ptr [r8 + rdi - 3], bl
	add	rdi, -4
	mov	ebx, edi
	mov	rbp, qword ptr [rsp + 8]
	add	ebx, ebp
	jne	.label_215
	add	rdi, qword ptr [rsp]
	mov	r11, qword ptr [rsp + 0x18]
	mov	r13, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x14]
.label_108:
	test	r8d, r8d
	je	.label_158
	neg	r8d
.label_160:
	mov	rbp, qword ptr [r14 + rdi*8 + 8]
	mov	qword ptr [r14 + rdi*8 + 0x10], rbp
	movzx	ebx, byte ptr [r14 + rdi + 0xdf]
	mov	byte ptr [r14 + rdi + 0xe0], bl
	dec	rdi
	inc	r8d
	jne	.label_160
.label_158:
	movsxd	rdi, r12d
	mov	qword ptr [r14 + rdi*8 + 0x18], r13
	mov	byte ptr [r14 + rdi + 0xe1], 1
	mov	rdi, qword ptr [rsp]
	inc	dil
	mov	byte ptr [r14 + 0xfa], dil
.label_233:
	mov	rbx, rsi
	imul	rsi, rax
	cmp	rsi, rcx
	movabs	rbp, 0xffffffff00000000
	ja	.label_178
	jmp	.label_184
.label_208:
	lea	edi, [r9 + 1]
	movzx	edi, byte ptr [rdi + primes_diff]
	add	rdi, r10
	lea	ebp, [r9 + 2]
	movzx	ebp, byte ptr [rbp + primes_diff]
	add	rbp, rdi
	lea	edi, [r9 + 3]
	movzx	r13d, byte ptr [rdi + primes_diff]
	add	r13, rbp
	movabs	rbp, 0xffffffff00000000
.label_177:
	movzx	ebx, byte ptr [r14 + 0xfa]
	lea	r8d, [rbx - 1]
	test	ebx, ebx
	mov	r12d, r8d
	je	.label_157
	lea	r12, [rbx + 1]
	mov	rdi, rbx
	shl	rdi, 0x20
	add	rdi, rbp
.label_213:
	cmp	qword ptr [r14 + r12*8], r13
	jbe	.label_210
	dec	r12
	add	rdi, rbp
	cmp	r12, 1
	jg	.label_213
	add	r12d, -2
	jmp	.label_157
.label_210:
	mov	rbp, rdi
	sar	rbp, 0x1d
	cmp	qword ptr [r14 + rbp + 0x10], r13
	jne	.label_218
	sar	rdi, 0x20
	inc	byte ptr [r14 + rdi + 0xe0]
	jmp	.label_223
.label_218:
	add	r12, -2
.label_157:
	mov	qword ptr [rsp], rbx
	cmp	r8d, r12d
	jle	.label_150
	mov	rbx, qword ptr [rsp]
	lea	r8d, [rbx - 1]
	sub	r8d, r12d
	mov	edi, ebx
	add	edi, -2
	sub	edi, r12d
	and	r8d, 3
	cmp	edi, 3
	jae	.label_235
	mov	rdi, rbx
	jmp	.label_243
.label_235:
	mov	qword ptr [rsp + 0x20], r13
	mov	ebp, r8d
	lea	r8, [r11 + rbx]
	mov	qword ptr [rsp + 0x18], r11
	lea	r11, [r11 + rbx*8]
	mov	edi, r12d
	not	edi
	mov	dword ptr [rsp + 0x14], ebp
	sub	edi, ebp
	add	rdi, rbx
	mov	qword ptr [rsp + 8], rdi
	xor	edi, edi
.label_117:
	mov	r13, qword ptr [r11 + rdi*8 - 0xd8]
	mov	qword ptr [r11 + rdi*8 - 0xd0], r13
	movzx	ebx, byte ptr [r8 + rdi - 1]
	mov	byte ptr [r8 + rdi], bl
	mov	rbx, qword ptr [r11 + rdi*8 - 0xe0]
	mov	qword ptr [r11 + rdi*8 - 0xd8], rbx
	movzx	ebx, byte ptr [r8 + rdi - 2]
	mov	byte ptr [r8 + rdi - 1], bl
	mov	rbx, qword ptr [r11 + rdi*8 - 0xe8]
	mov	qword ptr [r11 + rdi*8 - 0xe0], rbx
	movzx	ebx, byte ptr [r8 + rdi - 3]
	mov	byte ptr [r8 + rdi - 2], bl
	mov	rbx, qword ptr [r11 + rdi*8 - 0xf0]
	mov	qword ptr [r11 + rdi*8 - 0xe8], rbx
	movzx	ebx, byte ptr [r8 + rdi - 4]
	mov	byte ptr [r8 + rdi - 3], bl
	add	rdi, -4
	mov	ebx, edi
	mov	rbp, qword ptr [rsp + 8]
	add	ebx, ebp
	jne	.label_117
	add	rdi, qword ptr [rsp]
	mov	r11, qword ptr [rsp + 0x18]
	mov	r13, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x14]
.label_243:
	test	r8d, r8d
	je	.label_150
	neg	r8d
.label_153:
	mov	rbp, qword ptr [r14 + rdi*8 + 8]
	mov	qword ptr [r14 + rdi*8 + 0x10], rbp
	movzx	ebx, byte ptr [r14 + rdi + 0xdf]
	mov	byte ptr [r14 + rdi + 0xe0], bl
	dec	rdi
	inc	r8d
	jne	.label_153
.label_150:
	movsxd	rdi, r12d
	mov	qword ptr [r14 + rdi*8 + 0x18], r13
	mov	byte ptr [r14 + rdi + 0xe1], 1
	mov	rdi, qword ptr [rsp]
	inc	dil
	mov	byte ptr [r14 + 0xfa], dil
.label_223:
	mov	rbx, rsi
	imul	rsi, rax
	cmp	rsi, rcx
	movabs	rbp, 0xffffffff00000000
	ja	.label_212
	jmp	.label_177
.label_217:
	lea	edi, [r9 + 1]
	movzx	edi, byte ptr [rdi + primes_diff]
	add	rdi, r10
	lea	ebp, [r9 + 2]
	movzx	ebp, byte ptr [rbp + primes_diff]
	add	rbp, rdi
	lea	edi, [r9 + 3]
	movzx	edi, byte ptr [rdi + primes_diff]
	add	rdi, rbp
	lea	ebp, [r9 + 4]
	movzx	r13d, byte ptr [rbp + primes_diff]
	movabs	rbp, 0xffffffff00000000
	add	r13, rdi
.label_120:
	movzx	ebx, byte ptr [r14 + 0xfa]
	lea	r8d, [rbx - 1]
	test	ebx, ebx
	mov	r12d, r8d
	je	.label_168
	lea	r12, [rbx + 1]
	mov	rdi, rbx
	shl	rdi, 0x20
	add	rdi, rbp
.label_205:
	cmp	qword ptr [r14 + r12*8], r13
	jbe	.label_201
	dec	r12
	add	rdi, rbp
	cmp	r12, 1
	jg	.label_205
	add	r12d, -2
	jmp	.label_168
.label_201:
	mov	rbp, rdi
	sar	rbp, 0x1d
	cmp	qword ptr [r14 + rbp + 0x10], r13
	jne	.label_214
	sar	rdi, 0x20
	inc	byte ptr [r14 + rdi + 0xe0]
	jmp	.label_190
.label_214:
	add	r12, -2
.label_168:
	mov	qword ptr [rsp], rbx
	cmp	r8d, r12d
	jle	.label_144
	mov	rbx, qword ptr [rsp]
	lea	r8d, [rbx - 1]
	sub	r8d, r12d
	mov	edi, ebx
	add	edi, -2
	sub	edi, r12d
	and	r8d, 3
	cmp	edi, 3
	jae	.label_228
	mov	rdi, rbx
	jmp	.label_240
.label_228:
	mov	qword ptr [rsp + 0x20], r13
	mov	ebp, r8d
	lea	r8, [r11 + rbx]
	mov	qword ptr [rsp + 0x18], r11
	lea	r11, [r11 + rbx*8]
	mov	edi, r12d
	not	edi
	mov	dword ptr [rsp + 0x14], ebp
	sub	edi, ebp
	add	rdi, rbx
	mov	qword ptr [rsp + 8], rdi
	xor	edi, edi
.label_111:
	mov	r13, qword ptr [r11 + rdi*8 - 0xd8]
	mov	qword ptr [r11 + rdi*8 - 0xd0], r13
	movzx	ebx, byte ptr [r8 + rdi - 1]
	mov	byte ptr [r8 + rdi], bl
	mov	rbx, qword ptr [r11 + rdi*8 - 0xe0]
	mov	qword ptr [r11 + rdi*8 - 0xd8], rbx
	movzx	ebx, byte ptr [r8 + rdi - 2]
	mov	byte ptr [r8 + rdi - 1], bl
	mov	rbx, qword ptr [r11 + rdi*8 - 0xe8]
	mov	qword ptr [r11 + rdi*8 - 0xe0], rbx
	movzx	ebx, byte ptr [r8 + rdi - 3]
	mov	byte ptr [r8 + rdi - 2], bl
	mov	rbx, qword ptr [r11 + rdi*8 - 0xf0]
	mov	qword ptr [r11 + rdi*8 - 0xe8], rbx
	movzx	ebx, byte ptr [r8 + rdi - 4]
	mov	byte ptr [r8 + rdi - 3], bl
	add	rdi, -4
	mov	ebx, edi
	mov	rbp, qword ptr [rsp + 8]
	add	ebx, ebp
	jne	.label_111
	add	rdi, qword ptr [rsp]
	mov	r11, qword ptr [rsp + 0x18]
	mov	r13, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x14]
.label_240:
	test	r8d, r8d
	je	.label_144
	neg	r8d
.label_106:
	mov	rbp, qword ptr [r14 + rdi*8 + 8]
	mov	qword ptr [r14 + rdi*8 + 0x10], rbp
	movzx	ebx, byte ptr [r14 + rdi + 0xdf]
	mov	byte ptr [r14 + rdi + 0xe0], bl
	dec	rdi
	inc	r8d
	jne	.label_106
.label_144:
	movsxd	rdi, r12d
	mov	qword ptr [r14 + rdi*8 + 0x18], r13
	mov	byte ptr [r14 + rdi + 0xe1], 1
	mov	rdi, qword ptr [rsp]
	inc	dil
	mov	byte ptr [r14 + 0xfa], dil
.label_190:
	mov	rbx, rsi
	imul	rsi, rax
	cmp	rsi, rcx
	movabs	rbp, 0xffffffff00000000
	ja	.label_165
	jmp	.label_120
.label_224:
	lea	esi, [r9 + 1]
	movzx	esi, byte ptr [rsi + primes_diff]
	add	rsi, r10
	lea	ebp, [r9 + 2]
	movzx	ebp, byte ptr [rbp + primes_diff]
	add	rbp, rsi
	lea	esi, [r9 + 3]
	movzx	esi, byte ptr [rsi + primes_diff]
	add	rsi, rbp
	lea	ebp, [r9 + 4]
	movzx	ebp, byte ptr [rbp + primes_diff]
	add	rbp, rsi
	lea	esi, [r9 + 5]
	movzx	r13d, byte ptr [rsi + primes_diff]
	add	r13, rbp
	movabs	rbp, 0xffffffff00000000
.label_171:
	movzx	ebx, byte ptr [r14 + 0xfa]
	lea	r8d, [rbx - 1]
	test	ebx, ebx
	mov	r12d, r8d
	je	.label_156
	lea	r12, [rbx + 1]
	mov	rsi, rbx
	shl	rsi, 0x20
	add	rsi, rbp
.label_203:
	cmp	qword ptr [r14 + r12*8], r13
	jbe	.label_200
	dec	r12
	add	rsi, rbp
	cmp	r12, 1
	jg	.label_203
	add	r12d, -2
	jmp	.label_156
.label_200:
	mov	rbp, rsi
	sar	rbp, 0x1d
	cmp	qword ptr [r14 + rbp + 0x10], r13
	jne	.label_202
	sar	rsi, 0x20
	inc	byte ptr [r14 + rsi + 0xe0]
	jmp	.label_216
.label_202:
	add	r12, -2
.label_156:
	mov	qword ptr [rsp], rbx
	cmp	r8d, r12d
	jle	.label_143
	mov	rbx, qword ptr [rsp]
	lea	r8d, [rbx - 1]
	sub	r8d, r12d
	mov	esi, ebx
	add	esi, -2
	sub	esi, r12d
	and	r8d, 3
	cmp	esi, 3
	jae	.label_146
	mov	rsi, rbx
	jmp	.label_239
.label_146:
	mov	qword ptr [rsp + 0x20], r13
	mov	ebp, r8d
	lea	r8, [r11 + rbx]
	mov	qword ptr [rsp + 0x18], r11
	lea	r11, [r11 + rbx*8]
	mov	esi, r12d
	not	esi
	mov	dword ptr [rsp + 0x14], ebp
	sub	esi, ebp
	add	rsi, rbx
	mov	qword ptr [rsp + 8], rsi
	xor	esi, esi
.label_110:
	mov	r13, qword ptr [r11 + rsi*8 - 0xd8]
	mov	qword ptr [r11 + rsi*8 - 0xd0], r13
	movzx	ebx, byte ptr [r8 + rsi - 1]
	mov	byte ptr [r8 + rsi], bl
	mov	rbx, qword ptr [r11 + rsi*8 - 0xe0]
	mov	qword ptr [r11 + rsi*8 - 0xd8], rbx
	movzx	ebx, byte ptr [r8 + rsi - 2]
	mov	byte ptr [r8 + rsi - 1], bl
	mov	rbx, qword ptr [r11 + rsi*8 - 0xe8]
	mov	qword ptr [r11 + rsi*8 - 0xe0], rbx
	movzx	ebx, byte ptr [r8 + rsi - 3]
	mov	byte ptr [r8 + rsi - 2], bl
	mov	rbx, qword ptr [r11 + rsi*8 - 0xf0]
	mov	qword ptr [r11 + rsi*8 - 0xe8], rbx
	movzx	ebx, byte ptr [r8 + rsi - 4]
	mov	byte ptr [r8 + rsi - 3], bl
	add	rsi, -4
	mov	ebx, esi
	mov	rbp, qword ptr [rsp + 8]
	add	ebx, ebp
	jne	.label_110
	add	rsi, qword ptr [rsp]
	mov	r11, qword ptr [rsp + 0x18]
	mov	r13, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x14]
.label_239:
	test	r8d, r8d
	je	.label_143
	neg	r8d
.label_145:
	mov	rbp, qword ptr [r14 + rsi*8 + 8]
	mov	qword ptr [r14 + rsi*8 + 0x10], rbp
	movzx	ebx, byte ptr [r14 + rsi + 0xdf]
	mov	byte ptr [r14 + rsi + 0xe0], bl
	dec	rsi
	inc	r8d
	jne	.label_145
.label_143:
	movsxd	rsi, r12d
	mov	qword ptr [r14 + rsi*8 + 0x18], r13
	mov	byte ptr [r14 + rsi + 0xe1], 1
	mov	rsi, qword ptr [rsp]
	inc	sil
	mov	byte ptr [r14 + 0xfa], sil
.label_216:
	mov	rbx, rdi
	imul	rdi, rax
	cmp	rdi, rcx
	movabs	rbp, 0xffffffff00000000
	ja	.label_164
	jmp	.label_171
.label_234:
	lea	esi, [r9 + 1]
	movzx	esi, byte ptr [rsi + primes_diff]
	add	rsi, r10
	lea	ebp, [r9 + 2]
	movzx	ebp, byte ptr [rbp + primes_diff]
	add	rbp, rsi
	lea	esi, [r9 + 3]
	movzx	esi, byte ptr [rsi + primes_diff]
	add	rsi, rbp
	lea	ebp, [r9 + 4]
	movzx	ebp, byte ptr [rbp + primes_diff]
	add	rbp, rsi
	lea	esi, [r9 + 5]
	movzx	esi, byte ptr [rsi + primes_diff]
	add	rsi, rbp
	lea	ebp, [r9 + 6]
	movzx	r13d, byte ptr [rbp + primes_diff]
	movabs	rbp, 0xffffffff00000000
	add	r13, rsi
.label_175:
	movzx	ebx, byte ptr [r14 + 0xfa]
	lea	r8d, [rbx - 1]
	test	ebx, ebx
	mov	r12d, r8d
	je	.label_195
	lea	r12, [rbx + 1]
	mov	rsi, rbx
	shl	rsi, 0x20
	add	rsi, rbp
.label_162:
	cmp	qword ptr [r14 + r12*8], r13
	jbe	.label_186
	dec	r12
	add	rsi, rbp
	cmp	r12, 1
	jg	.label_162
	add	r12d, -2
	jmp	.label_195
.label_186:
	mov	rbp, rsi
	sar	rbp, 0x1d
	cmp	qword ptr [r14 + rbp + 0x10], r13
	jne	.label_169
	sar	rsi, 0x20
	inc	byte ptr [r14 + rsi + 0xe0]
	jmp	.label_183
.label_169:
	add	r12, -2
.label_195:
	mov	qword ptr [rsp], rbx
	cmp	r8d, r12d
	jle	.label_148
	mov	rbx, qword ptr [rsp]
	lea	r8d, [rbx - 1]
	sub	r8d, r12d
	mov	esi, ebx
	add	esi, -2
	sub	esi, r12d
	and	r8d, 3
	cmp	esi, 3
	jae	.label_232
	mov	rsi, rbx
	jmp	.label_211
.label_232:
	mov	qword ptr [rsp + 0x20], r13
	mov	ebp, r8d
	lea	r8, [r11 + rbx]
	mov	qword ptr [rsp + 0x18], r11
	lea	r11, [r11 + rbx*8]
	mov	esi, r12d
	not	esi
	mov	dword ptr [rsp + 0x14], ebp
	sub	esi, ebp
	add	rsi, rbx
	mov	qword ptr [rsp + 8], rsi
	xor	esi, esi
.label_173:
	mov	r13, qword ptr [r11 + rsi*8 - 0xd8]
	mov	qword ptr [r11 + rsi*8 - 0xd0], r13
	movzx	ebx, byte ptr [r8 + rsi - 1]
	mov	byte ptr [r8 + rsi], bl
	mov	rbx, qword ptr [r11 + rsi*8 - 0xe0]
	mov	qword ptr [r11 + rsi*8 - 0xd8], rbx
	movzx	ebx, byte ptr [r8 + rsi - 2]
	mov	byte ptr [r8 + rsi - 1], bl
	mov	rbx, qword ptr [r11 + rsi*8 - 0xe8]
	mov	qword ptr [r11 + rsi*8 - 0xe0], rbx
	movzx	ebx, byte ptr [r8 + rsi - 3]
	mov	byte ptr [r8 + rsi - 2], bl
	mov	rbx, qword ptr [r11 + rsi*8 - 0xf0]
	mov	qword ptr [r11 + rsi*8 - 0xe8], rbx
	movzx	ebx, byte ptr [r8 + rsi - 4]
	mov	byte ptr [r8 + rsi - 3], bl
	add	rsi, -4
	mov	ebx, esi
	mov	rbp, qword ptr [rsp + 8]
	add	ebx, ebp
	jne	.label_173
	add	rsi, qword ptr [rsp]
	mov	r11, qword ptr [rsp + 0x18]
	mov	r13, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x14]
.label_211:
	test	r8d, r8d
	je	.label_148
	neg	r8d
.label_185:
	mov	rbp, qword ptr [r14 + rsi*8 + 8]
	mov	qword ptr [r14 + rsi*8 + 0x10], rbp
	movzx	ebx, byte ptr [r14 + rsi + 0xdf]
	mov	byte ptr [r14 + rsi + 0xe0], bl
	dec	rsi
	inc	r8d
	jne	.label_185
.label_148:
	movsxd	rsi, r12d
	mov	qword ptr [r14 + rsi*8 + 0x18], r13
	mov	byte ptr [r14 + rsi + 0xe1], 1
	mov	rsi, qword ptr [rsp]
	inc	sil
	mov	byte ptr [r14 + 0xfa], sil
.label_183:
	mov	rbx, rdi
	imul	rdi, rcx
	cmp	rdi, rax
	movabs	rbp, 0xffffffff00000000
	ja	.label_167
	jmp	.label_175
.label_242:
	lea	eax, [r9 + 1]
	movzx	eax, byte ptr [rax + primes_diff]
	add	rax, r10
	lea	esi, [r9 + 2]
	movzx	esi, byte ptr [rsi + primes_diff]
	add	rsi, rax
	lea	eax, [r9 + 3]
	movzx	eax, byte ptr [rax + primes_diff]
	add	rax, rsi
	lea	esi, [r9 + 4]
	movzx	esi, byte ptr [rsi + primes_diff]
	add	rsi, rax
	lea	eax, [r9 + 5]
	movzx	eax, byte ptr [rax + primes_diff]
	add	rax, rsi
	lea	esi, [r9 + 6]
	movzx	esi, byte ptr [rsi + primes_diff]
	add	rsi, rax
	lea	eax, [r9 + 7]
	movzx	r12d, byte ptr [rax + primes_diff]
	add	r12, rsi
.label_179:
	mov	rbx, rcx
	movzx	eax, byte ptr [r14 + 0xfa]
	lea	r8d, [rax - 1]
	mov	qword ptr [rsp + 8], rax
	test	eax, eax
	mov	esi, r8d
	je	.label_199
	mov	rcx, qword ptr [rsp + 8]
	lea	rsi, [rcx + 1]
	mov	rax, rbp
	mov	rbp, rcx
	shl	rbp, 0x20
	mov	rcx, rax
	add	rbp, rax
.label_221:
	cmp	qword ptr [r14 + rsi*8], r12
	jbe	.label_219
	dec	rsi
	add	rbp, rcx
	cmp	rsi, 1
	jg	.label_221
	add	esi, -2
	jmp	.label_225
.label_219:
	mov	rax, rbp
	sar	rax, 0x1d
	cmp	qword ptr [r14 + rax + 0x10], r12
	jne	.label_172
	sar	rbp, 0x20
	inc	byte ptr [r14 + rbp + 0xe0]
	mov	rbp, rcx
	jmp	.label_196
.label_172:
	add	rsi, -2
.label_225:
	mov	rbp, rcx
.label_199:
	cmp	r8d, esi
	mov	r8, qword ptr [rsp + 8]
	jle	.label_161
	lea	r13d, [r8 - 1]
	sub	r13d, esi
	mov	eax, r8d
	add	eax, -2
	sub	eax, esi
	and	r13d, 3
	cmp	eax, 3
	jae	.label_246
	mov	rcx, r8
	jmp	.label_109
.label_246:
	mov	qword ptr [rsp], r12
	mov	rax, r8
	lea	r8, [r11 + rax]
	mov	qword ptr [rsp + 0x18], r11
	lea	rbp, [r11 + rax*8]
	mov	r12d, esi
	not	r12d
	sub	r12d, r13d
	add	r12, rax
	xor	ecx, ecx
.label_122:
	mov	r11, qword ptr [rbp + rcx*8 - 0xd8]
	mov	qword ptr [rbp + rcx*8 - 0xd0], r11
	movzx	eax, byte ptr [r8 + rcx - 1]
	mov	byte ptr [r8 + rcx], al
	mov	rax, qword ptr [rbp + rcx*8 - 0xe0]
	mov	qword ptr [rbp + rcx*8 - 0xd8], rax
	movzx	eax, byte ptr [r8 + rcx - 2]
	mov	byte ptr [r8 + rcx - 1], al
	mov	rax, qword ptr [rbp + rcx*8 - 0xe8]
	mov	qword ptr [rbp + rcx*8 - 0xe0], rax
	movzx	eax, byte ptr [r8 + rcx - 3]
	mov	byte ptr [r8 + rcx - 2], al
	mov	rax, qword ptr [rbp + rcx*8 - 0xf0]
	mov	qword ptr [rbp + rcx*8 - 0xe8], rax
	movzx	eax, byte ptr [r8 + rcx - 4]
	mov	byte ptr [r8 + rcx - 3], al
	add	rcx, -4
	mov	eax, ecx
	add	eax, r12d
	jne	.label_122
	mov	r8, qword ptr [rsp + 8]
	add	rcx, r8
	movabs	rbp, 0xffffffff00000000
	mov	r11, qword ptr [rsp + 0x18]
	mov	r12, qword ptr [rsp]
.label_109:
	test	r13d, r13d
	je	.label_161
	neg	r13d
.label_230:
	mov	rax, qword ptr [r14 + rcx*8 + 8]
	mov	qword ptr [r14 + rcx*8 + 0x10], rax
	movzx	eax, byte ptr [r14 + rcx + 0xdf]
	mov	byte ptr [r14 + rcx + 0xe0], al
	dec	rcx
	inc	r13d
	jne	.label_230
.label_161:
	movsxd	rax, esi
	mov	qword ptr [r14 + rax*8 + 0x18], r12
	mov	byte ptr [r14 + rax + 0xe1], 1
	inc	r8b
	mov	byte ptr [r14 + 0xfa], r8b
.label_196:
	mov	rcx, rbx
	imul	rcx, rdi
	cmp	rcx, rdx
	ja	.label_176
	jmp	.label_179
	nop	word ptr [rax + rax]
.label_104:
	mov	r9d, edi
	mov	rsi, r9
	shl	rsi, 4
	lea	rdx, qword ptr [rsi + primes_dtab]
	mov	rax, qword ptr [rsi + primes_dtab]
	mov	rcx, rax
	imul	rcx, rbx
	mov	rsi, qword ptr [rsi + label_118]
	cmp	rcx, rsi
	jbe	.label_181
.label_187:
	mov	rax, qword ptr [rdx + 0x10]
	mov	rcx, qword ptr [rdx + 0x18]
	mov	rsi, rax
	imul	rsi, rbx
	cmp	rsi, rcx
	jbe	.label_192
.label_188:
	mov	rax, qword ptr [rdx + 0x20]
	mov	rcx, qword ptr [rdx + 0x28]
	mov	rsi, rax
	imul	rsi, rbx
	cmp	rsi, rcx
	jbe	.label_197
.label_178:
	mov	rax, qword ptr [rdx + 0x30]
	mov	rcx, qword ptr [rdx + 0x38]
	mov	rsi, rax
	imul	rsi, rbx
	cmp	rsi, rcx
	jbe	.label_208
.label_212:
	mov	rax, qword ptr [rdx + 0x40]
	mov	rcx, qword ptr [rdx + 0x48]
	mov	rsi, rax
	imul	rsi, rbx
	cmp	rsi, rcx
	jbe	.label_217
.label_165:
	mov	rax, qword ptr [rdx + 0x50]
	mov	rcx, qword ptr [rdx + 0x58]
	mov	rdi, rax
	imul	rdi, rbx
	cmp	rdi, rcx
	jbe	.label_224
.label_164:
	mov	rcx, qword ptr [rdx + 0x60]
	mov	rax, qword ptr [rdx + 0x68]
	mov	rdi, rcx
	imul	rdi, rbx
	cmp	rdi, rax
	jbe	.label_234
.label_167:
	mov	rdi, qword ptr [rdx + 0x70]
	mov	rdx, qword ptr [rdx + 0x78]
	mov	rcx, rdi
	imul	rcx, rbx
	cmp	rcx, rdx
	jbe	.label_242
.label_176:
	movzx	eax, byte ptr [r9 + primes_diff8]
	lea	edi, [r9 + 8]
	cmp	edi, 0x29b
	ja	.label_105
	add	r10, rax
	mov	rax, r10
	imul	rax, rax
	cmp	rax, rbx
	jbe	.label_104
.label_105:
	test	r15, r15
	jne	.label_119
	cmp	rbx, 2
	jb	.label_121
.label_119:
	mov	rdi, r15
	mov	rsi, rbx
	call	prime2_p
	test	al, al
	je	.label_125
	test	r15, r15
	je	.label_127
	cmp	qword ptr [r14 + 8], 0
	jne	.label_129
	mov	qword ptr [r14], rbx
	mov	qword ptr [r14 + 8], r15
	jmp	.label_121
.label_125:
	test	r15, r15
	je	.label_131
	mov	edx, 1
	mov	rdi, r15
	mov	rsi, rbx
	mov	rcx, r14
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	factor_using_pollard_rho2
.label_127:
	movzx	r8d, byte ptr [r14 + 0xfa]
	lea	edx, [r8 - 1]
	test	r8d, r8d
	mov	ecx, edx
	je	.label_140
	lea	rcx, [r8 + 1]
	mov	rax, r8
	shl	rax, 0x20
	add	rax, rbp
	nop	
.label_152:
	cmp	qword ptr [r14 + rcx*8], rbx
	jbe	.label_149
	dec	rcx
	add	rax, rbp
	cmp	rcx, 1
	jg	.label_152
	add	ecx, -2
	jmp	.label_140
.label_131:
	mov	esi, 1
	mov	rdi, rbx
	mov	rdx, r14
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	factor_using_pollard_rho
.label_149:
	mov	rsi, rax
	sar	rsi, 0x1d
	cmp	qword ptr [r14 + rsi + 0x10], rbx
	jne	.label_163
	sar	rax, 0x20
	inc	byte ptr [r14 + rax + 0xe0]
	jmp	.label_121
.label_163:
	add	rcx, -2
.label_140:
	cmp	edx, ecx
	jle	.label_138
	lea	edx, [r8 - 1]
	sub	edx, ecx
	mov	eax, r8d
	add	eax, -2
	sub	eax, ecx
	and	edx, 3
	cmp	eax, 3
	jae	.label_174
	mov	rsi, r8
	jmp	.label_180
.label_174:
	lea	rdi, [r14 + r8 + 0xe0]
	lea	rbp, [r14 + r8*8 + 0xe0]
	mov	r9d, ecx
	not	r9d
	sub	r9d, edx
	add	r9, r8
	xor	esi, esi
	nop	dword ptr [rax]
.label_238:
	mov	rax, qword ptr [rbp + rsi*8 - 0xd8]
	mov	qword ptr [rbp + rsi*8 - 0xd0], rax
	movzx	eax, byte ptr [rdi + rsi - 1]
	mov	byte ptr [rdi + rsi], al
	mov	rax, qword ptr [rbp + rsi*8 - 0xe0]
	mov	qword ptr [rbp + rsi*8 - 0xd8], rax
	movzx	eax, byte ptr [rdi + rsi - 2]
	mov	byte ptr [rdi + rsi - 1], al
	mov	rax, qword ptr [rbp + rsi*8 - 0xe8]
	mov	qword ptr [rbp + rsi*8 - 0xe0], rax
	movzx	eax, byte ptr [rdi + rsi - 3]
	mov	byte ptr [rdi + rsi - 2], al
	mov	rax, qword ptr [rbp + rsi*8 - 0xf0]
	mov	qword ptr [rbp + rsi*8 - 0xe8], rax
	movzx	eax, byte ptr [rdi + rsi - 4]
	mov	byte ptr [rdi + rsi - 3], al
	add	rsi, -4
	mov	eax, r9d
	add	eax, esi
	jne	.label_238
	add	rsi, r8
.label_180:
	test	edx, edx
	je	.label_138
	neg	edx
	nop	word ptr [rax + rax]
.label_229:
	mov	rax, qword ptr [r14 + rsi*8 + 8]
	mov	qword ptr [r14 + rsi*8 + 0x10], rax
	movzx	eax, byte ptr [r14 + rsi + 0xdf]
	mov	byte ptr [r14 + rsi + 0xe0], al
	dec	rsi
	inc	edx
	jne	.label_229
.label_138:
	movsxd	rax, ecx
	mov	qword ptr [r14 + rax*8 + 0x18], rbx
	mov	byte ptr [r14 + rax + 0xe1], 1
	inc	r8b
	mov	byte ptr [r14 + 0xfa], r8b
.label_121:
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_129:
	mov	edi, OFFSET FLAT:label_113
	mov	esi, OFFSET FLAT:label_114
	mov	edx, 0x235
	mov	ecx, OFFSET FLAT:label_115
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404240

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
	je	.label_266
	cmp	r14, 1
	mov	r12, rbx
	sbb	r12, 0
	mov	rax, r14
	dec	rax
	mov	qword ptr [rsp + 0x50], rax
	je	.label_276
	mov	qword ptr [rsp + 0x100], rax
	bsf	rcx, qword ptr [rsp + 0x100]
	shrd	rax, r12, cl
	mov	rdx, r12
	mov	dword ptr [rsp + 4], ecx
	shr	rdx, cl
	jmp	.label_278
.label_266:
	mov	rdi, r14
	call	prime_p
	jmp	.label_253
.label_276:
	mov	qword ptr [rsp + 0xf8], r12
	bsf	rcx, qword ptr [rsp + 0xf8]
	mov	rax, r12
	shr	rax, cl
	add	ecx, 0x40
	mov	dword ptr [rsp + 4], ecx
	xor	edx, edx
.label_278:
	mov	qword ptr [rsp + 0x70], rax
	mov	qword ptr [rsp + 0x78], rdx
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
	xor	r15d, r15d
	cmp	rbx, 1
	seta	r15b
	mov	edx, 0x3f
	mov	ecx, 0x7f
	cmova	rcx, rdx
	mov	r13, r15
	xor	r13, 1
	not	rcx
	nop	dword ptr [rax + rax]
.label_271:
	shld	r15, r13, 1
	add	r13, r13
	cmp	r15, rbx
	ja	.label_249
	cmp	r13, r14
	jb	.label_273
	cmp	r15, rbx
	jne	.label_273
.label_249:
	mov	qword ptr [rsp + 0xf0], rbx
	mov	qword ptr [rsp + 0xe8], r14
	sub	r13, qword ptr [rsp + 0xe8]
	sbb	r15, qword ptr [rsp + 0xf0]
.label_273:
	inc	rcx
	jne	.label_271
	mov	rcx, qword ptr [rsp + 8]
	imul	rcx, rax
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp + 0xe0], r15
	mov	qword ptr [rsp + 0xd8], r13
	mov	rax, r13
	mov	rcx, r15
	add	rax, qword ptr [rsp + 0xd8]
	adc	rcx, qword ptr [rsp + 0xe0]
	mov	qword ptr [rsp + 0x28], rcx
	mov	qword ptr [rsp + 0x20], rax
	cmp	rcx, rbx
	ja	.label_281
	jne	.label_265
	cmp	rax, r14
	jb	.label_265
.label_281:
	mov	qword ptr [rsp + 0xd0], rbx
	mov	qword ptr [rsp + 0xc8], r14
	sub	rax, qword ptr [rsp + 0xc8]
	sbb	rcx, qword ptr [rsp + 0xd0]
	mov	qword ptr [rsp + 0x28], rcx
	mov	qword ptr [rsp + 0x20], rax
.label_265:
	lea	rdi, [rsp + 0x108]
	lea	rsi, [rsp + 0x20]
	lea	rdx, [rsp + 0x70]
	mov	rcx, r14
	mov	r8, rbx
	mov	r9, qword ptr [rsp + 8]
	push	r15
	push	r13
	call	powm2
	add	rsp, 0x10
	mov	rsi, qword ptr [rsp + 0x108]
	cmp	rax, r13
	jne	.label_256
	cmp	rsi, r15
	je	.label_261
.label_256:
	mov	qword ptr [rsp + 0xc0], r15
	mov	qword ptr [rsp + 0xb8], r13
	mov	rcx, rbx
	mov	rdx, r14
	sub	rdx, qword ptr [rsp + 0xb8]
	sbb	rcx, qword ptr [rsp + 0xc0]
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x48], rdx
	cmp	rax, rdx
	jne	.label_263
	cmp	rsi, qword ptr [rsp + 0x38]
	je	.label_261
.label_263:
	cmp	dword ptr [rsp + 4], 2
	jb	.label_252
	mov	ebp, 1
	nop	dword ptr [rax]
.label_267:
	lea	rdi, [rsp + 0x108]
	mov	rdx, rax
	mov	rcx, rsi
	mov	r8, rax
	mov	r9, rbx
	push	qword ptr [rsp + 8]
	push	r14
	call	mulredc2
	add	rsp, 0x10
	mov	rsi, qword ptr [rsp + 0x108]
	cmp	rax, qword ptr [rsp + 0x48]
	jne	.label_258
	cmp	rsi, qword ptr [rsp + 0x38]
	je	.label_261
.label_258:
	cmp	rax, r13
	jne	.label_264
	cmp	rsi, r15
	je	.label_252
.label_264:
	inc	ebp
	cmp	ebp, dword ptr [rsp + 4]
	jb	.label_267
	jmp	.label_252
.label_261:
	lea	rdx, [rsp + 0x108]
	mov	rdi, r12
	mov	rbp, qword ptr [rsp + 0x50]
	mov	rsi, rbp
	call	factor
	mov	rax, r12
	shld	rax, rbp, 0x3f
	mov	qword ptr [rsp + 0x48], rax
	mov	rax, r12
	shr	rax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	ecx, 2
	xor	eax, eax
	mov	qword ptr [rsp + 0x40], rax
	mov	qword ptr [rsp + 0x80], r12
	nop	dword ptr [rax + rax]
.label_270:
	mov	qword ptr [rsp + 0x30], rcx
	mov	cl, 1
	cmp	qword ptr [rsp + 0x110], 0
	je	.label_259
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
	imul	rcx, qword ptr [rsp + 0x50]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 0x18], 0
	lea	rdi, [rsp + 0x68]
	lea	rsi, [rsp + 0x20]
	lea	rdx, [rsp + 0x10]
	mov	rcx, r14
	mov	r8, rbx
	mov	r9, qword ptr [rsp + 8]
	push	r15
	push	r13
	call	powm2
	add	rsp, 0x10
	mov	qword ptr [rsp + 0x60], rax
	cmp	qword ptr [rsp + 0x68], r15
	setne	dl
	cmp	rax, r13
	setne	cl
	or	cl, dl
.label_259:
	test	cl, cl
	je	.label_268
	mov	al, byte ptr [rsp + 0x202]
	test	al, al
	je	.label_268
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_279:
	mov	eax, ebp
	mov	rax, qword ptr [rsp + rax*8 + 0x118]
	cmp	rax, 2
	jne	.label_260
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_262
	nop	dword ptr [rax]
.label_260:
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
	imul	rcx, qword ptr [rsp + 0x50]
	cmp	r12, rax
	jae	.label_280
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 0x18], 0
	jmp	.label_262
	nop	word ptr cs:[rax + rax]
.label_280:
	mov	qword ptr [rsp + 0xb0], rax
	mov	rax, rcx
	mul	qword ptr [rsp + 0xb0]
	mov	rax, r12
	sub	rax, rdx
	imul	rax, rsi
	mov	qword ptr [rsp + 0x18], rax
	mov	qword ptr [rsp + 0x10], rcx
.label_262:
	lea	rdi, [rsp + 0x68]
	lea	rsi, [rsp + 0x20]
	lea	rdx, [rsp + 0x10]
	mov	rcx, r14
	mov	r8, rbx
	mov	r9, qword ptr [rsp + 8]
	push	r15
	push	r13
	call	powm2
	add	rsp, 0x10
	mov	qword ptr [rsp + 0x60], rax
	cmp	qword ptr [rsp + 0x68], r15
	setne	dl
	cmp	rax, r13
	setne	cl
	or	cl, dl
	cmp	cl, 1
	jne	.label_268
	inc	ebp
	movzx	eax, byte ptr [rsp + 0x202]
	cmp	ebp, eax
	jb	.label_279
.label_268:
	mov	al, 1
	test	cl, cl
	jne	.label_253
	mov	rax, qword ptr [rsp + 0x40]
	movzx	edx, byte ptr [rax + primes_diff]
	add	rdx, qword ptr [rsp + 0x30]
	cmp	rdx, rbx
	mov	rax, rdx
	mov	ecx, 0
	cmovb	rax, rcx
	mov	ecx, 0
	mov	qword ptr [rsp + 0x88], rdx
	cmovb	rcx, rdx
	mov	edx, 0x7f
	mov	esi, 0x3f
	cmovb	rdx, rsi
	not	rdx
	nop	word ptr cs:[rax + rax]
.label_257:
	shld	rcx, rax, 1
	add	rax, rax
	cmp	rcx, rbx
	ja	.label_277
	cmp	rax, r14
	jb	.label_255
	cmp	rcx, rbx
	jne	.label_255
.label_277:
	mov	qword ptr [rsp + 0xa8], rbx
	mov	qword ptr [rsp + 0xa0], r14
	sub	rax, qword ptr [rsp + 0xa0]
	sbb	rcx, qword ptr [rsp + 0xa8]
.label_255:
	inc	rdx
	jne	.label_257
	mov	qword ptr [rsp + 0x28], rcx
	mov	qword ptr [rsp + 0x20], rax
	lea	rdi, [rsp + 0x58]
	lea	rsi, [rsp + 0x20]
	lea	rdx, [rsp + 0x70]
	mov	rcx, r14
	mov	r8, rbx
	mov	r9, qword ptr [rsp + 8]
	push	r15
	push	r13
	call	powm2
	add	rsp, 0x10
	mov	rsi, qword ptr [rsp + 0x58]
	cmp	rax, r13
	jne	.label_269
	cmp	rsi, r15
	je	.label_254
.label_269:
	mov	qword ptr [rsp + 0x98], r15
	mov	qword ptr [rsp + 0x90], r13
	mov	rcx, rbx
	mov	rbp, r14
	sub	rbp, qword ptr [rsp + 0x90]
	sbb	rcx, qword ptr [rsp + 0x98]
	mov	qword ptr [rsp + 0x30], rcx
	cmp	rax, rbp
	jne	.label_251
	cmp	rsi, qword ptr [rsp + 0x30]
	je	.label_254
.label_251:
	cmp	dword ptr [rsp + 4], 2
	jb	.label_252
	mov	r12d, 1
	nop	dword ptr [rax + rax]
.label_250:
	lea	rdi, [rsp + 0x58]
	mov	rdx, rax
	mov	rcx, rsi
	mov	r8, rax
	mov	r9, rbx
	push	qword ptr [rsp + 8]
	push	r14
	call	mulredc2
	add	rsp, 0x10
	mov	rsi, qword ptr [rsp + 0x58]
	cmp	rax, rbp
	jne	.label_272
	cmp	rsi, qword ptr [rsp + 0x30]
	je	.label_254
.label_272:
	cmp	rax, r13
	jne	.label_275
	cmp	rsi, r15
	je	.label_252
.label_275:
	inc	r12d
	cmp	r12d, dword ptr [rsp + 4]
	jb	.label_250
	jmp	.label_252
	nop	word ptr [rax + rax]
.label_254:
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, rax
	inc	rcx
	mov	rax, rcx
	mov	qword ptr [rsp + 0x40], rax
	cmp	rcx, 0x29c
	mov	r12, qword ptr [rsp + 0x80]
	mov	rcx, qword ptr [rsp + 0x88]
	jb	.label_270
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_274
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	call	abort
.label_252:
	xor	eax, eax
.label_253:
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
	#Procedure 0x4048f0

	.globl factor_using_pollard_rho
	.type factor_using_pollard_rho, @function
factor_using_pollard_rho:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xb8
	mov	qword ptr [rsp + 0x18], rsi
	mov	rbx, rdi
	cmp	rbx, 2
	jb	.label_318
	lea	rax, [rdx + 0xe0]
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x10], rdx
.label_305:
	mov	eax, 0xffffffc0
	xor	r12d, r12d
	mov	ecx, 1
	xor	edi, edi
	mov	rsi, rbx
	nop	word ptr cs:[rax + rax]
.label_335:
	shrd	rdi, rsi, 1
	shr	rsi, 1
	cmp	rcx, rsi
	ja	.label_304
	jne	.label_309
	cmp	r12, rdi
	jb	.label_309
.label_304:
	mov	qword ptr [rsp + 0xb0], rsi
	mov	qword ptr [rsp + 0xa8], rdi
	sub	r12, qword ptr [rsp + 0xa8]
	sbb	rcx, qword ptr [rsp + 0xb0]
.label_309:
	inc	eax
	jne	.label_335
	mov	rax, rbx
	sub	rax, r12
	mov	rbp, r12
	sub	rbp, rax
	mov	eax, 0
	cmovb	rax, rbx
	cmp	rbx, 1
	je	.label_308
	add	rbp, rax
	mov	rax, qword ptr [rsp + 0x18]
	inc	rax
	mov	qword ptr [rsp + 0x20], rax
	mov	rcx, rbp
	mov	r15, rbp
	mov	r13d, 1
	mov	esi, 1
	nop	dword ptr [rax + rax]
.label_296:
	mov	qword ptr [rsp + 8], rcx
	mov	r11, rbx
	sub	r11, qword ptr [rsp + 0x18]
	jbe	.label_336
	mov	r8, rbx
	shr	r8, 1
	mov	eax, r8d
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
	mov	r9d, ebx
	and	r9d, 1
	mov	r10, rsi
	jmp	.label_321
	nop	dword ptr [rax + rax]
.label_341:
	mov	r13, r14
	mov	qword ptr [rsp + 8], rbp
	mov	rbp, r15
.label_321:
	mov	r14, r10
	test	r9, r9
	jne	.label_302
	mov	r10, qword ptr [rsp + 8]
	nop	dword ptr [rax]
.label_324:
	mov	qword ptr [rsp + 0x80], rbp
	mov	rax, rbp
	mul	qword ptr [rsp + 0x80]
	mov	rcx, rdx
	imul	rax, rdi
	mov	qword ptr [rsp + 0x78], rbx
	mul	qword ptr [rsp + 0x78]
	sub	rcx, rdx
	mov	eax, 0
	cmovb	rax, rbx
	add	rax, rcx
	sub	rax, r11
	mov	ebp, 0
	cmovb	rbp, rbx
	add	rbp, rax
	mov	rax, r10
	sub	rax, rbp
	mov	ecx, 0
	cmovb	rcx, rbx
	add	rcx, rax
	mov	qword ptr [rsp + 0x70], rcx
	mov	rax, r12
	mul	qword ptr [rsp + 0x70]
	mov	rcx, rdx
	imul	rax, rdi
	mov	qword ptr [rsp + 0x68], rbx
	mul	qword ptr [rsp + 0x68]
	sub	rcx, rdx
	mov	r12d, 0
	cmovb	r12, rbx
	add	r12, rcx
	mov	eax, r13d
	and	eax, 0x1f
	cmp	rax, 1
	jne	.label_334
	test	rbx, rbx
	mov	rdx, r12
	je	.label_340
	mov	rax, r12
	shr	rax, 1
	mov	rcx, rbx
	jmp	.label_316
.label_295:
	mov	rdx, rcx
	sar	rdx, 0x3f
	mov	rsi, rdx
	and	rsi, rcx
	add	rax, rsi
	xor	rcx, rdx
	sub	rcx, rdx
	nop	word ptr [rax + rax]
.label_316:
	mov	rdx, rcx
	shr	rcx, 1
	test	dl, 1
	je	.label_316
	sub	rcx, rax
	jne	.label_295
	or	rdx, 1
.label_340:
	cmp	rdx, 1
	mov	rax, rbp
	je	.label_297
	jmp	.label_300
	nop	word ptr cs:[rax + rax]
.label_334:
	mov	rax, r15
.label_297:
	dec	r13
	mov	r15, rax
	jne	.label_324
	jmp	.label_329
	nop	word ptr cs:[rax + rax]
.label_302:
	mov	r10, qword ptr [rsp + 8]
	nop	word ptr cs:[rax + rax]
.label_319:
	mov	qword ptr [rsp + 0xa0], rbp
	mov	rax, rbp
	mul	qword ptr [rsp + 0xa0]
	mov	rcx, rdx
	imul	rax, rdi
	mov	qword ptr [rsp + 0x98], rbx
	mul	qword ptr [rsp + 0x98]
	sub	rcx, rdx
	mov	eax, 0
	cmovb	rax, rbx
	add	rax, rcx
	sub	rax, r11
	mov	ebp, 0
	cmovb	rbp, rbx
	add	rbp, rax
	mov	rax, r10
	sub	rax, rbp
	mov	ecx, 0
	cmovb	rcx, rbx
	add	rcx, rax
	mov	qword ptr [rsp + 0x90], rcx
	mov	rax, r12
	mul	qword ptr [rsp + 0x90]
	mov	rcx, rdx
	imul	rax, rdi
	mov	qword ptr [rsp + 0x88], rbx
	mul	qword ptr [rsp + 0x88]
	sub	rcx, rdx
	mov	r12d, 0
	cmovb	r12, rbx
	add	r12, rcx
	mov	eax, r13d
	and	eax, 0x1f
	cmp	rax, 1
	jne	.label_326
	test	r12, r12
	mov	rdx, rbx
	je	.label_291
	mov	rax, r8
	mov	rcx, r12
	jmp	.label_294
.label_307:
	mov	rdx, rcx
	sar	rdx, 0x3f
	mov	rsi, rdx
	and	rsi, rcx
	add	rax, rsi
	xor	rcx, rdx
	sub	rcx, rdx
	nop	word ptr cs:[rax + rax]
.label_294:
	mov	rdx, rcx
	shr	rcx, 1
	test	dl, 1
	je	.label_294
	sub	rcx, rax
	jne	.label_307
	or	rdx, 1
.label_291:
	cmp	rdx, 1
	mov	rax, rbp
	je	.label_312
	jmp	.label_300
	nop	word ptr cs:[rax + rax]
.label_326:
	mov	rax, r15
.label_312:
	dec	r13
	mov	r15, rax
	jne	.label_319
.label_329:
	lea	r10, [r14 + r14]
	test	r14, r14
	mov	r13d, 0
	mov	r15, rbp
	mov	qword ptr [rsp + 8], rbp
	je	.label_321
	mov	rsi, r14
	mov	r15, rbp
.label_298:
	mov	qword ptr [rsp + 0x40], r15
	mov	rax, r15
	mul	qword ptr [rsp + 0x40]
	mov	rcx, rdx
	imul	rax, rdi
	mov	qword ptr [rsp + 0x38], rbx
	mul	qword ptr [rsp + 0x38]
	sub	rcx, rdx
	mov	eax, 0
	cmovb	rax, rbx
	add	rax, rcx
	sub	rax, r11
	mov	r15d, 0
	cmovb	r15, rbx
	add	r15, rax
	dec	rsi
	jne	.label_298
	jmp	.label_341
	nop	word ptr [rax + rax]
.label_300:
	mov	qword ptr [rsp + 0x30], r14
	test	r9, r9
	jne	.label_301
	nop	
.label_325:
	mov	qword ptr [rsp + 0x50], r15
	mov	rax, r15
	mul	qword ptr [rsp + 0x50]
	mov	rcx, rdx
	imul	rax, rdi
	mov	qword ptr [rsp + 0x48], rbx
	mul	qword ptr [rsp + 0x48]
	sub	rcx, rdx
	mov	eax, 0
	cmovb	rax, rbx
	add	rax, rcx
	sub	rax, r11
	mov	r15d, 0
	cmovb	r15, rbx
	add	r15, rax
	mov	rax, r10
	sub	rax, r15
	mov	r14d, 0
	cmovb	r14, rbx
	add	r14, rax
	test	rbx, rbx
	je	.label_282
	shr	r14, 1
	mov	rax, rbx
	jmp	.label_313
.label_306:
	mov	rcx, rax
	sar	rcx, 0x3f
	mov	rdx, rcx
	and	rdx, rax
	add	r14, rdx
	xor	rax, rcx
	sub	rax, rcx
	nop	word ptr cs:[rax + rax]
.label_313:
	mov	rcx, rax
	shr	rax, 1
	test	cl, 1
	je	.label_313
	sub	rax, r14
	jne	.label_306
	or	rcx, 1
	mov	r14, rcx
.label_282:
	cmp	r14, 1
	je	.label_325
	jmp	.label_328
	nop	word ptr cs:[rax + rax]
.label_301:
	mov	qword ptr [rsp + 0x60], r15
	mov	rax, r15
	mul	qword ptr [rsp + 0x60]
	mov	rcx, rdx
	imul	rax, rdi
	mov	qword ptr [rsp + 0x58], rbx
	mul	qword ptr [rsp + 0x58]
	sub	rcx, rdx
	mov	eax, 0
	cmovb	rax, rbx
	add	rax, rcx
	sub	rax, r11
	mov	r15d, 0
	cmovb	r15, rbx
	add	r15, rax
	mov	rcx, r10
	sub	rcx, r15
	mov	eax, 0
	cmovb	rax, rbx
	add	rax, rcx
	mov	r14, rbx
	je	.label_332
	mov	rcx, r8
	jmp	.label_285
.label_299:
	mov	rdx, rax
	sar	rdx, 0x3f
	mov	rsi, rdx
	and	rsi, rax
	add	rcx, rsi
	xor	rax, rdx
	sub	rax, rdx
	nop	
.label_285:
	mov	r14, rax
	shr	rax, 1
	test	r14b, 1
	je	.label_285
	sub	rax, rcx
	jne	.label_299
	or	r14, 1
.label_332:
	cmp	r14, 1
	je	.label_301
.label_328:
	cmp	rbx, r14
	je	.label_303
	xor	edx, edx
	mov	rax, rbx
	div	r14
	mov	rbx, rax
	mov	rdi, r14
	call	prime_p
	test	al, al
	je	.label_314
	mov	r11, qword ptr [rsp + 0x10]
	movzx	r8d, byte ptr [r11 + 0xfa]
	lea	edx, [r8 - 1]
	test	r8d, r8d
	mov	ecx, edx
	je	.label_315
	lea	rcx, [r8 + 1]
	mov	rax, r8
	shl	rax, 0x20
	movabs	rsi, 0xffffffff00000000
	add	rax, rsi
	nop	word ptr cs:[rax + rax]
.label_331:
	cmp	qword ptr [r11 + rcx*8], r14
	jbe	.label_327
	dec	rcx
	add	rax, rsi
	cmp	rcx, 1
	jg	.label_331
	add	ecx, -2
	jmp	.label_315
	nop	word ptr [rax + rax]
.label_314:
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, qword ptr [rsp + 0x10]
	call	factor_using_pollard_rho
	jmp	.label_338
.label_327:
	mov	rsi, rax
	sar	rsi, 0x1d
	cmp	qword ptr [r11 + rsi + 0x10], r14
	jne	.label_339
	sar	rax, 0x20
	inc	byte ptr [r11 + rax + 0xe0]
	jmp	.label_338
.label_339:
	add	rcx, -2
	nop	word ptr [rax + rax]
.label_315:
	cmp	edx, ecx
	jle	.label_283
	lea	r10d, [r8 - 1]
	sub	r10d, ecx
	mov	eax, r8d
	add	eax, -2
	sub	eax, ecx
	and	r10d, 3
	cmp	eax, 3
	jae	.label_286
	mov	rsi, r8
	jmp	.label_310
.label_286:
	mov	rax, qword ptr [rsp + 0x28]
	lea	rdi, [rax + r8]
	lea	rax, [rax + r8*8]
	mov	r9d, ecx
	not	r9d
	sub	r9d, r10d
	add	r9, r8
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_311:
	mov	rdx, qword ptr [rax + rsi*8 - 0xd8]
	mov	qword ptr [rax + rsi*8 - 0xd0], rdx
	movzx	edx, byte ptr [rdi + rsi - 1]
	mov	byte ptr [rdi + rsi], dl
	mov	rdx, qword ptr [rax + rsi*8 - 0xe0]
	mov	qword ptr [rax + rsi*8 - 0xd8], rdx
	movzx	edx, byte ptr [rdi + rsi - 2]
	mov	byte ptr [rdi + rsi - 1], dl
	mov	rdx, qword ptr [rax + rsi*8 - 0xe8]
	mov	qword ptr [rax + rsi*8 - 0xe0], rdx
	movzx	edx, byte ptr [rdi + rsi - 3]
	mov	byte ptr [rdi + rsi - 2], dl
	mov	rdx, qword ptr [rax + rsi*8 - 0xf0]
	mov	qword ptr [rax + rsi*8 - 0xe8], rdx
	movzx	edx, byte ptr [rdi + rsi - 4]
	mov	byte ptr [rdi + rsi - 3], dl
	add	rsi, -4
	mov	edx, esi
	add	edx, r9d
	jne	.label_311
	add	rsi, r8
.label_310:
	test	r10d, r10d
	je	.label_283
	neg	r10d
	nop	dword ptr [rax]
.label_337:
	mov	rax, qword ptr [r11 + rsi*8 + 8]
	mov	qword ptr [r11 + rsi*8 + 0x10], rax
	movzx	eax, byte ptr [r11 + rsi + 0xdf]
	mov	byte ptr [r11 + rsi + 0xe0], al
	dec	rsi
	inc	r10d
	jne	.label_337
.label_283:
	movsxd	rax, ecx
	mov	qword ptr [r11 + rax*8 + 0x18], r14
	mov	byte ptr [r11 + rax + 0xe1], 1
	inc	r8b
	mov	byte ptr [r11 + 0xfa], r8b
.label_338:
	mov	rdi, rbx
	call	prime_p
	test	al, al
	mov	rsi, qword ptr [rsp + 0x30]
	jne	.label_293
	xor	edx, edx
	mov	rax, rbp
	div	rbx
	mov	rbp, rdx
	xor	edx, edx
	mov	rax, qword ptr [rsp + 8]
	div	rbx
	mov	rcx, rdx
	xor	edx, edx
	mov	rax, r15
	div	rbx
	cmp	rbx, 1
	mov	r15, rdx
	jne	.label_296
	jmp	.label_308
	nop	word ptr cs:[rax + rax]
.label_303:
	cmp	rbx, 1
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 0x18], rax
	ja	.label_305
.label_318:
	mov	edi, OFFSET FLAT:label_320
	mov	esi, OFFSET FLAT:label_114
	mov	edx, 0x5c2
	mov	ecx, OFFSET FLAT:label_290
	call	__assert_fail
.label_293:
	mov	r10, qword ptr [rsp + 0x10]
	movzx	r8d, byte ptr [r10 + 0xfa]
	lea	edx, [r8 - 1]
	test	r8d, r8d
	mov	ecx, edx
	movabs	rsi, 0xffffffff00000000
	je	.label_322
	lea	rcx, [r8 + 1]
	mov	rax, r8
	shl	rax, 0x20
	add	rax, rsi
	nop	dword ptr [rax]
.label_330:
	cmp	qword ptr [r10 + rcx*8], rbx
	jbe	.label_288
	dec	rcx
	add	rax, rsi
	cmp	rcx, 1
	jg	.label_330
	add	ecx, -2
	jmp	.label_322
.label_288:
	mov	rsi, rax
	sar	rsi, 0x1d
	cmp	qword ptr [r10 + rsi + 0x10], rbx
	jne	.label_287
	sar	rax, 0x20
	inc	byte ptr [r10 + rax + 0xe0]
	jmp	.label_308
.label_287:
	add	rcx, -2
.label_322:
	cmp	edx, ecx
	jle	.label_333
	lea	edx, [r8 - 1]
	sub	edx, ecx
	mov	eax, r8d
	add	eax, -2
	sub	eax, ecx
	and	edx, 3
	cmp	eax, 3
	jae	.label_284
	mov	rsi, r8
	jmp	.label_323
.label_284:
	lea	rdi, [r10 + r8 + 0xe0]
	lea	rbp, [r10 + r8*8 + 0xe0]
	mov	r9d, ecx
	not	r9d
	sub	r9d, edx
	add	r9, r8
	xor	esi, esi
	nop	
.label_317:
	mov	rax, qword ptr [rbp + rsi*8 - 0xd8]
	mov	qword ptr [rbp + rsi*8 - 0xd0], rax
	movzx	eax, byte ptr [rdi + rsi - 1]
	mov	byte ptr [rdi + rsi], al
	mov	rax, qword ptr [rbp + rsi*8 - 0xe0]
	mov	qword ptr [rbp + rsi*8 - 0xd8], rax
	movzx	eax, byte ptr [rdi + rsi - 2]
	mov	byte ptr [rdi + rsi - 1], al
	mov	rax, qword ptr [rbp + rsi*8 - 0xe8]
	mov	qword ptr [rbp + rsi*8 - 0xe0], rax
	movzx	eax, byte ptr [rdi + rsi - 3]
	mov	byte ptr [rdi + rsi - 2], al
	mov	rax, qword ptr [rbp + rsi*8 - 0xf0]
	mov	qword ptr [rbp + rsi*8 - 0xe8], rax
	movzx	eax, byte ptr [rdi + rsi - 4]
	mov	byte ptr [rdi + rsi - 3], al
	add	rsi, -4
	mov	eax, r9d
	add	eax, esi
	jne	.label_317
	add	rsi, r8
.label_323:
	test	edx, edx
	je	.label_333
	neg	edx
	nop	word ptr [rax + rax]
.label_292:
	mov	rax, qword ptr [r10 + rsi*8 + 8]
	mov	qword ptr [r10 + rsi*8 + 0x10], rax
	movzx	eax, byte ptr [r10 + rsi + 0xdf]
	mov	byte ptr [r10 + rsi + 0xe0], al
	dec	rsi
	inc	edx
	jne	.label_292
.label_333:
	movsxd	rax, ecx
	mov	qword ptr [r10 + rax*8 + 0x18], rbx
	mov	byte ptr [r10 + rax + 0xe1], 1
	inc	r8b
	mov	byte ptr [r10 + 0xfa], r8b
.label_308:
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_336:
	mov	edi, OFFSET FLAT:label_289
	mov	esi, OFFSET FLAT:label_114
	mov	edx, 0x5c8
	mov	ecx, OFFSET FLAT:label_290
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405230

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
	mov	r12, rcx
	mov	qword ptr [rsp + 0x28], rdx
	mov	r14, rsi
	mov	r9, rdi
	xor	esi, esi
	cmp	r9, 1
	seta	sil
	mov	ecx, 0x3f
	mov	eax, 0x7f
	cmova	rax, rcx
	mov	r10, rsi
	xor	r10, 1
	not	rax
	nop	word ptr cs:[rax + rax]
.label_397:
	shld	rsi, r10, 1
	add	r10, r10
	cmp	rsi, r9
	ja	.label_384
	cmp	r10, r14
	jb	.label_387
	cmp	rsi, r9
	jne	.label_387
.label_384:
	mov	qword ptr [rsp + 0x190], r9
	mov	qword ptr [rsp + 0x188], r14
	sub	r10, qword ptr [rsp + 0x188]
	sbb	rsi, qword ptr [rsp + 0x190]
.label_387:
	inc	rax
	jne	.label_397
	mov	qword ptr [rsp + 0x180], rsi
	mov	qword ptr [rsp + 0x178], r10
	mov	rdx, r10
	mov	rcx, rsi
	add	rdx, qword ptr [rsp + 0x178]
	adc	rcx, qword ptr [rsp + 0x180]
	cmp	rcx, r9
	ja	.label_398
	jne	.label_405
	cmp	rdx, r14
	jb	.label_405
.label_398:
	mov	qword ptr [rsp + 0x170], r9
	mov	qword ptr [rsp + 0x168], r14
	sub	rdx, qword ptr [rsp + 0x168]
	sbb	rcx, qword ptr [rsp + 0x170]
.label_405:
	cmp	r14, 1
	jne	.label_346
	test	r9, r9
	je	.label_350
.label_346:
	mov	qword ptr [rsp + 0x68], rsi
	mov	rax, qword ptr [rsp + 0x28]
	inc	rax
	mov	qword ptr [rsp + 0x50], rax
	lea	rax, [r12 + 0xe0]
	mov	qword ptr [rsp + 0x70], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x48], rax
	mov	qword ptr [rsp + 0x10], rdx
	mov	r13, rdx
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	rbx, rcx
	mov	r15, rcx
	mov	qword ptr [rsp + 0x60], r12
	jmp	.label_349
	nop	word ptr cs:[rax + rax]
.label_392:
	mov	rcx, rbp
.label_349:
	mov	qword ptr [rsp + 0x40], r10
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
	mov	esi, 2
	sub	rsi, rax
	imul	rsi, rdi
	mov	qword ptr [rsp + 8], rsi
	mov	rsi, r15
	mov	r15, rcx
	mov	rax, qword ptr [rsp + 0x38]
	mov	rdi, rax
	lea	r12, [rsp + 0x20]
	jmp	.label_382
	nop	
.label_362:
	mov	rbx, r15
	mov	r15, rsi
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [rsp + 0x48], rax
	mov	rax, qword ptr [rsp + 0x30]
	mov	qword ptr [rsp + 0x10], rax
	mov	rdx, r13
	mov	rdi, qword ptr [rsp + 0x18]
.label_382:
	mov	qword ptr [rsp + 0x18], rbx
	mov	rax, rdi
	mov	qword ptr [rsp + 0x38], rax
	mov	rbp, r15
	mov	r15, rsi
	mov	rbx, qword ptr [rsp]
	nop	dword ptr [rax]
.label_391:
	mov	rdi, r12
	mov	rsi, r15
	mov	rcx, r15
	mov	r8, rdx
	push	qword ptr [rsp + 8]
	push	rbx
	mov	r14, r9
	call	mulredc2
	mov	r9, r14
	add	rsp, 0x10
	mov	rcx, rax
	mov	r15, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x160], rax
	add	rcx, qword ptr [rsp + 0x160]
	adc	r15, 0
	cmp	r15, r9
	mov	rsi, qword ptr [rsp + 0x68]
	mov	rax, qword ptr [rsp + 0x18]
	ja	.label_363
	jne	.label_381
	cmp	rcx, rbx
	jb	.label_381
.label_363:
	mov	qword ptr [rsp + 0x158], r9
	mov	qword ptr [rsp + 0x150], rbx
	sub	rcx, qword ptr [rsp + 0x150]
	sbb	r15, qword ptr [rsp + 0x158]
.label_381:
	mov	qword ptr [rsp + 0x148], r15
	mov	qword ptr [rsp + 0x30], rcx
	mov	qword ptr [rsp + 0x140], rcx
	mov	r8, qword ptr [rsp + 0x10]
	mov	rcx, rax
	sub	r8, qword ptr [rsp + 0x140]
	sbb	rcx, qword ptr [rsp + 0x148]
	test	rcx, rcx
	jns	.label_386
	mov	qword ptr [rsp + 0x138], r9
	mov	qword ptr [rsp + 0x130], rbx
	add	r8, qword ptr [rsp + 0x130]
	adc	rcx, qword ptr [rsp + 0x138]
.label_386:
	mov	rdi, r12
	mov	rdx, qword ptr [rsp + 0x40]
	push	qword ptr [rsp + 8]
	push	rbx
	mov	r12, r9
	call	mulredc2
	add	rsp, 0x10
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rdx, qword ptr [rsp + 0x48]
	and	edx, 0x1f
	cmp	rdx, 1
	mov	qword ptr [rsp + 0x68], rcx
	mov	qword ptr [rsp + 0x40], rax
	jne	.label_408
	lea	rdi, [rsp + 0x58]
	mov	rsi, rcx
	mov	rdx, rax
	mov	rcx, r12
	mov	r8, rbx
	call	gcd2_odd
	cmp	rax, 1
	mov	r9, r12
	mov	rdx, qword ptr [rsp + 0x30]
	jne	.label_361
	mov	rax, qword ptr [rsp + 0x58]
	test	rax, rax
	mov	rcx, r15
	mov	rax, rdx
	je	.label_367
	jmp	.label_361
	nop	dword ptr [rax]
.label_408:
	mov	rcx, rbp
	mov	rax, r13
	mov	r9, r12
	mov	rdx, qword ptr [rsp + 0x30]
.label_367:
	dec	qword ptr [rsp + 0x48]
	mov	rbp, rcx
	mov	r13, rax
	lea	r12, [rsp + 0x20]
	jne	.label_391
	mov	rax, qword ptr [rsp + 0x38]
	lea	rdi, [rax + rax]
	test	rax, rax
	mov	rsi, r15
	mov	rbx, r15
	mov	ecx, 0
	mov	qword ptr [rsp + 0x48], rcx
	mov	r13, rdx
	mov	qword ptr [rsp + 0x10], rdx
	je	.label_382
	mov	qword ptr [rsp + 0x18], rdi
	mov	rbp, rax
	mov	r13, rdx
	mov	rsi, r15
	nop	dword ptr [rax]
.label_360:
	mov	rdi, r12
	mov	rdx, r13
	mov	rcx, rsi
	mov	r8, r13
	push	qword ptr [rsp + 8]
	mov	rbx, qword ptr [rsp + 8]
	push	rbx
	call	mulredc2
	mov	r9, r14
	add	rsp, 0x10
	mov	r13, rax
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x128], rax
	add	r13, qword ptr [rsp + 0x128]
	adc	rsi, 0
	cmp	rsi, r9
	ja	.label_356
	jne	.label_344
	mov	rbx, qword ptr [rsp]
	cmp	r13, rbx
	jb	.label_344
.label_356:
	mov	qword ptr [rsp + 0x120], r9
	mov	qword ptr [rsp + 0x118], rbx
	sub	r13, qword ptr [rsp + 0x118]
	sbb	rsi, qword ptr [rsp + 0x120]
.label_344:
	dec	rbp
	jne	.label_360
	jmp	.label_362
	nop	dword ptr [rax]
.label_361:
	lea	r12, [rsp + 0x20]
	nop	word ptr cs:[rax + rax]
.label_359:
	mov	rdi, r12
	mov	rsi, rbp
	mov	rdx, r13
	mov	rcx, rbp
	mov	r8, r13
	push	qword ptr [rsp + 8]
	mov	rbx, qword ptr [rsp + 8]
	push	rbx
	call	mulredc2
	mov	rcx, r14
	add	rsp, 0x10
	mov	r13, rax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x110], rax
	add	r13, qword ptr [rsp + 0x110]
	adc	rbp, 0
	cmp	rbp, rcx
	mov	rax, qword ptr [rsp + 0x18]
	ja	.label_380
	jne	.label_393
	cmp	r13, rbx
	jb	.label_393
.label_380:
	mov	qword ptr [rsp + 0x108], rcx
	mov	qword ptr [rsp + 0x100], rbx
	sub	r13, qword ptr [rsp + 0x100]
	sbb	rbp, qword ptr [rsp + 0x108]
.label_393:
	mov	qword ptr [rsp + 0xf8], rbp
	mov	qword ptr [rsp + 0xf0], r13
	mov	rsi, rax
	mov	rdx, qword ptr [rsp + 0x10]
	sub	rdx, qword ptr [rsp + 0xf0]
	sbb	rsi, qword ptr [rsp + 0xf8]
	test	rsi, rsi
	jns	.label_402
	mov	qword ptr [rsp + 0xe8], rcx
	mov	qword ptr [rsp + 0xe0], rbx
	add	rdx, qword ptr [rsp + 0xe0]
	adc	rsi, qword ptr [rsp + 0xe8]
.label_402:
	lea	rdi, [rsp + 0x58]
	mov	r8, rbx
	call	gcd2_odd
	mov	r9, r14
	mov	rcx, rax
	mov	rbx, qword ptr [rsp + 0x58]
	cmp	rcx, 1
	jne	.label_354
	test	rbx, rbx
	je	.label_359
.label_354:
	test	rbx, rbx
	jne	.label_364
	mov	eax, ecx
	shr	eax, 1
	and	eax, 0x7f
	movzx	eax, byte ptr [rax + binvert_table]
	mov	rsi, rax
	imul	rsi, rcx
	mov	edx, 2
	sub	rdx, rsi
	imul	rdx, rax
	mov	rax, rdx
	imul	rax, rcx
	mov	esi, 2
	sub	rsi, rax
	imul	rsi, rdx
	mov	rax, rsi
	imul	rax, rcx
	mov	edi, 2
	sub	rdi, rax
	imul	rdi, rsi
	mov	r14, qword ptr [rsp]
	imul	r14, rdi
	cmp	r9, rcx
	mov	eax, 0
	mov	r12, qword ptr [rsp + 0x60]
	jb	.label_366
	mov	qword ptr [rsp + 0xd8], rcx
	mov	rax, r14
	mul	qword ptr [rsp + 0xd8]
	sub	r9, rdx
	imul	r9, rdi
	mov	rax, r9
.label_366:
	mov	qword ptr [rsp + 8], rax
	mov	rdi, rcx
	mov	rbx, rcx
	call	prime_p
	test	al, al
	je	.label_403
	movzx	r8d, byte ptr [r12 + 0xfa]
	lea	edx, [r8 - 1]
	test	r8d, r8d
	mov	ecx, edx
	mov	rdi, qword ptr [rsp + 8]
	je	.label_355
	lea	rcx, [r8 + 1]
	mov	rax, r8
	shl	rax, 0x20
	movabs	rsi, 0xffffffff00000000
	add	rax, rsi
	nop	dword ptr [rax + rax]
.label_352:
	cmp	qword ptr [r12 + rcx*8], rbx
	jbe	.label_348
	dec	rcx
	add	rax, rsi
	cmp	rcx, 1
	jg	.label_352
	add	ecx, -2
	jmp	.label_355
	nop	word ptr [rax + rax]
.label_403:
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0x50]
	mov	rdx, r12
	call	factor_using_pollard_rho
	mov	rdi, qword ptr [rsp + 8]
	jmp	.label_373
.label_348:
	mov	rsi, rax
	sar	rsi, 0x1d
	cmp	qword ptr [r12 + rsi + 0x10], rbx
	jne	.label_369
	sar	rax, 0x20
	inc	byte ptr [r12 + rax + 0xe0]
	jmp	.label_373
.label_369:
	add	rcx, -2
	nop	dword ptr [rax]
.label_355:
	cmp	edx, ecx
	jle	.label_372
	lea	r11d, [r8 - 1]
	sub	r11d, ecx
	mov	eax, r8d
	add	eax, -2
	sub	eax, ecx
	and	r11d, 3
	cmp	eax, 3
	jae	.label_383
	mov	rsi, r8
	jmp	.label_376
.label_383:
	mov	qword ptr [rsp], rbx
	mov	r10, r14
	mov	rax, qword ptr [rsp + 0x70]
	lea	rdx, [rax + r8]
	lea	rbx, [rax + r8*8]
	mov	r9d, ecx
	not	r9d
	sub	r9d, r11d
	add	r9, r8
	xor	esi, esi
	nop	word ptr [rax + rax]
.label_371:
	mov	rax, qword ptr [rbx + rsi*8 - 0xd8]
	mov	qword ptr [rbx + rsi*8 - 0xd0], rax
	movzx	eax, byte ptr [rdx + rsi - 1]
	mov	byte ptr [rdx + rsi], al
	mov	rax, qword ptr [rbx + rsi*8 - 0xe0]
	mov	qword ptr [rbx + rsi*8 - 0xd8], rax
	movzx	eax, byte ptr [rdx + rsi - 2]
	mov	byte ptr [rdx + rsi - 1], al
	mov	rax, qword ptr [rbx + rsi*8 - 0xe8]
	mov	qword ptr [rbx + rsi*8 - 0xe0], rax
	movzx	eax, byte ptr [rdx + rsi - 3]
	mov	byte ptr [rdx + rsi - 2], al
	mov	rax, qword ptr [rbx + rsi*8 - 0xf0]
	mov	qword ptr [rbx + rsi*8 - 0xe8], rax
	movzx	eax, byte ptr [rdx + rsi - 4]
	mov	byte ptr [rdx + rsi - 3], al
	add	rsi, -4
	mov	eax, esi
	add	eax, r9d
	jne	.label_371
	add	rsi, r8
	mov	r14, r10
	mov	rbx, qword ptr [rsp]
.label_376:
	test	r11d, r11d
	je	.label_372
	neg	r11d
.label_399:
	mov	rax, qword ptr [r12 + rsi*8 + 8]
	mov	qword ptr [r12 + rsi*8 + 0x10], rax
	movzx	eax, byte ptr [r12 + rsi + 0xdf]
	mov	byte ptr [r12 + rsi + 0xe0], al
	dec	rsi
	inc	r11d
	jne	.label_399
.label_372:
	movsxd	rax, ecx
	mov	qword ptr [r12 + rax*8 + 0x18], rbx
	mov	byte ptr [r12 + rax + 0xe1], 1
	inc	r8b
	mov	byte ptr [r12 + 0xfa], r8b
.label_373:
	test	rdi, rdi
	je	.label_378
	mov	rsi, r14
	call	prime2_p
	test	al, al
	jne	.label_395
	test	r15, r15
	je	.label_389
	mov	r9, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0xd0], r9
	bsr	rax, qword ptr [rsp + 0xd0]
	xor	eax, 0x3f
	mov	qword ptr [rsp + 0xc8], r15
	bsr	rcx, qword ptr [rsp + 0xc8]
	xor	ecx, 0x3f
	sub	eax, ecx
	mov	r10, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x18]
	jle	.label_368
	mov	rdi, r14
	mov	ecx, eax
	shl	rdi, cl
	mov	ecx, 0x40
	sub	ecx, eax
	mov	r8, r14
	shr	r8, cl
	mov	rsi, r9
	mov	ecx, eax
	shl	rsi, cl
	or	rsi, r8
	nop	word ptr cs:[rax + rax]
.label_404:
	cmp	r15, rsi
	ja	.label_396
	jne	.label_351
	cmp	rdx, rdi
	jb	.label_351
.label_396:
	mov	qword ptr [rsp + 0xc0], rsi
	mov	qword ptr [rsp + 0xb8], rdi
	sub	rdx, qword ptr [rsp + 0xb8]
	sbb	r15, qword ptr [rsp + 0xc0]
.label_351:
	shrd	rdi, rsi, 1
	shr	rsi, 1
	dec	eax
	jne	.label_404
	jmp	.label_368
	nop	word ptr [rax + rax]
.label_389:
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 8]
	mov	r10, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x18]
.label_368:
	test	rbx, rbx
	je	.label_377
	mov	qword ptr [rsp + 0xb0], r9
	bsr	rax, qword ptr [rsp + 0xb0]
	xor	eax, 0x3f
	mov	qword ptr [rsp + 0xa8], rbx
	bsr	rcx, qword ptr [rsp + 0xa8]
	xor	ecx, 0x3f
	sub	eax, ecx
	jle	.label_343
	mov	rdi, r14
	mov	ecx, eax
	shl	rdi, cl
	mov	ecx, 0x40
	sub	ecx, eax
	mov	r8, r14
	shr	r8, cl
	mov	rsi, r9
	mov	ecx, eax
	shl	rsi, cl
	or	rsi, r8
	nop	dword ptr [rax]
.label_407:
	cmp	rbx, rsi
	ja	.label_375
	jne	.label_400
	cmp	qword ptr [rsp + 0x10], rdi
	jb	.label_400
.label_375:
	mov	qword ptr [rsp + 0xa0], rsi
	mov	qword ptr [rsp + 0x98], rdi
	mov	rcx, qword ptr [rsp + 0x10]
	sub	rcx, qword ptr [rsp + 0x98]
	sbb	rbx, qword ptr [rsp + 0xa0]
	mov	qword ptr [rsp + 0x10], rcx
.label_400:
	shrd	rdi, rsi, 1
	shr	rsi, 1
	dec	eax
	jne	.label_407
	jmp	.label_343
	nop	word ptr cs:[rax + rax]
.label_377:
	xor	ebx, ebx
.label_343:
	test	rbp, rbp
	mov	ecx, 0
	je	.label_349
	mov	qword ptr [rsp + 0x90], r9
	bsr	rax, qword ptr [rsp + 0x90]
	xor	eax, 0x3f
	mov	qword ptr [rsp + 0x88], rbp
	bsr	rcx, qword ptr [rsp + 0x88]
	xor	ecx, 0x3f
	sub	eax, ecx
	mov	rcx, rbp
	jle	.label_349
	mov	rdi, r14
	mov	ecx, eax
	shl	rdi, cl
	mov	ecx, 0x40
	sub	ecx, eax
	mov	r8, r14
	shr	r8, cl
	mov	rsi, r9
	mov	ecx, eax
	shl	rsi, cl
	or	rsi, r8
	nop	word ptr cs:[rax + rax]
.label_394:
	cmp	rbp, rsi
	ja	.label_342
	jne	.label_385
	cmp	r13, rdi
	jb	.label_385
.label_342:
	mov	qword ptr [rsp + 0x80], rsi
	mov	qword ptr [rsp + 0x78], rdi
	sub	r13, qword ptr [rsp + 0x78]
	sbb	rbp, qword ptr [rsp + 0x80]
.label_385:
	shrd	rdi, rsi, 1
	shr	rsi, 1
	dec	eax
	jne	.label_394
	jmp	.label_392
.label_364:
	cmp	qword ptr [rsp], rcx
	mov	r12, qword ptr [rsp + 0x60]
	jne	.label_370
	cmp	r9, rbx
	jne	.label_370
	mov	rdi, r9
	mov	rsi, qword ptr [rsp]
	mov	rdx, qword ptr [rsp + 0x50]
	mov	rcx, r12
	call	factor_using_pollard_rho2
	jmp	.label_350
.label_395:
	cmp	qword ptr [r12 + 8], 0
	jne	.label_365
	mov	qword ptr [r12], r14
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [r12 + 8], rax
	jmp	.label_350
.label_370:
	mov	eax, ecx
	shr	eax, 1
	and	eax, 0x7f
	movzx	eax, byte ptr [rax + binvert_table]
	mov	rsi, rax
	imul	rsi, rcx
	mov	r14d, 2
	mov	edx, 2
	sub	rdx, rsi
	imul	rdx, rax
	mov	rax, rdx
	imul	rax, rcx
	mov	esi, 2
	sub	rsi, rax
	imul	rsi, rdx
	mov	rax, rcx
	imul	rax, rsi
	sub	r14, rax
	imul	r14, rsi
	imul	r14, qword ptr [rsp]
	mov	rdi, rbx
	mov	rsi, rcx
	mov	rbp, rcx
	call	prime2_p
	test	al, al
	je	.label_374
	cmp	qword ptr [r12 + 8], 0
	jne	.label_365
	mov	qword ptr [r12], rbp
	mov	qword ptr [r12 + 8], rbx
	jmp	.label_378
.label_374:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, qword ptr [rsp + 0x50]
	mov	rcx, r12
	call	factor_using_pollard_rho2
.label_378:
	mov	rdi, r14
	call	prime_p
	test	al, al
	je	.label_388
	movzx	r8d, byte ptr [r12 + 0xfa]
	lea	edx, [r8 - 1]
	test	r8d, r8d
	mov	ecx, edx
	je	.label_390
	lea	rcx, [r8 + 1]
	mov	rax, r8
	shl	rax, 0x20
	movabs	rsi, 0xffffffff00000000
	add	rax, rsi
.label_401:
	cmp	qword ptr [r12 + rcx*8], r14
	jbe	.label_379
	dec	rcx
	add	rax, rsi
	cmp	rcx, 1
	jg	.label_401
	add	ecx, -2
	jmp	.label_390
.label_388:
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rdx, r12
	call	factor_using_pollard_rho
	jmp	.label_350
.label_379:
	mov	rsi, rax
	sar	rsi, 0x1d
	cmp	qword ptr [r12 + rsi + 0x10], r14
	jne	.label_406
	sar	rax, 0x20
	inc	byte ptr [r12 + rax + 0xe0]
	jmp	.label_350
.label_406:
	add	rcx, -2
.label_390:
	cmp	edx, ecx
	jle	.label_347
	lea	edx, [r8 - 1]
	sub	edx, ecx
	mov	eax, r8d
	add	eax, -2
	sub	eax, ecx
	and	edx, 3
	cmp	eax, 3
	jae	.label_353
	mov	rsi, r8
	jmp	.label_358
.label_353:
	lea	rdi, [r12 + r8 + 0xe0]
	lea	rbx, [r12 + r8*8 + 0xe0]
	mov	r9d, ecx
	not	r9d
	sub	r9d, edx
	add	r9, r8
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_345:
	mov	rbp, qword ptr [rbx + rsi*8 - 0xd8]
	mov	qword ptr [rbx + rsi*8 - 0xd0], rbp
	movzx	eax, byte ptr [rdi + rsi - 1]
	mov	byte ptr [rdi + rsi], al
	mov	rax, qword ptr [rbx + rsi*8 - 0xe0]
	mov	qword ptr [rbx + rsi*8 - 0xd8], rax
	movzx	eax, byte ptr [rdi + rsi - 2]
	mov	byte ptr [rdi + rsi - 1], al
	mov	rax, qword ptr [rbx + rsi*8 - 0xe8]
	mov	qword ptr [rbx + rsi*8 - 0xe0], rax
	movzx	eax, byte ptr [rdi + rsi - 3]
	mov	byte ptr [rdi + rsi - 2], al
	mov	rax, qword ptr [rbx + rsi*8 - 0xf0]
	mov	qword ptr [rbx + rsi*8 - 0xe8], rax
	movzx	eax, byte ptr [rdi + rsi - 4]
	mov	byte ptr [rdi + rsi - 3], al
	add	rsi, -4
	mov	eax, r9d
	add	eax, esi
	jne	.label_345
	add	rsi, r8
.label_358:
	test	edx, edx
	je	.label_347
	neg	edx
	nop	word ptr [rax + rax]
.label_357:
	mov	rax, qword ptr [r12 + rsi*8 + 8]
	mov	qword ptr [r12 + rsi*8 + 0x10], rax
	movzx	eax, byte ptr [r12 + rsi + 0xdf]
	mov	byte ptr [r12 + rsi + 0xe0], al
	dec	rsi
	inc	edx
	jne	.label_357
.label_347:
	movsxd	rax, ecx
	mov	qword ptr [r12 + rax*8 + 0x18], r14
	mov	byte ptr [r12 + rax + 0xe1], 1
	inc	r8b
	mov	byte ptr [r12 + 0xfa], r8b
.label_350:
	add	rsp, 0x198
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_365:
	mov	edi, OFFSET FLAT:label_113
	mov	esi, OFFSET FLAT:label_114
	mov	edx, 0x235
	mov	ecx, OFFSET FLAT:label_115
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405e50

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
	jae	.label_435
	xor	eax, eax
	jmp	.label_409
.label_435:
	cmp	rbx, 0x17ded79
	jb	.label_420
	lea	r13, [rbx - 1]
	xor	r9d, r9d
	test	r13b, 1
	mov	qword ptr [rsp + 0x10], r13
	jne	.label_446
	xor	r9d, r9d
	mov	rax, qword ptr [rsp + 0x10]
	nop	dword ptr [rax + rax]
.label_430:
	mov	r13, rax
	shr	r13, 1
	inc	r9d
	bt	rax, 1
	mov	rax, r13
	jae	.label_430
.label_446:
	mov	eax, ebx
	shr	eax, 1
	and	eax, 0x7f
	movzx	eax, byte ptr [rax + binvert_table]
	mov	r14d, 2
	cmp	rbx, 2
	jb	.label_427
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
.label_437:
	shrd	rdx, rsi, 1
	shr	rsi, 1
	cmp	rcx, rsi
	ja	.label_419
	jne	.label_424
	cmp	r15, rdx
	jb	.label_424
.label_419:
	mov	qword ptr [rsp + 0xc0], rsi
	mov	qword ptr [rsp + 0xb8], rdx
	sub	r15, qword ptr [rsp + 0xb8]
	sbb	rcx, qword ptr [rsp + 0xc0]
.label_424:
	inc	eax
	jne	.label_437
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
	jmp	.label_439
	nop	
.label_413:
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
.label_439:
	mov	rcx, rbp
	nop	dword ptr [rax]
.label_432:
	test	rcx, rcx
	je	.label_429
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
	jae	.label_432
	jmp	.label_413
.label_429:
	cmp	r8, r15
	mov	rcx, qword ptr [rsp + 0x18]
	je	.label_410
	cmp	r8, rcx
	je	.label_410
	cmp	r9d, 2
	jb	.label_414
	mov	edi, 2
	nop	word ptr cs:[rax + rax]
.label_411:
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
	je	.label_410
	xor	eax, eax
	cmp	edi, r9d
	jae	.label_409
	inc	edi
	cmp	r8, r15
	jne	.label_411
	jmp	.label_409
.label_410:
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	lea	rdx, [rsp + 0xc8]
	xor	edi, edi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	dword ptr [rsp + 4], r9d
	call	factor
	movzx	r9d, byte ptr [rsp + 0x1c2]
	mov	r8d, 2
	jmp	.label_428
	nop	word ptr [rax + rax]
.label_447:
	xor	r11d, r11d
	nop	word ptr cs:[rax + rax]
.label_415:
	xor	edx, edx
	mov	rax, qword ptr [rsp + 0x10]
	div	qword ptr [rsp + r11*8 + 0xd8]
	mov	rdi, rax
	test	dil, 1
	mov	rcx, r12
	cmove	rcx, r15
	mov	rsi, r12
	jmp	.label_441
	nop	word ptr cs:[rax + rax]
.label_426:
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
.label_441:
	mov	rbp, rdi
.label_418:
	test	rbp, rbp
	je	.label_444
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
	jae	.label_418
	jmp	.label_426
	nop	word ptr [rax + rax]
.label_444:
	cmp	rcx, r15
	je	.label_442
	inc	r11
	cmp	r11, r9
	jb	.label_415
.label_442:
	cmp	rcx, r15
	jne	.label_420
	mov	rax, qword ptr [rsp + 8]
	movzx	r8d, byte ptr [rax + primes_diff]
	add	r8, r10
	mov	qword ptr [rsp + 0x60], r8
	mov	rax, r15
	mul	qword ptr [rsp + 0x60]
	mov	r12, rax
	test	rdx, rdx
	jne	.label_422
	xor	edx, edx
	mov	rax, r12
	div	rbx
	mov	r12, rdx
	mov	r11d, dword ptr [rsp + 4]
.label_436:
	mov	rbp, r13
	mov	rsi, r12
	mov	r10, r12
	jmp	.label_443
	nop	
.label_445:
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
.label_443:
	mov	rcx, rbp
	nop	word ptr cs:[rax + rax]
.label_433:
	test	rcx, rcx
	je	.label_425
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
	jae	.label_433
	jmp	.label_445
	nop	word ptr [rax + rax]
.label_425:
	cmp	r10, r15
	mov	rcx, qword ptr [rsp + 0x18]
	je	.label_417
	cmp	r10, rcx
	je	.label_417
	cmp	r11d, 2
	jb	.label_414
	mov	edi, 2
	nop	
.label_440:
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
	je	.label_417
	xor	eax, eax
	cmp	edi, r11d
	jae	.label_409
	inc	edi
	cmp	r10, r15
	jne	.label_440
	jmp	.label_409
	nop	word ptr [rax + rax]
.label_417:
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, rax
	inc	rcx
	mov	rax, rcx
	mov	qword ptr [rsp + 8], rax
	cmp	rcx, 0x29c
	jb	.label_428
	jmp	.label_412
.label_422:
	cmp	rdx, rbx
	mov	r11d, dword ptr [rsp + 4]
	jae	.label_438
	mov	eax, 0xffffffc0
	xor	ecx, ecx
	mov	rsi, rbx
.label_434:
	shrd	rcx, rsi, 1
	shr	rsi, 1
	cmp	rdx, rsi
	ja	.label_421
	jne	.label_416
	cmp	r12, rcx
	jb	.label_416
.label_421:
	mov	qword ptr [rsp + 0x58], rsi
	mov	qword ptr [rsp + 0x50], rcx
	sub	r12, qword ptr [rsp + 0x50]
	sbb	rdx, qword ptr [rsp + 0x58]
.label_416:
	inc	eax
	jne	.label_434
	jmp	.label_436
	nop	word ptr [rax + rax]
.label_428:
	mov	r10, r8
	test	r9b, r9b
	jne	.label_447
.label_420:
	mov	al, 1
.label_409:
	add	rsp, 0x1c8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_414:
	xor	eax, eax
	jmp	.label_409
.label_412:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_274
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	call	abort
.label_427:
	mov	edi, OFFSET FLAT:label_320
	mov	esi, OFFSET FLAT:label_114
	mov	edx, 0x4c4
	mov	ecx, OFFSET FLAT:label_423
	call	__assert_fail
.label_438:
	mov	edi, OFFSET FLAT:label_431
	mov	esi, OFFSET FLAT:label_114
	mov	edx, 0x4f4
	mov	ecx, OFFSET FLAT:label_423
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4063e0

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
	mov	qword ptr [rsp + 0x18], r9
	mov	qword ptr [rsp + 0x10], r8
	mov	rbx, rcx
	mov	r12, rdi
	mov	rax, qword ptr [rsp + 0x78]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rsp + 0x70]
	mov	qword ptr [rsp + 8], rax
	mov	rbp, qword ptr [rsi]
	mov	r13, qword ptr [rsi + 8]
	mov	qword ptr [rsp + 0x30], rdx
	mov	r14, qword ptr [rdx]
	mov	r15d, 0xffffffc0
	mov	qword ptr [rsp + 0x20], rbx
	mov	qword ptr [rsp + 0x28], r12
.label_452:
	test	r14b, 1
	jne	.label_451
	mov	r9, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rsp + 0x18]
	jmp	.label_453
	nop	word ptr cs:[rax + rax]
.label_451:
	mov	rdi, r12
	mov	rsi, qword ptr [rsp]
	mov	rdx, qword ptr [rsp + 8]
	mov	rcx, r13
	mov	r8, rbp
	mov	rbx, qword ptr [rsp + 0x10]
	mov	r9, rbx
	mov	r12, qword ptr [rsp + 0x18]
	push	r12
	push	qword ptr [rsp + 0x28]
	call	mulredc2
	mov	r9, rbx
	mov	rbx, qword ptr [rsp + 0x30]
	add	rsp, 0x10
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rsp], rax
	mov	rax, r12
	mov	r12, qword ptr [rsp + 0x28]
.label_453:
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, rbp
	mov	rcx, r13
	mov	r8, rbp
	push	rax
	push	rbx
	call	mulredc2
	add	rsp, 0x10
	mov	rbp, rax
	shr	r14, 1
	mov	r13, qword ptr [r12]
	inc	r15d
	jne	.label_452
	mov	rax, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rax + 8]
	test	rbx, rbx
	je	.label_448
	nop	
.label_454:
	test	bl, 1
	mov	r9, qword ptr [rsp + 0x10]
	jne	.label_450
	mov	r15, qword ptr [rsp + 0x18]
	mov	r14, qword ptr [rsp + 0x20]
	jmp	.label_449
	nop	word ptr cs:[rax + rax]
.label_450:
	mov	rdi, r12
	mov	rsi, qword ptr [rsp]
	mov	rdx, qword ptr [rsp + 8]
	mov	rcx, r13
	mov	r8, rbp
	mov	r9, qword ptr [rsp + 0x10]
	mov	r15, qword ptr [rsp + 0x18]
	push	r15
	mov	r14, qword ptr [rsp + 0x28]
	push	r14
	call	mulredc2
	mov	r9, qword ptr [rsp + 0x20]
	add	rsp, 0x10
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [r12]
	mov	qword ptr [rsp], rax
.label_449:
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, rbp
	mov	rcx, r13
	mov	r8, rbp
	push	r15
	push	r14
	call	mulredc2
	add	rsp, 0x10
	mov	rbp, rax
	mov	r13, qword ptr [r12]
	shr	rbx, 1
	jne	.label_454
.label_448:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [r12], rax
	mov	rax, qword ptr [rsp + 8]
	add	rsp, 0x38
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
	#Procedure 0x406590

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
	js	.label_455
	test	rcx, rcx
	js	.label_458
	test	r9, r9
	js	.label_463
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
	ja	.label_459
	jne	.label_460
	cmp	rsi, rbp
	jb	.label_460
.label_459:
	mov	qword ptr [rsp + 0x10], r9
	mov	qword ptr [rsp + 8], rbp
	sub	rsi, qword ptr [rsp + 8]
	sbb	rcx, qword ptr [rsp + 0x10]
.label_460:
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
.label_455:
	mov	edi, OFFSET FLAT:label_461
	mov	esi, OFFSET FLAT:label_114
	mov	edx, 0x3e7
	mov	ecx, OFFSET FLAT:label_457
	call	__assert_fail
.label_458:
	mov	edi, OFFSET FLAT:label_456
	mov	esi, OFFSET FLAT:label_114
	mov	edx, 0x3e8
	mov	ecx, OFFSET FLAT:label_457
	call	__assert_fail
.label_463:
	mov	edi, OFFSET FLAT:label_462
	mov	esi, OFFSET FLAT:label_114
	mov	edx, 0x3e9
	mov	ecx, OFFSET FLAT:label_457
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4067a0

	.globl gcd2_odd
	.type gcd2_odd, @function
gcd2_odd:
	sub	rsp, 0x28
	test	r8b, 1
	je	.label_472
	mov	rax, rdx
	or	rax, rsi
	je	.label_477
	test	dl, 1
	jne	.label_482
	nop	dword ptr [rax + rax]
.label_464:
	mov	rax, rsi
	shld	rax, rdx, 0x3f
	shr	rsi, 1
	bt	rdx, 1
	mov	rdx, rax
	jae	.label_464
	jmp	.label_470
.label_477:
	mov	qword ptr [rdi], rcx
	jmp	.label_467
.label_482:
	mov	rax, rdx
.label_470:
	mov	rdx, rsi
	or	rdx, rcx
	jne	.label_466
	jmp	.label_476
.label_483:
	mov	rcx, rsi
.label_478:
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], r8
	sub	rax, qword ptr [rsp + 8]
	sbb	rsi, qword ptr [rsp + 0x10]
	nop	word ptr cs:[rax + rax]
.label_469:
	mov	rdx, rax
	mov	rax, rsi
	shld	rax, rdx, 0x3f
	shr	rsi, 1
	bt	rdx, 1
	jae	.label_469
	jmp	.label_474
	nop	word ptr [rax + rax]
.label_466:
	cmp	rsi, rcx
	ja	.label_478
	jne	.label_481
	cmp	rax, r8
	ja	.label_483
.label_481:
	cmp	rsi, rcx
	sete	dl
	cmp	rax, r8
	sbb	r9b, r9b
	cmp	rcx, rsi
	ja	.label_484
	and	dl, r9b
	je	.label_468
.label_484:
	mov	qword ptr [rsp + 0x20], rsi
	mov	qword ptr [rsp + 0x18], rax
	sub	r8, qword ptr [rsp + 0x18]
	sbb	rcx, qword ptr [rsp + 0x20]
	nop	word ptr [rax + rax]
.label_475:
	mov	rdx, r8
	mov	r8, rcx
	shld	r8, rdx, 0x3f
	shr	rcx, 1
	bt	rdx, 1
	jae	.label_475
.label_474:
	mov	rdx, rcx
	or	rdx, rsi
	jne	.label_466
.label_476:
	mov	rcx, r8
	mov	qword ptr [rdi], 0
	mov	rdx, rax
	and	rdx, 1
	mov	r8, rax
	cmove	r8, rcx
	test	rdx, rdx
	cmove	rcx, rax
	test	rcx, rcx
	je	.label_467
	shr	r8, 1
	jmp	.label_473
.label_471:
	mov	rax, rcx
	sar	rax, 0x3f
	mov	rdx, rax
	and	rdx, rcx
	add	r8, rdx
	xor	rcx, rax
	sub	rcx, rax
	nop	dword ptr [rax]
.label_473:
	mov	rax, rcx
	shr	rcx, 1
	test	al, 1
	je	.label_473
	sub	rcx, r8
	jne	.label_471
	or	rax, 1
	jmp	.label_465
.label_468:
	mov	qword ptr [rdi], rsi
.label_465:
	mov	r8, rax
.label_467:
	mov	rax, r8
	add	rsp, 0x28
	ret	
.label_472:
	mov	edi, OFFSET FLAT:label_479
	mov	esi, OFFSET FLAT:label_114
	mov	edx, 0x1e3
	mov	ecx, OFFSET FLAT:label_480
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406910

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
	jle	.label_493
	mov	esi, 0x17ded79
	mov	rdi, r15
	call	__gmpz_cmp_ui
	mov	ecx, eax
	mov	al, 1
	test	ecx, ecx
	js	.label_485
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
	je	.label_486
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
.label_491:
	mov	r14b, 1
	cmp	qword ptr [rsp + 0x18], 0
	je	.label_488
	mov	qword ptr [rsp + 0x38], rbp
	xor	ebp, ebp
	mov	r14d, 1
	nop	dword ptr [rax]
.label_489:
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
	je	.label_492
	add	rbp, 0x10
	cmp	r14, rcx
	lea	r14, [r14 + 1]
	jb	.label_489
.label_492:
	mov	r14b, 1
	test	eax, eax
	jne	.label_494
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
	je	.label_490
	inc	rbp
	cmp	rbp, 0x29b
	jbe	.label_491
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_274
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	call	abort
.label_493:
	xor	eax, eax
	jmp	.label_485
.label_490:
	mov	rcx, qword ptr [rsp + 0x18]
	xor	r14d, r14d
.label_494:
	test	rcx, rcx
	je	.label_488
	mov	ebx, 1
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_487:
	shl	rdi, 4
	add	rdi, qword ptr [rsp + 8]
	call	__gmpz_clear
	mov	edi, ebx
	inc	ebx
	cmp	rdi, qword ptr [rsp + 0x18]
	jb	.label_487
.label_488:
	mov	rdi, qword ptr [rsp + 8]
	call	free
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
.label_486:
	lea	rdi, [rsp + 0x60]
	lea	rsi, [rsp + 0x50]
	lea	rdx, [rsp + 0x40]
	lea	rcx, [rsp + 0x20]
	xor	r8d, r8d
	xor	eax, eax
	call	__gmpz_clears
	test	r14b, r14b
	setne	al
.label_485:
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
	#Procedure 0x406b60

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
	js	.label_495
	mov	rbp, r12
	shl	rbp, 4
	add	rbp, r13
	mov	r14, r12
	nop	dword ptr [rax]
.label_498:
	mov	rdi, rbp
	mov	rsi, r15
	call	__gmpz_cmp
	test	eax, eax
	jle	.label_496
	add	rbp, -0x10
	test	r14, r14
	lea	r14, [r14 - 1]
	jg	.label_498
	jmp	.label_495
.label_496:
	je	.label_500
.label_495:
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
	jmp	.label_501
	nop	word ptr cs:[rax + rax]
.label_497:
	mov	rdi, rbx
	lea	rbx, [rbx - 0x10]
	mov	rsi, rbx
	call	__gmpz_set
	mov	rax, qword ptr [r13 + r12*8]
	mov	qword ptr [r13 + r12*8 + 8], rax
	dec	r12
.label_501:
	cmp	r12, r14
	jg	.label_497
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
.label_499:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_500:
	mov	rax, qword ptr [rsp]
	inc	qword ptr [rax + r14*8]
	jmp	.label_499
	nop	
	.section	.text
	.align	16
	#Procedure 0x406c80

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
	jne	.label_502
	mov	rdi, qword ptr [rip + stderr]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_508
	xor	eax, eax
	mov	rcx, r14
	call	__fprintf_chk
.label_502:
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
	je	.label_506
	lea	rax, [r14 + 1]
	mov	qword ptr [rsp + 0x68], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	lea	rbp, [rsp + 0x80]
	lea	r13, [rsp + 0x20]
	mov	r12d, 1
	jmp	.label_505
.label_509:
	lea	rbx, [r12 + r12]
	lea	rdi, [rsp + 0x40]
	mov	rsi, r13
	call	__gmpz_set
	mov	qword ptr [rsp + 0x38], rbx
	nop	word ptr cs:[rax + rax]
.label_505:
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
	jne	.label_511
	mov	rdi, rbp
	lea	rsi, [rsp + 0x50]
	mov	rdx, rbx
	call	__gmpz_gcd
	mov	esi, 1
	mov	rdi, rbp
	call	__gmpz_cmp_ui
	test	eax, eax
	jne	.label_503
	lea	rdi, [rsp + 0x40]
	lea	rsi, [rsp + 0x20]
	call	__gmpz_set
.label_511:
	dec	r12
	mov	r14, r13
	mov	r15, rbx
	lea	r13, [rsp + 0x20]
	jne	.label_505
	lea	rdi, [rsp + 0x10]
	mov	rsi, r13
	call	__gmpz_set
	mov	r12, qword ptr [rsp + 0x38]
	test	r12, r12
	mov	rbx, r12
	je	.label_509
	nop	word ptr [rax + rax]
.label_515:
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
	jne	.label_515
	jmp	.label_509
.label_503:
	mov	r14, r13
	mov	r15, rbx
	lea	rbx, [rsp + 0x40]
	lea	r13, [rsp + 0x10]
	nop	word ptr cs:[rax + rax]
.label_514:
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
	je	.label_514
	mov	rdi, r15
	mov	rsi, r15
	mov	rdx, rbp
	call	__gmpz_divexact
	mov	rdi, rbp
	call	mp_prime_p
	test	al, al
	lea	r13, [rsp + 0x20]
	je	.label_504
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, rbp
	call	mp_factor_insert
	jmp	.label_507
.label_504:
	cmp	byte ptr [rip + dev_debug],  1
	jne	.label_510
	mov	rdi, qword ptr [rip + stderr]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_513
	xor	eax, eax
	call	__fprintf_chk
.label_510:
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x68]
	mov	rdx, qword ptr [rsp + 8]
	call	mp_factor_using_pollard_rho
.label_507:
	mov	rdi, r15
	call	mp_prime_p
	test	al, al
	jne	.label_512
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
	jne	.label_505
	jmp	.label_506
.label_512:
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, r15
	call	mp_factor_insert
.label_506:
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
	#Procedure 0x407000

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
	je	.label_519
	mov	rdi, r13
	mov	rsi, r15
	call	__gmpz_cmp
	test	eax, eax
	je	.label_519
	cmp	r14, 2
	jb	.label_517
	mov	ebx, 2
	nop	word ptr cs:[rax + rax]
.label_518:
	mov	edx, 2
	mov	rdi, r13
	mov	rsi, r13
	mov	rcx, r12
	call	__gmpz_powm_ui
	mov	rdi, r13
	mov	rsi, r15
	call	__gmpz_cmp
	test	eax, eax
	je	.label_519
	mov	esi, 1
	mov	rdi, r13
	call	__gmpz_cmp_ui
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	je	.label_516
	cmp	rbx, r14
	lea	rbx, [rbx + 1]
	jb	.label_518
	jmp	.label_516
.label_519:
	mov	al, 1
	jmp	.label_516
.label_517:
	xor	eax, eax
.label_516:
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
	#Procedure 0x4070c0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4070d0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4070e0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_524
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_520
	cmp	dword ptr [rbp], 0x20
	jne	.label_520
.label_524:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_522
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_520:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_47
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_521
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_48
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_522:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_521:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_523
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
	#Procedure 0x4071a0

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
	je	.label_525
	nop	word ptr [rax + rax]
.label_527:
	mov	edi, ebp
	mov	rsi, rbx
	mov	rdx, r15
	call	safe_write
	cmp	rax, -1
	je	.label_525
	test	rax, rax
	je	.label_526
	add	r14, rax
	add	rbx, rax
	sub	r15, rax
	jne	.label_527
	jmp	.label_525
.label_526:
	call	__errno_location
	mov	dword ptr [rax], 0x1c
.label_525:
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
	#Procedure 0x407200

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	word ptr cs:[rax + rax]
.label_528:
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
	ja	.label_528
	mov	rax, rsi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407250

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_532
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_534
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_529
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_534
	mov	esi, OFFSET FLAT:label_531
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_530
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_530:
	mov	rbx, r14
.label_534:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_532:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_533
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407300
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
	je	.label_537
	mov	rdi, r14
	mov	rsi, rbx
	call	mbsstr_trimmed_wordbounded
	test	al, al
	je	.label_536
	mov	rbx, r14
	jmp	.label_537
.label_536:
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
	mov	ecx, OFFSET FLAT:label_535
	xor	eax, eax
	mov	rdi, r15
	mov	r8, r14
	mov	r9, rbx
	call	__sprintf_chk
	mov	rbx, r15
.label_537:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x407380

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
	je	.label_540
	lea	r12, [rsp + 8]
	lea	r15, [rsp + 0x48]
	nop	dword ptr [rax + rax]
.label_541:
	mov	rdi, rbp
	mov	rsi, r14
	call	mbsstr
	mov	rbx, rax
	test	rbx, rbx
	je	.label_540
	call	__ctype_get_mb_cur_max
	cmp	rax, 2
	jb	.label_554
	mov	qword ptr [rsp + 0x18], rbp
	mov	byte ptr [rsp + 8], 0
	mov	qword ptr [rsp + 0xc], 0
	mov	byte ptr [rsp + 0x14], 0
	mov	r13b, 1
	cmp	rbp, rbx
	jae	.label_548
	nop	word ptr cs:[rax + rax]
.label_546:
	mov	rdi, r12
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x28]
	mov	rdi, rax
	shr	rdi, 0x20
	test	al, al
	je	.label_543
	test	edi, edi
	je	.label_550
.label_543:
	mov	rcx, qword ptr [rsp + 0x18]
	add	rcx, qword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 0x18], rcx
	mov	byte ptr [rsp + 0x14], 0
	cmp	rcx, rbx
	jb	.label_546
	test	al, al
	je	.label_548
	call	iswalnum
	test	eax, eax
	sete	r13b
.label_548:
	mov	qword ptr [rsp + 0x18], rbx
	mov	byte ptr [rsp + 8], 0
	mov	qword ptr [rsp + 0xc], 0
	mov	byte ptr [rsp + 0x14], 0
	mov	qword ptr [rsp + 0x58], r14
	mov	byte ptr [rsp + 0x48], 0
	mov	qword ptr [rsp + 0x4c], 0
	jmp	.label_553
	nop	word ptr cs:[rax + rax]
.label_552:
	mov	rax, qword ptr [rsp + 0x20]
	add	qword ptr [rsp + 0x18], rax
	mov	byte ptr [rsp + 0x14], 0
	mov	rax, qword ptr [rsp + 0x60]
	add	qword ptr [rsp + 0x58], rax
.label_553:
	mov	byte ptr [rsp + 0x54], 0
	mov	rdi, r15
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x68]
	test	al, al
	je	.label_547
	shr	rax, 0x20
	je	.label_549
.label_547:
	mov	rdi, r12
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x28]
	test	al, al
	je	.label_552
	shr	rax, 0x20
	jne	.label_552
	jmp	.label_550
	nop	word ptr cs:[rax + rax]
.label_554:
	mov	r15, r14
	mov	r13b, 1
	cmp	rbp, rbx
	mov	r14b, 1
	jae	.label_555
	movzx	ebp, byte ptr [rbx - 1]
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + rbp*2], 8
	sete	r14b
.label_555:
	mov	rdi, r15
	call	strlen
	movzx	ebp, byte ptr [rbx + rax]
	test	rbp, rbp
	je	.label_544
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + rbp*2], 8
	sete	r13b
.label_544:
	mov	bpl, 1
	test	r14b, r13b
	mov	r14, r15
	jne	.label_545
	cmp	byte ptr [rbx], 0
	je	.label_540
	inc	rbx
	mov	rbp, rbx
	lea	r15, [rsp + 0x48]
	jmp	.label_551
	nop	dword ptr [rax + rax]
.label_549:
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
	je	.label_539
	and	dl, cl
	mov	al, 1
	jne	.label_539
	call	iswalnum
	test	eax, eax
	sete	al
.label_539:
	test	r13b, r13b
	je	.label_542
	test	al, al
	jne	.label_545
.label_542:
	mov	qword ptr [rsp + 0x18], rbx
	mov	byte ptr [rsp + 8], 0
	mov	qword ptr [rsp + 0xc], 0
	mov	byte ptr [rsp + 0x14], 0
	mov	rdi, r12
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x28]
	test	al, al
	je	.label_538
	shr	rax, 0x20
	je	.label_540
.label_538:
	add	rbx, qword ptr [rsp + 0x20]
	mov	rbp, rbx
.label_551:
	cmp	byte ptr [rbp], 0
	jne	.label_541
.label_540:
	xor	ebp, ebp
.label_545:
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
.label_550:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407610

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
	mov	esi, OFFSET FLAT:label_556
	mov	rdi, r14
	call	c_strcasecmp
	test	eax, eax
	je	.label_560
	mov	qword ptr [rsp + 0x10], rbx
	mov	esi, OFFSET FLAT:label_556
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
	mov	esi, OFFSET FLAT:label_556
	mov	rdi, r13
	mov	rdx, rbp
	call	xstr_iconv
	mov	r13, rax
	mov	rdi, rbp
	call	free
	test	r13, r13
	je	.label_562
	mov	esi, 0x3f
	mov	rdi, r13
	call	strchr
	test	rax, rax
	je	.label_566
	mov	rdi, r13
	call	free
	xor	r13d, r13d
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	jmp	.label_568
.label_560:
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	mov	r15, r13
	xor	ebp, ebp
	jmp	.label_569
.label_562:
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	xor	r13d, r13d
	jmp	.label_568
.label_566:
	mov	qword ptr [rsp + 8], r13
.label_568:
	mov	rbp, r15
	mov	rbx, qword ptr [rsp + 0x10]
.label_569:
	test	r13, r13
	mov	r14, r12
	cmovne	r14, r13
	test	r15, r15
	cmovne	r14, r15
	mov	rdi, rbx
	mov	rsi, r12
	call	strcmp
	test	eax, eax
	je	.label_558
	mov	rdi, rbx
	mov	rsi, r12
	call	mbsstr_trimmed_wordbounded
	test	al, al
	jne	.label_563
	test	r15, r15
	je	.label_564
	mov	rdi, rbx
	mov	rsi, r15
	call	mbsstr_trimmed_wordbounded
	test	al, al
	jne	.label_563
.label_564:
	test	r13, r13
	je	.label_567
	mov	rdi, rbx
	mov	rsi, r13
	call	mbsstr_trimmed_wordbounded
	test	al, al
	jne	.label_563
.label_567:
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
	mov	ecx, OFFSET FLAT:label_535
	xor	eax, eax
	mov	rdi, rbx
	mov	r8, r15
	mov	r9, r14
	call	__sprintf_chk
.label_563:
	test	rbp, rbp
	je	.label_559
	mov	rdi, rbp
	call	free
.label_559:
	mov	rdi, qword ptr [rsp + 8]
	test	rdi, rdi
	je	.label_561
	call	free
	jmp	.label_561
.label_558:
	test	rbp, rbp
	je	.label_565
	cmp	rbp, r14
	je	.label_565
	mov	rdi, rbp
	call	free
.label_565:
	mov	rdi, qword ptr [rsp + 8]
	test	rdi, rdi
	je	.label_557
	cmp	rdi, r14
	je	.label_557
	call	free
.label_557:
	mov	rbx, r14
.label_561:
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
	#Procedure 0x407810
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
	#Procedure 0x407850
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
	#Procedure 0x407860
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
	#Procedure 0x407870
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
	#Procedure 0x4078b0
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
	#Procedure 0x4078d0
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_570
	test	rdx, rdx
	je	.label_570
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_570:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407900
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
	#Procedure 0x407980

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
	jmp	.label_611
	nop	
.label_607:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_584
	or	al, dl
	jne	.label_584
	test	dil, 1
	jne	.label_601
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_584
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_611
	jmp	.label_584
.label_1072:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_614
	test	rbp, rbp
	je	.label_690
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_690:
	mov	r14d, 1
	jmp	.label_618
.label_1073:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_605
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_620
.label_614:
	xor	r14d, r14d
.label_618:
	mov	eax, OFFSET FLAT:label_605
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_606
	nop	
.label_611:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_639
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_644]
.label_1074:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_649
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_583
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_1075:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_663
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_663
	xor	r14d, r14d
	nop	
.label_677:
	cmp	r14, rbp
	jae	.label_673
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_673:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_677
.label_663:
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
	jmp	.label_620
.label_1067:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_620
.label_1070:
	mov	al, 1
.label_1068:
	mov	r12b, 1
.label_1071:
	test	r12b, 1
	mov	cl, 1
	je	.label_696
	mov	ecx, eax
.label_696:
	mov	al, cl
.label_1069:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_697
	test	rbp, rbp
	je	.label_575
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_575:
	mov	r14d, 1
	jmp	.label_578
.label_697:
	xor	r14d, r14d
.label_578:
	mov	ecx, OFFSET FLAT:label_583
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_606:
	mov	sil, r12b
.label_620:
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
	jmp	.label_590
	nop	word ptr cs:[rax + rax]
.label_592:
	inc	r12
.label_590:
	cmp	r11, -1
	je	.label_628
	cmp	r12, r11
	jne	.label_631
	jmp	.label_632
	nop	word ptr cs:[rax + rax]
.label_628:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_679
.label_631:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_640
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_643
	cmp	r11, -1
	jne	.label_643
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_643:
	cmp	rbx, r11
	jbe	.label_655
.label_640:
	xor	esi, esi
.label_680:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_656
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_660]
.label_1125:
	test	r12, r12
	jne	.label_604
	jmp	.label_666
	nop	word ptr cs:[rax + rax]
.label_655:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_675
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_680
	jmp	.label_576
.label_675:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_680
.label_1129:
	xor	eax, eax
	cmp	r11, -1
	je	.label_692
	test	r12, r12
	jne	.label_695
	cmp	r11, 1
	je	.label_666
	xor	r13d, r13d
	jmp	.label_599
.label_1118:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_572
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_576
	cmp	r8d, 2
	jne	.label_581
	mov	eax, r9d
	and	al, 1
	jne	.label_581
	cmp	r14, rbp
	jae	.label_597
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_597:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_585
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_585:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_593
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_593:
	add	r14, 3
	mov	r9b, 1
.label_581:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_600
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_600:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_603
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_603
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_603
	cmp	r14, rbp
	jae	.label_678
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_678:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_582
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_582:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_599
.label_1119:
	mov	bl, 0x62
	jmp	.label_629
.label_1120:
	mov	cl, 0x74
	jmp	.label_621
.label_1121:
	mov	bl, 0x76
	jmp	.label_629
.label_1122:
	mov	bl, 0x66
	jmp	.label_629
.label_1123:
	mov	cl, 0x72
	jmp	.label_621
.label_1126:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_637
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_589
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
	jae	.label_645
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_645:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_657
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_657:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_662
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_662:
	add	r14, 3
	xor	r9d, r9d
.label_637:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_599
.label_1127:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_669
	cmp	r8d, 2
	jne	.label_604
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_604
	jmp	.label_589
.label_1128:
	cmp	r8d, 2
	jne	.label_682
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_589
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_608
.label_656:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_689
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_693
.label_692:
	test	r12, r12
	jne	.label_579
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_579
.label_666:
	mov	dl, 1
.label_1124:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_589
	xor	eax, eax
	mov	r13b, dl
.label_599:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_591
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_594
	jmp	.label_598
	nop	word ptr cs:[rax + rax]
.label_591:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_598
.label_594:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_580
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_612
	nop	dword ptr [rax]
.label_598:
	test	sil, sil
.label_612:
	mov	ebx, r15d
	je	.label_626
	jmp	.label_616
.label_580:
	mov	ebx, r15d
	jmp	.label_616
.label_572:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_592
	xor	r15d, r15d
	jmp	.label_604
.label_682:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_621
	xor	eax, eax
	mov	r15b, 0x5c
.label_608:
	xor	r13d, r13d
	jmp	.label_626
.label_621:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_589
.label_629:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_599
	nop	
.label_616:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_576
	cmp	r8d, 2
	jne	.label_638
	mov	eax, r9d
	and	al, 1
	jne	.label_638
	cmp	r14, rbp
	jae	.label_642
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_642:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_624
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_624:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_636
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_636:
	add	r14, 3
	mov	r9b, 1
.label_638:
	cmp	r14, rbp
	jae	.label_671
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_671:
	inc	r14
	jmp	.label_625
.label_689:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_661
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_661:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_668
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_619:
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
	je	.label_683
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_694
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_659
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_573
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_676:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_686
	bt	rsi, rdx
	jb	.label_589
.label_686:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_676
.label_573:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_595
	xor	r13d, r13d
.label_595:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_619
	jmp	.label_613
.label_603:
	xor	r13d, r13d
	jmp	.label_599
.label_579:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_599
.label_669:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_604
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_604
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_604
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_627
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_646
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_634
	cmp	r14, rbp
	jae	.label_635
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_635:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_641
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_641:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_667
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_667:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_596
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_596:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_646:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_599
.label_604:
	xor	eax, eax
.label_695:
	xor	r13d, r13d
	jmp	.label_599
.label_668:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_691:
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
	je	.label_685
	cmp	rbp, -1
	je	.label_681
	cmp	rbp, -2
	je	.label_683
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_687
	xor	r13d, r13d
.label_687:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_691
	jmp	.label_613
.label_683:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_577
	lea	rax, [r10 + r12]
.label_652:
	cmp	byte ptr [rax + rsi], 0
	je	.label_577
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_652
.label_577:
	mov	qword ptr [rsp + 0x40], rsi
.label_694:
	xor	r13d, r13d
	jmp	.label_659
.label_681:
	xor	r13d, r13d
.label_685:
	mov	r10, qword ptr [rsp + 0x28]
.label_659:
	mov	r12, qword ptr [rsp + 0x40]
.label_613:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_693:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_588
	test	al, al
	je	.label_588
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_599
.label_588:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_609
	nop	word ptr [rax + rax]
.label_664:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_609:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_615
	test	sil, 1
	je	.label_622
	cmp	r14, rbp
	jae	.label_617
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_617:
	inc	r14
	xor	esi, esi
	jmp	.label_622
	nop	word ptr cs:[rax + rax]
.label_615:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_576
	cmp	r8d, 2
	jne	.label_623
	mov	eax, r9d
	and	al, 1
	jne	.label_623
	cmp	r14, rbp
	jae	.label_633
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_633:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_688
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_688:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_654
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_654:
	add	r14, 3
	mov	r9b, 1
.label_623:
	cmp	r14, rbp
	jae	.label_647
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_647:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_651
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_651:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_658
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_658:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_622:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_626
	test	r9b, 1
	je	.label_670
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_630
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_674
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_674:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_684
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_684:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_670
	nop	word ptr cs:[rax + rax]
.label_630:
	mov	rbx, rcx
.label_670:
	cmp	r14, rbp
	jae	.label_664
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_664
	nop	
.label_626:
	test	r9b, 1
	je	.label_571
	and	al, 1
	jne	.label_571
	cmp	r14, rbp
	jae	.label_574
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_574:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_648
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_648:
	add	r14, 2
	xor	r9d, r9d
.label_571:
	mov	ebx, r15d
.label_625:
	cmp	r14, rbp
	jae	.label_586
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_586:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_592
.label_627:
	xor	r13d, r13d
	jmp	.label_599
	nop	word ptr cs:[rax + rax]
.label_632:
	mov	rcx, r12
.label_679:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_607
	or	al, dl
	jne	.label_607
	mov	r11, rcx
	jmp	.label_576
.label_589:
	mov	eax, 2
.label_665:
	mov	qword ptr [rsp + 0x38], rax
.label_576:
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
.label_602:
	mov	r14, rax
.label_672:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_584:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_587
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_610
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_610
	inc	rdx
	nop	dword ptr [rax + rax]
.label_653:
	cmp	r14, rbp
	jae	.label_650
	mov	byte ptr [rcx + r14], al
.label_650:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_653
	jmp	.label_610
.label_601:
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
	jmp	.label_602
.label_587:
	mov	rcx, qword ptr [rsp + 0x10]
.label_610:
	cmp	r14, rbp
	jae	.label_672
	mov	byte ptr [rcx + r14], 0
	jmp	.label_672
.label_634:
	mov	eax, 5
	jmp	.label_665
.label_639:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4087b0
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
	#Procedure 0x408880
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
	je	.label_698
	mov	qword ptr [rax], rbx
.label_698:
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
	#Procedure 0x408970
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_699
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_702:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_702
.label_699:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_703
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_701], OFFSET FLAT:slot0
.label_703:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_700
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_700:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408a10
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x408a20

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
	js	.label_704
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_707
	cmp	r12d, 0x7fffffff
	je	.label_709
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
	jne	.label_705
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_705:
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
.label_707:
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
	jbe	.label_710
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_706
.label_710:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_708
	mov	rdi, r14
	call	free
.label_708:
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
.label_706:
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
.label_704:
	call	abort
.label_709:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408be0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408bf0
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
	#Procedure 0x408c10
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
	#Procedure 0x408c30
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
	je	.label_711
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
.label_711:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408ca0
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
	je	.label_712
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
.label_712:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408d10
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
	je	.label_713
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
.label_713:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408d80
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
	je	.label_714
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
.label_714:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408df0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_715]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_716]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_717]
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
	#Procedure 0x408e60
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_715]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_716]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_717]
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
	#Procedure 0x408ed0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_715]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_716]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_717]
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
	#Procedure 0x408f30
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_715]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_716]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_717]
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
	#Procedure 0x408f90
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
	je	.label_718
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
.label_718:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409030
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_715]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_716]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_717]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_719
	test	rdx, rdx
	je	.label_719
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_719:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x4090a0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_715]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_716]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_717]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_720
	test	rdx, rdx
	je	.label_720
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_720:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409110
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_715]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_716]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_717]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_721
	test	rsi, rsi
	je	.label_721
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_721:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x409180
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_715]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_716]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_717]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_722
	test	rsi, rsi
	je	.label_722
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
.label_722:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4091f0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409200
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
	#Procedure 0x409220
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409240

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
	#Procedure 0x409260

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
	jne	.label_728
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_724
	cmp	ecx, 0x55
	jne	.label_723
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_723
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_723
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_723
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_723
	cmp	byte ptr [rax + 5], 0
	jne	.label_723
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_730
	mov	eax, OFFSET FLAT:label_731
	jmp	.label_727
.label_724:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_723
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_723
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_723
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_723
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_723
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_723
	cmp	byte ptr [rax + 7], 0
	je	.label_729
.label_723:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_605
	mov	eax, OFFSET FLAT:label_583
.label_727:
	cmove	rax, rcx
.label_728:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_729:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_725
	mov	eax, OFFSET FLAT:label_726
	jmp	.label_727
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409330

	.globl init_tokenbuffer
	.type init_tokenbuffer, @function
init_tokenbuffer:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi], xmm0
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409340

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
	je	.label_732
	mov	eax, edx
	and	eax, 1
	xor	edi, edi
	cmp	rdx, 1
	je	.label_742
	sub	rdx, rax
	xor	edi, edi
	nop	word ptr [rax + rax]
.label_733:
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
	jne	.label_733
.label_742:
	test	rax, rax
	je	.label_732
	movzx	ecx, byte ptr [rsi + rdi]
	mov	eax, 1
	shl	rax, cl
	shr	rcx, 6
	or	qword ptr [rsp + rcx*8 + 0x10], rax
	nop	
.label_732:
	mov	rax, qword ptr [r15 + 8]
	cmp	rax, qword ptr [r15 + 0x10]
	jae	.label_739
	lea	rcx, [rax + 1]
	mov	qword ptr [r15 + 8], rcx
	movzx	ebx, byte ptr [rax]
.label_735:
	movsxd	rax, ebx
	shr	rax, 6
	mov	rax, qword ptr [rsp + rax*8 + 0x10]
	bt	rax, rbx
	jb	.label_732
	jmp	.label_745
.label_739:
	mov	rdi, r15
	call	__uflow
	mov	ebx, eax
	mov	rax, -1
	test	ebx, ebx
	jns	.label_735
	jmp	.label_737
.label_745:
	mov	rax, qword ptr [rsp + 8]
	mov	r13, qword ptr [rax]
	mov	r12, qword ptr [rax + 8]
	xor	ecx, ecx
	xor	ebp, ebp
	jmp	.label_738
	nop	word ptr cs:[rax + rax]
.label_741:
	lea	rcx, [rax + 1]
	mov	qword ptr [r15 + 8], rcx
	movzx	ebx, byte ptr [rax]
	xor	ecx, ecx
.label_738:
	mov	r14, rbp
	cmp	r14, r13
	jne	.label_746
	test	r12, r12
	je	.label_734
	movabs	rax, 0x5555555555555554
	cmp	r14, rax
	jae	.label_736
	mov	rbp, rcx
	mov	r13, r14
	shr	r13, 1
	inc	r13
	add	r13, r14
	jmp	.label_744
.label_734:
	mov	rbp, rcx
	test	r14, r14
	mov	r13, r14
	mov	eax, 0x80
	cmove	r13, rax
	test	r13, r13
	js	.label_743
.label_744:
	mov	rdi, r12
	mov	rsi, r13
	call	xrealloc
	mov	r12, rax
	mov	rcx, rbp
.label_746:
	test	cl, 1
	jne	.label_740
	movsxd	rax, ebx
	shr	rax, 6
	mov	rax, qword ptr [rsp + rax*8 + 0x10]
	bt	rax, rbx
	jb	.label_740
	lea	rbp, [r14 + 1]
	mov	byte ptr [r12 + r14], bl
	mov	rax, qword ptr [r15 + 8]
	cmp	rax, qword ptr [r15 + 0x10]
	jb	.label_741
	mov	rdi, r15
	call	__uflow
	mov	ebx, eax
	mov	ecx, ebx
	shr	ecx, 0x1f
	test	ebx, ebx
	jns	.label_738
	mov	rax, -1
	cmp	r14, -1
	jne	.label_738
	jmp	.label_737
.label_740:
	mov	byte ptr [r12 + r14], 0
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax + 8], r12
	mov	qword ptr [rax], r13
	mov	rax, r14
.label_737:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_736:
	call	xalloc_die
.label_743:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x409520
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
	jne	.label_747
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
	jmp	.label_755
	nop	word ptr cs:[rax + rax]
.label_750:
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
.label_755:
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsi, qword ptr [rsp + 0x48]
	mov	rdx, rbx
	lea	rcx, [rsp + 0x10]
	call	readtoken
	cmp	r14, rbp
	jb	.label_752
	mov	r15, rax
	cmp	qword ptr [rsp], 0
	je	.label_753
	movabs	rax, 0xaaaaaaaaaaaaaaa
	cmp	rbp, rax
	jae	.label_747
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
	jbe	.label_756
	jmp	.label_747
.label_753:
	test	rbp, rbp
	mov	eax, 0x10
	cmove	rbp, rax
	movabs	rax, 0xfffffffffffffff
	cmp	rbp, rax
	ja	.label_748
	lea	r13, [rbp*8]
	mov	rdi, qword ptr [rsp]
	mov	rsi, r13
	call	xrealloc
	mov	qword ptr [rsp], rax
.label_756:
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, r13
	call	xrealloc
	mov	qword ptr [rsp + 8], rax
	mov	rbx, qword ptr [rsp + 0x38]
	mov	rax, r15
.label_752:
	cmp	rax, -1
	je	.label_749
	mov	qword ptr [rsp + 0x50], rbp
	mov	r15, rbx
	mov	rbp, qword ptr [rsp]
	mov	rbx, rax
	inc	rbx
	mov	r12, rax
	jns	.label_750
.label_747:
	call	xalloc_die
.label_749:
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
	je	.label_751
	mov	qword ptr [rax], rbx
	jmp	.label_754
.label_751:
	mov	rdi, rbx
	call	free
.label_754:
	mov	rax, r14
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_748:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409720

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
.label_758:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	write
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_757
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_758
	cmp	rbx, 0x7ff00001
	jb	.label_757
	cmp	eax, 0x16
	mov	ebx, 0x7ff00000
	je	.label_758
.label_757:
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
	#Procedure 0x409780

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
	je	.label_765
	call	__ctype_get_mb_cur_max
	cmp	rax, 2
	jb	.label_769
	test	r14d, r14d
	je	.label_775
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
	jle	.label_768
	lea	rbp, [rsp + 8]
	nop	
.label_764:
	mov	rdi, rbp
	call	mbiter_multi_next
	mov	rdi, qword ptr [rsp + 0x30]
	test	dil, dil
	je	.label_762
	shr	rdi, 0x20
	call	iswspace
	test	eax, eax
	je	.label_762
	mov	rax, qword ptr [rsp + 0x20]
	add	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x20], rax
	mov	byte ptr [rsp + 0x1c], 0
	cmp	rax, qword ptr [rsp + 8]
	jb	.label_764
.label_762:
	mov	rbp, qword ptr [rsp + 0x20]
.label_768:
	mov	rdi, rbp
	call	strlen
	lea	rdx, [rax + 1]
	mov	rdi, r12
	mov	rsi, rbp
	call	memmove
	cmp	r14d, 1
	je	.label_759
.label_775:
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
	jle	.label_759
	xor	ebp, ebp
	lea	r14, [rsp + 8]
	nop	dword ptr [rax + rax]
.label_774:
	mov	rdi, r14
	call	mbiter_multi_next
	cmp	ebp, 1
	je	.label_766
	test	ebp, ebp
	jne	.label_767
	mov	rdi, qword ptr [rsp + 0x30]
	mov	ebp, 1
	test	dil, dil
	je	.label_760
	shr	rdi, 0x20
	call	iswspace
	test	eax, eax
	je	.label_773
	xor	ebp, ebp
	jmp	.label_760
	nop	dword ptr [rax + rax]
.label_766:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	ebp, 1
	test	dil, dil
	je	.label_760
	shr	rdi, 0x20
	call	iswspace
	test	eax, eax
	je	.label_760
	mov	rdi, qword ptr [rsp + 0x30]
	test	dil, dil
	je	.label_770
	shr	rdi, 0x20
	call	iswspace
	test	eax, eax
	je	.label_770
	mov	ebp, 2
	mov	r15, qword ptr [rsp + 0x20]
	jmp	.label_760
	nop	
.label_767:
	mov	rdi, qword ptr [rsp + 0x30]
	test	dil, dil
	je	.label_770
	shr	rdi, 0x20
	call	iswspace
	mov	ebp, 2
	test	eax, eax
	jne	.label_760
	jmp	.label_770
.label_773:
	mov	rdi, qword ptr [rsp + 0x30]
	test	dil, dil
	je	.label_760
	shr	rdi, 0x20
	call	iswspace
	test	eax, eax
	je	.label_760
	nop	word ptr cs:[rax + rax]
.label_770:
	mov	ebp, 1
.label_760:
	mov	rax, qword ptr [rsp + 0x20]
	add	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x20], rax
	mov	byte ptr [rsp + 0x1c], 0
	cmp	rax, qword ptr [rsp + 8]
	jb	.label_774
	cmp	ebp, 2
	jne	.label_759
	mov	byte ptr [r15], 0
	jmp	.label_759
.label_769:
	test	r14d, r14d
	je	.label_761
	mov	bl, byte ptr [r12]
	test	bl, bl
	mov	rbp, r12
	je	.label_771
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rbp, r12
	nop	word ptr cs:[rax + rax]
.label_772:
	movzx	ecx, bl
	test	byte ptr [rax + rcx*2 + 1], 0x20
	je	.label_771
	movzx	ebx, byte ptr [rbp + 1]
	inc	rbp
	test	bl, bl
	jne	.label_772
.label_771:
	mov	rdi, rbp
	call	strlen
	lea	rdx, [rax + 1]
	mov	rdi, r12
	mov	rsi, rbp
	call	memmove
	cmp	r14d, 1
	je	.label_759
.label_761:
	mov	rdi, r12
	call	strlen
	lea	rbp, [r12 + rax - 1]
	cmp	rbp, r12
	jb	.label_759
	call	__ctype_b_loc
	nop	dword ptr [rax]
.label_763:
	movzx	ecx, byte ptr [rbp]
	mov	rdx, qword ptr [rax]
	test	byte ptr [rdx + rcx*2 + 1], 0x20
	je	.label_759
	mov	byte ptr [rbp], 0
	dec	rbp
	cmp	rbp, r12
	jae	.label_763
.label_759:
	mov	rax, r12
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_765:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x409a30

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
	je	.label_792
	mov	edx, OFFSET FLAT:label_782
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_789
.label_792:
	mov	edx, OFFSET FLAT:label_790
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_789:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_794
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
	mov	esi, OFFSET FLAT:label_791
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_777
	jmp	qword ptr [(r12 * 8) + label_778]
.label_1165:
	add	rsp, 8
	jmp	.label_776
.label_777:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_785
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
	jmp	.label_776
.label_1166:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_786
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
.label_1167:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_787
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
.label_1168:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_783
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
.label_1169:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_780
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
	jmp	.label_776
.label_1170:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_779
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
	jmp	.label_776
.label_1171:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_781
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
	jmp	.label_776
.label_1172:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_784
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
	jmp	.label_776
.label_1174:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_788
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
	jmp	.label_776
.label_1173:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_793
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
.label_776:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409d90
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_795:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_795
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409dc0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_796
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_798
.label_796:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_798:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_799
	cmp	r10d, 0x29
	jae	.label_808
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_797
.label_808:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_797:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_799
	cmp	r10d, 0x29
	jae	.label_806
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_807
.label_806:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_807:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_799
	cmp	r10d, 0x29
	jae	.label_804
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_805
.label_804:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_805:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_799
	cmp	r10d, 0x29
	jae	.label_802
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_803
.label_802:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_803:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_799
	cmp	r10d, 0x29
	jae	.label_800
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_801
.label_800:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_801:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_799
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_799
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_799
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_799
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_799:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409fb0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_809
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_809:
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
	#Procedure 0x40a040
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_810
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_811
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_813
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_9
	mov	ecx, OFFSET FLAT:label_10
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_812
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a0c0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_814
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_815
	test	rax, rax
	je	.label_814
.label_815:
	pop	rbx
	ret	
.label_814:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a100

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_816
	test	rax, rax
	je	.label_817
.label_816:
	pop	rbx
	ret	
.label_817:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a120
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_818
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_819
	test	rbx, rbx
	jne	.label_819
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_819:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_820
	test	rax, rax
	je	.label_818
.label_820:
	pop	rbx
	ret	
.label_818:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a170

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_821
	test	rbx, rbx
	jne	.label_821
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_821:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_823
	test	rax, rax
	je	.label_822
.label_823:
	pop	rbx
	ret	
.label_822:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40a1a0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_824
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_827
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_825
.label_824:
	test	rcx, rcx
	jne	.label_830
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_830:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_826
.label_825:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_829
	test	rbx, rbx
	jne	.label_829
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_829:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_828
	test	rax, rax
	je	.label_827
.label_828:
	pop	rbx
	ret	
.label_827:
	call	xalloc_die
.label_826:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a240
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_831
	test	rax, rax
	je	.label_832
.label_831:
	pop	rbx
	ret	
.label_832:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a260
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_833
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_836
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_837
	call	free
	xor	eax, eax
	jmp	.label_834
.label_833:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_835
	mov	qword ptr [rsi], rbx
.label_837:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_834
	test	rax, rax
	je	.label_835
.label_834:
	pop	rbx
	ret	
.label_835:
	call	xalloc_die
.label_836:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a2d0
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
	je	.label_839
	test	r14, r14
	je	.label_838
.label_839:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_838:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a310
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_840
	call	rpl_calloc
	test	rax, rax
	je	.label_840
	pop	rcx
	ret	
.label_840:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a340

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
	je	.label_841
	test	r15, r15
	je	.label_842
.label_841:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_842:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a380
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
	je	.label_844
	test	r15, r15
	je	.label_843
.label_844:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_843:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a3d0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_845
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
	#Procedure 0x40a400
	.globl xmem_cd_iconv
	.type xmem_cd_iconv, @function
xmem_cd_iconv:

	push	rbx
	call	mem_cd_iconv
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_847
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_846
.label_847:
	mov	eax, ebx
	pop	rbx
	ret	
.label_846:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a420
	.globl xstr_cd_iconv
	.type xstr_cd_iconv, @function
xstr_cd_iconv:

	push	rbx
	call	str_cd_iconv
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_849
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_848
.label_849:
	mov	rax, rbx
	pop	rbx
	ret	
.label_848:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a450

	.globl xstr_iconv
	.type xstr_iconv, @function
xstr_iconv:
	push	rbx
	call	str_iconv
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_851
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_850
.label_851:
	mov	rax, rbx
	pop	rbx
	ret	
.label_850:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a480

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_852
	test	rsi, rsi
	mov	ecx, 1
	je	.label_853
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_853
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_852:
	mov	ecx, 1
.label_853:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a4d0

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
	je	.label_854
	cmp	r15, -2
	jb	.label_854
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_854
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_854:
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
	#Procedure 0x40a530

	.globl c_strcasecmp
	.type c_strcasecmp, @function
c_strcasecmp:
	xor	eax, eax
	cmp	rdi, rsi
	je	.label_855
	nop	word ptr [rax + rax]
.label_858:
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
	je	.label_856
	inc	rdi
	inc	rsi
	movzx	ecx, cl
	cmp	eax, ecx
	je	.label_858
	jmp	.label_857
.label_856:
	movzx	ecx, cl
	xor	eax, eax
.label_857:
	sub	eax, ecx
.label_855:
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a580

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
	jne	.label_860
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_859
	test	cl, cl
	jne	.label_859
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_859
.label_860:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_859
	call	__errno_location
	mov	dword ptr [rax], 0
.label_859:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a5e0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_862
	cmp	byte ptr [rax], 0x43
	jne	.label_864
	cmp	byte ptr [rax + 1], 0
	je	.label_861
.label_864:
	mov	esi, OFFSET FLAT:label_863
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_862
.label_861:
	xor	ebx, ebx
.label_862:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a620

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
	mov	eax, OFFSET FLAT:label_865
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a650

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
	jne	.label_875
	cmp	byte ptr [rbx + 8], 0
	je	.label_876
	lea	r13, [rbx + 0x18]
	mov	r15, qword ptr [rbx + 0x18]
	lea	r14, [rbx + 0xc]
.label_881:
	lea	r12, [rbx + 0x2c]
	mov	rdx, qword ptr [rbx]
	sub	rdx, r15
	mov	rdi, r12
	mov	rsi, r15
	mov	rcx, r14
	call	rpl_mbrtowc
	mov	qword ptr [rbx + 0x20], rax
	cmp	rax, -2
	je	.label_871
	test	rax, rax
	je	.label_873
	cmp	rax, -1
	jne	.label_874
	mov	qword ptr [rbx + 0x20], 1
	mov	byte ptr [rbx + 0x28], 0
	jmp	.label_870
.label_876:
	mov	r15, qword ptr [rbx + 0x18]
	movzx	eax, byte ptr [r15]
	mov	rcx, rax
	shr	rcx, 5
	mov	ecx, dword ptr [(rcx * 4) + is_basic_table]
	bt	ecx, eax
	jae	.label_877
	mov	qword ptr [rbx + 0x20], 1
	movsx	eax, byte ptr [r15]
	mov	dword ptr [rbx + 0x2c], eax
	mov	byte ptr [rbx + 0x28], 1
	jmp	.label_870
.label_871:
	mov	rax, qword ptr [rbx]
	sub	rax, qword ptr [r13]
	mov	qword ptr [rbx + 0x20], rax
	mov	byte ptr [rbx + 0x28], 0
	jmp	.label_870
.label_873:
	mov	qword ptr [rbx + 0x20], 1
	mov	rax, qword ptr [rbx + 0x18]
	cmp	byte ptr [rax], 0
	jne	.label_878
	cmp	dword ptr [r12], 0
	jne	.label_866
.label_874:
	mov	byte ptr [rbx + 0x28], 1
	mov	rdi, r14
	call	mbsinit
	test	eax, eax
	je	.label_870
	mov	byte ptr [rbx + 8], 0
.label_870:
	mov	byte ptr [rbx + 0x14], 1
.label_875:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
.label_877:
	lea	r14, [rbx + 0xc]
	mov	rdi, r14
	call	mbsinit
	test	eax, eax
	je	.label_879
	mov	byte ptr [rbx + 8], 1
	lea	r13, [rbx + 0x18]
	jmp	.label_881
.label_878:
	mov	edi, OFFSET FLAT:label_867
	mov	esi, OFFSET FLAT:label_868
	mov	edx, 0xa9
	mov	ecx, OFFSET FLAT:label_869
	call	__assert_fail
.label_866:
	mov	edi, OFFSET FLAT:label_872
	mov	esi, OFFSET FLAT:label_868
	mov	edx, 0xaa
	mov	ecx, OFFSET FLAT:label_869
	call	__assert_fail
.label_879:
	mov	edi, OFFSET FLAT:label_880
	mov	esi, OFFSET FLAT:label_868
	mov	edx, 0x8e
	mov	ecx, OFFSET FLAT:label_869
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a7a0
	.globl mbiter_multi_reloc
	.type mbiter_multi_reloc, @function
mbiter_multi_reloc:

	add	qword ptr [rdi + 0x18], rsi
	add	qword ptr [rdi], rsi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a7b0
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
	je	.label_882
	mov	rax, qword ptr [rbx + 0xc]
	mov	qword ptr [r14 + 0xc], rax
	jmp	.label_884
.label_882:
	mov	qword ptr [r14 + 0xc], 0
.label_884:
	mov	al, byte ptr [rbx + 0x14]
	mov	byte ptr [r14 + 0x14], al
	mov	rsi, qword ptr [rbx + 0x18]
	lea	rax, [rbx + 0x30]
	cmp	rsi, rax
	jne	.label_885
	lea	r15, [r14 + 0x30]
	mov	rdx, qword ptr [rbx + 0x20]
	mov	rdi, r15
	call	memcpy
	mov	rsi, r15
.label_885:
	mov	qword ptr [r14 + 0x18], rsi
	mov	rax, qword ptr [rbx + 0x20]
	mov	qword ptr [r14 + 0x20], rax
	mov	rax, qword ptr [rbx + 0x28]
	test	al, al
	mov	byte ptr [r14 + 0x28], al
	je	.label_883
	shr	rax, 0x20
	mov	dword ptr [r14 + 0x2c], eax
.label_883:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a830

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
	jb	.label_896
	mov	qword ptr [rsp + 0xf8], rbp
	mov	byte ptr [rsp + 0xe8], 0
	mov	qword ptr [rsp + 0xec], 0
	mov	byte ptr [rsp + 0xf4], 0
	lea	rdi, [rsp + 0xe8]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x108]
	test	al, al
	je	.label_905
	shr	rax, 0x20
	jne	.label_905
	mov	rax, qword ptr [rsp]
	jmp	.label_887
.label_896:
	mov	r12b, byte ptr [rbp]
	test	r12b, r12b
	mov	rdi, rbp
	je	.label_910
	mov	rbp, qword ptr [rsp]
	mov	r15b, byte ptr [rbp]
	xor	eax, eax
	test	r15b, r15b
	je	.label_887
	mov	r9b, 1
	xor	r8d, r8d
	mov	r10, rdi
	xor	r13d, r13d
	xor	r14d, r14d
.label_917:
	cmp	r14, 0xa
	jb	.label_893
	mov	eax, r9d
	and	al, 1
	je	.label_893
	lea	rax, [r14 + r14*4]
	cmp	r13, rax
	jb	.label_893
	test	r10, r10
	je	.label_886
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
	je	.label_886
	add	r10, rax
	mov	r8, r13
	jne	.label_893
.label_886:
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
	jne	.label_900
	mov	r15b, byte ptr [rbx]
	xor	r9d, r9d
	xor	r10d, r10d
	mov	rbp, rbx
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, r13
	mov	r13, qword ptr [rsp]
.label_893:
	cmp	r15b, r12b
	jne	.label_906
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_912:
	movzx	edx, byte ptr [rdi + rcx]
	test	dl, dl
	je	.label_908
	movzx	ebx, byte ptr [rbp + rcx]
	test	bl, bl
	mov	eax, 0
	je	.label_887
	inc	rcx
	cmp	bl, dl
	je	.label_912
	add	r13, rcx
	jmp	.label_914
	nop	word ptr [rax + rax]
.label_906:
	inc	r13
.label_914:
	inc	r14
	mov	r15b, byte ptr [rbp + 1]
	inc	rbp
	test	r15b, r15b
	mov	eax, 0
	jne	.label_917
	jmp	.label_887
.label_905:
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
	je	.label_894
	shr	rax, 0x20
	je	.label_899
.label_894:
	mov	al, 1
	mov	dword ptr [rsp + 0x14], eax
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	lea	r12, [rsp + 0x60]
	lea	rbx, [rsp + 0x128]
	xor	ebp, ebp
	xor	r14d, r14d
	xor	r13d, r13d
.label_902:
	mov	r15, r14
	cmp	r13, 0xa
	jb	.label_903
	mov	eax, dword ptr [rsp + 0x14]
	and	al, 1
	je	.label_903
	lea	rax, [r13 + r13*4]
	cmp	r15, rax
	jb	.label_903
	cmp	r15, rbp
	je	.label_909
	sub	rbp, r15
	nop	dword ptr [rax]
.label_915:
	mov	rdi, rbx
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x148]
	test	al, al
	je	.label_911
	shr	rax, 0x20
	je	.label_909
.label_911:
	mov	rax, qword ptr [rsp + 0x140]
	add	qword ptr [rsp + 0x138], rax
	mov	byte ptr [rsp + 0x134], 0
	inc	rbp
	jne	.label_915
.label_909:
	mov	rdi, rbx
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x148]
	test	al, al
	je	.label_919
	shr	rax, 0x20
	mov	rbp, r15
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_903
	mov	rdi, rax
	mov	rsi, rcx
	lea	rdx, [rsp + 0xa0]
	call	knuth_morris_pratt_multibyte
	test	al, al
	jne	.label_913
	mov	dword ptr [rsp + 0x14], 0
.label_919:
	mov	rbp, r15
.label_903:
	lea	r14, [r15 + 1]
	mov	rax, qword ptr [rsp + 0x80]
	test	al, al
	je	.label_891
	mov	rcx, qword ptr [rsp + 0x108]
	test	cl, cl
	je	.label_891
	shr	rcx, 0x20
	shr	rax, 0x20
	cmp	eax, ecx
	je	.label_897
	jmp	.label_898
.label_891:
	mov	rdx, qword ptr [rsp + 0x78]
	cmp	rdx, qword ptr [rsp + 0x100]
	jne	.label_898
	mov	rdi, qword ptr [rsp + 0x70]
	mov	rsi, qword ptr [rsp + 0xf8]
	call	memcmp
	test	eax, eax
	jne	.label_898
.label_897:
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
	je	.label_888
	shr	rax, 0x20
	je	.label_889
.label_888:
	mov	rax, qword ptr [rsp + 0x38]
	add	qword ptr [rsp + 0x30], rax
	mov	byte ptr [rsp + 0x2c], 0
	lea	rdi, [rsp + 0x20]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x40]
	test	al, al
	je	.label_892
	shr	rax, 0x20
	je	.label_895
.label_892:
	add	r15, 2
	mov	r14, r15
	nop	word ptr cs:[rax + rax]
.label_890:
	lea	rdi, [rsp + 0xa0]
	call	mbuiter_multi_next
	mov	rcx, qword ptr [rsp + 0xc0]
	mov	rax, rcx
	shr	rax, 0x20
	test	cl, cl
	je	.label_901
	test	eax, eax
	je	.label_899
.label_901:
	test	cl, cl
	sete	dl
	mov	rcx, qword ptr [rsp + 0x40]
	test	cl, cl
	je	.label_904
	test	dl, dl
	jne	.label_904
	shr	rcx, 0x20
	cmp	eax, ecx
	jne	.label_907
	mov	r15, qword ptr [rsp + 0xb0]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	r12, qword ptr [rsp + 0x30]
	mov	r13, qword ptr [rsp + 0x38]
	jmp	.label_918
	nop	word ptr cs:[rax + rax]
.label_904:
	mov	r13, qword ptr [rsp + 0xb8]
	cmp	r13, qword ptr [rsp + 0x38]
	jne	.label_907
	mov	r15, qword ptr [rsp + 0xb0]
	mov	r12, qword ptr [rsp + 0x30]
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	mov	rax, r13
	jne	.label_907
.label_918:
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
	je	.label_890
	shr	rax, 0x20
	jne	.label_890
	jmp	.label_895
.label_907:
	lea	r12, [rsp + 0x60]
	mov	r13, qword ptr [rsp + 0xe0]
	nop	word ptr cs:[rax + rax]
.label_898:
	inc	r13
	mov	rax, qword ptr [rsp + 0x78]
	add	qword ptr [rsp + 0x70], rax
	mov	byte ptr [rsp + 0x6c], 0
	mov	rdi, r12
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x80]
	test	al, al
	je	.label_902
	shr	rax, 0x20
	jne	.label_902
	jmp	.label_899
.label_910:
	mov	rax, qword ptr [rsp]
	jmp	.label_887
.label_908:
	mov	rax, rbp
	jmp	.label_887
.label_895:
	mov	rax, qword ptr [rsp + 0x70]
.label_916:
	mov	qword ptr [rsp + 0x18], rax
.label_899:
	mov	rax, qword ptr [rsp + 0x18]
.label_887:
	add	rsp, 0x168
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_900:
	mov	rax, qword ptr [rsp + 0xe8]
	jmp	.label_887
.label_913:
	mov	rax, qword ptr [rsp + 0xa0]
	jmp	.label_916
.label_889:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ade0

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
	mov	r12, rdx
	mov	r14, rsi
	mov	r15, rdi
	mov	rdi, r14
	call	mbslen
	mov	rbx, rax
	movabs	rax, 0x249249249249249
	cmp	rbx, rax
	jbe	.label_924
	xor	eax, eax
	jmp	.label_926
.label_924:
	mov	qword ptr [rbp - 0xc8], r15
	imul	rdi, rbx, 0x38
	cmp	rdi, 0xfa0
	ja	.label_934
	mov	rax, rsp
	add	rdi, 0x2e
	and	rdi, 0xfffffffffffffff0
	mov	rcx, rax
	sub	rcx, rdi
	mov	rsp, rcx
	neg	rdi
	lea	r15, [rax + rdi + 0x1f]
	and	r15, 0xffffffffffffffe0
	jmp	.label_941
.label_934:
	call	mmalloca
	mov	r15, rax
.label_941:
	test	r15, r15
	je	.label_950
	mov	qword ptr [rbp - 0x80], r12
	mov	qword ptr [rbp - 0x30], rbx
	lea	rbx, [rbx + rbx*2]
	shl	rbx, 4
	mov	qword ptr [rbp - 0x68], r14
	mov	byte ptr [rbp - 0x78], 0
	mov	qword ptr [rbp - 0x74], 0
	mov	byte ptr [rbp - 0x6c], 0
	lea	rdi, [rbp - 0x78]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rbp - 0x58]
	test	al, al
	je	.label_931
	shr	rax, 0x20
	je	.label_932
.label_931:
	lea	r13, [rbp - 0x50]
	lea	r14, [r15 + 0x18]
	lea	r12, [rbp - 0x78]
	nop	dword ptr [rax]
.label_927:
	mov	rax, qword ptr [rbp - 0x68]
	cmp	rax, r13
	jne	.label_939
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rdi, r14
	mov	rsi, r13
	call	memcpy
	mov	rax, r14
.label_939:
	mov	qword ptr [r14 - 0x18], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [r14 - 0x10], rax
	mov	rax, qword ptr [rbp - 0x58]
	test	al, al
	mov	byte ptr [r14 - 8], al
	je	.label_946
	shr	rax, 0x20
	mov	dword ptr [r14 - 4], eax
.label_946:
	mov	rax, qword ptr [rbp - 0x60]
	add	qword ptr [rbp - 0x68], rax
	mov	byte ptr [rbp - 0x6c], 0
	mov	rdi, r12
	call	mbuiter_multi_next
	mov	rax, qword ptr [rbp - 0x58]
	add	r14, 0x30
	test	al, al
	je	.label_927
	shr	rax, 0x20
	jne	.label_927
.label_932:
	lea	rsi, [r15 + rbx]
	mov	qword ptr [r15 + rbx + 8], 1
	cmp	qword ptr [rbp - 0x30], 3
	mov	qword ptr [rbp - 0x38], rsi
	jb	.label_930
	mov	r14d, 2
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_940:
	lea	rax, [r14 + r14*2]
	shl	rax, 4
	lea	r12, [r15 + rax - 0x30]
	cmp	byte ptr [r15 + rax - 0x20], 0
	je	.label_943
	lea	r13, [r15 + rax - 0x1c]
	jmp	.label_948
	nop	dword ptr [rax]
.label_923:
	sub	rbx, qword ptr [rsi + rbx*8]
.label_948:
	lea	rax, [rbx + rbx*2]
	shl	rax, 4
	cmp	byte ptr [r15 + rax + 0x10], 0
	je	.label_942
	mov	ecx, dword ptr [r13]
	cmp	ecx, dword ptr [r15 + rax + 0x14]
	jne	.label_929
	jmp	.label_922
	nop	word ptr cs:[rax + rax]
.label_942:
	mov	rdx, qword ptr [r12 + 8]
	cmp	rdx, qword ptr [r15 + rax + 8]
	jne	.label_929
	mov	rdi, qword ptr [r12]
	mov	rsi, qword ptr [r15 + rax]
	call	memcmp
	mov	rsi, qword ptr [rbp - 0x38]
	test	eax, eax
	je	.label_922
	nop	word ptr cs:[rax + rax]
.label_929:
	test	rbx, rbx
	jne	.label_923
	jmp	.label_935
	nop	word ptr [rax + rax]
.label_943:
	mov	r13, qword ptr [r12 + 8]
	jmp	.label_947
	nop	word ptr [rax + rax]
.label_944:
	sub	rbx, qword ptr [rsi + rbx*8]
.label_947:
	lea	rax, [rbx + rbx*2]
	shl	rax, 4
	cmp	r13, qword ptr [r15 + rax + 8]
	jne	.label_952
	mov	rdi, qword ptr [r12]
	mov	rsi, qword ptr [r15 + rax]
	mov	rdx, r13
	call	memcmp
	mov	rsi, qword ptr [rbp - 0x38]
	test	eax, eax
	je	.label_922
.label_952:
	test	rbx, rbx
	jne	.label_944
.label_935:
	mov	qword ptr [rsi + r14*8], r14
	xor	ebx, ebx
	mov	rcx, qword ptr [rbp - 0x30]
	jmp	.label_951
	nop	dword ptr [rax]
.label_922:
	mov	rcx, qword ptr [rbp - 0x30]
	inc	rbx
	mov	rax, r14
	sub	rax, rbx
	mov	qword ptr [rsi + r14*8], rax
.label_951:
	inc	r14
	cmp	r14, rcx
	jne	.label_940
.label_930:
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
	je	.label_928
	test	eax, eax
	je	.label_937
.label_928:
	xor	r13d, r13d
	lea	r12, [rbp - 0x78]
	nop	word ptr cs:[rax + rax]
.label_953:
	lea	rdx, [r13 + r13*2]
	shl	rdx, 4
	cmp	byte ptr [r15 + rdx + 0x10], 0
	je	.label_921
	xor	cl, 1
	test	cl, 1
	jne	.label_921
	cmp	dword ptr [r15 + rdx + 0x14], eax
	jne	.label_920
	mov	rbx, qword ptr [rbp - 0xb0]
	mov	r14, qword ptr [rbp - 0xa8]
	jmp	.label_945
	nop	word ptr cs:[rax + rax]
.label_921:
	mov	r14, qword ptr [r15 + rdx + 8]
	cmp	r14, qword ptr [rbp - 0xa8]
	jne	.label_920
	mov	rdi, qword ptr [r15 + rdx]
	mov	rbx, qword ptr [rbp - 0xb0]
	mov	rsi, rbx
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_945
.label_920:
	test	r13, r13
	je	.label_938
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbx, qword ptr [rax + r13*8]
	sub	r13, rbx
	test	rbx, rbx
	je	.label_925
	nop	word ptr cs:[rax + rax]
.label_954:
	mov	rdi, r12
	call	mbuiter_multi_next
	mov	rax, qword ptr [rbp - 0x58]
	test	al, al
	je	.label_949
	shr	rax, 0x20
	je	.label_936
.label_949:
	mov	rax, qword ptr [rbp - 0x60]
	add	qword ptr [rbp - 0x68], rax
	mov	byte ptr [rbp - 0x6c], 0
	dec	rbx
	jne	.label_954
	jmp	.label_925
	nop	dword ptr [rax]
.label_945:
	inc	r13
	add	rbx, r14
	mov	qword ptr [rbp - 0xb0], rbx
	mov	byte ptr [rbp - 0xb4], 0
	cmp	r13, qword ptr [rbp - 0x30]
	jne	.label_925
	jmp	.label_933
	nop	dword ptr [rax]
.label_938:
	mov	rdi, r12
	call	mbuiter_multi_next
	mov	rax, qword ptr [rbp - 0x58]
	test	al, al
	je	.label_955
	shr	rax, 0x20
	je	.label_936
.label_955:
	mov	rax, qword ptr [rbp - 0x60]
	add	qword ptr [rbp - 0x68], rax
	mov	byte ptr [rbp - 0x6c], 0
	mov	rax, qword ptr [rbp - 0xa8]
	add	qword ptr [rbp - 0xb0], rax
	mov	byte ptr [rbp - 0xb4], 0
	xor	r13d, r13d
.label_925:
	lea	rdi, [rbp - 0xc0]
	call	mbuiter_multi_next
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rax, rcx
	shr	rax, 0x20
	test	cl, cl
	setne	cl
	je	.label_953
	test	eax, eax
	jne	.label_953
	jmp	.label_937
.label_950:
	xor	eax, eax
	jmp	.label_926
.label_933:
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	qword ptr [rcx], rax
.label_937:
	mov	rdi, r15
	call	freea
	mov	al, 1
.label_926:
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_936:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b240

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
	je	.label_956
	xor	eax, eax
	jmp	.label_964
.label_956:
	lea	rdi, [r12*8]
	cmp	rdi, 0xfa0
	ja	.label_970
	mov	rax, rsp
	add	rdi, 0x2e
	and	rdi, 0xfffffffffffffff0
	mov	rcx, rax
	sub	rcx, rdi
	mov	rsp, rcx
	neg	rdi
	lea	rdi, [rax + rdi + 0x1f]
	and	rdi, 0xffffffffffffffe0
	jmp	.label_962
.label_970:
	call	mmalloca
	mov	rdi, rax
.label_962:
	test	rdi, rdi
	je	.label_969
	mov	qword ptr [rdi + 8], 1
	cmp	r12, 3
	jb	.label_971
	mov	eax, 2
	xor	ecx, ecx
	nop	dword ptr [rax]
.label_972:
	mov	dl, byte ptr [rbx + rax - 1]
	jmp	.label_967
	nop	word ptr cs:[rax + rax]
.label_965:
	sub	rcx, qword ptr [rdi + rcx*8]
.label_967:
	cmp	dl, byte ptr [rbx + rcx]
	je	.label_963
	test	rcx, rcx
	jne	.label_965
	mov	qword ptr [rdi + rax*8], rax
	xor	ecx, ecx
	jmp	.label_968
	nop	word ptr cs:[rax + rax]
.label_963:
	inc	rcx
	mov	rdx, rax
	sub	rdx, rcx
	mov	qword ptr [rdi + rax*8], rdx
.label_968:
	inc	rax
	cmp	rax, r12
	jne	.label_972
.label_971:
	mov	qword ptr [r14], 0
	neg	r12
	xor	r8d, r8d
	mov	r9, r15
	jmp	.label_958
.label_969:
	xor	eax, eax
	jmp	.label_964
.label_966:
	add	r9, rdx
	lea	rax, [rdi + r8*8]
	mov	rax, qword ptr [rax + rdx*8]
	add	r15, rax
	sub	r8, rax
	add	r8, rdx
.label_958:
	lea	rsi, [r12 + r8]
	lea	rcx, [rbx + r8]
	xor	edx, edx
	nop	dword ptr [rax]
.label_961:
	movzx	eax, byte ptr [r9 + rdx]
	test	al, al
	je	.label_957
	cmp	byte ptr [rcx + rdx], al
	jne	.label_959
	inc	rdx
	mov	rax, rsi
	add	rax, rdx
	jne	.label_961
	jmp	.label_960
.label_959:
	mov	rax, r8
	add	rax, rdx
	jne	.label_966
	inc	r15
	lea	r9, [r9 + rdx + 1]
	xor	r8d, r8d
	jmp	.label_958
.label_960:
	mov	qword ptr [r14], r15
.label_957:
	call	freea
	mov	al, 1
.label_964:
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
	#Procedure 0x40b390

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
	jne	.label_978
	cmp	byte ptr [rbx], 0
	mov	r15, qword ptr [rbx + 0x10]
	je	.label_982
	lea	r14, [rbx + 4]
.label_974:
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
	je	.label_980
	test	rax, rax
	je	.label_981
	cmp	rax, -1
	jne	.label_983
	mov	qword ptr [rbx + 0x18], 1
	mov	byte ptr [rbx + 0x20], 0
	jmp	.label_979
.label_982:
	movzx	eax, byte ptr [r15]
	mov	rcx, rax
	shr	rcx, 5
	mov	ecx, dword ptr [(rcx * 4) + is_basic_table]
	bt	ecx, eax
	jae	.label_985
	mov	qword ptr [rbx + 0x18], 1
	movsx	eax, byte ptr [r15]
	mov	dword ptr [rbx + 0x24], eax
	mov	byte ptr [rbx + 0x20], 1
	jmp	.label_979
.label_980:
	mov	rdi, qword ptr [rbx + 0x10]
	call	strlen
	mov	qword ptr [rbx + 0x18], rax
	mov	byte ptr [rbx + 0x20], 0
	jmp	.label_979
.label_981:
	mov	qword ptr [rbx + 0x18], 1
	mov	rax, qword ptr [rbx + 0x10]
	cmp	byte ptr [rax], 0
	jne	.label_984
	cmp	dword ptr [r12], 0
	jne	.label_975
.label_983:
	mov	byte ptr [rbx + 0x20], 1
	mov	rdi, r14
	call	mbsinit
	test	eax, eax
	je	.label_979
	mov	byte ptr [rbx], 0
.label_979:
	mov	byte ptr [rbx + 0xc], 1
.label_978:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_985:
	lea	r14, [rbx + 4]
	mov	rdi, r14
	call	mbsinit
	test	eax, eax
	je	.label_973
	mov	byte ptr [rbx], 1
	jmp	.label_974
.label_984:
	mov	edi, OFFSET FLAT:label_867
	mov	esi, OFFSET FLAT:label_976
	mov	edx, 0xb2
	mov	ecx, OFFSET FLAT:label_977
	call	__assert_fail
.label_975:
	mov	edi, OFFSET FLAT:label_872
	mov	esi, OFFSET FLAT:label_976
	mov	edx, 0xb3
	mov	ecx, OFFSET FLAT:label_977
	call	__assert_fail
.label_973:
	mov	edi, OFFSET FLAT:label_880
	mov	esi, OFFSET FLAT:label_976
	mov	edx, 0x96
	mov	ecx, OFFSET FLAT:label_977
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b4e0
	.globl mbuiter_multi_reloc
	.type mbuiter_multi_reloc, @function
mbuiter_multi_reloc:

	add	qword ptr [rdi + 0x10], rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b4f0
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
	je	.label_986
	mov	rax, qword ptr [rbx + 4]
	mov	qword ptr [r14 + 4], rax
	jmp	.label_987
.label_986:
	mov	qword ptr [r14 + 4], 0
.label_987:
	mov	al, byte ptr [rbx + 0xc]
	mov	byte ptr [r14 + 0xc], al
	mov	rsi, qword ptr [rbx + 0x10]
	lea	rax, [rbx + 0x28]
	cmp	rsi, rax
	jne	.label_988
	lea	r15, [r14 + 0x28]
	mov	rdx, qword ptr [rbx + 0x18]
	mov	rdi, r15
	call	memcpy
	mov	rsi, r15
.label_988:
	mov	qword ptr [r14 + 0x10], rsi
	mov	rax, qword ptr [rbx + 0x18]
	mov	qword ptr [r14 + 0x18], rax
	mov	rax, qword ptr [rbx + 0x20]
	test	al, al
	mov	byte ptr [r14 + 0x20], al
	je	.label_989
	shr	rax, 0x20
	mov	dword ptr [r14 + 0x24], eax
.label_989:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b570

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
	je	.label_997
	xor	ebx, ebx
	lea	r12, [rsp + 0x48]
	lea	rbp, [rsp + 0x18]
	lea	r15, [rsp]
	lea	r13, [rsp + 0x30]
	nop	
.label_1003:
	mov	qword ptr [rsp], r12
	mov	qword ptr [rsp + 0x30], 0x1000
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rsi, [rsp + 0x20]
	mov	rdx, rbp
	mov	rcx, r15
	mov	r8, r13
	call	iconv
	cmp	rax, -1
	jne	.label_991
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 7
	je	.label_991
	mov	r14d, 3
	cmp	eax, 0x16
	je	.label_994
	mov	r14d, 1
	jmp	.label_994
	nop	word ptr [rax + rax]
.label_991:
	sub	rbx, r12
	add	rbx, qword ptr [rsp]
	xor	r14d, r14d
.label_994:
	mov	eax, r14d
	and	al, 3
	jne	.label_1001
	cmp	qword ptr [rsp + 0x18], 0
	jne	.label_1003
	jmp	.label_997
.label_1001:
	cmp	al, 3
	jne	.label_990
.label_997:
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
	je	.label_1012
	sub	rbx, rbp
	add	rbx, qword ptr [rsp]
	jmp	.label_990
.label_1012:
	mov	r14d, 1
.label_990:
	mov	ebp, 0xffffffff
	test	r14d, r14d
	jne	.label_992
	test	rbx, rbx
	je	.label_995
	mov	r12, qword ptr [rsp + 0x40]
	mov	r14, qword ptr [r12]
	test	r14, r14
	je	.label_996
	mov	rax, qword ptr [rsp + 0x28]
	cmp	qword ptr [rax], rbx
	jae	.label_999
.label_996:
	mov	rdi, rbx
	call	malloc
	mov	r14, rax
	test	r14, r14
	je	.label_1005
.label_999:
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
	je	.label_1008
	lea	r13, [rsp + 0x48]
	lea	rbp, [rsp + 0x20]
	lea	r15, [rsp + 0x18]
	lea	r14, [rsp]
.label_1007:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r13
	mov	rdx, rbp
	mov	rcx, r15
	mov	r8, r14
	call	iconv
	cmp	rax, -1
	je	.label_1000
	xor	eax, eax
	jmp	.label_1002
.label_1000:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	setne	al
	add	al, 5
.label_1002:
	and	al, 7
	jne	.label_1006
	cmp	qword ptr [rsp + 0x20], 0
	jne	.label_1007
	jmp	.label_1008
.label_995:
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rax], 0
	jmp	.label_1009
.label_1005:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_992
.label_1006:
	cmp	al, 5
	jne	.label_1011
.label_1008:
	lea	rcx, [rsp + 0x18]
	lea	r8, [rsp]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, qword ptr [rsp + 0x10]
	call	iconv
	cmp	rax, -1
	je	.label_993
	cmp	qword ptr [rsp], 0
	mov	rax, qword ptr [rsp + 8]
	jne	.label_1010
	mov	qword ptr [r12], rax
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rax], rbx
.label_1009:
	xor	ebp, ebp
	jmp	.label_992
.label_993:
	mov	rbp, qword ptr [rsp + 8]
	jmp	.label_998
.label_1011:
	cmp	al, 6
	mov	rbp, qword ptr [rsp + 8]
	jne	.label_1004
.label_998:
	cmp	rbp, qword ptr [r12]
	je	.label_1004
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	rdi, rbp
	call	free
	mov	dword ptr [rbx], r14d
.label_1004:
	mov	ebp, 0xffffffff
.label_992:
	mov	eax, ebp
	add	rsp, 0x1048
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1010:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b800

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
	je	.label_1015
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
	je	.label_1013
	mov	rbx, rbp
	mov	r13, r12
.label_1020:
	lea	rcx, [rsp + 8]
	lea	r8, [rsp + 0x10]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r14
	call	iconv
	cmp	rax, -1
	je	.label_1019
	mov	rbp, rbx
	mov	r12, r13
.label_1025:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp + 8], rcx
	mov	byte ptr [rax], 0
	mov	rsi, qword ptr [rsp + 8]
	sub	rsi, r12
	cmp	rsi, rbp
	jae	.label_1022
	mov	rdi, r12
	call	realloc
	test	rax, rax
	cmovne	r12, rax
	jmp	.label_1022
.label_1015:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_1024
.label_1013:
	call	__errno_location
	mov	r15, rax
.label_1026:
	mov	eax, dword ptr [r15]
	cmp	eax, 7
	jne	.label_1014
	lea	rbx, [rbp + rbp]
	cmp	rbx, rbp
	jbe	.label_1023
	mov	rbp, qword ptr [rsp + 8]
	mov	rdi, r12
	mov	rsi, rbx
	call	realloc
	mov	r13, rax
	test	r13, r13
	je	.label_1023
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
	je	.label_1026
	jmp	.label_1020
.label_1019:
	call	__errno_location
	mov	r15, rax
	nop	word ptr cs:[rax + rax]
.label_1021:
	cmp	dword ptr [r15], 7
	jne	.label_1018
	lea	rbp, [rbx + rbx]
	cmp	rbp, rbx
	jbe	.label_1017
	mov	rbx, qword ptr [rsp + 8]
	mov	rdi, r13
	mov	rsi, rbp
	call	realloc
	mov	r12, rax
	test	r12, r12
	je	.label_1017
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
	je	.label_1021
	jmp	.label_1025
.label_1023:
	mov	dword ptr [r15], 0xc
	jmp	.label_1016
.label_1017:
	mov	dword ptr [r15], 0xc
.label_1018:
	mov	r12, r13
.label_1016:
	mov	ebx, dword ptr [r15]
	mov	rdi, r12
	call	free
	mov	dword ptr [r15], ebx
.label_1024:
	xor	r12d, r12d
.label_1022:
	mov	rax, r12
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1014:
	cmp	eax, 0x16
	mov	rbx, rbp
	mov	r13, r12
	je	.label_1020
	jmp	.label_1016
	nop	
	.section	.text
	.align	16
	#Procedure 0x40ba40

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
	je	.label_1027
	mov	rdi, r14
	mov	rsi, r15
	call	c_strcasecmp
	test	eax, eax
	je	.label_1027
	mov	rdi, r15
	mov	rsi, r14
	call	iconv_open
	mov	r15, rax
	xor	r14d, r14d
	cmp	r15, -1
	je	.label_1031
	mov	rdi, rbx
	mov	rsi, r15
	call	str_cd_iconv
	mov	r14, rax
	test	r14, r14
	je	.label_1029
	mov	rdi, r15
	call	iconv_close
	test	eax, eax
	jns	.label_1031
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, r14
	call	free
	jmp	.label_1030
.label_1027:
	mov	rdi, rbx
	call	__strdup
	mov	r14, rax
	test	r14, r14
	jne	.label_1031
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_1028
.label_1029:
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, r15
	call	iconv_close
.label_1030:
	mov	dword ptr [rbx], ebp
.label_1028:
	xor	r14d, r14d
.label_1031:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40baf0

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
	#Procedure 0x40bb30

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_1032
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_1034
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_1032
.label_1034:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_1032
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_1033
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_1033:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_1032:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bbb0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1035
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_1035
	test	byte ptr [rbx + 1], 1
	je	.label_1035
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_1035:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bbf0

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
	jne	.label_1036
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_1036
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_1037
.label_1036:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_1037:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_1038
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_1038:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40bc60

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
	#Procedure 0x40bc80

	.globl mmalloca
	.type mmalloca, @function
mmalloca:
	xor	eax, eax
	cmp	rdi, -0x21
	ja	.label_1039
	push	rax
	add	rdi, 0x20
	call	malloc
	mov	rcx, rax
	xor	eax, eax
	test	rcx, rcx
	lea	rsp, [rsp + 8]
	je	.label_1039
	mov	rdx, rcx
	add	rdx, 0x10
	and	rdx, 0xffffffffffffffe0
	lea	rax, [rdx + 0x10]
	mov	esi, eax
	sub	esi, ecx
	mov	byte ptr [rdx + 0xf], sil
.label_1039:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40bcc0

	.globl freea
	.type freea, @function
freea:
	test	dil, 0xf
	jne	.label_1040
	test	dil, 0x10
	jne	.label_1041
	ret	
.label_1041:
	movzx	eax, byte ptr [rdi - 1]
	sub	rdi, rax
	jmp	free
.label_1040:
	push	rax
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x40bce0
	.globl mb_width_aux
	.type mb_width_aux, @function
mb_width_aux:

	push	rbx
	mov	ebx, edi
	call	wcwidth
	test	eax, eax
	jns	.label_1042
	mov	edi, ebx
	call	iswcntrl
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	sete	al
.label_1042:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40bd00
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
	jne	.label_1043
	lea	r15, [r14 + 0x18]
	mov	rdx, qword ptr [rbx + 8]
	mov	rdi, r15
	call	memcpy
	mov	rsi, r15
.label_1043:
	mov	qword ptr [r14], rsi
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [r14 + 8], rax
	mov	rax, qword ptr [rbx + 0x10]
	test	al, al
	mov	byte ptr [r14 + 0x10], al
	je	.label_1044
	shr	rax, 0x20
	mov	dword ptr [r14 + 0x14], eax
.label_1044:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40bd50
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
	#Procedure 0x40bd70

	.globl mbslen
	.type mbslen, @function
mbslen:
	push	r14
	push	rbx
	sub	rsp, 0x48
	mov	rbx, rdi
	call	__ctype_get_mb_cur_max
	cmp	rax, 2
	jb	.label_1048
	mov	qword ptr [rsp + 0x18], rbx
	mov	byte ptr [rsp + 8], 0
	mov	qword ptr [rsp + 0xc], 0
	mov	byte ptr [rsp + 0x14], 0
	lea	rdi, [rsp + 8]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x28]
	xor	ebx, ebx
	test	al, al
	je	.label_1047
	shr	rax, 0x20
	je	.label_1045
.label_1047:
	xor	ebx, ebx
	lea	r14, [rsp + 8]
	nop	
.label_1046:
	inc	rbx
	mov	rax, qword ptr [rsp + 0x20]
	add	qword ptr [rsp + 0x18], rax
	mov	byte ptr [rsp + 0x14], 0
	mov	rdi, r14
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x28]
	test	al, al
	je	.label_1046
	shr	rax, 0x20
	jne	.label_1046
.label_1045:
	mov	rax, rbx
	add	rsp, 0x48
	pop	rbx
	pop	r14
	ret	
.label_1048:
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
