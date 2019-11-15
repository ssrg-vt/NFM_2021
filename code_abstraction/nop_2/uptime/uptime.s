	.section	.text
	hlt	
	nop	word ptr [rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	nop	word ptr [rax + rax]
	nop	dword ptr [rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
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
	test	ebp, ebp
	jne	.label_7
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.5
	mov	ecx, OFFSET FLAT:.str.6
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_7:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c10

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:.str.18_0
	nop	
.label_10:
	mov	edi, OFFSET FLAT:.str.9
	call	strcmp
	test	eax, eax
	je	.label_9
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_10
.label_9:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:.str.9
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.26
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
	mov	esi, OFFSET FLAT:.str.28
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.29
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_8:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.30
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:.str.9
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.9
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.31
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:.str.32
	mov	ecx, OFFSET FLAT:.str_0
	cmove	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rdx
	mov	rdx, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	__printf_chk
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d30

	.globl main
	.type main, @function
main:
	push	rbp
	push	rbx
	sub	rsp, 0x28
	mov	rbx, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	edi, OFFSET FLAT:.str.11
	mov	esi, OFFSET FLAT:.str.12
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.11
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	r8,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp + 0x20], 0
	mov	qword ptr [word ptr [rsp + 24]], OFFSET FLAT:.str.16
	mov	qword ptr [word ptr [rsp + 16]], OFFSET FLAT:.str.15
	mov	qword ptr [word ptr [rsp + 8]], OFFSET FLAT:.str.14
	mov	qword ptr [word ptr [rsp]], OFFSET FLAT:usage
	mov	edx, OFFSET FLAT:.str.9
	mov	ecx, OFFSET FLAT:.str.17
	mov	r9d, 1
	xor	eax, eax
	mov	edi, ebp
	mov	rsi, rbx
	call	parse_gnu_standard_options_only
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	sub	ebp, eax
	cmp	ebp, 1
	je	.label_11
	test	ebp, ebp
	jne	.label_12
	mov	edi, OFFSET FLAT:.str.5
	mov	esi, 1
	jmp	.label_13
.label_11:
	mov	rdi, qword ptr [rbx + rax*8]
	xor	esi, esi
.label_13:
	call	uptime
	xor	eax, eax
	add	rsp, 0x28
	pop	rbx
	pop	rbp
	ret	
.label_12:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.17_0
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, qword ptr [rbx + rax*8 + 8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	mov	edi, 1
	call	usage
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e40

	.globl uptime
	.type uptime, @function
uptime:
	push	rbp
	push	rbx
	sub	rsp, 0x18
	mov	eax, esi
	mov	rbx, rdi
	mov	qword ptr [rsp + 8], 0
	lea	rsi, [rsp + 0x10]
	lea	rdx, [rsp + 8]
	mov	ecx, eax
	call	read_utmp
	test	eax, eax
	jne	.label_14
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 8]
	call	print_uptime
	add	rsp, 0x18
	pop	rbx
	pop	rbp
	ret	
.label_14:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebp
	call	error
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401eb0

	.globl print_uptime
	.type print_uptime, @function
print_uptime:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x2048
	mov	rbx, rsi
	mov	rbp, rdi
	mov	edi, OFFSET FLAT:.str.34
	mov	esi, OFFSET FLAT:.str.35
	call	fopen
	mov	r14, rax
	xor	r13d, r13d
	test	r14, r14
	je	.label_27
	lea	r15, [rsp + 0x20]
	mov	esi, 0x2000
	mov	rdi, r15
	mov	rdx, r14
	call	fgets_unlocked
	xor	r13d, r13d
	cmp	rax, r15
	jne	.label_16
	lea	rsi, [rsp + 0x18]
	mov	rdi, r15
	call	c_strtod
	xor	r13d, r13d
	cmp	r15, qword ptr [rsp + 0x18]
	je	.label_16
	movsd	xmm1,  qword ptr [word ptr [rip + label_21]]
	ucomisd	xmm1, xmm0
	cvttsd2si	r13, xmm0
	mov	rax, -1
	cmovbe	r13, rax
	xorpd	xmm1, xmm1
	ucomisd	xmm0, xmm1
	cmovb	r13, rax
.label_16:
	mov	rdi, r14
	call	rpl_fclose
.label_27:
	xor	r14d, r14d
	xor	r15d, r15d
	jmp	.label_26
	nop	dword ptr [rax]
.label_15:
	add	r14, rax
	add	rbx, 0x180
.label_26:
	test	rbp, rbp
	je	.label_28
	cmp	byte ptr [rbx + 0x2c], 0
	mov	eax, 0
	je	.label_29
	movzx	eax, word ptr [rbx]
	cmp	eax, 7
	sete	al
	movzx	eax, al
.label_29:
	dec	rbp
	movzx	ecx, word ptr [rbx]
	cmp	ecx, 2
	jne	.label_15
	movsxd	r15, dword ptr [rbx + 0x154]
	jmp	.label_15
.label_28:
	xor	edi, edi
	call	time
	mov	qword ptr [rsp + 0x2040], rax
	test	r13, r13
	jne	.label_18
	test	r15, r15
	je	.label_24
	sub	rax, r15
	mov	r13, rax
.label_18:
	mov	qword ptr [rsp + 0x10], r13
	movabs	rcx, 0x1845c8a0ce512957
	mov	rax, r13
	imul	rcx
	mov	r12, rdx
	mov	rax, r12
	shr	rax, 0x3f
	sar	r12, 0xd
	add	r12, rax
	imul	rbx, r12, -0x15180
	add	rbx, r13
	movabs	rcx, 0x48d159e26af37c05
	mov	rax, rbx
	imul	rcx
	mov	r15, rdx
	mov	rax, r15
	shr	rax, 0x3f
	sar	r15, 0xa
	add	r15, rax
	movabs	rax, 0xe1000000000
	imul	rax, r15
	sar	rax, 0x20
	sub	rbx, rax
	movabs	rcx, 0x8888888888888889
	mov	rax, rbx
	imul	rcx
	mov	r13, rdx
	lea	rdi, [rsp + 0x2040]
	call	localtime
	mov	rbp, rax
	test	rbp, rbp
	je	.label_25
	mov	rax,  qword ptr [word ptr [rip + stdout]]
	mov	qword ptr [rsp + 8], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.37
	mov	edx, 5
	call	dcgettext
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, rax
	mov	rdx, rbp
	call	fprintftime
	jmp	.label_30
.label_25:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.38
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
.label_30:
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	rcx, -1
	je	.label_19
	add	r13, rbx
	mov	rax, r13
	shr	rax, 0x3f
	shr	r13, 5
	add	r13d, eax
	cmp	rcx, 0x15180
	jl	.label_23
	mov	rdi, r12
	call	select_plural
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.40
	mov	edx, OFFSET FLAT:.str.41
	mov	r8d, 5
	mov	rcx, rax
	call	dcngettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rdx, r12
	mov	ecx, r15d
	mov	r8d, r13d
	call	__printf_chk
	jmp	.label_22
.label_19:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.39
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	jmp	.label_22
.label_23:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.42
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	edx, r15d
	mov	ecx, r13d
	call	__printf_chk
.label_22:
	mov	rdi, r14
	call	select_plural
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.43
	mov	edx, OFFSET FLAT:.str.44
	mov	r8d, 5
	mov	rcx, rax
	call	dcngettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rdx, r14
	call	__printf_chk
	lea	rdi, [rsp + 0x2020]
	mov	esi, 3
	call	getloadavg
	mov	ebx, eax
	cmp	ebx, -1
	je	.label_17
	test	ebx, ebx
	jle	.label_20
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.45
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	movsd	xmm0, qword ptr [rsp + 0x2020]
	mov	edi, 1
	mov	al, 1
	mov	rsi, rcx
	call	__printf_chk
	cmp	ebx, 2
	jl	.label_17
	movsd	xmm0, qword ptr [rsp + 0x2028]
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.46
	mov	al, 1
	call	__printf_chk
	cmp	ebx, 3
	jl	.label_17
	movsd	xmm0, qword ptr [rsp + 0x2030]
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.46
	mov	al, 1
	call	__printf_chk
.label_17:
	mov	edi, 0xa
	call	putchar_unlocked
.label_20:
	add	rsp, 0x2048
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_24:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.36
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402250

	.globl select_plural
	.type select_plural, @function
select_plural:
	mov	rax, rdi
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x402260

	.globl c_strtod
	.type c_strtod, @function
c_strtod:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	call	c_locale
	test	rax, rax
	je	.label_32
	mov	rdi, r14
	mov	rsi, rbx
	mov	rdx, rax
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	strtod_l
.label_32:
	test	rbx, rbx
	je	.label_31
	mov	qword ptr [rbx], r14
.label_31:
	xorps	xmm0, xmm0
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4022a0

	.globl c_locale
	.type c_locale, @function
c_locale:
	cmp	qword ptr [word ptr [rip + c_locale_cache]],  0
	jne	.label_33
	push	rax
	mov	edi, 0x1fbf
	mov	esi, OFFSET FLAT:.str_2
	xor	edx, edx
	call	newlocale
	mov	qword ptr [word ptr [rip + c_locale_cache]],  rax
	add	rsp, 8
.label_33:
	mov	rax,  qword ptr [word ptr [rip + c_locale_cache]]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4022d0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4022e0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4022f0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_34
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_36
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_36
.label_34:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_35
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_36:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_3
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_37
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_35:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_37:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_0
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4023b0

	.globl fprintftime
	.type fprintftime, @function
fprintftime:
	sub	rsp, 0x18
	mov	dword ptr [rsp + 8], r8d
	mov	qword ptr [rsp], rcx
	xor	ecx, ecx
	xor	r8d, r8d
	mov	r9d, 0xffffffff
	call	__strftime_internal
	add	rsp, 0x18
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4023e0

	.globl __strftime_internal
	.type __strftime_internal, @function
__strftime_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x4a8
	mov	r15d, r9d
	mov	dword ptr [rsp + 0x3c], r8d
	mov	dword ptr [rsp + 0x5c], ecx
	mov	qword ptr [rsp + 0x40], rdx
	mov	r14, rsi
	mov	r13, rdi
	mov	qword ptr [rsp + 0x78], r13
	mov	eax, dword ptr [rdx + 8]
	mov	rcx, qword ptr [rdx + 0x30]
	test	rcx, rcx
	mov	edx, OFFSET FLAT:.str_0
	cmovne	rdx, rcx
	mov	qword ptr [rsp + 0x30], rdx
	lea	ecx, [rax - 0xc]
	test	eax, eax
	mov	edx, 0xc
	cmovne	edx, eax
	cmp	eax, 0xc
	cmovg	edx, ecx
	mov	dword ptr [rsp + 0x2c], edx
	cmp	byte ptr [r14], 0
	mov	r11d, 0
	je	.label_98
	movabs	rbp, 0x1000000000002500
	xor	r11d, r11d
	jmp	.label_58
.label_71:
	mov	r10d, 3
	jmp	.label_62
	nop	word ptr cs:[rax + rax]
.label_58:
	movzx	eax, byte ptr [r14]
	xor	r12d, r12d
	cmp	eax, 0x25
	jne	.label_64
	mov	eax, dword ptr [rsp + 0x5c]
	mov	r9b, al
	xor	r13d, r13d
	mov	r9b, al
	jmp	.label_66
	nop	dword ptr [rax + rax]
.label_76:
	movsx	r13d, byte ptr [r14]
.label_66:
	inc	r14
	movsx	ecx, byte ptr [r14]
	lea	edx, [rcx - 0x23]
	cmp	edx, 0x3c
	ja	.label_69
	bt	rbp, rdx
	jb	.label_76
	mov	al, 1
	test	rdx, rdx
	je	.label_78
	cmp	rdx, 0x3b
	jne	.label_69
	mov	r9b, al
	jmp	.label_66
.label_78:
	mov	r12b, 1
	mov	al, r9b
	jmp	.label_66
	nop	dword ptr [rax + rax]
.label_64:
	test	r15d, r15d
	mov	eax, r15d
	mov	ecx, 0
	cmovs	eax, ecx
	movsxd	rbx, eax
	cmp	ebx, 1
	mov	ecx, 1
	cmovbe	rbx, rcx
	mov	rcx, r11
	not	rcx
	cmp	rbx, rcx
	jae	.label_44
	test	r13, r13
	je	.label_92
	mov	r12, r11
	cmp	eax, 2
	setb	al
	cmp	r15d, 1
	je	.label_93
	test	al, al
	jne	.label_93
	movsxd	rbp, r15d
	dec	rbp
	nop	word ptr [rax + rax]
.label_102:
	mov	edi, 0x20
	mov	rsi, r13
	call	fputc
	dec	rbp
	jne	.label_102
.label_93:
	movsx	edi, byte ptr [r14]
	mov	rsi, r13
	call	fputc
	mov	r11, r12
	movabs	rbp, 0x1000000000002500
.label_92:
	add	r11, rbx
	jmp	.label_107
	nop	word ptr cs:[rax + rax]
.label_69:
	add	ecx, -0x30
	xor	eax, eax
	cmp	ecx, 9
	ja	.label_111
	nop	word ptr [rax + rax]
.label_122:
	mov	r15d, 0x7fffffff
	cmp	eax, 0xccccccc
	jg	.label_117
	jne	.label_120
	movsx	ecx, byte ptr [r14]
	add	ecx, -0x30
	cmp	ecx, 7
	jg	.label_117
.label_120:
	lea	eax, [rax + rax*4]
	movsx	ecx, byte ptr [r14]
	lea	r15d, [rcx + rax*2 - 0x30]
.label_117:
	movsx	eax, byte ptr [r14 + 1]
	inc	r14
	add	eax, -0x30
	cmp	eax, 0xa
	mov	eax, r15d
	jb	.label_122
.label_111:
	mov	ecx, r15d
	movsx	eax, byte ptr [r14]
	cmp	eax, 0x4f
	je	.label_127
	xor	r8d, r8d
	cmp	eax, 0x45
	jne	.label_129
.label_127:
	movsx	r8d, byte ptr [r14]
	inc	r14
.label_129:
	mov	qword ptr [rsp + 0x60], rcx
	mov	bl, byte ptr [r14]
	movsx	eax, bl
	xor	r10d, r10d
	mov	edx, 1
	lea	edi, [rax - 0x25]
	cmp	edi, 0x55
	ja	.label_133
	mov	eax, OFFSET FLAT:.str.3_0
	mov	qword ptr [rsp + 0x48], rax
	mov	byte ptr [rsp + 0x50], bl
	mov	qword ptr [rsp + 0x70], r11
	mov	al, 0x72
	mov	ebx, 0xffffffff
	xor	ecx, ecx
	xor	esi, esi
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_137]]
.label_575:
	cmp	r8d, 0x45
	je	.label_41
	mov	dword ptr [rsp + 0x60], r8d
	mov	qword ptr [rsp + 0x68], r9
	mov	rdx, qword ptr [rsp + 0x40]
	mov	eax, dword ptr [rdx + 0x14]
	mov	esi, dword ptr [rdx + 0x18]
	mov	ecx, eax
	sar	ecx, 0x1f
	and	ecx, 0x190
	lea	ebp, [rax + rcx - 0x64]
	mov	r12d, dword ptr [rdx + 0x1c]
	mov	edi, r12d
	call	iso_week_days
	mov	ebx, eax
	test	ebx, ebx
	js	.label_153
	mov	eax, 0x16d
	test	bpl, 3
	jne	.label_155
	movsxd	rax, ebp
	imul	rax, rax, 0x51eb851f
	mov	rcx, rax
	sar	rcx, 0x25
	mov	rdx, rax
	shr	rdx, 0x3f
	add	ecx, edx
	imul	ecx, ecx, 0x64
	sar	rax, 0x27
	add	eax, edx
	imul	eax, eax, 0x190
	cmp	ebp, eax
	sete	al
	movzx	edx, al
	add	edx, 0x16d
	cmp	ebp, ecx
	mov	eax, 0x16e
	cmove	eax, edx
