	.section	.text
	.align	16
	#Procedure 0x401b90

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
	mov	esi, OFFSET FLAT:label_16
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_10
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_11
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_13
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_17
	mov	ecx, OFFSET FLAT:label_18
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_15
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_12
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_14:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_9
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
	.align	16
	#Procedure 0x401cc0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_19
	nop	
.label_32:
	mov	edi, OFFSET FLAT:label_23
	call	strcmp
	test	eax, eax
	je	.label_30
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_32
.label_30:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_23
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_24
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_21
	mov	ecx, OFFSET FLAT:label_22
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_20
	mov	esi, OFFSET FLAT:label_28
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_20
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_29
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_20:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_25
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_23
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_22
	mov	ecx, OFFSET FLAT:label_23
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_31
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_26
	mov	ecx, OFFSET FLAT:label_27
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
	.align	16
	#Procedure 0x401de0

	.globl main
	.type main, @function
main:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_27
	call	setlocale
	mov	edi, OFFSET FLAT:label_38
	mov	esi, OFFSET FLAT:label_41
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_38
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	r8,  qword ptr [word ptr [rip + Version]]
	sub	rsp, 8
	mov	edx, OFFSET FLAT:label_23
	mov	ecx, OFFSET FLAT:label_21
	mov	r9d, 1
	mov	eax, 0
	mov	edi, ebp
	mov	rsi, rbx
	push	0
	push	OFFSET FLAT:label_33
	push	OFFSET FLAT:label_34
	push	OFFSET FLAT:label_35
	push	OFFSET FLAT:usage
	call	parse_gnu_standard_options_only
	add	rsp, 0x30
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	sub	ebp, eax
	cmp	ebp, 1
	je	.label_37
	test	ebp, ebp
	jne	.label_39
	mov	edi, OFFSET FLAT:label_17
	mov	esi, 1
	jmp	.label_36
.label_37:
	mov	rdi, qword ptr [rbx + rax*8]
	xor	esi, esi
.label_36:
	call	uptime
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_39:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_40
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ee0

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
	jne	.label_43
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 8]
	call	print_uptime
	add	rsp, 0x18
	pop	rbx
	pop	rbp
	ret	
.label_43:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_42
	xor	eax, eax
	mov	esi, ebp
	call	error
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f50

	.globl print_uptime
	.type print_uptime, @function
print_uptime:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x2028
	mov	rbx, rsi
	mov	r15, rdi
	mov	edi, OFFSET FLAT:label_63
	mov	esi, OFFSET FLAT:label_64
	call	fopen
	mov	rbp, rax
	xor	r14d, r14d
	test	rbp, rbp
	je	.label_72
	lea	r14, [rsp + 0x20]
	mov	esi, 0x2000
	mov	rdi, r14
	mov	rdx, rbp
	call	fgets_unlocked
	xor	r12d, r12d
	cmp	rax, r14
	jne	.label_46
	lea	rsi, [rsp + 8]
	mov	rdi, r14
	call	c_strtod
	xor	r12d, r12d
	cmp	r14, qword ptr [rsp + 8]
	je	.label_46
	movsd	xmm1,  qword ptr [word ptr [rip + label_54]]
	ucomisd	xmm1, xmm0
	cvttsd2si	r12, xmm0
	mov	rax, -1
	cmovbe	r12, rax
	xorpd	xmm1, xmm1
	ucomisd	xmm0, xmm1
	cmovb	r12, rax
.label_46:
	mov	rdi, rbp
	call	rpl_fclose
	mov	r14, r12
.label_72:
	xor	ebp, ebp
	test	r15, r15
	mov	r13d, 0
	je	.label_69
	xor	r13d, r13d
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_53:
	cmp	byte ptr [rbx + 0x2c], 0
	mov	eax, 0
	je	.label_44
	movzx	ecx, word ptr [rbx]
	xor	eax, eax
	cmp	ecx, 7
	sete	al
.label_44:
	dec	r15
	movzx	ecx, word ptr [rbx]
	cmp	ecx, 2
	jne	.label_48
	movsxd	rbp, dword ptr [rbx + 0x154]
.label_48:
	add	r13, rax
	add	rbx, 0x180
	test	r15, r15
	jne	.label_53
.label_69:
	xor	edi, edi
	call	time
	mov	qword ptr [rsp + 8], rax
	test	r14, r14
	jne	.label_59
	test	rbp, rbp
	je	.label_62
	sub	rax, rbp
	mov	r14, rax
.label_59:
	movabs	rcx, 0x1845c8a0ce512957
	mov	rax, r14
	imul	rcx
	mov	r12, rdx
	mov	rax, r12
	shr	rax, 0x3f
	sar	r12, 0xd
	add	r12, rax
	imul	rbp, r12, -0x15180
	mov	qword ptr [rsp + 0x18], r14
	add	rbp, r14
	movabs	rcx, 0x48d159e26af37c05
	mov	rax, rbp
	imul	rcx
	mov	r15, rdx
	mov	rax, r15
	shr	rax, 0x3f
	sar	r15, 0xa
	add	r15, rax
	movabs	rax, 0xe1000000000
	imul	rax, r15
	sar	rax, 0x20
	sub	rbp, rax
	movabs	rcx, 0x8888888888888889
	mov	rax, rbp
	imul	rcx
	mov	rbx, rdx
	lea	rdi, [rsp + 8]
	call	localtime
	mov	r14, rax
	test	r14, r14
	je	.label_65
	mov	rax,  qword ptr [word ptr [rip + stdout]]
	mov	qword ptr [rsp + 0x10], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_66
	mov	edx, 5
	call	dcgettext
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, rax
	mov	rdx, r14
	call	fprintftime
	jmp	.label_47
.label_65:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_52
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
.label_47:
	mov	rcx, qword ptr [rsp + 0x18]
	cmp	rcx, -1
	je	.label_56
	add	rbx, rbp
	mov	rax, rbx
	shr	rax, 0x3f
	shr	rbx, 5
	add	ebx, eax
	cmp	rcx, 0x15180
	jl	.label_61
	mov	rdi, r12
	call	select_plural
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_67
	mov	edx, OFFSET FLAT:label_68
	mov	r8d, 5
	mov	rcx, rax
	call	dcngettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rdx, r12
	mov	ecx, r15d
	mov	r8d, ebx
	call	__printf_chk
	jmp	.label_49
.label_56:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_51
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	jmp	.label_49
.label_61:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_60
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	edx, r15d
	mov	ecx, ebx
	call	__printf_chk
.label_49:
	mov	rdi, r13
	call	select_plural
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_70
	mov	edx, OFFSET FLAT:label_71
	mov	r8d, 5
	mov	rcx, rax
	call	dcngettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rdx, r13
	call	__printf_chk
	lea	rdi, [rsp + 0x20]
	mov	esi, 3
	call	getloadavg
	mov	ebx, eax
	cmp	ebx, -1
	je	.label_50
	test	ebx, ebx
	jle	.label_55
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_57
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	movsd	xmm0, qword ptr [rsp + 0x20]
	mov	edi, 1
	mov	al, 1
	mov	rsi, rcx
	call	__printf_chk
	cmp	ebx, 1
	je	.label_50
	movsd	xmm0, qword ptr [rsp + 0x28]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_45
	mov	al, 1
	call	__printf_chk
	cmp	ebx, 3
	jl	.label_50
	movsd	xmm0, qword ptr [rsp + 0x30]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_45
	mov	al, 1
	call	__printf_chk
.label_50:
	mov	edi, 0xa
	call	putchar_unlocked
.label_55:
	add	rsp, 0x2028
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_62:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_58
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4022f0

	.globl select_plural
	.type select_plural, @function
select_plural:
	mov	rax, rdi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402300

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
	je	.label_74
	mov	rdi, r14
	mov	rsi, rbx
	mov	rdx, rax
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	strtod_l
.label_74:
	test	rbx, rbx
	je	.label_73
	mov	qword ptr [rbx], r14
.label_73:
	xorps	xmm0, xmm0
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402340

	.globl c_locale
	.type c_locale, @function
c_locale:
	cmp	qword ptr [word ptr [rip + c_locale_cache]],  0
	jne	.label_75
	push	rax
	mov	edi, 0x1fbf
	mov	esi, OFFSET FLAT:label_76
	xor	edx, edx
	call	newlocale
	mov	qword ptr [word ptr [rip + c_locale_cache]],  rax
	add	rsp, 8
.label_75:
	mov	rax,  qword ptr [word ptr [rip + c_locale_cache]]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x402370
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402380
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402390

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_77
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_79
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_79
.label_77:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_78
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_79:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_81
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_80
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_42
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_78:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_80:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_82
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
	#Procedure 0x402450

	.globl fprintftime
	.type fprintftime, @function
fprintftime:
	push	rax
	mov	eax, r8d
	mov	r10, rcx
	mov	ecx, 0
	mov	r8d, 0
	mov	r9d, 0xffffffff
	push	rax
	push	r10
	call	__strftime_internal
	add	rsp, 0x10
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402480

	.globl __strftime_internal
	.type __strftime_internal, @function
__strftime_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x498
	mov	ebp, r9d
	mov	dword ptr [rsp + 0x68], r8d
	mov	dword ptr [rsp + 0x6c], ecx
	mov	r13, rsi
	mov	r12, rdi
	mov	eax, dword ptr [rdx + 8]
	mov	qword ptr [rsp + 0x18], rdx
	mov	rcx, qword ptr [rdx + 0x30]
	test	rcx, rcx
	mov	edx, OFFSET FLAT:label_27
	cmovne	rdx, rcx
	mov	qword ptr [rsp + 0x50], rdx
	lea	ecx, [rax - 0xc]
	test	eax, eax
	mov	edx, 0xc
	cmovne	edx, eax
	cmp	eax, 0xc
	cmovg	edx, ecx
	mov	dword ptr [rsp + 0x5c], edx
	cmp	byte ptr [r13], 0
	mov	eax, 0
	je	.label_116
	movabs	r8, 0x100000000
	xor	r9d, r9d
	mov	qword ptr [rsp + 0x40], rax
	mov	dword ptr [rsp + 0x24], eax
	mov	qword ptr [rsp], r12
	jmp	.label_134
.label_89:
	test	rbp, rbp
	je	.label_91
.label_146:
	mov	edi, 0x20
	mov	rsi, r12
	call	fputc
	dec	rbp
	jne	.label_146
.label_91:
	movsx	edi, byte ptr [r13]
	mov	rsi, r12
	call	fputc
	movabs	r8, 0x100000000
	mov	r9, r15
.label_254:
	add	r9, rbx
	jmp	.label_154
.label_201:
	mov	qword ptr [rsp + 0x40], rbx
	mov	esi, 3
	jmp	.label_150
	nop	dword ptr [rax + rax]
.label_134:
	cmp	byte ptr [r13], 0x25
	jne	.label_250
	xor	eax, eax
	mov	ecx, dword ptr [rsp + 0x6c]
	mov	bl, cl
	xor	r14d, r14d
.label_661:
	mov	r15d, eax
	mov	eax, ebx
	jmp	.label_158
	nop	dword ptr [rax]
