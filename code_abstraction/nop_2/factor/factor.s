	.section	.text
	.align	16
	#Procedure 0x4021b0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_9
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1
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
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.23
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_8
	mov	esi, OFFSET FLAT:.str.25
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.26
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_8:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.27
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.5
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.28
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.5
	mov	ecx, OFFSET FLAT:.str.29
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_9:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str
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
	#Procedure 0x402350

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x28
	mov	r14, rsi
	mov	r15d, edi
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	edi, OFFSET FLAT:.str.7
	mov	esi, OFFSET FLAT:.str.8
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.7
	call	textdomain
	cmp	qword ptr [rip + lbuf.0],  0
	jne	.label_14
	mov	edi, 0x400
	call	xmalloc
	mov	qword ptr [rip + lbuf.0],  rax
	mov	qword ptr [rip + lbuf.1],  rax
.label_14:
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	edi, OFFSET FLAT:lbuf_flush
	call	atexit
	jmp	.label_15
	nop	dword ptr [rax + rax]
.label_21:
	mov	byte ptr [rip + dev_debug],  1
.label_15:
	mov	edx, OFFSET FLAT:.str_0
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, r15d
	mov	rsi, r14
	call	getopt_long
	cmp	eax, 0x7f
	jle	.label_20
	cmp	eax, 0x80
	je	.label_21
	jmp	.label_13
.label_20:
	cmp	eax, -1
	jne	.label_10
	movsxd	rax, dword ptr [rip + optind]
	cmp	eax, r15d
	jge	.label_12
	lea	rbp, [r14 + rax*8]
	sub	r15d, eax
	mov	r14b, 1
	nop	
.label_19:
	mov	rdi, qword ptr [rbp]
	call	print_factors
	mov	bl, al
	test	bl, bl
	je	.label_17
	mov	bl, r14b
.label_17:
	add	rbp, 8
	dec	r15d
	mov	r14b, bl
	jne	.label_19
	jmp	.label_22
.label_12:
	lea	rbx, [rsp + 0x18]
	mov	rdi, rbx
	call	init_tokenbuffer
	mov	rdi, qword ptr [rip + stdin]
	mov	esi, OFFSET FLAT:.str.35
	mov	edx, 3
	mov	rcx, rbx
	call	readtoken
	cmp	rax, -1
	mov	bl, 1
	mov	rdi, qword ptr [rsp + 0x20]
	je	.label_16
	lea	rbp, [rsp + 0x18]
	nop	dword ptr [rax + rax]
.label_18:
	call	print_factors
	and	bl, al
	mov	rdi, qword ptr [rip + stdin]
	mov	esi, OFFSET FLAT:.str.35
	mov	edx, 3
	mov	rcx, rbp
	call	readtoken
	mov	rdi, qword ptr [rsp + 0x20]
	cmp	rax, -1
	jne	.label_18
	test	bl, bl
	setne	bl
.label_16:
	call	free
.label_22:
	not	bl
	and	bl, 1
	movzx	eax, bl
	add	rsp, 0x28
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_10:
	cmp	eax, 0xffffff7d
	je	.label_11
	cmp	eax, 0xffffff7e
	jne	.label_13
	xor	edi, edi
	call	usage
.label_11:
	mov	r14, qword ptr [rip + stdout]
	mov	rbp, qword ptr [rip + Version]
	mov	edi, OFFSET FLAT:.str.11
	mov	esi, OFFSET FLAT:.str.12
	call	proper_name_utf8
	mov	rbx, rax
	mov	edi, OFFSET FLAT:.str.13
	mov	esi, OFFSET FLAT:.str.14
	call	proper_name_utf8
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], 0
	mov	esi, OFFSET FLAT:.str.5
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.10
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbp
	mov	r9, rbx
	call	version_etc
	xor	edi, edi
	call	exit
.label_13:
	mov	edi, 1
	call	usage
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402550

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
	jne	.label_23
	mov	rax, qword ptr [rip + lbuf.0]
	mov	qword ptr [rip + lbuf.1],  rax
	pop	rbx
	ret	
.label_23:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_1
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	esi, ebx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4025c0

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
	jmp	.label_42
	nop	word ptr [rax + rax]
.label_48:
	inc	rax
.label_42:
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x20
	je	.label_48
	movzx	ecx, cl
	cmp	ecx, 0x2b
	jne	.label_50
	inc	rax
.label_50:
	mov	ecx, 4
	mov	rdx, rax
	nop	
.label_27:
	movsx	esi, byte ptr [rdx]
	test	esi, esi
	je	.label_24
	inc	rdx
	add	esi, -0x30
	xor	ecx, ecx
	cmp	esi, 9
	jbe	.label_27
	jmp	.label_30
.label_24:
	xor	r15d, r15d
	test	ecx, ecx
	je	.label_31
.label_30:
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.37
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
	jmp	.label_38
.label_31:
	movabs	rcx, 0x1999999999999999
	xor	ebx, ebx
	nop	
.label_52:
	movsx	rdx, byte ptr [rax]
	test	rdx, rdx
	je	.label_53
	cmp	rbx, rcx
	ja	.label_28
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
	jae	.label_52
	jmp	.label_28
.label_53:
	movabs	rax, 0x7fffffffffffffff
	and	rax, rbx
	cmp	rax, rbx
	jne	.label_28
	movzx	eax, byte ptr [rip + dev_debug]
	and	eax, 1
	cmp	eax, 1
	jne	.label_43
	mov	rdi, qword ptr [rip + stderr]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.36
	xor	eax, eax
	call	__fprintf_chk
.label_43:
	mov	rdi, rbx
	mov	rsi, r15
	call	print_uintmaxes
	mov	rax, qword ptr [rip + lbuf.1]
	lea	rcx, [rax + 1]
	mov	qword ptr [rip + lbuf.1],  rcx
	mov	byte ptr [rax], 0x3a
	lea	rdx, [rsp]
	mov	rdi, rbx
	mov	rsi, r15
	call	factor
	mov	al, byte ptr [rsp + 0xfa]
	test	al, al
	je	.label_34
	xor	r15d, r15d
	lea	r14, [rsp + 0x100]
	nop	dword ptr [rax + rax]
.label_39:
	mov	r15d, r15d
	cmp	byte ptr [rsp + r15 + 0xe0], 0
	je	.label_25
	xor	ebp, ebp
	mov	rax, qword ptr [rip + lbuf.1]
	nop	word ptr [rax + rax]
.label_32:
	lea	rcx, [rax + 1]
	mov	qword ptr [rip + lbuf.1],  rcx
	mov	byte ptr [rax], 0x20
	mov	rdi, qword ptr [rsp + r15*8 + 0x10]
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
	movzx	ecx, byte ptr [rsp + r15 + 0xe0]
	cmp	ebp, ecx
	jb	.label_32
	mov	al, byte ptr [rsp + 0xfa]
.label_25:
	inc	r15d
	movzx	ecx, al
	cmp	r15d, ecx
	jb	.label_39
.label_34:
	cmp	qword ptr [rsp + 8], 0
	je	.label_37
	mov	rax, qword ptr [rip + lbuf.1]
	lea	rcx, [rax + 1]
	mov	qword ptr [rip + lbuf.1],  rcx
	mov	byte ptr [rax], 0x20
	mov	rsi, qword ptr [rsp]
	mov	rdi, qword ptr [rsp + 8]
	call	print_uintmaxes
.label_37:
	mov	rax, qword ptr [rip + lbuf.1]
	lea	rbx, [rax + 1]
	mov	qword ptr [rip + lbuf.1],  rbx
	mov	byte ptr [rax], 0xa
	sub	rbx, qword ptr [rip + lbuf.0]
	mov	eax, dword ptr [rip + lbuf_putc.line_buffered]
	cmp	eax, -1
	jne	.label_41
	xor	edi, edi
	call	isatty
	mov	dword ptr [rip + lbuf_putc.line_buffered],  eax
.label_41:
	test	eax, eax
	je	.label_46
	mov	rbx, qword ptr [rip + lbuf.1]
	mov	rsi, qword ptr [rip + lbuf.0]
	sub	rbx, rsi
	mov	edi, 1
	mov	rdx, rbx
	call	full_write
	cmp	rax, rbx
	jne	.label_29
	mov	rax, qword ptr [rip + lbuf.0]
	mov	qword ptr [rip + lbuf.1],  rax
	mov	r15b, 1
	jmp	.label_38
.label_28:
	movzx	eax, byte ptr [rip + dev_debug]
	and	eax, 1
	cmp	eax, 1
	jne	.label_51
	mov	rdi, qword ptr [rip + stderr]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.38
	xor	eax, eax
	call	__fprintf_chk
.label_51:
	lea	rbx, [rsp + 0x100]
	mov	edx, 0xa
	mov	rdi, rbx
	mov	rsi, r14
	call	__gmpz_init_set_str
	mov	edi, OFFSET FLAT:.str.39
	xor	eax, eax
	mov	rsi, rbx
	call	__gmp_printf
	lea	rsi, [rsp]
	mov	rdi, rbx
	call	mp_factor
	mov	rcx, qword ptr [rsp + 0x10]
	test	rcx, rcx
	je	.label_36
	mov	rax, qword ptr [rsp + 8]
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_33:
	mov	ebp, 1
	cmp	qword ptr [rax + rbx*8], 0
	je	.label_47
	nop	dword ptr [rax]
.label_35:
	mov	rsi, rbx
	shl	rsi, 4
	add	rsi, qword ptr [rsp]
	mov	edi, OFFSET FLAT:.str.40
	xor	eax, eax
	call	__gmp_printf
	mov	ecx, ebp
	mov	rax, qword ptr [rsp + 8]
	inc	ebp
	cmp	rcx, qword ptr [rax + rbx*8]
	jb	.label_35
	mov	rcx, qword ptr [rsp + 0x10]
.label_47:
	lea	ebx, [rbx + 1]
	cmp	rbx, rcx
	jb	.label_33
	test	rcx, rcx
	je	.label_36
	mov	ebx, 1
	xor	edi, edi
	nop	
.label_40:
	shl	rdi, 4
	add	rdi, qword ptr [rsp]
	call	__gmpz_clear
	mov	edi, ebx
	inc	ebx
	cmp	rdi, qword ptr [rsp + 0x10]
	jb	.label_40
.label_36:
	mov	rdi, qword ptr [rsp]
	call	free
	mov	rdi, qword ptr [rsp + 8]
	call	free
	lea	rdi, [rsp + 0x100]
	call	__gmpz_clear
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_49
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_44:
	mov	rdi, qword ptr [rip + stdout]
	call	fflush_unlocked
	mov	r15b, 1
.label_38:
	mov	al, r15b
	add	rsp, 0x120
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_49:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_44
.label_46:
	cmp	rbx, 0x200
	jb	.label_45
	mov	r14, qword ptr [rip + lbuf.1]
	mov	rsi, qword ptr [rip + lbuf.0]
	lea	rbx, [rsi + 0x201]
.label_26:
	movzx	eax, byte ptr [rbx - 2]
	dec	rbx
	cmp	eax, 0xa
	jne	.label_26
	mov	qword ptr [rip + lbuf.1],  rbx
	mov	r15, rbx
	sub	r15, rsi
	mov	edi, 1
	mov	rdx, r15
	call	full_write
	cmp	rax, r15
	jne	.label_29
	mov	r15, qword ptr [rip + lbuf.0]
	sub	r14, rbx
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r14
	call	memcpy
	add	r14, r15
	mov	qword ptr [rip + lbuf.1],  r14
.label_45:
	mov	r15b, 1
	jmp	.label_38
.label_29:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_1
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	esi, ebx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a60

	.globl mp_factor
	.type mp_factor, @function
mp_factor:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r14, rsi
	mov	r15, rdi
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	qword ptr [r14 + 0x10], 0
	cmp	dword ptr [r15 + 4], 0
	je	.label_55
	movzx	eax, byte ptr [rip + dev_debug]
	and	eax, 1
	cmp	eax, 1
	jne	.label_58
	mov	rdi, qword ptr [rip + stderr]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.54
	xor	eax, eax
	call	__fprintf_chk
.label_58:
	lea	rdi, [rsp]
	call	__gmpz_init
	xor	esi, esi
	mov	rdi, r15
	call	__gmpz_scan1
	mov	r12, rax
	mov	rdi, r15
	mov	rsi, r15
	mov	rdx, r12
	call	__gmpz_fdiv_q_2exp
	mov	r13d, 3
	mov	ebp, 1
	test	r12, r12
	je	.label_60
	lea	rbx, [rsp + 0x10]
	mov	r13d, 3
	mov	ebp, 1
	nop	dword ptr [rax]
.label_54:
	mov	esi, 2
	mov	rdi, rbx
	call	__gmpz_init_set_ui
	mov	rdi, r14
	mov	rsi, rbx
	call	mp_factor_insert
	mov	rdi, rbx
	call	__gmpz_clear
	dec	r12
	jne	.label_54
	nop	word ptr cs:[rax + rax]
.label_60:
	cmp	rbp, 0x29c
	ja	.label_61
	mov	rdi, r15
	mov	rsi, r13
	call	__gmpz_divisible_ui_p
	test	eax, eax
	je	.label_56
	lea	rbx, [rsp + 0x10]
	nop	dword ptr [rax]
.label_59:
	mov	rdi, r15
	mov	rsi, r15
	mov	rdx, r13
	call	__gmpz_tdiv_q_ui
	mov	rdi, rbx
	mov	rsi, r13
	call	__gmpz_init_set_ui
	mov	rdi, r14
	mov	rsi, rbx
	call	mp_factor_insert
	mov	rdi, rbx
	call	__gmpz_clear
	mov	rdi, r15
	mov	rsi, r13
	call	__gmpz_divisible_ui_p
	test	eax, eax
	jne	.label_59
.label_56:
	movzx	eax, byte ptr [rbp + primes_diff]
	inc	rbp
	add	r13, rax
	mov	rsi, r13
	imul	rsi, rsi
	mov	rdi, r15
	call	__gmpz_cmp_ui
	test	eax, eax
	jns	.label_60
.label_61:
	lea	rdi, [rsp]
	call	__gmpz_clear
	mov	esi, 1
	mov	rdi, r15
	call	__gmpz_cmp_ui
	test	eax, eax
	je	.label_55
	movzx	eax, byte ptr [rip + dev_debug]
	and	eax, 1
	cmp	eax, 1
	jne	.label_57
	mov	rdi, qword ptr [rip + stderr]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.53
	xor	eax, eax
	call	__fprintf_chk
.label_57:
	mov	rdi, r15
	call	mp_prime_p
	test	al, al
	je	.label_62
	mov	rdi, r14
	mov	rsi, r15
	call	mp_factor_insert
	jmp	.label_55
.label_62:
	mov	esi, 1
	mov	rdi, r15
	mov	rdx, r14
	call	mp_factor_using_pollard_rho
.label_55:
	add	rsp, 0x28
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
	#Procedure 0x402c30

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
	je	.label_68
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
.label_67:
	shrd	rcx, rdx, 1
	shr	rdx, 1
	add	rsi, rsi
	cmp	rdi, rdx
	ja	.label_63
	jne	.label_64
	cmp	rbx, rcx
	jb	.label_64
.label_63:
	or	rsi, 1
	mov	qword ptr [rsp + 8], rdx
	mov	qword ptr [rsp], rcx
	sub	rbx, qword ptr [rsp]
	sbb	rdi, qword ptr [rsp + 8]
.label_64:
	inc	eax
	jne	.label_67
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
	ja	.label_66
	mov	r13, -0xb
	sub	r13, r12
	add	r13, r14
	mov	esi, 0x30
	mov	rdi, r15
	mov	rdx, r13
	call	memset
	add	r15, r13
	mov	qword ptr [rip + lbuf.1],  r15
.label_66:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	add	r15, rbx
	mov	qword ptr [rip + lbuf.1],  r15
	jmp	.label_65
.label_68:
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
.label_65:
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
	#Procedure 0x402d80

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
	mov	r8, rdx
	mov	r13, rsi
	mov	rbx, rdi
	mov	byte ptr [r8 + 0xfa], 0
	mov	qword ptr [r8 + 8], 0
	test	rbx, rbx
	jne	.label_102
	cmp	r13, 2
	jb	.label_112
.label_102:
	test	r13b, 1
	jne	.label_113
	test	r13, r13
	je	.label_97
	mov	qword ptr [rsp + 0x40], r13
	bsf	rcx, qword ptr [rsp + 0x40]
	shrd	r13, rbx, cl
	shr	rbx, cl
	jmp	.label_114
.label_97:
	mov	qword ptr [rsp + 0x38], rbx
	bsf	rcx, qword ptr [rsp + 0x38]
	shr	rbx, cl
	add	ecx, 0x40
	mov	r13, rbx
	xor	ebx, ebx
.label_114:
	mov	qword ptr [r8 + 0x10], 2
	mov	byte ptr [r8 + 0xe0], cl
	mov	byte ptr [r8 + 0xfa], 1
.label_113:
	xor	esi, esi
	mov	r12d, 3
	test	rbx, rbx
	je	.label_71
	lea	r9, [r8 + 0xe0]
	lea	rax, [r8 + 0x10]
	mov	qword ptr [rsp + 0x20], rax
	mov	r12d, 3
	xor	esi, esi
	nop	dword ptr [rax + rax]
.label_85:
	mov	rdi, rsi
	shl	rdi, 4
	mov	r11, qword ptr [rdi + primes_dtab]
	mov	rcx, r11
	imul	rcx, r13
	mov	qword ptr [rsp + 0x30], r12
	mov	rax, rcx
	mul	qword ptr [rsp + 0x30]
	cmp	rbx, rdx
	jb	.label_82
	mov	r10, qword ptr [rdi + label_77]
	mov	rbp, rbx
	mov	rdi, r13
.label_128:
	mov	r13, rdi
	mov	rbx, rbp
	mov	rdi, rcx
	sub	rbp, rdx
	imul	rbp, r11
	cmp	rbp, r10
	ja	.label_82
	movzx	r14d, byte ptr [r8 + 0xfa]
	lea	edx, [r14 - 1]
	test	r14, r14
	mov	ecx, edx
	je	.label_103
	lea	rax, [r14 - 1]
	nop	dword ptr [rax + rax]
.label_109:
	cmp	qword ptr [r8 + rax*8 + 0x10], r12
	jbe	.label_108
	lea	rcx, [rax - 1]
	inc	rax
	cmp	rax, 1
	mov	rax, rcx
	jg	.label_109
	jmp	.label_103
.label_108:
	movsxd	rbx, eax
	cmp	qword ptr [r8 + rbx*8 + 0x10], r12
	mov	ecx, eax
	jne	.label_103
	inc	byte ptr [r8 + rbx + 0xe0]
	jmp	.label_115
.label_103:
	cmp	edx, ecx
	jle	.label_94
	lea	eax, [r14 + 3]
	sub	eax, ecx
	lea	r15d, [r14 - 2]
	sub	r15d, ecx
	test	al, 3
	je	.label_121
	mov	qword ptr [rsp + 0x18], r8
	lea	rax, [r9 + r14]
	mov	qword ptr [rsp + 0x10], r9
	mov	rdx, qword ptr [rsp + 0x20]
	lea	rdx, [rdx + r14*8]
	mov	rbx, r14
	dec	rbx
	mov	qword ptr [rsp + 8], rbx
	lea	r13d, [r14 + 3]
	sub	r13d, ecx
	and	r13d, 3
	neg	r13d
	xor	r9d, r9d
	nop	
.label_122:
	mov	r8, r9
	mov	rbx, qword ptr [rdx + r8*8 - 8]
	mov	qword ptr [rdx + r8*8], rbx
	mov	bl, byte ptr [rax + r8 - 1]
	mov	byte ptr [rax + r8], bl
	lea	r9, [r8 - 1]
	cmp	r13d, r9d
	jne	.label_122
	mov	rax, qword ptr [rsp + 8]
	lea	rdx, [rax + r8 - 1]
	lea	rax, [rdx + 1]
	mov	r8, qword ptr [rsp + 0x18]
	mov	r9, qword ptr [rsp + 0x10]
	jmp	.label_87
.label_121:
	mov	rax, r14
.label_87:
	cmp	r15d, 2
	jbe	.label_94
	nop	word ptr cs:[rax + rax]
.label_83:
	mov	rbx, qword ptr [r8 + rax*8 + 8]
	mov	qword ptr [r8 + rax*8 + 0x10], rbx
	mov	bl, byte ptr [r8 + rax + 0xdf]
	mov	byte ptr [r8 + rax + 0xe0], bl
	mov	rbx, qword ptr [r8 + rax*8]
	mov	qword ptr [r8 + rax*8 + 8], rbx
	mov	bl, byte ptr [r8 + rax + 0xde]
	mov	byte ptr [r8 + rax + 0xdf], bl
	mov	rbx, qword ptr [r8 + rax*8 - 8]
	mov	qword ptr [r8 + rax*8], rbx
	mov	bl, byte ptr [r8 + rax + 0xdd]
	mov	byte ptr [r8 + rax + 0xde], bl
	mov	rbx, qword ptr [r8 + rax*8 - 0x10]
	mov	qword ptr [r8 + rax*8 - 8], rbx
	mov	bl, byte ptr [r8 + rax + 0xdc]
	mov	byte ptr [r8 + rax + 0xdd], bl
	lea	rax, [rax - 4]
	add	edx, -4
	cmp	edx, ecx
	jg	.label_83
.label_94:
	movsxd	rax, ecx
	mov	qword ptr [r8 + rax*8 + 0x18], r12
	mov	byte ptr [r8 + rax + 0xe1], 1
	inc	r14b
	mov	byte ptr [r8 + 0xfa], r14b
.label_115:
	mov	rcx, rdi
	imul	rcx, r11
	mov	qword ptr [rsp + 0x28], r12
	mov	rax, rcx
	mul	qword ptr [rsp + 0x28]
	cmp	rbp, rdx
	mov	rbx, rbp
	mov	r13, rdi
	jae	.label_128
	nop	
.label_82:
	movzx	eax, byte ptr [rsi + label_98]
	inc	rsi
	add	r12, rax
	cmp	rsi, 0x29b
	ja	.label_99
	test	rbx, rbx
	jne	.label_85
.label_99:
	cmp	esi, 0x29b
	ja	.label_88
	jmp	.label_90
.label_71:
	xor	ebx, ebx
.label_90:
	mov	qword ptr [rsp + 0x10], rbx
	lea	rax, [r8 + 0xe0]
	mov	qword ptr [rsp + 8], rax
	lea	rax, [r8 + 0x10]
	mov	qword ptr [rsp], rax
	jmp	.label_91
.label_118:
	lea	eax, [rdx + 1]
	mov	dword ptr [rsp + 0x18], eax
.label_110:
	mov	qword ptr [rsp + 0x20], rdx
	mov	ecx, 1
	mov	rdi, r8
	mov	rsi, r12
	mov	edx, dword ptr [rsp + 0x18]
	mov	r13, r8
	call	factor_insert_refind
	mov	rdx, qword ptr [rsp + 0x20]
	mov	r8, r13
	mov	r13, r15
	imul	r15, r14
	cmp	r15, rbx
	ja	.label_105
	jmp	.label_110
.label_124:
	lea	eax, [rdx + 1]
	mov	dword ptr [rsp + 0x18], eax
.label_123:
	mov	qword ptr [rsp + 0x20], rdx
	mov	ecx, 2
	mov	rdi, r8
	mov	rsi, r12
	mov	edx, dword ptr [rsp + 0x18]
	mov	r13, r8
	call	factor_insert_refind
	mov	rdx, qword ptr [rsp + 0x20]
	mov	r8, r13
	mov	r13, rbx
	imul	rbx, r15
	cmp	rbx, r14
	ja	.label_117
	jmp	.label_123
.label_69:
	lea	eax, [rdx + 1]
	mov	dword ptr [rsp + 0x18], eax
.label_80:
	mov	qword ptr [rsp + 0x20], rdx
	mov	ecx, 3
	mov	rdi, r8
	mov	rsi, r12
	mov	edx, dword ptr [rsp + 0x18]
	mov	r13, r8
	call	factor_insert_refind
	mov	rdx, qword ptr [rsp + 0x20]
	mov	r8, r13
	mov	r13, rbx
	imul	rbx, r15
	cmp	rbx, r14
	ja	.label_72
	jmp	.label_80
.label_75:
	lea	eax, [rdx + 1]
	mov	dword ptr [rsp + 0x18], eax
.label_95:
	mov	qword ptr [rsp + 0x20], rdx
	mov	ecx, 4
	mov	rdi, r8
	mov	rsi, r12
	mov	edx, dword ptr [rsp + 0x18]
	mov	r13, r8
	call	factor_insert_refind
	mov	rdx, qword ptr [rsp + 0x20]
	mov	r8, r13
	mov	r13, rbx
	imul	rbx, r15
	cmp	rbx, r14
	ja	.label_111
	jmp	.label_95
.label_79:
	lea	eax, [rdx + 1]
	mov	dword ptr [rsp + 0x18], eax
.label_107:
	mov	qword ptr [rsp + 0x20], rdx
	mov	ecx, 5
	mov	rdi, r8
	mov	rsi, r12
	mov	edx, dword ptr [rsp + 0x18]
	mov	r13, r8
	call	factor_insert_refind
	mov	rdx, qword ptr [rsp + 0x20]
	mov	r8, r13
	mov	r13, rbx
	imul	rbx, r15
	cmp	rbx, r14
	ja	.label_104
	jmp	.label_107
.label_89:
	lea	eax, [rdx + 1]
	mov	dword ptr [rsp + 0x18], eax
.label_120:
	mov	qword ptr [rsp + 0x20], rdx
	mov	ecx, 6
	mov	rdi, r8
	mov	rsi, r12
	mov	edx, dword ptr [rsp + 0x18]
	mov	r13, r8
	call	factor_insert_refind
	mov	rdx, qword ptr [rsp + 0x20]
	mov	r8, r13
	mov	r13, rbx
	imul	rbx, r15
	cmp	rbx, r14
	ja	.label_84
	jmp	.label_120
.label_96:
	lea	eax, [rdx + 1]
	mov	dword ptr [rsp + 0x18], eax
.label_74:
	mov	qword ptr [rsp + 0x20], rdx
	mov	r13, rbx
	mov	ecx, 7
	mov	rdi, r8
	mov	rsi, r12
	mov	edx, dword ptr [rsp + 0x18]
	mov	r14, r8
	call	factor_insert_refind
	mov	rdx, qword ptr [rsp + 0x20]
	mov	r8, r14
	imul	rbx, r15
	cmp	rbx, rbp
	ja	.label_70
	jmp	.label_74
	nop	dword ptr [rax + rax]
.label_91:
	mov	edx, esi
	mov	rax, rdx
	shl	rax, 4
	lea	rbp, qword ptr [rax + primes_dtab]
	mov	r11, qword ptr [rax + primes_dtab]
	mov	rcx, r11
	imul	rcx, r13
	mov	r14, qword ptr [rax + label_77]
	jmp	.label_78
.label_106:
	mov	r13, rcx
	imul	rcx, r11
	nop	
.label_78:
	cmp	rcx, r14
	ja	.label_92
	movzx	r9d, byte ptr [r8 + 0xfa]
	lea	edi, [r9 - 1]
	test	r9, r9
	mov	ebx, edi
	je	.label_93
	lea	rax, [r9 - 1]
