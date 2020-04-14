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
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.9
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.31
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.9
	mov	ecx, OFFSET FLAT:.str.32
	xor	eax, eax
	call	__printf_chk
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
	#Procedure 0x401c70

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
	je	.label_9
	test	ebp, ebp
	jne	.label_10
	mov	edi, OFFSET FLAT:.str.5
	mov	esi, 1
	jmp	.label_11
.label_9:
	mov	rdi, qword ptr [rbx + rax*8]
	xor	esi, esi
.label_11:
	call	uptime
	xor	eax, eax
	add	rsp, 0x28
	pop	rbx
	pop	rbp
	ret	
.label_10:
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
	#Procedure 0x401d80

	.globl uptime
	.type uptime, @function
uptime:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x2058
	mov	eax, esi
	mov	rbx, rdi
	mov	qword ptr [rsp + 0x18], 0
	lea	rsi, [rsp + 0x20]
	lea	rdx, [rsp + 0x18]
	mov	ecx, eax
	call	read_utmp
	test	eax, eax
	jne	.label_21
	mov	r15, qword ptr [rsp + 0x20]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	edi, OFFSET FLAT:.str.34
	mov	esi, OFFSET FLAT:.str.35
	call	fopen
	mov	rbx, rax
	xor	r13d, r13d
	test	rbx, rbx
	je	.label_30
	lea	r14, [rsp + 0x30]
	mov	esi, 0x2000
	mov	rdi, r14
	mov	rdx, rbx
	call	fgets_unlocked
	xor	r13d, r13d
	cmp	rax, r14
	jne	.label_13
	lea	rsi, [rsp + 0x28]
	mov	rdi, r14
	call	c_strtod
	xor	r13d, r13d
	cmp	r14, qword ptr [rsp + 0x28]
	je	.label_13
	movsd	xmm1,  qword ptr [word ptr [rip + label_14]]
	ucomisd	xmm1, xmm0
	cvttsd2si	r13, xmm0
	mov	rax, -1
	cmovbe	r13, rax
	xorpd	xmm1, xmm1
	ucomisd	xmm0, xmm1
	cmovb	r13, rax
.label_13:
	mov	rdi, rbx
	call	rpl_fclose
.label_30:
	xor	ebx, ebx
	test	r15, r15
	mov	r14d, 0
	je	.label_15
	xor	eax, eax
	test	r15b, 1
	jne	.label_32
	mov	rcx, r15
	xor	r14d, r14d
	jmp	.label_31
.label_32:
	movzx	ecx, word ptr [rbp]
	cmp	ecx, 7
	sete	dl
	xor	eax, eax
	cmp	byte ptr [rbp + 0x2c], 0
	movzx	edx, dl
	je	.label_28
	mov	rax, rdx
.label_28:
	xor	r14d, r14d
	movzx	ecx, cx
	cmp	ecx, 2
	jne	.label_34
	movsxd	r14, dword ptr [rbp + 0x154]
.label_34:
	lea	rcx, [r15 - 1]
	add	rbp, 0x180
.label_31:
	cmp	r15, 1
	mov	rbx, rax
	je	.label_15
	nop	
.label_12:
	movzx	esi, word ptr [rbp]
	cmp	esi, 7
	sete	dl
	cmp	byte ptr [rbp + 0x2c], 0
	movzx	edi, dl
	mov	edx, 0
	je	.label_20
	mov	rdx, rdi
.label_20:
	movzx	esi, si
	cmp	esi, 2
	jne	.label_25
	movsxd	r14, dword ptr [rbp + 0x154]
.label_25:
	movzx	esi, word ptr [rbp + 0x180]
	cmp	esi, 7
	sete	bl
	cmp	byte ptr [rbp + 0x1ac], 0
	movzx	edi, bl
	mov	ebx, 0
	je	.label_29
	mov	rbx, rdi
.label_29:
	add	rdx, rax
	add	rcx, -2
	movzx	eax, si
	cmp	eax, 2
	jne	.label_33
	movsxd	r14, dword ptr [rbp + 0x2d4]
.label_33:
	add	rbx, rdx
	add	rbp, 0x300
	test	rcx, rcx
	mov	rax, rbx
	jne	.label_12
.label_15:
	xor	edi, edi
	call	time
	mov	qword ptr [rsp + 0x2050], rax
	test	r13, r13
	jne	.label_17
	test	r14, r14
	je	.label_23
	sub	rax, r14
	mov	r13, rax
.label_17:
	mov	qword ptr [rsp + 0x10], r13
	movabs	rcx, 0x1845c8a0ce512957
	mov	rax, r13
	imul	rcx
	mov	r12, rdx
	mov	rax, r12
	shr	rax, 0x3f
	sar	r12, 0xd
	add	r12, rax
	imul	rbp, r12, -0x15180
	add	rbp, r13
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
	mov	r13, rdx
	lea	rdi, [rsp + 0x2050]
	call	localtime
	mov	r14, rax
	test	r14, r14
	je	.label_26
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
	mov	rdx, r14
	call	fprintftime
	jmp	.label_27
.label_26:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.38
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
.label_27:
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	rcx, -1
	je	.label_18
	add	r13, rbp
	mov	rax, r13
	shr	rax, 0x3f
	shr	r13, 5
	add	r13d, eax
	xor	edi, edi
	cmp	rcx, 0x15180
	jl	.label_22
	mov	esi, OFFSET FLAT:.str.40
	mov	edx, OFFSET FLAT:.str.41
	mov	r8d, 5
	mov	rcx, r12
	call	dcngettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rdx, r12
	mov	ecx, r15d
	mov	r8d, r13d
	call	__printf_chk
	jmp	.label_19
.label_18:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.39
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	jmp	.label_19
.label_22:
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
.label_19:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.43
	mov	edx, OFFSET FLAT:.str.44
	mov	r8d, 5
	mov	rcx, rbx
	call	dcngettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rdx, rbx
	call	__printf_chk
	lea	rdi, [rsp + 0x2030]
	mov	esi, 3
	call	getloadavg
	mov	ebx, eax
	cmp	ebx, -1
	je	.label_16
	test	ebx, ebx
	jle	.label_24
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.45
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	movsd	xmm0, qword ptr [rsp + 0x2030]
	mov	edi, 1
	mov	al, 1
	mov	rsi, rcx
	call	__printf_chk
	cmp	ebx, 2
	jl	.label_16
	movsd	xmm0, qword ptr [rsp + 0x2038]
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.46
	mov	al, 1
	call	__printf_chk
	cmp	ebx, 3
	jl	.label_16
	movsd	xmm0, qword ptr [rsp + 0x2040]
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.46
	mov	al, 1
	call	__printf_chk
.label_16:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_35
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_24:
	add	rsp, 0x2058
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_35:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_24
.label_21:
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
.label_23:
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
	nop	
	.section	.text
	.align	32
	#Procedure 0x402210

	.globl c_strtod
	.type c_strtod, @function
c_strtod:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	cmp	qword ptr [word ptr [rip + c_locale_cache]],  0
	jne	.label_36
	mov	edi, 0x1fbf
	mov	esi, OFFSET FLAT:.str_2
	xor	edx, edx
	call	newlocale
	mov	qword ptr [word ptr [rip + c_locale_cache]],  rax
.label_36:
	mov	rdx,  qword ptr [word ptr [rip + c_locale_cache]]
	test	rdx, rdx
	je	.label_38
	mov	rdi, r14
	mov	rsi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	strtod_l
.label_38:
	test	rbx, rbx
	je	.label_37
	mov	qword ptr [rbx], r14
.label_37:
	xorps	xmm0, xmm0
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402270
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402280
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402290

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_42
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_41
	cmp	dword ptr [rbp], 0x20
	jne	.label_41
.label_42:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_40
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_41:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_3
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_39
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_40:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_39:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_0
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402350

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
	#Procedure 0x402380

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
	mov	dword ptr [rsp + 0x3c], r8d
	mov	dword ptr [rsp + 0x54], ecx
	mov	qword ptr [rsp + 0x58], rdx
	mov	r13, rsi
	mov	r14, rdi
	mov	qword ptr [rsp + 0x68], r14
	mov	eax, dword ptr [rdx + 8]
	mov	rcx, qword ptr [rdx + 0x30]
	test	rcx, rcx
	mov	edx, OFFSET FLAT:.str_0
	cmovne	rdx, rcx
	mov	qword ptr [rsp + 0x28], rdx
	lea	ecx, [rax - 0xc]
	test	eax, eax
	mov	edx, 0xc
	cmovne	edx, eax
	cmp	eax, 0xc
	cmovg	edx, ecx
	mov	dword ptr [rsp + 0x24], edx
	mov	al, byte ptr [r13]
	test	al, al
	mov	r15d, 0
	je	.label_139
	lea	rcx, [rsp + 0x490]
	mov	rdx, -0x17
	sub	rdx, rcx
	mov	qword ptr [rsp + 0x18], rdx
	xor	r15d, r15d
	jmp	.label_137
.label_206:
	mov	r14d, 3
	jmp	.label_47
	nop	word ptr cs:[rax + rax]
.label_137:
	movzx	ecx, al
	xor	r12d, r12d
	cmp	ecx, 0x25
	jne	.label_52
	mov	eax, dword ptr [rsp + 0x54]
	mov	r11b, al
	xor	ebp, ebp
	movabs	rdi, 0x1000000000002500
	jmp	.label_56
	nop	word ptr cs:[rax + rax]
.label_52:
	test	r9d, r9d
	mov	ecx, r9d
	mov	edx, 0
	cmovs	ecx, edx
	movsxd	rbx, ecx
	cmp	ebx, 1
	mov	edx, 1
	cmovbe	rbx, rdx
	mov	rdx, r15
	not	rdx
	cmp	rbx, rdx
	jae	.label_54
	test	r14, r14
	je	.label_67
	cmp	ecx, 2
	jb	.label_68
	cmp	r9d, 1
	je	.label_68
	movsxd	rbp, r9d
	dec	rbp
	nop	word ptr cs:[rax + rax]
.label_76:
	mov	edi, 0x20
	mov	rsi, r14
	call	fputc
	dec	rbp
	jne	.label_76
	mov	al, byte ptr [r13]
.label_68:
	movsx	edi, al
	mov	rsi, r14
	call	fputc
.label_67:
	add	r15, rbx
	jmp	.label_57
	nop	dword ptr [rax]
.label_91:
	mov	r12b, 1
	mov	al, r11b
	jmp	.label_56
	nop	dword ptr [rax + rax]
.label_89:
	inc	r13
	mov	ebp, edx
.label_93:
	mov	cl, byte ptr [r13]
	movsx	edx, cl
	lea	esi, [rdx - 0x23]
	cmp	esi, 0x3c
	ja	.label_84
	bt	rdi, rsi
	jb	.label_89
	mov	al, 1
	test	rsi, rsi
	je	.label_91
	cmp	rsi, 0x3b
	jne	.label_84
.label_56:
	mov	r11b, al
	inc	r13
	jmp	.label_93
	nop	
.label_84:
	add	edx, -0x30
	xor	eax, eax
	cmp	edx, 9
	ja	.label_153
	nop	word ptr [rax + rax]
.label_197:
	mov	r9d, 0x7fffffff
	cmp	eax, 0xccccccc
	jg	.label_102
	movsx	ecx, cl
	cmp	eax, 0xccccccc
	jne	.label_101
	lea	edx, [rcx - 0x30]
	cmp	edx, 7
	jg	.label_102
.label_101:
	lea	eax, [rax + rax*4]
	lea	r9d, [rcx + rax*2 - 0x30]
.label_102:
	movsx	ecx, byte ptr [r13 + 1]
	inc	r13
	mov	eax, ecx
	add	eax, -0x30
	cmp	eax, 0xa
	mov	eax, r9d
	jb	.label_197
.label_153:
	movsx	r10d, cl
	cmp	r10d, 0x4f
	je	.label_109
	cmp	r10d, 0x45
	jne	.label_110
.label_109:
	mov	cl, byte ptr [r13 + 1]
	inc	r13
	jmp	.label_111
