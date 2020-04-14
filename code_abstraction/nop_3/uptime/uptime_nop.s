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
	sub	rsp, 0x4a8
	mov	dword ptr [rsp + 0x84], r8d
	mov	dword ptr [rsp + 0x94], ecx
	mov	qword ptr [rsp + 0x48], rdx
	mov	rbp, rbp
	mov	r13, rsi
	mov	qword ptr [rsp + 0x70], rdi
	mov	eax, dword ptr [rdx + 8]
	mov	rcx, qword ptr [rdx + 0x30]
	nop	
	test	rcx, rcx
	mov	edx, OFFSET FLAT:.str_0
	mov	rbp, rbp
	cmovne	rdx, rcx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x88], rdx
	lea	ecx, [rax - 0xc]
	test	eax, eax
	mov	rbp, rbp
	mov	edx, 0xc
	cmovne	edx, eax
	nop	
	cmp	eax, 0xc
	mov	rsp, rsp
	cmovg	edx, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x80], edx
	nop	
	mov	al, byte ptr [r13]
	lea	rdi, [rdi]
	test	al, al
	lea	rsi, [rsi]
	mov	ebp, 0
	lea	rdi, [rdi]
	je	.label_127
	lea	rcx, [rsp + 0x20]
	mov	rdx, -0x17
	sub	rdx, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x50], rdx
	nop	
	movabs	rdi, 0x1000000000002500
	nop	
	xor	ebp, ebp
	jmp	.label_83
.label_161:
	mov	rbp, rbp
	mov	esi, 3
	jmp	.label_185
	nop	
.label_83:
	nop	
	movzx	ecx, al
	xor	r12d, r12d
	cmp	ecx, 0x25
	jne	.label_189
	nop	
	mov	qword ptr [rsp + 0x68], rbp
	mov	eax, dword ptr [rsp + 0x94]
	mov	r15b, al
	xor	ebp, ebp
	lea	rsi, [rsi]
	jmp	.label_49
	nop	word ptr cs:[rax + rax]
.label_189:
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
	mov	rdx, rbp
	not	rdx
	cmp	rbx, rdx
	jae	.label_47
	mov	r14, qword ptr [rsp + 0x70]
	test	r14, r14
	je	.label_201
	mov	rsp, rsp
	mov	r15, rdi
	lea	rdi, [rdi]
	cmp	ecx, 2
	lea	rdi, [rdi]
	jb	.label_133
	cmp	r9d, 1
	je	.label_133
	mov	r12, rbp
	movsxd	rbp, r9d
	lea	rsi, [rsi]
	dec	rbp
	nop	word ptr cs:[rax + rax]
.label_194:
	mov	edi, 0x20
	mov	rbp, rbp
	mov	rsi, r14
	nop	
	call	fputc
	mov	rbp, rbp
	dec	rbp
	jne	.label_194
	mov	rsp, rsp
	mov	al, byte ptr [r13]
	mov	rbp, r12
.label_133:
	movsx	edi, al
	mov	rsi, r14
	call	fputc
	mov	rdi, r15
.label_201:
	add	rbp, rbx
	jmp	.label_43
	nop	dword ptr [rax]
.label_64:
	nop	
	mov	r12b, 1
	mov	rsp, rsp
	mov	al, r15b
	lea	rdi, [rdi]
	jmp	.label_49
	nop	
.label_62:
	inc	r13
	mov	ebp, edx
.label_68:
	mov	cl, byte ptr [r13]
	mov	rbp, rbp
	movsx	edx, cl
	lea	esi, [rdx - 0x23]
	nop	
	cmp	esi, 0x3c
	mov	rbp, rbp
	ja	.label_56
	lea	rdi, [rdi]
	bt	rdi, rsi
	jb	.label_62
	mov	al, 1
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_64
	mov	rbp, rbp
	cmp	rsi, 0x3b
	mov	rbp, rbp
	jne	.label_56
.label_49:
	mov	r15b, al
	inc	r13
	jmp	.label_68
	nop	word ptr cs:[rax + rax]
.label_56:
	add	edx, -0x30
	xor	eax, eax
	cmp	edx, 9
	ja	.label_72
	nop	word ptr [rax + rax]
.label_88:
	mov	rsp, rsp
	mov	r9d, 0x7fffffff
	lea	rdi, [rdi]
	cmp	eax, 0xccccccc
	lea	rsi, [rsi]
	jg	.label_75
	movsx	ecx, cl
	lea	rsi, [rsi]
	cmp	eax, 0xccccccc
	mov	rbp, rbp
	jne	.label_81
	lea	rsi, [rsi]
	lea	edx, [rcx - 0x30]
	mov	rsp, rsp
	cmp	edx, 7
	mov	rsp, rsp
	jg	.label_75
.label_81:
	lea	eax, [rax + rax*4]
	lea	rsi, [rsi]
	lea	r9d, [rcx + rax*2 - 0x30]
.label_75:
	mov	rbp, rbp
	movsx	ecx, byte ptr [r13 + 1]
	inc	r13
	nop	
	mov	eax, ecx
	lea	rdi, [rdi]
	add	eax, -0x30
	nop	
	cmp	eax, 0xa
	mov	eax, r9d
	mov	rbp, rbp
	jb	.label_88
.label_72:
	lea	rsi, [rsi]
	movsx	r10d, cl
	cmp	r10d, 0x4f
	je	.label_94
	lea	rsi, [rsi]
	cmp	r10d, 0x45
	mov	rsp, rsp
	jne	.label_98
.label_94:
	mov	cl, byte ptr [r13 + 1]
	inc	r13
	jmp	.label_101
.label_98:
	xor	r10d, r10d
.label_101:
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.3_0
	movsx	r8d, cl
	mov	rbp, rbp
	xor	edx, edx
	mov	edi, 1
	nop	
	lea	ebx, [r8 - 0x25]
	cmp	ebx, 0x55
	ja	.label_106
	mov	dword ptr [rsp + 0x18], r9d
	lea	rdi, [rdi]
	mov	r9b, 0x72
	mov	r14d, 0xffffffff
	lea	rsi, [rsi]
	xor	r11d, r11d
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	jmp	qword ptr [word ptr [+ (rbx * 8) + label_111]]
.label_591:
	nop	
	cmp	r10d, 0x45
	lea	rsi, [rsi]
	je	.label_44
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x48]
	mov	rbp, rbp
	mov	r9d, dword ptr [rsi + 0x14]
	mov	edx, dword ptr [rsi + 0x18]
	mov	rbp, rbp
	mov	eax, r9d
	nop	
	sar	eax, 0x1f
	and	eax, 0x190
	lea	r11d, [r9 + rax - 0x64]
	nop	
	mov	ebx, dword ptr [rsi + 0x1c]
	lea	esi, [rbx + 0x17e]
	lea	rsi, [rsi]
	sub	esi, edx
	movsxd	rsi, esi
	lea	rdi, [rdi]
	imul	rdi, rsi, -0x6db6db6d
	mov	rsp, rsp
	shr	rdi, 0x20
	add	edi, esi
	mov	eax, edi
	shr	eax, 0x1f
	sar	edi, 2
	add	edi, eax
	lea	rsi, [rsi]
	lea	eax, [rdi*8]
	sub	eax, edi
	sub	esi, eax
	lea	r12d, [rbx + 3]
	mov	rbp, rbp
	sub	r12d, esi
	lea	rdi, [rdi]
	js	.label_121
	mov	rsp, rsp
	mov	esi, 0x16d
	test	r11b, 3
	mov	rsp, rsp
	jne	.label_176
	nop	
	movsxd	rax, r11d
	imul	rax, rax, 0x51eb851f
	mov	rsi, rax
	lea	rsi, [rsi]
	sar	rsi, 0x25
	mov	rsp, rsp
	mov	r14, rax
	nop	
	shr	r14, 0x3f
	add	esi, r14d
	lea	rsi, [rsi]
	imul	esi, esi, 0x64
	sar	rax, 0x27
	lea	rdi, [rdi]
	add	eax, r14d
	nop	
	imul	eax, eax, 0x190
	cmp	r11d, eax
	sete	al
	mov	rbp, rbp
	movzx	eax, al
	add	eax, 0x16d
	lea	rdi, [rdi]
	cmp	r11d, esi
	mov	rbp, rbp
	mov	esi, 0x16e
	cmove	esi, eax
.label_176:
	sub	ebx, esi
	lea	eax, [rbx + 0x17e]
	sub	eax, edx
	lea	rsi, [rsi]
	cdqe	
	imul	rsi, rax, -0x6db6db6d
	shr	rsi, 0x20
	add	esi, eax
	mov	rsp, rsp
	mov	edi, esi
	lea	rdi, [rdi]
	shr	edi, 0x1f
	sar	esi, 2
	nop	
	add	esi, edi
	lea	edi, [rsi*8]
	sub	edi, esi
	sub	eax, edi
	mov	rbp, rbp
	add	ebx, 3
	nop	
	sub	ebx, eax
	cmovns	r12d, ebx
	shr	ebx, 0x1f
	xor	ebx, 1
	lea	rdi, [rdi]
	jmp	.label_151
	nop	word ptr cs:[rax + rax]
.label_160:
	inc	rdi
.label_585:
	mov	rsp, rsp
	movzx	eax, byte ptr [r13 + rdi]
	nop	
	cmp	eax, 0x3a
	mov	rbp, rbp
	je	.label_160
	mov	rbp, rbp
	movzx	eax, al
	nop	
	cmp	eax, 0x7a
	lea	rsi, [rsi]
	jne	.label_44
	add	r13, rdi
	mov	rdx, rdi
.label_622:
	mov	rsp, rsp
	mov	rsi, rdx
	mov	r11, qword ptr [rsp + 0x48]
	cmp	dword ptr [r11 + 0x20], 0
	js	.label_168
	mov	rsp, rsp
	mov	eax, dword ptr [r11 + 0x28]
	mov	r8b, 1
	mov	rbp, rbp
	test	eax, eax
	js	.label_52
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_177
	xor	r8d, r8d
	mov	rsp, rsp
	jmp	.label_52
.label_605:
	lea	rsi, [rsi]
	test	r12b, r12b
	je	.label_181
	mov	r15b, 1
.label_181:
	xor	r11d, r11d
	cmp	r10d, 0x45
	mov	rbp, rbp
	je	.label_44
	lea	rdi, [rdi]
	mov	r9b, cl
	nop	
	jmp	.label_51
.label_106:
	lea	rsi, [rsi]
	test	r8d, r8d
	jne	.label_190
	mov	dword ptr [rsp + 0x18], r9d
	mov	rsp, rsp
	dec	r13
	jmp	.label_44
.label_584:
	test	r10d, r10d
	jne	.label_44
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edx, dword ptr [rsp + 0x18]
	test	edx, edx
	cmovns	eax, edx
	movsxd	rcx, eax
	mov	rbp, rbp
	cmp	ecx, 1
	mov	r14d, 1
	lea	rsi, [rsi]
	cmova	r14, rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x68]
	lea	rsi, [rsi]
	not	rcx
	cmp	r14, rcx
	jae	.label_47
	lea	rsi, [rsi]
	mov	r12, qword ptr [rsp + 0x70]
	test	r12, r12
	je	.label_91
	cmp	eax, 2
	jb	.label_182
	movsxd	rbx, edx
	mov	rbp, rbp
	lea	r15, [rbx - 1]
	mov	rbp, rbp
	cmp	ebp, 0x30
	je	.label_148
	cmp	ebp, 0x2b
	lea	rsi, [rsi]
	jne	.label_208
.label_148:
	lea	rsi, [rsi]
	test	r15, r15
	mov	rsp, rsp
	je	.label_182
	dec	rbx
.label_212:
	mov	rbp, rbp
	mov	edi, 0x30
	lea	rsi, [rsi]
	mov	rsi, r12
	call	fputc
	dec	rbx
	nop	
	jne	.label_212
	mov	rsp, rsp
	jmp	.label_182
.label_586:
	test	r10d, r10d
	lea	rsi, [rsi]
	jne	.label_44
	mov	rbp, rbp
	test	r12b, r12b
	nop	
	je	.label_48
	nop	
	mov	r15b, 1
.label_48:
	xor	r11d, r11d
	nop	
	mov	r9b, 0x41
	jmp	.label_51
.label_587:
	cmp	r10d, 0x45
	je	.label_44
	lea	rdi, [rdi]
	test	r12b, r12b
	lea	rsi, [rsi]
	je	.label_59
	nop	
	mov	r15b, 1
.label_59:
	xor	r11d, r11d
	mov	r9b, 0x42
	jmp	.label_51
.label_588:
	cmp	r10d, 0x45
	lea	rsi, [rsi]
	jne	.label_135
	xor	r11d, r11d
	mov	r9b, 0x43
	nop	
	jmp	.label_51
.label_589:
	mov	esi, OFFSET FLAT:.str.1_1
	test	r10d, r10d
	jne	.label_44
	jmp	.label_73
.label_590:
	lea	rsi, [rsi]
	test	r10d, r10d
	jne	.label_44
	mov	esi, OFFSET FLAT:.str.2_0
	test	ebp, ebp
	mov	r14d, dword ptr [rsp + 0x18]
	mov	rsp, rsp
	jne	.label_78
	mov	rsp, rsp
	test	r14d, r14d
	jns	.label_78
	nop	
	mov	ebp, 0x2b
	mov	rsp, rsp
	mov	r14d, 4
	jmp	.label_73
.label_592:
	cmp	r10d, 0x45
	mov	rbp, rbp
	je	.label_44
	lea	rsi, [rsi]
	mov	r11, qword ptr [rsp + 0x48]
	mov	edx, dword ptr [r11 + 8]
	jmp	.label_77
.label_593:
	cmp	r10d, 0x45
	lea	rsi, [rsi]
	je	.label_44
	mov	esi, 2
	mov	eax, dword ptr [rsp + 0x80]
	lea	rsi, [rsi]
	jmp	.label_95
.label_594:
	cmp	r10d, 0x45
	je	.label_44
	lea	rsi, [rsi]
	mov	r11, qword ptr [rsp + 0x48]
	lea	rsi, [rsi]
	mov	edx, dword ptr [r11 + 4]
	mov	rsp, rsp
	jmp	.label_77
.label_595:
	lea	rdi, [rdi]
	cmp	r10d, 0x45
	lea	rsi, [rsi]
	je	.label_44
	mov	rbp, rbp
	mov	esi, dword ptr [rsp + 0x18]
	cmp	esi, -1
	je	.label_110
	cmp	esi, 8
	lea	rdi, [rdi]
	jg	.label_113
	mov	edi, 9
	sub	edi, esi
	mov	rsp, rsp
	mov	eax, 8
	lea	rdi, [rdi]
	sub	eax, esi
	test	dil, 3
	mov	edx, dword ptr [rsp + 0x4e8]
	mov	ebx, esi
	mov	rbp, rbp
	je	.label_202
	and	edi, 3
	neg	edi
	mov	edx, dword ptr [rsp + 0x4e8]
	nop	
	mov	ebx, esi
	nop	dword ptr [rax]
.label_123:
	movsxd	rdx, edx
	mov	rsp, rsp
	imul	rdx, rdx, 0x66666667
	mov	rsi, rdx
	lea	rdi, [rdi]
	shr	rsi, 0x3f
	mov	rbp, rbp
	sar	rdx, 0x22
	add	edx, esi
	inc	ebx
	mov	rbp, rbp
	inc	edi
	lea	rsi, [rsi]
	jne	.label_123
.label_202:
	nop	
	cmp	eax, 3
	mov	r11, qword ptr [rsp + 0x48]
	mov	rsp, rsp
	jb	.label_131
	lea	rsi, [rsi]
	mov	eax, 9
	mov	rsp, rsp
	sub	eax, ebx
	nop	word ptr [rax + rax]
.label_138:
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
	jne	.label_138
.label_131:
	mov	eax, dword ptr [rsp + 0x18]
	mov	esi, eax
	nop	
	jmp	.label_60
.label_596:
	mov	al, 1
.label_614:
	mov	rbp, rbp
	xor	edx, edx
	lea	rsi, [rsi]
	test	r12b, r12b
	je	.label_144
	nop	
	mov	r15d, 0
.label_144:
	je	.label_146
	mov	al, 1
.label_146:
	nop	
	mov	r9b, 0x70
	mov	r11b, al
	jmp	.label_147
.label_597:
	nop	
	cmp	r10d, 0x45
	mov	rsp, rsp
	je	.label_44
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0x48]
	mov	rbp, rbp
	mov	edx, dword ptr [r11]
	mov	rsp, rsp
	jmp	.label_77
.label_598:
	mov	esi, OFFSET FLAT:.str.4_0