.label_100:
	cmp	qword ptr [r8 + rax*8 + 0x10], r12
	jbe	.label_119
	lea	rbx, [rax - 1]
	inc	rax
	cmp	rax, 1
	mov	rax, rbx
	jg	.label_100
	jmp	.label_93
.label_119:
	movsxd	rsi, eax
	cmp	qword ptr [r8 + rsi*8 + 0x10], r12
	mov	ebx, eax
	jne	.label_93
	inc	byte ptr [r8 + rsi + 0xe0]
	jmp	.label_106
.label_93:
	cmp	edi, ebx
	jle	.label_76
	mov	r13, r8
	lea	eax, [r9 + 3]
	sub	eax, ebx
	lea	r8d, [r9 - 2]
	sub	r8d, ebx
	test	al, 3
	je	.label_81
	mov	qword ptr [rsp + 0x20], rdx
	mov	rax, qword ptr [rsp + 8]
	lea	rsi, [rax + r9]
	mov	rax, qword ptr [rsp]
	lea	rdi, [rax + r9*8]
	mov	r10, r9
	dec	r10
	lea	r15d, [r9 + 3]
	sub	r15d, ebx
	and	r15d, 3
	neg	r15d
	xor	eax, eax
	nop	word ptr [rax + rax]
.label_127:
	mov	rdx, rax
	mov	rax, qword ptr [rdi + rdx*8 - 8]
	mov	qword ptr [rdi + rdx*8], rax
	mov	al, byte ptr [rsi + rdx - 1]
	mov	byte ptr [rsi + rdx], al
	lea	rax, [rdx - 1]
	cmp	r15d, eax
	jne	.label_127
	lea	rdi, [r10 + rdx - 1]
	lea	rsi, [rdi + 1]
	mov	rdx, qword ptr [rsp + 0x20]
	jmp	.label_73
.label_81:
	mov	rsi, r9
.label_73:
	cmp	r8d, 2
	mov	r8, r13
	jbe	.label_76
	nop	dword ptr [rax + rax]
.label_125:
	mov	rax, qword ptr [r8 + rsi*8 + 8]
	mov	qword ptr [r8 + rsi*8 + 0x10], rax
	mov	al, byte ptr [r8 + rsi + 0xdf]
	mov	byte ptr [r8 + rsi + 0xe0], al
	mov	rax, qword ptr [r8 + rsi*8]
	mov	qword ptr [r8 + rsi*8 + 8], rax
	mov	al, byte ptr [r8 + rsi + 0xde]
	mov	byte ptr [r8 + rsi + 0xdf], al
	mov	rax, qword ptr [r8 + rsi*8 - 8]
	mov	qword ptr [r8 + rsi*8], rax
	mov	al, byte ptr [r8 + rsi + 0xdd]
	mov	byte ptr [r8 + rsi + 0xde], al
	mov	rax, qword ptr [r8 + rsi*8 - 0x10]
	mov	qword ptr [r8 + rsi*8 - 8], rax
	mov	al, byte ptr [r8 + rsi + 0xdc]
	mov	byte ptr [r8 + rsi + 0xdd], al
	lea	rsi, [rsi - 4]
	add	edi, -4
	cmp	edi, ebx
	jg	.label_125
.label_76:
	movsxd	rax, ebx
	mov	qword ptr [r8 + rax*8 + 0x18], r12
	mov	byte ptr [r8 + rax + 0xe1], 1
	inc	r9b
	mov	byte ptr [r8 + 0xfa], r9b
	jmp	.label_106
	nop	word ptr cs:[rax + rax]
.label_92:
	mov	r14, qword ptr [rbp + 0x10]
	mov	rbx, qword ptr [rbp + 0x18]
	mov	r15, r14
	imul	r15, r13
	cmp	r15, rbx
	jbe	.label_118
.label_105:
	mov	r15, qword ptr [rbp + 0x20]
	mov	r14, qword ptr [rbp + 0x28]
	mov	rbx, r15
	imul	rbx, r13
	cmp	rbx, r14
	jbe	.label_124
.label_117:
	mov	r15, qword ptr [rbp + 0x30]
	mov	r14, qword ptr [rbp + 0x38]
	mov	rbx, r15
	imul	rbx, r13
	cmp	rbx, r14
	jbe	.label_69
.label_72:
	mov	r15, qword ptr [rbp + 0x40]
	mov	r14, qword ptr [rbp + 0x48]
	mov	rbx, r15
	imul	rbx, r13
	cmp	rbx, r14
	jbe	.label_75
.label_111:
	mov	r15, qword ptr [rbp + 0x50]
	mov	r14, qword ptr [rbp + 0x58]
	mov	rbx, r15
	imul	rbx, r13
	cmp	rbx, r14
	jbe	.label_79
.label_104:
	mov	r15, qword ptr [rbp + 0x60]
	mov	r14, qword ptr [rbp + 0x68]
	mov	rbx, r15
	imul	rbx, r13
	cmp	rbx, r14
	jbe	.label_89
.label_84:
	mov	r15, qword ptr [rbp + 0x70]
	mov	rbp, qword ptr [rbp + 0x78]
	mov	rbx, r15
	imul	rbx, r13
	cmp	rbx, rbp
	jbe	.label_96
.label_70:
	movzx	eax, byte ptr [rdx + primes_diff8]
	lea	esi, [rdx + 8]
	cmp	esi, 0x29b
	ja	.label_101
	add	r12, rax
	mov	rax, r12
	imul	rax, rax
	cmp	rax, r13
	jbe	.label_91
.label_101:
	mov	rbx, qword ptr [rsp + 0x10]
.label_88:
	test	rbx, rbx
	jne	.label_86
	cmp	r13, 2
	jae	.label_86
.label_112:
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_86:
	mov	rbp, r8
	mov	rdi, rbx
	mov	rsi, r13
	call	prime2_p
	test	al, al
	je	.label_116
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, r13
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	factor_insert_large
.label_116:
	test	rbx, rbx
	mov	rcx, rbp
	je	.label_126
	mov	edx, 1
	mov	rdi, rbx
	mov	rsi, r13
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	factor_using_pollard_rho2
.label_126:
	mov	esi, 1
	mov	rdi, r13
	mov	rdx, rcx
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	factor_using_pollard_rho
	nop	
	.section	.text
	.align	16
	#Procedure 0x403530

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
	je	.label_141
	cmp	r14, 1
	mov	rbp, rbx
	sbb	rbp, 0
	mov	r15, r14
	dec	r15
	je	.label_140
	mov	qword ptr [rsp + 0x98], r15
	bsf	rcx, qword ptr [rsp + 0x98]
	mov	dword ptr [rsp + 0xc], ecx
	mov	rax, r15
	shrd	rax, rbp, cl
	mov	rdx, rbp
	shr	rdx, cl
	jmp	.label_143
.label_141:
	mov	rdi, r14
	call	prime_p
	jmp	.label_129
.label_140:
	mov	qword ptr [rsp + 0x90], rbp
	bsf	rcx, qword ptr [rsp + 0x90]
	mov	rax, rbp
	shr	rax, cl
	add	ecx, 0x40
	mov	dword ptr [rsp + 0xc], ecx
	xor	edx, edx
.label_143:
	mov	qword ptr [rsp + 0x1f0], rax
	mov	qword ptr [rsp + 0x1f8], rdx
	mov	rax, r14
	shr	rax, 1
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
	mov	qword ptr [rsp + 0x40], rdx
	mov	rcx, rdx
	imul	rcx, r14
	sub	rax, rcx
	cmp	rbx, 1
	seta	cl
	movzx	r13d, cl
	mov	edx, 0x3f
	mov	ecx, 0x7f
	cmova	rcx, rdx
	mov	r12, r13
	xor	r12, 1
	not	rcx
	nop	dword ptr [rax]
.label_145:
	shld	r13, r12, 1
	add	r12, r12
	cmp	r13, rbx
	ja	.label_136
	cmp	r12, r14
	jb	.label_138
	cmp	r13, rbx
	jne	.label_138
.label_136:
	mov	qword ptr [rsp + 0x88], rbx
	mov	qword ptr [rsp + 0x80], r14
	sub	r12, qword ptr [rsp + 0x80]
	sbb	r13, qword ptr [rsp + 0x88]
.label_138:
	inc	rcx
	jne	.label_145
	mov	rcx, qword ptr [rsp + 0x40]
	imul	rcx, rax
	mov	qword ptr [rsp + 0x40], rcx
	mov	qword ptr [rsp + 0x1d8], r13
	mov	qword ptr [rsp + 0x1d0], r12
	mov	qword ptr [rsp + 0x78], r13
	mov	qword ptr [rsp + 0x70], r12
	mov	rax, r13
	mov	rcx, r12
	add	rcx, qword ptr [rsp + 0x70]
	adc	rax, qword ptr [rsp + 0x78]
	mov	qword ptr [rsp + 0x1e8], rax
	mov	qword ptr [rsp + 0x1e0], rcx
	cmp	rax, rbx
	ja	.label_146
	jne	.label_137
	cmp	rcx, r14
	jb	.label_137
.label_146:
	mov	qword ptr [rsp + 0x68], rbx
	mov	qword ptr [rsp + 0x60], r14
	sub	rcx, qword ptr [rsp + 0x60]
	sbb	rax, qword ptr [rsp + 0x68]
	mov	qword ptr [rsp + 0x1e8], rax
	mov	qword ptr [rsp + 0x1e0], rcx
.label_137:
	mov	qword ptr [rsp + 0x1c0], r14
	mov	qword ptr [rsp + 0x1c8], rbx
	lea	rdi, [rsp + 0x1c0]
	lea	rdx, [rsp + 0x1e0]
	lea	rcx, [rsp + 0x1f0]
	lea	r9, [rsp + 0x1d0]
	mov	rsi, qword ptr [rsp + 0x40]
	mov	r8d, dword ptr [rsp + 0xc]
	call	millerrabin2
	test	al, al
	je	.label_133
	lea	rdx, [rsp + 0xc0]
	mov	rdi, rbp
	mov	rsi, r15
	call	factor
	mov	rax, rbp
	shld	rax, r15, 0x3f
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x38], r15
	mov	rax, rbp
	mov	qword ptr [rsp + 0x30], rbp
	shr	rax, 1
	mov	qword ptr [rsp + 0x20], rax
	mov	ecx, 2
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	nop	dword ptr [rax]
.label_142:
	mov	r15b, 1
	cmp	qword ptr [rsp + 0xc8], 0
	je	.label_148
	mov	qword ptr [rsp + 0x10], rcx
	mov	rax, qword ptr [rsp + 0xc0]
	mov	rcx, rax
	shr	rcx, 1
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
	imul	rcx, qword ptr [rsp + 0x38]
	mov	qword ptr [rsp + 0xb0], rcx
	mov	qword ptr [rsp + 0xb8], 0
	lea	rdi, [rsp + 0xa8]
	lea	rsi, [rsp + 0x1e0]
	lea	rdx, [rsp + 0xb0]
	lea	rcx, [rsp + 0x1c0]
	mov	r8, qword ptr [rsp + 0x40]
	lea	r9, [rsp + 0x1d0]
	call	powm2
	mov	qword ptr [rsp + 0xa0], rax
	cmp	rax, r12
	jne	.label_134
	cmp	qword ptr [rsp + 0xa8], r13
	setne	r15b
	jmp	.label_134
	nop	dword ptr [rax]
.label_148:
	mov	qword ptr [rsp + 0x10], rcx
.label_134:
	test	r15b, r15b
	je	.label_139
	mov	al, byte ptr [rsp + 0x1ba]
	xor	ebp, ebp
	test	al, al
	je	.label_139
	nop	
.label_131:
	mov	eax, ebp
	mov	rax, qword ptr [rsp + rax*8 + 0xd0]
	cmp	rax, 2
	jne	.label_144
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0xb0], rax
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 0xb8], rax
	jmp	.label_147
	nop	
.label_144:
	mov	rcx, rax
	shr	rcx, 1
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
	mov	rdx, qword ptr [rsp + 0x38]
	imul	rcx, rdx
	mov	rdi, qword ptr [rsp + 0x30]
	cmp	rdi, rax
	jae	.label_135
	mov	qword ptr [rsp + 0xb0], rcx
	mov	qword ptr [rsp + 0xb8], 0
	jmp	.label_147
	nop	word ptr cs:[rax + rax]
.label_135:
	mov	qword ptr [rsp + 0x58], rax
	mov	rax, rcx
	mul	qword ptr [rsp + 0x58]
	mov	rax, rdi
	sub	rax, rdx
	imul	rax, rsi
	mov	qword ptr [rsp + 0xb8], rax
	mov	qword ptr [rsp + 0xb0], rcx
.label_147:
	lea	rdi, [rsp + 0xa8]
	lea	rsi, [rsp + 0x1e0]
	lea	rdx, [rsp + 0xb0]
	lea	rcx, [rsp + 0x1c0]
	mov	r8, qword ptr [rsp + 0x40]
	lea	r9, [rsp + 0x1d0]
	call	powm2
	mov	qword ptr [rsp + 0xa0], rax
	cmp	qword ptr [rsp + 0xa8], r13
	setne	cl
	cmp	rax, r12
	setne	r15b
	or	r15b, cl
	movzx	eax, r15b
	cmp	eax, 1
	jne	.label_139
	inc	ebp
	movzx	eax, byte ptr [rsp + 0x1ba]
	cmp	ebp, eax
	jb	.label_131
.label_139:
	mov	al, 1
	test	r15b, r15b
	jne	.label_129
	mov	rbp, qword ptr [rsp + 0x18]
	movzx	eax, byte ptr [rbp + primes_diff]
	mov	rdx, qword ptr [rsp + 0x10]
	add	rdx, rax
	cmp	rdx, rbx
	mov	rax, rdx
	mov	ecx, 0
	cmovb	rax, rcx
	mov	ecx, 0
	cmovb	rcx, rdx
	mov	r15, rdx
	mov	edx, 0x7f
	mov	esi, 0x3f
	cmovb	rdx, rsi
	not	rdx
	nop	dword ptr [rax]
.label_132:
	shld	rcx, rax, 1
	add	rax, rax
	cmp	rcx, rbx
	ja	.label_149
	cmp	rax, r14
	jb	.label_130
	cmp	rcx, rbx
	jne	.label_130
.label_149:
	mov	qword ptr [rsp + 0x50], rbx
	mov	qword ptr [rsp + 0x48], r14
	sub	rax, qword ptr [rsp + 0x48]
	sbb	rcx, qword ptr [rsp + 0x50]
.label_130:
	inc	rdx
	jne	.label_132
	mov	qword ptr [rsp + 0x1e8], rcx
	mov	qword ptr [rsp + 0x1e0], rax
	lea	rdi, [rsp + 0x1c0]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rdx, [rsp + 0x1e0]
	lea	rcx, [rsp + 0x1f0]
	mov	r8d, dword ptr [rsp + 0xc]
	lea	r9, [rsp + 0x1d0]
	call	millerrabin2
	test	al, al
	je	.label_150
	inc	rbp
	mov	qword ptr [rsp + 0x18], rbp
	cmp	rbp, 0x29c
	mov	rcx, r15
	jb	.label_142
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.43
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	call	abort
.label_133:
	xor	eax, eax
	jmp	.label_129
.label_150:
	xor	eax, eax
.label_129:
	add	rsp, 0x208
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ac0

	.globl factor_insert_large
	.type factor_insert_large, @function
factor_insert_large:
	push	r14
	push	rbx
	push	rax
	test	rsi, rsi
	je	.label_151
	cmp	qword ptr [rdi + 8], 0
	jne	.label_155
	mov	qword ptr [rdi], rdx
	mov	qword ptr [rdi + 8], rsi
	jmp	.label_157
.label_151:
	movzx	r9d, byte ptr [rdi + 0xfa]
	lea	esi, [r9 - 1]
	test	r9, r9
	mov	ecx, esi
	je	.label_158
	lea	rax, [r9 - 1]
	nop	word ptr [rax + rax]
.label_154:
	cmp	qword ptr [rdi + rax*8 + 0x10], rdx
	jbe	.label_152
	lea	rcx, [rax - 1]
	inc	rax
	cmp	rax, 1
	mov	rax, rcx
	jg	.label_154
	jmp	.label_158
.label_152:
	movsxd	rbx, eax
	cmp	qword ptr [rdi + rbx*8 + 0x10], rdx
	mov	ecx, eax
	jne	.label_158
	inc	byte ptr [rdi + rbx + 0xe0]
	jmp	.label_157
.label_158:
	cmp	esi, ecx
	jle	.label_159
	lea	eax, [r9 + 3]
	sub	eax, ecx
	lea	r8d, [r9 - 2]
	sub	r8d, ecx
	test	al, 3
	je	.label_161
	lea	r14, [rdi + r9 + 0xe0]
	lea	rsi, [rdi + r9*8 + 0x10]
	mov	r10, r9
	dec	r10
	lea	r11d, [r9 + 3]
	sub	r11d, ecx
	and	r11d, 3
	neg	r11d
	xor	eax, eax
	nop	dword ptr [rax]
.label_160:
	mov	rbx, rax
	mov	rax, qword ptr [rsi + rbx*8 - 8]
	mov	qword ptr [rsi + rbx*8], rax
	mov	al, byte ptr [r14 + rbx - 1]
	mov	byte ptr [r14 + rbx], al
	lea	rax, [rbx - 1]
	cmp	r11d, eax
	jne	.label_160
	lea	rsi, [r10 + rbx - 1]
	lea	rax, [rsi + 1]
	jmp	.label_156
.label_161:
	mov	rax, r9
.label_156:
	cmp	r8d, 3
	jb	.label_159
	nop	word ptr cs:[rax + rax]
.label_153:
	mov	rbx, qword ptr [rdi + rax*8 + 8]
	mov	qword ptr [rdi + rax*8 + 0x10], rbx
	mov	bl, byte ptr [rdi + rax + 0xdf]
	mov	byte ptr [rdi + rax + 0xe0], bl
	mov	rbx, qword ptr [rdi + rax*8]
	mov	qword ptr [rdi + rax*8 + 8], rbx
	mov	bl, byte ptr [rdi + rax + 0xde]
	mov	byte ptr [rdi + rax + 0xdf], bl
	mov	rbx, qword ptr [rdi + rax*8 - 8]
	mov	qword ptr [rdi + rax*8], rbx
	mov	bl, byte ptr [rdi + rax + 0xdd]
	mov	byte ptr [rdi + rax + 0xde], bl
	mov	rbx, qword ptr [rdi + rax*8 - 0x10]
	mov	qword ptr [rdi + rax*8 - 8], rbx
	mov	bl, byte ptr [rdi + rax + 0xdc]
	mov	byte ptr [rdi + rax + 0xdd], bl
	lea	rax, [rax - 4]
	add	esi, -4
	cmp	esi, ecx
	jg	.label_153
.label_159:
	movsxd	rax, ecx
	mov	qword ptr [rdi + rax*8 + 0x18], rdx
	mov	byte ptr [rdi + rax + 0xe1], 1
	inc	r9b
	mov	byte ptr [rdi + 0xfa], r9b
.label_157:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_155:
	mov	edi, OFFSET FLAT:.str.49
	mov	esi, OFFSET FLAT:.str.42
	mov	edx, 0x235
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.factor_insert_large
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403c60

	.globl factor_using_pollard_rho
	.type factor_using_pollard_rho, @function
factor_using_pollard_rho:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	qword ptr [rsp + 0x30], rdx
	mov	qword ptr [rsp + 0x28], rsi
	mov	rbx, rdi
	cmp	rbx, 2
	jb	.label_195
	lea	rax, [rdx + 0xe0]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rdx + 0x10]
	mov	qword ptr [rsp + 8], rax
.label_188:
	mov	eax, 0xffffffc0
	xor	r12d, r12d
	mov	ecx, 1
	xor	edx, edx
	mov	rsi, rbx
	nop	
.label_197:
	shrd	rdx, rsi, 1
	shr	rsi, 1
	cmp	rcx, rsi
	ja	.label_175
	jne	.label_186
	cmp	r12, rdx
	jb	.label_186
.label_175:
	mov	qword ptr [rsp + 0x90], rsi
	mov	qword ptr [rsp + 0x88], rdx
	sub	r12, qword ptr [rsp + 0x88]
	sbb	rcx, qword ptr [rsp + 0x90]
.label_186:
	inc	eax
	jne	.label_197
	mov	rax, rbx
	sub	rax, r12
	mov	rbp, r12
	sub	rbp, rax
	mov	eax, 0
	cmovb	rax, rbx
	cmp	rbx, 1
	je	.label_184
	add	rbp, rax
	mov	rax, qword ptr [rsp + 0x28]
	inc	rax
	mov	qword ptr [rsp + 0x20], rax
	mov	rcx, rbp
	mov	r15, rbp
	mov	r13d, 1
	mov	esi, 1
	nop	dword ptr [rax + rax]
.label_162:
	mov	r14, rcx
	mov	r10, rbx
	sub	r10, qword ptr [rsp + 0x28]
	jbe	.label_167
	mov	rax, rbx
	shr	rax, 1
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
	jmp	.label_182
	nop	word ptr cs:[rax + rax]
.label_169:
	mov	r13, r11
	mov	r14, rbp
	mov	rbp, r15
.label_182:
	mov	r11, r9
	mov	r9, r14
	nop	
.label_177:
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
	sub	rax, r10
	mov	ebp, 0
	cmovb	rbp, rbx
	add	rbp, rax
	mov	rax, r9
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
	jne	.label_183
	test	r8, r8
	mov	rax, rbx
	cmove	rax, r12
	mov	rcx, r12
	cmove	rcx, rbx
	test	rcx, rcx
	je	.label_187
	shr	rax, 1
	jmp	.label_193
.label_201:
	mov	rdx, rcx
	sar	rdx, 0x3f
	mov	rsi, rdx
	and	rsi, rcx
	add	rax, rsi
	xor	rcx, rdx
	sub	rcx, rdx
	nop	
.label_193:
	mov	rdx, rcx
	shr	rcx, 1
	test	dl, 1
	je	.label_193
	sub	rcx, rax
	jne	.label_201
	or	rdx, 1
	mov	rax, rdx
.label_187:
	cmp	rax, 1
	mov	rax, rbp
	je	.label_180
	jmp	.label_168
	nop	word ptr cs:[rax + rax]
.label_183:
	mov	rax, r15
.label_180:
	dec	r13
	mov	r15, rax
	jne	.label_177
	lea	r9, [r11 + r11]
	test	r11, r11
	mov	r13d, 0
	mov	r15, rbp
	mov	r14, rbp
	mov	rsi, r11
	je	.label_182
	nop	dword ptr [rax + rax]
.label_192:
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
	sub	rax, r10
	mov	r15d, 0
	cmovb	r15, rbx
	add	r15, rax
	dec	rsi
	jne	.label_192
	jmp	.label_169
	nop	word ptr [rax + rax]
.label_168:
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
	sub	rax, r10
	mov	r15d, 0
	cmovb	r15, rbx
	add	r15, rax
	mov	rcx, r9
	sub	rcx, r15
	mov	eax, 0
	cmovb	rax, rbx
	add	rax, rcx
	test	r8, r8
	mov	r14, rbx
	cmove	r14, rax
	cmove	rax, rbx
	test	rax, rax
	je	.label_174
	shr	r14, 1
	jmp	.label_163
.label_164:
	mov	rcx, rax
	sar	rcx, 0x3f
	mov	rdx, rcx
	and	rdx, rax
	add	r14, rdx
	xor	rax, rcx
	sub	rax, rcx
	nop	dword ptr [rax]
.label_163:
	mov	rcx, rax
	shr	rax, 1
	test	cl, 1
	je	.label_163
	sub	rax, r14
	jne	.label_164
	or	rcx, 1
	mov	r14, rcx
.label_174:
	cmp	r14, 1
	je	.label_168
	cmp	rbx, r14
	je	.label_176
	mov	qword ptr [rsp + 0x38], r9
	mov	qword ptr [rsp + 0x40], r11
	xor	edx, edx
	mov	rax, rbx
	div	r14
	mov	rbx, rax
	mov	rdi, r14
	call	prime_p
	test	al, al
	je	.label_198
	mov	rcx, qword ptr [rsp + 0x30]
	movzx	r10d, byte ptr [rcx + 0xfa]
	lea	edx, [r10 - 1]
	test	r10, r10
	mov	r9d, edx
	je	.label_171
	lea	rsi, [r10 - 1]
	nop	dword ptr [rax + rax]
.label_170:
	cmp	qword ptr [rcx + rsi*8 + 0x10], r14
	jbe	.label_196
	lea	r9, [rsi - 1]
	inc	rsi
	cmp	rsi, 1
	mov	rsi, r9
	jg	.label_170
	jmp	.label_171
	nop	dword ptr [rax]
.label_198:
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, qword ptr [rsp + 0x30]
	call	factor_using_pollard_rho
	jmp	.label_189
.label_196:
	movsxd	rax, esi
	cmp	qword ptr [rcx + rax*8 + 0x10], r14
	mov	r9d, esi
	jne	.label_171
	inc	byte ptr [rcx + rax + 0xe0]
	jmp	.label_189
.label_171:
	cmp	edx, r9d
	jle	.label_190
	lea	eax, [r10 + 3]
	sub	eax, r9d
	lea	esi, [r10 - 2]
	sub	esi, r9d
	test	al, 3
	je	.label_199
	mov	dword ptr [rsp + 0x1c], esi
	mov	rax, qword ptr [rsp + 0x10]
	lea	r8, [rax + r10]
	mov	rax, qword ptr [rsp + 8]
	lea	rdi, [rax + r10*8]
	mov	rcx, r10
	dec	rcx
	lea	r11d, [r10 + 3]
	sub	r11d, r9d
	and	r11d, 3
	neg	r11d
	xor	esi, esi
	nop	word ptr [rax + rax]
.label_165:
	mov	rax, rsi
	mov	rsi, qword ptr [rdi + rax*8 - 8]
	mov	qword ptr [rdi + rax*8], rsi
	mov	dl, byte ptr [r8 + rax - 1]
	mov	byte ptr [r8 + rax], dl
	lea	rsi, [rax - 1]
	cmp	r11d, esi
	jne	.label_165
	lea	rdx, [rcx + rax - 1]
	lea	rdi, [rdx + 1]
	mov	rcx, qword ptr [rsp + 0x30]
	mov	esi, dword ptr [rsp + 0x1c]
	jmp	.label_191
.label_199:
	mov	rdi, r10
.label_191:
	cmp	esi, 2
	jbe	.label_190
	nop	word ptr [rax + rax]
.label_181:
	mov	rax, qword ptr [rcx + rdi*8 + 8]
	mov	qword ptr [rcx + rdi*8 + 0x10], rax
	mov	al, byte ptr [rcx + rdi + 0xdf]
	mov	byte ptr [rcx + rdi + 0xe0], al
	mov	rax, qword ptr [rcx + rdi*8]
	mov	qword ptr [rcx + rdi*8 + 8], rax
	mov	al, byte ptr [rcx + rdi + 0xde]
	mov	byte ptr [rcx + rdi + 0xdf], al
	mov	rax, qword ptr [rcx + rdi*8 - 8]
	mov	qword ptr [rcx + rdi*8], rax
	mov	al, byte ptr [rcx + rdi + 0xdd]
	mov	byte ptr [rcx + rdi + 0xde], al
	mov	rax, qword ptr [rcx + rdi*8 - 0x10]
	mov	qword ptr [rcx + rdi*8 - 8], rax
	mov	al, byte ptr [rcx + rdi + 0xdc]
	mov	byte ptr [rcx + rdi + 0xdd], al
	lea	rdi, [rdi - 4]
	add	edx, -4
	cmp	edx, r9d
	jg	.label_181