.label_155:
	sub	r12d, eax
	mov	rax, qword ptr [rsp + 0x40]
	mov	esi, dword ptr [rax + 0x18]
	mov	edi, r12d
	call	iso_week_days
	mov	ecx, eax
	shr	ecx, 0x1f
	xor	ecx, 1
	test	eax, eax
	cmovns	ebx, eax
	jmp	.label_112
	nop	
.label_168:
	inc	rdx
.label_569:
	movzx	eax, byte ptr [r14 + rdx]
	cmp	eax, 0x3a
	je	.label_168
	movzx	eax, al
	cmp	eax, 0x7a
	jne	.label_41
	add	r14, rdx
	mov	r10, rdx
.label_606:
	mov	rax, qword ptr [rsp + 0x40]
	cmp	dword ptr [rax + 0x20], 0
	js	.label_173
	mov	edx, dword ptr [rax + 0x28]
	mov	sil, 1
	test	edx, edx
	js	.label_175
	mov	rdi, rax
	test	edx, edx
	je	.label_176
	xor	esi, esi
	jmp	.label_151
.label_589:
	test	r12b, r12b
	mov	al, byte ptr [rsp + 0x50]
	je	.label_180
	mov	r9b, 1
.label_180:
	xor	ecx, ecx
	cmp	r8d, 0x45
	jne	.label_42
	jmp	.label_41
.label_133:
	test	eax, eax
	jne	.label_184
	mov	qword ptr [rsp + 0x70], r11
	dec	r14
	jmp	.label_41
.label_568:
	test	r8d, r8d
	jne	.label_41
	xor	eax, eax
	test	r15d, r15d
	cmovns	eax, r15d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	edx, 1
	cmova	rdx, rcx
	mov	r11, qword ptr [rsp + 0x70]
	mov	rcx, r11
	not	rcx
	cmp	rdx, rcx
	jae	.label_44
	cmp	qword ptr [rsp + 0x78], 0
	je	.label_67
	mov	qword ptr [rsp + 0x68], rdx
	cmp	eax, 2
	mov	r12, qword ptr [rsp + 0x78]
	jb	.label_83
	movsxd	rbp, r15d
	lea	rbx, [rbp - 1]
	cmp	r13d, 0x30
	je	.label_191
	cmp	r13d, 0x2b
	jne	.label_192
.label_191:
	test	rbx, rbx
	je	.label_83
	dec	rbp
.label_196:
	mov	edi, 0x30
	mov	rsi, r12
	call	fputc
	dec	rbp
	jne	.label_196
	jmp	.label_83
.label_570:
	test	r8d, r8d
	jne	.label_41
	test	r12b, r12b
	je	.label_197
	mov	r9b, 1
.label_197:
	xor	ecx, ecx
	mov	al, 0x41
	jmp	.label_42
.label_571:
	cmp	r8d, 0x45
	je	.label_41
	test	r12b, r12b
	je	.label_201
	mov	r9b, 1
.label_201:
	xor	ecx, ecx
	mov	al, 0x42
	jmp	.label_42
.label_572:
	cmp	r8d, 0x45
	jne	.label_39
	xor	ecx, ecx
	mov	al, 0x43
	jmp	.label_42
.label_573:
	test	r8d, r8d
	jne	.label_41
	mov	eax, OFFSET FLAT:.str.1_1
	jmp	.label_46
.label_574:
	test	r8d, r8d
	jne	.label_41
	test	r13d, r13d
	jne	.label_49
	test	r15d, r15d
	jns	.label_49
	mov	eax, OFFSET FLAT:.str.2_0
	mov	qword ptr [rsp + 0x48], rax
	mov	r13d, 0x2b
	mov	ebx, 4
	jmp	.label_56
.label_576:
	cmp	r8d, 0x45
	je	.label_41
	mov	rax, qword ptr [rsp + 0x40]
	mov	eax, dword ptr [rax + 8]
	jmp	.label_45
.label_577:
	cmp	r8d, 0x45
	je	.label_41
	mov	eax, dword ptr [rsp + 0x2c]
	jmp	.label_45
.label_578:
	cmp	r8d, 0x45
	je	.label_41
	mov	rax, qword ptr [rsp + 0x40]
	mov	eax, dword ptr [rax + 4]
	jmp	.label_45
.label_579:
	cmp	r8d, 0x45
	je	.label_41
	mov	r10d, 9
	cmp	r15d, -1
	je	.label_77
	mov	ecx, 9
	cmp	r15d, 8
	mov	eax, dword ptr [rsp + 0x4e8]
	jg	.label_61
	nop	
.label_87:
	cdqe	
	imul	rax, rax, 0x66666667
	mov	rdx, rax
	shr	rdx, 0x3f
	sar	rax, 0x22
	add	eax, edx
	dec	ecx
	cmp	r15d, ecx
	jne	.label_87
	mov	r10d, r15d
	jmp	.label_90
.label_580:
	mov	sil, 1
.label_598:
	test	r12b, r12b
	je	.label_91
	mov	r9d, 0
.label_91:
	mov	r10d, 0
	je	.label_94
	mov	sil, 1
.label_94:
	mov	al, 0x70
	mov	cl, sil
	jmp	.label_73
.label_581:
	cmp	r8d, 0x45
	je	.label_41
	mov	rax, qword ptr [rsp + 0x40]
	mov	eax, dword ptr [rax]
	jmp	.label_45
.label_582:
	mov	eax, OFFSET FLAT:.str.4_0
.label_46:
	mov	qword ptr [rsp + 0x48], rax
.label_56:
	test	r9b, r9b
	mov	qword ptr [rsp + 0x68], r9
	setne	al
	mov	ecx, dword ptr [rsp + 0x4e8]
	mov	dword ptr [rsp + 8], ecx
	mov	rcx, qword ptr [rsp + 0x4e0]
	mov	qword ptr [rsp], rcx
	movzx	ecx, al
	xor	ebp, ebp
	xor	edi, edi
	mov	rsi, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0x40]
	mov	r8d, r13d
	mov	r9d, ebx
	call	__strftime_internal
	test	r15d, r15d
	cmovns	ebp, r15d
	movsxd	rcx, ebp
	cmp	rax, rcx
	mov	rsi, rax
	cmovb	rsi, rcx
	mov	r11, qword ptr [rsp + 0x70]
	mov	rdx, r11
	not	rdx
	cmp	rsi, rdx
	jae	.label_44
	cmp	qword ptr [rsp + 0x78], 0
	je	.label_124
	mov	qword ptr [rsp + 0x60], rsi
	cmp	rax, rcx
	mov	r12, qword ptr [rsp + 0x78]
	jae	.label_144
	movsxd	rcx, r15d
	mov	r15, rcx
	sub	r15, rax
	cmp	r13d, 0x30
	je	.label_131
	cmp	r13d, 0x2b
	jne	.label_169
.label_131:
	xor	ebp, ebp
	cmp	rcx, rax
	je	.label_144
	nop	word ptr cs:[rax + rax]
.label_142:
	mov	edi, 0x30
	mov	rsi, r12
	call	fputc
	inc	rbp
	cmp	rbp, r15
	jb	.label_142
	jmp	.label_144
.label_583:
	cmp	r8d, 0x45
	je	.label_41
	mov	rcx, qword ptr [rsp + 0x40]
	mov	eax, dword ptr [rcx + 0x1c]
	add	eax, 7
	sub	eax, dword ptr [rcx + 0x18]
	cdqe	
	jmp	.label_145
.label_584:
	cmp	r8d, 0x45
	je	.label_41
	mov	rcx, qword ptr [rsp + 0x40]
	mov	eax, dword ptr [rcx + 0x18]
	mov	ecx, dword ptr [rcx + 0x1c]
	lea	edx, [rax + 6]
	movsxd	rdx, edx
	imul	rsi, rdx, -0x6db6db6d
	shr	rsi, 0x20
	lea	eax, [rsi + rax + 6]
	mov	esi, eax
	shr	esi, 0x1f
	sar	eax, 2
	add	eax, esi
	lea	esi, [rax*8]
	sub	esi, eax
	sub	edx, esi
	add	ecx, 7
	sub	ecx, edx
	movsxd	rax, ecx
.label_145:
	imul	rcx, rax, -0x6db6db6d
	shr	rcx, 0x20
	add	eax, ecx
	mov	ecx, eax
	shr	ecx, 0x1f
	sar	eax, 2
	add	eax, ecx
	jmp	.label_45
.label_585:
	cmp	r8d, 0x4f
	je	.label_41
	xor	ecx, ecx
	mov	al, 0x58
	jmp	.label_42
.label_586:
	cmp	r8d, 0x45
	je	.label_161
	cmp	r8d, 0x4f
	je	.label_41
	mov	rax, qword ptr [rsp + 0x40]
	mov	eax, dword ptr [rax + 0x14]
	cmp	eax, 0xfffff894
	setl	sil
	add	eax, 0x76c
	mov	r10d, 4
	jmp	.label_52
.label_587:
	mov	qword ptr [rsp + 0x68], r9
	mov	rdi, qword ptr [rsp + 0x30]
	call	strlen
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
	cmp	rdx, rcx
	jae	.label_44
	cmp	qword ptr [rsp + 0x78], 0
	je	.label_67
	mov	qword ptr [rsp + 0x50], rdx
	cmp	rax, rsi
	mov	qword ptr [rsp + 0x60], rax
	mov	rbx, qword ptr [rsp + 0x78]
	jae	.label_81
	movsxd	rax, r15d
	mov	r15, rax
	mov	rcx, qword ptr [rsp + 0x60]
	sub	r15, rcx
	cmp	r13d, 0x30
	je	.label_183
	cmp	r13d, 0x2b
	jne	.label_186
.label_183:
	xor	ebp, ebp
	cmp	rax, rcx
	je	.label_81
	nop	word ptr [rax + rax]
.label_188:
	mov	edi, 0x30
	mov	rsi, rbx
	call	fputc
	inc	rbp
	cmp	rbp, r15
	jb	.label_188
	jmp	.label_81
.label_588:
	test	r8d, r8d
	jne	.label_41
	test	r12b, r12b
	je	.label_189
	mov	r9b, 1
.label_189:
	xor	ecx, ecx
	mov	al, 0x61
	jmp	.label_42
.label_590:
	cmp	r8d, 0x4f
	je	.label_41
	xor	ecx, ecx
	mov	al, 0x63
	jmp	.label_42
.label_591:
	cmp	r8d, 0x45
	je	.label_41
	mov	rax, qword ptr [rsp + 0x40]
	mov	eax, dword ptr [rax + 0xc]
	jmp	.label_45