.label_73:
	nop	
	mov	qword ptr [rsp + 0x58], rsi
	nop	
	test	r15b, r15b
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x78], r15
	setne	al
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rsp + 0x4e8]
	mov	dword ptr [rsp + 8], ecx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x4e0]
	mov	qword ptr [rsp], rcx
	movzx	ecx, al
	lea	rdi, [rdi]
	xor	ebx, ebx
	xor	edi, edi
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x48]
	lea	rdi, [rdi]
	mov	r8d, ebp
	nop	
	mov	r9d, r14d
	lea	rsi, [rsi]
	call	__strftime_internal
	mov	esi, dword ptr [rsp + 0x18]
	nop	
	test	esi, esi
	cmovns	ebx, esi
	movsxd	rcx, ebx
	cmp	rax, rcx
	lea	rsi, [rsi]
	mov	rdi, rax
	cmovb	rdi, rcx
	mov	rdx, qword ptr [rsp + 0x68]
	mov	rsp, rsp
	not	rdx
	cmp	rdi, rdx
	jae	.label_47
	cmp	qword ptr [rsp + 0x70], 0
	je	.label_171
	mov	qword ptr [rsp + 0x40], rdi
	cmp	rax, rcx
	lea	rsi, [rsi]
	mov	r12, qword ptr [rsp + 0x70]
	lea	rdi, [rdi]
	jae	.label_76
	lea	rsi, [rsi]
	movsxd	rcx, esi
	mov	r15, rcx
	sub	r15, rax
	lea	rsi, [rsi]
	cmp	ebp, 0x30
	je	.label_140
	cmp	ebp, 0x2b
	jne	.label_180
.label_140:
	xor	ebx, ebx
	lea	rsi, [rsi]
	cmp	rcx, rax
	je	.label_76
	nop	word ptr cs:[rax + rax]
.label_192:
	mov	edi, 0x30
	mov	rsi, r12
	call	fputc
	lea	rdi, [rdi]
	inc	rbx
	cmp	rbx, r15
	lea	rsi, [rsi]
	jb	.label_192
	jmp	.label_76
.label_599:
	lea	rdi, [rdi]
	cmp	r10d, 0x45
	je	.label_44
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0x48]
	mov	eax, dword ptr [r11 + 0x1c]
	nop	
	add	eax, 7
	lea	rdi, [rdi]
	sub	eax, dword ptr [r11 + 0x18]
	nop	
	movsxd	rdx, eax
	lea	rsi, [rsi]
	jmp	.label_195
.label_600:
	cmp	r10d, 0x45
	lea	rdi, [rdi]
	je	.label_44
	mov	rsp, rsp
	mov	r11, qword ptr [rsp + 0x48]
	mov	rbp, rbp
	mov	eax, dword ptr [r11 + 0x18]
	mov	edx, dword ptr [r11 + 0x1c]
	lea	esi, [rax + 6]
	movsxd	rsi, esi
	imul	rdi, rsi, -0x6db6db6d
	shr	rdi, 0x20
	lea	eax, [rdi + rax + 6]
	mov	edi, eax
	shr	edi, 0x1f
	sar	eax, 2
	lea	rsi, [rsi]
	add	eax, edi
	lea	rdi, [rdi]
	lea	edi, [rax*8]
	sub	edi, eax
	sub	esi, edi
	nop	
	add	edx, 7
	sub	edx, esi
	mov	rbp, rbp
	movsxd	rdx, edx
.label_195:
	imul	rax, rdx, -0x6db6db6d
	shr	rax, 0x20
	nop	
	add	edx, eax
	mov	rsp, rsp
	mov	eax, edx
	shr	eax, 0x1f
	mov	rsp, rsp
	sar	edx, 2
	mov	rsp, rsp
	add	edx, eax
	mov	rsp, rsp
	jmp	.label_77
.label_601:
	lea	rsi, [rsi]
	cmp	r10d, 0x4f
	lea	rsi, [rsi]
	je	.label_44
	mov	rsp, rsp
	xor	r11d, r11d
	mov	r9b, 0x58
	jmp	.label_51
.label_602:
	nop	
	cmp	r10d, 0x45
	mov	rbp, rbp
	je	.label_117
	nop	
	cmp	r10d, 0x4f
	mov	rsp, rsp
	je	.label_44
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0x48]
	mov	edx, dword ptr [r11 + 0x14]
	cmp	edx, 0xfffff894
	setl	r8b
	nop	
	add	edx, 0x76c
	lea	rsi, [rsi]
	mov	esi, 4
	jmp	.label_46
.label_603:
	mov	qword ptr [rsp + 0x78], r15
	nop	
	mov	rdi, qword ptr [rsp + 0x88]
	call	strlen
	mov	rbx, rax
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	edx, dword ptr [rsp + 0x18]
	test	edx, edx
	lea	rsi, [rsi]
	cmovns	eax, edx
	mov	rbp, rbp
	cdqe	
	lea	rdi, [rdi]
	cmp	rbx, rax
	nop	
	mov	rsi, rbx
	cmovb	rsi, rax
	mov	rcx, qword ptr [rsp + 0x68]
	not	rcx
	mov	rbp, rbp
	cmp	rsi, rcx
	jae	.label_47
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x58], rsi
	mov	r14, qword ptr [rsp + 0x70]
	nop	
	test	r14, r14
	je	.label_67
	cmp	rbx, rax
	jae	.label_90
	lea	rsi, [rsi]
	movsxd	rax, edx
	nop	
	mov	r15, rax
	nop	
	sub	r15, rbx
	nop	
	cmp	ebp, 0x30
	mov	rsp, rsp
	je	.label_108
	mov	rbp, rbp
	cmp	ebp, 0x2b
	mov	rsp, rsp
	jne	.label_125
.label_108:
	xor	ebp, ebp
	cmp	rax, rbx
	je	.label_90
	nop	dword ptr [rax + rax]
.label_165:
	mov	rsp, rsp
	mov	edi, 0x30
	mov	rsi, r14
	call	fputc
	inc	rbp
	mov	rbp, rbp
	cmp	rbp, r15
	lea	rdi, [rdi]
	jb	.label_165
	nop	
	jmp	.label_90
.label_604:
	lea	rdi, [rdi]
	test	r10d, r10d
	lea	rsi, [rsi]
	jne	.label_44
	test	r12b, r12b
	je	.label_116
	mov	rbp, rbp
	mov	r15b, 1
.label_116:
	xor	r11d, r11d
	mov	r9b, 0x61
	jmp	.label_51
.label_606:
	nop	
	cmp	r10d, 0x4f
	je	.label_44
	xor	r11d, r11d
	mov	rsp, rsp
	mov	r9b, 0x63
	jmp	.label_51
.label_607:
	lea	rsi, [rsi]
	cmp	r10d, 0x45
	lea	rsi, [rsi]
	je	.label_44
	mov	rsp, rsp
	mov	r11, qword ptr [rsp + 0x48]
	mov	edx, dword ptr [r11 + 0xc]
	mov	rsp, rsp
	jmp	.label_77
.label_608:
	lea	rdi, [rdi]
	cmp	r10d, 0x45
	lea	rdi, [rdi]
	je	.label_44
	mov	r11, qword ptr [rsp + 0x48]
	mov	edx, dword ptr [r11 + 0xc]
	lea	rsi, [rsi]
	jmp	.label_128
.label_609:
	cmp	r10d, 0x45
	mov	rsp, rsp
	je	.label_44
	mov	rsp, rsp
	mov	r11, qword ptr [rsp + 0x48]
	mov	edx, dword ptr [r11 + 0x1c]
	lea	rsi, [rsi]
	cmp	edx, -1
	mov	rbp, rbp
	setl	r8b
	nop	
	inc	edx
	lea	rdi, [rdi]
	mov	esi, 3
	jmp	.label_134
.label_610:
	mov	rsp, rsp
	cmp	r10d, 0x45
	je	.label_44
	nop	
	mov	r11, qword ptr [rsp + 0x48]
	mov	rsp, rsp
	mov	edx, dword ptr [r11 + 8]
	jmp	.label_128
.label_611:
	lea	rdi, [rdi]
	cmp	r10d, 0x45
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 0x80]
	mov	edx, eax
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0x48]
	mov	rsp, rsp
	je	.label_44
.label_128:
	lea	rdi, [rdi]
	test	ebp, ebp
	mov	rbp, rbp
	mov	eax, 0x5f
	mov	rsp, rsp
	cmove	ebp, eax
.label_77:
	lea	rsi, [rsi]
	mov	esi, 2
	nop	
	jmp	.label_60
.label_612:
	nop	
	cmp	r10d, 0x45
	nop	
	je	.label_44
	mov	rbp, rbp
	mov	r11, qword ptr [rsp + 0x48]
	mov	rbp, rbp
	mov	edx, dword ptr [r11 + 0x10]
	cmp	edx, -1
	setl	r8b
	inc	edx
	mov	esi, 2
	lea	rdi, [rdi]
	jmp	.label_134
.label_613:
	xor	eax, eax
	mov	edx, dword ptr [rsp + 0x18]
	test	edx, edx
	cmovns	eax, edx
	lea	rdi, [rdi]
	movsxd	rcx, eax
	cmp	ecx, 1
	lea	rdi, [rdi]
	mov	r14d, 1
	cmova	r14, rcx
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rsp, rsp
	not	rcx
	lea	rdi, [rdi]
	cmp	r14, rcx
	jae	.label_47
	mov	rsp, rsp
	mov	r12, qword ptr [rsp + 0x70]
	lea	rsi, [rsi]
	test	r12, r12
	je	.label_91
	lea	rdi, [rdi]
	cmp	eax, 2
	jb	.label_84
	mov	rsp, rsp
	movsxd	rbx, edx
	lea	r15, [rbx - 1]
	cmp	ebp, 0x30
	nop	
	je	.label_170
	cmp	ebp, 0x2b
	nop	
	jne	.label_173
.label_170:
	lea	rdi, [rdi]
	test	r15, r15
	mov	rbp, rbp
	je	.label_84
	lea	rdi, [rdi]
	dec	rbx
	nop	word ptr cs:[rax + rax]
.label_183:
	mov	edi, 0x30
	mov	rsi, r12
	call	fputc
	mov	rbp, rbp
	dec	rbx
	mov	rsp, rsp
	jne	.label_183
	jmp	.label_84
.label_615:
	lea	rsi, [rsi]
	mov	r11, qword ptr [rsp + 0x48]
	mov	rbp, rbp
	imul	edx, dword ptr [r11 + 0x10], 0xb
	sar	edx, 5
	nop	
	inc	edx
	mov	esi, 1
	nop	
	xor	ebx, ebx
	xor	r9d, r9d
	xor	r8d, r8d
	nop	
	jmp	.label_53
.label_616:
	mov	rcx, qword ptr [rsp + 0x48]
	mov	rax, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0xd0], rax
	lea	rsi, [rsi]
	movups	xmm0, xmmword ptr [rcx]
	movups	xmm1, xmmword ptr [rcx + 0x10]
	movups	xmm2, xmmword ptr [rcx + 0x20]
	movaps	xmmword ptr [rsp + 0xc0], xmm2
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0xb0], xmm1
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0xa0], xmm0
	lea	rsi, [rsp + 0xa0]
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x4e0]
	call	mktime_z
	mov	rbp, rbp
	mov	rcx, rax
	nop	
	mov	r8, rcx
	shr	r8, 0x3f
	lea	rdi, [rdi]
	lea	r12, [rsp + 0x37]
	nop	
	je	.label_63
	nop	word ptr cs:[rax + rax]
.label_209:
	lea	rsi, [rsi]
	movabs	rdx, 0x6666666666666667
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	nop	
	shr	rax, 0x3f
	lea	rsi, [rsi]
	sar	rdx, 2
	mov	rsp, rsp
	lea	esi, [rdx + rax]
	add	esi, esi
	mov	rbp, rbp
	lea	esi, [rsi + rsi*4]
	nop	
	mov	edi, ecx
	sub	edi, esi
	lea	rsi, [rsi]
	add	rdx, rax
	mov	al, 0x30
	lea	rdi, [rdi]
	sub	al, dil
	lea	rsi, [rsi]
	mov	byte ptr [r12 - 1], al
	nop	
	dec	r12
	add	rcx, 9
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_209
	mov	rsp, rsp
	jmp	.label_58
	nop	word ptr cs:[rax + rax]
.label_63:
	nop	
	movabs	rdx, 0x6666666666666667
	nop	
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	shr	rax, 0x3f
	mov	rsp, rsp
	sar	rdx, 2
	lea	esi, [rdx + rax]
	add	esi, esi
	nop	
	lea	esi, [rsi + rsi*4]
	mov	edi, ecx
	sub	edi, esi
	add	rdx, rax
	add	dil, 0x30
	mov	byte ptr [r12 - 1], dil
	dec	r12
	add	rcx, 9
	mov	rsp, rsp
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_63
.label_58:
	mov	r10d, 1
	lea	rsi, [rsi]
	xor	r9d, r9d
	lea	rsi, [rsi]
	mov	edi, dword ptr [rsp + 0x18]
	jmp	.label_79
.label_617:
	xor	eax, eax
	mov	edx, dword ptr [rsp + 0x18]
	test	edx, edx
	cmovns	eax, edx
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	r14d, 1
	cmova	r14, rcx
	mov	rcx, qword ptr [rsp + 0x68]
	lea	rsi, [rsi]
	not	rcx
	cmp	r14, rcx
	jae	.label_47
	lea	rdi, [rdi]
	mov	r12, qword ptr [rsp + 0x70]
	mov	rsp, rsp
	test	r12, r12
	lea	rdi, [rdi]
	je	.label_91
	lea	rsi, [rsi]
	cmp	eax, 2
	jb	.label_97
	movsxd	rbx, edx
	lea	r15, [rbx - 1]
	cmp	ebp, 0x30
	je	.label_100
	cmp	ebp, 0x2b
	nop	
	jne	.label_104
.label_100:
	lea	rsi, [rsi]
	test	r15, r15
	je	.label_97
	dec	rbx
	nop	dword ptr [rax + rax]
.label_112:
	mov	edi, 0x30
	mov	rsi, r12
	call	fputc
	mov	rsp, rsp
	dec	rbx
	lea	rsi, [rsi]
	jne	.label_112
	jmp	.label_97
.label_618:
	lea	rsi, [rsi]
	mov	r11, qword ptr [rsp + 0x48]
	mov	rbp, rbp
	mov	eax, dword ptr [r11 + 0x18]
	nop	
	lea	edx, [rax + 6]
	nop	
	movsxd	rdx, edx
	mov	rsp, rsp
	imul	rsi, rdx, -0x6db6db6d
	mov	rsp, rsp
	shr	rsi, 0x20
	mov	rbp, rbp
	lea	eax, [rsi + rax + 6]
	mov	esi, eax
	shr	esi, 0x1f
	mov	rbp, rbp
	sar	eax, 2
	mov	rbp, rbp
	add	eax, esi
	nop	
	lea	esi, [rax*8]
	lea	rdi, [rdi]
	sub	esi, eax
	lea	rsi, [rsi]
	sub	edx, esi
	lea	rsi, [rsi]
	inc	edx
	mov	esi, 1
	lea	rdi, [rdi]
	jmp	.label_60
.label_619:
	lea	rdi, [rdi]
	cmp	r10d, 0x45
	je	.label_44
	mov	r11, qword ptr [rsp + 0x48]
	mov	edx, dword ptr [r11 + 0x18]
	lea	rsi, [rsi]
	mov	esi, 1
	lea	rsi, [rsi]
	jmp	.label_60
.label_620:
	cmp	r10d, 0x4f
	mov	rsp, rsp
	je	.label_44
	xor	r11d, r11d
	mov	r9b, 0x78
	jmp	.label_51
.label_621:
	cmp	r10d, 0x45
	nop	
	jne	.label_141
	nop	
	xor	r11d, r11d
	mov	r9b, 0x79
	mov	rbp, rbp
	jmp	.label_51
.label_190:
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x18], r9d
	nop	
	jmp	.label_44
.label_121:
	dec	r11d
	nop	
	mov	r14d, 0x16d
	mov	rbp, rbp
	test	r11b, 3
	jne	.label_154
	nop	
	movsxd	rax, r11d
	imul	rax, rax, 0x51eb851f
	mov	rsp, rsp
	mov	rsi, rax
	sar	rsi, 0x25
	mov	rdi, rax
	shr	rdi, 0x3f
	mov	rsp, rsp
	add	esi, edi
	imul	esi, esi, 0x64
	sar	rax, 0x27
	add	eax, edi
	lea	rsi, [rsi]
	imul	eax, eax, 0x190
	cmp	r11d, eax
	sete	al
	nop	
	movzx	eax, al
	add	eax, 0x16d
	cmp	r11d, esi
	mov	r14d, 0x16e
	cmove	r14d, eax
.label_154:
	lea	eax, [r14 + rbx + 0x17e]
	sub	eax, edx
	cdqe	
	nop	
	imul	rsi, rax, -0x6db6db6d
	mov	rsp, rsp
	shr	rsi, 0x20
	lea	rsi, [rsi]
	add	esi, eax
	mov	edi, esi
	shr	edi, 0x1f
	sar	esi, 2
	mov	rsp, rsp
	add	esi, edi
	lea	edi, [rsi*8]
	nop	
	sub	edi, esi
	nop	
	sub	eax, edi
	nop	
	lea	r12d, [r14 + rbx + 3]
	sub	r12d, eax
	mov	rsp, rsp
	mov	ebx, 0xffffffff