.label_170:
	movsx	r14d, byte ptr [r13]
.label_158:
	inc	r13
	movsx	ecx, byte ptr [r13]
	mov	al, 1
	lea	edx, [rcx - 0x23]
	cmp	edx, 0xd
	ja	.label_127
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_165]]
	nop	
.label_127:
	cmp	ecx, 0x5f
	je	.label_170
	cmp	ecx, 0x5e
	jne	.label_172
	mov	bl, al
	jmp	.label_158
	nop	word ptr cs:[rax + rax]
.label_250:
	test	ebp, ebp
	mov	eax, ebp
	mov	ecx, 0
	cmovs	eax, ecx
	movsxd	rbx, eax
	cmp	ebx, 1
	mov	ecx, 1
	cmovbe	rbx, rcx
	mov	rdx, r9
	not	rdx
	mov	ecx, 1
	cmp	rbx, rdx
	jae	.label_249
	test	r12, r12
	je	.label_179
	mov	r14, r9
	cmp	eax, 2
	jb	.label_231
	movsxd	rbp, ebp
	jmp	.label_182
	nop	dword ptr [rax]
.label_185:
	mov	edi, 0x20
	mov	rsi, r12
	call	fputc
.label_182:
	dec	rbp
	jne	.label_185
.label_231:
	movsx	edi, byte ptr [r13]
	mov	rsi, r12
	call	fputc
	movabs	r8, 0x100000000
	mov	r9, r14
.label_179:
	add	r9, rbx
	xor	ecx, ecx
.label_249:
	test	ecx, ecx
	mov	eax, 4
	cmove	ecx, eax
.label_216:
	or	ecx, 4
	cmp	ecx, 4
	mov	eax, 0
	je	.label_154
	jmp	.label_116
	nop	word ptr cs:[rax + rax]
.label_172:
	add	ecx, -0x30
	cmp	ecx, 9
	ja	.label_193
	xor	eax, eax
	nop	word ptr [rax + rax]
.label_200:
	mov	ebp, 0x7fffffff
	cmp	eax, 0xccccccc
	jg	.label_195
	jne	.label_196
	movsx	ecx, byte ptr [r13]
	add	ecx, -0x30
	cmp	ecx, 7
	jg	.label_195
.label_196:
	lea	eax, [rax + rax*4]
	movsx	ecx, byte ptr [r13]
	lea	ebp, [rcx + rax*2 - 0x30]
.label_195:
	movsx	eax, byte ptr [r13 + 1]
	inc	r13
	add	eax, -0x30
	cmp	eax, 0xa
	mov	eax, ebp
	jb	.label_200
.label_193:
	movsx	eax, byte ptr [r13]
	cmp	eax, 0x4f
	je	.label_203
	xor	r10d, r10d
	cmp	eax, 0x45
	jne	.label_204
.label_203:
	movsx	r10d, byte ptr [r13]
	inc	r13
.label_204:
	movsx	edx, byte ptr [r13]
	mov	esi, OFFSET FLAT:label_208
	xor	r11d, r11d
	cmp	edx, 0x7a
	ja	.label_105
	mov	al, 0x72
	mov	r12d, 0xffffffff
	xor	edi, edi
	xor	ecx, ecx
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_213]]
.label_673:
	cmp	r10d, 0x45
	je	.label_105
	mov	qword ptr [rsp + 0x28], rdx
	mov	dword ptr [rsp + 0x30], r10d
	mov	qword ptr [rsp + 0x38], rbx
	mov	qword ptr [rsp + 8], r9
	mov	rdx, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rdx + 0x14]
	mov	esi, dword ptr [rdx + 0x18]
	mov	ecx, eax
	sar	ecx, 0x1f
	and	ecx, 0x190
	lea	r12d, [rax + rcx - 0x64]
	mov	r15d, dword ptr [rdx + 0x1c]
	mov	edi, r15d
	call	iso_week_days
	mov	ebx, eax
	test	ebx, ebx
	js	.label_225
	mov	eax, 0x16d
	test	r12b, 3
	jne	.label_227
	movsxd	rax, r12d
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
	xor	edx, edx
	cmp	r12d, eax
	sete	dl
	add	edx, 0x16d
	cmp	r12d, ecx
	mov	eax, 0x16e
	cmove	eax, edx
.label_227:
	sub	r15d, eax
	mov	rax, qword ptr [rsp + 0x18]
	mov	esi, dword ptr [rax + 0x18]
	mov	edi, r15d
	call	iso_week_days
	mov	ecx, eax
	shr	ecx, 0x1f
	xor	ecx, 1
	test	eax, eax
	cmovns	ebx, eax
	jmp	.label_239
.label_687:
	test	r15b, r15b
	je	.label_174
	mov	bl, 1
.label_174:
	xor	edi, edi
	cmp	r10d, 0x45
	jne	.label_242
	xor	r11d, r11d
	jmp	.label_105
.label_665:
	dec	r13
	jmp	.label_105
.label_666:
	test	r10d, r10d
	jne	.label_105
	xor	eax, eax
	test	ebp, ebp
	cmovns	eax, ebp
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, r9
	not	rcx
	cmp	rbx, rcx
	jae	.label_95
	mov	r12, qword ptr [rsp]
	test	r12, r12
	je	.label_254
	mov	r15, r9
	cmp	eax, 2
	jb	.label_91
	movsxd	rbp, ebp
	dec	rbp
	cmp	r14d, 0x30
	je	.label_93
	cmp	r14d, 0x2b
	jne	.label_89
.label_93:
	test	rbp, rbp
	je	.label_91
.label_94:
	mov	edi, 0x30
	mov	rsi, r12
	call	fputc
	dec	rbp
	jne	.label_94
	jmp	.label_91
.label_667:
	mov	eax, 1
	jmp	.label_98
	nop	word ptr cs:[rax + rax]
.label_103:
	inc	rax
.label_98:
	movzx	ecx, byte ptr [r13 + rax]
	cmp	cl, 0x3a
	je	.label_103
	cmp	cl, 0x7a
	jne	.label_105
	add	r13, rax
	mov	r11, rax
.label_704:
	mov	rax, qword ptr [rsp + 0x18]
	cmp	dword ptr [rax + 0x20], 0
	js	.label_83
	mov	rsi, r11
	mov	eax, dword ptr [rax + 0x28]
	mov	r11b, 1
	test	eax, eax
	mov	r12, qword ptr [rsp]
	js	.label_113
	test	eax, eax
	je	.label_120
	xor	r11d, r11d
	jmp	.label_113
.label_668:
	test	r10d, r10d
	jne	.label_105
	test	r15b, r15b
	je	.label_125
	mov	bl, 1
.label_125:
	xor	edi, edi
	mov	al, 0x41
	jmp	.label_108
.label_669:
	cmp	r10d, 0x45
	je	.label_105
	test	r15b, r15b
	je	.label_129
	mov	bl, 1
.label_129:
	xor	edi, edi
	mov	al, 0x42
	jmp	.label_108
.label_670:
	cmp	r10d, 0x45
	jne	.label_133
	xor	edi, edi
	mov	al, 0x43
	jmp	.label_108
.label_671:
	mov	esi, OFFSET FLAT:label_159
	test	r10d, r10d
	jne	.label_105
	jmp	.label_137
.label_672:
	test	r10d, r10d
	jne	.label_105
	mov	esi, OFFSET FLAT:label_210
	test	r14d, r14d
	jne	.label_145
	test	ebp, ebp
	jns	.label_145
	mov	r14d, 0x2b
	mov	r12d, 4
	jmp	.label_137
.label_674:
	cmp	r10d, 0x45
	je	.label_105
	mov	rax, qword ptr [rsp + 0x18]
	mov	esi, dword ptr [rax + 8]
	jmp	.label_149
.label_675:
	mov	ecx, 2
	cmp	r10d, 0x45
	je	.label_105
	mov	eax, dword ptr [rsp + 0x5c]
	mov	esi, eax
	jmp	.label_121
.label_676:
	cmp	r10d, 0x45
	je	.label_105
	mov	rax, qword ptr [rsp + 0x18]
	mov	esi, dword ptr [rax + 4]
	jmp	.label_149
.label_677:
	cmp	r10d, 0x45
	je	.label_105
	mov	ecx, 9
	cmp	ebp, -1
	je	.label_163
	cmp	ebp, 8
	jg	.label_166
	mov	eax, 9
	mov	ecx, dword ptr [rsp + 0x4d8]
	mov	esi, ecx
	nop	word ptr cs:[rax + rax]
.label_255:
	movsxd	rcx, esi
	imul	rsi, rcx, 0x66666667
	mov	rcx, rsi
	shr	rcx, 0x3f
	sar	rsi, 0x22
	add	esi, ecx
	dec	eax
	cmp	ebp, eax
	jne	.label_255
	jmp	.label_178
.label_678:
	mov	cl, 1
.label_696:
	xor	r11d, r11d
	test	r15b, r15b
	je	.label_220
	mov	ebx, 0
.label_220:
	je	.label_181
	mov	cl, 1
.label_181:
	mov	al, 0x70
	mov	dil, cl
	jmp	.label_114
.label_679:
	cmp	r10d, 0x45
	je	.label_105
	mov	rax, qword ptr [rsp + 0x18]
	mov	esi, dword ptr [rax]
	jmp	.label_149
.label_680:
	mov	esi, OFFSET FLAT:label_186
.label_137:
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x38], rbx
	test	bl, bl
	setne	cl
	xor	ebx, ebx
	xor	edi, edi
	mov	qword ptr [rsp + 0x10], rsi
	mov	rdx, qword ptr [rsp + 0x18]
	mov	r8d, r14d
	mov	qword ptr [rsp + 8], r9
	mov	r9d, r12d
	mov	eax, dword ptr [rsp + 0x4d8]
	push	rax
	push	qword ptr [rsp + 0x4d8]
	call	__strftime_internal
	mov	r9, qword ptr [rsp + 0x18]
	movabs	r8, 0x100000000
	add	rsp, 0x10
	test	ebp, ebp
	cmovns	ebx, ebp
	movsxd	rcx, ebx
	cmp	rax, rcx
	mov	r15, rax
	cmovb	r15, rcx
	mov	rdx, r9
	not	rdx
	cmp	r15, rdx
	jae	.label_95
	cmp	qword ptr [rsp], 0
	je	.label_197
	cmp	rax, rcx
	mov	rbx, qword ptr [rsp]
	jae	.label_135
	movsxd	rbp, ebp
	sub	rbp, rax
	cmp	r14d, 0x30
	je	.label_202
	cmp	r14d, 0x2b
	jne	.label_241
.label_202:
	test	rbp, rbp
	mov	rbx, qword ptr [rsp]
	je	.label_135
	nop	word ptr cs:[rax + rax]
.label_214:
	mov	edi, 0x30
	mov	rsi, rbx
	call	fputc
	dec	rbp
	jne	.label_214
	jmp	.label_135
.label_681:
	cmp	r10d, 0x45
	je	.label_105
	mov	rcx, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rcx + 0x1c]
	add	eax, 7
	sub	eax, dword ptr [rcx + 0x18]
	movsxd	rsi, eax
	jmp	.label_217
