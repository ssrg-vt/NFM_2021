	.section	.text
	.align	32
	#Procedure 0x401a80

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	mov	rbp, rbp
	test	ebp, ebp
	jne	.label_7
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	rsp, rsp
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rbp, rbp
	call	__printf_chk
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rbp, rbp
	mov	edi, 1
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rsi, rcx
	call	__printf_chk
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi, rax
	mov	rsp, rsp
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.5
	nop	
	mov	ecx, OFFSET FLAT:.str.6
	xor	eax, eax
	nop	
	call	__printf_chk
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.26
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi, rax
	mov	rbp, rbp
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.18
	xor	eax, eax
	mov	rbp, rbp
	call	__printf_chk
	lea	rsi, [rsi]
	mov	edi, 5
	nop	
	xor	esi, esi
	mov	rsp, rsp
	call	setlocale
	test	rax, rax
	je	.label_8
	mov	esi, OFFSET FLAT:.str.28
	nop	
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	nop	
	je	.label_8
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.29
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_8:
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.30
	nop	
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsp, rsp
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:.str.9
	nop	
	xor	eax, eax
	nop	
	call	__printf_chk
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.31
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rsi, rax
	nop	
	mov	edi, 1
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str.9
	mov	ecx, OFFSET FLAT:.str.32
	xor	eax, eax
	nop	
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_7:
	mov	rsp, rsp
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	nop	
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rbp
	mov	rdx, rax
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	esi, 1
	mov	rbp, rbp
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	lea	rsi, [rsi]
	mov	edi, ebp
	call	exit
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401d10

	.globl main
	.type main, @function
main:
	push	rbp
	push	rbx
	sub	rsp, 0x28
	mov	rbx, rsi
	nop	
	mov	ebp, edi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str.11
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.12
	call	bindtextdomain
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.11
	call	textdomain
	nop	
	mov	edi, OFFSET FLAT:close_stdout
	nop	
	call	atexit
	mov	rbp, rbp
	mov	r8,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp + 0x20], 0
	nop	
	mov	qword ptr [word ptr [rsp + 24]], OFFSET FLAT:.str.16
	mov	qword ptr [word ptr [rsp + 16]], OFFSET FLAT:.str.15
	mov	rsp, rsp
	mov	qword ptr [word ptr [rsp + 8]], OFFSET FLAT:.str.14
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rsp]], OFFSET FLAT:usage
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.9
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:.str.17
	mov	r9d, 1
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	edi, ebp
	mov	rsi, rbx
	mov	rsp, rsp
	call	parse_gnu_standard_options_only
	lea	rdi, [rdi]
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	sub	ebp, eax
	mov	rbp, rbp
	cmp	ebp, 1
	je	.label_11
	lea	rsi, [rsi]
	test	ebp, ebp
	lea	rsi, [rsi]
	jne	.label_9
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.5
	mov	esi, 1
	mov	rsp, rsp
	jmp	.label_10
.label_11:
	mov	rdi, qword ptr [rbx + rax*8]
	lea	rdi, [rdi]
	xor	esi, esi
.label_10:
	call	uptime
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	add	rsp, 0x28
	pop	rbx
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_9:
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.17_0
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	nop	
	mov	rbp, rax
	lea	rsi, [rsi]
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, qword ptr [rbx + rax*8 + 8]
	mov	rsp, rsp
	call	quote
	mov	rcx, rax
	xor	edi, edi
	lea	rdi, [rdi]
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	nop	
	mov	edi, 1
	call	usage
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401e70

	.globl uptime
	.type uptime, @function
uptime:
	nop	
	push	rbp
	lea	rsi, [rsi]
	push	r15
	mov	rbp, rbp
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	sub	rsp, 0x2058
	mov	eax, esi
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], 0
	mov	rbp, rbp
	lea	rsi, [rsp + 0x2040]
	lea	rdx, [rsp + 8]
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rbp, rbp
	call	read_utmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_26
	nop	
	mov	r15, qword ptr [rsp + 0x2040]
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.34
	mov	esi, OFFSET FLAT:.str.35
	call	fopen
	mov	rbx, rax
	xor	r13d, r13d
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_34
	nop	
	lea	r14, [rsp + 0x30]
	mov	esi, 0x2000
	nop	
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rdx, rbx
	call	fgets_unlocked
	xor	r13d, r13d
	lea	rsi, [rsi]
	cmp	rax, r14
	jne	.label_18
	lea	rsi, [rsp + 0x2038]
	mov	rbp, rbp
	mov	rdi, r14
	call	c_strtod
	lea	rsi, [rsi]
	xor	r13d, r13d
	cmp	r14, qword ptr [rsp + 0x2038]
	mov	rbp, rbp
	je	.label_18
	movsd	xmm1,  qword ptr [word ptr [rip + label_21]]
	mov	rsp, rsp
	ucomisd	xmm1, xmm0
	cvttsd2si	r13, xmm0
	lea	rdi, [rdi]
	mov	rax, -1
	cmovbe	r13, rax
	mov	rsp, rsp
	xorpd	xmm1, xmm1
	lea	rdi, [rdi]
	ucomisd	xmm0, xmm1
	lea	rdi, [rdi]
	cmovb	r13, rax
.label_18:
	mov	rdi, rbx
	mov	rsp, rsp
	call	rpl_fclose
.label_34:
	lea	rdi, [rdi]
	xor	ebx, ebx
	test	r15, r15
	mov	r14d, 0
	nop	
	je	.label_13
	nop	
	xor	eax, eax
	mov	rbp, rbp
	test	r15b, 1
	lea	rsi, [rsi]
	jne	.label_22
	mov	rsp, rsp
	mov	rcx, r15
	xor	r14d, r14d
	jmp	.label_23
.label_22:
	lea	rdi, [rdi]
	movzx	ecx, word ptr [rbp]
	cmp	ecx, 7
	sete	dl
	xor	eax, eax
	mov	rsp, rsp
	cmp	byte ptr [rbp + 0x2c], 0
	movzx	edx, dl
	je	.label_25
	mov	rax, rdx
.label_25:
	lea	rsi, [rsi]
	xor	r14d, r14d
	nop	
	movzx	ecx, cx
	cmp	ecx, 2
	nop	
	jne	.label_32
	lea	rdi, [rdi]
	movsxd	r14, dword ptr [rbp + 0x154]
.label_32:
	mov	rbp, rbp
	lea	rcx, [r15 - 1]
	add	rbp, 0x180
.label_23:
	nop	
	cmp	r15, 1
	mov	rbx, rax
	je	.label_13
	nop	dword ptr [rax]
.label_17:
	lea	rdi, [rdi]
	movzx	esi, word ptr [rbp]
	cmp	esi, 7
	mov	rbp, rbp
	sete	dl
	nop	
	cmp	byte ptr [rbp + 0x2c], 0
	lea	rsi, [rsi]
	movzx	edi, dl
	nop	
	mov	edx, 0
	mov	rbp, rbp
	je	.label_16
	nop	
	mov	rdx, rdi
.label_16:
	movzx	esi, si
	cmp	esi, 2
	jne	.label_27
	nop	
	movsxd	r14, dword ptr [rbp + 0x154]
.label_27:
	lea	rdi, [rdi]
	movzx	esi, word ptr [rbp + 0x180]
	cmp	esi, 7
	lea	rsi, [rsi]
	sete	bl
	cmp	byte ptr [rbp + 0x1ac], 0
	mov	rsp, rsp
	movzx	edi, bl
	lea	rdi, [rdi]
	mov	ebx, 0
	je	.label_30
	mov	rbx, rdi
.label_30:
	nop	
	add	rdx, rax
	add	rcx, -2
	lea	rsi, [rsi]
	movzx	eax, si
	nop	
	cmp	eax, 2
	jne	.label_35
	movsxd	r14, dword ptr [rbp + 0x2d4]
.label_35:
	add	rbx, rdx
	mov	rbp, rbp
	add	rbp, 0x300
	test	rcx, rcx
	mov	rsp, rsp
	mov	rax, rbx
	nop	
	jne	.label_17
.label_13:
	xor	edi, edi
	call	time
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x2050], rax
	test	r13, r13
	jne	.label_28
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_29
	lea	rdi, [rdi]
	sub	rax, r14
	mov	r13, rax
.label_28:
	nop	
	mov	qword ptr [rsp + 0x2048], r13
	movabs	rcx, 0x1845c8a0ce512957
	mov	rax, r13
	imul	rcx
	mov	r12, rdx
	mov	rax, r12
	lea	rdi, [rdi]
	shr	rax, 0x3f
	mov	rbp, rbp
	sar	r12, 0xd
	lea	rdi, [rdi]
	add	r12, rax
	imul	rbp, r12, -0x15180
	mov	rsp, rsp
	add	rbp, r13
	lea	rdi, [rdi]
	movabs	rcx, 0x48d159e26af37c05
	lea	rdi, [rdi]
	mov	rax, rbp
	mov	rsp, rsp
	imul	rcx
	nop	
	mov	r15, rdx
	mov	rax, r15
	lea	rdi, [rdi]
	shr	rax, 0x3f
	sar	r15, 0xa
	lea	rsi, [rsi]
	add	r15, rax
	mov	rsp, rsp
	movabs	rax, 0xe1000000000
	imul	rax, r15
	sar	rax, 0x20
	lea	rsi, [rsi]
	sub	rbp, rax
	nop	
	movabs	rcx, 0x8888888888888889
	nop	
	mov	rax, rbp
	imul	rcx
	mov	r13, rdx
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0x2050]
	nop	
	call	localtime
	mov	r14, rax
	test	r14, r14
	je	.label_14
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [rip + stdout]]
	mov	qword ptr [rsp], rax
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.37
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	xor	ecx, ecx
	mov	rbp, rbp
	xor	r8d, r8d
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp]
	mov	rsi, rax
	lea	rdi, [rdi]
	mov	rdx, r14
	lea	rdi, [rdi]
	call	fprintftime
	jmp	.label_33
.label_14:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.38
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	nop	
	xor	eax, eax
	mov	rsi, rcx
	mov	rbp, rbp
	call	__printf_chk
.label_33:
	mov	rcx, qword ptr [rsp + 0x2048]
	nop	
	cmp	rcx, -1
	lea	rsi, [rsi]
	je	.label_12
	add	r13, rbp
	mov	rsp, rsp
	mov	rax, r13
	shr	rax, 0x3f
	lea	rdi, [rdi]
	shr	r13, 5
	nop	
	add	r13d, eax
	mov	rsp, rsp
	xor	edi, edi
	cmp	rcx, 0x15180
	jl	.label_19
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.40
	mov	edx, OFFSET FLAT:.str.41
	lea	rdi, [rdi]
	mov	r8d, 5
	mov	rcx, r12
	call	dcngettext
	mov	rcx, rax
	mov	edi, 1
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	rsi, rcx
	lea	rdi, [rdi]
	mov	rdx, r12
	mov	ecx, r15d
	mov	rsp, rsp
	mov	r8d, r13d
	call	__printf_chk
	jmp	.label_24
.label_12:
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.39
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rsi, rcx
	call	__printf_chk
	mov	rsp, rsp
	jmp	.label_24
.label_19:
	mov	esi, OFFSET FLAT:.str.42
	nop	
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	edx, r15d
	nop	
	mov	ecx, r13d
	call	__printf_chk
.label_24:
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.43
	mov	edx, OFFSET FLAT:.str.44
	lea	rsi, [rsi]
	mov	r8d, 5
	nop	
	mov	rcx, rbx
	call	dcngettext
	mov	rsp, rsp
	mov	rcx, rax
	mov	rsp, rsp
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rsp, rsp
	mov	rdx, rbx
	call	__printf_chk
	mov	rbp, rbp
	lea	rdi, [rsp + 0x10]
	mov	esi, 3
	mov	rbp, rbp
	call	getloadavg
	mov	ebx, eax
	cmp	ebx, -1
	nop	
	je	.label_20
	test	ebx, ebx
	jle	.label_15
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.45
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	movsd	xmm0, qword ptr [rsp + 0x10]
	mov	edi, 1
	mov	al, 1
	mov	rsp, rsp
	mov	rsi, rcx
	call	__printf_chk
	lea	rdi, [rdi]
	cmp	ebx, 2
	jl	.label_20
	mov	rsp, rsp
	movsd	xmm0, qword ptr [rsp + 0x18]
	nop	
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.46
	mov	al, 1
	call	__printf_chk
	cmp	ebx, 3
	jl	.label_20
	movsd	xmm0, qword ptr [rsp + 0x20]
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.46
	mov	al, 1
	mov	rbp, rbp
	call	__printf_chk
.label_20:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_31
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	nop	
	mov	byte ptr [rax], 0xa
.label_15:
	mov	rbp, rbp
	add	rsp, 0x2058
	nop	
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	nop	
	ret	
.label_31:
	nop	
	mov	esi, 0xa
	lea	rsi, [rsi]
	call	__overflow
	jmp	.label_15
.label_26:
	call	__errno_location
	lea	rsi, [rsi]
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 3
	mov	rdx, rbx
	nop	
	call	quotearg_n_style_colon
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_1
	mov	rsp, rsp
	xor	eax, eax
	mov	esi, ebp
	call	error
.label_29:
	call	__errno_location
	mov	rbp, rbp
	mov	ebx, dword ptr [rax]
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.36
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	nop	
	mov	rdx, rcx
	call	error
	nop	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x402480

	.globl c_strtod
	.type c_strtod, @function
c_strtod:
	push	r14
	lea	rsi, [rsi]
	push	rbx
	nop	
	push	rax
	nop	
	mov	rbx, rsi
	nop	
	mov	r14, rdi
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [rip + c_locale_cache]],  0
	jne	.label_36
	mov	rsp, rsp
	mov	edi, 0x1fbf
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str_2
	lea	rdi, [rdi]
	xor	edx, edx
	call	newlocale
	mov	qword ptr [word ptr [rip + c_locale_cache]],  rax
.label_36:
	mov	rsp, rsp
	mov	rdx,  qword ptr [word ptr [rip + c_locale_cache]]
	lea	rdi, [rdi]
	test	rdx, rdx
	lea	rdi, [rdi]
	je	.label_38
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, rbx
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	pop	r14
	jmp	strtod_l
.label_38:
	lea	rsi, [rsi]
	test	rbx, rbx
	je	.label_37
	lea	rdi, [rdi]
	mov	qword ptr [rbx], r14
.label_37:
	xorps	xmm0, xmm0
	nop	
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x402510
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + file_name]],  rdi
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x402520
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402530

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	lea	rsi, [rsi]
	push	rbx
	mov	rsp, rsp
	push	rax
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	call	close_stream
	test	eax, eax
	je	.label_40
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rbp
	mov	rbp, rax
	mov	rsp, rsp
	cmp	bl, 0
	je	.label_39
	mov	rsp, rsp
	cmp	dword ptr [rbp], 0x20
	jne	.label_39
.label_40:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	nop	
	jne	.label_42
	nop	
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_39:
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str_3
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_41
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
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rsp, rsp
	call	_exit
.label_42:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
.label_41:
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
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402630

	.globl fprintftime
	.type fprintftime, @function
fprintftime:
	sub	rsp, 0x18
	mov	dword ptr [rsp + 8], r8d
	mov	qword ptr [rsp], rcx
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rbp, rbp
	xor	r8d, r8d
	mov	rsp, rsp
	mov	r9d, 0xffffffff
	call	__strftime_internal
	nop	
	add	rsp, 0x18
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402660

	.globl __strftime_internal
	.type __strftime_internal, @function
__strftime_internal:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x498
	mov	dword ptr [rsp + 0x474], r8d
	mov	dword ptr [rsp + 0x24], ecx
	mov	qword ptr [rsp + 0x38], rdx
	mov	rbp, rbp
	mov	r13, rsi
	mov	r14, rdi
	mov	qword ptr [rsp + 0x468], r14
	mov	eax, dword ptr [rdx + 8]
	nop	
	mov	rcx, qword ptr [rdx + 0x30]
	test	rcx, rcx
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str_0
	mov	rsp, rsp
	cmovne	rdx, rcx
	mov	qword ptr [rsp + 0x478], rdx
	lea	ecx, [rax - 0xc]
	mov	rbp, rbp
	test	eax, eax
	mov	edx, 0xc
	nop	
	cmovne	edx, eax
	mov	rsp, rsp
	cmp	eax, 0xc
	lea	rsi, [rsi]
	cmovg	edx, ecx
	nop	
	mov	dword ptr [rsp + 0x48c], edx
	lea	rdi, [rdi]
	mov	al, byte ptr [r13]
	lea	rsi, [rsi]
	test	al, al
	lea	rdi, [rdi]
	mov	r15d, 0
	je	.label_149
	lea	rcx, [rsp + 0x440]
	mov	rdx, -0x17
	lea	rsi, [rsi]
	sub	rdx, rcx
	nop	
	mov	qword ptr [rsp + 0x490], rdx
	nop	
	xor	r15d, r15d
	jmp	.label_122
.label_189:
	mov	rbp, rbp
	mov	r14d, 3
	jmp	.label_184
.label_122:
	nop	
	movzx	ecx, al
	xor	r12d, r12d
	cmp	ecx, 0x25
	jne	.label_186
	nop	
	mov	eax, dword ptr [rsp + 0x24]
	mov	r11b, al
	xor	ebp, ebp
	movabs	rdi, 0x1000000000002500
	lea	rsi, [rsi]
	jmp	.label_43
	nop	dword ptr [rax + rax]
.label_186:
	lea	rsi, [rsi]
	test	r9d, r9d
	mov	rsp, rsp
	mov	ecx, r9d
	mov	edx, 0
	cmovs	ecx, edx
	movsxd	rbx, ecx
	cmp	ebx, 1
	mov	edx, 1
	mov	rsp, rsp
	cmovbe	rbx, rdx
	mov	rdx, r15
	not	rdx
	cmp	rbx, rdx
	jae	.label_59
	test	r14, r14
	je	.label_195
	cmp	ecx, 2
	mov	rsp, rsp
	jb	.label_197
	lea	rdi, [rdi]
	cmp	r9d, 1
	lea	rdi, [rdi]
	je	.label_197
	movsxd	rbp, r9d
	dec	rbp
	nop	word ptr cs:[rax + rax]
