	.section	.text
	.align	16
	#Procedure 0x401650

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_19
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_21
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	mov	r8, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_17
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_29
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_12
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_26
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_18
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_14
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_15
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_13
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_28
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_23
	mov	ecx, OFFSET FLAT:label_24
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_10
	mov	esi, OFFSET FLAT:label_27
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_10
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_10:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_25
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_24
	mov	ecx, OFFSET FLAT:label_13
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_22
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_13
	mov	ecx, OFFSET FLAT:label_16
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_19:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_11
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
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401880

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	r12, rsi
	mov	r13d, edi
	mov	rdi, qword ptr [r12]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_65
	call	setlocale
	mov	edi, OFFSET FLAT:label_69
	mov	esi, OFFSET FLAT:label_70
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_69
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	r14d, 0xffffffff
	mov	dword ptr [rsp + 8], r13d
	nop	word ptr [rax + rax]
.label_58:
	xor	ebp, ebp
	mov	edx, OFFSET FLAT:short_options
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, r13d
	mov	rsi, r12
	call	getopt_long
	mov	ebx, eax
	lea	eax, [rbx + 0x83]
	cmp	eax, 0xf7
	ja	.label_72
	mov	cl, 1
	xor	r15d, r15d
	jmp	qword ptr [(rax * 8) + label_32]
.label_485:
	mov	eax, dword ptr [rip + optind]
	cmp	eax, 2
	jne	.label_36
.label_486:
	mov	rax, qword ptr [rip + optarg]
	movsxd	rbp, dword ptr [rip + optind]
	test	rax, rax
	jne	.label_40
	mov	r13, qword ptr [r12 + rbp*8 - 8]
	mov	rdi, r13
	call	strlen
	add	rax, r13
	mov	r13d, dword ptr [rsp + 8]
	mov	qword ptr [rip + optarg],  rax
.label_40:
	mov	rcx, qword ptr [r12 + rbp*8 - 8]
	add	rcx, 2
	cmp	rax, rcx
	jne	.label_39
	dec	rax
	mov	qword ptr [rip + optarg],  rax
.label_489:
	test	r14d, r14d
	jns	.label_45
	mov	rdi, qword ptr [rip + optarg]
	lea	rsi, [rsp + 0x30]
	call	operand2sig
	mov	r14d, eax
	test	r14d, r14d
	jns	.label_58
	jmp	.label_63
.label_488:
	xor	ecx, ecx
.label_487:
	mov	r15b, cl
	nop	word ptr cs:[rax + rax]
.label_49:
	mov	edx, OFFSET FLAT:short_options
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, r13d
	mov	rsi, r12
	call	getopt_long
	mov	ebx, eax
	lea	eax, [rbx + 0x83]
	cmp	eax, 0xf7
	ja	.label_72
	mov	bpl, 1
	jmp	qword ptr [(rax * 8) + label_75]
.label_403:
	mov	eax, dword ptr [rip + optind]
	mov	bpl, 1
	cmp	eax, 2
	jne	.label_50
.label_404:
	mov	rax, qword ptr [rip + optarg]
	movsxd	rbp, dword ptr [rip + optind]
	test	rax, rax
	jne	.label_81
	mov	r13, qword ptr [r12 + rbp*8 - 8]
	mov	rdi, r13
	call	strlen
	add	rax, r13
	mov	r13d, dword ptr [rsp + 8]
	mov	qword ptr [rip + optarg],  rax
.label_81:
	mov	rcx, qword ptr [r12 + rbp*8 - 8]
	add	rcx, 2
	cmp	rax, rcx
	jne	.label_39
	dec	rax
	mov	qword ptr [rip + optarg],  rax
.label_406:
	test	r14d, r14d
	jns	.label_45
	mov	rdi, qword ptr [rip + optarg]
	lea	rsi, [rsp + 0x30]
	call	operand2sig
	mov	r14d, eax
	test	r14d, r14d
	jns	.label_49
.label_63:
	mov	edi, 1
	call	usage
.label_36:
	xor	ebp, ebp
	xor	r15d, r15d
.label_50:
	dec	eax
	mov	dword ptr [rip + optind],  eax
.label_402:
	mov	ecx, 0xf
	test	r14d, r14d
	js	.label_82
	test	bpl, bpl
	mov	ecx, r14d
	jne	.label_57