.label_592:
	cmp	r8d, 0x45
	je	.label_41
	mov	rax, qword ptr [rsp + 0x40]
	mov	eax, dword ptr [rax + 0xc]
	jmp	.label_38
.label_593:
	cmp	r8d, 0x45
	je	.label_41
	mov	rax, qword ptr [rsp + 0x40]
	mov	eax, dword ptr [rax + 0x1c]
	cmp	eax, -1
	setl	sil
	inc	eax
	mov	r10d, 3
	jmp	.label_51
.label_594:
	cmp	r8d, 0x45
	je	.label_41
	mov	rax, qword ptr [rsp + 0x40]
	mov	eax, dword ptr [rax + 8]
	jmp	.label_38
.label_595:
	cmp	r8d, 0x45
	mov	eax, dword ptr [rsp + 0x2c]
	je	.label_41
.label_38:
	test	r13d, r13d
	mov	ecx, 0x5f
	cmove	r13d, ecx
	jmp	.label_45
.label_596:
	cmp	r8d, 0x45
	je	.label_41
	mov	rax, qword ptr [rsp + 0x40]
	mov	eax, dword ptr [rax + 0x10]
	cmp	eax, -1
	setl	sil
	inc	eax
	mov	r10d, 2
	jmp	.label_51
.label_597:
	xor	eax, eax
	test	r15d, r15d
	cmovns	eax, r15d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	edx, 1
	cmova	rdx, rcx
	mov	r11, qword ptr [rsp + 0x70]
	mov	rcx, r11
	not	rcx
	cmp	rdx, rcx
	jae	.label_44
	cmp	qword ptr [rsp + 0x78], 0
	je	.label_67
	mov	qword ptr [rsp + 0x68], rdx
	cmp	eax, 2
	mov	r12, qword ptr [rsp + 0x78]
	jb	.label_50
	movsxd	rbp, r15d
	lea	rbx, [rbp - 1]
	cmp	r13d, 0x30
	je	.label_72
	cmp	r13d, 0x2b
	jne	.label_202
.label_72:
	test	rbx, rbx
	je	.label_50
	dec	rbp
	nop	
.label_85:
	mov	edi, 0x30
	mov	rsi, r12
	call	fputc
	dec	rbp
	jne	.label_85
	jmp	.label_50
.label_599:
	mov	rax, qword ptr [rsp + 0x40]
	imul	eax, dword ptr [rax + 0x10], 0xb
	sar	eax, 5
	inc	eax
	mov	r10d, 1
	xor	edx, edx
	xor	ecx, ecx
	xor	esi, esi
	jmp	.label_74
.label_600:
	mov	rbx, r9
	mov	rcx, qword ptr [rsp + 0x40]
	mov	rax, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0xb0], rax
	movups	xmm0, xmmword ptr [rcx]
	movups	xmm1, xmmword ptr [rcx + 0x10]
	movups	xmm2, xmmword ptr [rcx + 0x20]
	movaps	xmmword ptr [rsp + 0xa0], xmm2
	movaps	xmmword ptr [rsp + 0x90], xmm1
	movaps	xmmword ptr [rsp + 0x80], xmm0
	lea	rsi, [rsp + 0x80]
	mov	rdi, qword ptr [rsp + 0x4e0]
	call	mktime_z
	mov	rcx, rax
	mov	rsi, rcx
	shr	rsi, 0x3f
	lea	r12, [rsp + 0x4a7]
	nop	word ptr cs:[rax + rax]
.label_55:
	movabs	rdx, 0x6666666666666667
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + rax]
	add	edi, edi
	lea	edi, [rdi + rdi*4]
	mov	ebp, ecx
	sub	ebp, edi
	add	rdx, rax
	mov	eax, ebp
	neg	eax
	test	rsi, rsi
	cmove	eax, ebp
	add	eax, 0x30
	mov	byte ptr [r12 - 1], al
	dec	r12
	add	rcx, 9
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_55
	mov	r10d, 1
	xor	ecx, ecx
	mov	r11, qword ptr [rsp + 0x70]
	mov	r9, rbx
	jmp	.label_128
.label_601:
	xor	eax, eax
	test	r15d, r15d
	cmovns	eax, r15d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	edx, 1
	cmova	rdx, rcx
	mov	r11, qword ptr [rsp + 0x70]
	mov	rcx, r11
	not	rcx
	cmp	rdx, rcx
	jae	.label_44
	cmp	qword ptr [rsp + 0x78], 0
	je	.label_67
	mov	qword ptr [rsp + 0x68], rdx
	cmp	eax, 2
	mov	r12, qword ptr [rsp + 0x78]
	jb	.label_95
	movsxd	rbp, r15d
	lea	rbx, [rbp - 1]
	cmp	r13d, 0x30
	je	.label_172
	cmp	r13d, 0x2b
	jne	.label_148
.label_172:
	test	rbx, rbx
	je	.label_95
	dec	rbp
	nop	
.label_116:
	mov	edi, 0x30
	mov	rsi, r12
	call	fputc
	dec	rbp
	jne	.label_116
	jmp	.label_95
.label_602:
	mov	rax, qword ptr [rsp + 0x40]
	mov	ecx, dword ptr [rax + 0x18]
	lea	eax, [rcx + 6]
	cdqe	
	imul	rdx, rax, -0x6db6db6d
	shr	rdx, 0x20
	lea	ecx, [rdx + rcx + 6]
	mov	edx, ecx
	shr	edx, 0x1f
	sar	ecx, 2
	add	ecx, edx
	lea	edx, [rcx*8]
	sub	edx, ecx
	sub	eax, edx
	inc	eax
	mov	r10d, 1
	jmp	.label_90
.label_603:
	cmp	r8d, 0x45
	je	.label_41
	mov	rax, qword ptr [rsp + 0x40]
	mov	eax, dword ptr [rax + 0x18]
	mov	r10d, 1
	jmp	.label_90
.label_604:
	cmp	r8d, 0x4f
	je	.label_41
	xor	ecx, ecx
	mov	al, 0x78
	jmp	.label_42
.label_605:
	cmp	r8d, 0x45
	jne	.label_164
	xor	ecx, ecx
	mov	al, 0x79
	jmp	.label_42
.label_184:
	mov	qword ptr [rsp + 0x70], r11
	jmp	.label_41
.label_153:
	dec	ebp
	mov	edi, 0x16d
	test	bpl, 3
	jne	.label_170
	movsxd	rax, ebp
	imul	rax, rax, 0x51eb851f
	mov	rcx, rax
	sar	rcx, 0x25
	mov	rdx, rax
	shr	rdx, 0x3f
	add	ecx, edx
	imul	ecx, ecx, 0x64
	sar	rax, 0x27
	add	eax, edx
	imul	eax, eax, 0x190
	cmp	ebp, eax
	sete	al
	movzx	eax, al
	add	eax, 0x16d
	cmp	ebp, ecx
	mov	edi, 0x16e
	cmove	edi, eax
.label_170:
	add	edi, r12d
	mov	rax, qword ptr [rsp + 0x40]
	mov	esi, dword ptr [rax + 0x18]
	call	iso_week_days
	mov	ebx, eax
	mov	ecx, 0xffffffff
.label_112:
	movsx	eax, byte ptr [r14]
	cmp	eax, 0x47
	movabs	rbp, 0x1000000000002500
	mov	r9, qword ptr [rsp + 0x68]
	mov	r8d, dword ptr [rsp + 0x60]
	je	.label_185
	cmp	eax, 0x67
	jne	.label_187
	mov	rax, qword ptr [rsp + 0x40]
	movsxd	rdx, dword ptr [rax + 0x14]
	imul	rax, rdx, 0x51eb851f
	mov	rsi, rax
	shr	rsi, 0x3f
	sar	rax, 0x25
	add	eax, esi
	imul	eax, eax, 0x64
	mov	esi, edx
	sub	esi, eax
	add	esi, ecx
	movsxd	rax, esi
	imul	rsi, rax, 0x51eb851f
	mov	rdi, rsi
	shr	rdi, 0x3f
	sar	rsi, 0x25
	add	esi, edi
	imul	esi, esi, 0x64
	sub	eax, esi
	mov	r10d, 2
	js	.label_166
	xor	esi, esi
	jmp	.label_52
.label_173:
	mov	r13, qword ptr [rsp + 0x78]
	mov	r11, qword ptr [rsp + 0x70]
	jmp	.label_107
.label_39:
	mov	rax, qword ptr [rsp + 0x40]
	movsxd	rcx, dword ptr [rax + 0x14]
	cmp	rcx, -0x76c
	setl	sil
	setg	dl
	imul	rax, rcx, 0x51eb851f
	mov	rdi, rax
	shr	rdi, 0x3f
	sar	rax, 0x25
	add	eax, edi
	imul	edi, eax, 0x64
	cmp	ecx, edi
	sets	cl
	and	cl, dl
	movzx	ecx, cl
	sub	eax, ecx
	add	eax, 0x13
	mov	r10d, 2
	jmp	.label_52
.label_164:
	mov	rax, qword ptr [rsp + 0x40]
	movsxd	rcx, dword ptr [rax + 0x14]
	imul	rax, rcx, 0x51eb851f
	mov	rdx, rax
	shr	rdx, 0x3f
	sar	rax, 0x25
	add	eax, edx
	imul	edx, eax, 0x64
	mov	eax, ecx
	sub	eax, edx
	mov	r10d, 2
	js	.label_57
	xor	esi, esi
	jmp	.label_52
.label_185:
	mov	rax, qword ptr [rsp + 0x40]
	mov	eax, dword ptr [rax + 0x14]
	mov	edx, 0xfffff894
	sub	edx, ecx
	cmp	eax, edx
	setl	sil
	lea	eax, [rcx + rax + 0x76c]
	mov	r10d, 4
	jmp	.label_52
.label_187:
	movsxd	rax, ebx
	imul	rcx, rax, -0x6db6db6d
	shr	rcx, 0x20
	add	eax, ecx
	mov	ecx, eax
	sar	ecx, 2
	shr	eax, 0x1f
	lea	eax, [rcx + rax + 1]
.label_45:
	mov	r10d, 2
.label_90:
	mov	esi, eax
	shr	esi, 0x1f
.label_51:
	xor	edx, edx
	xor	ecx, ecx
.label_74:
	cmp	r8d, 0x4f
	jne	.label_70
	test	sil, sil
	jne	.label_70
	xor	ecx, ecx
	mov	al, byte ptr [rsp + 0x50]
	jmp	.label_73