.label_204:
	mov	edi, 0x20
	mov	rsi, r14
	lea	rsi, [rsi]
	call	fputc
	dec	rbp
	mov	rbp, rbp
	jne	.label_204
	nop	
	mov	al, byte ptr [r13]
.label_197:
	mov	rbp, rbp
	movsx	edi, al
	mov	rsi, r14
	mov	rsp, rsp
	call	fputc
.label_195:
	add	r15, rbx
	jmp	.label_103
	nop	word ptr cs:[rax + rax]
.label_56:
	mov	r12b, 1
	mov	al, r11b
	jmp	.label_43
	nop	dword ptr [rax + rax]
.label_54:
	inc	r13
	mov	ebp, edx
.label_60:
	nop	
	mov	cl, byte ptr [r13]
	mov	rsp, rsp
	movsx	edx, cl
	lea	rdi, [rdi]
	lea	esi, [rdx - 0x23]
	cmp	esi, 0x3c
	ja	.label_49
	bt	rdi, rsi
	mov	rbp, rbp
	jb	.label_54
	mov	al, 1
	nop	
	test	rsi, rsi
	mov	rbp, rbp
	je	.label_56
	lea	rdi, [rdi]
	cmp	rsi, 0x3b
	jne	.label_49
.label_43:
	mov	r11b, al
	mov	rbp, rbp
	inc	r13
	jmp	.label_60
	nop	word ptr cs:[rax + rax]
.label_49:
	mov	rbp, rbp
	add	edx, -0x30
	mov	rbp, rbp
	xor	eax, eax
	cmp	edx, 9
	ja	.label_67
.label_84:
	mov	r9d, 0x7fffffff
	cmp	eax, 0xccccccc
	jg	.label_71
	movsx	ecx, cl
	cmp	eax, 0xccccccc
	mov	rsp, rsp
	jne	.label_178
	lea	rdi, [rdi]
	lea	edx, [rcx - 0x30]
	lea	rsi, [rsi]
	cmp	edx, 7
	jg	.label_71
.label_178:
	lea	rsi, [rsi]
	lea	eax, [rax + rax*4]
	mov	rbp, rbp
	lea	r9d, [rcx + rax*2 - 0x30]
.label_71:
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [r13 + 1]
	mov	rsp, rsp
	inc	r13
	mov	rsp, rsp
	mov	eax, ecx
	add	eax, -0x30
	lea	rsi, [rsi]
	cmp	eax, 0xa
	mov	rbp, rbp
	mov	eax, r9d
	jb	.label_84
.label_67:
	nop	
	movsx	r10d, cl
	lea	rdi, [rdi]
	cmp	r10d, 0x4f
	nop	
	je	.label_100
	cmp	r10d, 0x45
	mov	rbp, rbp
	jne	.label_107
.label_100:
	lea	rsi, [rsi]
	mov	cl, byte ptr [r13 + 1]
	inc	r13
	jmp	.label_94
.label_107:
	lea	rsi, [rsi]
	xor	r10d, r10d
.label_94:
	mov	rsp, rsp
	movsx	r8d, cl
	xor	edx, edx
	mov	esi, 1
	lea	ebx, [r8 - 0x25]
	cmp	ebx, 0x55
	mov	rsp, rsp
	ja	.label_97
	mov	qword ptr [rsp + 0x18], r15
	mov	rbp, rbp
	mov	r15d, OFFSET FLAT:.str.3_0
	mov	dword ptr [rsp + 0x460], r9d
	nop	
	mov	r9b, 0x72
	mov	r14d, 0xffffffff
	xor	eax, eax
	xor	edi, edi
	lea	rdi, [rdi]
	jmp	qword ptr [word ptr [+ (rbx * 8) + label_105]]
.label_577:
	cmp	r10d, 0x45
	lea	rsi, [rsi]
	je	.label_45
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], r11
	nop	
	mov	rsi, qword ptr [rsp + 0x38]
	nop	
	mov	edx, dword ptr [rsi + 0x14]
	lea	rsi, [rsi]
	mov	r9d, dword ptr [rsi + 0x18]
	lea	rdi, [rdi]
	mov	eax, edx
	mov	rbp, rbp
	sar	eax, 0x1f
	and	eax, 0x190
	mov	rbp, rbp
	lea	r11d, [rdx + rax - 0x64]
	nop	
	mov	ebx, dword ptr [rsi + 0x1c]
	lea	eax, [rbx + 0x17e]
	sub	eax, r9d
	nop	
	movsxd	rdi, eax
	imul	rax, rdi, -0x6db6db6d
	lea	rsi, [rsi]
	shr	rax, 0x20
	add	eax, edi
	lea	rdi, [rdi]
	mov	esi, eax
	mov	rsp, rsp
	shr	esi, 0x1f
	sar	eax, 2
	add	eax, esi
	lea	esi, [rax*8]
	sub	esi, eax
	sub	edi, esi
	lea	rsi, [rsi]
	lea	r12d, [rbx + 3]
	sub	r12d, edi
	js	.label_114
	mov	edi, 0x16d
	mov	rbp, rbp
	test	r11b, 3
	lea	rdi, [rdi]
	jne	.label_132
	mov	rsp, rsp
	movsxd	rsi, r11d
	imul	rsi, rsi, 0x51eb851f
	mov	rsp, rsp
	mov	rdi, rsi
	nop	
	sar	rdi, 0x25
	mov	r14, rsi
	shr	r14, 0x3f
	lea	rsi, [rsi]
	add	edi, r14d
	mov	rsp, rsp
	imul	edi, edi, 0x64
	nop	
	sar	rsi, 0x27
	add	esi, r14d
	lea	rsi, [rsi]
	imul	esi, esi, 0x190
	cmp	r11d, esi
	lea	rdi, [rdi]
	sete	al
	nop	
	movzx	eax, al
	add	eax, 0x16d
	cmp	r11d, edi
	mov	rbp, rbp
	mov	edi, 0x16e
	cmove	edi, eax
.label_132:
	lea	rdi, [rdi]
	sub	ebx, edi
	mov	rbp, rbp
	lea	eax, [rbx + 0x17e]
	sub	eax, r9d
	cdqe	
	imul	rsi, rax, -0x6db6db6d
	shr	rsi, 0x20
	lea	rsi, [rsi]
	add	esi, eax
	mov	edi, esi
	shr	edi, 0x1f
	sar	esi, 2
	mov	rsp, rsp
	add	esi, edi
	lea	rdi, [rdi]
	lea	edi, [rsi*8]
	sub	edi, esi
	nop	
	sub	eax, edi
	add	ebx, 3
	sub	ebx, eax
	cmovns	r12d, ebx
	mov	rbp, rbp
	shr	ebx, 0x1f
	nop	
	xor	ebx, 1
	jmp	.label_147
	nop	
.label_159:
	inc	rsi
.label_571:
	movzx	eax, byte ptr [r13 + rsi]
	lea	rdi, [rdi]
	cmp	eax, 0x3a
	je	.label_159
	mov	rsp, rsp
	movzx	eax, al
	nop	
	cmp	eax, 0x7a
	mov	rbp, rbp
	jne	.label_45
	mov	rbp, rbp
	add	r13, rsi
	nop	
	mov	rdx, rsi
.label_608:
	lea	rsi, [rsi]
	mov	r9, qword ptr [rsp + 0x38]
	cmp	dword ptr [r9 + 0x20], 0
	js	.label_74
	mov	rsp, rsp
	mov	rdi, rdx
	mov	r8d, dword ptr [r9 + 0x28]
	mov	r15b, 1
	test	r8d, r8d
	mov	rsp, rsp
	js	.label_171
	test	r8d, r8d
	mov	rbp, rbp
	je	.label_121
	xor	r15d, r15d
	lea	rsi, [rsi]
	jmp	.label_171
.label_591:
	test	r12b, r12b
	je	.label_179
	mov	rsp, rsp
	mov	r11b, 1
.label_179:
	lea	rsi, [rsi]
	xor	eax, eax
	cmp	r10d, 0x45
	je	.label_45
	mov	r9b, cl
	jmp	.label_51
.label_97:
	mov	rbp, rbp
	test	r8d, r8d
	lea	rdi, [rdi]
	jne	.label_185
	nop	
	mov	qword ptr [rsp + 0x18], r15
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x460], r9d
	dec	r13
	jmp	.label_45
.label_570:
	mov	rsp, rsp
	test	r10d, r10d
	jne	.label_45
	xor	eax, eax
	mov	edx, dword ptr [rsp + 0x460]
	nop	
	test	edx, edx
	lea	rsi, [rsi]
	cmovns	eax, edx
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	r14d, 1
	mov	rbp, rbp
	cmova	r14, rcx
	mov	rcx, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	not	rcx
	lea	rsi, [rsi]
	cmp	r14, rcx
	lea	rsi, [rsi]
	jae	.label_59
	cmp	qword ptr [rsp + 0x468], 0
	je	.label_85
	lea	rsi, [rsi]
	cmp	eax, 2
	mov	r12, qword ptr [rsp + 0x468]
	jb	.label_44
	movsxd	rbx, edx
	lea	r15, [rbx - 1]
	cmp	ebp, 0x30
	mov	rbp, rbp
	je	.label_199
	mov	rbp, rbp
	cmp	ebp, 0x2b
	jne	.label_200
.label_199:
	test	r15, r15
	lea	rsi, [rsi]
	je	.label_44
	lea	rsi, [rsi]
	dec	rbx
.label_205:
	mov	rsp, rsp
	mov	edi, 0x30
	mov	rsi, r12
	mov	rbp, rbp
	call	fputc
	lea	rsi, [rsi]
	dec	rbx
	jne	.label_205
	jmp	.label_44
.label_572:
	nop	
	test	r10d, r10d
	mov	rsp, rsp
	jne	.label_45
	test	r12b, r12b
	lea	rsi, [rsi]
	je	.label_48
	mov	rbp, rbp
	mov	r11b, 1
.label_48:
	nop	
	xor	eax, eax
	nop	
	mov	r9b, 0x41
	jmp	.label_51
.label_573:
	nop	
	cmp	r10d, 0x45
	je	.label_45
	test	r12b, r12b
	je	.label_57
	lea	rdi, [rdi]
	mov	r11b, 1
.label_57:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	r9b, 0x42
	jmp	.label_51
.label_574:
	cmp	r10d, 0x45
	jne	.label_63
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r9b, 0x43
	jmp	.label_51
.label_575:
	test	r10d, r10d
	nop	
	jne	.label_45
	mov	r15d, OFFSET FLAT:.str.1_1
	jmp	.label_72
.label_576:
	test	r10d, r10d
	jne	.label_45
	lea	rsi, [rsi]
	test	ebp, ebp
	mov	ecx, dword ptr [rsp + 0x460]
	jne	.label_77
	test	ecx, ecx
	jns	.label_77
	mov	rsp, rsp
	mov	r15d, OFFSET FLAT:.str.2_0
	mov	rsp, rsp
	mov	ebp, 0x2b
	mov	r14d, 4
	nop	
	jmp	.label_72
.label_578:
	mov	rsp, rsp
	cmp	r10d, 0x45
	je	.label_45
	mov	r9, qword ptr [rsp + 0x38]
	mov	rbp, rbp
	mov	edx, dword ptr [r9 + 8]
	lea	rsi, [rsi]
	jmp	.label_86
.label_579:
	cmp	r10d, 0x45
	je	.label_45
	mov	r14d, 2
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x48c]
	mov	edx, eax
	mov	r9, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	jmp	.label_53
.label_580:
	cmp	r10d, 0x45
	je	.label_45
	lea	rsi, [rsi]
	mov	r9, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	mov	edx, dword ptr [r9 + 4]
	mov	rsp, rsp
	jmp	.label_86
.label_581:
	lea	rdi, [rdi]
	cmp	r10d, 0x45
	lea	rsi, [rsi]
	je	.label_45
	mov	rbp, rbp
	mov	edi, dword ptr [rsp + 0x460]
	cmp	edi, -1
	je	.label_111
	cmp	edi, 8
	lea	rdi, [rdi]
	jg	.label_113
	mov	esi, 9
	sub	esi, edi
	mov	rsp, rsp
	mov	eax, 8
	lea	rdi, [rdi]
	sub	eax, edi
	test	sil, 3
	mov	edx, dword ptr [rsp + 0x4d8]
	mov	ebx, edi
	mov	rbp, rbp
	je	.label_117
	and	esi, 3
	neg	esi
	mov	edx, dword ptr [rsp + 0x4d8]
	nop	
	mov	ebx, edi
	nop	dword ptr [rax]
.label_124:
	movsxd	rdx, edx
	mov	rsp, rsp
	imul	rdx, rdx, 0x66666667
	mov	rdi, rdx
	lea	rdi, [rdi]
	shr	rdi, 0x3f
	mov	rbp, rbp
	sar	rdx, 0x22
	add	edx, edi
	inc	ebx
	mov	rbp, rbp
	inc	esi
	lea	rsi, [rsi]
	jne	.label_124
.label_117:
	nop	
	cmp	eax, 3
	mov	r9, qword ptr [rsp + 0x38]
	mov	rsp, rsp
	jb	.label_129
	lea	rsi, [rsi]
	mov	eax, 9
	mov	rsp, rsp
	sub	eax, ebx
	nop	word ptr [rax + rax]
.label_134:
	movsxd	rdx, edx
	imul	rdx, rdx, 0x68db8bad
	nop	
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x2c
	mov	rbp, rbp
	add	edx, esi
	lea	rdi, [rdi]
	add	eax, -4
	lea	rsi, [rsi]
	jne	.label_134
.label_129:
	mov	eax, dword ptr [rsp + 0x460]
	mov	r14d, eax
	nop	
	jmp	.label_53
.label_582:
	mov	dil, 1
.label_600:
	mov	rbp, rbp
	xor	edx, edx
	lea	rsi, [rsi]
	test	r12b, r12b
	je	.label_78
	nop	
	mov	r11d, 0
.label_78:
	je	.label_146
	mov	dil, 1
.label_146:
	nop	
	mov	r9b, 0x70
	mov	al, dil
	jmp	.label_68
.label_583:
	nop	
	cmp	r10d, 0x45
	mov	rsp, rsp
	je	.label_45
	lea	rdi, [rdi]
	mov	r9, qword ptr [rsp + 0x38]
	mov	rbp, rbp
	mov	edx, dword ptr [r9]
	mov	rsp, rsp
	jmp	.label_86
.label_584:
	mov	r15d, OFFSET FLAT:.str.4_0
.label_72:
	nop	
	test	r11b, r11b
	nop	
	mov	qword ptr [rsp + 0x30], r11
	mov	rsp, rsp
	setne	al
	mov	ecx, dword ptr [rsp + 0x4d8]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 8], ecx
	mov	rcx, qword ptr [rsp + 0x4d0]
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rcx
	movzx	ecx, al
	xor	ebx, ebx
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsi, r15
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	mov	r8d, ebp
	nop	
	mov	r9d, r14d
	lea	rsi, [rsi]
	call	__strftime_internal
	mov	esi, dword ptr [rsp + 0x460]
	nop	
	test	esi, esi
	cmovns	ebx, esi
	movsxd	rcx, ebx
	cmp	rax, rcx
	lea	rsi, [rsi]
	mov	rdi, rax
	cmovb	rdi, rcx
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	not	rdx
	cmp	rdi, rdx
	jae	.label_59
	cmp	qword ptr [rsp + 0x468], 0
	je	.label_177
	mov	dword ptr [rsp + 0x28], r14d
	mov	qword ptr [rsp + 0x480], rdi
	lea	rsi, [rsi]
	cmp	rax, rcx
	lea	rdi, [rdi]
	mov	r12, qword ptr [rsp + 0x468]
	lea	rsi, [rsi]
	jae	.label_164
	movsxd	rcx, esi
	mov	r14, rcx
	lea	rsi, [rsi]
	sub	r14, rax
	cmp	ebp, 0x30
	je	.label_172
	cmp	ebp, 0x2b
	jne	.label_187
.label_172:
	lea	rsi, [rsi]
	xor	ebx, ebx
	cmp	rcx, rax
	je	.label_164
	nop	dword ptr [rax + rax]
.label_168:
	mov	edi, 0x30
	mov	rsi, r12
	lea	rdi, [rdi]
	call	fputc
	inc	rbx
	lea	rsi, [rsi]
	cmp	rbx, r14
	jb	.label_168
	lea	rdi, [rdi]
	jmp	.label_164
.label_585:
	cmp	r10d, 0x45
	lea	rdi, [rdi]
	je	.label_45
	mov	r9, qword ptr [rsp + 0x38]
	nop	
	mov	eax, dword ptr [r9 + 0x1c]
	lea	rdi, [rdi]
	add	eax, 7
	nop	
	sub	eax, dword ptr [r9 + 0x18]
	lea	rsi, [rsi]
	movsxd	rdx, eax
	jmp	.label_194
.label_586:
	lea	rdi, [rdi]
	cmp	r10d, 0x45
	mov	rsp, rsp
	je	.label_45
	mov	rbp, rbp
	mov	r9, qword ptr [rsp + 0x38]
	mov	eax, dword ptr [r9 + 0x18]
	mov	edx, dword ptr [r9 + 0x1c]
	lea	esi, [rax + 6]
	movsxd	rsi, esi
	imul	rdi, rsi, -0x6db6db6d
	shr	rdi, 0x20
	lea	eax, [rdi + rax + 6]
	mov	edi, eax
	shr	edi, 0x1f
	lea	rsi, [rsi]
	sar	eax, 2
	lea	rdi, [rdi]
	add	eax, edi
	lea	edi, [rax*8]
	sub	edi, eax
	nop	
	sub	esi, edi
	add	edx, 7
	mov	rbp, rbp
	sub	edx, esi
	movsxd	rdx, edx