.label_151:
	cmp	r8d, 0x47
	lea	rdi, [rdi]
	je	.label_163
	lea	rdi, [rdi]
	cmp	r8d, 0x67
	mov	rbp, rbp
	jne	.label_114
	movsxd	rax, r9d
	mov	rsp, rsp
	imul	rax, rax, 0x51eb851f
	mov	rsp, rsp
	mov	rdx, rax
	mov	rbp, rbp
	shr	rdx, 0x3f
	lea	rsi, [rsi]
	sar	rax, 0x25
	add	eax, edx
	imul	eax, eax, 0x64
	lea	rdi, [rdi]
	mov	edx, r9d
	nop	
	sub	edx, eax
	mov	rbp, rbp
	add	edx, ebx
	nop	
	movsxd	rdx, edx
	imul	rax, rdx, 0x51eb851f
	mov	rsi, rax
	mov	rbp, rbp
	shr	rsi, 0x3f
	lea	rdi, [rdi]
	sar	rax, 0x25
	mov	rbp, rbp
	add	eax, esi
	lea	rsi, [rsi]
	imul	eax, eax, 0x64
	sub	edx, eax
	nop	
	mov	esi, 2
	mov	r11, qword ptr [rsp + 0x48]
	js	.label_169
	mov	rbp, rbp
	xor	r8d, r8d
	jmp	.label_46
.label_168:
	mov	rbp, qword ptr [rsp + 0x68]
	movabs	rdi, 0x1000000000002500
	lea	rdi, [rdi]
	jmp	.label_43
.label_135:
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0x48]
	movsxd	rax, dword ptr [r11 + 0x14]
	cmp	rax, -0x76c
	setl	r8b
	setg	bl
	imul	rdx, rax, 0x51eb851f
	mov	rsp, rsp
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x25
	add	edx, esi
	lea	rdi, [rdi]
	imul	esi, edx, 0x64
	cmp	eax, esi
	mov	rbp, rbp
	sets	al
	and	al, bl
	movzx	eax, al
	lea	rdi, [rdi]
	sub	edx, eax
	mov	rsp, rsp
	add	edx, 0x13
	nop	
	mov	esi, 2
	jmp	.label_46
.label_141:
	lea	rsi, [rsi]
	mov	r11, qword ptr [rsp + 0x48]
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [r11 + 0x14]
	imul	rdx, rax, 0x51eb851f
	lea	rsi, [rsi]
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x25
	lea	rsi, [rsi]
	add	edx, esi
	mov	rsp, rsp
	imul	esi, edx, 0x64
	nop	
	mov	edx, eax
	sub	edx, esi
	lea	rdi, [rdi]
	mov	esi, 2
	js	.label_207
	lea	rdi, [rdi]
	xor	r8d, r8d
	lea	rsi, [rsi]
	jmp	.label_46
.label_163:
	mov	eax, 0xfffff894
	sub	eax, ebx
	cmp	r9d, eax
	setl	r8b
	nop	
	lea	edx, [rbx + r9 + 0x76c]
	nop	
	mov	esi, 4
	mov	rbp, rbp
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_46
.label_114:
	movsxd	rax, r12d
	mov	rbp, rbp
	imul	rdx, rax, -0x6db6db6d
	mov	rbp, rbp
	shr	rdx, 0x20
	add	eax, edx
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rdi, [rdi]
	sar	edx, 2
	nop	
	shr	eax, 0x1f
	mov	rbp, rbp
	lea	edx, [rdx + rax + 1]
	mov	esi, 2
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_60
.label_117:
	xor	r11d, r11d
	lea	rdi, [rdi]
	mov	r9b, 0x59
.label_51:
	xor	edx, edx
	mov	rsp, rsp
	jmp	.label_147
.label_180:
	xor	ebx, ebx
	cmp	rcx, rax
	lea	rdi, [rdi]
	je	.label_76
	nop	dword ptr [rax + rax]
.label_82:
	mov	edi, 0x20
	mov	rsp, rsp
	mov	rsi, r12
	call	fputc
	lea	rsi, [rsi]
	inc	rbx
	cmp	rbx, r15
	lea	rdi, [rdi]
	jb	.label_82
.label_76:
	mov	qword ptr [rsp + 0x70], r12
	mov	rax, qword ptr [rsp + 0x78]
	mov	rbp, rbp
	test	al, al
	setne	al
	nop	
	mov	ecx, dword ptr [rsp + 0x4e8]
	mov	rsp, rsp
	mov	dword ptr [rsp + 8], ecx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x4e0]
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rcx
	movzx	ecx, al
	mov	rbp, rbp
	mov	rdi, r12
	nop	
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, rbp
	mov	r8d, ebp
	nop	
	mov	r9d, r14d
	lea	rdi, [rdi]
	call	__strftime_internal
	mov	rdi, qword ptr [rsp + 0x40]
.label_171:
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp + 0x68]
	add	rbp, rdi
	mov	rsp, rsp
	movabs	rdi, 0x1000000000002500
	mov	rsp, rsp
	jmp	.label_43
.label_177:
	mov	rdx, qword ptr [rsp + 0x88]
	movzx	edx, byte ptr [rdx]
	lea	rsi, [rsi]
	cmp	edx, 0x2d
	sete	r8b
.label_52:
	mov	rbp, rbp
	mov	r9, rsi
	lea	rdi, [rdi]
	cmp	r9, 3
	ja	.label_44
	movsxd	rdx, eax
	mov	rsp, rsp
	imul	rsi, rdx, -0x77777777
	shr	rsi, 0x20
	lea	rsi, [rsi]
	add	esi, eax
	mov	edi, esi
	shr	edi, 0x1f
	mov	rsp, rsp
	sar	esi, 5
	add	esi, edi
	imul	rdx, rdx, -0x6e5d4c3b
	shr	rdx, 0x20
	lea	rsi, [rsi]
	add	edx, eax
	mov	edi, edx
	nop	
	shr	edi, 0x1f
	sar	edx, 0xb
	mov	rbp, rbp
	add	edx, edi
	movsxd	rdi, esi
	imul	rsi, rdi, -0x77777777
	nop	
	shr	rsi, 0x20
	add	esi, edi
	mov	ebx, esi
	shr	ebx, 0x1f
	mov	rbp, rbp
	sar	esi, 5
	add	esi, ebx
	nop	
	imul	esi, esi, 0x3c
	nop	
	imul	ebx, edi, 0x3c
	sub	edi, esi
	nop	
	sub	eax, ebx
	jmp	qword ptr [word ptr [+ (r9 * 8) + label_119]]
.label_653:
	mov	rsp, rsp
	imul	edx, edx, 0x64
	add	edx, edi
	mov	rbp, rbp
	mov	esi, 5
.label_185:
	mov	rsp, rsp
	mov	r9b, 1
	lea	rsi, [rsi]
	xor	ebx, ebx
	nop	
	jmp	.label_53
.label_44:
	mov	qword ptr [rsp + 0x78], r15
	mov	rbp, rbp
	lea	rbx, [r13 + 1]
	xor	r14d, r14d
	nop	dword ptr [rax + rax]
.label_143:
	inc	r14
	nop	
	movzx	eax, byte ptr [rbx - 1]
	dec	rbx
	lea	rdi, [rdi]
	cmp	eax, 0x25
	mov	rbp, rbp
	jne	.label_143
	nop	
	mov	edx, dword ptr [rsp + 0x18]
	mov	rbp, rbp
	test	edx, edx
	mov	eax, edx
	mov	rsp, rsp
	mov	ecx, 0
	cmovs	eax, ecx
	lea	rdi, [rdi]
	cmp	r14d, eax
	mov	ecx, eax
	cmova	ecx, r14d
	mov	rsp, rsp
	movsxd	rsi, ecx
	mov	rcx, qword ptr [rsp + 0x68]
	not	rcx
	cmp	rsi, rcx
	jae	.label_47
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x58], rsi
	nop	
	mov	r12, qword ptr [rsp + 0x70]
	nop	
	test	r12, r12
	nop	
	je	.label_109
	movsxd	rcx, r14d
	mov	qword ptr [rsp + 0x40], rcx
	nop	
	cmp	r14d, eax
	mov	rsp, rsp
	mov	r15, r12
	mov	rbp, rbp
	jae	.label_153
	mov	rbp, rbp
	movsxd	r12, edx
	sub	r12, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	cmp	ebp, 0x30
	mov	rbp, rbp
	je	.label_155
	cmp	ebp, 0x2b
	jne	.label_159
.label_155:
	mov	rsp, rsp
	cmp	edx, r14d
	mov	rsp, rsp
	mov	ebp, 0
	mov	rbp, rbp
	je	.label_153
	nop	word ptr cs:[rax + rax]
.label_167:
	mov	edi, 0x30
	mov	rsi, r15
	call	fputc
	mov	rbp, rbp
	inc	rbp
	cmp	rbp, r12
	lea	rdi, [rdi]
	jb	.label_167
	lea	rsi, [rsi]
	jmp	.label_153
.label_159:
	lea	rdi, [rdi]
	cmp	edx, r14d
	mov	ebp, 0
	mov	rsp, rsp
	je	.label_153
.label_178:
	mov	edi, 0x20
	mov	rsi, r15
	mov	rsp, rsp
	call	fputc
	lea	rsi, [rsi]
	inc	rbp
	cmp	rbp, r12
	jb	.label_178
.label_153:
	mov	r12, r15
	mov	rax, qword ptr [rsp + 0x78]
	test	al, 1
	nop	
	jne	.label_179
	mov	edx, 1
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rcx, r12
	call	fwrite
	lea	rdi, [rdi]
	jmp	.label_109
.label_179:
	mov	rsp, rsp
	call	__ctype_toupper_loc
	lea	rdi, [rdi]
	mov	r15, rax
	movsxd	rbp, r14d
	neg	rbp
	nop	word ptr cs:[rax + rax]
.label_198:
	movzx	eax, byte ptr [rbx]
	mov	rcx, qword ptr [r15]
	mov	rsp, rsp
	mov	edi, dword ptr [rcx + rax*4]
	lea	rsi, [rsi]
	mov	rsi, r12
	mov	rbp, rbp
	call	fputc
	mov	rbp, rbp
	inc	rbx
	mov	rbp, rbp
	inc	rbp
	mov	rsp, rsp
	jne	.label_198
.label_109:
	mov	qword ptr [rsp + 0x70], r12
.label_158:
	mov	rbp, qword ptr [rsp + 0x68]
	mov	rsp, rsp
	add	rbp, qword ptr [rsp + 0x58]
	movabs	rdi, 0x1000000000002500
	lea	rdi, [rdi]
	jmp	.label_43
.label_78:
	xor	eax, eax
	mov	rbp, rbp
	add	r14d, -6
	lea	rdi, [rdi]
	cmovs	r14d, eax
	nop	
	mov	esi, OFFSET FLAT:.str.2_0
	lea	rdi, [rdi]
	jmp	.label_73
.label_110:
	lea	rsi, [rsi]
	mov	esi, 9
	mov	eax, dword ptr [rsp + 0x4e8]
	mov	edx, eax
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x18], 9
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_60
.label_169:
	mov	eax, 0xfffff894
	sub	eax, ebx
	mov	edi, edx
	neg	edi
	add	edx, 0x64
	lea	rsi, [rsi]
	cmp	r9d, eax
	jmp	.label_210
.label_207:
	mov	edi, edx
	mov	rsp, rsp
	neg	edi
	nop	
	add	edx, 0x64
	mov	rsp, rsp
	cmp	eax, 0xfffff894
.label_210:
	lea	rdi, [rdi]
	cmovl	edx, edi
	lea	rdi, [rdi]
	xor	r8d, r8d
.label_46:
	test	ebp, ebp
	cmove	ebp, dword ptr [rsp + 0x84]
	xor	ebx, ebx
	cmp	ebp, 0x2b
	lea	rdi, [rdi]
	mov	r9d, 0
	jne	.label_53
	lea	rsi, [rsi]
	mov	rdi, rsi
	lea	rdi, [rdi]
	cmp	edi, 2
	lea	rsi, [rsi]
	mov	eax, 0x63
	mov	esi, 0x270f
	nop	
	cmove	esi, eax
	cmp	esi, edx
	setb	al
	cmp	edi, dword ptr [rsp + 0x18]
	mov	rsi, rdi
	nop	
	setl	r9b
	mov	rsp, rsp
	or	r9b, al
	jmp	.label_53
.label_656:
	test	eax, eax
	je	.label_71
.label_655:
	imul	edx, edx, 0x2710
	imul	esi, edi, 0x64
	mov	rsp, rsp
	add	edx, eax
	add	edx, esi
	mov	rsp, rsp
	mov	esi, 9
	mov	r9b, 1
	lea	rdi, [rdi]
	mov	ebx, 0x14
	mov	rbp, rbp
	jmp	.label_53
.label_113:
	nop	
	mov	eax, dword ptr [rsp + 0x4e8]
.label_95:
	mov	edx, eax
	nop	
	mov	r11, qword ptr [rsp + 0x48]
.label_60:
	mov	r8d, edx
	lea	rdi, [rdi]
	shr	r8d, 0x1f
.label_134:
	xor	ebx, ebx
	lea	rsi, [rsi]
	xor	r9d, r9d
.label_53:
	nop	
	mov	qword ptr [rsp + 0x48], r11
	mov	rbp, rbp
	cmp	r10d, 0x4f
	mov	rsp, rsp
	jne	.label_87
	lea	rsi, [rsi]
	test	r8b, r8b
	lea	rdi, [rdi]
	jne	.label_87
	lea	rsi, [rsi]
	xor	r11d, r11d
	mov	rbp, rbp
	mov	r9b, cl
	mov	rdx, rsi
.label_147:
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x78], r11d
	mov	rbx, rdx
	mov	word ptr [rsp + 0x63], 0x2520
	lea	rsi, [rsi]
	test	r10d, r10d
	lea	rcx, [rsp + 0x65]
	je	.label_99
	mov	byte ptr [rsp + 0x65], r10b
	lea	rdi, [rdi]
	lea	rcx, [rsp + 0x66]
.label_99:
	mov	rbp, rbp
	mov	byte ptr [rcx], r9b
	mov	byte ptr [rcx + 1], 0
	lea	rdi, [rsp + 0xa0]
	lea	rdx, [rsp + 0x63]
	nop	
	mov	esi, 0x400
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x48]
	call	strftime
	mov	rsp, rsp
	test	rax, rax
	je	.label_85
	lea	rdi, [rdi]
	lea	r14, [rax - 1]
	xor	ecx, ecx
	nop	
	mov	edx, dword ptr [rsp + 0x18]
	test	edx, edx
	mov	rsp, rsp
	cmovns	ecx, edx
	movsxd	rdi, ecx
	nop	
	cmp	r14, rdi
	mov	rbp, rbp
	mov	rsi, r14
	cmovb	rsi, rdi
	mov	rcx, qword ptr [rsp + 0x68]
	not	rcx
	cmp	rsi, rcx
	jae	.label_47
	mov	qword ptr [rsp + 0x40], rax
	mov	qword ptr [rsp + 0x58], rsi
	lea	rsi, [rsi]
	mov	r12, qword ptr [rsp + 0x70]
	nop	
	test	r12, r12
	je	.label_66
	mov	rsp, rsp
	cmp	r14, rdi
	setae	al
	mov	rsp, rsp
	test	ebx, ebx
	mov	rbp, rbp
	jne	.label_130
	test	al, al
	jne	.label_130
	movsxd	rax, edx
	mov	rbx, rax
	sub	rbx, r14
	cmp	ebp, 0x30
	mov	rsp, rsp
	je	.label_136
	cmp	ebp, 0x2b
	mov	rsp, rsp
	jne	.label_186
.label_136:
	xor	ebp, ebp
	mov	rbp, rbp
	cmp	rax, r14
	je	.label_130
	nop	word ptr cs:[rax + rax]
.label_145:
	mov	edi, 0x30
	lea	rdi, [rdi]
	mov	rsi, r12
	call	fputc
	inc	rbp
	cmp	rbp, rbx
	lea	rdi, [rdi]
	jb	.label_145
	jmp	.label_130
.label_87:
	mov	rsp, rsp
	mov	eax, edx
	neg	eax
	test	r8b, r8b
	cmove	eax, edx
	mov	rsp, rsp
	lea	r12, [rsp + 0x37]
	mov	rbp, rbp
	mov	edi, dword ptr [rsp + 0x18]
	mov	r10, rsi
	nop	
.label_193:
	test	bl, 1
	je	.label_124
	lea	rdi, [rdi]
	mov	byte ptr [r12 - 1], 0x3a
	dec	r12
.label_124:
	sar	ebx, 1
	mov	edx, eax
	mov	ecx, 0xcccccccd
	lea	rdi, [rdi]
	imul	rcx, rdx
	mov	rbp, rbp
	shr	rcx, 0x23
	mov	rsp, rsp
	lea	edx, [rcx + rcx]
	nop	
	lea	edx, [rdx + rdx*4]
	mov	esi, eax
	sub	esi, edx
	or	esi, 0x30
	mov	byte ptr [r12 - 1], sil
	dec	r12
	cmp	eax, 9
	mov	eax, ecx
	mov	rbp, rbp
	ja	.label_193
	test	ebx, ebx
	mov	rbp, rbp
	mov	eax, ecx
	nop	
	jne	.label_193
.label_79:
	lea	rsi, [rsi]
	cmp	r10d, edi
	mov	rbp, rbp
	cmovl	r10d, edi
	test	r9b, r9b
	mov	rsp, rsp
	je	.label_157
	lea	rsi, [rsi]
	mov	r9b, 0x2b
.label_157:
	test	r8b, r8b
	mov	bl, 0x2d
	nop	
	jne	.label_162
	mov	bl, r9b