.label_682:
	cmp	r10d, 0x45
	je	.label_105
	mov	rcx, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rcx + 0x18]
	mov	ecx, dword ptr [rcx + 0x1c]
	mov	rdi, rdx
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
	mov	rdx, rdi
	movsxd	rsi, ecx
.label_217:
	imul	rax, rsi, -0x6db6db6d
	shr	rax, 0x20
	add	esi, eax
	mov	eax, esi
	shr	eax, 0x1f
	sar	esi, 2
	add	esi, eax
	jmp	.label_149
.label_683:
	xor	r11d, r11d
	cmp	r10d, 0x4f
	je	.label_105
	mov	al, 0x58
	xor	edi, edi
	jmp	.label_114
.label_684:
	xor	r11d, r11d
	cmp	r10d, 0x45
	je	.label_234
	cmp	r10d, 0x4f
	je	.label_105
	mov	qword ptr [rsp + 0x28], rdx
	mov	dword ptr [rsp + 0x30], r10d
	mov	rax, qword ptr [rsp + 0x18]
	mov	edi, dword ptr [rax + 0x14]
	cmp	edi, 0xfffff894
	setl	r11b
	add	edi, 0x76c
	mov	eax, 4
	jmp	.label_238
.label_685:
	mov	qword ptr [rsp + 0x38], rbx
	mov	rdi, qword ptr [rsp + 0x50]
	mov	qword ptr [rsp + 8], r9
	call	strlen
	mov	r9, qword ptr [rsp + 8]
	movabs	r8, 0x100000000
	xor	ecx, ecx
	test	ebp, ebp
	cmovns	ecx, ebp
	movsxd	rdx, ecx
	cmp	rax, rdx
	mov	r12, rax
	cmovb	r12, rdx
	mov	rcx, r9
	not	rcx
	cmp	r12, rcx
	jae	.label_95
	cmp	qword ptr [rsp], 0
	je	.label_139
	mov	qword ptr [rsp + 0x10], rax
	cmp	rax, rdx
	jae	.label_85
	movsxd	rbp, ebp
	sub	rbp, qword ptr [rsp + 0x10]
	cmp	r14d, 0x30
	je	.label_90
	cmp	r14d, 0x2b
	jne	.label_92
.label_90:
	test	rbp, rbp
	mov	rbx, qword ptr [rsp]
	je	.label_85
	nop	word ptr [rax + rax]
.label_101:
	mov	edi, 0x30
	mov	rsi, rbx
	call	fputc
	dec	rbp
	jne	.label_101
	jmp	.label_85
.label_686:
	test	r10d, r10d
	jne	.label_105
	test	r15b, r15b
	je	.label_107
	mov	bl, 1
.label_107:
	xor	edi, edi
	mov	al, 0x61
	jmp	.label_108
.label_688:
	xor	r11d, r11d
	cmp	r10d, 0x4f
	je	.label_105
	mov	al, 0x63
	xor	edi, edi
	jmp	.label_114
.label_689:
	cmp	r10d, 0x45
	je	.label_105
	mov	rax, qword ptr [rsp + 0x18]
	mov	esi, dword ptr [rax + 0xc]
.label_149:
	mov	ecx, 2
	jmp	.label_121
.label_690:
	cmp	r10d, 0x45
	je	.label_105
	mov	rax, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rax + 0xc]
	jmp	.label_115
.label_691:
	cmp	r10d, 0x45
	je	.label_105
	mov	rax, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rax + 0x1c]
	cmp	eax, -1
	setl	r11b
	inc	eax
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 3
	jmp	.label_128
.label_692:
	cmp	r10d, 0x45
	je	.label_105
	mov	rax, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rax + 8]
	jmp	.label_115
.label_693:
	cmp	r10d, 0x45
	mov	eax, dword ptr [rsp + 0x5c]
	je	.label_105
.label_115:
	test	r14d, r14d
	mov	ecx, 0x5f
	cmove	r14d, ecx
	mov	ecx, 2
	mov	esi, eax
	jmp	.label_121
.label_694:
	cmp	r10d, 0x45
	je	.label_105
	mov	rax, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rax + 0x10]
	cmp	eax, -1
	setl	r11b
	inc	eax
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 2
.label_128:
	mov	qword ptr [rsp + 0x10], rax
	mov	dword ptr [rsp + 0x24], 0
	xor	eax, eax
	jmp	.label_117
.label_695:
	xor	eax, eax
	test	ebp, ebp
	cmovns	eax, ebp
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, r9
	not	rcx
	cmp	rbx, rcx
	jae	.label_95
	mov	r12, qword ptr [rsp]
	test	r12, r12
	je	.label_162
	mov	r15, r9
	cmp	eax, 2
	jb	.label_164
	movsxd	rbp, ebp
	dec	rbp
	cmp	r14d, 0x30
	je	.label_168
	cmp	r14d, 0x2b
	jne	.label_173
.label_168:
	test	rbp, rbp
	je	.label_164
	nop	dword ptr [rax]
.label_176:
	mov	edi, 0x30
	mov	rsi, r12
	call	fputc
	dec	rbp
	jne	.label_176
	jmp	.label_164
.label_697:
	mov	rax, qword ptr [rsp + 0x18]
	imul	eax, dword ptr [rax + 0x10], 0xb
	sar	eax, 5
	inc	eax
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x10], rax
	mov	dword ptr [rsp + 0x24], 0
	xor	eax, eax
	xor	r11d, r11d
	jmp	.label_117
.label_698:
	mov	qword ptr [rsp + 0x38], rbx
	mov	r12, r9
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0xc0], rax
	movups	xmm0, xmmword ptr [rcx]
	movups	xmm1, xmmword ptr [rcx + 0x10]
	movups	xmm2, xmmword ptr [rcx + 0x20]
	movaps	xmmword ptr [rsp + 0xb0], xmm2
	movaps	xmmword ptr [rsp + 0xa0], xmm1
	movaps	xmmword ptr [rsp + 0x90], xmm0
	lea	rsi, [rsp + 0x90]
	mov	rdi, qword ptr [rsp + 0x4d0]
	call	mktime_z
	mov	rcx, rax
	mov	r11, rcx
	shr	r11, 0x3f
	lea	r15, [rsp + 0x87]
	nop	dword ptr [rax]
.label_192:
	movabs	rdx, 0x6666666666666667
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + rax]
	add	edi, edi
	lea	edi, [rdi + rdi*4]
	mov	ebx, ecx
	sub	ebx, edi
	add	rdx, rax
	mov	eax, ebx
	neg	eax
	test	r11, r11
	cmove	eax, ebx
	add	eax, 0x30
	mov	byte ptr [r15 - 1], al
	dec	r15
	add	rcx, 9
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_192
	mov	eax, 1
	mov	qword ptr [rsp + 0x10], rax
	xor	eax, eax
	movabs	r8, 0x100000000
	mov	r9, r12
	mov	rbx, qword ptr [rsp + 0x40]
	mov	esi, dword ptr [rsp + 0x24]
	jmp	.label_206
.label_699:
	xor	eax, eax
	test	ebp, ebp
	cmovns	eax, ebp
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, r9
	not	rcx
	cmp	rbx, rcx
	jae	.label_95
	mov	r12, qword ptr [rsp]
	test	r12, r12
	je	.label_219
	mov	r15, r9
	cmp	eax, 2
	jb	.label_187
	movsxd	rbp, ebp
	dec	rbp
	cmp	r14d, 0x30
	je	.label_222
	cmp	r14d, 0x2b
	jne	.label_224
.label_222:
	test	rbp, rbp
	je	.label_187
	nop	
.label_229:
	mov	edi, 0x30
	mov	rsi, r12
	call	fputc
	dec	rbp
	jne	.label_229
	jmp	.label_187
.label_700:
	mov	rax, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rax + 0x18]
	lea	ecx, [rax + 6]
	movsxd	rsi, ecx
	imul	rcx, rsi, -0x6db6db6d
	shr	rcx, 0x20
	lea	eax, [rcx + rax + 6]
	mov	ecx, eax
	shr	ecx, 0x1f
	sar	eax, 2
	add	eax, ecx
	lea	ecx, [rax*8]
	sub	ecx, eax
	sub	esi, ecx
	inc	esi
	mov	ecx, 1
	jmp	.label_121
.label_701:
	cmp	r10d, 0x45
	je	.label_105
	mov	rax, qword ptr [rsp + 0x18]
	mov	esi, dword ptr [rax + 0x18]
	mov	ecx, 1
	jmp	.label_121
.label_702:
	xor	r11d, r11d
	cmp	r10d, 0x4f
	je	.label_105
	mov	al, 0x78
	xor	edi, edi
	jmp	.label_114
.label_703:
	cmp	r10d, 0x45
	jne	.label_243
	xor	edi, edi
	mov	al, 0x79
	jmp	.label_108
.label_242:
	mov	eax, edx
.label_108:
	xor	r11d, r11d
	jmp	.label_114
.label_225:
	dec	r12d
	mov	edi, 0x16d
	test	r12b, 3
	jne	.label_248
	movsxd	rax, r12d
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
	xor	edx, edx
	cmp	r12d, eax
	sete	dl
	add	edx, 0x16d
	cmp	r12d, ecx
	mov	edi, 0x16e
	cmove	edi, edx
.label_248:
	add	edi, r15d
	mov	rax, qword ptr [rsp + 0x18]
	mov	esi, dword ptr [rax + 0x18]
	call	iso_week_days
	mov	ebx, eax
	mov	ecx, 0xffffffff
.label_239:
	movabs	r8, 0x100000000
	mov	r9, qword ptr [rsp + 8]
	movsx	eax, byte ptr [r13]
	cmp	eax, 0x47
	je	.label_96
	cmp	eax, 0x67
	jne	.label_104
	mov	rax, qword ptr [rsp + 0x18]
	movsxd	rax, dword ptr [rax + 0x14]
	imul	rdx, rax, 0x51eb851f
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x25
	add	edx, esi
	imul	edx, edx, 0x64
	mov	esi, eax
	sub	esi, edx
	add	esi, ecx
	movsxd	rdi, esi
	imul	rdx, rdi, 0x51eb851f
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x25
	add	edx, esi
	imul	edx, edx, 0x64
	sub	edi, edx
	js	.label_106
	mov	eax, 2
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_251
.label_133:
	mov	qword ptr [rsp + 0x28], rdx
	mov	dword ptr [rsp + 0x30], r10d
	mov	rax, qword ptr [rsp + 0x18]
	movsxd	rax, dword ptr [rax + 0x14]
	cmp	rax, -0x76c
	setl	r11b
	setg	cl
	imul	rdi, rax, 0x51eb851f
	mov	rdx, rdi
	shr	rdx, 0x3f
	sar	rdi, 0x25
	add	edi, edx
	imul	edx, edi, 0x64
	cmp	eax, edx
	sets	al
	and	al, cl
	movzx	eax, al
	sub	edi, eax
	add	edi, 0x13
	mov	eax, 2