.label_194:
	imul	rax, rdx, -0x6db6db6d
	nop	
	shr	rax, 0x20
	mov	rsp, rsp
	add	edx, eax
	mov	eax, edx
	mov	rsp, rsp
	shr	eax, 0x1f
	mov	rsp, rsp
	sar	edx, 2
	mov	rsp, rsp
	add	edx, eax
	lea	rsi, [rsi]
	jmp	.label_86
.label_587:
	lea	rsi, [rsi]
	cmp	r10d, 0x4f
	mov	rsp, rsp
	je	.label_45
	xor	eax, eax
	mov	r9b, 0x58
	nop	
	jmp	.label_51
.label_588:
	mov	rbp, rbp
	cmp	r10d, 0x45
	nop	
	je	.label_58
	mov	rsp, rsp
	cmp	r10d, 0x4f
	lea	rdi, [rdi]
	je	.label_45
	mov	r9, qword ptr [rsp + 0x38]
	mov	edx, dword ptr [r9 + 0x14]
	cmp	edx, 0xfffff894
	nop	
	setl	r15b
	lea	rsi, [rsi]
	add	edx, 0x76c
	mov	r14d, 4
	jmp	.label_65
.label_589:
	nop	
	mov	qword ptr [rsp + 0x30], r11
	mov	rdi, qword ptr [rsp + 0x478]
	call	strlen
	mov	rbp, rbp
	mov	rbx, rax
	mov	rbp, rbp
	xor	eax, eax
	mov	edx, dword ptr [rsp + 0x460]
	lea	rsi, [rsi]
	test	edx, edx
	mov	rbp, rbp
	cmovns	eax, edx
	lea	rdi, [rdi]
	cdqe	
	nop	
	cmp	rbx, rax
	mov	rsi, rbx
	cmovb	rsi, rax
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	not	rcx
	cmp	rsi, rcx
	mov	rbp, rbp
	jae	.label_59
	mov	qword ptr [rsp + 0x480], rsi
	nop	
	mov	r14, qword ptr [rsp + 0x468]
	test	r14, r14
	je	.label_93
	cmp	rbx, rax
	lea	rsi, [rsi]
	jae	.label_99
	nop	
	movsxd	rax, edx
	nop	
	mov	r15, rax
	nop	
	sub	r15, rbx
	mov	rsp, rsp
	cmp	ebp, 0x30
	mov	rbp, rbp
	je	.label_101
	mov	rsp, rsp
	cmp	ebp, 0x2b
	jne	.label_108
.label_101:
	xor	ebp, ebp
	cmp	rax, rbx
	mov	rsp, rsp
	je	.label_99
	nop	word ptr cs:[rax + rax]
.label_203:
	mov	edi, 0x30
	mov	rsi, r14
	call	fputc
	mov	rbp, rbp
	inc	rbp
	lea	rdi, [rdi]
	cmp	rbp, r15
	nop	
	jb	.label_203
	lea	rdi, [rdi]
	jmp	.label_99
.label_590:
	lea	rsi, [rsi]
	test	r10d, r10d
	jne	.label_45
	test	r12b, r12b
	mov	rbp, rbp
	je	.label_82
	mov	r11b, 1
.label_82:
	xor	eax, eax
	mov	r9b, 0x61
	nop	
	jmp	.label_51
.label_592:
	cmp	r10d, 0x4f
	je	.label_45
	mov	rsp, rsp
	xor	eax, eax
	mov	r9b, 0x63
	lea	rsi, [rsi]
	jmp	.label_51
.label_593:
	lea	rsi, [rsi]
	cmp	r10d, 0x45
	mov	rsp, rsp
	je	.label_45
	mov	r9, qword ptr [rsp + 0x38]
	mov	rsp, rsp
	mov	edx, dword ptr [r9 + 0xc]
	lea	rdi, [rdi]
	jmp	.label_86
.label_594:
	lea	rdi, [rdi]
	cmp	r10d, 0x45
	je	.label_45
	mov	r9, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	mov	edx, dword ptr [r9 + 0xc]
	jmp	.label_133
.label_595:
	mov	rsp, rsp
	cmp	r10d, 0x45
	mov	rsp, rsp
	je	.label_45
	mov	r9, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	mov	edx, dword ptr [r9 + 0x1c]
	mov	rbp, rbp
	cmp	edx, -1
	nop	
	setl	r15b
	lea	rdi, [rdi]
	inc	edx
	mov	r14d, 3
	mov	rsp, rsp
	jmp	.label_157
.label_596:
	cmp	r10d, 0x45
	nop	
	je	.label_45
	mov	rsp, rsp
	mov	r9, qword ptr [rsp + 0x38]
	mov	edx, dword ptr [r9 + 8]
	lea	rdi, [rdi]
	jmp	.label_133
.label_597:
	mov	rsp, rsp
	cmp	r10d, 0x45
	mov	eax, dword ptr [rsp + 0x48c]
	lea	rdi, [rdi]
	mov	edx, eax
	mov	rsp, rsp
	mov	r9, qword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	je	.label_45
.label_133:
	mov	rbp, rbp
	test	ebp, ebp
	mov	rsp, rsp
	mov	eax, 0x5f
	lea	rsi, [rsi]
	cmove	ebp, eax
.label_86:
	nop	
	mov	r14d, 2
	nop	
	jmp	.label_53
.label_598:
	nop	
	cmp	r10d, 0x45
	mov	rbp, rbp
	je	.label_45
	mov	rbp, rbp
	mov	r9, qword ptr [rsp + 0x38]
	mov	edx, dword ptr [r9 + 0x10]
	cmp	edx, -1
	setl	r15b
	inc	edx
	lea	rdi, [rdi]
	mov	r14d, 2
	jmp	.label_157
.label_599:
	xor	eax, eax
	mov	edx, dword ptr [rsp + 0x460]
	test	edx, edx
	lea	rdi, [rdi]
	cmovns	eax, edx
	movsxd	rcx, eax
	lea	rdi, [rdi]
	cmp	ecx, 1
	mov	r14d, 1
	cmova	r14, rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	not	rcx
	cmp	r14, rcx
	mov	rsp, rsp
	jae	.label_59
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x468], 0
	je	.label_85
	lea	rdi, [rdi]
	cmp	eax, 2
	mov	r12, qword ptr [rsp + 0x468]
	mov	rsp, rsp
	jb	.label_150
	movsxd	rbx, edx
	lea	r15, [rbx - 1]
	nop	
	cmp	ebp, 0x30
	je	.label_181
	nop	
	cmp	ebp, 0x2b
	lea	rdi, [rdi]
	jne	.label_183
.label_181:
	mov	rbp, rbp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_150
	dec	rbx
	nop	dword ptr [rax]
.label_131:
	mov	edi, 0x30
	mov	rsi, r12
	mov	rbp, rbp
	call	fputc
	mov	rsp, rsp
	dec	rbx
	jne	.label_131
	lea	rsi, [rsi]
	jmp	.label_150
.label_601:
	mov	rbp, rbp
	mov	r9, qword ptr [rsp + 0x38]
	imul	edx, dword ptr [r9 + 0x10], 0xb
	nop	
	sar	edx, 5
	inc	edx
	nop	
	mov	r14d, 1
	xor	ebx, ebx
	xor	r8d, r8d
	nop	
	xor	r15d, r15d
	jmp	.label_50
.label_602:
	mov	qword ptr [rsp + 0x30], r11
	mov	rcx, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0x70], rax
	movups	xmm0, xmmword ptr [rcx]
	movups	xmm1, xmmword ptr [rcx + 0x10]
	mov	rsp, rsp
	movups	xmm2, xmmword ptr [rcx + 0x20]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x60], xmm2
	movaps	xmmword ptr [rsp + 0x50], xmm1
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x40], xmm0
	lea	rsi, [rsp + 0x40]
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x4d0]
	nop	
	call	mktime_z
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	r15, rcx
	nop	
	shr	r15, 0x3f
	lea	rsi, [rsi]
	lea	r12, [rsp + 0x457]
.label_207:
	movabs	rdx, 0x6666666666666667
	mov	rax, rcx
	imul	rdx
	nop	
	mov	rax, rdx
	lea	rsi, [rsi]
	shr	rax, 0x3f
	mov	rsp, rsp
	sar	rdx, 2
	lea	edi, [rdx + rax]
	mov	rbp, rbp
	add	edi, edi
	nop	
	lea	edi, [rdi + rdi*4]
	mov	ebx, ecx
	lea	rsi, [rsi]
	sub	ebx, edi
	add	rdx, rax
	lea	rdi, [rdi]
	mov	eax, ebx
	lea	rsi, [rsi]
	neg	eax
	nop	
	test	r15, r15
	cmove	eax, ebx
	add	eax, 0x30
	mov	byte ptr [r12 - 1], al
	dec	r12
	mov	rsp, rsp
	add	rcx, 9
	nop	
	cmp	rcx, 0x12
	nop	
	mov	rcx, rdx
	ja	.label_207
	mov	r14d, 1
	xor	r8d, r8d
	mov	rsp, rsp
	mov	r11, qword ptr [rsp + 0x30]
	mov	r9d, dword ptr [rsp + 0x460]
	mov	rsi, qword ptr [rsp + 0x18]
	nop	
	jmp	.label_64
.label_603:
	xor	eax, eax
	mov	edx, dword ptr [rsp + 0x460]
	test	edx, edx
	cmovns	eax, edx
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	r14d, 1
	mov	rsp, rsp
	cmova	r14, rcx
	mov	rcx, qword ptr [rsp + 0x18]
	not	rcx
	cmp	r14, rcx
	lea	rsi, [rsi]
	jae	.label_59
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x468], 0
	je	.label_85
	cmp	eax, 2
	mov	r12, qword ptr [rsp + 0x468]
	jb	.label_88
	movsxd	rbx, edx
	lea	r15, [rbx - 1]
	cmp	ebp, 0x30
	je	.label_91
	cmp	ebp, 0x2b
	jne	.label_110
.label_91:
	lea	rsi, [rsi]
	test	r15, r15
	je	.label_88
	dec	rbx
	nop	word ptr cs:[rax + rax]
.label_106:
	lea	rdi, [rdi]
	mov	edi, 0x30
	mov	rsp, rsp
	mov	rsi, r12
	lea	rdi, [rdi]
	call	fputc
	lea	rsi, [rsi]
	dec	rbx
	jne	.label_106
	jmp	.label_88
.label_604:
	mov	r9, qword ptr [rsp + 0x38]
	mov	eax, dword ptr [r9 + 0x18]
	lea	edx, [rax + 6]
	movsxd	rdx, edx
	nop	
	imul	rsi, rdx, -0x6db6db6d
	lea	rsi, [rsi]
	shr	rsi, 0x20
	lea	eax, [rsi + rax + 6]
	mov	esi, eax
	shr	esi, 0x1f
	sar	eax, 2
	add	eax, esi
	mov	rsp, rsp
	lea	esi, [rax*8]
	lea	rsi, [rsi]
	sub	esi, eax
	sub	edx, esi
	lea	rsi, [rsi]
	inc	edx
	mov	rbp, rbp
	mov	r14d, 1
	nop	
	jmp	.label_53
.label_605:
	nop	
	cmp	r10d, 0x45
	mov	rsp, rsp
	je	.label_45
	mov	rsp, rsp
	mov	r9, qword ptr [rsp + 0x38]
	mov	rbp, rbp
	mov	edx, dword ptr [r9 + 0x18]
	mov	r14d, 1
	jmp	.label_53
.label_606:
	mov	rbp, rbp
	cmp	r10d, 0x4f
	mov	rbp, rbp
	je	.label_45
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	r9b, 0x78
	lea	rsi, [rsi]
	jmp	.label_51
.label_607:
	lea	rsi, [rsi]
	cmp	r10d, 0x45
	jne	.label_130
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	r9b, 0x79
	jmp	.label_51
.label_185:
	mov	qword ptr [rsp + 0x18], r15
	mov	dword ptr [rsp + 0x460], r9d
	lea	rsi, [rsi]
	jmp	.label_45
.label_114:
	lea	rsi, [rsi]
	dec	r11d
	mov	r14d, 0x16d
	mov	rsp, rsp
	test	r11b, 3
	jne	.label_137
	movsxd	rax, r11d
	imul	rax, rax, 0x51eb851f
	mov	rsi, rax
	nop	
	sar	rsi, 0x25
	nop	
	mov	rdi, rax
	shr	rdi, 0x3f
	mov	rbp, rbp
	add	esi, edi
	mov	rsp, rsp
	imul	esi, esi, 0x64
	nop	
	sar	rax, 0x27
	add	eax, edi
	nop	
	imul	eax, eax, 0x190
	mov	rbp, rbp
	cmp	r11d, eax
	sete	al
	nop	
	movzx	edi, al
	add	edi, 0x16d
	mov	rsp, rsp
	cmp	r11d, esi
	mov	r14d, 0x16e
	cmove	r14d, edi
.label_137:
	lea	esi, [r14 + rbx + 0x17e]
	mov	rsp, rsp
	sub	esi, r9d
	movsxd	rsi, esi
	imul	rdi, rsi, -0x6db6db6d
	shr	rdi, 0x20
	lea	rsi, [rsi]
	add	edi, esi
	mov	eax, edi
	shr	eax, 0x1f
	nop	
	sar	edi, 2
	add	edi, eax
	lea	eax, [rdi*8]
	sub	eax, edi
	sub	esi, eax
	lea	r12d, [r14 + rbx + 3]
	sub	r12d, esi
	mov	ebx, 0xffffffff
.label_147:
	nop	
	cmp	r8d, 0x47
	mov	rsp, rsp
	mov	r11, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	je	.label_160
	cmp	r8d, 0x67
	jne	.label_165
	movsxd	rax, edx
	mov	rsp, rsp
	imul	rax, rax, 0x51eb851f
	mov	rdi, rdx
	nop	
	mov	rdx, rax
	nop	
	shr	rdx, 0x3f
	nop	
	sar	rax, 0x25
	add	eax, edx
	mov	rsp, rsp
	imul	eax, eax, 0x64
	mov	edx, edi
	lea	rdi, [rdi]
	sub	edx, eax
	lea	rdi, [rdi]
	add	edx, ebx
	mov	rbp, rbp
	movsxd	rdx, edx
	imul	rax, rdx, 0x51eb851f
	mov	rsp, rsp
	mov	rsi, rax
	mov	rsp, rsp
	shr	rsi, 0x3f
	mov	rbp, rbp
	sar	rax, 0x25
	lea	rsi, [rsi]
	add	eax, esi
	imul	eax, eax, 0x64
	sub	edx, eax
	lea	rdi, [rdi]
	mov	r14d, 2
	nop	
	mov	r9, qword ptr [rsp + 0x38]
	mov	rbp, rbp
	js	.label_167
	nop	
	xor	r15d, r15d
	jmp	.label_65
.label_74:
	mov	r14, qword ptr [rsp + 0x468]
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	jmp	.label_103
.label_63:
	mov	rbp, rbp
	mov	r9, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [r9 + 0x14]
	cmp	rax, -0x76c
	nop	
	setl	r15b
	setg	bl
	imul	rdx, rax, 0x51eb851f
	mov	rbp, rbp
	mov	rdi, rdx
	shr	rdi, 0x3f
	sar	rdx, 0x25
	add	edx, edi
	lea	rdi, [rdi]
	imul	edi, edx, 0x64
	lea	rdi, [rdi]
	cmp	eax, edi
	sets	al
	and	al, bl
	movzx	eax, al
	sub	edx, eax
	add	edx, 0x13
	mov	rsp, rsp
	mov	r14d, 2
	jmp	.label_65
.label_130:
	mov	r9, qword ptr [rsp + 0x38]
	movsxd	rax, dword ptr [r9 + 0x14]
	lea	rdi, [rdi]
	imul	rdx, rax, 0x51eb851f
	mov	rsi, rdx
	mov	rbp, rbp
	shr	rsi, 0x3f
	sar	rdx, 0x25
	add	edx, esi
	lea	rdi, [rdi]
	imul	esi, edx, 0x64
	mov	rsp, rsp
	mov	edx, eax
	nop	
	mov	r14d, 2
	sub	edx, esi
	lea	rsi, [rsi]
	js	.label_198
	lea	rdi, [rdi]
	xor	r15d, r15d
	jmp	.label_65
.label_160:
	lea	rsi, [rsi]
	mov	eax, 0xfffff894
	sub	eax, ebx
	cmp	edx, eax
	lea	rsi, [rsi]
	setl	r15b
	mov	rsp, rsp
	lea	edx, [rbx + rdx + 0x76c]
	nop	
	mov	r14d, 4
	mov	r9, qword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	jmp	.label_65
.label_165:
	movsxd	rax, r12d
	lea	rdi, [rdi]
	imul	rdx, rax, -0x6db6db6d
	lea	rsi, [rsi]
	shr	rdx, 0x20
	add	eax, edx
	mov	edx, eax
	sar	edx, 2
	shr	eax, 0x1f
	nop	
	lea	edx, [rdx + rax + 1]
	nop	
	mov	r14d, 2
	mov	rbp, rbp
	mov	r9, qword ptr [rsp + 0x38]
	jmp	.label_53
.label_58:
	xor	eax, eax
	mov	rbp, rbp
	mov	r9b, 0x59
.label_51:
	mov	rbp, rbp
	xor	edx, edx
	jmp	.label_68
.label_187:
	lea	rdi, [rdi]
	xor	ebx, ebx
	lea	rdi, [rdi]
	cmp	rcx, rax
	nop	
	je	.label_164
	nop	word ptr cs:[rax + rax]
.label_81:
	mov	rbp, rbp
	mov	edi, 0x20
	mov	rsi, r12
	call	fputc
	inc	rbx
	cmp	rbx, r14
	lea	rdi, [rdi]
	jb	.label_81
.label_164:
	mov	rax, qword ptr [rsp + 0x30]
	mov	rsp, rsp
	test	al, al
	setne	al
	mov	ecx, dword ptr [rsp + 0x4d8]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 8], ecx
	mov	rcx, qword ptr [rsp + 0x4d0]
	mov	rsp, rsp
	mov	qword ptr [rsp], rcx
	movzx	ecx, al
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	qword ptr [rsp + 0x468], r12
	lea	rdi, [rdi]
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x38]
	mov	r8d, ebp
	mov	rbp, rbp
	mov	r9d, dword ptr [rsp + 0x28]
	call	__strftime_internal
	nop	
	mov	rdi, qword ptr [rsp + 0x480]