.label_162:
	lea	rdi, [rdi]
	cmp	ebp, 0x2d
	jne	.label_164
	nop	
	test	bl, bl
	je	.label_166
	mov	qword ptr [rsp + 0x78], r15
	mov	rbp, rbp
	xor	eax, eax
	test	edi, edi
	cmovns	eax, edi
	movsxd	rcx, eax
	mov	rsp, rsp
	cmp	ecx, 1
	mov	rsp, rsp
	mov	r14d, 1
	cmova	r14, rcx
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rsp, rsp
	not	rcx
	nop	
	cmp	r14, rcx
	nop	
	jae	.label_47
	cmp	qword ptr [rsp + 0x70], 0
	nop	
	je	.label_152
	mov	byte ptr [rsp + 0x40], bl
	mov	dword ptr [rsp + 0x18], edi
	mov	rsp, rsp
	cmp	eax, 2
	lea	rsi, [rsi]
	setb	al
	mov	rbp, rbp
	test	r10d, r10d
	mov	qword ptr [rsp + 0x58], r10
	mov	r15, qword ptr [rsp + 0x70]
	jne	.label_175
	mov	rsp, rsp
	test	al, al
	jne	.label_175
	nop	
	cmp	dword ptr [rsp + 0x18], 1
	je	.label_175
	movsxd	rbx, dword ptr [rsp + 0x18]
	dec	rbx
	nop	word ptr cs:[rax + rax]
.label_199:
	mov	edi, 0x20
	lea	rsi, [rsi]
	mov	rsi, r15
	call	fputc
	dec	rbx
	mov	rbp, rbp
	jne	.label_199
.label_175:
	mov	rbp, rbp
	movzx	edi, byte ptr [rsp + 0x40]
	lea	rsi, [rsi]
	mov	rsi, r15
	call	fputc
	mov	edi, dword ptr [rsp + 0x18]
	mov	rbp, rbp
	mov	r10, qword ptr [rsp + 0x58]
.label_152:
	mov	rdx, qword ptr [rsp + 0x68]
	add	rdx, r14
	jmp	.label_89
.label_85:
	mov	rbp, qword ptr [rsp + 0x68]
	movabs	rdi, 0x1000000000002500
	jmp	.label_43
.label_164:
	movsxd	rax, r10d
	mov	rcx, r12
	lea	rdx, [rsp + 0x37]
	mov	rbp, rbp
	sub	rcx, rdx
	mov	rsp, rsp
	mov	dl, bl
	lea	rsi, [rsi]
	neg	dl
	lea	rsi, [rsi]
	sbb	rsi, rsi
	add	rsi, rcx
	mov	rsp, rsp
	add	rsi, rax
	mov	rsp, rsp
	test	esi, esi
	nop	
	jle	.label_206
	mov	qword ptr [rsp + 0x78], r15
	lea	rsi, [rsi]
	cmp	ebp, 0x5f
	jne	.label_211
	movsxd	r15, esi
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x68]
	nop	
	not	rax
	mov	rsp, rsp
	cmp	r15, rax
	mov	rbp, rbp
	jae	.label_47
	mov	qword ptr [rsp + 0x38], rsi
	nop	
	mov	byte ptr [rsp + 0x40], bl
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x58], r10
	mov	dword ptr [rsp + 0x18], edi
	mov	rbx, qword ptr [rsp + 0x70]
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_54
	test	r15, r15
	nop	
	mov	r14d, 0
	je	.label_54
	nop	dword ptr [rax]
.label_69:
	nop	
	mov	edi, 0x20
	lea	rsi, [rsi]
	mov	rsi, rbx
	call	fputc
	mov	rbp, rbp
	inc	r14
	cmp	r14, r15
	jb	.label_69
.label_54:
	mov	rdx, qword ptr [rsp + 0x68]
	add	rdx, r15
	mov	eax, dword ptr [rsp + 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x38]
	sub	eax, ecx
	lea	rdi, [rdi]
	mov	esi, 0
	cmovg	esi, eax
	mov	al, byte ptr [rsp + 0x40]
	mov	rbp, rbp
	test	al, al
	je	.label_70
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	test	esi, esi
	lea	rdi, [rdi]
	cmovns	eax, esi
	movsxd	rcx, eax
	cmp	ecx, 1
	lea	rdi, [rdi]
	mov	edi, 1
	cmova	rdi, rcx
	mov	rcx, rdx
	mov	qword ptr [rsp + 0x68], rdx
	not	rcx
	cmp	rdi, rcx
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x58]
	jae	.label_47
	cmp	qword ptr [rsp + 0x70], 0
	lea	rdi, [rdi]
	je	.label_92
	mov	qword ptr [rsp + 0x38], rdi
	mov	qword ptr [rsp + 0x18], rsi
	lea	rdi, [rdi]
	cmp	eax, 2
	setb	al
	mov	rbp, rbp
	test	r10d, r10d
	mov	r14, qword ptr [rsp + 0x70]
	jne	.label_96
	mov	rsp, rsp
	test	al, al
	jne	.label_96
	mov	rax, qword ptr [rsp + 0x18]
	movsxd	r15, eax
	mov	rsp, rsp
	xor	ebx, ebx
	dec	r15
	lea	rdi, [rdi]
	je	.label_96
	nop	word ptr cs:[rax + rax]
.label_45:
	nop	
	mov	edi, 0x20
	lea	rdi, [rdi]
	mov	rsi, r14
	lea	rsi, [rsi]
	call	fputc
	mov	rsp, rsp
	inc	rbx
	cmp	rbx, r15
	mov	rsp, rsp
	jb	.label_45
.label_96:
	movzx	edi, byte ptr [rsp + 0x40]
	mov	rsi, r14
	call	fputc
	mov	r10, qword ptr [rsp + 0x58]
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 0x38]
.label_92:
	mov	rdx, qword ptr [rsp + 0x68]
	mov	rbp, rbp
	add	rdx, rdi
	lea	rsi, [rsi]
	mov	edi, esi
	jmp	.label_89
.label_166:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x78], r15
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x68]
	jmp	.label_89
.label_206:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x78], r15
	test	bl, bl
	nop	
	je	.label_126
	lea	rsi, [rsi]
	xor	eax, eax
	test	edi, edi
	lea	rsi, [rsi]
	cmovns	eax, edi
	mov	rbp, rbp
	movsxd	rcx, eax
	cmp	ecx, 1
	lea	rsi, [rsi]
	mov	esi, 1
	cmova	rsi, rcx
	mov	rcx, qword ptr [rsp + 0x68]
	not	rcx
	lea	rdi, [rdi]
	cmp	rsi, rcx
	jae	.label_47
	cmp	qword ptr [rsp + 0x70], 0
	je	.label_191
	mov	qword ptr [rsp + 0x38], rsi
	nop	
	mov	byte ptr [rsp + 0x40], bl
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x18], edi
	lea	rdi, [rdi]
	cmp	eax, 2
	lea	rdi, [rdi]
	setb	al
	lea	rdi, [rdi]
	test	r10d, r10d
	mov	qword ptr [rsp + 0x58], r10
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x70]
	jne	.label_142
	lea	rdi, [rdi]
	test	al, al
	mov	rsp, rsp
	jne	.label_142
	lea	rsi, [rsi]
	mov	rax, rsi
	mov	rsp, rsp
	movsxd	r15, dword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	lea	r14, [r15 - 1]
	cmp	ebp, 0x30
	je	.label_149
	mov	rbp, rbp
	cmp	ebp, 0x2b
	nop	
	jne	.label_132
.label_149:
	test	r14, r14
	lea	rdi, [rdi]
	mov	rsi, rax
	je	.label_142
	mov	rsp, rsp
	dec	r15
	nop	dword ptr [rax + rax]
.label_156:
	mov	rsp, rsp
	mov	edi, 0x30
	lea	rsi, [rsi]
	mov	rbx, rsi
	lea	rsi, [rsi]
	call	fputc
	mov	rsi, rbx
	lea	rsi, [rsi]
	dec	r15
	jne	.label_156
	jmp	.label_142
.label_211:
	mov	rcx, qword ptr [rsp + 0x68]
	not	rcx
	lea	rsi, [rsi]
	cmp	rax, rcx
	jae	.label_47
	mov	rsp, rsp
	test	bl, bl
	je	.label_213
	xor	eax, eax
	mov	rbp, rbp
	test	edi, edi
	lea	rsi, [rsi]
	cmovns	eax, edi
	movsxd	r8, eax
	lea	rdi, [rdi]
	cmp	r8d, 1
	nop	
	mov	edx, 1
	cmova	rdx, r8
	cmp	rdx, rcx
	jae	.label_47
	cmp	qword ptr [rsp + 0x70], 0
	mov	rbp, rbp
	je	.label_172
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x38], rsi
	mov	byte ptr [rsp + 0x40], bl
	cmp	eax, 2
	nop	
	setb	al
	test	r10d, r10d
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x58], r10
	mov	rsp, rsp
	mov	r14, qword ptr [rsp + 0x70]
	jne	.label_86
	nop	
	test	al, al
	mov	rsp, rsp
	jne	.label_86
	movsxd	rbx, edi
	nop	
	lea	r15, [rbx - 1]
	mov	rsp, rsp
	cmp	ebp, 0x30
	je	.label_188
	cmp	ebp, 0x2b
	mov	rbp, rbp
	jne	.label_102
.label_188:
	test	r15, r15
	je	.label_86
	dec	rbx
	nop	word ptr cs:[rax + rax]
.label_115:
	mov	edi, 0x30
	lea	rdi, [rdi]
	mov	rsi, r14
	call	fputc
	dec	rbx
	jne	.label_115
	mov	rbp, rbp
	jmp	.label_86
.label_186:
	mov	rbp, rbp
	xor	ebp, ebp
	cmp	rax, r14
	je	.label_130
	nop	word ptr [rax + rax]
.label_203:
	mov	edi, 0x20
	mov	rsp, rsp
	mov	rsi, r12
	lea	rdi, [rdi]
	call	fputc
	lea	rsi, [rsi]
	inc	rbp
	cmp	rbp, rbx
	jb	.label_203
.label_130:
	mov	eax, dword ptr [rsp + 0x78]
	test	al, 1
	jne	.label_204
	lea	rsi, [rsi]
	test	r15b, 1
	jne	.label_205
	lea	rsi, [rsi]
	mov	edx, 1
	lea	rdi, [rsp + 0xa1]
	mov	rsi, r14
	mov	rcx, r12
	call	fwrite
	jmp	.label_66
.label_204:
	mov	rsp, rsp
	test	r14, r14
	je	.label_66
	mov	rsp, rsp
	call	__ctype_tolower_loc
	lea	rsi, [rsi]
	mov	r14, rax
	mov	rbp, rbp
	mov	ebx, 1
	sub	rbx, qword ptr [rsp + 0x40]
	lea	rsi, [rsi]
	lea	rbp, [rsp + 0xa1]
	nop	word ptr cs:[rax + rax]
.label_61:
	movzx	eax, byte ptr [rbp]
	mov	rcx, qword ptr [r14]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rcx + rax*4]
	lea	rdi, [rdi]
	mov	rsi, r12
	call	fputc
	inc	rbp
	nop	
	inc	rbx
	mov	rbp, rbp
	jne	.label_61
	lea	rsi, [rsi]
	jmp	.label_66
.label_205:
	test	r14, r14
	lea	rsi, [rsi]
	je	.label_66
	mov	rbp, rbp
	call	__ctype_toupper_loc
	mov	r14, rax
	mov	ebx, 1
	mov	rbp, rbp
	sub	rbx, qword ptr [rsp + 0x40]
	lea	rbp, [rsp + 0xa1]
	nop	word ptr cs:[rax + rax]
.label_80:
	movzx	eax, byte ptr [rbp]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r14]
	mov	edi, dword ptr [rcx + rax*4]
	mov	rsi, r12
	call	fputc
	nop	
	inc	rbp
	inc	rbx
	mov	rbp, rbp
	jne	.label_80
.label_66:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x70], r12
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp + 0x68]
	add	rbp, qword ptr [rsp + 0x58]
	movabs	rdi, 0x1000000000002500
	jmp	.label_43
.label_126:
	mov	rdx, qword ptr [rsp + 0x68]
	lea	rdi, [rdi]
	jmp	.label_89
.label_70:
	lea	rsi, [rsi]
	mov	edi, esi
	mov	r10, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	jmp	.label_89
.label_125:
	xor	ebp, ebp
	cmp	rax, rbx
	lea	rsi, [rsi]
	je	.label_90
.label_103:
	mov	edi, 0x20
	lea	rdi, [rdi]
	mov	rsi, r14
	lea	rsi, [rsi]
	call	fputc
	inc	rbp
	cmp	rbp, r15
	jb	.label_103
.label_90:
	mov	rsp, rsp
	test	r12b, r12b
	je	.label_107
	test	rbx, rbx
	je	.label_67
	call	__ctype_tolower_loc
	mov	r15, rax
	mov	rbp, qword ptr [rsp + 0x88]
	nop	word ptr [rax + rax]
.label_118:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp]
	mov	rcx, qword ptr [r15]
	mov	edi, dword ptr [rcx + rax*4]
	lea	rsi, [rsi]
	mov	rsi, r14
	call	fputc
	inc	rbp
	dec	rbx
	nop	
	jne	.label_118
	mov	rsp, rsp
	jmp	.label_67
.label_107:
	nop	
	mov	rax, qword ptr [rsp + 0x78]
	nop	
	test	al, al
	lea	rsi, [rsi]
	je	.label_120
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_67
	nop	
	call	__ctype_toupper_loc
	lea	rsi, [rsi]
	mov	r15, rax
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x88]
	nop	
.label_129:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp]
	mov	rsp, rsp
	mov	rcx, qword ptr [r15]
	mov	edi, dword ptr [rcx + rax*4]
	mov	rsi, r14
	call	fputc
	inc	rbp
	nop	
	dec	rbx
	lea	rsi, [rsi]
	jne	.label_129
	jmp	.label_67
.label_173:
	test	r15, r15
	je	.label_84
	nop	
.label_137:
	mov	edi, 0x20
	mov	rsi, r12
	call	fputc
	dec	r15
	jne	.label_137
.label_84:
	lea	rdi, [rdi]
	mov	edi, 0xa
	jmp	.label_139
.label_104:
	test	r15, r15
	je	.label_97
	nop	word ptr cs:[rax + rax]
.label_150:
	mov	edi, 0x20
	lea	rdi, [rdi]
	mov	rsi, r12
	call	fputc
	dec	r15
	jne	.label_150
.label_97:
	lea	rdi, [rdi]
	mov	edi, 9
	jmp	.label_139
.label_132:
	test	r14, r14
	mov	rsi, rax
	nop	
	je	.label_142
.label_105:
	mov	edi, 0x20
	mov	rbx, rsi
	mov	rbp, rbp
	call	fputc
	nop	
	mov	rsi, rbx
	lea	rdi, [rdi]
	dec	r14
	nop	
	jne	.label_105
.label_142:
	mov	qword ptr [rsp + 0x70], rsi
	lea	rdi, [rdi]
	movzx	edi, byte ptr [rsp + 0x40]
	lea	rdi, [rdi]
	call	fputc
	mov	edi, dword ptr [rsp + 0x18]
	nop	
	mov	r10, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x38]
.label_191:
	mov	rdx, qword ptr [rsp + 0x68]
	nop	
	add	rdx, rsi
	mov	rbp, rbp
	jmp	.label_89
.label_120:
	lea	rsi, [rsi]
	mov	edx, 1
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x88]
	mov	rbp, rbp
	mov	rsi, rbx
	mov	rbp, rbp
	mov	rcx, r14
	mov	rsp, rsp
	call	fwrite
.label_67:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x70], r14
	jmp	.label_158
.label_71:
	nop	
	test	edi, edi
	je	.label_161
.label_654:
	imul	edx, edx, 0x64
	add	edx, edi
	mov	esi, 6
	mov	rsp, rsp
	mov	r9b, 1
	mov	ebx, 4
	mov	rbp, rbp
	jmp	.label_53
.label_102:
	mov	rsp, rsp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_86
.label_174:
	mov	rbp, rbp
	mov	edi, 0x20
	mov	rbp, rbp
	mov	rsi, r14
	call	fputc
	mov	rbp, rbp
	dec	r15
	jne	.label_174
.label_86:
	nop	
	mov	qword ptr [rsp + 0x70], r14
	movzx	edi, byte ptr [rsp + 0x40]
	mov	rsi, r14
	nop	
	call	fputc
	mov	r10, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 0x18]
.label_172:
	lea	rdi, [rdi]
	add	qword ptr [rsp + 0x68], rdx
.label_213:
	cmp	qword ptr [rsp + 0x70], 0
	movsxd	r14, esi
	je	.label_184
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x58], r10
	mov	rbp, rbp
	xor	ebx, ebx
	test	r14, r14
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x70]
	je	.label_187
	nop	word ptr cs:[rax + rax]
.label_196:
	mov	edi, 0x30
	lea	rsi, [rsi]
	mov	rsi, r15
	lea	rdi, [rdi]
	call	fputc
	lea	rdi, [rdi]
	inc	rbx
	mov	rsp, rsp
	cmp	rbx, r14
	jb	.label_196
	mov	rbx, r14
	jmp	.label_187
.label_184:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x58], r10
	mov	rbx, r14
	mov	r15, qword ptr [rsp + 0x70]