.label_238:
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_155
.label_243:
	mov	qword ptr [rsp + 0x28], rdx
	mov	dword ptr [rsp + 0x30], r10d
	mov	rax, qword ptr [rsp + 0x18]
	movsxd	rax, dword ptr [rax + 0x14]
	imul	rcx, rax, 0x51eb851f
	mov	rdx, rcx
	shr	rdx, 0x3f
	sar	rcx, 0x25
	add	ecx, edx
	imul	ecx, ecx, 0x64
	mov	edi, eax
	sub	edi, ecx
	js	.label_140
	mov	eax, 2
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_152
.label_96:
	mov	rax, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rax + 0x14]
	mov	edx, 0xfffff894
	sub	edx, ecx
	cmp	eax, edx
	setl	r11b
	lea	edi, [rcx + rax + 0x76c]
	mov	eax, 4
	mov	qword ptr [rsp + 0x10], rax
	mov	rbx, qword ptr [rsp + 0x38]
	jmp	.label_155
.label_104:
	movsxd	rax, ebx
	imul	rcx, rax, -0x6db6db6d
	shr	rcx, 0x20
	add	eax, ecx
	mov	ecx, eax
	sar	ecx, 2
	shr	eax, 0x1f
	lea	esi, [rcx + rax + 1]
	mov	ecx, 2
	mov	rbx, qword ptr [rsp + 0x38]
	mov	r10d, dword ptr [rsp + 0x30]
	mov	rdx, qword ptr [rsp + 0x28]
	jmp	.label_121
.label_234:
	mov	al, 0x59
	xor	edi, edi
	jmp	.label_114
.label_241:
	test	rbp, rbp
	mov	rbx, qword ptr [rsp]
	je	.label_135
	nop	word ptr cs:[rax + rax]
.label_180:
	mov	edi, 0x20
	mov	rsi, rbx
	call	fputc
	dec	rbp
	jne	.label_180
.label_135:
	xor	ecx, ecx
	mov	rax, qword ptr [rsp + 0x38]
	test	al, al
	setne	cl
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 0x18]
	mov	r8d, r14d
	mov	r9d, r12d
	mov	eax, dword ptr [rsp + 0x4d8]
	push	rax
	push	qword ptr [rsp + 0x4d8]
	call	__strftime_internal
	add	rsp, 0x10
	jmp	.label_188
.label_120:
	mov	rcx, qword ptr [rsp + 0x50]
	cmp	byte ptr [rcx], 0x2d
	sete	r11b
.label_113:
	cmp	rsi, 3
	mov	qword ptr [rsp + 0x28], rdx
	ja	.label_189
	mov	r15d, r10d
	mov	r10, rbx
	movsxd	rcx, eax
	imul	rdx, rcx, -0x77777777
	shr	rdx, 0x20
	add	edx, eax
	mov	edi, edx
	shr	edi, 0x1f
	sar	edx, 5
	add	edx, edi
	imul	rbx, rcx, -0x6e5d4c3b
	shr	rbx, 0x20
	add	ebx, eax
	mov	ecx, ebx
	shr	ecx, 0x1f
	sar	ebx, 0xb
	add	ebx, ecx
	movsxd	rcx, edx
	imul	rdx, rcx, -0x77777777
	shr	rdx, 0x20
	add	edx, ecx
	mov	edi, edx
	shr	edi, 0x1f
	sar	edx, 5
	add	edx, edi
	imul	edx, edx, 0x3c
	imul	edi, ecx, 0x3c
	sub	ecx, edx
	sub	eax, edi
	jmp	qword ptr [word ptr [+ (rsi * 8) + label_191]]
.label_601:
	imul	ebx, ebx, 0x64
	add	ebx, ecx
	mov	qword ptr [rsp + 0x40], rbx
	mov	esi, 5
.label_150:
	mov	dword ptr [rsp + 0x24], 0
	jmp	.label_205
.label_145:
	xor	eax, eax
	mov	r12d, ebp
	add	r12d, -6
	cmovs	r12d, eax
	mov	esi, OFFSET FLAT:label_210
	jmp	.label_137
.label_163:
	mov	eax, dword ptr [rsp + 0x4d8]
	mov	esi, eax
	mov	ebp, 9
	jmp	.label_121
.label_106:
	mov	edx, 2
	mov	qword ptr [rsp + 0x10], rdx
	mov	edx, 0xfffff894
	sub	edx, ecx
	mov	ecx, edi
	neg	ecx
	add	edi, 0x64
	cmp	eax, edx
	cmovl	edi, ecx
.label_251:
	xor	r11d, r11d
	mov	rbx, qword ptr [rsp + 0x38]
	jmp	.label_155
.label_140:
	mov	ecx, 2
	mov	qword ptr [rsp + 0x10], rcx
	mov	ecx, edi
	neg	ecx
	add	edi, 0x64
	cmp	eax, 0xfffff894
	cmovl	edi, ecx
.label_152:
	xor	r11d, r11d
.label_155:
	test	r14d, r14d
	cmove	r14d, dword ptr [rsp + 0x68]
	mov	dword ptr [rsp + 0x24], 0
	cmp	r14d, 0x2b
	mov	eax, 0
	jne	.label_226
	mov	rdx, qword ptr [rsp + 0x10]
	cmp	edx, 2
	mov	eax, 0x63
	mov	ecx, 0x270f
	cmove	ecx, eax
	cmp	ecx, edi
	setb	cl
	cmp	edx, ebp
	setl	al
	or	al, cl
.label_226:
	mov	qword ptr [rsp + 0x40], rdi
	mov	r10d, dword ptr [rsp + 0x30]
	mov	rdx, qword ptr [rsp + 0x28]
	jmp	.label_117
.label_189:
	xor	esi, esi
	mov	ecx, 0x18
	jmp	.label_233
.label_604:
	test	eax, eax
	je	.label_237
.label_603:
	imul	ebx, ebx, 0x2710
	imul	ecx, ecx, 0x64
	add	ebx, eax
	add	ebx, ecx
	mov	qword ptr [rsp + 0x40], rbx
	mov	esi, 9
	mov	dword ptr [rsp + 0x24], 0x14
	jmp	.label_205
.label_166:
	mov	eax, dword ptr [rsp + 0x4d8]
	mov	esi, eax
.label_178:
	mov	ecx, ebp
.label_121:
	mov	qword ptr [rsp + 0x40], rsi
	mov	r11d, esi
	shr	r11d, 0x1f
	mov	dword ptr [rsp + 0x24], 0
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rcx
.label_117:
	cmp	r10d, 0x4f
	jne	.label_84
	test	r11b, r11b
	jne	.label_84
	xor	edi, edi
	mov	eax, edx
	mov	r11, qword ptr [rsp + 0x10]
.label_114:
	mov	dword ptr [rsp + 0x28], edi
	mov	qword ptr [rsp + 0x10], r11
	mov	qword ptr [rsp + 0x38], rbx
	mov	qword ptr [rsp + 8], r9
	mov	word ptr [rsp + 0x4b], 0x2520
	test	r10d, r10d
	lea	rcx, [rsp + 0x4d]
	je	.label_253
	mov	byte ptr [rsp + 0x4d], r10b
	lea	rcx, [rsp + 0x4e]
.label_253:
	mov	byte ptr [rcx], al
	mov	byte ptr [rcx + 1], 0
	lea	rdi, [rsp + 0x90]
	lea	rdx, [rsp + 0x4b]
	mov	esi, 0x400
	mov	rcx, qword ptr [rsp + 0x18]
	call	strftime
	mov	rbx, rax
	test	rbx, rbx
	mov	r12, qword ptr [rsp]
	je	.label_97
	dec	rbx
	xor	eax, eax
	test	ebp, ebp
	cmovns	eax, ebp
	cdqe	
	cmp	rbx, rax
	mov	r15, rbx
	cmovb	r15, rax
	mov	r9, qword ptr [rsp + 8]
	mov	rcx, r9
	not	rcx
	cmp	r15, rcx
	mov	rcx, qword ptr [rsp + 0x10]
	jae	.label_95
	test	r12, r12
	je	.label_112
	cmp	rbx, rax
	setae	al
	test	ecx, ecx
	jne	.label_118
	test	al, al
	jne	.label_118
	movsxd	rbp, ebp
	sub	rbp, rbx
	cmp	r14d, 0x30
	je	.label_122
	cmp	r14d, 0x2b
	jne	.label_124
.label_122:
	test	rbp, rbp
	je	.label_118
	nop	dword ptr [rax]
.label_131:
	mov	edi, 0x30
	mov	rsi, r12
	call	fputc
	dec	rbp
	jne	.label_131
	jmp	.label_118
.label_84:
	mov	qword ptr [rsp + 0x38], rbx
	mov	rdx, qword ptr [rsp + 0x40]
	mov	ecx, edx
	neg	ecx
	test	r11b, r11b
	cmove	ecx, edx
	lea	r15, [rsp + 0x87]
	mov	esi, dword ptr [rsp + 0x24]
	nop	word ptr [rax + rax]
.label_142:
	test	sil, 1
	je	.label_138
	mov	byte ptr [r15 - 1], 0x3a
	dec	r15
.label_138:
	sar	esi, 1
	mov	edx, ecx
	mov	ebx, 0xcccccccd
	imul	rbx, rdx
	shr	rbx, 0x23
	lea	edx, [rbx + rbx]
	lea	edx, [rdx + rdx*4]
	mov	edi, ecx
	sub	edi, edx
	or	edi, 0x30
	mov	byte ptr [r15 - 1], dil
	dec	r15
	cmp	ecx, 9
	mov	ecx, ebx
	ja	.label_142
	test	esi, esi
	mov	ecx, ebx
	jne	.label_142
.label_206:
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	ecx, ebp
	cmovl	ecx, ebp
	test	al, al
	je	.label_153
	mov	al, 0x2b
.label_153:
	test	r11b, r11b
	mov	dil, 0x2d
	jne	.label_144
	mov	edi, eax
.label_144:
	cmp	r14d, 0x2d
	mov	r10, rcx
	mov	qword ptr [rsp + 0x40], rbx
	mov	dword ptr [rsp + 0x24], esi
	jne	.label_156
	test	dil, dil
	je	.label_161
	xor	eax, eax
	test	ebp, ebp
	cmovns	eax, ebp
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	edx, 1
	cmova	rdx, rcx
	mov	rcx, r9
	not	rcx
	cmp	rdx, rcx
	jae	.label_95
	cmp	qword ptr [rsp], 0
	je	.label_111
	mov	qword ptr [rsp + 0x30], rdx
	mov	byte ptr [rsp + 0x28], dil
	mov	qword ptr [rsp + 8], r9
	cmp	eax, 2
	setb	al
	mov	qword ptr [rsp + 0x10], r10
	test	r10d, r10d
	mov	r12, qword ptr [rsp]
	jne	.label_87
	test	al, al
	jne	.label_87
	movsxd	rbx, ebp
	jmp	.label_177
	nop	word ptr cs:[rax + rax]
.label_235:
	mov	edi, 0x20
	mov	rsi, r12
	call	fputc
.label_177:
	dec	rbx
	jne	.label_235