.label_110:
	xor	r10d, r10d
.label_111:
	movsx	r8d, cl
	xor	edx, edx
	mov	esi, 1
	lea	ebx, [r8 - 0x25]
	cmp	ebx, 0x55
	ja	.label_112
	mov	qword ptr [rsp + 0x78], r15
	mov	r15d, OFFSET FLAT:.str.3_0
	mov	dword ptr [rsp + 0x70], r9d
	mov	r9b, 0x72
	mov	r14d, 0xffffffff
	xor	eax, eax
	xor	edi, edi
	jmp	qword ptr [word ptr [+ (rbx * 8) + label_119]]
.label_556:
	cmp	r10d, 0x45
	je	.label_49
	mov	qword ptr [rsp + 0x60], r11
	mov	rsi, qword ptr [rsp + 0x58]
	mov	edx, dword ptr [rsi + 0x14]
	mov	r9d, dword ptr [rsi + 0x18]
	mov	eax, edx
	sar	eax, 0x1f
	and	eax, 0x190
	lea	r11d, [rdx + rax - 0x64]
	mov	ebx, dword ptr [rsi + 0x1c]
	lea	eax, [rbx + 0x17e]
	sub	eax, r9d
	movsxd	rdi, eax
	imul	rax, rdi, -0x6db6db6d
	shr	rax, 0x20
	add	eax, edi
	mov	esi, eax
	shr	esi, 0x1f
	sar	eax, 2
	add	eax, esi
	lea	esi, [rax*8]
	sub	esi, eax
	sub	edi, esi
	lea	r12d, [rbx + 3]
	sub	r12d, edi
	js	.label_155
	mov	edi, 0x16d
	test	r11b, 3
	jne	.label_142
	movsxd	rsi, r11d
	imul	rsi, rsi, 0x51eb851f
	mov	rdi, rsi
	sar	rdi, 0x25
	mov	r14, rsi
	shr	r14, 0x3f
	add	edi, r14d
	imul	edi, edi, 0x64
	sar	rsi, 0x27
	add	esi, r14d
	imul	esi, esi, 0x190
	cmp	r11d, esi
	sete	al
	movzx	eax, al
	add	eax, 0x16d
	cmp	r11d, edi
	mov	edi, 0x16e
	cmove	edi, eax
.label_142:
	sub	ebx, edi
	lea	eax, [rbx + 0x17e]
	sub	eax, r9d
	cdqe	
	imul	rsi, rax, -0x6db6db6d
	shr	rsi, 0x20
	add	esi, eax
	mov	edi, esi
	shr	edi, 0x1f
	sar	esi, 2
	add	esi, edi
	lea	edi, [rsi*8]
	sub	edi, esi
	sub	eax, edi
	add	ebx, 3
	sub	ebx, eax
	cmovns	r12d, ebx
	shr	ebx, 0x1f
	xor	ebx, 1
	jmp	.label_158
	nop	
.label_166:
	inc	rsi
.label_550:
	movzx	eax, byte ptr [r13 + rsi]
	cmp	eax, 0x3a
	je	.label_166
	movzx	eax, al
	cmp	eax, 0x7a
	jne	.label_49
	add	r13, rsi
	mov	rdx, rsi
.label_587:
	mov	r9, qword ptr [rsp + 0x58]
	cmp	dword ptr [r9 + 0x20], 0
	js	.label_170
	mov	rdi, rdx
	mov	r8d, dword ptr [r9 + 0x28]
	mov	r15b, 1
	test	r8d, r8d
	js	.label_173
	test	r8d, r8d
	je	.label_177
	xor	r15d, r15d
	jmp	.label_173
.label_570:
	test	r12b, r12b
	je	.label_178
	mov	r11b, 1
.label_178:
	xor	eax, eax
	cmp	r10d, 0x45
	je	.label_49
	mov	r9b, cl
	jmp	.label_44
.label_112:
	test	r8d, r8d
	jne	.label_180
	mov	qword ptr [rsp + 0x78], r15
	mov	dword ptr [rsp + 0x70], r9d
	dec	r13
	jmp	.label_49
.label_549:
	test	r10d, r10d
	jne	.label_49
	xor	eax, eax
	mov	edx, dword ptr [rsp + 0x70]
	test	edx, edx
	cmovns	eax, edx
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	r14d, 1
	cmova	r14, rcx
	mov	rcx, qword ptr [rsp + 0x78]
	not	rcx
	cmp	r14, rcx
	jae	.label_54
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_72
	cmp	eax, 2
	mov	r12, qword ptr [rsp + 0x68]
	jb	.label_123
	movsxd	rbx, edx
	lea	r15, [rbx - 1]
	cmp	ebp, 0x30
	je	.label_192
	cmp	ebp, 0x2b
	jne	.label_195
.label_192:
	test	r15, r15
	je	.label_123
	dec	rbx
.label_200:
	mov	edi, 0x30
	mov	rsi, r12
	call	fputc
	dec	rbx
	jne	.label_200
	jmp	.label_123
.label_551:
	test	r10d, r10d
	jne	.label_49
	test	r12b, r12b
	je	.label_168
	mov	r11b, 1
.label_168:
	xor	eax, eax
	mov	r9b, 0x41
	jmp	.label_44
.label_552:
	cmp	r10d, 0x45
	je	.label_49
	test	r12b, r12b
	je	.label_207
	mov	r11b, 1
.label_207:
	xor	eax, eax
	mov	r9b, 0x42
	jmp	.label_44
.label_553:
	cmp	r10d, 0x45
	jne	.label_209
	xor	eax, eax
	mov	r9b, 0x43
	jmp	.label_44
.label_554:
	test	r10d, r10d
	jne	.label_49
	mov	r15d, OFFSET FLAT:.str.1_1
	jmp	.label_50
.label_555:
	test	r10d, r10d
	jne	.label_49
	test	ebp, ebp
	mov	ecx, dword ptr [rsp + 0x70]
	jne	.label_55
	test	ecx, ecx
	jns	.label_55
	mov	r15d, OFFSET FLAT:.str.2_0
	mov	ebp, 0x2b
	mov	r14d, 4
	jmp	.label_50
.label_557:
	cmp	r10d, 0x45
	je	.label_49
	mov	r9, qword ptr [rsp + 0x58]
	mov	edx, dword ptr [r9 + 8]
	jmp	.label_64
.label_558:
	cmp	r10d, 0x45
	je	.label_49
	mov	r14d, 2
	mov	eax, dword ptr [rsp + 0x24]
	mov	edx, eax
	mov	r9, qword ptr [rsp + 0x58]
	jmp	.label_66
.label_559:
	cmp	r10d, 0x45
	je	.label_49
	mov	r9, qword ptr [rsp + 0x58]
	mov	edx, dword ptr [r9 + 4]
	jmp	.label_64
.label_560:
	cmp	r10d, 0x45
	je	.label_49
	mov	edi, dword ptr [rsp + 0x70]
	cmp	edi, -1
	je	.label_77
	cmp	edi, 8
	jg	.label_78
	mov	esi, 9
	sub	esi, edi
	mov	eax, 8
	sub	eax, edi
	test	sil, 3
	mov	edx, dword ptr [rsp + 0x4e8]
	mov	ebx, edi
	je	.label_79
	and	esi, 3
	neg	esi
	mov	edx, dword ptr [rsp + 0x4e8]
	mov	ebx, edi
	nop	
.label_87:
	movsxd	rdx, edx
	imul	rdx, rdx, 0x66666667
	mov	rdi, rdx
	shr	rdi, 0x3f
	sar	rdx, 0x22
	add	edx, edi
	inc	ebx
	inc	esi
	jne	.label_87
.label_79:
	cmp	eax, 3
	mov	r9, qword ptr [rsp + 0x58]
	jb	.label_94
	mov	eax, 9
	sub	eax, ebx
	nop	
.label_99:
	movsxd	rdx, edx
	imul	rdx, rdx, 0x68db8bad
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x2c
	add	edx, esi
	add	eax, -4
	jne	.label_99
.label_94:
	mov	eax, dword ptr [rsp + 0x70]
	mov	r14d, eax
	jmp	.label_66
.label_561:
	mov	dil, 1
.label_579:
	xor	edx, edx
	test	r12b, r12b
	je	.label_105
	mov	r11d, 0
.label_105:
	je	.label_108
	mov	dil, 1
.label_108:
	mov	r9b, 0x70
	mov	al, dil
	jmp	.label_95
.label_562:
	cmp	r10d, 0x45
	je	.label_49
	mov	r9, qword ptr [rsp + 0x58]
	mov	edx, dword ptr [r9]
	jmp	.label_64
.label_563:
	mov	r15d, OFFSET FLAT:.str.4_0
.label_50:
	test	r11b, r11b
	mov	qword ptr [rsp + 0x60], r11
	setne	al
	mov	ecx, dword ptr [rsp + 0x4e8]
	mov	dword ptr [rsp + 8], ecx
	mov	rcx, qword ptr [rsp + 0x4e0]
	mov	qword ptr [rsp], rcx
	movzx	ecx, al
	xor	ebx, ebx
	xor	edi, edi
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x58]
	mov	r8d, ebp
	mov	r9d, r14d
	call	__strftime_internal
	mov	esi, dword ptr [rsp + 0x70]
	test	esi, esi
	cmovns	ebx, esi
	movsxd	rcx, ebx
	cmp	rax, rcx
	mov	rdi, rax
	cmovb	rdi, rcx
	mov	rdx, qword ptr [rsp + 0x78]
	not	rdx
	cmp	rdi, rdx
	jae	.label_54
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_135
	mov	dword ptr [rsp + 0x40], r14d
	mov	qword ptr [rsp + 0x48], rdi
	cmp	rax, rcx
	mov	r12, qword ptr [rsp + 0x68]
	jae	.label_97
	movsxd	rcx, esi
	mov	r14, rcx
	sub	r14, rax
	cmp	ebp, 0x30
	je	.label_140
	cmp	ebp, 0x2b
	jne	.label_71
.label_140:
	xor	ebx, ebx
	cmp	rcx, rax
	je	.label_97
	nop	
.label_147:
	mov	edi, 0x30
	mov	rsi, r12
	call	fputc
	inc	rbx
	cmp	rbx, r14
	jb	.label_147
	jmp	.label_97
.label_564:
	cmp	r10d, 0x45
	je	.label_49
	mov	r9, qword ptr [rsp + 0x58]
	mov	eax, dword ptr [r9 + 0x1c]
	add	eax, 7
	sub	eax, dword ptr [r9 + 0x18]
	movsxd	rdx, eax
	jmp	.label_151
.label_565:
	cmp	r10d, 0x45
	je	.label_49
	mov	r9, qword ptr [rsp + 0x58]
	mov	eax, dword ptr [r9 + 0x18]
	mov	edx, dword ptr [r9 + 0x1c]
	lea	esi, [rax + 6]
	movsxd	rsi, esi
	imul	rdi, rsi, -0x6db6db6d
	shr	rdi, 0x20
	lea	eax, [rdi + rax + 6]
	mov	edi, eax
	shr	edi, 0x1f
	sar	eax, 2
	add	eax, edi
	lea	edi, [rax*8]
	sub	edi, eax
	sub	esi, edi
	add	edx, 7
	sub	edx, esi
	movsxd	rdx, edx
.label_151:
	imul	rax, rdx, -0x6db6db6d
	shr	rax, 0x20
	add	edx, eax
	mov	eax, edx
	shr	eax, 0x1f
	sar	edx, 2
	add	edx, eax
	jmp	.label_64
.label_566:
	cmp	r10d, 0x4f
	je	.label_49
	xor	eax, eax
	mov	r9b, 0x58
	jmp	.label_44
.label_567:
	cmp	r10d, 0x45
	je	.label_174
	cmp	r10d, 0x4f
	je	.label_49
	mov	r9, qword ptr [rsp + 0x58]
	mov	edx, dword ptr [r9 + 0x14]
	cmp	edx, 0xfffff894
	setl	r15b
	add	edx, 0x76c
	mov	r14d, 4
	jmp	.label_60