.label_70:
	mov	ebx, eax
	neg	ebx
	test	sil, sil
	cmove	ebx, eax
	lea	r12, [rsp + 0x4a7]
	mov	r11, qword ptr [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_89:
	test	dl, 1
	je	.label_139
	mov	byte ptr [r12 - 1], 0x3a
	dec	r12
.label_139:
	sar	edx, 1
	mov	ebp, ebx
	mov	eax, 0xcccccccd
	imul	rax, rbp
	shr	rax, 0x23
	lea	ebp, [rax + rax]
	lea	ebp, [rbp + rbp*4]
	mov	edi, ebx
	sub	edi, ebp
	or	edi, 0x30
	mov	byte ptr [r12 - 1], dil
	dec	r12
	cmp	ebx, 9
	mov	ebx, eax
	ja	.label_89
	test	edx, edx
	mov	ebx, eax
	jne	.label_89
.label_128:
	cmp	r10d, r15d
	cmovl	r10d, r15d
	test	cl, cl
	je	.label_97
	mov	cl, 0x2b
.label_97:
	test	sil, sil
	mov	bl, 0x2d
	jne	.label_100
	mov	bl, cl
.label_100:
	cmp	r13d, 0x2d
	jne	.label_101
	test	bl, bl
	je	.label_104
	mov	qword ptr [rsp + 0x68], r9
	xor	eax, eax
	test	r15d, r15d
	cmovns	eax, r15d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	edx, 1
	cmova	rdx, rcx
	mov	rcx, r11
	not	rcx
	cmp	rdx, rcx
	jae	.label_44
	cmp	qword ptr [rsp + 0x78], 0
	je	.label_113
	mov	qword ptr [rsp + 0x48], rdx
	mov	byte ptr [rsp + 0x50], bl
	mov	qword ptr [rsp + 0x70], r11
	cmp	eax, 2
	setb	al
	test	r10d, r10d
	mov	qword ptr [rsp + 0x60], r10
	mov	rbx, qword ptr [rsp + 0x78]
	jne	.label_118
	test	al, al
	jne	.label_118
	cmp	r15d, 1
	je	.label_118
	movsxd	rbp, r15d
	dec	rbp
	nop	word ptr cs:[rax + rax]
.label_130:
	mov	edi, 0x20
	mov	rsi, rbx
	call	fputc
	dec	rbp
	jne	.label_130
.label_118:
	movzx	edi, byte ptr [rsp + 0x50]
	mov	rsi, rbx
	jmp	.label_132
.label_101:
	movsxd	rax, r10d
	mov	rcx, r12
	lea	rdx, [rsp + 0x4a7]
	sub	rcx, rdx
	mov	dl, bl
	neg	dl
	sbb	rsi, rsi
	add	rsi, rcx
	add	rsi, rax
	test	esi, esi
	jle	.label_171
	mov	qword ptr [rsp + 0x68], r9
	cmp	r13d, 0x5f
	jne	.label_141
	movsxd	rbp, esi
	mov	rax, r11
	not	rax
	cmp	rbp, rax
	jae	.label_44
	mov	dword ptr [rsp + 0x20], r15d
	mov	qword ptr [rsp + 0x48], rsi
	mov	byte ptr [rsp + 0x50], bl
	mov	qword ptr [rsp + 0x60], r10
	mov	qword ptr [rsp + 0x70], r11
	mov	r15, qword ptr [rsp + 0x78]
	test	r15, r15
	je	.label_147
	test	rbp, rbp
	mov	ebx, 0
	je	.label_147
	nop	word ptr cs:[rax + rax]
.label_156:
	mov	edi, 0x20
	mov	rsi, r15
	call	fputc
	inc	rbx
	cmp	rbx, rbp
	jb	.label_156
.label_147:
	mov	r11, qword ptr [rsp + 0x70]
	add	r11, rbp
	mov	rax, qword ptr [rsp + 0x48]
	mov	ecx, dword ptr [rsp + 0x20]
	sub	ecx, eax
	mov	edx, 0
	cmovg	edx, ecx
	mov	al, byte ptr [rsp + 0x50]
	test	al, al
	je	.label_157
	xor	eax, eax
	test	edx, edx
	cmovns	eax, edx
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	esi, 1
	cmova	rsi, rcx
	mov	rcx, r11
	not	rcx
	cmp	rsi, rcx
	mov	r10, qword ptr [rsp + 0x60]
	jae	.label_44
	cmp	qword ptr [rsp + 0x78], 0
	je	.label_165
	mov	qword ptr [rsp + 0x20], rsi
	mov	qword ptr [rsp + 0x48], rdx
	mov	qword ptr [rsp + 0x70], r11
	cmp	eax, 2
	setb	al
	test	r10d, r10d
	mov	r15, qword ptr [rsp + 0x78]
	jne	.label_167
	test	al, al
	jne	.label_167
	mov	rax, qword ptr [rsp + 0x48]
	movsxd	rbx, eax
	dec	rbx
	cmp	r13d, 0x30
	je	.label_174
	cmp	r13d, 0x2b
	jne	.label_177
.label_174:
	xor	ebp, ebp
	test	rbx, rbx
	je	.label_167
	nop	word ptr cs:[rax + rax]
.label_181:
	mov	edi, 0x30
	mov	rsi, r15
	call	fputc
	inc	rbp
	cmp	rbp, rbx
	jb	.label_181
	jmp	.label_167
.label_104:
	mov	qword ptr [rsp + 0x68], r9
	jmp	.label_63
.label_171:
	mov	qword ptr [rsp + 0x68], r9
	test	bl, bl
	je	.label_63
	xor	eax, eax
	test	r15d, r15d
	cmovns	eax, r15d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	edx, 1
	cmova	rdx, rcx
	mov	rcx, r11
	not	rcx
	cmp	rdx, rcx
	jae	.label_44
	cmp	qword ptr [rsp + 0x78], 0
	je	.label_113
	mov	qword ptr [rsp + 0x48], rdx
	mov	byte ptr [rsp + 0x50], bl
	mov	qword ptr [rsp + 0x70], r11
	cmp	eax, 2
	setb	al
	test	r10d, r10d
	mov	qword ptr [rsp + 0x60], r10
	mov	rsi, qword ptr [rsp + 0x78]
	jne	.label_99
	test	al, al
	jne	.label_99
	mov	rax, rsi
	movsxd	rbp, r15d
	lea	rbx, [rbp - 1]
	cmp	r13d, 0x30
	je	.label_193
	cmp	r13d, 0x2b
	jne	.label_195
.label_193:
	test	rbx, rbx
	mov	rsi, rax
	je	.label_99
	dec	rbp
	nop	dword ptr [rax]
.label_199:
	mov	edi, 0x30
	mov	rbx, rsi
	call	fputc
	mov	rsi, rbx
	dec	rbp
	jne	.label_199
	jmp	.label_99
.label_141:
	mov	rcx, r11
	not	rcx
	cmp	rax, rcx
	jae	.label_44
	test	bl, bl
	je	.label_40
	xor	eax, eax
	test	r15d, r15d
	cmovns	eax, r15d
	movsxd	rdx, eax
	cmp	edx, 1
	mov	edi, 1
	cmova	rdi, rdx
	cmp	rdi, rcx
	jae	.label_44
	mov	qword ptr [rsp + 0x48], rsi
	mov	qword ptr [rsp + 0x60], r10
	cmp	qword ptr [rsp + 0x78], 0
	je	.label_123
	mov	qword ptr [rsp + 0x20], rdi
	mov	byte ptr [rsp + 0x50], bl
	mov	qword ptr [rsp + 0x70], r11
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x60]
	test	ecx, ecx
	mov	rsi, qword ptr [rsp + 0x78]
	jne	.label_53
	test	al, al
	jne	.label_53
	mov	rax, rsi
	movsxd	rbp, r15d
	lea	rbx, [rbp - 1]
	cmp	r13d, 0x30
	je	.label_65
	cmp	r13d, 0x2b
	jne	.label_110
.label_65:
	test	rbx, rbx
	mov	rsi, rax
	je	.label_53
	dec	rbp
	nop	
.label_43:
	mov	edi, 0x30
	mov	rbx, rsi
	call	fputc
	mov	rsi, rbx
	dec	rbp
	jne	.label_43
	jmp	.label_53
.label_157:
	mov	r15d, edx
	mov	r10, qword ptr [rsp + 0x60]
	jmp	.label_63
.label_40:
	mov	qword ptr [rsp + 0x48], rsi
	mov	qword ptr [rsp + 0x60], r10
	jmp	.label_84
.label_161:
	xor	ecx, ecx
	mov	al, 0x59
.label_42:
	xor	r10d, r10d
.label_73:
	mov	dword ptr [rsp + 0x60], ecx
	mov	r12, r10
	mov	qword ptr [rsp + 0x68], r9
	mov	word ptr [rsp + 0x48b], 0x2520
	test	r8d, r8d
	lea	rcx, [rsp + 0x48d]
	je	.label_88
	mov	byte ptr [rsp + 0x48d], r8b
	lea	rcx, [rsp + 0x48e]
.label_88:
	mov	byte ptr [rcx], al
	mov	byte ptr [rcx + 1], 0
	lea	rdi, [rsp + 0x80]
	lea	rdx, [rsp + 0x48b]
	mov	esi, 0x400
	mov	rcx, qword ptr [rsp + 0x40]
	call	strftime
	mov	rbx, rax
	test	rbx, rbx
	je	.label_105
	dec	rbx
	xor	eax, eax
	test	r15d, r15d
	cmovns	eax, r15d
	cdqe	
	cmp	rbx, rax
	mov	rdx, rbx
	cmovb	rdx, rax
	mov	r11, qword ptr [rsp + 0x70]
	mov	rcx, r11
	not	rcx
	cmp	rdx, rcx
	jae	.label_44
	cmp	qword ptr [rsp + 0x78], 0
	je	.label_115
	mov	qword ptr [rsp + 0x50], rdx
	cmp	rbx, rax
	setae	al
	test	r12d, r12d
	mov	r12, qword ptr [rsp + 0x78]
	jne	.label_119
	test	al, al
	jne	.label_119
	movsxd	rax, r15d
	mov	r15, rax
	sub	r15, rbx
	cmp	r13d, 0x30
	je	.label_121
	cmp	r13d, 0x2b
	jne	.label_125
.label_121:
	xor	ebp, ebp
	cmp	rax, rbx
	je	.label_119
	nop	
.label_158:
	mov	edi, 0x30
	mov	rsi, r12
	call	fputc
	inc	rbp
	cmp	rbp, r15
	jb	.label_158
	jmp	.label_119
.label_105:
	mov	r11, qword ptr [rsp + 0x70]
	mov	r13, qword ptr [rsp + 0x78]
	jmp	.label_107
.label_125:
	xor	ebp, ebp
	cmp	rax, rbx
	je	.label_119
	nop	dword ptr [rax]
.label_190:
	mov	edi, 0x20
	mov	rsi, r12
	call	fputc
	inc	rbp
	cmp	rbp, r15
	jb	.label_190
.label_119:
	mov	qword ptr [rsp + 0x78], r12
	mov	eax, dword ptr [rsp + 0x60]
	test	al, 1
	jne	.label_194
	mov	rax, qword ptr [rsp + 0x68]
	test	al, 1
	mov	rax, qword ptr [rsp + 0x78]
	movabs	rbp, 0x1000000000002500
	jne	.label_143
	mov	edx, 1
	lea	rdi, [rsp + 0x81]
	mov	rsi, rbx
	mov	rcx, rax
	call	fwrite
	jmp	.label_152
.label_194:
	mov	rdi, qword ptr [rsp + 0x78]
	lea	rsi, [rsp + 0x81]
	mov	rdx, rbx
	call	fwrite_lowcase
	mov	r11, qword ptr [rsp + 0x70]
	movabs	rbp, 0x1000000000002500
	jmp	.label_154
.label_143:
	mov	rdi, rax
	lea	rsi, [rsp + 0x81]
	mov	rdx, rbx
	call	fwrite_uppcase
.label_152:
	mov	r11, qword ptr [rsp + 0x70]
.label_154:
	mov	rdx, qword ptr [rsp + 0x50]
.label_115:
	add	r11, rdx
	mov	r13, qword ptr [rsp + 0x78]
	jmp	.label_107
.label_169:
	xor	ebp, ebp
	cmp	rcx, rax
	je	.label_144
	nop	dword ptr [rax + rax]
.label_162:
	mov	edi, 0x20
	mov	rsi, r12
	call	fputc
	inc	rbp
	cmp	rbp, r15
	jb	.label_162
.label_144:
	mov	rax, qword ptr [rsp + 0x68]
	test	al, al
	setne	al
	mov	ecx, dword ptr [rsp + 0x4e8]
	mov	dword ptr [rsp + 8], ecx
	mov	rcx, qword ptr [rsp + 0x4e0]
	mov	qword ptr [rsp], rcx
	movzx	ecx, al
	mov	rdi, r12
	mov	qword ptr [rsp + 0x78], r12
	mov	rsi, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0x40]
	mov	r8d, r13d
	mov	r9d, ebx
	call	__strftime_internal
	mov	r11, qword ptr [rsp + 0x70]
	mov	rsi, qword ptr [rsp + 0x60]
.label_124:
	add	r11, rsi
	jmp	.label_108
.label_176:
	mov	rax, qword ptr [rsp + 0x30]
	movzx	eax, byte ptr [rax]
	cmp	eax, 0x2d
	sete	sil
.label_151:
	mov	rax, rdi
.label_175:
	cmp	r10, 3
	ja	.label_179
	mov	rbx, rbp
	mov	qword ptr [rsp + 0x40], rax
	movsxd	rax, edx
	imul	rcx, rax, -0x77777777
	shr	rcx, 0x20
	add	ecx, edx
	mov	edi, ecx
	shr	edi, 0x1f
	sar	ecx, 5
	add	ecx, edi
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
	add	edi, ecx
	mov	ebp, edi
	shr	ebp, 0x1f
	sar	edi, 5
	add	edi, ebp
	imul	edi, edi, 0x3c
	imul	ebp, ecx, 0x3c
	sub	ecx, edi
	sub	edx, ebp
	jmp	qword ptr [word ptr [+ (r10 * 8) + label_182]]
.label_519:
	imul	eax, eax, 0x64
	add	eax, ecx
	mov	r10d, 5
.label_62:
	mov	cl, 1
	xor	edx, edx
	mov	rbp, rbx
	jmp	.label_74
.label_49:
	xor	eax, eax
	mov	ebx, r15d
	add	ebx, -6
	cmovs	ebx, eax
	mov	eax, OFFSET FLAT:.str.2_0
	jmp	.label_46
.label_77:
	mov	eax, dword ptr [rsp + 0x4e8]
	mov	r15d, 9
	jmp	.label_90
.label_166:
	mov	esi, 0xfffff894
	sub	esi, ecx
	mov	ecx, eax
	neg	ecx
	add	eax, 0x64
	cmp	edx, esi
	cmovl	eax, ecx
	xor	esi, esi
	jmp	.label_52
.label_57:
	mov	edx, eax
	neg	edx
	add	eax, 0x64
	cmp	ecx, 0xfffff894
	cmovl	eax, edx
	xor	esi, esi
.label_52:
	test	r13d, r13d
	cmove	r13d, dword ptr [rsp + 0x3c]
	xor	edx, edx
	cmp	r13d, 0x2b
	mov	ecx, 0
	jne	.label_74
	cmp	r10d, 2
	mov	ecx, 0x63
	mov	edi, 0x270f
	cmove	edi, ecx
	cmp	edi, eax
	setb	bl
	cmp	r10d, r15d
	setl	cl
	or	cl, bl
	jmp	.label_74
.label_179:
	mov	qword ptr [rsp + 0x40], rax
.label_41:
	mov	qword ptr [rsp + 0x68], r9
	xor	ebp, ebp
	xor	ebx, ebx
	movabs	rdx, 0x100000000
	nop	word ptr cs:[rax + rax]