.label_87:
	movzx	edi, byte ptr [rsp + 0x28]
	mov	rsi, r12
	call	fputc
	movabs	r8, 0x100000000
	mov	r9, qword ptr [rsp + 8]
	mov	r10, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 0x30]
.label_111:
	add	r9, rdx
	jmp	.label_161
.label_97:
	movabs	r8, 0x100000000
	mov	r9, qword ptr [rsp + 8]
	jmp	.label_154
.label_156:
	movsxd	rax, r10d
	mov	rcx, r15
	lea	rdx, [rsp + 0x87]
	sub	rcx, rdx
	mov	edx, edi
	neg	dl
	sbb	rdx, rdx
	add	rdx, rcx
	add	rdx, rax
	test	edx, edx
	jle	.label_190
	cmp	r14d, 0x5f
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x30], rdx
	jne	.label_194
	movsxd	rcx, edx
	mov	rax, r9
	not	rax
	cmp	rcx, rax
	jae	.label_95
	mov	dword ptr [rsp + 0x60], ebp
	mov	byte ptr [rsp + 0x28], dil
	mov	qword ptr [rsp + 8], r9
	mov	rbx, qword ptr [rsp]
	test	rbx, rbx
	je	.label_199
	test	rcx, rcx
	je	.label_199
	xor	r12d, r12d
	nop	
.label_207:
	mov	edi, 0x20
	mov	rsi, rbx
	mov	rbp, rcx
	call	fputc
	mov	rcx, rbp
	inc	r12
	cmp	r12, rcx
	jb	.label_207
.label_199:
	mov	r9, qword ptr [rsp + 8]
	add	r9, rcx
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0x30]
	mov	ebp, dword ptr [rsp + 0x60]
	sub	ebp, ecx
	cmovle	ebp, eax
	cmp	byte ptr [rsp + 0x28], 0
	je	.label_211
	test	ebp, ebp
	cmovns	eax, ebp
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	edx, 1
	cmova	rdx, rcx
	mov	rcx, r9
	not	rcx
	cmp	rdx, rcx
	movabs	r8, 0x100000000
	mov	r10, qword ptr [rsp + 0x10]
	jae	.label_95
	cmp	qword ptr [rsp], 0
	je	.label_111
	mov	qword ptr [rsp + 0x60], rdx
	mov	qword ptr [rsp + 8], r9
	cmp	eax, 2
	setb	al
	test	r10d, r10d
	mov	rsi, qword ptr [rsp]
	jne	.label_215
	test	al, al
	jne	.label_215
	movsxd	rax, ebp
	dec	rax
	cmp	r14d, 0x30
	mov	qword ptr [rsp + 0x30], rax
	je	.label_102
	cmp	r14d, 0x2b
	jne	.label_252
.label_102:
	test	rax, rax
	mov	rsi, qword ptr [rsp]
	je	.label_215
	xor	r12d, r12d
	nop	dword ptr [rax + rax]
.label_236:
	mov	edi, 0x30
	mov	rbx, rsi
	call	fputc
	mov	rsi, rbx
	inc	r12
	cmp	r12, qword ptr [rsp + 0x30]
	jb	.label_236
	jmp	.label_215
.label_190:
	test	dil, dil
	je	.label_161
	xor	eax, eax
	test	ebp, ebp
	cmovns	eax, ebp
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	edx, 1
	cmova	rdx, rcx
	mov	rcx, r9
	not	rcx
	cmp	rdx, rcx
	jae	.label_95
	cmp	qword ptr [rsp], 0
	je	.label_111
	mov	qword ptr [rsp + 0x30], rdx
	mov	byte ptr [rsp + 0x28], dil
	mov	qword ptr [rsp + 8], r9
	cmp	eax, 2
	setb	al
	mov	qword ptr [rsp + 0x10], r10
	test	r10d, r10d
	mov	r12, qword ptr [rsp]
	jne	.label_87
	test	al, al
	jne	.label_87
	movsxd	rbx, ebp
	dec	rbx
	cmp	r14d, 0x30
	je	.label_256
	cmp	r14d, 0x2b
	jne	.label_183
.label_256:
	test	rbx, rbx
	mov	r12, qword ptr [rsp]
	je	.label_87
	nop	word ptr [rax + rax]
.label_221:
	mov	edi, 0x30
	mov	rsi, r12
	call	fputc
	dec	rbx
	jne	.label_221
	jmp	.label_87
.label_194:
	mov	rcx, r9
	not	rcx
	cmp	rax, rcx
	jae	.label_95
	test	dil, dil
	je	.label_100
	xor	eax, eax
	test	ebp, ebp
	cmovns	eax, ebp
	movsxd	rsi, eax
	cmp	esi, 1
	mov	ebx, 1
	cmova	rbx, rsi
	cmp	rbx, rcx
	jae	.label_95
	mov	r12, qword ptr [rsp]
	test	r12, r12
	je	.label_110
	mov	byte ptr [rsp + 0x28], dil
	mov	qword ptr [rsp + 8], r9
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x10]
	test	ecx, ecx
	jne	.label_99
	test	al, al
	jne	.label_99
	movsxd	rbp, ebp
	dec	rbp
	cmp	r14d, 0x30
	je	.label_123
	cmp	r14d, 0x2b
	jne	.label_86
.label_123:
	test	rbp, rbp
	je	.label_99
	nop	
.label_132:
	mov	edi, 0x30
	mov	rsi, r12
	call	fputc
	dec	rbp
	jne	.label_132
	jmp	.label_99
.label_124:
	test	rbp, rbp
	je	.label_118
	nop	dword ptr [rax]
.label_169:
	mov	edi, 0x20
	mov	rsi, r12
	call	fputc
	dec	rbp
	jne	.label_169
.label_118:
	mov	eax, dword ptr [rsp + 0x28]
	test	al, 1
	jne	.label_136
	mov	rax, qword ptr [rsp + 0x38]
	test	al, 1
	jne	.label_223
	mov	edx, 1
	lea	rdi, [rsp + 0x91]
	mov	rsi, rbx
	mov	rcx, r12
	call	fwrite
	jmp	.label_147
.label_136:
	mov	rdi, r12
	lea	rsi, [rsp + 0x91]
	mov	rdx, rbx
	call	fwrite_lowcase
	jmp	.label_147
.label_223:
	mov	rdi, r12
	lea	rsi, [rsp + 0x91]
	mov	rdx, rbx
	call	fwrite_uppcase
.label_147:
	mov	r9, qword ptr [rsp + 8]
.label_112:
	add	r9, r15
	movabs	r8, 0x100000000
	jmp	.label_154
.label_100:
	mov	qword ptr [rsp + 8], r9
	mov	r12, qword ptr [rsp]
	jmp	.label_157
.label_92:
	test	rbp, rbp
	mov	rbx, qword ptr [rsp]
	je	.label_85
	nop	word ptr cs:[rax + rax]
.label_167:
	mov	edi, 0x20
	mov	rsi, rbx
	call	fputc
	dec	rbp
	jne	.label_167
.label_85:
	test	r15b, r15b
	je	.label_171
	mov	rdi, qword ptr [rsp]
	mov	rsi, qword ptr [rsp + 0x50]
	mov	rdx, qword ptr [rsp + 0x10]
	call	fwrite_lowcase
	jmp	.label_151
.label_171:
	mov	rax, qword ptr [rsp + 0x38]
	test	al, al
	je	.label_175
	mov	rdi, qword ptr [rsp]
	mov	rsi, qword ptr [rsp + 0x50]
	mov	rdx, qword ptr [rsp + 0x10]
	call	fwrite_uppcase
	jmp	.label_151
.label_173:
	test	rbp, rbp
	je	.label_164
	nop	dword ptr [rax]
.label_184:
	mov	edi, 0x20
	mov	rsi, r12
	call	fputc
	dec	rbp
	jne	.label_184
.label_164:
	mov	edi, 0xa
	mov	rsi, r12
	call	fputc
	movabs	r8, 0x100000000
	mov	r9, r15
.label_162:
	add	r9, rbx
	jmp	.label_154
.label_224:
	test	rbp, rbp
	je	.label_187
	nop	dword ptr [rax]
.label_143:
	mov	edi, 0x20
	mov	rsi, r12
	call	fputc
	dec	rbp
	jne	.label_143
.label_187:
	mov	edi, 9
	mov	rsi, r12
	call	fputc
	movabs	r8, 0x100000000
	mov	r9, r15
.label_219:
	add	r9, rbx
	jmp	.label_154
.label_183:
	test	rbx, rbx
	mov	r12, qword ptr [rsp]
	je	.label_87
.label_212:
	mov	edi, 0x20
	mov	rsi, r12
	call	fputc
	dec	rbx
	jne	.label_212
	jmp	.label_87
.label_175:
	mov	edx, 1
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rsi, qword ptr [rsp + 0x10]
	jmp	.label_198
.label_237:
	test	ecx, ecx
	je	.label_201
.label_602:
	imul	ebx, ebx, 0x64
	add	ebx, ecx
	mov	qword ptr [rsp + 0x40], rbx
	mov	esi, 6
	mov	dword ptr [rsp + 0x24], 4
.label_205:
	mov	ecx, 0x4b
	mov	rbx, r10
	mov	r10d, r15d
.label_233:
	mov	edx, ecx
	and	dl, 0x7f
	cmp	dl, 0x18
	je	.label_209
	mov	al, 1
	cmp	dl, 0x4b
	mov	qword ptr [rsp + 0x10], rsi
	mov	rdx, qword ptr [rsp + 0x28]
	je	.label_117
	jmp	.label_216
.label_209:
	mov	r11, rsi
.label_105:
	mov	qword ptr [rsp + 0x38], rbx
	xor	r12d, r12d
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_218:
	mov	rax, r12
	add	rbx, r8
	lea	r12, [rax - 1]
	cmp	byte ptr [r13 + rax], 0x25
	jne	.label_218
	mov	rcx, r12
	neg	rcx
	test	ebp, ebp
	mov	edx, ebp
	mov	esi, 0
	cmovs	edx, esi
	cmp	ecx, edx
	mov	esi, edx
	cmova	esi, ecx
	movsxd	r15, esi
	mov	rsi, r9
	not	rsi
	cmp	r15, rsi
	jae	.label_95
	cmp	qword ptr [rsp], 0
	je	.label_197
	mov	qword ptr [rsp + 8], r9
	sar	rbx, 0x20
	test	r11d, r11d
	jne	.label_228
	cmp	ecx, edx
	jae	.label_228
	movsxd	rbp, ebp
	mov	rcx, rbp
	sub	rcx, rbx
	cmp	r14d, 0x30
	je	.label_230
	cmp	r14d, 0x2b
	jne	.label_232
.label_230:
	test	rcx, rcx
	mov	r14, qword ptr [rsp]
	je	.label_228
	mov	ecx, 1
	sub	ecx, eax
	movsxd	rax, ecx
	sub	rbp, rax
	nop	word ptr cs:[rax + rax]
.label_240:
	mov	edi, 0x30
	mov	rsi, r14
	call	fputc
	dec	rbp
	jne	.label_240
	jmp	.label_228
