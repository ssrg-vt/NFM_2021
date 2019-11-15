	.section	.text
	.align	16
	#Procedure 0x401b90

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_18
	jmp	.label_12
.label_12:
	movabs	rdi, OFFSET FLAT:label_13
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_20
.label_18:
	movabs	rdi, OFFSET FLAT:label_10
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_11
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_9
	mov	dword ptr [rbp - 0x1c], eax
	call	gettext
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_21
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_16
	movabs	rdx, OFFSET FLAT:label_17
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_15
	mov	dword ptr [rbp - 0x24], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_19
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_14
	mov	dword ptr [rbp - 0x2c], eax
	call	emit_ancillary_info
.label_20:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	16
	#Procedure 0x401cd0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rax
.label_36:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_35
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_35:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_29
	jmp	.label_26
.label_29:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_36
.label_26:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_23
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_23:
	movabs	rdi, OFFSET FLAT:label_28
	call	gettext
	movabs	rsi, OFFSET FLAT:label_33
	movabs	rdx, OFFSET FLAT:label_22
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	edi, 5
	xor	ecx, ecx
	mov	esi, ecx
	mov	dword ptr [rbp - 0x28], eax
	call	setlocale
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_24
	movabs	rsi, OFFSET FLAT:label_32
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_24
	movabs	rdi, OFFSET FLAT:label_25
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_24:
	movabs	rdi, OFFSET FLAT:label_34
	call	gettext
	movabs	rsi, OFFSET FLAT:label_22
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_27
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:label_30
	movabs	rsi, OFFSET FLAT:label_31
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rcx, qword ptr [rbp - 8]
	cmove	rdx, rsi
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x38]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x3c], eax
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401e70

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	eax, OFFSET FLAT:label_30
	mov	esi, eax
	mov	edi, 6
	call	setlocale
	mov	edi, OFFSET FLAT:label_46
	mov	esi, edi
	mov	edi, OFFSET FLAT:label_47
	mov	ecx, edi
	mov	rdi, rsi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x20], rax
	call	bindtextdomain
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x28], rax
	call	textdomain
	mov	edx, OFFSET FLAT:close_stdout
	mov	edi, edx
	mov	qword ptr [rbp - 0x30], rax
	call	atexit
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	r8,  qword ptr [word ptr [rip + Version]]
	mov	rcx, rsp
	mov	qword ptr [rcx + 0x20], 0
	mov	qword ptr [word ptr [rcx + 24]], OFFSET FLAT:label_42
	mov	qword ptr [word ptr [rcx + 16]], OFFSET FLAT:label_43
	mov	qword ptr [word ptr [rcx + 8]], OFFSET FLAT:label_44
	mov	qword ptr [word ptr [rcx]], OFFSET FLAT:usage
	mov	edx, OFFSET FLAT:label_14
	mov	r9d, OFFSET FLAT:label_33
	mov	ecx, r9d
	xor	r9d, r9d
	mov	r10b, r9b
	mov	r9d, 1
	mov	dword ptr [rbp - 0x34], eax
	mov	al, r10b
	call	parse_gnu_standard_options_only
	mov	edi, dword ptr [rbp - 8]
	mov	r9d,  dword ptr [dword ptr [rip + optind]]
	sub	edi, r9d
	mov	dword ptr [rbp - 0x38], edi
	je	.label_41
	jmp	.label_37
.label_37:
	mov	eax, dword ptr [rbp - 0x38]
	sub	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	je	.label_40
	jmp	.label_38
.label_41:
	movabs	rdi, OFFSET FLAT:label_16
	mov	esi, 1
	call	uptime
	jmp	.label_39
.label_40:
	xor	esi, esi
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rax*8]
	call	uptime
	jmp	.label_39
.label_38:
	movabs	rdi, OFFSET FLAT:label_45
	call	gettext
	mov	ecx,  dword ptr [dword ptr [optind]]
	add	ecx, 1
	movsxd	rdi, ecx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdx + rdi*8]
	mov	qword ptr [rbp - 0x48], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_39:
	xor	eax, eax
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402000

	.globl uptime
	.type uptime, @function
uptime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rax, [rbp - 0x18]
	lea	rdx, [rbp - 0x20]
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	qword ptr [rbp - 0x20], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 0xc]
	mov	rsi, rax
	call	read_utmp
	cmp	eax, 0
	je	.label_49
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x24], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_48
	mov	esi, dword ptr [rbp - 0x24]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_49:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	call	print_uptime
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402080

	.globl print_uptime
	.type print_uptime, @function
print_uptime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20e0
	movabs	rax, OFFSET FLAT:label_50
	movabs	rcx, OFFSET FLAT:label_51
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], 0
	mov	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x30], 0
	mov	rdi, rax
	mov	rsi, rcx
	call	fopen
	mov	qword ptr [rbp - 0x70], rax
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_73
	mov	esi, 0x2000
	lea	rdi, [rbp - 0x2070]
	mov	rdx, qword ptr [rbp - 0x70]
	call	fgets_unlocked
	lea	rdx, [rbp - 0x2070]
	mov	qword ptr [rbp - 0x2078], rax
	mov	rax, qword ptr [rbp - 0x2078]
	cmp	rax, rdx
	jne	.label_85
	lea	rsi, [rbp - 0x2080]
	lea	rdi, [rbp - 0x2070]
	call	c_strtod
	lea	rsi, [rbp - 0x2070]
	movsd	qword ptr [rbp - 0x2088], xmm0
	cmp	rsi, qword ptr [rbp - 0x2080]
	je	.label_60
	xorps	xmm0, xmm0
	movsd	xmm1, qword ptr [rbp - 0x2088]
	ucomisd	xmm1, xmm0
	jb	.label_69
	movsd	xmm0,  qword ptr [word ptr [rip + label_74]]
	ucomisd	xmm0, qword ptr [rbp - 0x2088]
	jbe	.label_69
	movsd	xmm0, qword ptr [rbp - 0x2088]
	movsd	qword ptr [rbp - 0x2090], xmm0
	jmp	.label_82
.label_69:
	movsd	xmm0,  qword ptr [word ptr [rip + label_88]]
	movsd	qword ptr [rbp - 0x2090], xmm0
	jmp	.label_82
.label_82:
	movsd	xmm0, qword ptr [rbp - 0x2090]
	cvttsd2si	rax, xmm0
	mov	qword ptr [rbp - 0x30], rax
.label_60:
	jmp	.label_85
.label_85:
	mov	rdi, qword ptr [rbp - 0x70]
	call	rpl_fclose
	mov	dword ptr [rbp - 0x2094], eax
.label_73:
	jmp	.label_65
.label_65:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 8], rcx
	cmp	rax, 0
	je	.label_68
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	eax, byte ptr [rdx + 0x2c]
	cmp	eax, 0
	mov	byte ptr [rbp - 0x2095], cl
	je	.label_75
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, word ptr [rcx]
	cmp	edx, 7
	mov	byte ptr [rbp - 0x2096], al
	je	.label_54
	xor	eax, eax
	mov	cl, al
	mov	byte ptr [rbp - 0x2096], cl
	jmp	.label_54
.label_54:
	mov	al, byte ptr [rbp - 0x2096]
	mov	byte ptr [rbp - 0x2095], al
.label_75:
	mov	al, byte ptr [rbp - 0x2095]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	add	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	ecx, word ptr [rdx]
	cmp	ecx, 2
	jne	.label_61
	mov	rax, qword ptr [rbp - 0x10]
	movsxd	rax, dword ptr [rax + 0x154]
	mov	qword ptr [rbp - 0x20], rax
.label_61:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x180
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_65
.label_68:
	xor	eax, eax
	mov	edi, eax
	call	time
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_86
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_52
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_57
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x209c], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x209c]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_52:
	mov	rax, qword ptr [rbp - 0x28]
	sub	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x30], rax
.label_86:
	lea	rdi, [rbp - 0x28]
	mov	eax, 0x3c
	mov	ecx, eax
	mov	eax, 0xe10
	mov	edx, eax
	mov	eax, 0x15180
	mov	esi, eax
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x20a8], rdx
	cqo	
	idiv	rsi
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x30]
	imul	rsi, qword ptr [rbp - 0x38], 0x15180
	sub	rax, rsi
	cqo	
	mov	rsi, qword ptr [rbp - 0x20a8]
	idiv	rsi
	mov	r8d, eax
	mov	dword ptr [rbp - 0x3c], r8d
	mov	rax, qword ptr [rbp - 0x30]
	imul	r9, qword ptr [rbp - 0x38], 0x15180
	sub	rax, r9
	imul	r8d, dword ptr [rbp - 0x3c], 0xe10
	movsxd	r9, r8d
	sub	rax, r9
	cqo	
	idiv	rcx
	mov	r8d, eax
	mov	dword ptr [rbp - 0x40], r8d
	call	localtime
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_72
	movabs	rdi, OFFSET FLAT:label_77
	mov	rax,  qword ptr [word ptr [stdout]]
	mov	qword ptr [rbp - 0x20b0], rax
	call	gettext
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rbp - 0x20b0]
	mov	rsi, rax
	call	fprintftime
	mov	qword ptr [rbp - 0x20b8], rax
	jmp	.label_55
.label_72:
	movabs	rdi, OFFSET FLAT:label_58
	call	gettext
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x20bc], eax
.label_55:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_66
	movabs	rdi, OFFSET FLAT:label_70
	call	gettext
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x20c0], eax
	jmp	.label_79
.label_66:
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x38]
	jge	.label_81
	mov	rdi, qword ptr [rbp - 0x38]
	call	select_plural
	movabs	rdi, OFFSET FLAT:label_63
	movabs	rsi, OFFSET FLAT:label_64
	mov	rdx, rax
	call	ngettext
	mov	rsi, qword ptr [rbp - 0x38]
	mov	edx, dword ptr [rbp - 0x3c]
	mov	ecx, dword ptr [rbp - 0x40]
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x20c4], eax
	jmp	.label_62
.label_81:
	movabs	rdi, OFFSET FLAT:label_67
	call	gettext
	mov	esi, dword ptr [rbp - 0x3c]
	mov	edx, dword ptr [rbp - 0x40]
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x20c8], eax
.label_62:
	jmp	.label_79
.label_79:
	mov	rdi, qword ptr [rbp - 0x18]
	call	select_plural
	movabs	rdi, OFFSET FLAT:label_83
	movabs	rsi, OFFSET FLAT:label_84
	mov	rdx, rax
	call	ngettext
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	esi, 3
	lea	rdi, [rbp - 0x60]
	mov	dword ptr [rbp - 0x20cc], eax
	call	getloadavg
	mov	dword ptr [rbp - 0x64], eax
	cmp	dword ptr [rbp - 0x64], -1
	jne	.label_80
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x20d0], eax
	jmp	.label_56
.label_80:
	cmp	dword ptr [rbp - 0x64], 0
	jle	.label_78
	movabs	rdi, OFFSET FLAT:label_76
	call	gettext
	movsd	xmm0, qword ptr [rbp - 0x60]
	mov	rdi, rax
	mov	al, 1
	call	printf
	mov	dword ptr [rbp - 0x20d4], eax
.label_78:
	cmp	dword ptr [rbp - 0x64], 1
	jle	.label_87
	movabs	rdi, OFFSET FLAT:label_53
	movsd	xmm0, qword ptr [rbp - 0x58]
	mov	al, 1
	call	printf
	mov	dword ptr [rbp - 0x20d8], eax
.label_87:
	cmp	dword ptr [rbp - 0x64], 2
	jle	.label_59
	movabs	rdi, OFFSET FLAT:label_53
	movsd	xmm0, qword ptr [rbp - 0x50]
	mov	al, 1
	call	printf
	mov	dword ptr [rbp - 0x20dc], eax
.label_59:
	cmp	dword ptr [rbp - 0x64], 0
	jle	.label_71
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x20e0], eax
.label_71:
	jmp	.label_56
.label_56:
	add	rsp, 0x20e0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402570

	.globl select_plural
	.type select_plural, @function
select_plural:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], -1
	ja	.label_89
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_90
.label_89:
	mov	eax, 0xf4240
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	div	rcx
	add	rdx, 0xf4240
	mov	qword ptr [rbp - 0x10], rdx
.label_90:
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4025c0

	.globl c_strtod
	.type c_strtod, @function
c_strtod:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	call	c_locale
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_92
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_91
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
.label_91:
	xorps	xmm0, xmm0
	movsd	qword ptr [rbp - 8], xmm0
	jmp	.label_93
.label_92:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	call	strtod_l
	movsd	qword ptr [rbp - 0x20], xmm0
	movsd	xmm0, qword ptr [rbp - 0x20]
	movsd	qword ptr [rbp - 8], xmm0
.label_93:
	movsd	xmm0, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402640

	.globl c_locale
	.type c_locale, @function
c_locale:
	push	rbp
	mov	rbp, rsp
	mov	rax,  qword ptr [word ptr [c_locale_cache]]
	cmp	rax, 0
	jne	.label_94
	mov	edi, 0x1fbf
	movabs	rsi, OFFSET FLAT:label_95
	xor	eax, eax
	mov	edx, eax
	call	newlocale
	mov	qword ptr [word ptr [c_locale_cache]],  rax
.label_94:
	mov	rax,  qword ptr [word ptr [c_locale_cache]]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402680
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [file_name]],  rdi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4026a0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	push	rbp
	mov	rbp, rsp
	mov	al, dil
	and	al, 1
	mov	byte ptr [rbp - 1], al
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	mov	byte ptr [byte ptr [ignore_EPIPE]],  al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4026c0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	close_stream
	cmp	eax, 0
	je	.label_99
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_102
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	je	.label_99
.label_102:
	movabs	rdi, OFFSET FLAT:label_101
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_96
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_100
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_98
.label_96:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_48
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	call	error
.label_98:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_99:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_97
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_97:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4027b0

	.globl fprintftime
	.type fprintftime, @function
fprintftime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	xor	eax, eax
	mov	r9d, 0xffffffff
	lea	r10, [rbp - 0x25]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	mov	byte ptr [rbp - 0x25], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8d, dword ptr [rbp - 0x24]
	mov	qword ptr [rbp - 0x30], rcx
	mov	ecx, eax
	mov	dword ptr [rbp - 0x34], r8d
	mov	r8d, eax
	mov	qword ptr [rsp], r10
	mov	r10, qword ptr [rbp - 0x30]
	mov	qword ptr [rsp + 8], r10
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rsp + 0x10], eax
	call	__strftime_internal
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402820

	.globl __strftime_internal
	.type __strftime_internal, @function
__strftime_internal:
	push	rbp
	mov	rbp, rsp
	push	r14
	push	rbx
	sub	rsp, 0xaa0
	mov	al, cl
	mov	ecx, dword ptr [rbp + 0x20]
	mov	r10, qword ptr [rbp + 0x18]
	mov	r11, qword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 0x28], rsi
	mov	qword ptr [rbp - 0x30], rdx
	and	al, 1
	mov	byte ptr [rbp - 0x31], al
	mov	dword ptr [rbp - 0x38], r8d
	mov	dword ptr [rbp - 0x3c], r9d
	mov	qword ptr [rbp - 0x48], r11
	mov	qword ptr [rbp - 0x50], r10
	mov	dword ptr [rbp - 0x54], ecx
	mov	qword ptr [rbp - 0x60], -1
	mov	rdx, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rdx + 8]
	mov	dword ptr [rbp - 0x64], ecx
	mov	qword ptr [rbp - 0x78], 0
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x80], rdx
	mov	qword ptr [rbp - 0x70], 0
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rdx + 0x30]
	mov	qword ptr [rbp - 0x70], rdx
	cmp	qword ptr [rbp - 0x70], 0
	jne	.label_109
	movabs	rax, OFFSET FLAT:label_30
	mov	qword ptr [rbp - 0x70], rax
.label_109:
	cmp	dword ptr [rbp - 0x64], 0xc
	jle	.label_144
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0xc
	mov	dword ptr [rbp - 0x64], eax
	jmp	.label_146
.label_144:
	cmp	dword ptr [rbp - 0x64], 0
	jne	.label_149
	mov	dword ptr [rbp - 0x64], 0xc
.label_149:
	jmp	.label_146
.label_146:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x88], rax
.label_365:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_157
	mov	dword ptr [rbp - 0x8c], 0
	mov	dword ptr [rbp - 0x94], 0
	mov	byte ptr [rbp - 0xe1], 0
	mov	al, byte ptr [rbp - 0x31]
	and	al, 1
	mov	byte ptr [rbp - 0xe2], al
	mov	byte ptr [rbp - 0xf1], 0
	mov	rcx, qword ptr [rbp - 0x88]
	movsx	edx, byte ptr [rcx]
	cmp	edx, 0x25
	je	.label_162
	jmp	.label_541
.label_541:
	mov	qword ptr [rbp - 0x108], 1
	cmp	dword ptr [rbp - 0x3c], 0
	jge	.label_175
	xor	eax, eax
	mov	dword ptr [rbp - 0x83c], eax
	jmp	.label_178
.label_175:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x83c], eax
.label_178:
	mov	eax, dword ptr [rbp - 0x83c]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x110], rcx
	mov	rcx, qword ptr [rbp - 0x108]
	cmp	rcx, qword ptr [rbp - 0x110]
	jae	.label_332
	mov	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rbp - 0x848], rax
	jmp	.label_179
.label_332:
	mov	rax, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x848], rax
.label_179:
	mov	rax, qword ptr [rbp - 0x848]
	mov	qword ptr [rbp - 0x118], rax
	mov	rax, qword ptr [rbp - 0x118]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_202
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_167
.label_202:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_221
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_227
	mov	rax, qword ptr [rbp - 0x108]
	cmp	rax, qword ptr [rbp - 0x110]
	jae	.label_227
	movsxd	rax, dword ptr [rbp - 0x3c]
	sub	rax, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x120], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_228
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_237
.label_228:
	jmp	.label_242
.label_242:
	mov	qword ptr [rbp - 0x128], 0
.label_250:
	mov	rax, qword ptr [rbp - 0x128]
	cmp	rax, qword ptr [rbp - 0x120]
	jae	.label_244
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x84c], eax
	mov	rax, qword ptr [rbp - 0x128]
	add	rax, 1
	mov	qword ptr [rbp - 0x128], rax
	jmp	.label_250
.label_244:
	jmp	.label_260
.label_260:
	jmp	.label_261
.label_237:
	jmp	.label_264
.label_264:
	mov	qword ptr [rbp - 0x130], 0
.label_275:
	mov	rax, qword ptr [rbp - 0x130]
	cmp	rax, qword ptr [rbp - 0x120]
	jae	.label_266
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x850], eax
	mov	rax, qword ptr [rbp - 0x130]
	add	rax, 1
	mov	qword ptr [rbp - 0x130], rax
	jmp	.label_275
.label_266:
	jmp	.label_284
.label_284:
	jmp	.label_261
.label_261:
	jmp	.label_227
.label_227:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	edi, byte ptr [rax]
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x854], eax
.label_221:
	mov	rax, qword ptr [rbp - 0x118]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_289
.label_162:
	jmp	.label_299
.label_299:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, rax
	inc	rcx
	mov	qword ptr [rbp - 0x88], rcx
	movsx	edx, byte ptr [rax + 1]
	mov	esi, edx
	sub	esi, 0x23
	mov	dword ptr [rbp - 0x858], edx
	mov	dword ptr [rbp - 0x85c], esi
	je	.label_280
	jmp	.label_160
.label_160:
	mov	eax, dword ptr [rbp - 0x858]
	sub	eax, 0x2b
	mov	dword ptr [rbp - 0x860], eax
	je	.label_139
	jmp	.label_314
.label_314:
	mov	eax, dword ptr [rbp - 0x858]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x864], eax
	je	.label_139
	jmp	.label_437
.label_437:
	mov	eax, dword ptr [rbp - 0x858]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x868], eax
	je	.label_139
	jmp	.label_323
