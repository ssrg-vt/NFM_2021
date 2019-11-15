	.section	.text
	.align	32
	#Procedure 0x401ae0

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
	call	emit_ancillary_info
	nop	
	mov	edi, ebp
	lea	rsi, [rsi]
	call	exit
.label_7:
	mov	rsp, rsp
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rdx, rax
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	lea	rsi, [rsi]
	mov	esi, 1
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, ebp
	call	exit
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c70

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	mov	rbp, rbp
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:.str.18_0
	nop	word ptr cs:[rax + rax]
.label_8:
	mov	edi, OFFSET FLAT:.str.9
	lea	rdi, [rdi]
	call	strcmp
	test	eax, eax
	nop	
	je	.label_10
	nop	
	mov	rsi, qword ptr [rbx + 0x10]
	lea	rdi, [rdi]
	add	rbx, 0x10
	test	rsi, rsi
	mov	rsp, rsp
	jne	.label_8
.label_10:
	nop	
	mov	rax, qword ptr [rbx + 8]
	lea	rsi, [rsi]
	test	rax, rax
	mov	rbp, rbp
	mov	ebx, OFFSET FLAT:.str.9
	cmovne	rbx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.26
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsp, rsp
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str.18
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	mov	rsp, rsp
	call	setlocale
	test	rax, rax
	nop	
	je	.label_9
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.28
	mov	edx, 3
	mov	rdi, rax
	mov	rsp, rsp
	call	strncmp
	test	eax, eax
	mov	rbp, rbp
	je	.label_9
	nop	
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.29
	lea	rdi, [rdi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_9:
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.30
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi, rax
	nop	
	mov	r14d, OFFSET FLAT:.str.9
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.9
	mov	rsp, rsp
	xor	eax, eax
	nop	
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.31
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	nop	
	mov	rdx, rax
	cmp	rbx, r14
	lea	rdi, [rdi]
	mov	eax, OFFSET FLAT:.str.32
	mov	ecx, OFFSET FLAT:.str_0
	cmove	rcx, rax
	lea	rsi, [rsi]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rdx
	mov	rdx, rbx
	lea	rdi, [rdi]
	add	rsp, 8
	nop	
	pop	rbx
	nop	
	pop	r14
	nop	
	jmp	__printf_chk
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e00

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
	je	.label_13
	lea	rsi, [rsi]
	test	ebp, ebp
	lea	rsi, [rsi]
	jne	.label_11
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.5
	mov	esi, 1
	mov	rsp, rsp
	jmp	.label_12
.label_13:
	mov	rdi, qword ptr [rbx + rax*8]
	lea	rdi, [rdi]
	xor	esi, esi
.label_12:
	call	uptime
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	add	rsp, 0x28
	pop	rbx
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_11:
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
	#Procedure 0x401f60

	.globl uptime
	.type uptime, @function
uptime:
	nop	
	push	rbp
	lea	rsi, [rsi]
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x18
	mov	eax, esi
	mov	rsp, rsp
	mov	rbx, rdi
	mov	qword ptr [rsp + 8], 0
	lea	rsi, [rsp + 0x10]
	lea	rdx, [rsp + 8]
	mov	ecx, eax
	lea	rdi, [rdi]
	call	read_utmp
	mov	rbp, rbp
	test	eax, eax
	jne	.label_14
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 8]
	mov	rsp, rsp
	call	print_uptime
	add	rsp, 0x18
	nop	
	pop	rbx
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_14:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	mov	rbp, rbp
	call	quotearg_n_style_colon
	nop	
	mov	rcx, rax
	mov	edi, 1
	nop	
	mov	edx, OFFSET FLAT:.str_1
	lea	rsi, [rsi]
	xor	eax, eax
	mov	esi, ebp
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402000

	.globl print_uptime
	.type print_uptime, @function
print_uptime:
	push	rbp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r13
	nop	
	push	r12
	push	rbx
	nop	
	sub	rsp, 0x2048
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	rbp, rbp
	mov	rbp, rdi
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.34
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.35
	call	fopen
	mov	r14, rax
	mov	rsp, rsp
	xor	r13d, r13d
	lea	rdi, [rdi]
	test	r14, r14
	je	.label_23
	nop	
	lea	r15, [rsp + 0x20]
	mov	esi, 0x2000
	lea	rdi, [rdi]
	mov	rdi, r15
	mov	rdx, r14
	lea	rdi, [rdi]
	call	fgets_unlocked
	lea	rdi, [rdi]
	xor	r13d, r13d
	cmp	rax, r15
	mov	rsp, rsp
	jne	.label_19
	mov	rsp, rsp
	lea	rsi, [rsp + 0x18]
	lea	rdi, [rdi]
	mov	rdi, r15
	lea	rdi, [rdi]
	call	c_strtod
	xor	r13d, r13d
	nop	
	cmp	r15, qword ptr [rsp + 0x18]
	je	.label_19
	mov	rsp, rsp
	movsd	xmm1,  qword ptr [word ptr [rip + label_21]]
	lea	rdi, [rdi]
	ucomisd	xmm1, xmm0
	cvttsd2si	r13, xmm0
	mov	rsp, rsp
	mov	rax, -1
	cmovbe	r13, rax
	xorpd	xmm1, xmm1
	ucomisd	xmm0, xmm1
	cmovb	r13, rax
.label_19:
	mov	rbp, rbp
	mov	rdi, r14
	call	rpl_fclose
.label_23:
	xor	r14d, r14d
	xor	r15d, r15d
	jmp	.label_27
	nop	dword ptr [rax + rax]
.label_20:
	add	r14, rax
	nop	
	add	rbx, 0x180
.label_27:
	lea	rdi, [rdi]
	test	rbp, rbp
	je	.label_28
	mov	rbp, rbp
	cmp	byte ptr [rbx + 0x2c], 0
	mov	eax, 0
	je	.label_22
	mov	rsp, rsp
	movzx	eax, word ptr [rbx]
	cmp	eax, 7
	mov	rbp, rbp
	sete	al
	movzx	eax, al
.label_22:
	dec	rbp
	movzx	ecx, word ptr [rbx]
	lea	rsi, [rsi]
	cmp	ecx, 2
	lea	rdi, [rdi]
	jne	.label_20
	movsxd	r15, dword ptr [rbx + 0x154]
	jmp	.label_20
.label_28:
	mov	rbp, rbp
	xor	edi, edi
	call	time
	mov	qword ptr [rsp + 0x2040], rax
	test	r13, r13
	jne	.label_25
	lea	rsi, [rsi]
	test	r15, r15
	je	.label_24
	lea	rdi, [rdi]
	sub	rax, r15
	mov	r13, rax
.label_25:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], r13
	movabs	rcx, 0x1845c8a0ce512957
	mov	rax, r13
	lea	rdi, [rdi]
	imul	rcx
	mov	rbp, rbp
	mov	r12, rdx
	mov	rbp, rbp
	mov	rax, r12
	shr	rax, 0x3f
	sar	r12, 0xd
	nop	
	add	r12, rax
	lea	rdi, [rdi]
	imul	rbx, r12, -0x15180
	add	rbx, r13
	movabs	rcx, 0x48d159e26af37c05
	lea	rsi, [rsi]
	mov	rax, rbx
	nop	
	imul	rcx
	lea	rdi, [rdi]
	mov	r15, rdx
	lea	rsi, [rsi]
	mov	rax, r15
	nop	
	shr	rax, 0x3f
	nop	
	sar	r15, 0xa
	add	r15, rax
	movabs	rax, 0xe1000000000
	mov	rbp, rbp
	imul	rax, r15
	lea	rdi, [rdi]
	sar	rax, 0x20
	mov	rbp, rbp
	sub	rbx, rax
	lea	rsi, [rsi]
	movabs	rcx, 0x8888888888888889
	mov	rax, rbx
	imul	rcx
	mov	r13, rdx
	lea	rdi, [rsp + 0x2040]
	call	localtime
	nop	
	mov	rbp, rax
	lea	rsi, [rsi]
	test	rbp, rbp
	lea	rdi, [rdi]
	je	.label_17
	mov	rax,  qword ptr [word ptr [rip + stdout]]
	mov	qword ptr [rsp + 8], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.37
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	xor	ecx, ecx
	lea	rsi, [rsi]
	xor	r8d, r8d
	mov	rdi, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	mov	rsi, rax
	mov	rdx, rbp
	call	fprintftime
	mov	rsp, rsp
	jmp	.label_26
.label_17:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.38
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
.label_26:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	cmp	rcx, -1
	lea	rsi, [rsi]
	je	.label_30
	lea	rsi, [rsi]
	add	r13, rbx
	nop	
	mov	rax, r13
	shr	rax, 0x3f
	shr	r13, 5
	lea	rsi, [rsi]
	add	r13d, eax
	lea	rsi, [rsi]
	cmp	rcx, 0x15180
	jl	.label_29
	mov	rbp, rbp
	mov	rdi, r12
	call	select_plural
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.40
	mov	edx, OFFSET FLAT:.str.41
	mov	r8d, 5
	mov	rcx, rax
	nop	
	call	dcngettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rsi, rcx
	lea	rsi, [rsi]
	mov	rdx, r12
	mov	ecx, r15d
	nop	
	mov	r8d, r13d
	call	__printf_chk
	lea	rdi, [rdi]
	jmp	.label_18
.label_30:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.39
	mov	rsp, rsp
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsp, rsp
	mov	rsi, rcx
	lea	rsi, [rsi]
	call	__printf_chk
	jmp	.label_18
.label_29:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.42
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	edi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rsi, rcx
	mov	edx, r15d
	lea	rdi, [rdi]
	mov	ecx, r13d
	mov	rbp, rbp
	call	__printf_chk
.label_18:
	lea	rsi, [rsi]
	mov	rdi, r14
	call	select_plural
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.43
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.44
	mov	r8d, 5
	mov	rcx, rax
	lea	rdi, [rdi]
	call	dcngettext
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	edi, 1
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	rsi, rcx
	mov	rdx, r14
	mov	rbp, rbp
	call	__printf_chk
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0x2020]
	mov	rsp, rsp
	mov	esi, 3
	lea	rdi, [rdi]
	call	getloadavg
	mov	ebx, eax
	mov	rsp, rsp
	cmp	ebx, -1
	je	.label_16
	lea	rsi, [rsi]
	test	ebx, ebx
	jle	.label_15
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.45
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	lea	rdi, [rdi]
	movsd	xmm0, qword ptr [rsp + 0x2020]
	mov	rsp, rsp
	mov	edi, 1
	mov	rbp, rbp
	mov	al, 1
	mov	rsi, rcx
	mov	rsp, rsp
	call	__printf_chk
	cmp	ebx, 2
	mov	rbp, rbp
	jl	.label_16
	movsd	xmm0, qword ptr [rsp + 0x2028]
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.46
	mov	rbp, rbp
	mov	al, 1
	mov	rbp, rbp
	call	__printf_chk
	lea	rsi, [rsi]
	cmp	ebx, 3
	jl	.label_16
	lea	rdi, [rdi]
	movsd	xmm0, qword ptr [rsp + 0x2030]
	nop	
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.46
	mov	al, 1
	call	__printf_chk
.label_16:
	mov	edi, 0xa
	call	putchar_unlocked
.label_15:
	lea	rdi, [rdi]
	add	rsp, 0x2048
	lea	rsi, [rsi]
	pop	rbx
	nop	
	pop	r12
	nop	
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
.label_24:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.36
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	lea	rdi, [rdi]
	mov	rdx, rcx
	lea	rsi, [rsi]
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4024f0

	.globl select_plural
	.type select_plural, @function
select_plural:
	nop	
	mov	rax, rdi
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402500

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
	call	c_locale
	test	rax, rax
	mov	rsp, rsp
	je	.label_32
	mov	rbp, rbp
	mov	rdi, r14
	lea	rdi, [rdi]
	mov	rsi, rbx
	mov	rdx, rax
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	lea	rdi, [rdi]
	jmp	strtod_l
.label_32:
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_31
	mov	qword ptr [rbx], r14
.label_31:
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	add	rsp, 8
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x402560

	.globl c_locale
	.type c_locale, @function
c_locale:
	cmp	qword ptr [word ptr [rip + c_locale_cache]],  0
	nop	
	jne	.label_33
	lea	rdi, [rdi]
	push	rax
	nop	
	mov	edi, 0x1fbf
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str_2
	xor	edx, edx
	call	newlocale
	mov	qword ptr [word ptr [rip + c_locale_cache]],  rax
	add	rsp, 8
.label_33:
	mov	rax,  qword ptr [word ptr [rip + c_locale_cache]]
	nop	
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4025a0
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
	#Procedure 0x4025b0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4025c0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	lea	rsi, [rsi]
	push	r14
	mov	rsp, rsp
	push	rbx
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	call	close_stream
	test	eax, eax
	je	.label_37
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_34
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	jne	.label_34
.label_37:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_35
	pop	rbx
	nop	
	pop	r14
	nop	
	pop	rbp
	ret	
.label_34:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_3
	nop	
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbp, rbp
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	lea	rdi, [rdi]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_36
	xor	edi, edi
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str_1
	mov	rsp, rsp
	xor	eax, eax
	mov	esi, ebp
	nop	
	mov	rcx, r14
	lea	rdi, [rdi]
	call	error
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_35:
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_36:
	mov	rbp, rbp
	mov	rdi, rbx
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
	mov	r8, r14
	call	error
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4026c0

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
	#Procedure 0x4026f0

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
	mov	r15d, r9d
	mov	dword ptr [rsp + 0x3c], r8d
	mov	dword ptr [rsp + 0x5c], ecx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x40], rdx
	mov	r14, rsi
	mov	r13, rdi
	mov	qword ptr [rsp + 0x78], r13
	nop	
	mov	eax, dword ptr [rdx + 8]
	mov	rcx, qword ptr [rdx + 0x30]
	mov	rbp, rbp
	test	rcx, rcx
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str_0
	cmovne	rdx, rcx
	mov	qword ptr [rsp + 0x30], rdx
	mov	rbp, rbp
	lea	ecx, [rax - 0xc]
	test	eax, eax
	nop	
	mov	edx, 0xc
	mov	rsp, rsp
	cmovne	edx, eax
	lea	rsi, [rsi]
	cmp	eax, 0xc
	nop	
	cmovg	edx, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x2c], edx
	lea	rsi, [rsi]
	cmp	byte ptr [r14], 0
	lea	rdi, [rdi]
	mov	r11d, 0
	je	.label_172
	movabs	rbp, 0x1000000000002500
	xor	r11d, r11d
	lea	rsi, [rsi]
	jmp	.label_78
.label_185:
	nop	
	mov	r10d, 3
	nop	
	jmp	.label_192
	nop	word ptr cs:[rax + rax]
.label_78:
	movzx	eax, byte ptr [r14]
	mov	rbp, rbp
	xor	r12d, r12d
	cmp	eax, 0x25
	nop	
	jne	.label_200
	mov	eax, dword ptr [rsp + 0x5c]
	mov	r9b, al
	xor	r13d, r13d
	nop	
	mov	r9b, al
	jmp	.label_40
.label_202:
	movsx	r13d, byte ptr [r14]
.label_40:
	inc	r14
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [r14]
	lea	rsi, [rsi]
	lea	edx, [rcx - 0x23]
	mov	rsp, rsp
	cmp	edx, 0x3c
	ja	.label_38
	bt	rbp, rdx
	jb	.label_202
	mov	al, 1
	test	rdx, rdx
	mov	rsp, rsp
	je	.label_46
	cmp	rdx, 0x3b
	jne	.label_38
	mov	r9b, al
	jmp	.label_40
.label_46:
	mov	r12b, 1
	mov	al, r9b
	jmp	.label_40
	nop	word ptr [rax + rax]
.label_200:
	mov	rsp, rsp
	test	r15d, r15d
	lea	rdi, [rdi]
	mov	eax, r15d
	lea	rdi, [rdi]
	mov	ecx, 0
	cmovs	eax, ecx
	movsxd	rbx, eax
	cmp	ebx, 1
	mov	ecx, 1
	lea	rsi, [rsi]
	cmovbe	rbx, rcx
	mov	rcx, r11
	mov	rbp, rbp
	not	rcx
	nop	
	cmp	rbx, rcx
	mov	rbp, rbp
	jae	.label_41
	test	r13, r13
	mov	rsp, rsp
	je	.label_65
	mov	r12, r11
	cmp	eax, 2
	setb	al
	cmp	r15d, 1
	je	.label_68
	test	al, al
	jne	.label_68
	nop	
	movsxd	rbp, r15d
	mov	rsp, rsp
	dec	rbp
	nop	word ptr cs:[rax + rax]
.label_76:
	lea	rdi, [rdi]
	mov	edi, 0x20
	mov	rsi, r13
	call	fputc
	dec	rbp
	mov	rbp, rbp
	jne	.label_76
.label_68:
	movsx	edi, byte ptr [r14]
	nop	
	mov	rsi, r13
	mov	rbp, rbp
	call	fputc
	lea	rdi, [rdi]
	mov	r11, r12
	movabs	rbp, 0x1000000000002500
.label_65:
	add	r11, rbx
	mov	rbp, rbp
	jmp	.label_88
	nop	word ptr cs:[rax + rax]
.label_38:
	add	ecx, -0x30
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, 9
	ja	.label_91
.label_166:
	mov	r15d, 0x7fffffff
	cmp	eax, 0xccccccc
	jg	.label_95
	jne	.label_133
	movsx	ecx, byte ptr [r14]
	add	ecx, -0x30
	mov	rsp, rsp
	cmp	ecx, 7
	lea	rdi, [rdi]
	jg	.label_95
.label_133:
	lea	rsi, [rsi]
	lea	eax, [rax + rax*4]
	movsx	ecx, byte ptr [r14]
	lea	rsi, [rsi]
	lea	r15d, [rcx + rax*2 - 0x30]
.label_95:
	mov	rbp, rbp
	movsx	eax, byte ptr [r14 + 1]
	lea	rsi, [rsi]
	inc	r14
	mov	rsp, rsp
	add	eax, -0x30
	mov	rsp, rsp
	cmp	eax, 0xa
	mov	eax, r15d
	lea	rsi, [rsi]
	jb	.label_166
.label_91:
	mov	rbp, rbp
	mov	ecx, r15d
	movsx	eax, byte ptr [r14]
	nop	
	cmp	eax, 0x4f
	lea	rdi, [rdi]
	je	.label_107
	nop	
	xor	r8d, r8d
	cmp	eax, 0x45
	mov	rbp, rbp
	jne	.label_110
.label_107:
	lea	rsi, [rsi]
	movsx	r8d, byte ptr [r14]
	inc	r14
.label_110:
	mov	qword ptr [rsp + 0x60], rcx
	lea	rsi, [rsi]
	mov	bl, byte ptr [r14]
	mov	rsp, rsp
	movsx	eax, bl
	xor	r10d, r10d
	mov	edx, 1
	lea	edi, [rax - 0x25]
	cmp	edi, 0x55
	mov	rsp, rsp
	ja	.label_112
	mov	eax, OFFSET FLAT:.str.3_0
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x48], rax
	mov	byte ptr [rsp + 0x50], bl
	nop	
	mov	qword ptr [rsp + 0x70], r11
	mov	al, 0x72
	mov	ebx, 0xffffffff
	xor	ecx, ecx
	lea	rdi, [rdi]
	xor	esi, esi
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_114]]
.label_524:
	lea	rsi, [rsi]
	cmp	r8d, 0x45
	lea	rdi, [rdi]
	je	.label_47
	nop	
	mov	dword ptr [rsp + 0x60], r8d
	nop	
	mov	qword ptr [rsp + 0x68], r9
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rdx + 0x14]
	mov	rbp, rbp
	mov	esi, dword ptr [rdx + 0x18]
	mov	ecx, eax
	mov	rbp, rbp
	sar	ecx, 0x1f
	nop	
	and	ecx, 0x190
	lea	ebp, [rax + rcx - 0x64]
	mov	r12d, dword ptr [rdx + 0x1c]
	nop	
	mov	edi, r12d
	call	iso_week_days
	lea	rsi, [rsi]
	mov	ebx, eax
	test	ebx, ebx
	lea	rdi, [rdi]
	js	.label_138
	mov	rsp, rsp
	mov	eax, 0x16d
	test	bpl, 3
	jne	.label_140
	movsxd	rax, ebp
	imul	rax, rax, 0x51eb851f
	mov	rcx, rax
	lea	rsi, [rsi]
	sar	rcx, 0x25
	mov	rdx, rax
	shr	rdx, 0x3f
	add	ecx, edx
	mov	rbp, rbp
	imul	ecx, ecx, 0x64
	lea	rdi, [rdi]
	sar	rax, 0x27
	mov	rsp, rsp
	add	eax, edx
	imul	eax, eax, 0x190
	mov	rsp, rsp
	cmp	ebp, eax
	nop	
	sete	al
	movzx	edx, al
	add	edx, 0x16d
	lea	rsi, [rsi]
	cmp	ebp, ecx
	mov	rsp, rsp
	mov	eax, 0x16e
	nop	
	cmove	eax, edx