.label_232:
	test	rcx, rcx
	mov	r14, qword ptr [rsp]
	je	.label_228
	mov	ecx, 1
	sub	ecx, eax
	movsxd	rax, ecx
	sub	rbp, rax
	nop	word ptr [rax + rax]
.label_244:
	mov	edi, 0x20
	mov	rsi, r14
	call	fputc
	dec	rbp
	jne	.label_244
.label_228:
	lea	rsi, [r13 + r12 + 1]
	mov	rax, qword ptr [rsp + 0x38]
	test	al, 1
	jne	.label_245
	mov	edx, 1
	mov	rdi, rsi
	mov	rsi, rbx
	mov	rcx, qword ptr [rsp]
	call	fwrite
	jmp	.label_188
.label_245:
	mov	rdi, qword ptr [rsp]
	mov	rdx, rbx
	call	fwrite_uppcase
.label_188:
	movabs	r8, 0x100000000
	mov	r9, qword ptr [rsp + 8]
.label_197:
	add	r9, r15
	jmp	.label_83
.label_252:
	test	rax, rax
	mov	rsi, qword ptr [rsp]
	je	.label_215
	xor	ebx, ebx
.label_130:
	mov	edi, 0x20
	mov	r12, rsi
	call	fputc
	mov	rsi, r12
	inc	rbx
	cmp	rbx, qword ptr [rsp + 0x30]
	jb	.label_130
.label_215:
	movzx	edi, byte ptr [rsp + 0x28]
	call	fputc
	movabs	r8, 0x100000000
	mov	r9, qword ptr [rsp + 8]
	mov	r10, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 0x60]
	jmp	.label_111
.label_86:
	test	rbp, rbp
	je	.label_99
.label_109:
	mov	edi, 0x20
	mov	rsi, r12
	call	fputc
	dec	rbp
	jne	.label_109
.label_99:
	movzx	edi, byte ptr [rsp + 0x28]
	mov	rsi, r12
	call	fputc
	mov	r9, qword ptr [rsp + 8]
.label_110:
	add	r9, rbx
	mov	qword ptr [rsp + 8], r9
.label_157:
	test	r12, r12
	je	.label_119
	mov	rax, qword ptr [rsp + 0x30]
	test	eax, eax
	je	.label_119
	mov	rax, qword ptr [rsp + 0x30]
	movsxd	rbx, eax
	xor	ebp, ebp
	nop	
.label_88:
	mov	edi, 0x30
	mov	rsi, r12
	call	fputc
	inc	rbp
	cmp	rbp, rbx
	jb	.label_88
.label_119:
	mov	rax, qword ptr [rsp + 0x30]
	cdqe	
	mov	r9, qword ptr [rsp + 8]
	add	r9, rax
	xor	ebp, ebp
.label_211:
	movabs	r8, 0x100000000
	mov	r10, qword ptr [rsp + 0x10]
.label_161:
	lea	rbx, [rsp + 0x87]
	sub	rbx, r15
	xor	eax, eax
	test	ebp, ebp
	cmovns	eax, ebp
	cdqe	
	cmp	rbx, rax
	mov	r12, rbx
	cmovb	r12, rax
	mov	rcx, r9
	not	rcx
	cmp	r12, rcx
	jae	.label_95
	cmp	qword ptr [rsp], 0
	je	.label_139
	mov	qword ptr [rsp + 8], r9
	cmp	rbx, rax
	setae	al
	test	r10d, r10d
	jne	.label_141
	test	al, al
	jne	.label_141
	movsxd	rbp, ebp
	sub	rbp, rbx
	cmp	r14d, 0x30
	je	.label_246
	cmp	r14d, 0x2b
	jne	.label_148
.label_246:
	test	rbp, rbp
	mov	r14, qword ptr [rsp]
	je	.label_141
	nop	dword ptr [rax]
.label_247:
	mov	edi, 0x30
	mov	rsi, r14
	call	fputc
	dec	rbp
	jne	.label_247
	jmp	.label_141
.label_148:
	test	rbp, rbp
	mov	r14, qword ptr [rsp]
	je	.label_141
	nop	dword ptr [rax]
.label_160:
	mov	edi, 0x20
	mov	rsi, r14
	call	fputc
	dec	rbp
	jne	.label_160
.label_141:
	mov	rax, qword ptr [rsp + 0x38]
	test	al, al
	je	.label_126
	mov	rdi, qword ptr [rsp]
	mov	rsi, r15
	mov	rdx, rbx
	call	fwrite_uppcase
	jmp	.label_151
.label_126:
	mov	edx, 1
	mov	rdi, r15
	mov	rsi, rbx
.label_198:
	mov	rcx, qword ptr [rsp]
	call	fwrite
.label_151:
	movabs	r8, 0x100000000
	mov	r9, qword ptr [rsp + 8]
.label_139:
	add	r9, r12
.label_83:
	mov	r12, qword ptr [rsp]
.label_154:
	mov	ebp, 0xffffffff
	cmp	byte ptr [r13 + 1], 0
	lea	r13, [r13 + 1]
	mov	rax, r9
	jne	.label_134
	jmp	.label_116
.label_95:
	xor	eax, eax
.label_116:
	add	rsp, 0x498
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
	#Procedure 0x403df0

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
	je	.label_257
	nop	word ptr cs:[rax + rax]
.label_258:
	movzx	r12d, byte ptr [rbx]
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	edi, dword ptr [rax + r12*4]
	mov	rsi, r15
	call	fputc
	inc	rbx
	dec	r14
	jne	.label_258
.label_257:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403e40

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
	je	.label_259
	nop	word ptr cs:[rax + rax]
.label_260:
	movzx	r12d, byte ptr [rbx]
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	edi, dword ptr [rax + r12*4]
	mov	rsi, r15
	call	fputc
	inc	rbx
	dec	r14
	jne	.label_260
.label_259:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403e90

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
	.section	.text
	.align	16
	#Procedure 0x403ed0
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
	je	.label_261
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_261:
	mov	ebp,  dword ptr [dword ptr [rip + opterr]]
	mov	dword ptr [dword ptr [rip + opterr]],  0
	cmp	edi, 2
	jne	.label_262
	mov	edx, OFFSET FLAT:label_263
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	call	getopt_long
	cmp	eax, 0x68
	je	.label_264
	cmp	eax, 0x76
	jne	.label_262
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0x100]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x30
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	r8, [rsp]
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, r14
	call	version_etc_va
	xor	edi, edi
	call	exit
.label_264:
	xor	edi, edi
	call	rbx
.label_262:
	mov	dword ptr [dword ptr [rip + opterr]],  ebp
	mov	dword ptr [dword ptr [rip + optind]],  0
	add	rsp, 0xd0
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403fd0

	.globl parse_gnu_standard_options_only
	.type parse_gnu_standard_options_only, @function
parse_gnu_standard_options_only:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0xd8
	mov	r14, r8
	mov	r15, rcx
	mov	rbx, rdx
	test	al, al
	je	.label_268
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_268:
	mov	ebp,  dword ptr [dword ptr [rip + opterr]]
	mov	dword ptr [dword ptr [rip + opterr]],  1
	mov	eax, OFFSET FLAT:label_27
	mov	edx, OFFSET FLAT:label_263
	test	r9b, r9b
	cmovne	rdx, rax
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	call	getopt_long
	cmp	eax, -1
	je	.label_267
	mov	rcx, qword ptr [rsp + 0x100]
	cmp	eax, 0x68
	je	.label_269
	cmp	eax, 0x76
	je	.label_266
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	jmp	.label_265
.label_269:
	xor	edi, edi
.label_265:
	call	rcx
.label_267:
	mov	dword ptr [dword ptr [rip + opterr]],  ebp
	add	rsp, 0xd8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_266:
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0x108]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x30
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	r8, [rsp]
	mov	rsi, rbx
	mov	rdx, r15
	mov	rcx, r14
	call	version_etc_va
	xor	edi, edi
	call	exit
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4040d0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_272
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_271
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_270
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_271
	mov	esi, OFFSET FLAT:label_274
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_275
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_275:
	mov	rbx, r14
.label_271:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_272:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_273
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404180
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
	#Procedure 0x4041c0
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
	#Procedure 0x4041d0
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
	#Procedure 0x4041e0

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
	#Procedure 0x404220
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
	#Procedure 0x404240

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_276
	test	rdx, rdx
	je	.label_276
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_276:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404270
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4042f0

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
.label_362:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_366
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_370]]
.label_643:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_377
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_323
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_644:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_283
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_283
	xor	r14d, r14d
.label_291:
	cmp	r14, r11
	jae	.label_287
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_287:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_291
.label_283:
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
	jmp	.label_295
.label_636:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_295
.label_639:
	mov	al, 1
.label_637:
	mov	r12b, 1
.label_640:
	test	r12b, 1
	mov	cl, 1
	je	.label_310
	mov	ecx, eax
.label_310:
	mov	al, cl
.label_638:
	test	r12b, 1
	jne	.label_314
	test	r11, r11
	je	.label_316
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_316:
	mov	r14d, 1
	jmp	.label_322
.label_314:
	xor	r14d, r14d
.label_322:
	mov	ecx, OFFSET FLAT:label_323
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_295
.label_641:
	test	r12b, 1
	jne	.label_330
	test	r11, r11
	je	.label_374
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_374:
	mov	r14d, 1
	jmp	.label_358
.label_642:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_339
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_295
.label_330:
	xor	r14d, r14d
.label_358:
	mov	eax, OFFSET FLAT:label_339
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_295:
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
	jmp	.label_348
	nop	dword ptr [rax]
.label_333:
	inc	rsi
.label_348:
	cmp	rbp, -1
	je	.label_381
	cmp	rsi, rbp
	jne	.label_344
	jmp	.label_386
	nop	word ptr cs:[rax + rax]
.label_381:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_386
.label_344:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_390
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_277
	cmp	rbp, -1
	jne	.label_277
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
.label_277:
	cmp	rbx, rbp
	jbe	.label_294
.label_390:
	xor	r8d, r8d
.label_279:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_296
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_299]]
.label_719:
	test	rsi, rsi
	jne	.label_293
	jmp	.label_304
	nop	
.label_294:
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
	jne	.label_320
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_279
	jmp	.label_331
.label_320:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_279
.label_723:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_389
	test	rsi, rsi
	jne	.label_341
	cmp	rbp, 1
	je	.label_304
	xor	r13d, r13d
	jmp	.label_284
.label_712:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_347
	cmp	byte ptr [rsp + 7], 0
	jne	.label_288
	cmp	r12d, 2
	jne	.label_329
	mov	eax, r9d
	and	al, 1
	jne	.label_329
	cmp	r14, r11
	jae	.label_371
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_371:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_354
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_354:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_357
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_357:
	add	r14, 3
	mov	r9b, 1
.label_329:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_361
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_361:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_364
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_364
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_364
	cmp	r14, r11
	jae	.label_309
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_309:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_349
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_349:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_284
.label_713:
	mov	bl, 0x62
	jmp	.label_278
.label_714:
	mov	cl, 0x74
	jmp	.label_281
.label_715:
	mov	bl, 0x76
	jmp	.label_278
.label_716:
	mov	bl, 0x66
	jmp	.label_278