.label_177:
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	add	r15, rdi
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp + 0x468]
	jmp	.label_103
.label_121:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x478]
	nop	
	movzx	edx, byte ptr [rax]
	mov	rbp, rbp
	cmp	edx, 0x2d
	mov	rbp, rbp
	sete	r15b
.label_171:
	nop	
	mov	r14, rdi
	lea	rdi, [rdi]
	cmp	r14, 3
	ja	.label_45
	mov	rbp, rbp
	movsxd	rdx, r8d
	imul	rdi, rdx, -0x77777777
	mov	rsp, rsp
	shr	rdi, 0x20
	mov	rsp, rsp
	add	edi, r8d
	mov	ebx, edi
	shr	ebx, 0x1f
	lea	rsi, [rsi]
	sar	edi, 5
	add	edi, ebx
	mov	rbp, rbp
	imul	rdx, rdx, -0x6e5d4c3b
	lea	rdi, [rdi]
	shr	rdx, 0x20
	add	edx, r8d
	mov	ebx, edx
	mov	rsp, rsp
	shr	ebx, 0x1f
	sar	edx, 0xb
	lea	rsi, [rsi]
	add	edx, ebx
	movsxd	rbx, edi
	imul	rdi, rbx, -0x77777777
	mov	rsp, rsp
	shr	rdi, 0x20
	add	edi, ebx
	mov	eax, edi
	shr	eax, 0x1f
	lea	rsi, [rsi]
	sar	edi, 5
	add	edi, eax
	nop	
	imul	eax, edi, 0x3c
	imul	edi, ebx, 0x3c
	mov	rbp, rbp
	sub	ebx, eax
	sub	r8d, edi
	jmp	qword ptr [word ptr [+ (r14 * 8) + label_116]]
.label_622:
	nop	
	imul	edx, edx, 0x64
	add	edx, ebx
	mov	r14d, 5
.label_184:
	mov	r8b, 1
	mov	rbp, rbp
	xor	ebx, ebx
	jmp	.label_50
.label_45:
	nop	
	mov	qword ptr [rsp + 0x30], r11
	nop	
	lea	rbx, [r13 + 1]
	xor	r12d, r12d
	nop	
.label_139:
	nop	
	inc	r12
	movzx	eax, byte ptr [rbx - 1]
	mov	rsp, rsp
	dec	rbx
	cmp	eax, 0x25
	mov	rbp, rbp
	jne	.label_139
	mov	rsp, rsp
	mov	edx, dword ptr [rsp + 0x460]
	lea	rsi, [rsi]
	test	edx, edx
	nop	
	mov	eax, edx
	mov	ecx, 0
	mov	rbp, rbp
	cmovs	eax, ecx
	cmp	r12d, eax
	mov	ecx, eax
	nop	
	cmova	ecx, r12d
	movsxd	rsi, ecx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	not	rcx
	nop	
	cmp	rsi, rcx
	mov	rbp, rbp
	jae	.label_59
	mov	qword ptr [rsp + 0x480], rsi
	mov	rsp, rsp
	mov	r14, qword ptr [rsp + 0x468]
	test	r14, r14
	lea	rdi, [rdi]
	je	.label_93
	movsxd	rcx, r12d
	mov	qword ptr [rsp + 0x28], rcx
	mov	rsp, rsp
	cmp	r12d, eax
	mov	r15, r14
	jae	.label_153
	movsxd	r14, edx
	sub	r14, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	cmp	ebp, 0x30
	nop	
	je	.label_158
	nop	
	cmp	ebp, 0x2b
	nop	
	jne	.label_161
.label_158:
	cmp	edx, r12d
	mov	ebp, 0
	nop	
	je	.label_153
	nop	word ptr cs:[rax + rax]
.label_102:
	mov	rsp, rsp
	mov	edi, 0x30
	mov	rbp, rbp
	mov	rsi, r15
	mov	rbp, rbp
	call	fputc
	inc	rbp
	mov	rsp, rsp
	cmp	rbp, r14
	mov	rbp, rbp
	jb	.label_102
	jmp	.label_153
.label_161:
	cmp	edx, r12d
	mov	rsp, rsp
	mov	ebp, 0
	mov	rsp, rsp
	je	.label_153
	nop	word ptr cs:[rax + rax]
.label_180:
	mov	rbp, rbp
	mov	edi, 0x20
	mov	rsi, r15
	call	fputc
	inc	rbp
	mov	rbp, rbp
	cmp	rbp, r14
	jb	.label_180
.label_153:
	lea	rdi, [rdi]
	mov	r14, r15
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_182
	mov	rsp, rsp
	mov	edx, 1
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0x28]
.label_176:
	mov	rsp, rsp
	mov	rcx, r14
	lea	rsi, [rsi]
	call	fwrite
	jmp	.label_93
.label_182:
	call	__ctype_toupper_loc
	mov	r15, rax
	movsxd	rbp, r12d
	neg	rbp
	nop	
.label_192:
	nop	
	movzx	eax, byte ptr [rbx]
	mov	rcx, qword ptr [r15]
	mov	edi, dword ptr [rcx + rax*4]
	mov	rsi, r14
	call	fputc
	inc	rbx
	lea	rdi, [rdi]
	inc	rbp
	mov	rsp, rsp
	jne	.label_192
.label_93:
	lea	rdi, [rdi]
	mov	r15, qword ptr [rsp + 0x18]
	add	r15, qword ptr [rsp + 0x480]
	jmp	.label_103
.label_77:
	xor	eax, eax
	mov	r14d, ecx
	mov	rsp, rsp
	add	r14d, -6
	lea	rsi, [rsi]
	cmovs	r14d, eax
	mov	rbp, rbp
	mov	r15d, OFFSET FLAT:.str.2_0
	mov	rbp, rbp
	jmp	.label_72
.label_111:
	mov	rbp, rbp
	mov	r14d, 9
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 0x4d8]
	mov	edx, eax
	mov	dword ptr [rsp + 0x460], 9
	mov	rsp, rsp
	mov	r9, qword ptr [rsp + 0x38]
	jmp	.label_53
.label_167:
	lea	rdi, [rdi]
	mov	eax, 0xfffff894
	sub	eax, ebx
	mov	rbp, rbp
	mov	esi, edx
	lea	rdi, [rdi]
	neg	esi
	nop	
	add	edx, 0x64
	lea	rdi, [rdi]
	cmp	edi, eax
	lea	rsi, [rsi]
	jmp	.label_209
.label_198:
	mov	esi, edx
	neg	esi
	lea	rdi, [rdi]
	add	edx, 0x64
	lea	rdi, [rdi]
	cmp	eax, 0xfffff894
.label_209:
	cmovl	edx, esi
	xor	r15d, r15d
.label_65:
	test	ebp, ebp
	cmove	ebp, dword ptr [rsp + 0x474]
	xor	ebx, ebx
	cmp	ebp, 0x2b
	lea	rsi, [rsi]
	mov	r8d, 0
	jne	.label_50
	cmp	r14d, 2
	mov	rsp, rsp
	mov	eax, 0x63
	nop	
	mov	edi, 0x270f
	mov	rsp, rsp
	cmove	edi, eax
	lea	rdi, [rdi]
	cmp	edi, edx
	lea	rdi, [rdi]
	setb	dil
	cmp	r14d, dword ptr [rsp + 0x460]
	setl	r8b
	or	r8b, dil
	jmp	.label_50
.label_625:
	lea	rdi, [rdi]
	test	r8d, r8d
	je	.label_73
.label_624:
	lea	rsi, [rsi]
	imul	edx, edx, 0x2710
	lea	rdi, [rdi]
	imul	eax, ebx, 0x64
	lea	rsi, [rsi]
	add	edx, r8d
	add	edx, eax
	nop	
	mov	r14d, 9
	mov	r8b, 1
	mov	ebx, 0x14
	jmp	.label_50
.label_113:
	mov	eax, dword ptr [rsp + 0x4d8]
	nop	
	mov	edx, eax
	mov	rsp, rsp
	mov	r14d, edi
	mov	r9, qword ptr [rsp + 0x38]
.label_53:
	mov	r15d, edx
	shr	r15d, 0x1f
.label_157:
	xor	ebx, ebx
	xor	r8d, r8d
.label_50:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x38], r9
	cmp	r10d, 0x4f
	mov	rsp, rsp
	jne	.label_89
	test	r15b, r15b
	lea	rdi, [rdi]
	jne	.label_89
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	r9b, cl
	mov	rdx, r14
.label_68:
	nop	
	mov	dword ptr [rsp + 0x480], eax
	mov	rbx, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], r11
	mov	word ptr [rsp + 0x13], 0x2520
	lea	rsi, [rsi]
	test	r10d, r10d
	nop	
	lea	rcx, [rsp + 0x15]
	mov	rbp, rbp
	je	.label_98
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x15], r10b
	lea	rsi, [rsi]
	lea	rcx, [rsp + 0x16]
.label_98:
	lea	rdi, [rdi]
	mov	byte ptr [rcx], r9b
	lea	rsi, [rsi]
	mov	byte ptr [rcx + 1], 0
	mov	rbp, rbp
	lea	rdi, [rsp + 0x40]
	lea	rdx, [rsp + 0x13]
	mov	rsp, rsp
	mov	esi, 0x400
	mov	rcx, qword ptr [rsp + 0x38]
	call	strftime
	lea	rsi, [rsi]
	test	rax, rax
	mov	r14, qword ptr [rsp + 0x468]
	je	.label_52
	lea	rdi, [rax - 1]
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, dword ptr [rsp + 0x460]
	test	edx, edx
	cmovns	ecx, edx
	movsxd	rsi, ecx
	nop	
	cmp	rdi, rsi
	lea	rsi, [rsi]
	mov	r15, rdi
	cmovb	r15, rsi
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x18]
	not	rcx
	lea	rdi, [rdi]
	cmp	r15, rcx
	jae	.label_59
	nop	
	mov	qword ptr [rsp + 0x458], rax
	test	r14, r14
	mov	rsp, rsp
	mov	r12, r14
	je	.label_95
	nop	
	cmp	rdi, rsi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rdi
	setae	al
	test	ebx, ebx
	jne	.label_80
	test	al, al
	jne	.label_80
	movsxd	rax, edx
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x28]
	nop	
	sub	rbx, rcx
	cmp	ebp, 0x30
	mov	rsp, rsp
	je	.label_136
	cmp	ebp, 0x2b
	mov	rsp, rsp
	jne	.label_140
.label_136:
	mov	rbp, rbp
	xor	ebp, ebp
	cmp	rax, rcx
	je	.label_80
	nop	dword ptr [rax + rax]
.label_104:
	mov	edi, 0x30
	mov	rsi, r12
	call	fputc
	inc	rbp
	mov	rsp, rsp
	cmp	rbp, rbx
	jb	.label_104
	mov	rsp, rsp
	jmp	.label_80
.label_89:
	mov	eax, edx
	mov	rbp, rbp
	neg	eax
	test	r15b, r15b
	cmove	eax, edx
	lea	rdi, [rdi]
	lea	r12, [rsp + 0x457]
	mov	r9d, dword ptr [rsp + 0x460]
	mov	rsi, qword ptr [rsp + 0x18]
	nop	word ptr cs:[rax + rax]
.label_75:
	test	bl, 1
	lea	rdi, [rdi]
	je	.label_152
	mov	byte ptr [r12 - 1], 0x3a
	mov	rsp, rsp
	dec	r12
.label_152:
	sar	ebx, 1
	mov	edi, eax
	mov	edx, 0xcccccccd
	mov	rsp, rsp
	imul	rdx, rdi
	mov	rbp, rbp
	shr	rdx, 0x23
	lea	edi, [rdx + rdx]
	lea	edi, [rdi + rdi*4]
	mov	ecx, eax
	lea	rdi, [rdi]
	sub	ecx, edi
	or	ecx, 0x30
	mov	byte ptr [r12 - 1], cl
	dec	r12
	cmp	eax, 9
	lea	rdi, [rdi]
	mov	eax, edx
	mov	rbp, rbp
	ja	.label_75
	mov	rsp, rsp
	test	ebx, ebx
	nop	
	mov	eax, edx
	jne	.label_75
.label_64:
	cmp	r14d, r9d
	cmovl	r14d, r9d
	test	r8b, r8b
	je	.label_169
	mov	r8b, 0x2b
.label_169:
	test	r15b, r15b
	mov	rbp, rbp
	mov	bl, 0x2d
	jne	.label_174
	mov	rbp, rbp
	mov	bl, r8b
.label_174:
	nop	
	cmp	ebp, 0x2d
	lea	rsi, [rsi]
	jne	.label_175
	mov	rbp, rbp
	test	bl, bl
	mov	rdi, r14
	mov	rsp, rsp
	je	.label_145
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], r11
	xor	eax, eax
	test	r9d, r9d
	nop	
	cmovns	eax, r9d
	movsxd	rcx, eax
	lea	rdi, [rdi]
	cmp	ecx, 1
	mov	r14d, 1
	nop	
	cmova	r14, rcx
	mov	rcx, rsi
	mov	qword ptr [rsp + 0x18], rsi
	mov	rbp, rbp
	not	rcx
	cmp	r14, rcx
	jae	.label_59
	cmp	qword ptr [rsp + 0x468], 0
	mov	rsp, rsp
	je	.label_196
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x28], bl
	mov	dword ptr [rsp + 0x460], r9d
	cmp	eax, 2
	mov	rsp, rsp
	setb	al
	nop	
	test	edi, edi
	nop	
	mov	qword ptr [rsp + 0x480], rdi
	mov	r15, qword ptr [rsp + 0x468]
	nop	
	jne	.label_191
	test	al, al
	jne	.label_191
	mov	rsp, rsp
	cmp	dword ptr [rsp + 0x460], 1
	lea	rsi, [rsi]
	je	.label_191
	mov	rbp, rbp
	movsxd	rbx, dword ptr [rsp + 0x460]
	dec	rbx
	nop	word ptr [rax + rax]
.label_155:
	mov	edi, 0x20
	mov	rsi, r15
	mov	rsp, rsp
	call	fputc
	dec	rbx
	nop	
	jne	.label_155
.label_191:
	movzx	edi, byte ptr [rsp + 0x28]
	mov	rsi, r15
	call	fputc
	mov	r9d, dword ptr [rsp + 0x460]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x480]
.label_196:
	mov	rsi, qword ptr [rsp + 0x18]
	add	rsi, r14
	mov	rbp, rbp
	jmp	.label_118
.label_52:
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	jmp	.label_103
.label_175:
	mov	rdi, r14
	movsxd	rax, edi
	mov	rbp, rbp
	mov	rcx, r12
	lea	rdx, [rsp + 0x457]
	sub	rcx, rdx
	mov	dl, bl
	neg	dl
	sbb	rdx, rdx
	add	rdx, rcx
	add	rdx, rax
	test	edx, edx
	jle	.label_166
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], r11
	mov	rsp, rsp
	cmp	ebp, 0x5f
	lea	rsi, [rsi]
	jne	.label_55
	lea	rsi, [rsi]
	mov	rax, rsi
	mov	qword ptr [rsp + 0x18], rax
	mov	rsp, rsp
	movsxd	r15, edx
	mov	rsp, rsp
	not	rax
	nop	
	cmp	r15, rax
	jae	.label_59
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x458], rdx
	mov	byte ptr [rsp + 0x28], bl
	mov	qword ptr [rsp + 0x480], rdi
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x460], r9d
	nop	
	mov	rbx, qword ptr [rsp + 0x468]
	mov	rsp, rsp
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_69
	test	r15, r15
	nop	
	mov	r14d, 0
	lea	rdi, [rdi]
	je	.label_69
	nop	
.label_70:
	mov	edi, 0x20
	mov	rsi, rbx
	call	fputc
	mov	rsp, rsp
	inc	r14
	cmp	r14, r15
	nop	
	jb	.label_70
.label_69:
	mov	rax, qword ptr [rsp + 0x18]
	nop	
	add	rax, r15
	lea	rsi, [rsi]
	mov	rsi, rax
	mov	eax, dword ptr [rsp + 0x460]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x458]
	sub	eax, ecx
	mov	edx, 0
	cmovg	edx, eax
	mov	al, byte ptr [rsp + 0x28]
	test	al, al
	mov	rbp, rbp
	je	.label_90
	xor	eax, eax
	lea	rdi, [rdi]
	test	edx, edx
	cmovns	eax, edx
	movsxd	rcx, eax
	mov	rbp, rbp
	cmp	ecx, 1
	mov	ebx, 1
	nop	
	cmova	rbx, rcx
	lea	rsi, [rsi]
	mov	rcx, rsi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], rsi
	not	rcx
	cmp	rbx, rcx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x480]
	jae	.label_59
	cmp	qword ptr [rsp + 0x468], 0
	je	.label_112
	mov	qword ptr [rsp + 0x458], rbx
	mov	qword ptr [rsp + 0x460], rdx
	mov	rsp, rsp
	cmp	eax, 2
	setb	al
	test	edi, edi
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp + 0x468]
	jne	.label_115
	test	al, al
	lea	rdi, [rdi]
	jne	.label_115
	mov	rax, qword ptr [rsp + 0x460]
	mov	rbp, rbp
	movsxd	r15, eax
	xor	ebx, ebx
	dec	r15
	mov	rsp, rsp
	je	.label_115
	nop	dword ptr [rax + rax]
.label_143:
	mov	edi, 0x20
	mov	rsi, r14
	call	fputc
	mov	rsp, rsp
	inc	rbx
	cmp	rbx, r15
	lea	rdi, [rdi]
	jb	.label_143
.label_115:
	nop	
	movzx	edi, byte ptr [rsp + 0x28]
	lea	rdi, [rdi]
	mov	rsi, r14
	lea	rsi, [rsi]
	call	fputc
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x480]
	mov	rdx, qword ptr [rsp + 0x460]
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 0x458]
.label_112:
	mov	rsi, qword ptr [rsp + 0x18]
	add	rsi, rbx
	mov	r9d, edx
	jmp	.label_118