.label_140:
	sub	r12d, eax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x40]
	mov	esi, dword ptr [rax + 0x18]
	lea	rdi, [rdi]
	mov	edi, r12d
	nop	
	call	iso_week_days
	mov	ecx, eax
	shr	ecx, 0x1f
	mov	rbp, rbp
	xor	ecx, 1
	test	eax, eax
	lea	rdi, [rdi]
	cmovns	ebx, eax
	mov	rbp, rbp
	jmp	.label_155
	nop	dword ptr [rax]
.label_164:
	inc	rdx
.label_518:
	movzx	eax, byte ptr [r14 + rdx]
	cmp	eax, 0x3a
	je	.label_164
	lea	rsi, [rsi]
	movzx	eax, al
	cmp	eax, 0x7a
	jne	.label_47
	add	r14, rdx
	mov	rsp, rsp
	mov	r10, rdx
.label_555:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x40]
	cmp	dword ptr [rax + 0x20], 0
	nop	
	js	.label_170
	mov	edx, dword ptr [rax + 0x28]
	mov	sil, 1
	test	edx, edx
	mov	rbp, rbp
	js	.label_174
	nop	
	mov	rdi, rax
	test	edx, edx
	je	.label_177
	xor	esi, esi
	lea	rdi, [rdi]
	jmp	.label_179
.label_538:
	test	r12b, r12b
	mov	rsp, rsp
	mov	al, byte ptr [rsp + 0x50]
	nop	
	je	.label_182
	mov	rbp, rbp
	mov	r9b, 1
.label_182:
	mov	rbp, rbp
	xor	ecx, ecx
	nop	
	cmp	r8d, 0x45
	lea	rsi, [rsi]
	jne	.label_52
	jmp	.label_47
.label_112:
	test	eax, eax
	mov	rsp, rsp
	jne	.label_186
	mov	qword ptr [rsp + 0x70], r11
	dec	r14
	jmp	.label_47
.label_517:
	mov	rsp, rsp
	test	r8d, r8d
	jne	.label_47
	mov	rbp, rbp
	xor	eax, eax
	test	r15d, r15d
	lea	rsi, [rsi]
	cmovns	eax, r15d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	rsp, rsp
	mov	edx, 1
	lea	rsi, [rsi]
	cmova	rdx, rcx
	mov	r11, qword ptr [rsp + 0x70]
	mov	rcx, r11
	not	rcx
	cmp	rdx, rcx
	mov	rbp, rbp
	jae	.label_41
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x78], 0
	nop	
	je	.label_56
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x68], rdx
	cmp	eax, 2
	mov	r12, qword ptr [rsp + 0x78]
	mov	rsp, rsp
	jb	.label_45
	movsxd	rbp, r15d
	lea	rbx, [rbp - 1]
	cmp	r13d, 0x30
	nop	
	je	.label_196
	lea	rsi, [rsi]
	cmp	r13d, 0x2b
	jne	.label_199
.label_196:
	test	rbx, rbx
	je	.label_45
	mov	rbp, rbp
	dec	rbp
.label_64:
	mov	edi, 0x30
	lea	rsi, [rsi]
	mov	rsi, r12
	lea	rsi, [rsi]
	call	fputc
	lea	rsi, [rsi]
	dec	rbp
	jne	.label_64
	jmp	.label_45
.label_519:
	lea	rsi, [rsi]
	test	r8d, r8d
	jne	.label_47
	test	r12b, r12b
	je	.label_49
	mov	r9b, 1
.label_49:
	xor	ecx, ecx
	mov	rbp, rbp
	mov	al, 0x41
	mov	rbp, rbp
	jmp	.label_52
.label_520:
	cmp	r8d, 0x45
	je	.label_47
	lea	rsi, [rsi]
	test	r12b, r12b
	lea	rsi, [rsi]
	je	.label_59
	mov	rsp, rsp
	mov	r9b, 1
.label_59:
	xor	ecx, ecx
	mov	rbp, rbp
	mov	al, 0x42
	lea	rsi, [rsi]
	jmp	.label_52
.label_521:
	cmp	r8d, 0x45
	jne	.label_69
	nop	
	xor	ecx, ecx
	mov	rsp, rsp
	mov	al, 0x43
	jmp	.label_52
.label_522:
	lea	rsi, [rsi]
	test	r8d, r8d
	mov	rbp, rbp
	jne	.label_47
	nop	
	mov	eax, OFFSET FLAT:.str.1_1
	nop	
	jmp	.label_73
.label_523:
	test	r8d, r8d
	nop	
	jne	.label_47
	test	r13d, r13d
	jne	.label_79
	test	r15d, r15d
	lea	rdi, [rdi]
	jns	.label_79
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str.2_0
	nop	
	mov	qword ptr [rsp + 0x48], rax
	mov	r13d, 0x2b
	mov	ebx, 4
	jmp	.label_83
.label_525:
	cmp	r8d, 0x45
	lea	rsi, [rsi]
	je	.label_47
	mov	rax, qword ptr [rsp + 0x40]
	mov	eax, dword ptr [rax + 8]
	nop	
	jmp	.label_92
.label_526:
	cmp	r8d, 0x45
	je	.label_47
	mov	eax, dword ptr [rsp + 0x2c]
	jmp	.label_92
.label_527:
	lea	rsi, [rsi]
	cmp	r8d, 0x45
	je	.label_47
	mov	rax, qword ptr [rsp + 0x40]
	mov	eax, dword ptr [rax + 4]
	jmp	.label_92
.label_528:
	mov	rsp, rsp
	cmp	r8d, 0x45
	mov	rsp, rsp
	je	.label_47
	mov	r10d, 9
	nop	
	cmp	r15d, -1
	mov	rsp, rsp
	je	.label_100
	mov	ecx, 9
	cmp	r15d, 8
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x4e8]
	lea	rsi, [rsi]
	jg	.label_106
.label_111:
	cdqe	
	imul	rax, rax, 0x66666667
	mov	rdx, rax
	lea	rsi, [rsi]
	shr	rdx, 0x3f
	sar	rax, 0x22
	add	eax, edx
	lea	rsi, [rsi]
	dec	ecx
	cmp	r15d, ecx
	jne	.label_111
	lea	rsi, [rsi]
	mov	r10d, r15d
	lea	rsi, [rsi]
	jmp	.label_77
.label_529:
	mov	rsp, rsp
	mov	sil, 1
.label_547:
	lea	rdi, [rdi]
	test	r12b, r12b
	lea	rsi, [rsi]
	je	.label_115
	mov	rbp, rbp
	mov	r9d, 0
.label_115:
	mov	r10d, 0
	je	.label_120
	mov	sil, 1
.label_120:
	lea	rdi, [rdi]
	mov	al, 0x70
	mov	cl, sil
	jmp	.label_123
.label_530:
	mov	rsp, rsp
	cmp	r8d, 0x45
	lea	rdi, [rdi]
	je	.label_47
	mov	rax, qword ptr [rsp + 0x40]
	mov	eax, dword ptr [rax]
	jmp	.label_92
.label_531:
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:.str.4_0
.label_73:
	mov	qword ptr [rsp + 0x48], rax
.label_83:
	test	r9b, r9b
	mov	qword ptr [rsp + 0x68], r9
	nop	
	setne	al
	mov	ecx, dword ptr [rsp + 0x4e8]
	mov	rsp, rsp
	mov	dword ptr [rsp + 8], ecx
	mov	rcx, qword ptr [rsp + 0x4e0]
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rcx
	mov	rbp, rbp
	movzx	ecx, al
	xor	ebp, ebp
	xor	edi, edi
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x48]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x40]
	nop	
	mov	r8d, r13d
	mov	r9d, ebx
	mov	rsp, rsp
	call	__strftime_internal
	lea	rsi, [rsi]
	test	r15d, r15d
	mov	rsp, rsp
	cmovns	ebp, r15d
	movsxd	rcx, ebp
	cmp	rax, rcx
	nop	
	mov	rsi, rax
	cmovb	rsi, rcx
	mov	r11, qword ptr [rsp + 0x70]
	mov	rbp, rbp
	mov	rdx, r11
	lea	rdi, [rdi]
	not	rdx
	lea	rsi, [rsi]
	cmp	rsi, rdx
	jae	.label_41
	cmp	qword ptr [rsp + 0x78], 0
	nop	
	je	.label_152
	mov	qword ptr [rsp + 0x60], rsi
	mov	rbp, rbp
	cmp	rax, rcx
	lea	rsi, [rsi]
	mov	r12, qword ptr [rsp + 0x78]
	jae	.label_161
	nop	
	movsxd	rcx, r15d
	mov	r15, rcx
	sub	r15, rax
	nop	
	cmp	r13d, 0x30
	je	.label_153
	cmp	r13d, 0x2b
	nop	
	jne	.label_159
.label_153:
	mov	rsp, rsp
	xor	ebp, ebp
	lea	rdi, [rdi]
	cmp	rcx, rax
	mov	rbp, rbp
	je	.label_161
	nop	dword ptr [rax]
.label_168:
	mov	rsp, rsp
	mov	edi, 0x30
	mov	rsi, r12
	nop	
	call	fputc
	nop	
	inc	rbp
	mov	rsp, rsp
	cmp	rbp, r15
	jb	.label_168
	lea	rdi, [rdi]
	jmp	.label_161
.label_532:
	cmp	r8d, 0x45
	lea	rdi, [rdi]
	je	.label_47
	mov	rcx, qword ptr [rsp + 0x40]
	mov	eax, dword ptr [rcx + 0x1c]
	lea	rdi, [rdi]
	add	eax, 7
	sub	eax, dword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	cdqe	
	lea	rdi, [rdi]
	jmp	.label_176
.label_533:
	nop	
	cmp	r8d, 0x45
	lea	rsi, [rsi]
	je	.label_47
	mov	rcx, qword ptr [rsp + 0x40]
	nop	
	mov	eax, dword ptr [rcx + 0x18]
	mov	ecx, dword ptr [rcx + 0x1c]
	lea	edx, [rax + 6]
	movsxd	rdx, edx
	lea	rsi, [rsi]
	imul	rsi, rdx, -0x6db6db6d
	shr	rsi, 0x20
	lea	eax, [rsi + rax + 6]
	mov	rsp, rsp
	mov	esi, eax
	shr	esi, 0x1f
	sar	eax, 2
	add	eax, esi
	lea	esi, [rax*8]
	sub	esi, eax
	sub	edx, esi
	lea	rsi, [rsi]
	add	ecx, 7
	lea	rdi, [rdi]
	sub	ecx, edx
	lea	rsi, [rsi]
	movsxd	rax, ecx
.label_176:
	imul	rcx, rax, -0x6db6db6d
	shr	rcx, 0x20
	lea	rsi, [rsi]
	add	eax, ecx
	mov	ecx, eax
	shr	ecx, 0x1f
	sar	eax, 2
	add	eax, ecx
	lea	rsi, [rsi]
	jmp	.label_92
.label_534:
	cmp	r8d, 0x4f
	je	.label_47
	xor	ecx, ecx
	mov	al, 0x58
	lea	rdi, [rdi]
	jmp	.label_52
.label_535:
	cmp	r8d, 0x45
	lea	rsi, [rsi]
	je	.label_193
	cmp	r8d, 0x4f
	lea	rdi, [rdi]
	je	.label_47
	mov	rax, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rax + 0x14]
	cmp	eax, 0xfffff894
	nop	
	setl	sil
	lea	rdi, [rdi]
	add	eax, 0x76c
	nop	
	mov	r10d, 4
	lea	rsi, [rsi]
	jmp	.label_94
.label_536:
	mov	qword ptr [rsp + 0x68], r9
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsp, rsp
	call	strlen
	mov	rbp, rbp
	xor	ecx, ecx
	test	r15d, r15d
	cmovns	ecx, r15d
	movsxd	rsi, ecx
	cmp	rax, rsi
	mov	rdx, rax
	cmovb	rdx, rsi
	mov	r11, qword ptr [rsp + 0x70]
	mov	rcx, r11
	not	rcx
	lea	rsi, [rsi]
	cmp	rdx, rcx
	lea	rdi, [rdi]
	jae	.label_41
	cmp	qword ptr [rsp + 0x78], 0
	je	.label_56
	nop	
	mov	qword ptr [rsp + 0x50], rdx
	cmp	rax, rsi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x60], rax
	mov	rbx, qword ptr [rsp + 0x78]
	jae	.label_60
	nop	
	movsxd	rax, r15d
	mov	rsp, rsp
	mov	r15, rax
	mov	rcx, qword ptr [rsp + 0x60]
	mov	rsp, rsp
	sub	r15, rcx
	mov	rsp, rsp
	cmp	r13d, 0x30
	mov	rsp, rsp
	je	.label_67
	lea	rsi, [rsi]
	cmp	r13d, 0x2b
	lea	rsi, [rsi]
	jne	.label_71
.label_67:
	mov	rsp, rsp
	xor	ebp, ebp
	cmp	rax, rcx
	je	.label_60
	nop	word ptr cs:[rax + rax]
.label_87:
	nop	
	mov	edi, 0x30
	mov	rbp, rbp
	mov	rsi, rbx
	nop	
	call	fputc
	mov	rsp, rsp
	inc	rbp
	lea	rdi, [rdi]
	cmp	rbp, r15
	jb	.label_87
	jmp	.label_60
.label_537:
	test	r8d, r8d
	nop	
	jne	.label_47
	lea	rsi, [rsi]
	test	r12b, r12b
	je	.label_90
	mov	r9b, 1
.label_90:
	nop	
	xor	ecx, ecx
	mov	al, 0x61
	jmp	.label_52
.label_539:
	mov	rbp, rbp
	cmp	r8d, 0x4f
	mov	rbp, rbp
	je	.label_47
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	al, 0x63
	mov	rbp, rbp
	jmp	.label_52
.label_540:
	lea	rdi, [rdi]
	cmp	r8d, 0x45
	nop	
	je	.label_47
	mov	rax, qword ptr [rsp + 0x40]
	mov	eax, dword ptr [rax + 0xc]
	jmp	.label_92
.label_541:
	mov	rbp, rbp
	cmp	r8d, 0x45
	je	.label_47
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x40]
	mov	eax, dword ptr [rax + 0xc]
	nop	
	jmp	.label_102
.label_542:
	cmp	r8d, 0x45
	je	.label_47
	mov	rax, qword ptr [rsp + 0x40]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rax + 0x1c]
	nop	
	cmp	eax, -1
	nop	
	setl	sil
	nop	
	inc	eax
	mov	rsp, rsp
	mov	r10d, 3
	mov	rbp, rbp
	jmp	.label_127
.label_543:
	mov	rsp, rsp
	cmp	r8d, 0x45
	je	.label_47
	mov	rax, qword ptr [rsp + 0x40]
	mov	eax, dword ptr [rax + 8]
	mov	rsp, rsp
	jmp	.label_102
.label_544:
	cmp	r8d, 0x45
	mov	eax, dword ptr [rsp + 0x2c]
	je	.label_47
.label_102:
	mov	rbp, rbp
	test	r13d, r13d
	lea	rdi, [rdi]
	mov	ecx, 0x5f
	nop	
	cmove	r13d, ecx
	lea	rdi, [rdi]
	jmp	.label_92
.label_545:
	lea	rsi, [rsi]
	cmp	r8d, 0x45
	je	.label_47
	mov	rax, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	mov	eax, dword ptr [rax + 0x10]
	cmp	eax, -1
	setl	sil
	inc	eax
	nop	
	mov	r10d, 2
	jmp	.label_127
.label_546:
	xor	eax, eax
	mov	rsp, rsp
	test	r15d, r15d
	cmovns	eax, r15d
	lea	rsi, [rsi]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	cmp	ecx, 1
	mov	rsp, rsp
	mov	edx, 1
	cmova	rdx, rcx
	mov	rsp, rsp
	mov	r11, qword ptr [rsp + 0x70]
	lea	rdi, [rdi]
	mov	rcx, r11
	lea	rdi, [rdi]
	not	rcx
	cmp	rdx, rcx
	jae	.label_41
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x78], 0
	je	.label_56
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x68], rdx
	mov	rsp, rsp
	cmp	eax, 2
	mov	r12, qword ptr [rsp + 0x78]
	lea	rsi, [rsi]
	jb	.label_39
	mov	rbp, rbp
	movsxd	rbp, r15d
	nop	
	lea	rbx, [rbp - 1]
	lea	rdi, [rdi]
	cmp	r13d, 0x30
	je	.label_146
	mov	rsp, rsp
	cmp	r13d, 0x2b
	jne	.label_149
.label_146:
	nop	
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_39
	dec	rbp
	nop	dword ptr [rax + rax]
.label_156:
	lea	rdi, [rdi]
	mov	edi, 0x30
	mov	rsp, rsp
	mov	rsi, r12
	call	fputc
	lea	rdi, [rdi]
	dec	rbp
	mov	rsp, rsp
	jne	.label_156
	lea	rdi, [rdi]
	jmp	.label_39
.label_548:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	imul	eax, dword ptr [rax + 0x10], 0xb
	lea	rsi, [rsi]
	sar	eax, 5
	nop	
	inc	eax
	nop	
	mov	r10d, 1
	nop	
	xor	edx, edx
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rbp, rbp
	xor	esi, esi
	jmp	.label_80
.label_549:
	mov	rbx, r9
	mov	rcx, qword ptr [rsp + 0x40]
	mov	rax, qword ptr [rcx + 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xb0], rax
	movups	xmm0, xmmword ptr [rcx]
	movups	xmm1, xmmword ptr [rcx + 0x10]
	movups	xmm2, xmmword ptr [rcx + 0x20]
	movaps	xmmword ptr [rsp + 0xa0], xmm2
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x90], xmm1
	movaps	xmmword ptr [rsp + 0x80], xmm0
	lea	rdi, [rdi]
	lea	rsi, [rsp + 0x80]
	mov	rdi, qword ptr [rsp + 0x4e0]
	call	mktime_z
	mov	rsp, rsp
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	rsi, rcx
	shr	rsi, 0x3f
	mov	rsp, rsp
	lea	r12, [rsp + 0x4a7]
	nop	word ptr [rax + rax]
.label_57:
	lea	rsi, [rsi]
	movabs	rdx, 0x6666666666666667
	mov	rax, rcx
	lea	rdi, [rdi]
	imul	rdx
	mov	rax, rdx
	mov	rsp, rsp
	shr	rax, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + rax]
	nop	
	add	edi, edi
	lea	edi, [rdi + rdi*4]
	nop	
	mov	ebp, ecx
	lea	rdi, [rdi]
	sub	ebp, edi
	mov	rbp, rbp
	add	rdx, rax
	lea	rdi, [rdi]
	mov	eax, ebp
	neg	eax
	test	rsi, rsi
	cmove	eax, ebp
	mov	rbp, rbp
	add	eax, 0x30
	mov	rsp, rsp
	mov	byte ptr [r12 - 1], al
	dec	r12
	lea	rsi, [rsi]
	add	rcx, 9
	mov	rbp, rbp
	cmp	rcx, 0x12
	mov	rcx, rdx
	nop	
	ja	.label_57
	mov	r10d, 1
	nop	
	xor	ecx, ecx
	mov	r11, qword ptr [rsp + 0x70]
	mov	r9, rbx
	nop	
	jmp	.label_195