.label_54:
	add	rbx, rdx
	movzx	eax, byte ptr [r14 + rbp]
	dec	rbp
	cmp	eax, 0x25
	jne	.label_54
	mov	rax, rbp
	neg	rax
	mov	rcx, qword ptr [rsp + 0x60]
	test	ecx, ecx
	mov	edx, r15d
	mov	esi, 0
	cmovs	edx, esi
	cmp	eax, edx
	mov	esi, edx
	cmova	esi, eax
	movsxd	rdi, esi
	mov	r11, qword ptr [rsp + 0x70]
	mov	rsi, r11
	not	rsi
	cmp	rdi, rsi
	jae	.label_44
	cmp	qword ptr [rsp + 0x78], 0
	je	.label_68
	mov	qword ptr [rsp + 0x50], rdi
	sar	rbx, 0x20
	cmp	eax, edx
	mov	rsi, qword ptr [rsp + 0x78]
	jae	.label_82
	add	rcx, rbp
	movsxd	r15, r15d
	sub	r15, rbx
	cmp	r13d, 0x30
	je	.label_75
	cmp	r13d, 0x2b
	jne	.label_80
.label_75:
	test	ecx, ecx
	mov	r13d, 0
	mov	r12, rsi
	je	.label_82
	nop	word ptr cs:[rax + rax]
.label_103:
	mov	edi, 0x30
	mov	rsi, r12
	call	fputc
	inc	r13
	cmp	r13, r15
	jb	.label_103
	jmp	.label_82
.label_80:
	test	ecx, ecx
	mov	r13d, 0
	mov	r12, rsi
	je	.label_82
	nop	word ptr cs:[rax + rax]
.label_96:
	mov	edi, 0x20
	mov	rsi, r12
	call	fputc
	inc	r13
	cmp	r13, r15
	jb	.label_96
.label_82:
	lea	rsi, [r14 + rbp + 1]
	mov	rax, qword ptr [rsp + 0x68]
	test	al, 1
	jne	.label_160
	mov	edx, 1
	mov	rdi, rsi
	mov	rsi, rbx
	mov	rcx, qword ptr [rsp + 0x78]
	call	fwrite
	jmp	.label_106
.label_160:
	mov	rdi, qword ptr [rsp + 0x78]
	mov	rdx, rbx
	call	fwrite_uppcase
.label_106:
	mov	r11, qword ptr [rsp + 0x70]
	mov	rdi, qword ptr [rsp + 0x50]
.label_68:
	add	r11, rdi
	jmp	.label_108
.label_522:
	test	edx, edx
	je	.label_109
.label_521:
	imul	eax, eax, 0x2710
	imul	ecx, ecx, 0x64
	add	eax, edx
	add	eax, ecx
	mov	r10d, 9
	mov	cl, 1
	mov	edx, 0x14
	mov	rbp, rbx
	jmp	.label_74
.label_61:
	mov	eax, dword ptr [rsp + 0x4e8]
	mov	r10d, r15d
	jmp	.label_90
.label_186:
	xor	ebp, ebp
	cmp	rax, rcx
	je	.label_81
.label_126:
	mov	edi, 0x20
	mov	rsi, rbx
	call	fputc
	inc	rbp
	cmp	rbp, r15
	jb	.label_126
.label_81:
	mov	qword ptr [rsp + 0x78], rbx
	test	r12b, r12b
	je	.label_146
	mov	rdi, qword ptr [rsp + 0x78]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rdx, qword ptr [rsp + 0x60]
	call	fwrite_lowcase
	jmp	.label_134
.label_146:
	setne	al
	mov	rcx, qword ptr [rsp + 0x68]
	test	cl, cl
	mov	rcx, qword ptr [rsp + 0x78]
	je	.label_136
	test	al, al
	jne	.label_136
	mov	rdi, rcx
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_138
.label_136:
	mov	edx, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x60]
	jmp	.label_140
.label_202:
	test	rbx, rbx
	je	.label_50
	nop	dword ptr [rax]
.label_149:
	mov	edi, 0x20
	mov	rsi, r12
	call	fputc
	dec	rbx
	jne	.label_149
.label_50:
	mov	edi, 0xa
	jmp	.label_150
.label_148:
	test	rbx, rbx
	je	.label_95
	nop	word ptr cs:[rax + rax]
.label_135:
	mov	edi, 0x20
	mov	rsi, r12
	call	fputc
	dec	rbx
	jne	.label_135
.label_95:
	mov	edi, 9
	jmp	.label_150
.label_195:
	test	rbx, rbx
	mov	rsi, rax
	je	.label_99
.label_159:
	mov	edi, 0x20
	mov	rbp, rsi
	call	fputc
	mov	rsi, rbp
	dec	rbx
	jne	.label_159
.label_99:
	movzx	edi, byte ptr [rsp + 0x50]
	mov	qword ptr [rsp + 0x78], rsi
.label_132:
	call	fputc
	mov	r11, qword ptr [rsp + 0x70]
	mov	r10, qword ptr [rsp + 0x60]
	mov	rdx, qword ptr [rsp + 0x48]
.label_113:
	add	r11, rdx
	jmp	.label_63
.label_177:
	xor	ebp, ebp
	test	rbx, rbx
	je	.label_167
.label_163:
	mov	edi, 0x20
	mov	rsi, r15
	call	fputc
	inc	rbp
	cmp	rbp, rbx
	jb	.label_163
.label_167:
	mov	qword ptr [rsp + 0x78], r15
	movzx	edi, byte ptr [rsp + 0x50]
	mov	rsi, r15
	call	fputc
	mov	r11, qword ptr [rsp + 0x70]
	mov	r10, qword ptr [rsp + 0x60]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x20]
.label_165:
	add	r11, rsi
	mov	r15d, edx
	jmp	.label_63
.label_110:
	test	rbx, rbx
	mov	rsi, rax
	je	.label_53
.label_178:
	mov	edi, 0x20
	mov	rbp, rsi
	call	fputc
	mov	rsi, rbp
	dec	rbx
	jne	.label_178
.label_53:
	movzx	edi, byte ptr [rsp + 0x50]
	mov	qword ptr [rsp + 0x78], rsi
	call	fputc
	mov	r11, qword ptr [rsp + 0x70]
	mov	rdi, qword ptr [rsp + 0x20]
.label_123:
	add	r11, rdi
.label_84:
	mov	qword ptr [rsp + 0x70], r11
	mov	r15, qword ptr [rsp + 0x78]
	test	r15, r15
	je	.label_114
	xor	ebx, ebx
	mov	rax, qword ptr [rsp + 0x48]
	test	eax, eax
	je	.label_114
	mov	rax, qword ptr [rsp + 0x48]
	movsxd	rbp, eax
	nop	word ptr [rax + rax]
.label_48:
	mov	edi, 0x30
	mov	rsi, r15
	call	fputc
	inc	rbx
	cmp	rbx, rbp
	jb	.label_48
.label_114:
	mov	rax, qword ptr [rsp + 0x48]
	cdqe	
	mov	r11, qword ptr [rsp + 0x70]
	add	r11, rax
	xor	r15d, r15d
	mov	r10, qword ptr [rsp + 0x60]
.label_63:
	lea	rbx, [rsp + 0x4a7]
	sub	rbx, r12
	xor	eax, eax
	test	r15d, r15d
	cmovns	eax, r15d
	cdqe	
	cmp	rbx, rax
	mov	rdx, rbx
	cmovb	rdx, rax
	mov	rcx, r11
	not	rcx
	cmp	rdx, rcx
	jae	.label_44
	cmp	qword ptr [rsp + 0x78], 0
	je	.label_67
	mov	qword ptr [rsp + 0x50], rdx
	mov	qword ptr [rsp + 0x70], r11
	cmp	rbx, rax
	mov	qword ptr [rsp + 0x60], rbx
	setae	al
	test	r10d, r10d
	mov	rbx, qword ptr [rsp + 0x78]
	jne	.label_47
	test	al, al
	jne	.label_47
	mov	rcx, rbx
	movsxd	rax, r15d
	mov	r15, rax
	mov	rdx, qword ptr [rsp + 0x60]
	sub	r15, rdx
	cmp	r13d, 0x30
	je	.label_198
	cmp	r13d, 0x2b
	jne	.label_200
.label_198:
	xor	ebp, ebp
	cmp	rax, rdx
	mov	rbx, rcx
	je	.label_47
	nop	word ptr cs:[rax + rax]
.label_79:
	mov	edi, 0x30
	mov	rsi, rbx
	call	fputc
	inc	rbp
	cmp	rbp, r15
	jb	.label_79
	jmp	.label_47
.label_200:
	xor	ebp, ebp
	cmp	rax, rdx
	mov	rbx, rcx
	je	.label_47
	nop	word ptr cs:[rax + rax]
.label_59:
	mov	edi, 0x20
	mov	rsi, rbx
	call	fputc
	inc	rbp
	cmp	rbp, r15
	jb	.label_59
.label_47:
	mov	qword ptr [rsp + 0x78], rbx
	mov	rax, qword ptr [rsp + 0x68]
	test	al, al
	je	.label_60
	mov	rdi, qword ptr [rsp + 0x78]
	mov	rsi, r12
.label_138:
	mov	rdx, qword ptr [rsp + 0x60]
	call	fwrite_uppcase
	jmp	.label_134
.label_60:
	mov	edx, 1
	mov	rdi, r12
	mov	rsi, qword ptr [rsp + 0x60]
	mov	rcx, qword ptr [rsp + 0x78]
.label_140:
	call	fwrite
.label_134:
	mov	r11, qword ptr [rsp + 0x70]
	mov	rdx, qword ptr [rsp + 0x50]
	jmp	.label_67
.label_109:
	test	ecx, ecx
	je	.label_71
.label_520:
	imul	eax, eax, 0x64
	add	eax, ecx
	mov	r10d, 6
	mov	cl, 1
	mov	edx, 4
	mov	rbp, rbx
	jmp	.label_74
.label_192:
	test	rbx, rbx
	je	.label_83
.label_86:
	mov	edi, 0x20
	mov	rsi, r12
	call	fputc
	dec	rbx
	jne	.label_86
.label_83:
	movsx	edi, byte ptr [r14]
.label_150:
	mov	rsi, r12
	mov	qword ptr [rsp + 0x78], r12
	call	fputc
	mov	r11, qword ptr [rsp + 0x70]
	mov	rdx, qword ptr [rsp + 0x68]
.label_67:
	add	r11, rdx
.label_108:
	mov	r13, qword ptr [rsp + 0x78]
	movabs	rbp, 0x1000000000002500
.label_107:
	mov	r15d, 0xffffffff
	cmp	byte ptr [r14 + 1], 0
	lea	r14, [r14 + 1]
	jne	.label_58
	jmp	.label_98
.label_44:
	xor	r11d, r11d
.label_98:
	mov	rax, r11
	add	rsp, 0x4a8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x403d30

	.globl fwrite_lowcase
	.type fwrite_lowcase, @function
fwrite_lowcase:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	test	r14, r14
	je	.label_203
	call	__ctype_tolower_loc
	mov	r12, rax
	nop	
.label_204:
	movzx	eax, byte ptr [rbx]
	mov	rcx, qword ptr [r12]
	mov	edi, dword ptr [rcx + rax*4]
	mov	rsi, r15
	call	fputc
	inc	rbx
	dec	r14
	jne	.label_204
.label_203:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403d80

	.globl fwrite_uppcase
	.type fwrite_uppcase, @function
fwrite_uppcase:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	test	r14, r14
	je	.label_205
	call	__ctype_toupper_loc
	mov	r12, rax
	nop	
.label_206:
	movzx	eax, byte ptr [rbx]
	mov	rcx, qword ptr [r12]
	mov	edi, dword ptr [rcx + rax*4]
	mov	rsi, r15
	call	fputc
	inc	rbx
	dec	r14
	jne	.label_206
.label_205:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403dd0

	.globl iso_week_days
	.type iso_week_days, @function
iso_week_days:
	lea	eax, [rdi + 0x17e]
	sub	eax, esi
	cdqe	
	imul	rcx, rax, -0x6db6db6d
	shr	rcx, 0x20
	add	ecx, eax
	mov	edx, ecx
	shr	edx, 0x1f
	sar	ecx, 2
	add	ecx, edx
	lea	edx, [rcx*8]
	sub	edx, ecx
	sub	eax, edx
	neg	eax
	lea	eax, [rdi + rax + 3]
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403e10
	.globl parse_long_options
	.type parse_long_options, @function
parse_long_options:

	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0xd0
	mov	rbx, r9
	mov	r14, r8
	mov	r15, rcx
	mov	r12, rdx
	test	al, al
	je	.label_207
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
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
	xor	r8d, r8d
	call	getopt_long
	cmp	eax, 0x68
	je	.label_209
	cmp	eax, 0x76
	jne	.label_208
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0x100]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x30
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	r8, [rsp + 0xb0]
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, r14
	call	version_etc_va
	xor	edi, edi
	call	exit
.label_209:
	xor	edi, edi
	call	rbx
.label_208:
	mov	dword ptr [dword ptr [rip + opterr]],  ebp
	mov	dword ptr [dword ptr [rip + optind]],  0
	add	rsp, 0xd0
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403f10

	.globl parse_gnu_standard_options_only
	.type parse_gnu_standard_options_only, @function