.label_82:
	test	bpl, bpl
	mov	eax, dword ptr [rip + optind]
	jne	.label_62
	cmp	eax, r13d
	jge	.label_64
.label_62:
	movsxd	rdx, eax
	test	bpl, bpl
	je	.label_68
	cmp	eax, r13d
	mov	ebp, 0
	lea	r14, [r12 + rdx*8]
	cmovge	r14, rbp
	test	r15b, r15b
	jne	.label_71
	test	r14, r14
	je	.label_73
	mov	rdi, qword ptr [r14]
	xor	r13d, r13d
	test	rdi, rdi
	je	.label_30
	lea	rbp, [r12 + rdx*8 + 8]
	lea	r14, [rsp + 0x10]
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_46:
	mov	rsi, r14
	call	operand2sig
	mov	ecx, eax
	test	ecx, ecx
	mov	r13d, 1
	js	.label_31
	mov	rax, qword ptr [rbp - 8]
	movsx	eax, byte ptr [rax]
	add	eax, -0x30
	cmp	eax, 9
	ja	.label_35
	mov	rdi, r14
	call	puts
	jmp	.label_41
	nop	dword ptr [rax]
.label_35:
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_43
	xor	eax, eax
	mov	edx, ecx
	call	__printf_chk
.label_41:
	mov	r13d, ebx
.label_31:
	mov	rdi, qword ptr [rbp]
	add	rbp, 8
	test	rdi, rdi
	mov	ebx, r13d
	jne	.label_46
	jmp	.label_30
.label_68:
	mov	dword ptr [rsp + 8], ecx
	mov	rbx, qword ptr [r12 + rdx*8]
	lea	r15, [r12 + rdx*8 + 8]
	lea	r14, [rsp + 0x10]
	xor	r13d, r13d
	jmp	.label_34
.label_74:
	mov	edi, eax
	mov	esi, dword ptr [rsp + 8]
	call	kill
	test	eax, eax
	je	.label_54
	mov	ebp, dword ptr [rbp]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_60
	xor	eax, eax
	mov	esi, ebp
	jmp	.label_61
.label_34:
	call	__errno_location
	mov	rbp, rax
	mov	dword ptr [rbp], 0
	mov	edx, 0xa
	xor	ecx, ecx
	mov	rdi, rbx
	mov	rsi, r14
	call	__strtol_internal
	cmp	dword ptr [rbp], 0x22
	je	.label_48
	movsxd	rcx, eax
	cmp	rcx, rax
	jne	.label_48
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	rbx, rcx
	je	.label_48
	cmp	byte ptr [rcx], 0
	je	.label_74
	nop	
.label_48:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_76
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
.label_61:
	call	error
	mov	r13d, 1
.label_54:
	mov	rbx, qword ptr [r15]
	add	r15, 8
	test	rbx, rbx
	jne	.label_34
	jmp	.label_30
.label_71:
	mov	qword ptr [rsp + 8], rdx
	mov	ebx, 1
	lea	r15, [rsp + 0x10]
	nop	word ptr cs:[rax + rax]
.label_51:
	mov	edi, ebx
	mov	rsi, r15
	call	sig2str
	test	eax, eax
	jne	.label_47
	mov	rdi, r15
	call	strlen
	mov	ecx, ebp
	cmp	rcx, rax
	cmovae	eax, ebp
	mov	ebp, eax
.label_47:
	inc	ebx
	cmp	ebx, 0x41
	jne	.label_51
	mov	r15, rbp
	test	r14, r14
	je	.label_53
	mov	rdi, qword ptr [r14]
	xor	r13d, r13d
	test	rdi, rdi
	mov	rax, qword ptr [rsp + 8]
	je	.label_30
	lea	rbx, [r12 + rax*8 + 8]
	lea	r14, [rsp + 0x10]
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_80:
	mov	rsi, r14
	call	operand2sig
	mov	ebp, eax
	test	ebp, ebp
	mov	r13d, 1
	js	.label_67
	mov	edi, ebp
	call	strsignal
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_42
	cmove	rax, rcx
	mov	qword ptr [rsp], rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_52
	mov	edx, 2
	xor	eax, eax
	mov	ecx, ebp
	mov	r8d, r15d
	mov	r9, r14
	call	__printf_chk
	mov	r13d, r12d
.label_67:
	mov	rdi, qword ptr [rbx]
	add	rbx, 8
	test	rdi, rdi
	mov	r12d, r13d
	jne	.label_80
	jmp	.label_30