.label_568:
	mov	qword ptr [rsp + 0x60], r11
	mov	rdi, qword ptr [rsp + 0x28]
	call	strlen
	mov	rbx, rax
	xor	eax, eax
	mov	edx, dword ptr [rsp + 0x70]
	test	edx, edx
	cmovns	eax, edx
	cdqe	
	cmp	rbx, rax
	mov	rsi, rbx
	cmovb	rsi, rax
	mov	rcx, qword ptr [rsp + 0x78]
	not	rcx
	cmp	rsi, rcx
	jae	.label_54
	mov	qword ptr [rsp + 0x48], rsi
	mov	r14, qword ptr [rsp + 0x68]
	test	r14, r14
	je	.label_116
	cmp	rbx, rax
	jae	.label_185
	movsxd	rax, edx
	mov	r15, rax
	sub	r15, rbx
	cmp	ebp, 0x30
	je	.label_189
	cmp	ebp, 0x2b
	jne	.label_191
.label_189:
	xor	ebp, ebp
	cmp	rax, rbx
	je	.label_185
	nop	word ptr cs:[rax + rax]
.label_199:
	mov	edi, 0x30
	mov	rsi, r14
	call	fputc
	inc	rbp
	cmp	rbp, r15
	jb	.label_199
	jmp	.label_185
.label_569:
	test	r10d, r10d
	jne	.label_49
	test	r12b, r12b
	je	.label_202
	mov	r11b, 1
.label_202:
	xor	eax, eax
	mov	r9b, 0x61
	jmp	.label_44
.label_571:
	cmp	r10d, 0x4f
	je	.label_49
	xor	eax, eax
	mov	r9b, 0x63
	jmp	.label_44
.label_572:
	cmp	r10d, 0x45
	je	.label_49
	mov	r9, qword ptr [rsp + 0x58]
	mov	edx, dword ptr [r9 + 0xc]
	jmp	.label_64
.label_573:
	cmp	r10d, 0x45
	je	.label_49
	mov	r9, qword ptr [rsp + 0x58]
	mov	edx, dword ptr [r9 + 0xc]
	jmp	.label_48
.label_574:
	cmp	r10d, 0x45
	je	.label_49
	mov	r9, qword ptr [rsp + 0x58]
	mov	edx, dword ptr [r9 + 0x1c]
	cmp	edx, -1
	setl	r15b
	inc	edx
	mov	r14d, 3
	jmp	.label_51
.label_575:
	cmp	r10d, 0x45
	je	.label_49
	mov	r9, qword ptr [rsp + 0x58]
	mov	edx, dword ptr [r9 + 8]
	jmp	.label_48
.label_576:
	cmp	r10d, 0x45
	mov	eax, dword ptr [rsp + 0x24]
	mov	edx, eax
	mov	r9, qword ptr [rsp + 0x58]
	je	.label_49
.label_48:
	test	ebp, ebp
	mov	eax, 0x5f
	cmove	ebp, eax
.label_64:
	mov	r14d, 2
	jmp	.label_66
.label_577:
	cmp	r10d, 0x45
	je	.label_49
	mov	r9, qword ptr [rsp + 0x58]
	mov	edx, dword ptr [r9 + 0x10]
	cmp	edx, -1
	setl	r15b
	inc	edx
	mov	r14d, 2
	jmp	.label_51
.label_578:
	xor	eax, eax
	mov	edx, dword ptr [rsp + 0x70]
	test	edx, edx
	cmovns	eax, edx
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	r14d, 1
	cmova	r14, rcx
	mov	rcx, qword ptr [rsp + 0x78]
	not	rcx
	cmp	r14, rcx
	jae	.label_54
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_72
	cmp	eax, 2
	mov	r12, qword ptr [rsp + 0x68]
	jb	.label_82
	movsxd	rbx, edx
	lea	r15, [rbx - 1]
	cmp	ebp, 0x30
	je	.label_85
	cmp	ebp, 0x2b
	jne	.label_88
.label_85:
	test	r15, r15
	je	.label_82
	dec	rbx
	nop	word ptr [rax + rax]
.label_98:
	mov	edi, 0x30
	mov	rsi, r12
	call	fputc
	dec	rbx
	jne	.label_98
	jmp	.label_82
.label_580:
	mov	r9, qword ptr [rsp + 0x58]
	imul	edx, dword ptr [r9 + 0x10], 0xb
	sar	edx, 5
	inc	edx
	mov	r14d, 1
	xor	ebx, ebx
	xor	r8d, r8d
	xor	r15d, r15d
	jmp	.label_83
.label_581:
	mov	qword ptr [rsp + 0x60], r11
	mov	rcx, qword ptr [rsp + 0x58]
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
	mov	r15, rcx
	shr	r15, 0x3f
	lea	r12, [rsp + 0x4a7]
	nop	dword ptr [rax]
.label_125:
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
	test	r15, r15
	cmove	eax, ebx
	add	eax, 0x30
	mov	byte ptr [r12 - 1], al
	dec	r12
	add	rcx, 9
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_125
	mov	r14d, 1
	xor	r8d, r8d
	mov	r11, qword ptr [rsp + 0x60]
	mov	r9d, dword ptr [rsp + 0x70]
	mov	rsi, qword ptr [rsp + 0x78]
	jmp	.label_138
.label_582:
	xor	eax, eax
	mov	edx, dword ptr [rsp + 0x70]
	test	edx, edx
	cmovns	eax, edx
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	r14d, 1
	cmova	r14, rcx
	mov	rcx, qword ptr [rsp + 0x78]
	not	rcx
	cmp	r14, rcx
	jae	.label_54
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_72
	cmp	eax, 2
	mov	r12, qword ptr [rsp + 0x68]
	jb	.label_148
	movsxd	rbx, edx
	lea	r15, [rbx - 1]
	cmp	ebp, 0x30
	je	.label_152
	cmp	ebp, 0x2b
	jne	.label_154
.label_152:
	test	r15, r15
	je	.label_148
	dec	rbx
.label_159:
	mov	edi, 0x30
	mov	rsi, r12
	call	fputc
	dec	rbx
	jne	.label_159
	jmp	.label_148
.label_583:
	mov	r9, qword ptr [rsp + 0x58]
	mov	eax, dword ptr [r9 + 0x18]
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
	inc	edx
	mov	r14d, 1
	jmp	.label_66
.label_584:
	cmp	r10d, 0x45
	je	.label_49
	mov	r9, qword ptr [rsp + 0x58]
	mov	edx, dword ptr [r9 + 0x18]
	mov	r14d, 1
	jmp	.label_66
.label_585:
	cmp	r10d, 0x4f
	je	.label_49
	xor	eax, eax
	mov	r9b, 0x78
	jmp	.label_44
.label_586:
	cmp	r10d, 0x45
	jne	.label_146
	xor	eax, eax
	mov	r9b, 0x79
	jmp	.label_44
.label_180:
	mov	qword ptr [rsp + 0x78], r15
	mov	dword ptr [rsp + 0x70], r9d
	jmp	.label_49
.label_155:
	dec	r11d
	mov	r14d, 0x16d
	test	r11b, 3
	jne	.label_182
	movsxd	rax, r11d
	imul	rax, rax, 0x51eb851f
	mov	rsi, rax
	sar	rsi, 0x25
	mov	rdi, rax
	shr	rdi, 0x3f
	add	esi, edi
	imul	esi, esi, 0x64
	sar	rax, 0x27
	add	eax, edi
	imul	eax, eax, 0x190
	cmp	r11d, eax
	sete	al
	movzx	edi, al
	add	edi, 0x16d
	cmp	r11d, esi
	mov	r14d, 0x16e
	cmove	r14d, edi
.label_182:
	lea	esi, [r14 + rbx + 0x17e]
	sub	esi, r9d
	movsxd	rsi, esi
	imul	rdi, rsi, -0x6db6db6d
	shr	rdi, 0x20
	add	edi, esi
	mov	eax, edi
	shr	eax, 0x1f
	sar	edi, 2
	add	edi, eax
	lea	eax, [rdi*8]
	sub	eax, edi
	sub	esi, eax
	lea	r12d, [r14 + rbx + 3]
	sub	r12d, esi
	mov	ebx, 0xffffffff
.label_158:
	cmp	r8d, 0x47
	mov	r11, qword ptr [rsp + 0x60]
	je	.label_201
	cmp	r8d, 0x67
	jne	.label_203
	movsxd	rax, edx
	imul	rax, rax, 0x51eb851f
	mov	rdi, rdx
	mov	rdx, rax
	shr	rdx, 0x3f
	sar	rax, 0x25
	add	eax, edx
	imul	eax, eax, 0x64
	mov	edx, edi
	sub	edx, eax
	add	edx, ebx
	movsxd	rdx, edx
	imul	rax, rdx, 0x51eb851f
	mov	rsi, rax
	shr	rsi, 0x3f
	sar	rax, 0x25
	add	eax, esi
	imul	eax, eax, 0x64
	sub	edx, eax
	mov	r14d, 2
	mov	r9, qword ptr [rsp + 0x58]
	js	.label_204
	xor	r15d, r15d
	jmp	.label_60
.label_170:
	mov	r14, qword ptr [rsp + 0x68]
	mov	r15, qword ptr [rsp + 0x78]
	jmp	.label_57
.label_209:
	mov	r9, qword ptr [rsp + 0x58]
	movsxd	rax, dword ptr [r9 + 0x14]
	cmp	rax, -0x76c
	setl	r15b
	setg	bl
	imul	rdx, rax, 0x51eb851f
	mov	rdi, rdx
	shr	rdi, 0x3f
	sar	rdx, 0x25
	add	edx, edi
	imul	edi, edx, 0x64
	cmp	eax, edi
	sets	al
	and	al, bl
	movzx	eax, al
	sub	edx, eax
	add	edx, 0x13
	mov	r14d, 2
	jmp	.label_60
.label_146:
	mov	r9, qword ptr [rsp + 0x58]
	movsxd	rax, dword ptr [r9 + 0x14]
	imul	rdx, rax, 0x51eb851f
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x25
	add	edx, esi
	imul	esi, edx, 0x64
	mov	edx, eax
	mov	r14d, 2
	sub	edx, esi
	js	.label_69
	xor	r15d, r15d
	jmp	.label_60
.label_201:
	mov	eax, 0xfffff894
	sub	eax, ebx
	cmp	edx, eax
	setl	r15b
	lea	edx, [rbx + rdx + 0x76c]
	mov	r14d, 4
	mov	r9, qword ptr [rsp + 0x58]
	jmp	.label_60
.label_203:
	movsxd	rax, r12d
	imul	rdx, rax, -0x6db6db6d
	shr	rdx, 0x20
	add	eax, edx
	mov	edx, eax
	sar	edx, 2
	shr	eax, 0x1f
	lea	edx, [rdx + rax + 1]
	mov	r14d, 2
	mov	r9, qword ptr [rsp + 0x58]
	jmp	.label_66
.label_174:
	xor	eax, eax
	mov	r9b, 0x59
.label_44:
	xor	edx, edx
	jmp	.label_95
.label_71:
	xor	ebx, ebx
	cmp	rcx, rax
	je	.label_97
	nop	
.label_179:
	mov	edi, 0x20
	mov	rsi, r12
	call	fputc
	inc	rbx
	cmp	rbx, r14
	jb	.label_179
.label_97:
	mov	rax, qword ptr [rsp + 0x60]
	test	al, al
	setne	al
	mov	ecx, dword ptr [rsp + 0x4e8]
	mov	dword ptr [rsp + 8], ecx
	mov	rcx, qword ptr [rsp + 0x4e0]
	mov	qword ptr [rsp], rcx
	movzx	ecx, al
	mov	rdi, r12
	mov	qword ptr [rsp + 0x68], r12
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x58]
	mov	r8d, ebp
	mov	r9d, dword ptr [rsp + 0x40]
	call	__strftime_internal
	mov	rdi, qword ptr [rsp + 0x48]