.label_323:
	mov	eax, dword ptr [rbp - 0x858]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x86c], eax
	je	.label_325
	jmp	.label_330
.label_330:
	mov	eax, dword ptr [rbp - 0x858]
	sub	eax, 0x5f
	mov	dword ptr [rbp - 0x870], eax
	jne	.label_333
	jmp	.label_139
.label_139:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	mov	dword ptr [rbp - 0x8c], ecx
	jmp	.label_299
.label_325:
	mov	byte ptr [rbp - 0xe2], 1
	jmp	.label_299
.label_280:
	mov	byte ptr [rbp - 0xf1], 1
	jmp	.label_299
.label_333:
	jmp	.label_344
.label_344:
	jmp	.label_345
.label_345:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_346
	mov	dword ptr [rbp - 0x3c], 0
.label_373:
	cmp	dword ptr [rbp - 0x3c], 0xccccccc
	jg	.label_352
	cmp	dword ptr [rbp - 0x3c], 0xccccccc
	jne	.label_356
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 7
	jle	.label_356
.label_352:
	mov	dword ptr [rbp - 0x3c], 0x7fffffff
	jmp	.label_367
.label_356:
	imul	eax, dword ptr [rbp - 0x3c], 0xa
	mov	dword ptr [rbp - 0x3c], eax
	mov	rcx, qword ptr [rbp - 0x88]
	movsx	eax, byte ptr [rcx]
	sub	eax, 0x30
	add	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x3c], eax
.label_367:
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, 1
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	jbe	.label_373
	jmp	.label_346
.label_346:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x874], ecx
	mov	dword ptr [rbp - 0x878], edx
	je	.label_382
	jmp	.label_390
.label_390:
	mov	eax, dword ptr [rbp - 0x874]
	sub	eax, 0x4f
	mov	dword ptr [rbp - 0x87c], eax
	jne	.label_393
	jmp	.label_382
.label_382:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x88], rcx
	movsx	edx, byte ptr [rax]
	mov	dword ptr [rbp - 0x90], edx
	jmp	.label_401
.label_393:
	mov	dword ptr [rbp - 0x90], 0
.label_401:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	mov	dword ptr [rbp - 0xf8], ecx
	mov	ecx, dword ptr [rbp - 0xf8]
	mov	eax, ecx
	mov	rdx, rax
	sub	rdx, 0x7a
	mov	qword ptr [rbp - 0x888], rax
	mov	qword ptr [rbp - 0x890], rdx
	ja	.label_416
	mov	rax, qword ptr [rbp - 0x888]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_433]]
	jmp	rcx
.label_1064:
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_438
	jmp	.label_111
.label_438:
	jmp	.label_442
.label_442:
	mov	qword ptr [rbp - 0x138], 1
	cmp	dword ptr [rbp - 0x3c], 0
	jge	.label_445
	xor	eax, eax
	mov	dword ptr [rbp - 0x894], eax
	jmp	.label_449
.label_445:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x894], eax
.label_449:
	mov	eax, dword ptr [rbp - 0x894]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x140], rcx
	mov	rcx, qword ptr [rbp - 0x138]
	cmp	rcx, qword ptr [rbp - 0x140]
	jae	.label_454
	mov	rax, qword ptr [rbp - 0x140]
	mov	qword ptr [rbp - 0x8a0], rax
	jmp	.label_460
.label_454:
	mov	rax, qword ptr [rbp - 0x138]
	mov	qword ptr [rbp - 0x8a0], rax
.label_460:
	mov	rax, qword ptr [rbp - 0x8a0]
	mov	qword ptr [rbp - 0x148], rax
	mov	rax, qword ptr [rbp - 0x148]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_468
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_167
.label_468:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_478
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_479
	mov	rax, qword ptr [rbp - 0x138]
	cmp	rax, qword ptr [rbp - 0x140]
	jae	.label_479
	movsxd	rax, dword ptr [rbp - 0x3c]
	sub	rax, qword ptr [rbp - 0x138]
	mov	qword ptr [rbp - 0x150], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_484
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_489
.label_484:
	jmp	.label_492
.label_492:
	mov	qword ptr [rbp - 0x158], 0
.label_503:
	mov	rax, qword ptr [rbp - 0x158]
	cmp	rax, qword ptr [rbp - 0x150]
	jae	.label_494
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x8a4], eax
	mov	rax, qword ptr [rbp - 0x158]
	add	rax, 1
	mov	qword ptr [rbp - 0x158], rax
	jmp	.label_503
.label_494:
	jmp	.label_507
.label_507:
	jmp	.label_509
.label_489:
	jmp	.label_512
.label_512:
	mov	qword ptr [rbp - 0x160], 0
.label_303:
	mov	rax, qword ptr [rbp - 0x160]
	cmp	rax, qword ptr [rbp - 0x150]
	jae	.label_516
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x8a8], eax
	mov	rax, qword ptr [rbp - 0x160]
	add	rax, 1
	mov	qword ptr [rbp - 0x160], rax
	jmp	.label_303
.label_516:
	jmp	.label_532
.label_532:
	jmp	.label_509
.label_509:
	jmp	.label_479
.label_479:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	edi, byte ptr [rax]
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x8ac], eax
.label_478:
	mov	rax, qword ptr [rbp - 0x148]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_241
.label_1085:
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_540
	jmp	.label_111
.label_540:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_544
	mov	byte ptr [rbp - 0xe2], 1
	mov	byte ptr [rbp - 0xe1], 0
.label_544:
	jmp	.label_107
.label_1066:
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_550
	jmp	.label_111
.label_550:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_553
	mov	byte ptr [rbp - 0xe2], 1
	mov	byte ptr [rbp - 0xe1], 0
.label_553:
	jmp	.label_107
.label_1086:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_556
	mov	byte ptr [rbp - 0xe2], 1
	mov	byte ptr [rbp - 0xe1], 0
.label_556:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_527
	jmp	.label_111
.label_527:
	jmp	.label_107
.label_1067:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_561
	jmp	.label_111
.label_561:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_564
	mov	byte ptr [rbp - 0xe2], 1
	mov	byte ptr [rbp - 0xe1], 0
.label_564:
	jmp	.label_107
.label_1087:
	cmp	dword ptr [rbp - 0x90], 0x4f
	jne	.label_108
	jmp	.label_111
.label_108:
	jmp	.label_107
.label_268:
	mov	dword ptr [rbp - 0xfc], 0xffffffff
.label_403:
	xor	eax, eax
	mov	edi, eax
	mov	rsi, qword ptr [rbp - 0xb0]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	cl, byte ptr [rbp - 0xe2]
	mov	r8d, dword ptr [rbp - 0x8c]
	mov	r9d, dword ptr [rbp - 0xfc]
	mov	r10, qword ptr [rbp - 0x48]
	mov	r11, qword ptr [rbp - 0x50]
	mov	eax, dword ptr [rbp - 0x54]
	and	cl, 1
	movzx	ecx, cl
	mov	qword ptr [rsp], r10
	mov	qword ptr [rsp + 8], r11
	mov	dword ptr [rsp + 0x10], eax
	call	__strftime_internal
	mov	qword ptr [rbp - 0x168], rax
	mov	rax, qword ptr [rbp - 0x168]
	mov	qword ptr [rbp - 0x170], rax
	cmp	dword ptr [rbp - 0x3c], 0
	jge	.label_134
	xor	eax, eax
	mov	dword ptr [rbp - 0x8b0], eax
	jmp	.label_142
.label_134:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x8b0], eax
.label_142:
	mov	eax, dword ptr [rbp - 0x8b0]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x178], rcx
	mov	rcx, qword ptr [rbp - 0x170]
	cmp	rcx, qword ptr [rbp - 0x178]
	jae	.label_147
	mov	rax, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x8b8], rax
	jmp	.label_429
.label_147:
	mov	rax, qword ptr [rbp - 0x170]
	mov	qword ptr [rbp - 0x8b8], rax
.label_429:
	mov	rax, qword ptr [rbp - 0x8b8]
	mov	qword ptr [rbp - 0x180], rax
	mov	rax, qword ptr [rbp - 0x180]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_165
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_167
.label_165:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_172
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_174
	mov	rax, qword ptr [rbp - 0x170]
	cmp	rax, qword ptr [rbp - 0x178]
	jae	.label_174
	movsxd	rax, dword ptr [rbp - 0x3c]
	sub	rax, qword ptr [rbp - 0x170]
	mov	qword ptr [rbp - 0x188], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_182
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_189
.label_182:
	jmp	.label_192
.label_192:
	mov	qword ptr [rbp - 0x190], 0
.label_206:
	mov	rax, qword ptr [rbp - 0x190]
	cmp	rax, qword ptr [rbp - 0x188]
	jae	.label_196
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x8bc], eax
	mov	rax, qword ptr [rbp - 0x190]
	add	rax, 1
	mov	qword ptr [rbp - 0x190], rax
	jmp	.label_206
.label_196:
	jmp	.label_218
.label_218:
	jmp	.label_219
.label_189:
	jmp	.label_307
.label_307:
	mov	qword ptr [rbp - 0x198], 0
.label_233:
	mov	rax, qword ptr [rbp - 0x198]
	cmp	rax, qword ptr [rbp - 0x188]
	jae	.label_225
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x8c0], eax
	mov	rax, qword ptr [rbp - 0x198]
	add	rax, 1
	mov	qword ptr [rbp - 0x198], rax
	jmp	.label_233
.label_225:
	jmp	.label_240
.label_240:
	jmp	.label_219
.label_219:
	jmp	.label_174
.label_174:
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0xb0]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	al, byte ptr [rbp - 0xe2]
	mov	r8d, dword ptr [rbp - 0x8c]
	mov	r9d, dword ptr [rbp - 0xfc]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	r10, qword ptr [rbp - 0x50]
	mov	r11d, dword ptr [rbp - 0x54]
	and	al, 1
	movzx	ebx, al
	mov	qword ptr [rbp - 0x8c8], rcx
	mov	ecx, ebx
	mov	r14, qword ptr [rbp - 0x8c8]
	mov	qword ptr [rsp], r14
	mov	qword ptr [rsp + 8], r10
	mov	dword ptr [rsp + 0x10], r11d
	call	__strftime_internal
	mov	qword ptr [rbp - 0x8d0], rax
.label_172:
	mov	rax, qword ptr [rbp - 0x180]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_241
.label_107:
	lea	rax, [rbp - 0x19d]
	mov	qword ptr [rbp - 0x1a8], rax
	mov	rax, qword ptr [rbp - 0x1a8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x1a8], rcx
	mov	byte ptr [rax], 0x20
	mov	rax, qword ptr [rbp - 0x1a8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x1a8], rcx
	mov	byte ptr [rax], 0x25
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_271
	mov	eax, dword ptr [rbp - 0x90]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x1a8]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rbp - 0x1a8], rsi
	mov	byte ptr [rdx], cl
.label_271:
	mov	eax, 0x400
	mov	esi, eax
	lea	rdx, [rbp - 0x19d]
	lea	rdi, [rbp - 0x5b0]
	mov	eax, dword ptr [rbp - 0xf8]
	mov	cl, al
	mov	r8, qword ptr [rbp - 0x1a8]
	mov	r9, r8
	add	r9, 1
	mov	qword ptr [rbp - 0x1a8], r9
	mov	byte ptr [r8], cl
	mov	r8, qword ptr [rbp - 0x1a8]
	mov	byte ptr [r8], 0
	mov	rcx, qword ptr [rbp - 0x30]
	call	strftime
	mov	qword ptr [rbp - 0x5b8], rax
	cmp	qword ptr [rbp - 0x5b8], 0
	je	.label_313
	jmp	.label_317
.label_317:
	mov	rax, qword ptr [rbp - 0x5b8]
	sub	rax, 1
	mov	qword ptr [rbp - 0x5c0], rax
	cmp	dword ptr [rbp - 0x3c], 0
	jge	.label_318
	xor	eax, eax
	mov	dword ptr [rbp - 0x8d4], eax
	jmp	.label_321
.label_318:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x8d4], eax
.label_321:
	mov	eax, dword ptr [rbp - 0x8d4]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x5c8], rcx
	mov	rcx, qword ptr [rbp - 0x5c0]
	cmp	rcx, qword ptr [rbp - 0x5c8]
	jae	.label_138
	mov	rax, qword ptr [rbp - 0x5c8]
	mov	qword ptr [rbp - 0x8e0], rax
	jmp	.label_335
.label_138:
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rbp - 0x8e0], rax
.label_335:
	mov	rax, qword ptr [rbp - 0x8e0]
	mov	qword ptr [rbp - 0x5d0], rax
	mov	rax, qword ptr [rbp - 0x5d0]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_341
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_167
.label_341:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_351
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_360
	mov	rax, qword ptr [rbp - 0x5c0]
	cmp	rax, qword ptr [rbp - 0x5c8]
	jae	.label_360
	movsxd	rax, dword ptr [rbp - 0x3c]
	sub	rax, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rbp - 0x5d8], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_363
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_369
.label_363:
	jmp	.label_295
.label_295:
	mov	qword ptr [rbp - 0x5e0], 0
.label_383:
	mov	rax, qword ptr [rbp - 0x5e0]
	cmp	rax, qword ptr [rbp - 0x5d8]
	jae	.label_377
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x8e4], eax
	mov	rax, qword ptr [rbp - 0x5e0]
	add	rax, 1
	mov	qword ptr [rbp - 0x5e0], rax
	jmp	.label_383
.label_377:
	jmp	.label_391
.label_391:
	jmp	.label_394
.label_369:
	jmp	.label_396
.label_396:
	mov	qword ptr [rbp - 0x5e8], 0
.label_411:
	mov	rax, qword ptr [rbp - 0x5e8]
	cmp	rax, qword ptr [rbp - 0x5d8]
	jae	.label_400
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x8e8], eax
	mov	rax, qword ptr [rbp - 0x5e8]
	add	rax, 1
	mov	qword ptr [rbp - 0x5e8], rax
	jmp	.label_411
.label_400:
	jmp	.label_422
.label_422:
	jmp	.label_394
.label_394:
	jmp	.label_360
.label_360:
	jmp	.label_428
.label_428:
	test	byte ptr [rbp - 0xe1], 1
	je	.label_430
	lea	rax, [rbp - 0x5b0]
	mov	rdi, qword ptr [rbp - 0x80]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x5c0]
	mov	rsi, rax
	call	fwrite_lowcase
	jmp	.label_439
.label_430:
	test	byte ptr [rbp - 0xe2], 1
	je	.label_440
	lea	rax, [rbp - 0x5b0]
	mov	rdi, qword ptr [rbp - 0x80]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x5c0]
	mov	rsi, rax
	call	fwrite_uppcase
	jmp	.label_198
.label_440:
	mov	eax, 1
	mov	edx, eax
	lea	rcx, [rbp - 0x5b0]
	add	rcx, 1
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x8f0], rdi
	mov	rdi, rcx
	mov	rcx, qword ptr [rbp - 0x8f0]
	call	fwrite
	mov	qword ptr [rbp - 0x8f8], rax
.label_198:
	jmp	.label_439
.label_439:
	jmp	.label_464
.label_464:
	jmp	.label_351
.label_351:
	mov	rax, qword ptr [rbp - 0x5d0]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_313
.label_313:
	jmp	.label_241
.label_1068:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_472
	jmp	.label_107
.label_472:
	xor	eax, eax
	mov	cl, al
	mov	eax, 0x64
	mov	rdx, qword ptr [rbp - 0x30]
	mov	esi, dword ptr [rdx + 0x14]
	mov	dword ptr [rbp - 0x8fc], eax
	mov	eax, esi
	cdq	
	mov	esi, dword ptr [rbp - 0x8fc]
	idiv	esi
	add	eax, 0x13
	mov	dword ptr [rbp - 0x5ec], eax
	mov	rdi, qword ptr [rbp - 0x30]
	mov	eax, dword ptr [rdi + 0x14]
	cdq	
	idiv	esi
	cmp	edx, 0
	mov	byte ptr [rbp - 0x8fd], cl
	jge	.label_475
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x5ec]
	setl	cl
	mov	byte ptr [rbp - 0x8fd], cl
.label_475:
	mov	al, byte ptr [rbp - 0x8fd]
	and	al, 1
	movzx	ecx, al
	mov	edx, dword ptr [rbp - 0x5ec]
	sub	edx, ecx
	mov	dword ptr [rbp - 0x5ec], edx
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax + 0x14], 0xfffff894
	setl	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x9d], cl
	mov	edx, dword ptr [rbp - 0x5ec]
	mov	dword ptr [rbp - 0x9c], edx
	jmp	.label_217
.label_1102:
	cmp	dword ptr [rbp - 0x90], 0x4f
	jne	.label_112
	jmp	.label_111
.label_112:
	jmp	.label_107
.label_1069:
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_510
	jmp	.label_111
.label_510:
	movabs	rax, OFFSET FLAT:label_515
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_268
.label_1088:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_519
	jmp	.label_111
.label_519:
	jmp	.label_526
.label_526:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 0xc]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_103
.label_1089:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_533
	jmp	.label_111
.label_533:
	jmp	.label_535
.label_535:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 0xc]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_506
.label_126:
	mov	byte ptr [rbp - 0x9e], 1
	jmp	.label_469
.label_217:
	cmp	dword ptr [rbp - 0x8c], 0
	jne	.label_392
	mov	eax, dword ptr [rbp - 0x38]
	mov	dword ptr [rbp - 0x8c], eax
.label_392:
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x8c], 0x2b
	mov	byte ptr [rbp - 0x8fe], cl
	jne	.label_547
	mov	al, 1
	mov	ecx, 0x270f
	mov	edx, 0x63
	cmp	dword ptr [rbp - 0x94], 2
	cmove	ecx, edx
	cmp	ecx, dword ptr [rbp - 0x9c]
	mov	byte ptr [rbp - 0x8ff], al
	jb	.label_551
	mov	eax, dword ptr [rbp - 0x94]
	cmp	eax, dword ptr [rbp - 0x3c]
	setl	cl
	mov	byte ptr [rbp - 0x8ff], cl
.label_551:
	mov	al, byte ptr [rbp - 0x8ff]
	mov	byte ptr [rbp - 0x8fe], al
.label_547:
	mov	al, byte ptr [rbp - 0x8fe]
	and	al, 1
	mov	byte ptr [rbp - 0x9e], al
	jmp	.label_183
.label_506:
	cmp	dword ptr [rbp - 0x8c], 0
	jne	.label_560
	mov	dword ptr [rbp - 0x8c], 0x5f
.label_560:
	jmp	.label_103
.label_103:
	cmp	dword ptr [rbp - 0x98], 0
	setl	al
	and	al, 1
	mov	byte ptr [rbp - 0x9d], al
	mov	ecx, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x9c], ecx
.label_258:
	mov	byte ptr [rbp - 0x9e], 0
.label_183:
	mov	dword ptr [rbp - 0xa4], 0
.label_469:
	cmp	dword ptr [rbp - 0x90], 0x4f
	jne	.label_115
	test	byte ptr [rbp - 0x9d], 1
	jne	.label_115
	jmp	.label_107
.label_115:
	lea	rax, [rbp - 0xe0]
	add	rax, 0x17
	mov	qword ptr [rbp - 0xc0], rax
	test	byte ptr [rbp - 0x9d], 1
	je	.label_120
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x9c]
	mov	dword ptr [rbp - 0x9c], eax
.label_120:
	jmp	.label_130
.label_130:
	mov	eax, dword ptr [rbp - 0xa4]
	and	eax, 1
	cmp	eax, 0
	je	.label_133
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0xc0], rcx
	mov	byte ptr [rax - 1], 0x3a