.label_190:
	movsxd	rax, r9d
	mov	qword ptr [rcx + rax*8 + 0x18], r14
	mov	byte ptr [rcx + rax + 0xe1], 1
	inc	r10b
	mov	byte ptr [rcx + 0xfa], r10b
.label_189:
	mov	rdi, rbx
	call	prime_p
	test	al, al
	jne	.label_202
	xor	edx, edx
	mov	rax, rbp
	div	rbx
	mov	rbp, rdx
	xor	edx, edx
	mov	rax, qword ptr [rsp + 0x38]
	div	rbx
	mov	rcx, rdx
	xor	edx, edx
	mov	rax, r15
	div	rbx
	cmp	rbx, 1
	mov	r15, rdx
	mov	rsi, qword ptr [rsp + 0x40]
	jne	.label_162
	jmp	.label_184
	nop	word ptr [rax + rax]
.label_176:
	cmp	rbx, 1
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 0x28], rax
	ja	.label_188
.label_195:
	mov	edi, OFFSET FLAT:.str.44
	mov	esi, OFFSET FLAT:.str.42
	mov	edx, 0x5c2
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.factor_using_pollard_rho
	call	__assert_fail
.label_202:
	mov	rbp, qword ptr [rsp + 0x30]
	movzx	r10d, byte ptr [rbp + 0xfa]
	lea	edx, [r10 - 1]
	test	r10, r10
	mov	ecx, edx
	je	.label_194
	lea	rsi, [r10 - 1]
	nop	dword ptr [rax]
.label_166:
	cmp	qword ptr [rbp + rsi*8 + 0x10], rbx
	jbe	.label_200
	lea	rcx, [rsi - 1]
	inc	rsi
	cmp	rsi, 1
	mov	rsi, rcx
	jg	.label_166
	jmp	.label_194
.label_200:
	movsxd	rax, esi
	cmp	qword ptr [rbp + rax*8 + 0x10], rbx
	mov	ecx, esi
	jne	.label_194
	inc	byte ptr [rbp + rax + 0xe0]
	jmp	.label_184
.label_194:
	cmp	edx, ecx
	jle	.label_179
	lea	eax, [r10 + 3]
	sub	eax, ecx
	lea	r9d, [r10 - 2]
	sub	r9d, ecx
	test	al, 3
	je	.label_178
	lea	rdx, [rbp + r10 + 0xe0]
	lea	rdi, [rbp + r10*8 + 0x10]
	mov	r8, r10
	dec	r8
	lea	r11d, [r10 + 3]
	sub	r11d, ecx
	and	r11d, 3
	neg	r11d
	xor	eax, eax
	nop	dword ptr [rax]
.label_172:
	mov	rsi, rax
	mov	rax, qword ptr [rdi + rsi*8 - 8]
	mov	qword ptr [rdi + rsi*8], rax
	mov	al, byte ptr [rdx + rsi - 1]
	mov	byte ptr [rdx + rsi], al
	lea	rax, [rsi - 1]
	cmp	r11d, eax
	jne	.label_172
	lea	rdx, [r8 + rsi - 1]
	lea	rdi, [rdx + 1]
	jmp	.label_173
.label_178:
	mov	rdi, r10
.label_173:
	cmp	r9d, 3
	jb	.label_179
.label_185:
	mov	rax, qword ptr [rbp + rdi*8 + 8]
	mov	qword ptr [rbp + rdi*8 + 0x10], rax
	mov	al, byte ptr [rbp + rdi + 0xdf]
	mov	byte ptr [rbp + rdi + 0xe0], al
	mov	rax, qword ptr [rbp + rdi*8]
	mov	qword ptr [rbp + rdi*8 + 8], rax
	mov	al, byte ptr [rbp + rdi + 0xde]
	mov	byte ptr [rbp + rdi + 0xdf], al
	mov	rax, qword ptr [rbp + rdi*8 - 8]
	mov	qword ptr [rbp + rdi*8], rax
	mov	al, byte ptr [rbp + rdi + 0xdd]
	mov	byte ptr [rbp + rdi + 0xde], al
	mov	rax, qword ptr [rbp + rdi*8 - 0x10]
	mov	qword ptr [rbp + rdi*8 - 8], rax
	mov	al, byte ptr [rbp + rdi + 0xdc]
	mov	byte ptr [rbp + rdi + 0xdd], al
	lea	rdi, [rdi - 4]
	add	edx, -4
	cmp	edx, ecx
	jg	.label_185
.label_179:
	movsxd	rax, ecx
	mov	qword ptr [rbp + rax*8 + 0x18], rbx
	mov	byte ptr [rbp + rax + 0xe1], 1
	inc	r10b
	mov	byte ptr [rbp + 0xfa], r10b
.label_184:
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_167:
	mov	edi, OFFSET FLAT:.str.50
	mov	esi, OFFSET FLAT:.str.42
	mov	edx, 0x5c8
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.factor_using_pollard_rho
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x404360

	.globl factor_using_pollard_rho2
	.type factor_using_pollard_rho2, @function
factor_using_pollard_rho2:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x1c8
	mov	qword ptr [rsp + 0x70], rdx
	mov	r9, rdi
	cmp	r9, 1
	seta	al
	movzx	edi, al
	mov	edx, 0x3f
	mov	eax, 0x7f
	cmova	rax, rdx
	mov	rdx, rdi
	xor	rdi, 1
	not	rax
	nop	dword ptr [rax + rax]
.label_206:
	shld	rdx, rdi, 1
	add	rdi, rdi
	cmp	rdx, r9
	ja	.label_248
	cmp	rdi, rsi
	jb	.label_208
	cmp	rdx, r9
	jne	.label_208
.label_248:
	mov	qword ptr [rsp + 0x1b0], r9
	mov	qword ptr [rsp + 0x1a8], rsi
	sub	rdi, qword ptr [rsp + 0x1a8]
	sbb	rdx, qword ptr [rsp + 0x1b0]
.label_208:
	inc	rax
	jne	.label_206
	mov	qword ptr [rsp + 0x1a0], rdx
	mov	qword ptr [rsp + 0x198], rdi
	mov	rax, rdx
	mov	r12, rdi
	add	r12, qword ptr [rsp + 0x198]
	adc	rax, qword ptr [rsp + 0x1a0]
	cmp	rax, r9
	ja	.label_263
	jne	.label_204
	cmp	r12, rsi
	jb	.label_204
.label_263:
	mov	qword ptr [rsp + 0x190], r9
	mov	qword ptr [rsp + 0x188], rsi
	sub	r12, qword ptr [rsp + 0x188]
	sbb	rax, qword ptr [rsp + 0x190]
.label_204:
	cmp	rsi, 1
	jne	.label_219
	test	r9, r9
	je	.label_224
.label_219:
	mov	qword ptr [rsp + 0x78], rdx
	mov	rdx, qword ptr [rsp + 0x70]
	inc	rdx
	mov	qword ptr [rsp + 0x28], rdx
	lea	rdx, [rcx + 0xe0]
	mov	qword ptr [rsp + 0x20], rdx
	lea	rdx, [rcx + 0x10]
	mov	qword ptr [rsp + 0x18], rdx
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x88], rcx
	mov	qword ptr [rsp + 0x68], r12
	mov	r13, r12
	mov	ecx, 1
	mov	qword ptr [rsp + 0x48], rcx
	mov	r8, rax
	mov	rbp, rax
	jmp	.label_226
.label_234:
	mov	rax, r15
.label_226:
	mov	qword ptr [rsp + 0x80], rdi
	mov	rcx, rsi
	shr	rcx, 1
	and	ecx, 0x7f
	movzx	ecx, byte ptr [rcx + binvert_table]
	mov	rdx, rcx
	imul	rdx, rsi
	mov	edi, 2
	sub	rdi, rdx
	imul	rdi, rcx
	mov	rcx, rdi
	imul	rcx, rsi
	mov	edx, 2
	sub	rdx, rcx
	imul	rdx, rdi
	mov	rcx, rdx
	imul	rcx, rsi
	mov	rdi, rsi
	mov	esi, 2
	sub	rsi, rcx
	imul	rsi, rdx
	mov	qword ptr [rsp + 0x90], rsi
	mov	rsi, rbp
	mov	r15, rax
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rsp + 0x58], rax
	jmp	.label_244
	nop	word ptr cs:[rax + rax]
.label_255:
	mov	r8, r15
	mov	r15, rsi
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rsp + 0x88], rax
	mov	qword ptr [rsp + 0x68], r12
	mov	r12, r13
.label_244:
	mov	qword ptr [rsp + 0x60], r13
	mov	rax, qword ptr [rsp + 0x58]
	mov	qword ptr [rsp + 0x48], rax
	mov	qword ptr [rsp + 0x58], r15
	mov	rbx, rsi
	mov	r13, rdi
	mov	r15, r8
	nop	dword ptr [rax + rax]
.label_258:
	mov	rax, qword ptr [rsp + 0x90]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], r13
	lea	rdi, [rsp + 0x1b8]
	mov	rsi, rbx
	mov	rdx, r12
	mov	rcx, rbx
	mov	r8, r12
	mov	r12, r9
	call	mulredc2
	mov	r14, rax
	mov	rbx, qword ptr [rsp + 0x1b8]
	mov	rcx, qword ptr [rsp + 0x70]
	mov	qword ptr [rsp + 0x180], rcx
	add	r14, qword ptr [rsp + 0x180]
	adc	rbx, 0
	cmp	rbx, r12
	mov	rsi, qword ptr [rsp + 0x78]
	ja	.label_228
	jne	.label_251
	cmp	r14, r13
	jb	.label_251
.label_228:
	mov	qword ptr [rsp + 0x178], r12
	mov	qword ptr [rsp + 0x170], r13
	sub	r14, qword ptr [rsp + 0x170]
	sbb	rbx, qword ptr [rsp + 0x178]
.label_251:
	mov	qword ptr [rsp + 0x168], rbx
	mov	qword ptr [rsp + 0x160], r14
	mov	rcx, r15
	mov	r8, qword ptr [rsp + 0x68]
	sub	r8, qword ptr [rsp + 0x160]
	sbb	rcx, qword ptr [rsp + 0x168]
	test	rcx, rcx
	jns	.label_260
	mov	qword ptr [rsp + 0x158], r12
	mov	qword ptr [rsp + 0x150], r13
	add	r8, qword ptr [rsp + 0x150]
	adc	rcx, qword ptr [rsp + 0x158]
.label_260:
	mov	rax, qword ptr [rsp + 0x90]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], r13
	lea	rdi, [rsp + 0x1b8]
	mov	rdx, qword ptr [rsp + 0x80]
	mov	r9, r12
	call	mulredc2
	mov	rsi, qword ptr [rsp + 0x1b8]
	mov	rcx, qword ptr [rsp + 0x88]
	and	ecx, 0x1f
	cmp	rcx, 1
	jne	.label_229
	lea	rdi, [rsp + 0x1c0]
	mov	qword ptr [rsp + 0x78], rsi
	mov	rdx, rax
	mov	qword ptr [rsp + 0x80], rax
	mov	rcx, r12
	mov	rbp, r12
	mov	r8, r13
	call	gcd2_odd
	cmp	rax, 1
	mov	r12, r14
	jne	.label_240
	mov	rax, qword ptr [rsp + 0x1c0]
	test	rax, rax
	mov	rcx, rbx
	mov	rax, r12
	je	.label_245
	jmp	.label_240
	nop	dword ptr [rax]
.label_229:
	mov	qword ptr [rsp + 0x80], rax
	mov	qword ptr [rsp + 0x78], rsi
	mov	rbp, r12
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rax, qword ptr [rsp + 0x60]
	mov	r12, r14
.label_245:
	dec	qword ptr [rsp + 0x88]
	mov	qword ptr [rsp + 0x58], rcx
	mov	qword ptr [rsp + 0x60], rax
	mov	r9, rbp
	jne	.label_258
	mov	rdi, r13
	mov	rax, qword ptr [rsp + 0x48]
	lea	rcx, [rax + rax]
	mov	qword ptr [rsp + 0x58], rcx
	test	rax, rax
	mov	rsi, rbx
	mov	r8, rbx
	mov	r15, rbx
	mov	ecx, 0
	mov	qword ptr [rsp + 0x88], rcx
	mov	r13, r12
	mov	qword ptr [rsp + 0x68], r12
	mov	r14, rax
	je	.label_244
	jmp	.label_216
.label_242:
	mov	rdi, rbx
	jmp	.label_217
	nop	dword ptr [rax]
.label_216:
	mov	rax, qword ptr [rsp + 0x90]
	mov	qword ptr [rsp + 8], rax
	mov	rbx, rdi
	mov	qword ptr [rsp], rbx
	lea	rdi, [rsp + 0x1b8]
	mov	rdx, r13
	mov	rcx, rsi
	mov	r8, r13
	mov	rbp, r9
	call	mulredc2
	mov	r9, rbp
	mov	r13, rax
	mov	rsi, qword ptr [rsp + 0x1b8]
	mov	rax, qword ptr [rsp + 0x70]
	mov	qword ptr [rsp + 0x148], rax
	add	r13, qword ptr [rsp + 0x148]
	adc	rsi, 0
	cmp	rsi, r9
	ja	.label_220
	mov	rdi, rbx
	jne	.label_217
	mov	rbx, rdi
	cmp	r13, rbx
	jb	.label_242
.label_220:
	mov	qword ptr [rsp + 0x140], r9
	mov	qword ptr [rsp + 0x138], rbx
	mov	rdi, rbx
	sub	r13, qword ptr [rsp + 0x138]
	sbb	rsi, qword ptr [rsp + 0x140]
.label_217:
	dec	r14
	jne	.label_216
	jmp	.label_255
	nop	word ptr [rax + rax]
.label_240:
	mov	qword ptr [rsp + 0x38], rbx
	mov	qword ptr [rsp + 0x30], r12
	mov	qword ptr [rsp + 0x50], r13
	mov	r14, r15
	mov	r13, qword ptr [rsp + 0x60]
	mov	r15, qword ptr [rsp + 0x58]
	nop	dword ptr [rax]
.label_266:
	mov	rax, qword ptr [rsp + 0x90]
	mov	qword ptr [rsp + 8], rax
	mov	rbx, qword ptr [rsp + 0x50]
	mov	qword ptr [rsp], rbx
	lea	rdi, [rsp + 0x1b8]
	mov	rsi, r15
	mov	rdx, r13
	mov	rcx, r15
	mov	r8, r13
	mov	r9, rbp
	call	mulredc2
	mov	rcx, rbp
	mov	r13, rax
	mov	r15, qword ptr [rsp + 0x1b8]
	mov	rax, qword ptr [rsp + 0x70]
	mov	qword ptr [rsp + 0x130], rax
	add	r13, qword ptr [rsp + 0x130]
	adc	r15, 0
	cmp	r15, rcx
	ja	.label_215
	jne	.label_232
	cmp	r13, rbx
	jb	.label_232
.label_215:
	mov	qword ptr [rsp + 0x128], rcx
	mov	qword ptr [rsp + 0x120], rbx
	sub	r13, qword ptr [rsp + 0x120]
	sbb	r15, qword ptr [rsp + 0x128]
.label_232:
	mov	qword ptr [rsp + 0x118], r15
	mov	qword ptr [rsp + 0x110], r13
	mov	rsi, r14
	mov	rdx, qword ptr [rsp + 0x68]
	sub	rdx, qword ptr [rsp + 0x110]
	sbb	rsi, qword ptr [rsp + 0x118]
	test	rsi, rsi
	jns	.label_238
	mov	qword ptr [rsp + 0x108], rcx
	mov	qword ptr [rsp + 0x100], rbx
	add	rdx, qword ptr [rsp + 0x100]
	adc	rsi, qword ptr [rsp + 0x108]
.label_238:
	lea	rdi, [rsp + 0x1c0]
	mov	rbp, rcx
	mov	r8, rbx
	call	gcd2_odd
	mov	r12, rax
	mov	rbx, qword ptr [rsp + 0x1c0]
	cmp	r12, 1
	jne	.label_261
	test	rbx, rbx
	je	.label_266
.label_261:
	test	rbx, rbx
	mov	rdi, rbp
	jne	.label_268
	mov	rax, r12
	shr	rax, 1
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
	mov	rax, qword ptr [rsp + 0x50]
	imul	rax, rcx
	mov	qword ptr [rsp + 0x50], rax
	cmp	rdi, r12
	mov	eax, 0
	mov	rbx, qword ptr [rsp + 0x40]
	jb	.label_265
	mov	qword ptr [rsp + 0xf8], r12
	mov	rax, qword ptr [rsp + 0x50]
	mul	qword ptr [rsp + 0xf8]
	sub	rdi, rdx
	imul	rdi, rcx
	mov	rax, rdi
.label_265:
	mov	qword ptr [rsp + 0x90], rax
	mov	rdi, r12
	call	prime_p
	test	al, al
	je	.label_243
	movzx	r10d, byte ptr [rbx + 0xfa]
	lea	edx, [r10 - 1]
	test	r10, r10
	mov	ecx, edx
	je	.label_239
	lea	rsi, [r10 - 1]
	nop	dword ptr [rax + rax]
.label_230:
	cmp	qword ptr [rbx + rsi*8 + 0x10], r12
	jbe	.label_214
	lea	rcx, [rsi - 1]
	inc	rsi
	cmp	rsi, 1
	mov	rsi, rcx
	jg	.label_230
	jmp	.label_239
	nop	dword ptr [rax]
.label_243:
	mov	rdi, r12
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rdx, rbx
	call	factor_using_pollard_rho
	jmp	.label_264
.label_214:
	movsxd	rax, esi
	cmp	qword ptr [rbx + rax*8 + 0x10], r12
	mov	ecx, esi
	jne	.label_239
	inc	byte ptr [rbx + rax + 0xe0]
	jmp	.label_264
	nop	dword ptr [rax]
.label_239:
	cmp	edx, ecx
	jle	.label_203
	lea	eax, [r10 + 3]
	sub	eax, ecx
	lea	r9d, [r10 - 2]
	sub	r9d, ecx
	test	al, 3
	je	.label_205
	mov	r11, rbx
	mov	rax, qword ptr [rsp + 0x20]
	lea	rdx, [rax + r10]
	mov	rax, qword ptr [rsp + 0x18]
	lea	rbx, [rax + r10*8]
	mov	r8, r10
	dec	r8
	lea	edi, [r10 + 3]
	sub	edi, ecx
	and	edi, 3
	neg	edi
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_252:
	mov	rsi, rax
	mov	rax, qword ptr [rbx + rsi*8 - 8]
	mov	qword ptr [rbx + rsi*8], rax
	mov	al, byte ptr [rdx + rsi - 1]
	mov	byte ptr [rdx + rsi], al
	lea	rax, [rsi - 1]
	cmp	edi, eax
	jne	.label_252
	lea	rdx, [r8 + rsi - 1]
	lea	rdi, [rdx + 1]
	mov	rbx, r11
	jmp	.label_236
.label_205:
	mov	rdi, r10
.label_236:
	cmp	r9d, 2
	jbe	.label_203
	nop	word ptr cs:[rax + rax]
.label_225:
	mov	rax, qword ptr [rbx + rdi*8 + 8]
	mov	qword ptr [rbx + rdi*8 + 0x10], rax
	mov	al, byte ptr [rbx + rdi + 0xdf]
	mov	byte ptr [rbx + rdi + 0xe0], al
	mov	rax, qword ptr [rbx + rdi*8]
	mov	qword ptr [rbx + rdi*8 + 8], rax
	mov	al, byte ptr [rbx + rdi + 0xde]
	mov	byte ptr [rbx + rdi + 0xdf], al
	mov	rax, qword ptr [rbx + rdi*8 - 8]
	mov	qword ptr [rbx + rdi*8], rax
	mov	al, byte ptr [rbx + rdi + 0xdd]
	mov	byte ptr [rbx + rdi + 0xde], al
	mov	rax, qword ptr [rbx + rdi*8 - 0x10]
	mov	qword ptr [rbx + rdi*8 - 8], rax
	mov	al, byte ptr [rbx + rdi + 0xdc]
	mov	byte ptr [rbx + rdi + 0xdd], al
	lea	rdi, [rdi - 4]
	add	edx, -4
	cmp	edx, ecx
	jg	.label_225
.label_203:
	movsxd	rax, ecx
	mov	qword ptr [rbx + rax*8 + 0x18], r12
	mov	byte ptr [rbx + rax + 0xe1], 1
	inc	r10b
	mov	byte ptr [rbx + 0xfa], r10b
.label_264:
	mov	rdi, qword ptr [rsp + 0x90]
	test	rdi, rdi
	je	.label_211
	mov	r12, rdi
	mov	rsi, qword ptr [rsp + 0x50]
	call	prime2_p
	test	al, al
	jne	.label_221
	mov	rbp, qword ptr [rsp + 0x38]
	test	rbp, rbp
	je	.label_233
	mov	r9, r12
	mov	qword ptr [rsp + 0xf0], r9
	bsr	rax, qword ptr [rsp + 0xf0]
	xor	rax, 0x3f
	mov	qword ptr [rsp + 0xe8], rbp
	bsr	rdi, qword ptr [rsp + 0xe8]
	xor	rdi, 0x3f
	mov	ecx, eax
	sub	ecx, edi
	test	ecx, ecx
	jle	.label_227
	mov	r8, qword ptr [rsp + 0x50]
	mov	rdx, r8
	shl	rdx, cl
	mov	rsi, r9
	shld	rsi, r8, cl
	sub	eax, edi
	mov	rdi, qword ptr [rsp + 0x80]
	mov	r12, qword ptr [rsp + 0x30]
	nop	dword ptr [rax]
.label_257:
	cmp	rbp, rsi
	ja	.label_254
	jne	.label_249
	cmp	r12, rdx
	jb	.label_249
.label_254:
	mov	qword ptr [rsp + 0xe0], rsi
	mov	qword ptr [rsp + 0xd8], rdx
	sub	r12, qword ptr [rsp + 0xd8]
	sbb	rbp, qword ptr [rsp + 0xe0]
.label_249:
	shrd	rdx, rsi, 1
	shr	rsi, 1
	dec	eax
	jne	.label_257
	jmp	.label_209
	nop	word ptr [rax + rax]
.label_233:
	xor	ebp, ebp
	mov	r9, r12
.label_227:
	mov	rdi, qword ptr [rsp + 0x80]
	mov	r12, qword ptr [rsp + 0x30]
.label_209:
	test	r14, r14
	je	.label_269
	mov	qword ptr [rsp + 0xd0], r9
	bsr	rax, qword ptr [rsp + 0xd0]
	xor	rax, 0x3f
	mov	qword ptr [rsp + 0xc8], r14
	bsr	r8, qword ptr [rsp + 0xc8]
	xor	r8, 0x3f
	mov	ecx, eax
	sub	ecx, r8d
	test	ecx, ecx
	jle	.label_259
	mov	qword ptr [rsp + 0x40], rbx
	mov	rsi, qword ptr [rsp + 0x50]
	mov	rdx, rsi
	shl	rdx, cl
	mov	rbx, r9
	shld	rbx, rsi, cl
	sub	eax, r8d
	nop	dword ptr [rax]
.label_241:
	cmp	r14, rbx
	ja	.label_256
	jne	.label_246
	cmp	qword ptr [rsp + 0x68], rdx
	jb	.label_246
.label_256:
	mov	qword ptr [rsp + 0xc0], rbx
	mov	qword ptr [rsp + 0xb8], rdx
	mov	rcx, qword ptr [rsp + 0x68]
	sub	rcx, qword ptr [rsp + 0xb8]
	sbb	r14, qword ptr [rsp + 0xc0]
	mov	qword ptr [rsp + 0x68], rcx
.label_246:
	shrd	rdx, rbx, 1
	shr	rbx, 1
	dec	eax
	jne	.label_241
	jmp	.label_212
	nop	word ptr cs:[rax + rax]
.label_269:
	mov	qword ptr [rsp + 0x40], rbx
	xor	r14d, r14d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_212
	nop	
.label_259:
	mov	qword ptr [rsp + 0x40], rbx
	mov	rsi, qword ptr [rsp + 0x50]
.label_212:
	mov	r8, r14
	test	r15, r15
	mov	eax, 0
	je	.label_226
	mov	qword ptr [rsp + 0xb0], r9
	bsr	rdx, qword ptr [rsp + 0xb0]
	xor	rdx, 0x3f
	mov	qword ptr [rsp + 0xa8], r15
	bsr	r10, qword ptr [rsp + 0xa8]
	xor	r10, 0x3f
	mov	ecx, edx
	sub	ecx, r10d
	test	ecx, ecx
	mov	rax, r15
	jle	.label_226
	mov	rax, rsi
	shl	rax, cl
	mov	rbx, r9
	shld	rbx, rsi, cl
	sub	edx, r10d
	nop	word ptr cs:[rax + rax]
.label_231:
	cmp	r15, rbx
	ja	.label_237
	jne	.label_218
	cmp	r13, rax
	jb	.label_218
.label_237:
	mov	qword ptr [rsp + 0xa0], rbx
	mov	qword ptr [rsp + 0x98], rax
	sub	r13, qword ptr [rsp + 0x98]
	sbb	r15, qword ptr [rsp + 0xa0]
.label_218:
	shrd	rax, rbx, 1
	shr	rbx, 1
	dec	edx
	jne	.label_231
	jmp	.label_234
.label_268:
	cmp	qword ptr [rsp + 0x50], r12
	jne	.label_235
	cmp	rdi, rbx
	jne	.label_235
	mov	rsi, qword ptr [rsp + 0x50]
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [rsp + 0x40]
	call	factor_using_pollard_rho2
	jmp	.label_224
.label_211:
	mov	rbp, qword ptr [rsp + 0x50]
	jmp	.label_210
.label_221:
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, qword ptr [rsp + 0x50]
	call	factor_insert_large
	jmp	.label_224
.label_235:
	mov	rax, r12
	shr	rax, 1
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
	imul	rbp, qword ptr [rsp + 0x50]
	mov	rdi, rbx
	mov	rsi, r12
	call	prime2_p
	test	al, al
	je	.label_270
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsi, rbx
	mov	rbx, rdi
	mov	rdx, r12
	call	factor_insert_large
	jmp	.label_210
.label_270:
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rbx, qword ptr [rsp + 0x40]
	mov	rcx, rbx
	call	factor_using_pollard_rho2
.label_210:
	mov	rdi, rbp
	call	prime_p
	test	al, al
	je	.label_222
	movzx	r10d, byte ptr [rbx + 0xfa]
	lea	edx, [r10 - 1]
	test	r10, r10
	mov	ecx, edx
	je	.label_223
	lea	rsi, [r10 - 1]
	nop	
.label_250:
	cmp	qword ptr [rbx + rsi*8 + 0x10], rbp
	jbe	.label_262
	lea	rcx, [rsi - 1]
	inc	rsi
	cmp	rsi, 1
	mov	rsi, rcx
	jg	.label_250
	jmp	.label_223
.label_222:
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x70]
	mov	rdx, rbx
	call	factor_using_pollard_rho
	jmp	.label_224
.label_262:
	movsxd	rax, esi
	cmp	qword ptr [rbx + rax*8 + 0x10], rbp
	mov	ecx, esi
	jne	.label_223
	inc	byte ptr [rbx + rax + 0xe0]
	jmp	.label_224