.label_73:
	mov	ebx, 1
	lea	rbp, [rsp + 0x10]
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_78:
	mov	edi, ebx
	mov	rsi, rbp
	call	sig2str
	test	eax, eax
	jne	.label_37
	mov	rdi, rbp
	call	puts
.label_37:
	inc	ebx
	cmp	ebx, 0x41
	jne	.label_78
	jmp	.label_30
.label_53:
	mov	ebx, 1
	lea	r14, [rsp + 0x10]
	mov	ebp, OFFSET FLAT:label_42
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_59:
	mov	edi, ebx
	mov	rsi, r14
	call	sig2str
	test	eax, eax
	jne	.label_38
	mov	edi, ebx
	call	strsignal
	test	rax, rax
	cmove	rax, rbp
	mov	qword ptr [rsp], rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_52
	mov	edx, 2
	xor	eax, eax
	mov	ecx, ebx
	mov	r8d, r15d
	mov	r9, r14
	call	__printf_chk
.label_38:
	inc	ebx
	cmp	ebx, 0x41
	jne	.label_59
.label_30:
	mov	eax, r13d
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_45:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_66
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + optarg]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
.label_39:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_77
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, ebx
	call	error
	mov	edi, 1
	call	usage
.label_405:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_33
.label_56:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	edi, 1
	call	usage
.label_400:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_13
	mov	edx, OFFSET FLAT:label_23
	mov	r8d, OFFSET FLAT:label_44
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_401:
	xor	edi, edi
	call	usage
.label_72:
	mov	edi, 1
	call	usage
.label_64:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_79
	jmp	.label_56
.label_57:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_55
	jmp	.label_56
	nop	
	.section	.text
	.align	16
	#Procedure 0x401e90

	.globl operand2sig
	.type operand2sig, @function
operand2sig:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r14, rsi
	mov	r15, rdi
	movsx	eax, byte ptr [r15]
	add	eax, -0x30
	cmp	eax, 9
	ja	.label_87
	call	__errno_location
	mov	rbx, rax
	mov	dword ptr [rbx], 0
	lea	rsi, [rsp + 8]
	mov	edx, 0xa
	mov	rdi, r15
	call	strtol
	mov	rcx, qword ptr [rsp + 8]
	mov	edi, 0xffffffff
	cmp	rcx, r15
	je	.label_83
	cmp	byte ptr [rcx], 0
	jne	.label_83
	cmp	dword ptr [rbx], 0
	jne	.label_83
	cmp	eax, -1
	je	.label_83
	movsxd	rcx, eax
	cmp	rcx, rax
	jne	.label_83
	cmp	eax, 0xfe
	mov	ecx, 0xff
	mov	edi, 0x7f
	cmovg	edi, ecx
	and	edi, eax
.label_83:
	mov	dword ptr [rsp + 4], edi
	jmp	.label_85
.label_87:
	mov	rdi, r15
	call	xstrdup
	mov	r12, rax
	mov	bpl, byte ptr [r12]
	test	bpl, bpl
	je	.label_88
	lea	rbx, [r12 + 1]
	nop	word ptr [rax + rax]
.label_93:
	movsx	esi, bpl
	mov	edi, OFFSET FLAT:label_92
	mov	edx, 0x1b
	call	memchr
	test	rax, rax
	je	.label_84
	add	bpl, 0xe0
	mov	byte ptr [rbx - 1], bpl
.label_84:
	movzx	ebp, byte ptr [rbx]
	inc	rbx
	test	bpl, bpl
	jne	.label_93
.label_88:
	lea	rsi, [rsp + 4]
	mov	rdi, r12
	call	str2sig
	test	eax, eax
	je	.label_89
	cmp	byte ptr [r12], 0x53
	jne	.label_90
	cmp	byte ptr [r12 + 1], 0x49
	jne	.label_90
	cmp	byte ptr [r12 + 2], 0x47
	jne	.label_90
	mov	rdi, r12
	add	rdi, 3
	lea	rsi, [rsp + 4]
	call	str2sig
	test	eax, eax
	je	.label_89
.label_90:
	mov	dword ptr [rsp + 4], 0xffffffff
.label_89:
	mov	rdi, r12
	call	free
	mov	edi, dword ptr [rsp + 4]
.label_85:
	test	edi, edi
	js	.label_86
	mov	rsi, r14
	call	sig2str
	test	eax, eax
	je	.label_94