.label_135:
	mov	r15, qword ptr [rsp + 0x78]
	add	r15, rdi
	mov	r14, qword ptr [rsp + 0x68]
	jmp	.label_57
.label_177:
	mov	rax, qword ptr [rsp + 0x28]
	movzx	edx, byte ptr [rax]
	cmp	edx, 0x2d
	sete	r15b
.label_173:
	mov	r14, rdi
	cmp	r14, 3
	ja	.label_49
	movsxd	rdx, r8d
	imul	rdi, rdx, -0x77777777
	shr	rdi, 0x20
	add	edi, r8d
	mov	ebx, edi
	shr	ebx, 0x1f
	sar	edi, 5
	add	edi, ebx
	imul	rdx, rdx, -0x6e5d4c3b
	shr	rdx, 0x20
	add	edx, r8d
	mov	ebx, edx
	shr	ebx, 0x1f
	sar	edx, 0xb
	add	edx, ebx
	movsxd	rbx, edi
	imul	rdi, rbx, -0x77777777
	shr	rdi, 0x20
	add	edi, ebx
	mov	eax, edi
	shr	eax, 0x1f
	sar	edi, 5
	add	edi, eax
	imul	eax, edi, 0x3c
	imul	edi, ebx, 0x3c
	sub	ebx, eax
	sub	r8d, edi
	jmp	qword ptr [word ptr [+ (r14 * 8) + label_121]]
.label_624:
	imul	edx, edx, 0x64
	add	edx, ebx
	mov	r14d, 5
.label_47:
	mov	r8b, 1
	xor	ebx, ebx
	jmp	.label_83
.label_49:
	mov	qword ptr [rsp + 0x60], r11
	lea	rbx, [r13 + 1]
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_144:
	inc	r12
	movzx	eax, byte ptr [rbx - 1]
	dec	rbx
	cmp	eax, 0x25
	jne	.label_144
	mov	edx, dword ptr [rsp + 0x70]
	test	edx, edx
	mov	eax, edx
	mov	ecx, 0
	cmovs	eax, ecx
	cmp	r12d, eax
	mov	ecx, eax
	cmova	ecx, r12d
	movsxd	rsi, ecx
	mov	rcx, qword ptr [rsp + 0x78]
	not	rcx
	cmp	rsi, rcx
	jae	.label_54
	mov	qword ptr [rsp + 0x48], rsi
	mov	r14, qword ptr [rsp + 0x68]
	test	r14, r14
	je	.label_116
	movsxd	rcx, r12d
	mov	qword ptr [rsp + 0x40], rcx
	cmp	r12d, eax
	mov	r15, r14
	jae	.label_157
	movsxd	r14, edx
	sub	r14, qword ptr [rsp + 0x40]
	cmp	ebp, 0x30
	je	.label_160
	cmp	ebp, 0x2b
	jne	.label_161
.label_160:
	cmp	edx, r12d
	mov	ebp, 0
	je	.label_157
	nop	dword ptr [rax + rax]
.label_167:
	mov	edi, 0x30
	mov	rsi, r15
	call	fputc
	inc	rbp
	cmp	rbp, r14
	jb	.label_167
	jmp	.label_157
.label_161:
	cmp	edx, r12d
	mov	ebp, 0
	je	.label_157
	nop	word ptr cs:[rax + rax]
.label_118:
	mov	edi, 0x20
	mov	rsi, r15
	call	fputc
	inc	rbp
	cmp	rbp, r14
	jb	.label_118
.label_157:
	mov	r14, r15
	mov	rax, qword ptr [rsp + 0x60]
	test	al, 1
	jne	.label_150
	mov	edx, 1
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0x40]
.label_175:
	mov	rcx, r14
	call	fwrite
	jmp	.label_116
.label_150:
	call	__ctype_toupper_loc
	mov	r15, rax
	movsxd	rbp, r12d
	neg	rbp
	nop	word ptr cs:[rax + rax]
.label_186:
	movzx	eax, byte ptr [rbx]
	mov	rcx, qword ptr [r15]
	mov	edi, dword ptr [rcx + rax*4]
	mov	rsi, r14
	call	fputc
	inc	rbx
	inc	rbp
	jne	.label_186
.label_116:
	mov	r15, qword ptr [rsp + 0x78]
	add	r15, qword ptr [rsp + 0x48]
	jmp	.label_57
.label_55:
	xor	eax, eax
	mov	r14d, ecx
	add	r14d, -6
	cmovs	r14d, eax
	mov	r15d, OFFSET FLAT:.str.2_0
	jmp	.label_50
.label_77:
	mov	r14d, 9
	mov	eax, dword ptr [rsp + 0x4e8]
	mov	edx, eax
	mov	dword ptr [rsp + 0x70], 9
	mov	r9, qword ptr [rsp + 0x58]
	jmp	.label_66
.label_204:
	mov	eax, 0xfffff894
	sub	eax, ebx
	mov	esi, edx
	neg	esi
	add	edx, 0x64
	cmp	edi, eax
	jmp	.label_194
.label_69:
	mov	esi, edx
	neg	esi
	add	edx, 0x64
	cmp	eax, 0xfffff894
.label_194:
	cmovl	edx, esi
	xor	r15d, r15d
.label_60:
	test	ebp, ebp
	cmove	ebp, dword ptr [rsp + 0x3c]
	xor	ebx, ebx
	cmp	ebp, 0x2b
	mov	r8d, 0
	jne	.label_83
	cmp	r14d, 2
	mov	eax, 0x63
	mov	edi, 0x270f
	cmove	edi, eax
	cmp	edi, edx
	setb	dil
	cmp	r14d, dword ptr [rsp + 0x70]
	setl	r8b
	or	r8b, dil
	jmp	.label_83
.label_627:
	test	r8d, r8d
	je	.label_208
.label_626:
	imul	edx, edx, 0x2710
	imul	eax, ebx, 0x64
	add	edx, r8d
	add	edx, eax
	mov	r14d, 9
	mov	r8b, 1
	mov	ebx, 0x14
	jmp	.label_83
.label_78:
	mov	eax, dword ptr [rsp + 0x4e8]
	mov	edx, eax
	mov	r14d, edi
	mov	r9, qword ptr [rsp + 0x58]
.label_66:
	mov	r15d, edx
	shr	r15d, 0x1f
.label_51:
	xor	ebx, ebx
	xor	r8d, r8d
.label_83:
	mov	qword ptr [rsp + 0x58], r9
	cmp	r10d, 0x4f
	jne	.label_59
	test	r15b, r15b
	jne	.label_59
	xor	eax, eax
	mov	r9b, cl
	mov	rdx, r14
.label_95:
	mov	dword ptr [rsp + 0x48], eax
	mov	rbx, rdx
	mov	qword ptr [rsp + 0x60], r11
	mov	word ptr [rsp + 0x48b], 0x2520
	test	r10d, r10d
	lea	rcx, [rsp + 0x48d]
	je	.label_63
	mov	byte ptr [rsp + 0x48d], r10b
	lea	rcx, [rsp + 0x48e]
.label_63:
	mov	byte ptr [rcx], r9b
	mov	byte ptr [rcx + 1], 0
	lea	rdi, [rsp + 0x80]
	lea	rdx, [rsp + 0x48b]
	mov	esi, 0x400
	mov	rcx, qword ptr [rsp + 0x58]
	call	strftime
	test	rax, rax
	mov	r14, qword ptr [rsp + 0x68]
	je	.label_75
	lea	rdi, [rax - 1]
	xor	ecx, ecx
	mov	edx, dword ptr [rsp + 0x70]
	test	edx, edx
	cmovns	ecx, edx
	movsxd	rsi, ecx
	cmp	rdi, rsi
	mov	r15, rdi
	cmovb	r15, rsi
	mov	rcx, qword ptr [rsp + 0x78]
	not	rcx
	cmp	r15, rcx
	jae	.label_54
	mov	qword ptr [rsp + 0x30], rax
	test	r14, r14
	mov	r12, r14
	je	.label_74
	cmp	rdi, rsi
	mov	qword ptr [rsp + 0x40], rdi
	setae	al
	test	ebx, ebx
	jne	.label_90
	test	al, al
	jne	.label_90
	movsxd	rax, edx
	mov	rbx, rax
	mov	rcx, qword ptr [rsp + 0x40]
	sub	rbx, rcx
	cmp	ebp, 0x30
	je	.label_96
	cmp	ebp, 0x2b
	jne	.label_100
.label_96:
	xor	ebp, ebp
	cmp	rax, rcx
	je	.label_90
	nop	dword ptr [rax]
.label_106:
	mov	edi, 0x30
	mov	rsi, r12
	call	fputc
	inc	rbp
	cmp	rbp, rbx
	jb	.label_106
	jmp	.label_90
.label_59:
	mov	eax, edx
	neg	eax
	test	r15b, r15b
	cmove	eax, edx
	lea	r12, [rsp + 0x4a7]
	mov	r9d, dword ptr [rsp + 0x70]
	mov	rsi, qword ptr [rsp + 0x78]
	nop	word ptr cs:[rax + rax]
.label_117:
	test	bl, 1
	je	.label_114
	mov	byte ptr [r12 - 1], 0x3a
	dec	r12
.label_114:
	sar	ebx, 1
	mov	edi, eax
	mov	edx, 0xcccccccd
	imul	rdx, rdi
	shr	rdx, 0x23
	lea	edi, [rdx + rdx]
	lea	edi, [rdi + rdi*4]
	mov	ecx, eax
	sub	ecx, edi
	or	ecx, 0x30
	mov	byte ptr [r12 - 1], cl
	dec	r12
	cmp	eax, 9
	mov	eax, edx
	ja	.label_117
	test	ebx, ebx
	mov	eax, edx
	jne	.label_117
.label_138:
	cmp	r14d, r9d
	cmovl	r14d, r9d
	test	r8b, r8b
	je	.label_129
	mov	r8b, 0x2b
.label_129:
	test	r15b, r15b
	mov	bl, 0x2d
	jne	.label_131
	mov	bl, r8b
.label_131:
	cmp	ebp, 0x2d
	jne	.label_132
	test	bl, bl
	mov	rdi, r14
	je	.label_134
	mov	qword ptr [rsp + 0x60], r11
	xor	eax, eax
	test	r9d, r9d
	cmovns	eax, r9d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	r14d, 1
	cmova	r14, rcx
	mov	rcx, rsi
	mov	qword ptr [rsp + 0x78], rsi
	not	rcx
	cmp	r14, rcx
	jae	.label_54
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_143
	mov	byte ptr [rsp + 0x40], bl
	mov	dword ptr [rsp + 0x70], r9d
	cmp	eax, 2
	setb	al
	test	edi, edi
	mov	qword ptr [rsp + 0x48], rdi
	mov	r15, qword ptr [rsp + 0x68]
	jne	.label_130
	test	al, al
	jne	.label_130
	cmp	dword ptr [rsp + 0x70], 1
	je	.label_130
	movsxd	rbx, dword ptr [rsp + 0x70]
	dec	rbx
	nop	dword ptr [rax + rax]
.label_70:
	mov	edi, 0x20
	mov	rsi, r15
	call	fputc
	dec	rbx
	jne	.label_70
.label_130:
	movzx	edi, byte ptr [rsp + 0x40]
	mov	rsi, r15
	call	fputc
	mov	r9d, dword ptr [rsp + 0x70]
	mov	rdi, qword ptr [rsp + 0x48]
.label_143:
	mov	rsi, qword ptr [rsp + 0x78]
	add	rsi, r14
	jmp	.label_43
.label_75:
	mov	r15, qword ptr [rsp + 0x78]
	jmp	.label_57