.label_223:
	cmp	edx, ecx
	jle	.label_207
	lea	eax, [r10 + 3]
	sub	eax, ecx
	lea	r9d, [r10 - 2]
	sub	r9d, ecx
	test	al, 3
	je	.label_247
	lea	rdx, [rbx + r10 + 0xe0]
	mov	rax, rbx
	lea	rbx, [rax + r10*8 + 0x10]
	mov	r11, rax
	mov	r8, r10
	dec	r8
	lea	edi, [r10 + 3]
	sub	edi, ecx
	and	edi, 3
	neg	edi
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_253:
	mov	rsi, rax
	mov	rax, qword ptr [rbx + rsi*8 - 8]
	mov	qword ptr [rbx + rsi*8], rax
	mov	al, byte ptr [rdx + rsi - 1]
	mov	byte ptr [rdx + rsi], al
	lea	rax, [rsi - 1]
	cmp	edi, eax
	jne	.label_253
	lea	rdx, [r8 + rsi - 1]
	lea	rdi, [rdx + 1]
	mov	rbx, r11
	jmp	.label_267
.label_247:
	mov	rdi, r10
.label_267:
	cmp	r9d, 3
	jb	.label_207
	nop	word ptr cs:[rax + rax]
.label_213:
	mov	rax, qword ptr [rbx + rdi*8 + 8]
	mov	qword ptr [rbx + rdi*8 + 0x10], rax
	mov	al, byte ptr [rbx + rdi + 0xdf]
	mov	byte ptr [rbx + rdi + 0xe0], al
	mov	rax, qword ptr [rbx + rdi*8]
	mov	qword ptr [rbx + rdi*8 + 8], rax
	mov	al, byte ptr [rbx + rdi + 0xde]
	mov	byte ptr [rbx + rdi + 0xdf], al
	mov	rax, qword ptr [rbx + rdi*8 - 8]
	mov	qword ptr [rbx + rdi*8], rax
	mov	al, byte ptr [rbx + rdi + 0xdd]
	mov	byte ptr [rbx + rdi + 0xde], al
	mov	rax, qword ptr [rbx + rdi*8 - 0x10]
	mov	qword ptr [rbx + rdi*8 - 8], rax
	mov	al, byte ptr [rbx + rdi + 0xdc]
	mov	byte ptr [rbx + rdi + 0xdd], al
	lea	rdi, [rdi - 4]
	add	edx, -4
	cmp	edx, ecx
	jg	.label_213
.label_207:
	movsxd	rax, ecx
	mov	qword ptr [rbx + rax*8 + 0x18], rbp
	mov	byte ptr [rbx + rax + 0xe1], 1
	inc	r10b
	mov	byte ptr [rbx + 0xfa], r10b
.label_224:
	add	rsp, 0x1c8
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
	#Procedure 0x404fc0

	.globl factor_insert_refind
	.type factor_insert_refind, @function
factor_insert_refind:
	push	r14
	push	rbx
	test	ecx, ecx
	je	.label_271
	lea	r8d, [rcx - 1]
	xor	eax, eax
	test	cl, 3
	je	.label_274
	mov	r9d, edx
	mov	r10d, ecx
	and	r10d, 3
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_282:
	lea	ebx, [r9 + rax]
	movzx	ebx, byte ptr [rbx + primes_diff]
	add	rsi, rbx
	inc	rax
	cmp	r10d, eax
	jne	.label_282
.label_274:
	cmp	r8d, 3
	jb	.label_271
	sub	ecx, eax
	lea	r8d, [rdx + rax + 3]
	lea	r9d, [rdx + rax + 2]
	mov	r10d, edx
	add	r10d, eax
	lea	edx, [rdx + rax + 1]
	nop	word ptr cs:[rax + rax]
.label_280:
	mov	eax, r10d
	movzx	eax, byte ptr [rax + primes_diff]
	add	rax, rsi
	mov	esi, edx
	movzx	esi, byte ptr [rsi + primes_diff]
	add	rsi, rax
	mov	eax, r9d
	movzx	eax, byte ptr [rax + primes_diff]
	add	rax, rsi
	mov	esi, r8d
	movzx	esi, byte ptr [rsi + primes_diff]
	add	rsi, rax
	add	r8d, 4
	add	r9d, 4
	add	r10d, 4
	add	edx, 4
	add	ecx, -4
	jne	.label_280
.label_271:
	movzx	r9d, byte ptr [rdi + 0xfa]
	lea	edx, [r9 - 1]
	test	r9, r9
	mov	ecx, edx
	je	.label_278
	lea	rax, [r9 - 1]
	nop	
.label_277:
	cmp	qword ptr [rdi + rax*8 + 0x10], rsi
	jbe	.label_276
	lea	rcx, [rax - 1]
	inc	rax
	cmp	rax, 1
	mov	rax, rcx
	jg	.label_277
	jmp	.label_278
.label_276:
	movsxd	rbx, eax
	cmp	qword ptr [rdi + rbx*8 + 0x10], rsi
	mov	ecx, eax
	jne	.label_278
	inc	byte ptr [rdi + rbx + 0xe0]
	jmp	.label_283
.label_278:
	cmp	edx, ecx
	jle	.label_272
	lea	eax, [r9 + 3]
	sub	eax, ecx
	lea	r8d, [r9 - 2]
	sub	r8d, ecx
	test	al, 3
	je	.label_273
	lea	r14, [rdi + r9 + 0xe0]
	lea	rdx, [rdi + r9*8 + 0x10]
	mov	r10, r9
	dec	r10
	lea	r11d, [r9 + 3]
	sub	r11d, ecx
	and	r11d, 3
	neg	r11d
	xor	eax, eax
	nop	dword ptr [rax]
.label_275:
	mov	rbx, rax
	mov	rax, qword ptr [rdx + rbx*8 - 8]
	mov	qword ptr [rdx + rbx*8], rax
	mov	al, byte ptr [r14 + rbx - 1]
	mov	byte ptr [r14 + rbx], al
	lea	rax, [rbx - 1]
	cmp	r11d, eax
	jne	.label_275
	lea	rdx, [r10 + rbx - 1]
	lea	rax, [rdx + 1]
	jmp	.label_279
.label_273:
	mov	rax, r9
.label_279:
	cmp	r8d, 3
	jb	.label_272
	nop	word ptr cs:[rax + rax]
.label_281:
	mov	rbx, qword ptr [rdi + rax*8 + 8]
	mov	qword ptr [rdi + rax*8 + 0x10], rbx
	mov	bl, byte ptr [rdi + rax + 0xdf]
	mov	byte ptr [rdi + rax + 0xe0], bl
	mov	rbx, qword ptr [rdi + rax*8]
	mov	qword ptr [rdi + rax*8 + 8], rbx
	mov	bl, byte ptr [rdi + rax + 0xde]
	mov	byte ptr [rdi + rax + 0xdf], bl
	mov	rbx, qword ptr [rdi + rax*8 - 8]
	mov	qword ptr [rdi + rax*8], rbx
	mov	bl, byte ptr [rdi + rax + 0xdd]
	mov	byte ptr [rdi + rax + 0xde], bl
	mov	rbx, qword ptr [rdi + rax*8 - 0x10]
	mov	qword ptr [rdi + rax*8 - 8], rbx
	mov	bl, byte ptr [rdi + rax + 0xdc]
	mov	byte ptr [rdi + rax + 0xdd], bl
	lea	rax, [rax - 4]
	add	edx, -4
	cmp	edx, ecx
	jg	.label_281
.label_272:
	movsxd	rax, ecx
	mov	qword ptr [rdi + rax*8 + 0x18], rsi
	mov	byte ptr [rdi + rax + 0xe1], 1
	inc	r9b
	mov	byte ptr [rdi + 0xfa], r9b
.label_283:
	pop	rbx
	pop	r14
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4051d0

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
	jae	.label_312
	xor	eax, eax
	jmp	.label_285
.label_312:
	cmp	rbx, 0x17ded79
	jae	.label_314
	mov	al, 1
	jmp	.label_285
.label_314:
	lea	rdx, [rbx - 1]
	xor	r9d, r9d
	test	dl, 1
	jne	.label_284
	mov	rax, rdx
.label_289:
	mov	r13, rax
	shr	r13, 1
	inc	r9d
	bt	rax, 1
	mov	rax, r13
	jae	.label_289
	jmp	.label_297
.label_284:
	mov	r13, rdx
.label_297:
	mov	rax, rbx
	shr	rax, 1
	and	eax, 0x7f
	movzx	ecx, byte ptr [rax + binvert_table]
	mov	r14d, 2
	mov	eax, 1
	xor	r15d, r15d
	cmp	rbx, 1
	jbe	.label_321
	mov	qword ptr [rsp + 0x18], rdx
	mov	rdx, rcx
	imul	rdx, rbx
	mov	esi, 2
	sub	rsi, rdx
	imul	rsi, rcx
	mov	rcx, rsi
	imul	rcx, rbx
	mov	edx, 2
	sub	rdx, rcx
	imul	rdx, rsi
	mov	rcx, rdx
	imul	rcx, rbx
	sub	r14, rcx
	imul	r14, rdx
	mov	ecx, 0xffffffc0
	xor	edx, edx
	mov	rsi, rbx
	nop	word ptr cs:[rax + rax]
.label_315:
	shrd	rdx, rsi, 1
	shr	rsi, 1
	cmp	rax, rsi
	ja	.label_296
	jne	.label_301
	cmp	r15, rdx
	jb	.label_301
.label_296:
	mov	qword ptr [rsp + 0xc0], rsi
	mov	qword ptr [rsp + 0xb8], rdx
	sub	r15, qword ptr [rsp + 0xb8]
	sbb	rax, qword ptr [rsp + 0xc0]
.label_301:
	inc	ecx
	jne	.label_315
	mov	rcx, rbx
	sub	rcx, r15
	xor	r12d, r12d
	mov	rax, r15
	sub	rax, rcx
	mov	r10, rcx
	cmovb	r12, rbx
	add	r12, rax
	mov	rbp, r13
	mov	rsi, r12
	mov	r8, r12
	jmp	.label_316
	nop	dword ptr [rax]
.label_287:
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
.label_316:
	mov	rcx, rbp
	nop	dword ptr [rax]
.label_309:
	test	rcx, rcx
	je	.label_306
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
	jae	.label_309
	jmp	.label_287
.label_306:
	cmp	r8, r15
	je	.label_291
	cmp	r8, r10
	je	.label_291
	cmp	r9d, 2
	jb	.label_295
	mov	edi, 2
	nop	dword ptr [rax]
.label_322:
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
	cmp	r8, r10
	je	.label_291
	xor	eax, eax
	cmp	edi, r9d
	jae	.label_285
	inc	edi
	cmp	r8, r15
	jne	.label_322
	jmp	.label_285
.label_291:
	mov	qword ptr [rsp], r10
	mov	dword ptr [rsp + 0xc], r9d
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	lea	rdx, [rsp + 0xc8]
	xor	edi, edi
	mov	rsi, qword ptr [rsp + 0x18]
	call	factor
	movzx	r9d, byte ptr [rsp + 0x1c2]
	mov	r8d, 2
	jmp	.label_300
	nop	
.label_317:
	xor	edx, edx
	mov	rax, qword ptr [rsp + 0x18]
	div	qword ptr [rsp + r11*8 + 0xd8]
	mov	rdi, rax
	test	dil, 1
	mov	rcx, r12
	cmove	rcx, r15
	mov	rsi, r12
	jmp	.label_299
	nop	word ptr cs:[rax + rax]
.label_318:
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
.label_299:
	mov	rbp, rdi
.label_298:
	test	rbp, rbp
	je	.label_307
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
	jae	.label_298
	jmp	.label_318
	nop	word ptr [rax + rax]
.label_307:
	cmp	rcx, r15
	je	.label_320
	inc	r11
	cmp	r11, r9
	jb	.label_317
.label_320:
	cmp	rcx, r15
	jne	.label_310
	mov	rax, qword ptr [rsp + 0x10]
	movzx	r8d, byte ptr [rax + primes_diff]
	add	r8, r10
	mov	qword ptr [rsp + 0x60], r8
	mov	rax, r15
	mul	qword ptr [rsp + 0x60]
	mov	r12, rax
	test	rdx, rdx
	jne	.label_286
	xor	edx, edx
	mov	rax, r12
	div	rbx
	mov	r12, rdx
	mov	r11d, dword ptr [rsp + 0xc]
.label_304:
	mov	rbp, r13
	mov	rsi, r12
	mov	r10, r12
	jmp	.label_308
	nop	
.label_313:
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
.label_308:
	mov	rcx, rbp
	nop	word ptr cs:[rax + rax]
.label_292:
	test	rcx, rcx
	je	.label_290
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
	jae	.label_292
	jmp	.label_313
	nop	word ptr [rax + rax]
.label_290:
	cmp	r10, r15
	mov	rcx, qword ptr [rsp]
	je	.label_302
	cmp	r10, rcx
	je	.label_302
	mov	edi, 2
	cmp	r11d, 2
	jb	.label_319
	nop	dword ptr [rax]
.label_305:
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
	je	.label_302
	xor	eax, eax
	cmp	edi, r11d
	jae	.label_285
	inc	edi
	cmp	r10, r15
	jne	.label_305
	jmp	.label_285
	nop	word ptr [rax + rax]
.label_302:
	mov	dword ptr [rsp + 0xc], r11d
	mov	rax, qword ptr [rsp + 0x10]
	inc	rax
	mov	qword ptr [rsp + 0x10], rax
	cmp	rax, 0x29c
	jb	.label_300
	jmp	.label_311
.label_286:
	cmp	rdx, rbx
	mov	r11d, dword ptr [rsp + 0xc]
	jae	.label_294
	mov	eax, 0xffffffc0
	xor	ecx, ecx
	mov	rsi, rbx
	nop	word ptr [rax + rax]
.label_303:
	shrd	rcx, rsi, 1
	shr	rsi, 1
	cmp	rdx, rsi
	ja	.label_293
	jne	.label_288
	cmp	r12, rcx
	jb	.label_288
.label_293:
	mov	qword ptr [rsp + 0x58], rsi
	mov	qword ptr [rsp + 0x50], rcx
	sub	r12, qword ptr [rsp + 0x50]
	sbb	rdx, qword ptr [rsp + 0x58]
.label_288:
	inc	eax
	jne	.label_303
	jmp	.label_304
	nop	word ptr cs:[rax + rax]
.label_300:
	mov	r10, r8
	test	r9b, r9b
	mov	r11d, 0
	jne	.label_317
	mov	al, 1
	jmp	.label_285
.label_295:
	xor	eax, eax
	jmp	.label_285
.label_310:
	mov	al, 1
	jmp	.label_285
.label_319:
	xor	eax, eax
.label_285:
	add	rsp, 0x1c8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_311:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.43
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	call	abort
.label_321:
	mov	edi, OFFSET FLAT:.str.44
	mov	esi, OFFSET FLAT:.str.42
	mov	edx, 0x4c4
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.prime_p
	call	__assert_fail
.label_294:
	mov	edi, OFFSET FLAT:.str.45
	mov	esi, OFFSET FLAT:.str.42
	mov	edx, 0x4f4
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.prime_p
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405760

	.globl millerrabin2
	.type millerrabin2, @function
millerrabin2:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	rbx, r9
	mov	r15d, r8d
	mov	r12, rsi
	mov	rbp, rdi
	lea	rdi, [rsp + 0x30]
	mov	rsi, rdx
	mov	rdx, rcx
	mov	rcx, rbp
	mov	r8, r12
	call	powm2
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rdx, qword ptr [rbx]
	mov	rdi, qword ptr [rbx + 8]
	mov	cl, 1
	cmp	rax, rdx
	jne	.label_329
	cmp	rsi, rdi
	je	.label_324
.label_329:
	mov	r8, qword ptr [rbp]
	mov	r9, qword ptr [rbp + 8]
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x20], rdx
	mov	r13, r9
	mov	r14, r8
	sub	r14, qword ptr [rsp + 0x20]
	sbb	r13, qword ptr [rsp + 0x28]
	cmp	rax, r14
	jne	.label_327
	cmp	rsi, r13
	je	.label_324
.label_327:
	cmp	r15d, 2
	jb	.label_331
	mov	dword ptr [rsp + 0x1c], r15d
	mov	qword ptr [rsp + 8], r12
	mov	qword ptr [rsp], r8
	lea	rdi, [rsp + 0x30]
	mov	rdx, rax
	mov	rcx, rsi
	mov	r8, rax
	call	mulredc2
	mov	rsi, qword ptr [rsp + 0x30]
	mov	r15d, 1
	jmp	.label_325
	nop	word ptr cs:[rax + rax]
.label_332:
	mov	rcx, qword ptr [rbp]
	mov	r9, qword ptr [rbp + 8]
	mov	qword ptr [rsp + 8], r12
	mov	qword ptr [rsp], rcx
	lea	rdi, [rsp + 0x30]
	mov	rdx, rax
	mov	rcx, rsi
	mov	r8, rax
	call	mulredc2
	mov	rsi, qword ptr [rsp + 0x30]
.label_325:
	cmp	rax, r14
	jne	.label_326
	cmp	rsi, r13
	je	.label_328
.label_326:
	cmp	rax, qword ptr [rbx]
	jne	.label_323
	cmp	rsi, qword ptr [rbx + 8]
	je	.label_330
.label_323:
	inc	r15d
	cmp	r15d, dword ptr [rsp + 0x1c]
	jb	.label_332
	xor	ecx, ecx
	jmp	.label_324
.label_331:
	xor	ecx, ecx
	jmp	.label_324
.label_328:
	mov	cl, 1
.label_324:
	mov	al, cl
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_330:
	xor	ecx, ecx
	jmp	.label_324
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405890

	.globl powm2
	.type powm2, @function
powm2:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	r15, r8
	mov	qword ptr [rsp + 0x18], rdx
	mov	r8, qword ptr [rsi]
	mov	rbp, qword ptr [rsi + 8]
	mov	r13, qword ptr [rcx]
	mov	r12, qword ptr [rcx + 8]
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	rax, qword ptr [r9 + 8]
	mov	qword ptr [rsp + 0x30], rax
	mov	r14, qword ptr [rdx]
	mov	eax, 0xffffffc0
	nop	dword ptr [rax]
.label_338:
	mov	dword ptr [rsp + 0x44], eax
	test	r14b, 1
	jne	.label_333
	mov	rbx, rdi
	jmp	.label_337
	nop	
.label_333:
	mov	qword ptr [rsp + 8], r15
	mov	qword ptr [rsp], r13
	mov	rbx, rdi
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	rcx, rbp
	mov	qword ptr [rsp + 0x28], r8
	mov	r8, qword ptr [rsp + 0x28]
	mov	r9, r12
	call	mulredc2
	mov	r8, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x38], rax
	mov	rax, qword ptr [rbx]
	mov	qword ptr [rsp + 0x30], rax
.label_337:
	mov	qword ptr [rsp + 8], r15
	mov	qword ptr [rsp], r13
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, r8
	mov	rcx, rbp
	mov	r9, r12
	call	mulredc2
	mov	r8, rax
	shr	r14, 1
	mov	rbp, qword ptr [rbx]
	mov	rdi, rbx
	mov	eax, dword ptr [rsp + 0x44]
	inc	eax
	jne	.label_338
	mov	rax, qword ptr [rsp + 0x18]
	mov	r14, qword ptr [rax + 8]
	test	r14, r14
	je	.label_335
	mov	rbx, r15
	mov	qword ptr [rsp + 0x20], rbx
	mov	rcx, rdi
	mov	r15, r12
	nop	
.label_339:
	test	r14b, 1
	je	.label_336
	mov	qword ptr [rsp + 8], rbx
	mov	qword ptr [rsp], r13
	mov	r12, rcx
	mov	rdi, r12
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	rcx, rbp
	mov	rbx, r8
	mov	r9, r15
	call	mulredc2
	mov	rcx, r12
	mov	r8, rbx
	mov	qword ptr [rsp + 0x38], rax
	mov	rax, qword ptr [rcx]
	mov	qword ptr [rsp + 0x30], rax
	mov	rbx, qword ptr [rsp + 0x20]
.label_336:
	mov	qword ptr [rsp + 8], rbx
	mov	qword ptr [rsp], r13
	mov	r12, rcx
	mov	rdi, r12
	mov	rsi, rbp
	mov	rdx, r8
	mov	rcx, rbp
	mov	r9, r15
	call	mulredc2
	mov	rcx, r12
	mov	r8, rax
	mov	rbp, qword ptr [rcx]
	shr	r14, 1
	jne	.label_339
	jmp	.label_334
.label_335:
	mov	rcx, rdi
.label_334:
	mov	rax, qword ptr [rsp + 0x30]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rsp + 0x38]
	add	rsp, 0x48
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
	#Procedure 0x405a10

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
	js	.label_340
	test	rcx, rcx
	js	.label_341
	test	r9, r9
	js	.label_344
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
	ja	.label_342
	jne	.label_343
	cmp	rsi, rbp
	jb	.label_343
.label_342:
	mov	qword ptr [rsp + 0x10], r9
	mov	qword ptr [rsp + 8], rbp
	sub	rsi, qword ptr [rsp + 8]
	sbb	rcx, qword ptr [rsp + 0x10]
.label_343:
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
.label_340:
	mov	edi, OFFSET FLAT:.str.46
	mov	esi, OFFSET FLAT:.str.42
	mov	edx, 0x3e7
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mulredc2
	call	__assert_fail
.label_341:
	mov	edi, OFFSET FLAT:.str.47
	mov	esi, OFFSET FLAT:.str.42
	mov	edx, 0x3e8
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mulredc2
	call	__assert_fail
.label_344:
	mov	edi, OFFSET FLAT:.str.48
	mov	esi, OFFSET FLAT:.str.42
	mov	edx, 0x3e9
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mulredc2
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c20

	.globl gcd2_odd
	.type gcd2_odd, @function
gcd2_odd:
	sub	rsp, 0x28
	test	r8b, 1
	je	.label_354
	mov	rax, rdx
	or	rax, rsi
	je	.label_358
	test	dl, 1
	jne	.label_361
	nop	dword ptr [rax + rax]
.label_345:
	mov	rax, rsi
	shld	rax, rdx, 0x3f
	shr	rsi, 1
	bt	rdx, 1
	mov	rdx, rax
	jae	.label_345
	jmp	.label_351
.label_358:
	mov	qword ptr [rdi], rcx
	jmp	.label_347
.label_361:
	mov	rax, rdx
.label_351:
	mov	rdx, rsi
	or	rdx, rcx
	jne	.label_346
	jmp	.label_357
.label_362:
	mov	rcx, rsi
.label_359:
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], r8
	sub	rax, qword ptr [rsp + 8]
	sbb	rsi, qword ptr [rsp + 0x10]
	nop	word ptr cs:[rax + rax]
.label_349:
	mov	rdx, rax
	mov	rax, rsi
	shld	rax, rdx, 0x3f
	shr	rsi, 1
	bt	rdx, 1
	jae	.label_349
	jmp	.label_356
	nop	word ptr [rax + rax]
.label_346:
	cmp	rsi, rcx
	ja	.label_359
	jne	.label_360
	cmp	rax, r8
	ja	.label_362
.label_360:
	cmp	rsi, rcx
	sete	r9b
	cmp	rax, r8
	sbb	dl, dl
	cmp	rcx, rsi
	ja	.label_363
	and	dl, r9b
	je	.label_348
.label_363:
	mov	qword ptr [rsp + 0x20], rsi
	mov	qword ptr [rsp + 0x18], rax
	sub	r8, qword ptr [rsp + 0x18]
	sbb	rcx, qword ptr [rsp + 0x20]
	nop	word ptr [rax + rax]
.label_352:
	mov	rdx, r8
	mov	r8, rcx
	shld	r8, rdx, 0x3f
	shr	rcx, 1
	bt	rdx, 1
	jae	.label_352
.label_356:
	mov	rdx, rcx
	or	rdx, rsi
	jne	.label_346
.label_357:
	mov	rcx, r8
	mov	qword ptr [rdi], 0
	mov	rdx, rax
	and	rdx, 1
	mov	r8, rax
	cmove	r8, rcx
	test	rdx, rdx
	cmove	rcx, rax
	test	rcx, rcx
	je	.label_347
	shr	r8, 1
	jmp	.label_355
.label_353:
	mov	rax, rcx
	sar	rax, 0x3f
	mov	rdx, rax
	and	rdx, rcx
	add	r8, rdx
	xor	rcx, rax
	sub	rcx, rax
	nop	dword ptr [rax]
.label_355:
	mov	rax, rcx
	shr	rcx, 1
	test	al, 1
	je	.label_355
	sub	rcx, r8
	jne	.label_353
	or	rax, 1
	jmp	.label_350
.label_348:
	mov	qword ptr [rdi], rsi
.label_350:
	mov	r8, rax
.label_347:
	mov	rax, r8
	add	rsp, 0x28
	ret	
.label_354:
	mov	edi, OFFSET FLAT:.str.51
	mov	esi, OFFSET FLAT:.str.42
	mov	edx, 0x1e3
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.gcd2_odd
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405d90

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
	jle	.label_372
	mov	esi, 0x17ded79
	mov	rdi, r15
	call	__gmpz_cmp_ui
	mov	ecx, eax
	mov	al, 1
	test	ecx, ecx
	js	.label_364
	xor	r14d, r14d
	lea	r13, [rsp + 0x60]
	lea	r12, [rsp + 0x50]
	lea	rbx, [rsp + 0x40]
	lea	rcx, [rsp + 0x30]
	xor	r8d, r8d
	xor	eax, eax
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, rbx
	call	__gmpz_inits
	mov	edx, 1
	mov	rdi, rbx
	mov	rsi, r15
	call	__gmpz_sub_ui
	xor	esi, esi
	mov	rdi, rbx
	call	__gmpz_scan1
	mov	rbp, rax
	mov	qword ptr [rsp + 8], rbp
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, rbp
	call	__gmpz_tdiv_q_2exp
	mov	esi, 2
	mov	rdi, r12
	call	__gmpz_set_ui
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r12
	lea	rcx, [rsp + 0x30]
	mov	r8, r13
	mov	r9, rbp
	call	mp_millerrabin
	test	al, al
	je	.label_367
	lea	rbx, [rsp + 0x30]
	lea	r12, [rsp + 0x40]
	mov	rdi, rbx
	mov	rsi, r12
	call	__gmpz_set
	lea	rsi, [rsp + 0x18]
	mov	rdi, rbx
	call	mp_factor
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	lea	r13, [rsp + 0x50]
	nop	word ptr cs:[rax + rax]
.label_373:
	mov	al, 1
	cmp	qword ptr [rsp + 0x28], 0
	mov	ebp, 0
	mov	r14d, 1
	je	.label_369
	nop	dword ptr [rax]
.label_371:
	mov	rdx, qword ptr [rsp + 0x18]
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
	mov	rcx, qword ptr [rsp + 0x28]
	test	eax, eax
	je	.label_365
	add	rbp, 0x10
	cmp	r14, rcx
	lea	r14, [r14 + 1]
	jb	.label_371
.label_365:
	test	eax, eax
	mov	rbp, qword ptr [rsp + 0x10]
	jne	.label_366
	movzx	edx, byte ptr [rbp + primes_diff]
	mov	rdi, r13
	mov	rsi, r13
	call	__gmpz_add_ui
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, r13
	mov	rcx, rbx
	lea	r8, [rsp + 0x60]
	mov	r9, qword ptr [rsp + 8]
	call	mp_millerrabin
	test	al, al
	je	.label_368
	inc	rbp
	mov	qword ptr [rsp + 0x10], rbp
	cmp	rbp, 0x29b
	jbe	.label_373
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.43
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	call	abort
.label_372:
	xor	eax, eax
	jmp	.label_364