.label_550:
	xor	eax, eax
	test	r15d, r15d
	cmovns	eax, r15d
	lea	rsi, [rsi]
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	edx, 1
	cmova	rdx, rcx
	mov	rsp, rsp
	mov	r11, qword ptr [rsp + 0x70]
	lea	rdi, [rdi]
	mov	rcx, r11
	not	rcx
	mov	rbp, rbp
	cmp	rdx, rcx
	jae	.label_41
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x78], 0
	nop	
	je	.label_56
	mov	qword ptr [rsp + 0x68], rdx
	lea	rdi, [rdi]
	cmp	eax, 2
	nop	
	mov	r12, qword ptr [rsp + 0x78]
	lea	rsi, [rsi]
	jb	.label_51
	movsxd	rbp, r15d
	lea	rbx, [rbp - 1]
	cmp	r13d, 0x30
	nop	
	je	.label_58
	lea	rsi, [rsi]
	cmp	r13d, 0x2b
	mov	rsp, rsp
	jne	.label_135
.label_58:
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_51
	nop	
	dec	rbp
	nop	word ptr cs:[rax + rax]
.label_74:
	mov	edi, 0x30
	lea	rsi, [rsi]
	mov	rsi, r12
	call	fputc
	lea	rdi, [rdi]
	dec	rbp
	lea	rsi, [rsi]
	jne	.label_74
	nop	
	jmp	.label_51
.label_551:
	mov	rax, qword ptr [rsp + 0x40]
	mov	ecx, dword ptr [rax + 0x18]
	lea	eax, [rcx + 6]
	cdqe	
	mov	rsp, rsp
	imul	rdx, rax, -0x6db6db6d
	nop	
	shr	rdx, 0x20
	nop	
	lea	ecx, [rdx + rcx + 6]
	mov	edx, ecx
	shr	edx, 0x1f
	sar	ecx, 2
	mov	rsp, rsp
	add	ecx, edx
	lea	edx, [rcx*8]
	sub	edx, ecx
	nop	
	sub	eax, edx
	inc	eax
	mov	r10d, 1
	jmp	.label_77
.label_552:
	cmp	r8d, 0x45
	je	.label_47
	mov	rax, qword ptr [rsp + 0x40]
	mov	eax, dword ptr [rax + 0x18]
	mov	rsp, rsp
	mov	r10d, 1
	jmp	.label_77
.label_553:
	cmp	r8d, 0x4f
	je	.label_47
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	al, 0x78
	jmp	.label_52
.label_554:
	cmp	r8d, 0x45
	jne	.label_165
	xor	ecx, ecx
	mov	al, 0x79
	jmp	.label_52
.label_186:
	mov	qword ptr [rsp + 0x70], r11
	jmp	.label_47
.label_138:
	dec	ebp
	mov	edi, 0x16d
	lea	rsi, [rsi]
	test	bpl, 3
	jne	.label_104
	movsxd	rax, ebp
	lea	rdi, [rdi]
	imul	rax, rax, 0x51eb851f
	mov	rsp, rsp
	mov	rcx, rax
	lea	rdi, [rdi]
	sar	rcx, 0x25
	lea	rsi, [rsi]
	mov	rdx, rax
	shr	rdx, 0x3f
	add	ecx, edx
	imul	ecx, ecx, 0x64
	sar	rax, 0x27
	add	eax, edx
	imul	eax, eax, 0x190
	nop	
	cmp	ebp, eax
	lea	rsi, [rsi]
	sete	al
	movzx	eax, al
	add	eax, 0x16d
	cmp	ebp, ecx
	mov	edi, 0x16e
	cmove	edi, eax
.label_104:
	mov	rsp, rsp
	add	edi, r12d
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x40]
	mov	esi, dword ptr [rax + 0x18]
	lea	rsi, [rsi]
	call	iso_week_days
	mov	rbp, rbp
	mov	ebx, eax
	nop	
	mov	ecx, 0xffffffff
.label_155:
	nop	
	movsx	eax, byte ptr [r14]
	mov	rsp, rsp
	cmp	eax, 0x47
	mov	rsp, rsp
	movabs	rbp, 0x1000000000002500
	mov	rbp, rbp
	mov	r9, qword ptr [rsp + 0x68]
	mov	r8d, dword ptr [rsp + 0x60]
	je	.label_124
	mov	rbp, rbp
	cmp	eax, 0x67
	mov	rbp, rbp
	jne	.label_131
	nop	
	mov	rax, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	movsxd	rdx, dword ptr [rax + 0x14]
	lea	rsi, [rsi]
	imul	rax, rdx, 0x51eb851f
	lea	rsi, [rsi]
	mov	rsi, rax
	shr	rsi, 0x3f
	lea	rdi, [rdi]
	sar	rax, 0x25
	lea	rdi, [rdi]
	add	eax, esi
	imul	eax, eax, 0x64
	mov	esi, edx
	sub	esi, eax
	lea	rsi, [rsi]
	add	esi, ecx
	lea	rsi, [rsi]
	movsxd	rax, esi
	imul	rsi, rax, 0x51eb851f
	mov	rsp, rsp
	mov	rdi, rsi
	shr	rdi, 0x3f
	sar	rsi, 0x25
	add	esi, edi
	imul	esi, esi, 0x64
	nop	
	sub	eax, esi
	nop	
	mov	r10d, 2
	js	.label_136
	mov	rbp, rbp
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_94
.label_170:
	nop	
	mov	r13, qword ptr [rsp + 0x78]
	mov	r11, qword ptr [rsp + 0x70]
	nop	
	jmp	.label_88
.label_69:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x40]
	movsxd	rcx, dword ptr [rax + 0x14]
	nop	
	cmp	rcx, -0x76c
	setl	sil
	mov	rsp, rsp
	setg	dl
	imul	rax, rcx, 0x51eb851f
	mov	rdi, rax
	shr	rdi, 0x3f
	mov	rsp, rsp
	sar	rax, 0x25
	add	eax, edi
	imul	edi, eax, 0x64
	cmp	ecx, edi
	lea	rsi, [rsi]
	sets	cl
	and	cl, dl
	movzx	ecx, cl
	nop	
	sub	eax, ecx
	add	eax, 0x13
	mov	r10d, 2
	jmp	.label_94
.label_165:
	mov	rax, qword ptr [rsp + 0x40]
	movsxd	rcx, dword ptr [rax + 0x14]
	imul	rax, rcx, 0x51eb851f
	mov	rdx, rax
	nop	
	shr	rdx, 0x3f
	mov	rsp, rsp
	sar	rax, 0x25
	lea	rsi, [rsi]
	add	eax, edx
	imul	edx, eax, 0x64
	mov	eax, ecx
	sub	eax, edx
	mov	rsp, rsp
	mov	r10d, 2
	js	.label_167
	nop	
	xor	esi, esi
	nop	
	jmp	.label_94
.label_124:
	nop	
	mov	rax, qword ptr [rsp + 0x40]
	mov	eax, dword ptr [rax + 0x14]
	mov	rsp, rsp
	mov	edx, 0xfffff894
	sub	edx, ecx
	lea	rdi, [rdi]
	cmp	eax, edx
	lea	rdi, [rdi]
	setl	sil
	mov	rbp, rbp
	lea	eax, [rcx + rax + 0x76c]
	mov	r10d, 4
	mov	rsp, rsp
	jmp	.label_94
.label_131:
	mov	rsp, rsp
	movsxd	rax, ebx
	mov	rbp, rbp
	imul	rcx, rax, -0x6db6db6d
	lea	rsi, [rsi]
	shr	rcx, 0x20
	add	eax, ecx
	mov	ecx, eax
	lea	rdi, [rdi]
	sar	ecx, 2
	nop	
	shr	eax, 0x1f
	mov	rbp, rbp
	lea	eax, [rcx + rax + 1]
.label_92:
	nop	
	mov	r10d, 2
.label_77:
	mov	esi, eax
	shr	esi, 0x1f
.label_127:
	mov	rbp, rbp
	xor	edx, edx
	lea	rdi, [rdi]
	xor	ecx, ecx
.label_80:
	mov	rbp, rbp
	cmp	r8d, 0x4f
	lea	rsi, [rsi]
	jne	.label_113
	test	sil, sil
	nop	
	jne	.label_113
	xor	ecx, ecx
	mov	al, byte ptr [rsp + 0x50]
	mov	rbp, rbp
	jmp	.label_123
.label_113:
	mov	ebx, eax
	neg	ebx
	test	sil, sil
	lea	rdi, [rdi]
	cmove	ebx, eax
	lea	rdi, [rdi]
	lea	r12, [rsp + 0x4a7]
	mov	r11, qword ptr [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_53:
	test	dl, 1
	je	.label_184
	mov	byte ptr [r12 - 1], 0x3a
	dec	r12
.label_184:
	mov	rsp, rsp
	sar	edx, 1
	mov	ebp, ebx
	mov	eax, 0xcccccccd
	imul	rax, rbp
	lea	rdi, [rdi]
	shr	rax, 0x23
	lea	ebp, [rax + rax]
	mov	rbp, rbp
	lea	ebp, [rbp + rbp*4]
	mov	edi, ebx
	sub	edi, ebp
	lea	rdi, [rdi]
	or	edi, 0x30
	mov	rsp, rsp
	mov	byte ptr [r12 - 1], dil
	nop	
	dec	r12
	cmp	ebx, 9
	lea	rsi, [rsi]
	mov	ebx, eax
	lea	rdi, [rdi]
	ja	.label_53
	test	edx, edx
	lea	rsi, [rsi]
	mov	ebx, eax
	jne	.label_53
.label_195:
	cmp	r10d, r15d
	lea	rsi, [rsi]
	cmovl	r10d, r15d
	mov	rsp, rsp
	test	cl, cl
	nop	
	je	.label_54
	mov	cl, 0x2b
.label_54:
	lea	rdi, [rdi]
	test	sil, sil
	mov	bl, 0x2d
	lea	rdi, [rdi]
	jne	.label_61
	lea	rsi, [rsi]
	mov	bl, cl
.label_61:
	cmp	r13d, 0x2d
	jne	.label_66
	test	bl, bl
	je	.label_70
	nop	
	mov	qword ptr [rsp + 0x68], r9
	nop	
	xor	eax, eax
	mov	rbp, rbp
	test	r15d, r15d
	cmovns	eax, r15d
	movsxd	rcx, eax
	mov	rbp, rbp
	cmp	ecx, 1
	mov	rbp, rbp
	mov	edx, 1
	cmova	rdx, rcx
	lea	rdi, [rdi]
	mov	rcx, r11
	lea	rdi, [rdi]
	not	rcx
	nop	
	cmp	rdx, rcx
	mov	rbp, rbp
	jae	.label_41
	cmp	qword ptr [rsp + 0x78], 0
	je	.label_82
	mov	qword ptr [rsp + 0x48], rdx
	mov	byte ptr [rsp + 0x50], bl
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x70], r11
	cmp	eax, 2
	mov	rsp, rsp
	setb	al
	test	r10d, r10d
	mov	qword ptr [rsp + 0x60], r10
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 0x78]
	jne	.label_86
	mov	rsp, rsp
	test	al, al
	jne	.label_86
	lea	rsi, [rsi]
	cmp	r15d, 1
	je	.label_86
	lea	rdi, [rdi]
	movsxd	rbp, r15d
	dec	rbp
	nop	word ptr cs:[rax + rax]
.label_189:
	mov	edi, 0x20
	mov	rbp, rbp
	mov	rsi, rbx
	call	fputc
	nop	
	dec	rbp
	mov	rsp, rsp
	jne	.label_189
.label_86:
	mov	rbp, rbp
	movzx	edi, byte ptr [rsp + 0x50]
	lea	rdi, [rdi]
	mov	rsi, rbx
	jmp	.label_98
.label_66:
	mov	rbp, rbp
	movsxd	rax, r10d
	nop	
	mov	rcx, r12
	mov	rbp, rbp
	lea	rdx, [rsp + 0x4a7]
	mov	rbp, rbp
	sub	rcx, rdx
	nop	
	mov	dl, bl
	lea	rdi, [rdi]
	neg	dl
	sbb	rsi, rsi
	mov	rbp, rbp
	add	rsi, rcx
	add	rsi, rax
	mov	rsp, rsp
	test	esi, esi
	mov	rsp, rsp
	jle	.label_103
	mov	qword ptr [rsp + 0x68], r9
	cmp	r13d, 0x5f
	lea	rsi, [rsi]
	jne	.label_89
	movsxd	rbp, esi
	mov	rbp, rbp
	mov	rax, r11
	lea	rdi, [rdi]
	not	rax
	cmp	rbp, rax
	jae	.label_41
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x20], r15d
	mov	qword ptr [rsp + 0x48], rsi
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0x50], bl
	mov	qword ptr [rsp + 0x60], r10
	mov	qword ptr [rsp + 0x70], r11
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 0x78]
	test	r15, r15
	je	.label_128
	test	rbp, rbp
	lea	rsi, [rsi]
	mov	ebx, 0
	je	.label_128
	nop	dword ptr [rax + rax]
.label_43:
	nop	
	mov	edi, 0x20
	mov	rsi, r15
	mov	rbp, rbp
	call	fputc
	inc	rbx
	cmp	rbx, rbp
	nop	
	jb	.label_43
.label_128:
	mov	r11, qword ptr [rsp + 0x70]
	add	r11, rbp
	mov	rax, qword ptr [rsp + 0x48]
	mov	rbp, rbp
	mov	ecx, dword ptr [rsp + 0x20]
	sub	ecx, eax
	nop	
	mov	edx, 0
	nop	
	cmovg	edx, ecx
	mov	al, byte ptr [rsp + 0x50]
	nop	
	test	al, al
	je	.label_198
	mov	rsp, rsp
	xor	eax, eax
	test	edx, edx
	mov	rbp, rbp
	cmovns	eax, edx
	mov	rsp, rsp
	movsxd	rcx, eax
	lea	rsi, [rsi]
	cmp	ecx, 1
	nop	
	mov	esi, 1
	cmova	rsi, rcx
	mov	rbp, rbp
	mov	rcx, r11
	not	rcx
	cmp	rsi, rcx
	nop	
	mov	r10, qword ptr [rsp + 0x60]
	jae	.label_41
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x78], 0
	mov	rbp, rbp
	je	.label_148
	nop	
	mov	qword ptr [rsp + 0x20], rsi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x48], rdx
	mov	qword ptr [rsp + 0x70], r11
	mov	rsp, rsp
	cmp	eax, 2
	setb	al
	lea	rdi, [rdi]
	test	r10d, r10d
	mov	r15, qword ptr [rsp + 0x78]
	jne	.label_85
	mov	rsp, rsp
	test	al, al
	jne	.label_85
	mov	rax, qword ptr [rsp + 0x48]
	movsxd	rbx, eax
	dec	rbx
	mov	rsp, rsp
	cmp	r13d, 0x30
	nop	
	je	.label_158
	nop	
	cmp	r13d, 0x2b
	nop	
	jne	.label_151
.label_158:
	xor	ebp, ebp
	test	rbx, rbx
	nop	
	je	.label_85
	nop	dword ptr [rax]
.label_125:
	mov	rsp, rsp
	mov	edi, 0x30
	mov	rbp, rbp
	mov	rsi, r15
	mov	rbp, rbp
	call	fputc
	inc	rbp
	mov	rsp, rsp
	cmp	rbp, rbx
	mov	rbp, rbp
	jb	.label_125
	jmp	.label_85
.label_70:
	mov	qword ptr [rsp + 0x68], r9
	mov	rsp, rsp
	jmp	.label_81
.label_103:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x68], r9
	mov	rbp, rbp
	test	bl, bl
	je	.label_81
	xor	eax, eax
	test	r15d, r15d
	mov	rbp, rbp
	cmovns	eax, r15d
	movsxd	rcx, eax
	lea	rdi, [rdi]
	cmp	ecx, 1
	lea	rsi, [rsi]
	mov	edx, 1
	lea	rdi, [rdi]
	cmova	rdx, rcx
	mov	rcx, r11
	mov	rsp, rsp
	not	rcx
	cmp	rdx, rcx
	jae	.label_41
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0x78], 0
	lea	rsi, [rsi]
	je	.label_82
	mov	qword ptr [rsp + 0x48], rdx
	mov	byte ptr [rsp + 0x50], bl
	mov	qword ptr [rsp + 0x70], r11
	cmp	eax, 2
	setb	al
	nop	
	test	r10d, r10d
	mov	qword ptr [rsp + 0x60], r10
	mov	rsi, qword ptr [rsp + 0x78]
	jne	.label_108
	test	al, al
	jne	.label_108
	lea	rdi, [rdi]
	mov	rax, rsi
	mov	rsp, rsp
	movsxd	rbp, r15d
	lea	rdi, [rdi]
	lea	rbx, [rbp - 1]
	cmp	r13d, 0x30
	je	.label_126
	cmp	r13d, 0x2b
	jne	.label_122
.label_126:
	mov	rsp, rsp
	test	rbx, rbx
	lea	rsi, [rsi]
	mov	rsi, rax
	mov	rbp, rbp
	je	.label_108
	mov	rbp, rbp
	dec	rbp
	nop	
.label_130:
	mov	rbp, rbp
	mov	edi, 0x30
	mov	rsp, rsp
	mov	rbx, rsi
	call	fputc
	mov	rsi, rbx
	mov	rsp, rsp
	dec	rbp
	jne	.label_130
	lea	rdi, [rdi]
	jmp	.label_108
.label_89:
	mov	rcx, r11
	mov	rbp, rbp
	not	rcx
	lea	rdi, [rdi]
	cmp	rax, rcx
	nop	
	jae	.label_41
	lea	rdi, [rdi]
	test	bl, bl
	lea	rsi, [rsi]
	je	.label_134
	xor	eax, eax
	test	r15d, r15d
	lea	rdi, [rdi]
	cmovns	eax, r15d
	lea	rdi, [rdi]
	movsxd	rdx, eax
	cmp	edx, 1
	mov	edi, 1
	cmova	rdi, rdx
	cmp	rdi, rcx
	jae	.label_41
	mov	qword ptr [rsp + 0x48], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x60], r10
	cmp	qword ptr [rsp + 0x78], 0
	je	.label_63
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], rdi
	nop	
	mov	byte ptr [rsp + 0x50], bl
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x70], r11
	lea	rdi, [rdi]
	cmp	eax, 2
	lea	rdi, [rdi]
	setb	al
	mov	rcx, qword ptr [rsp + 0x60]
	test	ecx, ecx
	mov	rsi, qword ptr [rsp + 0x78]
	jne	.label_42
	lea	rdi, [rdi]
	test	al, al
	jne	.label_42
	lea	rsi, [rsi]
	mov	rax, rsi
	lea	rdi, [rdi]
	movsxd	rbp, r15d
	lea	rsi, [rsi]
	lea	rbx, [rbp - 1]
	cmp	r13d, 0x30
	nop	
	je	.label_116
	cmp	r13d, 0x2b
	jne	.label_72
.label_116:
	test	rbx, rbx
	mov	rsi, rax
	nop	
	je	.label_42
	mov	rsp, rsp
	dec	rbp
	nop	
.label_93:
	mov	edi, 0x30
	mov	rbx, rsi
	call	fputc
	mov	rsi, rbx
	dec	rbp
	mov	rsp, rsp
	jne	.label_93
	jmp	.label_42
.label_198:
	mov	rsp, rsp
	mov	r15d, edx
	mov	r10, qword ptr [rsp + 0x60]
	lea	rdi, [rdi]
	jmp	.label_81
.label_134:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x48], rsi
	nop	
	mov	qword ptr [rsp + 0x60], r10
	jmp	.label_96
.label_193:
	nop	
	xor	ecx, ecx
	mov	al, 0x59
.label_52:
	lea	rdi, [rdi]
	xor	r10d, r10d