.label_187:
	mov	qword ptr [rsp + 0x70], r15
	nop	
	mov	rdx, qword ptr [rsp + 0x68]
	mov	rsp, rsp
	add	rdx, rbx
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	r10, qword ptr [rsp + 0x58]
.label_89:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x68], rdx
	lea	rdi, [rdi]
	lea	r15, [rsp + 0x37]
	sub	r15, r12
	nop	
	xor	eax, eax
	test	edi, edi
	cmovns	eax, edi
	cdqe	
	cmp	r15, rax
	mov	rbx, r15
	cmovb	rbx, rax
	mov	rbp, rbp
	mov	rcx, rdx
	lea	rdi, [rdi]
	not	rcx
	cmp	rbx, rcx
	lea	rsi, [rsi]
	jae	.label_47
	mov	r14, qword ptr [rsp + 0x70]
	lea	rdi, [rdi]
	test	r14, r14
	je	.label_122
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rbx
	lea	rsi, [rsi]
	cmp	r15, rax
	setae	al
	lea	rsi, [rsi]
	test	r10d, r10d
	jne	.label_57
	test	al, al
	jne	.label_57
	nop	
	movsxd	rax, edi
	mov	rbx, rax
	sub	rbx, r15
	nop	
	cmp	ebp, 0x30
	je	.label_50
	cmp	ebp, 0x2b
	jne	.label_55
.label_50:
	xor	ebp, ebp
	nop	
	cmp	rax, r15
	nop	
	je	.label_57
	nop	
.label_65:
	mov	rsp, rsp
	mov	edi, 0x30
	lea	rdi, [rdi]
	mov	rsi, r14
	lea	rdi, [rdi]
	call	fputc
	inc	rbp
	mov	rbp, rbp
	cmp	rbp, rbx
	jb	.label_65
	mov	rsp, rsp
	jmp	.label_57
.label_55:
	xor	ebp, ebp
	cmp	rax, r15
	lea	rdi, [rdi]
	je	.label_57
.label_197:
	mov	edi, 0x20
	mov	rsi, r14
	mov	rsp, rsp
	call	fputc
	lea	rdi, [rdi]
	inc	rbp
	mov	rbp, rbp
	cmp	rbp, rbx
	nop	
	jb	.label_197
.label_57:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x78]
	test	al, al
	je	.label_74
	mov	rbp, rbp
	lea	rax, [rsp + 0x37]
	lea	rdi, [rdi]
	cmp	rax, r12
	mov	rbx, qword ptr [rsp + 0x18]
	je	.label_122
	lea	rsi, [rsi]
	call	__ctype_toupper_loc
	mov	r15, rax
	mov	rax, qword ptr [rsp + 0x50]
	lea	rdi, [rdi]
	lea	rbp, [rax + r12]
	nop	word ptr [rax + rax]
.label_93:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [r12]
	mov	rcx, qword ptr [r15]
	nop	
	mov	edi, dword ptr [rcx + rax*4]
	mov	rsi, r14
	lea	rsi, [rsi]
	call	fputc
	lea	rdi, [rdi]
	inc	r12
	lea	rdi, [rdi]
	inc	rbp
	jne	.label_93
	lea	rdi, [rdi]
	jmp	.label_122
.label_74:
	mov	rbp, rbp
	mov	edx, 1
	nop	
	mov	rdi, r12
	mov	rsi, r15
	mov	rcx, r14
	call	fwrite
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 0x18]
.label_122:
	mov	qword ptr [rsp + 0x70], r14
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp + 0x68]
	add	rbp, rbx
	lea	rsi, [rsi]
	movabs	rdi, 0x1000000000002500
	mov	rbp, rbp
	jmp	.label_43
.label_208:
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_182
.label_200:
	mov	edi, 0x20
	mov	rsi, r12
	call	fputc
	dec	r15
	mov	rsp, rsp
	jne	.label_200
.label_182:
	movsx	edi, byte ptr [r13]
.label_139:
	nop	
	mov	rsi, r12
	lea	rsi, [rsi]
	call	fputc
.label_91:
	mov	rbp, qword ptr [rsp + 0x68]
	add	rbp, r14
	mov	rbp, rbp
	movabs	rdi, 0x1000000000002500
	nop	word ptr cs:[rax + rax]
.label_43:
	mov	al, byte ptr [r13 + 1]
	lea	rsi, [rsi]
	inc	r13
	mov	rsp, rsp
	mov	r9d, 0xffffffff
	test	al, al
	nop	
	jne	.label_83
	lea	rsi, [rsi]
	jmp	.label_127
.label_47:
	mov	rsp, rsp
	xor	ebp, ebp
.label_127:
	mov	rax, rbp
	lea	rdi, [rdi]
	add	rsp, 0x4a8
	mov	rsp, rsp
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4049d0
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
	je	.label_214
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
.label_214:
	mov	ebp,  dword ptr [dword ptr [rip + opterr]]
	mov	dword ptr [dword ptr [rip + opterr]],  0
	cmp	edi, 2
	jne	.label_216
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
	je	.label_215
	mov	rbp, rbp
	cmp	eax, 0x76
	mov	rbp, rbp
	jne	.label_216
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
.label_215:
	xor	edi, edi
	call	rbx
.label_216:
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
	#Procedure 0x404b10

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
	je	.label_218
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
.label_218:
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
	je	.label_221
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	cmp	eax, 0x68
	je	.label_217
	mov	rsp, rsp
	cmp	eax, 0x76
	nop	
	je	.label_219
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	lea	rdi, [rdi]
	jmp	.label_220
.label_217:
	lea	rdi, [rdi]
	xor	edi, edi
.label_220:
	call	rcx
.label_221:
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
.label_219:
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
	#Procedure 0x404c60

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
	je	.label_222
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
	jl	.label_224
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_224
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
	jne	.label_223
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_223:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_224:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_222:
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
	#Procedure 0x404d50
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
	#Procedure 0x404da0
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
	#Procedure 0x404dc0
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
	#Procedure 0x404de0
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
	#Procedure 0x404e50
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
	#Procedure 0x404e70
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
	je	.label_225
	test	rdx, rdx
	nop	
	je	.label_225
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_225:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404eb0
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
	#Procedure 0x404f60

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
	sub	rsp, 0xf8
	mov	ebx, r9d
	nop	
	mov	dword ptr [rsp + 0x24], ebx
	mov	r12d, r8d
	mov	r15, rcx
	mov	qword ptr [rsp + 0xe0], rdx
	mov	rbp, rbp
	mov	r13, rsi
	mov	qword ptr [rsp + 0xb8], rdi
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x140]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x98], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x138]
	mov	qword ptr [rsp + 0x18], rax
	call	__ctype_get_mb_cur_max
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xa8], rax
	mov	dl, bl
	mov	rbp, rbp
	shr	dl, 1
	mov	rbp, rbp
	and	dl, 1
	nop	
	mov	eax, ebx
	and	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x94], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x5c], ebx
	mov	rsp, rsp
	mov	r8b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x48], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x68], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xa0], rax
	mov	eax, 0
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xc8], rcx
.label_351:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r12d
	lea	rsi, [rsi]
	cmp	r12d, 0xa
	lea	rdi, [rdi]
	ja	.label_249
	mov	r9d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	r10, r15
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_234]]
.label_672:
	mov	r15d, edi
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.11_0
	nop	
	mov	esi, r12d
	mov	r14, r10
	nop	
	mov	r13b, r8b
	mov	bl, dl
	mov	rbp, rbp
	call	gettext_quote
	mov	qword ptr [rsp + 0x18], rax
	mov	edi, OFFSET FLAT:.str.12_0
	mov	rsp, rsp
	mov	esi, r12d
	call	gettext_quote
	mov	rsp, rsp
	mov	dl, bl
	mov	rsp, rsp
	mov	edi, r15d
	mov	r8b, r13b
	mov	r10, r14
	nop	
	mov	qword ptr [rsp + 0x98], rax
.label_673:
	nop	
	mov	qword ptr [rsp + 0xd8], r10
	mov	byte ptr [rsp + 0xf7], r8b
	mov	dword ptr [rsp + 0x38], edi
	test	dl, 1
	mov	rbp, rbp
	mov	r15b, dl
	mov	rbp, rbp
	mov	r14d, 0
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	jne	.label_285
	mov	al, byte ptr [rdx]
	test	al, al
	mov	r14d, 0
	je	.label_285
	xor	r14d, r14d
	nop	dword ptr [rax + rax]
.label_311:
	mov	rsp, rsp
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_303
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + r14], al
.label_303:
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + r14 + 1]
	mov	rsp, rsp
	inc	r14
	test	al, al
	mov	rbp, rbp
	jne	.label_311
.label_285:
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0x98]
	nop	
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	strlen
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xa0], rax
	mov	rbp, rbp
	mov	r9d, r12d
	mov	qword ptr [rsp + 0x68], rbx
	mov	r13b, 1
	mov	rbp, rbp
	mov	sil, r15b
	mov	r10, qword ptr [rsp + 0xd8]
	nop	
	mov	r8b, byte ptr [rsp + 0xf7]
	mov	edi, dword ptr [rsp + 0x38]
	mov	r11, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	jmp	.label_244
.label_665:
	xor	r9d, r9d
	xor	r14d, r14d
	mov	rbp, rbp
	mov	r13b, al
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_244
.label_668:
	lea	rsi, [rsi]
	mov	al, 1
.label_666:
	lea	rsi, [rsi]
	mov	dl, 1
.label_669:
	nop	
	test	dl, 1
	lea	rsi, [rsi]
	mov	cl, 1
	mov	rbp, rbp
	je	.label_337
	mov	rbp, rbp
	mov	cl, al
.label_337:
	mov	al, cl
.label_667:
	nop	
	mov	r9d, 2
	lea	rsi, [rsi]
	test	dl, 1
	mov	rsp, rsp
	jne	.label_341
	test	rbp, rbp
	je	.label_345
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx], 0x27
	mov	r14d, 1
	lea	rdi, [rdi]
	jmp	.label_237
.label_341:
	xor	r14d, r14d
	mov	rsp, rsp
	jmp	.label_237
.label_670:
	mov	rsp, rsp
	mov	r9d, 5
	test	dl, 1
	jne	.label_226
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_232
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0x22
	mov	r14d, 1
	jmp	.label_236
.label_671:
	mov	r13b, 1
	mov	rsp, rsp
	mov	r9d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:.str.10
	mov	qword ptr [rsp + 0x68], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xa0], rax
	mov	sil, 1
	lea	rsi, [rsi]
	jmp	.label_244
.label_345:
	mov	r14d, 1
	nop	word ptr cs:[rax + rax]
.label_237:
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0x68], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xa0], rcx
	nop	
	mov	r13b, al
	nop	
	mov	sil, dl
	jmp	.label_244
.label_226:
	mov	rbp, rbp
	xor	r14d, r14d
	jmp	.label_236
.label_232:
	nop	
	mov	r14d, 1
.label_236:
	mov	eax, OFFSET FLAT:.str.10
	mov	qword ptr [rsp + 0x68], rax
	mov	rbp, rbp
	mov	eax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xa0], rax
	lea	rdi, [rdi]
	mov	r13b, 1
	mov	sil, dl
	nop	word ptr cs:[rax + rax]
.label_244:
	mov	qword ptr [rsp + 0x28], rsi
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x46], r13b
	cmp	qword ptr [rsp + 0x130], 0
	mov	rbp, rbp
	setne	r12b
	mov	rbp, rbp
	cmp	r9d, 2
	nop	
	setne	r15b
	sete	al
	mov	cl, r13b
	mov	rsp, rsp
	and	cl, 1
	mov	byte ptr [rsp + 0x37], cl
	lea	rsi, [rsi]
	sete	byte ptr [rsp + 0xf6]
	mov	bl, r15b
	and	bl, cl
	mov	byte ptr [rsp + 0x83], bl
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0xa0], 0
	lea	rsi, [rsi]
	setne	cl
	mov	dl, cl
	lea	rsi, [rsi]
	and	dl, bl
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x56], dl
	mov	rbp, rbp
	mov	bl, sil
	and	bl, 1
	mov	byte ptr [rsp + 0xc6], bl
	sete	dl
	lea	rdi, [rdi]
	and	al, bl
	mov	byte ptr [rsp + 0x47], al
	and	r12b, bl
	mov	byte ptr [rsp + 0x57], r12b
	mov	rsp, rsp
	or	dl, r15b
	mov	byte ptr [rsp + 0xc7], dl
	and	r13b, sil
	mov	rbp, rbp
	and	r13b, cl
	mov	byte ptr [rsp + 0xb7], r13b
	mov	rsp, rsp
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_287
	nop	dword ptr [rax]
.label_282:
	mov	rsp, rsp
	inc	r15
.label_287:
	lea	rdi, [rdi]
	cmp	r10, -1
	lea	rsi, [rsi]
	je	.label_328
	cmp	r15, r10
	jne	.label_333
	jmp	.label_334
	nop	dword ptr [rax]
.label_328:
	mov	rcx, -1
	nop	
	cmp	byte ptr [r11 + r15], 0
	mov	rsp, rsp
	je	.label_335
.label_333:
	cmp	byte ptr [rsp + 0x56], 0
	nop	
	je	.label_274
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xa0]
	lea	rbx, [r15 + rax]
	mov	qword ptr [rsp + 0x88], r15
	lea	rsi, [rsi]
	cmp	rax, 2
	jb	.label_342
	lea	rdi, [rdi]
	cmp	r10, -1
	nop	
	jne	.label_342
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x38], edi
	mov	rdi, r11
	mov	r12b, r8b
	mov	r13, r9
	mov	r15, r14
	lea	rsi, [rsi]
	mov	r14, r11
	nop	
	call	strlen
	mov	rbp, rbp
	mov	r11, r14
	mov	r14, r15
	mov	rsp, rsp
	mov	edi, dword ptr [rsp + 0x38]
	mov	r9, r13
	mov	r8b, r12b
	mov	r10, rax
.label_342:
	mov	rsp, rsp
	cmp	rbx, r10
	lea	rdi, [rdi]
	jbe	.label_246
	mov	dword ptr [rsp + 0x84], 0
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x88]
	mov	rbp, rbp
	jmp	.label_248
	nop	dword ptr [rax]
.label_274:
	nop	
	mov	dword ptr [rsp + 0x84], 0
	lea	rsi, [rsi]
	jmp	.label_248
	nop	word ptr cs:[rax + rax]
.label_246:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x38], r14
	mov	r15d, edi
	lea	rdi, [rdi]
	mov	r13, r9
	mov	rsp, rsp
	mov	r12b, r8b
	lea	rsi, [rsi]
	mov	rbx, r10
	mov	rax, qword ptr [rsp + 0x88]
	lea	rdi, [r11 + rax]
	nop	
	mov	r14, r11
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x68]
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0xa0]
	call	memcmp
	lea	rsi, [rsi]
	test	eax, eax
	sete	al
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x84], eax
	mov	rsp, rsp
	jne	.label_284
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xc6], 0
	mov	rsp, rsp
	mov	r10, rbx
	nop	
	mov	r8b, r12b
	lea	rsi, [rsi]
	mov	r9, r13
	nop	
	mov	edi, r15d
	mov	rbp, rbp
	mov	r11, r14
	mov	r14, qword ptr [rsp + 0x38]
	nop	
	mov	r15, qword ptr [rsp + 0x88]
	je	.label_248
	jmp	.label_240
.label_284:
	mov	r10, rbx
	mov	r8b, r12b
	mov	r9, r13
	mov	edi, r15d
	lea	rsi, [rsi]
	mov	r11, r14
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp + 0x38]
	mov	r15, qword ptr [rsp + 0x88]
	nop	dword ptr [rax + rax]
.label_248:
	movzx	r12d, byte ptr [r11 + r15]
	cmp	r12, 0x7e
	ja	.label_316
	mov	rsp, rsp
	xor	edx, edx
	mov	rsp, rsp
	mov	r13b, 1
	mov	rbp, rbp
	mov	cl, 0x6e
	mov	rsp, rsp
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_318]]
.label_538:
	test	r15, r15
	jne	.label_286
	jmp	.label_323
.label_542:
	xor	eax, eax
	cmp	r10, -1
	je	.label_326
	test	r15, r15
	jne	.label_273
	nop	
	cmp	r10, 1
	je	.label_323
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_258
.label_531:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0x37], 0
	mov	rbp, rbp
	je	.label_347
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc6], 0
	nop	
	jne	.label_240
	nop	
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_339
	nop	
	mov	al, dil
	nop	
	and	al, 1
	jne	.label_339
	cmp	r14, rbp
	jae	.label_344
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_344:
	nop	
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	lea	rsi, [rsi]
	jae	.label_353
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x24
.label_353:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	lea	rsi, [rsi]
	jae	.label_231
	nop	
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_231:
	nop	
	add	r14, 3
	lea	rdi, [rdi]
	mov	dil, 1
.label_339:
	mov	rcx, r14
	nop	
	cmp	rcx, rbp
	mov	rsp, rsp
	jae	.label_245
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x5c
.label_245:
	lea	r14, [rcx + 1]
	mov	rbp, rbp
	mov	al, 1
	mov	r12b, 0x30
	cmp	r9d, 2
	je	.label_251
	lea	rdx, [r15 + 1]
	cmp	rdx, r10
	jae	.label_259
	nop	
	mov	dl, byte ptr [r11 + rdx]
	mov	rsp, rsp
	add	dl, 0xd0
	mov	rbp, rbp
	movzx	edx, dl
	cmp	edx, 9
	mov	rbp, rbp
	ja	.label_263
	mov	rsp, rsp
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_269
	mov	rdx, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rdx + r14], 0x30