.label_86:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_95
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r15
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	eax, 0xffffffff
	jmp	.label_91
.label_94:
	mov	eax, dword ptr [rsp + 4]
.label_91:
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402010
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402020
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402030

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_101
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_98
	cmp	dword ptr [rbp], 0x20
	jne	.label_98
.label_101:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_97
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_98:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_99
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_96
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_60
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_97:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_96:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_100
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
	#Procedure 0x4020f0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_105
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_107
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_102
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_107
	mov	esi, OFFSET FLAT:label_104
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_103
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_103:
	mov	rbx, r14
.label_107:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_105:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_106
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4021a0
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
	#Procedure 0x4021e0
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
	#Procedure 0x4021f0
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
	#Procedure 0x402200
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
	#Procedure 0x402240
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
	#Procedure 0x402260
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_108
	test	rdx, rdx
	je	.label_108
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_108:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402290
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
	#Procedure 0x402310

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
.label_219:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_216
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_153]
.label_423:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_225
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_192
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_424:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_117
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_117
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_134:
	cmp	r14, r11
	jae	.label_132
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_132:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_134
.label_117:
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
	jmp	.label_142
.label_416:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_142
.label_419:
	mov	al, 1
.label_417:
	mov	r12b, 1
.label_420:
	test	r12b, 1
	mov	cl, 1
	je	.label_151
	mov	ecx, eax
.label_151:
	mov	al, cl
.label_418:
	test	r12b, 1
	jne	.label_155
	test	r11, r11
	je	.label_169
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_169:
	mov	r14d, 1
	jmp	.label_159
.label_155:
	xor	r14d, r14d
.label_159:
	mov	ecx, OFFSET FLAT:label_192
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_142
.label_421:
	test	r12b, 1
	jne	.label_172
	test	r11, r11
	je	.label_174
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_174:
	mov	r14d, 1
	jmp	.label_176
.label_422:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_179
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_142
.label_172:
	xor	r14d, r14d
.label_176:
	mov	eax, OFFSET FLAT:label_179
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_142:
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
	jmp	.label_197
	nop	dword ptr [rax]
.label_135:
	inc	rsi
.label_197:
	cmp	rbp, -1
	je	.label_110
	cmp	rsi, rbp
	jne	.label_113
	jmp	.label_114
	nop	word ptr cs:[rax + rax]
.label_110:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_118
.label_113:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_158
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_126
	cmp	rbp, -1
	jne	.label_126
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
.label_126:
	cmp	rbx, rbp
	jbe	.label_143
.label_158:
	xor	r8d, r8d
.label_177:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_157
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_146]
.label_440:
	test	rsi, rsi
	jne	.label_137
	jmp	.label_150
	nop	word ptr cs:[rax + rax]
.label_143:
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
	jne	.label_163
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_177
	jmp	.label_171
.label_163:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_177
.label_444:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_186
	test	rsi, rsi
	jne	.label_189
	cmp	rbp, 1
	je	.label_150
	xor	r13d, r13d
	jmp	.label_119
.label_433:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_195
	cmp	byte ptr [rsp + 6], 0
	jne	.label_154
	cmp	r12d, 2
	jne	.label_201
	mov	eax, r9d
	and	al, 1
	jne	.label_201
	cmp	r14, r11
	jae	.label_205
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_205:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_209
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_209:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_227
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_227:
	add	r14, 3
	mov	r9b, 1
.label_201:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_220
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_220:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_222
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_222
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_222
	cmp	r14, r11
	jae	.label_112
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_112:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_182
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_182:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_119
.label_434:
	mov	bl, 0x62
	jmp	.label_123
.label_435:
	mov	cl, 0x74
	jmp	.label_162
.label_436:
	mov	bl, 0x76
	jmp	.label_123
.label_437:
	mov	bl, 0x66
	jmp	.label_123
.label_438:
	mov	cl, 0x72
	jmp	.label_162
.label_441:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_133
	cmp	byte ptr [rsp + 6], 0
	jne	.label_136
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
	jae	.label_140
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_140:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_149
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_149:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_152
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_152:
	add	r14, 3
	xor	r9d, r9d
.label_133:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_119
.label_442:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_160
	cmp	r12d, 2
	jne	.label_137
	cmp	byte ptr [rsp + 6], 0
	je	.label_137
	jmp	.label_136