parse_gnu_standard_options_only:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0xc8
	mov	r14, r8
	mov	r15, rcx
	mov	rbx, rdx
	test	al, al
	je	.label_213
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_213:
	mov	ebp,  dword ptr [dword ptr [rip + opterr]]
	mov	dword ptr [dword ptr [rip + opterr]],  1
	mov	eax, OFFSET FLAT:.str_0
	mov	edx, OFFSET FLAT:.str_4
	test	r9b, r9b
	cmovne	rdx, rax
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	call	getopt_long
	cmp	eax, -1
	je	.label_211
	mov	rcx, qword ptr [rsp + 0xf0]
	cmp	eax, 0x68
	je	.label_212
	cmp	eax, 0x76
	je	.label_214
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	jmp	.label_210
.label_212:
	xor	edi, edi
.label_210:
	call	rcx
.label_211:
	mov	dword ptr [dword ptr [rip + opterr]],  ebp
	add	rsp, 0xc8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_214:
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xf8]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x30
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	r8, [rsp + 0xb0]
	mov	rsi, rbx
	mov	rdx, r15
	mov	rcx, r14
	call	version_etc_va
	xor	edi, edi
	call	exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404020

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_215
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_216
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_216
	mov	esi, OFFSET FLAT:.str.2_1
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_217
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_217:
	mov	rbx, r14
.label_216:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_215:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:.str_5
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4040d0
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
	.align	32
	#Procedure 0x404110
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
	.align	32
	#Procedure 0x404120
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
	.align	32
	#Procedure 0x404130

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
	.align	32
	#Procedure 0x404170
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
	.align	32
	#Procedure 0x404190

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_218
	test	rdx, rdx
	je	.label_218
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_218:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4041c0
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
	mov	r8d, dword ptr [rbp]
	mov	r9d, dword ptr [rbp + 4]
	mov	rax, qword ptr [rbp + 0x28]
	mov	rcx, qword ptr [rbp + 0x30]
	lea	rdx, [rbp + 8]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], rdx
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
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404240

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
	mov	r13d, r8d
	mov	qword ptr [rsp + 0xc0], rcx
	mov	r12, rdx
	mov	rbp, rsi
	mov	qword ptr [rsp + 0xe0], rdi
	mov	rax, qword ptr [rsp + 0x150]
	mov	qword ptr [rsp + 0x88], rax
	mov	rax, qword ptr [rsp + 0x148]
	mov	qword ptr [rsp + 0x90], rax
	call	__ctype_get_mb_cur_max
	mov	qword ptr [rsp + 0x60], rax
	mov	r15b, bl
	shr	r15b, 1
	and	r15b, 1
	mov	eax, ebx
	and	eax, 1
	mov	dword ptr [rsp + 0x5c], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x58], ebx
	mov	r8b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x80], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0xd0], rax
	mov	eax, 0
	xor	r11d, r11d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x70], rcx
.label_332:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r13d
	cmp	r13d, 0xa
	ja	.label_315
	mov	r14d, 7
	mov	sil, 1
	xor	edi, edi
	mov	r9, r12
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_290]]
.label_548:
	mov	r12d, r11d
	mov	edi, OFFSET FLAT:.str.11_0
	mov	esi, r13d
	mov	r14, r10
	mov	bl, r8b
	mov	rbp, r9
	call	gettext_quote
	mov	qword ptr [rsp + 0x90], rax
	mov	edi, OFFSET FLAT:.str.12_0
	mov	esi, r13d
	call	gettext_quote
	mov	r11d, r12d
	mov	r9, rbp
	mov	r8b, bl
	mov	r10, r14
	mov	qword ptr [rsp + 0x88], rax
.label_549:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	rbp, r9
	mov	byte ptr [rsp + 0x69], r8b
	test	r15b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0x90]
	jne	.label_306
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_306
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	
.label_331:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_321
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_321:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_331
.label_306:
	mov	rbx, qword ptr [rsp + 0x88]
	mov	rdi, rbx
	mov	r12, r10
	call	strlen
	mov	r10, r12
	mov	qword ptr [rsp + 0xd0], rax
	mov	r14d, r13d
	mov	qword ptr [rsp + 0xa8], rbx
	mov	sil, 1
	mov	dil, r15b
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r9, rbp
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r11d, dword ptr [rsp + 0xb8]
	jmp	.label_236
.label_541:
	xor	r14d, r14d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	sil, al
	xor	edi, edi
	jmp	.label_236
.label_544:
	mov	al, 1
.label_542:
	mov	r15b, 1
.label_545:
	test	r15b, 1
	mov	cl, 1
	je	.label_335
	mov	cl, al
.label_335:
	mov	al, cl
.label_543:
	mov	r14d, 2
	test	r15b, 1
	jne	.label_234
	test	r10, r10
	je	.label_253
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_251
.label_234:
	xor	ecx, ecx
	jmp	.label_251
.label_546:
	mov	r14d, 5
	test	r15b, 1
	jne	.label_257
	test	r10, r10
	je	.label_309
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_264
.label_547:
	mov	sil, 1
	mov	r14d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	dil, 1
	jmp	.label_236
.label_253:
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_251:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0xa8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xd0], rcx
	mov	sil, al
	mov	dil, r15b
	jmp	.label_236
.label_257:
	xor	eax, eax
	jmp	.label_264
.label_309:
	mov	eax, 1
.label_264:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	sil, 1
	mov	dil, r15b
	nop	dword ptr [rax + rax]
.label_236:
	mov	qword ptr [rsp + 0x98], rdi
	mov	byte ptr [rsp + 0xa6], sil
	cmp	qword ptr [rsp + 0x140], 0
	setne	bl
	cmp	r14d, 2
	setne	r15b
	sete	dl
	mov	cl, sil
	and	cl, 1
	mov	byte ptr [rsp + 0xa5], cl
	sete	byte ptr [rsp + 0x6b]
	mov	r12b, r15b
	and	r12b, cl
	mov	byte ptr [rsp + 0xbf], r12b
	cmp	qword ptr [rsp + 0xd0], 0
	setne	r13b
	mov	al, r13b
	and	al, r12b
	mov	byte ptr [rsp + 0xdf], al
	mov	al, dil
	and	al, 1
	mov	byte ptr [rsp + 0xcf], al
	sete	cl
	and	dl, al
	mov	byte ptr [rsp + 0x7f], dl
	and	bl, al
	mov	byte ptr [rsp + 0xb7], bl
	or	cl, r15b
	mov	byte ptr [rsp + 0xa7], cl
	and	sil, dil
	and	sil, r13b
	mov	byte ptr [rsp + 0x6a], sil
	xor	esi, esi
	jmp	.label_238
	nop	dword ptr [rax + rax]
.label_273:
	inc	qword ptr [rsp + 0xf0]
	shl	r15b, 7
	sar	r15b, 7
	and	r15b, r8b
	mov	r8b, r15b
	inc	rsi
.label_238:
	cmp	rbp, -1
	je	.label_224
	cmp	rsi, rbp
	jne	.label_226
	jmp	.label_229
	nop	dword ptr [rax]
.label_224:
	cmp	byte ptr [r9 + rsi], 0
	je	.label_229
.label_226:
	cmp	byte ptr [rsp + 0xdf], 0
	je	.label_235
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_237
	cmp	rbp, -1
	jne	.label_237
	mov	dword ptr [rsp + 0xb8], r11d
	mov	rdi, r9
	mov	rbp, r10
	mov	r15b, r8b
	mov	r13, r14
	mov	r12, r9
	mov	r14, rsi
	call	strlen
	mov	rsi, r14
	mov	r11d, dword ptr [rsp + 0xb8]
	mov	r9, r12
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	r14, r13
	mov	r8b, r15b
	mov	r10, rbp
	mov	rbp, rax
.label_237:
	cmp	rbx, rbp
	jbe	.label_261
.label_235:
	mov	rdi, r14
	mov	dword ptr [rsp + 0xec], 0
.label_221:
	movzx	r13d, byte ptr [r9 + rsi]
	cmp	r13, 0x7e
	ja	.label_266
	xor	edx, edx
	mov	r15b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r13 * 8) + label_270]]
.label_614:
	test	rsi, rsi
	jne	.label_219
	jmp	.label_278
	nop	word ptr cs:[rax + rax]
.label_261:
	mov	qword ptr [rsp + 0xc0], rbp
	mov	r12d, r11d
	mov	r13, r14
	mov	r15b, r8b
	mov	rbx, r10
	lea	rdi, [r9 + rsi]
	mov	r14, rsi
	mov	rbp, r9
	mov	rsi, qword ptr [rsp + 0xa8]
	mov	rdx, qword ptr [rsp + 0xd0]
	call	memcmp
	test	eax, eax
	sete	al
	mov	dword ptr [rsp + 0xec], eax
	jne	.label_296
	cmp	byte ptr [rsp + 0xcf], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	je	.label_221
	jmp	.label_239
.label_296:
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	jmp	.label_221
.label_618:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_312
	test	rsi, rsi
	jne	.label_314
	cmp	rbp, 1
	je	.label_278
	xor	r15d, r15d
	jmp	.label_230
.label_607:
	cmp	byte ptr [rsp + 0xa5], 0
	je	.label_318
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_239
	cmp	edi, 2
	jne	.label_326
	mov	al, r11b
	and	al, 1
	jne	.label_330
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_333
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_333:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_320
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_320:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_225
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_225:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r11b, 1
	mov	rcx, rax
	jmp	.label_268
.label_608:
	mov	bl, 0x62
	jmp	.label_241
.label_609:
	mov	cl, 0x74
	jmp	.label_244
.label_610:
	mov	bl, 0x76
	jmp	.label_241
.label_611:
	mov	bl, 0x66
	jmp	.label_241
.label_612:
	mov	cl, 0x72
	jmp	.label_244
.label_615:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_249
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_248
	test	r10, r10
	sete	al
	mov	rcx, qword ptr [rsp + 0x80]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, r10
	mov	qword ptr [rsp + 0x80], rdx
	mov	eax, 0
	cmove	r10, rax
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_259
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_259:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_279
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_279:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_285
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_285:
	add	qword ptr [rsp + 0xf0], 3
	xor	r11d, r11d
	jmp	.label_294
.label_616:
	mov	r14, rdi
	cmp	r14d, 5
	je	.label_299
	cmp	r14d, 2
	jne	.label_300
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_248
.label_300:
	mov	rdi, r14
	jmp	.label_219
.label_617:
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_303
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_248
	mov	rdi, r14
	jmp	.label_304
.label_266:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	qword ptr [rsp + 0x38], rdi
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x40], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_307
	mov	r14, r9
	mov	rbx, rsi
	call	__ctype_b_loc
	mov	rsi, rbx
	mov	r9, r14
	mov	rax, qword ptr [rax]
	movzx	r15d, word ptr [rax + r13*2]
	shr	r15d, 0xe
	and	r15b, 1
	mov	ebx, 1
.label_228:
	and	r15b, 1
	mov	dl, r15b
	or	dl, byte ptr [rsp + 0x6b]
	mov	byte ptr [rsp + 0xc0], dl
	cmp	rbx, 1
	mov	rcx, rbx
	mov	r10, qword ptr [rsp + 0x40]
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r14, qword ptr [rsp + 0x38]
	mov	r11d, dword ptr [rsp + 0xb8]
	ja	.label_323
	test	dl, dl
	je	.label_323
	mov	rdi, r14
	xor	eax, eax
	jmp	.label_230
.label_312:
	test	rsi, rsi
	jne	.label_222
	mov	cl, byte ptr [r9 + 1]
	test	cl, cl
	jne	.label_222
.label_278:
	mov	dl, 1
.label_613:
	cmp	byte ptr [rsp + 0xa7], 0
	je	.label_239
	xor	eax, eax
	mov	r15b, dl
	jmp	.label_230
.label_318:
	cmp	dword ptr [rsp + 0x5c], 0
	je	.label_219
	mov	r14, rdi
	inc	rsi
	jmp	.label_238
.label_249:
	mov	rdi, r14
.label_294:
	xor	eax, eax
	mov	r15b, 1
	jmp	.label_230
.label_303:
	mov	rdi, r14
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r13b
	je	.label_244
.label_304:
	xor	eax, eax
	xor	r15d, r15d
	jmp	.label_247
.label_244:
	cmp	byte ptr [rsp + 0xa7], 0
	mov	bl, cl
	je	.label_239
.label_241:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xa5], 0
	mov	r15d, 0
	je	.label_230
	jmp	.label_260
.label_307:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_262
	mov	rdi, r9
	mov	rbx, r9
	mov	rbp, rsi
	call	strlen
	mov	rsi, rbp
	mov	r9, rbx
	mov	rbp, rax
.label_262:
	mov	qword ptr [rsp + 0xc0], rbp
	lea	rax, [r9 + rsi]
	mov	qword ptr [rsp + 0x20], rax
	mov	r15b, 1
	xor	ebx, ebx
	lea	r14, [rsp + 0x100]
.label_325:
	lea	rax, [rbx + rsi]
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x30], rsi
	lea	rsi, [r9 + rax]
	mov	qword ptr [rsp + 0x48], r9
	mov	rdx, rbp
	sub	rdx, rax
	lea	rdi, [rsp + 0xfc]
	mov	rcx, r14
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_289
	mov	qword ptr [rsp + 0x50], rbx
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x40]
	movabs	rsi, 0x20000002b
	mov	r14, qword ptr [rsp + 0x38]
	mov	r8b, byte ptr [rsp + 0xa6]
	je	.label_295
	cmp	rbp, -2
	je	.label_301
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_302
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_313:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_308
	bt	rsi, rdx
	jb	.label_282