.label_123:
	mov	dword ptr [rsp + 0x60], ecx
	lea	rsi, [rsi]
	mov	r12, r10
	nop	
	mov	qword ptr [rsp + 0x68], r9
	mov	rbp, rbp
	mov	word ptr [rsp + 0x48b], 0x2520
	mov	rsp, rsp
	test	r8d, r8d
	lea	rsi, [rsi]
	lea	rcx, [rsp + 0x48d]
	lea	rdi, [rdi]
	je	.label_109
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0x48d], r8b
	mov	rbp, rbp
	lea	rcx, [rsp + 0x48e]
.label_109:
	mov	byte ptr [rcx], al
	mov	rsp, rsp
	mov	byte ptr [rcx + 1], 0
	lea	rdi, [rsp + 0x80]
	lea	rdx, [rsp + 0x48b]
	lea	rsi, [rsi]
	mov	esi, 0x400
	mov	rcx, qword ptr [rsp + 0x40]
	call	strftime
	mov	rbx, rax
	lea	rdi, [rdi]
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_119
	dec	rbx
	xor	eax, eax
	test	r15d, r15d
	nop	
	cmovns	eax, r15d
	lea	rsi, [rsi]
	cdqe	
	cmp	rbx, rax
	mov	rsp, rsp
	mov	rdx, rbx
	cmovb	rdx, rax
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0x70]
	mov	rcx, r11
	nop	
	not	rcx
	cmp	rdx, rcx
	mov	rsp, rsp
	jae	.label_41
	cmp	qword ptr [rsp + 0x78], 0
	nop	
	je	.label_132
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x50], rdx
	cmp	rbx, rax
	setae	al
	test	r12d, r12d
	mov	r12, qword ptr [rsp + 0x78]
	jne	.label_75
	test	al, al
	jne	.label_75
	lea	rsi, [rsi]
	movsxd	rax, r15d
	nop	
	mov	r15, rax
	sub	r15, rbx
	mov	rsp, rsp
	cmp	r13d, 0x30
	je	.label_139
	mov	rsp, rsp
	cmp	r13d, 0x2b
	mov	rbp, rbp
	jne	.label_143
.label_139:
	xor	ebp, ebp
	cmp	rax, rbx
	je	.label_75
	nop	dword ptr [rax + rax]
.label_147:
	mov	edi, 0x30
	mov	rsi, r12
	call	fputc
	mov	rsp, rsp
	inc	rbp
	cmp	rbp, r15
	mov	rsp, rsp
	jb	.label_147
	jmp	.label_75
.label_119:
	mov	rbp, rbp
	mov	r11, qword ptr [rsp + 0x70]
	mov	r13, qword ptr [rsp + 0x78]
	jmp	.label_88
.label_143:
	lea	rdi, [rdi]
	xor	ebp, ebp
	cmp	rax, rbx
	je	.label_75
	nop	dword ptr [rax]
.label_84:
	mov	edi, 0x20
	lea	rdi, [rdi]
	mov	rsi, r12
	call	fputc
	mov	rsp, rsp
	inc	rbp
	cmp	rbp, r15
	jb	.label_84
.label_75:
	mov	qword ptr [rsp + 0x78], r12
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 0x60]
	mov	rbp, rbp
	test	al, 1
	jne	.label_157
	mov	rax, qword ptr [rsp + 0x68]
	test	al, 1
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x78]
	movabs	rbp, 0x1000000000002500
	jne	.label_162
	mov	edx, 1
	lea	rdi, [rsp + 0x81]
	lea	rdi, [rdi]
	mov	rsi, rbx
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	call	fwrite
	nop	
	jmp	.label_175
.label_157:
	mov	rdi, qword ptr [rsp + 0x78]
	lea	rsi, [rsp + 0x81]
	mov	rdx, rbx
	call	fwrite_lowcase
	mov	r11, qword ptr [rsp + 0x70]
	movabs	rbp, 0x1000000000002500
	jmp	.label_178
.label_162:
	mov	rbp, rbp
	mov	rdi, rax
	lea	rsi, [rsp + 0x81]
	mov	rbp, rbp
	mov	rdx, rbx
	nop	
	call	fwrite_uppcase
.label_175:
	lea	rsi, [rsi]
	mov	r11, qword ptr [rsp + 0x70]
.label_178:
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x50]
.label_132:
	add	r11, rdx
	mov	rsp, rsp
	mov	r13, qword ptr [rsp + 0x78]
	lea	rsi, [rsi]
	jmp	.label_88
.label_159:
	xor	ebp, ebp
	cmp	rcx, rax
	nop	
	je	.label_161
	nop	dword ptr [rax + rax]
.label_187:
	mov	edi, 0x20
	lea	rdi, [rdi]
	mov	rsi, r12
	call	fputc
	nop	
	inc	rbp
	cmp	rbp, r15
	jb	.label_187
.label_161:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x68]
	test	al, al
	setne	al
	mov	ecx, dword ptr [rsp + 0x4e8]
	mov	rsp, rsp
	mov	dword ptr [rsp + 8], ecx
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x4e0]
	mov	qword ptr [rsp], rcx
	movzx	ecx, al
	mov	rsp, rsp
	mov	rdi, r12
	nop	
	mov	qword ptr [rsp + 0x78], r12
	nop	
	mov	rsi, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0x40]
	nop	
	mov	r8d, r13d
	mov	r9d, ebx
	call	__strftime_internal
	mov	rsp, rsp
	mov	r11, qword ptr [rsp + 0x70]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x60]
.label_152:
	mov	rbp, rbp
	add	r11, rsi
	jmp	.label_181
.label_177:
	mov	rax, qword ptr [rsp + 0x30]
	movzx	eax, byte ptr [rax]
	mov	rsp, rsp
	cmp	eax, 0x2d
	sete	sil
.label_179:
	nop	
	mov	rax, rdi
.label_174:
	cmp	r10, 3
	ja	.label_55
	mov	rbx, rbp
	mov	qword ptr [rsp + 0x40], rax
	lea	rsi, [rsi]
	movsxd	rax, edx
	imul	rcx, rax, -0x77777777
	shr	rcx, 0x20
	mov	rbp, rbp
	add	ecx, edx
	mov	rbp, rbp
	mov	edi, ecx
	lea	rsi, [rsi]
	shr	edi, 0x1f
	sar	ecx, 5
	add	ecx, edi
	mov	rbp, rbp
	imul	rax, rax, -0x6e5d4c3b
	shr	rax, 0x20
	add	eax, edx
	mov	edi, eax
	shr	edi, 0x1f
	sar	eax, 0xb
	add	eax, edi
	movsxd	rcx, ecx
	imul	rdi, rcx, -0x77777777
	shr	rdi, 0x20
	mov	rbp, rbp
	add	edi, ecx
	mov	rsp, rsp
	mov	ebp, edi
	lea	rsi, [rsi]
	shr	ebp, 0x1f
	lea	rsi, [rsi]
	sar	edi, 5
	add	edi, ebp
	mov	rsp, rsp
	imul	edi, edi, 0x3c
	mov	rsp, rsp
	imul	ebp, ecx, 0x3c
	nop	
	sub	ecx, edi
	sub	edx, ebp
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r10 * 8) + label_44]]
.label_600:
	imul	eax, eax, 0x64
	add	eax, ecx
	mov	rsp, rsp
	mov	r10d, 5
.label_192:
	nop	
	mov	cl, 1
	mov	rsp, rsp
	xor	edx, edx
	mov	rbp, rbp
	mov	rbp, rbx
	jmp	.label_80
.label_79:
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ebx, r15d
	add	ebx, -6
	cmovs	ebx, eax
	mov	eax, OFFSET FLAT:.str.2_0
	mov	rsp, rsp
	jmp	.label_73
.label_100:
	mov	eax, dword ptr [rsp + 0x4e8]
	nop	
	mov	r15d, 9
	jmp	.label_77
.label_136:
	nop	
	mov	esi, 0xfffff894
	lea	rsi, [rsi]
	sub	esi, ecx
	mov	ecx, eax
	mov	rbp, rbp
	neg	ecx
	add	eax, 0x64
	cmp	edx, esi
	cmovl	eax, ecx
	xor	esi, esi
	jmp	.label_94
.label_167:
	mov	rbp, rbp
	mov	edx, eax
	neg	edx
	lea	rdi, [rdi]
	add	eax, 0x64
	cmp	ecx, 0xfffff894
	cmovl	eax, edx
	mov	rbp, rbp
	xor	esi, esi
.label_94:
	test	r13d, r13d
	nop	
	cmove	r13d, dword ptr [rsp + 0x3c]
	lea	rsi, [rsi]
	xor	edx, edx
	lea	rdi, [rdi]
	cmp	r13d, 0x2b
	mov	ecx, 0
	jne	.label_80
	lea	rdi, [rdi]
	cmp	r10d, 2
	mov	ecx, 0x63
	mov	edi, 0x270f
	cmove	edi, ecx
	cmp	edi, eax
	setb	bl
	mov	rsp, rsp
	cmp	r10d, r15d
	setl	cl
	or	cl, bl
	lea	rdi, [rdi]
	jmp	.label_80
.label_55:
	mov	qword ptr [rsp + 0x40], rax
.label_47:
	mov	qword ptr [rsp + 0x68], r9
	lea	rdi, [rdi]
	xor	ebp, ebp
	xor	ebx, ebx
	mov	rbp, rbp
	movabs	rdx, 0x100000000
	nop	word ptr cs:[rax + rax]
.label_118:
	add	rbx, rdx
	movzx	eax, byte ptr [r14 + rbp]
	mov	rsp, rsp
	dec	rbp
	cmp	eax, 0x25
	jne	.label_118
	mov	rax, rbp
	mov	rsp, rsp
	neg	rax
	mov	rcx, qword ptr [rsp + 0x60]
	lea	rdi, [rdi]
	test	ecx, ecx
	nop	
	mov	edx, r15d
	lea	rdi, [rdi]
	mov	esi, 0
	lea	rsi, [rsi]
	cmovs	edx, esi
	mov	rsp, rsp
	cmp	eax, edx
	mov	esi, edx
	mov	rsp, rsp
	cmova	esi, eax
	movsxd	rdi, esi
	mov	r11, qword ptr [rsp + 0x70]
	mov	rsi, r11
	not	rsi
	cmp	rdi, rsi
	jae	.label_41
	cmp	qword ptr [rsp + 0x78], 0
	mov	rbp, rbp
	je	.label_117
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x50], rdi
	sar	rbx, 0x20
	mov	rsp, rsp
	cmp	eax, edx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x78]
	jae	.label_137
	lea	rsi, [rsi]
	add	rcx, rbp
	movsxd	r15, r15d
	nop	
	sub	r15, rbx
	lea	rsi, [rsi]
	cmp	r13d, 0x30
	je	.label_142
	lea	rsi, [rsi]
	cmp	r13d, 0x2b
	mov	rbp, rbp
	jne	.label_144
.label_142:
	test	ecx, ecx
	lea	rsi, [rsi]
	mov	r13d, 0
	mov	r12, rsi
	je	.label_137
	nop	dword ptr [rax]
.label_150:
	mov	edi, 0x30
	lea	rdi, [rdi]
	mov	rsi, r12
	call	fputc
	inc	r13
	cmp	r13, r15
	jb	.label_150
	nop	
	jmp	.label_137
.label_144:
	mov	rbp, rbp
	test	ecx, ecx
	lea	rdi, [rdi]
	mov	r13d, 0
	lea	rdi, [rdi]
	mov	r12, rsi
	lea	rdi, [rdi]
	je	.label_137
	nop	word ptr cs:[rax + rax]
.label_160:
	mov	edi, 0x20
	lea	rsi, [rsi]
	mov	rsi, r12
	call	fputc
	lea	rdi, [rdi]
	inc	r13
	mov	rsp, rsp
	cmp	r13, r15
	lea	rsi, [rsi]
	jb	.label_160
.label_137:
	mov	rsp, rsp
	lea	rsi, [r14 + rbp + 1]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x68]
	test	al, 1
	jne	.label_163
	mov	rbp, rbp
	mov	edx, 1
	nop	
	mov	rdi, rsi
	mov	rsi, rbx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x78]
	call	fwrite
	mov	rsp, rsp
	jmp	.label_173
.label_163:
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x78]
	lea	rsi, [rsi]
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	fwrite_uppcase
.label_173:
	mov	r11, qword ptr [rsp + 0x70]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x50]
.label_117:
	add	r11, rdi
	jmp	.label_181
.label_603:
	test	edx, edx
	je	.label_183
.label_602:
	lea	rsi, [rsi]
	imul	eax, eax, 0x2710
	imul	ecx, ecx, 0x64
	mov	rsp, rsp
	add	eax, edx
	add	eax, ecx
	mov	r10d, 9
	mov	rbp, rbp
	mov	cl, 1
	lea	rsi, [rsi]
	mov	edx, 0x14
	mov	rbp, rbx
	lea	rdi, [rdi]
	jmp	.label_80
.label_106:
	nop	
	mov	eax, dword ptr [rsp + 0x4e8]
	mov	r10d, r15d
	jmp	.label_77
.label_71:
	xor	ebp, ebp
	cmp	rax, rcx
	mov	rbp, rbp
	je	.label_60
.label_188:
	mov	rbp, rbp
	mov	edi, 0x20
	lea	rdi, [rdi]
	mov	rsi, rbx
	call	fputc
	inc	rbp
	nop	
	cmp	rbp, r15
	jb	.label_188
.label_60:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x78], rbx
	mov	rsp, rsp
	test	r12b, r12b
	je	.label_190
	nop	
	mov	rdi, qword ptr [rsp + 0x78]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rdx, qword ptr [rsp + 0x60]
	nop	
	call	fwrite_lowcase
	mov	rsp, rsp
	jmp	.label_129
.label_190:
	setne	al
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rbp, rbp
	test	cl, cl
	mov	rcx, qword ptr [rsp + 0x78]
	je	.label_194
	test	al, al
	jne	.label_194
	lea	rdi, [rdi]
	mov	rdi, rcx
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_180
.label_194:
	mov	edx, 1
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x60]
	jmp	.label_201
.label_149:
	test	rbx, rbx
	je	.label_39
	nop	dword ptr [rax + rax]
.label_48:
	mov	rsp, rsp
	mov	edi, 0x20
	lea	rdi, [rdi]
	mov	rsi, r12
	lea	rsi, [rsi]
	call	fputc
	dec	rbx
	jne	.label_48
.label_39:
	mov	edi, 0xa
	jmp	.label_50
.label_135:
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_51
	nop	dword ptr [rax]
.label_62:
	mov	edi, 0x20
	lea	rsi, [rsi]
	mov	rsi, r12
	call	fputc
	dec	rbx
	jne	.label_62
.label_51:
	mov	edi, 9
	jmp	.label_50
.label_122:
	mov	rsp, rsp
	test	rbx, rbx
	mov	rsi, rax
	mov	rsp, rsp
	je	.label_108
.label_99:
	lea	rsi, [rsi]
	mov	edi, 0x20
	mov	rbp, rbp
	mov	rbp, rsi
	call	fputc
	lea	rsi, [rsi]
	mov	rsi, rbp
	dec	rbx
	jne	.label_99
.label_108:
	lea	rdi, [rdi]
	movzx	edi, byte ptr [rsp + 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x78], rsi
.label_98:
	call	fputc
	mov	r11, qword ptr [rsp + 0x70]
	nop	
	mov	r10, qword ptr [rsp + 0x60]
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x48]
.label_82:
	lea	rsi, [rsi]
	add	r11, rdx
	jmp	.label_81
.label_151:
	lea	rsi, [rsi]
	xor	ebp, ebp
	mov	rbp, rbp
	test	rbx, rbx
	je	.label_85
.label_197:
	mov	edi, 0x20
	mov	rbp, rbp
	mov	rsi, r15
	call	fputc
	inc	rbp
	lea	rdi, [rdi]
	cmp	rbp, rbx
	jb	.label_197
.label_85:
	mov	qword ptr [rsp + 0x78], r15
	movzx	edi, byte ptr [rsp + 0x50]
	nop	
	mov	rsi, r15
	call	fputc
	mov	rbp, rbp
	mov	r11, qword ptr [rsp + 0x70]
	mov	rbp, rbp
	mov	r10, qword ptr [rsp + 0x60]
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x20]
.label_148:
	add	r11, rsi
	mov	r15d, edx
	jmp	.label_81
.label_72:
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rsi, [rsi]
	mov	rsi, rax
	je	.label_42
.label_105:
	mov	rbp, rbp
	mov	edi, 0x20
	mov	rbp, rsi
	call	fputc
	lea	rsi, [rsi]
	mov	rsi, rbp
	dec	rbx
	lea	rdi, [rdi]
	jne	.label_105
.label_42:
	lea	rsi, [rsi]
	movzx	edi, byte ptr [rsp + 0x50]
	mov	qword ptr [rsp + 0x78], rsi
	call	fputc
	mov	r11, qword ptr [rsp + 0x70]
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x20]
.label_63:
	add	r11, rdi
.label_96:
	mov	qword ptr [rsp + 0x70], r11
	mov	r15, qword ptr [rsp + 0x78]
	test	r15, r15
	je	.label_101
	xor	ebx, ebx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x48]
	test	eax, eax
	je	.label_101
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x48]
	movsxd	rbp, eax
	nop	word ptr [rax + rax]
.label_121:
	mov	edi, 0x30
	mov	rsi, r15
	nop	
	call	fputc
	mov	rsp, rsp
	inc	rbx
	nop	
	cmp	rbx, rbp
	nop	
	jb	.label_121
.label_101:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x48]
	cdqe	
	mov	rsp, rsp
	mov	r11, qword ptr [rsp + 0x70]
	nop	
	add	r11, rax
	lea	rsi, [rsi]
	xor	r15d, r15d
	lea	rdi, [rdi]
	mov	r10, qword ptr [rsp + 0x60]
.label_81:
	lea	rdi, [rdi]
	lea	rbx, [rsp + 0x4a7]
	mov	rsp, rsp
	sub	rbx, r12
	xor	eax, eax
	test	r15d, r15d
	cmovns	eax, r15d
	cdqe	
	nop	
	cmp	rbx, rax
	lea	rsi, [rsi]
	mov	rdx, rbx
	cmovb	rdx, rax
	mov	rcx, r11
	not	rcx
	cmp	rdx, rcx
	jae	.label_41
	cmp	qword ptr [rsp + 0x78], 0
	je	.label_56
	mov	qword ptr [rsp + 0x50], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x70], r11
	cmp	rbx, rax
	mov	qword ptr [rsp + 0x60], rbx
	setae	al
	test	r10d, r10d
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 0x78]
	jne	.label_141
	test	al, al
	jne	.label_141
	lea	rdi, [rdi]
	mov	rcx, rbx
	movsxd	rax, r15d
	mov	r15, rax
	mov	rdx, qword ptr [rsp + 0x60]
	nop	
	sub	r15, rdx
	cmp	r13d, 0x30
	je	.label_145
	mov	rbp, rbp
	cmp	r13d, 0x2b
	nop	
	jne	.label_154
.label_145:
	lea	rdi, [rdi]
	xor	ebp, ebp
	nop	
	cmp	rax, rdx
	mov	rbx, rcx
	lea	rdi, [rdi]
	je	.label_141
	nop	dword ptr [rax + rax]
.label_97:
	lea	rdi, [rdi]
	mov	edi, 0x30
	mov	rsi, rbx
	nop	
	call	fputc
	mov	rsp, rsp
	inc	rbp
	cmp	rbp, r15
	nop	
	jb	.label_97
	mov	rbp, rbp
	jmp	.label_141
.label_154:
	lea	rsi, [rsi]
	xor	ebp, ebp
	lea	rdi, [rdi]
	cmp	rax, rdx
	mov	rbp, rbp
	mov	rbx, rcx
	mov	rbp, rbp
	je	.label_141
	nop	dword ptr [rax + rax]
.label_169:
	mov	rsp, rsp
	mov	edi, 0x20
	lea	rsi, [rsi]
	mov	rsi, rbx
	call	fputc
	nop	
	inc	rbp
	cmp	rbp, r15
	jb	.label_169