.label_443:
	cmp	r12d, 2
	jne	.label_173
	cmp	byte ptr [rsp + 6], 0
	jne	.label_136
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_124
.label_157:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_183
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
.label_131:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_200
	test	r8b, r8b
	je	.label_200
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_119
.label_186:
	test	rsi, rsi
	jne	.label_144
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_144
.label_150:
	mov	dl, 1
.label_439:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_136
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_119:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_226
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_228
	jmp	.label_109
	nop	word ptr cs:[rax + rax]
.label_226:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_109
.label_228:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_115
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_124
	jmp	.label_130
	nop	dword ptr [rax]
.label_109:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_130
	jmp	.label_124
.label_115:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_130
.label_195:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_135
	xor	r15d, r15d
	jmp	.label_137
.label_173:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_162
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_124
.label_162:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_136
.label_123:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_119
	nop	word ptr cs:[rax + rax]
.label_130:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_154
	cmp	r12d, 2
	jne	.label_156
	mov	eax, r9d
	and	al, 1
	jne	.label_156
	cmp	r14, r11
	jae	.label_175
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_175:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_165
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_165:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_202
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_202:
	add	r14, 3
	mov	r9b, 1
.label_156:
	cmp	r14, r11
	jae	.label_139
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_139:
	inc	r14
	jmp	.label_180
.label_183:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_184
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_184:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_185:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_207
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_211
	cmp	rbp, -2
	je	.label_215
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_204
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_120:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_212
	bt	rsi, rdx
	jb	.label_230
.label_212:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_120
.label_204:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_224
	xor	r13d, r13d
.label_224:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_185
	jmp	.label_131
.label_222:
	xor	r13d, r13d
	jmp	.label_119
.label_144:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_119
.label_160:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_137
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_137
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_137
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_145
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_218
	cmp	byte ptr [rsp + 6], 0
	jne	.label_129
	cmp	r14, r11
	jae	.label_127
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_127:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_221
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_221:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_161
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_161:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_111
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_111:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_119
.label_137:
	xor	eax, eax
.label_189:
	xor	r13d, r13d
	jmp	.label_119
.label_200:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_181
	nop	word ptr cs:[rax + rax]
.label_138:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_181:
	test	r8b, r8b
	je	.label_190
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_191
	cmp	r14, r11
	jae	.label_193
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_193:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_191
	nop	dword ptr [rax]
.label_190:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_171
	cmp	r12d, 2
	jne	.label_206
	mov	eax, r9d
	and	al, 1
	jne	.label_206
	cmp	r14, r11
	jae	.label_210
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_210:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_213
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_213:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_217
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_217:
	add	r14, 3
	mov	r9b, 1
.label_206:
	cmp	r14, r11
	jae	.label_167
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_167:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_188
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_188:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_229
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_229:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_191:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_124
	test	r9b, 1
	je	.label_125
	mov	ebx, eax
	and	bl, 1
	jne	.label_125
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_198
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_198:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_128
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_128:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_125:
	cmp	r14, r11
	jae	.label_138
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_138
	nop	word ptr cs:[rax + rax]
.label_124:
	test	r9b, 1
	je	.label_147
	and	al, 1
	jne	.label_147
	cmp	r14, r11
	jae	.label_148
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_148:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_141
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_141:
	add	r14, 2
	xor	r9d, r9d
.label_147:
	mov	ebx, r15d
.label_180:
	cmp	r14, r11
	jae	.label_164
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_164:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_135
.label_211:
	xor	r13d, r13d
.label_207:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_131
.label_215:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_170
	mov	rsi, qword ptr [rsp + 0x58]
.label_178:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_187
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_178
	xor	r13d, r13d
	jmp	.label_131
.label_170:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_131
.label_187:
	xor	r13d, r13d
	jmp	.label_131
.label_145:
	xor	r13d, r13d
	jmp	.label_119
.label_218:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_119
	nop	dword ptr [rax + rax]
.label_114:
	mov	rcx, rsi
.label_118:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_194
	or	al, dl
	je	.label_199
.label_194:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_203
	or	al, dl
	jne	.label_203
	test	r10b, 1
	jne	.label_214
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_203
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_219
.label_203:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_223
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_121
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_121
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_116:
	cmp	r14, r11
	jae	.label_196
	mov	byte ptr [rcx + r14], al
.label_196:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_116
	jmp	.label_121
.label_154:
	mov	qword ptr [rsp + 0x20], rbp