.label_132:
	mov	rdi, r14
	movsxd	rax, edi
	mov	rcx, r12
	lea	rdx, [rsp + 0x4a7]
	sub	rcx, rdx
	mov	dl, bl
	neg	dl
	sbb	rdx, rdx
	add	rdx, rcx
	add	rdx, rax
	test	edx, edx
	jle	.label_164
	mov	qword ptr [rsp + 0x60], r11
	cmp	ebp, 0x5f
	jne	.label_169
	mov	rax, rsi
	mov	qword ptr [rsp + 0x78], rax
	movsxd	r15, edx
	not	rax
	cmp	r15, rax
	jae	.label_54
	mov	qword ptr [rsp + 0x30], rdx
	mov	byte ptr [rsp + 0x40], bl
	mov	qword ptr [rsp + 0x48], rdi
	mov	dword ptr [rsp + 0x70], r9d
	mov	rbx, qword ptr [rsp + 0x68]
	test	rbx, rbx
	je	.label_176
	test	r15, r15
	mov	r14d, 0
	je	.label_176
	nop	word ptr cs:[rax + rax]
.label_183:
	mov	edi, 0x20
	mov	rsi, rbx
	call	fputc
	inc	r14
	cmp	r14, r15
	jb	.label_183
.label_176:
	mov	rax, qword ptr [rsp + 0x78]
	add	rax, r15
	mov	rsi, rax
	mov	eax, dword ptr [rsp + 0x70]
	mov	rcx, qword ptr [rsp + 0x30]
	sub	eax, ecx
	mov	edx, 0
	cmovg	edx, eax
	mov	al, byte ptr [rsp + 0x40]
	test	al, al
	je	.label_184
	xor	eax, eax
	test	edx, edx
	cmovns	eax, edx
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, rsi
	mov	qword ptr [rsp + 0x78], rsi
	not	rcx
	cmp	rbx, rcx
	mov	rdi, qword ptr [rsp + 0x48]
	jae	.label_54
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_193
	mov	qword ptr [rsp + 0x30], rbx
	mov	qword ptr [rsp + 0x70], rdx
	cmp	eax, 2
	setb	al
	test	edi, edi
	mov	r14, qword ptr [rsp + 0x68]
	jne	.label_107
	test	al, al
	jne	.label_107
	mov	rax, qword ptr [rsp + 0x70]
	movsxd	r15, eax
	xor	ebx, ebx
	dec	r15
	je	.label_107
	nop	word ptr cs:[rax + rax]
.label_122:
	mov	edi, 0x20
	mov	rsi, r14
	call	fputc
	inc	rbx
	cmp	rbx, r15
	jb	.label_122
.label_107:
	movzx	edi, byte ptr [rsp + 0x40]
	mov	rsi, r14
	call	fputc
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0x70]
	mov	rbx, qword ptr [rsp + 0x30]
.label_193:
	mov	rsi, qword ptr [rsp + 0x78]
	add	rsi, rbx
	mov	r9d, edx
	jmp	.label_43
.label_134:
	mov	qword ptr [rsp + 0x60], r11
	jmp	.label_43
.label_164:
	mov	qword ptr [rsp + 0x60], r11
	test	bl, bl
	je	.label_43
	xor	eax, eax
	test	r9d, r9d
	cmovns	eax, r9d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	edx, 1
	cmova	rdx, rcx
	mov	rcx, rsi
	mov	r15, rsi
	not	rcx
	cmp	rdx, rcx
	jae	.label_54
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_136
	mov	qword ptr [rsp + 0x30], rdx
	mov	byte ptr [rsp + 0x40], bl
	mov	dword ptr [rsp + 0x70], r9d
	cmp	eax, 2
	setb	al
	test	edi, edi
	mov	qword ptr [rsp + 0x48], rdi
	mov	rsi, qword ptr [rsp + 0x68]
	jne	.label_73
	test	al, al
	jne	.label_73
	mov	rax, rsi
	movsxd	rbx, dword ptr [rsp + 0x70]
	lea	r14, [rbx - 1]
	cmp	ebp, 0x30
	je	.label_145
	cmp	ebp, 0x2b
	jne	.label_58
.label_145:
	test	r14, r14
	mov	rsi, rax
	je	.label_73
	dec	rbx
	nop	word ptr cs:[rax + rax]
.label_80:
	mov	edi, 0x30
	mov	r14, rsi
	call	fputc
	mov	rsi, r14
	dec	rbx
	jne	.label_80
	jmp	.label_73
.label_169:
	mov	rcx, rsi
	mov	qword ptr [rsp + 0x78], rsi
	not	rcx
	cmp	rax, rcx
	jae	.label_54
	test	bl, bl
	je	.label_86
	xor	eax, eax
	test	r9d, r9d
	cmovns	eax, r9d
	movsxd	r8, eax
	cmp	r8d, 1
	mov	esi, 1
	cmova	rsi, r8
	cmp	rsi, rcx
	jae	.label_54
	mov	r14, qword ptr [rsp + 0x68]
	test	r14, r14
	je	.label_163
	mov	qword ptr [rsp + 0x70], rsi
	mov	qword ptr [rsp + 0x30], rdx
	mov	byte ptr [rsp + 0x40], bl
	cmp	eax, 2
	setb	al
	test	edi, edi
	mov	qword ptr [rsp + 0x48], rdi
	jne	.label_45
	test	al, al
	jne	.label_45
	movsxd	rbx, r9d
	lea	r15, [rbx - 1]
	cmp	ebp, 0x30
	je	.label_205
	cmp	ebp, 0x2b
	jne	.label_53
.label_205:
	test	r15, r15
	je	.label_45
	dec	rbx
.label_113:
	mov	edi, 0x30
	mov	rsi, r14
	call	fputc
	dec	rbx
	jne	.label_113
	jmp	.label_45
.label_100:
	xor	ebp, ebp
	cmp	rax, rcx
	je	.label_90
	nop	
.label_120:
	mov	edi, 0x20
	mov	rsi, r12
	call	fputc
	inc	rbp
	cmp	rbp, rbx
	jb	.label_120
.label_90:
	mov	eax, dword ptr [rsp + 0x48]
	test	al, 1
	jne	.label_133
	mov	rax, qword ptr [rsp + 0x60]
	test	al, 1
	mov	rsi, qword ptr [rsp + 0x40]
	jne	.label_124
	mov	edx, 1
	lea	rdi, [rsp + 0x81]
	mov	rcx, r12
	call	fwrite
	jmp	.label_74
.label_133:
	cmp	qword ptr [rsp + 0x40], 0
	je	.label_74
	call	__ctype_tolower_loc
	mov	r14, rax
	mov	ebx, 1
	sub	rbx, qword ptr [rsp + 0x30]
	lea	rbp, [rsp + 0x81]
	nop	dword ptr [rax + rax]
.label_141:
	movzx	eax, byte ptr [rbp]
	mov	rcx, qword ptr [r14]
	mov	edi, dword ptr [rcx + rax*4]
	mov	rsi, r12
	call	fputc
	inc	rbp
	inc	rbx
	jne	.label_141
	jmp	.label_74
.label_124:
	test	rsi, rsi
	je	.label_74
	call	__ctype_toupper_loc
	mov	r14, rax
	mov	ebx, 1
	sub	rbx, qword ptr [rsp + 0x30]
	lea	rbp, [rsp + 0x81]
	nop	dword ptr [rax + rax]
.label_149:
	movzx	eax, byte ptr [rbp]
	mov	rcx, qword ptr [r14]
	mov	edi, dword ptr [rcx + rax*4]
	mov	rsi, r12
	call	fputc
	inc	rbp
	inc	rbx
	jne	.label_149
.label_74:
	mov	rax, qword ptr [rsp + 0x78]
	add	rax, r15
	mov	r15, rax
	mov	r14, r12
	jmp	.label_57
.label_184:
	mov	r9d, edx
	mov	rdi, qword ptr [rsp + 0x48]
	jmp	.label_43
.label_86:
	mov	r14, qword ptr [rsp + 0x68]
	mov	rcx, qword ptr [rsp + 0x78]
	jmp	.label_156
.label_191:
	xor	ebp, ebp
	cmp	rax, rbx
	je	.label_185
.label_162:
	mov	edi, 0x20
	mov	rsi, r14
	call	fputc
	inc	rbp
	cmp	rbp, r15
	jb	.label_162
.label_185:
	test	r12b, r12b
	je	.label_165
	test	rbx, rbx
	je	.label_116
	call	__ctype_tolower_loc
	mov	r15, rax
	mov	rbp, qword ptr [rsp + 0x28]
.label_171:
	movzx	eax, byte ptr [rbp]
	mov	rcx, qword ptr [r15]
	mov	edi, dword ptr [rcx + rax*4]
	mov	rsi, r14
	call	fputc
	inc	rbp
	dec	rbx
	jne	.label_171
	jmp	.label_116
.label_165:
	mov	rax, qword ptr [rsp + 0x60]
	test	al, al
	je	.label_172
	test	rbx, rbx
	je	.label_116
	call	__ctype_toupper_loc
	mov	r15, rax
	mov	rbp, qword ptr [rsp + 0x28]
	nop	word ptr cs:[rax + rax]
.label_181:
	movzx	eax, byte ptr [rbp]
	mov	rcx, qword ptr [r15]
	mov	edi, dword ptr [rcx + rax*4]
	mov	rsi, r14
	call	fputc
	inc	rbp
	dec	rbx
	jne	.label_181
	jmp	.label_116
.label_88:
	test	r15, r15
	je	.label_82
	nop	word ptr cs:[rax + rax]
.label_187:
	mov	edi, 0x20
	mov	rsi, r12
	call	fputc
	dec	r15
	jne	.label_187
.label_82:
	mov	edi, 0xa
	jmp	.label_188
.label_154:
	test	r15, r15
	je	.label_148
	nop	word ptr cs:[rax + rax]
.label_190:
	mov	edi, 0x20
	mov	rsi, r12
	call	fputc
	dec	r15
	jne	.label_190
.label_148:
	mov	edi, 9
	jmp	.label_188
.label_58:
	test	r14, r14
	mov	rsi, rax
	je	.label_73
.label_196:
	mov	edi, 0x20
	mov	rbx, rsi
	call	fputc
	mov	rsi, rbx
	dec	r14
	jne	.label_196
.label_73:
	movzx	edi, byte ptr [rsp + 0x40]
	mov	qword ptr [rsp + 0x68], rsi
	call	fputc
	mov	r9d, dword ptr [rsp + 0x70]
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0x30]
.label_136:
	mov	rsi, r15
	add	rsi, rdx
	jmp	.label_43
.label_172:
	mov	edx, 1
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rsi, rbx
	jmp	.label_175
.label_208:
	test	ebx, ebx
	je	.label_206
.label_625:
	imul	edx, edx, 0x64
	add	edx, ebx
	mov	r14d, 6
	mov	r8b, 1
	mov	ebx, 4
	jmp	.label_83
.label_53:
	test	r15, r15
	je	.label_45
.label_198:
	mov	edi, 0x20
	mov	rsi, r14
	call	fputc
	dec	r15
	jne	.label_198
.label_45:
	movzx	edi, byte ptr [rsp + 0x40]
	mov	rsi, r14
	call	fputc
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x70]
.label_163:
	mov	rcx, qword ptr [rsp + 0x78]
	add	rcx, rsi
.label_156:
	test	r14, r14
	mov	rax, r14
	movsxd	r14, edx
	je	.label_61
	mov	qword ptr [rsp + 0x48], rdi
	mov	qword ptr [rsp + 0x78], rcx
	xor	ebx, ebx
	test	r14, r14
	mov	r15, rax
	je	.label_127
	nop	
.label_65:
	mov	edi, 0x30
	mov	rsi, r15
	call	fputc
	inc	rbx
	cmp	rbx, r14
	jb	.label_65
	mov	rbx, r14
	jmp	.label_127
.label_61:
	mov	qword ptr [rsp + 0x48], rdi
	mov	qword ptr [rsp + 0x78], rcx
	mov	rbx, r14
	mov	r15, rax
.label_127:
	mov	qword ptr [rsp + 0x68], r15
	mov	rsi, qword ptr [rsp + 0x78]
	add	rsi, rbx
	xor	r9d, r9d
	mov	rdi, qword ptr [rsp + 0x48]