.label_717:
	mov	cl, 0x72
	jmp	.label_281
.label_720:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_285
	cmp	byte ptr [rsp + 7], 0
	jne	.label_288
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
	jae	.label_292
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_292:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_301
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_301:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_305
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_305:
	add	r14, 3
	xor	r9d, r9d
.label_285:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_284
.label_721:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_317
	cmp	r12d, 2
	jne	.label_293
	cmp	byte ptr [rsp + 7], 0
	je	.label_293
	jmp	.label_288
.label_722:
	cmp	r12d, 2
	jne	.label_328
	cmp	byte ptr [rsp + 7], 0
	jne	.label_288
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_286
.label_296:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_336
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
.label_282:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_353
	test	r8b, r8b
	je	.label_353
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_284
.label_389:
	test	rsi, rsi
	jne	.label_340
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_340
.label_304:
	mov	dl, 1
.label_718:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_288
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_284:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_372
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_373
	jmp	.label_378
	nop	word ptr cs:[rax + rax]
.label_372:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_378
.label_373:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_383
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_286
	jmp	.label_280
	nop	dword ptr [rax]
.label_378:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_280
	jmp	.label_286
.label_383:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_280
.label_347:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_333
	xor	r15d, r15d
	jmp	.label_293
.label_328:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_281
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_286
.label_281:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_288
.label_278:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_284
	nop	word ptr cs:[rax + rax]
.label_280:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_288
	cmp	r12d, 2
	jne	.label_311
	mov	eax, r9d
	and	al, 1
	jne	.label_311
	cmp	r14, r11
	jae	.label_315
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_315:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_388
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_388:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_325
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_325:
	add	r14, 3
	mov	r9b, 1
.label_311:
	cmp	r14, r11
	jae	.label_338
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_338:
	inc	r14
	jmp	.label_326
.label_336:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_337
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_337:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_375:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_352
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_356
	cmp	rbp, -2
	je	.label_312
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_360
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_367:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_289
	bt	rsi, rdx
	jb	.label_331
.label_289:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_367
.label_360:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_385
	xor	r13d, r13d
.label_385:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_375
	jmp	.label_282
.label_364:
	xor	r13d, r13d
	jmp	.label_284
.label_340:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_284
.label_317:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_293
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_293
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_293
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_387
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_379
	cmp	byte ptr [rsp + 7], 0
	jne	.label_288
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_307
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_307:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_332
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_332:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_321
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_321:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_324
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_324:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_284
.label_293:
	xor	eax, eax
.label_341:
	xor	r13d, r13d
	jmp	.label_284
.label_353:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_335
	nop	word ptr cs:[rax + rax]
.label_290:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_335:
	test	r8b, r8b
	je	.label_342
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_343
	cmp	r14, r11
	jae	.label_382
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_382:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_343
	nop	dword ptr [rax]
.label_342:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_331
	cmp	r12d, 2
	jne	.label_351
	mov	eax, r9d
	and	al, 1
	jne	.label_351
	cmp	r14, r11
	jae	.label_355
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_355:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_302
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_302:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_318
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_318:
	add	r14, 3
	mov	r9b, 1
.label_351:
	cmp	r14, r11
	jae	.label_363
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_363:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_380
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_380:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_376
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_376:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_343:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_286
	test	r9b, 1
	je	.label_365
	mov	ebx, eax
	and	bl, 1
	jne	.label_365
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_391
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_391:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_306
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_306:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_365:
	cmp	r14, r11
	jae	.label_290
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_290
	nop	word ptr cs:[rax + rax]
.label_286:
	test	r9b, 1
	je	.label_297
	and	al, 1
	jne	.label_297
	cmp	r14, r11
	jae	.label_298
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_298:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_303
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_303:
	add	r14, 2
	xor	r9d, r9d
.label_297:
	mov	ebx, r15d
.label_326:
	cmp	r14, r11
	jae	.label_308
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_308:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_333
.label_356:
	xor	r13d, r13d
.label_352:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_282
.label_312:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_300
	mov	rsi, qword ptr [rsp + 0x50]
.label_346:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_327
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_346
	xor	r13d, r13d
	jmp	.label_282
.label_300:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_282
.label_327:
	xor	r13d, r13d
	jmp	.label_282
.label_387:
	xor	r13d, r13d
	jmp	.label_284
.label_379:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_284
	nop	dword ptr [rax + rax]
.label_386:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_345
	or	dl, al
	je	.label_331
.label_345:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_350
	or	dl, al
	jne	.label_350
	test	r10b, 1
	jne	.label_359
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_350
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_362
.label_350:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_368
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_369
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_369
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_384:
	cmp	r14, r11
	jae	.label_334
	mov	byte ptr [rcx + r14], al
.label_334:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_384
	jmp	.label_369
.label_288:
	mov	qword ptr [rsp + 0x20], rbp
.label_331:
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
.label_313:
	mov	r14, rax
.label_319:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_359:
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
	jmp	.label_313
.label_368:
	mov	rcx, qword ptr [rsp + 8]
.label_369:
	cmp	r14, r11
	jae	.label_319
	mov	byte ptr [rcx + r14], 0
	jmp	.label_319
.label_366:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4050b0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4050c0

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
	je	.label_392
	mov	qword ptr [rax], rbx
.label_392:
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
	#Procedure 0x4051b0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_393
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_396:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_396
.label_393:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_397
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_394]], OFFSET FLAT:slot0
.label_397:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_395
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_395:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405250

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x405260

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
	js	.label_398
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_401
	cmp	r12d, 0x7fffffff
	je	.label_403
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
	jne	.label_399
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_399:
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
.label_401:
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
	jbe	.label_404
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_400
.label_404:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_402
	mov	rdi, r14
	call	free
.label_402:
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
.label_400:
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
.label_398:
	call	abort
.label_403:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405420

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405430
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405440
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
	#Procedure 0x405450

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
	.align	16
	#Procedure 0x405490

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
	je	.label_405
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
.label_405:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4054f0

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
	.align	16
	#Procedure 0x405530
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
	.align	16
	#Procedure 0x405550
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
	.align	16
	#Procedure 0x405570

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
	mov	rcx,  qword ptr [word ptr [rip + label_406]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_407]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_408]]
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
	.align	16
	#Procedure 0x4055e0

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4055f0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405600
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405610

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
	.align	16
	#Procedure 0x405660

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405670

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
	mov	rax,  qword ptr [word ptr [rip + label_406]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_407]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_408]]
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
	.align	16
	#Procedure 0x4056e0
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
	.align	16
	#Procedure 0x405700
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
	.align	16
	#Procedure 0x405720

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405730
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
	#Procedure 0x405740

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405750

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405760

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
	jne	.label_416
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
	je	.label_413
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_409
	mov	eax, OFFSET FLAT:label_410
	jmp	.label_411
.label_413:
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
	je	.label_412
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_414
	mov	eax, OFFSET FLAT:label_415
	jmp	.label_411
.label_412:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_339
	mov	eax, OFFSET FLAT:label_323
.label_411:
	cmove	rax, rcx
.label_416:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405820

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
	je	.label_418
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_419
	jmp	.label_417
.label_418:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_417
.label_419:
	mov	eax, 1
	test	bpl, bpl
	je	.label_417
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
.label_417:
	add	rsp, 8
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
	#Procedure 0x4058a0

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
	je	.label_422
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_420
	jmp	.label_421
.label_422:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_421
.label_420:
	mov	eax, 1
	test	bpl, bpl
	je	.label_421
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
.label_421:
	add	rsp, 8
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
	#Procedure 0x405930

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
	je	.label_423
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_425
	jmp	.label_424
.label_423:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_424
.label_425:
	mov	eax, 1
	test	bpl, bpl
	je	.label_424
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
.label_424:
	add	rsp, 8
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
	#Procedure 0x4059b0

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
	je	.label_428
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_427
	jmp	.label_426
.label_428:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_426
.label_427:
	mov	eax, 1
	test	bpl, bpl
	je	.label_426
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
.label_426:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405a20

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
	je	.label_431
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_429
	jmp	.label_430
.label_431:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_430
.label_429:
	mov	eax, 1
	test	bpl, bpl
	je	.label_430
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_430:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405a80

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
	je	.label_432
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_434
	jmp	.label_433
.label_432:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_433
.label_434:
	mov	eax, 1
	test	bpl, bpl
	je	.label_433
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_433:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405ad0

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
	je	.label_437
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_436
	jmp	.label_435
.label_437:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_435
.label_436:
	mov	eax, 1
	test	bpl, bpl
	je	.label_435
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_435:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405b20

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_440
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_439
	jmp	.label_438
.label_440:
	mov	eax, 1
	test	cl, cl
	je	.label_438
.label_439:
	xor	eax, eax
.label_438:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405b50

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
	je	.label_451
	mov	edx, OFFSET FLAT:label_456
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_443
.label_451:
	mov	edx, OFFSET FLAT:label_445
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_443:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_450
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
	mov	esi, OFFSET FLAT:label_446
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_452
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_453]]
.label_563:
	add	rsp, 8
	jmp	.label_444
.label_452:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_459
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
	jmp	.label_444
.label_564:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_447
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
.label_565:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_441
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
.label_566:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_457
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
.label_567:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_454
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
	jmp	.label_444
.label_568:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_449
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
	jmp	.label_444
.label_569:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_455
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
	jmp	.label_444
.label_570:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_458
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
	jmp	.label_444
.label_572:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_442
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
	jmp	.label_444
.label_571:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_448
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
.label_444:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405eb0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_460:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_460
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ee0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_462:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_461
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_463
	nop	dword ptr [rax]
.label_461:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_463:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_464
	inc	r9
	cmp	r9, 0xa
	jb	.label_462
.label_464:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405f40
	.globl version_etc
	.type version_etc, @function
version_etc:

	sub	rsp, 0xd8
	test	al, al
	je	.label_465
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_465:
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
	#Procedure 0x405fd0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_466
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_467
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_469
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_21
	mov	ecx, OFFSET FLAT:label_22
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_468
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406050
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_470
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_470:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406080

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_471
	test	rax, rax
	je	.label_472
.label_471:
	pop	rbx
	ret	
.label_472:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4060a0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_473
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_473:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4060d0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_474
	test	rbx, rbx
	jne	.label_474
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_474:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_476
	test	rax, rax
	je	.label_475
.label_476:
	pop	rbx
	ret	
.label_475:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x406100

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_477
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_480
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_478
.label_477:
	test	rcx, rcx
	jne	.label_481
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_481:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_479
.label_478:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_480:
	call	xalloc_die
.label_479:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406180

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406190
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4061a0
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
	.align	16
	#Procedure 0x4061d0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_482
	call	rpl_calloc
	test	rax, rax
	je	.label_482
	pop	rcx
	ret	
.label_482:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406200

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
	.align	16
	#Procedure 0x406230
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
	.section	.text
	.align	16
	#Procedure 0x406250

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_483
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_42
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x406280

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_484
	test	rsi, rsi
	mov	ecx, 1
	je	.label_485
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_485
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_484:
	mov	ecx, 1