.label_171:
	mov	rdx, rdi
	jmp	.label_122
.label_136:
	mov	qword ptr [rsp + 0x20], rbp
.label_230:
	mov	rdx, rdi
	mov	eax, 2
.label_208:
	mov	qword ptr [rsp + 0x38], rax
.label_122:
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
.label_166:
	mov	r14, rax
.label_168:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_199:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_122
.label_214:
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
	jmp	.label_166
.label_223:
	mov	rcx, qword ptr [rsp + 8]
.label_121:
	cmp	r14, r11
	jae	.label_168
	mov	byte ptr [rcx + r14], 0
	jmp	.label_168
.label_129:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_208
.label_216:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403120
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
	#Procedure 0x4031f0
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
	je	.label_231
	mov	qword ptr [rax], rbx
.label_231:
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
	#Procedure 0x4032e0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_232
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_235:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_235
.label_232:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_236
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_233], OFFSET FLAT:slot0
.label_236:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_234
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_234:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403380
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x403390

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
	js	.label_240
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_243
	cmp	r12d, 0x7fffffff
	je	.label_238
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
	jne	.label_241
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_241:
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
.label_243:
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
	jbe	.label_239
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_242
.label_239:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_237
	mov	rdi, r14
	call	free
.label_237:
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
.label_242:
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
.label_240:
	call	abort
.label_238:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403550
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403560
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
	#Procedure 0x403580
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
	#Procedure 0x4035a0
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
	je	.label_244
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
.label_244:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403610
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
	je	.label_245
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
.label_245:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403680
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
	je	.label_246
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
.label_246:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4036f0
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
	je	.label_247
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
.label_247:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403760
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_248]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_249]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_250]
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
	#Procedure 0x4037d0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_248]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_249]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_250]
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
	#Procedure 0x403840

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_248]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_249]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_250]
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
	#Procedure 0x4038a0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_248]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_249]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_250]
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
	#Procedure 0x403900
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
	je	.label_251
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
.label_251:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4039a0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_248]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_249]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_250]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_252
	test	rdx, rdx
	je	.label_252
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_252:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x403a10
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_248]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_249]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_250]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_253
	test	rdx, rdx
	je	.label_253
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_253:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a80
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_248]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_249]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_250]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_254
	test	rsi, rsi
	je	.label_254
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_254:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403af0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_248]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_249]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_250]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_255
	test	rsi, rsi
	je	.label_255
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
.label_255:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403b60
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b70
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
	#Procedure 0x403b90
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403bb0

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
	#Procedure 0x403bd0

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
	jne	.label_260
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_264
	cmp	ecx, 0x55
	jne	.label_256
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_256
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_256
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_256
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_256
	cmp	byte ptr [rax + 5], 0
	jne	.label_256
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_262
	mov	eax, OFFSET FLAT:label_263
	jmp	.label_259
.label_264:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_256
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_256
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_256
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_256
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_256
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_256
	cmp	byte ptr [rax + 7], 0
	je	.label_261
.label_256:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_179
	mov	eax, OFFSET FLAT:label_192
.label_259:
	cmove	rax, rcx
.label_260:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_261:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_257
	mov	eax, OFFSET FLAT:label_258
	jmp	.label_259
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ca0

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
	je	.label_277
	mov	edx, OFFSET FLAT:label_268
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_274
.label_277:
	mov	edx, OFFSET FLAT:label_275
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_274:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_279
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
	mov	esi, OFFSET FLAT:label_276
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_280
	jmp	qword ptr [(r12 * 8) + label_281]
.label_467:
	add	rsp, 8
	jmp	.label_267
.label_280:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_271
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
	jmp	.label_267
.label_468:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_266
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
.label_469:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_272
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
.label_470:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_269
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
.label_471:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_283
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
	jmp	.label_267
.label_472:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_282
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
	jmp	.label_267
.label_473:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_265
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
	jmp	.label_267
.label_474:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_270
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
	jmp	.label_267
.label_476:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_273
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
	jmp	.label_267