.label_366:
	setne	al
	jmp	.label_374
.label_368:
	mov	rcx, qword ptr [rsp + 0x28]
	xor	eax, eax
.label_374:
	xor	edi, edi
	test	rcx, rcx
	je	.label_369
	mov	rbp, rax
	mov	ebx, 1
	nop	dword ptr [rax]
.label_370:
	shl	rdi, 4
	add	rdi, qword ptr [rsp + 0x18]
	call	__gmpz_clear
	mov	edi, ebx
	inc	ebx
	cmp	rdi, qword ptr [rsp + 0x28]
	jb	.label_370
	mov	rax, rbp
.label_369:
	mov	rdi, qword ptr [rsp + 0x18]
	mov	r14, rax
	call	free
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
.label_367:
	lea	rdi, [rsp + 0x60]
	lea	rsi, [rsp + 0x50]
	lea	rdx, [rsp + 0x40]
	lea	rcx, [rsp + 0x30]
	xor	r8d, r8d
	xor	eax, eax
	call	__gmpz_clears
	test	r14b, r14b
	setne	al
.label_364:
	add	rsp, 0x78
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
	#Procedure 0x406000

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
	mov	qword ptr [rsp + 8], rdi
	mov	r13, qword ptr [rdi + 0x10]
	mov	rcx, qword ptr [rdi]
	mov	rax, qword ptr [rdi + 8]
	mov	qword ptr [rsp + 0x10], rax
	mov	rbx, r13
	dec	rbx
	mov	r14, rbx
	js	.label_375
	mov	rax, r13
	shl	rax, 4
	lea	rbp, [rax + rcx - 0x10]
	mov	qword ptr [rsp], rcx
	mov	rax, r13
	nop	word ptr cs:[rax + rax]
.label_380:
	mov	r12, rax
	mov	rdi, rbp
	mov	rsi, r15
	call	__gmpz_cmp
	lea	r14, [r12 - 1]
	test	eax, eax
	jle	.label_381
	lea	rax, [r12 - 1]
	add	rbp, -0x10
	test	rax, rax
	jg	.label_380
	add	r12, -2
	mov	r14, r12
	mov	rcx, qword ptr [rsp]
	jmp	.label_375
.label_381:
	mov	rcx, qword ptr [rsp]
	je	.label_376
.label_375:
	lea	rsi, [r13 + 1]
	mov	qword ptr [rsp], rsi
	shl	rsi, 4
	mov	rdi, rcx
	call	xrealloc
	mov	rbp, rax
	lea	rsi, [r13*8 + 8]
	mov	rdi, qword ptr [rsp + 0x10]
	call	xrealloc
	mov	r12, rax
	shl	r13, 4
	add	r13, rbp
	mov	rdi, r13
	call	__gmpz_init
	jmp	.label_377
	nop	dword ptr [rax]
.label_378:
	mov	rdi, r13
	lea	r13, [r13 - 0x10]
	mov	rsi, r13
	call	__gmpz_set
	mov	rax, qword ptr [r12 + rbx*8]
	mov	qword ptr [r12 + rbx*8 + 8], rax
	dec	rbx
.label_377:
	cmp	rbx, r14
	jg	.label_378
	lea	rax, [r14 + 1]
	shl	rax, 4
	mov	rdi, rbp
	add	rdi, rax
	mov	rsi, r15
	call	__gmpz_set
	mov	qword ptr [r12 + r14*8 + 8], 1
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], rbp
	mov	qword ptr [rax + 8], r12
	mov	rcx, qword ptr [rsp]
	mov	qword ptr [rax + 0x10], rcx
.label_379:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_376:
	mov	rax, qword ptr [rsp + 0x10]
	inc	qword ptr [rax + r12*8 - 8]
	jmp	.label_379
	nop	
	.section	.text
	.align	16
	#Procedure 0x406140

	.globl mp_factor_using_pollard_rho
	.type mp_factor_using_pollard_rho, @function
mp_factor_using_pollard_rho:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xb8
	mov	qword ptr [rsp + 0x38], rdx
	mov	rbx, rsi
	mov	r13, rdi
	movzx	eax, byte ptr [rip + dev_debug]
	and	eax, 1
	cmp	eax, 1
	jne	.label_387
	mov	rdi, qword ptr [rip + stderr]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.55
	xor	eax, eax
	mov	rcx, rbx
	call	__fprintf_chk
.label_387:
	mov	qword ptr [rsp + 0x48], rbx
	lea	rdi, [rsp + 0x60]
	lea	rsi, [rsp + 0x50]
	xor	edx, edx
	xor	eax, eax
	call	__gmpz_inits
	lea	rdi, [rsp + 0x80]
	mov	esi, 2
	call	__gmpz_init_set_si
	lea	rdi, [rsp + 0xa0]
	mov	esi, 2
	call	__gmpz_init_set_si
	lea	rdi, [rsp + 0x90]
	mov	esi, 2
	call	__gmpz_init_set_si
	lea	rdi, [rsp + 0x70]
	mov	esi, 1
	call	__gmpz_init_set_ui
	mov	esi, 1
	mov	rdi, r13
	call	__gmpz_cmp_ui
	test	eax, eax
	je	.label_385
	mov	rax, qword ptr [rsp + 0x48]
	inc	rax
	mov	qword ptr [rsp + 0x30], rax
	mov	ecx, 1
	lea	r15, [rsp + 0x60]
	lea	r12, [rsp + 0xa0]
	lea	rbp, [rsp + 0x50]
	lea	r14, [rsp + 0x80]
	mov	eax, 1
	jmp	.label_394
.label_386:
	mov	rdi, r14
	mov	rsi, r12
	call	__gmpz_set
	mov	rax, qword ptr [rsp + 0x20]
	mov	rcx, rax
	lea	rax, [rax + rax]
	nop	word ptr cs:[rax + rax]
.label_394:
	mov	qword ptr [rsp + 0x20], rax
.label_382:
	mov	qword ptr [rsp + 0x28], rcx
	and	ecx, 0x1f
	mov	qword ptr [rsp + 0x40], rcx
	lea	rbx, [rsp + 0x90]
	nop	word ptr [rax + rax]
.label_384:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, r12
	call	__gmpz_mul
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r13
	call	__gmpz_mod
	mov	rdi, r12
	mov	rsi, r12
	mov	rdx, qword ptr [rsp + 0x48]
	call	__gmpz_add_ui
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r12
	call	__gmpz_sub
	mov	rdi, rbp
	lea	rbx, [rsp + 0x70]
	mov	rsi, rbx
	mov	rdx, r15
	call	__gmpz_mul
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, r13
	call	__gmpz_mod
	cmp	qword ptr [rsp + 0x40], 1
	jne	.label_389
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r13
	call	__gmpz_gcd
	mov	esi, 1
	mov	rdi, r15
	call	__gmpz_cmp_ui
	test	eax, eax
	lea	rbx, [rsp + 0x90]
	mov	r12, qword ptr [rsp + 0x48]
	je	.label_393
	nop	word ptr [rax + rax]
.label_391:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, r14
	call	__gmpz_mul
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, r13
	call	__gmpz_mod
	mov	rdi, r14
	mov	rsi, r14
	mov	rdx, r12
	call	__gmpz_add_ui
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r14
	call	__gmpz_sub
	mov	rdi, r15
	mov	rsi, r15
	mov	rdx, r13
	call	__gmpz_gcd
	mov	esi, 1
	mov	rdi, r15
	call	__gmpz_cmp_ui
	test	eax, eax
	je	.label_391
	mov	rdi, r13
	mov	rsi, r13
	mov	rdx, r15
	call	__gmpz_divexact
	mov	rdi, r15
	call	mp_prime_p
	test	al, al
	je	.label_395
	mov	rdi, qword ptr [rsp + 0x38]
	mov	rsi, r15
	call	mp_factor_insert
	jmp	.label_388
.label_395:
	movzx	eax, byte ptr [rip + dev_debug]
	and	eax, 1
	cmp	eax, 1
	jne	.label_392
	mov	rdi, qword ptr [rip + stderr]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.56
	xor	eax, eax
	call	__fprintf_chk
.label_392:
	mov	rdi, r15
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rdx, qword ptr [rsp + 0x38]
	call	mp_factor_using_pollard_rho
.label_388:
	mov	rdi, r13
	call	mp_prime_p
	test	al, al
	jne	.label_390
	lea	r12, [rsp + 0xa0]
	mov	rdi, r12
	mov	rsi, r12
	mov	rdx, r13
	call	__gmpz_mod
	mov	rdi, rbx
	mov	rsi, rbx
	mov	rdx, r13
	call	__gmpz_mod
	mov	rdi, r14
	mov	rsi, r14
	mov	rdx, r13
	call	__gmpz_mod
	mov	esi, 1
	mov	rdi, r13
	call	__gmpz_cmp_ui
	test	eax, eax
	jne	.label_384
	jmp	.label_385
	nop	word ptr cs:[rax + rax]
.label_393:
	mov	rdi, r14
	lea	rsi, [rsp + 0xa0]
	call	__gmpz_set
.label_389:
	mov	rcx, qword ptr [rsp + 0x28]
	dec	rcx
	lea	r12, [rsp + 0xa0]
	jne	.label_382
	lea	rdi, [rsp + 0x90]
	mov	rsi, r12
	call	__gmpz_set
	mov	rbx, qword ptr [rsp + 0x20]
	test	rbx, rbx
	je	.label_386
	nop	word ptr cs:[rax + rax]
.label_383:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, r12
	call	__gmpz_mul
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r13
	call	__gmpz_mod
	mov	rdi, r12
	mov	rsi, r12
	mov	rdx, qword ptr [rsp + 0x48]
	call	__gmpz_add_ui
	dec	rbx
	jne	.label_383
	jmp	.label_386
.label_390:
	mov	rdi, qword ptr [rsp + 0x38]
	mov	rsi, r13
	call	mp_factor_insert
.label_385:
	mov	qword ptr [rsp], 0
	lea	rdi, [rsp + 0x70]
	lea	rsi, [rsp + 0x50]
	lea	rdx, [rsp + 0x60]
	lea	rcx, [rsp + 0x90]
	lea	r8, [rsp + 0xa0]
	lea	r9, [rsp + 0x80]
	xor	eax, eax
	call	__gmpz_clears
	add	rsp, 0xb8
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
	#Procedure 0x406510

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
	je	.label_396
	mov	rdi, r13
	mov	rsi, r15
	call	__gmpz_cmp
	test	eax, eax
	je	.label_399
	mov	ebx, 2
	cmp	r14, 2
	jb	.label_401
	nop	word ptr cs:[rax + rax]
.label_398:
	mov	edx, 2
	mov	rdi, r13
	mov	rsi, r13
	mov	rcx, r12
	call	__gmpz_powm_ui
	mov	rdi, r13
	mov	rsi, r15
	call	__gmpz_cmp
	test	eax, eax
	je	.label_400
	mov	esi, 1
	mov	rdi, r13
	call	__gmpz_cmp_ui
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	je	.label_397
	cmp	rbx, r14
	lea	rbx, [rbx + 1]
	jb	.label_398
	jmp	.label_397
.label_396:
	mov	al, 1
	jmp	.label_397
.label_399:
	mov	al, 1
	jmp	.label_397
.label_401:
	xor	eax, eax
	jmp	.label_397
.label_400:
	mov	al, 1
.label_397:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4065d0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4065e0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4065f0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_405
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_404
	cmp	dword ptr [rbp], 0x20
	jne	.label_404
.label_405:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_403
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_404:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_1
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_402
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_403:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_402:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_0
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
	#Procedure 0x4066b0

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
	je	.label_406
	nop	word ptr [rax + rax]
.label_408:
	mov	edi, ebp
	mov	rsi, rbx
	mov	rdx, r15
	call	safe_write
	cmp	rax, -1
	je	.label_406
	test	rax, rax
	je	.label_407
	add	r14, rax
	add	rbx, rax
	sub	r15, rax
	jne	.label_408
	jmp	.label_406
.label_407:
	call	__errno_location
	mov	dword ptr [rax], 0x1c
.label_406:
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
	#Procedure 0x406710

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	word ptr cs:[rax + rax]
.label_409:
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
	ja	.label_409
	mov	rax, rsi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406760

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_410
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_411
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_411
	mov	esi, OFFSET FLAT:.str.2_0
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_412
	add	r14, 3
	mov	qword ptr [rip + program_invocation_short_name],  r14
.label_412:
	mov	rbx, r14
.label_411:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_410:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:.str_3
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406810
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
	je	.label_414
	mov	rdi, r14
	mov	rsi, rbx
	call	mbsstr_trimmed_wordbounded
	test	al, al
	je	.label_413
	mov	rbx, r14
	jmp	.label_414
.label_413:
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
	mov	ecx, OFFSET FLAT:.str_4
	xor	eax, eax
	mov	rdi, r15
	mov	r8, r14
	mov	r9, rbx
	call	__sprintf_chk
	mov	rbx, r15
.label_414:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x406890

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
	mov	qword ptr [rsp], rax
	cmp	byte ptr [rbp], 0
	je	.label_420
	lea	r12, [rsp + 0x48]
	lea	r15, [rsp + 8]
	nop	dword ptr [rax]
.label_427:
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp]
	call	mbsstr
	mov	rbx, rax
	test	rbx, rbx
	je	.label_420
	call	__ctype_get_mb_cur_max
	cmp	rax, 2
	jb	.label_431
	mov	qword ptr [rsp + 0x58], rbp
	mov	byte ptr [rsp + 0x48], 0
	mov	qword ptr [rsp + 0x4c], 0
	mov	byte ptr [rsp + 0x54], 0
	mov	r13b, 1
	cmp	rbp, rbx
	jae	.label_422
	nop	word ptr [rax + rax]
.label_423:
	mov	rdi, r12
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x68]
	mov	rdi, rax
	shr	rdi, 0x20
	test	al, al
	je	.label_432
	test	edi, edi
	je	.label_421
.label_432:
	mov	rcx, qword ptr [rsp + 0x58]
	add	rcx, qword ptr [rsp + 0x60]
	mov	qword ptr [rsp + 0x58], rcx
	mov	byte ptr [rsp + 0x54], 0
	cmp	rcx, rbx
	jb	.label_423
	test	al, al
	je	.label_422
	call	iswalnum
	test	eax, eax
	sete	r13b
.label_422:
	mov	qword ptr [rsp + 0x58], rbx
	mov	byte ptr [rsp + 0x48], 0
	mov	qword ptr [rsp + 0x4c], 0
	mov	byte ptr [rsp + 0x54], 0
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rsp + 0x18], rax
	mov	byte ptr [rsp + 8], 0
	mov	qword ptr [rsp + 0xc], 0
	jmp	.label_430
	nop	dword ptr [rax]
.label_425:
	mov	rax, qword ptr [rsp + 0x60]
	add	qword ptr [rsp + 0x58], rax
	mov	byte ptr [rsp + 0x54], 0
	mov	rax, qword ptr [rsp + 0x20]
	add	qword ptr [rsp + 0x18], rax
.label_430:
	mov	byte ptr [rsp + 0x14], 0
	mov	rdi, r15
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x28]
	test	al, al
	je	.label_424
	shr	rax, 0x20
	je	.label_426
.label_424:
	mov	rdi, r12
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x68]
	test	al, al
	je	.label_425
	shr	rax, 0x20
	jne	.label_425
	jmp	.label_421
	nop	word ptr cs:[rax + rax]
.label_431:
	mov	r13b, 1
	cmp	rbp, rbx
	mov	r14b, 1
	jae	.label_415
	movzx	ebp, byte ptr [rbx - 1]
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + rbp*2], 8
	sete	r14b
.label_415:
	mov	rdi, qword ptr [rsp]
	call	strlen
	movzx	ebp, byte ptr [rbx + rax]
	test	rbp, rbp
	je	.label_419
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + rbp*2], 8
	sete	r13b
.label_419:
	mov	bpl, 1
	test	r14b, r13b
	jne	.label_418
	cmp	byte ptr [rbx], 0
	je	.label_420
	inc	rbx
	jmp	.label_428
	nop	
.label_426:
	mov	rdi, r12
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x68]
	mov	rdi, rax
	shr	rdi, 0x20
	test	edi, edi
	sete	cl
	test	al, al
	setne	dl
	test	al, al
	mov	bpl, 1
	mov	al, 1
	je	.label_416
	and	dl, cl
	mov	al, 1
	jne	.label_416
	call	iswalnum
	test	eax, eax
	sete	al
.label_416:
	test	r13b, r13b
	je	.label_417
	test	al, al
	jne	.label_418
.label_417:
	mov	qword ptr [rsp + 0x58], rbx
	mov	byte ptr [rsp + 0x48], 0
	mov	qword ptr [rsp + 0x4c], 0
	mov	byte ptr [rsp + 0x54], 0
	mov	rdi, r12
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x68]
	test	al, al
	je	.label_429
	shr	rax, 0x20
	je	.label_420
.label_429:
	add	rbx, qword ptr [rsp + 0x60]
.label_428:
	mov	rbp, rbx
	cmp	byte ptr [rbp], 0
	jne	.label_427
.label_420:
	xor	ebp, ebp
.label_418:
	mov	rdi, qword ptr [rsp]
	call	free
	mov	al, bpl
	add	rsp, 0x88
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_421:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406b10

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
	mov	esi, OFFSET FLAT:.str.1_2
	mov	rdi, r14
	call	c_strcasecmp
	test	eax, eax
	je	.label_441
	mov	qword ptr [rsp + 8], rbx
	mov	esi, OFFSET FLAT:.str.1_2
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
	mov	esi, OFFSET FLAT:.str.1_2
	mov	rdi, r13
	mov	rdx, rbp
	call	xstr_iconv
	mov	r13, rax
	mov	rdi, rbp
	call	free
	test	r13, r13
	je	.label_439
	mov	esi, 0x3f
	mov	rdi, r13
	call	strchr
	test	rax, rax
	je	.label_442
	mov	rdi, r13
	call	free
	xor	r13d, r13d
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_444
.label_441:
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	r15, r13
	xor	ebp, ebp
	jmp	.label_446
.label_439:
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	r13d, r13d
	jmp	.label_444
.label_442:
	mov	qword ptr [rsp + 0x10], r13
.label_444:
	mov	rbp, r15
	mov	rbx, qword ptr [rsp + 8]
.label_446:
	test	r13, r13
	mov	r14, r12
	cmovne	r14, r13
	test	r15, r15
	cmovne	r14, r15
	mov	rdi, rbx
	mov	rsi, r12
	call	strcmp
	test	eax, eax
	je	.label_437
	mov	rdi, rbx
	mov	rsi, r12
	call	mbsstr_trimmed_wordbounded
	test	al, al
	jne	.label_438
	test	r15, r15
	je	.label_440
	mov	rdi, rbx
	mov	rsi, r15
	call	mbsstr_trimmed_wordbounded
	test	al, al
	jne	.label_438
.label_440:
	test	r13, r13
	je	.label_443
	mov	rdi, rbx
	mov	rsi, r13
	call	mbsstr_trimmed_wordbounded
	test	al, al
	je	.label_443
.label_438:
	test	rbp, rbp
	je	.label_445
	mov	rdi, rbp
	call	free
.label_445:
	mov	rdi, qword ptr [rsp + 0x10]
	test	rdi, rdi
	je	.label_434
	call	free
	jmp	.label_434
.label_437:
	test	rbp, rbp
	je	.label_435
	cmp	rbp, r14
	je	.label_435
	mov	rdi, rbp
	call	free
.label_435:
	mov	rdi, qword ptr [rsp + 0x10]
	test	rdi, rdi
	je	.label_436
	cmp	rdi, r14
	je	.label_436
	call	free
.label_436:
	mov	rbx, r14
	jmp	.label_434
.label_443:
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
	mov	ecx, OFFSET FLAT:.str_4
	xor	eax, eax
	mov	rdi, rbx
	mov	r8, r15
	mov	r9, r14
	call	__sprintf_chk
	test	rbp, rbp
	je	.label_433
	mov	rdi, rbp
	call	free
.label_433:
	mov	rdi, qword ptr [rsp + 0x10]
	test	rdi, rdi
	je	.label_434
	call	free
.label_434:
	mov	rax, rbx
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406d40
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
	#Procedure 0x406d80
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
	#Procedure 0x406d90
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
	#Procedure 0x406da0
	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:

	mov	ecx, esi
	test	rdi, rdi
	mov	esi, OFFSET FLAT:default_quoting_options
	cmovne	rsi, rdi
	mov	al, cl
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
	#Procedure 0x406de0
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
	#Procedure 0x406e00
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_447
	test	rdx, rdx
	je	.label_447
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_447:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406e30
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	qword ptr [rsp + 0x20], rcx
	mov	r15, rdx
	mov	r12, rsi
	mov	r13, rdi
	test	r8, r8
	mov	ebp, OFFSET FLAT:default_quoting_options
	cmovne	rbp, r8
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	r8, qword ptr [rbp]
	mov	rax, qword ptr [rbp + 0x28]
	mov	r9, r8
	shr	r9, 0x20
	mov	rcx, qword ptr [rbp + 0x30]
	add	rbp, 8
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], rbp
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x20]
	call	quotearg_buffer_restyled
	mov	dword ptr [rbx], r14d
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
	#Procedure 0x406eb0

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x108
	mov	ebx, r9d
	mov	dword ptr [rsp + 0x6c], ebx
	mov	r15d, r8d
	mov	r13, rcx
	mov	qword ptr [rsp + 0xa8], rdx
	mov	rbp, rsi
	mov	qword ptr [rsp + 0xe0], rdi
	mov	rax, qword ptr [rsp + 0x150]
	mov	qword ptr [rsp + 0x98], rax
	mov	rax, qword ptr [rsp + 0x148]
	mov	qword ptr [rsp + 0xa0], rax
	call	__ctype_get_mb_cur_max
	mov	qword ptr [rsp + 0x60], rax
	mov	r12b, bl
	shr	r12b, 1
	and	r12b, 1
	mov	eax, ebx
	and	eax, 1
	mov	dword ptr [rsp + 0x5c], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x58], ebx
	mov	r8b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x90], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0xc8], rax
	mov	eax, 0
	mov	dword ptr [rsp + 0xd8], 0
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x70], rcx
.label_487:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_543
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, r13
	jmp	qword ptr [(rcx * 8) + label_545]
.label_968:
	mov	edi, OFFSET FLAT:.str.11_0
	mov	esi, r15d
	mov	r14, r10
	mov	bl, r8b
	call	gettext_quote
	mov	qword ptr [rsp + 0xa0], rax
	mov	edi, OFFSET FLAT:.str.12_0
	mov	esi, r15d
	call	gettext_quote
	mov	r8b, bl
	mov	r10, r14
	mov	qword ptr [rsp + 0x98], rax
.label_969:
	mov	byte ptr [rsp + 0x69], r8b
	mov	r13, rbp
	test	r12b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0xa0]
	jne	.label_564
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_564
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_468:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_459
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_459:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_468
.label_564:
	mov	rbp, qword ptr [rsp + 0x98]
	mov	rdi, rbp
	mov	rbx, r10
	call	strlen
	mov	r10, rbx
	mov	qword ptr [rsp + 0xc8], rax
	mov	r9d, r15d
	mov	qword ptr [rsp + 0xb8], rbp
	mov	dil, 1
	mov	sil, r12b
	mov	rbp, r13
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r11, qword ptr [rsp + 0xa8]
	jmp	.label_485
.label_961:
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	dil, al
	xor	esi, esi
	jmp	.label_485
.label_964:
	mov	al, 1
.label_962:
	mov	r12b, 1
.label_965:
	test	r12b, 1
	mov	cl, 1
	je	.label_504
	mov	cl, al
.label_504:
	mov	al, cl
.label_963:
	mov	r9d, 2
	test	r12b, 1
	jne	.label_507
	test	r10, r10
	je	.label_510
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_511
.label_507:
	xor	ecx, ecx
	jmp	.label_511
.label_966:
	mov	r9d, 5
	test	r12b, 1
	jne	.label_531
	test	r10, r10
	je	.label_523
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_527
.label_967:
	mov	dil, 1
	mov	r9d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	sil, 1
	jmp	.label_485
.label_510:
	mov	ecx, 1
	nop	dword ptr [rax]
.label_511:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0xb8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xc8], rcx
	mov	dil, al
	mov	sil, r12b
	jmp	.label_485
.label_531:
	xor	eax, eax
	jmp	.label_527
.label_523:
	mov	eax, 1
.label_527:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	dil, 1
	mov	sil, r12b
	nop	dword ptr [rax + rax]
.label_485:
	mov	qword ptr [rsp + 0x80], rsi
	mov	byte ptr [rsp + 0x8f], dil
	cmp	qword ptr [rsp + 0x140], 0
	setne	dl
	cmp	r9d, 2
	setne	r15b
	sete	al
	mov	cl, dil
	and	cl, 1
	mov	byte ptr [rsp + 0xb6], cl
	sete	byte ptr [rsp + 0x6b]
	mov	bl, r15b
	and	bl, cl
	mov	byte ptr [rsp + 0xd7], bl
	cmp	qword ptr [rsp + 0xc8], 0
	setne	r13b
	mov	r12b, r13b
	and	r12b, bl
	mov	byte ptr [rsp + 0xc6], r12b
	mov	bl, sil
	and	bl, 1
	mov	byte ptr [rsp + 0xc7], bl
	sete	cl
	and	al, bl
	mov	byte ptr [rsp + 0x7f], al
	and	dl, bl
	mov	byte ptr [rsp + 0xc5], dl
	or	cl, r15b
	mov	byte ptr [rsp + 0xb7], cl
	and	dil, sil
	and	dil, r13b
	mov	byte ptr [rsp + 0x6a], dil
	xor	edi, edi
	mov	r14d, dword ptr [rsp + 0xd8]
	jmp	.label_554
.label_500:
	inc	rdi
.label_554:
	cmp	rbp, -1
	je	.label_477
	cmp	rdi, rbp
	jne	.label_479
	jmp	.label_481
	nop	word ptr cs:[rax + rax]
.label_477:
	mov	r13, -1
	cmp	byte ptr [r11 + rdi], 0
	je	.label_486
.label_479:
	test	r12b, r12b
	je	.label_490
	mov	rax, qword ptr [rsp + 0xc8]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_492
	cmp	rbp, -1
	jne	.label_492
	mov	eax, r14d
	mov	r14, rdi
	mov	rdi, r11
	mov	rbp, r10
	mov	r15b, r8b
	mov	r13, r9
	mov	dword ptr [rsp + 0xd8], eax
	mov	r12, r11
	call	strlen
	mov	rdi, r14
	mov	r11, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	r14d, dword ptr [rsp + 0xd8]
	mov	r9, r13
	mov	r8b, r15b
	mov	r10, rbp
	mov	rbp, rax
.label_492:
	cmp	rbx, rbp
	jbe	.label_515
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_525
	nop	word ptr [rax + rax]