.label_43:
	mov	qword ptr [rsp + 0x78], rsi
	lea	rbx, [rsp + 0x4a7]
	sub	rbx, r12
	xor	eax, eax
	test	r9d, r9d
	cmovns	eax, r9d
	cdqe	
	cmp	rbx, rax
	mov	rdx, rbx
	cmovb	rdx, rax
	mov	rcx, rsi
	not	rcx
	cmp	rdx, rcx
	jae	.label_54
	mov	qword ptr [rsp + 0x70], rdx
	mov	r14, qword ptr [rsp + 0x68]
	test	r14, r14
	je	.label_81
	cmp	rbx, rax
	setae	al
	test	edi, edi
	jne	.label_62
	test	al, al
	jne	.label_62
	movsxd	rax, r9d
	mov	r15, rax
	sub	r15, rbx
	cmp	ebp, 0x30
	je	.label_126
	cmp	ebp, 0x2b
	jne	.label_92
.label_126:
	xor	ebp, ebp
	cmp	rax, rbx
	je	.label_62
	nop	
.label_46:
	mov	edi, 0x30
	mov	rsi, r14
	call	fputc
	inc	rbp
	cmp	rbp, r15
	jb	.label_46
	jmp	.label_62
.label_92:
	xor	ebp, ebp
	cmp	rax, rbx
	je	.label_62
	nop	
.label_103:
	mov	edi, 0x20
	mov	rsi, r14
	call	fputc
	inc	rbp
	cmp	rbp, r15
	jb	.label_103
.label_62:
	mov	rax, qword ptr [rsp + 0x60]
	test	al, al
	je	.label_104
	lea	rax, [rsp + 0x4a7]
	cmp	rax, r12
	je	.label_81
	call	__ctype_toupper_loc
	mov	rbx, rax
	mov	rax, qword ptr [rsp + 0x18]
	lea	rbp, [rax + r12]
	nop	dword ptr [rax]
.label_115:
	movzx	eax, byte ptr [r12]
	mov	rcx, qword ptr [rbx]
	mov	edi, dword ptr [rcx + rax*4]
	mov	rsi, r14
	call	fputc
	inc	r12
	inc	rbp
	jne	.label_115
	jmp	.label_81
.label_104:
	mov	edx, 1
	mov	rdi, r12
	mov	rsi, rbx
	mov	rcx, r14
	call	fwrite
.label_81:
	mov	r15, qword ptr [rsp + 0x78]
	add	r15, qword ptr [rsp + 0x70]
	jmp	.label_57
.label_195:
	test	r15, r15
	je	.label_123
.label_128:
	mov	edi, 0x20
	mov	rsi, r12
	call	fputc
	dec	r15
	jne	.label_128
.label_123:
	movsx	edi, byte ptr [r13]
.label_188:
	mov	rsi, r12
	mov	qword ptr [rsp + 0x68], r12
	call	fputc
.label_72:
	mov	r15, qword ptr [rsp + 0x78]
	add	r15, r14
	mov	r14, qword ptr [rsp + 0x68]
	nop	word ptr cs:[rax + rax]
.label_57:
	mov	al, byte ptr [r13 + 1]
	inc	r13
	mov	r9d, 0xffffffff
	test	al, al
	jne	.label_137
	jmp	.label_139
.label_54:
	xor	r15d, r15d
.label_139:
	mov	rax, r15
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
	#Procedure 0x403e20
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
	je	.label_210
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
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
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	call	getopt_long
	cmp	eax, 0x68
	je	.label_212
	cmp	eax, 0x76
	jne	.label_211
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
.label_212:
	xor	edi, edi
	call	rbx
.label_211:
	mov	dword ptr [dword ptr [rip + opterr]],  ebp
	mov	dword ptr [dword ptr [rip + optind]],  0
	add	rsp, 0xd0
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403f20

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
	je	.label_216
	mov	rcx, qword ptr [rsp + 0xf0]
	cmp	eax, 0x68
	je	.label_217
	cmp	eax, 0x76
	je	.label_214
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	jmp	.label_215
.label_217:
	xor	edi, edi
.label_215:
	call	rcx
.label_216:
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
	#Procedure 0x404030

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_219
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_220
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_220
	mov	esi, OFFSET FLAT:.str.2_1
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_218
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_218:
	mov	rbx, r14
.label_220:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_219:
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
	#Procedure 0x4040e0
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
	#Procedure 0x404120
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
	#Procedure 0x404130
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
	#Procedure 0x404140
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
	#Procedure 0x404180
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
	#Procedure 0x4041a0
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_221
	test	rdx, rdx
	je	.label_221
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_221:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4041d0
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
	.align	32
	#Procedure 0x404250

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
.label_231:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_293
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, r13
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_297]]
.label_518:
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
.label_519:
	mov	byte ptr [rsp + 0x69], r8b
	mov	r13, rbp
	test	r12b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0xa0]
	jne	.label_314
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_314
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_338:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_329
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_329:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_338
.label_314:
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
	jmp	.label_227
.label_511:
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	dil, al
	xor	esi, esi
	jmp	.label_227
.label_514:
	mov	al, 1
.label_512:
	mov	r12b, 1
.label_515:
	test	r12b, 1
	mov	cl, 1
	je	.label_249
	mov	cl, al
.label_249:
	mov	al, cl
.label_513:
	mov	r9d, 2
	test	r12b, 1
	jne	.label_252
	test	r10, r10
	je	.label_257
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_258
.label_252:
	xor	ecx, ecx
	jmp	.label_258
.label_516:
	mov	r9d, 5
	test	r12b, 1
	jne	.label_267
	test	r10, r10
	je	.label_273
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_276
.label_517:
	mov	dil, 1
	mov	r9d, 5
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	sil, 1
	jmp	.label_227
.label_257:
	mov	ecx, 1
.label_258:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0xb8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xc8], rcx
	mov	dil, al
	mov	sil, r12b
	jmp	.label_227
.label_267:
	xor	eax, eax
	jmp	.label_276
.label_273:
	mov	eax, 1
.label_276:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	dil, 1
	mov	sil, r12b
	nop	dword ptr [rax + rax]
.label_227:
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
	jmp	.label_342
.label_245:
	inc	rdi
.label_342:
	cmp	rbp, -1
	je	.label_317
	cmp	rdi, rbp
	jne	.label_344
	jmp	.label_346
	nop	word ptr cs:[rax + rax]
.label_317:
	mov	r13, -1
	cmp	byte ptr [r11 + rdi], 0
	je	.label_228
.label_344:
	test	r12b, r12b
	je	.label_234
	mov	rax, qword ptr [rsp + 0xc8]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_236
	cmp	rbp, -1
	jne	.label_236
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
.label_236:
	cmp	rbx, rbp
	jbe	.label_264
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_265
	nop	word ptr [rax + rax]
.label_234:
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_265
.label_264:
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
	jne	.label_289
	cmp	byte ptr [rsp + 0xc7], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	je	.label_265
	jmp	.label_240
.label_289:
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	nop	word ptr cs:[rax + rax]
.label_265:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_306
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_310]]
.label_544:
	test	rdi, rdi
	jne	.label_230
	jmp	.label_316
.label_548:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_318
	test	rdi, rdi
	jne	.label_321
	cmp	rbp, 1
	je	.label_316
	xor	r13d, r13d
	jmp	.label_225
.label_537:
	cmp	byte ptr [rsp + 0xb6], 0
	je	.label_325
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_240
	cmp	r9d, 2
	jne	.label_330
	mov	al, r14b
	and	al, 1
	jne	.label_331
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_335
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_335:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_248
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_248:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_302
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_302:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r14b, 1
	mov	rcx, rax
	jmp	.label_239
.label_538:
	mov	bl, 0x62
	jmp	.label_235
.label_539:
	mov	cl, 0x74
	jmp	.label_233
.label_540:
	mov	bl, 0x76
	jmp	.label_235
.label_541:
	mov	bl, 0x66
	jmp	.label_235
.label_542:
	mov	cl, 0x72
	jmp	.label_233
.label_545:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	cmp	r9d, 2
	jne	.label_254
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_260
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
	jae	.label_266
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_266:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_285
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_285:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_291
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_291:
	add	qword ptr [rsp + 0xf0], 3
	xor	r14d, r14d
.label_254:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_225
.label_546:
	cmp	r9d, 5
	je	.label_298
	cmp	r9d, 2
	jne	.label_230
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_230
	jmp	.label_303
.label_547:
	cmp	r9d, 2
	jne	.label_305
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_307
	jmp	.label_311
.label_306:
	mov	qword ptr [rsp + 0x30], r9
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x48], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_312
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
.label_246:
	and	r13b, 1
	mov	cl, r13b
	or	cl, byte ptr [rsp + 0x6b]
	cmp	rax, 1
	mov	r10, qword ptr [rsp + 0x48]
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r9, qword ptr [rsp + 0x30]
	ja	.label_326
	test	cl, cl
	je	.label_326
	xor	eax, eax
	jmp	.label_225
.label_318:
	test	rdi, rdi
	jne	.label_341
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_341
.label_316:
	mov	dl, 1
.label_543:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_333
	xor	eax, eax
	mov	r13b, dl
	jmp	.label_225
.label_325:
	cmp	dword ptr [rsp + 0x5c], 0
	jne	.label_245
	jmp	.label_230
.label_305:
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r15b
	je	.label_233
.label_307:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_237
.label_233:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	bl, cl
	je	.label_241
.label_235:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xb6], 0
	mov	r13d, 0
	je	.label_225
	jmp	.label_250
.label_312:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_251
	mov	rbp, rdi
	mov	rdi, r11
	mov	rbx, r11
	call	strlen
	mov	rdi, rbp
	mov	r11, rbx
	mov	rbp, rax
.label_251:
	mov	qword ptr [rsp + 0x40], rbp
	lea	rax, [r11 + rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	r13b, 1
	xor	eax, eax
	lea	rbx, [rsp + 0x100]
.label_315:
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
	je	.label_284
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x48]
	movabs	rsi, 0x20000002b
	je	.label_288
	cmp	rbp, -2
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_292
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_238
	mov	rax, qword ptr [rsp + 0xd8]
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rax, [rcx + rax]
	mov	ecx, 1
.label_304:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_301
	bt	rsi, rdx
	jb	.label_295
.label_301:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_304
.label_238:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_290
	xor	r13d, r13d
.label_290:
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
	je	.label_315
	jmp	.label_246
.label_341:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_225
.label_298:
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_230
	lea	rcx, [rdi + 2]
	cmp	rcx, rbp
	jae	.label_230
	movzx	eax, byte ptr [rdi + r11 + 1]
	cmp	eax, 0x3f
	jne	.label_230
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_287
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_339
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_256
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_222
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rsi], 0x3f
.label_222:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_232
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_232:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_243
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_243:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_229
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x3f
.label_229:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_225
.label_230:
	xor	eax, eax
	xor	r13d, r13d
.label_225:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_269
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_272
	jmp	.label_277
	nop	word ptr [rax + rax]
.label_269:
	cmp	byte ptr [rsp + 0xc5], 0
	je	.label_277
.label_272:
	mov	cl, r15b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r15b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_280
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_286
	nop	word ptr cs:[rax + rax]
.label_277:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
.label_286:
	mov	bl, r15b
	je	.label_237
	jmp	.label_250
.label_280:
	mov	bl, r15b
.label_250:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_240
	cmp	r9d, 2
	jne	.label_294
	mov	al, r14b
	and	al, 1
	jne	.label_294
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_283
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_283:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_319
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_319:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_309
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_309:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_294:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_320
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_320:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_334
.label_321:
	xor	r13d, r13d
	jmp	.label_225
.label_326:
	add	rax, rdi
	mov	qword ptr [rsp + 0xd8], rax
	xor	eax, eax
	jmp	.label_327
	nop	word ptr [rax + rax]
.label_322:
	inc	qword ptr [rsp + 0xf0]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_327:
	test	cl, cl
	je	.label_340
	mov	edx, dword ptr [rsp + 0xec]
	test	dl, 1
	je	.label_270
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_343
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
.label_343:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_270
	nop	word ptr [rax + rax]