.label_141:
	mov	qword ptr [rsp + 0x78], rbx
	mov	rax, qword ptr [rsp + 0x68]
	mov	rsp, rsp
	test	al, al
	je	.label_171
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x78]
	mov	rsp, rsp
	mov	rsi, r12
.label_180:
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x60]
	mov	rbp, rbp
	call	fwrite_uppcase
	mov	rbp, rbp
	jmp	.label_129
.label_171:
	mov	edx, 1
	mov	rbp, rbp
	mov	rdi, r12
	mov	rsi, qword ptr [rsp + 0x60]
	nop	
	mov	rcx, qword ptr [rsp + 0x78]
.label_201:
	call	fwrite
.label_129:
	mov	r11, qword ptr [rsp + 0x70]
	nop	
	mov	rdx, qword ptr [rsp + 0x50]
	jmp	.label_56
.label_183:
	mov	rbp, rbp
	test	ecx, ecx
	je	.label_185
.label_601:
	lea	rdi, [rdi]
	imul	eax, eax, 0x64
	add	eax, ecx
	mov	r10d, 6
	mov	cl, 1
	mov	rsp, rsp
	mov	edx, 4
	mov	rbp, rbp
	mov	rbp, rbx
	jmp	.label_80
.label_199:
	mov	rbp, rbp
	test	rbx, rbx
	je	.label_45
.label_191:
	mov	edi, 0x20
	lea	rsi, [rsi]
	mov	rsi, r12
	lea	rdi, [rdi]
	call	fputc
	lea	rdi, [rdi]
	dec	rbx
	mov	rsp, rsp
	jne	.label_191
.label_45:
	movsx	edi, byte ptr [r14]
.label_50:
	mov	rsi, r12
	mov	qword ptr [rsp + 0x78], r12
	mov	rsp, rsp
	call	fputc
	mov	r11, qword ptr [rsp + 0x70]
	mov	rdx, qword ptr [rsp + 0x68]
.label_56:
	add	r11, rdx
.label_181:
	nop	
	mov	r13, qword ptr [rsp + 0x78]
	mov	rsp, rsp
	movabs	rbp, 0x1000000000002500
.label_88:
	mov	rbp, rbp
	mov	r15d, 0xffffffff
	mov	rbp, rbp
	cmp	byte ptr [r14 + 1], 0
	mov	rsp, rsp
	lea	r14, [r14 + 1]
	lea	rdi, [rdi]
	jne	.label_78
	jmp	.label_172
.label_41:
	nop	
	xor	r11d, r11d
.label_172:
	mov	rax, r11
	add	rsp, 0x4a8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	mov	rbp, rbp
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404820

	.globl fwrite_lowcase
	.type fwrite_lowcase, @function
fwrite_lowcase:
	mov	rbp, rbp
	push	r15
	nop	
	push	r14
	push	r12
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	rbp, rbp
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	test	r14, r14
	je	.label_203
	mov	rsp, rsp
	call	__ctype_tolower_loc
	nop	
	mov	r12, rax
	nop	dword ptr [rax]
.label_204:
	movzx	eax, byte ptr [rbx]
	mov	rcx, qword ptr [r12]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rcx + rax*4]
	mov	rsi, r15
	call	fputc
	inc	rbx
	dec	r14
	jne	.label_204
.label_203:
	add	rsp, 8
	nop	
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404890

	.globl fwrite_uppcase
	.type fwrite_uppcase, @function
fwrite_uppcase:
	nop	
	push	r15
	mov	rbp, rbp
	push	r14
	lea	rdi, [rdi]
	push	r12
	nop	
	push	rbx
	push	rax
	lea	rsi, [rsi]
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	lea	rsi, [rsi]
	test	r14, r14
	nop	
	je	.label_205
	call	__ctype_toupper_loc
	mov	r12, rax
	nop	dword ptr [rax]
.label_206:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbx]
	mov	rsp, rsp
	mov	rcx, qword ptr [r12]
	mov	edi, dword ptr [rcx + rax*4]
	mov	rsi, r15
	mov	rsp, rsp
	call	fputc
	nop	
	inc	rbx
	dec	r14
	jne	.label_206
.label_205:
	add	rsp, 8
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404900

	.globl iso_week_days
	.type iso_week_days, @function
iso_week_days:
	lea	eax, [rdi + 0x17e]
	mov	rbp, rbp
	sub	eax, esi
	nop	
	cdqe	
	mov	rbp, rbp
	imul	rcx, rax, -0x6db6db6d
	shr	rcx, 0x20
	add	ecx, eax
	mov	edx, ecx
	mov	rsp, rsp
	shr	edx, 0x1f
	sar	ecx, 2
	mov	rsp, rsp
	add	ecx, edx
	nop	
	lea	edx, [rcx*8]
	mov	rbp, rbp
	sub	edx, ecx
	lea	rsi, [rsi]
	sub	eax, edx
	neg	eax
	mov	rsp, rsp
	lea	eax, [rdi + rax + 3]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404950
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
	je	.label_207
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
.label_207:
	mov	ebp,  dword ptr [dword ptr [rip + opterr]]
	mov	dword ptr [dword ptr [rip + opterr]],  0
	cmp	edi, 2
	jne	.label_208
	mov	edx, OFFSET FLAT:.str_4
	mov	ecx, OFFSET FLAT:long_options
	nop	
	xor	r8d, r8d
	lea	rsi, [rsi]
	call	getopt_long
	mov	rbp, rbp
	cmp	eax, 0x68
	mov	rsp, rsp
	je	.label_209
	cmp	eax, 0x76
	mov	rbp, rbp
	jne	.label_208
	mov	rbp, rbp
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0x100]
	nop	
	mov	qword ptr [rsp + 0xb8], rax
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x30
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	r8, [rsp + 0xb0]
	mov	rsi, r12
	lea	rdi, [rdi]
	mov	rdx, r15
	nop	
	mov	rcx, r14
	mov	rsp, rsp
	call	version_etc_va
	nop	
	xor	edi, edi
	call	exit
.label_209:
	xor	edi, edi
	call	rbx
.label_208:
	mov	dword ptr [dword ptr [rip + opterr]],  ebp
	mov	dword ptr [dword ptr [rip + optind]],  0
	lea	rdi, [rdi]
	add	rsp, 0xd0
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
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
	je	.label_211
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
.label_211:
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
	je	.label_214
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	cmp	eax, 0x68
	je	.label_210
	mov	rsp, rsp
	cmp	eax, 0x76
	nop	
	je	.label_212
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	lea	rdi, [rdi]
	jmp	.label_213
.label_210:
	lea	rdi, [rdi]
	xor	edi, edi
.label_213:
	call	rcx
.label_214:
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
.label_212:
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
	#Procedure 0x404be0

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
	je	.label_215
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
	jl	.label_217
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_217
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
	jne	.label_216
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_216:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_217:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_215:
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
	#Procedure 0x404cd0
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
	#Procedure 0x404d20
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
	#Procedure 0x404d40
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
	#Procedure 0x404d60

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
	#Procedure 0x404dd0
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
	#Procedure 0x404df0

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
	je	.label_218
	test	rdx, rdx
	nop	
	je	.label_218
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_218:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404e30
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
	mov	r8d, dword ptr [rbp]
	mov	r9d, dword ptr [rbp + 4]
	mov	rax, qword ptr [rbp + 0x28]
	mov	rcx, qword ptr [rbp + 0x30]
	lea	rsi, [rsi]
	lea	rdx, [rbp + 8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], rdx
	nop	
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x20]
	call	quotearg_buffer_restyled
	mov	dword ptr [rbx], r14d
	add	rsp, 0x28
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	nop	
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404ed0

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
	sub	rsp, 0x108
	mov	ebx, r9d
	nop	
	mov	dword ptr [rsp + 0x6c], ebx
	mov	r13d, r8d
	mov	qword ptr [rsp + 0xc0], rcx
	mov	r12, rdx
	mov	rbp, rbp
	mov	rbp, rsi
	mov	qword ptr [rsp + 0xe0], rdi
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x150]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x88], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x148]
	mov	qword ptr [rsp + 0x90], rax
	call	__ctype_get_mb_cur_max
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x60], rax
	mov	r15b, bl
	mov	rbp, rbp
	shr	r15b, 1
	mov	rbp, rbp
	and	r15b, 1
	nop	
	mov	eax, ebx
	and	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x5c], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x58], ebx
	mov	rsp, rsp
	mov	r8b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x80], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xa8], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xd0], rax
	mov	eax, 0
	mov	rbp, rbp
	xor	r11d, r11d
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x70], rcx
.label_221:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	lea	rsi, [rsi]
	mov	ecx, r13d
	lea	rdi, [rdi]
	cmp	r13d, 0xa
	ja	.label_239
	mov	r14d, 7
	mov	sil, 1
	xor	edi, edi
	mov	rsp, rsp
	mov	r9, r12
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_331]]
.label_619:
	lea	rsi, [rsi]
	mov	r12d, r11d
	nop	
	mov	edi, OFFSET FLAT:.str.11_0
	mov	esi, r13d
	nop	
	mov	r14, r10
	mov	bl, r8b
	mov	rbp, rbp
	mov	rbp, r9
	call	gettext_quote
	mov	qword ptr [rsp + 0x90], rax
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.12_0
	mov	esi, r13d
	mov	rsp, rsp
	call	gettext_quote
	mov	rsp, rsp
	mov	r11d, r12d
	mov	r9, rbp
	mov	r8b, bl
	nop	
	mov	r10, r14
	nop	
	mov	qword ptr [rsp + 0x88], rax
.label_620:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	rbp, r9
	mov	byte ptr [rsp + 0x69], r8b
	mov	rbp, rbp
	test	r15b, 1
	mov	rbp, rbp
	mov	eax, 0
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xf0], rax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x90]
	jne	.label_243
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	mov	rsp, rsp
	je	.label_243
	mov	rsp, rsp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_280:
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rdi, [rdi]
	jae	.label_230
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rsi], al
.label_230:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xf0]
	nop	
	mov	al, byte ptr [rdx + rcx + 1]
	lea	rdi, [rdi]
	inc	rcx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xf0], rcx
	mov	rbp, rbp
	test	al, al
	jne	.label_280
.label_243:
	mov	rbx, qword ptr [rsp + 0x88]
	mov	rbp, rbp
	mov	rdi, rbx
	mov	r12, r10
	nop	
	call	strlen
	mov	r10, r12
	mov	qword ptr [rsp + 0xd0], rax
	lea	rdi, [rdi]
	mov	r14d, r13d
	mov	qword ptr [rsp + 0xa8], rbx
	mov	sil, 1
	mov	rbp, rbp
	mov	dil, r15b
	mov	r8b, byte ptr [rsp + 0x69]
	mov	rsp, rsp
	mov	r9, rbp
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc0]
	lea	rsi, [rsi]
	mov	r11d, dword ptr [rsp + 0xb8]
	nop	
	jmp	.label_223
.label_612:
	lea	rsi, [rsi]
	xor	r14d, r14d
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xf0], rcx
	mov	sil, al
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	jmp	.label_223
.label_615:
	mov	rsp, rsp
	mov	al, 1
.label_613:
	mov	r15b, 1
.label_616:
	test	r15b, 1
	mov	rsp, rsp
	mov	cl, 1
	je	.label_308
	mov	cl, al
.label_308:
	lea	rdi, [rdi]
	mov	al, cl
.label_614:
	mov	r14d, 2
	mov	rsp, rsp
	test	r15b, 1
	mov	rsp, rsp
	jne	.label_313
	test	r10, r10
	je	.label_321
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	lea	rdi, [rdi]
	jmp	.label_324
.label_313:
	xor	ecx, ecx
	jmp	.label_324
.label_617:
	mov	r14d, 5
	mov	rsp, rsp
	test	r15b, 1
	jne	.label_332
	test	r10, r10
	je	.label_334
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	lea	rsi, [rsi]
	jmp	.label_260
.label_618:
	mov	sil, 1
	mov	r14d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10
	nop	
	mov	qword ptr [rsp + 0xa8], rax
	nop	
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	rbp, rbp
	mov	dil, 1
	jmp	.label_223
.label_321:
	nop	
	mov	ecx, 1
	nop	dword ptr [rax]
.label_324:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xa8], rcx
	lea	rdi, [rdi]
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd0], rcx
	mov	sil, al
	mov	dil, r15b
	mov	rbp, rbp
	jmp	.label_223
.label_332:
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_260
.label_334:
	mov	rbp, rbp
	mov	eax, 1
.label_260:
	nop	
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10
	mov	qword ptr [rsp + 0xa8], rax
	mov	rsp, rsp
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	lea	rsi, [rsi]
	mov	sil, 1
	mov	dil, r15b
	nop	word ptr cs:[rax + rax]
.label_223:
	mov	qword ptr [rsp + 0x98], rdi
	mov	byte ptr [rsp + 0xa6], sil
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x140], 0
	lea	rsi, [rsi]
	setne	bl
	cmp	r14d, 2
	lea	rsi, [rsi]
	setne	r15b
	mov	rsp, rsp
	sete	dl
	mov	rbp, rbp
	mov	cl, sil
	and	cl, 1
	mov	byte ptr [rsp + 0xa5], cl
	sete	byte ptr [rsp + 0x6b]
	lea	rdi, [rdi]
	mov	r12b, r15b
	and	r12b, cl
	mov	byte ptr [rsp + 0xbf], r12b
	cmp	qword ptr [rsp + 0xd0], 0
	mov	rsp, rsp
	setne	r13b
	mov	al, r13b
	and	al, r12b
	mov	rbp, rbp
	mov	byte ptr [rsp + 0xdf], al
	mov	al, dil
	mov	rsp, rsp
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rsp + 0xcf], al
	mov	rsp, rsp
	sete	cl
	lea	rdi, [rdi]
	and	dl, al
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0x7f], dl
	and	bl, al
	mov	byte ptr [rsp + 0xb7], bl
	or	cl, r15b
	mov	byte ptr [rsp + 0xa7], cl
	nop	
	and	sil, dil
	mov	rsp, rsp
	and	sil, r13b
	mov	byte ptr [rsp + 0x6a], sil
	nop	
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_278
	nop	word ptr [rax + rax]
.label_254:
	inc	qword ptr [rsp + 0xf0]
	shl	r15b, 7
	lea	rsi, [rsi]
	sar	r15b, 7
	and	r15b, r8b
	lea	rdi, [rdi]
	mov	r8b, r15b
	nop	
	inc	rsi
.label_278:
	lea	rsi, [rsi]
	cmp	rbp, -1
	je	.label_328
	cmp	rsi, rbp
	jne	.label_272
	jmp	.label_330
	nop	word ptr cs:[rax + rax]
.label_328:
	lea	rsi, [rsi]
	cmp	byte ptr [r9 + rsi], 0
	nop	
	je	.label_330
.label_272:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xdf], 0
	je	.label_335
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_219
	mov	rsp, rsp
	cmp	rbp, -1
	lea	rdi, [rdi]
	jne	.label_219
	mov	dword ptr [rsp + 0xb8], r11d
	mov	rbp, rbp
	mov	rdi, r9
	mov	rbp, rbp
	mov	rbp, r10
	nop	
	mov	r15b, r8b
	lea	rsi, [rsi]
	mov	r13, r14
	lea	rsi, [rsi]
	mov	r12, r9
	mov	r14, rsi
	lea	rdi, [rdi]
	call	strlen
	mov	rsp, rsp
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	r11d, dword ptr [rsp + 0xb8]
	mov	r9, r12
	mov	r12b, byte ptr [rsp + 0xbf]
	nop	
	mov	r14, r13
	lea	rdi, [rdi]
	mov	r8b, r15b
	mov	rbp, rbp
	mov	r10, rbp
	mov	rbp, rax
.label_219:
	lea	rsi, [rsi]
	cmp	rbx, rbp
	jbe	.label_256
.label_335:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xec], 0
.label_296:
	mov	rsp, rsp
	movzx	r13d, byte ptr [r9 + rsi]
	mov	rsp, rsp
	cmp	r13, 0x7e
	nop	
	ja	.label_263
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	mov	r15b, 1
	mov	rbp, rbp
	mov	cl, 0x6e
	mov	bl, 0x61
	nop	
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r13 * 8) + label_270]]
.label_502:
	test	rsi, rsi
	jne	.label_277
	jmp	.label_279
	nop	word ptr [rax + rax]
.label_256:
	mov	qword ptr [rsp + 0xc0], rbp
	mov	r12d, r11d
	lea	rsi, [rsi]
	mov	r13, r14
	lea	rdi, [rdi]
	mov	r15b, r8b
	mov	rbx, r10
	lea	rdi, [r9 + rsi]
	mov	r14, rsi
	mov	rbp, r9
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xa8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xd0]
	mov	rbp, rbp
	call	memcmp
	mov	rsp, rsp
	test	eax, eax
	sete	al
	mov	dword ptr [rsp + 0xec], eax
	jne	.label_292
	cmp	byte ptr [rsp + 0xcf], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	nop	
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	je	.label_296
	mov	rsp, rsp
	jmp	.label_283
.label_292:
	mov	rbp, rbp
	mov	r10, rbx
	mov	rbp, rbp
	mov	r8b, r15b
	mov	rbp, rbp
	mov	rdi, r13
	nop	
	mov	r9, rbp
	nop	
	mov	r11d, r12d
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0xc0]
	nop	
	mov	r12b, byte ptr [rsp + 0xbf]
	nop	
	mov	rsi, r14
	jmp	.label_296
.label_506:
	xor	eax, eax
	cmp	rbp, -1
	lea	rsi, [rsi]
	je	.label_317
	test	rsi, rsi
	nop	
	jne	.label_322
	cmp	rbp, 1
	lea	rsi, [rsi]
	je	.label_279
	mov	rsp, rsp
	xor	r15d, r15d
	jmp	.label_228
.label_495:
	cmp	byte ptr [rsp + 0xa5], 0
	je	.label_286
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xcf], 0
	nop	
	jne	.label_283
	cmp	edi, 2
	nop	
	jne	.label_338
	lea	rdi, [rdi]
	mov	al, r11b
	and	al, 1
	nop	
	jne	.label_340
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xf0], r10
	nop	
	jae	.label_240
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], 0x27
.label_240:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_237
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_237:
	nop	
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	lea	rax, [rax + 2]
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_246
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x27
.label_246:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	rsp, rsp
	mov	r11b, 1
	nop	
	mov	rcx, rax
	jmp	.label_255
.label_496:
	mov	bl, 0x62
	lea	rsi, [rsi]
	jmp	.label_262
.label_497:
	mov	cl, 0x74
	jmp	.label_267
.label_498:
	mov	bl, 0x76
	lea	rdi, [rdi]
	jmp	.label_262
.label_499:
	mov	bl, 0x66
	jmp	.label_262
.label_500:
	nop	
	mov	cl, 0x72
	mov	rsp, rsp
	jmp	.label_267
.label_503:
	lea	rsi, [rsi]
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	mov	rbp, rbp
	mov	r14, rdi
	lea	rdi, [rdi]
	cmp	r14d, 2
	jne	.label_268
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_284
	nop	
	test	r10, r10
	sete	al
	mov	rcx, qword ptr [rsp + 0x80]
	mov	rdx, rcx
	lea	rdi, [rdi]
	test	rdx, rdx
	nop	
	setne	cl
	nop	
	or	cl, al
	cmove	rdx, r10
	mov	qword ptr [rsp + 0x80], rdx
	mov	eax, 0
	mov	rsp, rsp
	cmove	r10, rax
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_285
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x27
.label_285:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_298
	mov	rcx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x5c
.label_298:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	lea	rdi, [rdi]
	jae	.label_303
	mov	rcx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_303:
	nop	
	add	qword ptr [rsp + 0xf0], 3
	xor	r11d, r11d
	mov	rbp, rbp
	jmp	.label_314
.label_504:
	lea	rdi, [rdi]
	mov	r14, rdi
	lea	rdi, [rdi]
	cmp	r14d, 5
	mov	rsp, rsp
	je	.label_234
	cmp	r14d, 2
	lea	rdi, [rdi]
	jne	.label_329
	cmp	byte ptr [rsp + 0xcf], 0
	mov	rbp, rbp
	jne	.label_284