.label_475:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_278
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
.label_267:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404000
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_284:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_284
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404030

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_295
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_297
.label_295:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_297:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_285
	cmp	r10d, 0x29
	jae	.label_294
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_296
.label_294:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_296:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_285
	cmp	r10d, 0x29
	jae	.label_292
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_293
.label_292:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_293:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_285
	cmp	r10d, 0x29
	jae	.label_290
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_291
.label_290:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_291:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_285
	cmp	r10d, 0x29
	jae	.label_288
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_289
.label_288:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_289:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_285
	cmp	r10d, 0x29
	jae	.label_286
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_287
.label_286:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_287:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_285
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_285
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_285
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_285
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_285:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404220

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_298
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_298:
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
	#Procedure 0x4042b0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_299
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_300
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_302
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_23
	mov	ecx, OFFSET FLAT:label_24
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_301
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404330
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_303
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_304
	test	rax, rax
	je	.label_303
.label_304:
	pop	rbx
	ret	
.label_303:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404370

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_305
	test	rax, rax
	je	.label_306
.label_305:
	pop	rbx
	ret	
.label_306:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404390
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_307
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_308
	test	rbx, rbx
	jne	.label_308
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_308:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_309
	test	rax, rax
	je	.label_307
.label_309:
	pop	rbx
	ret	
.label_307:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4043e0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_310
	test	rbx, rbx
	jne	.label_310
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_310:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_312
	test	rax, rax
	je	.label_311
.label_312:
	pop	rbx
	ret	
.label_311:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404410
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_316
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_318
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_313
.label_316:
	test	rcx, rcx
	jne	.label_319
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_319:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_314
.label_313:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_315
	test	rbx, rbx
	jne	.label_315
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_315:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_317
	test	rax, rax
	je	.label_318
.label_317:
	pop	rbx
	ret	
.label_318:
	call	xalloc_die
.label_314:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4044b0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_320
	test	rax, rax
	je	.label_321
.label_320:
	pop	rbx
	ret	
.label_321:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4044d0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_324
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_326
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_323
	call	free
	xor	eax, eax
	jmp	.label_325
.label_324:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_322
	mov	qword ptr [rsi], rbx
.label_323:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_325
	test	rax, rax
	je	.label_322
.label_325:
	pop	rbx
	ret	
.label_322:
	call	xalloc_die
.label_326:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404540
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
	je	.label_328
	test	r14, r14
	je	.label_327
.label_328:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_327:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404580
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_329
	call	rpl_calloc
	test	rax, rax
	je	.label_329
	pop	rcx
	ret	
.label_329:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4045b0

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
	je	.label_330
	test	r15, r15
	je	.label_331
.label_330:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_331:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4045f0

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
	je	.label_333
	test	r15, r15
	je	.label_332
.label_333:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_332:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404640

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_334
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_60
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404670

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_335
	test	rsi, rsi
	mov	ecx, 1
	je	.label_336
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_336
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_335:
	mov	ecx, 1
.label_336:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4046c0

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
	je	.label_337
	cmp	r15, -2
	jb	.label_337
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_337
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_337:
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
	#Procedure 0x404720

	.globl str2sig
	.type str2sig, @function
str2sig:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r14, rsi
	mov	r12, rdi
	movsx	eax, byte ptr [r12]
	add	eax, -0x30
	cmp	eax, 0xa
	jae	.label_345
	lea	rsi, [rsp + 8]
	mov	edx, 0xa
	mov	rdi, r12
	call	strtol
	cmp	rax, 0x40
	jg	.label_340
	mov	rcx, qword ptr [rsp + 8]
	mov	cl, byte ptr [rcx]
	test	cl, cl
	je	.label_344
	jmp	.label_340
.label_345:
	xor	ebx, ebx
	mov	ebp, OFFSET FLAT:label_347
	nop	word ptr cs:[rax + rax]
.label_349:
	mov	rdi, rbp
	mov	rsi, r12
	call	strcmp
	test	eax, eax
	je	.label_341
	inc	rbx
	add	rbp, 0xc
	cmp	rbx, 0x22
	jbe	.label_349
	call	__libc_current_sigrtmin
	mov	ebp, eax
	call	__libc_current_sigrtmax
	mov	r15d, eax
	test	ebp, ebp
	jle	.label_346
	mov	esi, OFFSET FLAT:label_348
	mov	edx, 5
	mov	rdi, r12
	call	strncmp
	test	eax, eax
	je	.label_338
.label_346:
	test	r15d, r15d
	jle	.label_340
	mov	esi, OFFSET FLAT:label_342
	mov	edx, 5
	mov	rdi, r12
	call	strncmp
	test	eax, eax
	jne	.label_340
	add	r12, 5
	lea	rsi, [rsp + 8]
	mov	edx, 0xa
	mov	rdi, r12
	call	strtol
	mov	rcx, qword ptr [rsp + 8]
	cmp	byte ptr [rcx], 0
	jne	.label_340
	sub	ebp, r15d
	movsxd	rcx, ebp
	cmp	rcx, rax
	jg	.label_340
	test	rax, rax
	jg	.label_340
	mov	ecx, r15d
	jmp	.label_343