.label_340:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_240
	cmp	r9d, 2
	jne	.label_244
	mov	al, r14b
	and	al, 1
	jne	.label_244
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_247
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_247:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_259
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_259:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_296
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_296:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_244:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_279
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_279:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_282
	mov	dl, r15b
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_282:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_299
	mov	dl, r15b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_299:
	add	qword ptr [rsp + 0xf0], 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_270:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xd8], rdx
	jbe	.label_237
	test	r14b, 1
	je	.label_324
	mov	bl, al
	and	bl, 1
	jne	.label_324
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_328
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_328:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_313
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
	mov	rdi, rbx
.label_313:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_324:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_322
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], r15b
	mov	rdi, rbx
	jmp	.label_322
	nop	dword ptr [rax]
.label_237:
	test	r14b, 1
	je	.label_332
	and	al, 1
	jne	.label_332
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_337
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_337:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_345
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_345:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_332:
	mov	bl, r15b
.label_334:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_275
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
.label_275:
	inc	qword ptr [rsp + 0xf0]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	mov	r8b, r13b
	jmp	.label_245
.label_330:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_239
.label_331:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_239:
	cmp	rcx, r10
	jae	.label_255
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_255:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r15b, 0x30
	cmp	r9d, 2
	je	.label_262
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_271
	mov	dl, byte ptr [r11 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_274
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_278
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
.label_278:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_281
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
.label_281:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_225
.label_262:
	xor	r13d, r13d
	jmp	.label_225
.label_271:
	xor	r13d, r13d
	jmp	.label_225
.label_274:
	xor	r13d, r13d
	jmp	.label_225
.label_288:
	xor	r13d, r13d
.label_284:
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_246
.label_292:
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x38]
	cmp	rbp, rcx
	jbe	.label_300
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
.label_253:
	cmp	byte ptr [r11 + rcx], 0
	je	.label_223
	lea	rcx, [rax + rdi + 1]
	inc	rax
	cmp	rcx, rbp
	jb	.label_253
	xor	r13d, r13d
	jmp	.label_246
.label_300:
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_246
.label_223:
	xor	r13d, r13d
	jmp	.label_246
.label_287:
	xor	r13d, r13d
	jmp	.label_225
.label_339:
	xor	r13d, r13d
	jmp	.label_225
	nop	dword ptr [rax]
.label_346:
	mov	r13, rdi
.label_228:
	cmp	r9d, 2
	setne	al
	cmp	qword ptr [rsp + 0xf0], 0
	setne	dl
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_323
	or	al, dl
	je	.label_263
.label_323:
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
	je	.label_224
	or	al, dl
	jne	.label_224
	test	r8b, 1
	jne	.label_226
	cmp	qword ptr [rsp + 0x90], 0
	je	.label_224
	test	r10, r10
	mov	r15d, r9d
	mov	al, bl
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0x90]
	je	.label_231
.label_224:
	mov	rdx, qword ptr [rsp + 0xb8]
	test	rdx, rdx
	je	.label_242
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_242
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_242
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_261:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_336
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_336:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_261
.label_242:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_268
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_268
.label_333:
	mov	r9d, 2
	jmp	.label_240
.label_295:
	mov	r9d, 2
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	jmp	.label_240
.label_263:
	mov	rbp, r13
	jmp	.label_240
.label_241:
	mov	r9d, 2
.label_240:
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
.label_308:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_268:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_226:
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
	jmp	.label_308
.label_260:
	mov	r9d, 2
	jmp	.label_240
.label_311:
	mov	r9d, 2
	jmp	.label_240
.label_303:
	mov	r9d, 2
	jmp	.label_240
.label_256:
	mov	r9d, 5
	jmp	.label_240
.label_293:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4053e0
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
	.align	32
	#Procedure 0x4054b0
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
	je	.label_347
	mov	qword ptr [rax], rbx
.label_347:
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
	#Procedure 0x4055b0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_348
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_351:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_351
.label_348:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_352
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_349]], OFFSET FLAT:slot0
.label_352:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_350
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_350:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405650
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x405660

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
	js	.label_353
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_356
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_359
.label_356:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_355
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
	jne	.label_354
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_354:
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
.label_359:
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
	ja	.label_357
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_358
	mov	rdi, rbx
	call	free
.label_358:
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
.label_357:
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
.label_353:
	call	abort
.label_355:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405830
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405840
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
	.align	32
	#Procedure 0x405860
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
	.align	32
	#Procedure 0x405880
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
	je	.label_360
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
.label_360:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x4058f0
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
	je	.label_361
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
.label_361:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405960
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
	je	.label_362
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
.label_362:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4059d0
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
	je	.label_363
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
.label_363:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405a40
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_364]]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_365]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_366]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
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
	.align	32
	#Procedure 0x405ab0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx,  qword ptr [word ptr [rip + label_364]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_365]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_366]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
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
	.align	32
	#Procedure 0x405b20

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_364]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_365]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_366]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
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
	.align	32
	#Procedure 0x405b80
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_364]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_365]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_366]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
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
	.align	32
	#Procedure 0x405be0

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
	je	.label_367
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
.label_367:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x405c90
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_364]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_365]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_366]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_368
	test	rdx, rdx
	je	.label_368
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_368:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x405d00
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_364]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_365]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_366]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_369
	test	rdx, rdx
	je	.label_369
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_369:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405d70
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_364]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_365]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_366]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_370
	test	rsi, rsi
	je	.label_370
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_370:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405de0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_364]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_365]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_366]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_371
	test	rsi, rsi
	je	.label_371
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
.label_371:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405e50
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e60
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
	.align	32
	#Procedure 0x405e80
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ea0

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
	.align	32
	#Procedure 0x405ec0

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
	jne	.label_373
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_374
	cmp	ecx, 0x55
	jne	.label_372
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_372
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_372
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x2d
	jne	.label_372
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	jne	.label_372
	cmp	byte ptr [rax + 5], 0
	jne	.label_372
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_373
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_373
.label_374:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_372
	movzx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x31
	jne	.label_372
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	jne	.label_372
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x30
	jne	.label_372
	movzx	ecx, byte ptr [rax + 5]
	cmp	ecx, 0x33
	jne	.label_372
	movzx	ecx, byte ptr [rax + 6]
	cmp	ecx, 0x30
	jne	.label_372
	cmp	byte ptr [rax + 7], 0
	je	.label_375
.label_372:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:.str.10
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_373:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_375:
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_373
	mov	eax, OFFSET FLAT:.str.18_0
	jmp	.label_373
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405fb0

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
	je	.label_382
	mov	edx, OFFSET FLAT:.str_6
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_381
.label_382:
	mov	edx, OFFSET FLAT:.str.1_3
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_381:
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
	ja	.label_377
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_378]]
.label_638:
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
.label_377:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	jmp	.label_376
.label_639:
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
.label_640:
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
.label_641:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_383
.label_642:
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
	jmp	.label_385
.label_643:
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
	jmp	.label_380
.label_644:
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
.label_380:
	mov	qword ptr [rsp + 0x10], rdi
.label_385:
	mov	qword ptr [rsp + 8], rsi
.label_383:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_384
.label_646:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_376:
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
	jmp	.label_379
.label_645:
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
.label_379:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_384:
	call	__fprintf_chk
.label_637:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4062a0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_386:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_386
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4062d0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_389:
	cmp	r10d, 0x28
	ja	.label_387
	movsxd	r11, r10d
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_388
	nop	word ptr cs:[rax + rax]
.label_387:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_388:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_390
	inc	r9
	cmp	r9, 0xa
	jb	.label_389
.label_390:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406330
	.globl version_etc
	.type version_etc, @function
version_etc:

	sub	rsp, 0x128
	test	al, al
	je	.label_391
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_391:
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
.label_395:
	cmp	r8d, 0x28
	ja	.label_392
	movsxd	r10, r8d
	add	r10, qword ptr [rsp + 0xc0]
	add	r8d, 8
	mov	dword ptr [rsp + 0xb0], r8d
	jmp	.label_394
	nop	
.label_392:
	mov	r10, qword ptr [rsp + 0xb8]
	lea	rax, [r10 + 8]
	mov	qword ptr [rsp + 0xb8], rax
.label_394:
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8 + 0xd0], rax
	test	rax, rax
	je	.label_393
	inc	r9
	cmp	r9, 0xa
	jb	.label_395
.label_393:
	lea	r8, [rsp + 0xd0]
	call	version_etc_arn
	add	rsp, 0x128
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406430
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
	#Procedure 0x4064b0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_396
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_397
	test	rax, rax
	je	.label_396
.label_397:
	pop	rbx
	ret	
.label_396:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4064f0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_398
	test	rax, rax
	je	.label_399
.label_398:
	pop	rbx
	ret	
.label_399:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406510
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_400
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_401
	test	rbx, rbx
	jne	.label_401
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_401:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_402
	test	rax, rax
	je	.label_400
.label_402:
	pop	rbx
	ret	
.label_400:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406560

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_403
	test	rbx, rbx
	jne	.label_403
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_403:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_405
	test	rax, rax
	je	.label_404
.label_405:
	pop	rbx
	ret	
.label_404:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x406590
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_409
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_410
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_406
.label_409:
	test	rcx, rcx
	jne	.label_412
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_412:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_411
.label_406:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_407
	test	rbx, rbx
	jne	.label_407
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_407:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_408
	test	rax, rax
	je	.label_410
.label_408:
	pop	rbx
	ret	
.label_410:
	call	xalloc_die
.label_411:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406630
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_413
	test	rax, rax
	je	.label_414
.label_413:
	pop	rbx
	ret	
.label_414:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406650
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_417
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_419
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_416
	call	free
	xor	eax, eax
	jmp	.label_418
.label_417:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_415
	mov	qword ptr [rsi], rbx
.label_416:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_418
	test	rax, rax
	je	.label_415
.label_418:
	pop	rbx
	ret	
.label_415:
	call	xalloc_die
.label_419:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4066c0
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
	je	.label_421
	test	r14, r14
	je	.label_420
.label_421:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_420:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406700
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_422
	call	rpl_calloc
	test	rax, rax
	je	.label_422
	pop	rcx
	ret	
.label_422:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406730

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
	je	.label_423
	test	r15, r15
	je	.label_424
.label_423:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_424:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406770
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
	je	.label_426
	test	r15, r15
	je	.label_425
.label_426:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_425:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4067c0

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
	#Procedure 0x4067f0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_427
	test	rsi, rsi
	mov	ecx, 1
	je	.label_428
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_428
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_427:
	mov	ecx, 1
.label_428:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406840

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_429
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_430
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_429
.label_430:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_429
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_431
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_431:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_429:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x4068c0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_432
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_432
	test	byte ptr [rbx + 1], 1
	je	.label_432
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_432:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406900

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
	jne	.label_433
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_433
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_434
.label_433:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_434:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_435
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_435:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406970

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
	je	.label_436
	cmp	r15, -2
	jb	.label_436
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_436
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_436:
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
	#Procedure 0x4069d0
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
	jle	.label_438
	add	rax, rbx
	nop	dword ptr [rax]
.label_437:
	movzx	ecx, byte ptr [rax - 1]
	cmp	ecx, 0x20
	jne	.label_438
	mov	byte ptr [rax - 1], 0
	dec	rax
	cmp	rbx, rax
	jb	.label_437
.label_438:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x406a30

	.globl read_utmp
	.type read_utmp, @function
read_utmp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14d, ecx
	mov	qword ptr [rsp + 0x10], rdx
	mov	qword ptr [rsp + 8], rsi
	call	utmpxname
	call	setutxent
	call	getutxent
	mov	rbx, rax
	xor	ebp, ebp
	test	rbx, rbx
	mov	r12d, 0
	je	.label_445
	mov	r13d, r14d
	and	r13d, 2
	and	r14d, 1
	xor	ebp, ebp
	xor	r12d, r12d
	xor	r15d, r15d
	jmp	.label_448
