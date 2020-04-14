	.section	.text
	.align	16
	#Procedure 0x4021b0

	.globl usage
	.type usage, @function
usage:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rbp
	push	rbx
	push	rax
	nop	
	mov	ebp, edi
	lea	rdi, [rdi]
	test	ebp, ebp
	mov	rbp, rbp
	jne	.label_9
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	lea	rsi, [rsi]
	call	__printf_chk
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2
	mov	rsp, rsp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rip + stdout]
	nop	
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.4
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rsi, qword ptr [rip + stdout]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.23
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi, rax
	mov	edi, 1
	nop	
	mov	edx, OFFSET FLAT:.str.17
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:.str.18
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	nop	
	call	setlocale
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_8
	nop	
	mov	esi, OFFSET FLAT:.str.25
	lea	rsi, [rsi]
	mov	edx, 3
	mov	rbp, rbp
	mov	rdi, rax
	call	strncmp
	nop	
	test	eax, eax
	je	.label_8
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.26
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
.label_8:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.27
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rsi, rax
	mov	rbp, rbp
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.5
	xor	eax, eax
	nop	
	call	__printf_chk
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.28
	nop	
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	nop	
	mov	rsi, rax
	mov	rbp, rbp
	mov	edi, 1
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.5
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:.str.29
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	call	__printf_chk
	mov	edi, ebp
	mov	rsp, rsp
	call	exit
.label_9:
	mov	rbx, qword ptr [rip + stderr]
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rdx, rax
	mov	rcx, qword ptr [rip + program_name]
	mov	rbp, rbp
	mov	esi, 1
	mov	rsp, rsp
	xor	eax, eax
	mov	rdi, rbx
	mov	rbp, rbp
	call	__fprintf_chk
	lea	rdi, [rdi]
	mov	edi, ebp
	call	exit
	nop	
	.section	.text
	.align	16
	#Procedure 0x4023e0

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rsp, rsp
	push	r15
	mov	rbp, rbp
	push	r14
	lea	rsi, [rsi]
	push	rbx
	sub	rsp, 0x28
	mov	r14, rsi
	mov	rbp, rbp
	mov	r15d, edi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	mov	rsp, rsp
	call	setlocale
	nop	
	mov	edi, OFFSET FLAT:.str.7
	mov	esi, OFFSET FLAT:.str.8
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.7
	call	textdomain
	cmp	qword ptr [rip + lbuf.0],  0
	jne	.label_17
	mov	edi, 0x400
	call	xmalloc
	mov	rsp, rsp
	mov	qword ptr [rip + lbuf.0],  rax
	mov	qword ptr [rip + lbuf.1],  rax
.label_17:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:close_stdout
	mov	rsp, rsp
	call	atexit
	mov	edi, OFFSET FLAT:lbuf_flush
	nop	
	call	atexit
	jmp	.label_20
	nop	word ptr cs:[rax + rax]
.label_19:
	mov	byte ptr [rip + dev_debug],  1
.label_20:
	mov	edx, OFFSET FLAT:.str_0
	mov	ecx, OFFSET FLAT:long_options
	mov	rsp, rsp
	xor	r8d, r8d
	nop	
	mov	edi, r15d
	lea	rsi, [rsi]
	mov	rsi, r14
	lea	rdi, [rdi]
	call	getopt_long
	cmp	eax, 0x7f
	lea	rsi, [rsi]
	jle	.label_21
	nop	
	cmp	eax, 0x80
	je	.label_19
	lea	rdi, [rdi]
	jmp	.label_18
.label_21:
	cmp	eax, -1
	lea	rdi, [rdi]
	jne	.label_10
	mov	rsp, rsp
	movsxd	rax, dword ptr [rip + optind]
	cmp	eax, r15d
	mov	rbp, rbp
	jge	.label_11
	mov	rsp, rsp
	lea	rbp, [r14 + rax*8]
	sub	r15d, eax
	lea	rdi, [rdi]
	mov	r14b, 1
	nop	
.label_14:
	nop	
	mov	rdi, qword ptr [rbp]
	nop	
	call	print_factors
	mov	bl, al
	mov	rsp, rsp
	test	bl, bl
	mov	rsp, rsp
	je	.label_22
	mov	bl, r14b
.label_22:
	mov	rsp, rsp
	add	rbp, 8
	dec	r15d
	mov	r14b, bl
	jne	.label_14
	jmp	.label_13
.label_11:
	mov	rsp, rsp
	lea	rbx, [rsp + 0x18]
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	init_tokenbuffer
	mov	rdi, qword ptr [rip + stdin]
	mov	esi, OFFSET FLAT:.str.35
	nop	
	mov	edx, 3
	nop	
	mov	rcx, rbx
	mov	rbp, rbp
	call	readtoken
	lea	rdi, [rdi]
	cmp	rax, -1
	mov	bl, 1
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x20]
	je	.label_12
	lea	rbp, [rsp + 0x18]
	nop	word ptr [rax + rax]
.label_16:
	lea	rdi, [rdi]
	call	print_factors
	mov	rsp, rsp
	and	bl, al
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rip + stdin]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.35
	nop	
	mov	edx, 3
	mov	rcx, rbp
	call	readtoken
	mov	rdi, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	cmp	rax, -1
	mov	rsp, rsp
	jne	.label_16
	mov	rbp, rbp
	test	bl, bl
	nop	
	setne	bl
.label_12:
	mov	rbp, rbp
	call	free
.label_13:
	not	bl
	and	bl, 1
	movzx	eax, bl
	lea	rdi, [rdi]
	add	rsp, 0x28
	pop	rbx
	mov	rsp, rsp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	nop	
	ret	
.label_10:
	cmp	eax, 0xffffff7d
	je	.label_15
	cmp	eax, 0xffffff7e
	jne	.label_18
	xor	edi, edi
	call	usage
.label_15:
	mov	r14, qword ptr [rip + stdout]
	mov	rbp, rbp
	mov	rbp, qword ptr [rip + Version]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str.11
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.12
	mov	rsp, rsp
	call	proper_name_utf8
	mov	rbx, rax
	mov	edi, OFFSET FLAT:.str.13
	mov	esi, OFFSET FLAT:.str.14
	call	proper_name_utf8
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], 0
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.5
	nop	
	mov	edx, OFFSET FLAT:.str.17
	mov	rbp, rbp
	mov	r8d, OFFSET FLAT:.str.10
	xor	eax, eax
	mov	rdi, r14
	nop	
	mov	rcx, rbp
	nop	
	mov	r9, rbx
	mov	rbp, rbp
	call	version_etc
	xor	edi, edi
	call	exit
.label_18:
	mov	edi, 1
	call	usage
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402680

	.globl lbuf_flush
	.type lbuf_flush, @function
lbuf_flush:
	push	rbx
	mov	rbx, qword ptr [rip + lbuf.1]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rip + lbuf.0]
	nop	
	sub	rbx, rsi
	mov	edi, 1
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	full_write
	lea	rsi, [rsi]
	cmp	rax, rbx
	mov	rbp, rbp
	jne	.label_23
	lea	rsi, [rsi]
	mov	rax, qword ptr [rip + lbuf.0]
	mov	qword ptr [rip + lbuf.1],  rax
	pop	rbx
	ret	
.label_23:
	mov	rbp, rbp
	call	__errno_location
	nop	
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str_2
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	edi, 1
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	nop	
	mov	esi, ebx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402710

	.globl print_factors
	.type print_factors, @function
print_factors:
	nop	
	push	rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x120
	mov	r14, rdi
	lea	rsi, [rsi]
	mov	rax, r14
	lea	rsi, [rsi]
	jmp	.label_51
	nop	word ptr cs:[rax + rax]
.label_43:
	lea	rsi, [rsi]
	inc	rax
.label_51:
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0x20
	je	.label_43
	lea	rsi, [rsi]
	movzx	ecx, cl
	lea	rdi, [rdi]
	cmp	ecx, 0x2b
	mov	rsp, rsp
	jne	.label_46
	mov	rsp, rsp
	inc	rax
.label_46:
	mov	ecx, 4
	mov	rbp, rbp
	mov	rdx, rax
	nop	word ptr cs:[rax + rax]
.label_27:
	nop	
	movsx	esi, byte ptr [rdx]
	lea	rsi, [rsi]
	test	esi, esi
	mov	rsp, rsp
	je	.label_24
	lea	rdi, [rdi]
	inc	rdx
	add	esi, -0x30
	lea	rdi, [rdi]
	xor	ecx, ecx
	nop	
	cmp	esi, 9
	jbe	.label_27
	jmp	.label_36
.label_24:
	nop	
	xor	r15d, r15d
	test	ecx, ecx
	je	.label_37
.label_36:
	xor	r15d, r15d
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.37
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r14
	lea	rsi, [rsi]
	call	quote
	lea	rdi, [rdi]
	mov	rcx, rax
	nop	
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	nop	
	mov	rdx, rbx
	call	error
	mov	rbp, rbp
	jmp	.label_26
.label_37:
	lea	rsi, [rsi]
	movabs	rcx, 0x1999999999999999
	lea	rdi, [rdi]
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_40:
	movsx	rdx, byte ptr [rax]
	lea	rsi, [rsi]
	test	rdx, rdx
	je	.label_29
	lea	rdi, [rdi]
	cmp	rbx, rcx
	mov	rbp, rbp
	ja	.label_34
	inc	rax
	add	edx, -0x30
	nop	
	add	rbx, rbx
	lea	rsi, [rbx + rbx*4]
	lea	rsi, [rsi]
	mov	rdi, r15
	nop	
	shr	rdi, 0x3d
	mov	rbp, rbp
	mov	rbx, r15
	shr	rbx, 0x3f
	add	rbx, rdi
	add	r15, r15
	lea	rdi, [r15 + r15*4]
	mov	rbp, rbp
	cmp	rdi, r15
	adc	rbx, 0
	mov	rsp, rsp
	add	rdx, rdi
	adc	rbx, 0
	mov	rsp, rsp
	add	rbx, rsi
	mov	r15, rdx
	lea	rsi, [rsi]
	jae	.label_40
	nop	
	jmp	.label_34
.label_29:
	movabs	rax, 0x7fffffffffffffff
	and	rax, rbx
	cmp	rax, rbx
	jne	.label_34
	movzx	eax, byte ptr [rip + dev_debug]
	and	eax, 1
	lea	rdi, [rdi]
	cmp	eax, 1
	jne	.label_30
	mov	rbp, rbp
	mov	rdi, qword ptr [rip + stderr]
	lea	rsi, [rsi]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.36
	xor	eax, eax
	mov	rbp, rbp
	call	__fprintf_chk
.label_30:
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rsi, r15
	mov	rbp, rbp
	call	print_uintmaxes
	mov	rax, qword ptr [rip + lbuf.1]
	mov	rbp, rbp
	lea	rcx, [rax + 1]
	mov	rbp, rbp
	mov	qword ptr [rip + lbuf.1],  rcx
	nop	
	mov	byte ptr [rax], 0x3a
	lea	rdx, [rsp]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, r15
	nop	
	call	factor
	mov	al, byte ptr [rsp + 0xfa]
	mov	rsp, rsp
	test	al, al
	je	.label_28
	xor	r15d, r15d
	mov	rsp, rsp
	lea	r14, [rsp + 0x100]
	nop	
.label_44:
	mov	r15d, r15d
	cmp	byte ptr [rsp + r15 + 0xe0], 0
	je	.label_41
	xor	ebp, ebp
	lea	rdi, [rdi]
	mov	rax, qword ptr [rip + lbuf.1]
	nop	
.label_32:
	lea	rsi, [rsi]
	lea	rcx, [rax + 1]
	mov	qword ptr [rip + lbuf.1],  rcx
	mov	rbp, rbp
	mov	byte ptr [rax], 0x20
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + r15*8 + 0x10]
	mov	rbp, rbp
	mov	rsi, r14
	call	umaxtostr
	mov	rbx, r14
	mov	rbp, rbp
	sub	rbx, rax
	lea	rdx, [rbx + 0x14]
	mov	r12, qword ptr [rip + lbuf.1]
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rsi, rax
	lea	rdi, [rdi]
	call	memcpy
	lea	rax, [r12 + rbx + 0x14]
	mov	qword ptr [rip + lbuf.1],  rax
	lea	rsi, [rsi]
	inc	ebp
	movzx	ecx, byte ptr [rsp + r15 + 0xe0]
	cmp	ebp, ecx
	lea	rdi, [rdi]
	jb	.label_32
	lea	rdi, [rdi]
	mov	al, byte ptr [rsp + 0xfa]
.label_41:
	lea	rdi, [rdi]
	inc	r15d
	movzx	ecx, al
	cmp	r15d, ecx
	jb	.label_44
.label_28:
	mov	rsp, rsp
	cmp	qword ptr [rsp + 8], 0
	lea	rsi, [rsi]
	je	.label_48
	lea	rdi, [rdi]
	mov	rax, qword ptr [rip + lbuf.1]
	lea	rcx, [rax + 1]
	mov	qword ptr [rip + lbuf.1],  rcx
	mov	rbp, rbp
	mov	byte ptr [rax], 0x20
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 8]
	mov	rsp, rsp
	call	print_uintmaxes
.label_48:
	mov	rax, qword ptr [rip + lbuf.1]
	lea	rbx, [rax + 1]
	lea	rsi, [rsi]
	mov	qword ptr [rip + lbuf.1],  rbx
	mov	byte ptr [rax], 0xa
	lea	rsi, [rsi]
	sub	rbx, qword ptr [rip + lbuf.0]
	mov	eax, dword ptr [rip + lbuf_putc.line_buffered]
	cmp	eax, -1
	jne	.label_31
	xor	edi, edi
	call	isatty
	lea	rsi, [rsi]
	mov	dword ptr [rip + lbuf_putc.line_buffered],  eax
.label_31:
	test	eax, eax
	nop	
	je	.label_25
	mov	rbx, qword ptr [rip + lbuf.1]
	mov	rsi, qword ptr [rip + lbuf.0]
	sub	rbx, rsi
	mov	edi, 1
	mov	rdx, rbx
	call	full_write
	mov	rbp, rbp
	cmp	rax, rbx
	mov	rsp, rsp
	jne	.label_47
	mov	rsp, rsp
	mov	rax, qword ptr [rip + lbuf.0]
	mov	rsp, rsp
	mov	qword ptr [rip + lbuf.1],  rax
	mov	r15b, 1
	jmp	.label_26
.label_34:
	mov	rbp, rbp
	movzx	eax, byte ptr [rip + dev_debug]
	and	eax, 1
	cmp	eax, 1
	mov	rsp, rsp
	jne	.label_39
	nop	
	mov	rdi, qword ptr [rip + stderr]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.38
	xor	eax, eax
	call	__fprintf_chk
.label_39:
	lea	rbx, [rsp + 0x100]
	mov	edx, 0xa
	mov	rdi, rbx
	mov	rsi, r14
	call	__gmpz_init_set_str
	mov	edi, OFFSET FLAT:.str.39
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsi, rbx
	call	__gmp_printf
	lea	rsi, [rsp]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	mp_factor
	mov	rcx, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	test	rcx, rcx
	lea	rsi, [rsi]
	je	.label_33
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	xor	ebx, ebx
.label_42:
	mov	rsp, rsp
	mov	ebp, 1
	mov	rbp, rbp
	cmp	qword ptr [rax + rbx*8], 0
	je	.label_53
	nop	word ptr cs:[rax + rax]
.label_38:
	lea	rsi, [rsi]
	mov	rsi, rbx
	lea	rsi, [rsi]
	shl	rsi, 4
	add	rsi, qword ptr [rsp]
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.40
	xor	eax, eax
	nop	
	call	__gmp_printf
	mov	rsp, rsp
	mov	ecx, ebp
	nop	
	mov	rax, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	inc	ebp
	cmp	rcx, qword ptr [rax + rbx*8]
	mov	rsp, rsp
	jb	.label_38
	mov	rcx, qword ptr [rsp + 0x10]
.label_53:
	lea	rdi, [rdi]
	lea	ebx, [rbx + 1]
	nop	
	cmp	rbx, rcx
	jb	.label_42
	mov	rsp, rsp
	test	rcx, rcx
	lea	rdi, [rdi]
	je	.label_33
	lea	rsi, [rsi]
	mov	ebx, 1
	lea	rdi, [rdi]
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_50:
	shl	rdi, 4
	lea	rsi, [rsi]
	add	rdi, qword ptr [rsp]
	call	__gmpz_clear
	mov	edi, ebx
	mov	rsp, rsp
	inc	ebx
	nop	
	cmp	rdi, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	jb	.label_50
.label_33:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp]
	call	free
	mov	rdi, qword ptr [rsp + 8]
	call	free
	lea	rdi, [rsp + 0x100]
	call	__gmpz_clear
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rip + stdout]
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_35
	lea	rsi, [rsi]
	lea	rcx, [rax + 1]
	nop	
	mov	qword ptr [rdi + 0x28], rcx
	mov	rbp, rbp
	mov	byte ptr [rax], 0xa
.label_52:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rip + stdout]
	mov	rsp, rsp
	call	fflush_unlocked
	nop	
	mov	r15b, 1
.label_26:
	mov	rbp, rbp
	mov	al, r15b
	mov	rbp, rbp
	add	rsp, 0x120
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_35:
	mov	esi, 0xa
	nop	
	call	__overflow
	nop	
	jmp	.label_52
.label_25:
	mov	rbp, rbp
	cmp	rbx, 0x200
	mov	rbp, rbp
	jb	.label_45
	nop	
	mov	r14, qword ptr [rip + lbuf.1]
	mov	rsi, qword ptr [rip + lbuf.0]
	mov	rbp, rbp
	lea	rbx, [rsi + 0x201]
.label_49:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbx - 2]
	mov	rbp, rbp
	dec	rbx
	cmp	eax, 0xa
	mov	rsp, rsp
	jne	.label_49
	lea	rsi, [rsi]
	mov	qword ptr [rip + lbuf.1],  rbx
	mov	r15, rbx
	sub	r15, rsi
	lea	rsi, [rsi]
	mov	edi, 1
	nop	
	mov	rdx, r15
	mov	rbp, rbp
	call	full_write
	cmp	rax, r15
	jne	.label_47
	mov	rbp, rbp
	mov	r15, qword ptr [rip + lbuf.0]
	lea	rsi, [rsi]
	sub	r14, rbx
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	mov	rdx, r14
	lea	rdi, [rdi]
	call	memcpy
	mov	rsp, rsp
	add	r14, r15
	mov	qword ptr [rip + lbuf.1],  r14
.label_45:
	mov	r15b, 1
	lea	rdi, [rdi]
	jmp	.label_26
.label_47:
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rbp
	mov	ebx, dword ptr [rax]
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_2
	nop	
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	edi, 1
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str_1
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	esi, ebx
	lea	rdi, [rdi]
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d70

	.globl mp_factor
	.type mp_factor, @function
mp_factor:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	mov	rsp, rsp
	push	r12
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x28
	mov	r14, rsi
	mov	r15, rdi
	xorps	xmm0, xmm0
	mov	rsp, rsp
	movups	xmmword ptr [r14], xmm0
	mov	qword ptr [r14 + 0x10], 0
	cmp	dword ptr [r15 + 4], 0
	mov	rsp, rsp
	je	.label_54
	movzx	eax, byte ptr [rip + dev_debug]
	mov	rbp, rbp
	and	eax, 1
	cmp	eax, 1
	jne	.label_60
	mov	rbp, rbp
	mov	rdi, qword ptr [rip + stderr]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.54
	xor	eax, eax
	lea	rdi, [rdi]
	call	__fprintf_chk
.label_60:
	mov	rbp, rbp
	lea	rdi, [rsp]
	call	__gmpz_init
	lea	rdi, [rdi]
	xor	esi, esi
	mov	rdi, r15
	call	__gmpz_scan1
	lea	rdi, [rdi]
	mov	r12, rax
	mov	rdi, r15
	mov	rbp, rbp
	mov	rsi, r15
	mov	rbp, rbp
	mov	rdx, r12
	call	__gmpz_fdiv_q_2exp
	mov	r13d, 3
	mov	ebp, 1
	test	r12, r12
	je	.label_55
	lea	rdi, [rdi]
	lea	rbx, [rsp + 0x10]
	mov	r13d, 3
	lea	rdi, [rdi]
	mov	ebp, 1
	nop	dword ptr [rax]
.label_59:
	lea	rdi, [rdi]
	mov	esi, 2
	mov	rdi, rbx
	call	__gmpz_init_set_ui
	mov	rdi, r14
	mov	rsi, rbx
	call	mp_factor_insert
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__gmpz_clear
	dec	r12
	jne	.label_59
	nop	
.label_55:
	cmp	rbp, 0x29c
	ja	.label_57
	lea	rsi, [rsi]
	mov	rdi, r15
	lea	rdi, [rdi]
	mov	rsi, r13
	call	__gmpz_divisible_ui_p
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_56
	nop	
	lea	rbx, [rsp + 0x10]
	nop	dword ptr [rax + rax]
.label_58:
	mov	rdi, r15
	mov	rsi, r15
	mov	rbp, rbp
	mov	rdx, r13
	call	__gmpz_tdiv_q_ui
	mov	rdi, rbx
	nop	
	mov	rsi, r13
	call	__gmpz_init_set_ui
	mov	rdi, r14
	mov	rsi, rbx
	call	mp_factor_insert
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	__gmpz_clear
	mov	rdi, r15
	nop	
	mov	rsi, r13
	lea	rdi, [rdi]
	call	__gmpz_divisible_ui_p
	test	eax, eax
	jne	.label_58
.label_56:
	movzx	eax, byte ptr [rbp + primes_diff]
	inc	rbp
	mov	rbp, rbp
	add	r13, rax
	lea	rsi, [rsi]
	mov	rsi, r13
	mov	rsp, rsp
	imul	rsi, rsi
	mov	rdi, r15
	call	__gmpz_cmp_ui
	test	eax, eax
	jns	.label_55
.label_57:
	lea	rdi, [rsp]
	nop	
	call	__gmpz_clear
	mov	esi, 1
	mov	rdi, r15
	call	__gmpz_cmp_ui
	test	eax, eax
	mov	rbp, rbp
	je	.label_54
	movzx	eax, byte ptr [rip + dev_debug]
	nop	
	and	eax, 1
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_61
	nop	
	mov	rdi, qword ptr [rip + stderr]
	mov	rbp, rbp
	mov	esi, 1
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.53
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	call	__fprintf_chk
.label_61:
	mov	rdi, r15
	lea	rsi, [rsi]
	call	mp_prime_p
	test	al, al
	je	.label_62
	nop	
	mov	rdi, r14
	mov	rsi, r15
	mov	rbp, rbp
	call	mp_factor_insert
	mov	rsp, rsp
	jmp	.label_54
.label_62:
	mov	rbp, rbp
	mov	esi, 1
	nop	
	mov	rdi, r15
	mov	rdx, r14
	mov	rbp, rbp
	call	mp_factor_using_pollard_rho
.label_54:
	mov	rbp, rbp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rbp, rbp
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x402fc0

	.globl print_uintmaxes
	.type print_uintmaxes, @function
print_uintmaxes:
	push	r15
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	mov	rbp, rbp
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x30
	mov	rbx, rsi
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_63
	mov	rbp, rbp
	mov	r9, rdi
	lea	rsi, [rsi]
	shr	r9, 9
	movabs	r8, 0x44b82fa09b5a53
	mov	rax, r9
	mul	r8
	mov	rsp, rsp
	shr	rdx, 0xb
	mov	rsp, rsp
	imul	rax, rdx, 0x3b9aca00
	sub	rdi, rax
	nop	
	mov	eax, 0xffffffc0
	lea	rsi, [rsi]
	mov	edx, 0x3b9aca00
	xor	esi, esi
	lea	rdi, [rdi]
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_67:
	lea	rsi, [rsi]
	shrd	rcx, rdx, 1
	shr	rdx, 1
	add	rsi, rsi
	nop	
	cmp	rdi, rdx
	ja	.label_65
	jne	.label_64
	nop	
	cmp	rbx, rcx
	jb	.label_64
.label_65:
	or	rsi, 1
	mov	qword ptr [rsp + 0x28], rdx
	mov	qword ptr [rsp + 0x20], rcx
	sub	rbx, qword ptr [rsp + 0x20]
	sbb	rdi, qword ptr [rsp + 0x28]
.label_64:
	lea	rsi, [rsi]
	inc	eax
	jne	.label_67
	mov	rax, r9
	mul	r8
	nop	
	shr	rdx, 0xb
	mov	rsp, rsp
	mov	rdi, rdx
	mov	rbp, rbp
	call	print_uintmaxes
	lea	r12, [rsp]
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rsi, r12
	lea	rdi, [rdi]
	call	umaxtostr
	mov	r14, rax
	mov	rbx, r12
	lea	rdi, [rdi]
	sub	rbx, r14
	add	rbx, 0x14
	mov	r15, qword ptr [rip + lbuf.1]
	cmp	rbx, 8
	lea	rsi, [rsi]
	ja	.label_66
	nop	
	mov	r13, -0xb
	sub	r13, r12
	mov	rsp, rsp
	add	r13, r14
	mov	rbp, rbp
	mov	esi, 0x30
	mov	rdi, r15
	mov	rdx, r13
	mov	rsp, rsp
	call	memset
	add	r15, r13
	lea	rsi, [rsi]
	mov	qword ptr [rip + lbuf.1],  r15
.label_66:
	mov	rdi, r15
	mov	rsp, rsp
	mov	rsi, r14
	nop	
	mov	rdx, rbx
	call	memcpy
	mov	rsp, rsp
	add	r15, rbx
	mov	qword ptr [rip + lbuf.1],  r15
	mov	rbp, rbp
	jmp	.label_68
.label_63:
	lea	r14, [rsp]
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsi, r14
	call	umaxtostr
	lea	rdi, [rdi]
	sub	r14, rax
	lea	rdx, [r14 + 0x14]
	mov	rsp, rsp
	mov	rbx, qword ptr [rip + lbuf.1]
	mov	rdi, rbx
	mov	rsp, rsp
	mov	rsi, rax
	call	memcpy
	lea	rax, [rbx + r14 + 0x14]
	nop	
	mov	qword ptr [rip + lbuf.1],  rax
.label_68:
	add	rsp, 0x30
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	mov	rbp, rbp
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403170

	.globl factor
	.type factor, @function
factor:
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	r13
	nop	
	push	r12
	mov	rsp, rsp
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x48
	mov	rbp, rbp
	mov	r8, rdx
	lea	rdi, [rdi]
	mov	r13, rsi
	mov	rbx, rdi
	mov	byte ptr [r8 + 0xfa], 0
	mov	qword ptr [r8 + 8], 0
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_94
	cmp	r13, 2
	mov	rsp, rsp
	jb	.label_107
.label_94:
	test	r13b, 1
	lea	rdi, [rdi]
	jne	.label_109
	lea	rdi, [rdi]
	test	r13, r13
	lea	rsi, [rsi]
	je	.label_114
	mov	qword ptr [rsp + 0x30], r13
	bsf	rcx, qword ptr [rsp + 0x30]
	nop	
	shrd	r13, rbx, cl
	mov	rbp, rbp
	shr	rbx, cl
	jmp	.label_116
.label_114:
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rbx
	bsf	rcx, qword ptr [rsp + 8]
	shr	rbx, cl
	add	ecx, 0x40
	lea	rdi, [rdi]
	mov	r13, rbx
	lea	rsi, [rsi]
	xor	ebx, ebx
.label_116:
	mov	qword ptr [r8 + 0x10], 2
	mov	byte ptr [r8 + 0xe0], cl
	mov	byte ptr [r8 + 0xfa], 1
.label_109:
	nop	
	xor	esi, esi
	lea	rdi, [rdi]
	mov	r12d, 3
	test	rbx, rbx
	nop	
	je	.label_78
	mov	rsp, rsp
	lea	r9, [r8 + 0xe0]
	lea	rax, [r8 + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rax
	lea	rsi, [rsi]
	mov	r12d, 3
	lea	rdi, [rdi]
	xor	esi, esi
	nop	dword ptr [rax + rax]
.label_125:
	mov	rdi, rsi
	lea	rdi, [rdi]
	shl	rdi, 4
	mov	r11, qword ptr [rdi + primes_dtab]
	lea	rsi, [rsi]
	mov	rcx, r11
	imul	rcx, r13
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], r12
	mov	rsp, rsp
	mov	rax, rcx
	mul	qword ptr [rsp + 0x20]
	cmp	rbx, rdx
	lea	rsi, [rsi]
	jb	.label_89
	mov	rbp, rbp
	mov	r10, qword ptr [rdi + label_95]
	mov	rbp, rbx
	mov	rdi, r13
.label_80:
	mov	r13, rdi
	mov	rbx, rbp
	nop	
	mov	rdi, rcx
	lea	rsi, [rsi]
	sub	rbp, rdx
	mov	rbp, rbp
	imul	rbp, r11
	mov	rsp, rsp
	cmp	rbp, r10
	mov	rsp, rsp
	ja	.label_89
	movzx	r14d, byte ptr [r8 + 0xfa]
	mov	rbp, rbp
	lea	edx, [r14 - 1]
	test	r14, r14
	nop	
	mov	ecx, edx
	je	.label_71
	lea	rax, [r14 - 1]
	nop	dword ptr [rax + rax]
.label_119:
	mov	rsp, rsp
	cmp	qword ptr [r8 + rax*8 + 0x10], r12
	jbe	.label_104
	lea	rcx, [rax - 1]
	nop	
	inc	rax
	cmp	rax, 1
	mov	rax, rcx
	jg	.label_119
	jmp	.label_71
.label_104:
	movsxd	rbx, eax
	cmp	qword ptr [r8 + rbx*8 + 0x10], r12
	mov	ecx, eax
	jne	.label_71
	nop	
	inc	byte ptr [r8 + rbx + 0xe0]
	jmp	.label_77
.label_71:
	cmp	edx, ecx
	jle	.label_82
	mov	rsp, rsp
	lea	eax, [r14 + 3]
	lea	rdi, [rdi]
	sub	eax, ecx
	mov	rsp, rsp
	lea	r15d, [r14 - 2]
	sub	r15d, ecx
	lea	rdi, [rdi]
	test	al, 3
	je	.label_83
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], r8
	lea	rax, [r9 + r14]
	mov	qword ptr [rsp + 0x18], r9
	mov	rdx, qword ptr [rsp + 0x28]
	lea	rdx, [rdx + r14*8]
	lea	rdi, [rdi]
	mov	rbx, r14
	mov	rsp, rsp
	dec	rbx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x38], rbx
	lea	rsi, [rsi]
	lea	r13d, [r14 + 3]
	lea	rsi, [rsi]
	sub	r13d, ecx
	nop	
	and	r13d, 3
	lea	rdi, [rdi]
	neg	r13d
	xor	r9d, r9d
	nop	dword ptr [rax]
.label_103:
	mov	rbp, rbp
	mov	r8, r9
	mov	rbx, qword ptr [rdx + r8*8 - 8]
	mov	qword ptr [rdx + r8*8], rbx
	mov	bl, byte ptr [rax + r8 - 1]
	mov	byte ptr [rax + r8], bl
	nop	
	lea	r9, [r8 - 1]
	cmp	r13d, r9d
	jne	.label_103
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	lea	rdx, [rax + r8 - 1]
	lea	rax, [rdx + 1]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rsp + 0x10]
	nop	
	mov	r9, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	jmp	.label_113
.label_83:
	mov	rax, r14
.label_113:
	lea	rdi, [rdi]
	cmp	r15d, 2
	nop	
	jbe	.label_82
	nop	word ptr [rax + rax]
.label_105:
	nop	
	mov	rbx, qword ptr [r8 + rax*8 + 8]
	nop	
	mov	qword ptr [r8 + rax*8 + 0x10], rbx
	mov	bl, byte ptr [r8 + rax + 0xdf]
	mov	byte ptr [r8 + rax + 0xe0], bl
	mov	rbp, rbp
	mov	rbx, qword ptr [r8 + rax*8]
	mov	rsp, rsp
	mov	qword ptr [r8 + rax*8 + 8], rbx
	nop	
	mov	bl, byte ptr [r8 + rax + 0xde]
	mov	byte ptr [r8 + rax + 0xdf], bl
	mov	rbx, qword ptr [r8 + rax*8 - 8]
	nop	
	mov	qword ptr [r8 + rax*8], rbx
	nop	
	mov	bl, byte ptr [r8 + rax + 0xdd]
	mov	byte ptr [r8 + rax + 0xde], bl
	lea	rdi, [rdi]
	mov	rbx, qword ptr [r8 + rax*8 - 0x10]
	mov	qword ptr [r8 + rax*8 - 8], rbx
	mov	bl, byte ptr [r8 + rax + 0xdc]
	lea	rsi, [rsi]
	mov	byte ptr [r8 + rax + 0xdd], bl
	mov	rsp, rsp
	lea	rax, [rax - 4]
	mov	rsp, rsp
	add	edx, -4
	cmp	edx, ecx
	lea	rdi, [rdi]
	jg	.label_105
.label_82:
	movsxd	rax, ecx
	mov	qword ptr [r8 + rax*8 + 0x18], r12
	mov	rbp, rbp
	mov	byte ptr [r8 + rax + 0xe1], 1
	mov	rsp, rsp
	inc	r14b
	mov	byte ptr [r8 + 0xfa], r14b
.label_77:
	mov	rbp, rbp
	mov	rcx, rdi
	mov	rbp, rbp
	imul	rcx, r11
	lea	rsi, [rsi]
	mov	qword ptr [rsp], r12
	mov	rax, rcx
	mul	qword ptr [rsp]
	nop	
	cmp	rbp, rdx
	lea	rsi, [rsi]
	mov	rbx, rbp
	mov	r13, rdi
	jae	.label_80
	nop	
.label_89:
	movzx	eax, byte ptr [rsi + label_120]
	inc	rsi
	nop	
	add	r12, rax
	cmp	rsi, 0x29b
	ja	.label_121
	test	rbx, rbx
	jne	.label_125
.label_121:
	cmp	esi, 0x29b
	mov	rbp, rbp
	ja	.label_69
	jmp	.label_72
.label_78:
	xor	ebx, ebx
.label_72:
	mov	qword ptr [rsp + 0x18], rbx
	mov	rbp, rbp
	lea	rax, [r8 + 0xe0]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], rax
	mov	rbp, rbp
	lea	rax, [r8 + 0x10]
	mov	qword ptr [rsp + 0x40], rax
	lea	rdi, [rdi]
	jmp	.label_74
.label_108:
	nop	
	lea	eax, [rdx + 1]
	mov	dword ptr [rsp + 0x10], eax
.label_99:
	mov	qword ptr [rsp + 0x28], rdx
	lea	rsi, [rsi]
	mov	ecx, 1
	lea	rsi, [rsi]
	mov	rdi, r8
	mov	rsi, r12
	mov	edx, dword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	r13, r8
	nop	
	call	factor_insert_refind
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x28]
	mov	r8, r13
	mov	r13, r15
	imul	r15, r14
	lea	rsi, [rsi]
	cmp	r15, rbx
	mov	rsp, rsp
	ja	.label_92
	jmp	.label_99
.label_70:
	nop	
	lea	eax, [rdx + 1]
	mov	dword ptr [rsp + 0x10], eax
.label_122:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], rdx
	mov	ecx, 2
	nop	
	mov	rdi, r8
	lea	rsi, [rsi]
	mov	rsi, r12
	mov	rsp, rsp
	mov	edx, dword ptr [rsp + 0x10]
	mov	r13, r8
	call	factor_insert_refind
	mov	rdx, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	mov	r8, r13
	mov	r13, rbx
	mov	rbp, rbp
	imul	rbx, r15
	mov	rbp, rbp
	cmp	rbx, r14
	lea	rsi, [rsi]
	ja	.label_110
	lea	rsi, [rsi]
	jmp	.label_122
.label_126:
	nop	
	lea	eax, [rdx + 1]
	nop	
	mov	dword ptr [rsp + 0x10], eax
.label_85:
	nop	
	mov	qword ptr [rsp + 0x28], rdx
	mov	ecx, 3
	mov	rdi, r8
	lea	rsi, [rsi]
	mov	rsi, r12
	mov	edx, dword ptr [rsp + 0x10]
	mov	r13, r8
	mov	rsp, rsp
	call	factor_insert_refind
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x28]
	nop	
	mov	r8, r13
	mov	r13, rbx
	imul	rbx, r15
	mov	rbp, rbp
	cmp	rbx, r14
	lea	rdi, [rdi]
	ja	.label_93
	jmp	.label_85
.label_75:
	nop	
	lea	eax, [rdx + 1]
	mov	dword ptr [rsp + 0x10], eax
.label_98:
	mov	qword ptr [rsp + 0x28], rdx
	mov	ecx, 4
	lea	rsi, [rsi]
	mov	rdi, r8
	nop	
	mov	rsi, r12
	mov	rsp, rsp
	mov	edx, dword ptr [rsp + 0x10]
	mov	r13, r8
	nop	
	call	factor_insert_refind
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rbp, rbp
	mov	r8, r13
	mov	r13, rbx
	imul	rbx, r15
	cmp	rbx, r14
	ja	.label_90
	jmp	.label_98
.label_117:
	lea	eax, [rdx + 1]
	mov	dword ptr [rsp + 0x10], eax
.label_115:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x28], rdx
	mov	ecx, 5
	mov	rdi, r8
	mov	rsi, r12
	mov	rsp, rsp
	mov	edx, dword ptr [rsp + 0x10]
	mov	r13, r8
	call	factor_insert_refind
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x28]
	mov	r8, r13
	mov	r13, rbx
	lea	rsi, [rsi]
	imul	rbx, r15
	mov	rbp, rbp
	cmp	rbx, r14
	mov	rsp, rsp
	ja	.label_106
	jmp	.label_115
.label_88:
	lea	rdi, [rdi]
	lea	eax, [rdx + 1]
	mov	dword ptr [rsp + 0x10], eax
.label_100:
	mov	qword ptr [rsp + 0x28], rdx
	nop	
	mov	ecx, 6
	mov	rdi, r8
	lea	rsi, [rsi]
	mov	rsi, r12
	mov	edx, dword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	mov	r13, r8
	call	factor_insert_refind
	mov	rdx, qword ptr [rsp + 0x28]
	mov	r8, r13
	nop	
	mov	r13, rbx
	imul	rbx, r15
	nop	
	cmp	rbx, r14
	ja	.label_128
	jmp	.label_100
.label_97:
	mov	rsp, rsp
	lea	eax, [rdx + 1]
	mov	dword ptr [rsp + 0x10], eax
.label_91:
	mov	qword ptr [rsp + 0x28], rdx
	nop	
	mov	r13, rbx
	mov	rsp, rsp
	mov	ecx, 7
	mov	rdi, r8
	mov	rbp, rbp
	mov	rsi, r12
	mov	rsp, rsp
	mov	edx, dword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	mov	r14, r8
	call	factor_insert_refind
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x28]
	mov	r8, r14
	imul	rbx, r15
	mov	rsp, rsp
	cmp	rbx, rbp
	ja	.label_79
	lea	rdi, [rdi]
	jmp	.label_91
.label_74:
	mov	edx, esi
	mov	rsp, rsp
	mov	rax, rdx
	nop	
	shl	rax, 4
	lea	rbp, qword ptr [rax + primes_dtab]
	mov	rsp, rsp
	mov	r11, qword ptr [rax + primes_dtab]
	lea	rsi, [rsi]
	mov	rcx, r11
	imul	rcx, r13
	mov	r14, qword ptr [rax + label_95]
	mov	rbp, rbp
	jmp	.label_96
.label_81:
	lea	rdi, [rdi]
	mov	r13, rcx
	mov	rsp, rsp
	imul	rcx, r11
	nop	word ptr cs:[rax + rax]
.label_96:
	cmp	rcx, r14
	ja	.label_111
	movzx	r9d, byte ptr [r8 + 0xfa]
	mov	rsp, rsp
	lea	edi, [r9 - 1]
	lea	rsi, [rsi]
	test	r9, r9
	nop	
	mov	ebx, edi
	mov	rbp, rbp
	je	.label_73
	lea	rax, [r9 - 1]
	nop	word ptr [rax + rax]
.label_127:
	nop	
	cmp	qword ptr [r8 + rax*8 + 0x10], r12
	lea	rdi, [rdi]
	jbe	.label_124
	lea	rsi, [rsi]
	lea	rbx, [rax - 1]
	lea	rdi, [rdi]
	inc	rax
	nop	
	cmp	rax, 1
	mov	rax, rbx
	jg	.label_127
	jmp	.label_73
.label_124:
	lea	rsi, [rsi]
	movsxd	rsi, eax
	cmp	qword ptr [r8 + rsi*8 + 0x10], r12
	mov	ebx, eax
	jne	.label_73
	inc	byte ptr [r8 + rsi + 0xe0]
	mov	rbp, rbp
	jmp	.label_81
.label_73:
	mov	rsp, rsp
	cmp	edi, ebx
	jle	.label_84
	nop	
	mov	r13, r8
	lea	rdi, [rdi]
	lea	eax, [r9 + 3]
	sub	eax, ebx
	lea	r8d, [r9 - 2]
	sub	r8d, ebx
	test	al, 3
	je	.label_86
	nop	
	mov	qword ptr [rsp + 0x28], rdx
	mov	rax, qword ptr [rsp + 0x38]
	nop	
	lea	rsi, [rax + r9]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x40]
	lea	rdi, [rax + r9*8]
	mov	rbp, rbp
	mov	r10, r9
	mov	rbp, rbp
	dec	r10
	lea	rdi, [rdi]
	lea	r15d, [r9 + 3]
	mov	rsp, rsp
	sub	r15d, ebx
	and	r15d, 3
	lea	rdi, [rdi]
	neg	r15d
	xor	eax, eax
	nop	dword ptr [rax + rax]
.label_112:
	mov	rbp, rbp
	mov	rdx, rax
	mov	rax, qword ptr [rdi + rdx*8 - 8]
	mov	qword ptr [rdi + rdx*8], rax
	mov	al, byte ptr [rsi + rdx - 1]
	mov	rsp, rsp
	mov	byte ptr [rsi + rdx], al
	lea	rax, [rdx - 1]
	cmp	r15d, eax
	mov	rbp, rbp
	jne	.label_112
	lea	rdi, [r10 + rdx - 1]
	lea	rsi, [rdi + 1]
	mov	rdx, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	jmp	.label_102
.label_86:
	mov	rsi, r9
.label_102:
	nop	
	cmp	r8d, 2
	mov	r8, r13
	nop	
	jbe	.label_84
	nop	word ptr [rax + rax]
.label_123:
	mov	rax, qword ptr [r8 + rsi*8 + 8]
	mov	qword ptr [r8 + rsi*8 + 0x10], rax
	mov	al, byte ptr [r8 + rsi + 0xdf]
	mov	rsp, rsp
	mov	byte ptr [r8 + rsi + 0xe0], al
	mov	rax, qword ptr [r8 + rsi*8]
	mov	qword ptr [r8 + rsi*8 + 8], rax
	nop	
	mov	al, byte ptr [r8 + rsi + 0xde]
	mov	byte ptr [r8 + rsi + 0xdf], al
	mov	rax, qword ptr [r8 + rsi*8 - 8]
	mov	qword ptr [r8 + rsi*8], rax
	lea	rdi, [rdi]
	mov	al, byte ptr [r8 + rsi + 0xdd]
	mov	rsp, rsp
	mov	byte ptr [r8 + rsi + 0xde], al
	lea	rsi, [rsi]
	mov	rax, qword ptr [r8 + rsi*8 - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [r8 + rsi*8 - 8], rax
	lea	rdi, [rdi]
	mov	al, byte ptr [r8 + rsi + 0xdc]
	lea	rsi, [rsi]
	mov	byte ptr [r8 + rsi + 0xdd], al
	lea	rsi, [rsi - 4]
	lea	rdi, [rdi]
	add	edi, -4
	cmp	edi, ebx
	lea	rdi, [rdi]
	jg	.label_123
.label_84:
	lea	rdi, [rdi]
	movsxd	rax, ebx
	lea	rdi, [rdi]
	mov	qword ptr [r8 + rax*8 + 0x18], r12
	mov	byte ptr [r8 + rax + 0xe1], 1
	inc	r9b
	mov	byte ptr [r8 + 0xfa], r9b
	mov	rbp, rbp
	jmp	.label_81
	nop	word ptr [rax + rax]
.label_111:
	mov	rbp, rbp
	mov	r14, qword ptr [rbp + 0x10]
	mov	rbp, rbp
	mov	rbx, qword ptr [rbp + 0x18]
	mov	r15, r14
	mov	rsp, rsp
	imul	r15, r13
	mov	rbp, rbp
	cmp	r15, rbx
	mov	rbp, rbp
	jbe	.label_108
.label_92:
	mov	r15, qword ptr [rbp + 0x20]
	mov	r14, qword ptr [rbp + 0x28]
	mov	rbx, r15
	mov	rsp, rsp
	imul	rbx, r13
	lea	rsi, [rsi]
	cmp	rbx, r14
	lea	rdi, [rdi]
	jbe	.label_70
.label_110:
	mov	r15, qword ptr [rbp + 0x30]
	mov	r14, qword ptr [rbp + 0x38]
	mov	rsp, rsp
	mov	rbx, r15
	lea	rsi, [rsi]
	imul	rbx, r13
	nop	
	cmp	rbx, r14
	jbe	.label_126
.label_93:
	nop	
	mov	r15, qword ptr [rbp + 0x40]
	mov	rsp, rsp
	mov	r14, qword ptr [rbp + 0x48]
	mov	rbx, r15
	imul	rbx, r13
	cmp	rbx, r14
	jbe	.label_75
.label_90:
	lea	rdi, [rdi]
	mov	r15, qword ptr [rbp + 0x50]
	mov	r14, qword ptr [rbp + 0x58]
	mov	rbx, r15
	imul	rbx, r13
	lea	rdi, [rdi]
	cmp	rbx, r14
	jbe	.label_117
.label_106:
	mov	rsp, rsp
	mov	r15, qword ptr [rbp + 0x60]
	nop	
	mov	r14, qword ptr [rbp + 0x68]
	mov	rbx, r15
	lea	rdi, [rdi]
	imul	rbx, r13
	lea	rdi, [rdi]
	cmp	rbx, r14
	nop	
	jbe	.label_88
.label_128:
	mov	rsp, rsp
	mov	r15, qword ptr [rbp + 0x70]
	mov	rbp, qword ptr [rbp + 0x78]
	mov	rsp, rsp
	mov	rbx, r15
	mov	rbp, rbp
	imul	rbx, r13
	lea	rsi, [rsi]
	cmp	rbx, rbp
	mov	rsp, rsp
	jbe	.label_97
.label_79:
	movzx	eax, byte ptr [rdx + primes_diff8]
	lea	rsi, [rsi]
	lea	esi, [rdx + 8]
	lea	rsi, [rsi]
	cmp	esi, 0x29b
	lea	rsi, [rsi]
	ja	.label_101
	lea	rdi, [rdi]
	add	r12, rax
	mov	rax, r12
	imul	rax, rax
	lea	rsi, [rsi]
	cmp	rax, r13
	lea	rdi, [rdi]
	jbe	.label_74
.label_101:
	mov	rbx, qword ptr [rsp + 0x18]
.label_69:
	test	rbx, rbx
	jne	.label_118
	nop	
	cmp	r13, 2
	jae	.label_118
.label_107:
	add	rsp, 0x48
	mov	rsp, rsp
	pop	rbx
	mov	rsp, rsp
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_118:
	lea	rsi, [rsi]
	mov	rbp, r8
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, r13
	call	prime2_p
	test	al, al
	mov	rsp, rsp
	je	.label_76
	lea	rsi, [rsi]
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rsi, rbx
	mov	rdx, r13
	add	rsp, 0x48
	lea	rdi, [rdi]
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	nop	
	pop	rbp
	jmp	factor_insert_large
.label_76:
	test	rbx, rbx
	lea	rdi, [rdi]
	mov	rcx, rbp
	nop	
	je	.label_87
	mov	edx, 1
	lea	rsi, [rsi]
	mov	rdi, rbx
	nop	
	mov	rsi, r13
	lea	rsi, [rsi]
	add	rsp, 0x48
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	nop	
	pop	r13
	nop	
	pop	r14
	pop	r15
	pop	rbp
	mov	rsp, rsp
	jmp	factor_using_pollard_rho2
.label_87:
	mov	rsp, rsp
	mov	esi, 1
	mov	rdi, r13
	lea	rsi, [rsi]
	mov	rdx, rcx
	mov	rbp, rbp
	add	rsp, 0x48
	mov	rsp, rsp
	pop	rbx
	mov	rsp, rsp
	pop	r12
	nop	
	pop	r13
	nop	
	pop	r14
	pop	r15
	nop	
	pop	rbp
	jmp	factor_using_pollard_rho
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403bc0

	.globl prime2_p
	.type prime2_p, @function
prime2_p:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x218
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	rbp, rbp
	mov	rbx, rdi
	nop	
	test	rbx, rbx
	je	.label_141
	lea	rsi, [rsi]
	cmp	r14, 1
	nop	
	mov	rbp, rbx
	sbb	rbp, 0
	mov	r15, r14
	dec	r15
	je	.label_145
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x90], r15
	bsf	rcx, qword ptr [rsp + 0x90]
	mov	dword ptr [rsp + 0x4c], ecx
	mov	rax, r15
	shrd	rax, rbp, cl
	lea	rsi, [rsi]
	mov	rdx, rbp
	shr	rdx, cl
	mov	rbp, rbp
	jmp	.label_129
.label_141:
	lea	rdi, [rdi]
	mov	rdi, r14
	lea	rsi, [rsi]
	call	prime_p
	jmp	.label_140
.label_145:
	mov	qword ptr [rsp + 0x40], rbp
	bsf	rcx, qword ptr [rsp + 0x40]
	mov	rax, rbp
	nop	
	shr	rax, cl
	add	ecx, 0x40
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x4c], ecx
	xor	edx, edx
.label_129:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xa0], rax
	mov	qword ptr [rsp + 0xa8], rdx
	lea	rsi, [rsi]
	mov	rax, r14
	shr	rax, 1
	lea	rdi, [rdi]
	and	eax, 0x7f
	nop	
	movzx	ecx, byte ptr [rax + binvert_table]
	mov	rbp, rbp
	mov	rdx, rcx
	nop	
	imul	rdx, r14
	nop	
	mov	eax, 2
	mov	esi, 2
	mov	rbp, rbp
	sub	rsi, rdx
	nop	
	imul	rsi, rcx
	mov	rcx, rsi
	lea	rdi, [rdi]
	imul	rcx, r14
	lea	rsi, [rsi]
	mov	edx, 2
	sub	rdx, rcx
	imul	rdx, rsi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x1f8], rdx
	lea	rdi, [rdi]
	mov	rcx, rdx
	imul	rcx, r14
	sub	rax, rcx
	cmp	rbx, 1
	seta	cl
	movzx	r13d, cl
	mov	edx, 0x3f
	mov	ecx, 0x7f
	lea	rsi, [rsi]
	cmova	rcx, rdx
	mov	r12, r13
	lea	rdi, [rdi]
	xor	r12, 1
	lea	rsi, [rsi]
	not	rcx
	nop	word ptr cs:[rax + rax]
.label_146:
	lea	rdi, [rdi]
	shld	r13, r12, 1
	nop	
	add	r12, r12
	lea	rdi, [rdi]
	cmp	r13, rbx
	ja	.label_135
	lea	rsi, [rsi]
	cmp	r12, r14
	nop	
	jb	.label_138
	cmp	r13, rbx
	lea	rdi, [rdi]
	jne	.label_138
.label_135:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x1e8], rbx
	mov	qword ptr [rsp + 8], r14
	sub	r12, qword ptr [rsp + 8]
	sbb	r13, qword ptr [rsp + 0x1e8]
.label_138:
	inc	rcx
	nop	
	jne	.label_146
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x1f8]
	lea	rsi, [rsi]
	imul	rcx, rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x1f8], rcx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x38], r13
	mov	qword ptr [rsp + 0x30], r12
	mov	qword ptr [rsp + 0x68], r13
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x80], r12
	mov	rax, r13
	mov	rsp, rsp
	mov	rcx, r12
	add	rcx, qword ptr [rsp + 0x80]
	adc	rax, qword ptr [rsp + 0x68]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x58], rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x50], rcx
	cmp	rax, rbx
	lea	rdi, [rdi]
	ja	.label_144
	jne	.label_143
	mov	rsp, rsp
	cmp	rcx, r14
	lea	rsi, [rsi]
	jb	.label_143
.label_144:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x1f0], rbx
	nop	
	mov	qword ptr [rsp + 0x1c8], r14
	sub	rcx, qword ptr [rsp + 0x1c8]
	sbb	rax, qword ptr [rsp + 0x1f0]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x58], rax
	mov	qword ptr [rsp + 0x50], rcx
.label_143:
	mov	qword ptr [rsp + 0x1b0], r14
	nop	
	mov	qword ptr [rsp + 0x1b8], rbx
	mov	rbp, rbp
	lea	rdi, [rsp + 0x1b0]
	lea	rsi, [rsi]
	lea	rdx, [rsp + 0x50]
	lea	rcx, [rsp + 0xa0]
	lea	r9, [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x1f8]
	mov	r8d, dword ptr [rsp + 0x4c]
	call	millerrabin2
	test	al, al
	mov	rsp, rsp
	je	.label_142
	lea	rdx, [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	rdi, rbp
	lea	rsi, [rsi]
	mov	rsi, r15
	call	factor
	lea	rsi, [rsi]
	mov	rax, rbp
	shld	rax, r15, 0x3f
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x210], rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x98], r15
	mov	rax, rbp
	mov	qword ptr [rsp + 0x28], rbp
	mov	rsp, rsp
	shr	rax, 1
	mov	qword ptr [rsp + 0x78], rax
	mov	ecx, 2
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	nop	word ptr cs:[rax + rax]
.label_150:
	lea	rdi, [rdi]
	mov	r15b, 1
	cmp	qword ptr [rsp + 0xb8], 0
	lea	rdi, [rdi]
	je	.label_136
	mov	qword ptr [rsp + 0x70], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, rax
	shr	rcx, 1
	nop	
	and	ecx, 0x7f
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rcx + binvert_table]
	lea	rdi, [rdi]
	mov	rdx, rcx
	lea	rsi, [rsi]
	imul	rdx, rax
	mov	rbp, rbp
	mov	esi, 2
	sub	rsi, rdx
	lea	rsi, [rsi]
	imul	rsi, rcx
	mov	rcx, rsi
	imul	rcx, rax
	mov	rbp, rbp
	mov	edx, 2
	mov	rbp, rbp
	sub	rdx, rcx
	imul	rdx, rsi
	imul	rax, rdx
	mov	ecx, 2
	lea	rdi, [rdi]
	sub	rcx, rax
	imul	rcx, rdx
	lea	rsi, [rsi]
	imul	rcx, qword ptr [rsp + 0x98]
	mov	qword ptr [rsp + 0x200], rcx
	mov	qword ptr [rsp + 0x208], 0
	lea	rdi, [rsp + 0x1d8]
	lea	rsi, [rsp + 0x50]
	lea	rdx, [rsp + 0x200]
	mov	rsp, rsp
	lea	rcx, [rsp + 0x1b0]
	mov	r8, qword ptr [rsp + 0x1f8]
	lea	r9, [rsp + 0x30]
	mov	rbp, rbp
	call	powm2
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x1d0], rax
	cmp	rax, r12
	jne	.label_133
	cmp	qword ptr [rsp + 0x1d8], r13
	setne	r15b
	mov	rbp, rbp
	jmp	.label_133
	nop	dword ptr [rax]
.label_136:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x70], rcx
.label_133:
	test	r15b, r15b
	mov	rbp, rbp
	je	.label_139
	mov	rbp, rbp
	mov	al, byte ptr [rsp + 0x1aa]
	mov	rsp, rsp
	xor	ebp, ebp
	mov	rbp, rbp
	test	al, al
	lea	rsi, [rsi]
	je	.label_139
	nop	word ptr cs:[rax + rax]
.label_149:
	mov	rbp, rbp
	mov	eax, ebp
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + rax*8 + 0xc0]
	cmp	rax, 2
	jne	.label_137
	mov	rax, qword ptr [rsp + 0x210]
	mov	qword ptr [rsp + 0x200], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x78]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x208], rax
	mov	rsp, rsp
	jmp	.label_131
	nop	word ptr cs:[rax + rax]
.label_137:
	mov	rcx, rax
	shr	rcx, 1
	and	ecx, 0x7f
	nop	
	movzx	ecx, byte ptr [rcx + binvert_table]
	mov	rdx, rcx
	imul	rdx, rax
	lea	rdi, [rdi]
	mov	esi, 2
	sub	rsi, rdx
	imul	rsi, rcx
	mov	rbp, rbp
	mov	rcx, rsi
	mov	rbp, rbp
	imul	rcx, rax
	mov	edx, 2
	sub	rdx, rcx
	imul	rdx, rsi
	lea	rsi, [rsi]
	mov	rcx, rdx
	lea	rsi, [rsi]
	imul	rcx, rax
	mov	esi, 2
	mov	rsp, rsp
	sub	rsi, rcx
	nop	
	imul	rsi, rdx
	mov	rcx, rsi
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x98]
	imul	rcx, rdx
	mov	rdi, qword ptr [rsp + 0x28]
	cmp	rdi, rax
	mov	rbp, rbp
	jae	.label_132
	mov	qword ptr [rsp + 0x200], rcx
	mov	qword ptr [rsp + 0x208], 0
	nop	
	jmp	.label_131
	nop	word ptr cs:[rax + rax]
.label_132:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], rax
	lea	rsi, [rsi]
	mov	rax, rcx
	mul	qword ptr [rsp + 0x20]
	mov	rbp, rbp
	mov	rax, rdi
	sub	rax, rdx
	imul	rax, rsi
	mov	qword ptr [rsp + 0x208], rax
	mov	qword ptr [rsp + 0x200], rcx
.label_131:
	lea	rdi, [rsp + 0x1d8]
	lea	rsi, [rsi]
	lea	rsi, [rsp + 0x50]
	mov	rbp, rbp
	lea	rdx, [rsp + 0x200]
	lea	rcx, [rsp + 0x1b0]
	mov	r8, qword ptr [rsp + 0x1f8]
	lea	r9, [rsp + 0x30]
	lea	rsi, [rsi]
	call	powm2
	mov	qword ptr [rsp + 0x1d0], rax
	cmp	qword ptr [rsp + 0x1d8], r13
	setne	cl
	mov	rbp, rbp
	cmp	rax, r12
	setne	r15b
	or	r15b, cl
	mov	rsp, rsp
	movzx	eax, r15b
	cmp	eax, 1
	lea	rsi, [rsi]
	jne	.label_139
	mov	rbp, rbp
	inc	ebp
	movzx	eax, byte ptr [rsp + 0x1aa]
	cmp	ebp, eax
	jb	.label_149
.label_139:
	mov	al, 1
	nop	
	test	r15b, r15b
	lea	rsi, [rsi]
	jne	.label_140
	mov	rbp, qword ptr [rsp + 0x10]
	nop	
	movzx	eax, byte ptr [rbp + primes_diff]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x70]
	mov	rbp, rbp
	add	rdx, rax
	lea	rsi, [rsi]
	cmp	rdx, rbx
	mov	rax, rdx
	nop	
	mov	ecx, 0
	cmovb	rax, rcx
	lea	rdi, [rdi]
	mov	ecx, 0
	cmovb	rcx, rdx
	lea	rdi, [rdi]
	mov	r15, rdx
	mov	edx, 0x7f
	mov	esi, 0x3f
	cmovb	rdx, rsi
	not	rdx
	nop	dword ptr [rax]
.label_134:
	shld	rcx, rax, 1
	add	rax, rax
	mov	rsp, rsp
	cmp	rcx, rbx
	lea	rsi, [rsi]
	ja	.label_147
	lea	rsi, [rsi]
	cmp	rax, r14
	mov	rsp, rsp
	jb	.label_130
	cmp	rcx, rbx
	jne	.label_130
.label_147:
	mov	qword ptr [rsp + 0x88], rbx
	mov	qword ptr [rsp + 0x18], r14
	sub	rax, qword ptr [rsp + 0x18]
	sbb	rcx, qword ptr [rsp + 0x88]
.label_130:
	mov	rbp, rbp
	inc	rdx
	jne	.label_134
	mov	qword ptr [rsp + 0x58], rcx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x50], rax
	mov	rbp, rbp
	lea	rdi, [rsp + 0x1b0]
	mov	rsi, qword ptr [rsp + 0x1f8]
	lea	rdx, [rsp + 0x50]
	lea	rsi, [rsi]
	lea	rcx, [rsp + 0xa0]
	nop	
	mov	r8d, dword ptr [rsp + 0x4c]
	lea	r9, [rsp + 0x30]
	call	millerrabin2
	test	al, al
	nop	
	je	.label_148
	inc	rbp
	mov	qword ptr [rsp + 0x10], rbp
	cmp	rbp, 0x29c
	mov	rsp, rsp
	mov	rcx, r15
	mov	rbp, rbp
	jb	.label_150
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.43
	mov	rbp, rbp
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	nop	
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	lea	rsi, [rsi]
	call	error
	mov	rsp, rsp
	call	abort
.label_142:
	nop	
	xor	eax, eax
	nop	
	jmp	.label_140
.label_148:
	xor	eax, eax
.label_140:
	add	rsp, 0x218
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rbp, rbp
	pop	r14
	mov	rsp, rsp
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404300

	.globl factor_insert_large
	.type factor_insert_large, @function
factor_insert_large:
	lea	rsi, [rsi]
	push	r14
	mov	rsp, rsp
	push	rbx
	push	rax
	test	rsi, rsi
	je	.label_151
	lea	rsi, [rsi]
	cmp	qword ptr [rdi + 8], 0
	mov	rbp, rbp
	jne	.label_156
	mov	rbp, rbp
	mov	qword ptr [rdi], rdx
	mov	rbp, rbp
	mov	qword ptr [rdi + 8], rsi
	jmp	.label_155
.label_151:
	nop	
	movzx	r9d, byte ptr [rdi + 0xfa]
	lea	rdi, [rdi]
	lea	esi, [r9 - 1]
	mov	rsp, rsp
	test	r9, r9
	lea	rdi, [rdi]
	mov	ecx, esi
	je	.label_153
	lea	rax, [r9 - 1]
	nop	word ptr cs:[rax + rax]
.label_159:
	cmp	qword ptr [rdi + rax*8 + 0x10], rdx
	nop	
	jbe	.label_157
	lea	rcx, [rax - 1]
	lea	rdi, [rdi]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, 1
	mov	rax, rcx
	mov	rsp, rsp
	jg	.label_159
	lea	rsi, [rsi]
	jmp	.label_153
.label_157:
	movsxd	rbx, eax
	mov	rsp, rsp
	cmp	qword ptr [rdi + rbx*8 + 0x10], rdx
	lea	rdi, [rdi]
	mov	ecx, eax
	jne	.label_153
	inc	byte ptr [rdi + rbx + 0xe0]
	mov	rbp, rbp
	jmp	.label_155
.label_153:
	cmp	esi, ecx
	lea	rdi, [rdi]
	jle	.label_158
	lea	eax, [r9 + 3]
	lea	rsi, [rsi]
	sub	eax, ecx
	lea	r8d, [r9 - 2]
	lea	rdi, [rdi]
	sub	r8d, ecx
	test	al, 3
	je	.label_161
	lea	r14, [rdi + r9 + 0xe0]
	mov	rsp, rsp
	lea	rsi, [rdi + r9*8 + 0x10]
	mov	r10, r9
	nop	
	dec	r10
	lea	rsi, [rsi]
	lea	r11d, [r9 + 3]
	mov	rbp, rbp
	sub	r11d, ecx
	lea	rsi, [rsi]
	and	r11d, 3
	neg	r11d
	nop	
	xor	eax, eax
	nop	word ptr [rax + rax]
.label_152:
	nop	
	mov	rbx, rax
	mov	rax, qword ptr [rsi + rbx*8 - 8]
	nop	
	mov	qword ptr [rsi + rbx*8], rax
	nop	
	mov	al, byte ptr [r14 + rbx - 1]
	nop	
	mov	byte ptr [r14 + rbx], al
	lea	rdi, [rdi]
	lea	rax, [rbx - 1]
	nop	
	cmp	r11d, eax
	nop	
	jne	.label_152
	lea	rsi, [r10 + rbx - 1]
	lea	rax, [rsi + 1]
	jmp	.label_160
.label_161:
	lea	rsi, [rsi]
	mov	rax, r9
.label_160:
	lea	rdi, [rdi]
	cmp	r8d, 3
	jb	.label_158
	nop	word ptr cs:[rax + rax]
.label_154:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rdi + rax*8 + 8]
	mov	qword ptr [rdi + rax*8 + 0x10], rbx
	mov	bl, byte ptr [rdi + rax + 0xdf]
	mov	byte ptr [rdi + rax + 0xe0], bl
	mov	rbx, qword ptr [rdi + rax*8]
	mov	rsp, rsp
	mov	qword ptr [rdi + rax*8 + 8], rbx
	mov	bl, byte ptr [rdi + rax + 0xde]
	mov	byte ptr [rdi + rax + 0xdf], bl
	mov	rbx, qword ptr [rdi + rax*8 - 8]
	mov	qword ptr [rdi + rax*8], rbx
	lea	rdi, [rdi]
	mov	bl, byte ptr [rdi + rax + 0xdd]
	mov	byte ptr [rdi + rax + 0xde], bl
	mov	rsp, rsp
	mov	rbx, qword ptr [rdi + rax*8 - 0x10]
	mov	qword ptr [rdi + rax*8 - 8], rbx
	nop	
	mov	bl, byte ptr [rdi + rax + 0xdc]
	mov	byte ptr [rdi + rax + 0xdd], bl
	mov	rbp, rbp
	lea	rax, [rax - 4]
	lea	rsi, [rsi]
	add	esi, -4
	lea	rsi, [rsi]
	cmp	esi, ecx
	jg	.label_154
.label_158:
	movsxd	rax, ecx
	lea	rsi, [rsi]
	mov	qword ptr [rdi + rax*8 + 0x18], rdx
	mov	rsp, rsp
	mov	byte ptr [rdi + rax + 0xe1], 1
	nop	
	inc	r9b
	lea	rdi, [rdi]
	mov	byte ptr [rdi + 0xfa], r9b
.label_155:
	add	rsp, 8
	nop	
	pop	rbx
	mov	rbp, rbp
	pop	r14
	lea	rdi, [rdi]
	ret	
.label_156:
	mov	edi, OFFSET FLAT:.str.49
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.42
	mov	edx, 0x235
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.factor_insert_large
	nop	
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404530

	.globl factor_using_pollard_rho
	.type factor_using_pollard_rho, @function
factor_using_pollard_rho:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	nop	
	sub	rsp, 0x98
	mov	qword ptr [rsp + 8], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x70], rsi
	lea	rsi, [rsi]
	mov	rbx, rdi
	lea	rdi, [rdi]
	cmp	rbx, 2
	mov	rsp, rsp
	jb	.label_181
	lea	rax, [rdx + 0xe0]
	mov	qword ptr [rsp + 0x20], rax
	mov	rbp, rbp
	lea	rax, [rdx + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x60], rax
.label_198:
	mov	eax, 0xffffffc0
	nop	
	xor	r12d, r12d
	nop	
	mov	ecx, 1
	mov	rsp, rsp
	xor	edx, edx
	mov	rsi, rbx
	nop	word ptr [rax + rax]
.label_193:
	lea	rdi, [rdi]
	shrd	rdx, rsi, 1
	shr	rsi, 1
	lea	rdi, [rdi]
	cmp	rcx, rsi
	lea	rdi, [rdi]
	ja	.label_188
	jne	.label_183
	cmp	r12, rdx
	jb	.label_183
.label_188:
	mov	qword ptr [rsp + 0x30], rsi
	nop	
	mov	qword ptr [rsp + 0x28], rdx
	sub	r12, qword ptr [rsp + 0x28]
	sbb	rcx, qword ptr [rsp + 0x30]
.label_183:
	inc	eax
	mov	rsp, rsp
	jne	.label_193
	mov	rax, rbx
	sub	rax, r12
	mov	rsp, rsp
	mov	rbp, r12
	mov	rbp, rbp
	sub	rbp, rax
	lea	rdi, [rdi]
	mov	eax, 0
	mov	rbp, rbp
	cmovb	rax, rbx
	mov	rbp, rbp
	cmp	rbx, 1
	mov	rsp, rsp
	je	.label_163
	add	rbp, rax
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x70]
	lea	rsi, [rsi]
	inc	rax
	mov	qword ptr [rsp + 0x40], rax
	mov	rsp, rsp
	mov	rcx, rbp
	mov	r15, rbp
	mov	r13d, 1
	mov	esi, 1
	nop	word ptr cs:[rax + rax]
.label_173:
	mov	rbp, rbp
	mov	r14, rcx
	nop	
	mov	r10, rbx
	nop	
	sub	r10, qword ptr [rsp + 0x70]
	mov	rsp, rsp
	jbe	.label_187
	lea	rsi, [rsi]
	mov	rax, rbx
	mov	rsp, rsp
	shr	rax, 1
	and	eax, 0x7f
	movzx	eax, byte ptr [rax + binvert_table]
	lea	rdi, [rdi]
	mov	rcx, rax
	imul	rcx, rbx
	mov	rbp, rbp
	mov	edx, 2
	mov	rbp, rbp
	sub	rdx, rcx
	nop	
	imul	rdx, rax
	mov	rax, rdx
	imul	rax, rbx
	lea	rsi, [rsi]
	mov	ecx, 2
	sub	rcx, rax
	imul	rcx, rdx
	mov	rax, rcx
	imul	rax, rbx
	mov	edi, 2
	lea	rdi, [rdi]
	sub	rdi, rax
	imul	rdi, rcx
	mov	r8d, ebx
	and	r8d, 1
	mov	rsp, rsp
	mov	r9, rsi
	jmp	.label_177
	nop	word ptr [rax + rax]
.label_197:
	mov	rbp, rbp
	mov	r13, r11
	mov	rbp, rbp
	mov	r14, rbp
	mov	rbp, rbp
	mov	rbp, r15
.label_177:
	mov	r11, r9
	mov	r9, r14
	nop	dword ptr [rax + rax]
.label_194:
	mov	qword ptr [rsp + 0x68], rbp
	nop	
	mov	rax, rbp
	mul	qword ptr [rsp + 0x68]
	nop	
	mov	rcx, rdx
	imul	rax, rdi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x80], rbx
	mul	qword ptr [rsp + 0x80]
	mov	rsp, rsp
	sub	rcx, rdx
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rsi, [rsi]
	cmovb	rax, rbx
	nop	
	add	rax, rcx
	sub	rax, r10
	mov	ebp, 0
	nop	
	cmovb	rbp, rbx
	lea	rsi, [rsi]
	add	rbp, rax
	mov	rax, r9
	mov	rsp, rsp
	sub	rax, rbp
	lea	rdi, [rdi]
	mov	ecx, 0
	lea	rdi, [rdi]
	cmovb	rcx, rbx
	mov	rbp, rbp
	add	rcx, rax
	mov	qword ptr [rsp + 0x48], rcx
	mov	rax, r12
	mul	qword ptr [rsp + 0x48]
	mov	rcx, rdx
	imul	rax, rdi
	mov	qword ptr [rsp + 0x18], rbx
	mul	qword ptr [rsp + 0x18]
	sub	rcx, rdx
	mov	r12d, 0
	cmovb	r12, rbx
	mov	rbp, rbp
	add	r12, rcx
	lea	rdi, [rdi]
	mov	eax, r13d
	mov	rsp, rsp
	and	eax, 0x1f
	cmp	rax, 1
	lea	rsi, [rsi]
	jne	.label_201
	test	r8, r8
	mov	rsp, rsp
	mov	rax, rbx
	lea	rsi, [rsi]
	cmove	rax, r12
	mov	rcx, r12
	mov	rsp, rsp
	cmove	rcx, rbx
	test	rcx, rcx
	nop	
	je	.label_179
	shr	rax, 1
	jmp	.label_162
.label_170:
	mov	rbp, rbp
	mov	rdx, rcx
	sar	rdx, 0x3f
	mov	rsi, rdx
	and	rsi, rcx
	lea	rsi, [rsi]
	add	rax, rsi
	xor	rcx, rdx
	lea	rsi, [rsi]
	sub	rcx, rdx
	nop	word ptr cs:[rax + rax]
.label_162:
	lea	rdi, [rdi]
	mov	rdx, rcx
	lea	rsi, [rsi]
	shr	rcx, 1
	mov	rbp, rbp
	test	dl, 1
	lea	rsi, [rsi]
	je	.label_162
	mov	rsp, rsp
	sub	rcx, rax
	lea	rsi, [rsi]
	jne	.label_170
	lea	rdi, [rdi]
	or	rdx, 1
	mov	rax, rdx
.label_179:
	mov	rbp, rbp
	cmp	rax, 1
	mov	rax, rbp
	lea	rsi, [rsi]
	je	.label_178
	lea	rsi, [rsi]
	jmp	.label_185
	nop	word ptr cs:[rax + rax]
.label_201:
	mov	rax, r15
.label_178:
	mov	rbp, rbp
	dec	r13
	lea	rdi, [rdi]
	mov	r15, rax
	jne	.label_194
	lea	rsi, [rsi]
	lea	r9, [r11 + r11]
	nop	
	test	r11, r11
	mov	r13d, 0
	mov	r15, rbp
	mov	r14, rbp
	mov	rsi, r11
	mov	rsp, rsp
	je	.label_177
	nop	dword ptr [rax + rax]
.label_166:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], r15
	mov	rax, r15
	mul	qword ptr [rsp + 0x10]
	mov	rcx, rdx
	mov	rbp, rbp
	imul	rax, rdi
	nop	
	mov	qword ptr [rsp + 0x38], rbx
	mul	qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	sub	rcx, rdx
	lea	rsi, [rsi]
	mov	eax, 0
	nop	
	cmovb	rax, rbx
	nop	
	add	rax, rcx
	mov	rsp, rsp
	sub	rax, r10
	mov	r15d, 0
	cmovb	r15, rbx
	add	r15, rax
	nop	
	dec	rsi
	nop	
	jne	.label_166
	jmp	.label_197
	nop	dword ptr [rax + rax]
.label_185:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x58], r15
	nop	
	mov	rax, r15
	mul	qword ptr [rsp + 0x58]
	nop	
	mov	rcx, rdx
	lea	rsi, [rsi]
	imul	rax, rdi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x78], rbx
	mul	qword ptr [rsp + 0x78]
	nop	
	sub	rcx, rdx
	mov	eax, 0
	cmovb	rax, rbx
	mov	rsp, rsp
	add	rax, rcx
	mov	rsp, rsp
	sub	rax, r10
	mov	r15d, 0
	cmovb	r15, rbx
	add	r15, rax
	mov	rcx, r9
	sub	rcx, r15
	lea	rdi, [rdi]
	mov	eax, 0
	nop	
	cmovb	rax, rbx
	nop	
	add	rax, rcx
	mov	rbp, rbp
	test	r8, r8
	mov	r14, rbx
	cmove	r14, rax
	cmove	rax, rbx
	mov	rbp, rbp
	test	rax, rax
	je	.label_176
	mov	rsp, rsp
	shr	r14, 1
	jmp	.label_175
.label_180:
	mov	rcx, rax
	sar	rcx, 0x3f
	mov	rdx, rcx
	mov	rsp, rsp
	and	rdx, rax
	add	r14, rdx
	xor	rax, rcx
	lea	rdi, [rdi]
	sub	rax, rcx
	nop	word ptr cs:[rax + rax]
.label_175:
	mov	rcx, rax
	lea	rdi, [rdi]
	shr	rax, 1
	test	cl, 1
	je	.label_175
	lea	rdi, [rdi]
	sub	rax, r14
	mov	rsp, rsp
	jne	.label_180
	nop	
	or	rcx, 1
	mov	rsp, rsp
	mov	r14, rcx
.label_176:
	cmp	r14, 1
	mov	rsp, rsp
	je	.label_185
	mov	rsp, rsp
	cmp	rbx, r14
	lea	rsi, [rsi]
	je	.label_192
	mov	qword ptr [rsp + 0x50], r9
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x88], r11
	xor	edx, edx
	mov	rbp, rbp
	mov	rax, rbx
	nop	
	div	r14
	mov	rbx, rax
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	prime_p
	mov	rsp, rsp
	test	al, al
	mov	rsp, rsp
	je	.label_165
	mov	rcx, qword ptr [rsp + 8]
	movzx	r10d, byte ptr [rcx + 0xfa]
	lea	edx, [r10 - 1]
	lea	rdi, [rdi]
	test	r10, r10
	nop	
	mov	r9d, edx
	je	.label_164
	lea	rsi, [r10 - 1]
	nop	dword ptr [rax + rax]
.label_191:
	mov	rbp, rbp
	cmp	qword ptr [rcx + rsi*8 + 0x10], r14
	lea	rsi, [rsi]
	jbe	.label_195
	mov	rbp, rbp
	lea	r9, [rsi - 1]
	inc	rsi
	lea	rsi, [rsi]
	cmp	rsi, 1
	mov	rsi, r9
	mov	rbp, rbp
	jg	.label_191
	lea	rsi, [rsi]
	jmp	.label_164
	nop	dword ptr [rax + rax]
.label_165:
	lea	rsi, [rsi]
	mov	rdi, r14
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 8]
	call	factor_using_pollard_rho
	nop	
	jmp	.label_182
.label_195:
	nop	
	movsxd	rax, esi
	cmp	qword ptr [rcx + rax*8 + 0x10], r14
	lea	rsi, [rsi]
	mov	r9d, esi
	mov	rsp, rsp
	jne	.label_164
	inc	byte ptr [rcx + rax + 0xe0]
	jmp	.label_182
	nop	
.label_164:
	cmp	edx, r9d
	mov	rsp, rsp
	jle	.label_184
	mov	rbp, rbp
	lea	eax, [r10 + 3]
	mov	rbp, rbp
	sub	eax, r9d
	lea	esi, [r10 - 2]
	sub	esi, r9d
	lea	rdi, [rdi]
	test	al, 3
	je	.label_186
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x94], esi
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x20]
	lea	r8, [rax + r10]
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x60]
	nop	
	lea	rdi, [rax + r10*8]
	mov	rcx, r10
	dec	rcx
	lea	r11d, [r10 + 3]
	mov	rbp, rbp
	sub	r11d, r9d
	and	r11d, 3
	neg	r11d
	nop	
	xor	esi, esi
	nop	dword ptr [rax + rax]
.label_174:
	mov	rax, rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rdi + rax*8 - 8]
	mov	qword ptr [rdi + rax*8], rsi
	mov	dl, byte ptr [r8 + rax - 1]
	mov	byte ptr [r8 + rax], dl
	mov	rbp, rbp
	lea	rsi, [rax - 1]
	mov	rbp, rbp
	cmp	r11d, esi
	jne	.label_174
	lea	rdx, [rcx + rax - 1]
	lea	rdi, [rdx + 1]
	mov	rcx, qword ptr [rsp + 8]
	mov	esi, dword ptr [rsp + 0x94]
	nop	
	jmp	.label_189
.label_186:
	mov	rsp, rsp
	mov	rdi, r10
.label_189:
	cmp	esi, 2
	lea	rdi, [rdi]
	jbe	.label_184
	nop	dword ptr [rax]
.label_171:
	mov	rax, qword ptr [rcx + rdi*8 + 8]
	mov	qword ptr [rcx + rdi*8 + 0x10], rax
	mov	al, byte ptr [rcx + rdi + 0xdf]
	mov	rbp, rbp
	mov	byte ptr [rcx + rdi + 0xe0], al
	mov	rax, qword ptr [rcx + rdi*8]
	nop	
	mov	qword ptr [rcx + rdi*8 + 8], rax
	mov	al, byte ptr [rcx + rdi + 0xde]
	mov	byte ptr [rcx + rdi + 0xdf], al
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + rdi*8 - 8]
	mov	qword ptr [rcx + rdi*8], rax
	mov	al, byte ptr [rcx + rdi + 0xdd]
	mov	byte ptr [rcx + rdi + 0xde], al
	nop	
	mov	rax, qword ptr [rcx + rdi*8 - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + rdi*8 - 8], rax
	mov	al, byte ptr [rcx + rdi + 0xdc]
	mov	byte ptr [rcx + rdi + 0xdd], al
	lea	rdi, [rdi - 4]
	add	edx, -4
	cmp	edx, r9d
	mov	rbp, rbp
	jg	.label_171
.label_184:
	movsxd	rax, r9d
	mov	qword ptr [rcx + rax*8 + 0x18], r14
	mov	byte ptr [rcx + rax + 0xe1], 1
	inc	r10b
	mov	rsp, rsp
	mov	byte ptr [rcx + 0xfa], r10b
.label_182:
	mov	rdi, rbx
	call	prime_p
	mov	rbp, rbp
	test	al, al
	mov	rsp, rsp
	jne	.label_200
	mov	rsp, rsp
	xor	edx, edx
	mov	rax, rbp
	lea	rsi, [rsi]
	div	rbx
	lea	rdi, [rdi]
	mov	rbp, rdx
	xor	edx, edx
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x50]
	mov	rsp, rsp
	div	rbx
	mov	rsp, rsp
	mov	rcx, rdx
	xor	edx, edx
	mov	rbp, rbp
	mov	rax, r15
	div	rbx
	cmp	rbx, 1
	mov	rbp, rbp
	mov	r15, rdx
	nop	
	mov	rsi, qword ptr [rsp + 0x88]
	lea	rdi, [rdi]
	jne	.label_173
	jmp	.label_163
	nop	word ptr cs:[rax + rax]
.label_192:
	cmp	rbx, 1
	mov	rax, qword ptr [rsp + 0x40]
	mov	qword ptr [rsp + 0x70], rax
	ja	.label_198
.label_181:
	mov	edi, OFFSET FLAT:.str.44
	mov	esi, OFFSET FLAT:.str.42
	mov	edx, 0x5c2
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.factor_using_pollard_rho
	nop	
	call	__assert_fail
.label_200:
	mov	rbp, qword ptr [rsp + 8]
	movzx	r10d, byte ptr [rbp + 0xfa]
	lea	edx, [r10 - 1]
	test	r10, r10
	mov	rsp, rsp
	mov	ecx, edx
	je	.label_169
	nop	
	lea	rsi, [r10 - 1]
	nop	
.label_196:
	mov	rsp, rsp
	cmp	qword ptr [rbp + rsi*8 + 0x10], rbx
	lea	rdi, [rdi]
	jbe	.label_190
	lea	rcx, [rsi - 1]
	inc	rsi
	lea	rdi, [rdi]
	cmp	rsi, 1
	mov	rsi, rcx
	jg	.label_196
	jmp	.label_169
.label_190:
	movsxd	rax, esi
	cmp	qword ptr [rbp + rax*8 + 0x10], rbx
	mov	ecx, esi
	jne	.label_169
	inc	byte ptr [rbp + rax + 0xe0]
	jmp	.label_163
.label_169:
	mov	rsp, rsp
	cmp	edx, ecx
	lea	rdi, [rdi]
	jle	.label_172
	lea	eax, [r10 + 3]
	lea	rdi, [rdi]
	sub	eax, ecx
	lea	rdi, [rdi]
	lea	r9d, [r10 - 2]
	sub	r9d, ecx
	mov	rbp, rbp
	test	al, 3
	je	.label_167
	lea	rsi, [rsi]
	lea	rdx, [rbp + r10 + 0xe0]
	nop	
	lea	rdi, [rbp + r10*8 + 0x10]
	lea	rdi, [rdi]
	mov	r8, r10
	dec	r8
	lea	r11d, [r10 + 3]
	sub	r11d, ecx
	nop	
	and	r11d, 3
	neg	r11d
	xor	eax, eax
	nop	dword ptr [rax]
.label_199:
	mov	rsi, rax
	mov	rax, qword ptr [rdi + rsi*8 - 8]
	mov	qword ptr [rdi + rsi*8], rax
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + rsi - 1]
	mov	byte ptr [rdx + rsi], al
	lea	rax, [rsi - 1]
	cmp	r11d, eax
	mov	rsp, rsp
	jne	.label_199
	mov	rbp, rbp
	lea	rdx, [r8 + rsi - 1]
	lea	rdi, [rdx + 1]
	nop	
	jmp	.label_202
.label_167:
	mov	rbp, rbp
	mov	rdi, r10
.label_202:
	nop	
	cmp	r9d, 3
	jb	.label_172
	nop	word ptr cs:[rax + rax]
.label_168:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp + rdi*8 + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp + rdi*8 + 0x10], rax
	mov	al, byte ptr [rbp + rdi + 0xdf]
	mov	byte ptr [rbp + rdi + 0xe0], al
	mov	rax, qword ptr [rbp + rdi*8]
	mov	qword ptr [rbp + rdi*8 + 8], rax
	nop	
	mov	al, byte ptr [rbp + rdi + 0xde]
	nop	
	mov	byte ptr [rbp + rdi + 0xdf], al
	mov	rax, qword ptr [rbp + rdi*8 - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp + rdi*8], rax
	mov	al, byte ptr [rbp + rdi + 0xdd]
	mov	byte ptr [rbp + rdi + 0xde], al
	mov	rax, qword ptr [rbp + rdi*8 - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp + rdi*8 - 8], rax
	mov	al, byte ptr [rbp + rdi + 0xdc]
	mov	byte ptr [rbp + rdi + 0xdd], al
	mov	rbp, rbp
	lea	rdi, [rdi - 4]
	mov	rbp, rbp
	add	edx, -4
	mov	rsp, rsp
	cmp	edx, ecx
	lea	rdi, [rdi]
	jg	.label_168
.label_172:
	mov	rsp, rsp
	movsxd	rax, ecx
	nop	
	mov	qword ptr [rbp + rax*8 + 0x18], rbx
	mov	rbp, rbp
	mov	byte ptr [rbp + rax + 0xe1], 1
	nop	
	inc	r10b
	mov	byte ptr [rbp + 0xfa], r10b
.label_163:
	add	rsp, 0x98
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_187:
	nop	
	mov	edi, OFFSET FLAT:.str.50
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.42
	mov	edx, 0x5c8
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.factor_using_pollard_rho
	mov	rsp, rsp
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404ea0

	.globl factor_using_pollard_rho2
	.type factor_using_pollard_rho2, @function
factor_using_pollard_rho2:
	mov	rsp, rsp
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r13
	nop	
	push	r12
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x1c8
	mov	qword ptr [rsp + 0x60], rdx
	mov	r9, rdi
	mov	rbp, rbp
	cmp	r9, 1
	seta	al
	movzx	edi, al
	nop	
	mov	edx, 0x3f
	mov	eax, 0x7f
	cmova	rax, rdx
	mov	rsp, rsp
	mov	rdx, rdi
	xor	rdi, 1
	lea	rdi, [rdi]
	not	rax
	nop	
.label_221:
	mov	rbp, rbp
	shld	rdx, rdi, 1
	mov	rbp, rbp
	add	rdi, rdi
	cmp	rdx, r9
	ja	.label_269
	cmp	rdi, rsi
	mov	rbp, rbp
	jb	.label_204
	mov	rsp, rsp
	cmp	rdx, r9
	nop	
	jne	.label_204
.label_269:
	mov	qword ptr [rsp + 0x1b0], r9
	mov	qword ptr [rsp + 0x90], rsi
	sub	rdi, qword ptr [rsp + 0x90]
	sbb	rdx, qword ptr [rsp + 0x1b0]
.label_204:
	inc	rax
	lea	rdi, [rdi]
	jne	.label_221
	nop	
	mov	qword ptr [rsp + 0x198], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xe0], rdi
	mov	rax, rdx
	mov	r12, rdi
	add	r12, qword ptr [rsp + 0xe0]
	adc	rax, qword ptr [rsp + 0x198]
	cmp	rax, r9
	nop	
	ja	.label_224
	lea	rdi, [rdi]
	jne	.label_235
	cmp	r12, rsi
	mov	rbp, rbp
	jb	.label_235
.label_224:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x1a0], r9
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x88], rsi
	sub	r12, qword ptr [rsp + 0x88]
	sbb	rax, qword ptr [rsp + 0x1a0]
.label_235:
	nop	
	cmp	rsi, 1
	jne	.label_260
	lea	rsi, [rsi]
	test	r9, r9
	nop	
	je	.label_225
.label_260:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x40], rdx
	mov	rdx, qword ptr [rsp + 0x60]
	nop	
	inc	rdx
	mov	qword ptr [rsp + 0xe8], rdx
	mov	rsp, rsp
	lea	rdx, [rcx + 0xe0]
	mov	qword ptr [rsp + 0x158], rdx
	nop	
	lea	rdx, [rcx + 0x10]
	nop	
	mov	qword ptr [rsp + 0x138], rdx
	mov	qword ptr [rsp + 0x68], rcx
	lea	rdi, [rdi]
	mov	ecx, 1
	mov	qword ptr [rsp + 0x70], rcx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xc8], r12
	mov	rsp, rsp
	mov	r13, r12
	mov	rsp, rsp
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x130], rcx
	mov	r8, rax
	mov	rbp, rax
	jmp	.label_244
	nop	word ptr [rax + rax]
.label_214:
	mov	rax, r15
.label_244:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x128], rdi
	mov	rcx, rsi
	nop	
	shr	rcx, 1
	and	ecx, 0x7f
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rcx + binvert_table]
	mov	rsp, rsp
	mov	rdx, rcx
	imul	rdx, rsi
	mov	edi, 2
	sub	rdi, rdx
	imul	rdi, rcx
	mov	rcx, rdi
	imul	rcx, rsi
	nop	
	mov	edx, 2
	nop	
	sub	rdx, rcx
	lea	rdi, [rdi]
	imul	rdx, rdi
	lea	rdi, [rdi]
	mov	rcx, rdx
	imul	rcx, rsi
	nop	
	mov	rdi, rsi
	mov	esi, 2
	sub	rsi, rcx
	mov	rbp, rbp
	imul	rsi, rdx
	mov	qword ptr [rsp + 0x190], rsi
	mov	rsi, rbp
	mov	r15, rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x130]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x98], rax
	nop	
	jmp	.label_215
	nop	word ptr cs:[rax + rax]
.label_219:
	mov	r8, r15
	nop	
	mov	r15, rsi
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x130]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x70], rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xc8], r12
	lea	rsi, [rsi]
	mov	r12, r13
.label_215:
	mov	qword ptr [rsp + 0x80], r13
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x98]
	mov	qword ptr [rsp + 0x130], rax
	mov	qword ptr [rsp + 0x98], r15
	mov	rbx, rsi
	mov	r13, rdi
	mov	rsp, rsp
	mov	r15, r8
	nop	word ptr [rax + rax]
.label_270:
	mov	rax, qword ptr [rsp + 0x190]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], r13
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0x168]
	mov	rsi, rbx
	lea	rdi, [rdi]
	mov	rdx, r12
	mov	rcx, rbx
	mov	r8, r12
	mov	r12, r9
	call	mulredc2
	mov	r14, rax
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0x168]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x60]
	mov	qword ptr [rsp + 0x100], rcx
	add	r14, qword ptr [rsp + 0x100]
	adc	rbx, 0
	mov	rbp, rbp
	cmp	rbx, r12
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x40]
	ja	.label_218
	jne	.label_252
	lea	rsi, [rsi]
	cmp	r14, r13
	jb	.label_252
.label_218:
	mov	qword ptr [rsp + 0xb0], r12
	mov	qword ptr [rsp + 0x108], r13
	sub	r14, qword ptr [rsp + 0x108]
	sbb	rbx, qword ptr [rsp + 0xb0]
.label_252:
	mov	qword ptr [rsp + 0x1a8], rbx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x120], r14
	mov	rbp, rbp
	mov	rcx, r15
	nop	
	mov	r8, qword ptr [rsp + 0xc8]
	sub	r8, qword ptr [rsp + 0x120]
	sbb	rcx, qword ptr [rsp + 0x1a8]
	lea	rdi, [rdi]
	test	rcx, rcx
	jns	.label_263
	nop	
	mov	qword ptr [rsp + 0xf0], r12
	mov	qword ptr [rsp + 0xf8], r13
	add	r8, qword ptr [rsp + 0xf8]
	adc	rcx, qword ptr [rsp + 0xf0]
.label_263:
	mov	rax, qword ptr [rsp + 0x190]
	mov	qword ptr [rsp + 8], rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp], r13
	lea	rdi, [rsp + 0x168]
	mov	rdx, qword ptr [rsp + 0x128]
	mov	rbp, rbp
	mov	r9, r12
	call	mulredc2
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x168]
	nop	
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rbp, rbp
	and	ecx, 0x1f
	cmp	rcx, 1
	jne	.label_229
	lea	rdi, [rsp + 0xd0]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x40], rsi
	lea	rsi, [rsi]
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x128], rax
	mov	rcx, r12
	nop	
	mov	rbp, r12
	mov	rbp, rbp
	mov	r8, r13
	call	gcd2_odd
	cmp	rax, 1
	lea	rsi, [rsi]
	mov	r12, r14
	lea	rdi, [rdi]
	jne	.label_236
	mov	rax, qword ptr [rsp + 0xd0]
	test	rax, rax
	mov	rsp, rsp
	mov	rcx, rbx
	mov	rax, r12
	je	.label_258
	nop	
	jmp	.label_236
.label_229:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x128], rax
	mov	qword ptr [rsp + 0x40], rsi
	mov	rbp, r12
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x98]
	mov	rax, qword ptr [rsp + 0x80]
	nop	
	mov	r12, r14
.label_258:
	dec	qword ptr [rsp + 0x70]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x98], rcx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x80], rax
	mov	r9, rbp
	lea	rdi, [rdi]
	jne	.label_270
	mov	rdi, r13
	mov	rax, qword ptr [rsp + 0x130]
	lea	rcx, [rax + rax]
	mov	qword ptr [rsp + 0x98], rcx
	nop	
	test	rax, rax
	mov	rsi, rbx
	mov	rbp, rbp
	mov	r8, rbx
	mov	r15, rbx
	mov	ecx, 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x70], rcx
	mov	rbp, rbp
	mov	r13, r12
	mov	qword ptr [rsp + 0xc8], r12
	lea	rdi, [rdi]
	mov	r14, rax
	je	.label_215
	mov	rbp, rbp
	jmp	.label_216
.label_262:
	mov	rsp, rsp
	mov	rdi, rbx
	jmp	.label_238
	nop	
.label_216:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x190]
	mov	qword ptr [rsp + 8], rax
	mov	rbx, rdi
	mov	qword ptr [rsp], rbx
	lea	rdi, [rsp + 0x168]
	lea	rdi, [rdi]
	mov	rdx, r13
	mov	rcx, rsi
	mov	rbp, rbp
	mov	r8, r13
	mov	rbp, r9
	call	mulredc2
	mov	r9, rbp
	mov	r13, rax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x168]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x60]
	mov	qword ptr [rsp + 0xc0], rax
	add	r13, qword ptr [rsp + 0xc0]
	adc	rsi, 0
	cmp	rsi, r9
	lea	rsi, [rsi]
	ja	.label_259
	mov	rdi, rbx
	jne	.label_238
	mov	rbx, rdi
	mov	rbp, rbp
	cmp	r13, rbx
	lea	rsi, [rsi]
	jb	.label_262
.label_259:
	mov	qword ptr [rsp + 0x110], r9
	mov	qword ptr [rsp + 0x140], rbx
	mov	rdi, rbx
	sub	r13, qword ptr [rsp + 0x140]
	sbb	rsi, qword ptr [rsp + 0x110]
.label_238:
	nop	
	dec	r14
	jne	.label_216
	jmp	.label_219
	nop	word ptr cs:[rax + rax]
.label_236:
	mov	qword ptr [rsp + 0x20], rbx
	mov	qword ptr [rsp + 0x50], r12
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xb8], r13
	lea	rsi, [rsi]
	mov	r14, r15
	mov	r13, qword ptr [rsp + 0x80]
	nop	
	mov	r15, qword ptr [rsp + 0x98]
	nop	dword ptr [rax]
.label_247:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x190]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	mov	rbx, qword ptr [rsp + 0xb8]
	nop	
	mov	qword ptr [rsp], rbx
	lea	rdi, [rsp + 0x168]
	mov	rsi, r15
	lea	rsi, [rsi]
	mov	rdx, r13
	mov	rcx, r15
	mov	rbp, rbp
	mov	r8, r13
	mov	r9, rbp
	call	mulredc2
	lea	rsi, [rsi]
	mov	rcx, rbp
	mov	rsp, rsp
	mov	r13, rax
	mov	r15, qword ptr [rsp + 0x168]
	mov	rax, qword ptr [rsp + 0x60]
	mov	qword ptr [rsp + 0x18], rax
	add	r13, qword ptr [rsp + 0x18]
	adc	r15, 0
	cmp	r15, rcx
	ja	.label_257
	jne	.label_267
	mov	rbp, rbp
	cmp	r13, rbx
	jb	.label_267
.label_257:
	mov	qword ptr [rsp + 0x180], rcx
	mov	qword ptr [rsp + 0x148], rbx
	sub	r13, qword ptr [rsp + 0x148]
	sbb	r15, qword ptr [rsp + 0x180]
.label_267:
	nop	
	mov	qword ptr [rsp + 0x1c0], r15
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], r13
	mov	rsi, r14
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xc8]
	sub	rdx, qword ptr [rsp + 0x28]
	sbb	rsi, qword ptr [rsp + 0x1c0]
	mov	rsp, rsp
	test	rsi, rsi
	jns	.label_206
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x38], rbx
	add	rdx, qword ptr [rsp + 0x38]
	adc	rsi, qword ptr [rsp + 0x30]
.label_206:
	mov	rsp, rsp
	lea	rdi, [rsp + 0xd0]
	mov	rbp, rcx
	mov	r8, rbx
	call	gcd2_odd
	mov	rsp, rsp
	mov	r12, rax
	mov	rbx, qword ptr [rsp + 0xd0]
	mov	rbp, rbp
	cmp	r12, 1
	jne	.label_233
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_247
.label_233:
	lea	rsi, [rsi]
	test	rbx, rbx
	mov	rdi, rbp
	mov	rbp, rbp
	jne	.label_248
	mov	rax, r12
	mov	rsp, rsp
	shr	rax, 1
	and	eax, 0x7f
	movzx	eax, byte ptr [rax + binvert_table]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rsp, rsp
	imul	rcx, r12
	mov	rbp, rbp
	mov	edx, 2
	lea	rdi, [rdi]
	sub	rdx, rcx
	imul	rdx, rax
	lea	rdi, [rdi]
	mov	rax, rdx
	mov	rbp, rbp
	imul	rax, r12
	nop	
	mov	esi, 2
	mov	rbp, rbp
	sub	rsi, rax
	nop	
	imul	rsi, rdx
	mov	rsp, rsp
	mov	rax, rsi
	imul	rax, r12
	lea	rsi, [rsi]
	mov	ecx, 2
	sub	rcx, rax
	imul	rcx, rsi
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb8]
	imul	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xb8], rax
	cmp	rdi, r12
	mov	eax, 0
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0x68]
	jb	.label_253
	mov	qword ptr [rsp + 0xd8], r12
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	mul	qword ptr [rsp + 0xd8]
	sub	rdi, rdx
	imul	rdi, rcx
	mov	rax, rdi
.label_253:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x190], rax
	mov	rdi, r12
	lea	rdi, [rdi]
	call	prime_p
	test	al, al
	lea	rdi, [rdi]
	je	.label_234
	lea	rdi, [rdi]
	movzx	r10d, byte ptr [rbx + 0xfa]
	lea	edx, [r10 - 1]
	test	r10, r10
	mov	ecx, edx
	mov	rsp, rsp
	je	.label_239
	nop	
	lea	rsi, [r10 - 1]
	nop	dword ptr [rax + rax]
.label_255:
	lea	rdi, [rdi]
	cmp	qword ptr [rbx + rsi*8 + 0x10], r12
	jbe	.label_261
	mov	rbp, rbp
	lea	rcx, [rsi - 1]
	inc	rsi
	nop	
	cmp	rsi, 1
	mov	rsi, rcx
	lea	rdi, [rdi]
	jg	.label_255
	jmp	.label_239
	nop	word ptr cs:[rax + rax]
.label_234:
	mov	rdi, r12
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xe8]
	mov	rdx, rbx
	mov	rbp, rbp
	call	factor_using_pollard_rho
	mov	rsp, rsp
	jmp	.label_203
.label_261:
	movsxd	rax, esi
	cmp	qword ptr [rbx + rax*8 + 0x10], r12
	mov	ecx, esi
	mov	rbp, rbp
	jne	.label_239
	inc	byte ptr [rbx + rax + 0xe0]
	mov	rsp, rsp
	jmp	.label_203
	nop	
.label_239:
	mov	rbp, rbp
	cmp	edx, ecx
	lea	rsi, [rsi]
	jle	.label_209
	lea	eax, [r10 + 3]
	sub	eax, ecx
	lea	r9d, [r10 - 2]
	sub	r9d, ecx
	lea	rdi, [rdi]
	test	al, 3
	je	.label_213
	mov	rsp, rsp
	mov	r11, rbx
	mov	rax, qword ptr [rsp + 0x158]
	lea	rsi, [rsi]
	lea	rdx, [rax + r10]
	mov	rax, qword ptr [rsp + 0x138]
	lea	rbx, [rax + r10*8]
	mov	r8, r10
	dec	r8
	mov	rbp, rbp
	lea	edi, [r10 + 3]
	sub	edi, ecx
	lea	rdi, [rdi]
	and	edi, 3
	neg	edi
	xor	eax, eax
	nop	dword ptr [rax]
.label_243:
	mov	rsi, rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + rsi*8 - 8]
	nop	
	mov	qword ptr [rbx + rsi*8], rax
	mov	al, byte ptr [rdx + rsi - 1]
	mov	byte ptr [rdx + rsi], al
	lea	rsi, [rsi]
	lea	rax, [rsi - 1]
	cmp	edi, eax
	nop	
	jne	.label_243
	lea	rdx, [r8 + rsi - 1]
	mov	rsp, rsp
	lea	rdi, [rdx + 1]
	mov	rbx, r11
	jmp	.label_237
.label_213:
	mov	rdi, r10
.label_237:
	lea	rsi, [rsi]
	cmp	r9d, 2
	jbe	.label_209
.label_256:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + rdi*8 + 8]
	mov	qword ptr [rbx + rdi*8 + 0x10], rax
	mov	al, byte ptr [rbx + rdi + 0xdf]
	mov	byte ptr [rbx + rdi + 0xe0], al
	nop	
	mov	rax, qword ptr [rbx + rdi*8]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + rdi*8 + 8], rax
	mov	al, byte ptr [rbx + rdi + 0xde]
	mov	byte ptr [rbx + rdi + 0xdf], al
	mov	rax, qword ptr [rbx + rdi*8 - 8]
	mov	qword ptr [rbx + rdi*8], rax
	nop	
	mov	al, byte ptr [rbx + rdi + 0xdd]
	mov	byte ptr [rbx + rdi + 0xde], al
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + rdi*8 - 0x10]
	mov	qword ptr [rbx + rdi*8 - 8], rax
	mov	al, byte ptr [rbx + rdi + 0xdc]
	mov	byte ptr [rbx + rdi + 0xdd], al
	mov	rbp, rbp
	lea	rdi, [rdi - 4]
	mov	rsp, rsp
	add	edx, -4
	cmp	edx, ecx
	lea	rdi, [rdi]
	jg	.label_256
.label_209:
	movsxd	rax, ecx
	lea	rdi, [rdi]
	mov	qword ptr [rbx + rax*8 + 0x18], r12
	lea	rdi, [rdi]
	mov	byte ptr [rbx + rax + 0xe1], 1
	lea	rsi, [rsi]
	inc	r10b
	mov	byte ptr [rbx + 0xfa], r10b
.label_203:
	mov	rdi, qword ptr [rsp + 0x190]
	mov	rbp, rbp
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_228
	mov	r12, rdi
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	call	prime2_p
	test	al, al
	jne	.label_242
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	test	rbp, rbp
	mov	rbp, rbp
	je	.label_246
	mov	r9, r12
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x58], r9
	bsr	rax, qword ptr [rsp + 0x58]
	nop	
	xor	rax, 0x3f
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xa0], rbp
	bsr	rdi, qword ptr [rsp + 0xa0]
	lea	rsi, [rsi]
	xor	rdi, 0x3f
	mov	ecx, eax
	sub	ecx, edi
	test	ecx, ecx
	mov	rbp, rbp
	jle	.label_251
	mov	r8, qword ptr [rsp + 0xb8]
	mov	rdx, r8
	shl	rdx, cl
	nop	
	mov	rsi, r9
	shld	rsi, r8, cl
	nop	
	sub	eax, edi
	mov	rdi, qword ptr [rsp + 0x128]
	mov	r12, qword ptr [rsp + 0x50]
	nop	
.label_223:
	cmp	rbp, rsi
	lea	rdi, [rdi]
	ja	.label_266
	mov	rsp, rsp
	jne	.label_220
	mov	rbp, rbp
	cmp	r12, rdx
	mov	rbp, rbp
	jb	.label_220
.label_266:
	nop	
	mov	qword ptr [rsp + 0x160], rsi
	mov	qword ptr [rsp + 0x188], rdx
	sub	r12, qword ptr [rsp + 0x188]
	sbb	rbp, qword ptr [rsp + 0x160]
.label_220:
	mov	rsp, rsp
	shrd	rdx, rsi, 1
	lea	rdi, [rdi]
	shr	rsi, 1
	dec	eax
	nop	
	jne	.label_223
	jmp	.label_227
	nop	
.label_246:
	lea	rsi, [rsi]
	xor	ebp, ebp
	mov	r9, r12
.label_251:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x128]
	lea	rdi, [rdi]
	mov	r12, qword ptr [rsp + 0x50]
.label_227:
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_232
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x170], r9
	bsr	rax, qword ptr [rsp + 0x170]
	xor	rax, 0x3f
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x78], r14
	bsr	r8, qword ptr [rsp + 0x78]
	xor	r8, 0x3f
	mov	ecx, eax
	sub	ecx, r8d
	mov	rbp, rbp
	test	ecx, ecx
	jle	.label_265
	nop	
	mov	qword ptr [rsp + 0x68], rbx
	nop	
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	rdx, rsi
	lea	rsi, [rsi]
	shl	rdx, cl
	mov	rbx, r9
	shld	rbx, rsi, cl
	mov	rsp, rsp
	sub	eax, r8d
	nop	word ptr cs:[rax + rax]
.label_212:
	mov	rsp, rsp
	cmp	r14, rbx
	ja	.label_211
	lea	rsi, [rsi]
	jne	.label_205
	cmp	qword ptr [rsp + 0xc8], rdx
	jb	.label_205
.label_211:
	mov	qword ptr [rsp + 0x118], rbx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x178], rdx
	mov	rcx, qword ptr [rsp + 0xc8]
	sub	rcx, qword ptr [rsp + 0x178]
	sbb	r14, qword ptr [rsp + 0x118]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xc8], rcx
.label_205:
	mov	rbp, rbp
	shrd	rdx, rbx, 1
	shr	rbx, 1
	dec	eax
	jne	.label_212
	jmp	.label_245
	nop	
.label_232:
	mov	qword ptr [rsp + 0x68], rbx
	mov	rsp, rsp
	xor	r14d, r14d
	nop	
	mov	rsi, qword ptr [rsp + 0xb8]
	nop	
	jmp	.label_245
	nop	word ptr [rax + rax]
.label_265:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x68], rbx
	mov	rsi, qword ptr [rsp + 0xb8]
.label_245:
	mov	rbp, rbp
	mov	r8, r14
	nop	
	test	r15, r15
	mov	eax, 0
	nop	
	je	.label_244
	mov	qword ptr [rsp + 0x48], r9
	bsr	rdx, qword ptr [rsp + 0x48]
	lea	rdi, [rdi]
	xor	rdx, 0x3f
	mov	qword ptr [rsp + 0x150], r15
	bsr	r10, qword ptr [rsp + 0x150]
	xor	r10, 0x3f
	nop	
	mov	ecx, edx
	mov	rbp, rbp
	sub	ecx, r10d
	lea	rsi, [rsi]
	test	ecx, ecx
	mov	rax, r15
	jle	.label_244
	mov	rax, rsi
	mov	rbp, rbp
	shl	rax, cl
	mov	rbx, r9
	shld	rbx, rsi, cl
	sub	edx, r10d
	nop	word ptr [rax + rax]
.label_210:
	nop	
	cmp	r15, rbx
	nop	
	ja	.label_264
	jne	.label_217
	cmp	r13, rax
	jb	.label_217
.label_264:
	nop	
	mov	qword ptr [rsp + 0xa8], rbx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x1b8], rax
	sub	r13, qword ptr [rsp + 0x1b8]
	sbb	r15, qword ptr [rsp + 0xa8]
.label_217:
	shrd	rax, rbx, 1
	lea	rsi, [rsi]
	shr	rbx, 1
	nop	
	dec	edx
	lea	rsi, [rsi]
	jne	.label_210
	lea	rdi, [rdi]
	jmp	.label_214
.label_248:
	nop	
	cmp	qword ptr [rsp + 0xb8], r12
	jne	.label_208
	nop	
	cmp	rdi, rbx
	lea	rsi, [rsi]
	jne	.label_208
	nop	
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0xe8]
	nop	
	mov	rcx, qword ptr [rsp + 0x68]
	lea	rsi, [rsi]
	call	factor_using_pollard_rho2
	jmp	.label_225
.label_228:
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0xb8]
	jmp	.label_222
.label_242:
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, r12
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0xb8]
	call	factor_insert_large
	lea	rsi, [rsi]
	jmp	.label_225
.label_208:
	mov	rbp, rbp
	mov	rax, r12
	shr	rax, 1
	lea	rdi, [rdi]
	and	eax, 0x7f
	movzx	eax, byte ptr [rax + binvert_table]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rbp, rbp
	imul	rcx, r12
	mov	rsp, rsp
	mov	ebp, 2
	lea	rsi, [rsi]
	mov	edx, 2
	sub	rdx, rcx
	lea	rsi, [rsi]
	imul	rdx, rax
	mov	rax, rdx
	imul	rax, r12
	mov	ecx, 2
	sub	rcx, rax
	imul	rcx, rdx
	mov	rax, r12
	imul	rax, rcx
	mov	rbp, rbp
	sub	rbp, rax
	imul	rbp, rcx
	imul	rbp, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rsi, r12
	call	prime2_p
	test	al, al
	lea	rsi, [rsi]
	je	.label_241
	mov	rdi, qword ptr [rsp + 0x68]
	mov	rsp, rsp
	mov	rsi, rbx
	nop	
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	rdx, r12
	call	factor_insert_large
	jmp	.label_222
.label_241:
	nop	
	mov	rdi, rbx
	mov	rsi, r12
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0xe8]
	nop	
	mov	rbx, qword ptr [rsp + 0x68]
	mov	rcx, rbx
	mov	rbp, rbp
	call	factor_using_pollard_rho2
.label_222:
	mov	rdi, rbp
	nop	
	call	prime_p
	mov	rbp, rbp
	test	al, al
	je	.label_230
	movzx	r10d, byte ptr [rbx + 0xfa]
	lea	edx, [r10 - 1]
	test	r10, r10
	mov	ecx, edx
	mov	rbp, rbp
	je	.label_231
	lea	rsi, [rsi]
	lea	rsi, [r10 - 1]
	nop	word ptr [rax + rax]
.label_250:
	nop	
	cmp	qword ptr [rbx + rsi*8 + 0x10], rbp
	jbe	.label_249
	lea	rcx, [rsi - 1]
	mov	rbp, rbp
	inc	rsi
	cmp	rsi, 1
	mov	rsi, rcx
	mov	rbp, rbp
	jg	.label_250
	mov	rsp, rsp
	jmp	.label_231
.label_230:
	mov	rsp, rsp
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x60]
	mov	rdx, rbx
	mov	rbp, rbp
	call	factor_using_pollard_rho
	jmp	.label_225
.label_249:
	movsxd	rax, esi
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + rax*8 + 0x10], rbp
	nop	
	mov	ecx, esi
	jne	.label_231
	inc	byte ptr [rbx + rax + 0xe0]
	lea	rsi, [rsi]
	jmp	.label_225
.label_231:
	lea	rsi, [rsi]
	cmp	edx, ecx
	jle	.label_207
	lea	rsi, [rsi]
	lea	eax, [r10 + 3]
	sub	eax, ecx
	lea	rsi, [rsi]
	lea	r9d, [r10 - 2]
	nop	
	sub	r9d, ecx
	test	al, 3
	je	.label_268
	mov	rsp, rsp
	lea	rdx, [rbx + r10 + 0xe0]
	mov	rax, rbx
	lea	rdi, [rdi]
	lea	rbx, [rax + r10*8 + 0x10]
	lea	rdi, [rdi]
	mov	r11, rax
	mov	rsp, rsp
	mov	r8, r10
	nop	
	dec	r8
	mov	rsp, rsp
	lea	edi, [r10 + 3]
	sub	edi, ecx
	and	edi, 3
	neg	edi
	lea	rdi, [rdi]
	xor	eax, eax
.label_254:
	mov	rsp, rsp
	mov	rsi, rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + rsi*8 - 8]
	mov	qword ptr [rbx + rsi*8], rax
	mov	al, byte ptr [rdx + rsi - 1]
	mov	byte ptr [rdx + rsi], al
	lea	rax, [rsi - 1]
	mov	rbp, rbp
	cmp	edi, eax
	lea	rdi, [rdi]
	jne	.label_254
	lea	rdx, [r8 + rsi - 1]
	lea	rdi, [rdi]
	lea	rdi, [rdx + 1]
	nop	
	mov	rbx, r11
	lea	rsi, [rsi]
	jmp	.label_240
.label_268:
	mov	rdi, r10
.label_240:
	cmp	r9d, 3
	jb	.label_207
	nop	dword ptr [rax]
.label_226:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + rdi*8 + 8]
	mov	qword ptr [rbx + rdi*8 + 0x10], rax
	mov	al, byte ptr [rbx + rdi + 0xdf]
	mov	rsp, rsp
	mov	byte ptr [rbx + rdi + 0xe0], al
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + rdi*8]
	mov	qword ptr [rbx + rdi*8 + 8], rax
	mov	al, byte ptr [rbx + rdi + 0xde]
	mov	rsp, rsp
	mov	byte ptr [rbx + rdi + 0xdf], al
	mov	rax, qword ptr [rbx + rdi*8 - 8]
	mov	qword ptr [rbx + rdi*8], rax
	mov	al, byte ptr [rbx + rdi + 0xdd]
	mov	byte ptr [rbx + rdi + 0xde], al
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + rdi*8 - 0x10]
	mov	qword ptr [rbx + rdi*8 - 8], rax
	mov	al, byte ptr [rbx + rdi + 0xdc]
	lea	rsi, [rsi]
	mov	byte ptr [rbx + rdi + 0xdd], al
	mov	rbp, rbp
	lea	rdi, [rdi - 4]
	lea	rdi, [rdi]
	add	edx, -4
	cmp	edx, ecx
	mov	rbp, rbp
	jg	.label_226
.label_207:
	lea	rdi, [rdi]
	movsxd	rax, ecx
	mov	rbp, rbp
	mov	qword ptr [rbx + rax*8 + 0x18], rbp
	lea	rdi, [rdi]
	mov	byte ptr [rbx + rax + 0xe1], 1
	mov	rbp, rbp
	inc	r10b
	mov	byte ptr [rbx + 0xfa], r10b
.label_225:
	mov	rbp, rbp
	add	rsp, 0x1c8
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405e70

	.globl factor_insert_refind
	.type factor_insert_refind, @function
factor_insert_refind:
	push	r14
	push	rbx
	test	ecx, ecx
	mov	rsp, rsp
	je	.label_276
	lea	r8d, [rcx - 1]
	xor	eax, eax
	test	cl, 3
	je	.label_283
	mov	r9d, edx
	lea	rsi, [rsi]
	mov	r10d, ecx
	nop	
	and	r10d, 3
	xor	eax, eax
	nop	dword ptr [rax]
.label_271:
	lea	ebx, [r9 + rax]
	movzx	ebx, byte ptr [rbx + primes_diff]
	mov	rbp, rbp
	add	rsi, rbx
	nop	
	inc	rax
	cmp	r10d, eax
	mov	rsp, rsp
	jne	.label_271
.label_283:
	mov	rsp, rsp
	cmp	r8d, 3
	lea	rsi, [rsi]
	jb	.label_276
	sub	ecx, eax
	lea	rdi, [rdi]
	lea	r8d, [rdx + rax + 3]
	lea	r9d, [rdx + rax + 2]
	mov	rbp, rbp
	mov	r10d, edx
	mov	rbp, rbp
	add	r10d, eax
	lea	edx, [rdx + rax + 1]
	nop	dword ptr [rax]
.label_280:
	lea	rsi, [rsi]
	mov	eax, r10d
	mov	rsp, rsp
	movzx	eax, byte ptr [rax + primes_diff]
	lea	rdi, [rdi]
	add	rax, rsi
	mov	rsp, rsp
	mov	esi, edx
	movzx	esi, byte ptr [rsi + primes_diff]
	add	rsi, rax
	mov	eax, r9d
	movzx	eax, byte ptr [rax + primes_diff]
	nop	
	add	rax, rsi
	mov	esi, r8d
	movzx	esi, byte ptr [rsi + primes_diff]
	add	rsi, rax
	mov	rsp, rsp
	add	r8d, 4
	add	r9d, 4
	add	r10d, 4
	add	edx, 4
	add	ecx, -4
	lea	rdi, [rdi]
	jne	.label_280
.label_276:
	movzx	r9d, byte ptr [rdi + 0xfa]
	lea	edx, [r9 - 1]
	test	r9, r9
	mov	ecx, edx
	lea	rsi, [rsi]
	je	.label_274
	lea	rax, [r9 - 1]
	nop	word ptr cs:[rax + rax]
.label_282:
	mov	rsp, rsp
	cmp	qword ptr [rdi + rax*8 + 0x10], rsi
	mov	rbp, rbp
	jbe	.label_281
	lea	rdi, [rdi]
	lea	rcx, [rax - 1]
	inc	rax
	nop	
	cmp	rax, 1
	lea	rsi, [rsi]
	mov	rax, rcx
	mov	rbp, rbp
	jg	.label_282
	jmp	.label_274
.label_281:
	lea	rdi, [rdi]
	movsxd	rbx, eax
	cmp	qword ptr [rdi + rbx*8 + 0x10], rsi
	nop	
	mov	ecx, eax
	jne	.label_274
	lea	rdi, [rdi]
	inc	byte ptr [rdi + rbx + 0xe0]
	mov	rsp, rsp
	jmp	.label_278
.label_274:
	lea	rdi, [rdi]
	cmp	edx, ecx
	lea	rdi, [rdi]
	jle	.label_275
	lea	eax, [r9 + 3]
	lea	rdi, [rdi]
	sub	eax, ecx
	lea	r8d, [r9 - 2]
	nop	
	sub	r8d, ecx
	lea	rsi, [rsi]
	test	al, 3
	mov	rsp, rsp
	je	.label_273
	lea	r14, [rdi + r9 + 0xe0]
	mov	rbp, rbp
	lea	rdx, [rdi + r9*8 + 0x10]
	lea	rsi, [rsi]
	mov	r10, r9
	dec	r10
	lea	r11d, [r9 + 3]
	sub	r11d, ecx
	mov	rsp, rsp
	and	r11d, 3
	lea	rsi, [rsi]
	neg	r11d
	mov	rsp, rsp
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_272:
	mov	rbp, rbp
	mov	rbx, rax
	mov	rax, qword ptr [rdx + rbx*8 - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rbx*8], rax
	mov	al, byte ptr [r14 + rbx - 1]
	mov	byte ptr [r14 + rbx], al
	lea	rax, [rbx - 1]
	cmp	r11d, eax
	lea	rdi, [rdi]
	jne	.label_272
	lea	rsi, [rsi]
	lea	rdx, [r10 + rbx - 1]
	lea	rdi, [rdi]
	lea	rax, [rdx + 1]
	jmp	.label_279
.label_273:
	mov	rbp, rbp
	mov	rax, r9
.label_279:
	lea	rsi, [rsi]
	cmp	r8d, 3
	jb	.label_275
	nop	dword ptr [rax + rax]
.label_277:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rdi + rax*8 + 8]
	mov	rsp, rsp
	mov	qword ptr [rdi + rax*8 + 0x10], rbx
	lea	rsi, [rsi]
	mov	bl, byte ptr [rdi + rax + 0xdf]
	mov	byte ptr [rdi + rax + 0xe0], bl
	mov	rbx, qword ptr [rdi + rax*8]
	mov	qword ptr [rdi + rax*8 + 8], rbx
	mov	bl, byte ptr [rdi + rax + 0xde]
	lea	rdi, [rdi]
	mov	byte ptr [rdi + rax + 0xdf], bl
	nop	
	mov	rbx, qword ptr [rdi + rax*8 - 8]
	mov	qword ptr [rdi + rax*8], rbx
	mov	bl, byte ptr [rdi + rax + 0xdd]
	lea	rsi, [rsi]
	mov	byte ptr [rdi + rax + 0xde], bl
	mov	rbp, rbp
	mov	rbx, qword ptr [rdi + rax*8 - 0x10]
	nop	
	mov	qword ptr [rdi + rax*8 - 8], rbx
	nop	
	mov	bl, byte ptr [rdi + rax + 0xdc]
	mov	rsp, rsp
	mov	byte ptr [rdi + rax + 0xdd], bl
	lea	rax, [rax - 4]
	lea	rdi, [rdi]
	add	edx, -4
	cmp	edx, ecx
	jg	.label_277
.label_275:
	movsxd	rax, ecx
	lea	rsi, [rsi]
	mov	qword ptr [rdi + rax*8 + 0x18], rsi
	mov	byte ptr [rdi + rax + 0xe1], 1
	inc	r9b
	mov	byte ptr [rdi + 0xfa], r9b
.label_278:
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406120

	.globl prime_p
	.type prime_p, @function
prime_p:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	nop	
	push	r14
	mov	rsp, rsp
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x1c8
	mov	rbp, rbp
	mov	rbx, rdi
	cmp	rbx, 2
	jae	.label_304
	xor	eax, eax
	jmp	.label_285
.label_304:
	mov	rsp, rsp
	cmp	rbx, 0x17ded79
	lea	rsi, [rsi]
	jae	.label_307
	mov	al, 1
	jmp	.label_285
.label_307:
	lea	rdx, [rbx - 1]
	mov	rsp, rsp
	xor	r9d, r9d
	test	dl, 1
	nop	
	jne	.label_314
	lea	rdi, [rdi]
	mov	rax, rdx
	nop	word ptr [rax + rax]
.label_284:
	mov	r13, rax
	mov	rbp, rbp
	shr	r13, 1
	inc	r9d
	bt	rax, 1
	mov	rax, r13
	mov	rbp, rbp
	jae	.label_284
	jmp	.label_295
.label_314:
	mov	r13, rdx
.label_295:
	mov	rax, rbx
	nop	
	shr	rax, 1
	mov	rsp, rsp
	and	eax, 0x7f
	movzx	ecx, byte ptr [rax + binvert_table]
	mov	r14d, 2
	mov	eax, 1
	xor	r15d, r15d
	mov	rsp, rsp
	cmp	rbx, 1
	mov	rsp, rsp
	jbe	.label_298
	mov	qword ptr [rsp + 0x190], rdx
	mov	rdx, rcx
	imul	rdx, rbx
	lea	rdi, [rdi]
	mov	esi, 2
	mov	rbp, rbp
	sub	rsi, rdx
	mov	rsp, rsp
	imul	rsi, rcx
	lea	rdi, [rdi]
	mov	rcx, rsi
	imul	rcx, rbx
	mov	edx, 2
	sub	rdx, rcx
	lea	rsi, [rsi]
	imul	rdx, rsi
	mov	rcx, rdx
	nop	
	imul	rcx, rbx
	sub	r14, rcx
	imul	r14, rdx
	mov	ecx, 0xffffffc0
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rsi, rbx
	nop	dword ptr [rax]
.label_318:
	mov	rsp, rsp
	shrd	rdx, rsi, 1
	lea	rdi, [rdi]
	shr	rsi, 1
	cmp	rax, rsi
	ja	.label_302
	mov	rbp, rbp
	jne	.label_305
	cmp	r15, rdx
	jb	.label_305
.label_302:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x118], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x160], rdx
	sub	r15, qword ptr [rsp + 0x160]
	sbb	rax, qword ptr [rsp + 0x118]
.label_305:
	mov	rbp, rbp
	inc	ecx
	lea	rsi, [rsi]
	jne	.label_318
	lea	rdi, [rdi]
	mov	rcx, rbx
	mov	rsp, rsp
	sub	rcx, r15
	xor	r12d, r12d
	mov	rax, r15
	mov	rsp, rsp
	sub	rax, rcx
	mov	rsp, rsp
	mov	r10, rcx
	nop	
	cmovb	r12, rbx
	nop	
	add	r12, rax
	nop	
	mov	rbp, r13
	mov	rsi, r12
	mov	r8, r12
	jmp	.label_322
.label_319:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x128], rsi
	lea	rsi, [rsi]
	mov	rax, r8
	mul	qword ptr [rsp + 0x128]
	nop	
	mov	rdi, rdx
	lea	rsi, [rsi]
	imul	rax, r14
	nop	
	mov	qword ptr [rsp + 0x150], rbx
	mul	qword ptr [rsp + 0x150]
	lea	rsi, [rsi]
	sub	rdi, rdx
	mov	rsp, rsp
	mov	r8d, 0
	cmovb	r8, rbx
	lea	rdi, [rdi]
	add	r8, rdi
.label_322:
	lea	rsi, [rsi]
	mov	rcx, rbp
	nop	word ptr cs:[rax + rax]
.label_293:
	nop	
	test	rcx, rcx
	je	.label_312
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x140], rsi
	mov	rax, rsi
	mul	qword ptr [rsp + 0x140]
	lea	rdi, [rdi]
	mov	rdi, rdx
	lea	rdi, [rdi]
	imul	rax, r14
	mov	qword ptr [rsp + 0x158], rbx
	mul	qword ptr [rsp + 0x158]
	sub	rdi, rdx
	mov	esi, 0
	lea	rsi, [rsi]
	cmovb	rsi, rbx
	lea	rdi, [rdi]
	add	rsi, rdi
	lea	rsi, [rsi]
	mov	rbp, rcx
	shr	rbp, 1
	nop	
	bt	rcx, 1
	mov	rbp, rbp
	mov	rcx, rbp
	jae	.label_293
	nop	
	jmp	.label_319
.label_312:
	nop	
	cmp	r8, r15
	lea	rdi, [rdi]
	je	.label_288
	cmp	r8, r10
	mov	rbp, rbp
	je	.label_288
	cmp	r9d, 2
	jb	.label_290
	mov	edi, 2
	nop	
.label_321:
	mov	qword ptr [rsp + 0x1c0], r8
	mov	rax, r8
	mul	qword ptr [rsp + 0x1c0]
	mov	rsi, rdx
	lea	rsi, [rsi]
	imul	rax, r14
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x130], rbx
	mul	qword ptr [rsp + 0x130]
	sub	rsi, rdx
	mov	rsp, rsp
	mov	r8d, 0
	cmovb	r8, rbx
	add	r8, rsi
	cmp	r8, r10
	je	.label_288
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	edi, r9d
	jae	.label_285
	nop	
	inc	edi
	cmp	r8, r15
	jne	.label_321
	mov	rsp, rsp
	jmp	.label_285
.label_288:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x180], r10
	mov	dword ptr [rsp + 0x17c], r9d
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x1b8], rax
	lea	rdx, [rsp + 0x10]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x190]
	lea	rsi, [rsi]
	call	factor
	nop	
	movzx	r9d, byte ptr [rsp + 0x10a]
	mov	r8d, 2
	lea	rsi, [rsi]
	jmp	.label_291
	nop	dword ptr [rax + rax]
.label_309:
	xor	edx, edx
	mov	rax, qword ptr [rsp + 0x190]
	lea	rsi, [rsi]
	div	qword ptr [rsp + r11*8 + 0x20]
	mov	rsp, rsp
	mov	rdi, rax
	mov	rsp, rsp
	test	dil, 1
	mov	rcx, r12
	nop	
	cmove	rcx, r15
	lea	rsi, [rsi]
	mov	rsi, r12
	mov	rbp, rbp
	jmp	.label_311
	nop	word ptr cs:[rax + rax]
.label_301:
	mov	qword ptr [rsp + 0x1b0], rsi
	mov	rbp, rbp
	mov	rax, rcx
	mul	qword ptr [rsp + 0x1b0]
	mov	rbp, rbp
	mov	r8, rdx
	lea	rdi, [rdi]
	imul	rax, r14
	mov	qword ptr [rsp + 0x188], rbx
	mul	qword ptr [rsp + 0x188]
	lea	rsi, [rsi]
	sub	r8, rdx
	mov	ecx, 0
	cmovb	rcx, rbx
	add	rcx, r8
.label_311:
	mov	rbp, rbp
	mov	rbp, rdi
	nop	dword ptr [rax + rax]
.label_303:
	test	rbp, rbp
	je	.label_299
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rsi
	mov	rax, rsi
	mul	qword ptr [rsp]
	mov	rdi, rdx
	mov	rsp, rsp
	imul	rax, r14
	mov	qword ptr [rsp + 0x168], rbx
	mul	qword ptr [rsp + 0x168]
	sub	rdi, rdx
	mov	rbp, rbp
	mov	esi, 0
	cmovb	rsi, rbx
	mov	rbp, rbp
	add	rsi, rdi
	mov	rdi, rbp
	shr	rdi, 1
	bt	rbp, 1
	lea	rsi, [rsi]
	mov	rbp, rdi
	mov	rsp, rsp
	jae	.label_303
	lea	rsi, [rsi]
	jmp	.label_301
.label_299:
	cmp	rcx, r15
	lea	rsi, [rsi]
	je	.label_316
	inc	r11
	cmp	r11, r9
	lea	rdi, [rdi]
	jb	.label_309
.label_316:
	cmp	rcx, r15
	jne	.label_315
	mov	rax, qword ptr [rsp + 0x1b8]
	movzx	r8d, byte ptr [rax + primes_diff]
	mov	rsp, rsp
	add	r8, r10
	mov	qword ptr [rsp + 0x1a8], r8
	mov	rax, r15
	mul	qword ptr [rsp + 0x1a8]
	mov	r12, rax
	test	rdx, rdx
	nop	
	jne	.label_308
	lea	rdi, [rdi]
	xor	edx, edx
	nop	
	mov	rax, r12
	div	rbx
	mov	rsp, rsp
	mov	r12, rdx
	nop	
	mov	r11d, dword ptr [rsp + 0x17c]
.label_313:
	mov	rbp, r13
	mov	rsi, r12
	lea	rdi, [rdi]
	mov	r10, r12
	jmp	.label_287
	nop	
.label_297:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x110], rsi
	mov	rax, r10
	mul	qword ptr [rsp + 0x110]
	mov	rdi, rdx
	mov	rbp, rbp
	imul	rax, r14
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x148], rbx
	mul	qword ptr [rsp + 0x148]
	nop	
	sub	rdi, rdx
	mov	r10d, 0
	cmovb	r10, rbx
	mov	rbp, rbp
	add	r10, rdi
.label_287:
	mov	rcx, rbp
	nop	word ptr [rax + rax]
.label_300:
	test	rcx, rcx
	lea	rsi, [rsi]
	je	.label_320
	mov	qword ptr [rsp + 0x1a0], rsi
	mov	rbp, rbp
	mov	rax, rsi
	mul	qword ptr [rsp + 0x1a0]
	mov	rsp, rsp
	mov	rdi, rdx
	imul	rax, r14
	mov	qword ptr [rsp + 8], rbx
	mul	qword ptr [rsp + 8]
	nop	
	sub	rdi, rdx
	mov	esi, 0
	lea	rsi, [rsi]
	cmovb	rsi, rbx
	add	rsi, rdi
	mov	rbp, rbp
	mov	rbp, rcx
	shr	rbp, 1
	mov	rsp, rsp
	bt	rcx, 1
	mov	rcx, rbp
	mov	rbp, rbp
	jae	.label_300
	jmp	.label_297
	nop	word ptr cs:[rax + rax]
.label_320:
	cmp	r10, r15
	nop	
	mov	rcx, qword ptr [rsp + 0x180]
	je	.label_296
	cmp	r10, rcx
	mov	rbp, rbp
	je	.label_296
	mov	edi, 2
	mov	rbp, rbp
	cmp	r11d, 2
	nop	
	jb	.label_292
	nop	word ptr cs:[rax + rax]
.label_306:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x120], r10
	lea	rdi, [rdi]
	mov	rax, r10
	mul	qword ptr [rsp + 0x120]
	mov	rsi, rdx
	imul	rax, r14
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x138], rbx
	mul	qword ptr [rsp + 0x138]
	sub	rsi, rdx
	nop	
	mov	r10d, 0
	cmovb	r10, rbx
	add	r10, rsi
	lea	rsi, [rsi]
	cmp	r10, rcx
	je	.label_296
	xor	eax, eax
	mov	rsp, rsp
	cmp	edi, r11d
	nop	
	jae	.label_285
	mov	rsp, rsp
	inc	edi
	cmp	r10, r15
	mov	rbp, rbp
	jne	.label_306
	jmp	.label_285
	nop	dword ptr [rax]
.label_296:
	mov	dword ptr [rsp + 0x17c], r11d
	mov	rax, qword ptr [rsp + 0x1b8]
	inc	rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x1b8], rax
	cmp	rax, 0x29c
	jb	.label_291
	lea	rsi, [rsi]
	jmp	.label_289
.label_308:
	cmp	rdx, rbx
	lea	rdi, [rdi]
	mov	r11d, dword ptr [rsp + 0x17c]
	nop	
	jae	.label_317
	mov	rbp, rbp
	mov	eax, 0xffffffc0
	lea	rdi, [rdi]
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	rsi, rbx
	nop	word ptr [rax + rax]
.label_310:
	nop	
	shrd	rcx, rsi, 1
	shr	rsi, 1
	cmp	rdx, rsi
	ja	.label_286
	jne	.label_294
	mov	rbp, rbp
	cmp	r12, rcx
	jb	.label_294
.label_286:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x198], rsi
	mov	qword ptr [rsp + 0x170], rcx
	sub	r12, qword ptr [rsp + 0x170]
	sbb	rdx, qword ptr [rsp + 0x198]
.label_294:
	mov	rsp, rsp
	inc	eax
	jne	.label_310
	nop	
	jmp	.label_313
	nop	dword ptr [rax + rax]
.label_291:
	lea	rdi, [rdi]
	mov	r10, r8
	mov	rsp, rsp
	test	r9b, r9b
	mov	r11d, 0
	mov	rsp, rsp
	jne	.label_309
	mov	rsp, rsp
	mov	al, 1
	jmp	.label_285
.label_290:
	xor	eax, eax
	nop	
	jmp	.label_285
.label_315:
	mov	al, 1
	jmp	.label_285
.label_292:
	lea	rdi, [rdi]
	xor	eax, eax
.label_285:
	add	rsp, 0x1c8
	mov	rbp, rbp
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
.label_289:
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.43
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	call	abort
.label_298:
	mov	edi, OFFSET FLAT:.str.44
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.42
	nop	
	mov	edx, 0x4c4
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.prime_p
	nop	
	call	__assert_fail
.label_317:
	nop	
	mov	edi, OFFSET FLAT:.str.45
	mov	esi, OFFSET FLAT:.str.42
	mov	rsp, rsp
	mov	edx, 0x4f4
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.prime_p
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4068b0

	.globl millerrabin2
	.type millerrabin2, @function
millerrabin2:
	push	rbp
	push	r15
	push	r14
	push	r13
	lea	rdi, [rdi]
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	rbx, r9
	mov	r15d, r8d
	lea	rsi, [rsi]
	mov	r12, rsi
	mov	rbp, rbp
	mov	rbp, rdi
	lea	rdi, [rsp + 0x20]
	mov	rsi, rdx
	mov	rdx, rcx
	mov	rcx, rbp
	mov	rsp, rsp
	mov	r8, r12
	call	powm2
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbx]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 8]
	mov	cl, 1
	mov	rsp, rsp
	cmp	rax, rdx
	jne	.label_328
	cmp	rsi, rdi
	je	.label_324
.label_328:
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbp]
	mov	r9, qword ptr [rbp + 8]
	nop	
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rsi, [rsi]
	mov	r13, r9
	nop	
	mov	r14, r8
	sub	r14, qword ptr [rsp + 0x30]
	sbb	r13, qword ptr [rsp + 0x28]
	nop	
	cmp	rax, r14
	lea	rsi, [rsi]
	jne	.label_330
	nop	
	cmp	rsi, r13
	je	.label_324
.label_330:
	lea	rsi, [rsi]
	cmp	r15d, 2
	mov	rsp, rsp
	jb	.label_329
	mov	dword ptr [rsp + 0x1c], r15d
	mov	qword ptr [rsp + 8], r12
	mov	qword ptr [rsp], r8
	lea	rdi, [rsp + 0x20]
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	rcx, rsi
	lea	rsi, [rsi]
	mov	r8, rax
	mov	rbp, rbp
	call	mulredc2
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x20]
	nop	
	mov	r15d, 1
	lea	rsi, [rsi]
	jmp	.label_325
	nop	dword ptr [rax]
.label_332:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp]
	mov	rsp, rsp
	mov	r9, qword ptr [rbp + 8]
	mov	qword ptr [rsp + 8], r12
	mov	rsp, rsp
	mov	qword ptr [rsp], rcx
	lea	rdi, [rsp + 0x20]
	mov	rsp, rsp
	mov	rdx, rax
	mov	rbp, rbp
	mov	rcx, rsi
	lea	rsi, [rsi]
	mov	r8, rax
	mov	rsp, rsp
	call	mulredc2
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x20]
.label_325:
	mov	rbp, rbp
	cmp	rax, r14
	jne	.label_323
	cmp	rsi, r13
	mov	rbp, rbp
	je	.label_327
.label_323:
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbx]
	jne	.label_326
	cmp	rsi, qword ptr [rbx + 8]
	je	.label_331
.label_326:
	inc	r15d
	cmp	r15d, dword ptr [rsp + 0x1c]
	mov	rbp, rbp
	jb	.label_332
	mov	rbp, rbp
	xor	ecx, ecx
	jmp	.label_324
.label_329:
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rsi, [rsi]
	jmp	.label_324
.label_327:
	mov	rsp, rsp
	mov	cl, 1
.label_324:
	mov	al, cl
	mov	rsp, rsp
	add	rsp, 0x38
	lea	rsi, [rsi]
	pop	rbx
	nop	
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_331:
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rdi, [rdi]
	jmp	.label_324
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406a50

	.globl powm2
	.type powm2, @function
powm2:
	push	rbp
	lea	rdi, [rdi]
	push	r15
	lea	rdi, [rdi]
	push	r14
	lea	rsi, [rsi]
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	rbp, rbp
	mov	r15, r8
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], rdx
	mov	rsp, rsp
	mov	r8, qword ptr [rsi]
	mov	rbp, qword ptr [rsi + 8]
	mov	r13, qword ptr [rcx]
	mov	r12, qword ptr [rcx + 8]
	mov	rax, qword ptr [r9]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], rax
	mov	rax, qword ptr [r9 + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rax
	mov	r14, qword ptr [rdx]
	lea	rdi, [rdi]
	mov	eax, 0xffffffc0
	nop	dword ptr [rax + rax]
.label_339:
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x2c], eax
	lea	rsi, [rsi]
	test	r14b, 1
	lea	rdi, [rdi]
	jne	.label_334
	mov	rbx, rdi
	jmp	.label_335
	nop	dword ptr [rax + rax]
.label_334:
	mov	qword ptr [rsp + 8], r15
	mov	rsp, rsp
	mov	qword ptr [rsp], r13
	nop	
	mov	rbx, rdi
	mov	rsi, qword ptr [rsp + 0x20]
	nop	
	mov	rdx, qword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	mov	rcx, rbp
	mov	qword ptr [rsp + 0x40], r8
	mov	rbp, rbp
	mov	r8, qword ptr [rsp + 0x40]
	lea	rsi, [rsi]
	mov	r9, r12
	lea	rdi, [rdi]
	call	mulredc2
	mov	r8, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x38], rax
	nop	
	mov	rax, qword ptr [rbx]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rax
.label_335:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], r15
	nop	
	mov	qword ptr [rsp], r13
	nop	
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, rbp
	lea	rsi, [rsi]
	mov	rdx, r8
	lea	rdi, [rdi]
	mov	rcx, rbp
	mov	r9, r12
	call	mulredc2
	nop	
	mov	r8, rax
	shr	r14, 1
	mov	rbp, rbp
	mov	rbp, qword ptr [rbx]
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x2c]
	mov	rsp, rsp
	inc	eax
	mov	rsp, rsp
	jne	.label_339
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x30]
	mov	r14, qword ptr [rax + 8]
	mov	rbp, rbp
	test	r14, r14
	je	.label_337
	mov	rbx, r15
	nop	
	mov	qword ptr [rsp + 0x18], rbx
	lea	rdi, [rdi]
	mov	rcx, rdi
	mov	r15, r12
	nop	
.label_338:
	mov	rsp, rsp
	test	r14b, 1
	je	.label_333
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rbx
	lea	rdi, [rdi]
	mov	qword ptr [rsp], r13
	mov	rbp, rbp
	mov	r12, rcx
	mov	rsp, rsp
	mov	rdi, r12
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x38]
	mov	rcx, rbp
	mov	rbx, r8
	mov	r9, r15
	mov	rsp, rsp
	call	mulredc2
	lea	rsi, [rsi]
	mov	rcx, r12
	lea	rdi, [rdi]
	mov	r8, rbx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], rax
	mov	rax, qword ptr [rcx]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rax
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x18]
.label_333:
	nop	
	mov	qword ptr [rsp + 8], rbx
	nop	
	mov	qword ptr [rsp], r13
	mov	r12, rcx
	nop	
	mov	rdi, r12
	mov	rbp, rbp
	mov	rsi, rbp
	lea	rdi, [rdi]
	mov	rdx, r8
	mov	rcx, rbp
	lea	rsi, [rsi]
	mov	r9, r15
	mov	rsp, rsp
	call	mulredc2
	nop	
	mov	rcx, r12
	mov	r8, rax
	mov	rbp, qword ptr [rcx]
	shr	r14, 1
	mov	rsp, rsp
	jne	.label_338
	jmp	.label_336
.label_337:
	lea	rdi, [rdi]
	mov	rcx, rdi
.label_336:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x20]
	nop	
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x38]
	mov	rbp, rbp
	add	rsp, 0x48
	pop	rbx
	pop	r12
	nop	
	pop	r13
	mov	rbp, rbp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406c90

	.globl mulredc2
	.type mulredc2, @function
mulredc2:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rbp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	rbx, rdx
	mov	rsp, rsp
	mov	r14, rsi
	mov	rsp, rsp
	xor	r10d, r10d
	test	r14, r14
	mov	rbp, rbp
	js	.label_340
	mov	rbp, rbp
	test	rcx, rcx
	js	.label_343
	test	r9, r9
	lea	rdi, [rdi]
	js	.label_342
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0xe0]
	sub	r10, qword ptr [rsp + 0xe8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], r8
	mov	rbp, rbp
	mov	rax, rbx
	mul	qword ptr [rsp + 0x28]
	nop	
	mov	r12, rax
	mov	r15, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x60], rcx
	mov	rbp, rbp
	mov	rax, rbx
	mul	qword ptr [rsp + 0x60]
	mov	rsp, rsp
	mov	rbx, rax
	mov	r11, rdx
	mov	rsi, r12
	imul	rsi, r10
	mov	qword ptr [rsp + 0x68], rbp
	mov	rax, rsi
	mul	qword ptr [rsp + 0x68]
	lea	rsi, [rsi]
	mov	r13, rdx
	mov	qword ptr [rsp + 0x10], r9
	mov	rax, rsi
	mul	qword ptr [rsp + 0x10]
	nop	
	cmp	r12, 1
	mov	rbp, rbp
	sbb	rbx, -1
	mov	qword ptr [rsp + 0x88], r13
	add	rbx, qword ptr [rsp + 0x88]
	adc	r11, 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x58], r15
	add	rbx, qword ptr [rsp + 0x58]
	adc	r11, 0
	mov	qword ptr [rsp + 0x78], rdx
	mov	qword ptr [rsp + 0x80], rax
	add	rbx, qword ptr [rsp + 0x80]
	adc	r11, qword ptr [rsp + 0x78]
	mov	qword ptr [rsp + 0xa0], r8
	mov	rax, r14
	mul	qword ptr [rsp + 0xa0]
	lea	rdi, [rdi]
	mov	r15, rax
	mov	r8, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x70], rcx
	mov	rbp, rbp
	mov	rax, r14
	mul	qword ptr [rsp + 0x70]
	nop	
	mov	rsi, rax
	mov	rcx, rdx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x90], rbx
	add	r15, qword ptr [rsp + 0x90]
	adc	r8, 0
	imul	r10, r15
	mov	qword ptr [rsp + 0x98], r11
	add	rsi, qword ptr [rsp + 0x98]
	adc	rcx, 0
	mov	qword ptr [rsp + 0x50], rbp
	nop	
	mov	rax, r10
	mul	qword ptr [rsp + 0x50]
	nop	
	mov	rbx, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], r9
	mov	rax, r10
	mul	qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	cmp	r15, 1
	sbb	rsi, -1
	mov	qword ptr [rsp + 0x18], rbx
	add	rsi, qword ptr [rsp + 0x18]
	adc	rcx, 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], r8
	add	rsi, qword ptr [rsp + 8]
	adc	rcx, 0
	mov	qword ptr [rsp + 0x40], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rax
	add	rsi, qword ptr [rsp + 0x20]
	adc	rcx, qword ptr [rsp + 0x40]
	cmp	rcx, r9
	lea	rdi, [rdi]
	ja	.label_341
	mov	rbp, rbp
	jne	.label_344
	mov	rsp, rsp
	cmp	rsi, rbp
	lea	rsi, [rsi]
	jb	.label_344
.label_341:
	mov	qword ptr [rsp + 0x38], r9
	mov	qword ptr [rsp + 0x48], rbp
	sub	rsi, qword ptr [rsp + 0x48]
	sbb	rcx, qword ptr [rsp + 0x38]
.label_344:
	mov	rsp, rsp
	mov	qword ptr [rdi], rcx
	mov	rax, rsi
	add	rsp, 0xa8
	nop	
	pop	rbx
	nop	
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	nop	
	pop	rbp
	ret	
.label_340:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.46
	mov	esi, OFFSET FLAT:.str.42
	mov	edx, 0x3e7
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mulredc2
	call	__assert_fail
.label_343:
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str.47
	mov	esi, OFFSET FLAT:.str.42
	mov	rbp, rbp
	mov	edx, 0x3e8
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mulredc2
	call	__assert_fail
.label_342:
	mov	edi, OFFSET FLAT:.str.48
	nop	
	mov	esi, OFFSET FLAT:.str.42
	nop	
	mov	edx, 0x3e9
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mulredc2
	call	__assert_fail
	nop	
	.section	.text
	.align	16
	#Procedure 0x406f10

	.globl gcd2_odd
	.type gcd2_odd, @function
gcd2_odd:
	sub	rsp, 0x28
	test	r8b, 1
	je	.label_354
	mov	rax, rdx
	or	rax, rsi
	lea	rsi, [rsi]
	je	.label_360
	test	dl, 1
	mov	rsp, rsp
	jne	.label_357
	nop	word ptr cs:[rax + rax]
.label_345:
	mov	rax, rsi
	shld	rax, rdx, 0x3f
	lea	rsi, [rsi]
	shr	rsi, 1
	mov	rsp, rsp
	bt	rdx, 1
	lea	rdi, [rdi]
	mov	rdx, rax
	jae	.label_345
	jmp	.label_352
.label_360:
	mov	rsp, rsp
	mov	qword ptr [rdi], rcx
	lea	rdi, [rdi]
	jmp	.label_353
.label_357:
	mov	rax, rdx
.label_352:
	lea	rdi, [rdi]
	mov	rdx, rsi
	or	rdx, rcx
	lea	rsi, [rsi]
	jne	.label_356
	jmp	.label_363
.label_349:
	mov	rcx, rsi
.label_346:
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp + 0x10], r8
	sub	rax, qword ptr [rsp + 0x10]
	sbb	rsi, qword ptr [rsp + 8]
	nop	dword ptr [rax + rax]
.label_347:
	mov	rdx, rax
	mov	rsp, rsp
	mov	rax, rsi
	shld	rax, rdx, 0x3f
	shr	rsi, 1
	bt	rdx, 1
	nop	
	jae	.label_347
	lea	rsi, [rsi]
	jmp	.label_361
	nop	
.label_356:
	mov	rbp, rbp
	cmp	rsi, rcx
	lea	rsi, [rsi]
	ja	.label_346
	jne	.label_348
	lea	rsi, [rsi]
	cmp	rax, r8
	lea	rsi, [rsi]
	ja	.label_349
.label_348:
	cmp	rsi, rcx
	sete	r9b
	mov	rsp, rsp
	cmp	rax, r8
	lea	rsi, [rsi]
	sbb	dl, dl
	cmp	rcx, rsi
	ja	.label_351
	and	dl, r9b
	mov	rsp, rsp
	je	.label_359
.label_351:
	mov	qword ptr [rsp + 0x18], rsi
	mov	qword ptr [rsp + 0x20], rax
	sub	r8, qword ptr [rsp + 0x20]
	sbb	rcx, qword ptr [rsp + 0x18]
	nop	
.label_355:
	mov	rdx, r8
	mov	rbp, rbp
	mov	r8, rcx
	shld	r8, rdx, 0x3f
	mov	rsp, rsp
	shr	rcx, 1
	nop	
	bt	rdx, 1
	nop	
	jae	.label_355
.label_361:
	lea	rsi, [rsi]
	mov	rdx, rcx
	mov	rbp, rbp
	or	rdx, rsi
	jne	.label_356
.label_363:
	mov	rcx, r8
	mov	qword ptr [rdi], 0
	mov	rdx, rax
	and	rdx, 1
	lea	rsi, [rsi]
	mov	r8, rax
	cmove	r8, rcx
	test	rdx, rdx
	cmove	rcx, rax
	mov	rsp, rsp
	test	rcx, rcx
	je	.label_353
	mov	rbp, rbp
	shr	r8, 1
	jmp	.label_350
.label_358:
	lea	rdi, [rdi]
	mov	rax, rcx
	sar	rax, 0x3f
	mov	rsp, rsp
	mov	rdx, rax
	and	rdx, rcx
	add	r8, rdx
	xor	rcx, rax
	sub	rcx, rax
	nop	dword ptr [rax]
.label_350:
	lea	rsi, [rsi]
	mov	rax, rcx
	lea	rdi, [rdi]
	shr	rcx, 1
	nop	
	test	al, 1
	je	.label_350
	lea	rdi, [rdi]
	sub	rcx, r8
	nop	
	jne	.label_358
	lea	rsi, [rsi]
	or	rax, 1
	lea	rsi, [rsi]
	jmp	.label_362
.label_359:
	mov	qword ptr [rdi], rsi
.label_362:
	mov	r8, rax
.label_353:
	mov	rax, r8
	lea	rsi, [rsi]
	add	rsp, 0x28
	ret	
.label_354:
	mov	edi, OFFSET FLAT:.str.51
	mov	esi, OFFSET FLAT:.str.42
	nop	
	mov	edx, 0x1e3
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.gcd2_odd
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4070f0

	.globl mp_prime_p
	.type mp_prime_p, @function
mp_prime_p:
	push	rbp
	nop	
	push	r15
	push	r14
	nop	
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x68
	mov	r15, rdi
	nop	
	mov	esi, 1
	mov	rsp, rsp
	call	__gmpz_cmp_ui
	lea	rdi, [rdi]
	test	eax, eax
	jle	.label_368
	mov	esi, 0x17ded79
	lea	rdi, [rdi]
	mov	rdi, r15
	call	__gmpz_cmp_ui
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	al, 1
	mov	rbp, rbp
	test	ecx, ecx
	js	.label_372
	mov	rbp, rbp
	xor	r14d, r14d
	lea	r13, [rsp]
	lea	r12, [rsp + 0x30]
	lea	rbx, [rsp + 0x40]
	lea	rdi, [rdi]
	lea	rcx, [rsp + 0x20]
	nop	
	xor	r8d, r8d
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rdi, r13
	lea	rsi, [rsi]
	mov	rsi, r12
	mov	rsp, rsp
	mov	rdx, rbx
	call	__gmpz_inits
	mov	rbp, rbp
	mov	edx, 1
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rsi, r15
	call	__gmpz_sub_ui
	mov	rbp, rbp
	xor	esi, esi
	lea	rsi, [rsi]
	mov	rdi, rbx
	nop	
	call	__gmpz_scan1
	mov	rbp, rax
	mov	qword ptr [rsp + 0x10], rbp
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, rbp
	call	__gmpz_tdiv_q_2exp
	mov	rbp, rbp
	mov	esi, 2
	mov	rbp, rbp
	mov	rdi, r12
	mov	rsp, rsp
	call	__gmpz_set_ui
	mov	rsp, rsp
	mov	rdi, r15
	lea	rdi, [rdi]
	mov	rsi, rbx
	mov	rdx, r12
	lea	rsi, [rsi]
	lea	rcx, [rsp + 0x20]
	mov	rbp, rbp
	mov	r8, r13
	nop	
	mov	r9, rbp
	call	mp_millerrabin
	test	al, al
	nop	
	je	.label_373
	nop	
	lea	rbx, [rsp + 0x20]
	lea	r12, [rsp + 0x40]
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, r12
	call	__gmpz_set
	lea	rsi, [rsp + 0x50]
	mov	rdi, rbx
	mov	rsp, rsp
	call	mp_factor
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	qword ptr [rsp + 0x18], rax
	lea	rdi, [rdi]
	lea	r13, [rsp + 0x30]
	nop	dword ptr [rax + rax]
.label_370:
	mov	rbp, rbp
	mov	al, 1
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0x60], 0
	lea	rdi, [rdi]
	mov	ebp, 0
	mov	r14d, 1
	mov	rsp, rsp
	je	.label_364
	nop	word ptr cs:[rax + rax]
.label_369:
	mov	rdx, qword ptr [rsp + 0x50]
	nop	
	add	rdx, rbp
	mov	rdi, rbx
	mov	rsi, r12
	lea	rdi, [rdi]
	call	__gmpz_divexact
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, r13
	mov	rdx, rbx
	mov	rcx, r15
	mov	rsp, rsp
	call	__gmpz_powm
	mov	esi, 1
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	__gmpz_cmp_ui
	mov	rcx, qword ptr [rsp + 0x60]
	test	eax, eax
	je	.label_371
	mov	rbp, rbp
	add	rbp, 0x10
	cmp	r14, rcx
	nop	
	lea	r14, [r14 + 1]
	mov	rbp, rbp
	jb	.label_369
.label_371:
	test	eax, eax
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0x18]
	jne	.label_366
	movzx	edx, byte ptr [rbp + primes_diff]
	mov	rdi, r13
	mov	rsi, r13
	call	__gmpz_add_ui
	mov	rdi, r15
	lea	rsi, [rsi]
	mov	rsi, r12
	mov	rbp, rbp
	mov	rdx, r13
	mov	rcx, rbx
	lea	r8, [rsp]
	lea	rsi, [rsi]
	mov	r9, qword ptr [rsp + 0x10]
	nop	
	call	mp_millerrabin
	test	al, al
	mov	rsp, rsp
	je	.label_367
	inc	rbp
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rbp
	nop	
	cmp	rbp, 0x29b
	jbe	.label_370
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.43
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rcx, rax
	xor	edi, edi
	lea	rsi, [rsi]
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	rdx, rcx
	call	error
	lea	rdi, [rdi]
	call	abort
.label_368:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_372
.label_366:
	lea	rsi, [rsi]
	setne	al
	jmp	.label_365
.label_367:
	mov	rcx, qword ptr [rsp + 0x60]
	xor	eax, eax
.label_365:
	xor	edi, edi
	lea	rdi, [rdi]
	test	rcx, rcx
	lea	rdi, [rdi]
	je	.label_364
	mov	rsp, rsp
	mov	rbp, rax
	mov	ebx, 1
	nop	dword ptr [rax]
.label_374:
	lea	rdi, [rdi]
	shl	rdi, 4
	add	rdi, qword ptr [rsp + 0x50]
	mov	rbp, rbp
	call	__gmpz_clear
	mov	rbp, rbp
	mov	edi, ebx
	inc	ebx
	cmp	rdi, qword ptr [rsp + 0x60]
	jb	.label_374
	mov	rsp, rsp
	mov	rax, rbp
.label_364:
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rsp, rsp
	mov	r14, rax
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x58]
	call	free
.label_373:
	lea	rdi, [rsp]
	mov	rbp, rbp
	lea	rsi, [rsp + 0x30]
	lea	rdx, [rsp + 0x40]
	lea	rdi, [rdi]
	lea	rcx, [rsp + 0x20]
	xor	r8d, r8d
	xor	eax, eax
	call	__gmpz_clears
	test	r14b, r14b
	setne	al
.label_372:
	add	rsp, 0x68
	mov	rsp, rsp
	pop	rbx
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407430

	.globl mp_factor_insert
	.type mp_factor_insert, @function
mp_factor_insert:
	mov	rbp, rbp
	push	rbp
	nop	
	push	r15
	mov	rsp, rsp
	push	r14
	nop	
	push	r13
	mov	rbp, rbp
	push	r12
	lea	rsi, [rsi]
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x18
	nop	
	mov	r15, rsi
	mov	qword ptr [rsp + 8], rdi
	mov	r13, qword ptr [rdi + 0x10]
	mov	rcx, qword ptr [rdi]
	mov	rsp, rsp
	mov	rax, qword ptr [rdi + 8]
	mov	qword ptr [rsp + 0x10], rax
	lea	rsi, [rsi]
	mov	rbx, r13
	dec	rbx
	mov	rbp, rbp
	mov	r14, rbx
	js	.label_378
	mov	rax, r13
	lea	rsi, [rsi]
	shl	rax, 4
	lea	rbp, [rax + rcx - 0x10]
	mov	qword ptr [rsp], rcx
	mov	rax, r13
	nop	word ptr cs:[rax + rax]
.label_375:
	nop	
	mov	r12, rax
	nop	
	mov	rdi, rbp
	lea	rsi, [rsi]
	mov	rsi, r15
	call	__gmpz_cmp
	nop	
	lea	r14, [r12 - 1]
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	jle	.label_379
	lea	rax, [r12 - 1]
	lea	rdi, [rdi]
	add	rbp, -0x10
	lea	rsi, [rsi]
	test	rax, rax
	lea	rdi, [rdi]
	jg	.label_375
	mov	rbp, rbp
	add	r12, -2
	mov	r14, r12
	nop	
	mov	rcx, qword ptr [rsp]
	jmp	.label_378
.label_379:
	nop	
	mov	rcx, qword ptr [rsp]
	nop	
	je	.label_377
.label_378:
	mov	rsp, rsp
	lea	rsi, [r13 + 1]
	mov	qword ptr [rsp], rsi
	nop	
	shl	rsi, 4
	mov	rdi, rcx
	mov	rbp, rbp
	call	xrealloc
	mov	rsp, rsp
	mov	rbp, rax
	mov	rbp, rbp
	lea	rsi, [r13*8 + 8]
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	call	xrealloc
	nop	
	mov	r12, rax
	nop	
	shl	r13, 4
	add	r13, rbp
	lea	rdi, [rdi]
	mov	rdi, r13
	nop	
	call	__gmpz_init
	jmp	.label_376
	nop	word ptr [rax + rax]
.label_380:
	mov	rbp, rbp
	mov	rdi, r13
	mov	rsp, rsp
	lea	r13, [r13 - 0x10]
	lea	rsi, [rsi]
	mov	rsi, r13
	call	__gmpz_set
	mov	rsp, rsp
	mov	rax, qword ptr [r12 + rbx*8]
	lea	rsi, [rsi]
	mov	qword ptr [r12 + rbx*8 + 8], rax
	dec	rbx
.label_376:
	cmp	rbx, r14
	mov	rsp, rsp
	jg	.label_380
	lea	rax, [r14 + 1]
	shl	rax, 4
	mov	rdi, rbp
	add	rdi, rax
	mov	rsi, r15
	nop	
	call	__gmpz_set
	mov	rsp, rsp
	mov	qword ptr [r12 + r14*8 + 8], 1
	mov	rax, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rax], rbp
	mov	qword ptr [rax + 8], r12
	mov	rcx, qword ptr [rsp]
	mov	qword ptr [rax + 0x10], rcx
.label_381:
	lea	rsi, [rsi]
	add	rsp, 0x18
	pop	rbx
	mov	rsp, rsp
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_377:
	mov	rax, qword ptr [rsp + 0x10]
	inc	qword ptr [rax + r12*8 - 8]
	lea	rsi, [rsi]
	jmp	.label_381
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4075f0

	.globl mp_factor_using_pollard_rho
	.type mp_factor_using_pollard_rho, @function
mp_factor_using_pollard_rho:
	mov	rbp, rbp
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xb8
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x88], rdx
	mov	rbx, rsi
	mov	r13, rdi
	movzx	eax, byte ptr [rip + dev_debug]
	mov	rbp, rbp
	and	eax, 1
	cmp	eax, 1
	lea	rsi, [rsi]
	jne	.label_393
	mov	rdi, qword ptr [rip + stderr]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.55
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rcx, rbx
	call	__fprintf_chk
.label_393:
	mov	qword ptr [rsp + 0x38], rbx
	lea	rdi, [rsp + 0xa0]
	lea	rsi, [rsp + 0x90]
	mov	rbp, rbp
	xor	edx, edx
	xor	eax, eax
	call	__gmpz_inits
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0x10]
	mov	rsp, rsp
	mov	esi, 2
	mov	rsp, rsp
	call	__gmpz_init_set_si
	nop	
	lea	rdi, [rsp + 0x20]
	nop	
	mov	esi, 2
	call	__gmpz_init_set_si
	lea	rdi, [rsp + 0x40]
	mov	esi, 2
	nop	
	call	__gmpz_init_set_si
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0x60]
	mov	rsp, rsp
	mov	esi, 1
	call	__gmpz_init_set_ui
	mov	rsp, rsp
	mov	esi, 1
	nop	
	mov	rdi, r13
	mov	rbp, rbp
	call	__gmpz_cmp_ui
	test	eax, eax
	je	.label_388
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x38]
	mov	rbp, rbp
	inc	rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x50], rax
	mov	rbp, rbp
	mov	ecx, 1
	lea	r15, [rsp + 0xa0]
	lea	rdi, [rdi]
	lea	r12, [rsp + 0x20]
	lea	rbp, [rsp + 0x90]
	mov	rsp, rsp
	lea	r14, [rsp + 0x10]
	mov	eax, 1
	jmp	.label_390
.label_384:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, r12
	nop	
	call	__gmpz_set
	mov	rax, qword ptr [rsp + 0x80]
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rdi, [rdi]
	lea	rax, [rax + rax]
	nop	word ptr cs:[rax + rax]
.label_390:
	mov	qword ptr [rsp + 0x80], rax
.label_391:
	nop	
	mov	qword ptr [rsp + 0x58], rcx
	and	ecx, 0x1f
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x78], rcx
	mov	rsp, rsp
	lea	rbx, [rsp + 0x40]
	nop	word ptr cs:[rax + rax]
.label_386:
	mov	rdi, r15
	mov	rsp, rsp
	mov	rsi, r12
	mov	rsp, rsp
	mov	rdx, r12
	call	__gmpz_mul
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r13
	lea	rdi, [rdi]
	call	__gmpz_mod
	mov	rdi, r12
	lea	rdi, [rdi]
	mov	rsi, r12
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x38]
	call	__gmpz_add_ui
	lea	rsi, [rsi]
	mov	rdi, r15
	lea	rdi, [rdi]
	mov	rsi, rbx
	mov	rsp, rsp
	mov	rdx, r12
	call	__gmpz_sub
	lea	rsi, [rsi]
	mov	rdi, rbp
	lea	rbx, [rsp + 0x60]
	lea	rsi, [rsi]
	mov	rsi, rbx
	lea	rdi, [rdi]
	mov	rdx, r15
	call	__gmpz_mul
	lea	rdi, [rdi]
	mov	rdi, rbx
	mov	rsi, rbp
	nop	
	mov	rdx, r13
	call	__gmpz_mod
	cmp	qword ptr [rsp + 0x78], 1
	jne	.label_382
	mov	rsp, rsp
	mov	rdi, r15
	mov	rbp, rbp
	mov	rsi, rbx
	lea	rsi, [rsi]
	mov	rdx, r13
	mov	rbp, rbp
	call	__gmpz_gcd
	lea	rdi, [rdi]
	mov	esi, 1
	mov	rdi, r15
	lea	rdi, [rdi]
	call	__gmpz_cmp_ui
	mov	rbp, rbp
	test	eax, eax
	nop	
	lea	rbx, [rsp + 0x40]
	mov	rsp, rsp
	mov	r12, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	je	.label_387
	nop	word ptr cs:[rax + rax]
.label_389:
	lea	rsi, [rsi]
	mov	rdi, r15
	mov	rsp, rsp
	mov	rsi, r14
	mov	rdx, r14
	call	__gmpz_mul
	lea	rsi, [rsi]
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, r13
	mov	rbp, rbp
	call	__gmpz_mod
	mov	rdi, r14
	mov	rsi, r14
	mov	rdx, r12
	mov	rbp, rbp
	call	__gmpz_add_ui
	lea	rdi, [rdi]
	mov	rdi, r15
	mov	rsp, rsp
	mov	rsi, rbx
	mov	rdx, r14
	call	__gmpz_sub
	mov	rdi, r15
	lea	rsi, [rsi]
	mov	rsi, r15
	lea	rdi, [rdi]
	mov	rdx, r13
	call	__gmpz_gcd
	mov	esi, 1
	mov	rdi, r15
	nop	
	call	__gmpz_cmp_ui
	test	eax, eax
	mov	rsp, rsp
	je	.label_389
	lea	rdi, [rdi]
	mov	rdi, r13
	mov	rsi, r13
	lea	rdi, [rdi]
	mov	rdx, r15
	call	__gmpz_divexact
	mov	rdi, r15
	call	mp_prime_p
	test	al, al
	lea	rsi, [rsi]
	je	.label_394
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x88]
	nop	
	mov	rsi, r15
	call	mp_factor_insert
	mov	rbp, rbp
	jmp	.label_383
	nop	word ptr cs:[rax + rax]
.label_394:
	mov	rsp, rsp
	movzx	eax, byte ptr [rip + dev_debug]
	and	eax, 1
	cmp	eax, 1
	lea	rdi, [rdi]
	jne	.label_385
	mov	rdi, qword ptr [rip + stderr]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.56
	xor	eax, eax
	mov	rbp, rbp
	call	__fprintf_chk
.label_385:
	mov	rdi, r15
	mov	rsi, qword ptr [rsp + 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x88]
	call	mp_factor_using_pollard_rho
.label_383:
	lea	rsi, [rsi]
	mov	rdi, r13
	call	mp_prime_p
	test	al, al
	nop	
	jne	.label_395
	mov	rsp, rsp
	lea	r12, [rsp + 0x20]
	mov	rdi, r12
	lea	rsi, [rsi]
	mov	rsi, r12
	nop	
	mov	rdx, r13
	call	__gmpz_mod
	lea	rdi, [rdi]
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rsi, rbx
	mov	rdx, r13
	nop	
	call	__gmpz_mod
	mov	rdi, r14
	mov	rsi, r14
	mov	rdx, r13
	call	__gmpz_mod
	mov	esi, 1
	mov	rbp, rbp
	mov	rdi, r13
	call	__gmpz_cmp_ui
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_386
	jmp	.label_388
	nop	dword ptr [rax]
.label_387:
	mov	rdi, r14
	lea	rsi, [rsp + 0x20]
	call	__gmpz_set
.label_382:
	mov	rcx, qword ptr [rsp + 0x58]
	dec	rcx
	lea	rsi, [rsi]
	lea	r12, [rsp + 0x20]
	jne	.label_391
	mov	rbp, rbp
	lea	rdi, [rsp + 0x40]
	lea	rsi, [rsi]
	mov	rsi, r12
	mov	rsp, rsp
	call	__gmpz_set
	mov	rbx, qword ptr [rsp + 0x80]
	test	rbx, rbx
	je	.label_384
	nop	word ptr [rax + rax]
.label_392:
	mov	rdi, r15
	lea	rsi, [rsi]
	mov	rsi, r12
	mov	rsp, rsp
	mov	rdx, r12
	call	__gmpz_mul
	mov	rdi, r12
	mov	rsp, rsp
	mov	rsi, r15
	lea	rsi, [rsi]
	mov	rdx, r13
	call	__gmpz_mod
	mov	rsp, rsp
	mov	rdi, r12
	nop	
	mov	rsi, r12
	mov	rdx, qword ptr [rsp + 0x38]
	mov	rbp, rbp
	call	__gmpz_add_ui
	lea	rdi, [rdi]
	dec	rbx
	lea	rsi, [rsi]
	jne	.label_392
	jmp	.label_384
.label_395:
	nop	
	mov	rdi, qword ptr [rsp + 0x88]
	mov	rsi, r13
	call	mp_factor_insert
.label_388:
	mov	qword ptr [rsp], 0
	mov	rsp, rsp
	lea	rdi, [rsp + 0x60]
	lea	rsi, [rsp + 0x90]
	lea	rdx, [rsp + 0xa0]
	lea	rcx, [rsp + 0x40]
	lea	r8, [rsp + 0x20]
	lea	r9, [rsp + 0x10]
	lea	rsi, [rsi]
	xor	eax, eax
	call	__gmpz_clears
	add	rsp, 0xb8
	mov	rbp, rbp
	pop	rbx
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	nop	
	pop	r15
	nop	
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407af0

	.globl mp_millerrabin
	.type mp_millerrabin, @function
mp_millerrabin:
	mov	rbp, rbp
	push	r15
	nop	
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	push	rbx
	mov	r14, r9
	mov	r13, rcx
	mov	rsp, rsp
	mov	r15, rsi
	mov	r12, rdi
	lea	rsi, [rsi]
	mov	rdi, r13
	lea	rdi, [rdi]
	mov	rsi, rdx
	nop	
	mov	rdx, r8
	mov	rcx, r12
	lea	rsi, [rsi]
	call	__gmpz_powm
	mov	esi, 1
	mov	rsp, rsp
	mov	rdi, r13
	call	__gmpz_cmp_ui
	mov	rbp, rbp
	test	eax, eax
	je	.label_401
	mov	rdi, r13
	mov	rbp, rbp
	mov	rsi, r15
	call	__gmpz_cmp
	test	eax, eax
	nop	
	je	.label_399
	lea	rdi, [rdi]
	mov	ebx, 2
	nop	
	cmp	r14, 2
	jb	.label_398
	nop	word ptr [rax + rax]
.label_396:
	mov	edx, 2
	mov	rdi, r13
	lea	rdi, [rdi]
	mov	rsi, r13
	mov	rcx, r12
	call	__gmpz_powm_ui
	mov	rbp, rbp
	mov	rdi, r13
	lea	rsi, [rsi]
	mov	rsi, r15
	call	__gmpz_cmp
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_400
	lea	rsi, [rsi]
	mov	esi, 1
	mov	rdi, r13
	nop	
	call	__gmpz_cmp_ui
	mov	rsp, rsp
	mov	ecx, eax
	xor	eax, eax
	lea	rsi, [rsi]
	test	ecx, ecx
	nop	
	je	.label_397
	cmp	rbx, r14
	lea	rbx, [rbx + 1]
	lea	rdi, [rdi]
	jb	.label_396
	lea	rdi, [rdi]
	jmp	.label_397
.label_401:
	mov	al, 1
	jmp	.label_397
.label_399:
	mov	al, 1
	nop	
	jmp	.label_397
.label_398:
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_397
.label_400:
	mov	al, 1
.label_397:
	pop	rbx
	nop	
	pop	r12
	nop	
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	ret	
	nop	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x407c00
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	rbp, rbp
	mov	qword ptr [rip + file_name],  rdi
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x407c10
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407c20

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	lea	rsi, [rsi]
	push	rbx
	mov	rsp, rsp
	push	rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rip + stdout]
	mov	rsp, rsp
	call	close_stream
	test	eax, eax
	je	.label_405
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rbp
	mov	rbp, rax
	mov	rsp, rsp
	cmp	bl, 0
	je	.label_402
	mov	rsp, rsp
	cmp	dword ptr [rbp], 0x20
	jne	.label_402
.label_405:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	nop	
	jne	.label_403
	nop	
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_402:
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str_2
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_404
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	nop	
	mov	esi, ebp
	lea	rdi, [rdi]
	mov	rcx, rbx
	mov	rsp, rsp
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	mov	rsp, rsp
	call	_exit
.label_403:
	mov	edi, dword ptr [rip + exit_failure]
	mov	rbp, rbp
	call	_exit
.label_404:
	nop	
	call	quotearg_colon
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_0
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	esi, ebp
	lea	rsi, [rsi]
	mov	r8, rbx
	call	error
	mov	rsp, rsp
	mov	edi, dword ptr [rip + exit_failure]
	mov	rbp, rbp
	call	_exit
	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407d20

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
	#Procedure 0x407d80

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	lea	rdi, [rdi]
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	dword ptr [rax + rax]
.label_409:
	mov	rbp, rbp
	mov	rax, rcx
	lea	rdi, [rdi]
	mul	r8
	mov	rsp, rsp
	shr	rdx, 3
	lea	eax, [rdx + rdx]
	mov	rbp, rbp
	lea	eax, [rax + rax*4]
	mov	edi, ecx
	sub	edi, eax
	or	edi, 0x30
	lea	rsi, [rsi]
	mov	byte ptr [rsi - 1], dil
	mov	rbp, rbp
	dec	rsi
	cmp	rcx, 9
	mov	rcx, rdx
	ja	.label_409
	mov	rax, rsi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407de0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	lea	rsi, [rsi]
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_410
	mov	esi, 0x2f
	mov	rbp, rbp
	mov	rdi, rbx
	call	strrchr
	mov	rbp, rbp
	test	rax, rax
	lea	rsi, [rsi]
	lea	r14, [rax + 1]
	lea	rdi, [rdi]
	cmove	r14, rbx
	mov	rax, r14
	nop	
	sub	rax, rbx
	mov	rbp, rbp
	cmp	rax, 7
	lea	rsi, [rsi]
	jl	.label_412
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_412
	mov	esi, OFFSET FLAT:.str.2_0
	lea	rdi, [rdi]
	mov	edx, 3
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strncmp
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_411
	nop	
	add	r14, 3
	mov	qword ptr [rip + program_invocation_short_name],  r14
.label_411:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_412:
	mov	rsp, rsp
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_410:
	mov	rcx, qword ptr [rip + stderr]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str_3
	mov	rbp, rbp
	mov	esi, 0x37
	lea	rsi, [rsi]
	mov	edx, 1
	call	fwrite
	lea	rsi, [rsi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407ed0
	.globl proper_name
	.type proper_name, @function
proper_name:

	push	r15
	mov	rbp, rbp
	push	r14
	push	rbx
	lea	rsi, [rsi]
	mov	rbx, rdi
	xor	edi, edi
	mov	rbp, rbp
	mov	edx, 5
	mov	rsp, rsp
	mov	rsi, rbx
	call	dcgettext
	mov	r14, rax
	lea	rdi, [rdi]
	cmp	r14, rbx
	je	.label_413
	mov	rdi, r14
	mov	rsi, rbx
	call	mbsstr_trimmed_wordbounded
	test	al, al
	lea	rdi, [rdi]
	je	.label_414
	mov	rbp, rbp
	mov	rbx, r14
	jmp	.label_413
.label_414:
	mov	rbp, rbp
	mov	rdi, r14
	call	strlen
	mov	r15, rax
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	strlen
	lea	rsi, [rsi]
	lea	rdi, [r15 + rax + 4]
	call	xmalloc
	lea	rdi, [rdi]
	mov	r15, rax
	lea	rdi, [rdi]
	mov	esi, 1
	lea	rdi, [rdi]
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str_4
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	rdi, r15
	mov	r8, r14
	mov	r9, rbx
	call	__sprintf_chk
	nop	
	mov	rbx, r15
.label_413:
	mov	rsp, rsp
	mov	rax, rbx
	pop	rbx
	nop	
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407f90

	.globl mbsstr_trimmed_wordbounded
	.type mbsstr_trimmed_wordbounded, @function
mbsstr_trimmed_wordbounded:
	mov	rsp, rsp
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	r13
	mov	rbp, rbp
	push	r12
	mov	rbp, rbp
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x88
	mov	rax, rsi
	mov	rsp, rsp
	mov	rbp, rdi
	mov	rsp, rsp
	mov	esi, 2
	mov	rdi, rax
	mov	rsp, rsp
	call	trim2
	mov	qword ptr [rsp + 0x80], rax
	cmp	byte ptr [rbp], 0
	je	.label_415
	lea	r12, [rsp + 0x40]
	lea	r15, [rsp]
	nop	word ptr [rax + rax]
.label_429:
	mov	rbp, rbp
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x80]
	call	mbsstr
	mov	rbx, rax
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_415
	lea	rsi, [rsi]
	call	__ctype_get_mb_cur_max
	lea	rdi, [rdi]
	cmp	rax, 2
	nop	
	jb	.label_418
	mov	qword ptr [rsp + 0x50], rbp
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x40], 0
	nop	
	mov	qword ptr [rsp + 0x44], 0
	nop	
	mov	byte ptr [rsp + 0x4c], 0
	mov	r13b, 1
	cmp	rbp, rbx
	mov	rsp, rsp
	jae	.label_419
.label_432:
	mov	rdi, r12
	lea	rdi, [rdi]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x60]
	nop	
	mov	rdi, rax
	shr	rdi, 0x20
	nop	
	test	al, al
	mov	rsp, rsp
	je	.label_430
	test	edi, edi
	lea	rsi, [rsi]
	je	.label_420
.label_430:
	nop	
	mov	rcx, qword ptr [rsp + 0x50]
	add	rcx, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x50], rcx
	mov	byte ptr [rsp + 0x4c], 0
	nop	
	cmp	rcx, rbx
	mov	rsp, rsp
	jb	.label_432
	test	al, al
	je	.label_419
	call	iswalnum
	test	eax, eax
	sete	r13b
.label_419:
	mov	qword ptr [rsp + 0x50], rbx
	nop	
	mov	byte ptr [rsp + 0x40], 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x44], 0
	mov	byte ptr [rsp + 0x4c], 0
	mov	rax, qword ptr [rsp + 0x80]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rax
	nop	
	mov	byte ptr [rsp], 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 4], 0
	lea	rsi, [rsi]
	jmp	.label_422
	nop	dword ptr [rax]
.label_427:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	add	qword ptr [rsp + 0x50], rax
	mov	byte ptr [rsp + 0x4c], 0
	nop	
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	add	qword ptr [rsp + 0x10], rax
.label_422:
	mov	byte ptr [rsp + 0xc], 0
	lea	rsi, [rsi]
	mov	rdi, r15
	lea	rdi, [rdi]
	call	mbuiter_multi_next
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x20]
	test	al, al
	nop	
	je	.label_421
	lea	rdi, [rdi]
	shr	rax, 0x20
	je	.label_423
.label_421:
	lea	rdi, [rdi]
	mov	rdi, r12
	mov	rbp, rbp
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x60]
	lea	rdi, [rdi]
	test	al, al
	je	.label_427
	lea	rdi, [rdi]
	shr	rax, 0x20
	jne	.label_427
	mov	rbp, rbp
	jmp	.label_420
	nop	dword ptr [rax + rax]
.label_418:
	mov	rsp, rsp
	mov	r13b, 1
	cmp	rbp, rbx
	nop	
	mov	r14b, 1
	lea	rdi, [rdi]
	jae	.label_424
	mov	rsp, rsp
	movzx	ebp, byte ptr [rbx - 1]
	mov	rbp, rbp
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + rbp*2], 8
	mov	rsp, rsp
	sete	r14b
.label_424:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x80]
	nop	
	call	strlen
	lea	rsi, [rsi]
	movzx	ebp, byte ptr [rbx + rax]
	test	rbp, rbp
	lea	rsi, [rsi]
	je	.label_425
	nop	
	call	__ctype_b_loc
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	test	byte ptr [rax + rbp*2], 8
	lea	rdi, [rdi]
	sete	r13b
.label_425:
	mov	bpl, 1
	test	r14b, r13b
	lea	rdi, [rdi]
	jne	.label_426
	mov	rsp, rsp
	cmp	byte ptr [rbx], 0
	je	.label_415
	mov	rsp, rsp
	inc	rbx
	jmp	.label_431
	nop	
.label_423:
	lea	rsi, [rsi]
	mov	rdi, r12
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x60]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	shr	rdi, 0x20
	mov	rsp, rsp
	test	edi, edi
	sete	cl
	mov	rsp, rsp
	test	al, al
	setne	dl
	test	al, al
	mov	bpl, 1
	lea	rdi, [rdi]
	mov	al, 1
	lea	rsi, [rsi]
	je	.label_417
	and	dl, cl
	mov	al, 1
	mov	rsp, rsp
	jne	.label_417
	call	iswalnum
	test	eax, eax
	sete	al
.label_417:
	test	r13b, r13b
	lea	rdi, [rdi]
	je	.label_428
	nop	
	test	al, al
	mov	rsp, rsp
	jne	.label_426
.label_428:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x50], rbx
	nop	
	mov	byte ptr [rsp + 0x40], 0
	mov	qword ptr [rsp + 0x44], 0
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0x4c], 0
	lea	rsi, [rsi]
	mov	rdi, r12
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x60]
	test	al, al
	lea	rdi, [rdi]
	je	.label_416
	shr	rax, 0x20
	mov	rsp, rsp
	je	.label_415
.label_416:
	add	rbx, qword ptr [rsp + 0x58]
.label_431:
	mov	rbp, rbx
	cmp	byte ptr [rbp], 0
	mov	rsp, rsp
	jne	.label_429
.label_415:
	xor	ebp, ebp
.label_426:
	mov	rdi, qword ptr [rsp + 0x80]
	call	free
	lea	rdi, [rdi]
	mov	al, bpl
	add	rsp, 0x88
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	ret	
.label_420:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4082f0

	.globl proper_name_utf8
	.type proper_name_utf8, @function
proper_name_utf8:
	nop	
	push	rbp
	push	r15
	push	r14
	nop	
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	sub	rsp, 0x18
	mov	rbp, rbp
	mov	r13, rsi
	mov	r12, rdi
	xor	edi, edi
	mov	edx, 5
	lea	rdi, [rdi]
	mov	rsi, r12
	call	dcgettext
	mov	rbx, rax
	call	locale_charset
	mov	rsp, rsp
	mov	r14, rax
	mov	esi, OFFSET FLAT:.str.1_2
	mov	rdi, r14
	call	c_strcasecmp
	lea	rsi, [rsi]
	test	eax, eax
	nop	
	je	.label_443
	nop	
	mov	qword ptr [rsp + 0x10], rbx
	nop	
	mov	esi, OFFSET FLAT:.str.1_2
	nop	
	mov	rdi, r13
	mov	rdx, r14
	lea	rdi, [rdi]
	call	xstr_iconv
	mov	r15, rax
	mov	rdi, r14
	nop	
	call	strlen
	nop	
	mov	rbx, rax
	lea	rdi, [rbx + 0xb]
	call	xmalloc
	nop	
	mov	rbp, rax
	lea	rsi, [rsi]
	mov	rdi, rbp
	mov	rbp, rbp
	mov	rsi, r14
	mov	rbp, rbp
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	memcpy
	movabs	rax, 0x4c534e4152542f2f
	mov	qword ptr [rbp + rbx], rax
	mov	byte ptr [rbp + rbx + 0xa], 0
	lea	rsi, [rsi]
	mov	word ptr [rbp + rbx + 8], 0x5449
	mov	esi, OFFSET FLAT:.str.1_2
	mov	rdi, r13
	mov	rdx, rbp
	mov	rbp, rbp
	call	xstr_iconv
	mov	rsp, rsp
	mov	r13, rax
	mov	rdi, rbp
	call	free
	test	r13, r13
	mov	rsp, rsp
	je	.label_435
	mov	esi, 0x3f
	mov	rbp, rbp
	mov	rdi, r13
	lea	rsi, [rsi]
	call	strchr
	lea	rdi, [rdi]
	test	rax, rax
	nop	
	je	.label_445
	nop	
	mov	rdi, r13
	nop	
	call	free
	xor	r13d, r13d
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	jmp	.label_434
.label_443:
	mov	rbp, rbp
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rdi]
	mov	r15, r13
	xor	ebp, ebp
	jmp	.label_438
.label_435:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rdi]
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_434
.label_445:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], r13
.label_434:
	mov	rbp, r15
	mov	rbx, qword ptr [rsp + 0x10]
.label_438:
	lea	rsi, [rsi]
	test	r13, r13
	mov	r14, r12
	cmovne	r14, r13
	mov	rbp, rbp
	test	r15, r15
	cmovne	r14, r15
	mov	rbp, rbp
	mov	rdi, rbx
	mov	rsi, r12
	mov	rsp, rsp
	call	strcmp
	test	eax, eax
	je	.label_446
	mov	rdi, rbx
	mov	rsi, r12
	mov	rbp, rbp
	call	mbsstr_trimmed_wordbounded
	test	al, al
	jne	.label_441
	mov	rsp, rsp
	test	r15, r15
	nop	
	je	.label_436
	mov	rdi, rbx
	mov	rsi, r15
	nop	
	call	mbsstr_trimmed_wordbounded
	lea	rdi, [rdi]
	test	al, al
	nop	
	jne	.label_441
.label_436:
	test	r13, r13
	je	.label_440
	mov	rsp, rsp
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, r13
	nop	
	call	mbsstr_trimmed_wordbounded
	test	al, al
	je	.label_440
.label_441:
	test	rbp, rbp
	lea	rsi, [rsi]
	je	.label_444
	nop	
	mov	rdi, rbp
	mov	rsp, rsp
	call	free
.label_444:
	nop	
	mov	rdi, qword ptr [rsp + 8]
	test	rdi, rdi
	je	.label_442
	nop	
	call	free
	mov	rsp, rsp
	jmp	.label_442
.label_446:
	test	rbp, rbp
	mov	rsp, rsp
	je	.label_433
	lea	rdi, [rdi]
	cmp	rbp, r14
	mov	rbp, rbp
	je	.label_433
	mov	rdi, rbp
	lea	rdi, [rdi]
	call	free
.label_433:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, rbp
	test	rdi, rdi
	je	.label_439
	cmp	rdi, r14
	je	.label_439
	nop	
	call	free
.label_439:
	nop	
	mov	rbx, r14
	jmp	.label_442
.label_440:
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	strlen
	mov	r15, rbx
	mov	rbx, rax
	mov	rdi, r14
	nop	
	call	strlen
	nop	
	lea	rdi, [rbx + rax + 4]
	call	xmalloc
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	rsp, rsp
	mov	esi, 1
	lea	rdi, [rdi]
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str_4
	xor	eax, eax
	mov	rsp, rsp
	mov	rdi, rbx
	mov	r8, r15
	nop	
	mov	r9, r14
	lea	rdi, [rdi]
	call	__sprintf_chk
	lea	rdi, [rdi]
	test	rbp, rbp
	je	.label_437
	mov	rdi, rbp
	call	free
.label_437:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, rbp
	test	rdi, rdi
	mov	rsp, rsp
	je	.label_442
	lea	rsi, [rsi]
	call	free
.label_442:
	mov	rax, rbx
	add	rsp, 0x18
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	mov	rsp, rsp
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4085e0
	.globl clone_quoting_options
	.type clone_quoting_options, @function
clone_quoting_options:

	nop
	push	rbp
	lea	rsi, [rsi]
	push	r14
	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	mov	rbp, rbp
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	cmove	rbx, rax
	mov	rsp, rsp
	mov	esi, 0x38
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	xmemdup
	nop	
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x408630
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	lea	rsi, [rsi]
	test	rdi, rdi
	lea	rdi, [rdi]
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	lea	rdi, [rdi]
	mov	eax, dword ptr [rax]
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408650
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	nop	
	cmovne	rax, rdi
	lea	rdi, [rdi]
	mov	dword ptr [rax], esi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408670
	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:

	lea	rsi, [rsi]
	mov	ecx, esi
	nop	
	test	rdi, rdi
	mov	esi, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	cmovne	rsi, rdi
	mov	al, cl
	lea	rdi, [rdi]
	shr	al, 5
	mov	rbp, rbp
	movzx	r8d, al
	mov	rsp, rsp
	mov	r9d, dword ptr [rsi + r8*4 + 8]
	mov	rsp, rsp
	mov	edi, r9d
	mov	rsp, rsp
	shr	edi, cl
	lea	rdi, [rdi]
	mov	eax, edi
	mov	rsp, rsp
	and	eax, 1
	mov	rsp, rsp
	xor	edi, edx
	mov	rbp, rbp
	and	edi, 1
	mov	rsp, rsp
	shl	edi, cl
	lea	rsi, [rsi]
	xor	edi, r9d
	mov	rbp, rbp
	mov	dword ptr [rsi + r8*4 + 8], edi
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4086e0
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	mov	rbp, rbp
	test	rdi, rdi
	nop	
	mov	ecx, OFFSET FLAT:default_quoting_options
	cmovne	rcx, rdi
	mov	eax, dword ptr [rcx + 4]
	mov	rsp, rsp
	mov	dword ptr [rcx + 4], esi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408700
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	lea	rdi, [rdi]
	cmovne	rax, rdi
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_447
	test	rdx, rdx
	nop	
	je	.label_447
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_447:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408740
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], rcx
	nop	
	mov	r15, rdx
	mov	r12, rsi
	mov	r13, rdi
	lea	rdi, [rdi]
	test	r8, r8
	mov	ebp, OFFSET FLAT:default_quoting_options
	cmovne	rbp, r8
	call	__errno_location
	mov	rbp, rbp
	mov	rbx, rax
	nop	
	mov	r14d, dword ptr [rbx]
	mov	r8, qword ptr [rbp]
	mov	rax, qword ptr [rbp + 0x28]
	mov	r9, r8
	shr	r9, 0x20
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp + 0x30]
	mov	rsp, rsp
	add	rbp, 8
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	nop	
	mov	qword ptr [rsp], rbp
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x20]
	call	quotearg_buffer_restyled
	mov	dword ptr [rbx], r14d
	add	rsp, 0x28
	pop	rbx
	mov	rbp, rbp
	pop	r12
	nop	
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4087f0

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	nop	
	sub	rsp, 0x118
	mov	ebx, r9d
	nop	
	mov	dword ptr [rsp + 0x38], ebx
	mov	r15d, r8d
	mov	r13, rcx
	mov	qword ptr [rsp + 0x88], rdx
	mov	rbp, rbp
	mov	rbp, rsi
	mov	qword ptr [rsp + 0xb0], rdi
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x160]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x100], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x158]
	mov	qword ptr [rsp + 0x78], rax
	call	__ctype_get_mb_cur_max
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xb8], rax
	mov	r12b, bl
	mov	rbp, rbp
	shr	r12b, 1
	mov	rbp, rbp
	and	r12b, 1
	nop	
	mov	eax, ebx
	and	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x3c], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x44], ebx
	mov	rsp, rsp
	mov	r8b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xd8], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, 0
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xe8], 0
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x68], rcx
.label_537:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x58], rcx
	lea	rsi, [rsi]
	mov	ecx, r15d
	lea	rdi, [rdi]
	cmp	r15d, 0xa
	ja	.label_513
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	rsp, rsp
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, r13
	jmp	qword ptr [(rcx * 8) + label_520]
.label_943:
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.11_0
	nop	
	mov	esi, r15d
	mov	r14, r10
	nop	
	mov	bl, r8b
	call	gettext_quote
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:.str.12_0
	mov	esi, r15d
	mov	rsp, rsp
	call	gettext_quote
	mov	r8b, bl
	mov	rsp, rsp
	mov	r10, r14
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x100], rax
.label_944:
	mov	byte ptr [rsp + 0x43], r8b
	mov	r13, rbp
	nop	
	test	r12b, 1
	nop	
	mov	eax, 0
	mov	qword ptr [rsp + 0x58], rax
	mov	rdx, qword ptr [rsp + 0x78]
	jne	.label_542
	mov	rbp, rbp
	mov	al, byte ptr [rdx]
	mov	rbp, rbp
	test	al, al
	mov	rsp, rsp
	mov	ecx, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x58], rcx
	je	.label_542
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x58], rcx
	nop	dword ptr [rax]
.label_562:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_555
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rcx + rsi], al
.label_555:
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + rcx + 1]
	mov	rsp, rsp
	inc	rcx
	mov	qword ptr [rsp + 0x58], rcx
	mov	rbp, rbp
	test	al, al
	lea	rsi, [rsi]
	jne	.label_562
.label_542:
	nop	
	mov	rbp, qword ptr [rsp + 0x100]
	lea	rdi, [rdi]
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rbx, r10
	mov	rbp, rbp
	call	strlen
	mov	r10, rbx
	mov	qword ptr [rsp + 0xf0], rax
	mov	rbp, rbp
	mov	r9d, r15d
	mov	qword ptr [rsp + 0x20], rbp
	nop	
	mov	dil, 1
	mov	sil, r12b
	mov	rbp, r13
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rsp + 0x43]
	mov	r11, qword ptr [rsp + 0x88]
	jmp	.label_461
.label_936:
	mov	rbp, rbp
	xor	r9d, r9d
	xor	ecx, ecx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x58], rcx
	lea	rsi, [rsi]
	mov	dil, al
	lea	rsi, [rsi]
	xor	esi, esi
	nop	
	jmp	.label_461
.label_939:
	lea	rsi, [rsi]
	mov	al, 1
.label_937:
	mov	rbp, rbp
	mov	r12b, 1
.label_940:
	mov	rbp, rbp
	test	r12b, 1
	mov	cl, 1
	nop	
	je	.label_473
	lea	rsi, [rsi]
	mov	cl, al
.label_473:
	mov	rsp, rsp
	mov	al, cl
.label_938:
	mov	r9d, 2
	test	r12b, 1
	mov	rsp, rsp
	jne	.label_478
	test	r10, r10
	je	.label_484
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx], 0x27
	mov	rsp, rsp
	mov	ecx, 1
	mov	rsp, rsp
	jmp	.label_485
.label_478:
	xor	ecx, ecx
	jmp	.label_485
.label_941:
	mov	rsp, rsp
	mov	r9d, 5
	test	r12b, 1
	jne	.label_497
	lea	rdi, [rdi]
	test	r10, r10
	je	.label_500
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax], 0x22
	mov	rsp, rsp
	mov	eax, 1
	jmp	.label_506
.label_942:
	mov	dil, 1
	mov	r9d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, OFFSET FLAT:.str.10_0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xf0], rax
	mov	sil, 1
	jmp	.label_461
.label_484:
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_485:
	nop	
	mov	qword ptr [rsp + 0x58], rcx
	nop	
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0x20], rcx
	mov	rbp, rbp
	mov	ecx, 1
	mov	qword ptr [rsp + 0xf0], rcx
	nop	
	mov	dil, al
	mov	sil, r12b
	jmp	.label_461
.label_497:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_506
.label_500:
	lea	rdi, [rdi]
	mov	eax, 1
.label_506:
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rax
	mov	eax, 1
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xf0], rax
	mov	rbp, rbp
	mov	dil, 1
	nop	
	mov	sil, r12b
	nop	dword ptr [rax + rax]
.label_461:
	mov	qword ptr [rsp + 0x30], rsi
	mov	byte ptr [rsp + 0xa7], dil
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0x150], 0
	setne	dl
	lea	rsi, [rsi]
	cmp	r9d, 2
	setne	r15b
	sete	al
	mov	cl, dil
	lea	rdi, [rdi]
	and	cl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0xc3], cl
	sete	byte ptr [rsp + 0x97]
	lea	rsi, [rsi]
	mov	bl, r15b
	mov	rsp, rsp
	and	bl, cl
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x65], bl
	cmp	qword ptr [rsp + 0xf0], 0
	setne	r13b
	mov	r12b, r13b
	lea	rdi, [rdi]
	and	r12b, bl
	mov	byte ptr [rsp + 0x67], r12b
	mov	bl, sil
	and	bl, 1
	mov	rsp, rsp
	mov	byte ptr [rsp + 0xe7], bl
	sete	cl
	and	al, bl
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x77], al
	and	dl, bl
	mov	rsp, rsp
	mov	byte ptr [rsp + 0xd7], dl
	mov	rsp, rsp
	or	cl, r15b
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x66], cl
	lea	rdi, [rdi]
	and	dil, sil
	lea	rsi, [rsi]
	and	dil, r13b
	mov	byte ptr [rsp + 0x57], dil
	xor	edi, edi
	mov	r14d, dword ptr [rsp + 0xe8]
	jmp	.label_553
	nop	word ptr cs:[rax + rax]
.label_515:
	nop	
	inc	rdi
.label_553:
	mov	rsp, rsp
	cmp	rbp, -1
	je	.label_474
	nop	
	cmp	rdi, rbp
	mov	rsp, rsp
	jne	.label_489
	jmp	.label_480
	nop	dword ptr [rax + rax]
.label_474:
	mov	r13, -1
	lea	rsi, [rsi]
	cmp	byte ptr [r11 + rdi], 0
	je	.label_483
.label_489:
	lea	rdi, [rdi]
	test	r12b, r12b
	nop	
	je	.label_491
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_494
	cmp	rbp, -1
	lea	rsi, [rsi]
	jne	.label_494
	nop	
	mov	eax, r14d
	mov	rbp, rbp
	mov	r14, rdi
	mov	rdi, r11
	mov	rsp, rsp
	mov	rbp, r10
	mov	r15b, r8b
	mov	r13, r9
	mov	dword ptr [rsp + 0xe8], eax
	mov	rsp, rsp
	mov	r12, r11
	lea	rdi, [rdi]
	call	strlen
	mov	rdi, r14
	mov	rbp, rbp
	mov	r11, r12
	mov	rbp, rbp
	mov	r12b, byte ptr [rsp + 0x67]
	nop	
	mov	r14d, dword ptr [rsp + 0xe8]
	lea	rsi, [rsi]
	mov	r9, r13
	lea	rsi, [rsi]
	mov	r8b, r15b
	mov	r10, rbp
	lea	rdi, [rdi]
	mov	rbp, rax
.label_494:
	mov	rsp, rsp
	cmp	rbx, rbp
	lea	rsi, [rsi]
	jbe	.label_530
	mov	dword ptr [rsp + 0x10c], 0
	jmp	.label_519
	nop	dword ptr [rax + rax]
.label_491:
	nop	
	mov	dword ptr [rsp + 0x10c], 0
	lea	rdi, [rdi]
	jmp	.label_519
	nop	word ptr cs:[rax + rax]
.label_530:
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xe8], r14d
	mov	r12, rbp
	lea	rsi, [rsi]
	mov	r13, r9
	mov	r15b, r8b
	mov	rbp, rbp
	mov	rbx, r10
	mov	rsp, rsp
	mov	r14, rdi
	mov	rsp, rsp
	lea	rdi, [r11 + r14]
	mov	rsp, rsp
	mov	rbp, r11
	nop	
	mov	rsi, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0xf0]
	nop	
	call	memcmp
	mov	rbp, rbp
	test	eax, eax
	sete	al
	nop	
	mov	dword ptr [rsp + 0x10c], eax
	jne	.label_448
	cmp	byte ptr [rsp + 0xe7], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	lea	rsi, [rsi]
	mov	rbp, r12
	lea	rdi, [rdi]
	mov	r12b, byte ptr [rsp + 0x67]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xe8]
	je	.label_519
	jmp	.label_455
.label_448:
	mov	rsp, rsp
	mov	r10, rbx
	mov	rsp, rsp
	mov	r8b, r15b
	mov	rbp, rbp
	mov	r9, r13
	mov	rsp, rsp
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0x67]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xe8]
	nop	dword ptr [rax + rax]
.label_519:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_458
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	nop	
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_460]
.label_959:
	mov	rsp, rsp
	test	rdi, rdi
	mov	rbp, rbp
	jne	.label_466
	mov	rbp, rbp
	jmp	.label_470
.label_963:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	cmp	rbp, -1
	nop	
	je	.label_471
	lea	rdi, [rdi]
	test	rdi, rdi
	nop	
	jne	.label_475
	nop	
	cmp	rbp, 1
	je	.label_470
	xor	r13d, r13d
	jmp	.label_465
.label_952:
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xc3], 0
	je	.label_486
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_455
	lea	rsi, [rsi]
	cmp	r9d, 2
	mov	rsp, rsp
	jne	.label_498
	mov	al, r14b
	and	al, 1
	jne	.label_499
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x58], r10
	nop	
	jae	.label_505
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rcx], 0x27
.label_505:
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	nop	
	jae	.label_516
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x24
.label_516:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_525
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x27
.label_525:
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	add	rax, 3
	mov	rsp, rsp
	mov	r14b, 1
	mov	rbp, rbp
	mov	rcx, rax
	jmp	.label_524
.label_953:
	mov	rbp, rbp
	mov	bl, 0x62
	mov	rsp, rsp
	jmp	.label_468
.label_954:
	lea	rsi, [rsi]
	mov	cl, 0x74
	jmp	.label_538
.label_955:
	mov	rsp, rsp
	mov	bl, 0x76
	nop	
	jmp	.label_468
.label_956:
	mov	bl, 0x66
	jmp	.label_468
.label_957:
	lea	rsi, [rsi]
	mov	cl, 0x72
	jmp	.label_538
.label_960:
	mov	al, 1
	mov	qword ptr [rsp + 0x68], rax
	lea	rdi, [rdi]
	cmp	r9d, 2
	jne	.label_548
	cmp	byte ptr [rsp + 0xe7], 0
	nop	
	jne	.label_549
	mov	rsp, rsp
	test	r10, r10
	lea	rsi, [rsi]
	sete	al
	mov	rcx, qword ptr [rsp + 0xd8]
	mov	rbp, rbp
	mov	rdx, rcx
	lea	rdi, [rdi]
	test	rdx, rdx
	setne	cl
	or	cl, al
	lea	rdi, [rdi]
	cmove	rdx, r10
	nop	
	mov	qword ptr [rsp + 0xd8], rdx
	mov	eax, 0
	cmove	r10, rax
	cmp	qword ptr [rsp + 0x58], r10
	lea	rdi, [rdi]
	jae	.label_572
	nop	
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0x27
.label_572:
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_556
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x5c
.label_556:
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_453
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x27
.label_453:
	add	qword ptr [rsp + 0x58], 3
	xor	r14d, r14d
.label_548:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_465
.label_961:
	cmp	r9d, 5
	lea	rdi, [rdi]
	je	.label_469
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_466
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_466
	mov	rbp, rbp
	jmp	.label_479
.label_962:
	lea	rdi, [rdi]
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_481
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_487
	lea	rdi, [rdi]
	jmp	.label_492
.label_458:
	mov	qword ptr [rsp + 0x80], r9
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x43], r8b
	mov	qword ptr [rsp + 0x110], r10
	cmp	qword ptr [rsp + 0xb8], 1
	jne	.label_569
	nop	
	mov	r13d, r14d
	mov	rsp, rsp
	mov	r14, r11
	nop	
	mov	rbx, rdi
	call	__ctype_b_loc
	mov	rdi, rbx
	mov	r11, r14
	lea	rsi, [rsi]
	mov	r14d, r13d
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	lea	rsi, [rsi]
	mov	eax, 1
.label_452:
	mov	rbp, rbp
	and	r13b, 1
	mov	cl, r13b
	mov	rsp, rsp
	or	cl, byte ptr [rsp + 0x97]
	cmp	rax, 1
	nop	
	mov	r10, qword ptr [rsp + 0x110]
	mov	r8b, byte ptr [rsp + 0x43]
	mov	r9, qword ptr [rsp + 0x80]
	mov	rsp, rsp
	ja	.label_523
	lea	rdi, [rdi]
	test	cl, cl
	lea	rsi, [rsi]
	je	.label_523
	lea	rdi, [rdi]
	xor	eax, eax
	jmp	.label_465
.label_471:
	test	rdi, rdi
	jne	.label_540
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_540
.label_470:
	mov	dl, 1
.label_958:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x66], 0
	lea	rsi, [rsi]
	je	.label_546
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r13b, dl
	mov	rsp, rsp
	jmp	.label_465
.label_486:
	cmp	dword ptr [rsp + 0x3c], 0
	jne	.label_515
	jmp	.label_466
.label_481:
	cmp	byte ptr [rsp + 0x57], 0
	mov	cl, r15b
	je	.label_538
.label_487:
	xor	eax, eax
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_536
.label_538:
	cmp	byte ptr [rsp + 0x66], 0
	mov	bl, cl
	lea	rdi, [rdi]
	je	.label_559
.label_468:
	xor	eax, eax
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc3], 0
	mov	r13d, 0
	mov	rbp, rbp
	je	.label_465
	lea	rsi, [rsi]
	jmp	.label_534
.label_569:
	mov	qword ptr [rsp + 0x98], 0
	cmp	rbp, -1
	jne	.label_570
	mov	rbp, rdi
	nop	
	mov	rdi, r11
	lea	rdi, [rdi]
	mov	rbx, r11
	call	strlen
	lea	rdi, [rdi]
	mov	rdi, rbp
	nop	
	mov	r11, rbx
	nop	
	mov	rbp, rax
.label_570:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xc8], rbp
	lea	rax, [r11 + rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	rsp, rsp
	mov	r13b, 1
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	lea	rbx, [rsp + 0x98]
.label_532:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xe8], rax
	mov	qword ptr [rsp + 0xa8], rdi
	lea	rax, [rax + rdi]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x48], rax
	lea	rsi, [rsi]
	lea	rsi, [r11 + rax]
	mov	rdx, rbp
	sub	rdx, rax
	lea	rdi, [rsp + 0xc4]
	mov	rsp, rsp
	mov	rcx, rbx
	call	rpl_mbrtowc
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_482
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x110]
	mov	rsp, rsp
	movabs	rsi, 0x20000002b
	je	.label_490
	lea	rsi, [rsi]
	cmp	rbp, -2
	nop	
	mov	rdi, qword ptr [rsp + 0xa8]
	je	.label_561
	lea	rsi, [rsi]
	cmp	rbp, 1
	seta	al
	lea	rdi, [rdi]
	and	al, byte ptr [rsp + 0x77]
	movzx	eax, al
	nop	
	cmp	eax, 1
	jne	.label_493
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xe8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	lea	rax, [rcx + rax]
	nop	
	mov	ecx, 1
	nop	
.label_529:
	movsx	edx, byte ptr [rax + rcx]
	lea	rdi, [rdi]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_521
	lea	rdi, [rdi]
	bt	rsi, rdx
	jb	.label_472
.label_521:
	lea	rsi, [rsi]
	inc	rcx
	mov	rbp, rbp
	cmp	rcx, rbp
	jb	.label_529
.label_493:
	nop	
	mov	edi, dword ptr [rsp + 0xc4]
	lea	rdi, [rdi]
	call	iswprint
	test	eax, eax
	nop	
	jne	.label_543
	xor	r13d, r13d
.label_543:
	mov	rax, qword ptr [rsp + 0xe8]
	add	rax, rbp
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rbp, rbp
	call	mbsinit
	test	eax, eax
	mov	rax, rbp
	mov	r11, qword ptr [rsp + 0x88]
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc8]
	mov	rdi, qword ptr [rsp + 0xa8]
	lea	rdi, [rdi]
	je	.label_532
	mov	rsp, rsp
	jmp	.label_452
.label_540:
	lea	rsi, [rsi]
	mov	rbp, -1
	mov	rbp, rbp
	xor	r13d, r13d
	jmp	.label_465
.label_469:
	cmp	dword ptr [rsp + 0x44], 0
	lea	rdi, [rdi]
	je	.label_466
	lea	rcx, [rdi + 2]
	mov	rsp, rsp
	cmp	rcx, rbp
	jae	.label_466
	mov	rbp, rbp
	movzx	eax, byte ptr [rdi + r11 + 1]
	mov	rsp, rsp
	cmp	eax, 0x3f
	jne	.label_466
	lea	rsi, [rsi]
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	edx, 0x3e
	ja	.label_568
	nop	
	movabs	rsi, 0x7000a38200000000
	mov	rsp, rsp
	bt	rsi, rdx
	mov	rsp, rsp
	jae	.label_504
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_450
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_456
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rsi], 0x3f
.label_456:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	jae	.label_464
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], 0x22
.label_464:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_571
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rsi + rax], 0x22
.label_571:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 3]
	cmp	rax, r10
	nop	
	jae	.label_517
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], 0x3f
.label_517:
	mov	rbp, rbp
	add	qword ptr [rsp + 0x58], 4
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	lea	rdi, [rdi]
	xor	r13d, r13d
	jmp	.label_465
.label_466:
	xor	eax, eax
	xor	r13d, r13d
	nop	dword ptr [rax + rax]
.label_465:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x65], 0
	lea	rsi, [rsi]
	je	.label_501
	cmp	qword ptr [rsp + 0x150], 0
	mov	rsp, rsp
	jne	.label_509
	lea	rsi, [rsi]
	jmp	.label_514
.label_501:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_514
.label_509:
	mov	cl, r15b
	shr	cl, 5
	lea	rdi, [rdi]
	movzx	edx, cl
	nop	
	mov	esi, 1
	mov	cl, r15b
	shl	esi, cl
	nop	
	mov	ecx, dword ptr [rsp + 0x10c]
	lea	rsi, [rsi]
	test	cl, cl
	jne	.label_518
	mov	rcx, qword ptr [rsp + 0x150]
	nop	
	and	esi, dword ptr [rcx + rdx*4]
	mov	rsp, rsp
	jmp	.label_526
	nop	word ptr cs:[rax + rax]
.label_514:
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x10c]
	lea	rdi, [rdi]
	test	cl, cl
.label_526:
	mov	rbp, rbp
	mov	bl, r15b
	je	.label_536
	mov	rsp, rsp
	jmp	.label_534
.label_518:
	mov	bl, r15b
.label_534:
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_455
	nop	
	cmp	r9d, 2
	jne	.label_477
	lea	rdi, [rdi]
	mov	al, r14b
	lea	rdi, [rdi]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_477
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_454
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x27
.label_454:
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	cmp	rax, r10
	jae	.label_554
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x24
.label_554:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_552
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x27
.label_552:
	add	qword ptr [rsp + 0x58], 3
	mov	r14b, 1
.label_477:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_565
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rcx], 0x5c
.label_565:
	mov	rsp, rsp
	inc	qword ptr [rsp + 0x58]
	jmp	.label_511
.label_475:
	xor	r13d, r13d
	nop	
	jmp	.label_465
.label_523:
	mov	rsp, rsp
	add	rax, rdi
	mov	qword ptr [rsp + 0xe8], rax
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_449
	nop	dword ptr [rax + rax]
.label_467:
	inc	qword ptr [rsp + 0x58]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_449:
	test	cl, cl
	je	.label_459
	mov	rsp, rsp
	mov	edx, dword ptr [rsp + 0x10c]
	test	dl, 1
	mov	rbp, rbp
	je	.label_462
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_558
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rdx + rsi], 0x5c
.label_558:
	lea	rsi, [rsi]
	inc	qword ptr [rsp + 0x58]
	mov	dword ptr [rsp + 0x10c], 0
	jmp	.label_462
	nop	dword ptr [rax]
.label_459:
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_455
	lea	rsi, [rsi]
	cmp	r9d, 2
	mov	rsp, rsp
	jne	.label_488
	mov	al, r14b
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_488
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_567
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rdx], 0x27
.label_567:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	inc	rax
	cmp	rax, r10
	jae	.label_502
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], 0x24
.label_502:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_541
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rdx + rax], 0x27
.label_541:
	mov	rsp, rsp
	add	qword ptr [rsp + 0x58], 3
	mov	r14b, 1
.label_488:
	cmp	qword ptr [rsp + 0x58], r10
	lea	rsi, [rsi]
	jae	.label_527
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x58]
	nop	
	mov	byte ptr [rax + rdx], 0x5c
.label_527:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	lea	rdi, [rdi]
	jae	.label_535
	mov	dl, r15b
	shr	dl, 6
	mov	rsp, rsp
	or	dl, 0x30
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], dl
.label_535:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	nop	
	jae	.label_545
	lea	rsi, [rsi]
	mov	dl, r15b
	lea	rdi, [rdi]
	shr	dl, 3
	mov	rsp, rsp
	and	dl, 7
	mov	rsp, rsp
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rsi + rax], dl
.label_545:
	nop	
	add	qword ptr [rsp + 0x58], 3
	mov	rbp, rbp
	and	r15b, 7
	nop	
	or	r15b, 0x30
	mov	rsp, rsp
	mov	al, 1
.label_462:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xe8], rdx
	jbe	.label_536
	lea	rsi, [rsi]
	test	r14b, 1
	je	.label_510
	mov	bl, al
	nop	
	and	bl, 1
	lea	rdi, [rdi]
	jne	.label_510
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_566
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x58]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_566:
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x58]
	inc	rsi
	mov	rsp, rsp
	cmp	rsi, r10
	lea	rsi, [rsi]
	jae	.label_496
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rdi + rsi], 0x27
	mov	rbp, rbp
	mov	rdi, rbx
.label_496:
	add	qword ptr [rsp + 0x58], 2
	xor	r14d, r14d
.label_510:
	nop	
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_467
	mov	rsi, qword ptr [rsp + 0xb0]
	nop	
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0x58]
	nop	
	mov	byte ptr [rsi + rdi], r15b
	lea	rdi, [rdi]
	mov	rdi, rbx
	jmp	.label_467
	nop	word ptr cs:[rax + rax]
.label_536:
	test	r14b, 1
	lea	rsi, [rsi]
	je	.label_476
	mov	rsp, rsp
	and	al, 1
	jne	.label_476
	cmp	qword ptr [rsp + 0x58], r10
	mov	rsp, rsp
	jae	.label_522
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0x27
.label_522:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	jae	.label_557
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_557:
	add	qword ptr [rsp + 0x58], 2
	xor	r14d, r14d
.label_476:
	mov	rsp, rsp
	mov	bl, r15b
.label_511:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_508
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], bl
.label_508:
	nop	
	inc	qword ptr [rsp + 0x58]
	nop	
	shl	r13b, 7
	mov	rsp, rsp
	sar	r13b, 7
	and	r13b, r8b
	mov	rbp, rbp
	mov	r8b, r13b
	jmp	.label_515
.label_498:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	jmp	.label_524
.label_499:
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x58]
.label_524:
	lea	rsi, [rsi]
	cmp	rcx, r10
	lea	rsi, [rsi]
	jae	.label_528
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax + rcx], 0x5c
.label_528:
	nop	
	lea	rax, [rcx + 1]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x58], rax
	mov	rbp, rbp
	mov	al, 1
	lea	rsi, [rsi]
	mov	r15b, 0x30
	cmp	r9d, 2
	lea	rsi, [rsi]
	je	.label_531
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_539
	mov	dl, byte ptr [r11 + rdx]
	mov	rsp, rsp
	add	dl, 0xd0
	nop	
	movzx	edx, dl
	cmp	edx, 9
	lea	rsi, [rsi]
	ja	.label_457
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_547
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rdx + rsi], 0x30
.label_547:
	lea	rsi, [rsi]
	lea	rdx, [rcx + 2]
	lea	rdi, [rdi]
	cmp	rdx, r10
	nop	
	jae	.label_551
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rdx], 0x30
.label_551:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0x58], rcx
	jmp	.label_465
.label_531:
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_465
.label_539:
	lea	rdi, [rdi]
	xor	r13d, r13d
	nop	
	jmp	.label_465
.label_457:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_465
.label_490:
	xor	r13d, r13d
.label_482:
	mov	r11, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0xc8]
	mov	rdi, qword ptr [rsp + 0xa8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xe8]
	jmp	.label_452
.label_561:
	mov	rbp, qword ptr [rsp + 0xc8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x48]
	cmp	rbp, rcx
	lea	rsi, [rsi]
	jbe	.label_451
	mov	r11, qword ptr [rsp + 0x88]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xe8]
.label_550:
	cmp	byte ptr [r11 + rcx], 0
	nop	
	je	.label_463
	mov	rbp, rbp
	lea	rcx, [rax + rdi + 1]
	nop	
	inc	rax
	mov	rbp, rbp
	cmp	rcx, rbp
	mov	rsp, rsp
	jb	.label_550
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_452
.label_451:
	mov	rsp, rsp
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe8]
	jmp	.label_452
.label_463:
	nop	
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_452
.label_568:
	xor	r13d, r13d
	jmp	.label_465
.label_504:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_465
.label_480:
	nop	
	mov	r13, rdi
.label_483:
	mov	rsp, rsp
	cmp	r9d, 2
	mov	rsp, rsp
	setne	al
	cmp	qword ptr [rsp + 0x58], 0
	lea	rsi, [rsi]
	setne	dl
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_495
	mov	rsp, rsp
	or	al, dl
	mov	rbp, rbp
	je	.label_507
.label_495:
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xe8], r14d
	mov	qword ptr [rsp + 0x88], r11
	cmp	r9d, 2
	lea	rsi, [rsi]
	setne	al
	cmp	byte ptr [rsp + 0xe7], 0
	lea	rdi, [rdi]
	setne	dl
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x68]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0xa7]
	nop	
	mov	rsi, qword ptr [rsp + 0x30]
	je	.label_512
	mov	rsp, rsp
	or	al, dl
	lea	rsi, [rsi]
	jne	.label_512
	test	r8b, 1
	mov	rbp, rbp
	jne	.label_533
	cmp	qword ptr [rsp + 0xd8], 0
	je	.label_512
	test	r10, r10
	mov	r15d, r9d
	mov	rbp, rbp
	mov	al, bl
	nop	
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0xd8]
	lea	rsi, [rsi]
	je	.label_537
.label_512:
	mov	rdx, qword ptr [rsp + 0x20]
	test	rdx, rdx
	je	.label_544
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	lea	rsi, [rsi]
	jne	.label_544
	mov	al, byte ptr [rdx]
	lea	rdi, [rdi]
	test	al, al
	je	.label_544
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_560:
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_563
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rsi], al
.label_563:
	mov	rsp, rsp
	inc	qword ptr [rsp + 0x58]
	nop	
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	mov	rbp, rbp
	jne	.label_560
.label_544:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_564
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0
	lea	rdi, [rdi]
	jmp	.label_564
.label_546:
	lea	rdi, [rdi]
	mov	r9d, 2
	nop	
	jmp	.label_455
.label_472:
	mov	rsp, rsp
	mov	r9d, 2
	nop	
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, qword ptr [rsp + 0xc8]
	lea	rdi, [rdi]
	jmp	.label_455
.label_507:
	nop	
	mov	rbp, r13
	jmp	.label_455
.label_559:
	lea	rdi, [rdi]
	mov	r9d, 2
.label_455:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xc3], 0
	lea	rdi, [rdi]
	mov	r8d, 4
	cmove	r8d, r9d
	lea	rdi, [rdi]
	cmp	r9d, 2
	cmovne	r8d, r9d
	mov	r9d, dword ptr [rsp + 0x38]
	and	r9d, 0xfffffffd
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x100]
	nop	
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0x78]
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp], 0
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0xb0]
	mov	rsi, r10
	nop	
	mov	rdx, r11
	lea	rdi, [rdi]
	mov	rcx, rbp
.label_503:
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x58], rax
.label_564:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	add	rsp, 0x118
	pop	rbx
	pop	r12
	pop	r13
	nop	
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
.label_533:
	mov	rax, qword ptr [rsp + 0x100]
	nop	
	mov	qword ptr [rsp + 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x78]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x150]
	mov	qword ptr [rsp], rax
	nop	
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xd8]
	mov	rdx, qword ptr [rsp + 0x88]
	mov	rcx, r13
	mov	r9d, dword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	jmp	.label_503
.label_549:
	lea	rsi, [rsi]
	mov	r9d, 2
	jmp	.label_455
.label_492:
	mov	r9d, 2
	lea	rsi, [rsi]
	jmp	.label_455
.label_479:
	lea	rsi, [rsi]
	mov	r9d, 2
	jmp	.label_455
.label_450:
	lea	rsi, [rsi]
	mov	r9d, 5
	mov	rbp, rbp
	jmp	.label_455
.label_513:
	nop	
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409d70
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	lea	rdi, [rdi]
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	lea	rdi, [rdi]
	push	r12
	nop	
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x38
	lea	rsi, [rsi]
	mov	r12, rsi
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rbx
	mov	rbp, rbp
	test	rdx, rdx
	lea	rdi, [rdi]
	mov	r14d, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	cmovne	r14, rdx
	lea	rsi, [rsi]
	call	__errno_location
	mov	qword ptr [rsp + 0x28], rax
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x24], ecx
	mov	rsp, rsp
	mov	r8d, dword ptr [r14]
	mov	ebp, dword ptr [r14 + 4]
	mov	rbp, rbp
	or	ebp, 1
	mov	rbp, rbp
	lea	r15, [r14 + 8]
	mov	rax, qword ptr [r14 + 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [r14 + 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	mov	qword ptr [rsp], r15
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	nop	
	mov	rdx, rbx
	lea	rsi, [rsi]
	mov	rcx, r12
	lea	rdi, [rdi]
	mov	r9d, ebp
	nop	
	call	quotearg_buffer_restyled
	mov	rsp, rsp
	mov	rbx, rax
	lea	rdi, [rdi]
	inc	rbx
	mov	rdi, rbx
	call	xmalloc
	lea	rsi, [rsi]
	mov	r13, rax
	nop	
	mov	r8d, dword ptr [r14]
	mov	rax, qword ptr [r14 + 0x28]
	nop	
	mov	rcx, qword ptr [r14 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	rsp, rsp
	mov	qword ptr [rsp], r15
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	mov	rcx, r12
	mov	r9d, ebp
	lea	rsi, [rsi]
	call	quotearg_buffer_restyled
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x24]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	dword ptr [rcx], eax
	mov	rax, r13
	mov	rsp, rsp
	add	rsp, 0x38
	pop	rbx
	mov	rsp, rsp
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rsp, rsp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409eb0
	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:

	mov	rbp, rbp
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	lea	rsi, [rsi]
	mov	rbx, rdx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], rbx
	mov	rsp, rsp
	mov	r14, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x40], r14
	mov	r15, rdi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x28], r15
	test	rcx, rcx
	mov	r12d, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	cmovne	r12, rcx
	mov	rbp, rbp
	call	__errno_location
	mov	qword ptr [rsp + 0x20], rax
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x3c], ecx
	test	rbx, rbx
	lea	rsi, [rsi]
	sete	al
	movzx	ebp, al
	lea	rsi, [rsi]
	or	ebp, dword ptr [r12 + 4]
	mov	rbp, rbp
	mov	r8d, dword ptr [r12]
	lea	r13, [r12 + 8]
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [r12 + 0x30]
	nop	
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	rsp, rsp
	mov	qword ptr [rsp], r13
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	mov	rdx, r15
	mov	rcx, r14
	lea	rsi, [rsi]
	mov	r9d, ebp
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	lea	rdi, [rdi]
	mov	rbx, rax
	lea	r15, [rbx + 1]
	lea	rsi, [rsi]
	mov	rdi, r15
	call	xmalloc
	nop	
	mov	r14, rax
	lea	rsi, [rsi]
	mov	r8d, dword ptr [r12]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [r12 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	mov	qword ptr [rsp], r13
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, r15
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x40]
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	test	rax, rax
	mov	ecx, dword ptr [rsp + 0x3c]
	mov	rdx, qword ptr [rsp + 0x20]
	mov	dword ptr [rdx], ecx
	je	.label_573
	mov	qword ptr [rax], rbx
.label_573:
	mov	rax, r14
	mov	rsp, rsp
	add	rsp, 0x48
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
	#Procedure 0x40a000
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_574
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_576:
	mov	rdi, qword ptr [r15]
	nop	
	call	free
	mov	rbp, rbp
	inc	rbx
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rip + nslots]
	lea	rsi, [rsi]
	add	r15, 0x10
	cmp	rbx, rax
	mov	rsp, rsp
	jl	.label_576
.label_574:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_577
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rip + slotvec0],  0x100
	mov	rsp, rsp
	mov	qword ptr [rip + label_578], OFFSET FLAT:slot0
.label_577:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_575
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_575:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a0c0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a0d0

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	nop	
	push	rbp
	push	r15
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x48
	nop	
	mov	r12, rcx
	mov	r14, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], rsi
	mov	ebx, edi
	call	__errno_location
	test	ebx, ebx
	js	.label_585
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  ebx
	jle	.label_580
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_581
.label_580:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_583
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	mov	rsp, rsp
	mov	r13d, OFFSET FLAT:slotvec0
	xor	edi, edi
	cmp	rbp, r13
	cmovne	rdi, rbp
	mov	rsp, rsp
	lea	r15d, [rbx + 1]
	mov	rbp, rbp
	movsxd	rsi, ebx
	shl	rsi, 4
	add	rsi, 0x10
	call	xrealloc
	mov	r14, rax
	cmp	rbp, r13
	mov	qword ptr [rip + slotvec],  r14
	jne	.label_584
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_584:
	mov	rsp, rsp
	movsxd	rax, dword ptr [rip + nslots]
	movsxd	rbp, r15d
	mov	rdx, rbp
	sub	rdx, rax
	shl	rax, 4
	mov	rdi, r14
	lea	rdi, [rdi]
	add	rdi, rax
	lea	rsi, [rsi]
	shl	rdx, 4
	xor	esi, esi
	call	memset
	mov	dword ptr [rip + nslots],  ebp
	mov	rbp, rbp
	mov	rbp, r14
	mov	r14, qword ptr [rsp + 0x38]
.label_581:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	movsxd	r13, ebx
	mov	rsp, rsp
	shl	r13, 4
	mov	r15, qword ptr [rbp + r13]
	mov	rbx, qword ptr [rbp + r13 + 8]
	nop	
	mov	rcx, r12
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rcx
	mov	r8d, dword ptr [rcx]
	mov	r12d, dword ptr [rcx + 4]
	or	r12d, 1
	mov	rsp, rsp
	lea	rdx, [rcx + 8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x40], rdx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rdx
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x20]
	nop	
	mov	rcx, r14
	lea	rdi, [rdi]
	mov	r9d, r12d
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	nop	
	mov	r14, rax
	cmp	r15, r14
	ja	.label_582
	nop	
	lea	rax, [rbp + r13]
	lea	rsi, [rsi]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	lea	rdi, [rdi]
	mov	qword ptr [rax], r14
	mov	rsp, rsp
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	mov	rbp, rbp
	je	.label_579
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_579:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	call	xmalloc
	mov	rbx, rax
	nop	
	mov	qword ptr [rbp], rbx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	mov	r8d, dword ptr [rcx]
	nop	
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r9d, r12d
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
.label_582:
	mov	rax, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsp + 0x1c]
	mov	dword ptr [rax], ecx
	mov	rax, rbx
	add	rsp, 0x48
	mov	rsp, rsp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
.label_585:
	lea	rdi, [rdi]
	call	abort
.label_583:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a340
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a350
	.globl quotearg
	.type quotearg, @function
quotearg:

	nop
	mov	rax, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	nop	
	mov	rsi, rax
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a380
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rdi, [rdi]
	xor	edi, edi
	mov	ecx, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	mov	rsi, rdx
	mov	rdx, rax
	lea	rdi, [rdi]
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a3b0
	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:

	nop
	sub	rsp, 0x78
	mov	rbp, rbp
	mov	rax, rdx
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp + 0x30], 0
	lea	rdi, [rdi]
	cmp	esi, 0xa
	je	.label_586
	mov	dword ptr [rsp + 0x40], esi
	mov	ecx, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], ecx
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	movups	xmmword ptr [rsp + 0x64], xmm2
	lea	rdi, [rdi]
	movups	xmmword ptr [rsp + 0x54], xmm1
	lea	rsi, [rsi]
	movups	xmmword ptr [rsp + 0x44], xmm0
	mov	rbp, rbp
	lea	rcx, [rsp + 0x40]
	mov	rdx, -1
	mov	rsp, rsp
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_586:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a440
	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:

	mov	rbp, rbp
	sub	rsp, 0x78
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp + 0x30], 0
	lea	rdi, [rdi]
	cmp	esi, 0xa
	lea	rsi, [rsi]
	je	.label_587
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x40], esi
	nop	
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	nop	
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	nop	
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	mov	rsp, rsp
	movups	xmmword ptr [rsp + 0x44], xmm0
	mov	rsp, rsp
	lea	rax, [rsp + 0x40]
	mov	rbp, rbp
	mov	rsi, rdx
	nop	
	mov	rdx, rcx
	mov	rbp, rbp
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_587:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a4e0
	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:

	sub	rsp, 0x78
	mov	rbp, rbp
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rbp, rbp
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	edi, 0xa
	mov	rsp, rsp
	je	.label_588
	mov	dword ptr [rsp + 0x40], edi
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x30]
	nop	
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	mov	rsp, rsp
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rcx, [rsp + 0x40]
	nop	
	xor	edi, edi
	mov	rdx, -1
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0x78
	lea	rsi, [rsi]
	ret	
.label_588:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a570
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	lea	rsi, [rsi]
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
	mov	rsp, rsp
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	mov	rsp, rsp
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	nop	
	lea	rcx, [rsp + 8]
	xor	edi, edi
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0x78
	ret	
.label_589:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40a5e0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	rbp, rbp
	mov	r8, rsi
	mov	rbp, rbp
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_590]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_591]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_592]
	nop	
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp], xmm0
	lea	rsi, [rsi]
	mov	al, cl
	nop	
	shr	al, 5
	movzx	eax, al
	mov	rbp, rbp
	mov	esi, dword ptr [rsp + rax*4 + 8]
	lea	rsi, [rsi]
	mov	edi, esi
	mov	rsp, rsp
	shr	edi, cl
	not	edi
	mov	rbp, rbp
	and	edi, 1
	lea	rsi, [rsi]
	shl	edi, cl
	xor	edi, esi
	nop	
	mov	dword ptr [rsp + rax*4 + 8], edi
	mov	rsp, rsp
	lea	rcx, [rsp]
	xor	edi, edi
	nop	
	mov	rsi, rdx
	lea	rsi, [rsi]
	mov	rdx, r8
	nop	
	call	quotearg_n_options
	nop	
	add	rsp, 0x38
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a680
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	ecx, esi
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	rbp, rbp
	mov	rdx, qword ptr [rip + label_590]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_591]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0, xmmword ptr [rip + label_592]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dl, cl
	mov	rbp, rbp
	shr	dl, 5
	lea	rsi, [rsi]
	movzx	edx, dl
	lea	rsi, [rsi]
	mov	esi, dword ptr [rsp + rdx*4 + 8]
	lea	rdi, [rdi]
	mov	edi, esi
	shr	edi, cl
	nop	
	not	edi
	mov	rsp, rsp
	and	edi, 1
	shl	edi, cl
	xor	edi, esi
	mov	dword ptr [rsp + rdx*4 + 8], edi
	mov	rsp, rsp
	lea	rcx, [rsp]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	rdx, -1
	mov	rbp, rbp
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a720

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	sub	rsp, 0x38
	mov	rbp, rbp
	mov	rax, rdi
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rip + label_590]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_591]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_592]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	or	byte ptr [rsp + 0xf], 4
	mov	rsp, rsp
	lea	rcx, [rsp]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rdx, -1
	nop	
	mov	rsi, rax
	mov	rsp, rsp
	call	quotearg_n_options
	add	rsp, 0x38
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a790
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rip + label_590]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_591]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_592]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp], xmm0
	or	byte ptr [rsp + 0xf], 4
	lea	rsi, [rsi]
	lea	rcx, [rsp]
	xor	edi, edi
	nop	
	mov	rsi, rdx
	lea	rsi, [rsi]
	mov	rdx, rax
	lea	rdi, [rdi]
	call	quotearg_n_options
	add	rsp, 0x38
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a800
	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:

	sub	rsp, 0xb8
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	mov	rbp, rbp
	je	.label_593
	nop	
	mov	ecx, dword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x70], ecx
	mov	rsp, rsp
	movaps	xmm0, xmmword ptr [rsp]
	mov	rbp, rbp
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movaps	xmmword ptr [rsp + 0x60], xmm2
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x50], xmm1
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x80], esi
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x70]
	nop	
	mov	dword ptr [rsp + 0xb4], ecx
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	nop	
	movups	xmmword ptr [rsp + 0xa4], xmm2
	lea	rsi, [rsi]
	movups	xmmword ptr [rsp + 0x94], xmm1
	movups	xmmword ptr [rsp + 0x84], xmm0
	or	byte ptr [rsp + 0x8f], 4
	lea	rcx, [rsp + 0x80]
	mov	rdx, -1
	lea	rsi, [rsi]
	mov	rsi, rax
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0xb8
	mov	rsp, rsp
	ret	
.label_593:
	lea	rsi, [rsi]
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40a8e0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	rax, qword ptr [rip + label_590]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [rip + label_591]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rip + label_592]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_594
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_594
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	lea	rsi, [rsi]
	mov	rdx, -1
	lea	rsi, [rsi]
	mov	rsi, rcx
	mov	rcx, rax
	mov	rbp, rbp
	call	quotearg_n_options
	nop	
	add	rsp, 0x38
	ret	
.label_594:
	nop	
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40a970
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	mov	rsp, rsp
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	rax, qword ptr [rip + label_590]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_591]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0, xmmword ptr [rip + label_592]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_595
	test	rdx, rdx
	je	.label_595
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rsi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	nop	
	call	quotearg_n_options
	mov	rbp, rbp
	add	rsp, 0x38
	ret	
.label_595:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40aa00
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	sub	rsp, 0x38
	mov	rsp, rsp
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_590]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_591]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [rip + label_592]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0xa
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_596
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_596
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rdi, [rdi]
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rbp, rbp
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0x38
	lea	rsi, [rsi]
	ret	
.label_596:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40aaa0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_590]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rip + label_591]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0, xmmword ptr [rip + label_592]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_597
	test	rsi, rsi
	je	.label_597
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rsi, [rsi]
	lea	rax, [rsp]
	xor	edi, edi
	mov	rsi, rdx
	lea	rdi, [rdi]
	mov	rdx, rcx
	lea	rdi, [rdi]
	mov	rcx, rax
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0x38
	mov	rsp, rsp
	ret	
.label_597:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ab40
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ab50
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	mov	rax, rsi
	nop	
	mov	rdx, rdi
	xor	edi, edi
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsi, rdx
	lea	rsi, [rsi]
	mov	rdx, rax
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x40ab70
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsp, rsp
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ab90

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rdx, -1
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:quote_quoting_options
	lea	rdi, [rdi]
	mov	rsi, rax
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40abc0

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	rbx
	push	rax
	nop	
	mov	ebp, esi
	mov	rbx, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	mov	rbp, rbp
	cmp	rax, rbx
	jne	.label_599
	mov	rsp, rsp
	call	locale_charset
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	mov	rsp, rsp
	je	.label_601
	nop	
	cmp	ecx, 0x55
	mov	rbp, rbp
	jne	.label_598
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_598
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	lea	rdi, [rdi]
	cmp	ecx, 0x46
	jne	.label_598
	movzx	ecx, byte ptr [rax + 3]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	jne	.label_598
	nop	
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	lea	rdi, [rdi]
	jne	.label_598
	cmp	byte ptr [rax + 5], 0
	lea	rdi, [rdi]
	jne	.label_598
	nop	
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	mov	rbp, rbp
	cmp	ecx, 0x60
	mov	rsp, rsp
	je	.label_599
	mov	eax, OFFSET FLAT:.str.15
	jmp	.label_599
.label_601:
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	nop	
	cmp	ecx, 0x42
	jne	.label_598
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 2]
	lea	rdi, [rdi]
	cmp	ecx, 0x31
	jne	.label_598
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	mov	rsp, rsp
	jne	.label_598
	movzx	ecx, byte ptr [rax + 4]
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	jne	.label_598
	movzx	ecx, byte ptr [rax + 5]
	lea	rsi, [rsi]
	cmp	ecx, 0x33
	lea	rsi, [rsi]
	jne	.label_598
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 6]
	mov	rbp, rbp
	cmp	ecx, 0x30
	nop	
	jne	.label_598
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 7], 0
	lea	rsi, [rsi]
	je	.label_600
.label_598:
	lea	rsi, [rsi]
	cmp	ebp, 9
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_599:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_600:
	mov	eax, OFFSET FLAT:.str.17_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	mov	rbp, rbp
	je	.label_599
	mov	eax, OFFSET FLAT:.str.18_0
	jmp	.label_599
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40ad30

	.globl init_tokenbuffer
	.type init_tokenbuffer, @function
init_tokenbuffer:
	mov	rbp, rbp
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi], xmm0
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ad40

	.globl readtoken
	.type readtoken, @function
readtoken:
	mov	rbp, rbp
	push	rbp
	lea	rdi, [rdi]
	push	r15
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	sub	rsp, 0x38
	lea	rsi, [rsi]
	mov	r14, rcx
	nop	
	mov	r15, rdi
	xorps	xmm0, xmm0
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_602
	xor	eax, eax
	test	dl, 1
	mov	rbp, rbp
	je	.label_613
	movzx	ecx, byte ptr [rsi]
	lea	rdi, [rdi]
	mov	eax, 1
	mov	edi, 1
	mov	rbp, rbp
	shl	rdi, cl
	shr	rcx, 6
	or	qword ptr [rsp + rcx*8 + 0x10], rdi
.label_613:
	mov	rsp, rsp
	cmp	rdx, 1
	je	.label_602
	mov	rsp, rsp
	sub	rdx, rax
	lea	rsi, [rsi]
	lea	rax, [rax + rsi + 1]
	nop	dword ptr [rax]
.label_603:
	movzx	ecx, byte ptr [rax - 1]
	lea	rsi, [rsi]
	mov	esi, 1
	shl	rsi, cl
	shr	rcx, 6
	or	qword ptr [rsp + rcx*8 + 0x10], rsi
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax]
	mov	rbp, rbp
	mov	esi, 1
	mov	rbp, rbp
	shl	rsi, cl
	shr	rcx, 6
	or	qword ptr [rsp + rcx*8 + 0x10], rsi
	mov	rbp, rbp
	add	rax, 2
	nop	
	add	rdx, -2
	jne	.label_603
.label_602:
	mov	rbp, rbp
	mov	rax, qword ptr [r15 + 8]
	mov	rbp, rbp
	cmp	rax, qword ptr [r15 + 0x10]
	mov	rbp, rbp
	jae	.label_604
	lea	rcx, [rax + 1]
	mov	qword ptr [r15 + 8], rcx
	mov	rsp, rsp
	movzx	ebx, byte ptr [rax]
.label_615:
	mov	rsp, rsp
	movsxd	rax, ebx
	shr	rax, 6
	mov	rax, qword ptr [rsp + rax*8 + 0x10]
	bt	rax, rbx
	jae	.label_618
	mov	rsp, rsp
	mov	rbp, -1
	nop	word ptr [rax + rax]
.label_619:
	mov	rax, qword ptr [r15 + 8]
	mov	rsp, rsp
	cmp	rax, qword ptr [r15 + 0x10]
	jae	.label_608
	lea	rcx, [rax + 1]
	mov	qword ptr [r15 + 8], rcx
	movzx	ebx, byte ptr [rax]
.label_606:
	movsxd	rax, ebx
	lea	rdi, [rdi]
	shr	rax, 6
	mov	rax, qword ptr [rsp + rax*8 + 0x10]
	lea	rdi, [rdi]
	bt	rax, rbx
	jb	.label_619
	jmp	.label_618
.label_608:
	mov	rdi, r15
	call	__uflow
	mov	ebx, eax
	test	ebx, ebx
	nop	
	jns	.label_606
	lea	rdi, [rdi]
	jmp	.label_609
.label_618:
	test	ebx, ebx
	lea	rdi, [rdi]
	js	.label_611
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], r14
	mov	r13, qword ptr [r14]
	mov	rsp, rsp
	mov	rdx, qword ptr [r14 + 8]
	xor	r14d, r14d
	xor	r12d, r12d
	jmp	.label_617
	nop	
.label_620:
	mov	rbp, rbp
	lea	rcx, [rax + 1]
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 8], rcx
	mov	rsp, rsp
	movzx	ebx, byte ptr [rax]
	lea	rdi, [rdi]
	xor	r14d, r14d
.label_617:
	mov	rbp, r12
	cmp	rbp, r13
	jne	.label_612
	mov	rsp, rsp
	test	rdx, rdx
	je	.label_607
	movabs	rax, 0x5555555555555554
	cmp	rbp, rax
	jae	.label_614
	nop	
	mov	r13, rbp
	shr	r13, 1
	mov	rbp, rbp
	inc	r13
	mov	rbp, rbp
	add	r13, rbp
	jmp	.label_616
.label_607:
	lea	rdi, [rdi]
	test	rbp, rbp
	nop	
	mov	r13, rbp
	mov	eax, 0x80
	lea	rsi, [rsi]
	cmove	r13, rax
	lea	rdi, [rdi]
	test	r13, r13
	nop	
	js	.label_610
.label_616:
	mov	rdi, rdx
	mov	rsi, r13
	lea	rsi, [rsi]
	call	xrealloc
	mov	rdx, rax
.label_612:
	test	r14b, 1
	jne	.label_605
	lea	rsi, [rsi]
	movsxd	rax, ebx
	mov	rsp, rsp
	shr	rax, 6
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + rax*8 + 0x10]
	mov	rbp, rbp
	bt	rax, rbx
	jb	.label_605
	mov	rbp, rbp
	lea	r12, [rbp + 1]
	mov	rbp, rbp
	mov	byte ptr [rdx + rbp], bl
	mov	rax, qword ptr [r15 + 8]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	jb	.label_620
	mov	rsp, rsp
	mov	rdi, r15
	mov	rbp, rbp
	mov	rbx, rdx
	call	__uflow
	mov	rbp, rbp
	mov	rdx, rbx
	mov	ebx, eax
	mov	r14d, ebx
	shr	r14d, 0x1f
	test	ebx, ebx
	jns	.label_617
	mov	rsp, rsp
	cmp	rbp, -1
	lea	rsi, [rsi]
	jne	.label_617
	lea	rsi, [rsi]
	mov	rbp, -1
	mov	rbp, rbp
	jmp	.label_609
.label_605:
	mov	byte ptr [rdx + rbp], 0
	nop	
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax + 8], rdx
	mov	qword ptr [rax], r13
	nop	
	jmp	.label_609
.label_611:
	mov	rbp, -1
.label_609:
	lea	rdi, [rdi]
	mov	rax, rbp
	lea	rsi, [rsi]
	add	rsp, 0x38
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	nop	
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
.label_604:
	lea	rsi, [rsi]
	mov	rdi, r15
	call	__uflow
	mov	ebx, eax
	mov	rbp, rbp
	mov	rbp, -1
	lea	rdi, [rdi]
	test	ebx, ebx
	jns	.label_615
	lea	rdi, [rdi]
	jmp	.label_609
.label_614:
	call	xalloc_die
.label_610:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b050
	.globl readtokens
	.type readtokens, @function
readtokens:

	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	push	r13
	lea	rsi, [rsi]
	push	r12
	lea	rsi, [rsi]
	push	rbx
	sub	rsp, 0x48
	mov	qword ptr [rsp + 0x20], r9
	mov	qword ptr [rsp + 0x38], r8
	nop	
	mov	r13, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x40], rdx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], rdi
	mov	rsp, rsp
	test	rsi, rsi
	lea	rax, [rsi + 1]
	nop	
	mov	r15d, 0x40
	lea	rsi, [rsi]
	cmovne	r15, rax
	mov	rax, r15
	lea	rsi, [rsi]
	shr	rax, 0x3c
	mov	rbp, rbp
	jne	.label_622
	lea	rsi, [rsi]
	lea	rbx, [r15*8]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	xmalloc
	mov	rbp, rbp
	mov	rbp, rax
	mov	rdi, rbx
	call	xmalloc
	mov	qword ptr [rsp + 0x30], rax
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp], xmm0
	xor	r14d, r14d
	nop	
	jmp	.label_625
	nop	dword ptr [rax]
.label_621:
	mov	rsp, rsp
	mov	rdi, rbx
	call	xmalloc
	nop	
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	mov	qword ptr [rax + r14*8], r12
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 8]
	mov	rdi, rbp
	mov	rdx, rbx
	call	memcpy
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x28]
	nop	
	mov	qword ptr [rax + r14*8], rbp
	mov	rbp, rax
	lea	rdi, [rdi]
	inc	r14
.label_625:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rdx, r13
	lea	rcx, [rsp]
	mov	rsp, rsp
	call	readtoken
	mov	r12, rax
	cmp	r14, r15
	jae	.label_624
	mov	qword ptr [rsp + 0x28], rbp
	jmp	.label_626
	nop	word ptr cs:[rax + rax]
.label_624:
	mov	rbx, r13
	lea	rsi, [rsi]
	test	rbp, rbp
	nop	
	je	.label_628
	movabs	rax, 0xaaaaaaaaaaaaaaa
	lea	rsi, [rsi]
	cmp	r15, rax
	jae	.label_622
	mov	rax, r15
	mov	rbp, rbp
	shr	rax, 1
	lea	rsi, [rsi]
	lea	rcx, [r15 + rax]
	lea	r15, [r15 + rax + 1]
	lea	rsi, [rsi]
	lea	r13, [rcx*8 + 8]
	mov	rdi, rbp
	mov	rsi, r13
	nop	
	call	xrealloc
	mov	rcx, rax
	movabs	rax, 0xfffffffffffffff
	cmp	r15, rax
	jbe	.label_630
	lea	rsi, [rsi]
	jmp	.label_622
.label_628:
	lea	rsi, [rsi]
	test	r15, r15
	mov	eax, 0x10
	lea	rsi, [rsi]
	cmove	r15, rax
	lea	rsi, [rsi]
	movabs	rax, 0xfffffffffffffff
	cmp	r15, rax
	ja	.label_623
	lea	rsi, [rsi]
	lea	r13, [r15*8]
	mov	rdi, rbp
	mov	rsi, r13
	mov	rbp, rbp
	call	xrealloc
	lea	rsi, [rsi]
	mov	rcx, rax
.label_630:
	mov	qword ptr [rsp + 0x28], rcx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, r13
	call	xrealloc
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rax
	lea	rsi, [rsi]
	mov	r13, rbx
.label_626:
	cmp	r12, -1
	lea	rdi, [rdi]
	je	.label_631
	lea	rsi, [rsi]
	mov	rbx, r12
	mov	rbp, rbp
	inc	rbx
	lea	rdi, [rdi]
	jns	.label_621
.label_622:
	mov	rbp, rbp
	call	xalloc_die
.label_631:
	mov	rbp, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp + r14*8], 0
	mov	rbx, qword ptr [rsp + 0x30]
	mov	qword ptr [rbx + r14*8], 0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 8]
	call	free
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [rax], rbp
	mov	rax, qword ptr [rsp + 0x20]
	test	rax, rax
	je	.label_629
	mov	qword ptr [rax], rbx
	lea	rsi, [rsi]
	jmp	.label_627
.label_629:
	nop	
	mov	rdi, rbx
	call	free
.label_627:
	lea	rdi, [rdi]
	mov	rax, r14
	nop	
	add	rsp, 0x48
	pop	rbx
	nop	
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	nop	
	pop	rbp
	nop	
	ret	
.label_623:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x40b2e0

	.globl safe_write
	.type safe_write, @function
safe_write:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	rsp, rsp
	mov	r14, rsi
	nop	
	mov	r15d, edi
	nop	word ptr cs:[rax + rax]
.label_633:
	mov	rbp, rbp
	mov	edi, r15d
	mov	rsi, r14
	lea	rdi, [rdi]
	mov	rdx, rbx
	call	write
	mov	rsp, rsp
	mov	rbp, rax
	lea	rsi, [rsi]
	test	rbp, rbp
	lea	rsi, [rsi]
	jns	.label_632
	call	__errno_location
	nop	
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_633
	cmp	rbx, 0x7ff00001
	nop	
	jb	.label_632
	nop	
	cmp	eax, 0x16
	mov	ebx, 0x7ff00000
	je	.label_633
.label_632:
	mov	rbp, rbp
	mov	rax, rbp
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	mov	rsp, rsp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x40b370

	.globl trim2
	.type trim2, @function
trim2:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	push	r14
	push	r12
	lea	rdi, [rdi]
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x50
	lea	rsi, [rsi]
	mov	r14d, esi
	call	__strdup
	mov	r12, rax
	lea	rsi, [rsi]
	test	r12, r12
	je	.label_636
	call	__ctype_get_mb_cur_max
	cmp	rax, 2
	jb	.label_641
	mov	rbp, rbp
	test	r14d, r14d
	je	.label_642
	nop	
	mov	qword ptr [rsp + 0x20], r12
	mov	rbp, rbp
	mov	rdi, r12
	nop	
	call	strlen
	nop	
	lea	rcx, [r12 + rax]
	mov	qword ptr [rsp + 8], rcx
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x10], 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x14], 0
	mov	byte ptr [rsp + 0x1c], 0
	test	rax, rax
	mov	rbp, rbp
	mov	rbp, r12
	lea	rsi, [rsi]
	jle	.label_645
	mov	rsp, rsp
	lea	rbp, [rsp + 8]
	nop	word ptr cs:[rax + rax]
.label_644:
	mov	rdi, rbp
	call	mbiter_multi_next
	mov	rdi, qword ptr [rsp + 0x30]
	test	dil, dil
	je	.label_638
	mov	rbp, rbp
	shr	rdi, 0x20
	nop	
	call	iswspace
	nop	
	test	eax, eax
	nop	
	je	.label_638
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x20]
	add	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x20], rax
	nop	
	mov	byte ptr [rsp + 0x1c], 0
	cmp	rax, qword ptr [rsp + 8]
	jb	.label_644
.label_638:
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x20]
.label_645:
	mov	rdi, rbp
	call	strlen
	lea	rsi, [rsi]
	lea	rdx, [rax + 1]
	mov	rdi, r12
	nop	
	mov	rsi, rbp
	mov	rbp, rbp
	call	memmove
	lea	rsi, [rsi]
	cmp	r14d, 1
	lea	rsi, [rsi]
	je	.label_639
.label_642:
	mov	qword ptr [rsp + 0x20], r12
	mov	rdi, r12
	mov	rbp, rbp
	call	strlen
	nop	
	mov	rcx, r12
	add	rcx, rax
	nop	
	mov	qword ptr [rsp + 8], rcx
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x10], 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x14], 0
	mov	byte ptr [rsp + 0x1c], 0
	test	rax, rax
	nop	
	jle	.label_639
	nop	
	xor	ebp, ebp
	lea	rdi, [rdi]
	lea	r14, [rsp + 8]
	nop	word ptr cs:[rax + rax]
.label_649:
	mov	rbp, rbp
	mov	rdi, r14
	call	mbiter_multi_next
	cmp	ebp, 1
	je	.label_646
	lea	rsi, [rsi]
	test	ebp, ebp
	lea	rsi, [rsi]
	jne	.label_648
	mov	rdi, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	mov	ebp, 1
	mov	rbp, rbp
	test	dil, dil
	je	.label_634
	shr	rdi, 0x20
	lea	rdi, [rdi]
	call	iswspace
	lea	rsi, [rsi]
	test	eax, eax
	mov	rbp, rbp
	je	.label_640
	mov	rsp, rsp
	xor	ebp, ebp
	jmp	.label_634
	nop	dword ptr [rax + rax]
.label_646:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	ebp, 1
	nop	
	test	dil, dil
	je	.label_634
	shr	rdi, 0x20
	lea	rdi, [rdi]
	call	iswspace
	test	eax, eax
	je	.label_634
	mov	rdi, qword ptr [rsp + 0x30]
	test	dil, dil
	nop	
	je	.label_637
	shr	rdi, 0x20
	lea	rsi, [rsi]
	call	iswspace
	nop	
	test	eax, eax
	je	.label_637
	lea	rsi, [rsi]
	mov	ebp, 2
	lea	rdi, [rdi]
	mov	r15, qword ptr [rsp + 0x20]
	jmp	.label_634
	nop	word ptr cs:[rax + rax]
.label_648:
	mov	rdi, qword ptr [rsp + 0x30]
	test	dil, dil
	mov	rbp, rbp
	je	.label_637
	lea	rsi, [rsi]
	shr	rdi, 0x20
	call	iswspace
	nop	
	mov	ebp, 2
	lea	rsi, [rsi]
	test	eax, eax
	mov	rsp, rsp
	jne	.label_634
	lea	rsi, [rsi]
	jmp	.label_637
.label_640:
	mov	rdi, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	test	dil, dil
	je	.label_634
	nop	
	shr	rdi, 0x20
	nop	
	call	iswspace
	test	eax, eax
	je	.label_634
	nop	word ptr [rax + rax]
.label_637:
	mov	ebp, 1
.label_634:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x20]
	add	rax, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], rax
	mov	byte ptr [rsp + 0x1c], 0
	cmp	rax, qword ptr [rsp + 8]
	jb	.label_649
	mov	rbp, rbp
	cmp	ebp, 2
	jne	.label_639
	mov	byte ptr [r15], 0
	lea	rsi, [rsi]
	jmp	.label_639
.label_641:
	test	r14d, r14d
	je	.label_643
	lea	rdi, [rdi]
	mov	bl, byte ptr [r12]
	test	bl, bl
	mov	rbp, r12
	je	.label_635
	lea	rdi, [rdi]
	call	__ctype_b_loc
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rbp, r12
	nop	word ptr cs:[rax + rax]
.label_647:
	mov	rbp, rbp
	movzx	ecx, bl
	nop	
	test	byte ptr [rax + rcx*2 + 1], 0x20
	nop	
	je	.label_635
	mov	rbp, rbp
	mov	bl, byte ptr [rbp + 1]
	mov	rsp, rsp
	inc	rbp
	test	bl, bl
	jne	.label_647
.label_635:
	mov	rsp, rsp
	mov	rdi, rbp
	call	strlen
	lea	rdx, [rax + 1]
	mov	rdi, r12
	nop	
	mov	rsi, rbp
	call	memmove
	cmp	r14d, 1
	je	.label_639
.label_643:
	mov	rdi, r12
	call	strlen
	lea	rdi, [rdi]
	lea	rbp, [r12 + rax - 1]
	cmp	rbp, r12
	jb	.label_639
	lea	rsi, [rsi]
	call	__ctype_b_loc
	nop	dword ptr [rax]
.label_650:
	movzx	ecx, byte ptr [rbp]
	mov	rbp, rbp
	mov	rdx, qword ptr [rax]
	test	byte ptr [rdx + rcx*2 + 1], 0x20
	lea	rdi, [rdi]
	je	.label_639
	mov	byte ptr [rbp], 0
	dec	rbp
	cmp	rbp, r12
	jae	.label_650
.label_639:
	lea	rdi, [rdi]
	mov	rax, r12
	mov	rsp, rsp
	add	rsp, 0x50
	lea	rdi, [rdi]
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
.label_636:
	mov	rbp, rbp
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b710

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	nop	
	push	r15
	push	r14
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x38
	mov	r12, r9
	lea	rdi, [rdi]
	mov	r15, r8
	mov	r9, rcx
	mov	rbx, rdx
	lea	rdi, [rdi]
	mov	rcx, rsi
	mov	r14, rdi
	mov	esi, 1
	test	rcx, rcx
	je	.label_655
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_5
	nop	
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	mov	r8, rbx
	lea	rsi, [rsi]
	call	__fprintf_chk
	lea	rdi, [rdi]
	jmp	.label_654
.label_655:
	mov	edx, OFFSET FLAT:.str.1_3
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsp, rsp
	mov	rcx, rbx
	mov	r8, r9
	nop	
	call	__fprintf_chk
.label_654:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_1
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	esi, 1
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:version_etc_copyright
	mov	r8d, 0x7e3
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdi, r14
	lea	rsi, [rsi]
	call	__fprintf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3_0
	mov	rbp, rbp
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsi, r14
	nop	
	call	fputs_unlocked
	nop	
	cmp	r12, 9
	mov	rbp, rbp
	ja	.label_658
	lea	rsi, [rsi]
	jmp	qword ptr [(r12 * 8) + label_659]
.label_917:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.4_0
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	nop	
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	add	rsp, 0x38
	mov	rbp, rbp
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_658:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_657
.label_918:
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.5_0
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	lea	rdi, [rdi]
	mov	r8, qword ptr [r15 + 8]
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	add	rsp, 0x38
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	jmp	__fprintf_chk
.label_919:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.6
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r15]
	lea	rsi, [rsi]
	mov	r8, qword ptr [r15 + 8]
	mov	rsp, rsp
	mov	r9, qword ptr [r15 + 0x10]
	mov	rsp, rsp
	mov	esi, 1
	mov	rbp, rbp
	xor	eax, eax
	mov	rdi, r14
	lea	rdi, [rdi]
	add	rsp, 0x38
	nop	
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r14
	nop	
	pop	r15
	jmp	__fprintf_chk
.label_920:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.7_0
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15]
	lea	rdi, [rdi]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_652
.label_921:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_0
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rdx, rax
	mov	rsp, rsp
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	rsp, rsp
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	nop	
	mov	rsi, qword ptr [r15 + 0x20]
	jmp	.label_651
.label_922:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rdi, [rdi]
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15]
	mov	rsp, rsp
	mov	r8, qword ptr [r15 + 8]
	mov	rbp, rbp
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	jmp	.label_660
.label_923:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10_1
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbp, rbp
	mov	rbx, qword ptr [r15 + 0x30]
	mov	qword ptr [rsp + 0x18], rbx
.label_660:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_651:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_652:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_656
.label_925:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_657:
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	r10, rax
	mov	rcx, qword ptr [r15]
	mov	rbp, rbp
	mov	r8, qword ptr [r15 + 8]
	mov	rsp, rsp
	mov	r9, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	mov	r11, qword ptr [r15 + 0x18]
	nop	
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r15 + 0x38]
	mov	rax, qword ptr [r15 + 0x40]
	mov	qword ptr [rsp + 0x28], rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x18], rbx
	mov	qword ptr [rsp + 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp], r11
	jmp	.label_653
.label_924:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_1
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	r10, rax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r15]
	lea	rsi, [rsi]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	nop	
	mov	rdx, qword ptr [r15 + 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x18], rbx
	nop	
	mov	qword ptr [rsp + 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
.label_653:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_656:
	mov	rbp, rbp
	call	__fprintf_chk
.label_916:
	mov	rsp, rsp
	add	rsp, 0x38
	pop	rbx
	mov	rsp, rsp
	pop	r12
	lea	rsi, [rsi]
	pop	r14
	nop	
	pop	r15
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40bb00
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_661:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_661
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bb30
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	nop	
	xor	r9d, r9d
	nop	dword ptr [rax + rax]
.label_665:
	lea	rdi, [rdi]
	cmp	r10d, 0x28
	ja	.label_662
	movsxd	r11, r10d
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	rbp, rbp
	mov	dword ptr [r8], r10d
	mov	rsp, rsp
	jmp	.label_664
	nop	word ptr cs:[rax + rax]
.label_662:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_664:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_663
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_665
.label_663:
	lea	rdi, [rdi]
	lea	r8, [rsp]
	mov	rsp, rsp
	call	version_etc_arn
	add	rsp, 0x58
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bbc0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x118
	test	al, al
	nop	
	je	.label_666
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x80], xmm0
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x90], xmm1
	nop	
	movaps	xmmword ptr [rsp + 0xa0], xmm2
	movaps	xmmword ptr [rsp + 0xb0], xmm3
	nop	
	movaps	xmmword ptr [rsp + 0xc0], xmm4
	nop	
	movaps	xmmword ptr [rsp + 0xd0], xmm5
	movaps	xmmword ptr [rsp + 0xe0], xmm6
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0xf0], xmm7
.label_666:
	mov	qword ptr [rsp + 0x78], r9
	nop	
	mov	qword ptr [rsp + 0x70], r8
	lea	rax, [rsp + 0x50]
	mov	qword ptr [rsp + 0x110], rax
	mov	rbp, rbp
	lea	rax, [rsp + 0x120]
	mov	qword ptr [rsp + 0x108], rax
	mov	dword ptr [rsp + 0x104], 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x100], 0x20
	xor	r9d, r9d
	mov	rsp, rsp
	mov	r8d, dword ptr [rsp + 0x100]
	nop	word ptr [rax + rax]
.label_668:
	lea	rdi, [rdi]
	cmp	r8d, 0x28
	ja	.label_667
	lea	rdi, [rdi]
	movsxd	r10, r8d
	mov	rbp, rbp
	add	r10, qword ptr [rsp + 0x110]
	add	r8d, 8
	mov	dword ptr [rsp + 0x100], r8d
	jmp	.label_669
	nop	dword ptr [rax + rax]
.label_667:
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x108]
	lea	rdi, [rdi]
	lea	rax, [r10 + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x108], rax
.label_669:
	mov	rbp, rbp
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_670
	inc	r9
	cmp	r9, 0xa
	jb	.label_668
.label_670:
	mov	rsp, rsp
	lea	r8, [rsp]
	mov	rbp, rbp
	call	version_etc_arn
	add	rsp, 0x118
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bd00
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_1
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.15_0
	xor	eax, eax
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18
	mov	rsp, rsp
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rbp
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	
	.section	.text
	.align	16
	#Procedure 0x40bd90
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	lea	rdi, [rdi]
	push	rbx
	lea	rdi, [rdi]
	mov	rbx, rsi
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	xor	edx, edx
	mov	rbp, rbp
	div	rbx
	cmp	rax, rdi
	jb	.label_671
	imul	rbx, rdi
	nop	
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_672
	test	rax, rax
	je	.label_671
.label_672:
	nop	
	pop	rbx
	ret	
.label_671:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40bde0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_673
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_674
.label_673:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_674:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40be10
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	lea	rdi, [rdi]
	push	rbx
	lea	rsi, [rsi]
	mov	rbx, rdx
	nop	
	movabs	rax, 0x7fffffffffffffff
	nop	
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	cmp	rax, rsi
	jb	.label_676
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_675
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_675
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
	nop	
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_675:
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_677
	test	rax, rax
	je	.label_676
.label_677:
	mov	rsp, rsp
	pop	rbx
	ret	
.label_676:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40be90

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_678
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_678
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_678:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_679
	test	rax, rax
	nop	
	je	.label_680
.label_679:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_680:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bee0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	nop	
	mov	rbx, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_681
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_685
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_684
.label_681:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_687
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_687:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_682
.label_684:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	rbx, rcx
	nop	
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_683
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_683
	lea	rsi, [rsi]
	call	free
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_683:
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	realloc
	test	rbx, rbx
	je	.label_686
	test	rax, rax
	mov	rbp, rbp
	je	.label_685
.label_686:
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	ret	
.label_685:
	call	xalloc_die
.label_682:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bfc0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_689
	test	rax, rax
	mov	rbp, rbp
	je	.label_688
.label_689:
	pop	rbx
	ret	
.label_688:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40bfe0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rsp, rsp
	mov	rax, qword ptr [rsi]
	nop	
	test	rdi, rdi
	je	.label_690
	movabs	rcx, 0x5555555555555554
	lea	rdi, [rdi]
	cmp	rax, rcx
	jae	.label_693
	mov	rbx, rax
	mov	rbp, rbp
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_694
	call	free
	xor	eax, eax
	jmp	.label_691
.label_690:
	mov	rbp, rbp
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	js	.label_692
	mov	rsp, rsp
	mov	qword ptr [rsi], rbx
.label_694:
	mov	rsi, rbx
	call	realloc
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_691
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_692
.label_691:
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_692:
	mov	rbp, rbp
	call	xalloc_die
.label_693:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40c070
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	r14
	lea	rsi, [rsi]
	push	rbx
	push	rax
	mov	rbx, rdi
	nop	
	call	malloc
	mov	r14, rax
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_695
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_696
.label_695:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	memset
	lea	rdi, [rdi]
	mov	rax, r14
	nop	
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	lea	rdi, [rdi]
	ret	
.label_696:
	nop	
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c0d0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	mov	rbp, rbp
	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	nop	
	cmp	rax, rdi
	mov	rsp, rsp
	jb	.label_697
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_697
	pop	rcx
	ret	
.label_697:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x40c100

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	rbx
	nop	
	mov	rbx, rsi
	lea	rsi, [rsi]
	mov	r14, rdi
	mov	rdi, rbx
	call	malloc
	mov	rsp, rsp
	mov	r15, rax
	mov	rbp, rbp
	test	rbx, rbx
	je	.label_699
	mov	rbp, rbp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_698
.label_699:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	mov	rbp, rbp
	call	memcpy
	mov	rax, r15
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	mov	rbp, rbp
	pop	r15
	ret	
.label_698:
	nop	
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40c160
	.globl xstrdup
	.type xstrdup, @function
xstrdup:

	push	r15
	lea	rsi, [rsi]
	push	r14
	mov	rsp, rsp
	push	rbx
	mov	r14, rdi
	call	strlen
	mov	rbp, rbp
	mov	rbx, rax
	lea	rdi, [rbx + 1]
	mov	rbp, rbp
	call	malloc
	mov	rsp, rsp
	mov	r15, rax
	mov	rsp, rsp
	inc	rbx
	lea	rsi, [rsi]
	je	.label_700
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_701
.label_700:
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	nop	
	pop	r15
	nop	
	ret	
.label_701:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x40c1c0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_4
	lea	rsi, [rsi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	mov	rsp, rsp
	xor	esi, esi
	nop	
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	edi, ebx
	call	error
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40c210
	.globl xmem_cd_iconv
	.type xmem_cd_iconv, @function
xmem_cd_iconv:

	lea	rsi, [rsi]
	push	rbx
	lea	rdi, [rdi]
	call	mem_cd_iconv
	mov	ebx, eax
	mov	rsp, rsp
	test	ebx, ebx
	jns	.label_703
	call	__errno_location
	mov	rbp, rbp
	cmp	dword ptr [rax], 0xc
	mov	rbp, rbp
	je	.label_702
.label_703:
	mov	eax, ebx
	pop	rbx
	mov	rbp, rbp
	ret	
.label_702:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c250
	.globl xstr_cd_iconv
	.type xstr_cd_iconv, @function
xstr_cd_iconv:

	push	rbx
	mov	rsp, rsp
	call	str_cd_iconv
	lea	rdi, [rdi]
	mov	rbx, rax
	lea	rsi, [rsi]
	test	rbx, rbx
	jne	.label_704
	lea	rdi, [rdi]
	call	__errno_location
	nop	
	cmp	dword ptr [rax], 0xc
	nop	
	je	.label_705
.label_704:
	mov	rbp, rbp
	mov	rax, rbx
	mov	rsp, rsp
	pop	rbx
	mov	rbp, rbp
	ret	
.label_705:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40c290

	.globl xstr_iconv
	.type xstr_iconv, @function
xstr_iconv:
	mov	rsp, rsp
	push	rbx
	call	str_iconv
	mov	rbx, rax
	lea	rsi, [rsi]
	test	rbx, rbx
	jne	.label_706
	mov	rbp, rbp
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_707
.label_706:
	lea	rdi, [rdi]
	mov	rax, rbx
	pop	rbx
	ret	
.label_707:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c2d0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_708
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_709
	lea	rdi, [rdi]
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	mov	rsp, rsp
	cmp	rax, rdi
	nop	
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_709
	mov	rsp, rsp
	push	rax
	mov	rbp, rbp
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0xc
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	pop	rcx
	ret	
.label_708:
	mov	ecx, 1
.label_709:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c340

	.globl rpl_mbrtowc
	.type rpl_mbrtowc, @function
rpl_mbrtowc:
	push	r15
	mov	rsp, rsp
	push	r14
	lea	rsi, [rsi]
	push	r12
	mov	rsp, rsp
	push	rbx
	push	rax
	lea	rsi, [rsi]
	mov	r12, rdx
	mov	r14, rsi
	test	rdi, rdi
	lea	rsi, [rsi]
	lea	rbx, [rsp + 4]
	cmovne	rbx, rdi
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	mbrtowc
	mov	r15, rax
	test	r12, r12
	mov	rsp, rsp
	je	.label_710
	nop	
	cmp	r15, -2
	jb	.label_710
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_710
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_710:
	mov	rbp, rbp
	mov	rax, r15
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r14
	mov	rbp, rbp
	pop	r15
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c3d0

	.globl c_strcasecmp
	.type c_strcasecmp, @function
c_strcasecmp:
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	rdi, rsi
	je	.label_711
	nop	dword ptr [rax]
.label_714:
	movzx	ecx, byte ptr [rdi]
	lea	edx, [rcx - 0x41]
	lea	rsi, [rsi]
	lea	eax, [rcx + 0x20]
	cmp	edx, 0x1a
	mov	rsp, rsp
	cmovae	eax, ecx
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rsi]
	mov	rbp, rbp
	lea	r8d, [rdx - 0x41]
	mov	rbp, rbp
	lea	ecx, [rdx + 0x20]
	lea	rsi, [rsi]
	cmp	r8d, 0x1a
	cmovae	ecx, edx
	lea	rsi, [rsi]
	and	eax, 0xff
	mov	rbp, rbp
	je	.label_712
	inc	rdi
	inc	rsi
	mov	rsp, rsp
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	eax, ecx
	je	.label_714
	jmp	.label_713
.label_712:
	lea	rsi, [rsi]
	movzx	ecx, cl
	xor	eax, eax
.label_713:
	nop	
	sub	eax, ecx
.label_711:
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40c450

	.globl close_stream
	.type close_stream, @function
close_stream:
	mov	rsp, rsp
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	lea	rsi, [rsi]
	call	__fpending
	nop	
	mov	r14, rax
	mov	ebp, dword ptr [rbx]
	mov	rbp, rbp
	mov	rdi, rbx
	call	rpl_fclose
	test	bpl, 0x20
	nop	
	jne	.label_715
	mov	rbp, rbp
	test	eax, eax
	nop	
	sete	cl
	neg	eax
	mov	rbp, rbp
	sbb	ebx, ebx
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_716
	test	cl, cl
	mov	rsp, rsp
	jne	.label_716
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	nop	
	mov	ebx, 0xffffffff
	lea	rsi, [rsi]
	cmove	ebx, ecx
	jmp	.label_716
.label_715:
	mov	ebx, 0xffffffff
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_716
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
.label_716:
	mov	eax, ebx
	nop	
	pop	rbx
	mov	rsp, rsp
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40c4e0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	nop	
	push	rbx
	lea	rdi, [rdi]
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	mov	rsp, rsp
	test	rax, rax
	nop	
	je	.label_718
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_717
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_719
.label_717:
	nop	
	mov	esi, OFFSET FLAT:.str.1_5
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_718
.label_719:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_718:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40c530

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	mov	rsp, rsp
	push	rax
	mov	rsp, rsp
	mov	edi, 0xe
	mov	rbp, rbp
	call	rpl_nl_langinfo
	test	rax, rax
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str_0
	nop	
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_6
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_720
	nop	
	mov	rax, rcx
.label_720:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c570

	.globl mbiter_multi_next
	.type mbiter_multi_next, @function
mbiter_multi_next:
	push	r15
	mov	rsp, rsp
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	push	rbx
	mov	rbp, rbp
	mov	rbx, rdi
	cmp	byte ptr [rbx + 0x14], 0
	lea	rdi, [rdi]
	jne	.label_728
	mov	rsp, rsp
	cmp	byte ptr [rbx + 8], 0
	mov	rbp, rbp
	je	.label_724
	nop	
	lea	r13, [rbx + 0x18]
	mov	r15, qword ptr [rbx + 0x18]
	mov	rbp, rbp
	lea	r14, [rbx + 0xc]
	lea	rsi, [rsi]
	jmp	.label_729
.label_724:
	mov	r15, qword ptr [rbx + 0x18]
	nop	
	movzx	eax, byte ptr [r15]
	mov	rcx, rax
	shr	rcx, 5
	mov	rbp, rbp
	mov	ecx, dword ptr [(rcx * 4) + is_basic_table]
	lea	rsi, [rsi]
	bt	ecx, eax
	jae	.label_727
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x20], 1
	movsx	eax, byte ptr [r15]
	mov	dword ptr [rbx + 0x2c], eax
	mov	byte ptr [rbx + 0x28], 1
	lea	rsi, [rsi]
	jmp	.label_723
.label_727:
	mov	rbp, rbp
	lea	r14, [rbx + 0xc]
	nop	
	mov	rdi, r14
	call	mbsinit
	lea	rsi, [rsi]
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_721
	mov	byte ptr [rbx + 8], 1
	mov	rbp, rbp
	lea	r13, [rbx + 0x18]
.label_729:
	lea	r12, [rbx + 0x2c]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbx]
	lea	rsi, [rsi]
	sub	rdx, r15
	mov	rdi, r12
	mov	rsi, r15
	mov	rcx, r14
	lea	rsi, [rsi]
	call	rpl_mbrtowc
	mov	qword ptr [rbx + 0x20], rax
	lea	rdi, [rdi]
	cmp	rax, -2
	lea	rsi, [rsi]
	je	.label_730
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_722
	lea	rdi, [rdi]
	cmp	rax, -1
	jne	.label_731
	mov	qword ptr [rbx + 0x20], 1
	mov	byte ptr [rbx + 0x28], 0
	mov	rbp, rbp
	jmp	.label_723
.label_730:
	mov	rax, qword ptr [rbx]
	sub	rax, qword ptr [r13]
	mov	qword ptr [rbx + 0x20], rax
	mov	rbp, rbp
	mov	byte ptr [rbx + 0x28], 0
	jmp	.label_723
.label_722:
	mov	qword ptr [rbx + 0x20], 1
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 0x18]
	cmp	byte ptr [rax], 0
	jne	.label_725
	lea	rdi, [rdi]
	cmp	dword ptr [r12], 0
	jne	.label_726
.label_731:
	mov	byte ptr [rbx + 0x28], 1
	mov	rdi, r14
	call	mbsinit
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_723
	mov	byte ptr [rbx + 8], 0
.label_723:
	mov	rbp, rbp
	mov	byte ptr [rbx + 0x14], 1
.label_728:
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	mov	rsp, rsp
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	mov	rsp, rsp
	ret	
.label_725:
	mov	edi, OFFSET FLAT:.str.2_2
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_7
	lea	rdi, [rdi]
	mov	edx, 0xa9
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mbiter_multi_next
	call	__assert_fail
.label_726:
	mov	edi, OFFSET FLAT:.str.3_1
	nop	
	mov	esi, OFFSET FLAT:.str.1_7
	mov	edx, 0xaa
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mbiter_multi_next
	call	__assert_fail
.label_721:
	mov	edi, OFFSET FLAT:.str_6
	mov	esi, OFFSET FLAT:.str.1_7
	nop	
	mov	edx, 0x8e
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mbiter_multi_next
	nop	
	call	__assert_fail
	nop	
	.section	.text
	.align	16
	#Procedure 0x40c730
	.globl mbiter_multi_reloc
	.type mbiter_multi_reloc, @function
mbiter_multi_reloc:

	mov	rbp, rbp
	add	qword ptr [rdi + 0x18], rsi
	lea	rsi, [rsi]
	add	qword ptr [rdi], rsi
	nop	
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40c740
	.globl mbiter_multi_copy
	.type mbiter_multi_copy, @function
mbiter_multi_copy:

	mov	rbp, rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	mov	rbp, rbp
	mov	rax, qword ptr [rbx]
	lea	rsi, [rsi]
	mov	qword ptr [r14], rax
	nop	
	mov	al, byte ptr [rbx + 8]
	lea	rsi, [rsi]
	test	al, al
	mov	byte ptr [r14 + 8], al
	je	.label_732
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0xc]
	lea	rsi, [rsi]
	mov	qword ptr [r14 + 0xc], rax
	nop	
	jmp	.label_735
.label_732:
	mov	qword ptr [r14 + 0xc], 0
.label_735:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbx + 0x14]
	mov	byte ptr [r14 + 0x14], al
	mov	rsi, qword ptr [rbx + 0x18]
	lea	rax, [rbx + 0x30]
	cmp	rsi, rax
	mov	rbp, rbp
	jne	.label_733
	lea	r15, [r14 + 0x30]
	mov	rdx, qword ptr [rbx + 0x20]
	mov	rdi, r15
	mov	rsp, rsp
	call	memcpy
	lea	rdi, [rdi]
	mov	rsi, r15
.label_733:
	nop	
	mov	qword ptr [r14 + 0x18], rsi
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 0x20]
	mov	rsp, rsp
	mov	qword ptr [r14 + 0x20], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 0x28]
	test	al, al
	mov	byte ptr [r14 + 0x28], al
	lea	rdi, [rdi]
	je	.label_734
	lea	rdi, [rdi]
	shr	rax, 0x20
	mov	dword ptr [r14 + 0x2c], eax
.label_734:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40c7f0

	.globl mbsstr
	.type mbsstr, @function
mbsstr:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	push	r15
	lea	rdi, [rdi]
	push	r14
	mov	rbp, rbp
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x178
	lea	rsi, [rsi]
	mov	rbp, rsi
	mov	rbp, rbp
	mov	rbx, rdi
	mov	rsp, rsp
	call	__ctype_get_mb_cur_max
	lea	rsi, [rsi]
	cmp	rax, 2
	mov	rbp, rbp
	jb	.label_744
	mov	qword ptr [rsp + 0xf0], rbp
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rbp
	mov	byte ptr [rsp + 0xe0], 0
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xe4], 0
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0xec], 0
	nop	
	lea	rdi, [rsp + 0xe0]
	lea	rdi, [rdi]
	call	mbuiter_multi_next
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x100]
	test	al, al
	lea	rdi, [rdi]
	je	.label_755
	shr	rax, 0x20
	jne	.label_755
	mov	rax, rbx
	jmp	.label_746
.label_744:
	lea	rdi, [rdi]
	mov	cl, byte ptr [rbp]
	test	cl, cl
	mov	r11, rbp
	je	.label_762
	lea	rdi, [rdi]
	mov	rbp, rbx
	mov	rbp, rbp
	mov	r14b, byte ptr [rbp]
	xor	eax, eax
	test	r14b, r14b
	je	.label_746
	mov	rbp, rbp
	mov	r10b, 1
	nop	
	xor	r9d, r9d
	lea	rdi, [rdi]
	movzx	r12d, cl
	mov	rsp, rsp
	mov	rdi, r11
	xor	r13d, r13d
	nop	
	xor	r15d, r15d
.label_754:
	lea	rdi, [rdi]
	cmp	r15, 0xa
	nop	
	jb	.label_769
	mov	al, r10b
	nop	
	and	al, 1
	nop	
	je	.label_771
	lea	rax, [r15 + r15*4]
	cmp	r13, rax
	jb	.label_737
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd8], r10
	mov	rsp, rsp
	mov	rbx, rbp
	lea	rsi, [rsi]
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_741
	mov	rsi, r13
	sub	rsi, r9
	mov	rbp, r11
	mov	qword ptr [rsp + 0x170], rdi
	call	strnlen
	nop	
	mov	rdi, qword ptr [rsp + 0x170]
	mov	rbp, rbp
	mov	r11, rbp
	cmp	byte ptr [rdi + rax], 0
	mov	r9, r13
	mov	r10, qword ptr [rsp + 0xd8]
	je	.label_741
	lea	rsi, [rsi]
	add	rdi, rax
	mov	rbp, rbp
	mov	r9, r13
	jne	.label_752
.label_741:
	mov	qword ptr [rsp + 0xd8], r13
	mov	rbp, rbp
	mov	r13, r9
	mov	rbp, rbp
	mov	rdi, r11
	lea	rdi, [rdi]
	mov	rbp, r11
	call	strlen
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	mov	rsi, rbp
	mov	rdx, rax
	lea	rdi, [rdi]
	lea	rcx, [rsp + 0xe0]
	lea	rdi, [rdi]
	call	knuth_morris_pratt
	lea	rdi, [rdi]
	test	al, al
	jne	.label_764
	lea	rsi, [rsi]
	mov	r14b, byte ptr [rbx]
	lea	rdi, [rdi]
	xor	r10d, r10d
	lea	rdi, [rdi]
	xor	edi, edi
	mov	r11, rbp
	mov	r9, r13
	mov	rsp, rsp
	mov	r13, qword ptr [rsp + 0xd8]
	jmp	.label_752
.label_737:
	mov	rsp, rsp
	mov	rbx, rbp
	lea	rdi, [rdi]
	jmp	.label_752
.label_769:
	mov	rbx, rbp
	jmp	.label_752
.label_771:
	mov	rsp, rsp
	mov	rbx, rbp
	nop	word ptr [rax + rax]
.label_752:
	mov	rsp, rsp
	movzx	eax, r14b
	cmp	eax, r12d
	mov	eax, 1
	nop	
	mov	rbp, rbx
	jne	.label_736
	nop	word ptr cs:[rax + rax]
.label_749:
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	dl, byte ptr [r11 + rcx]
	test	dl, dl
	je	.label_743
	mov	rsp, rsp
	mov	bl, byte ptr [rbp + rcx]
	mov	rbp, rbp
	test	bl, bl
	mov	eax, 0
	je	.label_746
	nop	
	movzx	edx, dl
	movzx	esi, bl
	lea	rdi, [rdi]
	lea	rax, [rcx + 1]
	lea	rdi, [rdi]
	cmp	esi, edx
	nop	
	je	.label_749
	lea	r13, [r13 + rcx + 1]
	mov	rbp, rbp
	jmp	.label_753
	nop	dword ptr [rax]
.label_736:
	inc	r13
.label_753:
	inc	r15
	mov	r14b, byte ptr [rbp + 1]
	inc	rbp
	test	r14b, r14b
	nop	
	mov	eax, 0
	jne	.label_754
	jmp	.label_746
.label_755:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x138], rax
	mov	byte ptr [rsp + 0x128], 0
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x12c], 0
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0x134], 0
	nop	
	mov	qword ptr [rsp + 0x68], rbx
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x58], 0
	mov	qword ptr [rsp + 0x5c], 0
	mov	byte ptr [rsp + 0x64], 0
	mov	rsp, rsp
	lea	rdi, [rsp + 0x58]
	mov	rbp, rbp
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x78]
	nop	
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x168], rcx
	lea	rsi, [rsi]
	test	al, al
	je	.label_770
	shr	rax, 0x20
	lea	rsi, [rsi]
	je	.label_738
.label_770:
	mov	al, 1
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x170], eax
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x168], rax
	lea	r13, [rsp + 0x128]
	xor	ebp, ebp
	xor	r14d, r14d
	lea	rsi, [rsi]
	xor	r12d, r12d
.label_751:
	lea	rsi, [rsi]
	mov	r15, r14
	cmp	r12, 0xa
	jb	.label_748
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x170]
	lea	rsi, [rsi]
	and	al, 1
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 8]
	je	.label_750
	mov	rbp, rbp
	lea	rax, [r12 + r12*4]
	mov	qword ptr [rsp + 0xd8], r12
	cmp	r15, rax
	lea	rsi, [rsi]
	jb	.label_739
	lea	rdi, [rdi]
	mov	r14, rsi
	cmp	r15, rbp
	je	.label_758
	sub	rbp, r15
	nop	word ptr cs:[rax + rax]
.label_767:
	mov	rsp, rsp
	mov	rdi, r13
	mov	rbp, rbp
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x148]
	lea	rsi, [rsi]
	test	al, al
	mov	rbp, rbp
	je	.label_763
	nop	
	shr	rax, 0x20
	je	.label_758
.label_763:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x140]
	add	qword ptr [rsp + 0x138], rax
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x134], 0
	mov	rbp, rbp
	inc	rbp
	jne	.label_767
.label_758:
	nop	
	mov	rdi, r13
	lea	rsi, [rsi]
	call	mbuiter_multi_next
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x148]
	test	al, al
	je	.label_772
	lea	rdi, [rdi]
	shr	rax, 0x20
	mov	rbp, r15
	mov	rsi, r14
	jne	.label_739
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	r14, rsi
	nop	
	lea	rdx, [rsp + 0x10]
	call	knuth_morris_pratt_multibyte
	test	al, al
	nop	
	jne	.label_745
	mov	dword ptr [rsp + 0x170], 0
.label_772:
	mov	rbp, r15
	mov	rsi, r14
	jmp	.label_739
.label_748:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xd8], r12
	mov	rsi, qword ptr [rsp + 8]
	mov	rbp, rbp
	jmp	.label_739
.label_750:
	nop	
	mov	qword ptr [rsp + 0xd8], r12
	nop	dword ptr [rax + rax]
.label_739:
	mov	qword ptr [rsp + 8], rsi
	mov	rbp, rbp
	lea	r14, [r15 + 1]
	mov	rax, qword ptr [rsp + 0x78]
	test	al, al
	lea	rdi, [rdi]
	je	.label_759
	mov	rcx, qword ptr [rsp + 0x100]
	test	cl, cl
	mov	rbp, rbp
	je	.label_759
	nop	
	shr	rcx, 0x20
	mov	rsp, rsp
	shr	rax, 0x20
	mov	rsp, rsp
	cmp	eax, ecx
	lea	rdi, [rdi]
	je	.label_761
	mov	rbp, rbp
	jmp	.label_760
	nop	word ptr cs:[rax + rax]
.label_759:
	mov	rdx, qword ptr [rsp + 0x70]
	cmp	rdx, qword ptr [rsp + 0xf8]
	nop	
	jne	.label_760
	mov	rdi, qword ptr [rsp + 0x68]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	call	memcmp
	lea	rdi, [rdi]
	test	eax, eax
	jne	.label_760
.label_761:
	movups	xmm0, xmmword ptr [rsp + 0x58]
	nop	
	movups	xmm1, xmmword ptr [rsp + 0x68]
	movups	xmm2, xmmword ptr [rsp + 0x78]
	movups	xmm3, xmmword ptr [rsp + 0x88]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x40], xmm3
	movaps	xmmword ptr [rsp + 0x30], xmm2
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x20], xmm1
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rax, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	add	qword ptr [rsp + 0x20], rax
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x1c], 0
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0xa8], rax
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x98], 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x9c], 0
	mov	byte ptr [rsp + 0xa4], 0
	lea	rdi, [rsp + 0x98]
	call	mbuiter_multi_next
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xb8]
	test	al, al
	mov	rsp, rsp
	je	.label_756
	lea	rdi, [rdi]
	shr	rax, 0x20
	je	.label_768
.label_756:
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	add	qword ptr [rsp + 0xa8], rax
	mov	byte ptr [rsp + 0xa4], 0
	lea	rdi, [rsp + 0x98]
	nop	
	call	mbuiter_multi_next
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb8]
	test	al, al
	je	.label_766
	lea	rdi, [rdi]
	shr	rax, 0x20
	nop	
	je	.label_740
.label_766:
	add	r15, 2
	mov	rsp, rsp
	mov	r14, r15
	nop	dword ptr [rax]
.label_757:
	lea	rdi, [rsp + 0x10]
	call	mbuiter_multi_next
	mov	rcx, qword ptr [rsp + 0x30]
	mov	rax, rcx
	shr	rax, 0x20
	test	cl, cl
	lea	rdi, [rdi]
	je	.label_773
	test	eax, eax
	mov	rbp, rbp
	je	.label_738
.label_773:
	test	cl, cl
	lea	rdi, [rdi]
	sete	dl
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	rbp, rbp
	test	cl, cl
	lea	rdi, [rdi]
	je	.label_742
	test	dl, dl
	jne	.label_742
	shr	rcx, 0x20
	nop	
	cmp	eax, ecx
	lea	rsi, [rsi]
	jne	.label_747
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rsp + 0x28]
	mov	r12, qword ptr [rsp + 0xa8]
	mov	rbp, rbp
	mov	r13, qword ptr [rsp + 0xb0]
	jmp	.label_765
	nop	dword ptr [rax + rax]
.label_742:
	mov	r13, qword ptr [rsp + 0x28]
	cmp	r13, qword ptr [rsp + 0xb0]
	jne	.label_747
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 0x20]
	mov	r12, qword ptr [rsp + 0xa8]
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	lea	rsi, [rsi]
	mov	rax, r13
	mov	rbp, rbp
	jne	.label_747
.label_765:
	add	r15, rax
	nop	
	mov	qword ptr [rsp + 0x20], r15
	nop	
	mov	byte ptr [rsp + 0x1c], 0
	add	r12, r13
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xa8], r12
	mov	rsp, rsp
	mov	byte ptr [rsp + 0xa4], 0
	mov	rbp, rbp
	lea	rdi, [rsp + 0x98]
	mov	rbp, rbp
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0xb8]
	inc	r14
	lea	rsi, [rsi]
	test	al, al
	nop	
	je	.label_757
	shr	rax, 0x20
	jne	.label_757
	jmp	.label_740
.label_747:
	lea	r13, [rsp + 0x128]
	nop	word ptr cs:[rax + rax]
.label_760:
	lea	rsi, [rsi]
	mov	r12, qword ptr [rsp + 0xd8]
	inc	r12
	mov	rax, qword ptr [rsp + 0x70]
	add	qword ptr [rsp + 0x68], rax
	mov	byte ptr [rsp + 0x64], 0
	mov	rsp, rsp
	lea	rdi, [rsp + 0x58]
	mov	rsp, rsp
	call	mbuiter_multi_next
	nop	
	mov	rax, qword ptr [rsp + 0x78]
	test	al, al
	je	.label_751
	shr	rax, 0x20
	mov	rbp, rbp
	jne	.label_751
.label_738:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x168]
	jmp	.label_746
.label_762:
	mov	rax, rbx
	nop	
	jmp	.label_746
.label_743:
	mov	rax, rbp
	jmp	.label_746
.label_740:
	mov	rax, qword ptr [rsp + 0x68]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x168], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x168]
.label_746:
	mov	rsp, rsp
	add	rsp, 0x178
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
.label_764:
	mov	rax, qword ptr [rsp + 0xe0]
	jmp	.label_746
.label_745:
	mov	rax, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x168], rax
	mov	rax, qword ptr [rsp + 0x168]
	nop	
	jmp	.label_746
.label_768:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40cff0

	.globl knuth_morris_pratt_multibyte
	.type knuth_morris_pratt_multibyte, @function
knuth_morris_pratt_multibyte:
	push	rbp
	nop	
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	lea	rdi, [rdi]
	push	r12
	nop	
	push	rbx
	sub	rsp, 0xb8
	mov	r12, rdx
	mov	r14, rsi
	mov	rsp, rsp
	mov	rbx, rdi
	mov	rsp, rsp
	mov	rdi, r14
	mov	rbp, rbp
	call	mbslen
	nop	
	mov	r15, rax
	movabs	rax, 0x249249249249249
	lea	rdi, [rdi]
	cmp	r15, rax
	lea	rsi, [rsi]
	jbe	.label_784
	nop	
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_785
.label_784:
	nop	
	imul	rdi, r15, 0x38
	cmp	rdi, 0xfa0
	ja	.label_793
	mov	rax, rsp
	add	rdi, 0x2e
	mov	rbp, rbp
	and	rdi, 0xfffffffffffffff0
	mov	rsp, rsp
	mov	rcx, rax
	sub	rcx, rdi
	mov	rsp, rcx
	lea	rdi, [rdi]
	neg	rdi
	nop	
	lea	rax, [rax + rdi + 0x1f]
	nop	
	and	rax, 0xffffffffffffffe0
	lea	rsi, [rsi]
	jmp	.label_796
.label_793:
	lea	rdi, [rdi]
	call	mmalloca
.label_796:
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_775
	mov	qword ptr [rbp - 0x90], rbx
	mov	r13, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], r12
	lea	rax, [r15 + r15*2]
	mov	rbp, rbp
	shl	rax, 4
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc8], r14
	mov	byte ptr [rbp - 0xd8], 0
	mov	qword ptr [rbp - 0xd4], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xcc], 0
	lea	rdi, [rbp - 0xd8]
	mov	rsp, rsp
	call	mbuiter_multi_next
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb8]
	test	al, al
	je	.label_801
	shr	rax, 0x20
	je	.label_805
.label_801:
	lea	rbx, [rbp - 0xb0]
	mov	rsp, rsp
	lea	r14, [r13 + 0x18]
	lea	r12, [rbp - 0xd8]
	nop	
.label_779:
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	cmp	rax, rbx
	jne	.label_782
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rdi, r14
	nop	
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	memcpy
	mov	rsp, rsp
	mov	rax, r14
.label_782:
	mov	qword ptr [r14 - 0x18], rax
	mov	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [r14 - 0x10], rax
	mov	rax, qword ptr [rbp - 0xb8]
	test	al, al
	lea	rdi, [rdi]
	mov	byte ptr [r14 - 8], al
	je	.label_794
	shr	rax, 0x20
	mov	dword ptr [r14 - 4], eax
.label_794:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xc0]
	add	qword ptr [rbp - 0xc8], rax
	mov	byte ptr [rbp - 0xcc], 0
	mov	rdi, r12
	lea	rsi, [rsi]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rbp - 0xb8]
	add	r14, 0x30
	test	al, al
	je	.label_779
	shr	rax, 0x20
	lea	rsi, [rsi]
	jne	.label_779
.label_805:
	mov	r12, r13
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [r12 + rax]
	lea	rdi, [rdi]
	mov	qword ptr [r12 + rax + 8], 1
	lea	rdi, [rdi]
	mov	ecx, 2
	lea	rsi, [rsi]
	xor	ebx, ebx
	cmp	r15, 3
	mov	qword ptr [rbp - 0x40], r15
	nop	
	jb	.label_799
.label_800:
	mov	qword ptr [rbp - 0xe0], rcx
	mov	rbp, rbp
	lea	rax, [rcx + rcx*2]
	shl	rax, 4
	mov	rbp, rbp
	lea	rcx, [rax + r12 - 0x30]
	nop	
	mov	qword ptr [rbp - 0x30], rcx
	mov	r15b, byte ptr [rax + r12 - 0x20]
	lea	r14, [rax + r12 - 0x28]
	lea	rax, [rax + r12 - 0x1c]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_789
	nop	word ptr cs:[rax + rax]
.label_788:
	lea	rsi, [rsi]
	sub	rbx, qword ptr [rsi + rbx*8]
.label_789:
	lea	rdi, [rdi]
	test	r15b, r15b
	je	.label_792
	lea	rsi, [rsi]
	lea	rax, [rbx + rbx*2]
	shl	rax, 4
	mov	rsp, rsp
	cmp	byte ptr [r12 + rax + 0x10], 0
	lea	rsi, [rsi]
	je	.label_792
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	ecx, dword ptr [rcx]
	mov	rsp, rsp
	cmp	ecx, dword ptr [r12 + rax + 0x14]
	jne	.label_791
	mov	rsp, rsp
	jmp	.label_786
.label_792:
	mov	rbp, rbp
	mov	rdx, qword ptr [r14]
	lea	rax, [rbx + rbx*2]
	shl	rax, 4
	mov	rbp, rbp
	cmp	rdx, qword ptr [r12 + rax + 8]
	jne	.label_791
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	r13, rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r12 + rax]
	lea	rdi, [rdi]
	call	memcmp
	mov	rsi, r13
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_786
.label_791:
	test	rbx, rbx
	jne	.label_788
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xe0]
	mov	qword ptr [rsi + rcx*8], rcx
	lea	rsi, [rsi]
	xor	ebx, ebx
	mov	rsp, rsp
	jmp	.label_790
.label_786:
	mov	rsp, rsp
	inc	rbx
	mov	rcx, qword ptr [rbp - 0xe0]
	mov	rax, rcx
	sub	rax, rbx
	mov	qword ptr [rsi + rcx*8], rax
.label_790:
	inc	rcx
	cmp	rcx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	jne	.label_800
.label_799:
	lea	rdi, [rdi]
	mov	r13, r12
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x98], rsi
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [rax], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc8], rax
	mov	byte ptr [rbp - 0xd8], 0
	nop	
	mov	qword ptr [rbp - 0xd4], 0
	nop	
	mov	byte ptr [rbp - 0xcc], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], rax
	mov	byte ptr [rbp - 0x88], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x84], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x7c], 0
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x88]
	call	mbuiter_multi_next
	nop	
	mov	rcx, qword ptr [rbp - 0x68]
	nop	
	mov	rax, rcx
	shr	rax, 0x20
	mov	rbp, rbp
	test	cl, cl
	mov	rsp, rsp
	setne	cl
	je	.label_803
	test	eax, eax
	mov	rbp, rbp
	je	.label_777
.label_803:
	xor	r15d, r15d
	lea	rbx, [rbp - 0x88]
	nop	word ptr cs:[rax + rax]
.label_780:
	nop	
	lea	rdx, [r15 + r15*2]
	lea	rsi, [rsi]
	shl	rdx, 4
	mov	rsp, rsp
	cmp	byte ptr [r13 + rdx + 0x10], 0
	je	.label_787
	xor	cl, 1
	mov	rbp, rbp
	test	cl, 1
	jne	.label_787
	mov	rbp, rbp
	cmp	dword ptr [r13 + rdx + 0x14], eax
	jne	.label_783
	mov	r12, qword ptr [rbp - 0x78]
	mov	r14, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	jmp	.label_781
	nop	dword ptr [rax]
.label_787:
	mov	rbp, rbp
	mov	r14, qword ptr [r13 + rdx + 8]
	cmp	r14, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	jne	.label_783
	mov	rsp, rsp
	mov	rdi, qword ptr [r13 + rdx]
	mov	r12, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	rsi, r12
	mov	rbp, rbp
	mov	rdx, r14
	nop	
	call	memcmp
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_781
.label_783:
	test	r15, r15
	mov	rsp, rsp
	je	.label_776
	mov	rbp, rbp
	mov	r14, rbx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x98]
	mov	rbx, qword ptr [rax + r15*8]
	sub	r15, rbx
	nop	
	test	rbx, rbx
	lea	r12, [rbp - 0xd8]
	lea	rdi, [rdi]
	je	.label_797
	nop	word ptr cs:[rax + rax]
.label_778:
	mov	rdi, r12
	lea	rdi, [rdi]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	test	al, al
	lea	rdi, [rdi]
	je	.label_804
	lea	rsi, [rsi]
	shr	rax, 0x20
	je	.label_774
.label_804:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xc0]
	add	qword ptr [rbp - 0xc8], rax
	mov	byte ptr [rbp - 0xcc], 0
	mov	rsp, rsp
	dec	rbx
	mov	rsp, rsp
	jne	.label_778
	mov	rsp, rsp
	mov	rbx, r14
	jmp	.label_795
	nop	word ptr [rax + rax]
.label_781:
	mov	rbp, rbp
	inc	r15
	mov	rsp, rsp
	add	r12, r14
	nop	
	mov	qword ptr [rbp - 0x78], r12
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x7c], 0
	cmp	r15, qword ptr [rbp - 0x40]
	jne	.label_795
	jmp	.label_802
	nop	word ptr [rax + rax]
.label_776:
	mov	rsp, rsp
	lea	rdi, [rbp - 0xd8]
	call	mbuiter_multi_next
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb8]
	lea	rdi, [rdi]
	test	al, al
	mov	rbp, rbp
	je	.label_798
	shr	rax, 0x20
	mov	rsp, rsp
	je	.label_774
.label_798:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rsp, rsp
	add	qword ptr [rbp - 0xc8], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xcc], 0
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	add	qword ptr [rbp - 0x78], rax
	mov	byte ptr [rbp - 0x7c], 0
	mov	rsp, rsp
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_795
.label_797:
	lea	rdi, [rdi]
	mov	rbx, r14
	nop	dword ptr [rax]
.label_795:
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	mbuiter_multi_next
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rax, rcx
	shr	rax, 0x20
	test	cl, cl
	lea	rdi, [rdi]
	setne	cl
	je	.label_780
	test	eax, eax
	jne	.label_780
	jmp	.label_777
.label_775:
	nop	
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_785
.label_802:
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
.label_777:
	mov	rdi, r13
	call	freea
	mov	al, 1
.label_785:
	nop	
	lea	rsp, [rbp - 0x28]
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	mov	rsp, rsp
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	nop	
	pop	r15
	nop	
	pop	rbp
	mov	rbp, rbp
	ret	
.label_774:
	nop	
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d5f0

	.globl knuth_morris_pratt
	.type knuth_morris_pratt, @function
knuth_morris_pratt:
	push	rbp
	nop	
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	push	rax
	mov	r14, rcx
	mov	r12, rdx
	mov	r13, rsi
	mov	r15, rdi
	lea	rsi, [rsi]
	mov	rax, r12
	shr	rax, 0x3c
	je	.label_818
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	jmp	.label_812
.label_818:
	lea	rsi, [rsi]
	lea	rdi, [r12*8]
	lea	rsi, [rsi]
	cmp	rdi, 0xfa0
	ja	.label_815
	mov	rax, rsp
	mov	rsp, rsp
	add	rdi, 0x2e
	and	rdi, 0xfffffffffffffff0
	mov	rcx, rax
	sub	rcx, rdi
	mov	rbp, rbp
	mov	rsp, rcx
	neg	rdi
	mov	rbp, rbp
	lea	rdi, [rax + rdi + 0x1f]
	and	rdi, 0xffffffffffffffe0
	jmp	.label_821
.label_815:
	call	mmalloca
	nop	
	mov	rdi, rax
.label_821:
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_819
	mov	qword ptr [rdi + 8], 1
	mov	eax, 2
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rsi, [rsi]
	cmp	r12, 3
	nop	
	jb	.label_820
	nop	word ptr [rax + rax]
.label_808:
	nop	
	movzx	edx, byte ptr [rax + r13 - 1]
	mov	rbp, rbp
	movzx	esi, byte ptr [r13 + rcx]
	cmp	edx, esi
	je	.label_813
	nop	word ptr cs:[rax + rax]
.label_809:
	lea	rdi, [rdi]
	test	rcx, rcx
	je	.label_807
	mov	rsp, rsp
	sub	rcx, qword ptr [rdi + rcx*8]
	lea	rsi, [rsi]
	movzx	esi, byte ptr [r13 + rcx]
	nop	
	movzx	ebx, dl
	mov	rbp, rbp
	cmp	ebx, esi
	mov	rsp, rsp
	jne	.label_809
.label_813:
	inc	rcx
	nop	
	mov	rdx, rax
	mov	rsp, rsp
	sub	rdx, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rdi + rax*8], rdx
	lea	rsi, [rsi]
	jmp	.label_814
	nop	
.label_807:
	mov	qword ptr [rdi + rax*8], rax
	xor	ecx, ecx
.label_814:
	nop	
	inc	rax
	cmp	rax, r12
	jne	.label_808
.label_820:
	mov	qword ptr [r14], 0
	xor	ecx, ecx
	mov	rax, r15
	jmp	.label_811
.label_819:
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_812
.label_817:
	mov	rbp, rbp
	mov	rdx, qword ptr [rdi + rcx*8]
	lea	rdi, [rdi]
	add	r15, rdx
	sub	rcx, rdx
	nop	word ptr cs:[rax + rax]
.label_811:
	nop	
	mov	dl, byte ptr [rax]
	lea	rdi, [rdi]
	test	dl, dl
	nop	
	je	.label_806
	mov	rbp, rbp
	movzx	esi, byte ptr [r13 + rcx]
	movzx	edx, dl
	cmp	esi, edx
	jne	.label_810
	lea	rdi, [rdi]
	inc	rcx
	inc	rax
	lea	rdi, [rdi]
	cmp	r12, rcx
	jne	.label_811
	jmp	.label_816
.label_810:
	test	rcx, rcx
	lea	rsi, [rsi]
	jne	.label_817
	mov	rbp, rbp
	inc	r15
	lea	rdi, [rdi]
	inc	rax
	xor	ecx, ecx
	jmp	.label_811
.label_816:
	mov	qword ptr [r14], r15
.label_806:
	call	freea
	mov	rbp, rbp
	mov	al, 1
.label_812:
	lea	rsp, [rbp - 0x28]
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d7b0

	.globl mbuiter_multi_next
	.type mbuiter_multi_next, @function
mbuiter_multi_next:
	push	r15
	push	r14
	mov	rbp, rbp
	push	r12
	push	rbx
	push	rax
	mov	rbp, rbp
	mov	rbx, rdi
	cmp	byte ptr [rbx + 0xc], 0
	lea	rsi, [rsi]
	jne	.label_827
	cmp	byte ptr [rbx], 0
	mov	r15, qword ptr [rbx + 0x10]
	je	.label_822
	lea	r14, [rbx + 4]
	jmp	.label_824
.label_822:
	movzx	eax, byte ptr [r15]
	mov	rbp, rbp
	mov	rcx, rax
	shr	rcx, 5
	mov	ecx, dword ptr [(rcx * 4) + is_basic_table]
	mov	rbp, rbp
	bt	ecx, eax
	jae	.label_826
	mov	qword ptr [rbx + 0x18], 1
	movsx	eax, byte ptr [r15]
	mov	rbp, rbp
	mov	dword ptr [rbx + 0x24], eax
	mov	byte ptr [rbx + 0x20], 1
	jmp	.label_825
.label_826:
	lea	rsi, [rsi]
	lea	r14, [rbx + 4]
	mov	rdi, r14
	call	mbsinit
	test	eax, eax
	je	.label_828
	lea	rsi, [rsi]
	mov	byte ptr [rbx], 1
.label_824:
	lea	r12, [rbx + 0x24]
	nop	
	call	__ctype_get_mb_cur_max
	nop	
	mov	rdi, r15
	lea	rdi, [rdi]
	mov	rsi, rax
	call	strnlen1
	lea	rdi, [rdi]
	mov	rdi, r12
	mov	rsp, rsp
	mov	rsi, r15
	nop	
	mov	rdx, rax
	mov	rcx, r14
	call	rpl_mbrtowc
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x18], rax
	nop	
	cmp	rax, -2
	je	.label_829
	test	rax, rax
	je	.label_830
	nop	
	cmp	rax, -1
	nop	
	jne	.label_832
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x18], 1
	mov	byte ptr [rbx + 0x20], 0
	jmp	.label_825
.label_829:
	mov	rdi, qword ptr [rbx + 0x10]
	nop	
	call	strlen
	mov	qword ptr [rbx + 0x18], rax
	mov	byte ptr [rbx + 0x20], 0
	jmp	.label_825
.label_830:
	mov	qword ptr [rbx + 0x18], 1
	mov	rax, qword ptr [rbx + 0x10]
	cmp	byte ptr [rax], 0
	jne	.label_823
	lea	rdi, [rdi]
	cmp	dword ptr [r12], 0
	lea	rsi, [rsi]
	jne	.label_831
.label_832:
	mov	byte ptr [rbx + 0x20], 1
	mov	rdi, r14
	nop	
	call	mbsinit
	lea	rsi, [rsi]
	test	eax, eax
	nop	
	je	.label_825
	mov	rsp, rsp
	mov	byte ptr [rbx], 0
.label_825:
	lea	rsi, [rsi]
	mov	byte ptr [rbx + 0xc], 1
.label_827:
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r14
	mov	rbp, rbp
	pop	r15
	ret	
.label_823:
	mov	edi, OFFSET FLAT:.str.2_2
	nop	
	mov	esi, OFFSET FLAT:.str.1_8
	mov	edx, 0xb2
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mbuiter_multi_next
	nop	
	call	__assert_fail
.label_831:
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.3_1
	mov	esi, OFFSET FLAT:.str.1_8
	mov	edx, 0xb3
	nop	
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mbuiter_multi_next
	call	__assert_fail
.label_828:
	mov	edi, OFFSET FLAT:.str_6
	mov	esi, OFFSET FLAT:.str.1_8
	lea	rdi, [rdi]
	mov	edx, 0x96
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mbuiter_multi_next
	lea	rdi, [rdi]
	call	__assert_fail
	nop	
	.section	.text
	.align	16
	#Procedure 0x40d950
	.globl mbuiter_multi_reloc
	.type mbuiter_multi_reloc, @function
mbuiter_multi_reloc:

	add	qword ptr [rdi + 0x10], rsi
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d960
	.globl mbuiter_multi_copy
	.type mbuiter_multi_copy, @function
mbuiter_multi_copy:

	push	r15
	mov	rsp, rsp
	push	r14
	push	rbx
	nop	
	mov	rbx, rsi
	mov	rbp, rbp
	mov	r14, rdi
	mov	al, byte ptr [rbx]
	lea	rsi, [rsi]
	test	al, al
	mov	byte ptr [r14], al
	je	.label_833
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 4]
	nop	
	mov	qword ptr [r14 + 4], rax
	jmp	.label_836
.label_833:
	mov	rbp, rbp
	mov	qword ptr [r14 + 4], 0
.label_836:
	mov	al, byte ptr [rbx + 0xc]
	lea	rdi, [rdi]
	mov	byte ptr [r14 + 0xc], al
	mov	rsi, qword ptr [rbx + 0x10]
	lea	rax, [rbx + 0x28]
	mov	rsp, rsp
	cmp	rsi, rax
	jne	.label_835
	lea	rdi, [rdi]
	lea	r15, [r14 + 0x28]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbx + 0x18]
	lea	rdi, [rdi]
	mov	rdi, r15
	lea	rdi, [rdi]
	call	memcpy
	mov	rsi, r15
.label_835:
	mov	qword ptr [r14 + 0x10], rsi
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x18]
	mov	rsp, rsp
	mov	qword ptr [r14 + 0x18], rax
	mov	rax, qword ptr [rbx + 0x20]
	test	al, al
	lea	rdi, [rdi]
	mov	byte ptr [r14 + 0x20], al
	mov	rbp, rbp
	je	.label_834
	lea	rdi, [rdi]
	shr	rax, 0x20
	mov	dword ptr [r14 + 0x24], eax
.label_834:
	pop	rbx
	mov	rsp, rsp
	pop	r14
	mov	rbp, rbp
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40da10

	.globl mem_cd_iconv
	.type mem_cd_iconv, @function
mem_cd_iconv:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	lea	rsi, [rsi]
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x1058
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], r8
	mov	qword ptr [rsp + 0x40], rcx
	lea	rdi, [rdi]
	mov	rax, rdx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x48], rax
	mov	rbp, rsi
	mov	qword ptr [rsp + 0x18], rbp
	mov	r14, rdi
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], r14
	lea	rdi, [rdi]
	xor	ebx, ebx
	nop	
	xor	esi, esi
	xor	edx, edx
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rdi, rax
	call	iconv
	mov	qword ptr [rsp + 0x10], r14
	nop	
	mov	qword ptr [rsp + 0x30], rbp
	test	rbp, rbp
	je	.label_846
	xor	ebx, ebx
	lea	r12, [rsp + 0x50]
	lea	rsi, [rsi]
	lea	r14, [rsp + 0x10]
	mov	rsp, rsp
	lea	rbp, [rsp + 0x30]
	lea	rsi, [rsi]
	lea	r15, [rsp + 0x20]
	nop	
	lea	r13, [rsp + 0x38]
	nop	dword ptr [rax + rax]
.label_850:
	mov	qword ptr [rsp + 0x20], r12
	mov	qword ptr [rsp + 0x38], 0x1000
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rsi, r14
	mov	rdx, rbp
	mov	rbp, rbp
	mov	rcx, r15
	mov	r8, r13
	call	iconv
	cmp	rax, -1
	lea	rdi, [rdi]
	jne	.label_845
	nop	
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 7
	mov	rbp, rbp
	jne	.label_849
.label_845:
	sub	rbx, r12
	add	rbx, qword ptr [rsp + 0x20]
	cmp	qword ptr [rsp + 0x30], 0
	jne	.label_850
.label_846:
	lea	r14, [rsp + 0x50]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], r14
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x38], 0x1000
	xor	ebp, ebp
	lea	rcx, [rsp + 0x20]
	lea	r8, [rsp + 0x38]
	nop	
	xor	esi, esi
	nop	
	xor	edx, edx
	mov	rdi, qword ptr [rsp + 0x48]
	call	iconv
	nop	
	cmp	rax, -1
	nop	
	je	.label_851
	lea	rdi, [rdi]
	sub	rbx, r14
	mov	rsp, rsp
	add	rbx, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	jmp	.label_841
.label_851:
	lea	rdi, [rdi]
	mov	ebp, 1
	lea	rdi, [rdi]
	jmp	.label_841
.label_849:
	cmp	eax, 0x16
	je	.label_846
	mov	ebp, 1
.label_841:
	mov	r12d, 0xffffffff
	mov	rbp, rbp
	test	ebp, ebp
	jne	.label_839
	nop	
	test	rbx, rbx
	je	.label_852
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x40]
	mov	rbp, qword ptr [rax]
	test	rbp, rbp
	je	.label_837
	mov	rax, qword ptr [rsp + 0x28]
	cmp	qword ptr [rax], rbx
	nop	
	jae	.label_842
.label_837:
	mov	rdi, rbx
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	lea	rdi, [rdi]
	je	.label_848
.label_842:
	mov	qword ptr [rsp + 0x1050], rbp
	lea	rsi, [rsi]
	xor	esi, esi
	mov	rsp, rsp
	xor	edx, edx
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rsi, [rsi]
	xor	r8d, r8d
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x48]
	call	iconv
	mov	rax, qword ptr [rsp + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x50], rax
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x30], rbp
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rbx
	lea	rdi, [rdi]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_844
	nop	
	lea	r13, [rsp + 0x50]
	lea	rbp, [rsp + 0x10]
	lea	r15, [rsp + 0x30]
	lea	r14, [rsp + 0x20]
	nop	word ptr cs:[rax + rax]
.label_847:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x48]
	nop	
	mov	rsi, r13
	mov	rdx, rbp
	mov	rbp, rbp
	mov	rcx, r15
	mov	rsp, rsp
	mov	r8, r14
	mov	rsp, rsp
	call	iconv
	lea	rsi, [rsi]
	cmp	rax, -1
	mov	rsp, rsp
	je	.label_843
	nop	
	cmp	qword ptr [rsp + 0x10], 0
	mov	rsp, rsp
	jne	.label_847
	jmp	.label_844
.label_852:
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rax], 0
	lea	rsi, [rsi]
	xor	r12d, r12d
	jmp	.label_839
.label_848:
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0xc
	jmp	.label_839
.label_843:
	mov	rsp, rsp
	call	__errno_location
	mov	rbp, rbp
	cmp	dword ptr [rax], 0x16
	lea	rsi, [rsi]
	jne	.label_840
.label_844:
	mov	rbp, rbp
	lea	rcx, [rsp + 0x30]
	lea	r8, [rsp + 0x20]
	mov	rbp, rbp
	xor	esi, esi
	nop	
	xor	edx, edx
	mov	rdi, qword ptr [rsp + 0x48]
	call	iconv
	cmp	rax, -1
	mov	rsp, rsp
	je	.label_840
	cmp	qword ptr [rsp + 0x20], 0
	jne	.label_838
	mov	rax, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x1050]
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rax], rbx
	lea	rsi, [rsi]
	xor	r12d, r12d
	mov	rbp, rbp
	jmp	.label_839
.label_840:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x1050]
	nop	
	cmp	rbp, qword ptr [rax]
	je	.label_839
	lea	rdi, [rdi]
	call	__errno_location
	nop	
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	rdi, rbp
	call	free
	mov	dword ptr [rbx], r14d
.label_839:
	mov	rsp, rsp
	mov	eax, r12d
	add	rsp, 0x1058
	mov	rsp, rsp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	mov	rbp, rbp
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_838:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40dd70

	.globl str_cd_iconv
	.type str_cd_iconv, @function
str_cd_iconv:
	mov	rbp, rbp
	push	rbp
	nop	
	push	r15
	push	r14
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	sub	rsp, 0x28
	lea	rsi, [rsi]
	mov	r14, rsi
	mov	qword ptr [rsp + 0x20], rdi
	lea	rdi, [rdi]
	call	strlen
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rax
	mov	rbx, rax
	mov	rbp, rbp
	shl	rbx, 4
	cmp	rax, 0x10000000
	cmovae	rbx, rax
	mov	rbp, rbp
	lea	rbp, [rbx + 1]
	mov	rsp, rsp
	mov	rdi, rbp
	lea	rsi, [rsi]
	call	malloc
	mov	rsp, rsp
	mov	r12, rax
	mov	rbp, rbp
	test	r12, r12
	je	.label_857
	xor	esi, esi
	lea	rsi, [rsi]
	xor	edx, edx
	xor	ecx, ecx
	xor	r8d, r8d
	nop	
	mov	rdi, r14
	call	iconv
	mov	qword ptr [rsp + 0x18], r12
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rbx
	lea	rsi, [rsp + 0x20]
	lea	rdx, [rsp + 0x10]
	lea	rsi, [rsi]
	lea	rcx, [rsp + 0x18]
	lea	r8, [rsp + 8]
	mov	rsp, rsp
	mov	rdi, r14
	call	iconv
	mov	rbp, rbp
	cmp	rax, -1
	je	.label_863
	mov	rbp, rbp
	mov	r13, r12
	mov	rbx, rbp
.label_856:
	nop	
	lea	rcx, [rsp + 0x18]
	lea	rdi, [rdi]
	lea	r8, [rsp + 8]
	mov	rsp, rsp
	xor	esi, esi
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rsp, rsp
	mov	rdi, r14
	call	iconv
	nop	
	cmp	rax, -1
	je	.label_860
	mov	r12, r13
	mov	rbp, rbx
.label_858:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp + 0x18], rcx
	lea	rsi, [rsi]
	mov	byte ptr [rax], 0
	mov	rsi, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	sub	rsi, r12
	mov	rbp, rbp
	cmp	rsi, rbp
	lea	rdi, [rdi]
	jae	.label_853
	mov	rbp, rbp
	mov	rdi, r12
	lea	rsi, [rsi]
	call	realloc
	test	rax, rax
	cmovne	r12, rax
	nop	
	jmp	.label_853
.label_857:
	lea	rdi, [rdi]
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0xc
	xor	r12d, r12d
	jmp	.label_853
.label_863:
	mov	rsp, rsp
	call	__errno_location
	nop	
	mov	r15, rax
	nop	dword ptr [rax]
.label_866:
	mov	eax, dword ptr [r15]
	cmp	eax, 7
	nop	
	jne	.label_864
	lea	rbx, [rbp + rbp]
	cmp	rbx, rbp
	jbe	.label_865
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x18]
	nop	
	mov	rdi, r12
	mov	rsi, rbx
	call	realloc
	mov	r13, rax
	test	r13, r13
	je	.label_859
	sub	rbp, r12
	mov	rax, r13
	mov	rsp, rsp
	add	rax, rbp
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rax
	lea	rsi, [rsi]
	lea	rax, [rbx - 1]
	sub	rax, rbp
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rax
	lea	rsi, [rsi]
	mov	rdi, r14
	lea	rsi, [rsp + 0x20]
	mov	rsp, rsp
	lea	rdx, [rsp + 0x10]
	mov	rbp, rbp
	lea	rcx, [rsp + 0x18]
	mov	rbp, rbp
	lea	r8, [rsp + 8]
	call	iconv
	lea	rdi, [rdi]
	cmp	rax, -1
	mov	r12, r13
	nop	
	mov	rbp, rbx
	mov	rsp, rsp
	je	.label_866
	mov	rsp, rsp
	jmp	.label_856
.label_860:
	mov	rsp, rsp
	call	__errno_location
	mov	r15, rax
	nop	word ptr cs:[rax + rax]
.label_862:
	mov	rbp, rbp
	cmp	dword ptr [r15], 7
	mov	rbp, rbp
	jne	.label_854
	nop	
	lea	rbp, [rbx + rbx]
	lea	rdi, [rdi]
	cmp	rbp, rbx
	nop	
	jbe	.label_855
	mov	rbx, qword ptr [rsp + 0x18]
	mov	rdi, r13
	mov	rsi, rbp
	lea	rsi, [rsi]
	call	realloc
	mov	r12, rax
	nop	
	test	r12, r12
	lea	rdi, [rdi]
	je	.label_855
	lea	rsi, [rsi]
	sub	rbx, r13
	mov	rax, r12
	add	rax, rbx
	mov	qword ptr [rsp + 0x18], rax
	nop	
	lea	rax, [rbp - 1]
	lea	rdi, [rdi]
	sub	rax, rbx
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rax
	xor	esi, esi
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rdi, r14
	lea	rcx, [rsp + 0x18]
	lea	r8, [rsp + 8]
	call	iconv
	cmp	rax, -1
	lea	rsi, [rsi]
	mov	r13, r12
	mov	rbx, rbp
	je	.label_862
	mov	rsp, rsp
	jmp	.label_858
.label_855:
	mov	rbp, rbp
	mov	dword ptr [r15], 0xc
	mov	r12, r13
	jmp	.label_861
.label_864:
	cmp	eax, 0x16
	mov	r13, r12
	mov	rsp, rsp
	mov	rbx, rbp
	je	.label_856
	jmp	.label_861
.label_865:
	lea	rdi, [rdi]
	mov	dword ptr [r15], 0xc
	jmp	.label_861
.label_859:
	mov	rbp, rbp
	mov	dword ptr [r15], 0xc
	lea	rsi, [rsi]
	jmp	.label_861
.label_854:
	mov	rsp, rsp
	mov	r12, r13
.label_861:
	lea	rsi, [rsi]
	mov	ebx, dword ptr [r15]
	mov	rsp, rsp
	mov	rdi, r12
	call	free
	mov	dword ptr [r15], ebx
	lea	rdi, [rdi]
	xor	r12d, r12d
.label_853:
	mov	rax, r12
	add	rsp, 0x28
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e0b0

	.globl str_iconv
	.type str_iconv, @function
str_iconv:
	push	rbp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	rbx
	push	rax
	nop	
	mov	r15, rdx
	mov	r14, rsi
	mov	rbx, rdi
	lea	rsi, [rsi]
	cmp	byte ptr [rbx], 0
	je	.label_867
	mov	rsp, rsp
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r15
	nop	
	call	c_strcasecmp
	lea	rsi, [rsi]
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_867
	mov	rbp, rbp
	mov	rdi, r15
	nop	
	mov	rsi, r14
	lea	rsi, [rsi]
	call	iconv_open
	mov	r15, rax
	mov	rsp, rsp
	xor	r14d, r14d
	cmp	r15, -1
	je	.label_868
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rsi, r15
	call	str_cd_iconv
	nop	
	mov	r14, rax
	lea	rdi, [rdi]
	test	r14, r14
	je	.label_871
	mov	rdi, r15
	call	iconv_close
	nop	
	test	eax, eax
	jns	.label_868
	lea	rsi, [rsi]
	call	__errno_location
	mov	rsp, rsp
	mov	rbx, rax
	mov	rsp, rsp
	mov	ebp, dword ptr [rbx]
	mov	rdi, r14
	lea	rsi, [rsi]
	call	free
	jmp	.label_870
.label_867:
	mov	rdi, rbx
	nop	
	call	__strdup
	mov	r14, rax
	mov	rbp, rbp
	test	r14, r14
	lea	rdi, [rdi]
	jne	.label_868
	call	__errno_location
	mov	dword ptr [rax], 0xc
	mov	rbp, rbp
	jmp	.label_869
.label_871:
	mov	rbp, rbp
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	lea	rdi, [rdi]
	mov	rdi, r15
	mov	rsp, rsp
	call	iconv_close
.label_870:
	lea	rsi, [rsi]
	mov	dword ptr [rbx], ebp
.label_869:
	lea	rsi, [rsi]
	xor	r14d, r14d
.label_868:
	lea	rdi, [rdi]
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	mov	rsp, rsp
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40e1c0

	.globl strnlen1
	.type strnlen1, @function
strnlen1:
	push	r14
	mov	rbp, rbp
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	xor	esi, esi
	mov	rsp, rsp
	mov	rdx, r14
	call	memchr
	lea	rdi, [rdi]
	mov	ecx, 1
	sub	rcx, rbx
	lea	rdi, [rdi]
	add	rcx, rax
	test	rax, rax
	mov	rbp, rbp
	cmove	rcx, r14
	lea	rsi, [rsi]
	mov	rax, rcx
	nop	
	add	rsp, 8
	nop	
	pop	rbx
	pop	r14
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40e210

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	lea	rsi, [rsi]
	push	r14
	mov	rsp, rsp
	push	rbx
	mov	rbx, rdi
	call	fileno
	mov	rbp, rbp
	test	eax, eax
	js	.label_872
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_874
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edx, 1
	mov	rsp, rsp
	mov	edi, eax
	mov	rsp, rsp
	call	lseek
	lea	rsi, [rsi]
	cmp	rax, -1
	je	.label_872
.label_874:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_872
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	test	ebp, ebp
	je	.label_873
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_873:
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_872:
	lea	rsi, [rsi]
	mov	rdi, rbx
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	pop	rbp
	nop	
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x40e2c0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_875
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_875
	test	byte ptr [rbx + 1], 1
	je	.label_875
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	nop	
	call	rpl_fseeko
.label_875:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40e300

	.globl rpl_fseeko
	.type rpl_fseeko, @function
rpl_fseeko:
	lea	rsi, [rsi]
	push	rbp
	push	r14
	mov	rbp, rbp
	push	rbx
	mov	rbp, rbp
	mov	r14d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 0x10]
	cmp	rax, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	jne	.label_876
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_876
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_877
.label_876:
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rsi, rbp
	mov	edx, r14d
	mov	rbp, rbp
	pop	rbx
	pop	r14
	pop	rbp
	nop	
	jmp	fseeko
.label_877:
	mov	rdi, rbx
	call	fileno
	mov	rbp, rbp
	mov	edi, eax
	lea	rdi, [rdi]
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	eax, 0xffffffff
	cmp	rcx, -1
	lea	rdi, [rdi]
	je	.label_878
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_878:
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e3b0

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	lea	rsi, [rsi]
	jmp	nl_langinfo
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e3d0

	.globl mmalloca
	.type mmalloca, @function
mmalloca:
	xor	eax, eax
	mov	rbp, rbp
	cmp	rdi, -0x21
	ja	.label_879
	push	rax
	lea	rsi, [rsi]
	add	rdi, 0x20
	call	malloc
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	eax, eax
	test	rcx, rcx
	lea	rsp, [rsp + 8]
	je	.label_879
	mov	rsp, rsp
	mov	rdx, rcx
	add	rdx, 0x10
	and	rdx, 0xffffffffffffffe0
	lea	rdi, [rdi]
	lea	rax, [rdx + 0x10]
	lea	rdi, [rdi]
	mov	esi, eax
	sub	esi, ecx
	mov	rsp, rsp
	mov	byte ptr [rdx + 0xf], sil
.label_879:
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e430

	.globl freea
	.type freea, @function
freea:
	mov	rsp, rsp
	test	dil, 0xf
	jne	.label_880
	test	dil, 0x10
	mov	rsp, rsp
	jne	.label_881
	lea	rsi, [rsi]
	ret	
.label_881:
	nop	
	movzx	eax, byte ptr [rdi - 1]
	sub	rdi, rax
	jmp	free
.label_880:
	push	rax
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40e460
	.globl mb_width_aux
	.type mb_width_aux, @function
mb_width_aux:

	mov	rbp, rbp
	push	rbx
	mov	ebx, edi
	call	wcwidth
	test	eax, eax
	jns	.label_882
	lea	rdi, [rdi]
	mov	edi, ebx
	call	iswcntrl
	mov	rsp, rsp
	test	eax, eax
	lea	rsi, [rsi]
	sete	al
	movzx	eax, al
.label_882:
	mov	rsp, rsp
	pop	rbx
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40e490
	.globl mb_copy
	.type mb_copy, @function
mb_copy:

	push	r15
	lea	rdi, [rdi]
	push	r14
	lea	rdi, [rdi]
	push	rbx
	lea	rdi, [rdi]
	mov	rbx, rsi
	mov	rsp, rsp
	mov	r14, rdi
	mov	rsi, qword ptr [rbx]
	lea	rax, [rbx + 0x18]
	mov	rbp, rbp
	cmp	rsi, rax
	mov	rsp, rsp
	jne	.label_883
	mov	rbp, rbp
	lea	r15, [r14 + 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	mov	rdi, r15
	call	memcpy
	mov	rsi, r15
.label_883:
	mov	qword ptr [r14], rsi
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 8]
	mov	rsp, rsp
	mov	qword ptr [r14 + 8], rax
	mov	rax, qword ptr [rbx + 0x10]
	test	al, al
	lea	rdi, [rdi]
	mov	byte ptr [r14 + 0x10], al
	mov	rsp, rsp
	je	.label_884
	shr	rax, 0x20
	mov	dword ptr [r14 + 0x14], eax
.label_884:
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	mov	rsp, rsp
	pop	r15
	mov	rsp, rsp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40e510
	.globl is_basic
	.type is_basic, @function
is_basic:

	mov	rsp, rsp
	mov	eax, edi
	mov	rbp, rbp
	shr	eax, 3
	mov	rsp, rsp
	and	eax, 0x1c
	mov	eax, dword ptr [rax + is_basic_table]
	nop	
	bt	eax, edi
	mov	rsp, rsp
	setb	al
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section .text
	.align	16
	#Procedure 0x40e540

	.globl mbslen
	.type mbslen, @function
mbslen:
	push	r14
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x48
	lea	rdi, [rdi]
	mov	rbx, rdi
	call	__ctype_get_mb_cur_max
	cmp	rax, 2
	jb	.label_888
	mov	qword ptr [rsp + 0x18], rbx
	mov	byte ptr [rsp + 8], 0
	nop	
	mov	qword ptr [rsp + 0xc], 0
	mov	byte ptr [rsp + 0x14], 0
	lea	rdi, [rsp + 8]
	mov	rsp, rsp
	call	mbuiter_multi_next
	nop	
	mov	rax, qword ptr [rsp + 0x28]
	xor	ebx, ebx
	test	al, al
	lea	rsi, [rsi]
	je	.label_886
	lea	rdi, [rdi]
	shr	rax, 0x20
	mov	rbp, rbp
	je	.label_887
.label_886:
	lea	rdi, [rdi]
	xor	ebx, ebx
	lea	rdi, [rdi]
	lea	r14, [rsp + 8]
	nop	dword ptr [rax]
.label_885:
	mov	rbp, rbp
	inc	rbx
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	add	qword ptr [rsp + 0x18], rax
	mov	byte ptr [rsp + 0x14], 0
	mov	rsp, rsp
	mov	rdi, r14
	call	mbuiter_multi_next
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	test	al, al
	je	.label_885
	nop	
	shr	rax, 0x20
	jne	.label_885
.label_887:
	mov	rax, rbx
	add	rsp, 0x48
	pop	rbx
	pop	r14
	ret	
.label_888:
	mov	rbp, rbp
	mov	rdi, rbx
	add	rsp, 0x48
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	jmp	strlen
	nop	word ptr [rax + rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]