.label_269:
	nop	
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_276
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rsi + rdx], 0x30
.label_276:
	add	rcx, 3
	xor	r13d, r13d
	lea	rdi, [rdi]
	mov	r14, rcx
	jmp	.label_258
.label_532:
	mov	bl, 0x62
	nop	
	jmp	.label_296
.label_533:
	mov	rsp, rsp
	mov	cl, 0x74
	lea	rsi, [rsi]
	jmp	.label_288
.label_534:
	mov	bl, 0x76
	mov	rbp, rbp
	jmp	.label_296
.label_535:
	lea	rdi, [rdi]
	mov	bl, 0x66
	jmp	.label_296
.label_536:
	mov	cl, 0x72
	lea	rdi, [rdi]
	jmp	.label_288
.label_539:
	nop	
	mov	al, 1
	mov	qword ptr [rsp + 0xc8], rax
	cmp	r9d, 2
	jne	.label_302
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xc6], 0
	nop	
	jne	.label_307
	nop	
	test	rbp, rbp
	sete	al
	mov	rcx, qword ptr [rsp + 0x48]
	mov	rdx, rcx
	mov	rsp, rsp
	test	rdx, rdx
	setne	cl
	lea	rsi, [rsi]
	or	cl, al
	mov	rbp, rbp
	cmove	rdx, rbp
	mov	qword ptr [rsp + 0x48], rdx
	mov	rsp, rsp
	mov	eax, 0
	cmove	rbp, rax
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_312
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_312:
	lea	rax, [r14 + 1]
	lea	rdi, [rdi]
	cmp	rax, rbp
	jae	.label_325
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x5c
.label_325:
	lea	rdi, [rdi]
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_332
	nop	
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_332:
	mov	rbp, rbp
	add	r14, 3
	lea	rdi, [rdi]
	xor	edi, edi
.label_302:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	r13b, 1
	jmp	.label_258
.label_540:
	lea	rdi, [rdi]
	cmp	r9d, 5
	je	.label_340
	mov	rbp, rbp
	cmp	r9d, 2
	jne	.label_286
	cmp	byte ptr [rsp + 0xc6], 0
	je	.label_286
	nop	
	jmp	.label_350
.label_541:
	mov	rsp, rsp
	cmp	r9d, 2
	nop	
	jne	.label_352
	cmp	byte ptr [rsp + 0xc6], 0
	je	.label_228
	jmp	.label_233
.label_316:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x38], edi
	mov	qword ptr [rsp + 0xd0], r9
	mov	byte ptr [rsp + 0xf7], r8b
	mov	qword ptr [rsp + 0x78], rbp
	cmp	qword ptr [rsp + 0xa8], 1
	lea	rsi, [rsi]
	jne	.label_271
	mov	rbp, rbp
	mov	rbx, r10
	mov	rbp, r11
	mov	rsp, rsp
	call	__ctype_b_loc
	mov	r11, rbp
	nop	
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r12*2]
	shr	r13d, 0xe
	mov	rsp, rsp
	and	r13b, 1
	lea	rdi, [rdi]
	mov	edx, 1
	lea	rsi, [rsi]
	jmp	.label_254
.label_326:
	lea	rdi, [rdi]
	test	r15, r15
	jne	.label_267
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_267
.label_323:
	mov	dl, 1
.label_537:
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_270
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r13b, dl
	lea	rdi, [rdi]
	jmp	.label_258
.label_347:
	cmp	dword ptr [rsp + 0x94], 0
	mov	rsp, rsp
	jne	.label_282
	jmp	.label_286
.label_352:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	cl, r12b
	je	.label_288
.label_228:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_290
.label_288:
	cmp	byte ptr [rsp + 0xc7], 0
	mov	rbp, rbp
	mov	bl, cl
	je	.label_295
.label_296:
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x37], 0
	mov	r13d, 0
	mov	rbp, rbp
	je	.label_258
	jmp	.label_300
.label_271:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x70], 0
	lea	rsi, [rsi]
	cmp	r10, -1
	lea	rbp, [rsp + 0x70]
	jne	.label_306
	mov	rdi, r11
	mov	rbx, r11
	nop	
	call	strlen
	lea	rdi, [rdi]
	mov	r11, rbx
	mov	r10, rax
.label_306:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd8], r10
	nop	
	mov	r13b, 1
	nop	
	cmp	byte ptr [rsp + 0x47], 0
	lea	rsi, [rsi]
	mov	edx, 0
	je	.label_317
	lea	rax, [r11 + r15]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xe8], rax
	lea	rsi, [rsi]
	mov	r13b, 1
	nop	
	xor	edx, edx
.label_309:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x88], rdx
	lea	rax, [rdx + r15]
	lea	rsi, [r11 + rax]
	mov	rsp, rsp
	mov	rdx, r10
	lea	rsi, [rsi]
	sub	rdx, rax
	lea	rdi, [rsp + 0x58]
	mov	rcx, rbp
	call	rpl_mbrtowc
	mov	rsp, rsp
	mov	rbx, rax
	cmp	rbx, -2
	lea	rdi, [rdi]
	je	.label_301
	mov	rsp, rsp
	cmp	rbx, -1
	movabs	rsi, 0x20000002b
	je	.label_297
	test	rbx, rbx
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0xd8]
	je	.label_305
	lea	rsi, [rsi]
	cmp	rbx, 2
	nop	
	mov	rbp, qword ptr [rsp + 0x78]
	jb	.label_348
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x88]
	mov	rcx, qword ptr [rsp + 0xe8]
	lea	rdi, [rdi]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax + rax]
.label_265:
	nop	
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	mov	rbp, rbp
	cmp	edx, 0x21
	mov	rbp, rbp
	ja	.label_239
	lea	rsi, [rsi]
	bt	rsi, rdx
	nop	
	jb	.label_242
.label_239:
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rbx
	jb	.label_265
.label_348:
	mov	edi, dword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	call	iswprint
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_253
	mov	rbp, rbp
	xor	r13d, r13d
.label_253:
	lea	rbp, [rsp + 0x70]
	nop	
	mov	rax, qword ptr [rsp + 0x88]
	lea	rdi, [rdi]
	add	rax, rbx
	mov	rdi, rbp
	nop	
	mov	rbx, rax
	call	mbsinit
	mov	rdx, rbx
	test	eax, eax
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rbp, rbp
	je	.label_309
	jmp	.label_241
	nop	
.label_317:
	mov	qword ptr [rsp + 0x88], rdx
	lea	rax, [rdx + r15]
	lea	rsi, [rsi]
	lea	rsi, [r11 + rax]
	mov	rdx, r10
	lea	rdi, [rdi]
	sub	rdx, rax
	mov	rsp, rsp
	lea	rdi, [rsp + 0x58]
	lea	rsi, [rsi]
	mov	rcx, rbp
	mov	rbp, rbp
	mov	rbx, rbp
	call	rpl_mbrtowc
	mov	rbp, rax
	lea	rdi, [rdi]
	test	rbp, rbp
	je	.label_293
	mov	rsp, rsp
	cmp	rbp, -1
	je	.label_297
	mov	rbp, rbp
	cmp	rbp, -2
	mov	rsp, rsp
	je	.label_301
	mov	edi, dword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	call	iswprint
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_308
	xor	r13d, r13d
.label_308:
	nop	
	mov	rax, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	add	rax, rbp
	mov	rsp, rsp
	mov	rbp, rbx
	lea	rsi, [rsi]
	mov	rdi, rbp
	mov	rbx, rax
	lea	rdi, [rdi]
	call	mbsinit
	mov	rdx, rbx
	test	eax, eax
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	mov	r10, qword ptr [rsp + 0xd8]
	je	.label_317
	lea	rsi, [rsi]
	jmp	.label_241
.label_267:
	lea	rdi, [rdi]
	mov	r10, -1
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_258
.label_340:
	cmp	dword ptr [rsp + 0x5c], 0
	lea	rdi, [rdi]
	je	.label_286
	lea	rcx, [r15 + 2]
	cmp	rcx, r10
	jae	.label_286
	movzx	eax, byte ptr [r15 + r11 + 1]
	mov	rsp, rsp
	cmp	eax, 0x3f
	jne	.label_286
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	nop	
	cmp	edx, 0x3e
	lea	rdi, [rdi]
	ja	.label_336
	movabs	rsi, 0x7000a38200000000
	mov	rbp, rbp
	bt	rsi, rdx
	lea	rsi, [rsi]
	jae	.label_338
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_327
	lea	rdi, [rdi]
	cmp	r14, rbp
	jae	.label_349
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x3f
.label_349:
	mov	rsp, rsp
	lea	rax, [r14 + 1]
	lea	rsi, [rsi]
	cmp	rax, rbp
	jae	.label_227
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], 0x22
.label_227:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_324
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rsi + rax], 0x22
.label_324:
	nop	
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_250
	nop	
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], 0x3f
.label_250:
	add	r14, 4
	xor	eax, eax
	nop	
	mov	r15, rcx
	mov	rsp, rsp
	mov	r12b, dl
	mov	rsp, rsp
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_258
.label_286:
	mov	rbp, rbp
	xor	eax, eax
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_258:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x83], 0
	je	.label_266
	cmp	qword ptr [rsp + 0x130], 0
	jne	.label_268
	nop	
	jmp	.label_281
	nop	dword ptr [rax + rax]
.label_266:
	cmp	byte ptr [rsp + 0x57], 0
	lea	rdi, [rdi]
	je	.label_281
.label_268:
	lea	rdi, [rdi]
	mov	cl, r12b
	lea	rdi, [rdi]
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	lea	rsi, [rsi]
	mov	cl, r12b
	shl	esi, cl
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x84]
	test	cl, cl
	jne	.label_277
	mov	rcx, qword ptr [rsp + 0x130]
	and	esi, dword ptr [rcx + rdx*4]
	mov	rbp, rbp
	jmp	.label_289
	nop	word ptr cs:[rax + rax]
.label_281:
	mov	ecx, dword ptr [rsp + 0x84]
	test	cl, cl
.label_289:
	mov	bl, r12b
	je	.label_290
	jmp	.label_300
.label_277:
	mov	bl, r12b
.label_300:
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_240
	cmp	r9d, 2
	jne	.label_304
	mov	al, dil
	and	al, 1
	jne	.label_304
	lea	rdi, [rdi]
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_310
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_310:
	nop	
	lea	rax, [r14 + 1]
	mov	rsp, rsp
	cmp	rax, rbp
	jae	.label_315
	mov	rcx, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_315:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_319
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_319:
	mov	rsp, rsp
	add	r14, 3
	mov	dil, 1
.label_304:
	mov	rbp, rbp
	cmp	r14, rbp
	mov	rbp, rbp
	jae	.label_322
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x5c
.label_322:
	mov	rbp, rbp
	inc	r14
	jmp	.label_330
.label_273:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_258
.label_251:
	xor	r13d, r13d
	jmp	.label_258
.label_259:
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_258
.label_263:
	mov	rsp, rsp
	xor	r13d, r13d
	jmp	.label_258
.label_297:
	xor	r13d, r13d
.label_293:
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rdx, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	jmp	.label_241
.label_301:
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x88]
	lea	rax, [rdx + r15]
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rbp, rbp
	cmp	rax, r10
	mov	r11, qword ptr [rsp + 0xe0]
	jae	.label_346
	lea	rax, [r11 + r15]
.label_238:
	mov	rbp, rbp
	cmp	byte ptr [rax + rdx], 0
	mov	rbp, rbp
	je	.label_262
	lea	rcx, [r15 + rdx + 1]
	inc	rdx
	cmp	rcx, r10
	lea	rdi, [rdi]
	jb	.label_238
	mov	rsp, rsp
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_241
.label_346:
	xor	r13d, r13d
	jmp	.label_241
.label_262:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_241
.label_305:
	lea	rsi, [rsi]
	mov	r11, qword ptr [rsp + 0xe0]
	nop	
	mov	rdx, qword ptr [rsp + 0x88]
.label_241:
	mov	rbp, rbp
	mov	rbx, r10
.label_254:
	mov	rsp, rsp
	and	r13b, 1
	lea	rdi, [rdi]
	mov	cl, r13b
	lea	rdi, [rdi]
	or	cl, byte ptr [rsp + 0xf6]
	cmp	rdx, 1
	mov	rbp, qword ptr [rsp + 0x78]
	mov	rsp, rsp
	mov	r8b, byte ptr [rsp + 0xf7]
	mov	rsp, rsp
	mov	r9, qword ptr [rsp + 0xd0]
	mov	edi, dword ptr [rsp + 0x38]
	ja	.label_256
	test	cl, cl
	je	.label_256
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_258
.label_256:
	mov	rsp, rsp
	add	rdx, r15
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x88], rdx
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_279
	nop	dword ptr [rax]
.label_247:
	nop	
	inc	r14
	mov	rbp, rbp
	mov	r12b, byte ptr [r11 + r15 + 1]
	nop	
	mov	r15, rdx
.label_279:
	mov	rsp, rsp
	test	cl, cl
	je	.label_291
	mov	edx, dword ptr [rsp + 0x84]
	test	dl, 1
	lea	rsi, [rsi]
	je	.label_294
	cmp	r14, rbp
	jae	.label_298
	nop	
	mov	rdx, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + r14], 0x5c
.label_298:
	inc	r14
	mov	dword ptr [rsp + 0x84], 0
.label_294:
	lea	rdi, [rdi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_230
	nop	dword ptr [rax + rax]
.label_291:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_313
	cmp	r9d, 2
	mov	rsp, rsp
	mov	r10, rbx
	jne	.label_272
	mov	rsp, rsp
	mov	al, dil
	lea	rsi, [rsi]
	and	al, 1
	jne	.label_272
	lea	rsi, [rsi]
	cmp	r14, rbp
	mov	rbp, rbp
	jae	.label_320
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_320:
	lea	rax, [r14 + 1]
	nop	
	cmp	rax, rbp
	jae	.label_280
	mov	rdx, qword ptr [rsp + 0xb8]
	nop	
	mov	byte ptr [rdx + rax], 0x24
.label_280:
	lea	rax, [r14 + 2]
	nop	
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_329
	mov	rdx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rdx + rax], 0x27
.label_329:
	lea	rsi, [rsi]
	add	r14, 3
	mov	rsp, rsp
	mov	dil, 1
.label_272:
	cmp	r14, rbp
	jae	.label_243
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x5c
.label_243:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_278
	mov	dl, r12b
	lea	rdi, [rdi]
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], dl
.label_278:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	mov	rsp, rsp
	jae	.label_331
	mov	dl, r12b
	shr	dl, 3
	and	dl, 7
	nop	
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb8]
	nop	
	mov	byte ptr [rsi + rax], dl
.label_331:
	nop	
	add	r14, 3
	mov	rsp, rsp
	and	r12b, 7
	or	r12b, 0x30
	mov	rbp, rbp
	mov	al, 1
.label_230:
	lea	rdx, [r15 + 1]
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x88], rdx
	lea	rsi, [rsi]
	jbe	.label_290
	mov	rbp, rbp
	test	dil, 1
	lea	rsi, [rsi]
	je	.label_261
	lea	rsi, [rsi]
	mov	bl, al
	and	bl, 1
	jne	.label_261
	nop	
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_299
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + r14], 0x27
.label_299:
	lea	rsi, [r14 + 1]
	lea	rsi, [rsi]
	cmp	rsi, rbp
	jae	.label_275
	mov	rdi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rdi + rsi], 0x27
.label_275:
	add	r14, 2
	mov	rsp, rsp
	xor	edi, edi
.label_261:
	nop	
	mov	rbx, r10
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_247
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rsi + r14], r12b
	jmp	.label_247
	nop	word ptr cs:[rax + rax]
.label_290:
	test	dil, 1
	je	.label_283
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_283
	nop	
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_292
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_292:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_255
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_255:
	lea	rdi, [rdi]
	add	r14, 2
	nop	
	xor	edi, edi
.label_283:
	lea	rsi, [rsi]
	mov	bl, r12b
.label_330:
	cmp	r14, rbp
	jae	.label_260
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rax + r14], bl
.label_260:
	inc	r14
	lea	rsi, [rsi]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	lea	rsi, [rsi]
	mov	r8b, r13b
	jmp	.label_282
.label_336:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_258
.label_338:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_258
	nop	word ptr [rax + rax]
.label_334:
	nop	
	mov	rcx, r15
.label_335:
	mov	rbp, rbp
	cmp	r9d, 2
	nop	
	setne	al
	mov	rbp, rbp
	test	r14, r14
	mov	rsp, rsp
	setne	dl
	cmp	byte ptr [rsp + 0xc6], 0
	lea	rsi, [rsi]
	je	.label_321
	mov	rsp, rsp
	or	al, dl
	je	.label_314