.label_133:
	mov	eax, 0xa
	mov	ecx, dword ptr [rbp - 0xa4]
	sar	ecx, 1
	mov	dword ptr [rbp - 0xa4], ecx
	mov	ecx, dword ptr [rbp - 0x9c]
	mov	dword ptr [rbp - 0x904], eax
	mov	eax, ecx
	xor	edx, edx
	mov	ecx, dword ptr [rbp - 0x904]
	div	ecx
	add	edx, 0x30
	mov	sil, dl
	mov	rdi, qword ptr [rbp - 0xc0]
	mov	r8, rdi
	add	r8, -1
	mov	qword ptr [rbp - 0xc0], r8
	mov	byte ptr [rdi - 1], sil
	mov	edx, dword ptr [rbp - 0x9c]
	mov	eax, edx
	xor	edx, edx
	div	ecx
	mov	dword ptr [rbp - 0x9c], eax
	mov	al, 1
	cmp	dword ptr [rbp - 0x9c], 0
	mov	byte ptr [rbp - 0x905], al
	jne	.label_145
	cmp	dword ptr [rbp - 0xa4], 0
	setne	al
	mov	byte ptr [rbp - 0x905], al
.label_145:
	mov	al, byte ptr [rbp - 0x905]
	test	al, 1
	jne	.label_130
	jmp	.label_176
.label_176:
	mov	eax, dword ptr [rbp - 0x94]
	cmp	eax, dword ptr [rbp - 0x3c]
	jge	.label_177
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x94], eax
.label_177:
	test	byte ptr [rbp - 0x9d], 1
	je	.label_114
	mov	eax, 0x2d
	mov	dword ptr [rbp - 0x90c], eax
	jmp	.label_184
.label_114:
	xor	eax, eax
	mov	ecx, 0x2b
	mov	dl, byte ptr [rbp - 0x9e]
	test	dl, 1
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x90c], eax
.label_184:
	mov	eax, dword ptr [rbp - 0x90c]
	mov	cl, al
	mov	byte ptr [rbp - 0xb1], cl
	cmp	dword ptr [rbp - 0x8c], 0x2d
	jne	.label_194
	cmp	byte ptr [rbp - 0xb1], 0
	je	.label_201
	jmp	.label_205
.label_205:
	mov	qword ptr [rbp - 0x5f8], 1
	cmp	dword ptr [rbp - 0x3c], 0
	jge	.label_209
	xor	eax, eax
	mov	dword ptr [rbp - 0x910], eax
	jmp	.label_215
.label_209:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x910], eax
.label_215:
	mov	eax, dword ptr [rbp - 0x910]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x600], rcx
	mov	rcx, qword ptr [rbp - 0x5f8]
	cmp	rcx, qword ptr [rbp - 0x600]
	jae	.label_223
	mov	rax, qword ptr [rbp - 0x600]
	mov	qword ptr [rbp - 0x918], rax
	jmp	.label_229
.label_223:
	mov	rax, qword ptr [rbp - 0x5f8]
	mov	qword ptr [rbp - 0x918], rax
.label_229:
	mov	rax, qword ptr [rbp - 0x918]
	mov	qword ptr [rbp - 0x608], rax
	mov	rax, qword ptr [rbp - 0x608]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_238
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_167
.label_238:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_248
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_256
	mov	rax, qword ptr [rbp - 0x5f8]
	cmp	rax, qword ptr [rbp - 0x600]
	jae	.label_256
	movsxd	rax, dword ptr [rbp - 0x3c]
	sub	rax, qword ptr [rbp - 0x5f8]
	mov	qword ptr [rbp - 0x610], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_262
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_269
.label_262:
	jmp	.label_272
.label_272:
	mov	qword ptr [rbp - 0x618], 0
.label_193:
	mov	rax, qword ptr [rbp - 0x618]
	cmp	rax, qword ptr [rbp - 0x610]
	jae	.label_277
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x91c], eax
	mov	rax, qword ptr [rbp - 0x618]
	add	rax, 1
	mov	qword ptr [rbp - 0x618], rax
	jmp	.label_193
.label_277:
	jmp	.label_409
.label_409:
	jmp	.label_293
.label_269:
	jmp	.label_296
.label_296:
	mov	qword ptr [rbp - 0x620], 0
.label_304:
	mov	rax, qword ptr [rbp - 0x620]
	cmp	rax, qword ptr [rbp - 0x610]
	jae	.label_282
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x920], eax
	mov	rax, qword ptr [rbp - 0x620]
	add	rax, 1
	mov	qword ptr [rbp - 0x620], rax
	jmp	.label_304
.label_282:
	jmp	.label_311
.label_311:
	jmp	.label_293
.label_293:
	jmp	.label_256
.label_256:
	movsx	edi, byte ptr [rbp - 0xb1]
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x924], eax
.label_248:
	mov	rax, qword ptr [rbp - 0x608]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_201
.label_201:
	jmp	.label_306
.label_194:
	lea	rax, [rbp - 0xe0]
	movsxd	rcx, dword ptr [rbp - 0x94]
	add	rax, 0x17
	mov	rdx, qword ptr [rbp - 0xc0]
	sub	rax, rdx
	sub	rcx, rax
	cmp	byte ptr [rbp - 0xb1], 0
	setne	sil
	xor	sil, 0xff
	xor	sil, 0xff
	and	sil, 1
	movzx	edi, sil
	movsxd	rax, edi
	sub	rcx, rax
	mov	edi, ecx
	mov	dword ptr [rbp - 0x624], edi
	cmp	dword ptr [rbp - 0x624], 0
	jle	.label_324
	cmp	dword ptr [rbp - 0x8c], 0x5f
	jne	.label_340
	movsxd	rax, dword ptr [rbp - 0x624]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_106
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_167
.label_106:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_376
	jmp	.label_354
.label_354:
	mov	qword ptr [rbp - 0x630], 0
.label_368:
	mov	rax, qword ptr [rbp - 0x630]
	movsxd	rcx, dword ptr [rbp - 0x624]
	cmp	rax, rcx
	jae	.label_210
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x928], eax
	mov	rax, qword ptr [rbp - 0x630]
	add	rax, 1
	mov	qword ptr [rbp - 0x630], rax
	jmp	.label_368
.label_210:
	jmp	.label_374
.label_374:
	jmp	.label_376
.label_376:
	movsxd	rax, dword ptr [rbp - 0x624]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	mov	ecx, dword ptr [rbp - 0x3c]
	cmp	ecx, dword ptr [rbp - 0x624]
	jle	.label_308
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, dword ptr [rbp - 0x624]
	mov	dword ptr [rbp - 0x92c], eax
	jmp	.label_381
.label_308:
	xor	eax, eax
	mov	dword ptr [rbp - 0x92c], eax
	jmp	.label_381
.label_381:
	mov	eax, dword ptr [rbp - 0x92c]
	mov	dword ptr [rbp - 0x3c], eax
	cmp	byte ptr [rbp - 0xb1], 0
	je	.label_388
	jmp	.label_397
.label_397:
	mov	qword ptr [rbp - 0x638], 1
	cmp	dword ptr [rbp - 0x3c], 0
	jge	.label_399
	xor	eax, eax
	mov	dword ptr [rbp - 0x930], eax
	jmp	.label_408
.label_399:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x930], eax
.label_408:
	mov	eax, dword ptr [rbp - 0x930]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x640], rcx
	mov	rcx, qword ptr [rbp - 0x638]
	cmp	rcx, qword ptr [rbp - 0x640]
	jae	.label_413
	mov	rax, qword ptr [rbp - 0x640]
	mov	qword ptr [rbp - 0x938], rax
	jmp	.label_539
.label_413:
	mov	rax, qword ptr [rbp - 0x638]
	mov	qword ptr [rbp - 0x938], rax
.label_539:
	mov	rax, qword ptr [rbp - 0x938]
	mov	qword ptr [rbp - 0x648], rax
	mov	rax, qword ptr [rbp - 0x648]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_435
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_167
.label_435:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_448
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_452
	mov	rax, qword ptr [rbp - 0x638]
	cmp	rax, qword ptr [rbp - 0x640]
	jae	.label_452
	movsxd	rax, dword ptr [rbp - 0x3c]
	sub	rax, qword ptr [rbp - 0x638]
	mov	qword ptr [rbp - 0x650], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_458
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_290
.label_458:
	jmp	.label_466
.label_466:
	mov	qword ptr [rbp - 0x658], 0
.label_476:
	mov	rax, qword ptr [rbp - 0x658]
	cmp	rax, qword ptr [rbp - 0x650]
	jae	.label_470
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x93c], eax
	mov	rax, qword ptr [rbp - 0x658]
	add	rax, 1
	mov	qword ptr [rbp - 0x658], rax
	jmp	.label_476
.label_470:
	jmp	.label_425
.label_425:
	jmp	.label_481
.label_290:
	jmp	.label_482
.label_482:
	mov	qword ptr [rbp - 0x660], 0
.label_520:
	mov	rax, qword ptr [rbp - 0x660]
	cmp	rax, qword ptr [rbp - 0x650]
	jae	.label_485
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x940], eax
	mov	rax, qword ptr [rbp - 0x660]
	add	rax, 1
	mov	qword ptr [rbp - 0x660], rax
	jmp	.label_520
.label_485:
	jmp	.label_496
.label_496:
	jmp	.label_481
.label_481:
	jmp	.label_452
.label_452:
	movsx	edi, byte ptr [rbp - 0xb1]
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x944], eax
.label_448:
	mov	rax, qword ptr [rbp - 0x648]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_388
.label_388:
	jmp	.label_508
.label_340:
	movsxd	rax, dword ptr [rbp - 0x94]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_511
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_167
.label_511:
	cmp	byte ptr [rbp - 0xb1], 0
	je	.label_384
	jmp	.label_522
.label_522:
	mov	qword ptr [rbp - 0x668], 1
	cmp	dword ptr [rbp - 0x3c], 0
	jge	.label_524
	xor	eax, eax
	mov	dword ptr [rbp - 0x948], eax
	jmp	.label_531
.label_524:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x948], eax
.label_531:
	mov	eax, dword ptr [rbp - 0x948]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x670], rcx
	mov	rcx, qword ptr [rbp - 0x668]
	cmp	rcx, qword ptr [rbp - 0x670]
	jae	.label_534
	mov	rax, qword ptr [rbp - 0x670]
	mov	qword ptr [rbp - 0x950], rax
	jmp	.label_538
.label_534:
	mov	rax, qword ptr [rbp - 0x668]
	mov	qword ptr [rbp - 0x950], rax
.label_538:
	mov	rax, qword ptr [rbp - 0x950]
	mov	qword ptr [rbp - 0x678], rax
	mov	rax, qword ptr [rbp - 0x678]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_545
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_167
.label_545:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_554
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_490
	mov	rax, qword ptr [rbp - 0x668]
	cmp	rax, qword ptr [rbp - 0x670]
	jae	.label_490
	movsxd	rax, dword ptr [rbp - 0x3c]
	sub	rax, qword ptr [rbp - 0x668]
	mov	qword ptr [rbp - 0x680], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_557
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_562
.label_557:
	jmp	.label_563
.label_563:
	mov	qword ptr [rbp - 0x688], 0
.label_113:
	mov	rax, qword ptr [rbp - 0x688]
	cmp	rax, qword ptr [rbp - 0x680]
	jae	.label_118
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x954], eax
	mov	rax, qword ptr [rbp - 0x688]
	add	rax, 1
	mov	qword ptr [rbp - 0x688], rax
	jmp	.label_113
.label_118:
	jmp	.label_279
.label_279:
	jmp	.label_143
.label_562:
	jmp	.label_121
.label_121:
	mov	qword ptr [rbp - 0x690], 0
.label_302:
	mov	rax, qword ptr [rbp - 0x690]
	cmp	rax, qword ptr [rbp - 0x680]
	jae	.label_125
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x958], eax
	mov	rax, qword ptr [rbp - 0x690]
	add	rax, 1
	mov	qword ptr [rbp - 0x690], rax
	jmp	.label_302
.label_125:
	jmp	.label_141
.label_141:
	jmp	.label_143
.label_143:
	jmp	.label_490
.label_490:
	movsx	edi, byte ptr [rbp - 0xb1]
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x95c], eax
.label_554:
	mov	rax, qword ptr [rbp - 0x678]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_384
.label_384:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_423
	jmp	.label_158
.label_158:
	mov	qword ptr [rbp - 0x698], 0
.label_315:
	mov	rax, qword ptr [rbp - 0x698]
	movsxd	rcx, dword ptr [rbp - 0x624]
	cmp	rax, rcx
	jae	.label_161
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x960], eax
	mov	rax, qword ptr [rbp - 0x698]
	add	rax, 1
	mov	qword ptr [rbp - 0x698], rax
	jmp	.label_315
.label_161:
	jmp	.label_173
.label_173:
	jmp	.label_423
.label_423:
	movsxd	rax, dword ptr [rbp - 0x624]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	mov	dword ptr [rbp - 0x3c], 0
.label_508:
	jmp	.label_180
.label_324:
	cmp	byte ptr [rbp - 0xb1], 0
	je	.label_116
	jmp	.label_185
.label_185:
	mov	qword ptr [rbp - 0x6a0], 1
	cmp	dword ptr [rbp - 0x3c], 0
	jge	.label_186
	xor	eax, eax
	mov	dword ptr [rbp - 0x964], eax
	jmp	.label_191
.label_186:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x964], eax
.label_191:
	mov	eax, dword ptr [rbp - 0x964]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x6a8], rcx
	mov	rcx, qword ptr [rbp - 0x6a0]
	cmp	rcx, qword ptr [rbp - 0x6a8]
	jae	.label_200
	mov	rax, qword ptr [rbp - 0x6a8]
	mov	qword ptr [rbp - 0x970], rax
	jmp	.label_259
.label_200:
	mov	rax, qword ptr [rbp - 0x6a0]
	mov	qword ptr [rbp - 0x970], rax
.label_259:
	mov	rax, qword ptr [rbp - 0x970]
	mov	qword ptr [rbp - 0x6b0], rax
	mov	rax, qword ptr [rbp - 0x6b0]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_220
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_167
.label_220:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_232
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_235
	mov	rax, qword ptr [rbp - 0x6a0]
	cmp	rax, qword ptr [rbp - 0x6a8]
	jae	.label_235
	movsxd	rax, dword ptr [rbp - 0x3c]
	sub	rax, qword ptr [rbp - 0x6a0]
	mov	qword ptr [rbp - 0x6b8], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_243
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_247
.label_243:
	jmp	.label_495
.label_495:
	mov	qword ptr [rbp - 0x6c0], 0
.label_265:
	mov	rax, qword ptr [rbp - 0x6c0]
	cmp	rax, qword ptr [rbp - 0x6b8]
	jae	.label_257
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x974], eax
	mov	rax, qword ptr [rbp - 0x6c0]
	add	rax, 1
	mov	qword ptr [rbp - 0x6c0], rax
	jmp	.label_265
.label_257:
	jmp	.label_124
.label_124:
	jmp	.label_131
.label_247:
	jmp	.label_424
.label_424:
	mov	qword ptr [rbp - 0x6c8], 0
.label_287:
	mov	rax, qword ptr [rbp - 0x6c8]
	cmp	rax, qword ptr [rbp - 0x6b8]
	jae	.label_164
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x978], eax
	mov	rax, qword ptr [rbp - 0x6c8]
	add	rax, 1
	mov	qword ptr [rbp - 0x6c8], rax
	jmp	.label_287
.label_164:
	jmp	.label_254
.label_254:
	jmp	.label_131
.label_131:
	jmp	.label_235
.label_235:
	movsx	edi, byte ptr [rbp - 0xb1]
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x97c], eax
.label_232:
	mov	rax, qword ptr [rbp - 0x6b0]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_116
.label_116:
	jmp	.label_180
.label_180:
	jmp	.label_306
.label_306:
	jmp	.label_487
.label_487:
	lea	rax, [rbp - 0xe0]
	add	rax, 0x17
	mov	rcx, qword ptr [rbp - 0xc0]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x6d0], rax
	cmp	dword ptr [rbp - 0x3c], 0
	jge	.label_309
	xor	eax, eax
	mov	dword ptr [rbp - 0x980], eax
	jmp	.label_410
.label_309:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x980], eax
.label_410:
	mov	eax, dword ptr [rbp - 0x980]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x6d8], rcx
	mov	rcx, qword ptr [rbp - 0x6d0]
	cmp	rcx, qword ptr [rbp - 0x6d8]
	jae	.label_320
	mov	rax, qword ptr [rbp - 0x6d8]
	mov	qword ptr [rbp - 0x988], rax
	jmp	.label_331
.label_320:
	mov	rax, qword ptr [rbp - 0x6d0]
	mov	qword ptr [rbp - 0x988], rax
.label_331:
	mov	rax, qword ptr [rbp - 0x988]
	mov	qword ptr [rbp - 0x6e0], rax
	mov	rax, qword ptr [rbp - 0x6e0]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_336
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_167
.label_336:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_122
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_140
	mov	rax, qword ptr [rbp - 0x6d0]
	cmp	rax, qword ptr [rbp - 0x6d8]
	jae	.label_140
	movsxd	rax, dword ptr [rbp - 0x3c]
	sub	rax, qword ptr [rbp - 0x6d0]
	mov	qword ptr [rbp - 0x6e8], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_357
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_366
.label_357:
	jmp	.label_253
.label_253:
	mov	qword ptr [rbp - 0x6f0], 0
.label_418:
	mov	rax, qword ptr [rbp - 0x6f0]
	cmp	rax, qword ptr [rbp - 0x6e8]
	jae	.label_370
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x98c], eax
	mov	rax, qword ptr [rbp - 0x6f0]
	add	rax, 1
	mov	qword ptr [rbp - 0x6f0], rax
	jmp	.label_418
.label_370:
	jmp	.label_361
.label_361:
	jmp	.label_386
.label_366:
	jmp	.label_151
.label_151:
	mov	qword ptr [rbp - 0x6f8], 0
.label_404:
	mov	rax, qword ptr [rbp - 0x6f8]
	cmp	rax, qword ptr [rbp - 0x6e8]
	jae	.label_398
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x990], eax
	mov	rax, qword ptr [rbp - 0x6f8]
	add	rax, 1
	mov	qword ptr [rbp - 0x6f8], rax
	jmp	.label_404
.label_398:
	jmp	.label_412
.label_412:
	jmp	.label_386
.label_386:
	jmp	.label_140
.label_140:
	jmp	.label_417
.label_417:
	test	byte ptr [rbp - 0xe1], 1
	je	.label_419
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rdx, qword ptr [rbp - 0x6d0]
	call	fwrite_lowcase
	jmp	.label_431
.label_419:
	test	byte ptr [rbp - 0xe2], 1
	je	.label_432
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rdx, qword ptr [rbp - 0x6d0]
	call	fwrite_uppcase
	jmp	.label_441
.label_432:
	mov	eax, 1
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0xc0]
	mov	rsi, qword ptr [rbp - 0x6d0]
	mov	rcx, qword ptr [rbp - 0x80]
	call	fwrite
	mov	qword ptr [rbp - 0x998], rax
.label_441:
	jmp	.label_431
.label_431:
	jmp	.label_453
.label_453:
	jmp	.label_122
.label_122:
	mov	rax, qword ptr [rbp - 0x6e0]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_241
.label_1070:
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_459
	jmp	.label_111
.label_459:
	cmp	dword ptr [rbp - 0x8c], 0
	jne	.label_462
	cmp	dword ptr [rbp - 0x3c], 0
	jge	.label_462
	mov	dword ptr [rbp - 0x8c], 0x2b
	mov	dword ptr [rbp - 0xfc], 4
	jmp	.label_467
.label_462:
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 6
	mov	dword ptr [rbp - 0xfc], eax
	cmp	dword ptr [rbp - 0xfc], 0
	jge	.label_471
	mov	dword ptr [rbp - 0xfc], 0
.label_471:
	jmp	.label_467
.label_467:
	movabs	rax, OFFSET FLAT:label_402
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_403
.label_1072:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_483
	jmp	.label_111
.label_483:
	jmp	.label_486
.label_486:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_103
.label_1073:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_491
	jmp	.label_111
.label_491:
	jmp	.label_529