.label_440:
	cmp	rbp, r15
	jne	.label_441
	test	r12, r12
	je	.label_442
	movabs	rax, 0x38e38e38e38e38
	cmp	rbp, rax
	jae	.label_446
	mov	rax, rbp
	shr	rax, 1
	lea	r15, [rbp + rax + 1]
	jmp	.label_447
.label_442:
	test	rbp, rbp
	mov	r15, rbp
	mov	eax, 1
	cmove	r15, rax
	movabs	rax, 0x55555555555556
	cmp	r15, rax
	jae	.label_439
.label_447:
	mov	rax, r15
	shl	rax, 7
	lea	rsi, [rax + rax*2]
	mov	rdi, r12
	call	xrealloc
	mov	r12, rax
.label_441:
	lea	rdi, [rbp + rbp*2]
	inc	rbp
	shl	rdi, 7
	add	rdi, r12
	mov	edx, 0x180
	mov	rsi, rbx
	call	memcpy
	jmp	.label_444
	nop	word ptr cs:[rax + rax]
.label_448:
	cmp	byte ptr [rbx + 0x2c], 0
	je	.label_450
	movzx	eax, word ptr [rbx]
	cmp	eax, 7
	sete	al
	jmp	.label_443
	nop	word ptr cs:[rax + rax]
.label_450:
	xor	eax, eax
.label_443:
	test	r13d, r13d
	je	.label_449
	test	al, al
	je	.label_444
.label_449:
	test	r14d, r14d
	je	.label_440
	xor	al, 1
	jne	.label_440
	mov	edi, dword ptr [rbx + 4]
	test	edi, edi
	jle	.label_440
	xor	esi, esi
	call	kill
	test	eax, eax
	jns	.label_440
	call	__errno_location
	cmp	dword ptr [rax], 3
	jne	.label_440
.label_444:
	call	getutxent
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_448
.label_445:
	call	endutxent
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], rbp
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax], r12
	xor	eax, eax
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_446:
	call	xalloc_die
.label_439:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406bc0
	.globl tzalloc
	.type tzalloc, @function
tzalloc:

	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	xor	r15d, r15d
	test	r14, r14
	je	.label_451
	mov	rdi, r14
	call	strlen
	mov	r15, rax
	inc	r15
.label_451:
	lea	rax, [r15 + 0x11]
	and	rax, 0xfffffffffffffff8
	cmp	r15, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_452
	mov	qword ptr [rbx], 0
	test	r14, r14
	setne	byte ptr [rbx + 8]
	mov	byte ptr [rbx + 9], 0
	je	.label_452
	mov	r12, rbx
	add	r12, 9
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, r15
	call	memcpy
	mov	byte ptr [r12 + r15], 0
.label_452:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x406c40
	.globl tzfree
	.type tzfree, @function
tzfree:

	push	rbx
	cmp	rdi, 2
	jb	.label_453
	nop	word ptr [rax + rax]
.label_454:
	mov	rbx, qword ptr [rdi]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_454
.label_453:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406c70
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
	je	.label_458
	mov	rdi, rbx
	call	set_tz
	mov	r14, rax
	test	r14, r14
	je	.label_457
	mov	rdi, rbp
	mov	rsi, r15
	call	localtime_r
	mov	bpl, 1
	test	rax, rax
	je	.label_455
	mov	rdi, rbx
	mov	rsi, r15
	call	save_abbr
	mov	bpl, al
	xor	bpl, 1
.label_455:
	mov	rdi, r14
	call	revert_tz
	xor	ecx, ecx
	xor	al, 1
	cmovne	r15, rcx
	test	bpl, bpl
	cmovne	r15, rcx
	mov	rax, r15
	jmp	.label_456
.label_458:
	mov	rdi, rbp
	mov	rsi, r15
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	gmtime_r
.label_457:
	xor	eax, eax
.label_456:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406d00

	.globl set_tz
	.type set_tz, @function
set_tz:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	mov	edi, OFFSET FLAT:.str_7
	call	getenv
	mov	r15, rax
	test	r15, r15
	mov	bl, byte ptr [r14 + 8]
	je	.label_464
	test	bl, bl
	je	.label_466
	lea	rdi, [r14 + 9]
	mov	rsi, r15
	call	strcmp
	mov	ecx, eax
	mov	eax, 1
	test	ecx, ecx
	je	.label_463
.label_466:
	mov	rdi, r15
	call	strlen
	mov	r12, rax
	inc	r12
	mov	bpl, 1
	jmp	.label_460
.label_464:
	xor	ebp, ebp
	mov	eax, 1
	test	bl, bl
	mov	r12d, 0
	je	.label_463
.label_460:
	lea	rax, [r12 + 0x11]
	and	rax, 0xfffffffffffffff8
	cmp	r12, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	mov	r13, rax
	xor	eax, eax
	test	r13, r13
	je	.label_463
	mov	qword ptr [r13], 0
	mov	byte ptr [r13 + 8], bpl
	mov	byte ptr [r13 + 9], 0
	test	bpl, bpl
	je	.label_462
	lea	rbp, [r13 + 9]
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, r12
	call	memcpy
	mov	byte ptr [rbp + r12], 0
.label_462:
	test	bl, bl
	je	.label_459
	add	r14, 9
	mov	edi, OFFSET FLAT:.str_7
	mov	edx, 1
	mov	rsi, r14
	call	setenv
	jmp	.label_465
.label_459:
	mov	edi, OFFSET FLAT:.str_7
	call	unsetenv
.label_465:
	test	eax, eax
	je	.label_468
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	cmp	r13, 2
	jb	.label_467
	nop	dword ptr [rax]
.label_461:
	mov	rbx, qword ptr [r13]
	mov	rdi, r13
	call	free
	test	rbx, rbx
	mov	r13, rbx
	jne	.label_461
.label_467:
	mov	dword ptr [r14], ebp
	xor	eax, eax
	jmp	.label_463
.label_468:
	call	tzset
	mov	rax, r13
.label_463:
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
	#Procedure 0x406e40

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
	mov	r14b, 1
	test	rbx, rbx
	je	.label_469
	cmp	r15, rbx
	ja	.label_476
	lea	rax, [r15 + 0x38]
	cmp	rbx, rax
	jb	.label_469
.label_476:
	mov	ebp, OFFSET FLAT:.str_0
	cmp	byte ptr [rbx], 0
	je	.label_478
	lea	rbp, [r12 + 9]
	jmp	.label_470
.label_475:
	mov	rax, qword ptr [r12]
	lea	rbp, [rax + 9]
	test	rax, rax
	cmove	rbp, rcx
	cmovne	r12, rax
.label_470:
	lea	r13, [r12 + 9]
.label_471:
	mov	rdi, rbp
	mov	rsi, rbx
	call	strcmp
	test	eax, eax
	je	.label_478
	cmp	byte ptr [rbp], 0
	jne	.label_479
	cmp	rbp, r13
	jne	.label_480
	cmp	byte ptr [r12 + 8], 0
	je	.label_481
.label_479:
	mov	rdi, rbp
	call	strlen
	lea	rcx, [rax + rbp + 1]
	cmp	byte ptr [rax + rbp + 1], 0
	mov	rbp, rcx
	jne	.label_471
	jmp	.label_475
.label_481:
	mov	rbp, r13
.label_480:
	mov	rdi, rbx
	call	strlen
	lea	rdx, [rax + 1]
	mov	rcx, rbp
	sub	rcx, r13
	mov	rsi, rcx
	not	rsi
	cmp	rdx, rsi
	jbe	.label_477
	call	__errno_location
	mov	dword ptr [rax], 0xc
.label_474:
	xor	r14d, r14d
	jmp	.label_469
.label_477:
	add	rcx, rdx
	cmp	rcx, 0x76
	ja	.label_472
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rbx, rdx
	call	memcpy
	mov	byte ptr [rbp + rbx], 0
	mov	qword ptr [r15 + 0x30], rbp
	jmp	.label_469
.label_472:
	add	rax, 0x12
	and	rax, 0xfffffffffffffff8
	cmp	rdx, 0x77
	mov	r13, rdx
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	test	rax, rax
	je	.label_473
	mov	qword ptr [rax], 0
	mov	word ptr [rax + 8], 1
	mov	rbp, rax
	add	rbp, 9
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, r13
	mov	rbx, rax
	call	memcpy
	mov	byte ptr [rbx + r13 + 9], 0
	mov	qword ptr [r12], rbx
	mov	byte ptr [rbx + 8], 0
.label_478:
	mov	qword ptr [r15 + 0x30], rbp
.label_469:
	mov	al, r14b
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_473:
	mov	qword ptr [r12], 0
	jmp	.label_474
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406fb0

	.globl revert_tz
	.type revert_tz, @function
revert_tz:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	rbp, rdi
	mov	r12b, 1
	cmp	rbp, 1
	je	.label_484
	call	__errno_location
	mov	r14, rax
	mov	r15d, dword ptr [r14]
	cmp	byte ptr [rbp + 8], 0
	je	.label_483
	lea	rsi, [rbp + 9]
	mov	edi, OFFSET FLAT:.str_7
	mov	edx, 1
	call	setenv
	jmp	.label_482
.label_483:
	mov	edi, OFFSET FLAT:.str_7
	call	unsetenv
.label_482:
	test	eax, eax
	je	.label_486
	mov	r15d, dword ptr [r14]
	xor	r12d, r12d
	jmp	.label_487
.label_486:
	call	tzset
	mov	r12b, 1
.label_487:
	cmp	rbp, 2
	jb	.label_485
	nop	
.label_488:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbp
	call	free
	test	rbx, rbx
	mov	rbp, rbx
	jne	.label_488
.label_485:
	mov	dword ptr [r14], r15d
.label_484:
	mov	al, r12b
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407040

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
	je	.label_489
	mov	rdi, rbx
	call	set_tz
	mov	r14, rax
	test	r14, r14
	je	.label_490
	mov	rdi, r15
	call	mktime
	mov	qword ptr [rsp + 0x38], rax
	cmp	rax, -1
	jne	.label_493
	lea	rdi, [rsp + 0x38]
	lea	rsi, [rsp]
	call	localtime_r
	test	rax, rax
	je	.label_491
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	xor	rax, qword ptr [r15]
	xor	rcx, qword ptr [r15 + 8]
	mov	edx, ecx
	or	edx, eax
	shr	rax, 0x20
	or	edx, eax
	shr	rcx, 0x20
	mov	rax, qword ptr [rsp + 0x10]
	xor	rax, qword ptr [r15 + 0x10]
	mov	esi, eax
	or	esi, ecx
	or	esi, edx
	shr	rax, 0x20
	or	eax, esi
	mov	edi, dword ptr [r15 + 0x20]
	mov	edx, dword ptr [rsp + 0x20]
	test	edi, edi
	sete	sil
	test	edx, edx
	sete	cl
	xor	cl, sil
	or	edx, edi
	setns	dl
	and	dl, cl
	movzx	ecx, dl
	or	ecx, eax
	jne	.label_491
.label_493:
	mov	rdi, rbx
	mov	rsi, r15
	call	save_abbr
	test	al, al
	jne	.label_491
	mov	qword ptr [rsp + 0x38], -1
.label_491:
	mov	rdi, r14
	call	revert_tz
	test	al, al
	je	.label_490
	mov	rax, qword ptr [rsp + 0x38]
	jmp	.label_492
.label_490:
	mov	rax, -1
.label_492:
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_489:
	mov	rdi, r15
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	jmp	timegm
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407140

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
	jne	.label_495
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_494
	test	cl, cl
	jne	.label_494
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_494
.label_495:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_494
	call	__errno_location
	mov	dword ptr [rax], 0
.label_494:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4071a0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_497
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_498
	cmp	byte ptr [rax + 1], 0
	je	.label_496
.label_498:
	mov	esi, OFFSET FLAT:.str.1_5
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_497
.label_496:
	xor	ebx, ebx
.label_497:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x4071e0

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
	je	.label_499
	mov	rax, rcx
.label_499:
	add	rsp, 8
	ret	
	nop	dword ptr [rax]
	.section .text
	.align	32
	#Procedure 0x407210

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