.label_145:
	mov	qword ptr [rsp + 0x30], r11
	jmp	.label_118
.label_166:
	mov	qword ptr [rsp + 0x30], r11
	mov	rbp, rbp
	test	bl, bl
	lea	rsi, [rsi]
	je	.label_118
	xor	eax, eax
	mov	rsp, rsp
	test	r9d, r9d
	lea	rsi, [rsi]
	cmovns	eax, r9d
	movsxd	rcx, eax
	lea	rsi, [rsi]
	cmp	ecx, 1
	mov	edx, 1
	nop	
	cmova	rdx, rcx
	lea	rsi, [rsi]
	mov	rcx, rsi
	mov	r15, rsi
	lea	rsi, [rsi]
	not	rcx
	mov	rbp, rbp
	cmp	rdx, rcx
	jae	.label_59
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x468], 0
	je	.label_142
	mov	qword ptr [rsp + 0x458], rdx
	mov	byte ptr [rsp + 0x28], bl
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x460], r9d
	cmp	eax, 2
	setb	al
	test	edi, edi
	mov	qword ptr [rsp + 0x480], rdi
	nop	
	mov	rsi, qword ptr [rsp + 0x468]
	mov	rbp, rbp
	jne	.label_123
	lea	rdi, [rdi]
	test	al, al
	lea	rdi, [rdi]
	jne	.label_123
	lea	rdi, [rdi]
	mov	rax, rsi
	movsxd	rbx, dword ptr [rsp + 0x460]
	lea	rsi, [rsi]
	lea	r14, [rbx - 1]
	cmp	ebp, 0x30
	lea	rdi, [rdi]
	je	.label_163
	mov	rsp, rsp
	cmp	ebp, 0x2b
	lea	rsi, [rsi]
	jne	.label_170
.label_163:
	mov	rsp, rsp
	test	r14, r14
	lea	rdi, [rdi]
	mov	rsi, rax
	je	.label_123
	dec	rbx
	nop	word ptr cs:[rax + rax]
.label_151:
	mov	rbp, rbp
	mov	edi, 0x30
	nop	
	mov	r14, rsi
	call	fputc
	lea	rdi, [rdi]
	mov	rsi, r14
	dec	rbx
	mov	rsp, rsp
	jne	.label_151
	mov	rsp, rsp
	jmp	.label_123
.label_55:
	lea	rsi, [rsi]
	mov	rcx, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rsi
	not	rcx
	lea	rsi, [rsi]
	cmp	rax, rcx
	jae	.label_59
	test	bl, bl
	je	.label_190
	xor	eax, eax
	lea	rsi, [rsi]
	test	r9d, r9d
	cmovns	eax, r9d
	mov	rsp, rsp
	movsxd	r8, eax
	cmp	r8d, 1
	mov	esi, 1
	mov	rbp, rbp
	cmova	rsi, r8
	lea	rsi, [rsi]
	cmp	rsi, rcx
	jae	.label_59
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp + 0x468]
	nop	
	test	r14, r14
	je	.label_193
	mov	qword ptr [rsp + 0x460], rsi
	mov	qword ptr [rsp + 0x458], rdx
	mov	byte ptr [rsp + 0x28], bl
	mov	rbp, rbp
	cmp	eax, 2
	mov	rbp, rbp
	setb	al
	lea	rdi, [rdi]
	test	edi, edi
	mov	qword ptr [rsp + 0x480], rdi
	jne	.label_79
	nop	
	test	al, al
	jne	.label_79
	mov	rsp, rsp
	movsxd	rbx, r9d
	mov	rsp, rsp
	lea	r15, [rbx - 1]
	cmp	ebp, 0x30
	nop	
	je	.label_201
	mov	rsp, rsp
	cmp	ebp, 0x2b
	jne	.label_206
.label_201:
	nop	
	test	r15, r15
	mov	rsp, rsp
	je	.label_79
	dec	rbx
	nop	word ptr [rax + rax]
.label_120:
	mov	edi, 0x30
	mov	rbp, rbp
	mov	rsi, r14
	call	fputc
	dec	rbx
	jne	.label_120
	jmp	.label_79
.label_140:
	lea	rdi, [rdi]
	xor	ebp, ebp
	cmp	rax, rcx
	je	.label_80
	nop	word ptr cs:[rax + rax]
.label_125:
	mov	edi, 0x20
	mov	rbp, rbp
	mov	rsi, r12
	mov	rbp, rbp
	call	fputc
	inc	rbp
	cmp	rbp, rbx
	jb	.label_125
.label_80:
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 0x480]
	lea	rdi, [rdi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_61
	mov	rax, qword ptr [rsp + 0x30]
	test	al, 1
	mov	rsi, qword ptr [rsp + 0x28]
	jne	.label_66
	mov	edx, 1
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0x41]
	mov	rcx, r12
	lea	rsi, [rsi]
	call	fwrite
	jmp	.label_95
.label_61:
	cmp	qword ptr [rsp + 0x28], 0
	je	.label_95
	call	__ctype_tolower_loc
	mov	r14, rax
	mov	rsp, rsp
	mov	ebx, 1
	sub	rbx, qword ptr [rsp + 0x458]
	mov	rsp, rsp
	lea	rbp, [rsp + 0x41]
	nop	word ptr cs:[rax + rax]
.label_92:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp]
	mov	rbp, rbp
	mov	rcx, qword ptr [r14]
	mov	edi, dword ptr [rcx + rax*4]
	lea	rsi, [rsi]
	mov	rsi, r12
	call	fputc
	inc	rbp
	lea	rdi, [rdi]
	inc	rbx
	lea	rdi, [rdi]
	jne	.label_92
	jmp	.label_95
.label_66:
	test	rsi, rsi
	nop	
	je	.label_95
	mov	rbp, rbp
	call	__ctype_toupper_loc
	lea	rsi, [rsi]
	mov	r14, rax
	mov	ebx, 1
	lea	rsi, [rsi]
	sub	rbx, qword ptr [rsp + 0x458]
	mov	rbp, rbp
	lea	rbp, [rsp + 0x41]
	nop	word ptr [rax + rax]
.label_188:
	movzx	eax, byte ptr [rbp]
	mov	rcx, qword ptr [r14]
	mov	rbp, rbp
	mov	edi, dword ptr [rcx + rax*4]
	mov	rsi, r12
	call	fputc
	lea	rdi, [rdi]
	inc	rbp
	inc	rbx
	jne	.label_188
.label_95:
	mov	rax, qword ptr [rsp + 0x18]
	nop	
	add	rax, r15
	mov	r15, rax
	mov	rbp, rbp
	mov	r14, r12
	mov	rbp, rbp
	jmp	.label_103
.label_90:
	mov	rbp, rbp
	mov	r9d, edx
	mov	rdi, qword ptr [rsp + 0x480]
	jmp	.label_118
.label_190:
	mov	r14, qword ptr [rsp + 0x468]
	mov	rcx, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	jmp	.label_119
.label_108:
	lea	rsi, [rsi]
	xor	ebp, ebp
	cmp	rax, rbx
	mov	rbp, rbp
	je	.label_99
.label_127:
	mov	edi, 0x20
	mov	rsi, r14
	lea	rsi, [rsi]
	call	fputc
	inc	rbp
	lea	rdi, [rdi]
	cmp	rbp, r15
	lea	rsi, [rsi]
	jb	.label_127
.label_99:
	test	r12b, r12b
	je	.label_128
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_93
	call	__ctype_tolower_loc
	mov	r15, rax
	mov	rbp, qword ptr [rsp + 0x478]
	nop	
.label_135:
	movzx	eax, byte ptr [rbp]
	mov	rcx, qword ptr [r15]
	mov	edi, dword ptr [rcx + rax*4]
	lea	rsi, [rsi]
	mov	rsi, r14
	call	fputc
	inc	rbp
	lea	rsi, [rsi]
	dec	rbx
	jne	.label_135
	jmp	.label_93
.label_128:
	mov	rax, qword ptr [rsp + 0x30]
	nop	
	test	al, al
	mov	rsp, rsp
	je	.label_138
	nop	
	test	rbx, rbx
	nop	
	je	.label_93
	lea	rsi, [rsi]
	call	__ctype_toupper_loc
	mov	r15, rax
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0x478]
	nop	word ptr [rax + rax]
.label_148:
	nop	
	movzx	eax, byte ptr [rbp]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rcx + rax*4]
	lea	rdi, [rdi]
	mov	rsi, r14
	mov	rsp, rsp
	call	fputc
	inc	rbp
	dec	rbx
	jne	.label_148
	jmp	.label_93
.label_183:
	nop	
	test	r15, r15
	lea	rsi, [rsi]
	je	.label_150
	nop	word ptr cs:[rax + rax]
.label_154:
	mov	edi, 0x20
	mov	rsi, r12
	call	fputc
	dec	r15
	jne	.label_154
.label_150:
	mov	edi, 0xa
	jmp	.label_156
.label_110:
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_88
	nop	word ptr cs:[rax + rax]
.label_162:
	mov	edi, 0x20
	mov	rsi, r12
	call	fputc
	dec	r15
	lea	rdi, [rdi]
	jne	.label_162
.label_88:
	mov	edi, 9
	jmp	.label_156
.label_170:
	test	r14, r14
	lea	rdi, [rdi]
	mov	rsi, rax
	je	.label_123
.label_173:
	mov	edi, 0x20
	mov	rbx, rsi
	nop	
	call	fputc
	mov	rsi, rbx
	dec	r14
	mov	rbp, rbp
	jne	.label_173
.label_123:
	nop	
	movzx	edi, byte ptr [rsp + 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x468], rsi
	nop	
	call	fputc
	mov	r9d, dword ptr [rsp + 0x460]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x480]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x458]
.label_142:
	mov	rsi, r15
	nop	
	add	rsi, rdx
	mov	rsp, rsp
	jmp	.label_118
.label_138:
	mov	edx, 1
	nop	
	mov	rdi, qword ptr [rsp + 0x478]
	mov	rbp, rbp
	mov	rsi, rbx
	lea	rsi, [rsi]
	jmp	.label_176
.label_73:
	lea	rdi, [rdi]
	test	ebx, ebx
	mov	rbp, rbp
	je	.label_189
.label_623:
	mov	rbp, rbp
	imul	edx, edx, 0x64
	mov	rsp, rsp
	add	edx, ebx
	lea	rsi, [rsi]
	mov	r14d, 6
	mov	r8b, 1
	nop	
	mov	ebx, 4
	jmp	.label_50
.label_206:
	test	r15, r15
	je	.label_79
.label_109:
	mov	edi, 0x20
	mov	rsp, rsp
	mov	rsi, r14
	call	fputc
	mov	rbp, rbp
	dec	r15
	mov	rsp, rsp
	jne	.label_109
.label_79:
	lea	rdi, [rdi]
	movzx	edi, byte ptr [rsp + 0x28]
	mov	rbp, rbp
	mov	rsi, r14
	mov	rbp, rbp
	call	fputc
	mov	rdi, qword ptr [rsp + 0x480]
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x458]
	mov	rsi, qword ptr [rsp + 0x460]
.label_193:
	nop	
	mov	rcx, qword ptr [rsp + 0x18]
	add	rcx, rsi
.label_119:
	test	r14, r14
	nop	
	mov	rax, r14
	movsxd	r14, edx
	mov	rbp, rbp
	je	.label_202
	mov	qword ptr [rsp + 0x480], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], rcx
	xor	ebx, ebx
	test	r14, r14
	mov	r15, rax
	mov	rsp, rsp
	je	.label_87
	nop	dword ptr [rax]
.label_76:
	mov	rbp, rbp
	mov	edi, 0x30
	mov	rsi, r15
	mov	rbp, rbp
	call	fputc
	inc	rbx
	cmp	rbx, r14
	lea	rsi, [rsi]
	jb	.label_76
	lea	rdi, [rdi]
	mov	rbx, r14
	lea	rdi, [rdi]
	jmp	.label_87
.label_202:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x480], rdi
	mov	qword ptr [rsp + 0x18], rcx
	mov	rbx, r14
	mov	r15, rax
.label_87:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x468], r15
	mov	rsi, qword ptr [rsp + 0x18]
	add	rsi, rbx
	xor	r9d, r9d
	nop	
	mov	rdi, qword ptr [rsp + 0x480]
.label_118:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rsi
	mov	rbp, rbp
	lea	rbx, [rsp + 0x457]
	mov	rbp, rbp
	sub	rbx, r12
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	test	r9d, r9d
	cmovns	eax, r9d
	nop	
	cdqe	
	cmp	rbx, rax
	mov	rdx, rbx
	cmovb	rdx, rax
	mov	rcx, rsi
	not	rcx
	cmp	rdx, rcx
	mov	rbp, rbp
	jae	.label_59
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x460], rdx
	mov	r14, qword ptr [rsp + 0x468]
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_83
	lea	rdi, [rdi]
	cmp	rbx, rax
	setae	al
	mov	rsp, rsp
	test	edi, edi
	lea	rsi, [rsi]
	jne	.label_47
	test	al, al
	lea	rsi, [rsi]
	jne	.label_47
	movsxd	rax, r9d
	mov	r15, rax
	sub	r15, rbx
	nop	
	cmp	ebp, 0x30
	je	.label_62
	cmp	ebp, 0x2b
	nop	
	jne	.label_96
.label_62:
	xor	ebp, ebp
	cmp	rax, rbx
	je	.label_47
	nop	word ptr [rax + rax]
.label_144:
	mov	edi, 0x30
	nop	
	mov	rsi, r14
	nop	
	call	fputc
	mov	rsp, rsp
	inc	rbp
	lea	rdi, [rdi]
	cmp	rbp, r15
	lea	rdi, [rdi]
	jb	.label_144
	jmp	.label_47
.label_96:
	mov	rbp, rbp
	xor	ebp, ebp
	cmp	rax, rbx
	mov	rsp, rsp
	je	.label_47
	nop	
.label_208:
	mov	edi, 0x20
	mov	rsi, r14
	lea	rdi, [rdi]
	call	fputc
	inc	rbp
	cmp	rbp, r15
	mov	rsp, rsp
	jb	.label_208
.label_47:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	test	al, al
	nop	
	je	.label_126
	mov	rsp, rsp
	lea	rax, [rsp + 0x457]
	cmp	rax, r12
	je	.label_83
	mov	rbp, rbp
	call	__ctype_toupper_loc
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rax, qword ptr [rsp + 0x490]
	lea	rbp, [rax + r12]
	nop	word ptr cs:[rax + rax]
.label_141:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [r12]
	mov	rcx, qword ptr [rbx]
	mov	edi, dword ptr [rcx + rax*4]
	lea	rdi, [rdi]
	mov	rsi, r14
	lea	rsi, [rsi]
	call	fputc
	inc	r12
	nop	
	inc	rbp
	jne	.label_141
	lea	rsi, [rsi]
	jmp	.label_83
.label_126:
	lea	rdi, [rdi]
	mov	edx, 1
	lea	rdi, [rdi]
	mov	rdi, r12
	mov	rsi, rbx
	lea	rdi, [rdi]
	mov	rcx, r14
	mov	rbp, rbp
	call	fwrite
.label_83:
	nop	
	mov	r15, qword ptr [rsp + 0x18]
	add	r15, qword ptr [rsp + 0x460]
	jmp	.label_103
.label_200:
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_44
.label_46:
	mov	edi, 0x20
	mov	rbp, rbp
	mov	rsi, r12
	call	fputc
	lea	rsi, [rsi]
	dec	r15
	mov	rbp, rbp
	jne	.label_46
.label_44:
	movsx	edi, byte ptr [r13]
.label_156:
	lea	rdi, [rdi]
	mov	rsi, r12
	mov	qword ptr [rsp + 0x468], r12
	call	fputc
.label_85:
	mov	r15, qword ptr [rsp + 0x18]
	add	r15, r14
	mov	rsp, rsp
	mov	r14, qword ptr [rsp + 0x468]
	nop	word ptr [rax + rax]
.label_103:
	mov	al, byte ptr [r13 + 1]
	nop	
	inc	r13
	lea	rsi, [rsi]
	mov	r9d, 0xffffffff
	test	al, al
	jne	.label_122
	mov	rbp, rbp
	jmp	.label_149
.label_59:
	xor	r15d, r15d
.label_149:
	lea	rsi, [rsi]
	mov	rax, r15
	mov	rsp, rsp
	add	rsp, 0x498
	pop	rbx
	nop	
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404a90
	.globl parse_long_options
	.type parse_long_options, @function
parse_long_options:

	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0xd0
	mov	rbx, r9
	mov	r14, r8
	mov	r15, rcx
	mov	r12, rdx
	lea	rdi, [rdi]
	test	al, al
	je	.label_210
	movaps	xmmword ptr [rsp + 0x30], xmm0
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x60], xmm3
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_210:
	mov	ebp,  dword ptr [dword ptr [rip + opterr]]
	mov	dword ptr [dword ptr [rip + opterr]],  0
	cmp	edi, 2
	jne	.label_211
	mov	edi, 2
	mov	edx, OFFSET FLAT:.str_4
	nop	
	mov	ecx, OFFSET FLAT:long_options
	lea	rsi, [rsi]
	xor	r8d, r8d
	mov	rbp, rbp
	call	getopt_long
	mov	rsp, rsp
	cmp	eax, 0x68
	je	.label_212
	mov	rbp, rbp
	cmp	eax, 0x76
	mov	rbp, rbp
	jne	.label_211
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	nop	
	lea	rax, [rsp + 0x100]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb0], 0x30
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	r8, [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, r12
	nop	
	mov	rdx, r15
	mov	rsp, rsp
	mov	rcx, r14
	nop	
	call	version_etc_va
	xor	edi, edi
	call	exit
.label_212:
	xor	edi, edi
	call	rbx
.label_211:
	mov	dword ptr [dword ptr [rip + opterr]],  ebp
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + optind]],  0
	add	rsp, 0xd0
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404bd0

	.globl parse_gnu_standard_options_only
	.type parse_gnu_standard_options_only, @function