.label_490:
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_525
.label_515:
	mov	dword ptr [rsp + 0xd8], r14d
	mov	r12, rbp
	mov	r13, r9
	mov	r15b, r8b
	mov	rbx, r10
	mov	r14, rdi
	lea	rdi, [r11 + r14]
	mov	rbp, r11
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	rdx, qword ptr [rsp + 0xc8]
	call	memcmp
	test	eax, eax
	sete	al
	mov	dword ptr [rsp + 0xec], eax
	jne	.label_540
	cmp	byte ptr [rsp + 0xc7], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	je	.label_525
	jmp	.label_457
.label_540:
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	nop	word ptr cs:[rax + rax]
.label_525:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_460
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_559]
.label_980:
	test	rdi, rdi
	jne	.label_451
	jmp	.label_566
.label_984:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_567
	test	rdi, rdi
	jne	.label_570
	cmp	rbp, 1
	je	.label_566
	xor	r13d, r13d
	jmp	.label_455
.label_973:
	cmp	byte ptr [rsp + 0xb6], 0
	je	.label_450
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_457
	cmp	r9d, 2
	jne	.label_461
	mov	al, r14b
	and	al, 1
	jne	.label_463
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_466
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_466:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_449
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_449:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_518
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_518:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r14b, 1
	mov	rcx, rax
	jmp	.label_494
.label_974:
	mov	bl, 0x62
	jmp	.label_483
.label_975:
	mov	cl, 0x74
	jmp	.label_454
.label_976:
	mov	bl, 0x76
	jmp	.label_483
.label_977:
	mov	bl, 0x66
	jmp	.label_483
.label_978:
	mov	cl, 0x72
	jmp	.label_454
.label_981:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	cmp	r9d, 2
	jne	.label_508
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_512
	test	r10, r10
	sete	al
	mov	rcx, qword ptr [rsp + 0x90]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, r10
	mov	qword ptr [rsp + 0x90], rdx
	mov	eax, 0
	cmove	r10, rax
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_517
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_517:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_536
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_536:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_568
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_568:
	add	qword ptr [rsp + 0xf0], 3
	xor	r14d, r14d
.label_508:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_455
.label_982:
	cmp	r9d, 5
	je	.label_546
	cmp	r9d, 2
	jne	.label_451
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_451
	jmp	.label_550
.label_983:
	cmp	r9d, 2
	jne	.label_552
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_555
	jmp	.label_561
.label_460:
	mov	qword ptr [rsp + 0x30], r9
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x48], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_562
	mov	r13d, r14d
	mov	r14, r11
	mov	rbx, rdi
	call	__ctype_b_loc
	mov	rdi, rbx
	mov	r11, r14
	mov	r14d, r13d
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	eax, 1
.label_495:
	and	r13b, 1
	mov	cl, r13b
	or	cl, byte ptr [rsp + 0x6b]
	cmp	rax, 1
	mov	r10, qword ptr [rsp + 0x48]
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r9, qword ptr [rsp + 0x30]
	ja	.label_453
	test	cl, cl
	je	.label_453
	xor	eax, eax
	jmp	.label_455
.label_567:
	test	rdi, rdi
	jne	.label_471
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_471
.label_566:
	mov	dl, 1
.label_979:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_456
	xor	eax, eax
	mov	r13b, dl
	jmp	.label_455
.label_450:
	cmp	dword ptr [rsp + 0x5c], 0
	jne	.label_500
	jmp	.label_451
.label_552:
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r15b
	je	.label_454
.label_555:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_493
.label_454:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	bl, cl
	je	.label_496
.label_483:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xb6], 0
	mov	r13d, 0
	je	.label_455
	jmp	.label_505
.label_562:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_506
	mov	rbp, rdi
	mov	rdi, r11
	mov	rbx, r11
	call	strlen
	mov	rdi, rbp
	mov	r11, rbx
	mov	rbp, rax
.label_506:
	mov	qword ptr [rsp + 0x40], rbp
	lea	rax, [r11 + rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	r13b, 1
	xor	eax, eax
	lea	rbx, [rsp + 0x100]
.label_565:
	mov	qword ptr [rsp + 0xd8], rax
	mov	qword ptr [rsp + 0x50], rdi
	lea	rax, [rax + rdi]
	mov	qword ptr [rsp + 0x38], rax
	lea	rsi, [r11 + rax]
	mov	rdx, rbp
	sub	rdx, rax
	lea	rdi, [rsp + 0xfc]
	mov	rcx, rbx
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_535
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x48]
	movabs	rsi, 0x20000002b
	je	.label_538
	cmp	rbp, -2
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_541
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_502
	mov	rax, qword ptr [rsp + 0xd8]
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rax, [rcx + rax]
	mov	ecx, 1
.label_551:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_548
	bt	rsi, rdx
	jb	.label_549
.label_548:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_551
.label_502:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_480
	xor	r13d, r13d
.label_480:
	mov	rax, qword ptr [rsp + 0xd8]
	add	rax, rbp
	mov	rdi, rbx
	mov	rbp, rax
	call	mbsinit
	test	eax, eax
	mov	rax, rbp
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_565
	jmp	.label_495
.label_471:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_455
.label_546:
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_451
	lea	rcx, [rdi + 2]
	cmp	rcx, rbp
	jae	.label_451
	movzx	eax, byte ptr [rdi + r11 + 1]
	cmp	eax, 0x3f
	jne	.label_451
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_464
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_469
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_571
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_473
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rsi], 0x3f
.label_473:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_488
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_488:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_498
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_498:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_476
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x3f
.label_476:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_455
.label_451:
	xor	eax, eax
	xor	r13d, r13d
.label_455:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_520
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_522
	jmp	.label_482
	nop	word ptr [rax + rax]
.label_520:
	cmp	byte ptr [rsp + 0xc5], 0
	je	.label_482
.label_522:
	mov	cl, r15b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r15b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_532
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_537
	nop	word ptr cs:[rax + rax]
.label_482:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
.label_537:
	mov	bl, r15b
	je	.label_493
	jmp	.label_505
.label_532:
	mov	bl, r15b
.label_505:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_457
	cmp	r9d, 2
	jne	.label_544
	mov	al, r14b
	and	al, 1
	jne	.label_544
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_528
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_528:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_560
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_560:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_558
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_558:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_544:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_569
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_569:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_530
.label_570:
	xor	r13d, r13d
	jmp	.label_455
.label_453:
	add	rax, rdi
	mov	qword ptr [rsp + 0xd8], rax
	xor	eax, eax
	jmp	.label_458
	nop	word ptr [rax + rax]
.label_452:
	inc	qword ptr [rsp + 0xf0]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_458:
	test	cl, cl
	je	.label_470
	mov	edx, dword ptr [rsp + 0xec]
	test	dl, 1
	je	.label_472
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_478
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
.label_478:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_472
	nop	word ptr [rax + rax]
.label_470:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_457
	cmp	r9d, 2
	jne	.label_499
	mov	al, r14b
	and	al, 1
	jne	.label_499
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_501
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_501:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_503
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_503:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_516
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_516:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_499:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_529
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_529:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_534
	mov	dl, r15b
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_534:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_539
	mov	dl, r15b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_539:
	add	qword ptr [rsp + 0xf0], 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_472:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xd8], rdx
	jbe	.label_493
	test	r14b, 1
	je	.label_474
	mov	bl, al
	and	bl, 1
	jne	.label_474
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_572
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_572:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_563
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
	mov	rdi, rbx
.label_563:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_474:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_452
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], r15b
	mov	rdi, rbx
	jmp	.label_452
	nop	dword ptr [rax]
.label_493:
	test	r14b, 1
	je	.label_465
	and	al, 1
	jne	.label_465
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_542
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_542:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_526
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_526:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_465:
	mov	bl, r15b
.label_530:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_491
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
.label_491:
	inc	qword ptr [rsp + 0xf0]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	mov	r8b, r13b
	jmp	.label_500
.label_461:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_494
.label_463:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_494:
	cmp	rcx, r10
	jae	.label_509
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_509:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r15b, 0x30
	cmp	r9d, 2
	je	.label_514
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_521
	mov	dl, byte ptr [r11 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_524
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_475
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
.label_475:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_533
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
.label_533:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_455
.label_514:
	xor	r13d, r13d
	jmp	.label_455
.label_521:
	xor	r13d, r13d
	jmp	.label_455
.label_524:
	xor	r13d, r13d
	jmp	.label_455
.label_538:
	xor	r13d, r13d
.label_535:
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_495
.label_541:
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x38]
	cmp	rbp, rcx
	jbe	.label_547
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
.label_467:
	cmp	byte ptr [r11 + rcx], 0
	je	.label_553
	lea	rcx, [rax + rdi + 1]
	inc	rax
	cmp	rcx, rbp
	jb	.label_467
	xor	r13d, r13d
	jmp	.label_495
.label_547:
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_495
.label_553:
	xor	r13d, r13d
	jmp	.label_495
.label_464:
	xor	r13d, r13d
	jmp	.label_455
.label_469:
	xor	r13d, r13d
	jmp	.label_455
	nop	dword ptr [rax]
.label_481:
	mov	r13, rdi
.label_486:
	cmp	r9d, 2
	setne	al
	cmp	qword ptr [rsp + 0xf0], 0
	setne	dl
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_448
	or	al, dl
	je	.label_556
.label_448:
	mov	dword ptr [rsp + 0xd8], r14d
	mov	qword ptr [rsp + 0xa8], r11
	cmp	r9d, 2
	setne	al
	cmp	byte ptr [rsp + 0xc7], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0x70]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x8f]
	mov	rsi, qword ptr [rsp + 0x80]
	je	.label_462
	or	al, dl
	jne	.label_462
	test	r8b, 1
	jne	.label_484
	cmp	qword ptr [rsp + 0x90], 0
	je	.label_462
	test	r10, r10
	mov	r15d, r9d
	mov	al, bl
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0x90]
	je	.label_487
.label_462:
	mov	rdx, qword ptr [rsp + 0xb8]
	test	rdx, rdx
	je	.label_497
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_497
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_497
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_513:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_489
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_489:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_513
.label_497:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_519
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_519
.label_456:
	mov	r9d, 2
	jmp	.label_457
.label_549:
	mov	r9d, 2
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	jmp	.label_457
.label_556:
	mov	rbp, r13
	jmp	.label_457
.label_496:
	mov	r9d, 2
.label_457:
	cmp	byte ptr [rsp + 0xb6], 0
	mov	r8d, 4
	cmove	r8d, r9d
	cmp	r9d, 2
	cmovne	r8d, r9d
	mov	r9d, dword ptr [rsp + 0x6c]
	and	r9d, 0xfffffffd
	mov	rax, qword ptr [rsp + 0x98]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0xa0]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], 0
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsi, r10
	mov	rdx, r11
	mov	rcx, rbp
.label_557:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_519:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_484:
	mov	rax, qword ptr [rsp + 0x98]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0xa0]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x140]
	mov	qword ptr [rsp], rax
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0x90]
	mov	rdx, qword ptr [rsp + 0xa8]
	mov	rcx, r13
	mov	r9d, dword ptr [rsp + 0x6c]
	jmp	.label_557
.label_512:
	mov	r9d, 2
	jmp	.label_457
.label_561:
	mov	r9d, 2
	jmp	.label_457
.label_550:
	mov	r9d, 2
	jmp	.label_457
.label_571:
	mov	r9d, 5
	jmp	.label_457
.label_543:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408040
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r12, rsi
	mov	rbx, rdi
	mov	qword ptr [rsp + 0x20], rbx
	test	rdx, rdx
	mov	r14d, OFFSET FLAT:default_quoting_options
	cmovne	r14, rdx
	call	__errno_location
	mov	qword ptr [rsp + 0x28], rax
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rsp + 0x34], ecx
	mov	r8d, dword ptr [r14]
	mov	ebp, dword ptr [r14 + 4]
	or	ebp, 1
	lea	r15, [r14 + 8]
	mov	rax, qword ptr [r14 + 0x28]
	mov	rcx, qword ptr [r14 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], r15
	xor	edi, edi
	xor	esi, esi
	mov	rdx, rbx
	mov	rcx, r12
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	mov	rbx, rax
	inc	rbx
	mov	rdi, rbx
	call	xmalloc
	mov	r13, rax
	mov	r8d, dword ptr [r14]
	mov	rax, qword ptr [r14 + 0x28]
	mov	rcx, qword ptr [r14 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], r15
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x20]
	mov	rcx, r12
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	mov	eax, dword ptr [rsp + 0x34]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	dword ptr [rcx], eax
	mov	rax, r13
	add	rsp, 0x38
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
	#Procedure 0x408110
	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	rbx, rdx
	mov	qword ptr [rsp + 0x30], rbx
	mov	r14, rsi
	mov	qword ptr [rsp + 0x28], r14
	mov	r15, rdi
	mov	qword ptr [rsp + 0x20], r15
	test	rcx, rcx
	mov	r12d, OFFSET FLAT:default_quoting_options
	cmovne	r12, rcx
	call	__errno_location
	mov	qword ptr [rsp + 0x38], rax
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rsp + 0x44], ecx
	test	rbx, rbx
	sete	al
	movzx	ebp, al
	or	ebp, dword ptr [r12 + 4]
	mov	r8d, dword ptr [r12]
	lea	r13, [r12 + 8]
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [r12 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], r13
	xor	edi, edi
	xor	esi, esi
	mov	rdx, r15
	mov	rcx, r14
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	mov	rbx, rax
	lea	r15, [rbx + 1]
	mov	rdi, r15
	call	xmalloc
	mov	r14, rax
	mov	r8d, dword ptr [r12]
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [r12 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], r13
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	mov	rax, qword ptr [rsp + 0x30]
	test	rax, rax
	mov	ecx, dword ptr [rsp + 0x44]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	dword ptr [rdx], ecx
	je	.label_573
	mov	qword ptr [rax], rbx
.label_573:
	mov	rax, r14
	add	rsp, 0x48
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
	#Procedure 0x408210
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_574
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_576:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_576
.label_574:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_577
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_578], OFFSET FLAT:slot0
.label_577:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_575
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_575:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4082b0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x4082c0

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	r12, rcx
	mov	r14, rdx
	mov	qword ptr [rsp + 0x40], rsi
	mov	ebx, edi
	call	__errno_location
	test	ebx, ebx
	js	.label_579
	mov	ecx, dword ptr [rax]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  ebx
	jle	.label_582
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_585
.label_582:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_581
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	mov	r13d, OFFSET FLAT:slotvec0
	xor	edi, edi
	cmp	rbp, r13
	cmovne	rdi, rbp
	lea	r15d, [rbx + 1]
	movsxd	rsi, ebx
	shl	rsi, 4
	add	rsi, 0x10
	call	xrealloc
	mov	r14, rax
	cmp	rbp, r13
	mov	qword ptr [rip + slotvec],  r14
	jne	.label_580
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_580:
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
	mov	r14, qword ptr [rsp + 0x38]
.label_585:
	mov	qword ptr [rsp + 0x38], r14
	movsxd	r13, ebx
	shl	r13, 4
	mov	r15, qword ptr [rbp + r13]
	mov	rbx, qword ptr [rbp + r13 + 8]
	mov	rcx, r12
	mov	qword ptr [rsp + 0x20], rcx
	mov	r8d, dword ptr [rcx]
	mov	r12d, dword ptr [rcx + 4]
	or	r12d, 1
	lea	rdx, [rcx + 8]
	mov	qword ptr [rsp + 0x18], rdx
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], rdx
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rcx, r14
	mov	r9d, r12d
	call	quotearg_buffer_restyled
	mov	r14, rax
	cmp	r15, r14
	ja	.label_583
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_584
	mov	rdi, rbx
	call	free
.label_584:
	mov	rdi, r14
	call	xmalloc
	mov	rbx, rax
	mov	qword ptr [rbp], rbx
	mov	rcx, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rcx]
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rsp], rax
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r9d, r12d
	call	quotearg_buffer_restyled
.label_583:
	mov	rax, qword ptr [rsp + 0x30]
	mov	ecx, dword ptr [rsp + 0x2c]
	mov	dword ptr [rax], ecx
	mov	rax, rbx
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_579:
	call	abort
.label_581:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408490
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4084a0
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
	#Procedure 0x4084c0
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
	#Procedure 0x4084e0
	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:

	sub	rsp, 0x78
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x70], 0
	cmp	esi, 0xa
	je	.label_586
	mov	dword ptr [rsp + 8], esi
	mov	ecx, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x3c], ecx
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	lea	rcx, [rsp + 8]
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_586:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x408550
	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x70], 0
	cmp	esi, 0xa
	je	.label_587
	mov	dword ptr [rsp + 8], esi
	mov	eax, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x3c], eax
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	lea	rax, [rsp + 8]
	mov	rsi, rdx
	mov	rdx, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_587:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4085c0
	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x70], 0
	cmp	edi, 0xa
	je	.label_588
	mov	dword ptr [rsp + 8], edi
	mov	eax, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x3c], eax
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	lea	rcx, [rsp + 8]
	xor	edi, edi
	mov	rdx, -1
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_588:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408630
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x70], 0
	cmp	edi, 0xa
	je	.label_589
	mov	dword ptr [rsp + 8], edi
	mov	eax, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x3c], eax
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	lea	rcx, [rsp + 8]
	xor	edi, edi
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_589:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4086a0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_590]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_591]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_592]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	al, cl
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
	#Procedure 0x408710
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_590]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_591]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_592]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dl, cl
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
	#Procedure 0x408780

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_590]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_591]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_592]
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
	#Procedure 0x4087e0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_590]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_591]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_592]
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
	#Procedure 0x408840
	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:

	sub	rsp, 0xa8
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x90], xmm0
	movaps	xmmword ptr [rsp + 0x80], xmm0
	movaps	xmmword ptr [rsp + 0x70], xmm0
	mov	dword ptr [rsp + 0xa0], 0
	cmp	esi, 0xa
	je	.label_593
	mov	ecx, dword ptr [rsp + 0xa0]
	mov	dword ptr [rsp + 0x30], ecx
	movaps	xmm0, xmmword ptr [rsp + 0x70]
	movaps	xmm1, xmmword ptr [rsp + 0x80]
	movaps	xmm2, xmmword ptr [rsp + 0x90]
	movaps	xmmword ptr [rsp + 0x20], xmm2
	movaps	xmmword ptr [rsp + 0x10], xmm1
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x38], esi
	mov	ecx, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x6c], ecx
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x5c], xmm2
	movups	xmmword ptr [rsp + 0x4c], xmm1
	movups	xmmword ptr [rsp + 0x3c], xmm0
	or	byte ptr [rsp + 0x47], 4
	lea	rcx, [rsp + 0x38]
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0xa8
	ret	
.label_593:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x4088f0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_590]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_591]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_592]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_594
	test	rdx, rdx
	je	.label_594
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_594:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x408960
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_590]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_591]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_592]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_595
	test	rdx, rdx
	je	.label_595
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_595:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4089d0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_590]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_591]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_592]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_596
	test	rsi, rsi
	je	.label_596
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_596:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x408a40
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_590]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_591]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_592]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_597
	test	rsi, rsi
	je	.label_597
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
.label_597:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408ab0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408ac0
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
	#Procedure 0x408ae0
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408b00

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
	#Procedure 0x408b20

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
	jne	.label_598
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_600
	cmp	ecx, 0x55
	jne	.label_599
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_599
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_599
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x2d
	jne	.label_599
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	jne	.label_599
	cmp	byte ptr [rax + 5], 0
	jne	.label_599
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_598
	mov	eax, OFFSET FLAT:.str.15
	jmp	.label_598
.label_600:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_599
	movzx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x31
	jne	.label_599
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	jne	.label_599
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x30
	jne	.label_599
	movzx	ecx, byte ptr [rax + 5]
	cmp	ecx, 0x33
	jne	.label_599
	movzx	ecx, byte ptr [rax + 6]
	cmp	ecx, 0x30
	jne	.label_599
	cmp	byte ptr [rax + 7], 0
	je	.label_601
.label_599:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_598:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_601:
	mov	eax, OFFSET FLAT:.str.17_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_598
	mov	eax, OFFSET FLAT:.str.18_0
	jmp	.label_598
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408c10

	.globl init_tokenbuffer
	.type init_tokenbuffer, @function
init_tokenbuffer:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi], xmm0
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408c20

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
	mov	r14, rcx
	mov	r15, rdi
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	test	rdx, rdx
	je	.label_612
	xor	eax, eax
	test	dl, 1
	je	.label_605
	movzx	ecx, byte ptr [rsi]
	mov	eax, 1
	mov	edi, 1
	shl	rdi, cl
	shr	rcx, 6
	or	qword ptr [rsp + rcx*8 + 0x10], rdi
.label_605:
	cmp	rdx, 1
	je	.label_612
	sub	rdx, rax
	lea	rax, [rax + rsi + 1]
	nop	word ptr cs:[rax + rax]
.label_602:
	movzx	ecx, byte ptr [rax - 1]
	mov	esi, 1
	shl	rsi, cl
	shr	rcx, 6
	or	qword ptr [rsp + rcx*8 + 0x10], rsi
	movzx	ecx, byte ptr [rax]
	mov	esi, 1
	shl	rsi, cl
	shr	rcx, 6
	or	qword ptr [rsp + rcx*8 + 0x10], rsi
	add	rax, 2
	add	rdx, -2
	jne	.label_602
.label_612:
	mov	rax, qword ptr [r15 + 8]
	cmp	rax, qword ptr [r15 + 0x10]
	jae	.label_618
	lea	rcx, [rax + 1]
	mov	qword ptr [r15 + 8], rcx
	movzx	ebx, byte ptr [rax]
.label_603:
	movsxd	rax, ebx
	shr	rax, 6
	mov	rax, qword ptr [rsp + rax*8 + 0x10]
	bt	rax, rbx
	jae	.label_609
	mov	rbp, -1
	nop	word ptr cs:[rax + rax]
.label_604:
	mov	rax, qword ptr [r15 + 8]
	cmp	rax, qword ptr [r15 + 0x10]
	jae	.label_616
	lea	rcx, [rax + 1]
	mov	qword ptr [r15 + 8], rcx
	movzx	ebx, byte ptr [rax]
.label_613:
	movsxd	rax, ebx
	shr	rax, 6
	mov	rax, qword ptr [rsp + rax*8 + 0x10]
	bt	rax, rbx
	jb	.label_604
	jmp	.label_609
.label_616:
	mov	rdi, r15
	call	__uflow
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_613
	jmp	.label_606
.label_609:
	test	ebx, ebx
	js	.label_607
	mov	qword ptr [rsp + 8], r14
	mov	r13, qword ptr [r14]
	mov	rdx, qword ptr [r14 + 8]
	xor	r14d, r14d
	xor	r12d, r12d
	jmp	.label_619
	nop	dword ptr [rax + rax]
.label_608:
	lea	rcx, [rax + 1]
	mov	qword ptr [r15 + 8], rcx
	movzx	ebx, byte ptr [rax]
	xor	r14d, r14d
.label_619:
	mov	rbp, r12
	cmp	rbp, r13
	jne	.label_611
	test	rdx, rdx
	je	.label_614
	movabs	rax, 0x5555555555555554
	cmp	rbp, rax
	jae	.label_615
	mov	r13, rbp
	shr	r13, 1
	inc	r13
	add	r13, rbp
	jmp	.label_620
.label_614:
	test	rbp, rbp
	mov	r13, rbp
	mov	eax, 0x80
	cmove	r13, rax
	test	r13, r13
	js	.label_610
.label_620:
	mov	rdi, rdx
	mov	rsi, r13
	call	xrealloc
	mov	rdx, rax
.label_611:
	test	r14b, 1
	jne	.label_617
	movsxd	rax, ebx
	shr	rax, 6
	mov	rax, qword ptr [rsp + rax*8 + 0x10]
	bt	rax, rbx
	jb	.label_617
	lea	r12, [rbp + 1]
	mov	byte ptr [rdx + rbp], bl
	mov	rax, qword ptr [r15 + 8]
	cmp	rax, qword ptr [r15 + 0x10]
	jb	.label_608
	mov	rdi, r15
	mov	rbx, rdx
	call	__uflow
	mov	rdx, rbx
	mov	ebx, eax
	mov	r14d, ebx
	shr	r14d, 0x1f
	test	ebx, ebx
	jns	.label_619
	cmp	rbp, -1
	jne	.label_619
	mov	rbp, -1
	jmp	.label_606
.label_617:
	mov	byte ptr [rdx + rbp], 0
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax + 8], rdx
	mov	qword ptr [rax], r13
	jmp	.label_606
.label_607:
	mov	rbp, -1
.label_606:
	mov	rax, rbp
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_618:
	mov	rdi, r15
	call	__uflow
	mov	ebx, eax
	mov	rbp, -1
	test	ebx, ebx
	jns	.label_603
	jmp	.label_606
.label_615:
	call	xalloc_die
.label_610:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408e70
	.globl readtokens
	.type readtokens, @function
readtokens:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	qword ptr [rsp + 8], r9
	mov	qword ptr [rsp], r8
	mov	r13, rcx
	mov	qword ptr [rsp + 0x18], rdx
	mov	qword ptr [rsp + 0x10], rdi
	test	rsi, rsi
	lea	rax, [rsi + 1]
	mov	r15d, 0x40
	cmovne	r15, rax
	mov	rax, r15
	shr	rax, 0x3c
	jne	.label_622
	lea	rbx, [r15*8]
	mov	rdi, rbx
	call	xmalloc
	mov	rbp, rax
	mov	rdi, rbx
	call	xmalloc
	mov	qword ptr [rsp + 0x28], rax
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x30], xmm0
	xor	r14d, r14d
	jmp	.label_623
	nop	
.label_628:
	mov	rdi, rbx
	call	xmalloc
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rax + r14*8], r12
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rdi, rbp
	mov	rdx, rbx
	call	memcpy
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax + r14*8], rbp
	mov	rbp, rax
	inc	r14
.label_623:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdx, r13
	lea	rcx, [rsp + 0x30]
	call	readtoken
	mov	r12, rax
	cmp	r14, r15
	jae	.label_629
	mov	qword ptr [rsp + 0x20], rbp
	jmp	.label_630
	nop	dword ptr [rax]
.label_629:
	mov	rbx, r13
	test	rbp, rbp
	je	.label_621
	movabs	rax, 0xaaaaaaaaaaaaaaa
	cmp	r15, rax
	jae	.label_622
	mov	rax, r15
	shr	rax, 1
	lea	rcx, [r15 + rax]
	lea	r15, [r15 + rax + 1]
	lea	r13, [rcx*8 + 8]
	mov	rdi, rbp
	mov	rsi, r13
	call	xrealloc
	mov	rcx, rax
	movabs	rax, 0xfffffffffffffff
	cmp	r15, rax
	jbe	.label_631
	jmp	.label_622
.label_621:
	test	r15, r15
	mov	eax, 0x10
	cmove	r15, rax
	movabs	rax, 0xfffffffffffffff
	cmp	r15, rax
	ja	.label_625
	lea	r13, [r15*8]
	mov	rdi, rbp
	mov	rsi, r13
	call	xrealloc
	mov	rcx, rax
.label_631:
	mov	qword ptr [rsp + 0x20], rcx
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rsi, r13
	call	xrealloc
	mov	qword ptr [rsp + 0x28], rax
	mov	r13, rbx
.label_630:
	cmp	r12, -1
	je	.label_627
	mov	rbx, r12
	inc	rbx
	jns	.label_628
.label_622:
	call	xalloc_die