.label_321:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xe0], r11
	cmp	r9d, 2
	nop	
	setne	al
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xc6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xc8]
	lea	rsi, [rsi]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x46]
	nop	
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	je	.label_229
	mov	rsp, rsp
	or	al, dl
	jne	.label_229
	lea	rsi, [rsi]
	test	r8b, 1
	lea	rdi, [rdi]
	jne	.label_343
	cmp	qword ptr [rsp + 0x48], 0
	mov	rsp, rsp
	je	.label_229
	mov	rbp, rbp
	test	rbp, rbp
	mov	rbp, rbp
	mov	r12d, r9d
	mov	al, bl
	mov	r15, rcx
	lea	rsi, [rsi]
	mov	dl, sil
	mov	r13, qword ptr [rsp + 0x48]
	lea	rdi, [rdi]
	je	.label_351
.label_229:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x68]
	test	rdx, rdx
	je	.label_235
	nop	
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_235
	mov	rsp, rsp
	mov	al, byte ptr [rdx]
	lea	rsi, [rsi]
	test	al, al
	je	.label_235
	mov	rbp, rbp
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_257:
	cmp	r14, rbp
	jae	.label_252
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + r14], al
.label_252:
	mov	rbp, rbp
	inc	r14
	nop	
	mov	al, byte ptr [rdx]
	inc	rdx
	lea	rsi, [rsi]
	test	al, al
	jne	.label_257
.label_235:
	cmp	r14, rbp
	jae	.label_264
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rax + r14], 0
	jmp	.label_264
.label_270:
	lea	rdi, [rdi]
	mov	r9d, 2
	jmp	.label_240
.label_242:
	mov	r9d, 2
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	jmp	.label_240
.label_313:
	lea	rdi, [rdi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_240
.label_314:
	lea	rdi, [rdi]
	mov	r10, rcx
	mov	rsp, rsp
	jmp	.label_240
.label_295:
	nop	
	mov	r9d, 2
.label_240:
	cmp	byte ptr [rsp + 0x37], 0
	mov	r8d, 4
	mov	rbp, rbp
	cmove	r8d, r9d
	cmp	r9d, 2
	cmovne	r8d, r9d
	mov	r9d, dword ptr [rsp + 0x24]
	lea	rdi, [rdi]
	and	r9d, 0xfffffffd
	mov	rax, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x18]
	nop	
	mov	qword ptr [rsp + 8], rax
	mov	rsp, rsp
	mov	qword ptr [rsp], 0
	nop	
	mov	rdi, qword ptr [rsp + 0xb8]
	mov	rsi, rbp
	lea	rdi, [rdi]
	mov	rdx, r11
	nop	
	mov	rcx, r10
.label_354:
	call	quotearg_buffer_restyled
	lea	rdi, [rdi]
	mov	r14, rax
.label_264:
	lea	rdi, [rdi]
	mov	rax, r14
	lea	rdi, [rdi]
	add	rsp, 0xf8
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
.label_343:
	mov	rax, qword ptr [rsp + 0x98]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x130]
	nop	
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rsp + 0x24]
	jmp	.label_354
.label_307:
	mov	r9d, 2
	jmp	.label_240
.label_233:
	nop	
	mov	r9d, 2
	mov	rsp, rsp
	jmp	.label_240
.label_350:
	mov	r9d, 2
	mov	rbp, rbp
	jmp	.label_240
.label_327:
	mov	r9d, 5
	nop	
	jmp	.label_240
.label_249:
	lea	rsi, [rsi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406400
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
	#Procedure 0x406540
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
	je	.label_355
	mov	qword ptr [rax], rbx
.label_355:
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
	#Procedure 0x406690
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_356
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_360:
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
	jl	.label_360
.label_356:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_359
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_357]], OFFSET FLAT:slot0
.label_359:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_358
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_358:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406750
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x406760

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
	js	.label_364
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_366
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_363
.label_366:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_367
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
	jne	.label_362
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_362:
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
.label_363:
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
	ja	.label_361
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
	je	.label_365
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_365:
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
.label_361:
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
.label_364:
	lea	rdi, [rdi]
	call	abort
.label_367:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x4069d0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4069e0
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
	#Procedure 0x406a10
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
	#Procedure 0x406a40
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
	je	.label_368
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
.label_368:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406ad0
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
	je	.label_369
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
.label_369:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406b70
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
	je	.label_370
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
.label_370:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406c00
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
	je	.label_371
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
.label_371:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x406c70
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	rbp, rbp
	mov	r8, rsi
	mov	rbp, rbp
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_372]]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_373]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_374]]
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
	#Procedure 0x406d10
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	ecx, esi
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + label_372]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_373]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_374]]
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
	#Procedure 0x406db0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	sub	rsp, 0x38
	mov	rbp, rbp
	mov	rax, rdi
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + label_372]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_373]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_374]]
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
	#Procedure 0x406e20
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + label_372]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_373]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_374]]
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
	#Procedure 0x406e90

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
	je	.label_375
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
.label_375:
	lea	rsi, [rsi]
	call	abort
	.section	.text
	.align	32
	#Procedure 0x406f70
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	rax,  qword ptr [word ptr [rip + label_372]]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_373]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_374]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_376
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_376
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
.label_376:
	nop	
	call	abort
	.section	.text
	.align	32
	#Procedure 0x407000
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	mov	rsp, rsp
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_372]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_373]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_374]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_377
	test	rdx, rdx
	je	.label_377
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
.label_377:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407090
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	sub	rsp, 0x38
	mov	rsp, rsp
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_372]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_373]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_374]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0xa
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_378
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_378
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
.label_378:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407130
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_372]]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_373]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_374]]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_379
	test	rsi, rsi
	je	.label_379
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
.label_379:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4071d0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4071e0
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
	#Procedure 0x407200
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
	#Procedure 0x407220

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
	#Procedure 0x407250

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
	jne	.label_382
	mov	rsp, rsp
	call	locale_charset
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	mov	rsp, rsp
	je	.label_380
	nop	
	cmp	ecx, 0x55
	mov	rbp, rbp
	jne	.label_381
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_381
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	lea	rdi, [rdi]
	cmp	ecx, 0x46
	jne	.label_381
	movzx	ecx, byte ptr [rax + 3]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	jne	.label_381
	nop	
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	lea	rdi, [rdi]
	jne	.label_381
	cmp	byte ptr [rax + 5], 0
	lea	rdi, [rdi]
	jne	.label_381
	nop	
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	mov	rbp, rbp
	cmp	ecx, 0x60
	mov	rsp, rsp
	je	.label_382
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_382
.label_380:
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	nop	
	cmp	ecx, 0x42
	jne	.label_381
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 2]
	lea	rdi, [rdi]
	cmp	ecx, 0x31
	jne	.label_381
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	mov	rsp, rsp
	jne	.label_381
	movzx	ecx, byte ptr [rax + 4]
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	jne	.label_381
	movzx	ecx, byte ptr [rax + 5]
	lea	rsi, [rsi]
	cmp	ecx, 0x33
	lea	rsi, [rsi]
	jne	.label_381
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 6]
	mov	rbp, rbp
	cmp	ecx, 0x30
	nop	
	jne	.label_381
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 7], 0
	lea	rsi, [rsi]
	je	.label_383
.label_381:
	lea	rsi, [rsi]
	cmp	ebp, 9
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.10
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_382:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_383:
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	mov	rbp, rbp
	je	.label_382
	mov	eax, OFFSET FLAT:.str.18_0
	jmp	.label_382
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4073c0

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
	je	.label_384
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
	jmp	.label_386
.label_384:
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
.label_386:
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
	ja	.label_388
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_389]]
.label_635:
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
.label_388:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	jmp	.label_391
.label_636:
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
.label_637:
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
.label_638:
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
	jmp	.label_393
.label_639:
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
	jmp	.label_392
.label_640:
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
	jmp	.label_390
.label_641:
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
.label_390:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_392:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_393:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_387
.label_643:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_391:
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
	jmp	.label_385
.label_642:
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
.label_385:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_387:
	mov	rbp, rbp
	call	__fprintf_chk
.label_634:
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
	#Procedure 0x4077b0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_394:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_394
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4077e0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	nop	
	xor	r9d, r9d
	nop	dword ptr [rax + rax]
.label_398:
	lea	rdi, [rdi]
	cmp	r10d, 0x28
	ja	.label_395
	movsxd	r11, r10d
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	rbp, rbp
	mov	dword ptr [r8], r10d
	mov	rsp, rsp
	jmp	.label_397
	nop	word ptr cs:[rax + rax]
.label_395:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_397:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_396
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_398
.label_396:
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
	#Procedure 0x407870
	.globl version_etc
	.type version_etc, @function
version_etc:

	sub	rsp, 0x118
	test	al, al
	nop	
	je	.label_399
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
.label_399:
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
.label_401:
	lea	rdi, [rdi]
	cmp	r8d, 0x28
	ja	.label_400
	lea	rdi, [rdi]
	movsxd	r10, r8d
	mov	rbp, rbp
	add	r10, qword ptr [rsp + 0x110]
	add	r8d, 8
	mov	dword ptr [rsp + 0x100], r8d
	jmp	.label_402
	nop	dword ptr [rax + rax]
.label_400:
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x108]
	lea	rdi, [rdi]
	lea	rax, [r10 + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x108], rax
.label_402:
	mov	rbp, rbp
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_403
	inc	r9
	cmp	r9, 0xa
	jb	.label_401
.label_403:
	mov	rsp, rsp
	lea	r8, [rsp]
	mov	rbp, rbp
	call	version_etc_arn
	add	rsp, 0x118
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4079b0
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
	#Procedure 0x407a40
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
	jb	.label_404
	imul	rbx, rdi
	nop	
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_405
	test	rax, rax
	je	.label_404
.label_405:
	nop	
	pop	rbx
	ret	
.label_404:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407a90

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_406
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_407
.label_406:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_407:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407ac0
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
	jb	.label_409
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_408
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_408
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
	nop	
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_408:
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_410
	test	rax, rax
	je	.label_409
.label_410:
	mov	rsp, rsp
	pop	rbx
	ret	
.label_409:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407b40

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_411
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_411
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_411:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_412
	test	rax, rax
	nop	
	je	.label_413
.label_412:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_413:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407b90
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	nop	
	mov	rbx, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_418
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_414
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_420
.label_418:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_417
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_417:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_419
.label_420:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	rbx, rcx
	nop	
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_416
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_416
	lea	rsi, [rsi]
	call	free
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_416:
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	realloc
	test	rbx, rbx
	je	.label_415
	test	rax, rax
	mov	rbp, rbp
	je	.label_414
.label_415:
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	ret	
.label_414:
	call	xalloc_die
.label_419:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407c70
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_422
	test	rax, rax
	mov	rbp, rbp
	je	.label_421
.label_422:
	pop	rbx
	ret	
.label_421:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x407c90
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rsp, rsp
	mov	rax, qword ptr [rsi]
	nop	
	test	rdi, rdi
	je	.label_426
	movabs	rcx, 0x5555555555555554
	lea	rdi, [rdi]
	cmp	rax, rcx
	jae	.label_427
	mov	rbx, rax
	mov	rbp, rbp
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_425
	call	free
	xor	eax, eax
	jmp	.label_423
.label_426:
	mov	rbp, rbp
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	js	.label_424
	mov	rsp, rsp
	mov	qword ptr [rsi], rbx
.label_425:
	mov	rsi, rbx
	call	realloc
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_423
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_424
.label_423:
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_424:
	mov	rbp, rbp
	call	xalloc_die
.label_427:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407d20
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
	je	.label_428
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_429
.label_428:
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
.label_429:
	nop	
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407d80
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
	jb	.label_430
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_430
	pop	rcx
	ret	
.label_430:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x407db0

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
	je	.label_432
	mov	rbp, rbp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_431
.label_432:
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
.label_431:
	nop	
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407e10
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
	je	.label_433
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_434
.label_433:
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
.label_434:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x407e70

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
	#Procedure 0x407ec0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_435
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_436
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
	je	.label_436
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
.label_435:
	mov	ecx, 1
.label_436:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407f30

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
	js	.label_437
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_438
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
	je	.label_437
.label_438:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_437
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	test	ebp, ebp
	je	.label_439
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_439:
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_437:
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
	#Procedure 0x407fe0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_440
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_440
	test	byte ptr [rbx + 1], 1
	je	.label_440
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	nop	
	call	rpl_fseeko
.label_440:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408020

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
	jne	.label_441
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_441
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_442
.label_441:
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
.label_442:
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
	je	.label_443
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_443:
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
	#Procedure 0x4080d0

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
	je	.label_444
	nop	
	cmp	r15, -2
	jb	.label_444
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_444
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_444:
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
	#Procedure 0x408160
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
	jle	.label_445
	lea	rdi, [rdi]
	add	rax, rbx
	nop	word ptr cs:[rax + rax]
.label_446:
	mov	rbp, rbp
	movzx	ecx, byte ptr [rax - 1]
	nop	
	cmp	ecx, 0x20
	jne	.label_445
	mov	rbp, rbp
	mov	byte ptr [rax - 1], 0
	dec	rax
	cmp	rbx, rax
	mov	rbp, rbp
	jb	.label_446
.label_445:
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
	#Procedure 0x408200

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
	mov	r12d, ecx
	mov	qword ptr [rsp + 0x10], rdx
	mov	qword ptr [rsp + 8], rsi
	mov	rsp, rsp
	call	utmpxname
	call	setutxent
	lea	rsi, [rsi]
	call	getutxent
	mov	rbp, rbp
	mov	rbp, rax
	xor	ebx, ebx
	mov	rsp, rsp
	test	rbp, rbp
	mov	r13d, 0
	je	.label_449
	lea	rdi, [rdi]
	mov	r14d, r12d
	mov	rsp, rsp
	and	r14d, 2
	mov	rbp, rbp
	and	r12d, 1
	xor	ebx, ebx
	xor	r13d, r13d
	xor	r15d, r15d
.label_454:
	mov	rbp, rbp
	test	r14d, r14d
	mov	rbp, rbp
	jne	.label_458
	test	r12d, r12d
	je	.label_447
	nop	word ptr cs:[rax + rax]
.label_459:
	mov	rsp, rsp
	cmp	byte ptr [rbp + 0x2c], 0
	lea	rsi, [rsi]
	je	.label_447
	mov	rbp, rbp
	movzx	eax, word ptr [rbp]
	lea	rdi, [rdi]
	cmp	eax, 7
	jne	.label_447
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp + 4]
	test	edi, edi
	jle	.label_447
	mov	rbp, rbp
	xor	esi, esi
	lea	rsi, [rsi]
	call	kill
	test	eax, eax
	nop	
	jns	.label_447
	mov	rbp, rbp
	call	__errno_location
	cmp	dword ptr [rax], 3
	jne	.label_447
	lea	rdi, [rdi]
	call	getutxent
	lea	rdi, [rdi]
	mov	rbp, rax
	test	rbp, rbp
	lea	rdi, [rdi]
	jne	.label_459
	mov	rsp, rsp
	jmp	.label_449
	nop	word ptr cs:[rax + rax]
.label_458:
	lea	rsi, [rsi]
	test	r12d, r12d
	nop	
	jne	.label_448
	nop	dword ptr [rax]
.label_451:
	cmp	byte ptr [rbp + 0x2c], 0
	je	.label_455
	movzx	eax, word ptr [rbp]
	lea	rdi, [rdi]
	cmp	eax, 7
	lea	rdi, [rdi]
	je	.label_447
.label_455:
	lea	rdi, [rdi]
	call	getutxent
	lea	rdi, [rdi]
	mov	rbp, rax
	lea	rsi, [rsi]
	test	rbp, rbp
	jne	.label_451
	jmp	.label_449
.label_448:
	lea	rdi, [rdi]
	cmp	byte ptr [rbp + 0x2c], 0
	je	.label_453
	movzx	eax, word ptr [rbp]
	cmp	eax, 7
	jne	.label_453
	mov	rbp, rbp
	mov	edi, dword ptr [rbp + 4]
	test	edi, edi
	jle	.label_447
	xor	esi, esi
	mov	rsp, rsp
	call	kill
	mov	rsp, rsp
	test	eax, eax
	nop	
	jns	.label_447
	call	__errno_location
	nop	
	cmp	dword ptr [rax], 3
	jne	.label_447
.label_453:
	call	getutxent
	mov	rsp, rsp
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_448
	nop	
	jmp	.label_449
	nop	
.label_447:
	nop	
	cmp	rbx, r15
	jne	.label_457
	lea	rdi, [rdi]
	test	r13, r13
	mov	rbp, rbp
	je	.label_460
	mov	rsp, rsp
	movabs	rax, 0x38e38e38e38e38
	nop	
	cmp	rbx, rax
	lea	rsi, [rsi]
	jae	.label_450
	mov	rbp, rbp
	mov	rax, rbx
	nop	
	shr	rax, 1
	lea	r15, [rbx + rax + 1]
	jmp	.label_452
.label_460:
	mov	rbp, rbp
	test	rbx, rbx
	mov	r15, rbx
	mov	eax, 1
	lea	rdi, [rdi]
	cmove	r15, rax
	mov	rsp, rsp
	movabs	rax, 0x55555555555556
	mov	rsp, rsp
	cmp	r15, rax
	jae	.label_456
.label_452:
	mov	rax, r15
	shl	rax, 7
	mov	rbp, rbp
	lea	rsi, [rax + rax*2]
	lea	rdi, [rdi]
	mov	rdi, r13
	lea	rdi, [rdi]
	call	xrealloc
	mov	r13, rax