.label_529:
	mov	dword ptr [rbp - 0x94], 2
	mov	eax, dword ptr [rbp - 0x64]
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_103
.label_1091:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_502
	jmp	.label_111
.label_502:
	jmp	.label_504
.label_504:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_506
.label_1092:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_513
	jmp	.label_111
.label_513:
	jmp	.label_517
.label_517:
	mov	dword ptr [rbp - 0x94], 2
	mov	eax, dword ptr [rbp - 0x64]
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_506
.label_1090:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_525
	jmp	.label_111
.label_525:
	jmp	.label_530
.label_530:
	mov	dword ptr [rbp - 0x94], 3
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax + 0x1c], -1
	setl	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x9d], cl
	mov	rax, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rax + 0x1c]
	add	edx, 1
	mov	dword ptr [rbp - 0x9c], edx
	jmp	.label_258
.label_1074:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_537
	jmp	.label_111
.label_537:
	jmp	.label_542
.label_542:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 4]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_103
.label_1093:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_548
	jmp	.label_111
.label_548:
	jmp	.label_552
.label_552:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax + 0x10], -1
	setl	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x9d], cl
	mov	rax, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rax + 0x10]
	add	edx, 1
	mov	dword ptr [rbp - 0x9c], edx
	jmp	.label_258
.label_1075:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_334
	jmp	.label_111
.label_334:
	mov	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0x98], eax
	cmp	dword ptr [rbp - 0x3c], -1
	jne	.label_558
	mov	dword ptr [rbp - 0x3c], 9
	jmp	.label_117
.label_558:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x6fc], eax
.label_105:
	cmp	dword ptr [rbp - 0x6fc], 9
	jge	.label_104
	mov	eax, 0xa
	mov	ecx, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x99c], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x99c]
	idiv	ecx
	mov	dword ptr [rbp - 0x98], eax
	mov	eax, dword ptr [rbp - 0x6fc]
	add	eax, 1
	mov	dword ptr [rbp - 0x6fc], eax
	jmp	.label_105
.label_104:
	jmp	.label_117
.label_117:
	jmp	.label_119
.label_119:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x94], eax
	mov	eax, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_103
.label_1094:
	jmp	.label_127
.label_127:
	mov	qword ptr [rbp - 0x708], 1
	cmp	dword ptr [rbp - 0x3c], 0
	jge	.label_128
	xor	eax, eax
	mov	dword ptr [rbp - 0x9a0], eax
	jmp	.label_132
.label_128:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x9a0], eax
.label_132:
	mov	eax, dword ptr [rbp - 0x9a0]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x710], rcx
	mov	rcx, qword ptr [rbp - 0x708]
	cmp	rcx, qword ptr [rbp - 0x710]
	jae	.label_137
	mov	rax, qword ptr [rbp - 0x710]
	mov	qword ptr [rbp - 0x9a8], rax
	jmp	.label_148
.label_137:
	mov	rax, qword ptr [rbp - 0x708]
	mov	qword ptr [rbp - 0x9a8], rax
.label_148:
	mov	rax, qword ptr [rbp - 0x9a8]
	mov	qword ptr [rbp - 0x718], rax
	mov	rax, qword ptr [rbp - 0x718]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_156
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_167
.label_156:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_169
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_234
	mov	rax, qword ptr [rbp - 0x708]
	cmp	rax, qword ptr [rbp - 0x710]
	jae	.label_234
	movsxd	rax, dword ptr [rbp - 0x3c]
	sub	rax, qword ptr [rbp - 0x708]
	mov	qword ptr [rbp - 0x720], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_546
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_181
.label_546:
	jmp	.label_129
.label_129:
	mov	qword ptr [rbp - 0x728], 0
.label_197:
	mov	rax, qword ptr [rbp - 0x728]
	cmp	rax, qword ptr [rbp - 0x720]
	jae	.label_187
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x9ac], eax
	mov	rax, qword ptr [rbp - 0x728]
	add	rax, 1
	mov	qword ptr [rbp - 0x728], rax
	jmp	.label_197
.label_187:
	jmp	.label_203
.label_203:
	jmp	.label_207
.label_181:
	jmp	.label_211
.label_211:
	mov	qword ptr [rbp - 0x730], 0
.label_226:
	mov	rax, qword ptr [rbp - 0x730]
	cmp	rax, qword ptr [rbp - 0x720]
	jae	.label_213
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x9b0], eax
	mov	rax, qword ptr [rbp - 0x730]
	add	rax, 1
	mov	qword ptr [rbp - 0x730], rax
	jmp	.label_226
.label_213:
	jmp	.label_231
.label_231:
	jmp	.label_207
.label_207:
	jmp	.label_234
.label_234:
	mov	edi, 0xa
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x9b4], eax
.label_169:
	mov	rax, qword ptr [rbp - 0x718]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_241
.label_1076:
	mov	byte ptr [rbp - 0xe1], 1
	mov	dword ptr [rbp - 0xf8], 0x70
.label_1095:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_245
	mov	byte ptr [rbp - 0xe2], 0
	mov	byte ptr [rbp - 0xe1], 1
.label_245:
	jmp	.label_107
.label_1096:
	jmp	.label_255
.label_255:
	mov	dword ptr [rbp - 0x94], 1
	mov	byte ptr [rbp - 0x9d], 0
	mov	rax, qword ptr [rbp - 0x30]
	imul	ecx, dword ptr [rax + 0x10], 0xb
	sar	ecx, 5
	add	ecx, 1
	mov	dword ptr [rbp - 0x9c], ecx
	jmp	.label_258
.label_1077:
	movabs	rax, OFFSET FLAT:label_267
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_268
.label_1097:
	jmp	.label_107
.label_1078:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_274
	jmp	.label_111
.label_274:
	jmp	.label_281
.label_281:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_103
.label_1098:
	lea	rax, [rbp - 0x768]
	mov	ecx, 0x38
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x9c0], rax
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x9c0]
	call	mktime_z
	lea	rdx, [rbp - 0xe0]
	mov	qword ptr [rbp - 0x770], rax
	add	rdx, 0x17
	mov	qword ptr [rbp - 0xc0], rdx
	cmp	qword ptr [rbp - 0x770], 0
	setl	r8b
	and	r8b, 1
	mov	byte ptr [rbp - 0x9d], r8b
.label_329:
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x770]
	cqo	
	idiv	rcx
	mov	esi, edx
	mov	dword ptr [rbp - 0x774], esi
	mov	rdx, qword ptr [rbp - 0x770]
	mov	rax, rdx
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 0x770], rax
	test	byte ptr [rbp - 0x9d], 1
	je	.label_498
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x774]
	mov	dword ptr [rbp - 0x9c4], eax
	jmp	.label_319
.label_498:
	mov	eax, dword ptr [rbp - 0x774]
	mov	dword ptr [rbp - 0x9c4], eax
.label_319:
	mov	eax, dword ptr [rbp - 0x9c4]
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rsi, rdx
	add	rsi, -1
	mov	qword ptr [rbp - 0xc0], rsi
	mov	byte ptr [rdx - 1], cl
	cmp	qword ptr [rbp - 0x770], 0
	jne	.label_329
	mov	dword ptr [rbp - 0x94], 1
	mov	byte ptr [rbp - 0x9e], 0
	jmp	.label_176
.label_1082:
	cmp	dword ptr [rbp - 0x90], 0x4f
	jne	.label_342
	jmp	.label_111
.label_342:
	jmp	.label_107
.label_1079:
	movabs	rax, OFFSET FLAT:label_347
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_268
.label_1099:
	jmp	.label_350
.label_350:
	mov	qword ptr [rbp - 0x780], 1
	cmp	dword ptr [rbp - 0x3c], 0
	jge	.label_555
	xor	eax, eax
	mov	dword ptr [rbp - 0x9c8], eax
	jmp	.label_359
.label_555:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x9c8], eax
.label_359:
	mov	eax, dword ptr [rbp - 0x9c8]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x788], rcx
	mov	rcx, qword ptr [rbp - 0x780]
	cmp	rcx, qword ptr [rbp - 0x788]
	jae	.label_364
	mov	rax, qword ptr [rbp - 0x788]
	mov	qword ptr [rbp - 0x9d0], rax
	jmp	.label_372
.label_364:
	mov	rax, qword ptr [rbp - 0x780]
	mov	qword ptr [rbp - 0x9d0], rax
.label_372:
	mov	rax, qword ptr [rbp - 0x9d0]
	mov	qword ptr [rbp - 0x790], rax
	mov	rax, qword ptr [rbp - 0x790]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_380
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_167
.label_380:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_389
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_298
	mov	rax, qword ptr [rbp - 0x780]
	cmp	rax, qword ptr [rbp - 0x788]
	jae	.label_298
	movsxd	rax, dword ptr [rbp - 0x3c]
	sub	rax, qword ptr [rbp - 0x780]
	mov	qword ptr [rbp - 0x798], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_406
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_415
.label_406:
	jmp	.label_421
.label_421:
	mov	qword ptr [rbp - 0x7a0], 0
.label_436:
	mov	rax, qword ptr [rbp - 0x7a0]
	cmp	rax, qword ptr [rbp - 0x798]
	jae	.label_427
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x9d4], eax
	mov	rax, qword ptr [rbp - 0x7a0]
	add	rax, 1
	mov	qword ptr [rbp - 0x7a0], rax
	jmp	.label_436
.label_427:
	jmp	.label_444
.label_444:
	jmp	.label_159
.label_415:
	jmp	.label_447
.label_447:
	mov	qword ptr [rbp - 0x7a8], 0
.label_457:
	mov	rax, qword ptr [rbp - 0x7a8]
	cmp	rax, qword ptr [rbp - 0x798]
	jae	.label_451
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x9d8], eax
	mov	rax, qword ptr [rbp - 0x7a8]
	add	rax, 1
	mov	qword ptr [rbp - 0x7a8], rax
	jmp	.label_457
.label_451:
	jmp	.label_153
.label_153:
	jmp	.label_159
.label_159:
	jmp	.label_298
.label_298:
	mov	edi, 9
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x9dc], eax
.label_389:
	mov	rax, qword ptr [rbp - 0x790]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_241
.label_1100:
	jmp	.label_474
.label_474:
	mov	eax, 7
	mov	dword ptr [rbp - 0x94], 1
	mov	rcx, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rcx + 0x18]
	sub	edx, 1
	add	edx, 7
	mov	dword ptr [rbp - 0x9e0], eax
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0x9e0]
	idiv	esi
	add	edx, 1
	mov	dword ptr [rbp - 0x98], edx
	jmp	.label_103
.label_1080:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_455
	jmp	.label_111
.label_455:
	jmp	.label_477
.label_477:
	mov	eax, 7
	mov	dword ptr [rbp - 0x94], 2
	mov	rcx, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rcx + 0x1c]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	edx, dword ptr [rcx + 0x18]
	add	edx, 7
	mov	dword ptr [rbp - 0x9e4], eax
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0x9e4]
	idiv	esi
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_103
.label_1071:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_500
	jmp	.label_111
.label_500:
	mov	eax, 0xffffff9c
	mov	ecx, 0x12c
	mov	rdx, qword ptr [rbp - 0x30]
	mov	esi, dword ptr [rdx + 0x14]
	mov	rdx, qword ptr [rbp - 0x30]
	cmp	dword ptr [rdx + 0x14], 0
	cmovl	eax, ecx
	add	esi, eax
	mov	dword ptr [rbp - 0x7ac], esi
	mov	dword ptr [rbp - 0x7b0], 0
	mov	rdx, qword ptr [rbp - 0x30]
	mov	edi, dword ptr [rdx + 0x1c]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	esi, dword ptr [rdx + 0x18]
	call	iso_week_days
	mov	dword ptr [rbp - 0x7b4], eax
	cmp	dword ptr [rbp - 0x7b4], 0
	jge	.label_518
	xor	eax, eax
	mov	cl, al
	mov	eax, 4
	mov	dword ptr [rbp - 0x7b0], 0xffffffff
	mov	rdx, qword ptr [rbp - 0x30]
	mov	esi, dword ptr [rdx + 0x1c]
	mov	edi, dword ptr [rbp - 0x7ac]
	sub	edi, 1
	mov	dword ptr [rbp - 0x9e8], eax
	mov	eax, edi
	cdq	
	mov	edi, dword ptr [rbp - 0x9e8]
	idiv	edi
	cmp	edx, 0
	mov	dword ptr [rbp - 0x9ec], esi
	mov	byte ptr [rbp - 0x9ed], cl
	jne	.label_523
	mov	al, 1
	mov	ecx, 0x64
	mov	edx, dword ptr [rbp - 0x7ac]
	sub	edx, 1
	mov	byte ptr [rbp - 0x9ee], al
	mov	eax, edx
	cdq	
	idiv	ecx
	cmp	edx, 0
	mov	sil, byte ptr [rbp - 0x9ee]
	mov	byte ptr [rbp - 0x9ef], sil
	jne	.label_536
	mov	eax, 0x190
	mov	ecx, dword ptr [rbp - 0x7ac]
	sub	ecx, 1
	mov	dword ptr [rbp - 0x9f4], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x9f4]
	idiv	ecx
	cmp	edx, 0
	sete	sil
	mov	byte ptr [rbp - 0x9ef], sil
.label_536:
	mov	al, byte ptr [rbp - 0x9ef]
	mov	byte ptr [rbp - 0x9ed], al
.label_523:
	mov	al, byte ptr [rbp - 0x9ed]
	and	al, 1
	movzx	ecx, al
	add	ecx, 0x16d
	mov	edx, dword ptr [rbp - 0x9ec]
	add	edx, ecx
	mov	rsi, qword ptr [rbp - 0x30]
	mov	esi, dword ptr [rsi + 0x18]
	mov	edi, edx
	call	iso_week_days
	mov	dword ptr [rbp - 0x7b4], eax
	jmp	.label_154
.label_518:
	xor	eax, eax
	mov	cl, al
	mov	eax, 4
	mov	rdx, qword ptr [rbp - 0x30]
	mov	esi, dword ptr [rdx + 0x1c]
	mov	edi, dword ptr [rbp - 0x7ac]
	mov	dword ptr [rbp - 0x9f8], eax
	mov	eax, edi
	cdq	
	mov	edi, dword ptr [rbp - 0x9f8]
	idiv	edi
	cmp	edx, 0
	mov	dword ptr [rbp - 0x9fc], esi
	mov	byte ptr [rbp - 0x9fd], cl
	jne	.label_559
	mov	al, 1
	mov	ecx, 0x64
	mov	edx, dword ptr [rbp - 0x7ac]
	mov	byte ptr [rbp - 0x9fe], al
	mov	eax, edx
	cdq	
	idiv	ecx
	cmp	edx, 0
	mov	sil, byte ptr [rbp - 0x9fe]
	mov	byte ptr [rbp - 0x9ff], sil
	jne	.label_110
	mov	eax, 0x190
	mov	ecx, dword ptr [rbp - 0x7ac]
	mov	dword ptr [rbp - 0xa04], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0xa04]
	idiv	ecx
	cmp	edx, 0
	sete	sil
	mov	byte ptr [rbp - 0x9ff], sil
.label_110:
	mov	al, byte ptr [rbp - 0x9ff]
	mov	byte ptr [rbp - 0x9fd], al
.label_559:
	mov	al, byte ptr [rbp - 0x9fd]
	and	al, 1
	movzx	ecx, al
	add	ecx, 0x16d
	mov	edx, dword ptr [rbp - 0x9fc]
	sub	edx, ecx
	mov	rsi, qword ptr [rbp - 0x30]
	mov	esi, dword ptr [rsi + 0x18]
	mov	edi, edx
	call	iso_week_days
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x7b8], eax
	cmp	ecx, dword ptr [rbp - 0x7b8]
	jg	.label_348
	mov	dword ptr [rbp - 0x7b0], 1
	mov	eax, dword ptr [rbp - 0x7b8]
	mov	dword ptr [rbp - 0x7b4], eax
.label_348:
	jmp	.label_154
.label_154:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x47
	mov	dword ptr [rbp - 0xa08], ecx
	mov	dword ptr [rbp - 0xa0c], edx
	je	.label_155
	jmp	.label_163
.label_163:
	mov	eax, dword ptr [rbp - 0xa08]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0xa10], eax
	jne	.label_166
	jmp	.label_497
.label_497:
	mov	eax, 0x64
	mov	rcx, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rcx + 0x14]
	mov	dword ptr [rbp - 0xa14], eax
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0xa14]
	idiv	esi
	add	edx, dword ptr [rbp - 0x7b0]
	mov	eax, edx
	cdq	
	idiv	esi
	mov	dword ptr [rbp - 0x7bc], edx
	xor	eax, eax
	mov	dword ptr [rbp - 0x94], 2
	mov	byte ptr [rbp - 0x9d], 0
	cmp	eax, dword ptr [rbp - 0x7bc]
	jg	.label_339
	mov	eax, dword ptr [rbp - 0x7bc]
	mov	dword ptr [rbp - 0xa18], eax
	jmp	.label_407
.label_339:
	mov	eax, 0xfffff894
	mov	rcx, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rcx + 0x14]
	sub	eax, dword ptr [rbp - 0x7b0]
	cmp	edx, eax
	jge	.label_188
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x7bc]
	mov	dword ptr [rbp - 0xa1c], eax
	jmp	.label_195
.label_188:
	mov	eax, dword ptr [rbp - 0x7bc]
	add	eax, 0x64
	mov	dword ptr [rbp - 0xa1c], eax
.label_195:
	mov	eax, dword ptr [rbp - 0xa1c]
	mov	dword ptr [rbp - 0xa18], eax
.label_407:
	mov	eax, dword ptr [rbp - 0xa18]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_217
.label_155:
	jmp	.label_214
.label_214:
	mov	eax, 0xfffff894
	mov	dword ptr [rbp - 0x94], 4
	mov	rcx, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rcx + 0x14]
	sub	eax, dword ptr [rbp - 0x7b0]
	cmp	edx, eax
	setl	sil
	and	sil, 1
	mov	byte ptr [rbp - 0x9d], sil
	mov	rcx, qword ptr [rbp - 0x30]
	mov	eax, dword ptr [rcx + 0x14]
	add	eax, 0x76c
	add	eax, dword ptr [rbp - 0x7b0]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_217
.label_166:
	jmp	.label_236
.label_236:
	mov	eax, 7
	mov	dword ptr [rbp - 0x94], 2
	mov	ecx, dword ptr [rbp - 0x7b4]
	mov	dword ptr [rbp - 0xa20], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0xa20]
	idiv	ecx
	add	eax, 1
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_103
.label_1081:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_246
	jmp	.label_111
.label_246:
	jmp	.label_251
.label_251:
	mov	eax, 7
	mov	dword ptr [rbp - 0x94], 2
	mov	rcx, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rcx + 0x1c]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	esi, dword ptr [rcx + 0x18]
	sub	esi, 1
	add	esi, 7
	mov	dword ptr [rbp - 0xa24], eax
	mov	eax, esi
	mov	dword ptr [rbp - 0xa28], edx
	cdq	
	mov	esi, dword ptr [rbp - 0xa24]
	idiv	esi
	mov	edi, dword ptr [rbp - 0xa28]
	sub	edi, edx
	add	edi, 7
	mov	eax, edi
	cdq	
	idiv	esi
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_103
.label_1101:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_276
	jmp	.label_111
.label_276:
	jmp	.label_283
.label_283:
	mov	dword ptr [rbp - 0x94], 1
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 0x18]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_103
.label_1083:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_288
	jmp	.label_107
.label_288:
	cmp	dword ptr [rbp - 0x90], 0x4f
	jne	.label_292
	jmp	.label_111
.label_292:
	jmp	.label_300
.label_300:
	mov	dword ptr [rbp - 0x94], 4
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax + 0x14], 0xfffff894
	setl	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x9d], cl
	mov	rax, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rax + 0x14]
	add	edx, 0x76c
	mov	dword ptr [rbp - 0x9c], edx
	jmp	.label_217