parse_gnu_standard_options_only:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0xc8
	lea	rsi, [rsi]
	mov	r14, r8
	nop	
	mov	r15, rcx
	lea	rsi, [rsi]
	mov	rbx, rdx
	mov	rbp, rbp
	test	al, al
	je	.label_214
	movaps	xmmword ptr [rsp + 0x30], xmm0
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_214:
	mov	ebp,  dword ptr [dword ptr [rip + opterr]]
	mov	dword ptr [dword ptr [rip + opterr]],  1
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str_0
	mov	edx, OFFSET FLAT:.str_4
	test	r9b, r9b
	cmovne	rdx, rax
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	call	getopt_long
	cmp	eax, -1
	je	.label_217
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	cmp	eax, 0x68
	je	.label_213
	mov	rsp, rsp
	cmp	eax, 0x76
	nop	
	je	.label_215
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	lea	rdi, [rdi]
	jmp	.label_216
.label_213:
	lea	rdi, [rdi]
	xor	edi, edi
.label_216:
	call	rcx
.label_217:
	mov	dword ptr [dword ptr [rip + opterr]],  ebp
	add	rsp, 0xc8
	pop	rbx
	nop	
	pop	r14
	mov	rsp, rsp
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
.label_215:
	lea	rdi, [rdi]
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rsi, [rsi]
	lea	rax, [rsp + 0xf8]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xb0], 0x30
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	lea	r8, [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	rsi, rbx
	mov	rdx, r15
	mov	rcx, r14
	mov	rbp, rbp
	call	version_etc_va
	nop	
	xor	edi, edi
	mov	rsp, rsp
	call	exit
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404d20

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
	je	.label_218
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
	jl	.label_220
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_220
	mov	esi, OFFSET FLAT:.str.2_1
	lea	rdi, [rdi]
	mov	edx, 3
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strncmp
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_219
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_219:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_220:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_218:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str_5
	mov	rbp, rbp
	mov	esi, 0x37
	lea	rsi, [rsi]
	mov	edx, 1
	call	fwrite
	lea	rsi, [rsi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404e10
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
	.align	32
	#Procedure 0x404e60
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
	.align	32
	#Procedure 0x404e80
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
	.align	32
	#Procedure 0x404ea0
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
	.align	32
	#Procedure 0x404f10
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
	.align	32
	#Procedure 0x404f30
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
	je	.label_221
	test	rdx, rdx
	nop	
	je	.label_221
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_221:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404f70
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
	.align	32
	#Procedure 0x405020

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
.label_324:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x58], rcx
	lea	rsi, [rsi]
	mov	ecx, r15d
	lea	rdi, [rdi]
	cmp	r15d, 0xa
	ja	.label_303
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	rsp, rsp
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, r13
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_308]]
.label_643:
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
.label_644:
	mov	byte ptr [rsp + 0x43], r8b
	mov	r13, rbp
	nop	
	test	r12b, 1
	nop	
	mov	eax, 0
	mov	qword ptr [rsp + 0x58], rax
	mov	rdx, qword ptr [rsp + 0x78]
	jne	.label_328
	mov	rbp, rbp
	mov	al, byte ptr [rdx]
	mov	rbp, rbp
	test	al, al
	mov	rsp, rsp
	mov	ecx, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x58], rcx
	je	.label_328
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x58], rcx
	nop	dword ptr [rax]
.label_345:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_340
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rcx + rsi], al
.label_340:
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + rcx + 1]
	mov	rsp, rsp
	inc	rcx
	mov	qword ptr [rsp + 0x58], rcx
	mov	rbp, rbp
	test	al, al
	lea	rsi, [rsi]
	jne	.label_345
.label_328:
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
	jmp	.label_233
.label_636:
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
	jmp	.label_233
.label_639:
	lea	rsi, [rsi]
	mov	al, 1
.label_637:
	mov	rbp, rbp
	mov	r12b, 1
.label_640:
	mov	rbp, rbp
	test	r12b, 1
	mov	cl, 1
	nop	
	je	.label_259
	lea	rsi, [rsi]
	mov	cl, al
.label_259:
	mov	rsp, rsp
	mov	al, cl
.label_638:
	mov	r9d, 2
	test	r12b, 1
	mov	rsp, rsp
	jne	.label_265
	test	r10, r10
	je	.label_273
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx], 0x27
	mov	rsp, rsp
	mov	ecx, 1
	mov	rsp, rsp
	jmp	.label_275
.label_265:
	xor	ecx, ecx
	jmp	.label_275
.label_641:
	mov	rsp, rsp
	mov	r9d, 5
	test	r12b, 1
	jne	.label_287
	lea	rdi, [rdi]
	test	r10, r10
	je	.label_291
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax], 0x22
	mov	rsp, rsp
	mov	eax, 1
	jmp	.label_296
.label_642:
	mov	dil, 1
	mov	r9d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, OFFSET FLAT:.str.10
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xf0], rax
	mov	sil, 1
	jmp	.label_233
.label_273:
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_275:
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
	jmp	.label_233
.label_287:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_296
.label_291:
	lea	rdi, [rdi]
	mov	eax, 1
.label_296:
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, OFFSET FLAT:.str.10
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
.label_233:
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
	jmp	.label_307
	nop	word ptr cs:[rax + rax]
.label_304:
	nop	
	inc	rdi
.label_307:
	mov	rsp, rsp
	cmp	rbp, -1
	je	.label_260
	nop	
	cmp	rdi, rbp
	mov	rsp, rsp
	jne	.label_336
	jmp	.label_269
	nop	dword ptr [rax + rax]
.label_260:
	mov	r13, -1
	lea	rsi, [rsi]
	cmp	byte ptr [r11 + rdi], 0
	je	.label_272
.label_336:
	lea	rdi, [rdi]
	test	r12b, r12b
	nop	
	je	.label_283
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_285
	cmp	rbp, -1
	lea	rsi, [rsi]
	jne	.label_285
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
.label_285:
	mov	rsp, rsp
	cmp	rbx, rbp
	lea	rsi, [rsi]
	jbe	.label_318
	mov	dword ptr [rsp + 0x10c], 0
	jmp	.label_264
	nop	dword ptr [rax + rax]
.label_283:
	nop	
	mov	dword ptr [rsp + 0x10c], 0
	lea	rdi, [rdi]
	jmp	.label_264
	nop	word ptr cs:[rax + rax]
.label_318:
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
	jne	.label_341
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
	je	.label_264
	jmp	.label_230
.label_341:
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
.label_264:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_244
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	nop	
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_246]]
.label_617:
	mov	rsp, rsp
	test	rdi, rdi
	mov	rbp, rbp
	jne	.label_251
	mov	rbp, rbp
	jmp	.label_257
.label_621:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	cmp	rbp, -1
	nop	
	je	.label_258
	lea	rdi, [rdi]
	test	rdi, rdi
	nop	
	jne	.label_261
	nop	
	cmp	rbp, 1
	je	.label_257
	xor	r13d, r13d
	jmp	.label_234
.label_610:
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xc3], 0
	je	.label_276
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_230
	lea	rsi, [rsi]
	cmp	r9d, 2
	mov	rsp, rsp
	jne	.label_288
	mov	al, r14b
	and	al, 1
	jne	.label_290
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x58], r10
	nop	
	jae	.label_344
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rcx], 0x27
.label_344:
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	nop	
	jae	.label_305
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x24
.label_305:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_312
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x27
.label_312:
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	add	rax, 3
	mov	rsp, rsp
	mov	r14b, 1
	mov	rbp, rbp
	mov	rcx, rax
	jmp	.label_311
.label_611:
	mov	rbp, rbp
	mov	bl, 0x62
	mov	rsp, rsp
	jmp	.label_323
.label_612:
	lea	rsi, [rsi]
	mov	cl, 0x74
	jmp	.label_278
.label_613:
	mov	rsp, rsp
	mov	bl, 0x76
	nop	
	jmp	.label_323
.label_614:
	mov	bl, 0x66
	jmp	.label_323
.label_615:
	lea	rsi, [rsi]
	mov	cl, 0x72
	jmp	.label_278
.label_618:
	mov	al, 1
	mov	qword ptr [rsp + 0x68], rax
	lea	rdi, [rdi]
	cmp	r9d, 2
	jne	.label_335
	cmp	byte ptr [rsp + 0xe7], 0
	nop	
	jne	.label_337
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
	jae	.label_262
	nop	
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0x27
.label_262:
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_232
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x5c
.label_232:
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_240
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x27
.label_240:
	add	qword ptr [rsp + 0x58], 3
	xor	r14d, r14d
.label_335:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_234
.label_619:
	cmp	r9d, 5
	lea	rdi, [rdi]
	je	.label_255
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_251
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_251
	mov	rbp, rbp
	jmp	.label_267
.label_620:
	lea	rdi, [rdi]
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_270
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_277
	lea	rdi, [rdi]
	jmp	.label_284
.label_244:
	mov	qword ptr [rsp + 0x80], r9
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x43], r8b
	mov	qword ptr [rsp + 0x110], r10
	cmp	qword ptr [rsp + 0xb8], 1
	jne	.label_300
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
.label_228:
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
	ja	.label_310
	lea	rdi, [rdi]
	test	cl, cl
	lea	rsi, [rsi]
	je	.label_310
	lea	rdi, [rdi]
	xor	eax, eax
	jmp	.label_234
.label_258:
	test	rdi, rdi
	jne	.label_327
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_327
.label_257:
	mov	dl, 1
.label_616:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x66], 0
	lea	rsi, [rsi]
	je	.label_332
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r13b, dl
	mov	rsp, rsp
	jmp	.label_234
.label_276:
	cmp	dword ptr [rsp + 0x3c], 0
	jne	.label_304
	jmp	.label_251
.label_270:
	cmp	byte ptr [rsp + 0x57], 0
	mov	cl, r15b
	je	.label_278
.label_277:
	xor	eax, eax
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_333
.label_278:
	cmp	byte ptr [rsp + 0x66], 0
	mov	bl, cl
	lea	rdi, [rdi]
	je	.label_315
.label_323:
	xor	eax, eax
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc3], 0
	mov	r13d, 0
	mov	rbp, rbp
	je	.label_234
	lea	rsi, [rsi]
	jmp	.label_243
.label_300:
	mov	qword ptr [rsp + 0x98], 0
	cmp	rbp, -1
	jne	.label_229
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
.label_229:
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
.label_342:
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
	je	.label_271
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x110]
	mov	rsp, rsp
	movabs	rsi, 0x20000002b
	je	.label_280
	lea	rsi, [rsi]
	cmp	rbp, -2
	nop	
	mov	rdi, qword ptr [rsp + 0xa8]
	je	.label_289
	lea	rsi, [rsi]
	cmp	rbp, 1
	seta	al
	lea	rdi, [rdi]
	and	al, byte ptr [rsp + 0x77]
	movzx	eax, al
	nop	
	cmp	eax, 1
	jne	.label_295
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xe8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	lea	rax, [rcx + rax]
	nop	
	mov	ecx, 1
	nop	
.label_317:
	movsx	edx, byte ptr [rax + rcx]
	lea	rdi, [rdi]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_309
	lea	rdi, [rdi]
	bt	rsi, rdx
	jb	.label_320
.label_309:
	lea	rsi, [rsi]
	inc	rcx
	mov	rbp, rbp
	cmp	rcx, rbp
	jb	.label_317
.label_295:
	nop	
	mov	edi, dword ptr [rsp + 0xc4]
	lea	rdi, [rdi]
	call	iswprint
	test	eax, eax
	nop	
	jne	.label_256
	xor	r13d, r13d
.label_256:
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
	je	.label_342
	mov	rsp, rsp
	jmp	.label_228
.label_327:
	lea	rsi, [rsi]
	mov	rbp, -1
	mov	rbp, rbp
	xor	r13d, r13d
	jmp	.label_234
.label_255:
	cmp	dword ptr [rsp + 0x44], 0
	lea	rdi, [rdi]
	je	.label_251
	lea	rcx, [rdi + 2]
	mov	rsp, rsp
	cmp	rcx, rbp
	jae	.label_251
	mov	rbp, rbp
	movzx	eax, byte ptr [rdi + r11 + 1]
	mov	rsp, rsp
	cmp	eax, 0x3f
	jne	.label_251
	lea	rsi, [rsi]
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	edx, 0x3e
	ja	.label_226
	nop	
	movabs	rsi, 0x7000a38200000000
	mov	rsp, rsp
	bt	rsi, rdx
	mov	rsp, rsp
	jae	.label_281
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_237
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_242
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rsi], 0x3f
.label_242:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	jae	.label_249
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], 0x22
.label_249:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_319
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rsi + rax], 0x22
.label_319:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 3]
	cmp	rax, r10
	nop	
	jae	.label_225
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], 0x3f
.label_225:
	mov	rbp, rbp
	add	qword ptr [rsp + 0x58], 4
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	lea	rdi, [rdi]
	xor	r13d, r13d
	jmp	.label_234
.label_251:
	xor	eax, eax
	xor	r13d, r13d
	nop	dword ptr [rax + rax]
.label_234:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x65], 0
	lea	rsi, [rsi]
	je	.label_292
	cmp	qword ptr [rsp + 0x150], 0
	mov	rsp, rsp
	jne	.label_299
	lea	rsi, [rsi]
	jmp	.label_241
.label_292:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_241
.label_299:
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
	jne	.label_306
	mov	rcx, qword ptr [rsp + 0x150]
	nop	
	and	esi, dword ptr [rcx + rdx*4]
	mov	rsp, rsp
	jmp	.label_314
	nop	word ptr cs:[rax + rax]
.label_241:
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x10c]
	lea	rdi, [rdi]
	test	cl, cl
.label_314:
	mov	rbp, rbp
	mov	bl, r15b
	je	.label_333
	mov	rsp, rsp
	jmp	.label_243
.label_306:
	mov	bl, r15b
.label_243:
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_230
	nop	
	cmp	r9d, 2
	jne	.label_329
	lea	rdi, [rdi]
	mov	al, r14b
	lea	rdi, [rdi]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_329
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_266
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x27
.label_266:
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	cmp	rax, r10
	jae	.label_268
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x24
.label_268:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_325
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x27
.label_325:
	add	qword ptr [rsp + 0x58], 3
	mov	r14b, 1
.label_329:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_223
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rcx], 0x5c
.label_223:
	mov	rsp, rsp
	inc	qword ptr [rsp + 0x58]
	jmp	.label_274
.label_261:
	xor	r13d, r13d
	nop	
	jmp	.label_234
.label_310:
	mov	rsp, rsp
	add	rax, rdi
	mov	qword ptr [rsp + 0xe8], rax
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_236
	nop	dword ptr [rax + rax]
.label_252:
	inc	qword ptr [rsp + 0x58]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_236:
	test	cl, cl
	je	.label_245
	mov	rsp, rsp
	mov	edx, dword ptr [rsp + 0x10c]
	test	dl, 1
	mov	rbp, rbp
	je	.label_247
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_253
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rdx + rsi], 0x5c
.label_253:
	lea	rsi, [rsi]
	inc	qword ptr [rsp + 0x58]
	mov	dword ptr [rsp + 0x10c], 0
	jmp	.label_247
	nop	dword ptr [rax]
.label_245:
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_230
	lea	rsi, [rsi]
	cmp	r9d, 2
	mov	rsp, rsp
	jne	.label_279
	mov	al, r14b
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_279
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_297
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rdx], 0x27
.label_297:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	inc	rax
	cmp	rax, r10
	jae	.label_293
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], 0x24
.label_293:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_254
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rdx + rax], 0x27
.label_254:
	mov	rsp, rsp
	add	qword ptr [rsp + 0x58], 3
	mov	r14b, 1
.label_279:
	cmp	qword ptr [rsp + 0x58], r10
	lea	rsi, [rsi]
	jae	.label_330
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x58]
	nop	
	mov	byte ptr [rax + rdx], 0x5c
.label_330:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	lea	rdi, [rdi]
	jae	.label_322
	mov	dl, r15b
	shr	dl, 6
	mov	rsp, rsp
	or	dl, 0x30
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], dl
.label_322:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	nop	
	jae	.label_331
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
.label_331:
	nop	
	add	qword ptr [rsp + 0x58], 3
	mov	rbp, rbp
	and	r15b, 7
	nop	
	or	r15b, 0x30
	mov	rsp, rsp
	mov	al, 1
.label_247:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xe8], rdx
	jbe	.label_333
	lea	rsi, [rsi]
	test	r14b, 1
	je	.label_346
	mov	bl, al
	nop	
	and	bl, 1
	lea	rdi, [rdi]
	jne	.label_346
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_224
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x58]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_224:
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x58]
	inc	rsi
	mov	rsp, rsp
	cmp	rsi, r10
	lea	rsi, [rsi]
	jae	.label_235
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rdi + rsi], 0x27
	mov	rbp, rbp
	mov	rdi, rbx
.label_235:
	add	qword ptr [rsp + 0x58], 2
	xor	r14d, r14d
.label_346:
	nop	
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_252
	mov	rsi, qword ptr [rsp + 0xb0]
	nop	
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0x58]
	nop	
	mov	byte ptr [rsi + rdi], r15b
	lea	rdi, [rdi]
	mov	rdi, rbx
	jmp	.label_252
	nop	word ptr cs:[rax + rax]
.label_333:
	test	r14b, 1
	lea	rsi, [rsi]
	je	.label_263
	mov	rsp, rsp
	and	al, 1
	jne	.label_263
	cmp	qword ptr [rsp + 0x58], r10
	mov	rsp, rsp
	jae	.label_231
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0x27
.label_231:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	jae	.label_282
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_282:
	add	qword ptr [rsp + 0x58], 2
	xor	r14d, r14d
.label_263:
	mov	rsp, rsp
	mov	bl, r15b
.label_274:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_301
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], bl
.label_301:
	nop	
	inc	qword ptr [rsp + 0x58]
	nop	
	shl	r13b, 7
	mov	rsp, rsp
	sar	r13b, 7
	and	r13b, r8b
	mov	rbp, rbp
	mov	r8b, r13b
	jmp	.label_304