.label_308:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_313
.label_302:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_317
	xor	r15d, r15d
.label_317:
	lea	rdi, [rsp + 0x100]
	mov	rbx, qword ptr [rsp + 0x50]
	add	rbx, rbp
	mov	r14, rdi
	call	mbsinit
	test	eax, eax
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsi, qword ptr [rsp + 0x30]
	je	.label_325
	jmp	.label_228
.label_222:
	mov	rbp, -1
	xor	r15d, r15d
	jmp	.label_230
.label_299:
	mov	rdi, r14
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_219
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_219
	movzx	eax, byte ptr [rsi + r9 + 1]
	cmp	eax, 0x3f
	jne	.label_219
	movsx	edx, byte ptr [r9 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_227
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_276
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_239
	mov	r13b, byte ptr [r9 + rcx]
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_243
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x3f
.label_243:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_263
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x22
.label_263:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_258
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x22
.label_258:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_255
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x3f
.label_255:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r15d, r15d
	jmp	.label_230
.label_219:
	xor	eax, eax
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_230:
	test	r12b, r12b
	je	.label_269
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_281
	jmp	.label_288
	nop	word ptr cs:[rax + rax]
.label_269:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_288
.label_281:
	mov	r14, rsi
	mov	cl, r13b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r13b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_291
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	mov	bl, r13b
	mov	rsi, r14
	je	.label_247
	jmp	.label_260
	nop	word ptr cs:[rax + rax]
.label_288:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	mov	bl, r13b
	jne	.label_260
	jmp	.label_247
.label_291:
	mov	bl, r13b
	mov	rsi, r14
.label_260:
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_239
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_310
	mov	al, r11b
	and	al, 1
	jne	.label_310
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_242
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_242:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_334
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_334:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_327
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_327:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_310:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_337
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_337:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_223
.label_314:
	xor	r15d, r15d
	jmp	.label_230
.label_323:
	add	rcx, rsi
	xor	eax, eax
	jmp	.label_231
	nop	word ptr cs:[rax + rax]
.label_233:
	inc	qword ptr [rsp + 0xf0]
	mov	r13b, byte ptr [r9 + rsi + 1]
	mov	rsi, rdx
	mov	dl, byte ptr [rsp + 0xc0]
.label_231:
	test	dl, dl
	je	.label_319
	mov	edx, dword ptr [rsp + 0xec]
	mov	rdi, r14
	test	dl, 1
	je	.label_256
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_311
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
	mov	rsi, rbx
.label_311:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_256
	nop	word ptr [rax + rax]
.label_319:
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_248
	cmp	r14d, 2
	jne	.label_271
	mov	al, r11b
	and	al, 1
	jne	.label_271
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_275
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_275:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_280
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_280:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_286
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_286:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_271:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_232
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_232:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_293
	mov	dl, r13b
	shr	dl, 6
	or	dl, 0x30
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rdi
.label_293:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_305
	mov	dl, r13b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rbx
.label_305:
	add	qword ptr [rsp + 0xf0], 3
	and	r13b, 7
	or	r13b, 0x30
	mov	al, 1
.label_256:
	lea	rdx, [rsi + 1]
	cmp	rcx, rdx
	jbe	.label_247
	test	r11b, 1
	je	.label_324
	mov	bl, al
	and	bl, 1
	mov	r14, rdi
	jne	.label_220
	mov	rbx, rsi
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_329
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
.label_329:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_265
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
.label_265:
	add	qword ptr [rsp + 0xf0], 2
	xor	r11d, r11d
	mov	rsi, rbx
	jmp	.label_220
	nop	word ptr cs:[rax + rax]
.label_324:
	mov	r14, rdi
.label_220:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_233
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rbx], r13b
	mov	rsi, rdi
	jmp	.label_233
.label_247:
	test	r11b, 1
	je	.label_245
	and	al, 1
	jne	.label_245
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_297
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_297:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	mov	r14, rdi
	jae	.label_254
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_254:
	add	qword ptr [rsp + 0xf0], 2
	xor	r11d, r11d
	mov	bl, r13b
	jmp	.label_223
	nop	dword ptr [rax + rax]
.label_245:
	mov	bl, r13b
	mov	r14, rdi
.label_223:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_273
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
	jmp	.label_273
.label_326:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_268
.label_330:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_268:
	cmp	rcx, r10
	jae	.label_283
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_283:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r13b, 0x30
	cmp	edi, 2
	je	.label_287
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_298
	mov	dl, byte ptr [r9 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_252
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_274
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
	mov	rsi, rbx
.label_274:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_246
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
	mov	rsi, rbx
.label_246:
	add	rcx, 3
	xor	r15d, r15d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_230
.label_287:
	xor	r15d, r15d
	jmp	.label_230
.label_298:
	xor	r15d, r15d
	jmp	.label_230
.label_252:
	xor	r15d, r15d
	jmp	.label_230
.label_289:
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_316
.label_295:
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_322
.label_301:
	mov	rbp, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x28], rbp
	jae	.label_328
	mov	r9, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_338:
	mov	rax, qword ptr [rsp + 0x20]
	cmp	byte ptr [rax + rbx], 0
	je	.label_336
	lea	rax, [rsi + rbx + 1]
	inc	rbx
	cmp	rax, rbp
	jb	.label_338
	xor	r15d, r15d
	jmp	.label_316
.label_328:
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
.label_322:
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_316:
	mov	byte ptr [rsp + 0xa6], r8b
	jmp	.label_228
.label_336:
	xor	r15d, r15d
	jmp	.label_316
.label_227:
	xor	r15d, r15d
	jmp	.label_230
.label_276:
	xor	r15d, r15d
	mov	rsi, rbx
	jmp	.label_230
	nop	dword ptr [rax + rax]
.label_229:
	cmp	qword ptr [rsp + 0xf0], 0
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0x98]
	and	cl, 1
	je	.label_240
	or	dl, al
	je	.label_248
.label_240:
	mov	qword ptr [rsp + 0xc0], rbp
	mov	r12, r9
	test	cl, cl
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0x70]
	test	sil, 1
	je	.label_250
	or	dl, al
	jne	.label_250
	test	r8b, 1
	jne	.label_340
	cmp	qword ptr [rsp + 0x80], 0
	je	.label_250
	test	r10, r10
	mov	r13d, r14d
	mov	al, byte ptr [rsp + 0xa6]
	mov	rdx, qword ptr [rsp + 0x98]
	mov	r15b, dl
	mov	rbp, qword ptr [rsp + 0x80]
	je	.label_332
.label_250:
	mov	rdx, qword ptr [rsp + 0xa8]
	test	rdx, rdx
	je	.label_277
	test	cl, cl
	jne	.label_277
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_277
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_292:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_284
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_284:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_292
.label_277:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_272
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_272
.label_239:
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	r14, rdi
.label_267:
	test	r8b, 1
	mov	r8d, 4
	cmove	r8d, r14d
	cmp	r14d, 2
	cmovne	r8d, r14d
	and	r9d, 0xfffffffd
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0x90]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], 0
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsi, r10
	mov	rcx, rbp
.label_339:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_272:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_282:
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_267
.label_248:
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	jmp	.label_267
.label_340:
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0x90]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x140]
	mov	qword ptr [rsp], rax
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0x80]
	mov	rdx, r12
	mov	rcx, qword ptr [rsp + 0xc0]
	mov	r9d, dword ptr [rsp + 0x6c]
	jmp	.label_339
.label_315:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405450
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405460

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
	call	xcharalloc
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
	je	.label_341
	mov	qword ptr [rax], rbx
.label_341:
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
	.align	32
	#Procedure 0x405560
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_342
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_344:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_344
.label_342:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_346
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_345]], OFFSET FLAT:slot0
.label_346:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_343
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_343:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405600

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x405610

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
	js	.label_347
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_352
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_348
.label_352:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_351
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
	mov	qword ptr [word ptr [rip + slotvec]],  r14
	jne	.label_350
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_350:
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
	mov	r14, qword ptr [rsp + 0x38]
.label_348:
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
	ja	.label_353
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_349
	mov	rdi, rbx
	call	free
.label_349:
	mov	rdi, r14
	call	xcharalloc
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
.label_353:
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
.label_347:
	call	abort
.label_351:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4057e0

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4057f0
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405800
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
	.align	32
	#Procedure 0x405810

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
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405850

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
	je	.label_354
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
.label_354:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4058b0

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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4058f0
	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:

	mov	rax, rsi
	mov	ecx, edi
	xor	edi, edi
	mov	esi, ecx
	mov	rdx, rax
	jmp	quotearg_n_style
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405910
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405930

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
	mov	rcx,  qword ptr [word ptr [rip + label_355]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_356]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_357]]
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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4059a0

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4059b0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4059c0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4059d0

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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405a20

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405a30

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
	mov	rax,  qword ptr [word ptr [rip + label_355]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_356]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_357]]
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405aa0
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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405ac0
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ae0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405af0
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
	.align	32
	#Procedure 0x405b00

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405b10

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405b20

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	r14d, esi
	mov	rbx, rdi
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	cmp	rax, rbx
	jne	.label_359
	call	locale_charset
	mov	rbp, rax
	mov	dword ptr [rsp + 8], 0
	mov	dword ptr [rsp], 0
	mov	esi, 0x55
	mov	edx, 0x54
	mov	ecx, 0x46
	mov	r8d, 0x2d
	mov	r9d, 0x38
	mov	rdi, rbp
	call	strcaseeq0
	test	eax, eax
	je	.label_358
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_359
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_359
.label_358:
	mov	dword ptr [rsp + 8], 0x30
	mov	dword ptr [rsp], 0x33
	mov	esi, 0x47
	mov	edx, 0x42
	mov	ecx, 0x31
	mov	r8d, 0x38
	mov	r9d, 0x30
	mov	rdi, rbp
	call	strcaseeq0
	test	eax, eax
	je	.label_360
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_359
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_359
.label_360:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:.str.10
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_359:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405c00

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
	je	.label_362
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_363
	jmp	.label_361
.label_362:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_361
.label_363:
	mov	eax, 1
	test	bpl, bpl
	je	.label_361
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
.label_361:
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
	.align	32
	#Procedure 0x405c90

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
	je	.label_366
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_364
	jmp	.label_365
.label_366:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_365
.label_364:
	mov	eax, 1
	test	bpl, bpl
	je	.label_365
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
.label_365:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405d20

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
	je	.label_367
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_369
	jmp	.label_368
.label_367:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_368
.label_369:
	mov	eax, 1
	test	bpl, bpl
	je	.label_368
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
.label_368:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405da0

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
	je	.label_372
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_371
	jmp	.label_370
.label_372:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_370
.label_371:
	mov	eax, 1
	test	bpl, bpl
	je	.label_370
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
.label_370:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405e10

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
	je	.label_375
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_373
	jmp	.label_374
.label_375:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_374
.label_373:
	mov	eax, 1
	test	bpl, bpl
	je	.label_374
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_374:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e80

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
	je	.label_376
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_378
	jmp	.label_377
.label_376:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_377
.label_378:
	mov	eax, 1
	test	bpl, bpl
	je	.label_377
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_377:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405ed0

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
	je	.label_381
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_380
	jmp	.label_379
.label_381:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_379
.label_380:
	mov	eax, 1
	test	bpl, bpl
	je	.label_379
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_379:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405f20

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_384
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_383
	jmp	.label_382
.label_384:
	mov	eax, 1
	test	cl, cl
	je	.label_382
.label_383:
	xor	eax, eax
.label_382:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405f50

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
	je	.label_387
	mov	edx, OFFSET FLAT:.str_6
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_386
.label_387:
	mov	edx, OFFSET FLAT:.str.1_3
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_386:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_2
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
	mov	esi, OFFSET FLAT:.str.3_1
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_392
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_393]]
.label_531:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4_1
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
.label_392:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	jmp	.label_391
.label_532:
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
.label_533:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6_0
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
.label_534:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_388
.label_535:
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
	jmp	.label_390
.label_536:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	jmp	.label_385
.label_537:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10_0
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
.label_385:
	mov	qword ptr [rsp + 0x10], rdi
.label_390:
	mov	qword ptr [rsp + 8], rsi
.label_388:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_394
.label_539:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_391:
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
	jmp	.label_389
.label_538:
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
.label_389:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_394:
	call	__fprintf_chk
.label_530:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406240
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_395:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_395
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406270

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_397:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_396
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_398
	nop	dword ptr [rax]
.label_396:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_398:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_399
	inc	r9
	cmp	r9, 0xa
	jb	.label_397
.label_399:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4062d0
	.globl version_etc
	.type version_etc, @function
version_etc:

	sub	rsp, 0xc8
	test	al, al
	je	.label_400
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_400:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x20
	lea	r8, [rsp + 0xb0]
	call	version_etc_va
	add	rsp, 0xc8
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406360
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
	mov	edx, OFFSET FLAT:.str.15_1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16_0
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
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x4063e0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_401
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_401:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406410

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_402
	test	rax, rax
	je	.label_403
.label_402:
	pop	rbx
	ret	
.label_403:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406430
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_404
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_404:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406460

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_405
	test	rbx, rbx
	jne	.label_405
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_405:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_407
	test	rax, rax
	je	.label_406
.label_407:
	pop	rbx
	ret	