.label_1103:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_310
	jmp	.label_107
.label_310:
	mov	eax, 0x64
	mov	rcx, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rcx + 0x14]
	mov	dword ptr [rbp - 0xa2c], eax
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0xa2c]
	idiv	esi
	mov	dword ptr [rbp - 0x7c0], edx
	cmp	dword ptr [rbp - 0x7c0], 0
	jge	.label_379
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax + 0x14], 0xfffff894
	jge	.label_322
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x7c0]
	mov	dword ptr [rbp - 0xa30], eax
	jmp	.label_327
.label_322:
	mov	eax, dword ptr [rbp - 0x7c0]
	add	eax, 0x64
	mov	dword ptr [rbp - 0xa30], eax
.label_327:
	mov	eax, dword ptr [rbp - 0xa30]
	mov	dword ptr [rbp - 0x7c0], eax
.label_379:
	jmp	.label_337
.label_337:
	mov	dword ptr [rbp - 0x94], 2
	mov	byte ptr [rbp - 0x9d], 0
	mov	eax, dword ptr [rbp - 0x7c0]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_217
.label_1084:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_343
	mov	byte ptr [rbp - 0xe2], 0
	mov	byte ptr [rbp - 0xe1], 1
.label_343:
	jmp	.label_349
.label_349:
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x7c8], rax
	cmp	dword ptr [rbp - 0x3c], 0
	jge	.label_353
	xor	eax, eax
	mov	dword ptr [rbp - 0xa34], eax
	jmp	.label_358
.label_353:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0xa34], eax
.label_358:
	mov	eax, dword ptr [rbp - 0xa34]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x7d0], rcx
	mov	rcx, qword ptr [rbp - 0x7c8]
	cmp	rcx, qword ptr [rbp - 0x7d0]
	jae	.label_362
	mov	rax, qword ptr [rbp - 0x7d0]
	mov	qword ptr [rbp - 0xa40], rax
	jmp	.label_371
.label_362:
	mov	rax, qword ptr [rbp - 0x7c8]
	mov	qword ptr [rbp - 0xa40], rax
.label_371:
	mov	rax, qword ptr [rbp - 0xa40]
	mov	qword ptr [rbp - 0x7d8], rax
	mov	rax, qword ptr [rbp - 0x7d8]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_378
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_167
.label_378:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_387
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_395
	mov	rax, qword ptr [rbp - 0x7c8]
	cmp	rax, qword ptr [rbp - 0x7d0]
	jae	.label_395
	movsxd	rax, dword ptr [rbp - 0x3c]
	sub	rax, qword ptr [rbp - 0x7c8]
	mov	qword ptr [rbp - 0x7e0], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_405
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_414
.label_405:
	jmp	.label_420
.label_420:
	mov	qword ptr [rbp - 0x7e8], 0
.label_434:
	mov	rax, qword ptr [rbp - 0x7e8]
	cmp	rax, qword ptr [rbp - 0x7e0]
	jae	.label_426
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0xa44], eax
	mov	rax, qword ptr [rbp - 0x7e8]
	add	rax, 1
	mov	qword ptr [rbp - 0x7e8], rax
	jmp	.label_434
.label_426:
	jmp	.label_443
.label_443:
	jmp	.label_285
.label_414:
	jmp	.label_446
.label_446:
	mov	qword ptr [rbp - 0x7f0], 0
.label_456:
	mov	rax, qword ptr [rbp - 0x7f0]
	cmp	rax, qword ptr [rbp - 0x7e0]
	jae	.label_450
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0xa48], eax
	mov	rax, qword ptr [rbp - 0x7f0]
	add	rax, 1
	mov	qword ptr [rbp - 0x7f0], rax
	jmp	.label_456
.label_450:
	jmp	.label_461
.label_461:
	jmp	.label_285
.label_285:
	jmp	.label_395
.label_395:
	jmp	.label_463
.label_463:
	test	byte ptr [rbp - 0xe1], 1
	je	.label_465
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x7c8]
	call	fwrite_lowcase
	jmp	.label_473
.label_465:
	test	byte ptr [rbp - 0xe2], 1
	je	.label_549
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x7c8]
	call	fwrite_uppcase
	jmp	.label_480
.label_549:
	mov	eax, 1
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rbp - 0x7c8]
	mov	rcx, qword ptr [rbp - 0x80]
	call	fwrite
	mov	qword ptr [rbp - 0xa50], rax
.label_480:
	jmp	.label_473
.label_473:
	jmp	.label_488
.label_488:
	jmp	.label_387
.label_387:
	mov	rax, qword ptr [rbp - 0x7d8]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_241
.label_1065:
	mov	qword ptr [rbp - 0xf0], 1
.label_501:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rbp - 0x88]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x3a
	jne	.label_493
	jmp	.label_499
.label_499:
	mov	rax, qword ptr [rbp - 0xf0]
	add	rax, 1
	mov	qword ptr [rbp - 0xf0], rax
	jmp	.label_501
.label_493:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rbp - 0x88]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x7a
	je	.label_505
	jmp	.label_111
.label_505:
	mov	rax, qword ptr [rbp - 0xf0]
	add	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_514
.label_1104:
	mov	qword ptr [rbp - 0xf0], 0
.label_514:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax + 0x20], 0
	jge	.label_521
	jmp	.label_241
.label_521:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	edx, ecx
	mov	dword ptr [rbp - 0x7f4], edx
	cmp	dword ptr [rbp - 0x7f4], 0
	mov	byte ptr [rbp - 0xa51], al
	jl	.label_528
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x7f4], 0
	mov	byte ptr [rbp - 0xa52], cl
	jne	.label_375
	mov	rax, qword ptr [rbp - 0x70]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	sete	dl
	mov	byte ptr [rbp - 0xa52], dl
.label_375:
	mov	al, byte ptr [rbp - 0xa52]
	mov	byte ptr [rbp - 0xa51], al
.label_528:
	mov	al, byte ptr [rbp - 0xa51]
	and	al, 1
	mov	byte ptr [rbp - 0x9d], al
	movsxd	rcx, dword ptr [rbp - 0x7f4]
	mov	edx, ecx
	imul	rcx, rcx, -0x77777777
	shr	rcx, 0x20
	mov	esi, ecx
	add	esi, edx
	mov	edx, esi
	shr	edx, 0x1f
	sar	esi, 5
	add	esi, edx
	movsxd	rcx, esi
	imul	rcx, rcx, -0x77777777
	shr	rcx, 0x20
	mov	edx, ecx
	add	edx, esi
	mov	esi, edx
	shr	esi, 0x1f
	sar	edx, 5
	add	edx, esi
	mov	dword ptr [rbp - 0x7f8], edx
	movsxd	rcx, dword ptr [rbp - 0x7f4]
	mov	edx, ecx
	imul	rcx, rcx, -0x77777777
	shr	rcx, 0x20
	mov	esi, ecx
	add	esi, edx
	mov	edx, esi
	shr	edx, 0x1f
	sar	esi, 5
	add	esi, edx
	movsxd	rcx, esi
	imul	rcx, rcx, -0x77777777
	shr	rcx, 0x20
	mov	edx, ecx
	add	edx, esi
	mov	edi, edx
	shr	edi, 0x1f
	sar	edx, 5
	add	edx, edi
	imul	edx, edx, 0x3c
	sub	esi, edx
	mov	dword ptr [rbp - 0x7fc], esi
	movsxd	rcx, dword ptr [rbp - 0x7f4]
	mov	edx, ecx
	imul	rcx, rcx, -0x77777777
	shr	rcx, 0x20
	mov	esi, ecx
	add	esi, edx
	mov	edi, esi
	shr	edi, 0x1f
	sar	esi, 5
	add	esi, edi
	imul	esi, esi, 0x3c
	sub	edx, esi
	mov	dword ptr [rbp - 0x800], edx
	mov	rcx, qword ptr [rbp - 0xf0]
	mov	r8, rcx
	sub	r8, 3
	mov	qword ptr [rbp - 0xa60], rcx
	mov	qword ptr [rbp - 0xa68], r8
	ja	.label_543
	mov	rax, qword ptr [rbp - 0xa60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_222]]
	jmp	rcx
.label_1112:
	jmp	.label_123
.label_123:
	mov	dword ptr [rbp - 0x94], 5
	mov	dword ptr [rbp - 0xa4], 0
	imul	eax, dword ptr [rbp - 0x7f8], 0x64
	add	eax, dword ptr [rbp - 0x7fc]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_126
.label_1113:
	jmp	.label_135
.label_135:
	jmp	.label_136
.label_136:
	mov	dword ptr [rbp - 0x94], 6
	mov	dword ptr [rbp - 0xa4], 4
	imul	eax, dword ptr [rbp - 0x7f8], 0x64
	add	eax, dword ptr [rbp - 0x7fc]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_126
.label_1114:
	jmp	.label_150
.label_150:
	jmp	.label_152
.label_152:
	mov	dword ptr [rbp - 0x94], 9
	mov	dword ptr [rbp - 0xa4], 0x14
	imul	eax, dword ptr [rbp - 0x7f8], 0x2710
	imul	ecx, dword ptr [rbp - 0x7fc], 0x64
	add	eax, ecx
	add	eax, dword ptr [rbp - 0x800]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_126
.label_1115:
	cmp	dword ptr [rbp - 0x800], 0
	je	.label_168
	jmp	.label_150
.label_168:
	cmp	dword ptr [rbp - 0x7fc], 0
	je	.label_170
	jmp	.label_135
.label_170:
	jmp	.label_171
.label_171:
	mov	dword ptr [rbp - 0x94], 3
	mov	dword ptr [rbp - 0xa4], 0
	mov	eax, dword ptr [rbp - 0x7f8]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_126
.label_543:
	jmp	.label_111
.label_1063:
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, -1
	mov	qword ptr [rbp - 0x88], rax
.label_416:
	jmp	.label_111
.label_111:
	mov	dword ptr [rbp - 0x804], 1
.label_199:
	mov	eax, 1
	sub	eax, dword ptr [rbp - 0x804]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x88]
	movsx	eax, byte ptr [rdx + rcx]
	cmp	eax, 0x25
	je	.label_190
	jmp	.label_212
.label_212:
	mov	eax, dword ptr [rbp - 0x804]
	add	eax, 1
	mov	dword ptr [rbp - 0x804], eax
	jmp	.label_199
.label_190:
	jmp	.label_204
.label_204:
	movsxd	rax, dword ptr [rbp - 0x804]
	mov	qword ptr [rbp - 0x810], rax
	cmp	dword ptr [rbp - 0x3c], 0
	jge	.label_208
	xor	eax, eax
	mov	dword ptr [rbp - 0xa6c], eax
	jmp	.label_216
.label_208:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0xa6c], eax
.label_216:
	mov	eax, dword ptr [rbp - 0xa6c]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x818], rcx
	mov	rcx, qword ptr [rbp - 0x810]
	cmp	rcx, qword ptr [rbp - 0x818]
	jae	.label_224
	mov	rax, qword ptr [rbp - 0x818]
	mov	qword ptr [rbp - 0xa78], rax
	jmp	.label_230
.label_224:
	mov	rax, qword ptr [rbp - 0x810]
	mov	qword ptr [rbp - 0xa78], rax
.label_230:
	mov	rax, qword ptr [rbp - 0xa78]
	mov	qword ptr [rbp - 0x820], rax
	mov	rax, qword ptr [rbp - 0x820]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_239
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_167
.label_239:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_249
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_252
	mov	rax, qword ptr [rbp - 0x810]
	cmp	rax, qword ptr [rbp - 0x818]
	jae	.label_252
	movsxd	rax, dword ptr [rbp - 0x3c]
	sub	rax, qword ptr [rbp - 0x810]
	mov	qword ptr [rbp - 0x828], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_263
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_270
.label_263:
	jmp	.label_273
.label_273:
	mov	qword ptr [rbp - 0x830], 0
.label_286:
	mov	rax, qword ptr [rbp - 0x830]
	cmp	rax, qword ptr [rbp - 0x828]
	jae	.label_278
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0xa7c], eax
	mov	rax, qword ptr [rbp - 0x830]
	add	rax, 1
	mov	qword ptr [rbp - 0x830], rax
	jmp	.label_286
.label_278:
	jmp	.label_291
.label_291:
	jmp	.label_294
.label_270:
	jmp	.label_297
.label_297:
	mov	qword ptr [rbp - 0x838], 0
.label_305:
	mov	rax, qword ptr [rbp - 0x838]
	cmp	rax, qword ptr [rbp - 0x828]
	jae	.label_301
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0xa80], eax
	mov	rax, qword ptr [rbp - 0x838]
	add	rax, 1
	mov	qword ptr [rbp - 0x838], rax
	jmp	.label_305
.label_301:
	jmp	.label_312
.label_312:
	jmp	.label_294
.label_294:
	jmp	.label_252
.label_252:
	jmp	.label_385
.label_385:
	test	byte ptr [rbp - 0xe1], 1
	je	.label_316
	mov	eax, 1
	mov	rdi, qword ptr [rbp - 0x80]
	sub	eax, dword ptr [rbp - 0x804]
	movsxd	rcx, eax
	add	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x810]
	mov	rsi, rcx
	call	fwrite_lowcase
	jmp	.label_326
.label_316:
	test	byte ptr [rbp - 0xe2], 1
	je	.label_328
	mov	eax, 1
	mov	rdi, qword ptr [rbp - 0x80]
	sub	eax, dword ptr [rbp - 0x804]
	movsxd	rcx, eax
	add	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x810]
	mov	rsi, rcx
	call	fwrite_uppcase
	jmp	.label_338
.label_328:
	mov	eax, 1
	mov	edx, eax
	mov	eax, 1
	sub	eax, dword ptr [rbp - 0x804]
	movsxd	rcx, eax
	add	rcx, qword ptr [rbp - 0x88]
	mov	rsi, qword ptr [rbp - 0x810]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0xa88], rdi
	mov	rdi, rcx
	mov	rcx, qword ptr [rbp - 0xa88]
	call	fwrite
	mov	qword ptr [rbp - 0xa90], rax
.label_338:
	jmp	.label_326
.label_326:
	jmp	.label_355
.label_355:
	jmp	.label_249
.label_249:
	mov	rax, qword ptr [rbp - 0x820]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_241
.label_241:
	jmp	.label_289
.label_289:
	mov	dword ptr [rbp - 0x3c], 0xffffffff
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, 1
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_365
.label_157:
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x18], rax
.label_167:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0xaa0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405c90

	.globl fwrite_lowcase
	.type fwrite_lowcase, @function
fwrite_lowcase:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
.label_566:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	cmp	rax, 0
	jbe	.label_565
	mov	rax, qword ptr [rbp - 0x10]
	movzx	edi, byte ptr [rax]
	call	tolower
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	call	fputc
	mov	rsi, qword ptr [rbp - 0x10]
	add	rsi, 1
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_566
.label_565:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405cf0

	.globl fwrite_uppcase
	.type fwrite_uppcase, @function
fwrite_uppcase:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
.label_568:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	cmp	rax, 0
	jbe	.label_567
	mov	rax, qword ptr [rbp - 0x10]
	movzx	edi, byte ptr [rax]
	call	toupper
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	call	fputc
	mov	rsi, qword ptr [rbp - 0x10]
	add	rsi, 1
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_568
.label_567:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405d50

	.globl iso_week_days
	.type iso_week_days, @function
iso_week_days:
	push	rbp
	mov	rbp, rsp
	mov	eax, 7
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	dword ptr [rbp - 0xc], 0x17a
	mov	esi, dword ptr [rbp - 4]
	mov	edi, dword ptr [rbp - 4]
	sub	edi, dword ptr [rbp - 8]
	add	edi, 4
	add	edi, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x10], eax
	mov	eax, edi
	cdq	
	mov	edi, dword ptr [rbp - 0x10]
	idiv	edi
	sub	esi, edx
	add	esi, 4
	sub	esi, 1
	mov	eax, esi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405d90
	.globl parse_long_options
	.type parse_long_options, @function
parse_long_options:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1c0
	test	al, al
	movaps	xmmword ptr [rbp - 0x110], xmm7
	movaps	xmmword ptr [rbp - 0x120], xmm6
	movaps	xmmword ptr [rbp - 0x130], xmm5
	movaps	xmmword ptr [rbp - 0x140], xmm4
	movaps	xmmword ptr [rbp - 0x150], xmm3
	movaps	xmmword ptr [rbp - 0x160], xmm2
	movaps	xmmword ptr [rbp - 0x170], xmm1
	movaps	xmmword ptr [rbp - 0x180], xmm0
	mov	dword ptr [rbp - 0x184], edi
	mov	qword ptr [rbp - 0x190], r9
	mov	qword ptr [rbp - 0x198], r8
	mov	qword ptr [rbp - 0x1a0], rcx
	mov	qword ptr [rbp - 0x1a8], rdx
	mov	qword ptr [rbp - 0x1b0], rsi
	je	.label_572
	movaps	xmm0, xmmword ptr [rbp - 0x180]
	movaps	xmmword ptr [rbp - 0xd0], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x170]
	movaps	xmmword ptr [rbp - 0xc0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x150]
	movaps	xmmword ptr [rbp - 0xa0], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x130]
	movaps	xmmword ptr [rbp - 0x80], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0x120]
	movaps	xmmword ptr [rbp - 0x70], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0x110]
	movaps	xmmword ptr [rbp - 0x60], xmm7
.label_572:
	mov	rax, qword ptr [rbp - 0x190]
	mov	rcx, qword ptr [rbp - 0x198]
	mov	rdx, qword ptr [rbp - 0x1a0]
	mov	rsi, qword ptr [rbp - 0x1a8]
	mov	rdi, qword ptr [rbp - 0x1b0]
	mov	r8d, dword ptr [rbp - 0x184]
	mov	dword ptr [rbp - 4], r8d
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], rax
	mov	r8d,  dword ptr [dword ptr [opterr]]
	mov	dword ptr [rbp - 0x38], r8d
	mov	dword ptr [dword ptr [opterr]],  0
	cmp	dword ptr [rbp - 4], 2
	jne	.label_569
	movabs	rdx, OFFSET FLAT:label_571
	movabs	rcx, OFFSET FLAT:long_options
	xor	eax, eax
	mov	r8d, eax
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0x34], eax
	cmp	eax, -1
	je	.label_569
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 0x68
	mov	dword ptr [rbp - 0x1b4], eax
	mov	dword ptr [rbp - 0x1b8], ecx
	je	.label_576
	jmp	.label_574
.label_574:
	mov	eax, dword ptr [rbp - 0x1b4]
	sub	eax, 0x76
	mov	dword ptr [rbp - 0x1bc], eax
	je	.label_575
	jmp	.label_573
.label_576:
	xor	edi, edi
	call	qword ptr [rbp - 0x30]
	jmp	.label_570
.label_575:
	lea	rax, [rbp - 0x50]
	mov	rcx, rax
	lea	rdx, [rbp - 0x100]
	mov	qword ptr [rcx + 0x10], rdx
	lea	rdx, [rbp + 0x10]
	mov	qword ptr [rcx + 8], rdx
	mov	dword ptr [rcx + 4], 0x30
	mov	dword ptr [rcx], 0x30
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, rax
	call	version_etc_va
	xor	edi, edi
	call	exit
.label_573:
	jmp	.label_570
.label_570:
	jmp	.label_569
.label_569:
	mov	eax, dword ptr [rbp - 0x38]
	mov	dword ptr [dword ptr [rip + opterr]],  eax
	mov	dword ptr [dword ptr [rip + optind]],  0
	add	rsp, 0x1c0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405fc0

	.globl parse_gnu_standard_options_only
	.type parse_gnu_standard_options_only, @function