.label_627:
	mov	rbp, qword ptr [rsp + 0x20]
	mov	qword ptr [rbp + r14*8], 0
	mov	rbx, qword ptr [rsp + 0x28]
	mov	qword ptr [rbx + r14*8], 0
	mov	rdi, qword ptr [rsp + 0x38]
	call	free
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
	mov	rax, qword ptr [rsp + 8]
	test	rax, rax
	je	.label_626
	mov	qword ptr [rax], rbx
	jmp	.label_624
.label_626:
	mov	rdi, rbx
	call	free
.label_624:
	mov	rax, r14
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_625:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409060

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
.label_633:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	write
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_632
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_633
	cmp	rbx, 0x7ff00001
	jb	.label_632
	cmp	eax, 0x16
	mov	ebx, 0x7ff00000
	je	.label_633
.label_632:
	mov	rax, rbp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4090c0

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
	je	.label_645
	call	__ctype_get_mb_cur_max
	cmp	rax, 2
	jb	.label_648
	test	r14d, r14d
	je	.label_636
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
	jle	.label_635
	lea	rbp, [rsp + 8]
	nop	
.label_644:
	mov	rdi, rbp
	call	mbiter_multi_next
	mov	rdi, qword ptr [rsp + 0x30]
	test	dil, dil
	je	.label_640
	shr	rdi, 0x20
	call	iswspace
	test	eax, eax
	je	.label_640
	mov	rax, qword ptr [rsp + 0x20]
	add	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x20], rax
	mov	byte ptr [rsp + 0x1c], 0
	cmp	rax, qword ptr [rsp + 8]
	jb	.label_644
.label_640:
	mov	rbp, qword ptr [rsp + 0x20]
.label_635:
	mov	rdi, rbp
	call	strlen
	lea	rdx, [rax + 1]
	mov	rdi, r12
	mov	rsi, rbp
	call	memmove
	cmp	r14d, 1
	je	.label_634
.label_636:
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
	jle	.label_634
	xor	ebp, ebp
	lea	r14, [rsp + 8]
	nop	dword ptr [rax + rax]
.label_650:
	mov	rdi, r14
	call	mbiter_multi_next
	cmp	ebp, 1
	je	.label_646
	test	ebp, ebp
	jne	.label_647
	mov	rdi, qword ptr [rsp + 0x30]
	mov	ebp, 1
	test	dil, dil
	je	.label_637
	shr	rdi, 0x20
	call	iswspace
	test	eax, eax
	je	.label_639
	xor	ebp, ebp
	jmp	.label_637
	nop	dword ptr [rax + rax]
.label_646:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	ebp, 1
	test	dil, dil
	je	.label_637
	shr	rdi, 0x20
	call	iswspace
	test	eax, eax
	je	.label_637
	mov	rdi, qword ptr [rsp + 0x30]
	test	dil, dil
	je	.label_638
	shr	rdi, 0x20
	call	iswspace
	test	eax, eax
	je	.label_638
	mov	ebp, 2
	mov	r15, qword ptr [rsp + 0x20]
	jmp	.label_637
	nop	
.label_647:
	mov	rdi, qword ptr [rsp + 0x30]
	test	dil, dil
	je	.label_638
	shr	rdi, 0x20
	call	iswspace
	mov	ebp, 2
	test	eax, eax
	jne	.label_637
	jmp	.label_638
.label_639:
	mov	rdi, qword ptr [rsp + 0x30]
	test	dil, dil
	je	.label_637
	shr	rdi, 0x20
	call	iswspace
	test	eax, eax
	je	.label_637
	nop	word ptr cs:[rax + rax]
.label_638:
	mov	ebp, 1
.label_637:
	mov	rax, qword ptr [rsp + 0x20]
	add	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x20], rax
	mov	byte ptr [rsp + 0x1c], 0
	cmp	rax, qword ptr [rsp + 8]
	jb	.label_650
	cmp	ebp, 2
	jne	.label_634
	mov	byte ptr [r15], 0
	jmp	.label_634
.label_648:
	test	r14d, r14d
	je	.label_641
	mov	bl, byte ptr [r12]
	test	bl, bl
	mov	rbp, r12
	je	.label_642
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rbp, r12
	nop	word ptr cs:[rax + rax]
.label_649:
	movzx	ecx, bl
	test	byte ptr [rax + rcx*2 + 1], 0x20
	je	.label_642
	mov	bl, byte ptr [rbp + 1]
	inc	rbp
	test	bl, bl
	jne	.label_649
.label_642:
	mov	rdi, rbp
	call	strlen
	lea	rdx, [rax + 1]
	mov	rdi, r12
	mov	rsi, rbp
	call	memmove
	cmp	r14d, 1
	je	.label_634
.label_641:
	mov	rdi, r12
	call	strlen
	lea	rbp, [r12 + rax - 1]
	cmp	rbp, r12
	jb	.label_634
	call	__ctype_b_loc
	nop	dword ptr [rax + rax]
.label_643:
	movzx	ecx, byte ptr [rbp]
	mov	rdx, qword ptr [rax]
	test	byte ptr [rdx + rcx*2 + 1], 0x20
	je	.label_634
	mov	byte ptr [rbp], 0
	dec	rbp
	cmp	rbp, r12
	jae	.label_643
.label_634:
	mov	rax, r12
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_645:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x409370

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r12, r9
	mov	r15, r8
	mov	r9, rcx
	mov	rbx, rdx
	mov	rcx, rsi
	mov	r14, rdi
	mov	esi, 1
	test	rcx, rcx
	je	.label_657
	mov	edx, OFFSET FLAT:.str_5
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_656
.label_657:
	mov	edx, OFFSET FLAT:.str.1_3
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_656:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_1
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
	mov	esi, OFFSET FLAT:.str.3_0
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_652
	jmp	qword ptr [(r12 * 8) + label_653]
.label_906:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_652:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_651
.label_907:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_908:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_909:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_658
.label_910:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	jmp	.label_660
.label_911:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	jmp	.label_655
.label_912:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10_1
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	mov	qword ptr [rsp + 0x18], rbx
.label_655:
	mov	qword ptr [rsp + 0x10], rdi
.label_660:
	mov	qword ptr [rsp + 8], rsi
.label_658:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_659
.label_914:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_651:
	mov	edx, 5
	call	dcgettext
	mov	r10, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	r11, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	mov	rdx, qword ptr [r15 + 0x38]
	mov	rax, qword ptr [r15 + 0x40]
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x18], rbx
	mov	qword ptr [rsp + 0x10], rdi
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp], r11
	jmp	.label_654
.label_913:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_1
	mov	edx, 5
	call	dcgettext
	mov	r10, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	mov	rdx, qword ptr [r15 + 0x38]
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x18], rbx
	mov	qword ptr [rsp + 0x10], rdi
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp], rax
.label_654:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_659:
	call	__fprintf_chk
.label_905:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409660
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_661:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_661
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409690
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_664:
	cmp	r10d, 0x28
	ja	.label_662
	movsxd	r11, r10d
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_663
	nop	word ptr cs:[rax + rax]
.label_662:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_663:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_665
	inc	r9
	cmp	r9, 0xa
	jb	.label_664
.label_665:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4096f0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x128
	test	al, al
	je	.label_666
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_666:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0x130]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x20
	xor	r9d, r9d
	mov	r8d, dword ptr [rsp + 0xb0]
	nop	word ptr cs:[rax + rax]
.label_670:
	cmp	r8d, 0x28
	ja	.label_667
	movsxd	r10, r8d
	add	r10, qword ptr [rsp + 0xc0]
	add	r8d, 8
	mov	dword ptr [rsp + 0xb0], r8d
	jmp	.label_669
	nop	
.label_667:
	mov	r10, qword ptr [rsp + 0xb8]
	lea	rax, [r10 + 8]
	mov	qword ptr [rsp + 0xb8], rax
.label_669:
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8 + 0xd0], rax
	test	rax, rax
	je	.label_668
	inc	r9
	cmp	r9, 0xa
	jb	.label_670
.label_668:
	lea	r8, [rsp + 0xd0]
	call	version_etc_arn
	add	rsp, 0x128
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4097f0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_1
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.15_0
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x409870
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_671
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_672
	test	rax, rax
	je	.label_671
.label_672:
	pop	rbx
	ret	
.label_671:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4098b0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_673
	test	rax, rax
	je	.label_674
.label_673:
	pop	rbx
	ret	
.label_674:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4098d0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_675
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_676
	test	rbx, rbx
	jne	.label_676
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_676:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_677
	test	rax, rax
	je	.label_675
.label_677:
	pop	rbx
	ret	
.label_675:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409920

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_678
	test	rbx, rbx
	jne	.label_678
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_678:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_680
	test	rax, rax
	je	.label_679
.label_680:
	pop	rbx
	ret	
.label_679:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x409950
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_685
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_686
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_681
.label_685:
	test	rcx, rcx
	jne	.label_687
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_687:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_683
.label_681:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_682
	test	rbx, rbx
	jne	.label_682
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_682:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_684
	test	rax, rax
	je	.label_686
.label_684:
	pop	rbx
	ret	
.label_686:
	call	xalloc_die
.label_683:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4099f0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_688
	test	rax, rax
	je	.label_689
.label_688:
	pop	rbx
	ret	
.label_689:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409a10
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_692
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_694
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_691
	call	free
	xor	eax, eax
	jmp	.label_693
.label_692:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_690
	mov	qword ptr [rsi], rbx
.label_691:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_693
	test	rax, rax
	je	.label_690
.label_693:
	pop	rbx
	ret	
.label_690:
	call	xalloc_die
.label_694:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409a80
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
	je	.label_696
	test	r14, r14
	je	.label_695
.label_696:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_695:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409ac0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_697
	call	rpl_calloc
	test	rax, rax
	je	.label_697
	pop	rcx
	ret	
.label_697:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409af0

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
	je	.label_698
	test	r15, r15
	je	.label_699
.label_698:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_699:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409b30
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
	je	.label_701
	test	r15, r15
	je	.label_700
.label_701:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_700:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409b80

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_4
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x409bb0
	.globl xmem_cd_iconv
	.type xmem_cd_iconv, @function
xmem_cd_iconv:

	push	rbx
	call	mem_cd_iconv
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_703
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_702
.label_703:
	mov	eax, ebx
	pop	rbx
	ret	
.label_702:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x409bd0
	.globl xstr_cd_iconv
	.type xstr_cd_iconv, @function
xstr_cd_iconv:

	push	rbx
	call	str_cd_iconv
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_705
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_704
.label_705:
	mov	rax, rbx
	pop	rbx
	ret	
.label_704:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409c00

	.globl xstr_iconv
	.type xstr_iconv, @function
xstr_iconv:
	push	rbx
	call	str_iconv
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_707
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_706
.label_707:
	mov	rax, rbx
	pop	rbx
	ret	
.label_706:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409c30

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_708
	test	rsi, rsi
	mov	ecx, 1
	je	.label_709
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_709
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_708:
	mov	ecx, 1
.label_709:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409c80

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
	je	.label_710
	cmp	r15, -2
	jb	.label_710
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_710
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_710:
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
	#Procedure 0x409ce0

	.globl c_strcasecmp
	.type c_strcasecmp, @function
c_strcasecmp:
	xor	eax, eax
	cmp	rdi, rsi
	je	.label_711
	nop	word ptr [rax + rax]
.label_714:
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
	je	.label_712
	inc	rdi
	inc	rsi
	movzx	ecx, cl
	cmp	eax, ecx
	je	.label_714
	jmp	.label_713
.label_712:
	movzx	ecx, cl
	xor	eax, eax
.label_713:
	sub	eax, ecx
.label_711:
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x409d30

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
	jne	.label_716
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_715
	test	cl, cl
	jne	.label_715
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_715
.label_716:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_715
	call	__errno_location
	mov	dword ptr [rax], 0
.label_715:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409d90

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_718
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_719
	cmp	byte ptr [rax + 1], 0
	je	.label_717
.label_719:
	mov	esi, OFFSET FLAT:.str.1_5
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_718
.label_717:
	xor	ebx, ebx
.label_718:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x409dd0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:.str_0
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_6
	cmp	byte ptr [rcx], 0
	je	.label_720
	mov	rax, rcx
.label_720:
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409e00

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
	jne	.label_721
	cmp	byte ptr [rbx + 8], 0
	je	.label_723
	lea	r13, [rbx + 0x18]
	mov	r15, qword ptr [rbx + 0x18]
	lea	r14, [rbx + 0xc]
	jmp	.label_727
.label_723:
	mov	r15, qword ptr [rbx + 0x18]
	movzx	eax, byte ptr [r15]
	mov	rcx, rax
	shr	rcx, 5
	mov	ecx, dword ptr [(rcx * 4) + is_basic_table]
	bt	ecx, eax
	jae	.label_731
	mov	qword ptr [rbx + 0x20], 1
	movsx	eax, byte ptr [r15]
	mov	dword ptr [rbx + 0x2c], eax
	mov	byte ptr [rbx + 0x28], 1
	jmp	.label_722
.label_731:
	lea	r14, [rbx + 0xc]
	mov	rdi, r14
	call	mbsinit
	test	eax, eax
	je	.label_730
	mov	byte ptr [rbx + 8], 1
	lea	r13, [rbx + 0x18]
.label_727:
	lea	r12, [rbx + 0x2c]
	mov	rdx, qword ptr [rbx]
	sub	rdx, r15
	mov	rdi, r12
	mov	rsi, r15
	mov	rcx, r14
	call	rpl_mbrtowc
	mov	qword ptr [rbx + 0x20], rax
	cmp	rax, -2
	je	.label_724
	test	rax, rax
	je	.label_726
	cmp	rax, -1
	jne	.label_729
	mov	qword ptr [rbx + 0x20], 1
	mov	byte ptr [rbx + 0x28], 0
	jmp	.label_722
.label_724:
	mov	rax, qword ptr [rbx]
	sub	rax, qword ptr [r13]
	mov	qword ptr [rbx + 0x20], rax
	mov	byte ptr [rbx + 0x28], 0
	jmp	.label_722
.label_726:
	mov	qword ptr [rbx + 0x20], 1
	mov	rax, qword ptr [rbx + 0x18]
	cmp	byte ptr [rax], 0
	jne	.label_728
	cmp	dword ptr [r12], 0
	jne	.label_725
.label_729:
	mov	byte ptr [rbx + 0x28], 1
	mov	rdi, r14
	call	mbsinit
	test	eax, eax
	je	.label_722
	mov	byte ptr [rbx + 8], 0
.label_722:
	mov	byte ptr [rbx + 0x14], 1
.label_721:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
.label_728:
	mov	edi, OFFSET FLAT:.str.2_2
	mov	esi, OFFSET FLAT:.str.1_7
	mov	edx, 0xa9
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mbiter_multi_next
	call	__assert_fail
.label_725:
	mov	edi, OFFSET FLAT:.str.3_1
	mov	esi, OFFSET FLAT:.str.1_7
	mov	edx, 0xaa
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mbiter_multi_next
	call	__assert_fail
.label_730:
	mov	edi, OFFSET FLAT:.str_6
	mov	esi, OFFSET FLAT:.str.1_7
	mov	edx, 0x8e
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mbiter_multi_next
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409f50
	.globl mbiter_multi_reloc
	.type mbiter_multi_reloc, @function
mbiter_multi_reloc:

	add	qword ptr [rdi + 0x18], rsi
	add	qword ptr [rdi], rsi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409f60
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
	je	.label_732
	mov	rax, qword ptr [rbx + 0xc]
	mov	qword ptr [r14 + 0xc], rax
	jmp	.label_734
.label_732:
	mov	qword ptr [r14 + 0xc], 0
.label_734:
	mov	al, byte ptr [rbx + 0x14]
	mov	byte ptr [r14 + 0x14], al
	mov	rsi, qword ptr [rbx + 0x18]
	lea	rax, [rbx + 0x30]
	cmp	rsi, rax
	jne	.label_735
	lea	r15, [r14 + 0x30]
	mov	rdx, qword ptr [rbx + 0x20]
	mov	rdi, r15
	call	memcpy
	mov	rsi, r15
.label_735:
	mov	qword ptr [r14 + 0x18], rsi
	mov	rax, qword ptr [rbx + 0x20]
	mov	qword ptr [r14 + 0x20], rax
	mov	rax, qword ptr [rbx + 0x28]
	test	al, al
	mov	byte ptr [r14 + 0x28], al
	je	.label_733
	shr	rax, 0x20
	mov	dword ptr [r14 + 0x2c], eax
.label_733:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409fe0

	.globl mbsstr
	.type mbsstr, @function
mbsstr:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x178
	mov	rbp, rsi
	mov	rbx, rdi
	call	__ctype_get_mb_cur_max
	cmp	rax, 2
	jb	.label_772
	mov	qword ptr [rsp + 0x148], rbp
	mov	qword ptr [rsp + 0x28], rbp
	mov	byte ptr [rsp + 0x138], 0
	mov	qword ptr [rsp + 0x13c], 0
	mov	byte ptr [rsp + 0x144], 0
	lea	rdi, [rsp + 0x138]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x158]
	test	al, al
	je	.label_747
	shr	rax, 0x20
	jne	.label_747
	mov	rax, rbx
	jmp	.label_749
.label_772:
	mov	cl, byte ptr [rbp]
	test	cl, cl
	mov	r11, rbp
	je	.label_752
	mov	rbp, rbx
	mov	r14b, byte ptr [rbp]
	xor	eax, eax
	test	r14b, r14b
	je	.label_749
	mov	r10b, 1
	xor	r9d, r9d
	movzx	r12d, cl
	mov	rdi, r11
	xor	r13d, r13d
	xor	r15d, r15d
.label_765:
	cmp	r15, 0xa
	jb	.label_761
	mov	al, r10b
	and	al, 1
	je	.label_763
	lea	rax, [r15 + r15*4]
	cmp	r13, rax
	jb	.label_764
	mov	qword ptr [rsp + 0x20], r10
	mov	rbx, rbp
	test	rdi, rdi
	je	.label_766
	mov	rsi, r13
	sub	rsi, r9
	mov	rbp, r11
	mov	qword ptr [rsp + 0x18], rdi
	call	strnlen
	mov	rdi, qword ptr [rsp + 0x18]
	mov	r11, rbp
	cmp	byte ptr [rdi + rax], 0
	mov	r9, r13
	mov	r10, qword ptr [rsp + 0x20]
	je	.label_766
	add	rdi, rax
	mov	r9, r13
	jne	.label_743
.label_766:
	mov	qword ptr [rsp + 0x20], r13
	mov	r13, r9
	mov	rdi, r11
	mov	rbp, r11
	call	strlen
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, rax
	lea	rcx, [rsp + 0x138]
	call	knuth_morris_pratt
	test	al, al
	jne	.label_740
	mov	r14b, byte ptr [rbx]
	xor	r10d, r10d
	xor	edi, edi
	mov	r11, rbp
	mov	r9, r13
	mov	r13, qword ptr [rsp + 0x20]
	jmp	.label_743
.label_764:
	mov	rbx, rbp
	jmp	.label_743
.label_761:
	mov	rbx, rbp
	jmp	.label_743
.label_763:
	mov	rbx, rbp
.label_743:
	movzx	eax, r14b
	cmp	eax, r12d
	mov	eax, 1
	mov	rbp, rbx
	jne	.label_748
	nop	word ptr cs:[rax + rax]
.label_759:
	mov	rcx, rax
	mov	dl, byte ptr [r11 + rcx]
	test	dl, dl
	je	.label_754
	mov	bl, byte ptr [rbp + rcx]
	test	bl, bl
	mov	eax, 0
	je	.label_749
	movzx	edx, dl
	movzx	esi, bl
	lea	rax, [rcx + 1]
	cmp	esi, edx
	je	.label_759
	lea	r13, [r13 + rcx + 1]
	jmp	.label_751
	nop	word ptr cs:[rax + rax]
.label_748:
	inc	r13
.label_751:
	inc	r15
	mov	r14b, byte ptr [rbp + 1]
	inc	rbp
	test	r14b, r14b
	mov	eax, 0
	jne	.label_765
	jmp	.label_749
.label_747:
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x108], rax
	mov	byte ptr [rsp + 0xf8], 0
	mov	qword ptr [rsp + 0xfc], 0
	mov	byte ptr [rsp + 0x104], 0
	mov	qword ptr [rsp + 0xc8], rbx
	mov	byte ptr [rsp + 0xb8], 0
	mov	qword ptr [rsp + 0xbc], 0
	mov	byte ptr [rsp + 0xc4], 0
	lea	rdi, [rsp + 0xb8]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0xd8]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x10], rcx
	test	al, al
	je	.label_742
	shr	rax, 0x20
	je	.label_745
.label_742:
	mov	al, 1
	mov	dword ptr [rsp + 0x18], eax
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	lea	r13, [rsp + 0xf8]
	xor	ebp, ebp
	xor	r14d, r14d
	xor	r12d, r12d
.label_757:
	mov	r15, r14
	cmp	r12, 0xa
	jb	.label_750
	mov	eax, dword ptr [rsp + 0x18]
	and	al, 1
	mov	rsi, qword ptr [rsp + 0x28]
	je	.label_755
	lea	rax, [r12 + r12*4]
	mov	qword ptr [rsp + 0x20], r12
	cmp	r15, rax
	jb	.label_736
	mov	r14, rsi
	cmp	r15, rbp
	je	.label_760
	sub	rbp, r15
	nop	
.label_773:
	mov	rdi, r13
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x118]
	test	al, al
	je	.label_762
	shr	rax, 0x20
	je	.label_760
.label_762:
	mov	rax, qword ptr [rsp + 0x110]
	add	qword ptr [rsp + 0x108], rax
	mov	byte ptr [rsp + 0x104], 0
	inc	rbp
	jne	.label_773
.label_760:
	mov	rdi, r13
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x118]
	test	al, al
	je	.label_753
	shr	rax, 0x20
	mov	rbp, r15
	mov	rsi, r14
	jne	.label_736
	mov	rdi, rbx
	mov	r14, rsi
	lea	rdx, [rsp + 0x70]
	call	knuth_morris_pratt_multibyte
	test	al, al
	jne	.label_771
	mov	dword ptr [rsp + 0x18], 0
.label_753:
	mov	rbp, r15
	mov	rsi, r14
	jmp	.label_736
.label_750:
	mov	qword ptr [rsp + 0x20], r12
	mov	rsi, qword ptr [rsp + 0x28]
	jmp	.label_736
.label_755:
	mov	qword ptr [rsp + 0x20], r12
.label_736:
	mov	qword ptr [rsp + 0x28], rsi
	lea	r14, [r15 + 1]
	mov	rax, qword ptr [rsp + 0xd8]
	test	al, al
	je	.label_744
	mov	rcx, qword ptr [rsp + 0x158]
	test	cl, cl
	je	.label_744
	shr	rcx, 0x20
	shr	rax, 0x20
	cmp	eax, ecx
	je	.label_768
	jmp	.label_738
	nop	word ptr cs:[rax + rax]
.label_744:
	mov	rdx, qword ptr [rsp + 0xd0]
	cmp	rdx, qword ptr [rsp + 0x150]
	jne	.label_738
	mov	rdi, qword ptr [rsp + 0xc8]
	mov	rsi, qword ptr [rsp + 0x148]
	call	memcmp
	test	eax, eax
	jne	.label_738
.label_768:
	movups	xmm0, xmmword ptr [rsp + 0xb8]
	movups	xmm1, xmmword ptr [rsp + 0xc8]
	movups	xmm2, xmmword ptr [rsp + 0xd8]
	movups	xmm3, xmmword ptr [rsp + 0xe8]
	movaps	xmmword ptr [rsp + 0xa0], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm0
	mov	rax, qword ptr [rsp + 0x88]
	add	qword ptr [rsp + 0x80], rax
	mov	byte ptr [rsp + 0x7c], 0
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x40], rax
	mov	byte ptr [rsp + 0x30], 0
	mov	qword ptr [rsp + 0x34], 0
	mov	byte ptr [rsp + 0x3c], 0
	lea	rdi, [rsp + 0x30]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x50]
	test	al, al
	je	.label_737
	shr	rax, 0x20
	je	.label_739
.label_737:
	mov	rax, qword ptr [rsp + 0x48]
	add	qword ptr [rsp + 0x40], rax
	mov	byte ptr [rsp + 0x3c], 0
	lea	rdi, [rsp + 0x30]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x50]
	test	al, al
	je	.label_767
	shr	rax, 0x20
	je	.label_746
.label_767:
	add	r15, 2
	mov	r14, r15
	nop	word ptr cs:[rax + rax]
.label_741:
	lea	rdi, [rsp + 0x70]
	call	mbuiter_multi_next
	mov	rcx, qword ptr [rsp + 0x90]
	mov	rax, rcx
	shr	rax, 0x20
	test	cl, cl
	je	.label_756
	test	eax, eax
	je	.label_745
.label_756:
	test	cl, cl
	sete	dl
	mov	rcx, qword ptr [rsp + 0x50]
	test	cl, cl
	je	.label_758
	test	dl, dl
	jne	.label_758
	shr	rcx, 0x20
	cmp	eax, ecx
	jne	.label_769
	mov	r15, qword ptr [rsp + 0x80]
	mov	rax, qword ptr [rsp + 0x88]
	mov	r12, qword ptr [rsp + 0x40]
	mov	r13, qword ptr [rsp + 0x48]
	jmp	.label_770
	nop	
.label_758:
	mov	r13, qword ptr [rsp + 0x88]
	cmp	r13, qword ptr [rsp + 0x48]
	jne	.label_769
	mov	r15, qword ptr [rsp + 0x80]
	mov	r12, qword ptr [rsp + 0x40]
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	mov	rax, r13
	jne	.label_769
.label_770:
	add	r15, rax
	mov	qword ptr [rsp + 0x80], r15
	mov	byte ptr [rsp + 0x7c], 0
	add	r12, r13
	mov	qword ptr [rsp + 0x40], r12
	mov	byte ptr [rsp + 0x3c], 0
	lea	rdi, [rsp + 0x30]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x50]
	inc	r14
	test	al, al
	je	.label_741
	shr	rax, 0x20
	jne	.label_741
	jmp	.label_746
.label_769:
	lea	r13, [rsp + 0xf8]
	nop	dword ptr [rax]
.label_738:
	mov	r12, qword ptr [rsp + 0x20]
	inc	r12
	mov	rax, qword ptr [rsp + 0xd0]
	add	qword ptr [rsp + 0xc8], rax
	mov	byte ptr [rsp + 0xc4], 0
	lea	rdi, [rsp + 0xb8]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0xd8]
	test	al, al
	je	.label_757
	shr	rax, 0x20
	jne	.label_757
.label_745:
	mov	rax, qword ptr [rsp + 0x10]
	jmp	.label_749
.label_752:
	mov	rax, rbx
	jmp	.label_749
.label_754:
	mov	rax, rbp
	jmp	.label_749
.label_746:
	mov	rax, qword ptr [rsp + 0xc8]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0x10]
.label_749:
	add	rsp, 0x178
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_740:
	mov	rax, qword ptr [rsp + 0x138]
	jmp	.label_749
.label_771:
	mov	rax, qword ptr [rsp + 0x70]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0x10]
	jmp	.label_749
.label_739:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a5e0

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
	sub	rsp, 0xb8
	mov	r12, rdx
	mov	r14, rsi
	mov	rbx, rdi
	mov	rdi, r14
	call	mbslen
	mov	r15, rax
	movabs	rax, 0x249249249249249
	cmp	r15, rax
	jbe	.label_777
	xor	eax, eax
	jmp	.label_779