.label_457:
	lea	rdi, [rbx + rbx*2]
	inc	rbx
	mov	rbp, rbp
	shl	rdi, 7
	add	rdi, r13
	nop	
	mov	edx, 0x180
	lea	rsi, [rsi]
	mov	rsi, rbp
	mov	rsp, rsp
	call	memcpy
	call	getutxent
	nop	
	mov	rbp, rax
	lea	rdi, [rdi]
	test	rbp, rbp
	jne	.label_454
.label_449:
	call	endutxent
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], rbx
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax], r13
	xor	eax, eax
	mov	rsp, rsp
	add	rsp, 0x18
	mov	rbp, rbp
	pop	rbx
	pop	r12
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	pop	rbp
	nop	
	ret	
.label_450:
	call	xalloc_die
.label_456:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x4084b0
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
	je	.label_461
	mov	rbp, rbp
	mov	rdi, r14
	call	strlen
	nop	
	mov	r15, rax
	inc	r15
.label_461:
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
	je	.label_462
	mov	rsp, rsp
	mov	qword ptr [rbx], 0
	test	r14, r14
	lea	rdi, [rdi]
	setne	byte ptr [rbx + 8]
	nop	
	mov	byte ptr [rbx + 9], 0
	lea	rsi, [rsi]
	je	.label_462
	mov	r12, rbx
	mov	rbp, rbp
	add	r12, 9
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, r15
	lea	rsi, [rsi]
	call	memcpy
	mov	byte ptr [r12 + r15], 0
.label_462:
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
	#Procedure 0x408560
	.globl tzfree
	.type tzfree, @function
tzfree:

	lea	rdi, [rdi]
	push	rbx
	lea	rdi, [rdi]
	cmp	rdi, 2
	jb	.label_464
	nop	dword ptr [rax]
.label_463:
	mov	rbx, qword ptr [rdi]
	call	free
	test	rbx, rbx
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rbp, rbp
	jne	.label_463
.label_464:
	mov	rsp, rsp
	pop	rbx
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408590
	.globl localtime_rz
	.type localtime_rz, @function
localtime_rz:

	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	mov	rbp, rbp
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x18
	nop	
	mov	rbp, rsi
	lea	rsi, [rsi]
	mov	r15, rdi
	mov	rsp, rsp
	test	r15, r15
	mov	rbp, rbp
	je	.label_467
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rdx
	mov	edi, OFFSET FLAT:.str_7
	call	getenv
	mov	r13, rax
	test	r13, r13
	mov	bl, byte ptr [r15 + 8]
	nop	
	je	.label_477
	nop	
	mov	qword ptr [rsp + 0x10], rbp
	mov	rbp, rbp
	test	bl, bl
	je	.label_480
	nop	
	lea	rdi, [r15 + 9]
	lea	rdi, [rdi]
	mov	rsi, r13
	call	strcmp
	lea	rdi, [rdi]
	mov	r14d, 1
	test	eax, eax
	je	.label_479
.label_480:
	lea	rdi, [rdi]
	mov	rdi, r13
	mov	rbp, rbp
	call	strlen
	mov	rbp, rax
	mov	rbp, rbp
	inc	rbp
	nop	
	mov	r12b, 1
	lea	rsi, [rsi]
	jmp	.label_469
.label_467:
	lea	rdi, [rdi]
	mov	rdi, rbp
	mov	rsi, rdx
	lea	rdi, [rdi]
	add	rsp, 0x18
	mov	rbp, rbp
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	jmp	gmtime_r
.label_477:
	mov	qword ptr [rsp + 0x10], rbp
	nop	
	xor	r12d, r12d
	mov	r14d, 1
	nop	
	test	bl, bl
	mov	ebp, 0
	mov	rbp, rbp
	je	.label_479
.label_469:
	lea	rax, [rbp + 0x11]
	and	rax, 0xfffffffffffffff8
	lea	rsi, [rsi]
	cmp	rbp, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	mov	r14, rax
	test	r14, r14
	je	.label_468
	mov	rsp, rsp
	mov	qword ptr [r14], 0
	mov	byte ptr [r14 + 8], r12b
	lea	rsi, [rsi]
	mov	byte ptr [r14 + 9], 0
	test	r12b, r12b
	lea	rdi, [rdi]
	je	.label_472
	lea	rsi, [rsi]
	lea	r12, [r14 + 9]
	mov	rdi, r12
	mov	rsi, r13
	mov	rsp, rsp
	mov	rdx, rbp
	lea	rdi, [rdi]
	call	memcpy
	mov	rsp, rsp
	mov	byte ptr [r12 + rbp], 0
.label_472:
	test	bl, bl
	je	.label_482
	mov	rsp, rsp
	lea	rsi, [r15 + 9]
	mov	edi, OFFSET FLAT:.str_7
	mov	edx, 1
	mov	rsp, rsp
	call	setenv
	mov	rsp, rsp
	jmp	.label_465
.label_482:
	mov	edi, OFFSET FLAT:.str_7
	call	unsetenv
.label_465:
	lea	rdi, [rdi]
	test	eax, eax
	nop	
	je	.label_481
	call	__errno_location
	nop	
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	cmp	r14, 2
	jb	.label_470
	nop	dword ptr [rax + rax]
.label_475:
	mov	rbx, qword ptr [r14]
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	test	rbx, rbx
	mov	r14, rbx
	lea	rdi, [rdi]
	jne	.label_475
.label_470:
	lea	rdi, [rdi]
	mov	dword ptr [rbp], r15d
.label_468:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_476
.label_481:
	call	tzset
.label_479:
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rbx, qword ptr [rsp + 8]
	mov	rsi, rbx
	call	localtime_r
	mov	bpl, 1
	test	rax, rax
	mov	rbp, rbp
	mov	r12b, 1
	mov	rsp, rsp
	je	.label_485
	mov	rdi, r15
	mov	rsi, rbx
	nop	
	call	save_abbr
	lea	rdi, [rdi]
	mov	r12b, al
	xor	r12b, 1
.label_485:
	mov	rbp, rbp
	cmp	r14, 1
	je	.label_471
	lea	rdi, [rdi]
	call	__errno_location
	mov	r15, rax
	lea	rsi, [rsi]
	mov	r13d, dword ptr [r15]
	cmp	byte ptr [r14 + 8], 0
	mov	rbp, rbp
	je	.label_473
	lea	rsi, [r14 + 9]
	mov	edi, OFFSET FLAT:.str_7
	mov	edx, 1
	call	setenv
	jmp	.label_478
.label_473:
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str_7
	call	unsetenv
.label_478:
	test	eax, eax
	je	.label_484
	lea	rdi, [rdi]
	mov	r13d, dword ptr [r15]
	xor	ebp, ebp
	mov	rsp, rsp
	jmp	.label_483
.label_484:
	nop	
	call	tzset
	mov	bpl, 1
.label_483:
	mov	rsp, rsp
	cmp	r14, 2
	mov	rsp, rsp
	jb	.label_466
	nop	
.label_474:
	mov	rbp, rbp
	mov	rbx, qword ptr [r14]
	mov	rdi, r14
	call	free
	lea	rsi, [rsi]
	test	rbx, rbx
	mov	rbp, rbp
	mov	r14, rbx
	mov	rsp, rsp
	jne	.label_474
.label_466:
	mov	dword ptr [r15], r13d
	mov	rbx, qword ptr [rsp + 8]
.label_471:
	xor	eax, eax
	nop	
	xor	bpl, 1
	cmovne	rbx, rax
	test	r12b, r12b
	mov	rsp, rsp
	cmovne	rbx, rax
	mov	rsp, rsp
	mov	rax, rbx
.label_476:
	lea	rsi, [rsi]
	add	rsp, 0x18
	pop	rbx
	nop	
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x408870

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
	je	.label_490
	cmp	r15, rbx
	ja	.label_496
	nop	
	lea	rax, [r15 + 0x38]
	cmp	rbx, rax
	lea	rsi, [rsi]
	jb	.label_490
.label_496:
	mov	ebp, OFFSET FLAT:.str_0
	nop	
	cmp	byte ptr [rbx], 0
	je	.label_486
	lea	rbp, [r12 + 9]
	jmp	.label_488
.label_487:
	mov	rax, qword ptr [r12]
	lea	rbp, [rax + 9]
	test	rax, rax
	cmove	rbp, rcx
	mov	rbp, rbp
	cmovne	r12, rax
.label_488:
	lea	r13, [r12 + 9]
.label_498:
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	strcmp
	lea	rdi, [rdi]
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_486
	cmp	byte ptr [rbp], 0
	mov	rsp, rsp
	jne	.label_489
	lea	rsi, [rsi]
	cmp	rbp, r13
	jne	.label_491
	lea	rdi, [rdi]
	cmp	byte ptr [r12 + 8], 0
	je	.label_494
.label_489:
	mov	rbp, rbp
	mov	rdi, rbp
	call	strlen
	nop	
	lea	rcx, [rax + rbp + 1]
	lea	rsi, [rsi]
	cmp	byte ptr [rax + rbp + 1], 0
	mov	rbp, rcx
	jne	.label_498
	lea	rdi, [rdi]
	jmp	.label_487
.label_494:
	lea	rdi, [rdi]
	mov	rbp, r13
.label_491:
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
	jbe	.label_495
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0xc
.label_493:
	xor	r14d, r14d
	jmp	.label_490
.label_495:
	add	rcx, rdx
	mov	rbp, rbp
	cmp	rcx, 0x76
	ja	.label_492
	nop	
	mov	rdi, rbp
	mov	rsi, rbx
	lea	rdi, [rdi]
	mov	rbx, rdx
	call	memcpy
	mov	byte ptr [rbp + rbx], 0
	mov	qword ptr [r15 + 0x30], rbp
	jmp	.label_490
.label_492:
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
	je	.label_497
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
.label_486:
	mov	qword ptr [r15 + 0x30], rbp
.label_490:
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
.label_497:
	mov	qword ptr [r12], 0
	jmp	.label_493
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408a70

	.globl mktime_z
	.type mktime_z, @function
mktime_z:
	nop	
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r13
	nop	
	push	r12
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x48
	mov	rbx, rdi
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_502
	mov	qword ptr [rsp + 0x40], rsi
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str_7
	call	getenv
	mov	r13, rax
	lea	rsi, [rsi]
	test	r13, r13
	mov	rsp, rsp
	mov	r12b, byte ptr [rbx + 8]
	mov	rbp, rbp
	je	.label_504
	test	r12b, r12b
	nop	
	je	.label_509
	lea	rdi, [rbx + 9]
	mov	rsi, r13
	lea	rdi, [rdi]
	call	strcmp
	lea	rdi, [rdi]
	mov	r15d, 1
	mov	rsp, rsp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_501
.label_509:
	lea	rsi, [rsi]
	mov	rdi, r13
	mov	rsp, rsp
	call	strlen
	mov	rbp, rbp
	mov	rbp, rax
	inc	rbp
	lea	rsi, [rsi]
	mov	r14b, 1
	jmp	.label_518
.label_502:
	nop	
	mov	rdi, rsi
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	jmp	timegm
.label_504:
	nop	
	xor	r14d, r14d
	lea	rdi, [rdi]
	mov	r15d, 1
	lea	rsi, [rsi]
	test	r12b, r12b
	mov	ebp, 0
	mov	rsp, rsp
	je	.label_501
.label_518:
	lea	rdi, [rdi]
	lea	rax, [rbp + 0x11]
	and	rax, 0xfffffffffffffff8
	cmp	rbp, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	lea	rdi, [rdi]
	call	malloc
	mov	r15, rax
	lea	rdi, [rdi]
	mov	rax, -1
	lea	rdi, [rdi]
	test	r15, r15
	je	.label_506
	nop	
	mov	qword ptr [r15], 0
	lea	rdi, [rdi]
	mov	byte ptr [r15 + 8], r14b
	mov	byte ptr [r15 + 9], 0
	test	r14b, r14b
	mov	rbp, rbp
	je	.label_520
	lea	r14, [r15 + 9]
	mov	rsp, rsp
	mov	rdi, r14
	mov	rsp, rsp
	mov	rsi, r13
	mov	rdx, rbp
	lea	rdi, [rdi]
	call	memcpy
	mov	byte ptr [r14 + rbp], 0
.label_520:
	mov	rbp, rbp
	test	r12b, r12b
	nop	
	je	.label_508
	lea	rsi, [rbx + 9]
	mov	edi, OFFSET FLAT:.str_7
	mov	edx, 1
	call	setenv
	jmp	.label_512
.label_508:
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str_7
	call	unsetenv
.label_512:
	mov	rbp, rbp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_514
	call	__errno_location
	mov	rbp, rax
	mov	rbp, rbp
	mov	r14d, dword ptr [rbp]
	mov	rsp, rsp
	cmp	r15, 2
	jb	.label_516
	nop	word ptr cs:[rax + rax]
.label_503:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [r15]
	mov	rbp, rbp
	mov	rdi, r15
	nop	
	call	free
	test	rbx, rbx
	mov	r15, rbx
	jne	.label_503
.label_516:
	mov	dword ptr [rbp], r14d
	mov	rbp, rbp
	mov	rax, -1
	lea	rdi, [rdi]
	jmp	.label_506
.label_514:
	call	tzset
.label_501:
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	mov	rdi, rbp
	call	mktime
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x38], rax
	cmp	rax, -1
	mov	rbp, rbp
	jne	.label_513
	mov	rbp, rbp
	lea	rdi, [rsp + 0x38]
	lea	rsi, [rsp]
	nop	
	call	localtime_r
	mov	rbp, rbp
	test	rax, rax
	je	.label_499
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	xor	rax, qword ptr [rbp]
	mov	rsp, rsp
	xor	rcx, qword ptr [rbp + 8]
	lea	rdi, [rdi]
	mov	edx, ecx
	nop	
	or	edx, eax
	shr	rax, 0x20
	mov	rbp, rbp
	or	edx, eax
	lea	rdi, [rdi]
	shr	rcx, 0x20
	nop	
	mov	rax, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	xor	rax, qword ptr [rbp + 0x10]
	nop	
	mov	esi, eax
	or	esi, ecx
	mov	rbp, rbp
	or	esi, edx
	shr	rax, 0x20
	or	eax, esi
	mov	rsp, rsp
	mov	edi, dword ptr [rbp + 0x20]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	test	edi, edi
	sete	sil
	test	edx, edx
	mov	rsp, rsp
	sete	cl
	xor	cl, sil
	or	edx, edi
	mov	rbp, rbp
	setns	dl
	and	dl, cl
	lea	rdi, [rdi]
	movzx	ecx, dl
	nop	
	or	ecx, eax
	jne	.label_499
.label_513:
	nop	
	mov	rdi, rbx
	mov	rsp, rsp
	mov	rsi, rbp
	nop	
	call	save_abbr
	test	al, al
	jne	.label_499
	mov	qword ptr [rsp + 0x38], -1
.label_499:
	cmp	r15, 1
	je	.label_505
	call	__errno_location
	lea	rdi, [rdi]
	mov	r14, rax
	mov	rbp, rbp
	mov	r12d, dword ptr [r14]
	lea	rdi, [rdi]
	cmp	byte ptr [r15 + 8], 0
	lea	rsi, [rsi]
	je	.label_507
	lea	rsi, [r15 + 9]
	mov	edi, OFFSET FLAT:.str_7
	mov	edx, 1
	call	setenv
	jmp	.label_515
.label_507:
	mov	edi, OFFSET FLAT:.str_7
	mov	rsp, rsp
	call	unsetenv
.label_515:
	nop	
	test	eax, eax
	mov	rbp, rbp
	je	.label_517
	mov	r12d, dword ptr [r14]
	xor	ebp, ebp
	lea	rsi, [rsi]
	jmp	.label_519
.label_517:
	call	tzset
	mov	bpl, 1
.label_519:
	lea	rsi, [rsi]
	cmp	r15, 2
	jb	.label_511
	nop	word ptr cs:[rax + rax]
.label_500:
	mov	rsp, rsp
	mov	rbx, qword ptr [r15]
	mov	rsp, rsp
	mov	rdi, r15
	call	free
	lea	rsi, [rsi]
	test	rbx, rbx
	mov	r15, rbx
	jne	.label_500
.label_511:
	mov	dword ptr [r14], r12d
	test	bpl, bpl
	je	.label_510
.label_505:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x38]
	mov	rsp, rsp
	jmp	.label_506
.label_510:
	nop	
	mov	rax, -1
.label_506:
	mov	rbp, rbp
	add	rsp, 0x48
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408e00

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
	jne	.label_521
	mov	rbp, rbp
	test	eax, eax
	nop	
	sete	cl
	neg	eax
	mov	rbp, rbp
	sbb	ebx, ebx
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_522
	test	cl, cl
	mov	rsp, rsp
	jne	.label_522
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	nop	
	mov	ebx, 0xffffffff
	lea	rsi, [rsi]
	cmove	ebx, ecx
	jmp	.label_522
.label_521:
	mov	ebx, 0xffffffff
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_522
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
.label_522:
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
	#Procedure 0x408e90

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
	je	.label_524
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_523
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_525
.label_523:
	nop	
	mov	esi, OFFSET FLAT:.str.1_5
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_524
.label_525:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_524:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x408ee0

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
	je	.label_526
	nop	
	mov	rax, rcx
.label_526:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section .text
	.align	32
	#Procedure 0x408f20

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