parse_gnu_standard_options_only:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x1d0
	test	al, al
	movaps	xmmword ptr [rbp - 0x140], xmm7
	movaps	xmmword ptr [rbp - 0x150], xmm6
	movaps	xmmword ptr [rbp - 0x160], xmm5
	movaps	xmmword ptr [rbp - 0x170], xmm4
	movaps	xmmword ptr [rbp - 0x180], xmm3
	movaps	xmmword ptr [rbp - 0x190], xmm2
	movaps	xmmword ptr [rbp - 0x1a0], xmm1
	movaps	xmmword ptr [rbp - 0x1b0], xmm0
	mov	dword ptr [rbp - 0x1b4], edi
	mov	dword ptr [rbp - 0x1b8], r9d
	mov	qword ptr [rbp - 0x1c0], r8
	mov	qword ptr [rbp - 0x1c8], rcx
	mov	qword ptr [rbp - 0x1d0], rdx
	mov	qword ptr [rbp - 0x1d8], rsi
	je	.label_577
	movaps	xmm0, xmmword ptr [rbp - 0x1b0]
	movaps	xmmword ptr [rbp - 0x100], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x1a0]
	movaps	xmmword ptr [rbp - 0xf0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x190]
	movaps	xmmword ptr [rbp - 0xe0], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x180]
	movaps	xmmword ptr [rbp - 0xd0], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x170]
	movaps	xmmword ptr [rbp - 0xc0], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0x150]
	movaps	xmmword ptr [rbp - 0xa0], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm7
.label_577:
	mov	eax, dword ptr [rbp - 0x1b8]
	mov	cl, al
	mov	rdx, qword ptr [rbp + 0x10]
	mov	rsi, qword ptr [rbp - 0x1c0]
	mov	rdi, qword ptr [rbp - 0x1c8]
	mov	r8, qword ptr [rbp - 0x1d0]
	mov	r9, qword ptr [rbp - 0x1d8]
	mov	r10d, dword ptr [rbp - 0x1b4]
	movabs	r11, OFFSET FLAT:long_options
	xor	ebx, ebx
	mov	r14d, ebx
	movabs	r15, OFFSET FLAT:label_571
	movabs	r12, OFFSET FLAT:label_30
	mov	dword ptr [rbp - 0x24], r10d
	mov	qword ptr [rbp - 0x30], r9
	mov	qword ptr [rbp - 0x38], r8
	mov	qword ptr [rbp - 0x40], rdi
	mov	qword ptr [rbp - 0x48], rsi
	and	cl, 1
	mov	byte ptr [rbp - 0x49], cl
	mov	qword ptr [rbp - 0x58], rdx
	mov	r10d,  dword ptr [dword ptr [opterr]]
	mov	dword ptr [rbp - 0x60], r10d
	mov	dword ptr [dword ptr [opterr]],  1
	mov	cl, byte ptr [rbp - 0x49]
	test	cl, 1
	cmovne	r15, r12
	mov	qword ptr [rbp - 0x68], r15
	mov	edi, dword ptr [rbp - 0x24]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rcx, r11
	mov	r8, r14
	call	getopt_long
	mov	dword ptr [rbp - 0x5c], eax
	cmp	eax, -1
	je	.label_579
	mov	eax, dword ptr [rbp - 0x5c]
	mov	ecx, eax
	sub	ecx, 0x68
	mov	dword ptr [rbp - 0x1dc], eax
	mov	dword ptr [rbp - 0x1e0], ecx
	je	.label_578
	jmp	.label_583
.label_583:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x76
	mov	dword ptr [rbp - 0x1e4], eax
	je	.label_580
	jmp	.label_582
.label_578:
	xor	edi, edi
	call	qword ptr [rbp - 0x58]
	jmp	.label_581
.label_580:
	lea	rax, [rbp - 0x80]
	mov	rcx, rax
	lea	rdx, [rbp - 0x130]
	mov	qword ptr [rcx + 0x10], rdx
	lea	rdx, [rbp + 0x18]
	mov	qword ptr [rcx + 8], rdx
	mov	dword ptr [rcx + 4], 0x30
	mov	dword ptr [rcx], 0x30
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	r8, rax
	call	version_etc_va
	xor	edi, edi
	call	exit
.label_582:
	mov	rax, qword ptr [rbp - 0x58]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	rax
.label_581:
	jmp	.label_579
.label_579:
	mov	eax, dword ptr [rbp - 0x60]
	mov	dword ptr [dword ptr [rip + opterr]],  eax
	add	rsp, 0x1d0
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406220

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_584
	movabs	rdi, OFFSET FLAT:label_591
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x1c], eax
	call	abort
.label_584:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	call	strrchr
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_585
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_589
.label_585:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_589:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cmp	rax, 7
	jl	.label_586
	movabs	rsi, OFFSET FLAT:label_588
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, -7
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_586
	movabs	rsi, OFFSET FLAT:label_587
	mov	eax, 3
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_590
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname]],  rax
.label_590:
	jmp	.label_586
.label_586:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406340
	.globl clone_quoting_options
	.type clone_quoting_options, @function
clone_quoting_options:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0xc], ecx
	cmp	qword ptr [rbp - 8], 0
	je	.label_592
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_593
.label_592:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_593
.label_593:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, 0x38
	mov	esi, ecx
	mov	rdi, rax
	call	xmemdup
	mov	qword ptr [rbp - 0x18], rax
	mov	ecx, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x24], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x24]
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4063c0
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_594
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_595
.label_594:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_595
.label_595:
	mov	rax, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406400
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	esi, dword ptr [rbp - 0xc]
	cmp	qword ptr [rbp - 8], 0
	mov	dword ptr [rbp - 0x10], esi
	je	.label_596
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_597
.label_596:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_597
.label_597:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406450

	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:
	push	rbp
	mov	rbp, rsp
	mov	al, sil
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	mov	dword ptr [rbp - 0x10], edx
	mov	al, byte ptr [rbp - 9]
	mov	byte ptr [rbp - 0x11], al
	cmp	qword ptr [rbp - 8], 0
	je	.label_598
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_599
.label_598:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_599
.label_599:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	movzx	ecx, byte ptr [rbp - 0x11]
	mov	edx, ecx
	shr	rdx, 5
	shl	rdx, 2
	add	rax, rdx
	mov	qword ptr [rbp - 0x20], rax
	movzx	ecx, byte ptr [rbp - 0x11]
	mov	eax, ecx
	and	rax, 0x1f
	mov	ecx, eax
	mov	dword ptr [rbp - 0x24], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax]
	mov	esi, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x34], ecx
	mov	ecx, esi
	mov	esi, dword ptr [rbp - 0x34]
	shr	esi, cl
	and	esi, 1
	mov	dword ptr [rbp - 0x28], esi
	mov	esi, dword ptr [rbp - 0x10]
	and	esi, 1
	xor	esi, dword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rbp - 0x24]
	shl	esi, cl
	mov	rax, qword ptr [rbp - 0x20]
	xor	esi, dword ptr [rax]
	mov	dword ptr [rax], esi
	mov	eax, dword ptr [rbp - 0x28]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406500
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_600
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_600:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 4]
	mov	dword ptr [rbp - 0x10], ecx
	mov	ecx, dword ptr [rbp - 0xc]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 4], ecx
	mov	eax, dword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406540

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 8], 0
	jne	.label_601
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_601:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_603
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_602
.label_603:
	call	abort
.label_602:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x30], rax
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4065b0
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_604
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_605
.label_604:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_605
.label_605:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x30], rax
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x34], ecx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r9d, dword ptr [rax + 4]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x30]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x30]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x40], rax
	mov	r8d, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x4c], r8d
	call	__errno_location
	mov	r8d, dword ptr [rbp - 0x4c]
	mov	dword ptr [rax], r8d
	mov	rax, qword ptr [rbp - 0x40]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406680

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x158
	mov	rax, qword ptr [rbp + 0x20]
	mov	r10, qword ptr [rbp + 0x18]
	mov	r11, qword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	dword ptr [rbp - 0x34], r8d
	mov	dword ptr [rbp - 0x38], r9d
	mov	qword ptr [rbp - 0x40], r11
	mov	qword ptr [rbp - 0x48], r10
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x60], 0
	mov	qword ptr [rbp - 0x68], 0
	mov	qword ptr [rbp - 0x70], 0
	mov	qword ptr [rbp - 0x78], 0
	mov	byte ptr [rbp - 0x79], 0
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	sete	bl
	and	bl, 1
	mov	byte ptr [rbp - 0x7a], bl
	mov	r8d, dword ptr [rbp - 0x38]
	and	r8d, 2
	cmp	r8d, 0
	setne	bl
	and	bl, 1
	mov	byte ptr [rbp - 0x7b], bl
	mov	byte ptr [rbp - 0x7c], 0
	mov	byte ptr [rbp - 0x7d], 0
	mov	byte ptr [rbp - 0x7e], 1
.label_655:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_757
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_763]]
	jmp	rcx
.label_1207:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_1206:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_772
	jmp	.label_774
.label_774:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_775
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_775:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_772
.label_772:
	movabs	rax, OFFSET FLAT:label_783
	mov	byte ptr [rbp - 0x79], 1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_629
.label_1208:
	mov	byte ptr [rbp - 0x79], 1
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_629
.label_1209:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_791
	movabs	rdi, OFFSET FLAT:label_795
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	movabs	rdi, OFFSET FLAT:label_648
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_791:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_626
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_621:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_808
	jmp	.label_608
.label_608:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_610
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_610:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_616
.label_616:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_621
.label_808:
	jmp	.label_626
.label_626:
	mov	byte ptr [rbp - 0x79], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_629
.label_1204:
	mov	byte ptr [rbp - 0x79], 1
.label_1203:
	mov	byte ptr [rbp - 0x7b], 1
.label_1205:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_636
	mov	byte ptr [rbp - 0x79], 1
.label_636:
	jmp	.label_766
.label_766:
	mov	dword ptr [rbp - 0x34], 2
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_638
	jmp	.label_640
.label_640:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_642
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_642:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_638
.label_638:
	movabs	rax, OFFSET FLAT:label_648
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_629
.label_1202:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_629
.label_757:
	call	abort
.label_629:
	mov	qword ptr [rbp - 0x58], 0
.label_618:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_660
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_663
.label_660:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], edx
.label_663:
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_675
	jmp	.label_622
.label_675:
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	je	.label_684
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_684
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_684
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	jne	.label_693
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_693
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_682
.label_693:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_682:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	ja	.label_684
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_684
	test	byte ptr [rbp - 0x7b], 1
	je	.label_715
	jmp	.label_665
.label_715:
	mov	byte ptr [rbp - 0x81], 1
.label_684:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 0x7f], dl
	movzx	esi, byte ptr [rbp - 0x7f]
	mov	eax, esi
	mov	rcx, rax
	sub	rcx, 0x7e
	mov	qword ptr [rbp - 0xf0], rax
	mov	qword ptr [rbp - 0xf8], rcx
	ja	.label_674
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_725]]
	jmp	rcx
.label_1175:
	test	byte ptr [rbp - 0x79], 1
	je	.label_726
	jmp	.label_753
.label_753:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_731
	jmp	.label_665
.label_731:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_737
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_737
	jmp	.label_739
.label_739:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_740
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_740:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_744
.label_744:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_747
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_747:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_750
.label_750:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_755
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_755:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_737:
	jmp	.label_764
.label_764:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_767
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_767:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_759
.label_759:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_778
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_778
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_778
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x39
	jg	.label_778
	jmp	.label_789
.label_789:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_721
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_721:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_797
.label_797:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_801
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_801:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_778
.label_778:
	mov	byte ptr [rbp - 0x7f], 0x30
	jmp	.label_609
.label_726:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_612
	jmp	.label_614
.label_612:
	jmp	.label_609
.label_609:
	jmp	.label_615
.label_1186:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0x100], ecx
	je	.label_617
	jmp	.label_625
.label_625:
	mov	eax, dword ptr [rbp - 0xfc]
	sub	eax, 5
	mov	dword ptr [rbp - 0x104], eax
	je	.label_627
	jmp	.label_628
.label_617:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_730
	jmp	.label_665
.label_730:
	jmp	.label_635
.label_627:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_641
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_641
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3f
	jne	.label_641
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 2]
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	je	.label_645
	jmp	.label_652
.label_652:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	jb	.label_645
	jmp	.label_658
.label_658:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	je	.label_645
	jmp	.label_664
.label_664:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2f
	mov	dword ptr [rbp - 0x118], eax
	je	.label_645
	jmp	.label_668
.label_668:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	ja	.label_669
	jmp	.label_645
.label_645:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_678
	jmp	.label_665
.label_678:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_683
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_683:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_692
.label_692:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_695
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_695:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_699
.label_699:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_705
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_705:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_709
.label_709:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_644
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_644:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_712
.label_669:
	jmp	.label_712
.label_712:
	jmp	.label_641
.label_641:
	jmp	.label_635
.label_628:
	jmp	.label_635
.label_635:
	jmp	.label_615
.label_1176:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_720
.label_1177:
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_720
.label_1181:
	mov	byte ptr [rbp - 0x80], 0x66
	jmp	.label_720
.label_1179:
	mov	byte ptr [rbp - 0x80], 0x6e
	jmp	.label_724
.label_1182:
	mov	byte ptr [rbp - 0x80], 0x72
	jmp	.label_724
.label_1178:
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_724
.label_1180:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_720
.label_1187:
	mov	al, byte ptr [rbp - 0x7f]
	mov	byte ptr [rbp - 0x80], al
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_728
	test	byte ptr [rbp - 0x7b], 1
	je	.label_733
	jmp	.label_665
.label_733:
	jmp	.label_701
.label_728:
	test	byte ptr [rbp - 0x79], 1
	je	.label_736
	test	byte ptr [rbp - 0x7b], 1
	je	.label_736
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_736
	jmp	.label_701
.label_736:
	jmp	.label_724
.label_724:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_743
	test	byte ptr [rbp - 0x7b], 1
	je	.label_743
	jmp	.label_665
.label_743:
	jmp	.label_720
.label_720:
	test	byte ptr [rbp - 0x79], 1
	je	.label_748
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_732
.label_748:
	jmp	.label_615
.label_1188:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_752
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_756
	jmp	.label_760
.label_752:
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_756
.label_760:
	jmp	.label_615
.label_756:
	jmp	.label_762
.label_762:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_765
	jmp	.label_615
.label_765:
	jmp	.label_769
.label_769:
	mov	byte ptr [rbp - 0x83], 1
.label_1183:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_773
	test	byte ptr [rbp - 0x7b], 1
	je	.label_773
	jmp	.label_665
.label_773:
	jmp	.label_615
.label_1185:
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_779
	test	byte ptr [rbp - 0x7b], 1
	je	.label_782
	jmp	.label_665
.label_782:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_689
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_689
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_689:
	jmp	.label_793
.label_793:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_802
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_802:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_800
.label_800:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_804
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_804:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_607
.label_607:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_613
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_613:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_779:
	jmp	.label_615
.label_1184:
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_615
.label_674:
	test	byte ptr [rbp - 0x7a], 1
	je	.label_654
	mov	qword ptr [rbp - 0x90], 1
	movzx	eax, byte ptr [rbp - 0x7f]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x128], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x128]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x4000
	cmp	edx, 0
	setne	sil
	and	sil, 1
	mov	byte ptr [rbp - 0x91], sil
	jmp	.label_633
.label_654:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_646
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_646:
	jmp	.label_653
.label_653:
	lea	rdi, [rbp - 0xa4]
	lea	rcx, [rbp - 0xa0]
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	add	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x58]
	add	rsi, qword ptr [rbp - 0x90]
	sub	rdx, rsi
	mov	rsi, rax
	call	rpl_mbrtowc
	mov	qword ptr [rbp - 0xb0], rax
	cmp	qword ptr [rbp - 0xb0], 0
	jne	.label_666
	jmp	.label_676
.label_666:
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_777
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_676
.label_777:
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_680
	mov	byte ptr [rbp - 0x91], 0
.label_700:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_686
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_686:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_697
	jmp	.label_698
.label_697:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_700
.label_698:
	jmp	.label_676
.label_680:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_708
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_708
	mov	qword ptr [rbp - 0xb8], 1
.label_738:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_710
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x90]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0xb8]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	add	esi, -0x5b
	sub	esi, 2
	mov	dword ptr [rbp - 0x130], edx
	mov	dword ptr [rbp - 0x134], esi
	jb	.label_657
	jmp	.label_723
.label_723:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x138], eax
	je	.label_657
	jmp	.label_722
.label_722:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_657
	jmp	.label_727
.label_727:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_729
	jmp	.label_657
.label_657:
	jmp	.label_665
.label_729:
	jmp	.label_714
.label_714:
	jmp	.label_798
.label_798:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_738
.label_710:
	jmp	.label_708
.label_708:
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_745
	mov	byte ptr [rbp - 0x91], 0
.label_745:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_673
.label_673:
	jmp	.label_707
.label_707:
	jmp	.label_751
.label_751:
	lea	rdi, [rbp - 0xa0]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_653
.label_676:
	jmp	.label_633
.label_633:
	mov	eax, 1
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	jb	.label_761
	test	byte ptr [rbp - 0x79], 1
	je	.label_771
	test	byte ptr [rbp - 0x91], 1
	jne	.label_771
.label_761:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_713:
	test	byte ptr [rbp - 0x79], 1
	je	.label_780
	test	byte ptr [rbp - 0x91], 1
	jne	.label_780
	jmp	.label_672
.label_672:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_785
	jmp	.label_665
.label_785:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_788
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_788
	jmp	.label_792
.label_792:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_794
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_794:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_799
.label_799:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_803
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_803:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_606
.label_606:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_611
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_611:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_788:
	jmp	.label_620
.label_620:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_623
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_623:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_717
.label_717:
	jmp	.label_631
.label_631:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_632
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 6
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_632:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_639
.label_639:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_643
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 3
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_643:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_649
.label_780:
	test	byte ptr [rbp - 0x81], 1
	je	.label_656
	jmp	.label_659
.label_659:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_661
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_661:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x81], 0
.label_656:
	jmp	.label_649
.label_649:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_670
	jmp	.label_677
.label_670:
	jmp	.label_679
.label_679:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_681
	test	byte ptr [rbp - 0x82], 1
	jne	.label_681
	jmp	.label_687
.label_687:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_688
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_688:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_691
.label_691:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_694
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_694:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_681:
	jmp	.label_703
.label_703:
	jmp	.label_704
.label_704:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_706
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_706:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 1]
	mov	byte ptr [rbp - 0x7f], dl
	jmp	.label_713
.label_677:
	jmp	.label_701
.label_771:
	jmp	.label_615
.label_615:
	test	byte ptr [rbp - 0x79], 1
	je	.label_716
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_718
.label_716:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_719
.label_718:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_719
	movzx	eax, byte ptr [rbp - 0x7f]
	mov	ecx, eax
	shr	rcx, 5
	mov	rdx, qword ptr [rbp - 0x40]
	mov	eax, dword ptr [rdx + rcx*4]
	movzx	esi, byte ptr [rbp - 0x7f]
	mov	ecx, esi
	and	rcx, 0x1f
	mov	esi, ecx
	mov	ecx, esi
	shr	eax, cl
	and	eax, 1
	cmp	eax, 0
	jne	.label_702
.label_719:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_702
	jmp	.label_701
.label_702:
	jmp	.label_732
.label_732:
	jmp	.label_734
.label_734:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_735
	jmp	.label_665
.label_735:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_619
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_619
	jmp	.label_741
.label_741:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_742
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_742:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_746
.label_746:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_749
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_749:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_754
.label_754:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_758
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_758:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_619:
	jmp	.label_768
.label_768:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_770
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_770:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_776
.label_776:
	jmp	.label_701
.label_701:
	jmp	.label_650
.label_650:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_781
	test	byte ptr [rbp - 0x82], 1
	jne	.label_781
	jmp	.label_786
.label_786:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_787
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_787:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_790
.label_790:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_796
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_796:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_781:
	jmp	.label_805
.label_805:
	jmp	.label_806
.label_806:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_807
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_807:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x83], 1
	jne	.label_634
	mov	byte ptr [rbp - 0x7e], 0