.label_329:
	mov	rdi, r14
	jmp	.label_277
.label_505:
	mov	r14, rdi
	nop	
	cmp	r14d, 2
	mov	rsp, rsp
	jne	.label_333
	nop	
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_284
	mov	rdi, r14
	jmp	.label_222
.label_263:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb8], r11d
	mov	qword ptr [rsp + 0x38], rdi
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x40], r10
	cmp	qword ptr [rsp + 0x60], 1
	lea	rsi, [rsi]
	jne	.label_225
	mov	rbp, rbp
	mov	r14, r9
	mov	rbx, rsi
	mov	rsp, rsp
	call	__ctype_b_loc
	mov	rsi, rbx
	nop	
	mov	r9, r14
	mov	rax, qword ptr [rax]
	movzx	r15d, word ptr [rax + r13*2]
	mov	rsp, rsp
	shr	r15d, 0xe
	lea	rdi, [rdi]
	and	r15b, 1
	lea	rsi, [rsi]
	mov	ebx, 1
.label_295:
	lea	rdi, [rdi]
	and	r15b, 1
	mov	dl, r15b
	or	dl, byte ptr [rsp + 0x6b]
	mov	byte ptr [rsp + 0xc0], dl
	cmp	rbx, 1
	mov	rcx, rbx
	mov	r10, qword ptr [rsp + 0x40]
	mov	r8b, byte ptr [rsp + 0x69]
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	mov	r11d, dword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	ja	.label_253
	test	dl, dl
	mov	rsp, rsp
	je	.label_253
	mov	rdi, r14
	xor	eax, eax
	jmp	.label_228
.label_317:
	test	rsi, rsi
	jne	.label_275
	mov	cl, byte ptr [r9 + 1]
	test	cl, cl
	jne	.label_275
.label_279:
	mov	rbp, rbp
	mov	dl, 1
.label_501:
	cmp	byte ptr [rsp + 0xa7], 0
	je	.label_283
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r15b, dl
	mov	rbp, rbp
	jmp	.label_228
.label_286:
	cmp	dword ptr [rsp + 0x5c], 0
	mov	rbp, rbp
	je	.label_277
	lea	rsi, [rsi]
	mov	r14, rdi
	inc	rsi
	jmp	.label_278
.label_268:
	mov	rdi, r14
.label_314:
	xor	eax, eax
	nop	
	mov	r15b, 1
	lea	rdi, [rdi]
	jmp	.label_228
.label_333:
	mov	rdi, r14
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x6a], 0
	nop	
	mov	cl, r13b
	nop	
	je	.label_267
.label_222:
	lea	rsi, [rsi]
	xor	eax, eax
	xor	r15d, r15d
	jmp	.label_247
.label_267:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xa7], 0
	lea	rsi, [rsi]
	mov	bl, cl
	nop	
	je	.label_283
.label_262:
	mov	rbp, rbp
	xor	eax, eax
	cmp	byte ptr [rsp + 0xa5], 0
	mov	r15d, 0
	mov	rsp, rsp
	je	.label_228
	lea	rsi, [rsi]
	jmp	.label_220
.label_225:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_306
	mov	rsp, rsp
	mov	rdi, r9
	mov	rbx, r9
	lea	rdi, [rdi]
	mov	rbp, rsi
	mov	rsp, rsp
	call	strlen
	mov	rsi, rbp
	mov	r9, rbx
	mov	rbp, rax
.label_306:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xc0], rbp
	lea	rax, [r9 + rsi]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rax
	nop	
	mov	r15b, 1
	xor	ebx, ebx
	lea	rsi, [rsi]
	lea	r14, [rsp + 0x100]
.label_235:
	lea	rax, [rbx + rsi]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x30], rsi
	nop	
	lea	rsi, [r9 + rax]
	mov	qword ptr [rsp + 0x48], r9
	mov	rbp, rbp
	mov	rdx, rbp
	mov	rbp, rbp
	sub	rdx, rax
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0xfc]
	nop	
	mov	rcx, r14
	call	rpl_mbrtowc
	lea	rdi, [rdi]
	mov	rbp, rax
	test	rbp, rbp
	je	.label_229
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x50], rbx
	cmp	rbp, -1
	lea	rsi, [rsi]
	mov	r10, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	movabs	rsi, 0x20000002b
	mov	r14, qword ptr [rsp + 0x38]
	nop	
	mov	r8b, byte ptr [rsp + 0xa6]
	lea	rdi, [rdi]
	je	.label_233
	cmp	rbp, -2
	nop	
	je	.label_251
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	lea	rdi, [rdi]
	movzx	eax, al
	lea	rdi, [rdi]
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_326
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [rcx + rax]
	lea	rsi, [rsi]
	mov	ecx, 1
.label_273:
	movsx	edx, byte ptr [rax + rcx]
	lea	rdi, [rdi]
	add	edx, -0x5b
	mov	rsp, rsp
	cmp	edx, 0x21
	lea	rsi, [rsi]
	ja	.label_312
	mov	rbp, rbp
	bt	rsi, rdx
	jb	.label_271
.label_312:
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rbp
	jb	.label_273
.label_326:
	mov	rsp, rsp
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	jne	.label_293
	xor	r15d, r15d
.label_293:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0x100]
	mov	rbx, qword ptr [rsp + 0x50]
	lea	rdi, [rdi]
	add	rbx, rbp
	mov	r14, rdi
	nop	
	call	mbsinit
	mov	rsp, rsp
	test	eax, eax
	mov	rsp, rsp
	mov	r9, qword ptr [rsp + 0x48]
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsi, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	je	.label_235
	jmp	.label_295
.label_275:
	mov	rbp, -1
	lea	rdi, [rdi]
	xor	r15d, r15d
	jmp	.label_228
.label_234:
	mov	rdi, r14
	lea	rsi, [rsi]
	cmp	dword ptr [rsp + 0x58], 0
	lea	rdi, [rdi]
	je	.label_277
	lea	rcx, [rsi + 2]
	lea	rdi, [rdi]
	cmp	rcx, rbp
	jae	.label_277
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rsi + r9 + 1]
	cmp	eax, 0x3f
	jne	.label_277
	movsx	edx, byte ptr [r9 + rcx]
	xor	eax, eax
	mov	rsp, rsp
	cmp	edx, 0x3e
	ja	.label_304
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	nop	
	bt	rsi, rdx
	lea	rdi, [rdi]
	jae	.label_299
	cmp	byte ptr [rsp + 0xcf], 0
	mov	rbp, rbp
	jne	.label_283
	lea	rsi, [rsi]
	mov	r13b, byte ptr [r9 + rcx]
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_248
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x3f
.label_248:
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	inc	rax
	lea	rsi, [rsi]
	cmp	rax, r10
	jae	.label_300
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xe0]
	lea	rsi, [rsi]
	mov	byte ptr [rdx + rax], 0x22
.label_300:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_241
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rdx + rax], 0x22
.label_241:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	nop	
	cmp	rax, r10
	lea	rsi, [rsi]
	jae	.label_336
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x3f
.label_336:
	nop	
	add	qword ptr [rsp + 0xf0], 4
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	rsi, rcx
	lea	rdi, [rdi]
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_228
.label_277:
	xor	eax, eax
	mov	rsp, rsp
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_228:
	test	r12b, r12b
	je	.label_287
	cmp	qword ptr [rsp + 0x140], 0
	nop	
	jne	.label_259
	jmp	.label_261
	nop	word ptr cs:[rax + rax]
.label_287:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xb7], 0
	lea	rdi, [rdi]
	je	.label_261
.label_259:
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	cl, r13b
	shr	cl, 5
	lea	rsi, [rsi]
	movzx	edx, cl
	mov	esi, 1
	mov	rsp, rsp
	mov	cl, r13b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_269
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	mov	bl, r13b
	mov	rsi, r14
	je	.label_247
	jmp	.label_220
	nop	word ptr cs:[rax + rax]
.label_261:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	mov	bl, r13b
	jne	.label_220
	jmp	.label_247
.label_269:
	mov	bl, r13b
	mov	rsi, r14
.label_220:
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_283
	mov	rsp, rsp
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_294
	nop	
	mov	al, r11b
	mov	rsp, rsp
	and	al, 1
	jne	.label_294
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rdi, [rdi]
	jae	.label_315
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_315:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_301
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x24
.label_301:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_309
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_309:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_294:
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_325
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_325:
	lea	rdi, [rdi]
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_297
.label_322:
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_228
.label_253:
	mov	rsp, rsp
	add	rcx, rsi
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_339
	nop	word ptr cs:[rax + rax]
.label_265:
	mov	rbp, rbp
	inc	qword ptr [rsp + 0xf0]
	mov	r13b, byte ptr [r9 + rsi + 1]
	mov	rsi, rdx
	mov	dl, byte ptr [rsp + 0xc0]
.label_339:
	mov	rbp, rbp
	test	dl, dl
	mov	rbp, rbp
	je	.label_232
	mov	edx, dword ptr [rsp + 0xec]
	mov	rdi, r14
	test	dl, 1
	lea	rdi, [rdi]
	je	.label_236
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xf0], r10
	mov	rsp, rsp
	jae	.label_244
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
	lea	rsi, [rsi]
	mov	rsi, rbx
.label_244:
	nop	
	inc	qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xec], 0
	mov	rsp, rsp
	jmp	.label_236
	nop	dword ptr [rax]
.label_232:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_284
	cmp	r14d, 2
	jne	.label_226
	mov	rsp, rsp
	mov	al, r11b
	mov	rsp, rsp
	and	al, 1
	jne	.label_226
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_276
	mov	rax, qword ptr [rsp + 0xe0]
	nop	
	mov	rdx, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	mov	byte ptr [rax + rdx], 0x27
.label_276:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_310
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rdx + rax], 0x24
.label_310:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xf0]
	nop	
	lea	rax, [rax + 2]
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_290
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_290:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_226:
	cmp	qword ptr [rsp + 0xf0], r10
	nop	
	jae	.label_227
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_227:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rdi, [rdi]
	inc	rax
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_257
	mov	dl, r13b
	mov	rsp, rsp
	shr	dl, 6
	or	dl, 0x30
	mov	rsp, rsp
	mov	rdi, rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	lea	rsi, [rsi]
	mov	rsi, rdi
.label_257:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	nop	
	jae	.label_318
	mov	dl, r13b
	shr	dl, 3
	nop	
	and	dl, 7
	or	dl, 0x30
	nop	
	mov	rbx, rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rbx
.label_318:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 3
	mov	rsp, rsp
	and	r13b, 7
	or	r13b, 0x30
	mov	al, 1
.label_236:
	mov	rsp, rsp
	lea	rdx, [rsi + 1]
	cmp	rcx, rdx
	jbe	.label_247
	test	r11b, 1
	lea	rdi, [rdi]
	je	.label_224
	mov	bl, al
	lea	rdi, [rdi]
	and	bl, 1
	mov	r14, rdi
	jne	.label_252
	lea	rsi, [rsi]
	mov	rbx, rsi
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_231
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
.label_231:
	mov	rsi, qword ptr [rsp + 0xf0]
	nop	
	inc	rsi
	cmp	rsi, r10
	nop	
	jae	.label_245
	nop	
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	byte ptr [rdi + rsi], 0x27
.label_245:
	add	qword ptr [rsp + 0xf0], 2
	mov	rbp, rbp
	xor	r11d, r11d
	mov	rsi, rbx
	lea	rdi, [rdi]
	jmp	.label_252
	nop	word ptr cs:[rax + rax]
.label_224:
	lea	rsi, [rsi]
	mov	r14, rdi
.label_252:
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_265
	lea	rsi, [rsi]
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, qword ptr [rsp + 0xf0]
	nop	
	mov	byte ptr [rsi + rbx], r13b
	mov	rsp, rsp
	mov	rsi, rdi
	mov	rbp, rbp
	jmp	.label_265
	nop	word ptr cs:[rax + rax]
.label_247:
	lea	rsi, [rsi]
	test	r11b, 1
	je	.label_282
	lea	rsi, [rsi]
	and	al, 1
	jne	.label_282
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_316
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xf0]
	nop	
	mov	byte ptr [rax + rcx], 0x27
.label_316:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	mov	r14, rdi
	jae	.label_289
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_289:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 2
	lea	rdi, [rdi]
	xor	r11d, r11d
	nop	
	mov	bl, r13b
	lea	rsi, [rsi]
	jmp	.label_297
	nop	word ptr cs:[rax + rax]
.label_282:
	lea	rsi, [rsi]
	mov	bl, r13b
	mov	r14, rdi
.label_297:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_254
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], bl
	lea	rdi, [rdi]
	jmp	.label_254
.label_338:
	nop	
	mov	rcx, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	jmp	.label_255
.label_340:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_255:
	cmp	rcx, r10
	jae	.label_319
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_319:
	lea	rsi, [rsi]
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	lea	rsi, [rsi]
	mov	r13b, 0x30
	cmp	edi, 2
	lea	rsi, [rsi]
	je	.label_327
	lea	rdx, [rsi + 1]
	lea	rsi, [rsi]
	cmp	rdx, rbp
	jae	.label_311
	nop	
	mov	dl, byte ptr [r9 + rdx]
	mov	rbp, rbp
	add	dl, 0xd0
	nop	
	movzx	edx, dl
	mov	rbp, rbp
	cmp	edx, 9
	mov	rsp, rsp
	ja	.label_337
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_250
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
	nop	
	mov	rsi, rbx
.label_250:
	lea	rdi, [rdi]
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_242
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rsi + rdx], 0x30
	mov	rsp, rsp
	mov	rsi, rbx
.label_242:
	mov	rsp, rsp
	add	rcx, 3
	xor	r15d, r15d
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xf0], rcx
	lea	rdi, [rdi]
	jmp	.label_228
.label_327:
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_228
.label_311:
	mov	rbp, rbp
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_228
.label_337:
	xor	r15d, r15d
	jmp	.label_228
.label_229:
	lea	rsi, [rsi]
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rsp + 0xa6]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_266
.label_233:
	xor	r15d, r15d
	nop	
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsp, rsp
	jmp	.label_274
.label_251:
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x28], rbp
	mov	rbp, rbp
	jae	.label_281
	mov	r9, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_288:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	cmp	byte ptr [rax + rbx], 0
	nop	
	je	.label_291
	lea	rax, [rsi + rbx + 1]
	lea	rsi, [rsi]
	inc	rbx
	cmp	rax, rbp
	jb	.label_288
	xor	r15d, r15d
	nop	
	jmp	.label_266
.label_281:
	lea	rsi, [rsi]
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
.label_274:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_266:
	mov	byte ptr [rsp + 0xa6], r8b
	lea	rdi, [rdi]
	jmp	.label_295
.label_291:
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_266
.label_304:
	lea	rdi, [rdi]
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_228
.label_299:
	mov	rsp, rsp
	xor	r15d, r15d
	nop	
	mov	rsi, rbx
	jmp	.label_228
	nop	word ptr cs:[rax + rax]
.label_330:
	cmp	qword ptr [rsp + 0xf0], 0
	mov	rbp, rbp
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	and	cl, 1
	je	.label_305
	lea	rdi, [rdi]
	or	dl, al
	lea	rdi, [rdi]
	je	.label_284
.label_305:
	nop	
	mov	qword ptr [rsp + 0xc0], rbp
	mov	rsp, rsp
	mov	r12, r9
	nop	
	test	cl, cl
	setne	al
	lea	rdi, [rdi]
	cmp	r14d, 2
	nop	
	setne	dl
	mov	rsi, qword ptr [rsp + 0x70]
	lea	rdi, [rdi]
	test	sil, 1
	lea	rdi, [rdi]
	je	.label_323
	lea	rdi, [rdi]
	or	dl, al
	jne	.label_323
	lea	rdi, [rdi]
	test	r8b, 1
	jne	.label_307
	cmp	qword ptr [rsp + 0x80], 0
	je	.label_323
	lea	rdi, [rdi]
	test	r10, r10
	nop	
	mov	r13d, r14d
	mov	al, byte ptr [rsp + 0xa6]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	mov	r15b, dl
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x80]
	je	.label_221
.label_323:
	nop	
	mov	rdx, qword ptr [rsp + 0xa8]
	lea	rdi, [rdi]
	test	rdx, rdx
	je	.label_238
	lea	rsi, [rsi]
	test	cl, cl
	jne	.label_238
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_238
	inc	rdx
	nop	dword ptr [rax + rax]
.label_258:
	nop	
	cmp	qword ptr [rsp + 0xf0], r10
	mov	rsp, rsp
	jae	.label_249
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_249:
	nop	
	inc	qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	mov	al, byte ptr [rdx]
	lea	rdi, [rdi]
	inc	rdx
	test	al, al
	jne	.label_258
.label_238:
	nop	
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_264
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_264
.label_283:
	lea	rdi, [rdi]
	mov	rdx, r9
	lea	rsi, [rsi]
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	r14, rdi
.label_302:
	lea	rsi, [rsi]
	test	r8b, 1
	lea	rsi, [rsi]
	mov	r8d, 4
	cmove	r8d, r14d
	lea	rsi, [rsi]
	cmp	r14d, 2
	mov	rbp, rbp
	cmovne	r8d, r14d
	nop	
	and	r9d, 0xfffffffd
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [rsp + 0x10], rax
	nop	
	mov	rax, qword ptr [rsp + 0x90]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], 0
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	rsi, r10
	mov	rcx, rbp
.label_320:
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_264:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	nop	
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
.label_271:
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rsp + 0x6c]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_302
.label_284:
	lea	rsi, [rsi]
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	rbp, rbp
	jmp	.label_302
.label_307:
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [rsp + 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x90]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x140]
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	mov	r8d, 5
	nop	
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x80]
	lea	rdi, [rdi]
	mov	rdx, r12
	nop	
	mov	rcx, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rsp + 0x6c]
	jmp	.label_320
.label_239:
	lea	rdi, [rdi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406620
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	lea	rdi, [rdi]
	mov	rax, rdx
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rcx, rax
	mov	rbp, rbp
	jmp	quotearg_alloc_mem
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406640

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
	mov	qword ptr [rsp + 0x28], r14
	mov	r15, rdi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], r15
	test	rcx, rcx
	mov	r12d, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	cmovne	r12, rcx
	mov	rbp, rbp
	call	__errno_location
	mov	qword ptr [rsp + 0x38], rax
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x44], ecx
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
	call	xcharalloc
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
	mov	rdx, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	test	rax, rax
	mov	ecx, dword ptr [rsp + 0x44]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	dword ptr [rdx], ecx
	je	.label_341
	mov	qword ptr [rax], rbx
.label_341:
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
	#Procedure 0x406790
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_342
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_345:
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
	jl	.label_345
.label_342:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_344
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_346]], OFFSET FLAT:slot0
.label_344:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_343
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_343:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406850

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x406860

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
	mov	qword ptr [rsp + 0x40], rsi
	mov	ebx, edi
	call	__errno_location
	test	ebx, ebx
	js	.label_350
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_352
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_348
.label_352:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_353
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
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
	jne	.label_349
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_349:
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
.label_348:
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
	mov	qword ptr [rsp + 0x20], rcx
	mov	r8d, dword ptr [rcx]
	mov	r12d, dword ptr [rcx + 4]
	or	r12d, 1
	mov	rsp, rsp
	lea	rdx, [rcx + 8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rdx
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
	mov	rdx, qword ptr [rsp + 0x40]
	nop	
	mov	rcx, r14
	lea	rdi, [rdi]
	mov	r9d, r12d
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	nop	
	mov	r14, rax
	cmp	r15, r14
	ja	.label_347
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
	je	.label_351
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_351:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	call	xcharalloc
	mov	rbx, rax
	nop	
	mov	qword ptr [rbp], rbx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	mov	r8d, dword ptr [rcx]
	nop	
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r9d, r12d
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
.label_347:
	mov	rax, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsp + 0x2c]
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
.label_350:
	lea	rdi, [rdi]
	call	abort
.label_353:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x406ad0

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406ae0
	.globl quotearg
	.type quotearg, @function