.label_288:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	jmp	.label_311
.label_290:
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x58]
.label_311:
	lea	rsi, [rsi]
	cmp	rcx, r10
	lea	rsi, [rsi]
	jae	.label_316
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax + rcx], 0x5c
.label_316:
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
	je	.label_239
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_326
	mov	dl, byte ptr [r11 + rdx]
	mov	rsp, rsp
	add	dl, 0xd0
	nop	
	movzx	edx, dl
	cmp	edx, 9
	lea	rsi, [rsi]
	ja	.label_313
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_334
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rdx + rsi], 0x30
.label_334:
	lea	rsi, [rsi]
	lea	rdx, [rcx + 2]
	lea	rdi, [rdi]
	cmp	rdx, r10
	nop	
	jae	.label_338
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rdx], 0x30
.label_338:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0x58], rcx
	jmp	.label_234
.label_239:
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_234
.label_326:
	lea	rdi, [rdi]
	xor	r13d, r13d
	nop	
	jmp	.label_234
.label_313:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_234
.label_280:
	xor	r13d, r13d
.label_271:
	mov	r11, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0xc8]
	mov	rdi, qword ptr [rsp + 0xa8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xe8]
	jmp	.label_228
.label_289:
	mov	rbp, qword ptr [rsp + 0xc8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x48]
	cmp	rbp, rcx
	lea	rsi, [rsi]
	jbe	.label_238
	mov	r11, qword ptr [rsp + 0x88]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xe8]
.label_250:
	cmp	byte ptr [r11 + rcx], 0
	nop	
	je	.label_248
	mov	rbp, rbp
	lea	rcx, [rax + rdi + 1]
	nop	
	inc	rax
	mov	rbp, rbp
	cmp	rcx, rbp
	mov	rsp, rsp
	jb	.label_250
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_228
.label_238:
	mov	rsp, rsp
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe8]
	jmp	.label_228
.label_248:
	nop	
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_228
.label_226:
	xor	r13d, r13d
	jmp	.label_234
.label_281:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_234
.label_269:
	nop	
	mov	r13, rdi
.label_272:
	mov	rsp, rsp
	cmp	r9d, 2
	mov	rsp, rsp
	setne	al
	cmp	qword ptr [rsp + 0x58], 0
	lea	rsi, [rsi]
	setne	dl
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_286
	mov	rsp, rsp
	or	al, dl
	mov	rbp, rbp
	je	.label_298
.label_286:
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
	je	.label_302
	mov	rsp, rsp
	or	al, dl
	lea	rsi, [rsi]
	jne	.label_302
	test	r8b, 1
	mov	rbp, rbp
	jne	.label_227
	cmp	qword ptr [rsp + 0xd8], 0
	je	.label_302
	test	r10, r10
	mov	r15d, r9d
	mov	rbp, rbp
	mov	al, bl
	nop	
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0xd8]
	lea	rsi, [rsi]
	je	.label_324
.label_302:
	mov	rdx, qword ptr [rsp + 0x20]
	test	rdx, rdx
	je	.label_321
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	lea	rsi, [rsi]
	jne	.label_321
	mov	al, byte ptr [rdx]
	lea	rdi, [rdi]
	test	al, al
	je	.label_321
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_343:
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_339
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rsi], al
.label_339:
	mov	rsp, rsp
	inc	qword ptr [rsp + 0x58]
	nop	
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	mov	rbp, rbp
	jne	.label_343
.label_321:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_222
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0
	lea	rdi, [rdi]
	jmp	.label_222
.label_332:
	lea	rdi, [rdi]
	mov	r9d, 2
	nop	
	jmp	.label_230
.label_320:
	mov	rsp, rsp
	mov	r9d, 2
	nop	
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, qword ptr [rsp + 0xc8]
	lea	rdi, [rdi]
	jmp	.label_230
.label_298:
	nop	
	mov	rbp, r13
	jmp	.label_230
.label_315:
	lea	rdi, [rdi]
	mov	r9d, 2
.label_230:
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
.label_294:
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x58], rax
.label_222:
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
.label_227:
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
	jmp	.label_294
.label_337:
	lea	rsi, [rsi]
	mov	r9d, 2
	jmp	.label_230
.label_284:
	mov	r9d, 2
	lea	rsi, [rsi]
	jmp	.label_230
.label_267:
	lea	rsi, [rsi]
	mov	r9d, 2
	jmp	.label_230
.label_237:
	lea	rsi, [rsi]
	mov	r9d, 5
	mov	rbp, rbp
	jmp	.label_230
.label_303:
	nop	
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4065a0
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
	.align	32
	#Procedure 0x4066e0
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
	je	.label_347
	mov	qword ptr [rax], rbx
.label_347:
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
	.align	32
	#Procedure 0x406830
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_348
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_352:
	mov	rdi, qword ptr [r15]
	nop	
	call	free
	mov	rbp, rbp
	inc	rbx
	lea	rsi, [rsi]
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	lea	rsi, [rsi]
	add	r15, 0x10
	cmp	rbx, rax
	mov	rsp, rsp
	jl	.label_352
.label_348:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_351
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_349]], OFFSET FLAT:slot0
.label_351:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_350
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_350:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4068f0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x406900

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
	js	.label_356
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_358
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_354
.label_358:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_359
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
	mov	qword ptr [word ptr [rip + slotvec]],  r14
	jne	.label_355
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_355:
	mov	rsp, rsp
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
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
	mov	dword ptr [dword ptr [rip + nslots]],  ebp
	mov	rbp, rbp
	mov	rbp, r14
	mov	r14, qword ptr [rsp + 0x38]
.label_354:
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
	ja	.label_353
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
	je	.label_357
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_357:
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
.label_353:
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
.label_356:
	lea	rdi, [rdi]
	call	abort
.label_359:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x406b70
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406b80
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
	.align	32
	#Procedure 0x406bb0
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
	.align	32
	#Procedure 0x406be0
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
	je	.label_360
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
.label_360:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406c70
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
	je	.label_361
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
.label_361:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406d10
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
	je	.label_362
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
.label_362:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406da0
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
	je	.label_363
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
.label_363:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x406e10
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	rbp, rbp
	mov	r8, rsi
	mov	rbp, rbp
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_364]]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_365]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_366]]
	nop	
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
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
	.align	32
	#Procedure 0x406eb0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	ecx, esi
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + label_364]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_365]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_366]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
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
	.align	32
	#Procedure 0x406f50

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	sub	rsp, 0x38
	mov	rbp, rbp
	mov	rax, rdi
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + label_364]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_365]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_366]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
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
	.align	32
	#Procedure 0x406fc0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + label_364]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_365]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_366]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
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
	.align	32
	#Procedure 0x407030

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
	je	.label_367
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
.label_367:
	lea	rsi, [rsi]
	call	abort
	.section	.text
	.align	32
	#Procedure 0x407110
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	rax,  qword ptr [word ptr [rip + label_364]]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_365]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_366]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_368
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_368
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
.label_368:
	nop	
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4071a0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	mov	rsp, rsp
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_364]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_365]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_366]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_369
	test	rdx, rdx
	je	.label_369
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
.label_369:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407230
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	sub	rsp, 0x38
	mov	rsp, rsp
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_364]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_365]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_366]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0xa
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_370
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_370
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
.label_370:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4072d0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_364]]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_365]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_366]]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_371
	test	rsi, rsi
	je	.label_371
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
.label_371:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407370
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407380
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
	.align	32
	#Procedure 0x4073a0
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsp, rsp
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4073c0

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
	.align	32
	#Procedure 0x4073f0

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
	jne	.label_373
	mov	rsp, rsp
	call	locale_charset
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	mov	rsp, rsp
	je	.label_375
	nop	
	cmp	ecx, 0x55
	mov	rbp, rbp
	jne	.label_372
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_372
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	lea	rdi, [rdi]
	cmp	ecx, 0x46
	jne	.label_372
	movzx	ecx, byte ptr [rax + 3]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	jne	.label_372
	nop	
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	lea	rdi, [rdi]
	jne	.label_372
	cmp	byte ptr [rax + 5], 0
	lea	rdi, [rdi]
	jne	.label_372
	nop	
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	mov	rbp, rbp
	cmp	ecx, 0x60
	mov	rsp, rsp
	je	.label_373
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_373
.label_375:
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	nop	
	cmp	ecx, 0x42
	jne	.label_372
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 2]
	lea	rdi, [rdi]
	cmp	ecx, 0x31
	jne	.label_372
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	mov	rsp, rsp
	jne	.label_372
	movzx	ecx, byte ptr [rax + 4]
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	jne	.label_372
	movzx	ecx, byte ptr [rax + 5]
	lea	rsi, [rsi]
	cmp	ecx, 0x33
	lea	rsi, [rsi]
	jne	.label_372
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 6]
	mov	rbp, rbp
	cmp	ecx, 0x30
	nop	
	jne	.label_372
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 7], 0
	lea	rsi, [rsi]
	je	.label_374
.label_372:
	lea	rsi, [rsi]
	cmp	ebp, 9
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.10
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_373:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_374:
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	mov	rbp, rbp
	je	.label_373
	mov	eax, OFFSET FLAT:.str.18_0
	jmp	.label_373
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407560

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
	je	.label_381
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_6
	nop	
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	mov	r8, rbx
	lea	rsi, [rsi]
	call	__fprintf_chk
	lea	rdi, [rdi]
	jmp	.label_382
.label_381:
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
.label_382:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_2
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
	mov	esi, OFFSET FLAT:.str.3_1
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
	ja	.label_385
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_376]]
.label_536:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.4_1
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
.label_385:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	jmp	.label_384
.label_537:
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
.label_538:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.6_0
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
.label_539:
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
	jmp	.label_380
.label_540:
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
	jmp	.label_378
.label_541:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_0
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
	jmp	.label_377
.label_542:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10_0
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
.label_377:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_378:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_380:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_383
.label_544:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_384:
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
	jmp	.label_379
.label_543:
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
.label_379:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_383:
	mov	rbp, rbp
	call	__fprintf_chk
.label_535:
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
	.align	32
	#Procedure 0x407950
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_386:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_386
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407980

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	nop	
	xor	r9d, r9d
	nop	dword ptr [rax + rax]
.label_390:
	lea	rdi, [rdi]
	cmp	r10d, 0x28
	ja	.label_387
	movsxd	r11, r10d
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	rbp, rbp
	mov	dword ptr [r8], r10d
	mov	rsp, rsp
	jmp	.label_389
	nop	word ptr cs:[rax + rax]
.label_387:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_389:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_388
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_390
.label_388:
	lea	rdi, [rdi]
	lea	r8, [rsp]
	mov	rsp, rsp
	call	version_etc_arn
	add	rsp, 0x58
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407a10
	.globl version_etc
	.type version_etc, @function
version_etc:

	sub	rsp, 0x118
	test	al, al
	nop	
	je	.label_391
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
.label_391:
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
.label_393:
	lea	rdi, [rdi]
	cmp	r8d, 0x28
	ja	.label_392
	lea	rdi, [rdi]
	movsxd	r10, r8d
	mov	rbp, rbp
	add	r10, qword ptr [rsp + 0x110]
	add	r8d, 8
	mov	dword ptr [rsp + 0x100], r8d
	jmp	.label_394
	nop	dword ptr [rax + rax]
.label_392:
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x108]
	lea	rdi, [rdi]
	lea	rax, [r10 + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x108], rax
.label_394:
	mov	rbp, rbp
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_395
	inc	r9
	cmp	r9, 0xa
	jb	.label_393
.label_395:
	mov	rsp, rsp
	lea	r8, [rsp]
	mov	rbp, rbp
	call	version_etc_arn
	add	rsp, 0x118
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407b50
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
	mov	edx, OFFSET FLAT:.str.15_1
	xor	eax, eax
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16_0
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
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	
	.section	.text
	.align	32
	#Procedure 0x407be0
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
	jb	.label_396
	imul	rbx, rdi
	nop	
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_397
	test	rax, rax
	je	.label_396
.label_397:
	nop	
	pop	rbx
	ret	
.label_396:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407c30

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_398
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_399
.label_398:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_399:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407c60
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
	jb	.label_401
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_400
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_400
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
	nop	
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_400:
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_402
	test	rax, rax
	je	.label_401
.label_402:
	mov	rsp, rsp
	pop	rbx
	ret	
.label_401:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407ce0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_403
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_403
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_403:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_404
	test	rax, rax
	nop	
	je	.label_405
.label_404:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_405:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407d30
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	nop	
	mov	rbx, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_410
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_406
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_412
.label_410:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_409
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_409:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_411
.label_412:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	rbx, rcx
	nop	
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_408
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_408
	lea	rsi, [rsi]
	call	free
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_408:
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	realloc
	test	rbx, rbx
	je	.label_407
	test	rax, rax
	mov	rbp, rbp
	je	.label_406
.label_407:
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	ret	
.label_406:
	call	xalloc_die
.label_411:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407e10
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_413
	test	rax, rax
	mov	rbp, rbp
	je	.label_414
.label_413:
	pop	rbx
	ret	
.label_414:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x407e30
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rsp, rsp
	mov	rax, qword ptr [rsi]
	nop	
	test	rdi, rdi
	je	.label_418
	movabs	rcx, 0x5555555555555554
	lea	rdi, [rdi]
	cmp	rax, rcx
	jae	.label_419
	mov	rbx, rax
	mov	rbp, rbp
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_417
	call	free
	xor	eax, eax
	jmp	.label_415
.label_418:
	mov	rbp, rbp
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	js	.label_416
	mov	rsp, rsp
	mov	qword ptr [rsi], rbx
.label_417:
	mov	rsi, rbx
	call	realloc
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_415
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_416
.label_415:
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_416:
	mov	rbp, rbp
	call	xalloc_die
.label_419:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407ec0
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
	je	.label_420
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_421
.label_420:
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
.label_421:
	nop	
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407f20
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
	jb	.label_422
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_422
	pop	rcx
	ret	
.label_422:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x407f50

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
	je	.label_424
	mov	rbp, rbp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_423
.label_424:
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
.label_423:
	nop	
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407fb0
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
	je	.label_425
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_426
.label_425:
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
.label_426:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x408010

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
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
	.align	32
	#Procedure 0x408060

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_427
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_428
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
	je	.label_428
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
.label_427:
	mov	ecx, 1
.label_428:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4080d0

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
	js	.label_429
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_431
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
	je	.label_429
.label_431:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_429
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	test	ebp, ebp
	je	.label_430
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_430:
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_429:
	lea	rsi, [rsi]
	mov	rdi, rbx
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	pop	rbp
	nop	
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x408180

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_432
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_432
	test	byte ptr [rbx + 1], 1
	je	.label_432
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	nop	
	call	rpl_fseeko
.label_432:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4081c0

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
	jne	.label_433
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_433
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_434
.label_433:
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
.label_434:
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
	je	.label_435
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_435:
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408270

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
	je	.label_436
	nop	
	cmp	r15, -2
	jb	.label_436
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_436
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_436:
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
	.align	32
	#Procedure 0x408300
	.globl extract_trimmed_name
	.type extract_trimmed_name, @function
extract_trimmed_name:

	lea	rsi, [rsi]
	push	r14
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	r14, rdi
	mov	edi, 0x21
	lea	rdi, [rdi]
	call	xmalloc
	nop	
	mov	rbx, rax
	mov	rsp, rsp
	lea	rsi, [r14 + 0x2c]
	mov	edx, 0x20
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	strncpy
	lea	rsi, [rsi]
	mov	byte ptr [rbx + 0x20], 0
	mov	rdi, rbx
	call	strlen
	lea	rsi, [rsi]
	test	rax, rax
	jle	.label_437
	lea	rdi, [rdi]
	add	rax, rbx
	nop	word ptr cs:[rax + rax]
.label_438:
	mov	rbp, rbp
	movzx	ecx, byte ptr [rax - 1]
	nop	
	cmp	ecx, 0x20
	jne	.label_437
	mov	rbp, rbp
	mov	byte ptr [rax - 1], 0
	dec	rax
	cmp	rbx, rax
	mov	rbp, rbp
	jb	.label_438
.label_437:
	mov	rax, rbx
	mov	rbp, rbp
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	mov	rsp, rsp
	pop	r14
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4083a0

	.globl read_utmp
	.type read_utmp, @function
read_utmp:
	push	rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	nop	
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14d, ecx
	mov	qword ptr [rsp + 0x10], rdx
	mov	qword ptr [rsp + 8], rsi
	mov	rsp, rsp
	call	utmpxname
	call	setutxent
	lea	rsi, [rsi]
	call	getutxent
	mov	rbp, rbp
	mov	rbx, rax
	xor	ebp, ebp
	mov	rsp, rsp
	test	rbx, rbx
	mov	r12d, 0
	je	.label_444
	lea	rdi, [rdi]
	mov	r13d, r14d
	mov	rsp, rsp
	and	r13d, 2
	mov	rbp, rbp
	and	r14d, 1
	xor	ebp, ebp
	xor	r12d, r12d
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_441
.label_440:
	mov	rbp, rbp
	cmp	rbp, r15
	jne	.label_443
	test	r12, r12
	mov	rsp, rsp
	je	.label_446
	lea	rsi, [rsi]
	movabs	rax, 0x38e38e38e38e38
	mov	rbp, rbp
	cmp	rbp, rax
	lea	rdi, [rdi]
	jae	.label_447
	mov	rax, rbp
	lea	rsi, [rsi]
	shr	rax, 1
	lea	r15, [rbp + rax + 1]
	jmp	.label_439
.label_446:
	mov	rbp, rbp
	test	rbp, rbp
	lea	rsi, [rsi]
	mov	r15, rbp
	mov	eax, 1
	nop	
	cmove	r15, rax
	mov	rbp, rbp
	movabs	rax, 0x55555555555556
	cmp	r15, rax
	jae	.label_448
.label_439:
	lea	rdi, [rdi]
	mov	rax, r15
	lea	rdi, [rdi]
	shl	rax, 7
	lea	rsi, [rax + rax*2]
	lea	rdi, [rdi]
	mov	rdi, r12
	mov	rsp, rsp
	call	xrealloc
	lea	rsi, [rsi]
	mov	r12, rax