.label_634:
	jmp	.label_614
.label_614:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_618
.label_622:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_624
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_624
	test	byte ptr [rbp - 0x7b], 1
	je	.label_624
	jmp	.label_665
.label_624:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_630
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_630
	test	byte ptr [rbp - 0x7d], 1
	je	.label_630
	test	byte ptr [rbp - 0x7e], 1
	je	.label_637
	mov	r8d, 5
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r9d, dword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x40]
	mov	r10, qword ptr [rbp - 0x48]
	mov	r11, qword ptr [rbp - 0x50]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_647
.label_637:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_651
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_651
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_655
.label_651:
	jmp	.label_711
.label_711:
	jmp	.label_630
.label_630:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_662
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_662
	jmp	.label_685
.label_685:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_667
	jmp	.label_784
.label_784:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_671
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_671:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_809
.label_809:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_685
.label_667:
	jmp	.label_662
.label_662:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_690
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_690:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_647
.label_665:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_696
	test	byte ptr [rbp - 0x79], 1
	je	.label_696
	mov	dword ptr [rbp - 0x34], 4
.label_696:
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	eax, dword ptr [rbp - 0x34]
	mov	r9d, dword ptr [rbp - 0x38]
	and	r9d, 0xfffffffd
	mov	r10, qword ptr [rbp - 0x48]
	mov	r11, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x148], rcx
	mov	rcx, r8
	mov	r8d, eax
	mov	qword ptr [rsp], 0
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x10], rax
.label_647:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407a20
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	call	quotearg_alloc_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407a60

	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x78
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_810
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_811
.label_810:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_811
.label_811:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x30], rax
	call	__errno_location
	xor	ecx, ecx
	mov	edx, ecx
	mov	ecx, 1
	xor	esi, esi
	mov	edi, dword ptr [rax]
	mov	dword ptr [rbp - 0x34], edi
	mov	rax, qword ptr [rbp - 0x30]
	mov	edi, dword ptr [rax + 4]
	cmp	qword ptr [rbp - 0x20], 0
	cmovne	ecx, esi
	or	edi, ecx
	mov	dword ptr [rbp - 0x38], edi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [r8]
	mov	r9d, dword ptr [rbp - 0x38]
	mov	r10, qword ptr [rbp - 0x30]
	add	r10, 8
	mov	r11, qword ptr [rbp - 0x30]
	mov	r11, qword ptr [r11 + 0x28]
	mov	rbx, qword ptr [rbp - 0x30]
	mov	rbx, qword ptr [rbx + 0x30]
	mov	rdi, rdx
	mov	rsi, rdx
	mov	rdx, rax
	mov	qword ptr [rsp], r10
	mov	qword ptr [rsp + 8], r11
	mov	qword ptr [rsp + 0x10], rbx
	call	quotearg_buffer_restyled
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x40]
	call	xcharalloc
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x30]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x30]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	r8d, dword ptr [rbp - 0x34]
	mov	qword ptr [rbp - 0x58], rax
	mov	dword ptr [rbp - 0x5c], r8d
	call	__errno_location
	mov	r8d, dword ptr [rbp - 0x5c]
	mov	dword ptr [rax], r8d
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_812
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_812:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407bc0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_815:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_816
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_815
.label_816:
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 8], rax
	je	.label_817
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	qword ptr [word ptr [label_814]],  rax
.label_817:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_813
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_813:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407ca0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdx, -1
	movabs	rcx, OFFSET FLAT:default_quoting_options
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_n_options
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407ce0

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	call	__errno_location
	mov	edi, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], edi
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 0x30], rax
	cmp	dword ptr [rbp - 4], 0
	jge	.label_825
	call	abort
.label_825:
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_822
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x31], cl
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	jge	.label_821
	call	xalloc_die
.label_821:
	test	byte ptr [rbp - 0x31], 1
	je	.label_824
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_823
.label_824:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_823:
	mov	rax, qword ptr [rbp - 0x60]
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	movsxd	rdx, ecx
	shl	rdx, 4
	mov	rdi, rax
	mov	rsi, rdx
	call	xrealloc
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [word ptr [slotvec]],  rax
	test	byte ptr [rbp - 0x31], 1
	je	.label_820
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_814]]
	mov	qword ptr [rax + 8], rcx
.label_820:
	xor	esi, esi
	mov	rax, qword ptr [rbp - 0x30]
	movsxd	rcx,  dword ptr [dword ptr [nslots]]
	shl	rcx, 4
	add	rax, rcx
	mov	edx, dword ptr [rbp - 4]
	add	edx, 1
	sub	edx,  dword ptr [dword ptr [nslots]]
	movsxd	rcx, edx
	shl	rcx, 4
	mov	rdi, rax
	mov	rdx, rcx
	call	memset
	mov	esi, dword ptr [rbp - 4]
	add	esi, 1
	mov	dword ptr [dword ptr [nslots]],  esi
.label_822:
	movsxd	rax, dword ptr [rbp - 4]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	movsxd	rax, dword ptr [rbp - 4]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 4]
	or	ecx, 1
	mov	dword ptr [rbp - 0x4c], ecx
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x4c]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x20]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x20]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x58]
	ja	.label_818
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	cmp	qword ptr [rbp - 0x48], rax
	je	.label_819
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_819:
	mov	rdi, qword ptr [rbp - 0x40]
	call	xcharalloc
	mov	qword ptr [rbp - 0x48], rax
	movsxd	rdi, dword ptr [rbp - 4]
	shl	rdi, 4
	add	rdi, qword ptr [rbp - 0x30]
	mov	qword ptr [rdi + 8], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x4c]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x20]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x20]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x68], rax
.label_818:
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x6c], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x6c]
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407f60

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rcx, OFFSET FLAT:default_quoting_options
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_n_options
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407fa0
	.globl quotearg
	.type quotearg, @function
quotearg:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	call	quotearg_n
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407fc0
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	call	quotearg_n_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407ff0

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	lea	rax, [rbp - 0x48]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	qword ptr [rbp - 0x10], rdx
	mov	esi, dword ptr [rbp - 8]
	mov	rdi, rax
	call	quoting_options_from_style
	mov	rdx, -1
	lea	rcx, [rbp - 0x48]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_n_options
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408030

	.globl quoting_options_from_style
	.type quoting_options_from_style, @function
quoting_options_from_style:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rax, rdi
	xor	ecx, ecx
	mov	edx, 0x38
	lea	r8, [rbp - 0x40]
	mov	dword ptr [rbp - 4], esi
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, r8
	mov	esi, ecx
	mov	qword ptr [rbp - 0x50], rax
	call	memset
	cmp	dword ptr [rbp - 4], 0xa
	jne	.label_826
	call	abort
.label_826:
	mov	eax, 0x38
	mov	edx, eax
	lea	rcx, [rbp - 0x40]
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0x40], eax
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdi, rsi
	mov	rsi, rcx
	call	memcpy
	mov	rax, qword ptr [rbp - 0x50]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4080a0

	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	lea	rax, [rbp - 0x50]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	qword ptr [rbp - 0x10], rdx
	mov	qword ptr [rbp - 0x18], rcx
	mov	esi, dword ptr [rbp - 8]
	mov	rdi, rax
	call	quoting_options_from_style
	lea	rcx, [rbp - 0x50]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_n_options
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4080e0
	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	call	quotearg_n_style
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408110
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edi, eax
	call	quotearg_n_style_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408140

	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	al, dl
	lea	rcx, [rbp - 0x50]
	mov	edx, 1
	movabs	r8, OFFSET FLAT:default_quoting_options
	mov	r9d, 0x38
	mov	r10d, r9d
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	byte ptr [rbp - 0x11], al
	mov	rsi, rcx
	mov	rdi, rsi
	mov	rsi, r8
	mov	dword ptr [rbp - 0x54], edx
	mov	rdx, r10
	mov	qword ptr [rbp - 0x60], rcx
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x60]
	movsx	esi, byte ptr [rbp - 0x11]
	mov	edx, dword ptr [rbp - 0x54]
	call	set_char_quoting
	xor	edi, edi
	lea	rcx, [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x64], eax
	call	quotearg_n_options
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4081c0

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	al, sil
	mov	rsi, -1
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	mov	rdi, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rbp - 9]
	call	quotearg_char_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4081f0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	esi, 0x3a
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	quotearg_char
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408210
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	edx, 0x3a
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_char_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408240

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	lea	rax, [rbp - 0x80]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	qword ptr [rbp - 0x10], rdx
	mov	esi, dword ptr [rbp - 8]
	mov	rdi, rax
	call	quoting_options_from_style
	lea	rax, [rbp - 0x48]
	mov	esi, 0x3a
	mov	edx, 1
	mov	ecx, 0x38
	mov	edi, ecx
	lea	r8, [rbp - 0x80]
	mov	r9, rax
	mov	qword ptr [rbp - 0x88], rdi
	mov	rdi, r9
	mov	dword ptr [rbp - 0x8c], esi
	mov	rsi, r8
	mov	r8, qword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x90], edx
	mov	rdx, r8
	mov	qword ptr [rbp - 0x98], rax
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x98]
	mov	esi, dword ptr [rbp - 0x8c]
	mov	edx, dword ptr [rbp - 0x90]
	call	set_char_quoting
	mov	rdx, -1
	lea	rcx, [rbp - 0x48]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x9c], eax
	call	quotearg_n_options
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4082f0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	r8, -1
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	call	quotearg_n_custom_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408330

	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	lea	rax, [rbp - 0x60]
	movabs	r9, OFFSET FLAT:default_quoting_options
	mov	r10d, 0x38
	mov	r11d, r10d
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	rcx, rax
	mov	rdi, rcx
	mov	rsi, r9
	mov	rdx, r11
	mov	qword ptr [rbp - 0x68], rax
	call	memcpy
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x68]
	call	set_custom_quoting
	lea	rcx, [rbp - 0x60]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	call	quotearg_n_options
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4083b0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edi, eax
	call	quotearg_n_custom
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4083e0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x20]
	mov	edi, eax
	call	quotearg_n_custom_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408420

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rcx, OFFSET FLAT:quote_quoting_options
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_n_options
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408460
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	call	quote_n_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408490

	.globl quote_n
	.type quote_n, @function
quote_n:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdx, -1
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quote_n_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4084c0

	.globl quote
	.type quote, @function
quote:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	call	quote_n
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4084e0

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rdi, qword ptr [rbp - 0x10]
	call	gettext
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x10]
	je	.label_833
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_829
.label_833:
	call	locale_charset
	movabs	rsi, OFFSET FLAT:label_831
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_832
	movabs	rax, OFFSET FLAT:label_835
	movabs	rcx, OFFSET FLAT:label_836
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_829
.label_832:
	movabs	rsi, OFFSET FLAT:label_830
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_834
	movabs	rax, OFFSET FLAT:label_827
	movabs	rcx, OFFSET FLAT:label_828
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_829
.label_834:
	movabs	rax, OFFSET FLAT:label_648
	movabs	rcx, OFFSET FLAT:label_783
	cmp	dword ptr [rbp - 0x14], 9
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_829:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4085e0

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	push	rbp
	mov	rbp, rsp
	push	r14
	push	rbx
	sub	rsp, 0x180
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	qword ptr [rbp - 0x38], r8
	mov	qword ptr [rbp - 0x40], r9
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_845
	movabs	rsi, OFFSET FLAT:label_842
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_854
.label_845:
	movabs	rsi, OFFSET FLAT:label_855
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_854:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:label_843
	mov	ecx, eax
	mov	qword ptr [rbp - 0x50], rdi
	mov	rdi, rcx
	call	gettext
	mov	edx, OFFSET FLAT:version_etc_copyright
	mov	esi, edx
	xor	edx, edx
	mov	r8b, dl
	mov	ecx, 0x7e3
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rdx, rax
	mov	al, r8b
	call	fprintf
	mov	ecx, OFFSET FLAT:label_850
	mov	edi, ecx
	mov	dword ptr [rbp - 0x54], eax
	call	gettext
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rsi, rdx
	sub	rsi, 9
	mov	dword ptr [rbp - 0x58], eax
	mov	qword ptr [rbp - 0x60], rdx
	mov	qword ptr [rbp - 0x68], rsi
	ja	.label_851
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_838]]
	jmp	rcx
.label_1136:
	jmp	.label_837
.label_1137:
	movabs	rdi, OFFSET FLAT:label_848
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x74], eax
	jmp	.label_837
.label_1138:
	movabs	rdi, OFFSET FLAT:label_841
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x80], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_837
.label_1139:
	movabs	rdi, OFFSET FLAT:label_840
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x90], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x90]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x94], eax
	jmp	.label_837
.label_1140:
	movabs	rdi, OFFSET FLAT:label_844
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xa0], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xa4], eax
	jmp	.label_837
.label_1141:
	movabs	rdi, OFFSET FLAT:label_853
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xb0], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0xb8], rdi
	mov	rdi, rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rsp], rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xbc], eax
	jmp	.label_837
.label_1142:
	movabs	rdi, OFFSET FLAT:label_847
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xc8], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0xd0], rdi
	mov	rdi, r10
	mov	qword ptr [rbp - 0xd8], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rsp + 8], rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xdc], eax
	jmp	.label_837
.label_1143:
	movabs	rdi, OFFSET FLAT:label_852
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xe8], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0xf0], rdi
	mov	rdi, r11
	mov	qword ptr [rbp - 0xf8], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xf0]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0xf8]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xfc], eax
	jmp	.label_837
.label_1144:
	movabs	rdi, OFFSET FLAT:label_839
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x108], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x38]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x110], rdi
	mov	rdi, rbx
	mov	qword ptr [rbp - 0x118], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0x118]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x11c], eax
	jmp	.label_837
.label_1145:
	movabs	rdi, OFFSET FLAT:label_846
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x128], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x38]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x38]
	mov	rbx, qword ptr [rbx + 0x40]
	mov	r14, qword ptr [rbp - 0x128]
	mov	qword ptr [rbp - 0x130], rdi
	mov	rdi, r14
	mov	qword ptr [rbp - 0x138], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x130]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0x138]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	mov	qword ptr [rsp + 0x20], rbx
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x13c], eax
	jmp	.label_837
.label_851:
	movabs	rdi, OFFSET FLAT:label_849
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x148], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x38]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x38]
	mov	rbx, qword ptr [rbx + 0x40]
	mov	r14, qword ptr [rbp - 0x148]
	mov	qword ptr [rbp - 0x150], rdi
	mov	rdi, r14
	mov	qword ptr [rbp - 0x158], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x150]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0x158]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	mov	qword ptr [rsp + 0x20], rbx
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x15c], eax
.label_837:
	add	rsp, 0x180
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408ba0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], 0
.label_858:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_856
	jmp	.label_857
.label_857:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_858
.label_856:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x28]
	mov	r9, qword ptr [rbp - 0x30]
	call	version_etc_arn
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408c10

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], 0
.label_859:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_863
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_861
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_860
.label_861:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_860:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x81], dl
.label_863:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_865
	jmp	.label_864
.label_865:
	jmp	.label_862
.label_862:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_859
.label_864:
	lea	r8, [rbp - 0x80]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r9, qword ptr [rbp - 0x30]
	call	version_etc_arn
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408d20
	.globl version_etc
	.type version_etc, @function
version_etc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1a0
	test	al, al
	movaps	xmmword ptr [rbp - 0x100], xmm7
	movaps	xmmword ptr [rbp - 0x110], xmm6
	movaps	xmmword ptr [rbp - 0x120], xmm5
	movaps	xmmword ptr [rbp - 0x130], xmm4
	movaps	xmmword ptr [rbp - 0x140], xmm3
	movaps	xmmword ptr [rbp - 0x150], xmm2
	movaps	xmmword ptr [rbp - 0x160], xmm1
	movaps	xmmword ptr [rbp - 0x170], xmm0
	mov	qword ptr [rbp - 0x178], rdi
	mov	qword ptr [rbp - 0x180], r9
	mov	qword ptr [rbp - 0x188], r8
	mov	qword ptr [rbp - 0x190], rcx
	mov	qword ptr [rbp - 0x198], rdx
	mov	qword ptr [rbp - 0x1a0], rsi
	je	.label_866
	movaps	xmm0, xmmword ptr [rbp - 0x170]
	movaps	xmmword ptr [rbp - 0xc0], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x150]
	movaps	xmmword ptr [rbp - 0xa0], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x130]
	movaps	xmmword ptr [rbp - 0x80], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x120]
	movaps	xmmword ptr [rbp - 0x70], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0x110]
	movaps	xmmword ptr [rbp - 0x60], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0x100]
	movaps	xmmword ptr [rbp - 0x50], xmm7
.label_866:
	mov	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rcx, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0xd0], rcx
	mov	rdx, qword ptr [rbp - 0x190]
	mov	rsi, qword ptr [rbp - 0x198]
	mov	rdi, qword ptr [rbp - 0x1a0]
	mov	r8, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 8], r8
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	lea	rdx, [rbp - 0xf0]
	mov	qword ptr [rbp - 0x30], rdx
	lea	rdx, [rbp + 0x10]
	mov	qword ptr [rbp - 0x38], rdx
	mov	dword ptr [rbp - 0x3c], 0x30
	mov	dword ptr [rbp - 0x40], 0x20
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	r8, [rbp - 0x40]
	call	version_etc_va
	add	rsp, 0x1a0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408e90
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_867
	call	gettext
	movabs	rsi, OFFSET FLAT:label_869
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_870
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_33
	movabs	rdx, OFFSET FLAT:label_22
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_868
	mov	dword ptr [rbp - 8], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0xc], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408f20
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 8]
	jae	.label_871
	call	xalloc_die
.label_871:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408f70

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	malloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_872
	cmp	qword ptr [rbp - 8], 0
	je	.label_872
	call	xalloc_die
.label_872:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408fb0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_873
	call	xalloc_die
.label_873:
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	xrealloc
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409000

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_874
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_874
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_876
.label_874:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_875
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_875
	call	xalloc_die
.label_875:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_876:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409080

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x20], rdx
	cmp	qword ptr [rbp - 8], 0
	jne	.label_877
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_880
	mov	eax, 0x80
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	setne	sil
	xor	sil, 0xff
	and	sil, 1
	movzx	ecx, sil
	movsxd	rax, ecx
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_880:
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_878
	call	xalloc_die
.label_878:
	jmp	.label_879
.label_877:
	movabs	rax, 0x5555555555555554
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_881
	call	xalloc_die
.label_881:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_879:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x20]
	imul	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	xrealloc
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409170

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409190
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax, 1
	mov	edx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	x2nrealloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4091c0
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	xmalloc
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x10], rax
	call	memset
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409200
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 8]
	jb	.label_882
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_883
.label_882:
	call	xalloc_die
.label_883:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409260

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	call	xmalloc
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x18], rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4092a0
	.globl xstrdup
	.type xstrdup, @function
xstrdup:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, rax
	call	strlen
	add	rax, 1
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	call	xmemdup
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4092e0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_884
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:label_48
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x409320

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], 0
	mov	dword ptr [rbp - 0x1c], 0
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	dword ptr [rbp - 0x18], eax
	cmp	dword ptr [rbp - 0x18], 0
	jge	.label_885
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	jmp	.label_888
.label_885:
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	je	.label_886
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_887
.label_886:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_887
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_887:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_889
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_889:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_888:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4093f0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_890
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_891
.label_890:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	jmp	.label_892
.label_891:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_892:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409450

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdi]
	and	eax, 0x100
	cmp	eax, 0
	je	.label_893
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fseeko
	mov	dword ptr [rbp - 0xc], eax
.label_893:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409490

	.globl rpl_fseeko
	.type rpl_fseeko, @function
rpl_fseeko:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x10]
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rsi, qword ptr [rdi + 8]
	jne	.label_894
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_894
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_894
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_896
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_895
.label_896:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x90], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_895
.label_894:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fseeko
	mov	dword ptr [rbp - 4], eax
.label_895:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409560

	.globl rpl_mbrtowc
	.type rpl_mbrtowc, @function