quotearg:

	nop
	mov	rax, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	rsi, rax
	jmp	quotearg_n
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406b00
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rcx, rdi
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsi, rcx
	lea	rsi, [rsi]
	mov	rdx, rax
	jmp	quotearg_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406b20

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	nop
	push	rbp
	mov	rbp, rbp
	push	r14
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x40
	mov	rsp, rsp
	mov	rbx, rdx
	mov	ebp, edi
	nop	
	lea	r14, [rsp + 8]
	lea	rdi, [rdi]
	mov	rdi, r14
	call	quoting_options_from_style
	mov	rdx, -1
	mov	edi, ebp
	mov	rsi, rbx
	mov	rcx, r14
	call	quotearg_n_options
	add	rsp, 0x40
	lea	rdi, [rdi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406b80

	.globl quoting_options_from_style
	.type quoting_options_from_style, @function
quoting_options_from_style:
	mov	rbp, rbp
	sub	rsp, 0x38
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	mov	rbp, rbp
	je	.label_354
	mov	dword ptr [rdi], esi
	nop	
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rdi + 0x34], eax
	lea	rsi, [rsi]
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	nop	
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rdi + 0x24], xmm2
	movups	xmmword ptr [rdi + 0x14], xmm1
	lea	rsi, [rsi]
	movups	xmmword ptr [rdi + 4], xmm0
	lea	rdi, [rdi]
	mov	rax, rdi
	add	rsp, 0x38
	mov	rbp, rbp
	ret	
.label_354:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406bf0

	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	mov	rsp, rsp
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x38
	nop	
	mov	r14, rcx
	lea	rdi, [rdi]
	mov	rbx, rdx
	lea	rsi, [rsi]
	mov	ebp, edi
	lea	rsi, [rsi]
	lea	r15, [rsp]
	nop	
	mov	rdi, r15
	call	quoting_options_from_style
	mov	edi, ebp
	nop	
	mov	rsi, rbx
	nop	
	mov	rdx, r14
	mov	rcx, r15
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0x38
	mov	rsp, rsp
	pop	rbx
	mov	rbp, rbp
	pop	r14
	nop	
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406c50
	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:

	mov	rax, rsi
	mov	rbp, rbp
	mov	ecx, edi
	xor	edi, edi
	mov	esi, ecx
	mov	rbp, rbp
	mov	rdx, rax
	jmp	quotearg_n_style
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406c70
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	mov	rax, rdx
	mov	rcx, rsi
	lea	rsi, [rsi]
	mov	edx, edi
	xor	edi, edi
	mov	esi, edx
	mov	rdx, rcx
	mov	rcx, rax
	jmp	quotearg_n_style_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406c90

	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:
	push	r15
	push	r14
	mov	rbp, rbp
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x40
	mov	eax, edx
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	rbx, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_355]]
	mov	qword ptr [rsp + 0x30], rcx
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_356]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + label_357]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	lea	r15, [rsp]
	lea	rsi, [rsi]
	mov	edx, 1
	mov	rsp, rsp
	mov	rdi, r15
	mov	esi, eax
	mov	rbp, rbp
	call	set_char_quoting
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsi, rbx
	nop	
	mov	rdx, r14
	mov	rsp, rsp
	mov	rcx, r15
	call	quotearg_n_options
	nop	
	add	rsp, 0x40
	lea	rsi, [rsi]
	pop	rbx
	nop	
	pop	r14
	nop	
	pop	r15
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406d30

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	lea	rdi, [rdi]
	mov	rsi, -1
	lea	rdi, [rdi]
	mov	edx, eax
	mov	rbp, rbp
	jmp	quotearg_char_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406d50

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	mov	esi, 0x3a
	mov	rbp, rbp
	jmp	quotearg_char
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406d60
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406d70

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	r14, rdx
	mov	ebp, edi
	lea	rsi, [rsi]
	lea	rbx, [rsp + 8]
	mov	rdi, rbx
	mov	rbp, rbp
	call	quoting_options_from_style
	nop	
	mov	esi, 0x3a
	lea	rdi, [rdi]
	mov	edx, 1
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rbp, rbp
	call	set_char_quoting
	mov	rdx, -1
	mov	edi, ebp
	lea	rsi, [rsi]
	mov	rsi, r14
	mov	rcx, rbx
	mov	rsp, rsp
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0x40
	nop	
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406de0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	lea	rsi, [rsi]
	mov	r8, -1
	nop	
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406df0

	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	push	r15
	push	r14
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	r14, r8
	mov	rbp, rbp
	mov	rbx, rcx
	mov	ebp, edi
	mov	rax,  qword ptr [word ptr [rip + label_355]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_356]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_357]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp], xmm0
	lea	r15, [rsp]
	mov	rdi, r15
	call	set_custom_quoting
	mov	edi, ebp
	nop	
	mov	rsi, rbx
	mov	rbp, rbp
	mov	rdx, r14
	mov	rcx, r15
	mov	rsp, rsp
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0x38
	pop	rbx
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406e80
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	mov	rax, rdx
	mov	rsp, rsp
	mov	rcx, rsi
	mov	rdx, rdi
	nop	
	xor	edi, edi
	mov	rsi, rdx
	lea	rdi, [rdi]
	mov	rdx, rcx
	mov	rbp, rbp
	mov	rcx, rax
	lea	rsi, [rsi]
	jmp	quotearg_n_custom
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406eb0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	mov	rax, rcx
	mov	rcx, rdx
	mov	rbp, rbp
	mov	rdx, rsi
	mov	rsp, rsp
	mov	rsi, rdi
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	r8, rax
	mov	rsp, rsp
	jmp	quotearg_n_custom_mem
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406ee0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406ef0
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	mov	rax, rsi
	nop	
	mov	rcx, rdi
	xor	edi, edi
	lea	rdi, [rdi]
	mov	rsi, rcx
	mov	rdx, rax
	lea	rsi, [rsi]
	jmp	quote_n_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406f10

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406f20

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	quote_n
	.section	.text
	.align	32
	#Procedure 0x406f30

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	r14
	push	rbx
	nop	
	sub	rsp, 0x10
	mov	r14d, esi
	lea	rsi, [rsi]
	mov	rbx, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	mov	rbp, rbp
	call	dcgettext
	cmp	rax, rbx
	mov	rsp, rsp
	jne	.label_358
	mov	rsp, rsp
	call	locale_charset
	mov	rbp, rax
	mov	dword ptr [rsp + 8], 0
	mov	rsp, rsp
	mov	dword ptr [rsp], 0
	nop	
	mov	esi, 0x55
	mov	rbp, rbp
	mov	edx, 0x54
	mov	rsp, rsp
	mov	ecx, 0x46
	mov	r8d, 0x2d
	mov	r9d, 0x38
	mov	rdi, rbp
	call	strcaseeq0
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_359
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	lea	rdi, [rdi]
	cmp	ecx, 0x60
	je	.label_358
	nop	
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_358
.label_359:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 8], 0x30
	mov	dword ptr [rsp], 0x33
	lea	rdi, [rdi]
	mov	esi, 0x47
	nop	
	mov	edx, 0x42
	mov	ecx, 0x31
	mov	rbp, rbp
	mov	r8d, 0x38
	mov	rsp, rsp
	mov	r9d, 0x30
	mov	rdi, rbp
	call	strcaseeq0
	test	eax, eax
	mov	rbp, rbp
	je	.label_360
	nop	
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	lea	rsi, [rsi]
	cmp	ecx, 0x60
	lea	rdi, [rdi]
	je	.label_358
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_358
.label_360:
	cmp	r14d, 9
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str.10
	mov	eax, OFFSET FLAT:.str.12_0
	lea	rsi, [rsi]
	cmove	rax, rcx
.label_358:
	add	rsp, 0x10
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407060

	.globl strcaseeq0
	.type strcaseeq0, @function
strcaseeq0:
	mov	rsp, rsp
	push	rbp
	nop	
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	lea	rdi, [rdi]
	push	rbx
	nop	
	push	rax
	mov	rbp, rbp
	mov	r14d, r9d
	mov	r15d, r8d
	mov	r12d, ecx
	nop	
	mov	r13d, edx
	lea	rsi, [rsi]
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	lea	rsi, [rsi]
	call	c_isupper
	movsx	ecx, byte ptr [rbx]
	lea	rsi, [rsi]
	test	al, al
	je	.label_362
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	lea	rdi, [rdi]
	je	.label_361
	jmp	.label_363
.label_362:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rdi, [rdi]
	jne	.label_363
.label_361:
	mov	rsp, rsp
	mov	eax, 1
	test	bpl, bpl
	mov	rsp, rsp
	je	.label_363
	mov	al, byte ptr [rsp + 0x40]
	movsx	ecx, byte ptr [rsp + 0x48]
	lea	rsi, [rsi]
	mov	dword ptr [rsp], ecx
	movsx	esi, r13b
	movsx	edx, r12b
	nop	
	movsx	ecx, r15b
	nop	
	movsx	r8d, r14b
	mov	rbp, rbp
	movsx	r9d, al
	mov	rdi, rbx
	call	strcaseeq1
.label_363:
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	nop	
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407120

	.globl strcaseeq1
	.type strcaseeq1, @function
strcaseeq1:
	push	rbp
	mov	rbp, rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	mov	rbp, rbp
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	push	rax
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 4], r9d
	lea	rdi, [rdi]
	mov	r15d, r8d
	mov	rbp, rbp
	mov	r12d, ecx
	mov	r13d, edx
	mov	rsp, rsp
	mov	ebp, esi
	lea	rsi, [rsi]
	mov	rbx, rdi
	mov	r14b, byte ptr [rsp + 0x40]
	lea	rsi, [rsi]
	mov	edi, ebp
	lea	rdi, [rdi]
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 1]
	nop	
	test	al, al
	mov	rsp, rsp
	je	.label_366
	nop	
	and	ecx, 0xffffffdf
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	nop	
	je	.label_365
	lea	rsi, [rsi]
	jmp	.label_364
.label_366:
	lea	rsi, [rsi]
	xor	eax, eax
	movzx	edx, bpl
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, edx
	mov	rsp, rsp
	jne	.label_364
.label_365:
	lea	rdi, [rdi]
	mov	eax, 1
	test	bpl, bpl
	lea	rdi, [rdi]
	je	.label_364
	nop	
	movsx	esi, r13b
	mov	rbp, rbp
	movsx	edx, r12b
	lea	rdi, [rdi]
	movsx	ecx, r15b
	mov	eax, dword ptr [rsp + 4]
	movsx	r8d, al
	lea	rdi, [rdi]
	movsx	r9d, r14b
	mov	rbp, rbp
	mov	rdi, rbx
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	jmp	strcaseeq2
.label_364:
	add	rsp, 8
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407210

	.globl strcaseeq2
	.type strcaseeq2, @function
strcaseeq2:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	mov	rbp, rbp
	push	r12
	mov	rsp, rsp
	push	rbx
	push	rax
	mov	rsp, rsp
	mov	r14d, r9d
	lea	rdi, [rdi]
	mov	r15d, r8d
	mov	rbp, rbp
	mov	r12d, ecx
	mov	r13d, edx
	lea	rsi, [rsi]
	mov	ebp, esi
	mov	rbx, rdi
	nop	
	mov	edi, ebp
	call	c_isupper
	mov	rbp, rbp
	movsx	ecx, byte ptr [rbx + 2]
	test	al, al
	je	.label_369
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_368
	jmp	.label_367
.label_369:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	movzx	edx, bpl
	mov	rsp, rsp
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rsi, [rsi]
	jne	.label_367
.label_368:
	nop	
	mov	eax, 1
	lea	rsi, [rsi]
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_367
	lea	rdi, [rdi]
	movsx	esi, r13b
	movsx	edx, r12b
	movsx	ecx, r15b
	movsx	r8d, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	jmp	strcaseeq3
.label_367:
	mov	rsp, rsp
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4072e0

	.globl strcaseeq3
	.type strcaseeq3, @function
strcaseeq3:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	lea	rdi, [rdi]
	push	r14
	mov	rsp, rsp
	push	r12
	push	rbx
	mov	r14d, r8d
	mov	r15d, ecx
	mov	rbp, rbp
	mov	r12d, edx
	lea	rdi, [rdi]
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	nop	
	call	c_isupper
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rbx + 3]
	nop	
	test	al, al
	je	.label_372
	lea	rsi, [rsi]
	and	ecx, 0xffffffdf
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	je	.label_371
	jmp	.label_370
.label_372:
	xor	eax, eax
	mov	rsp, rsp
	movzx	edx, bpl
	movzx	ecx, cl
	nop	
	cmp	ecx, edx
	lea	rsi, [rsi]
	jne	.label_370
.label_371:
	lea	rsi, [rsi]
	mov	eax, 1
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_370
	movsx	esi, r12b
	mov	rsp, rsp
	movsx	edx, r15b
	mov	rsp, rsp
	movsx	ecx, r14b
	nop	
	mov	rdi, rbx
	pop	rbx
	nop	
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq4
.label_370:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x407380

	.globl strcaseeq4
	.type strcaseeq4, @function
strcaseeq4:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	mov	rbp, rbp
	push	rbx
	push	rax
	mov	r14d, ecx
	lea	rdi, [rdi]
	mov	r15d, edx
	nop	
	mov	ebp, esi
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	edi, ebp
	nop	
	call	c_isupper
	nop	
	movsx	ecx, byte ptr [rbx + 4]
	mov	rbp, rbp
	test	al, al
	mov	rbp, rbp
	je	.label_375
	lea	rdi, [rdi]
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	mov	rsp, rsp
	je	.label_374
	nop	
	jmp	.label_373
.label_375:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	mov	rsp, rsp
	jne	.label_373
.label_374:
	mov	eax, 1
	test	bpl, bpl
	je	.label_373
	lea	rdi, [rdi]
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	mov	rsp, rsp
	add	rsp, 8
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	mov	rsp, rsp
	jmp	strcaseeq5
.label_373:
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	nop	
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407420

	.globl strcaseeq5
	.type strcaseeq5, @function
strcaseeq5:
	push	rbp
	push	r14
	mov	rsp, rsp
	push	rbx
	lea	rsi, [rsi]
	mov	r14d, edx
	mov	rsp, rsp
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 5]
	lea	rsi, [rsi]
	test	al, al
	nop	
	je	.label_378
	mov	rsp, rsp
	and	ecx, 0xffffffdf
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	ecx, ebp
	lea	rsi, [rsi]
	je	.label_377
	lea	rsi, [rsi]
	jmp	.label_376
.label_378:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	nop	
	jne	.label_376
.label_377:
	nop	
	mov	eax, 1
	lea	rdi, [rdi]
	test	bpl, bpl
	nop	
	je	.label_376
	movsx	esi, r14b
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	pop	rbx
	mov	rsp, rsp
	pop	r14
	lea	rdi, [rdi]
	pop	rbp
	jmp	strcaseeq6
.label_376:
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4074b0

	.globl strcaseeq6
	.type strcaseeq6, @function
strcaseeq6:
	nop
	push	rbp
	mov	rbp, rbp
	push	rbx
	push	rax
	nop	
	mov	ebp, esi
	nop	
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	mov	rsp, rsp
	movsx	ecx, byte ptr [rbx + 6]
	test	al, al
	mov	rsp, rsp
	je	.label_381
	and	ecx, 0xffffffdf
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	je	.label_380
	jmp	.label_379
.label_381:
	xor	eax, eax
	movzx	edx, bpl
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_379
.label_380:
	mov	eax, 1
	nop	
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_379
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_379:
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	nop	
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x407520

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	lea	rsi, [rsi]
	mov	rbx, rdi
	xor	edi, edi
	lea	rsi, [rsi]
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	lea	rsi, [rsi]
	test	al, al
	mov	rsp, rsp
	je	.label_382
	mov	eax, 1
	mov	rsp, rsp
	test	ecx, 0xffffffdf
	lea	rdi, [rdi]
	jne	.label_384
	mov	rbp, rbp
	jmp	.label_383
.label_382:
	mov	eax, 1
	lea	rsi, [rsi]
	test	cl, cl
	je	.label_383
.label_384:
	xor	eax, eax
.label_383:
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407570

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
	je	.label_392
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
	jmp	.label_394
.label_392:
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
.label_394:
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
	ja	.label_390
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_386]]
.label_589:
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
.label_390:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	jmp	.label_388
.label_590:
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
.label_591:
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
.label_592:
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
	jmp	.label_391
.label_593:
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
	jmp	.label_389
.label_594:
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
	jmp	.label_387
.label_595:
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
.label_387:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_389:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_391:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_385
.label_597:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_388:
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
	jmp	.label_393
.label_596:
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
.label_393:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_385:
	mov	rbp, rbp
	call	__fprintf_chk
.label_588:
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
	#Procedure 0x407960
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_395:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_395
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407990

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_399:
	nop	
	movsxd	r10, dword ptr [r8]
	lea	rdi, [rdi]
	cmp	r10, 0x28
	ja	.label_396
	mov	r11, r10
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	rbp, rbp
	mov	dword ptr [r8], eax
	mov	rsp, rsp
	jmp	.label_398
	nop	word ptr cs:[rax + rax]
.label_396:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_398:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_397
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_399
.label_397:
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
	#Procedure 0x407a20
	.globl version_etc
	.type version_etc, @function
version_etc:

	sub	rsp, 0xc8
	test	al, al
	nop	
	je	.label_400
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x30], xmm0
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x40], xmm1
	nop	
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	nop	
	movaps	xmmword ptr [rsp + 0x70], xmm4
	nop	
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_400:
	mov	qword ptr [rsp + 0x28], r9
	nop	
	mov	qword ptr [rsp + 0x20], r8
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	mov	rbp, rbp
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb0], 0x20
	lea	r8, [rsp + 0xb0]
	mov	rsp, rsp
	call	version_etc_va
	lea	rdi, [rdi]
	add	rsp, 0xc8
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407ad0
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
	#Procedure 0x407b60
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rsp, rsp
	div	rsi
	mov	rbp, rbp
	cmp	rax, rdi
	mov	rbp, rbp
	jb	.label_401
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_401:
	nop	
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407ba0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_402
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_403
.label_402:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_403:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407bd0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	lea	rdi, [rdi]
	mov	rcx, rdx
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	nop	
	xor	edx, edx
	nop	
	div	rcx
	cmp	rax, rsi
	mov	rbp, rbp
	jb	.label_404
	imul	rcx, rsi
	mov	rbp, rbp
	mov	rsi, rcx
	mov	rsp, rsp
	jmp	xrealloc
.label_404:
	push	rax
	mov	rsp, rsp
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407c10

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_405
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_405
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_405:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_406
	test	rax, rax
	nop	
	je	.label_407
.label_406:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_407:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407c60

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	nop	
	mov	r8, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_408
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_409
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_410
.label_408:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_411
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_411:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_412
.label_410:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	r8, rcx
	nop	
	mov	rsi, r8
	mov	rbp, rbp
	pop	rax
	lea	rdi, [rdi]
	jmp	xrealloc
.label_409:
	call	xalloc_die