.label_777:
	imul	rdi, r15, 0x38
	cmp	rdi, 0xfa0
	ja	.label_785
	mov	rax, rsp
	add	rdi, 0x2e
	and	rdi, 0xfffffffffffffff0
	mov	rcx, rax
	sub	rcx, rdi
	mov	rsp, rcx
	neg	rdi
	lea	rax, [rax + rdi + 0x1f]
	and	rax, 0xffffffffffffffe0
	jmp	.label_790
.label_785:
	call	mmalloca
.label_790:
	test	rax, rax
	je	.label_799
	mov	qword ptr [rbp - 0xe0], rbx
	mov	r13, rax
	mov	qword ptr [rbp - 0xd8], r12
	lea	rax, [r15 + r15*2]
	shl	rax, 4
	mov	qword ptr [rbp - 0xb0], rax
	mov	qword ptr [rbp - 0x58], r14
	mov	byte ptr [rbp - 0x68], 0
	mov	qword ptr [rbp - 0x64], 0
	mov	byte ptr [rbp - 0x5c], 0
	lea	rdi, [rbp - 0x68]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rbp - 0x48]
	test	al, al
	je	.label_784
	shr	rax, 0x20
	je	.label_787
.label_784:
	lea	rbx, [rbp - 0x40]
	lea	r14, [r13 + 0x18]
	lea	r12, [rbp - 0x68]
	nop	word ptr cs:[rax + rax]
.label_780:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, rbx
	jne	.label_795
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rdi, r14
	mov	rsi, rbx
	call	memcpy
	mov	rax, r14
.label_795:
	mov	qword ptr [r14 - 0x18], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [r14 - 0x10], rax
	mov	rax, qword ptr [rbp - 0x48]
	test	al, al
	mov	byte ptr [r14 - 8], al
	je	.label_800
	shr	rax, 0x20
	mov	dword ptr [r14 - 4], eax
.label_800:
	mov	rax, qword ptr [rbp - 0x50]
	add	qword ptr [rbp - 0x58], rax
	mov	byte ptr [rbp - 0x5c], 0
	mov	rdi, r12
	call	mbuiter_multi_next
	mov	rax, qword ptr [rbp - 0x48]
	add	r14, 0x30
	test	al, al
	je	.label_780
	shr	rax, 0x20
	jne	.label_780
.label_787:
	mov	r12, r13
	mov	rax, qword ptr [rbp - 0xb0]
	lea	rsi, [r12 + rax]
	mov	qword ptr [r12 + rax + 8], 1
	mov	ecx, 2
	xor	ebx, ebx
	cmp	r15, 3
	mov	qword ptr [rbp - 0xc8], r15
	jb	.label_788
.label_789:
	mov	qword ptr [rbp - 0xc0], rcx
	lea	rax, [rcx + rcx*2]
	shl	rax, 4
	lea	rcx, [rax + r12 - 0x30]
	mov	qword ptr [rbp - 0xb8], rcx
	mov	r15b, byte ptr [rax + r12 - 0x20]
	lea	r14, [rax + r12 - 0x28]
	lea	rax, [rax + r12 - 0x1c]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_798
	nop	word ptr cs:[rax + rax]
.label_803:
	sub	rbx, qword ptr [rsi + rbx*8]
.label_798:
	test	r15b, r15b
	je	.label_783
	lea	rax, [rbx + rbx*2]
	shl	rax, 4
	cmp	byte ptr [r12 + rax + 0x10], 0
	je	.label_783
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	ecx, dword ptr [rcx]
	cmp	ecx, dword ptr [r12 + rax + 0x14]
	jne	.label_775
	jmp	.label_794
	nop	dword ptr [rax + rax]
.label_783:
	mov	rdx, qword ptr [r14]
	lea	rax, [rbx + rbx*2]
	shl	rax, 4
	cmp	rdx, qword ptr [r12 + rax + 8]
	jne	.label_775
	mov	rcx, qword ptr [rbp - 0xb8]
	mov	rdi, qword ptr [rcx]
	mov	r13, rsi
	mov	rsi, qword ptr [r12 + rax]
	call	memcmp
	mov	rsi, r13
	test	eax, eax
	je	.label_794
.label_775:
	test	rbx, rbx
	jne	.label_803
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	qword ptr [rsi + rcx*8], rcx
	xor	ebx, ebx
	jmp	.label_804
	nop	word ptr cs:[rax + rax]
.label_794:
	inc	rbx
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	rax, rcx
	sub	rax, rbx
	mov	qword ptr [rsi + rcx*8], rax
.label_804:
	inc	rcx
	cmp	rcx, qword ptr [rbp - 0xc8]
	jne	.label_789
.label_788:
	mov	r13, r12
	mov	qword ptr [rbp - 0xd0], rsi
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0xe0]
	mov	qword ptr [rbp - 0x58], rax
	mov	byte ptr [rbp - 0x68], 0
	mov	qword ptr [rbp - 0x64], 0
	mov	byte ptr [rbp - 0x5c], 0
	mov	qword ptr [rbp - 0x98], rax
	mov	byte ptr [rbp - 0xa8], 0
	mov	qword ptr [rbp - 0xa4], 0
	mov	byte ptr [rbp - 0x9c], 0
	lea	rdi, [rbp - 0xa8]
	call	mbuiter_multi_next
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rax, rcx
	shr	rax, 0x20
	test	cl, cl
	setne	cl
	je	.label_782
	test	eax, eax
	je	.label_786
.label_782:
	xor	r15d, r15d
	lea	rbx, [rbp - 0xa8]
	nop	word ptr [rax + rax]
.label_778:
	lea	rdx, [r15 + r15*2]
	shl	rdx, 4
	cmp	byte ptr [r13 + rdx + 0x10], 0
	je	.label_797
	xor	cl, 1
	test	cl, 1
	jne	.label_797
	cmp	dword ptr [r13 + rdx + 0x14], eax
	jne	.label_774
	mov	r12, qword ptr [rbp - 0x98]
	mov	r14, qword ptr [rbp - 0x90]
	jmp	.label_801
	nop	word ptr cs:[rax + rax]
.label_797:
	mov	r14, qword ptr [r13 + rdx + 8]
	cmp	r14, qword ptr [rbp - 0x90]
	jne	.label_774
	mov	rdi, qword ptr [r13 + rdx]
	mov	r12, qword ptr [rbp - 0x98]
	mov	rsi, r12
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_801
.label_774:
	test	r15, r15
	je	.label_805
	mov	r14, rbx
	mov	rax, qword ptr [rbp - 0xd0]
	mov	rbx, qword ptr [rax + r15*8]
	sub	r15, rbx
	test	rbx, rbx
	lea	r12, [rbp - 0x68]
	je	.label_791
	nop	dword ptr [rax]
.label_802:
	mov	rdi, r12
	call	mbuiter_multi_next
	mov	rax, qword ptr [rbp - 0x48]
	test	al, al
	je	.label_796
	shr	rax, 0x20
	je	.label_776
.label_796:
	mov	rax, qword ptr [rbp - 0x50]
	add	qword ptr [rbp - 0x58], rax
	mov	byte ptr [rbp - 0x5c], 0
	dec	rbx
	jne	.label_802
	mov	rbx, r14
	jmp	.label_793
.label_801:
	inc	r15
	add	r12, r14
	mov	qword ptr [rbp - 0x98], r12
	mov	byte ptr [rbp - 0x9c], 0
	cmp	r15, qword ptr [rbp - 0xc8]
	jne	.label_793
	jmp	.label_792
	nop	
.label_805:
	lea	rdi, [rbp - 0x68]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rbp - 0x48]
	test	al, al
	je	.label_781
	shr	rax, 0x20
	je	.label_776
.label_781:
	mov	rax, qword ptr [rbp - 0x50]
	add	qword ptr [rbp - 0x58], rax
	mov	byte ptr [rbp - 0x5c], 0
	mov	rax, qword ptr [rbp - 0x90]
	add	qword ptr [rbp - 0x98], rax
	mov	byte ptr [rbp - 0x9c], 0
	xor	r15d, r15d
	jmp	.label_793
.label_791:
	mov	rbx, r14
.label_793:
	mov	rdi, rbx
	call	mbuiter_multi_next
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rax, rcx
	shr	rax, 0x20
	test	cl, cl
	setne	cl
	je	.label_778
	test	eax, eax
	jne	.label_778
	jmp	.label_786
.label_799:
	xor	eax, eax
	jmp	.label_779
.label_792:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	qword ptr [rcx], rax
.label_786:
	mov	rdi, r13
	call	freea
	mov	al, 1
.label_779:
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_776:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40aa40

	.globl knuth_morris_pratt
	.type knuth_morris_pratt, @function
knuth_morris_pratt:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rcx
	mov	r12, rdx
	mov	r13, rsi
	mov	r15, rdi
	mov	rax, r12
	shr	rax, 0x3c
	je	.label_806
	xor	eax, eax
	jmp	.label_813
.label_806:
	lea	rdi, [r12*8]
	cmp	rdi, 0xfa0
	ja	.label_821
	mov	rax, rsp
	add	rdi, 0x2e
	and	rdi, 0xfffffffffffffff0
	mov	rcx, rax
	sub	rcx, rdi
	mov	rsp, rcx
	neg	rdi
	lea	rdi, [rax + rdi + 0x1f]
	and	rdi, 0xffffffffffffffe0
	jmp	.label_820
.label_821:
	call	mmalloca
	mov	rdi, rax
.label_820:
	test	rdi, rdi
	je	.label_815
	mov	qword ptr [rdi + 8], 1
	mov	eax, 2
	xor	ecx, ecx
	cmp	r12, 3
	jb	.label_817
	nop	
.label_810:
	movzx	edx, byte ptr [rax + r13 - 1]
	movzx	esi, byte ptr [r13 + rcx]
	cmp	edx, esi
	je	.label_807
.label_812:
	test	rcx, rcx
	je	.label_811
	sub	rcx, qword ptr [rdi + rcx*8]
	movzx	esi, byte ptr [r13 + rcx]
	movzx	ebx, dl
	cmp	ebx, esi
	jne	.label_812
.label_807:
	inc	rcx
	mov	rdx, rax
	sub	rdx, rcx
	mov	qword ptr [rdi + rax*8], rdx
	jmp	.label_816
	nop	word ptr cs:[rax + rax]
.label_811:
	mov	qword ptr [rdi + rax*8], rax
	xor	ecx, ecx
.label_816:
	inc	rax
	cmp	rax, r12
	jne	.label_810
.label_817:
	mov	qword ptr [r14], 0
	xor	ecx, ecx
	mov	rax, r15
	jmp	.label_808
.label_815:
	xor	eax, eax
	jmp	.label_813
.label_814:
	mov	rdx, qword ptr [rdi + rcx*8]
	add	r15, rdx
	sub	rcx, rdx
	nop	word ptr [rax + rax]
.label_808:
	mov	dl, byte ptr [rax]
	test	dl, dl
	je	.label_818
	movzx	esi, byte ptr [r13 + rcx]
	movzx	edx, dl
	cmp	esi, edx
	jne	.label_819
	inc	rcx
	inc	rax
	cmp	r12, rcx
	jne	.label_808
	jmp	.label_809
.label_819:
	test	rcx, rcx
	jne	.label_814
	inc	r15
	inc	rax
	xor	ecx, ecx
	jmp	.label_808
.label_809:
	mov	qword ptr [r14], r15
.label_818:
	call	freea
	mov	al, 1
.label_813:
	lea	rsp, [rbp - 0x28]
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
	#Procedure 0x40ab80

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
	jne	.label_822
	cmp	byte ptr [rbx], 0
	mov	r15, qword ptr [rbx + 0x10]
	je	.label_826
	lea	r14, [rbx + 4]
	jmp	.label_832
.label_826:
	movzx	eax, byte ptr [r15]
	mov	rcx, rax
	shr	rcx, 5
	mov	ecx, dword ptr [(rcx * 4) + is_basic_table]
	bt	ecx, eax
	jae	.label_831
	mov	qword ptr [rbx + 0x18], 1
	movsx	eax, byte ptr [r15]
	mov	dword ptr [rbx + 0x24], eax
	mov	byte ptr [rbx + 0x20], 1
	jmp	.label_824
.label_831:
	lea	r14, [rbx + 4]
	mov	rdi, r14
	call	mbsinit
	test	eax, eax
	je	.label_830
	mov	byte ptr [rbx], 1
.label_832:
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
	je	.label_825
	test	rax, rax
	je	.label_828
	cmp	rax, -1
	jne	.label_829
	mov	qword ptr [rbx + 0x18], 1
	mov	byte ptr [rbx + 0x20], 0
	jmp	.label_824
.label_825:
	mov	rdi, qword ptr [rbx + 0x10]
	call	strlen
	mov	qword ptr [rbx + 0x18], rax
	mov	byte ptr [rbx + 0x20], 0
	jmp	.label_824
.label_828:
	mov	qword ptr [rbx + 0x18], 1
	mov	rax, qword ptr [rbx + 0x10]
	cmp	byte ptr [rax], 0
	jne	.label_823
	cmp	dword ptr [r12], 0
	jne	.label_827
.label_829:
	mov	byte ptr [rbx + 0x20], 1
	mov	rdi, r14
	call	mbsinit
	test	eax, eax
	je	.label_824
	mov	byte ptr [rbx], 0
.label_824:
	mov	byte ptr [rbx + 0xc], 1
.label_822:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_823:
	mov	edi, OFFSET FLAT:.str.2_2
	mov	esi, OFFSET FLAT:.str.1_8
	mov	edx, 0xb2
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mbuiter_multi_next
	call	__assert_fail
.label_827:
	mov	edi, OFFSET FLAT:.str.3_1
	mov	esi, OFFSET FLAT:.str.1_8
	mov	edx, 0xb3
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mbuiter_multi_next
	call	__assert_fail
.label_830:
	mov	edi, OFFSET FLAT:.str_6
	mov	esi, OFFSET FLAT:.str.1_8
	mov	edx, 0x96
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mbuiter_multi_next
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40acd0
	.globl mbuiter_multi_reloc
	.type mbuiter_multi_reloc, @function
mbuiter_multi_reloc:

	add	qword ptr [rdi + 0x10], rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ace0
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
	je	.label_833
	mov	rax, qword ptr [rbx + 4]
	mov	qword ptr [r14 + 4], rax
	jmp	.label_834
.label_833:
	mov	qword ptr [r14 + 4], 0
.label_834:
	mov	al, byte ptr [rbx + 0xc]
	mov	byte ptr [r14 + 0xc], al
	mov	rsi, qword ptr [rbx + 0x10]
	lea	rax, [rbx + 0x28]
	cmp	rsi, rax
	jne	.label_835
	lea	r15, [r14 + 0x28]
	mov	rdx, qword ptr [rbx + 0x18]
	mov	rdi, r15
	call	memcpy
	mov	rsi, r15
.label_835:
	mov	qword ptr [r14 + 0x10], rsi
	mov	rax, qword ptr [rbx + 0x18]
	mov	qword ptr [r14 + 0x18], rax
	mov	rax, qword ptr [rbx + 0x20]
	test	al, al
	mov	byte ptr [r14 + 0x20], al
	je	.label_836
	shr	rax, 0x20
	mov	dword ptr [r14 + 0x24], eax
.label_836:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40ad60

	.globl mem_cd_iconv
	.type mem_cd_iconv, @function
mem_cd_iconv:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x1058
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x28], rcx
	mov	rax, rdx
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rsi
	mov	qword ptr [rsp + 0x18], rbp
	mov	r14, rdi
	mov	qword ptr [rsp + 0x10], r14
	xor	ebx, ebx
	xor	esi, esi
	xor	edx, edx
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rdi, rax
	call	iconv
	mov	qword ptr [rsp + 0x50], r14
	mov	qword ptr [rsp + 0x48], rbp
	test	rbp, rbp
	je	.label_845
	xor	ebx, ebx
	lea	r12, [rsp + 0x58]
	lea	r14, [rsp + 0x50]
	lea	rbp, [rsp + 0x48]
	lea	r15, [rsp + 0x40]
	lea	r13, [rsp + 0x38]
.label_839:
	mov	qword ptr [rsp + 0x40], r12
	mov	qword ptr [rsp + 0x38], 0x1000
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, r14
	mov	rdx, rbp
	mov	rcx, r15
	mov	r8, r13
	call	iconv
	cmp	rax, -1
	jne	.label_850
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 7
	jne	.label_852
.label_850:
	sub	rbx, r12
	add	rbx, qword ptr [rsp + 0x40]
	cmp	qword ptr [rsp + 0x48], 0
	jne	.label_839
.label_845:
	lea	r14, [rsp + 0x58]
	mov	qword ptr [rsp + 0x40], r14
	mov	qword ptr [rsp + 0x38], 0x1000
	xor	ebp, ebp
	lea	rcx, [rsp + 0x40]
	lea	r8, [rsp + 0x38]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, qword ptr [rsp + 0x30]
	call	iconv
	cmp	rax, -1
	je	.label_837
	sub	rbx, r14
	add	rbx, qword ptr [rsp + 0x40]
	jmp	.label_841
.label_837:
	mov	ebp, 1
	jmp	.label_841
.label_852:
	cmp	eax, 0x16
	je	.label_845
	mov	ebp, 1
.label_841:
	mov	r12d, 0xffffffff
	test	ebp, ebp
	jne	.label_843
	test	rbx, rbx
	je	.label_849
	mov	rax, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rax]
	test	rbp, rbp
	je	.label_851
	mov	rax, qword ptr [rsp + 0x20]
	cmp	qword ptr [rax], rbx
	jae	.label_840
.label_851:
	mov	rdi, rbx
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_847
.label_840:
	mov	qword ptr [rsp + 8], rbp
	xor	esi, esi
	xor	edx, edx
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rdi, qword ptr [rsp + 0x30]
	call	iconv
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rsp + 0x58], rax
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rsp + 0x50], rax
	mov	qword ptr [rsp + 0x48], rbp
	mov	qword ptr [rsp + 0x40], rbx
	test	rax, rax
	je	.label_844
	lea	r13, [rsp + 0x58]
	lea	rbp, [rsp + 0x50]
	lea	r15, [rsp + 0x48]
	lea	r14, [rsp + 0x40]
	nop	word ptr cs:[rax + rax]
.label_846:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, r13
	mov	rdx, rbp
	mov	rcx, r15
	mov	r8, r14
	call	iconv
	cmp	rax, -1
	je	.label_838
	cmp	qword ptr [rsp + 0x50], 0
	jne	.label_846
	jmp	.label_844
.label_849:
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax], 0
	xor	r12d, r12d
	jmp	.label_843
.label_847:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_843
.label_838:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_842
.label_844:
	lea	rcx, [rsp + 0x48]
	lea	r8, [rsp + 0x40]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, qword ptr [rsp + 0x30]
	call	iconv
	cmp	rax, -1
	je	.label_842
	cmp	qword ptr [rsp + 0x40], 0
	jne	.label_848
	mov	rax, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax], rbx
	xor	r12d, r12d
	jmp	.label_843
.label_842:
	mov	rax, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 8]
	cmp	rbp, qword ptr [rax]
	je	.label_843
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	rdi, rbp
	call	free
	mov	dword ptr [rbx], r14d
.label_843:
	mov	eax, r12d
	add	rsp, 0x1058
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_848:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40afd0

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
	je	.label_857
	xor	esi, esi
	xor	edx, edx
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rdi, r14
	call	iconv
	mov	qword ptr [rsp + 0x10], r12
	mov	qword ptr [rsp + 8], rbx
	lea	rsi, [rsp + 0x20]
	lea	rdx, [rsp + 0x18]
	lea	rcx, [rsp + 0x10]
	lea	r8, [rsp + 8]
	mov	rdi, r14
	call	iconv
	cmp	rax, -1
	je	.label_858
	mov	r13, r12
	mov	rbx, rbp
.label_860:
	lea	rcx, [rsp + 0x10]
	lea	r8, [rsp + 8]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r14
	call	iconv
	cmp	rax, -1
	je	.label_865
	mov	r12, r13
	mov	rbp, rbx
.label_854:
	mov	rax, qword ptr [rsp + 0x10]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp + 0x10], rcx
	mov	byte ptr [rax], 0
	mov	rsi, qword ptr [rsp + 0x10]
	sub	rsi, r12
	cmp	rsi, rbp
	jae	.label_853
	mov	rdi, r12
	call	realloc
	test	rax, rax
	cmovne	r12, rax
	jmp	.label_853
.label_857:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	r12d, r12d
	jmp	.label_853
.label_858:
	call	__errno_location
	mov	r15, rax
	nop	word ptr cs:[rax + rax]
.label_856:
	mov	eax, dword ptr [r15]
	cmp	eax, 7
	jne	.label_862
	lea	rbx, [rbp + rbp]
	cmp	rbx, rbp
	jbe	.label_863
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rdi, r12
	mov	rsi, rbx
	call	realloc
	mov	r13, rax
	test	r13, r13
	je	.label_855
	sub	rbp, r12
	mov	rax, r13
	add	rax, rbp
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rbx - 1]
	sub	rax, rbp
	mov	qword ptr [rsp + 8], rax
	mov	rdi, r14
	lea	rsi, [rsp + 0x20]
	lea	rdx, [rsp + 0x18]
	lea	rcx, [rsp + 0x10]
	lea	r8, [rsp + 8]
	call	iconv
	cmp	rax, -1
	mov	r12, r13
	mov	rbp, rbx
	je	.label_856
	jmp	.label_860
.label_865:
	call	__errno_location
	mov	r15, rax
	nop	word ptr cs:[rax + rax]
.label_861:
	cmp	dword ptr [r15], 7
	jne	.label_864
	lea	rbp, [rbx + rbx]
	cmp	rbp, rbx
	jbe	.label_866
	mov	rbx, qword ptr [rsp + 0x10]
	mov	rdi, r13
	mov	rsi, rbp
	call	realloc
	mov	r12, rax
	test	r12, r12
	je	.label_866
	sub	rbx, r13
	mov	rax, r12
	add	rax, rbx
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rbp - 1]
	sub	rax, rbx
	mov	qword ptr [rsp + 8], rax
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r14
	lea	rcx, [rsp + 0x10]
	lea	r8, [rsp + 8]
	call	iconv
	cmp	rax, -1
	mov	r13, r12
	mov	rbx, rbp
	je	.label_861
	jmp	.label_854
.label_866:
	mov	dword ptr [r15], 0xc
	mov	r12, r13
	jmp	.label_859
.label_862:
	cmp	eax, 0x16
	mov	r13, r12
	mov	rbx, rbp
	je	.label_860
	jmp	.label_859
.label_863:
	mov	dword ptr [r15], 0xc
	jmp	.label_859
.label_855:
	mov	dword ptr [r15], 0xc
	jmp	.label_859
.label_864:
	mov	r12, r13
.label_859:
	mov	ebx, dword ptr [r15]
	mov	rdi, r12
	call	free
	mov	dword ptr [r15], ebx
	xor	r12d, r12d
.label_853:
	mov	rax, r12
	add	rsp, 0x28
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
	#Procedure 0x40b240

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
	je	.label_867
	mov	rdi, r14
	mov	rsi, r15
	call	c_strcasecmp
	test	eax, eax
	je	.label_867
	mov	rdi, r15
	mov	rsi, r14
	call	iconv_open
	mov	r15, rax
	xor	r14d, r14d
	cmp	r15, -1
	je	.label_869
	mov	rdi, rbx
	mov	rsi, r15
	call	str_cd_iconv
	mov	r14, rax
	test	r14, r14
	je	.label_870
	mov	rdi, r15
	call	iconv_close
	test	eax, eax
	jns	.label_869
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, r14
	call	free
	jmp	.label_871
.label_867:
	mov	rdi, rbx
	call	__strdup
	mov	r14, rax
	test	r14, r14
	jne	.label_869
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_868
.label_870:
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, r15
	call	iconv_close
.label_871:
	mov	dword ptr [rbx], ebp
.label_868:
	xor	r14d, r14d
.label_869:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b2f0

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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b330

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_872
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_874
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_872
.label_874:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_872
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_873
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_873:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_872:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x40b3b0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_875
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_875
	test	byte ptr [rbx + 1], 1
	je	.label_875
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_875:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b3f0

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
	jne	.label_876
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_876
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_877
.label_876:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_877:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_878
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_878:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40b460

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
	#Procedure 0x40b480

	.globl mmalloca
	.type mmalloca, @function
mmalloca:
	xor	eax, eax
	cmp	rdi, -0x21
	ja	.label_879
	push	rax
	add	rdi, 0x20
	call	malloc
	mov	rcx, rax
	xor	eax, eax
	test	rcx, rcx
	lea	rsp, [rsp + 8]
	je	.label_879
	mov	rdx, rcx
	add	rdx, 0x10
	and	rdx, 0xffffffffffffffe0
	lea	rax, [rdx + 0x10]
	mov	esi, eax
	sub	esi, ecx
	mov	byte ptr [rdx + 0xf], sil
.label_879:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b4c0

	.globl freea
	.type freea, @function
freea:
	test	dil, 0xf
	jne	.label_880
	test	dil, 0x10
	jne	.label_881
	ret	
.label_881:
	movzx	eax, byte ptr [rdi - 1]
	sub	rdi, rax
	jmp	free
.label_880:
	push	rax
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x40b4e0
	.globl mb_width_aux
	.type mb_width_aux, @function
mb_width_aux:

	push	rbx
	mov	ebx, edi
	call	wcwidth
	test	eax, eax
	jns	.label_882
	mov	edi, ebx
	call	iswcntrl
	test	eax, eax
	sete	al
	movzx	eax, al
.label_882:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b500
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
	jne	.label_883
	lea	r15, [r14 + 0x18]
	mov	rdx, qword ptr [rbx + 8]
	mov	rdi, r15
	call	memcpy
	mov	rsi, r15
.label_883:
	mov	qword ptr [r14], rsi
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [r14 + 8], rax
	mov	rax, qword ptr [rbx + 0x10]
	test	al, al
	mov	byte ptr [r14 + 0x10], al
	je	.label_884
	shr	rax, 0x20
	mov	dword ptr [r14 + 0x14], eax
.label_884:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40b550
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
	nop	
	.section .text
	.align	16
	#Procedure 0x40b570

	.globl mbslen
	.type mbslen, @function
mbslen:
	push	r14
	push	rbx
	sub	rsp, 0x48
	mov	rbx, rdi
	call	__ctype_get_mb_cur_max
	cmp	rax, 2
	jb	.label_888
	mov	qword ptr [rsp + 0x18], rbx
	mov	byte ptr [rsp + 8], 0
	mov	qword ptr [rsp + 0xc], 0
	mov	byte ptr [rsp + 0x14], 0
	lea	rdi, [rsp + 8]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x28]
	xor	ebx, ebx
	test	al, al
	je	.label_887
	shr	rax, 0x20
	je	.label_885
.label_887:
	xor	ebx, ebx
	lea	r14, [rsp + 8]
	nop	
.label_886:
	inc	rbx
	mov	rax, qword ptr [rsp + 0x20]
	add	qword ptr [rsp + 0x18], rax
	mov	byte ptr [rsp + 0x14], 0
	mov	rdi, r14
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x28]
	test	al, al
	je	.label_886
	shr	rax, 0x20
	jne	.label_886
.label_885:
	mov	rax, rbx
	add	rsp, 0x48
	pop	rbx
	pop	r14
	ret	
.label_888:
	mov	rdi, rbx
	add	rsp, 0x48
	pop	rbx
	pop	r14
	jmp	strlen
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]