.label_406:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x406490

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
	jbe	.label_411
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_409
.label_408:
	test	rcx, rcx
	jne	.label_412
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_412:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_410
.label_409:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_411:
	call	xalloc_die
.label_410:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406510

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406520
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406530
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
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406560
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_413
	call	rpl_calloc
	test	rax, rax
	je	.label_413
	pop	rcx
	ret	
.label_413:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406590

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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4065c0
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
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4065e0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_4
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x406610

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_414
	test	rsi, rsi
	mov	ecx, 1
	je	.label_415
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_415
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_414:
	mov	ecx, 1
.label_415:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406660

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_416
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_418
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_416
.label_418:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_416
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_417
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_417:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_416:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4066e0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_419
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_419
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_419:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406710

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_420
	ret	
.label_420:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406730

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
	jne	.label_421
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_421
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_422
.label_421:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_422:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_423
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_423:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4067a0

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
	je	.label_424
	cmp	r15, -2
	jb	.label_424
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_424
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_424:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406800
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
	jle	.label_425
	add	rax, rbx
	nop	dword ptr [rax]
.label_426:
	movzx	ecx, byte ptr [rax - 1]
	cmp	ecx, 0x20
	jne	.label_425
	mov	byte ptr [rax - 1], 0
	dec	rax
	cmp	rbx, rax
	jb	.label_426
.label_425:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x406860

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
	jmp	.label_428
.label_427:
	lea	rdi, [r12 + r12*2]
	inc	r12
	shl	rdi, 7
	add	rdi, r13
	mov	edx, 0x180
	mov	rsi, rbx
	call	memcpy
	nop	dword ptr [rax + rax]
.label_428:
	call	getutxent
	mov	rbx, rax
	test	rbx, rbx
	je	.label_429
	mov	rdi, rbx
	mov	esi, ebp
	call	desirable_utmp_entry
	test	al, al
	je	.label_428
	cmp	r12, qword ptr [rsp]
	jne	.label_427
	mov	edx, 0x180
	mov	rdi, r13
	lea	rsi, [rsp]
	call	x2nrealloc
	mov	r13, rax
	jmp	.label_427
.label_429:
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406910

	.globl desirable_utmp_entry
	.type desirable_utmp_entry, @function
desirable_utmp_entry:
	cmp	byte ptr [rdi + 0x2c], 0
	je	.label_432
	movzx	eax, word ptr [rdi]
	cmp	eax, 7
	sete	al
	jmp	.label_433
.label_432:
	xor	eax, eax
.label_433:
	push	rax
	test	sil, 2
	je	.label_430
	test	al, al
	jne	.label_430
	xor	eax, eax
	pop	rcx
	ret	
.label_430:
	test	sil, 1
	je	.label_431
	xor	al, 1
	jne	.label_431
	mov	edi, dword ptr [rdi + 4]
	test	edi, edi
	jle	.label_431
	xor	esi, esi
	call	kill
	test	eax, eax
	jns	.label_431
	call	__errno_location
	cmp	dword ptr [rax], 3
	jne	.label_431
	xor	eax, eax
	pop	rcx
	ret	
.label_431:
	mov	al, 1
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x406960

	.globl tzalloc
	.type tzalloc, @function
tzalloc:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	xor	r15d, r15d
	test	r14, r14
	je	.label_434
	mov	rdi, r14
	call	strlen
	mov	r15, rax
	inc	r15
.label_434:
	lea	rax, [r15 + 0x11]
	and	rax, 0xfffffffffffffff8
	cmp	r15, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_435
	mov	qword ptr [rbx], 0
	test	r14, r14
	setne	byte ptr [rbx + 8]
	mov	byte ptr [rbx + 9], 0
	je	.label_435
	mov	rdi, rbx
	add	rdi, 9
	mov	rsi, r14
	mov	rdx, r15
	call	extend_abbrs
.label_435:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4069d0

	.globl extend_abbrs
	.type extend_abbrs, @function
extend_abbrs:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rdi
	call	memcpy
	mov	byte ptr [rbx + r14], 0
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4069f0

	.globl tzfree
	.type tzfree, @function
tzfree:
	push	rbx
	cmp	rdi, 2
	jb	.label_436
	nop	word ptr [rax + rax]
.label_437:
	mov	rbx, qword ptr [rdi]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_437
.label_436:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406a20
	.globl localtime_rz
	.type localtime_rz, @function
localtime_rz:

	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbp, rsi
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_438
	mov	rdi, rbx
	call	set_tz
	mov	r14, rax
	test	r14, r14
	je	.label_439
	mov	rdi, rbp
	mov	rsi, r15
	call	localtime_r
	mov	bpl, 1
	test	rax, rax
	je	.label_440
	mov	rdi, rbx
	mov	rsi, r15
	call	save_abbr
	mov	bpl, al
	xor	bpl, 1
.label_440:
	mov	rdi, r14
	call	revert_tz
	xor	ecx, ecx
	xor	al, 1
	cmovne	r15, rcx
	test	bpl, bpl
	cmovne	r15, rcx
	mov	rax, r15
	jmp	.label_441
.label_438:
	mov	rdi, rbp
	mov	rsi, r15
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	gmtime_r
.label_439:
	xor	eax, eax
.label_441:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406ab0

	.globl set_tz
	.type set_tz, @function
set_tz:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rdi
	call	getenv_TZ
	mov	rbx, rax
	test	rbx, rbx
	mov	cl, byte ptr [r14 + 8]
	je	.label_445
	test	cl, cl
	je	.label_443
	lea	rdi, [r14 + 9]
	mov	rsi, rbx
	call	strcmp
	mov	ecx, eax
	mov	eax, 1
	test	ecx, ecx
	jne	.label_443
	jmp	.label_442
.label_445:
	mov	eax, 1
	test	cl, cl
	je	.label_442
.label_443:
	mov	rdi, rbx
	call	tzalloc
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_442
	mov	rdi, r14
	call	change_env
	test	al, al
	je	.label_444
	mov	rax, rbx
	jmp	.label_442
.label_444:
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	tzfree
	mov	dword ptr [r14], ebp
	xor	eax, eax
.label_442:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406b30

	.globl save_abbr
	.type save_abbr, @function
save_abbr:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	r12, rdi
	mov	rbx, qword ptr [r15 + 0x30]
	mov	r13b, 1
	test	rbx, rbx
	je	.label_446
	cmp	r15, rbx
	ja	.label_448
	lea	rax, [r15 + 0x38]
	cmp	rbx, rax
	jb	.label_446
.label_448:
	mov	r14d, OFFSET FLAT:.str_0
	cmp	byte ptr [rbx], 0
	je	.label_449
	lea	r14, [r12 + 9]
	jmp	.label_455
.label_447:
	mov	rax, qword ptr [r12]
	lea	r14, [rax + 9]
	test	rax, rax
	cmove	r14, rcx
	cmovne	r12, rax
.label_455:
	lea	r13, [r12 + 9]
	nop	dword ptr [rax]
.label_457:
	mov	rdi, r14
	mov	rsi, rbx
	call	strcmp
	test	eax, eax
	je	.label_450
	cmp	byte ptr [r14], 0
	jne	.label_451
	mov	rbp, r14
	sub	rbp, r13
	jne	.label_453
	cmp	byte ptr [r12 + 8], 0
	je	.label_453
.label_451:
	mov	rdi, r14
	call	strlen
	lea	rcx, [rax + r14 + 1]
	cmp	byte ptr [rax + r14 + 1], 0
	mov	r14, rcx
	jne	.label_457
	jmp	.label_447
.label_450:
	mov	r13b, 1
.label_449:
	mov	qword ptr [r15 + 0x30], r14
.label_446:
	mov	al, r13b
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_453:
	mov	rdi, rbx
	call	strlen
	inc	rax
	mov	rcx, rbp
	not	rcx
	cmp	rax, rcx
	mov	r13b, 1
	jbe	.label_452
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	r13d, r13d
	jmp	.label_446
.label_452:
	add	rbp, rax
	cmp	rbp, 0x76
	ja	.label_454
	mov	rdi, r14
	mov	rsi, rbx
	mov	rdx, rax
	call	extend_abbrs
	jmp	.label_449
.label_454:
	mov	rdi, rbx
	call	tzalloc
	mov	r14, rax
	mov	qword ptr [r12], r14
	test	r14, r14
	je	.label_456
	mov	byte ptr [r14 + 8], 0
	add	r14, 9
	jmp	.label_449
.label_456:
	xor	r13d, r13d
	jmp	.label_446
	nop	
	.section	.text
	.align	32
	#Procedure 0x406c50

	.globl revert_tz
	.type revert_tz, @function
revert_tz:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	bl, 1
	cmp	r14, 1
	je	.label_458
	call	__errno_location
	mov	r15, rax
	mov	ebp, dword ptr [r15]
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406ca0

	.globl mktime_z
	.type mktime_z, @function
mktime_z:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	r15, rsi
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_460
	mov	rdi, rbx
	call	set_tz
	mov	r14, rax
	test	r14, r14
	je	.label_461
	mov	rdi, r15
	call	mktime
	mov	qword ptr [rsp + 0x38], rax
	cmp	rax, -1
	jne	.label_464
	lea	rdi, [rsp + 0x38]
	lea	rsi, [rsp]
	call	localtime_r
	test	rax, rax
	je	.label_463
	lea	rsi, [rsp]
	mov	rdi, r15
	call	equal_tm
	test	eax, eax
	je	.label_463
.label_464:
	mov	rdi, rbx
	mov	rsi, r15
	call	save_abbr
	test	al, al
	jne	.label_463
	mov	qword ptr [rsp + 0x38], -1
.label_463:
	mov	rdi, r14
	call	revert_tz
	test	al, al
	je	.label_461
	mov	rax, qword ptr [rsp + 0x38]
	jmp	.label_462
.label_461:
	mov	rax, -1
.label_462:
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_460:
	mov	rdi, r15
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	jmp	timegm
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406d50

	.globl equal_tm
	.type equal_tm, @function
equal_tm:
	push	rbx
	mov	eax, dword ptr [rsi]
	mov	ecx, dword ptr [rsi + 4]
	xor	eax, dword ptr [rdi]
	xor	ecx, dword ptr [rdi + 4]
	or	ecx, eax
	mov	eax, dword ptr [rsi + 8]
	xor	eax, dword ptr [rdi + 8]
	mov	edx, dword ptr [rsi + 0xc]
	xor	edx, dword ptr [rdi + 0xc]
	or	edx, eax
	or	edx, ecx
	mov	eax, dword ptr [rsi + 0x10]
	xor	eax, dword ptr [rdi + 0x10]
	mov	ebx, dword ptr [rsi + 0x14]
	xor	ebx, dword ptr [rdi + 0x14]
	or	ebx, eax
	or	ebx, edx
	mov	edi, dword ptr [rdi + 0x20]
	mov	esi, dword ptr [rsi + 0x20]
	call	isdst_differ
	movzx	eax, al
	or	eax, ebx
	sete	al
	movzx	eax, al
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406da0

	.globl getenv_TZ
	.type getenv_TZ, @function
getenv_TZ:
	mov	edi, OFFSET FLAT:.str_7
	jmp	getenv
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406db0

	.globl change_env
	.type change_env, @function
change_env:
	cmp	byte ptr [rdi + 8], 0
	je	.label_465
	add	rdi, 9
	jmp	.label_467
.label_465:
	xor	edi, edi
.label_467:
	push	rax
	call	setenv_TZ
	test	eax, eax
	je	.label_466
	xor	eax, eax
	pop	rcx
	ret	
.label_466:
	call	tzset
	mov	al, 1
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406de0

	.globl setenv_TZ
	.type setenv_TZ, @function
setenv_TZ:
	mov	rax, rdi
	mov	edi, OFFSET FLAT:.str_7
	test	rax, rax
	je	.label_468
	mov	edx, 1
	mov	rsi, rax
	jmp	setenv
.label_468:
	jmp	unsetenv
	nop	
	.section	.text
	.align	32
	#Procedure 0x406e00

	.globl isdst_differ
	.type isdst_differ, @function
isdst_differ:
	test	edi, edi
	sete	al
	test	esi, esi
	sete	cl
	xor	cl, al
	or	esi, edi
	setns	al
	and	al, cl
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x406e20
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
	#Procedure 0x406e50
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
	#Procedure 0x406e70
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406e80
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
	#Procedure 0x406e90
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
	#Procedure 0x406eb0
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
	#Procedure 0x406ec0
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
	#Procedure 0x406ed0
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
	#Procedure 0x406ee0
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
	#Procedure 0x406ef0
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
	#Procedure 0x406f20
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
	#Procedure 0x406f40

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
	#Procedure 0x406f50
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
	#Procedure 0x406f70
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
	#Procedure 0x406f80
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
	#Procedure 0x406f90

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
	je	.label_479
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_478
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_478
.label_479:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_478
	test	cl, cl
	jne	.label_478
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_478:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407000

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_481
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_482
	cmp	byte ptr [rax + 1], 0
	je	.label_480
.label_482:
	mov	esi, OFFSET FLAT:.str.1_5
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_481
.label_480:
	xor	ebx, ebx
.label_481:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x407040

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
	je	.label_483
	mov	rax, rcx
.label_483:
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section .text
	.align	32
	#Procedure 0x407070

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	jmp	nl_langinfo
	nop	word ptr [rax + rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]