.label_485:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4062d0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_486
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_488
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_486
.label_488:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_486
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_487
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_487:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_486:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406350

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_489
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_489
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_489:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406380

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_490
	ret	
.label_490:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4063a0

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
	jne	.label_491
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_491
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_492
.label_491:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_492:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_493
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_493:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406410

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
	je	.label_494
	cmp	r15, -2
	jb	.label_494
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_494
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_494:
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
	#Procedure 0x406470
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
	jle	.label_495
	add	rax, rbx
	nop	dword ptr [rax]
.label_496:
	cmp	byte ptr [rax - 1], 0x20
	jne	.label_495
	mov	byte ptr [rax - 1], 0
	dec	rax
	cmp	rbx, rax
	jb	.label_496
.label_495:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4064d0

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
	jmp	.label_498
.label_499:
	lea	rdi, [r12 + r12*2]
	inc	r12
	shl	rdi, 7
	add	rdi, r13
	mov	edx, 0x180
	mov	rsi, rbx
	call	memcpy
	nop	dword ptr [rax + rax]
.label_498:
	call	getutxent
	mov	rbx, rax
	test	rbx, rbx
	je	.label_497
	mov	rdi, rbx
	mov	esi, ebp
	call	desirable_utmp_entry
	test	al, al
	je	.label_498
	cmp	r12, qword ptr [rsp]
	jne	.label_499
	mov	edx, 0x180
	mov	rdi, r13
	lea	rsi, [rsp]
	call	x2nrealloc
	mov	r13, rax
	jmp	.label_499
.label_497:
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
	.align	16
	#Procedure 0x406580

	.globl desirable_utmp_entry
	.type desirable_utmp_entry, @function
desirable_utmp_entry:
	cmp	byte ptr [rdi + 0x2c], 0
	je	.label_500
	movzx	eax, word ptr [rdi]
	cmp	eax, 7
	sete	al
	jmp	.label_503
.label_500:
	xor	eax, eax
.label_503:
	push	rax
	test	sil, 2
	je	.label_504
	test	al, al
	jne	.label_504
	xor	eax, eax
	jmp	.label_502
.label_504:
	test	sil, 1
	je	.label_501
	xor	al, 1
	jne	.label_501
	mov	edi, dword ptr [rdi + 4]
	test	edi, edi
	jle	.label_501
	xor	esi, esi
	call	kill
	test	eax, eax
	jns	.label_501
	call	__errno_location
	cmp	dword ptr [rax], 3
	jne	.label_501
	xor	eax, eax
	jmp	.label_502
.label_501:
	mov	al, 1
.label_502:
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4065d0

	.globl tzalloc
	.type tzalloc, @function
tzalloc:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	xor	r15d, r15d
	test	r14, r14
	je	.label_505
	mov	rdi, r14
	call	strlen
	mov	r15, rax
	inc	r15
.label_505:
	lea	rax, [r15 + 0x11]
	and	rax, 0xfffffffffffffff8
	cmp	r15, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_506
	mov	qword ptr [rbx], 0
	test	r14, r14
	setne	byte ptr [rbx + 8]
	mov	byte ptr [rbx + 9], 0
	je	.label_506
	mov	rdi, rbx
	add	rdi, 9
	mov	rsi, r14
	mov	rdx, r15
	call	extend_abbrs
.label_506:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406640

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
	.align	16
	#Procedure 0x406660

	.globl tzfree
	.type tzfree, @function
tzfree:
	push	rbx
	cmp	rdi, 2
	jb	.label_507
	nop	word ptr [rax + rax]
.label_508:
	mov	rbx, qword ptr [rdi]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_508
.label_507:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406690
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
	je	.label_512
	mov	rdi, rbx
	call	set_tz
	mov	r14, rax
	test	r14, r14
	je	.label_511
	mov	rdi, rbp
	mov	rsi, r15
	call	localtime_r
	mov	bpl, 1
	test	rax, rax
	je	.label_509
	mov	rdi, rbx
	mov	rsi, r15
	call	save_abbr
	mov	ebp, eax
	xor	bpl, 1
.label_509:
	mov	rdi, r14
	call	revert_tz
	xor	ecx, ecx
	xor	al, 1
	cmovne	r15, rcx
	test	bpl, bpl
	cmovne	r15, rcx
	mov	rax, r15
	jmp	.label_510
.label_512:
	mov	rdi, rbp
	mov	rsi, r15
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	gmtime_r
.label_511:
	xor	eax, eax
.label_510:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406720

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
	je	.label_515
	test	cl, cl
	je	.label_514
	lea	rdi, [r14 + 9]
	mov	rsi, rbx
	call	strcmp
	mov	ecx, eax
	mov	eax, 1
	test	ecx, ecx
	jne	.label_514
	jmp	.label_513
.label_515:
	mov	eax, 1
	test	cl, cl
	je	.label_513
.label_514:
	mov	rdi, rbx
	call	tzalloc
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_513
	mov	rdi, r14
	call	change_env
	test	al, al
	je	.label_516
	mov	rax, rbx
	jmp	.label_513
.label_516:
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	tzfree
	mov	dword ptr [r14], ebp
	xor	eax, eax
.label_513:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4067a0

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
	mov	al, 1
	test	rbx, rbx
	je	.label_518
	cmp	r15, rbx
	ja	.label_517
	lea	rcx, [r15 + 0x38]
	cmp	rbx, rcx
	jb	.label_518
.label_517:
	mov	r14d, OFFSET FLAT:label_27
	cmp	byte ptr [rbx], 0
	je	.label_522
	lea	r14, [r12 + 9]
	jmp	.label_525
.label_528:
	mov	rax, qword ptr [r12]
	lea	r14, [rax + 9]
	test	rax, rax
	cmove	r14, rcx
	cmovne	r12, rax
.label_525:
	lea	r13, [r12 + 9]
.label_527:
	mov	rdi, r14
	mov	rsi, rbx
	call	strcmp
	test	eax, eax
	je	.label_520
	cmp	byte ptr [r14], 0
	jne	.label_521
	mov	rbp, r14
	sub	rbp, r13
	jne	.label_523
	cmp	byte ptr [r12 + 8], 0
	je	.label_523
.label_521:
	mov	rdi, r14
	call	strlen
	lea	rcx, [r14 + rax + 1]
	cmp	byte ptr [r14 + rax + 1], 0
	mov	r14, rcx
	jne	.label_527
	jmp	.label_528
.label_523:
	mov	rdi, rbx
	call	strlen
	inc	rax
	mov	rcx, rbp
	not	rcx
	cmp	rax, rcx
	jbe	.label_519
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	jmp	.label_518
.label_519:
	add	rbp, rax
	cmp	rbp, 0x76
	ja	.label_526
	mov	rdi, r14
	mov	rsi, rbx
	mov	rdx, rax
	call	extend_abbrs
.label_520:
	mov	al, 1
.label_522:
	mov	qword ptr [r15 + 0x30], r14
.label_518:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_526:
	mov	rdi, rbx
	call	tzalloc
	mov	r14, rax
	mov	qword ptr [r12], r14
	test	r14, r14
	mov	al, 1
	je	.label_524
	mov	byte ptr [r14 + 8], 0
	add	r14, 9
	jmp	.label_522
.label_524:
	xor	eax, eax
	jmp	.label_518
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4068c0

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
	je	.label_529
	call	__errno_location
	mov	r15, rax
	mov	ebp, dword ptr [r15]
	mov	rdi, r14
	call	change_env
	mov	ebx, eax
	test	bl, bl
	jne	.label_530
	mov	ebp, dword ptr [r15]
.label_530:
	mov	rdi, r14
	call	tzfree
	mov	dword ptr [r15], ebp
.label_529:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406910

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
	je	.label_535
	mov	rdi, rbx
	call	set_tz
	mov	r14, rax
	test	r14, r14
	je	.label_532
	mov	rdi, r15
	call	mktime
	mov	qword ptr [rsp], rax
	cmp	rax, -1
	jne	.label_531
	lea	rdi, [rsp]
	lea	rsi, [rsp + 8]
	call	localtime_r
	test	rax, rax
	je	.label_534
	lea	rsi, [rsp + 8]
	mov	rdi, r15
	call	equal_tm
	test	eax, eax
	je	.label_534
.label_531:
	mov	rdi, rbx
	mov	rsi, r15
	call	save_abbr
	test	al, al
	jne	.label_534
	mov	qword ptr [rsp], -1
.label_534:
	mov	rdi, r14
	call	revert_tz
	test	al, al
	je	.label_532
	mov	rax, qword ptr [rsp]
	jmp	.label_533
.label_532:
	mov	rax, -1
.label_533:
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_535:
	mov	rdi, r15
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	jmp	timegm
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4069c0

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
	movzx	ecx, al
	xor	eax, eax
	or	ecx, ebx
	sete	al
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406a10

	.globl getenv_TZ
	.type getenv_TZ, @function
getenv_TZ:
	mov	edi, OFFSET FLAT:label_536
	jmp	getenv
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406a20

	.globl change_env
	.type change_env, @function
change_env:
	push	rbx
	xor	ebx, ebx
	cmp	byte ptr [rdi + 8], 0
	lea	rdi, [rdi + 9]
	cmove	rdi, rbx
	call	setenv_TZ
	test	eax, eax
	jne	.label_537
	call	tzset
	mov	bl, 1
.label_537:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406a50

	.globl setenv_TZ
	.type setenv_TZ, @function
setenv_TZ:
	mov	rax, rdi
	mov	edi, OFFSET FLAT:label_536
	test	rax, rax
	je	.label_538
	mov	edx, 1
	mov	rsi, rax
	jmp	setenv
.label_538:
	jmp	unsetenv
	nop	
	.section	.text
	.align	16
	#Procedure 0x406a70

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
	.section	.text
	.align	16
	#Procedure 0x406a90
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_539
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_539
.label_540:
	ret	
.label_539:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_540
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406ac0
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_541
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_541:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406ae0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406af0
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
	.align	16
	#Procedure 0x406b00
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_542
.label_543:
	ret	
.label_542:
	cmp	edi, 0x7f
	je	.label_543
	xor	eax, eax
	jmp	.label_543
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406b20
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406b30
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406b40
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406b50
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406b60
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_544
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_545]]
.label_546:
	ret	
.label_544:
	xor	eax, eax
	jmp	.label_546
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406b80
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_547
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
.label_547:
	xor	eax, eax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406ba0

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406bb0
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_548
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_548:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406bd0
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
	.align	16
	#Procedure 0x406be0
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
	.align	16
	#Procedure 0x406bf0

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
	je	.label_550
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_549
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_549
.label_550:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_549
	test	cl, cl
	jne	.label_549
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_549:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406c60

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_552
	cmp	byte ptr [rax], 0x43
	jne	.label_554
	cmp	byte ptr [rax + 1], 0
	je	.label_551
.label_554:
	mov	esi, OFFSET FLAT:label_553
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_552
.label_551:
	xor	ebx, ebx
.label_552:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406ca0

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
	mov	eax, OFFSET FLAT:label_555
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section .text
	.align	16
	#Procedure 0x406cd0

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
	nop	word ptr cs:[rax + rax]