.label_443:
	nop	
	lea	rdi, [rbp + rbp*2]
	inc	rbp
	shl	rdi, 7
	add	rdi, r12
	lea	rdi, [rdi]
	mov	edx, 0x180
	lea	rdi, [rdi]
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	memcpy
	lea	rdi, [rdi]
	jmp	.label_450
	nop	
.label_441:
	lea	rsi, [rsi]
	cmp	byte ptr [rbx + 0x2c], 0
	je	.label_442
	movzx	eax, word ptr [rbx]
	lea	rdi, [rdi]
	cmp	eax, 7
	sete	al
	jmp	.label_445
	nop	word ptr [rax + rax]
.label_442:
	xor	eax, eax
.label_445:
	test	r13d, r13d
	mov	rbp, rbp
	je	.label_449
	test	al, al
	je	.label_450
.label_449:
	test	r14d, r14d
	mov	rsp, rsp
	je	.label_440
	mov	rsp, rsp
	xor	al, 1
	nop	
	jne	.label_440
	mov	edi, dword ptr [rbx + 4]
	nop	
	test	edi, edi
	jle	.label_440
	xor	esi, esi
	mov	rsp, rsp
	call	kill
	test	eax, eax
	jns	.label_440
	nop	
	call	__errno_location
	nop	
	cmp	dword ptr [rax], 3
	jne	.label_440
.label_450:
	lea	rdi, [rdi]
	call	getutxent
	mov	rbp, rbp
	mov	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	nop	
	jne	.label_441
.label_444:
	lea	rsi, [rsi]
	call	endutxent
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 8]
	nop	
	mov	qword ptr [rax], rbp
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax], r12
	mov	rbp, rbp
	xor	eax, eax
	add	rsp, 0x18
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	mov	rsp, rsp
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_447:
	mov	rbp, rbp
	call	xalloc_die
.label_448:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4085b0
	.globl tzalloc
	.type tzalloc, @function
tzalloc:

	push	r15
	push	r14
	push	r12
	lea	rsi, [rsi]
	push	rbx
	mov	rsp, rsp
	push	rax
	lea	rdi, [rdi]
	mov	r14, rdi
	xor	r15d, r15d
	test	r14, r14
	mov	rbp, rbp
	je	.label_451
	mov	rbp, rbp
	mov	rdi, r14
	call	strlen
	nop	
	mov	r15, rax
	inc	r15
.label_451:
	lea	rdi, [rdi]
	lea	rax, [r15 + 0x11]
	nop	
	and	rax, 0xfffffffffffffff8
	cmp	r15, 0x77
	mov	edi, 0x80
	nop	
	cmovae	rdi, rax
	lea	rdi, [rdi]
	call	malloc
	mov	rbp, rbp
	mov	rbx, rax
	test	rbx, rbx
	je	.label_452
	mov	rsp, rsp
	mov	qword ptr [rbx], 0
	test	r14, r14
	lea	rdi, [rdi]
	setne	byte ptr [rbx + 8]
	nop	
	mov	byte ptr [rbx + 9], 0
	lea	rsi, [rsi]
	je	.label_452
	mov	r12, rbx
	mov	rbp, rbp
	add	r12, 9
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, r15
	lea	rsi, [rsi]
	call	memcpy
	mov	byte ptr [r12 + r15], 0
.label_452:
	mov	rax, rbx
	mov	rbp, rbp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x408660
	.globl tzfree
	.type tzfree, @function
tzfree:

	lea	rdi, [rdi]
	push	rbx
	lea	rdi, [rdi]
	cmp	rdi, 2
	jb	.label_454
	nop	dword ptr [rax]
.label_453:
	mov	rbx, qword ptr [rdi]
	call	free
	test	rbx, rbx
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rbp, rbp
	jne	.label_453
.label_454:
	mov	rsp, rsp
	pop	rbx
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408690
	.globl localtime_rz
	.type localtime_rz, @function
localtime_rz:

	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	mov	rbp, rbp
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	r15, rdx
	lea	rdi, [rdi]
	mov	rbp, rsi
	nop	
	mov	rbx, rdi
	lea	rsi, [rsi]
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_457
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	set_tz
	mov	r14, rax
	test	r14, r14
	je	.label_455
	mov	rdi, rbp
	mov	rsi, r15
	nop	
	call	localtime_r
	nop	
	mov	bpl, 1
	mov	rbp, rbp
	test	rax, rax
	je	.label_458
	nop	
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, r15
	call	save_abbr
	lea	rdi, [rdi]
	mov	bpl, al
	xor	bpl, 1
.label_458:
	mov	rdi, r14
	lea	rdi, [rdi]
	call	revert_tz
	mov	rbp, rbp
	xor	ecx, ecx
	xor	al, 1
	mov	rbp, rbp
	cmovne	r15, rcx
	nop	
	test	bpl, bpl
	lea	rsi, [rsi]
	cmovne	r15, rcx
	lea	rdi, [rdi]
	mov	rax, r15
	jmp	.label_456
.label_457:
	lea	rdi, [rdi]
	mov	rdi, rbp
	mov	rbp, rbp
	mov	rsi, r15
	lea	rdi, [rdi]
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	jmp	gmtime_r
.label_455:
	xor	eax, eax
.label_456:
	nop	
	add	rsp, 8
	pop	rbx
	nop	
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408770

	.globl set_tz
	.type set_tz, @function
set_tz:
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r13
	mov	rbp, rbp
	push	r12
	lea	rsi, [rsi]
	push	rbx
	lea	rdi, [rdi]
	push	rax
	mov	r14, rdi
	mov	edi, OFFSET FLAT:.str_7
	call	getenv
	mov	r15, rax
	test	r15, r15
	mov	bl, byte ptr [r14 + 8]
	je	.label_463
	lea	rdi, [rdi]
	test	bl, bl
	lea	rsi, [rsi]
	je	.label_466
	lea	rdi, [rdi]
	lea	rdi, [r14 + 9]
	lea	rsi, [rsi]
	mov	rsi, r15
	call	strcmp
	mov	ecx, eax
	mov	rsp, rsp
	mov	eax, 1
	lea	rsi, [rsi]
	test	ecx, ecx
	je	.label_461
.label_466:
	lea	rdi, [rdi]
	mov	rdi, r15
	call	strlen
	mov	r12, rax
	inc	r12
	mov	rsp, rsp
	mov	bpl, 1
	mov	rbp, rbp
	jmp	.label_465
.label_463:
	lea	rsi, [rsi]
	xor	ebp, ebp
	mov	eax, 1
	nop	
	test	bl, bl
	nop	
	mov	r12d, 0
	mov	rbp, rbp
	je	.label_461
.label_465:
	lea	rsi, [rsi]
	lea	rax, [r12 + 0x11]
	and	rax, 0xfffffffffffffff8
	cmp	r12, 0x77
	mov	edi, 0x80
	lea	rsi, [rsi]
	cmovae	rdi, rax
	mov	rsp, rsp
	call	malloc
	nop	
	mov	r13, rax
	xor	eax, eax
	test	r13, r13
	mov	rbp, rbp
	je	.label_461
	lea	rdi, [rdi]
	mov	qword ptr [r13], 0
	lea	rsi, [rsi]
	mov	byte ptr [r13 + 8], bpl
	mov	rbp, rbp
	mov	byte ptr [r13 + 9], 0
	lea	rsi, [rsi]
	test	bpl, bpl
	je	.label_460
	nop	
	lea	rbp, [r13 + 9]
	mov	rdi, rbp
	mov	rbp, rbp
	mov	rsi, r15
	lea	rdi, [rdi]
	mov	rdx, r12
	call	memcpy
	nop	
	mov	byte ptr [rbp + r12], 0
.label_460:
	lea	rdi, [rdi]
	test	bl, bl
	lea	rdi, [rdi]
	je	.label_462
	mov	rbp, rbp
	add	r14, 9
	mov	edi, OFFSET FLAT:.str_7
	mov	rsp, rsp
	mov	edx, 1
	mov	rsi, r14
	call	setenv
	mov	rsp, rsp
	jmp	.label_467
.label_462:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str_7
	mov	rbp, rbp
	call	unsetenv
.label_467:
	lea	rsi, [rsi]
	test	eax, eax
	nop	
	je	.label_459
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	mov	r14, rax
	mov	rsp, rsp
	mov	ebp, dword ptr [r14]
	mov	rsp, rsp
	cmp	r13, 2
	jb	.label_464
	nop	word ptr cs:[rax + rax]
.label_468:
	mov	rbx, qword ptr [r13]
	mov	rdi, r13
	call	free
	test	rbx, rbx
	mov	r13, rbx
	jne	.label_468
.label_464:
	mov	dword ptr [r14], ebp
	xor	eax, eax
	jmp	.label_461
.label_459:
	nop	
	call	tzset
	lea	rdi, [rdi]
	mov	rax, r13
.label_461:
	nop	
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	pop	r12
	mov	rsp, rsp
	pop	r13
	mov	rbp, rbp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	nop	
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408940

	.globl save_abbr
	.type save_abbr, @function
save_abbr:
	mov	rbp, rbp
	push	rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	push	rax
	mov	rsp, rsp
	mov	r15, rsi
	lea	rsi, [rsi]
	mov	r12, rdi
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r15 + 0x30]
	mov	rbp, rbp
	mov	r14b, 1
	lea	rsi, [rsi]
	test	rbx, rbx
	je	.label_469
	cmp	r15, rbx
	ja	.label_480
	nop	
	lea	rax, [r15 + 0x38]
	cmp	rbx, rax
	lea	rsi, [rsi]
	jb	.label_469
.label_480:
	mov	ebp, OFFSET FLAT:.str_0
	nop	
	cmp	byte ptr [rbx], 0
	je	.label_471
	lea	rbp, [r12 + 9]
	jmp	.label_473
.label_472:
	mov	rax, qword ptr [r12]
	lea	rbp, [rax + 9]
	test	rax, rax
	cmove	rbp, rcx
	mov	rbp, rbp
	cmovne	r12, rax
.label_473:
	lea	r13, [r12 + 9]
.label_470:
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	strcmp
	lea	rdi, [rdi]
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_471
	cmp	byte ptr [rbp], 0
	mov	rsp, rsp
	jne	.label_474
	lea	rsi, [rsi]
	cmp	rbp, r13
	jne	.label_475
	lea	rdi, [rdi]
	cmp	byte ptr [r12 + 8], 0
	je	.label_478
.label_474:
	mov	rbp, rbp
	mov	rdi, rbp
	call	strlen
	nop	
	lea	rcx, [rax + rbp + 1]
	lea	rsi, [rsi]
	cmp	byte ptr [rax + rbp + 1], 0
	mov	rbp, rcx
	jne	.label_470
	lea	rdi, [rdi]
	jmp	.label_472
.label_478:
	lea	rdi, [rdi]
	mov	rbp, r13
.label_475:
	mov	rdi, rbx
	mov	rbp, rbp
	call	strlen
	lea	rdx, [rax + 1]
	nop	
	mov	rcx, rbp
	lea	rsi, [rsi]
	sub	rcx, r13
	mov	rbp, rbp
	mov	rsi, rcx
	not	rsi
	lea	rsi, [rsi]
	cmp	rdx, rsi
	jbe	.label_479
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0xc
.label_477:
	xor	r14d, r14d
	jmp	.label_469
.label_479:
	add	rcx, rdx
	mov	rbp, rbp
	cmp	rcx, 0x76
	ja	.label_476
	nop	
	mov	rdi, rbp
	mov	rsi, rbx
	lea	rdi, [rdi]
	mov	rbx, rdx
	call	memcpy
	mov	byte ptr [rbp + rbx], 0
	mov	qword ptr [r15 + 0x30], rbp
	jmp	.label_469
.label_476:
	add	rax, 0x12
	lea	rdi, [rdi]
	and	rax, 0xfffffffffffffff8
	lea	rsi, [rsi]
	cmp	rdx, 0x77
	mov	rsp, rsp
	mov	r13, rdx
	mov	rbp, rbp
	mov	edi, 0x80
	cmovae	rdi, rax
	mov	rsp, rsp
	call	malloc
	mov	rbp, rbp
	test	rax, rax
	je	.label_481
	nop	
	mov	qword ptr [rax], 0
	mov	word ptr [rax + 8], 1
	lea	rsi, [rsi]
	mov	rbp, rax
	add	rbp, 9
	lea	rsi, [rsi]
	mov	rdi, rbp
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rsi, [rsi]
	mov	rdx, r13
	mov	rbx, rax
	mov	rsp, rsp
	call	memcpy
	mov	byte ptr [rbx + r13 + 9], 0
	mov	qword ptr [r12], rbx
	mov	byte ptr [rbx + 8], 0
.label_471:
	mov	qword ptr [r15 + 0x30], rbp
.label_469:
	mov	rbp, rbp
	mov	al, r14b
	lea	rsi, [rsi]
	add	rsp, 8
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_481:
	mov	qword ptr [r12], 0
	jmp	.label_477
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408b40

	.globl revert_tz
	.type revert_tz, @function
revert_tz:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	nop	
	push	r14
	lea	rsi, [rsi]
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	rbp, rbp
	mov	rbp, rdi
	mov	r12b, 1
	cmp	rbp, 1
	je	.label_482
	nop	
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	r15d, dword ptr [r14]
	lea	rsi, [rsi]
	cmp	byte ptr [rbp + 8], 0
	je	.label_484
	lea	rsi, [rbp + 9]
	mov	edi, OFFSET FLAT:.str_7
	mov	edx, 1
	call	setenv
	jmp	.label_485
.label_484:
	mov	edi, OFFSET FLAT:.str_7
	call	unsetenv
.label_485:
	test	eax, eax
	je	.label_488
	mov	r15d, dword ptr [r14]
	xor	r12d, r12d
	jmp	.label_483
.label_488:
	call	tzset
	mov	r12b, 1
.label_483:
	cmp	rbp, 2
	mov	rsp, rsp
	jb	.label_486
	nop	dword ptr [rax]
.label_487:
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rbp]
	nop	
	mov	rdi, rbp
	lea	rdi, [rdi]
	call	free
	mov	rbp, rbp
	test	rbx, rbx
	mov	rbp, rbx
	jne	.label_487
.label_486:
	mov	dword ptr [r14], r15d
.label_482:
	mov	al, r12b
	mov	rbp, rbp
	pop	rbx
	pop	r12
	pop	r14
	nop	
	pop	r15
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408c00

	.globl mktime_z
	.type mktime_z, @function
mktime_z:
	nop	
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x40
	nop	
	mov	r15, rsi
	mov	rbx, rdi
	mov	rbp, rbp
	test	rbx, rbx
	je	.label_489
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	set_tz
	mov	r14, rax
	mov	rbp, rbp
	test	r14, r14
	je	.label_490
	mov	rdi, r15
	lea	rsi, [rsi]
	call	mktime
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x38], rax
	mov	rbp, rbp
	cmp	rax, -1
	jne	.label_491
	nop	
	lea	rdi, [rsp + 0x38]
	lea	rsi, [rsp]
	call	localtime_r
	lea	rdi, [rdi]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_492
	mov	rsp, rsp
	mov	rax, qword ptr [rsp]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	xor	rax, qword ptr [r15]
	mov	rsp, rsp
	xor	rcx, qword ptr [r15 + 8]
	mov	rbp, rbp
	mov	edx, ecx
	or	edx, eax
	lea	rsi, [rsi]
	shr	rax, 0x20
	or	edx, eax
	nop	
	shr	rcx, 0x20
	mov	rax, qword ptr [rsp + 0x10]
	xor	rax, qword ptr [r15 + 0x10]
	mov	esi, eax
	or	esi, ecx
	lea	rsi, [rsi]
	or	esi, edx
	shr	rax, 0x20
	or	eax, esi
	mov	edi, dword ptr [r15 + 0x20]
	nop	
	mov	edx, dword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	test	edi, edi
	lea	rsi, [rsi]
	sete	sil
	test	edx, edx
	mov	rsp, rsp
	sete	cl
	lea	rdi, [rdi]
	xor	cl, sil
	or	edx, edi
	setns	dl
	and	dl, cl
	movzx	ecx, dl
	lea	rdi, [rdi]
	or	ecx, eax
	jne	.label_492
.label_491:
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, r15
	call	save_abbr
	nop	
	test	al, al
	lea	rdi, [rdi]
	jne	.label_492
	mov	qword ptr [rsp + 0x38], -1
.label_492:
	mov	rdi, r14
	mov	rbp, rbp
	call	revert_tz
	test	al, al
	mov	rsp, rsp
	je	.label_490
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x38]
	jmp	.label_493
.label_490:
	lea	rdi, [rdi]
	mov	rax, -1
.label_493:
	add	rsp, 0x40
	mov	rbp, rbp
	pop	rbx
	nop	
	pop	r14
	pop	r15
	ret	
.label_489:
	mov	rdi, r15
	add	rsp, 0x40
	pop	rbx
	mov	rsp, rsp
	pop	r14
	pop	r15
	mov	rbp, rbp
	jmp	timegm
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x408d70

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
	jne	.label_494
	mov	rbp, rbp
	test	eax, eax
	nop	
	sete	cl
	neg	eax
	mov	rbp, rbp
	sbb	ebx, ebx
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_495
	test	cl, cl
	mov	rsp, rsp
	jne	.label_495
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	nop	
	mov	ebx, 0xffffffff
	lea	rsi, [rsi]
	cmove	ebx, ecx
	jmp	.label_495
.label_494:
	mov	ebx, 0xffffffff
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_495
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
.label_495:
	mov	eax, ebx
	nop	
	pop	rbx
	mov	rsp, rsp
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408e00

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
	je	.label_497
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_496
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_498
.label_496:
	nop	
	mov	esi, OFFSET FLAT:.str.1_5
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_497
.label_498:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_497:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x408e50

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
	je	.label_499
	nop	
	mov	rax, rcx
.label_499:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section .text
	.align	32
	#Procedure 0x408e90

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
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]