.label_412:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407d00

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	mov	rbp, rbp
	jmp	xmalloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407d10
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	mov	rsp, rsp
	jmp	x2nrealloc
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
	mov	r14, rdi
	nop	
	call	xmalloc
	mov	rbx, rax
	xor	esi, esi
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rdx, r14
	call	memset
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	lea	rdi, [rdi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407d60
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
	jb	.label_413
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_413
	pop	rcx
	ret	
.label_413:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x407d90

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	rbx
	nop	
	mov	r15, rsi
	lea	rsi, [rsi]
	mov	r14, rdi
	mov	rdi, r15
	call	xmalloc
	mov	rsp, rsp
	mov	rbx, rax
	mov	rbp, rbp
	mov	rdi, rbx
	mov	rsi, r14
	mov	rbp, rbp
	mov	rdx, r15
	lea	rdi, [rdi]
	call	memcpy
	mov	rax, rbx
	pop	rbx
	pop	r14
	mov	rbp, rbp
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407de0
	.globl xstrdup
	.type xstrdup, @function
xstrdup:

	push	rbx
	lea	rsi, [rsi]
	mov	rbx, rdi
	mov	rsp, rsp
	call	strlen
	lea	rsi, [rax + 1]
	mov	rdi, rbx
	mov	rbp, rbp
	pop	rbx
	jmp	xmemdup
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407e00

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
	#Procedure 0x407e50

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_414
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_415
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
	je	.label_415
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
.label_414:
	mov	ecx, 1
.label_415:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407ec0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	lea	rsi, [rsi]
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	rbx, rdi
	call	fileno
	mov	rbp, rbp
	test	eax, eax
	js	.label_416
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_417
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
	je	.label_416
.label_417:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_416
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	lea	rsi, [rsi]
	test	ebp, ebp
	je	.label_418
	call	__errno_location
	mov	dword ptr [rax], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_418:
	add	rsp, 8
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_416:
	lea	rsi, [rsi]
	mov	rdi, rbx
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	pop	rbp
	nop	
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407f80

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_419
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_419
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_419:
	mov	rsp, rsp
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	
	.section	.text
	.align	32
	#Procedure 0x407fb0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	mov	rbp, rbp
	jne	.label_420
	mov	rbp, rbp
	ret	
.label_420:
	lea	rsi, [rsi]
	xor	esi, esi
	mov	edx, 1
	lea	rdi, [rdi]
	jmp	rpl_fseeko
	nop	
	.section	.text
	.align	32
	#Procedure 0x407fd0

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
	jne	.label_423
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_423
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_421
.label_423:
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
.label_421:
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
	je	.label_422
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_422:
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
	#Procedure 0x408080

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
	je	.label_424
	nop	
	cmp	r15, -2
	jb	.label_424
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_424
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_424:
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
	#Procedure 0x408110
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
	jle	.label_425
	lea	rdi, [rdi]
	add	rax, rbx
	nop	word ptr cs:[rax + rax]
.label_426:
	mov	rbp, rbp
	movzx	ecx, byte ptr [rax - 1]
	nop	
	cmp	ecx, 0x20
	jne	.label_425
	mov	rbp, rbp
	mov	byte ptr [rax - 1], 0
	dec	rax
	cmp	rbx, rax
	mov	rbp, rbp
	jb	.label_426
.label_425:
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
	#Procedure 0x4081b0

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
	push	rax
	mov	ebp, ecx
	mov	r14, rdx
	mov	r15, rsi
	mov	rsp, rsp
	mov	qword ptr [rsp], 0
	call	utmpxname
	lea	rsi, [rsi]
	call	setutxent
	mov	rbp, rbp
	xor	r13d, r13d
	xor	r12d, r12d
	mov	rsp, rsp
	jmp	.label_427
.label_429:
	lea	rdi, [r12 + r12*2]
	inc	r12
	lea	rdi, [rdi]
	shl	rdi, 7
	mov	rsp, rsp
	add	rdi, r13
	mov	rbp, rbp
	mov	edx, 0x180
	mov	rsi, rbx
	call	memcpy
	nop	word ptr cs:[rax + rax]
.label_427:
	call	getutxent
	mov	rbp, rbp
	mov	rbx, rax
	mov	rbp, rbp
	test	rbx, rbx
	je	.label_428
	mov	rdi, rbx
	mov	rsp, rsp
	mov	esi, ebp
	lea	rsi, [rsi]
	call	desirable_utmp_entry
	mov	rbp, rbp
	test	al, al
	lea	rdi, [rdi]
	je	.label_427
	cmp	r12, qword ptr [rsp]
	lea	rsi, [rsi]
	jne	.label_429
	mov	edx, 0x180
	mov	rdi, r13
	mov	rbp, rbp
	lea	rsi, [rsp]
	lea	rsi, [rsi]
	call	x2nrealloc
	mov	r13, rax
	nop	
	jmp	.label_429
.label_428:
	mov	rbp, rbp
	call	endutxent
	mov	qword ptr [r15], r12
	mov	qword ptr [r14], r13
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	mov	rsp, rsp
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4082b0

	.globl desirable_utmp_entry
	.type desirable_utmp_entry, @function
desirable_utmp_entry:
	cmp	byte ptr [rdi + 0x2c], 0
	je	.label_432
	movzx	eax, word ptr [rdi]
	cmp	eax, 7
	nop	
	sete	al
	jmp	.label_433
.label_432:
	xor	eax, eax
.label_433:
	mov	rbp, rbp
	push	rax
	mov	rsp, rsp
	test	sil, 2
	je	.label_430
	test	al, al
	lea	rdi, [rdi]
	jne	.label_430
	nop	
	xor	eax, eax
	pop	rcx
	ret	
.label_430:
	test	sil, 1
	lea	rsi, [rsi]
	je	.label_431
	xor	al, 1
	lea	rsi, [rsi]
	jne	.label_431
	mov	edi, dword ptr [rdi + 4]
	mov	rbp, rbp
	test	edi, edi
	jle	.label_431
	mov	rsp, rsp
	xor	esi, esi
	lea	rdi, [rdi]
	call	kill
	lea	rdi, [rdi]
	test	eax, eax
	jns	.label_431
	lea	rsi, [rsi]
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 3
	mov	rsp, rsp
	jne	.label_431
	mov	rsp, rsp
	xor	eax, eax
	pop	rcx
	nop	
	ret	
.label_431:
	mov	al, 1
	pop	rcx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408330

	.globl tzalloc
	.type tzalloc, @function
tzalloc:
	push	r15
	push	r14
	push	rbx
	lea	rsi, [rsi]
	mov	r14, rdi
	mov	rsp, rsp
	xor	r15d, r15d
	lea	rdi, [rdi]
	test	r14, r14
	je	.label_434
	mov	rdi, r14
	mov	rbp, rbp
	call	strlen
	mov	rbp, rbp
	mov	r15, rax
	inc	r15
.label_434:
	nop	
	lea	rax, [r15 + 0x11]
	and	rax, 0xfffffffffffffff8
	lea	rdi, [rdi]
	cmp	r15, 0x77
	nop	
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	nop	
	mov	rbx, rax
	lea	rdi, [rdi]
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_435
	mov	qword ptr [rbx], 0
	test	r14, r14
	mov	rsp, rsp
	setne	byte ptr [rbx + 8]
	mov	byte ptr [rbx + 9], 0
	lea	rdi, [rdi]
	je	.label_435
	nop	
	mov	rdi, rbx
	lea	rsi, [rsi]
	add	rdi, 9
	mov	rsi, r14
	mov	rbp, rbp
	mov	rdx, r15
	call	extend_abbrs
.label_435:
	mov	rax, rbx
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4083d0

	.globl extend_abbrs
	.type extend_abbrs, @function
extend_abbrs:
	mov	rsp, rsp
	push	r14
	mov	rbp, rbp
	push	rbx
	push	rax
	lea	rsi, [rsi]
	mov	r14, rdx
	mov	rbx, rdi
	call	memcpy
	lea	rsi, [rsi]
	mov	byte ptr [rbx + r14], 0
	nop	
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408400

	.globl tzfree
	.type tzfree, @function
tzfree:
	lea	rdi, [rdi]
	push	rbx
	lea	rdi, [rdi]
	cmp	rdi, 2
	jb	.label_436
	nop	dword ptr [rax]
.label_437:
	mov	rbx, qword ptr [rdi]
	call	free
	test	rbx, rbx
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rbp, rbp
	jne	.label_437
.label_436:
	mov	rsp, rsp
	pop	rbx
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408430
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
	je	.label_440
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	set_tz
	mov	r14, rax
	test	r14, r14
	je	.label_438
	mov	rdi, rbp
	mov	rsi, r15
	nop	
	call	localtime_r
	nop	
	mov	bpl, 1
	mov	rbp, rbp
	test	rax, rax
	je	.label_441
	nop	
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, r15
	call	save_abbr
	lea	rdi, [rdi]
	mov	bpl, al
	xor	bpl, 1
.label_441:
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
	jmp	.label_439
.label_440:
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
.label_438:
	xor	eax, eax
.label_439:
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
	#Procedure 0x408510

	.globl set_tz
	.type set_tz, @function
set_tz:
	push	rbp
	mov	rsp, rsp
	push	r14
	push	rbx
	lea	rdi, [rdi]
	mov	r14, rdi
	mov	rbp, rbp
	call	getenv_TZ
	lea	rsi, [rsi]
	mov	rbx, rax
	lea	rdi, [rdi]
	test	rbx, rbx
	mov	cl, byte ptr [r14 + 8]
	je	.label_443
	test	cl, cl
	je	.label_444
	lea	rdi, [r14 + 9]
	mov	rsi, rbx
	call	strcmp
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	eax, 1
	lea	rdi, [rdi]
	test	ecx, ecx
	lea	rsi, [rsi]
	jne	.label_444
	jmp	.label_442
.label_443:
	mov	eax, 1
	mov	rsp, rsp
	test	cl, cl
	lea	rsi, [rsi]
	je	.label_442
.label_444:
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	tzalloc
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_442
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	change_env
	test	al, al
	nop	
	je	.label_445
	nop	
	mov	rax, rbx
	mov	rbp, rbp
	jmp	.label_442
.label_445:
	lea	rsi, [rsi]
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	tzfree
	mov	rsp, rsp
	mov	dword ptr [r14], ebp
	nop	
	xor	eax, eax
.label_442:
	pop	rbx
	pop	r14
	mov	rbp, rbp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4085d0

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
	mov	r13b, 1
	lea	rsi, [rsi]
	test	rbx, rbx
	je	.label_449
	cmp	r15, rbx
	ja	.label_448
	nop	
	lea	rax, [r15 + 0x38]
	cmp	rbx, rax
	lea	rsi, [rsi]
	jb	.label_449
.label_448:
	mov	r14d, OFFSET FLAT:.str_0
	nop	
	cmp	byte ptr [rbx], 0
	je	.label_447
	lea	r14, [r12 + 9]
	jmp	.label_453
.label_457:
	mov	rax, qword ptr [r12]
	lea	r14, [rax + 9]
	test	rax, rax
	cmove	r14, rcx
	mov	rbp, rbp
	cmovne	r12, rax
.label_453:
	lea	r13, [r12 + 9]
	nop	word ptr cs:[rax + rax]
.label_452:
	mov	rdi, r14
	lea	rdi, [rdi]
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	strcmp
	lea	rdi, [rdi]
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_454
	cmp	byte ptr [r14], 0
	mov	rsp, rsp
	jne	.label_456
	lea	rsi, [rsi]
	mov	rbp, r14
	sub	rbp, r13
	lea	rdi, [rdi]
	jne	.label_450
	cmp	byte ptr [r12 + 8], 0
	mov	rbp, rbp
	je	.label_450
.label_456:
	mov	rdi, r14
	nop	
	call	strlen
	lea	rsi, [rsi]
	lea	rcx, [rax + r14 + 1]
	cmp	byte ptr [rax + r14 + 1], 0
	mov	r14, rcx
	lea	rdi, [rdi]
	jne	.label_452
	lea	rdi, [rdi]
	jmp	.label_457
.label_454:
	mov	r13b, 1
.label_447:
	mov	rbp, rbp
	mov	qword ptr [r15 + 0x30], r14
.label_449:
	mov	al, r13b
	nop	
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_450:
	mov	rdi, rbx
	call	strlen
	inc	rax
	mov	rbp, rbp
	mov	rcx, rbp
	not	rcx
	nop	
	cmp	rax, rcx
	mov	r13b, 1
	lea	rdi, [rdi]
	jbe	.label_455
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	r13d, r13d
	jmp	.label_449
.label_455:
	add	rbp, rax
	lea	rdi, [rdi]
	cmp	rbp, 0x76
	lea	rsi, [rsi]
	ja	.label_446
	mov	rsp, rsp
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, rbx
	mov	rdx, rax
	mov	rsp, rsp
	call	extend_abbrs
	mov	rbp, rbp
	jmp	.label_447
.label_446:
	mov	rdi, rbx
	nop	
	call	tzalloc
	mov	r14, rax
	lea	rsi, [rsi]
	mov	qword ptr [r12], r14
	test	r14, r14
	lea	rsi, [rsi]
	je	.label_451
	mov	rsp, rsp
	mov	byte ptr [r14 + 8], 0
	lea	rsi, [rsi]
	add	r14, 9
	jmp	.label_447
.label_451:
	mov	rsp, rsp
	xor	r13d, r13d
	jmp	.label_449
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408790

	.globl revert_tz
	.type revert_tz, @function
revert_tz:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	nop	
	push	r14
	lea	rsi, [rsi]
	push	rbx
	lea	rdi, [rdi]
	push	rax
	mov	rbp, rbp
	mov	r14, rdi
	mov	bl, 1
	cmp	r14, 1
	je	.label_458
	nop	
	call	__errno_location
	mov	r15, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r15]
	lea	rsi, [rsi]
	mov	rdi, r14
	call	change_env
	mov	bl, al
	test	bl, bl
	jne	.label_459
	mov	ebp, dword ptr [r15]
.label_459:
	mov	rdi, r14
	call	tzfree
	mov	dword ptr [r15], ebp
.label_458:
	mov	al, bl
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4087f0

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
	je	.label_463
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	set_tz
	mov	r14, rax
	mov	rbp, rbp
	test	r14, r14
	je	.label_461
	mov	rdi, r15
	lea	rsi, [rsi]
	call	mktime
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x38], rax
	mov	rbp, rbp
	cmp	rax, -1
	jne	.label_464
	nop	
	lea	rdi, [rsp + 0x38]
	lea	rsi, [rsp]
	call	localtime_r
	lea	rdi, [rdi]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_460
	mov	rsp, rsp
	lea	rsi, [rsp]
	lea	rsi, [rsi]
	mov	rdi, r15
	lea	rsi, [rsi]
	call	equal_tm
	mov	rsp, rsp
	test	eax, eax
	mov	rbp, rbp
	je	.label_460
.label_464:
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, r15
	call	save_abbr
	nop	
	test	al, al
	jne	.label_460
	mov	qword ptr [rsp + 0x38], -1
.label_460:
	mov	rdi, r14
	call	revert_tz
	lea	rsi, [rsi]
	test	al, al
	je	.label_461
	mov	rax, qword ptr [rsp + 0x38]
	jmp	.label_462
.label_461:
	nop	
	mov	rax, -1
.label_462:
	lea	rdi, [rdi]
	add	rsp, 0x40
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	mov	rsp, rsp
	pop	r15
	lea	rdi, [rdi]
	ret	
.label_463:
	mov	rdi, r15
	add	rsp, 0x40
	pop	rbx
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	jmp	timegm
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4088f0

	.globl equal_tm
	.type equal_tm, @function
equal_tm:
	lea	rsi, [rsi]
	push	rbx
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsi]
	mov	ecx, dword ptr [rsi + 4]
	xor	eax, dword ptr [rdi]
	xor	ecx, dword ptr [rdi + 4]
	or	ecx, eax
	nop	
	mov	eax, dword ptr [rsi + 8]
	xor	eax, dword ptr [rdi + 8]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rsi + 0xc]
	xor	edx, dword ptr [rdi + 0xc]
	nop	
	or	edx, eax
	or	edx, ecx
	mov	rbp, rbp
	mov	eax, dword ptr [rsi + 0x10]
	lea	rdi, [rdi]
	xor	eax, dword ptr [rdi + 0x10]
	mov	rsp, rsp
	mov	ebx, dword ptr [rsi + 0x14]
	lea	rsi, [rsi]
	xor	ebx, dword ptr [rdi + 0x14]
	or	ebx, eax
	nop	
	or	ebx, edx
	lea	rsi, [rsi]
	mov	edi, dword ptr [rdi + 0x20]
	mov	rsp, rsp
	mov	esi, dword ptr [rsi + 0x20]
	lea	rsi, [rsi]
	call	isdst_differ
	mov	rsp, rsp
	movzx	eax, al
	lea	rdi, [rdi]
	or	eax, ebx
	sete	al
	nop	
	movzx	eax, al
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408960

	.globl getenv_TZ
	.type getenv_TZ, @function
getenv_TZ:
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str_7
	jmp	getenv
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408970

	.globl change_env
	.type change_env, @function
change_env:
	cmp	byte ptr [rdi + 8], 0
	je	.label_465
	add	rdi, 9
	nop	
	jmp	.label_466
.label_465:
	mov	rsp, rsp
	xor	edi, edi
.label_466:
	push	rax
	call	setenv_TZ
	mov	rbp, rbp
	test	eax, eax
	je	.label_467
	xor	eax, eax
	pop	rcx
	ret	
.label_467:
	call	tzset
	mov	al, 1
	nop	
	pop	rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4089a0

	.globl setenv_TZ
	.type setenv_TZ, @function
setenv_TZ:
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	edi, OFFSET FLAT:.str_7
	mov	rbp, rbp
	test	rax, rax
	je	.label_468
	mov	edx, 1
	lea	rsi, [rsi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	setenv
.label_468:
	lea	rdi, [rdi]
	jmp	unsetenv
	nop	
	.section	.text
	.align	32
	#Procedure 0x4089d0

	.globl isdst_differ
	.type isdst_differ, @function
isdst_differ:
	nop	
	test	edi, edi
	nop	
	sete	al
	lea	rsi, [rsi]
	test	esi, esi
	nop	
	sete	cl
	xor	cl, al
	or	esi, edi
	setns	al
	and	al, cl
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4089f0
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_469
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_469
.label_470:
	ret	
.label_469:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_470
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408a20
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_471
	movabs	rax, 0x3ffffff03ffffff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_471:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x408a40
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408a50
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	cmp	edi, 0x20
	sete	cl
	cmp	edi, 9
	sete	al
	or	al, cl
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x408a60
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_472
.label_473:
	ret	
.label_472:
	cmp	edi, 0x7f
	je	.label_473
	xor	eax, eax
	jmp	.label_473
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408a80
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408a90
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408aa0
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408ab0
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408ac0
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	mov	al, 1
	lea	ecx, [rdi - 0x21]
	cmp	ecx, 0x3f
	ja	.label_474
	movabs	rdx, 0xfc000000fe007fff
	bt	rdx, rcx
	jae	.label_474
.label_475:
	ret	
.label_474:
	add	edi, -0x7b
	cmp	edi, 4
	jb	.label_475
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408af0
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_476
	mov	eax, 0x80001f
	mov	cl, dil
	shr	eax, cl
	and	eax, 1
	ret	
.label_476:
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408b10

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408b20
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_477
	movabs	rax, 0x7e0000007e03ff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_477:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x408b40
	.globl c_tolower
	.type c_tolower, @function
c_tolower:

	lea	ecx, [rdi - 0x41]
	lea	eax, [rdi + 0x20]
	cmp	ecx, 0x1a
	cmovae	eax, edi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408b50
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	lea	ecx, [rdi - 0x61]
	lea	eax, [rdi - 0x20]
	cmp	ecx, 0x1a
	cmovae	eax, edi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408b60

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
	mov	rdi, rbx
	mov	rbp, rbp
	call	ferror_unlocked
	mov	ebp, eax
	mov	rdi, rbx
	nop	
	call	rpl_fclose
	mov	rbp, rbp
	test	ebp, ebp
	nop	
	je	.label_479
	mov	ebx, 0xffffffff
	mov	rbp, rbp
	test	eax, eax
	jne	.label_478
	lea	rsi, [rsi]
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rsp, rsp
	jmp	.label_478
.label_479:
	test	eax, eax
	mov	rbp, rbp
	sete	cl
	neg	eax
	nop	
	sbb	ebx, ebx
	lea	rsi, [rsi]
	test	r14, r14
	jne	.label_478
	test	cl, cl
	jne	.label_478
	lea	rsi, [rsi]
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	nop	
	cmove	ebx, ecx
.label_478:
	mov	rsp, rsp
	mov	eax, ebx
	pop	rbx
	pop	r14
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x408c00

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
	je	.label_481
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_480
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_482
.label_480:
	nop	
	mov	esi, OFFSET FLAT:.str.1_5
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_481
.label_482:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_481:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x408c50

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
	je	.label_483
	nop	
	mov	rax, rcx
.label_483:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section .text
	.align	32
	#Procedure 0x408c90

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