.label_341:
	mov	eax, dword ptr [rbp - 4]
	jmp	.label_344
.label_338:
	add	r12, 5
	lea	rsi, [rsp + 8]
	mov	edx, 0xa
	mov	rdi, r12
	call	strtol
	test	rax, rax
	js	.label_340
	mov	rcx, qword ptr [rsp + 8]
	mov	cl, byte ptr [rcx]
	test	cl, cl
	jne	.label_340
	sub	r15d, ebp
	movsxd	rcx, r15d
	cmp	rax, rcx
	jle	.label_339
.label_340:
	mov	eax, 0xffffffff
.label_344:
	mov	dword ptr [r14], eax
	sar	eax, 0x1f
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_339:
	mov	ecx, ebp
.label_343:
	add	rax, rcx
	jmp	.label_344
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404880

	.globl sig2str
	.type sig2str, @function
sig2str:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, rsi
	mov	ebp, edi
	mov	ecx, OFFSET FLAT:numname_table
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_352:
	mov	edx, eax
	cmp	dword ptr [rcx], ebp
	je	.label_357
	lea	esi, [rdx + 1]
	cmp	dword ptr [rcx + 0xc], ebp
	je	.label_355
	lea	esi, [rdx + 2]
	cmp	dword ptr [rcx + 0x18], ebp
	je	.label_355
	add	edx, 3
	cmp	dword ptr [rcx + 0x24], ebp
	mov	rsi, rdx
	je	.label_355
	cmp	dword ptr [rcx + 0x30], ebp
	je	.label_350
	add	rax, 5
	add	rcx, 0x3c
	cmp	eax, 0x23
	jb	.label_352
	call	__libc_current_sigrtmin
	mov	r14d, eax
	call	__libc_current_sigrtmax
	cmp	r14d, ebp
	mov	ebx, 0xffffffff
	jg	.label_353
	cmp	eax, ebp
	jl	.label_353
	mov	ecx, eax
	sub	ecx, r14d
	mov	edx, ecx
	shr	edx, 0x1f
	add	edx, ecx
	sar	edx, 1
	add	edx, r14d
	cmp	edx, ebp
	jge	.label_354
	mov	word ptr [r15 + 4], 0x58
	mov	dword ptr [r15], 0x414d5452
	mov	r14d, eax
	jmp	.label_351
.label_357:
	mov	rsi, rdx
	jmp	.label_355
.label_350:
	add	rax, 4
	mov	rsi, rax
.label_355:
	lea	rax, [rsi + rsi*2]
	lea	rsi, qword ptr [(rax * 4) + label_347]
	mov	rdi, r15
	call	strcpy
	xor	ebx, ebx
.label_353:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_354:
	mov	word ptr [r15 + 4], 0x4e
	mov	dword ptr [r15], 0x494d5452
.label_351:
	xor	ebx, ebx
	sub	ebp, r14d
	je	.label_353
	add	r15, 5
	xor	ebx, ebx
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_356
	xor	eax, eax
	mov	rdi, r15
	mov	r8d, ebp
	call	__sprintf_chk
	jmp	.label_353
	.section	.text
	.align	16
	#Procedure 0x404980

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
	jne	.label_359
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_358
	test	cl, cl
	jne	.label_358
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_358
.label_359:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_358
	call	__errno_location
	mov	dword ptr [rax], 0
.label_358:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4049e0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_361
	cmp	byte ptr [rax], 0x43
	jne	.label_363
	cmp	byte ptr [rax + 1], 0
	je	.label_360
.label_363:
	mov	esi, OFFSET FLAT:label_362
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_361
.label_360:
	xor	ebx, ebx
.label_361:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a20

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_65
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_364
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a50

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_365
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_367
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_365
.label_367:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_365
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_366
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_366:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_365:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ad0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_368
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_368
	test	byte ptr [rbx + 1], 1
	je	.label_368
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_368:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b10

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
	jne	.label_369
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_369
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_370
.label_369:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_370:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_371
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_371:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section .text
	.align	16
	#Procedure 0x404b80

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