rpl_mbrtowc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_897
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_897:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	mbrtowc
	mov	rcx, -2
	mov	qword ptr [rbp - 0x30], rax
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_898
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_898
	xor	edi, edi
	call	hard_locale
	test	al, 1
	jne	.label_898
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], edx
	mov	qword ptr [rbp - 8], 1
	jmp	.label_899
.label_898:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_899:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409610
	.globl extract_trimmed_name
	.type extract_trimmed_name, @function
extract_trimmed_name:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	eax, 0x21
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, rcx
	call	xmalloc
	mov	edx, 0x20
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x2c
	mov	rsi, rax
	call	strncpy
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + 0x20], 0
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x28], rcx
	call	strlen
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, rax
	mov	qword ptr [rbp - 0x10], rcx
.label_901:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 0x29], cl
	jae	.label_900
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax - 1]
	cmp	ecx, 0x20
	sete	dl
	mov	byte ptr [rbp - 0x29], dl
.label_900:
	mov	al, byte ptr [rbp - 0x29]
	test	al, 1
	jne	.label_902
	jmp	.label_904
.label_902:
	jmp	.label_903
.label_903:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x10], rcx
	mov	byte ptr [rax - 1], 0
	jmp	.label_901
.label_904:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4096d0

	.globl read_utmp
	.type read_utmp, @function
read_utmp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	dword ptr [rbp - 0x1c], ecx
	mov	qword ptr [rbp - 0x28], 0
	mov	qword ptr [rbp - 0x30], 0
	mov	qword ptr [rbp - 0x38], 0
	mov	rdi, qword ptr [rbp - 8]
	call	utmpxname
	mov	dword ptr [rbp - 0x44], eax
	call	setutxent
.label_907:
	call	getutxent
	mov	qword ptr [rbp - 0x40], rax
	cmp	rax, 0
	je	.label_908
	mov	rdi, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rbp - 0x1c]
	call	desirable_utmp_entry
	test	al, 1
	jne	.label_906
	jmp	.label_905
.label_906:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	jne	.label_909
	lea	rsi, [rbp - 0x30]
	mov	eax, 0x180
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, rcx
	call	x2nrealloc
	mov	qword ptr [rbp - 0x38], rax
.label_909:
	mov	eax, 0x180
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsi, rcx
	add	rsi, 1
	mov	qword ptr [rbp - 0x28], rsi
	imul	rcx, rcx, 0x180
	add	rcx, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdi, rcx
	call	memcpy
.label_905:
	jmp	.label_907
.label_908:
	call	endutxent
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx], rcx
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx], rcx
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4097c0

	.globl desirable_utmp_entry
	.type desirable_utmp_entry, @function
desirable_utmp_entry:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	cl, al
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rdi, qword ptr [rbp - 0x10]
	movsx	eax, byte ptr [rdi + 0x2c]
	cmp	eax, 0
	mov	byte ptr [rbp - 0x16], cl
	je	.label_910
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, word ptr [rcx]
	cmp	edx, 7
	mov	byte ptr [rbp - 0x17], al
	je	.label_912
	xor	eax, eax
	mov	cl, al
	mov	byte ptr [rbp - 0x17], cl
	jmp	.label_912
.label_912:
	mov	al, byte ptr [rbp - 0x17]
	mov	byte ptr [rbp - 0x16], al
.label_910:
	mov	al, byte ptr [rbp - 0x16]
	and	al, 1
	mov	byte ptr [rbp - 0x15], al
	mov	ecx, dword ptr [rbp - 0x14]
	and	ecx, 2
	cmp	ecx, 0
	je	.label_911
	test	byte ptr [rbp - 0x15], 1
	jne	.label_911
	mov	byte ptr [rbp - 1], 0
	jmp	.label_914
.label_911:
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 1
	cmp	eax, 0
	je	.label_913
	test	byte ptr [rbp - 0x15], 1
	je	.label_913
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	eax, dword ptr [rcx + 4]
	jge	.label_913
	xor	esi, esi
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax + 4]
	call	kill
	cmp	eax, 0
	jge	.label_913
	call	__errno_location
	cmp	dword ptr [rax], 3
	jne	.label_913
	mov	byte ptr [rbp - 1], 0
	jmp	.label_914
.label_913:
	mov	byte ptr [rbp - 1], 1
.label_914:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4098a0

	.globl tzalloc
	.type tzalloc, @function
tzalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_915
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_916
.label_915:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x28], rcx
	jmp	.label_916
.label_916:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0x77
	jae	.label_920
	mov	eax, 0x77
	mov	ecx, eax
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_918
.label_920:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
.label_918:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	and	rax, 0xfffffffffffffff8
	mov	rdi, rax
	call	malloc
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_917
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rax], 0
	cmp	qword ptr [rbp - 8], 0
	setne	cl
	xor	cl, 0xff
	xor	cl, 0xff
	and	cl, 1
	movzx	edx, cl
	mov	cl, dl
	mov	rax, qword ptr [rbp - 0x20]
	mov	byte ptr [rax + 8], cl
	mov	rax, qword ptr [rbp - 0x20]
	mov	byte ptr [rax + 9], 0
	cmp	qword ptr [rbp - 8], 0
	je	.label_919
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 9
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	extend_abbrs
.label_919:
	jmp	.label_917
.label_917:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4099a0

	.globl extend_abbrs
	.type extend_abbrs, @function
extend_abbrs:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	memcpy
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 8]
	mov	byte ptr [rsi + rdx], 0
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4099e0

	.globl tzfree
	.type tzfree, @function
tzfree:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	rdi,  qword ptr [word ptr [local_tz]]
	je	.label_921
	jmp	.label_923
.label_923:
	cmp	qword ptr [rbp - 8], 0
	je	.label_922
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_923
.label_922:
	jmp	.label_921
.label_921:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409a40
	.globl localtime_rz
	.type localtime_rz, @function
localtime_rz:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_924
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	call	gmtime_r
	mov	qword ptr [rbp - 8], rax
	jmp	.label_925
.label_924:
	mov	rdi, qword ptr [rbp - 0x10]
	call	set_tz
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_927
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	call	localtime_r
	xor	ecx, ecx
	mov	dl, cl
	cmp	rax, 0
	mov	byte ptr [rbp - 0x2a], dl
	je	.label_929
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	save_abbr
	mov	byte ptr [rbp - 0x2a], al
.label_929:
	mov	al, byte ptr [rbp - 0x2a]
	and	al, 1
	mov	byte ptr [rbp - 0x29], al
	mov	rdi, qword ptr [rbp - 0x28]
	call	revert_tz
	test	al, 1
	jne	.label_926
	jmp	.label_928
.label_926:
	test	byte ptr [rbp - 0x29], 1
	je	.label_928
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_925
.label_928:
	jmp	.label_927
.label_927:
	mov	qword ptr [rbp - 8], 0
.label_925:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409b10

	.globl set_tz
	.type set_tz, @function
set_tz:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	call	getenv_TZ
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_930
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 8]
	cmp	ecx, 0
	je	.label_931
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 9
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	strcmp
	cmp	eax, 0
	je	.label_934
	jmp	.label_931
.label_930:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax + 8], 0
	jne	.label_931
.label_934:
	mov	rax,  qword ptr [word ptr [local_tz]]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_933
.label_931:
	mov	rdi, qword ptr [rbp - 0x18]
	call	tzalloc
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_932
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_933
.label_932:
	mov	rdi, qword ptr [rbp - 0x10]
	call	change_env
	test	al, 1
	jne	.label_935
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], ecx
	mov	rdi, qword ptr [rbp - 0x20]
	call	tzfree
	mov	ecx, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x28], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x28]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
	jmp	.label_933
.label_935:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_933:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409c00

	.globl save_abbr
	.type save_abbr, @function
save_abbr:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:label_30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x30]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_936
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_939
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x38
	cmp	rax, rcx
	jae	.label_939
.label_936:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_942
.label_939:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	byte ptr [rax], 0
	je	.label_944
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 9
	mov	qword ptr [rbp - 0x28], rax
.label_941:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x20]
	call	strcmp
	cmp	eax, 0
	je	.label_938
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_940
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 9
	cmp	rax, rcx
	jne	.label_947
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 8]
	cmp	ecx, 0
	jne	.label_940
.label_947:
	mov	rax, -1
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x40], rax
	call	strlen
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rbp - 0x10]
	add	rdi, 9
	sub	rax, rdi
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_945
	call	__errno_location
	mov	dword ptr [rax], 0xc
	mov	byte ptr [rbp - 1], 0
	jmp	.label_942
.label_945:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x30]
	cmp	rax, 0x77
	jae	.label_946
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x30]
	call	extend_abbrs
	jmp	.label_937
.label_946:
	mov	rdi, qword ptr [rbp - 0x20]
	call	tzalloc
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi], rax
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_948
	mov	byte ptr [rbp - 1], 0
	jmp	.label_942
.label_948:
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 9
	mov	qword ptr [rbp - 0x28], rax
.label_937:
	jmp	.label_938
.label_940:
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	add	rax, 1
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	cmp	byte ptr [rax], 0
	jne	.label_943
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_943
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 9
	mov	qword ptr [rbp - 0x28], rax
.label_943:
	jmp	.label_941
.label_938:
	jmp	.label_944
.label_944:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x30], rax
	mov	byte ptr [rbp - 1], 1
.label_942:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409e00

	.globl revert_tz
	.type revert_tz, @function
revert_tz:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rdi,  qword ptr [word ptr [local_tz]]
	jne	.label_949
	mov	byte ptr [rbp - 1], 1
	jmp	.label_951
.label_949:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
	mov	rdi, qword ptr [rbp - 0x10]
	call	change_env
	and	al, 1
	mov	byte ptr [rbp - 0x15], al
	test	byte ptr [rbp - 0x15], 1
	jne	.label_950
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_950:
	mov	rdi, qword ptr [rbp - 0x10]
	call	tzfree
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x1c], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x1c]
	mov	dword ptr [rax], ecx
	mov	dl, byte ptr [rbp - 0x15]
	and	dl, 1
	mov	byte ptr [rbp - 1], dl
.label_951:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409e90

	.globl mktime_z
	.type mktime_z, @function
mktime_z:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_955
	mov	rdi, qword ptr [rbp - 0x18]
	call	timegm
	mov	qword ptr [rbp - 8], rax
	jmp	.label_956
.label_955:
	mov	rdi, qword ptr [rbp - 0x10]
	call	set_tz
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_953
	mov	rdi, qword ptr [rbp - 0x18]
	call	mktime
	mov	qword ptr [rbp - 0x28], rax
	mov	qword ptr [rbp - 0x30], -1
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	jne	.label_958
	lea	rdi, [rbp - 0x28]
	lea	rsi, [rbp - 0x68]
	call	localtime_r
	cmp	rax, 0
	je	.label_954
	lea	rsi, [rbp - 0x68]
	mov	rdi, qword ptr [rbp - 0x18]
	call	equal_tm
	cmp	eax, 0
	je	.label_954
.label_958:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	save_abbr
	test	al, 1
	jne	.label_954
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
.label_954:
	mov	rdi, qword ptr [rbp - 0x20]
	call	revert_tz
	test	al, 1
	jne	.label_952
	jmp	.label_957
.label_952:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_956
.label_957:
	jmp	.label_953
.label_953:
	mov	qword ptr [rbp - 8], -1
.label_956:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409f80

	.globl equal_tm
	.type equal_tm, @function
equal_tm:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	xor	eax, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rsi + 4]
	mov	rsi, qword ptr [rbp - 0x10]
	xor	ecx, dword ptr [rsi + 4]
	or	eax, ecx
	mov	rsi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 0x10]
	xor	ecx, dword ptr [rsi + 8]
	or	eax, ecx
	mov	rsi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rsi + 0xc]
	mov	rsi, qword ptr [rbp - 0x10]
	xor	ecx, dword ptr [rsi + 0xc]
	or	eax, ecx
	mov	rsi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rsi + 0x10]
	mov	rsi, qword ptr [rbp - 0x10]
	xor	ecx, dword ptr [rsi + 0x10]
	or	eax, ecx
	mov	rsi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rsi + 0x14]
	mov	rsi, qword ptr [rbp - 0x10]
	xor	ecx, dword ptr [rsi + 0x14]
	or	eax, ecx
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, dword ptr [rsi + 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rsi + 0x20]
	mov	dword ptr [rbp - 0x14], eax
	call	isdst_differ
	and	al, 1
	movzx	ecx, al
	mov	esi, dword ptr [rbp - 0x14]
	or	esi, ecx
	cmp	esi, 0
	setne	al
	xor	al, 0xff
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a020

	.globl getenv_TZ
	.type getenv_TZ, @function
getenv_TZ:
	push	rbp
	mov	rbp, rsp
	movabs	rdi, OFFSET FLAT:label_959
	call	getenv
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a040

	.globl change_env
	.type change_env, @function
change_env:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	movsx	eax, byte ptr [rdi + 8]
	cmp	eax, 0
	je	.label_960
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 9
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_963
.label_960:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_963
.label_963:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	setenv_TZ
	cmp	eax, 0
	je	.label_962
	mov	byte ptr [rbp - 1], 0
	jmp	.label_961
.label_962:
	call	tzset
	mov	byte ptr [rbp - 1], 1
.label_961:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a0b0

	.globl setenv_TZ
	.type setenv_TZ, @function
setenv_TZ:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_964
	movabs	rdi, OFFSET FLAT:label_959
	mov	edx, 1
	mov	rsi, qword ptr [rbp - 8]
	call	setenv
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_965
.label_964:
	movabs	rdi, OFFSET FLAT:label_959
	call	unsetenv
	mov	dword ptr [rbp - 0xc], eax
.label_965:
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a110

	.globl isdst_differ
	.type isdst_differ, @function
isdst_differ:
	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	cl, al
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	cmp	dword ptr [rbp - 4], 0
	setne	dl
	xor	dl, 0xff
	and	dl, 1
	movzx	eax, dl
	cmp	dword ptr [rbp - 8], 0
	setne	dl
	xor	dl, 0xff
	and	dl, 1
	movzx	esi, dl
	cmp	eax, esi
	mov	byte ptr [rbp - 9], cl
	je	.label_966
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 4]
	mov	byte ptr [rbp - 9], cl
	jg	.label_966
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 8]
	setle	cl
	mov	byte ptr [rbp - 9], cl
.label_966:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a170

	.globl c_strcasecmp
	.type c_strcasecmp, @function
c_strcasecmp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	rsi, qword ptr [rbp - 0x28]
	jne	.label_967
	mov	dword ptr [rbp - 4], 0
	jmp	.label_971
.label_967:
	jmp	.label_968
.label_968:
	mov	rax, qword ptr [rbp - 0x20]
	movzx	edi, byte ptr [rax]
	call	c_tolower
	mov	cl, al
	mov	byte ptr [rbp - 0x29], cl
	mov	rdx, qword ptr [rbp - 0x28]
	movzx	edi, byte ptr [rdx]
	call	c_tolower
	mov	cl, al
	mov	byte ptr [rbp - 0x2a], cl
	movzx	eax, byte ptr [rbp - 0x29]
	cmp	eax, 0
	jne	.label_970
	jmp	.label_969
.label_970:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	je	.label_968
.label_969:
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_971:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a230

	.globl close_stream
	.type close_stream, @function
close_stream:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	call	__fpending
	cmp	rax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x11], cl
	mov	rdi, qword ptr [rbp - 0x10]
	call	ferror_unlocked
	cmp	eax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x12], cl
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fclose
	cmp	eax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x13], cl
	test	byte ptr [rbp - 0x12], 1
	jne	.label_972
	test	byte ptr [rbp - 0x13], 1
	je	.label_973
	test	byte ptr [rbp - 0x11], 1
	jne	.label_972
	call	__errno_location
	cmp	dword ptr [rax], 9
	je	.label_973
.label_972:
	test	byte ptr [rbp - 0x13], 1
	jne	.label_974
	call	__errno_location
	mov	dword ptr [rax], 0
.label_974:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_975
.label_973:
	mov	dword ptr [rbp - 4], 0
.label_975:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a2e0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	esi, eax
	mov	dword ptr [rbp - 4], edi
	mov	byte ptr [rbp - 5], 1
	mov	edi, dword ptr [rbp - 4]
	call	setlocale
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_976
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_95
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_979
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_977
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_978
.label_979:
	mov	byte ptr [rbp - 5], 0
.label_978:
	jmp	.label_976
.label_976:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a360

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	edi, 0xe
	call	rpl_nl_langinfo
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	jne	.label_980
	movabs	rax, OFFSET FLAT:label_30
	mov	qword ptr [rbp - 8], rax
.label_980:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_981
	movabs	rax, OFFSET FLAT:label_982
	mov	qword ptr [rbp - 8], rax
.label_981:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a3c0

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	add	edi, 0xffffd828
	sub	edi, 0xb
	mov	dword ptr [rbp - 8], edi
	ja	.label_983
	jmp	.label_985
.label_985:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	add	eax, 0x2001a
	mov	dword ptr [rbp - 4], eax
	jmp	.label_984
.label_983:
	jmp	.label_984
.label_984:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a410
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x30
	sub	eax, 0xa
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_986
	jmp	.label_988
.label_988:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_986
	jmp	.label_987
.label_987:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_989
	jmp	.label_986
.label_986:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_990
.label_989:
	mov	byte ptr [rbp - 1], 0
.label_990:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a480
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_991
	jmp	.label_994
.label_994:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_992
	jmp	.label_991
.label_991:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_993
.label_992:
	mov	byte ptr [rbp - 1], 0
.label_993:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a4d0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_995
	jmp	.label_996
.label_996:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_997
.label_995:
	mov	byte ptr [rbp - 1], 0
.label_997:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a500
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_998
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_998:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a530
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	sub	edi, 0x20
	mov	dword ptr [rbp - 0xc], eax
	mov	dword ptr [rbp - 0x10], edi
	jb	.label_999
	jmp	.label_1001
.label_1001:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_1002
	jmp	.label_999
.label_999:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1000
.label_1002:
	mov	byte ptr [rbp - 1], 0
.label_1000:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a580
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1003
	jmp	.label_1005
.label_1005:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1004
.label_1003:
	mov	byte ptr [rbp - 1], 0
.label_1004:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a5c0
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1006
	jmp	.label_1008
.label_1008:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1007
.label_1006:
	mov	byte ptr [rbp - 1], 0
.label_1007:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a600
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1009
	jmp	.label_1011
.label_1011:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1010
.label_1009:
	mov	byte ptr [rbp - 1], 0
.label_1010:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a640
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1012
	jmp	.label_1014
.label_1014:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1013
.label_1012:
	mov	byte ptr [rbp - 1], 0
.label_1013:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a680
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	mov	eax, edi
	sub	edi, 0x5d
	mov	qword ptr [rbp - 0x10], rax
	mov	dword ptr [rbp - 0x14], edi
	ja	.label_1015
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1017]]
	jmp	rcx
.label_1131:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1016
.label_1015:
	mov	byte ptr [rbp - 1], 0
.label_1016:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a6d0
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -9
	sub	eax, 5
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_1018
	jmp	.label_1020
.label_1020:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_1021
	jmp	.label_1018
.label_1018:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1019
.label_1021:
	mov	byte ptr [rbp - 1], 0
.label_1019:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a720
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1022
	jmp	.label_1024
.label_1024:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1023
.label_1022:
	mov	byte ptr [rbp - 1], 0
.label_1023:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a760
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x30
	sub	eax, 0xa
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_1025
	jmp	.label_1028
.label_1028:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_1025
	jmp	.label_1026
.label_1026:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_1027
	jmp	.label_1025
.label_1025:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1029
.label_1027:
	mov	byte ptr [rbp - 1], 0
.label_1029:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a7d0

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1030
	jmp	.label_1032
.label_1032:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1031
.label_1030:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_1031:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a810
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1033
	jmp	.label_1035
.label_1035:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1034
.label_1033:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_1034:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
