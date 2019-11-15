	.section	.text
	.align	16
	#Procedure 0x401910

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0xb8
	mov	dword ptr [rbp - 0xc], edi
	cmp	dword ptr [rbp - 0xc], 0
	je	.label_8
	jmp	.label_9
.label_9:
	movabs	rdi, OFFSET FLAT:.str
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x18], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_10
.label_8:
	movabs	rdi, OFFSET FLAT:.str.1
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.2
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x24], eax
	call	emit_mandatory_arg_note
	movabs	rdi, OFFSET FLAT:.str.3
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.4
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.5
	mov	dword ptr [rbp - 0x2c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.6
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.7
	mov	dword ptr [rbp - 0x34], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.8
	mov	dword ptr [rbp - 0x38], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.9
	mov	dword ptr [rbp - 0x3c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.10
	mov	dword ptr [rbp - 0x40], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.11
	mov	dword ptr [rbp - 0x44], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.12
	mov	dword ptr [rbp - 0x48], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.13
	mov	dword ptr [rbp - 0x4c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.14
	mov	dword ptr [rbp - 0x50], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.15
	mov	dword ptr [rbp - 0x54], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.16
	mov	dword ptr [rbp - 0x58], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.17
	mov	dword ptr [rbp - 0x5c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.18
	mov	dword ptr [rbp - 0x60], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.19
	mov	dword ptr [rbp - 0x64], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.20
	mov	dword ptr [rbp - 0x68], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.21
	mov	dword ptr [rbp - 0x6c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.22
	mov	dword ptr [rbp - 0x70], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.23
	mov	dword ptr [rbp - 0x74], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.24
	mov	dword ptr [rbp - 0x78], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.25
	mov	dword ptr [rbp - 0x7c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.26
	mov	dword ptr [rbp - 0x80], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.27
	mov	dword ptr [rbp - 0x84], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.28
	mov	dword ptr [rbp - 0x88], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.29
	mov	dword ptr [rbp - 0x8c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rcx,  qword ptr [word ptr [program_name]]
	mov	r8,  qword ptr [word ptr [program_name]]
	mov	r9,  qword ptr [word ptr [program_name]]
	mov	rdi,  qword ptr [word ptr [program_name]]
	mov	r10,  qword ptr [word ptr [program_name]]
	mov	r11,  qword ptr [word ptr [program_name]]
	mov	rbx,  qword ptr [word ptr [program_name]]
	mov	qword ptr [rbp - 0x98], rdi
	mov	rdi, rax
	mov	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	mov	qword ptr [rsp + 0x18], rbx
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.30
	mov	dword ptr [rbp - 0x9c], eax
	call	emit_ancillary_info
.label_10:
	mov	edi, dword ptr [rbp - 0xc]
	call	exit
	.section	.text
	.align	16
	#Procedure 0x401dd0

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.54
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401e00

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
.label_15:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_14
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_14:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_12
	jmp	.label_13
.label_12:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_15
.label_13:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_16
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_16:
	movabs	rdi, OFFSET FLAT:.str.63
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.17_0
	movabs	rdx, OFFSET FLAT:.str.18_0
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
	je	.label_11
	movabs	rsi, OFFSET FLAT:.str.65
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_11
	movabs	rdi, OFFSET FLAT:.str.66
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_11:
	movabs	rdi, OFFSET FLAT:.str.67
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.18_0
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.68
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:.str_0
	movabs	rsi, OFFSET FLAT:.str.69
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
	#Procedure 0x401fa0

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xd0
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], 1
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:.str_0
	call	setlocale
	movabs	rdi, OFFSET FLAT:.str.32
	movabs	rsi, OFFSET FLAT:.str.33
	cmp	rax, 0
	setne	cl
	xor	cl, 0xff
	xor	cl, 0xff
	and	cl, 1
	mov	byte ptr [rbp - 0x15], cl
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:.str.32
	mov	qword ptr [rbp - 0x48], rax
	call	textdomain
	mov	edi, 0x10000
	mov	qword ptr [rbp - 0x50], rax
	call	rpl_nl_langinfo
	mov	qword ptr [word ptr [decimal_point]],  rax
	cmp	qword ptr [word ptr [decimal_point]],  0
	je	.label_24
	mov	rdi,  qword ptr [word ptr [decimal_point]]
	call	strlen
	cmp	rax, 0
	jne	.label_87
.label_24:
	movabs	rax, OFFSET FLAT:.str.34
	mov	qword ptr [word ptr [decimal_point]],  rax
.label_87:
	movabs	rdi, OFFSET FLAT:close_stdout
	mov	rax,  qword ptr [word ptr [decimal_point]]
	mov	qword ptr [rbp - 0x58], rdi
	mov	rdi, rax
	call	strlen
	mov	ecx, eax
	mov	dword ptr [dword ptr [decimal_point_length]],  ecx
	mov	rdi, qword ptr [rbp - 0x58]
	call	atexit
	mov	dword ptr [rbp - 0x5c], eax
.label_50:
	movabs	rdx, OFFSET FLAT:.str.35
	movabs	rcx, OFFSET FLAT:longopts
	xor	eax, eax
	mov	r8d, eax
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], -1
	jne	.label_48
	jmp	.label_49
.label_48:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	mov	dword ptr [rbp - 0x60], eax
	mov	dword ptr [rbp - 0x64], ecx
	je	.label_51
	jmp	.label_54
.label_54:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0xffffff7e
	mov	dword ptr [rbp - 0x68], eax
	je	.label_55
	jmp	.label_59
.label_59:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x64
	mov	dword ptr [rbp - 0x6c], eax
	je	.label_60
	jmp	.label_61
.label_61:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x7a
	mov	dword ptr [rbp - 0x70], eax
	je	.label_62
	jmp	.label_63
.label_63:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x80
	mov	dword ptr [rbp - 0x74], eax
	je	.label_65
	jmp	.label_66
.label_66:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x81
	mov	dword ptr [rbp - 0x78], eax
	je	.label_67
	jmp	.label_68
.label_68:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x82
	mov	dword ptr [rbp - 0x7c], eax
	je	.label_25
	jmp	.label_72
.label_72:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x83
	mov	dword ptr [rbp - 0x80], eax
	je	.label_73
	jmp	.label_74
.label_74:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x84
	mov	dword ptr [rbp - 0x84], eax
	je	.label_75
	jmp	.label_78
.label_78:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x85
	mov	dword ptr [rbp - 0x88], eax
	je	.label_79
	jmp	.label_82
.label_82:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x86
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_32
	jmp	.label_52
.label_52:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x87
	mov	dword ptr [rbp - 0x90], eax
	je	.label_85
	jmp	.label_88
.label_88:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x88
	mov	dword ptr [rbp - 0x94], eax
	je	.label_90
	jmp	.label_17
.label_17:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x89
	mov	dword ptr [rbp - 0x98], eax
	je	.label_19
	jmp	.label_21
.label_21:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x8a
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_44
	jmp	.label_26
.label_26:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x8b
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_27
	jmp	.label_83
.label_83:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x8c
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_39
	jmp	.label_33
.label_33:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x8d
	mov	dword ptr [rbp - 0xa8], eax
	je	.label_34
	jmp	.label_36
.label_65:
	movabs	rdi, OFFSET FLAT:.str.36
	movabs	rdx, OFFSET FLAT:scale_from_args
	movabs	rax, OFFSET FLAT:scale_from_types
	mov	ecx, 4
	mov	r8d, ecx
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	mov	rcx, rax
	call	__xargmatch_internal
	mov	r10d,  dword ptr [dword ptr [+ (rax * 4) + scale_from_types]]
	mov	dword ptr [dword ptr [scale_from]],  r10d
	jmp	.label_23
.label_67:
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	unit_to_umax
	mov	qword ptr [word ptr [from_unit_size]],  rax
	jmp	.label_23
.label_25:
	movabs	rdi, OFFSET FLAT:.str.37
	movabs	rdx, OFFSET FLAT:scale_to_args
	movabs	rax, OFFSET FLAT:scale_to_types
	mov	ecx, 4
	mov	r8d, ecx
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	mov	rcx, rax
	call	__xargmatch_internal
	mov	r10d,  dword ptr [dword ptr [+ (rax * 4) + scale_to_types]]
	mov	dword ptr [dword ptr [scale_to]],  r10d
	jmp	.label_23
.label_73:
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	unit_to_umax
	mov	qword ptr [word ptr [to_unit_size]],  rax
	jmp	.label_23
.label_75:
	movabs	rdi, OFFSET FLAT:.str.38
	movabs	rdx, OFFSET FLAT:round_args
	movabs	rax, OFFSET FLAT:round_types
	mov	ecx, 4
	mov	r8d, ecx
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	mov	rcx, rax
	call	__xargmatch_internal
	mov	r10d,  dword ptr [dword ptr [+ (rax * 4) + round_types]]
	mov	dword ptr [dword ptr [round_style]],  r10d
	jmp	.label_23
.label_32:
	mov	dword ptr [dword ptr [grouping]],  1
	jmp	.label_23
.label_85:
	xor	eax, eax
	mov	esi, eax
	mov	edx, 0xa
	movabs	rcx, OFFSET FLAT:padding_width
	movabs	r8, OFFSET FLAT:.str_0
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	xstrtol
	cmp	eax, 0
	jne	.label_89
	cmp	qword ptr [word ptr [padding_width]],  0
	jne	.label_91
.label_89:
	movabs	rdi, OFFSET FLAT:.str.39
	call	gettext
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0xb0], rax
	call	quote
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0xb0]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_91:
	cmp	qword ptr [word ptr [padding_width]],  0
	jge	.label_28
	xor	eax, eax
	mov	ecx, eax
	mov	dword ptr [dword ptr [padding_alignment]],  0
	sub	rcx,  qword ptr [word ptr [padding_width]]
	mov	qword ptr [word ptr [padding_width]],  rcx
.label_28:
	jmp	.label_23
.label_90:
	cmp	qword ptr [word ptr [n_frp]],  0
	je	.label_40
	movabs	rdi, OFFSET FLAT:.str.40
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_40:
	mov	esi, 1
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	set_fields
	jmp	.label_23
.label_60:
	mov	rax,  qword ptr [word ptr [optarg]]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_43
	mov	rax,  qword ptr [word ptr [optarg]]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_43
	movabs	rdi, OFFSET FLAT:.str.41
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_43:
	mov	rax,  qword ptr [word ptr [optarg]]
	movsx	ecx, byte ptr [rax]
	mov	dword ptr [dword ptr [delimiter]],  ecx
	jmp	.label_23
.label_62:
	mov	byte ptr [byte ptr [line_delim]],  0
	jmp	.label_23
.label_79:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [word ptr [suffix]],  rax
	jmp	.label_23
.label_19:
	mov	byte ptr [byte ptr [debug]],  1
	jmp	.label_23
.label_44:
	mov	byte ptr [byte ptr [dev_debug]],  1
	mov	byte ptr [byte ptr [debug]],  1
	jmp	.label_23
.label_27:
	cmp	qword ptr [word ptr [optarg]],  0
	je	.label_69
	xor	eax, eax
	mov	esi, eax
	mov	edx, 0xa
	movabs	rcx, OFFSET FLAT:header
	movabs	r8, OFFSET FLAT:.str_0
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	xstrtoumax
	cmp	eax, 0
	jne	.label_76
	cmp	qword ptr [word ptr [header]],  0
	jne	.label_77
.label_76:
	movabs	rdi, OFFSET FLAT:.str.42
	call	gettext
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0xb8], rax
	call	quote
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0xb8]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_77:
	jmp	.label_71
.label_69:
	mov	qword ptr [word ptr [header]],  1
.label_71:
	jmp	.label_23
.label_39:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [word ptr [format_str]],  rax
	jmp	.label_23
.label_34:
	movabs	rdi, OFFSET FLAT:.str.43
	movabs	rdx, OFFSET FLAT:inval_args
	movabs	rax, OFFSET FLAT:inval_types
	mov	ecx, 4
	mov	r8d, ecx
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	mov	rcx, rax
	call	__xargmatch_internal
	mov	r10d,  dword ptr [dword ptr [+ (rax * 4) + inval_types]]
	mov	dword ptr [dword ptr [inval_style]],  r10d
	jmp	.label_23
.label_55:
	xor	edi, edi
	call	usage
.label_51:
	movabs	rsi, OFFSET FLAT:.str.30
	movabs	rdx, OFFSET FLAT:.str.17_0
	movabs	r8, OFFSET FLAT:.str.45
	xor	eax, eax
	mov	r9d, eax
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	rcx,  qword ptr [word ptr [Version]]
	mov	al, 0
	call	version_etc
	xor	edi, edi
	call	exit
.label_36:
	mov	edi, 1
	call	usage
.label_23:
	jmp	.label_50
.label_49:
	cmp	qword ptr [word ptr [format_str]],  0
	je	.label_45
	cmp	dword ptr [dword ptr [grouping]],  0
	je	.label_45
	movabs	rdi, OFFSET FLAT:.str.46
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_45:
	test	byte ptr [byte ptr [debug]],  1
	je	.label_56
	test	byte ptr [rbp - 0x15], 1
	jne	.label_56
	movabs	rdi, OFFSET FLAT:.str.47
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
.label_56:
	test	byte ptr [byte ptr [debug]],  1
	je	.label_64
	cmp	dword ptr [dword ptr [scale_from]],  0
	jne	.label_64
	cmp	dword ptr [dword ptr [scale_to]],  0
	jne	.label_64
	cmp	dword ptr [dword ptr [grouping]],  0
	jne	.label_64
	cmp	qword ptr [word ptr [padding_width]],  0
	jne	.label_64
	cmp	qword ptr [word ptr [format_str]],  0
	jne	.label_64
	movabs	rdi, OFFSET FLAT:.str.48
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
.label_64:
	cmp	qword ptr [word ptr [format_str]],  0
	je	.label_80
	mov	rdi,  qword ptr [word ptr [format_str]]
	call	parse_format_string
.label_80:
	cmp	dword ptr [dword ptr [grouping]],  0
	je	.label_29
	cmp	dword ptr [dword ptr [scale_to]],  0
	je	.label_84
	movabs	rdi, OFFSET FLAT:.str.49
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_84:
	test	byte ptr [byte ptr [debug]],  1
	je	.label_22
	mov	edi, 0x10001
	call	rpl_nl_langinfo
	mov	rdi, rax
	call	strlen
	cmp	rax, 0
	jne	.label_22
	movabs	rdi, OFFSET FLAT:.str.50
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
.label_22:
	jmp	.label_29
.label_29:
	mov	rdi,  qword ptr [word ptr [padding_width]]
	call	setup_padding_buffer
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [word ptr [padding_width]],  0
	mov	byte ptr [rbp - 0xb9], cl
	jne	.label_30
	cmp	dword ptr [dword ptr [delimiter]],  0x80
	sete	al
	mov	byte ptr [rbp - 0xb9], al
.label_30:
	mov	al, byte ptr [rbp - 0xb9]
	and	al, 1
	movzx	ecx, al
	mov	dword ptr [dword ptr [auto_padding]],  ecx
	cmp	dword ptr [dword ptr [inval_style]],  0
	je	.label_38
	mov	dword ptr [dword ptr [conv_exit_code]],  0
.label_38:
	mov	eax, dword ptr [rbp - 8]
	cmp	eax,  dword ptr [dword ptr [optind]]
	jle	.label_41
	test	byte ptr [byte ptr [debug]],  1
	je	.label_46
	cmp	qword ptr [word ptr [header]],  0
	je	.label_46
	movabs	rdi, OFFSET FLAT:.str.51
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
.label_46:
	jmp	.label_57
.label_57:
	mov	eax,  dword ptr [dword ptr [optind]]
	cmp	eax, dword ptr [rbp - 8]
	jge	.label_58
	mov	esi, 1
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rax*8]
	call	process_line
	and	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x14], eax
	mov	eax,  dword ptr [dword ptr [optind]]
	add	eax, 1
	mov	dword ptr [dword ptr [optind]],  eax
	jmp	.label_57
.label_58:
	jmp	.label_42
.label_41:
	mov	qword ptr [rbp - 0x28], 0
	mov	qword ptr [rbp - 0x30], 0
.label_86:
	xor	eax, eax
	mov	cl, al
	mov	rdx,  qword ptr [word ptr [header]]
	mov	rsi, rdx
	add	rsi, -1
	mov	qword ptr [word ptr [header]],  rsi
	cmp	rdx, 0
	mov	byte ptr [rbp - 0xba], cl
	je	.label_70
	lea	rdi, [rbp - 0x28]
	lea	rsi, [rbp - 0x30]
	movzx	edx,  byte ptr [byte ptr [line_delim]]
	mov	rcx,  qword ptr [word ptr [stdin]]
	call	getdelim
	cmp	rax, 0
	setg	r8b
	mov	byte ptr [rbp - 0xba], r8b
.label_70:
	mov	al, byte ptr [rbp - 0xba]
	test	al, 1
	jne	.label_81
	jmp	.label_37
.label_81:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0xc0], eax
	jmp	.label_86
.label_37:
	jmp	.label_31
.label_31:
	lea	rdi, [rbp - 0x28]
	lea	rsi, [rbp - 0x30]
	movzx	edx,  byte ptr [byte ptr [line_delim]]
	mov	rcx,  qword ptr [word ptr [stdin]]
	call	getdelim
	mov	qword ptr [rbp - 0x38], rax
	cmp	rax, 0
	jle	.label_18
	mov	rax, qword ptr [rbp - 0x38]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	movzx	esi,  byte ptr [byte ptr [line_delim]]
	cmp	edx, esi
	sete	dil
	and	dil, 1
	mov	byte ptr [rbp - 0x39], dil
	test	byte ptr [rbp - 0x39], 1
	je	.label_20
	mov	rax, qword ptr [rbp - 0x38]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x28]
	mov	byte ptr [rcx + rax], 0
.label_20:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	al, byte ptr [rbp - 0x39]
	and	al, 1
	movzx	esi, al
	call	process_line
	and	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_31
.label_18:
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	ferror_unlocked
	cmp	eax, 0
	je	.label_35
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.52
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xc4], esi
	call	gettext
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xc4]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_35:
	jmp	.label_42
.label_42:
	test	byte ptr [byte ptr [debug]],  1
	je	.label_47
	cmp	dword ptr [rbp - 0x14], 0
	jne	.label_47
	movabs	rdi, OFFSET FLAT:.str.53
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
.label_47:
	mov	dword ptr [rbp - 0x40], 0
	cmp	dword ptr [rbp - 0x14], 0
	jne	.label_53
	cmp	dword ptr [dword ptr [inval_style]],  2
	je	.label_53
	cmp	dword ptr [dword ptr [inval_style]],  3
	je	.label_53
	mov	dword ptr [rbp - 0x40], 2
.label_53:
	mov	eax, dword ptr [rbp - 0x40]
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402b30

	.globl unit_to_umax
	.type unit_to_umax, @function
unit_to_umax:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	movabs	rax, OFFSET FLAT:.str.93
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x48], rax
	call	strlen
	mov	qword ptr [rbp - 0x28], rax
	mov	qword ptr [rbp - 0x30], 0
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_94
	mov	rax, qword ptr [rbp - 0x28]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	movsx	edi, byte ptr [rcx + rax]
	call	c_isdigit
	test	al, 1
	jne	.label_94
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 2
	mov	rdi, rax
	call	xmalloc
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x28]
	add	rax, -1
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x28]
	call	memcpy
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x69
	jne	.label_93
	mov	eax, 2
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x28]
	ja	.label_93
	mov	rax, qword ptr [rbp - 0x30]
	movsx	edi, byte ptr [rax - 1]
	call	c_isdigit
	test	al, 1
	jne	.label_93
	mov	rax, qword ptr [rbp - 0x30]
	mov	byte ptr [rax], 0
	jmp	.label_96
.label_93:
	movabs	rax, OFFSET FLAT:.str.94
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x30], rdx
	mov	byte ptr [rcx + 1], 0x42
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x30], rdx
	mov	byte ptr [rcx + 1], 0
	mov	qword ptr [rbp - 0x40], rax
.label_96:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
.label_94:
	lea	rsi, [rbp - 0x30]
	mov	edx, 0xa
	lea	rcx, [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x40]
	call	xstrtoumax
	mov	dword ptr [rbp - 0xc], eax
	cmp	dword ptr [rbp - 0xc], 0
	jne	.label_95
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_95
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_92
.label_95:
	mov	rdi, qword ptr [rbp - 0x20]
	call	free
	movabs	rdi, OFFSET FLAT:.str.95
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x50], rax
	call	quote
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_92:
	mov	rdi, qword ptr [rbp - 0x20]
	call	free
	mov	rax, qword ptr [rbp - 0x38]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402cf0

	.globl parse_format_string
	.type parse_format_string, @function
parse_format_string:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xe0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], 0
	mov	qword ptr [rbp - 0x28], 0
	mov	qword ptr [rbp - 0x30], 0
	mov	byte ptr [rbp - 0x31], 0
	mov	qword ptr [rbp - 0x10], 0
.label_128:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 8]
	movsx	eax, byte ptr [rsi + rdx]
	cmp	eax, 0x25
	mov	byte ptr [rbp - 0x41], cl
	jne	.label_104
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x25
	setne	sil
	mov	byte ptr [rbp - 0x41], sil
.label_104:
	mov	al, byte ptr [rbp - 0x41]
	xor	al, 0xff
	test	al, 1
	jne	.label_109
	jmp	.label_110
.label_109:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	byte ptr [rcx + rax], 0
	jne	.label_114
	movabs	rdi, OFFSET FLAT:.str.105
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x50], rax
	call	quote
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_114:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x25
	sete	sil
	and	sil, 1
	movzx	edx, sil
	add	edx, 1
	movsxd	rax, edx
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_128
.label_110:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
.label_124:
	movabs	rsi, OFFSET FLAT:.str.106
	mov	rax, qword ptr [rbp - 8]
	add	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	strspn
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rsi + rax]
	cmp	ecx, 0x27
	jne	.label_98
	mov	dword ptr [dword ptr [grouping]],  1
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_105
.label_98:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x30
	jne	.label_108
	mov	byte ptr [rbp - 0x31], 1
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_112
.label_108:
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_120
	jmp	.label_123
.label_120:
	jmp	.label_112
.label_112:
	jmp	.label_105
.label_105:
	jmp	.label_124
.label_123:
	call	__errno_location
	lea	rsi, [rbp - 0x30]
	mov	edx, 0xa
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 8]
	add	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	strtol
	mov	qword ptr [rbp - 0x28], rax
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	jne	.label_129
	movabs	rdi, OFFSET FLAT:.str.107
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x58], rax
	call	quote
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_129:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, qword ptr [rbp - 0x10]
	cmp	rax, rcx
	je	.label_100
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_100
	test	byte ptr [byte ptr [debug]],  1
	je	.label_97
	cmp	qword ptr [word ptr [padding_width]],  0
	je	.label_97
	test	byte ptr [rbp - 0x31], 1
	je	.label_106
	cmp	qword ptr [rbp - 0x28], 0
	jg	.label_97
.label_106:
	movabs	rdi, OFFSET FLAT:.str.108
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
.label_97:
	cmp	qword ptr [rbp - 0x28], 0
	jge	.label_117
	xor	eax, eax
	mov	ecx, eax
	mov	dword ptr [dword ptr [padding_alignment]],  0
	sub	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [word ptr [padding_width]],  rcx
	jmp	.label_121
.label_117:
	test	byte ptr [rbp - 0x31], 1
	je	.label_125
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [word ptr [zero_padding_width]],  rax
	jmp	.label_127
.label_125:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [word ptr [padding_width]],  rax
.label_127:
	jmp	.label_121
.label_121:
	jmp	.label_100
.label_100:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	jne	.label_130
	movabs	rdi, OFFSET FLAT:.str.109
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x60], rax
	call	quote
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_130:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2e
	jne	.label_101
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	call	__errno_location
	lea	rsi, [rbp - 0x30]
	mov	edx, 0xa
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 8]
	add	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	strtol
	mov	qword ptr [word ptr [user_precision]],  rax
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	je	.label_118
	cmp	qword ptr [word ptr [user_precision]],  0
	jl	.label_118
	mov	rax, -1
	cmp	rax,  qword ptr [word ptr [user_precision]]
	jb	.label_118
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	movsxd	rax, edx
	mov	qword ptr [rbp - 0x68], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x68]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 1
	cmp	edx, 0
	jne	.label_118
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2b
	jne	.label_131
.label_118:
	movabs	rdi, OFFSET FLAT:.str.110
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x70], rax
	call	quote
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_131:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x10], rax
.label_101:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x66
	je	.label_103
	movabs	rdi, OFFSET FLAT:.str.111
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x78], rax
	call	quote
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_103:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rax
.label_134:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	je	.label_122
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x25
	jne	.label_113
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x25
	je	.label_113
	movabs	rdi, OFFSET FLAT:.str.112
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x80], rax
	call	quote
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_113:
	jmp	.label_133
.label_133:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x25
	sete	sil
	and	sil, 1
	movzx	edx, sil
	add	edx, 1
	movsxd	rax, edx
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_134
.label_122:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_102
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	call	xstrndup
	mov	qword ptr [word ptr [format_str_prefix]],  rax
.label_102:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	je	.label_107
	mov	rax, qword ptr [rbp - 8]
	add	rax, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	xstrdup
	mov	qword ptr [word ptr [format_str_suffix]],  rax
.label_107:
	jmp	.label_116
.label_116:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_119
	xor	edi, edi
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x88], rax
	call	quote_n
	movabs	rsi, OFFSET FLAT:.str.117
	movabs	rcx, OFFSET FLAT:.str.116
	movabs	rdx, OFFSET FLAT:.str.115
	movabs	r8, OFFSET FLAT:.str.114
	cmp	dword ptr [dword ptr [grouping]],  0
	cmovne	rdx, r8
	mov	r8,  qword ptr [word ptr [padding_width]]
	cmp	dword ptr [dword ptr [padding_alignment]],  0
	cmove	rsi, rcx
	cmp	qword ptr [word ptr [format_str_prefix]],  0
	mov	qword ptr [rbp - 0x90], rax
	mov	qword ptr [rbp - 0x98], r8
	mov	qword ptr [rbp - 0xa0], rsi
	mov	qword ptr [rbp - 0xa8], rdx
	je	.label_126
	mov	rax,  qword ptr [word ptr [format_str_prefix]]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_99
.label_126:
	movabs	rax, OFFSET FLAT:.str_0
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_99
.label_99:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	edi, 1
	mov	rsi, rax
	call	quote_n
	cmp	qword ptr [word ptr [format_str_suffix]],  0
	mov	qword ptr [rbp - 0xb8], rax
	je	.label_115
	mov	rax,  qword ptr [word ptr [format_str_suffix]]
	mov	qword ptr [rbp - 0xc0], rax
	jmp	.label_111
.label_115:
	movabs	rax, OFFSET FLAT:.str_0
	mov	qword ptr [rbp - 0xc0], rax
	jmp	.label_111
.label_111:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	edi, 2
	mov	rsi, rax
	call	quote_n
	movabs	rsi, OFFSET FLAT:.str.113
	mov	rdi, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	r8, qword ptr [rbp - 0x98]
	mov	r9, qword ptr [rbp - 0xa0]
	mov	r10, qword ptr [rbp - 0xb8]
	mov	qword ptr [rsp], r10
	mov	qword ptr [rsp + 8], rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xc4], eax
.label_119:
	jmp	.label_132
.label_132:
	add	rsp, 0xe0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403400

	.globl setup_padding_buffer
	.type setup_padding_buffer, @function
setup_padding_buffer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi,  qword ptr [word ptr [padding_buffer_size]]
	cmp	rdi, qword ptr [rbp - 8]
	jbe	.label_135
	jmp	.label_136
.label_135:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [word ptr [padding_buffer_size]],  rax
	mov	rdi,  qword ptr [word ptr [padding_buffer]]
	mov	rsi,  qword ptr [word ptr [padding_buffer_size]]
	call	xrealloc
	mov	qword ptr [word ptr [padding_buffer]],  rax
.label_136:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403460

	.globl process_line
	.type process_line, @function
process_line:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	al, sil
	mov	qword ptr [rbp - 8], rdi
	and	al, 1
	mov	byte ptr [rbp - 9], al
	mov	qword ptr [rbp - 0x20], 0
	mov	byte ptr [rbp - 0x21], 1
.label_145:
	lea	rdi, [rbp - 8]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	call	next_field
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_140
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax], 0
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	call	process_field
	test	al, 1
	jne	.label_144
	mov	byte ptr [rbp - 0x21], 0
.label_144:
	cmp	dword ptr [dword ptr [delimiter]],  0x80
	jne	.label_142
	mov	eax, 0x20
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_141
.label_142:
	mov	eax,  dword ptr [dword ptr [delimiter]]
	mov	dword ptr [rbp - 0x28], eax
.label_141:
	mov	eax, dword ptr [rbp - 0x28]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	edi, eax
	call	fputc_unlocked
	mov	rsi, qword ptr [rbp - 8]
	add	rsi, 1
	mov	qword ptr [rbp - 8], rsi
	mov	dword ptr [rbp - 0x2c], eax
	jmp	.label_137
.label_140:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	call	process_field
	test	al, 1
	jne	.label_138
	mov	byte ptr [rbp - 0x21], 0
.label_138:
	jmp	.label_139
.label_137:
	jmp	.label_145
.label_139:
	test	byte ptr [rbp - 9], 1
	je	.label_143
	movzx	edi,  byte ptr [byte ptr [line_delim]]
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x30], eax
.label_143:
	mov	al, byte ptr [rbp - 0x21]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403570

	.globl next_field
	.type next_field, @function
next_field:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	cmp	dword ptr [dword ptr [delimiter]],  0x80
	je	.label_158
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx,  dword ptr [dword ptr [delimiter]]
	je	.label_155
	jmp	.label_159
.label_159:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	movsx	eax, byte ptr [rdx]
	cmp	eax, 0
	mov	byte ptr [rbp - 0x19], cl
	je	.label_153
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx,  dword ptr [dword ptr [delimiter]]
	setne	dl
	mov	byte ptr [rbp - 0x19], dl
.label_153:
	mov	al, byte ptr [rbp - 0x19]
	test	al, 1
	jne	.label_156
	jmp	.label_157
.label_156:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_159
.label_157:
	jmp	.label_155
.label_155:
	jmp	.label_149
.label_158:
	jmp	.label_150
.label_150:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	movsx	eax, byte ptr [rdx]
	cmp	eax, 0
	mov	byte ptr [rbp - 0x1a], cl
	je	.label_152
	mov	rax, qword ptr [rbp - 0x18]
	movzx	edi, byte ptr [rax]
	call	field_sep
	mov	byte ptr [rbp - 0x1a], al
.label_152:
	mov	al, byte ptr [rbp - 0x1a]
	test	al, 1
	jne	.label_160
	jmp	.label_147
.label_160:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_150
.label_147:
	jmp	.label_154
.label_154:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	movsx	eax, byte ptr [rdx]
	cmp	eax, 0
	mov	byte ptr [rbp - 0x1b], cl
	je	.label_146
	mov	rax, qword ptr [rbp - 0x18]
	movzx	edi, byte ptr [rax]
	call	field_sep
	xor	al, 0xff
	mov	byte ptr [rbp - 0x1b], al
.label_146:
	mov	al, byte ptr [rbp - 0x1b]
	test	al, 1
	jne	.label_148
	jmp	.label_151
.label_148:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_154
.label_151:
	jmp	.label_149
.label_149:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4036d0

	.globl process_field
	.type process_field, @function
process_field:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	fldz	
	fstp	xword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], 0
	mov	byte ptr [rbp - 0x29], 1
	mov	rdi, qword ptr [rbp - 0x10]
	call	include_field
	test	al, 1
	jne	.label_164
	jmp	.label_161
.label_164:
	lea	rsi, [rbp - 0x20]
	lea	rdx, [rbp - 0x28]
	mov	rdi, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	call	process_suffixed_number
	cmp	eax, 0
	setne	r8b
	and	r8b, 1
	mov	byte ptr [rbp - 0x29], r8b
	test	byte ptr [rbp - 0x29], 1
	je	.label_165
	fld	xword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, rsp
	fstp	xword ptr [rax]
	call	prepare_padded_number
	cmp	eax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x29], cl
.label_165:
	test	byte ptr [rbp - 0x29], 1
	je	.label_163
	call	print_padded_number
	jmp	.label_162
.label_163:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x30], eax
.label_162:
	jmp	.label_166
.label_161:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x34], eax
.label_166:
	mov	al, byte ptr [rbp - 0x29]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4037b0

	.globl field_sep
	.type field_sep, @function
field_sep:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	al, dil
	mov	byte ptr [rbp - 1], al
	movzx	edi, byte ptr [rbp - 1]
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x10], rcx
	call	__ctype_b_loc
	mov	dl, 1
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 1
	cmp	edi, 0
	mov	byte ptr [rbp - 0x11], dl
	jne	.label_167
	movzx	eax, byte ptr [rbp - 1]
	cmp	eax, 0xa
	sete	cl
	mov	byte ptr [rbp - 0x11], cl
.label_167:
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403810

	.globl include_field
	.type include_field, @function
include_field:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi,  qword ptr [word ptr [frp]]
	mov	qword ptr [rbp - 0x18], rdi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_168
	cmp	qword ptr [rbp - 0x10], 1
	sete	al
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_172
.label_168:
	jmp	.label_169
.label_169:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], -1
	je	.label_171
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	ja	.label_170
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	cmp	rax, qword ptr [rbp - 0x10]
	jb	.label_170
	mov	byte ptr [rbp - 1], 1
	jmp	.label_172
.label_170:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_169
.label_171:
	mov	byte ptr [rbp - 1], 0
.label_172:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4038a0

	.globl process_suffixed_number
	.type process_suffixed_number, @function
process_suffixed_number:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	cmp	qword ptr [word ptr [suffix]],  0
	je	.label_183
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	mov	rdi,  qword ptr [word ptr [suffix]]
	mov	qword ptr [rbp - 0x70], rax
	call	strlen
	mov	rdi, qword ptr [rbp - 0x70]
	cmp	rdi, rax
	jbe	.label_183
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x78], rcx
	mov	qword ptr [rbp - 0x80], rdx
	call	strlen
	mov	rcx, qword ptr [rbp - 0x80]
	add	rcx, rax
	mov	rdi,  qword ptr [word ptr [suffix]]
	mov	qword ptr [rbp - 0x88], rcx
	call	strlen
	mov	rcx, qword ptr [rbp - 0x78]
	sub	rcx, rax
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, rcx
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi,  qword ptr [word ptr [suffix]]
	mov	rsi, qword ptr [rbp - 0x28]
	call	strcmp
	cmp	eax, 0
	jne	.label_184
	mov	rax, qword ptr [rbp - 0x28]
	mov	byte ptr [rax], 0
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_187
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax,  qword ptr [word ptr [suffix]]
	mov	qword ptr [rbp - 0x90], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:.str.118
	mov	rdi, qword ptr [rbp - 0x90]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x94], eax
.label_187:
	jmp	.label_179
.label_179:
	jmp	.label_180
.label_184:
	jmp	.label_181
.label_181:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_182
	movabs	rsi, OFFSET FLAT:.str.119
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x98], eax
.label_182:
	jmp	.label_192
.label_192:
	jmp	.label_180
.label_180:
	jmp	.label_183
.label_183:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
.label_189:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x30]
	movsx	eax, byte ptr [rdx]
	cmp	eax, 0
	mov	byte ptr [rbp - 0x99], cl
	je	.label_196
	mov	rax, qword ptr [rbp - 0x30]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0xa8], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xa8]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 1
	cmp	edi, 0
	setne	dl
	mov	byte ptr [rbp - 0x99], dl
.label_196:
	mov	al, byte ptr [rbp - 0x99]
	test	al, 1
	jne	.label_186
	jmp	.label_191
.label_186:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_189
.label_191:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rax, rcx
	mov	edx, eax
	mov	dword ptr [rbp - 0x34], edx
	cmp	dword ptr [dword ptr [auto_padding]],  0
	je	.label_195
	cmp	dword ptr [rbp - 0x34], 0
	ja	.label_175
	cmp	qword ptr [rbp - 0x20], 1
	jle	.label_176
.label_175:
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	mov	qword ptr [word ptr [padding_width]],  rax
	mov	rdi,  qword ptr [word ptr [padding_width]]
	call	setup_padding_buffer
	jmp	.label_185
.label_176:
	mov	qword ptr [word ptr [padding_width]],  0
.label_185:
	jmp	.label_188
.label_188:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_190
	movabs	rsi, OFFSET FLAT:.str.120
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rdx,  qword ptr [word ptr [padding_width]]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xac], eax
.label_190:
	jmp	.label_193
.label_193:
	jmp	.label_195
.label_195:
	lea	rsi, [rbp - 0x50]
	fldz	
	fstp	xword ptr [rbp - 0x50]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x18]
	call	parse_human_number
	mov	dword ptr [rbp - 0x54], eax
	cmp	dword ptr [rbp - 0x54], 1
	jne	.label_178
	test	byte ptr [byte ptr [debug]],  1
	je	.label_178
	movabs	rdi, OFFSET FLAT:.str.121
	call	gettext
	mov	rdi, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xb8], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0xb8]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_178:
	cmp	qword ptr [word ptr [from_unit_size]],  1
	jne	.label_173
	cmp	qword ptr [word ptr [to_unit_size]],  1
	je	.label_174
.label_173:
	fld	xword ptr [rbp - 0x50]
	mov	rax,  qword ptr [word ptr [rip + from_unit_size]]
	mov	qword ptr [rbp - 0x68], rax
	test	rax, rax
	setns	cl
	movzx	edx, cl
	mov	eax, edx
	fld	dword ptr [dword ptr [+ (rax * 4) + label_177]]
	fild	qword ptr [rbp - 0x68]
	faddp	st(1)
	fmulp	st(1)
	mov	rax,  qword ptr [word ptr [rip + to_unit_size]]
	mov	qword ptr [rbp - 0x60], rax
	test	rax, rax
	setns	cl
	movzx	edx, cl
	mov	eax, edx
	fld	dword ptr [dword ptr [+ (rax * 4) + label_177]]
	fild	qword ptr [rbp - 0x60]
	faddp	st(1)
	fdivp	st(1)
	fstp	xword ptr [rbp - 0x50]
.label_174:
	mov	al, 1
	fld	xword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x10]
	fstp	xword ptr [rcx]
	cmp	dword ptr [rbp - 0x54], 0
	mov	byte ptr [rbp - 0xb9], al
	je	.label_194
	cmp	dword ptr [rbp - 0x54], 1
	sete	al
	mov	byte ptr [rbp - 0xb9], al
.label_194:
	mov	al, byte ptr [rbp - 0xb9]
	and	al, 1
	movzx	eax, al
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403c30

	.globl prepare_padded_number
	.type prepare_padded_number, @function
prepare_padded_number:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x180
	fld	xword ptr [rbp + 0x10]
	fstp	xword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rdi
	cmp	qword ptr [word ptr [user_precision]],  -1
	jne	.label_204
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xd0], rax
	jmp	.label_209
.label_204:
	mov	rax,  qword ptr [word ptr [user_precision]]
	mov	qword ptr [rbp - 0xd0], rax
.label_209:
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0xb8], rax
	fld	xword ptr [rbp - 0x20]
	mov	rax, rsp
	fstp	xword ptr [rax]
	mov	edi, 0xa
	lea	rsi, [rbp - 0xbc]
	call	expld
	cmp	dword ptr [dword ptr [scale_to]],  0
	fstp	xword ptr [rbp - 0xdc]
	jne	.label_200
	mov	eax, dword ptr [rbp - 0xbc]
	mov	ecx, eax
	add	rcx, qword ptr [rbp - 0xb8]
	cmp	rcx, 0x12
	jbe	.label_200
	cmp	dword ptr [dword ptr [inval_style]],  3
	je	.label_207
	cmp	qword ptr [rbp - 0xb8], 0
	je	.label_213
	xor	eax, eax
	mov	edi,  dword ptr [dword ptr [rip + conv_exit_code]]
	mov	ecx, OFFSET FLAT:.str.133
	mov	edx, ecx
	mov	dword ptr [rbp - 0xe0], edi
	mov	rdi, rdx
	mov	dword ptr [rbp - 0xe4], eax
	call	gettext
	fld	xword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0xb8]
	mov	rdx, rsp
	fstp	xword ptr [rdx]
	xor	esi, esi
	mov	r8b, sil
	mov	edi, dword ptr [rbp - 0xe0]
	mov	rdx, rax
	mov	al, r8b
	call	error
	jmp	.label_203
.label_213:
	xor	eax, eax
	mov	edi,  dword ptr [dword ptr [rip + conv_exit_code]]
	mov	ecx, OFFSET FLAT:.str.134
	mov	edx, ecx
	mov	dword ptr [rbp - 0xe8], edi
	mov	rdi, rdx
	mov	dword ptr [rbp - 0xec], eax
	call	gettext
	fld	xword ptr [rbp - 0x20]
	mov	rdx, rsp
	fstp	xword ptr [rdx]
	xor	ecx, ecx
	mov	sil, cl
	mov	edi, dword ptr [rbp - 0xe8]
	mov	byte ptr [rbp - 0xed], sil
	mov	esi, ecx
	mov	rdx, rax
	mov	al, byte ptr [rbp - 0xed]
	call	error
.label_203:
	jmp	.label_207
.label_207:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_197
.label_200:
	cmp	dword ptr [rbp - 0xbc], 0x1a
	jbe	.label_198
	cmp	dword ptr [dword ptr [inval_style]],  3
	je	.label_201
	xor	eax, eax
	mov	edi,  dword ptr [dword ptr [rip + conv_exit_code]]
	mov	ecx, OFFSET FLAT:.str.135
	mov	edx, ecx
	mov	dword ptr [rbp - 0xf4], edi
	mov	rdi, rdx
	mov	dword ptr [rbp - 0xf8], eax
	call	gettext
	fld	xword ptr [rbp - 0x20]
	mov	rdx, rsp
	fstp	xword ptr [rdx]
	xor	ecx, ecx
	mov	sil, cl
	mov	edi, dword ptr [rbp - 0xf4]
	mov	byte ptr [rbp - 0xf9], sil
	mov	esi, ecx
	mov	rdx, rax
	mov	al, byte ptr [rbp - 0xf9]
	call	error
.label_201:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_197
.label_198:
	lea	rsi, [rbp - 0xb0]
	fld	xword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0xb8]
	mov	ecx, eax
	mov	edx,  dword ptr [dword ptr [scale_to]]
	mov	r8d,  dword ptr [dword ptr [grouping]]
	mov	r9d,  dword ptr [dword ptr [round_style]]
	mov	rax, rsp
	fstp	xword ptr [rax]
	mov	edi, 0x80
	mov	eax, edi
	mov	edi, ecx
	mov	dword ptr [rbp - 0x100], edx
	mov	rdx, rax
	mov	ecx, dword ptr [rbp - 0x100]
	call	double_to_human
	cmp	qword ptr [word ptr [suffix]],  0
	je	.label_208
	mov	eax, 0x80
	mov	ecx, eax
	lea	rdx, [rbp - 0xb0]
	mov	rsi,  qword ptr [word ptr [suffix]]
	mov	rdi, rdx
	mov	qword ptr [rbp - 0x108], rcx
	mov	qword ptr [rbp - 0x110], rdx
	mov	qword ptr [rbp - 0x118], rsi
	call	strlen
	mov	rcx, qword ptr [rbp - 0x108]
	sub	rcx, rax
	sub	rcx, 1
	mov	rdi, qword ptr [rbp - 0x110]
	mov	rsi, qword ptr [rbp - 0x118]
	mov	rdx, rcx
	call	strncat
	mov	qword ptr [rbp - 0x120], rax
.label_208:
	jmp	.label_210
.label_210:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_206
	lea	rdi, [rbp - 0xb0]
	mov	rax,  qword ptr [word ptr [rip + stderr]]
	fld	xword ptr [rbp - 0x20]
	fstp	xword ptr [rbp - 0x12c]
	mov	qword ptr [rbp - 0x138], rax
	call	quote
	movabs	rdi, OFFSET FLAT:.str.136
	mov	rcx, rsp
	fld	xword ptr [rbp - 0x12c]
	fstp	xword ptr [rcx]
	mov	edx, OFFSET FLAT:.str.136
	mov	esi, edx
	xor	edx, edx
	mov	r8b, dl
	mov	rcx, qword ptr [rbp - 0x138]
	mov	qword ptr [rbp - 0x140], rdi
	mov	rdi, rcx
	mov	rdx, rax
	mov	al, r8b
	call	fprintf
	mov	dword ptr [rbp - 0x144], eax
.label_206:
	jmp	.label_199
.label_199:
	cmp	qword ptr [word ptr [padding_width]],  0
	je	.label_205
	lea	rdi, [rbp - 0xb0]
	call	strlen
	cmp	rax,  qword ptr [word ptr [padding_width]]
	jae	.label_205
	lea	rcx, [rbp - 0xc8]
	mov	r9d, 2
	lea	rdi, [rbp - 0xb0]
	mov	rax,  qword ptr [word ptr [padding_width]]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rsi,  qword ptr [word ptr [padding_buffer]]
	mov	rdx,  qword ptr [word ptr [padding_buffer_size]]
	mov	r8d,  dword ptr [dword ptr [padding_alignment]]
	call	mbsalign
	mov	qword ptr [rbp - 0x150], rax
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_202
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax,  qword ptr [word ptr [padding_buffer]]
	mov	qword ptr [rbp - 0x158], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:.str.137
	mov	rdi, qword ptr [rbp - 0x158]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x15c], eax
.label_202:
	jmp	.label_211
.label_211:
	jmp	.label_212
.label_205:
	lea	rdi, [rbp - 0xb0]
	call	strlen
	add	rax, 1
	mov	rdi, rax
	call	setup_padding_buffer
	lea	rsi, [rbp - 0xb0]
	mov	rdi,  qword ptr [word ptr [padding_buffer]]
	call	strcpy
	mov	qword ptr [rbp - 0x168], rax
.label_212:
	mov	dword ptr [rbp - 4], 1
.label_197:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x180
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404050

	.globl print_padded_number
	.type print_padded_number, @function
print_padded_number:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	cmp	qword ptr [word ptr [format_str_prefix]],  0
	je	.label_214
	mov	rdi,  qword ptr [word ptr [format_str_prefix]]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
.label_214:
	mov	rdi,  qword ptr [word ptr [padding_buffer]]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	cmp	qword ptr [word ptr [format_str_suffix]],  0
	mov	dword ptr [rbp - 8], eax
	je	.label_215
	mov	rdi,  qword ptr [word ptr [format_str_suffix]]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0xc], eax
.label_215:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4040d0

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	push	rbp
	mov	rbp, rsp
	mov	al, dil
	mov	byte ptr [rbp - 1], al
	movzx	eax, byte ptr [rbp - 1]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4040e0

	.globl parse_human_number
	.type parse_human_number, @function
parse_human_number:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	lea	rax, [rbp - 0x28]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8d,  dword ptr [dword ptr [scale_from]]
	mov	rsi, rax
	call	simple_strtod_human
	mov	dword ptr [rbp - 0x2c], eax
	cmp	dword ptr [rbp - 0x2c], 0
	je	.label_217
	cmp	dword ptr [rbp - 0x2c], 1
	je	.label_217
	mov	edi, dword ptr [rbp - 0x2c]
	mov	rsi, qword ptr [rbp - 0x10]
	call	simple_strtod_fatal
	mov	edi, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 4], edi
	jmp	.label_219
.label_217:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_218
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_218
	cmp	dword ptr [dword ptr [inval_style]],  3
	je	.label_216
	movabs	rdi, OFFSET FLAT:.str.122
	mov	eax,  dword ptr [dword ptr [conv_exit_code]]
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	xor	edi, edi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rax
	call	quote_n
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x40], rax
	call	quote_n
	xor	esi, esi
	mov	edi, dword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	r8, rax
	mov	al, 0
	call	error
.label_216:
	mov	dword ptr [rbp - 0x2c], 5
.label_218:
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 4], eax
.label_219:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4041e0

	.globl simple_strtod_human
	.type simple_strtod_human, @function
simple_strtod_human:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xd0
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	dword ptr [rbp - 0x2c], r8d
	mov	dword ptr [rbp - 0x30], 0
	mov	edi, dword ptr [rbp - 0x2c]
	call	default_scale_base
	mov	dword ptr [rbp - 0x34], eax
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_224
	xor	edi, edi
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x60], rax
	call	quote_n
	mov	edi, 1
	mov	rsi,  qword ptr [word ptr [decimal_point]]
	mov	qword ptr [rbp - 0x68], rax
	call	quote_n
	movabs	rsi, OFFSET FLAT:.str.123
	mov	r8d, 0x12
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rcx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x6c], eax
.label_224:
	jmp	.label_239
.label_239:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	simple_strtod_float
	mov	dword ptr [rbp - 0x38], eax
	cmp	dword ptr [rbp - 0x38], 0
	je	.label_223
	cmp	dword ptr [rbp - 0x38], 1
	je	.label_223
	mov	eax, dword ptr [rbp - 0x38]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_220
.label_223:
	jmp	.label_228
.label_228:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_230
	movabs	rax, OFFSET FLAT:.str.124
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rcx, qword ptr [rbp - 0x20]
	fld	xword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx]
	mov	edx, ecx
	mov	rcx, rsp
	fstp	xword ptr [rcx]
	mov	esi, OFFSET FLAT:.str.124
	xor	r8d, r8d
	mov	r9b, r8b
	mov	qword ptr [rbp - 0x78], rax
	mov	al, r9b
	call	fprintf
	mov	dword ptr [rbp - 0x7c], eax
.label_230:
	jmp	.label_241
.label_241:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_222
	jmp	.label_226
.label_226:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x88], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x88]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 1
	cmp	edi, 0
	je	.label_232
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax]
	add	rcx, 1
	mov	qword ptr [rax], rcx
	jmp	.label_226
.label_232:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	movsx	edi, byte ptr [rax]
	call	valid_suffix
	cmp	eax, 0
	jne	.label_240
	mov	dword ptr [rbp - 4], 5
	jmp	.label_220
.label_240:
	cmp	dword ptr [rbp - 0x2c], 0
	jne	.label_234
	mov	dword ptr [rbp - 4], 4
	jmp	.label_220
.label_234:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	movsx	edi, byte ptr [rax]
	call	suffix_power
	mov	dword ptr [rbp - 0x30], eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rcx]
	add	rdx, 1
	mov	qword ptr [rcx], rdx
	cmp	dword ptr [rbp - 0x2c], 1
	jne	.label_229
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x69
	jne	.label_229
	mov	dword ptr [rbp - 0x34], 0x400
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax]
	add	rcx, 1
	mov	qword ptr [rax], rcx
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_237
	movabs	rsi, OFFSET FLAT:.str.125
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	edx, dword ptr [rbp - 0x34]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x8c], eax
.label_237:
	jmp	.label_227
.label_227:
	jmp	.label_229
.label_229:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax], 0
.label_222:
	cmp	dword ptr [rbp - 0x2c], 4
	jne	.label_231
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x69
	jne	.label_233
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax]
	add	rcx, 1
	mov	qword ptr [rax], rcx
	jmp	.label_236
.label_233:
	mov	dword ptr [rbp - 4], 6
	jmp	.label_220
.label_236:
	jmp	.label_231
.label_231:
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x54], eax
	fild	dword ptr [rbp - 0x54]
	mov	edi, dword ptr [rbp - 0x30]
	mov	rcx, rsp
	fstp	xword ptr [rcx]
	call	powerld
	fstp	xword ptr [rbp - 0x50]
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_225
	movabs	rax, OFFSET FLAT:.str.126
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	edx, dword ptr [rbp - 0x34]
	mov	ecx, dword ptr [rbp - 0x30]
	fld	xword ptr [rbp - 0x50]
	mov	rsi, rsp
	fstp	xword ptr [rsi]
	mov	r8d, OFFSET FLAT:.str.126
	mov	esi, r8d
	xor	r8d, r8d
	mov	r9b, r8b
	mov	qword ptr [rbp - 0x98], rax
	mov	al, r9b
	call	fprintf
	mov	dword ptr [rbp - 0x9c], eax
.label_225:
	jmp	.label_238
.label_238:
	mov	rax, qword ptr [rbp - 0x20]
	fld	xword ptr [rax]
	fld	xword ptr [rbp - 0x50]
	fmulp	st(1)
	fstp	xword ptr [rax]
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_221
	movabs	rax, OFFSET FLAT:.str.127
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rcx, qword ptr [rbp - 0x20]
	fld	xword ptr [rcx]
	fld	st(0)
	mov	rcx, rsp
	fxch	st(1)
	fstp	xword ptr [rcx + 0x10]
	fstp	xword ptr [rcx]
	mov	edx, OFFSET FLAT:.str.127
	mov	esi, edx
	xor	edx, edx
	mov	r8b, dl
	mov	qword ptr [rbp - 0xa8], rax
	mov	al, r8b
	call	fprintf
	mov	dword ptr [rbp - 0xac], eax
.label_221:
	jmp	.label_235
.label_235:
	mov	eax, dword ptr [rbp - 0x38]
	mov	dword ptr [rbp - 4], eax
.label_220:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404570

	.globl simple_strtod_fatal
	.type simple_strtod_fatal, @function
simple_strtod_fatal:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], 0
	mov	edi, dword ptr [rbp - 4]
	mov	esi, edi
	mov	rax, rsi
	sub	rax, 6
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rax
	ja	.label_243
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_242]]
	jmp	rcx
.label_1040:
	call	abort
.label_1041:
	movabs	rax, OFFSET FLAT:.str.128
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_243
.label_1042:
	movabs	rax, OFFSET FLAT:.str.129
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_243
.label_1043:
	movabs	rax, OFFSET FLAT:.str.130
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_243
.label_1044:
	movabs	rax, OFFSET FLAT:.str.131
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_243
.label_1045:
	movabs	rax, OFFSET FLAT:.str.132
	mov	qword ptr [rbp - 0x18], rax
.label_243:
	cmp	dword ptr [dword ptr [inval_style]],  3
	je	.label_244
	mov	edi,  dword ptr [dword ptr [conv_exit_code]]
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x2c], edi
	mov	rdi, rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rax
	call	quote
	xor	esi, esi
	mov	edi, dword ptr [rbp - 0x2c]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_244:
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404660

	.globl default_scale_base
	.type default_scale_base, @function
default_scale_base:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	sub	edi, 3
	mov	dword ptr [rbp - 0xc], eax
	mov	dword ptr [rbp - 0x10], edi
	jb	.label_245
	jmp	.label_248
.label_248:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -3
	sub	eax, 1
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_246
	jmp	.label_249
.label_249:
	mov	dword ptr [rbp - 4], 0x400
	jmp	.label_247
.label_245:
	jmp	.label_246
.label_246:
	mov	dword ptr [rbp - 4], 0x3e8
.label_247:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4046c0

	.globl simple_strtod_float
	.type simple_strtod_float, @function
simple_strtod_float:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	dword ptr [rbp - 0x30], 0
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_250
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax], 0
.label_250:
	lea	rcx, [rbp - 0x29]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	call	simple_strtod_int
	mov	dword ptr [rbp - 0x30], eax
	cmp	dword ptr [rbp - 0x30], 0
	je	.label_254
	cmp	dword ptr [rbp - 0x30], 1
	je	.label_254
	mov	eax, dword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_251
.label_254:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax]
	mov	rsi,  qword ptr [word ptr [decimal_point]]
	movsxd	rdx,  dword ptr [dword ptr [decimal_point_length]]
	call	strncmp
	cmp	eax, 0
	jne	.label_253
	lea	rsi, [rbp - 0x38]
	lea	rdx, [rbp - 0x50]
	lea	rcx, [rbp - 0x51]
	fldz	
	fstp	xword ptr [rbp - 0x50]
	mov	eax,  dword ptr [dword ptr [decimal_point_length]]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rdi]
	movsxd	r9, eax
	add	r8, r9
	mov	qword ptr [rdi], r8
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rdi]
	call	simple_strtod_int
	mov	dword ptr [rbp - 0x58], eax
	cmp	dword ptr [rbp - 0x58], 0
	je	.label_252
	cmp	dword ptr [rbp - 0x58], 1
	je	.label_252
	mov	eax, dword ptr [rbp - 0x58]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_251
.label_252:
	cmp	dword ptr [rbp - 0x58], 1
	jne	.label_258
	mov	eax, dword ptr [rbp - 0x58]
	mov	dword ptr [rbp - 0x30], eax
.label_258:
	test	byte ptr [rbp - 0x51], 1
	je	.label_260
	mov	dword ptr [rbp - 4], 3
	jmp	.label_251
.label_260:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x60], rax
	fld	xword ptr [rbp - 0x50]
	mov	edi, dword ptr [rbp - 0x60]
	mov	rax, rsp
	fld	dword ptr [dword ptr [rip + label_256]]
	fstp	xword ptr [rax]
	fstp	xword ptr [rbp - 0x6c]
	call	powerld
	fld	xword ptr [rbp - 0x6c]
	fdivrp	st(1)
	fstp	xword ptr [rbp - 0x50]
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_259
	test	byte ptr [rbp - 0x29], 1
	je	.label_255
	fld	xword ptr [rbp - 0x50]
	mov	rax, qword ptr [rbp - 0x20]
	fld	xword ptr [rax]
	fsubrp	st(1)
	fstp	xword ptr [rax]
	jmp	.label_257
.label_255:
	fld	xword ptr [rbp - 0x50]
	mov	rax, qword ptr [rbp - 0x20]
	fld	xword ptr [rax]
	faddp	st(1)
	fstp	xword ptr [rax]
.label_257:
	jmp	.label_259
.label_259:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_261
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
.label_261:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
.label_253:
	mov	eax, dword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 4], eax
.label_251:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404870

	.globl valid_suffix
	.type valid_suffix, @function
valid_suffix:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	al, dil
	mov	byte ptr [rbp - 1], al
	mov	rdi,  qword ptr [word ptr [valid_suffix.valid_suffixes]]
	movsx	esi, byte ptr [rbp - 1]
	call	strchr
	cmp	rax, 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4048b0

	.globl suffix_power
	.type suffix_power, @function
suffix_power:
	push	rbp
	mov	rbp, rsp
	mov	al, dil
	mov	byte ptr [rbp - 5], al
	movsx	edi, byte ptr [rbp - 5]
	mov	ecx, edi
	sub	ecx, 0x45
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], ecx
	je	.label_274
	jmp	.label_266
.label_266:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x14], eax
	je	.label_268
	jmp	.label_271
.label_271:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x18], eax
	je	.label_273
	jmp	.label_276
.label_276:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x1c], eax
	je	.label_278
	jmp	.label_264
.label_264:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x20], eax
	je	.label_267
	jmp	.label_270
.label_270:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x24], eax
	je	.label_272
	jmp	.label_275
.label_275:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x59
	mov	dword ptr [rbp - 0x28], eax
	je	.label_277
	jmp	.label_263
.label_263:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x5a
	mov	dword ptr [rbp - 0x2c], eax
	je	.label_265
	jmp	.label_269
.label_273:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_262
.label_278:
	mov	dword ptr [rbp - 4], 2
	jmp	.label_262
.label_268:
	mov	dword ptr [rbp - 4], 3
	jmp	.label_262
.label_272:
	mov	dword ptr [rbp - 4], 4
	jmp	.label_262
.label_267:
	mov	dword ptr [rbp - 4], 5
	jmp	.label_262
.label_274:
	mov	dword ptr [rbp - 4], 6
	jmp	.label_262
.label_265:
	mov	dword ptr [rbp - 4], 7
	jmp	.label_262
.label_277:
	mov	dword ptr [rbp - 4], 8
	jmp	.label_262
.label_269:
	mov	dword ptr [rbp - 4], 0
.label_262:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4049d0

	.globl powerld
	.type powerld, @function
powerld:
	push	rbp
	mov	rbp, rsp
	fld	xword ptr [rbp + 0x10]
	fstp	xword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 0x24], edi
	fld	xword ptr [rbp - 0x20]
	fstp	xword ptr [rbp - 0x40]
	cmp	dword ptr [rbp - 0x24], 0
	jne	.label_279
	fld1	
	fstp	xword ptr [rbp - 0x10]
	jmp	.label_282
.label_279:
	jmp	.label_280
.label_280:
	mov	eax, dword ptr [rbp - 0x24]
	add	eax, -1
	mov	dword ptr [rbp - 0x24], eax
	cmp	eax, 0
	je	.label_281
	fld	xword ptr [rbp - 0x20]
	fld	xword ptr [rbp - 0x40]
	fmulp	st(1)
	fstp	xword ptr [rbp - 0x40]
	jmp	.label_280
.label_281:
	fld	xword ptr [rbp - 0x40]
	fstp	xword ptr [rbp - 0x10]
.label_282:
	fld	xword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404a30

	.globl simple_strtod_int
	.type simple_strtod_int, @function
simple_strtod_int:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	dword ptr [rbp - 0x2c], 0
	fldz	
	fstp	xword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0x44], 0
	mov	byte ptr [rbp - 0x45], 0
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	eax, byte ptr [rcx]
	cmp	eax, 0x2d
	jne	.label_294
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	byte ptr [rax], 1
	jmp	.label_293
.label_294:
	mov	rax, qword ptr [rbp - 0x28]
	mov	byte ptr [rax], 0
.label_293:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
.label_295:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x51], cl
	je	.label_290
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	movsx	edi, byte ptr [rax]
	call	c_isdigit
	mov	byte ptr [rbp - 0x51], al
.label_290:
	mov	al, byte ptr [rbp - 0x51]
	test	al, 1
	jne	.label_283
	jmp	.label_285
.label_283:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x30
	mov	dword ptr [rbp - 0x4c], ecx
	mov	byte ptr [rbp - 0x45], 1
	fld	xword ptr [rbp - 0x40]
	fldz	
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	jne	.label_286
	jnp	.label_297
	jmp	.label_286
.label_297:
	cmp	dword ptr [rbp - 0x4c], 0
	je	.label_284
.label_286:
	mov	eax, dword ptr [rbp - 0x44]
	add	eax, 1
	mov	dword ptr [rbp - 0x44], eax
.label_284:
	cmp	dword ptr [rbp - 0x44], 0x12
	jbe	.label_288
	mov	dword ptr [rbp - 0x2c], 1
.label_288:
	cmp	dword ptr [rbp - 0x44], 0x1b
	jbe	.label_291
	mov	dword ptr [rbp - 4], 2
	jmp	.label_289
.label_291:
	fld	xword ptr [rbp - 0x40]
	fld	dword ptr [dword ptr [rip + label_256]]
	fmulp	st(1)
	fld	st(0)
	fstp	xword ptr [rbp - 0x40]
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x50], eax
	fild	dword ptr [rbp - 0x50]
	faddp	st(1)
	fstp	xword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rcx]
	add	rdx, 1
	mov	qword ptr [rcx], rdx
	jmp	.label_295
.label_285:
	test	byte ptr [rbp - 0x45], 1
	jne	.label_287
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax]
	mov	rsi,  qword ptr [word ptr [decimal_point]]
	movsxd	rdx,  dword ptr [dword ptr [decimal_point_length]]
	call	strncmp
	cmp	eax, 0
	je	.label_287
	mov	dword ptr [rbp - 4], 3
	jmp	.label_289
.label_287:
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax], 1
	je	.label_292
	fld	xword ptr [rbp - 0x40]
	fchs	
	fstp	xword ptr [rbp - 0x40]
.label_292:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_296
	fld	xword ptr [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x20]
	fstp	xword ptr [rax]
.label_296:
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 4], eax
.label_289:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404be0

	.globl expld
	.type expld, @function
expld:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	fld	xword ptr [rbp + 0x10]
	fstp	xword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x14], edi
	mov	qword ptr [rbp - 0x20], rsi
	mov	dword ptr [rbp - 0x24], 0
	fld	xword ptr [rbp - 0x10]
	fld	xword ptr [word ptr [rip + label_298]]
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	jb	.label_299
	jmp	.label_304
.label_304:
	fld	xword ptr [rbp - 0x10]
	fld	xword ptr [word ptr [rip + label_305]]
	fucomip	st(1)
	fstp	st(0)
	jb	.label_299
	jmp	.label_302
.label_302:
	jmp	.label_300
.label_300:
	fld	xword ptr [rbp - 0x10]
	mov	rax, rsp
	fstp	xword ptr [rax]
	call	absld
	fld	st(0)
	mov	ecx, dword ptr [rbp - 0x14]
	mov	eax, ecx
	mov	qword ptr [rbp - 0x30], rax
	fild	qword ptr [rbp - 0x30]
	fxch	st(2)
	fucomip	st(2)
	fstp	st(1)
	fstp	xword ptr [rbp - 0x44]
	jb	.label_303
	jmp	.label_306
.label_306:
	mov	eax, dword ptr [rbp - 0x24]
	inc	eax
	mov	dword ptr [rbp - 0x24], eax
	mov	eax, dword ptr [rbp - 0x14]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x38], rcx
	fild	qword ptr [rbp - 0x38]
	fld	xword ptr [rbp - 0x10]
	fdivrp	st(1)
	fstp	xword ptr [rbp - 0x10]
	jmp	.label_300
.label_303:
	jmp	.label_299
.label_299:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_301
	mov	eax, dword ptr [rbp - 0x24]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	dword ptr [rcx], eax
.label_301:
	fld	xword ptr [rbp - 0x10]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404cb0

	.globl double_to_human
	.type double_to_human, @function
double_to_human:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x190
	fld	xword ptr [rbp + 0x10]
	lea	rax, [rbp - 0x80]
	fstp	xword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x14], edi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	dword ptr [rbp - 0x2c], ecx
	mov	dword ptr [rbp - 0x30], r8d
	mov	dword ptr [rbp - 0x34], r9d
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdx, rax
	add	rdx, 1
	mov	qword ptr [rbp - 0x88], rdx
	mov	byte ptr [rax], 0x25
	cmp	dword ptr [rbp - 0x30], 0
	je	.label_325
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x88], rcx
	mov	byte ptr [rax], 0x27
.label_325:
	cmp	qword ptr [word ptr [zero_padding_width]],  0
	je	.label_319
	mov	eax, 0x3e
	mov	esi, eax
	movabs	rdx, OFFSET FLAT:.str.138
	mov	rdi, qword ptr [rbp - 0x88]
	mov	rcx,  qword ptr [word ptr [zero_padding_width]]
	mov	al, 0
	call	snprintf
	mov	rcx, qword ptr [rbp - 0x88]
	movsxd	rdx, eax
	add	rcx, rdx
	mov	qword ptr [rbp - 0x88], rcx
.label_319:
	jmp	.label_336
.label_336:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_338
	movabs	rsi, OFFSET FLAT:.str.139
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xa4], eax
.label_338:
	jmp	.label_315
.label_315:
	cmp	dword ptr [rbp - 0x2c], 0
	jne	.label_320
	mov	edi, dword ptr [rbp - 0x14]
	mov	rax, rsp
	fld	dword ptr [dword ptr [rip + label_256]]
	fld	st(0)
	fstp	xword ptr [rax]
	fstp	xword ptr [rbp - 0xb0]
	call	powerld
	fld	xword ptr [rbp - 0x10]
	fmulp	st(1)
	fld	st(0)
	fstp	xword ptr [rbp - 0x10]
	mov	edi, dword ptr [rbp - 0x34]
	mov	rax, rsp
	fstp	xword ptr [rax]
	call	simple_round
	fstp	xword ptr [rbp - 0x10]
	mov	edi, dword ptr [rbp - 0x14]
	mov	rax, rsp
	fld	xword ptr [rbp - 0xb0]
	fstp	xword ptr [rax]
	call	powerld
	fld	xword ptr [rbp - 0x10]
	fdivrp	st(1)
	fstp	xword ptr [rbp - 0x10]
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_340
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	eax, dword ptr [rbp - 0x30]
	test	eax, eax
	mov	eax, OFFSET FLAT:.str.140
	mov	ecx, eax
	mov	eax, OFFSET FLAT:.str.141
	mov	edx, eax
	cmovne	rdx, rcx
	mov	eax, dword ptr [rbp - 0x14]
	fld	xword ptr [rbp - 0x10]
	mov	rcx, rsp
	fstp	xword ptr [rcx]
	xor	esi, esi
	mov	r8b, sil
	mov	rsi, rdx
	mov	edx, eax
	mov	al, r8b
	call	fprintf
	mov	dword ptr [rbp - 0xb4], eax
.label_340:
	jmp	.label_322
.label_322:
	mov	rdi, qword ptr [rbp - 0x88]
	mov	eax, OFFSET FLAT:.str.142
	mov	esi, eax
	call	stpcpy
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rdx, [rbp - 0x80]
	mov	ecx, dword ptr [rbp - 0x14]
	fld	xword ptr [rbp - 0x10]
	mov	r8, rsp
	fstp	xword ptr [r8]
	xor	r9d, r9d
	mov	r10b, r9b
	mov	qword ptr [rbp - 0xc0], rax
	mov	al, r10b
	call	snprintf
	mov	dword ptr [rbp - 0x38], eax
	cmp	dword ptr [rbp - 0x38], 0
	jl	.label_312
	mov	eax, dword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	edx, ecx
	cmp	eax, edx
	jl	.label_332
.label_312:
	mov	eax, 1
	xor	ecx, ecx
	mov	edx, OFFSET FLAT:.str.143
	mov	edi, edx
	mov	dword ptr [rbp - 0xc4], eax
	mov	dword ptr [rbp - 0xc8], ecx
	call	gettext
	fld	xword ptr [rbp - 0x10]
	mov	rdi, rsp
	fstp	xword ptr [rdi]
	xor	ecx, ecx
	mov	sil, cl
	mov	edi, 1
	mov	byte ptr [rbp - 0xc9], sil
	mov	esi, ecx
	mov	rdx, rax
	mov	al, byte ptr [rbp - 0xc9]
	call	error
.label_332:
	jmp	.label_308
.label_320:
	mov	edi, dword ptr [rbp - 0x2c]
	call	default_scale_base
	cvtsi2sd	xmm0, eax
	movsd	qword ptr [rbp - 0x90], xmm0
	mov	dword ptr [rbp - 0x94], 0
	fld	xword ptr [rbp - 0x10]
	cvttsd2si	rcx, qword ptr [rbp - 0x90]
	mov	eax, ecx
	mov	rcx, rsp
	fstp	xword ptr [rcx]
	lea	rsi, [rbp - 0x94]
	mov	edi, eax
	call	expld
	fstp	xword ptr [rbp - 0x10]
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_326
	movabs	rax, OFFSET FLAT:.str.144
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	fld	xword ptr [rbp - 0x10]
	movsd	xmm0, qword ptr [rbp - 0x90]
	mov	edx, dword ptr [rbp - 0x94]
	mov	rcx, rsp
	fstp	xword ptr [rcx]
	mov	esi, OFFSET FLAT:.str.144
	mov	r8b, 1
	mov	qword ptr [rbp - 0xd8], rax
	mov	al, r8b
	call	fprintf
	mov	dword ptr [rbp - 0xdc], eax
.label_326:
	jmp	.label_311
.label_311:
	mov	dword ptr [rbp - 0x98], 0
	cmp	qword ptr [word ptr [user_precision]],  -1
	je	.label_314
	imul	eax, dword ptr [rbp - 0x94], 3
	mov	eax, eax
	mov	ecx, eax
	cmp	rcx,  qword ptr [word ptr [user_precision]]
	jge	.label_324
	imul	eax, dword ptr [rbp - 0x94], 3
	mov	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0xe8], rcx
	jmp	.label_330
.label_324:
	mov	rax,  qword ptr [word ptr [user_precision]]
	mov	qword ptr [rbp - 0xe8], rax
.label_330:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	ecx, eax
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_323
.label_314:
	fld	xword ptr [rbp - 0x10]
	mov	rax, rsp
	fstp	xword ptr [rax]
	call	absld
	fld	dword ptr [dword ptr [rip + label_256]]
	fucomip	st(1)
	fstp	st(0)
	jbe	.label_309
	jmp	.label_317
.label_317:
	mov	dword ptr [rbp - 0x98], 1
.label_309:
	jmp	.label_323
.label_323:
	mov	edi, dword ptr [rbp - 0x98]
	mov	rax, rsp
	fld	dword ptr [dword ptr [rip + label_256]]
	fld	st(0)
	fstp	xword ptr [rax]
	fstp	xword ptr [rbp - 0xf4]
	call	powerld
	fld	xword ptr [rbp - 0x10]
	fmulp	st(1)
	fld	st(0)
	fstp	xword ptr [rbp - 0x10]
	mov	edi, dword ptr [rbp - 0x34]
	mov	rax, rsp
	fstp	xword ptr [rax]
	call	simple_round
	fstp	xword ptr [rbp - 0x10]
	mov	edi, dword ptr [rbp - 0x98]
	mov	rax, rsp
	fld	xword ptr [rbp - 0xf4]
	fstp	xword ptr [rax]
	call	powerld
	fld	xword ptr [rbp - 0x10]
	fdivrp	st(1)
	fld	st(0)
	fstp	xword ptr [rbp - 0x10]
	mov	rax, rsp
	fstp	xword ptr [rax]
	call	absld
	fld	st(0)
	fld	qword ptr [rbp - 0x90]
	fxch	st(2)
	fucomip	st(2)
	fstp	st(1)
	fstp	xword ptr [rbp - 0x100]
	jb	.label_313
	jmp	.label_329
.label_329:
	fld	qword ptr [rbp - 0x90]
	fld	xword ptr [rbp - 0x10]
	fdivrp	st(1)
	fstp	xword ptr [rbp - 0x10]
	mov	eax, dword ptr [rbp - 0x94]
	add	eax, 1
	mov	dword ptr [rbp - 0x94], eax
.label_313:
	fld	xword ptr [rbp - 0x10]
	xor	eax, eax
	mov	cl, al
	fldz	
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	mov	byte ptr [rbp - 0x101], cl
	jne	.label_327
	jp	.label_327
	jmp	.label_307
.label_327:
	fld	xword ptr [rbp - 0x10]
	mov	rax, rsp
	fstp	xword ptr [rax]
	call	absld
	xor	ecx, ecx
	mov	dl, cl
	fld	dword ptr [dword ptr [rip + label_256]]
	fucomip	st(1)
	fstp	st(0)
	mov	byte ptr [rbp - 0x101], dl
	jbe	.label_307
	jmp	.label_316
.label_316:
	cmp	dword ptr [rbp - 0x94], 0
	seta	al
	mov	byte ptr [rbp - 0x101], al
.label_307:
	mov	al, byte ptr [rbp - 0x101]
	and	al, 1
	movzx	ecx, al
	mov	dword ptr [rbp - 0x9c], ecx
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_310
	movabs	rax, OFFSET FLAT:.str.145
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	fld	xword ptr [rbp - 0x10]
	movsd	xmm0, qword ptr [rbp - 0x90]
	mov	edx, dword ptr [rbp - 0x94]
	mov	rcx, rsp
	fstp	xword ptr [rcx]
	mov	esi, OFFSET FLAT:.str.145
	mov	r8b, 1
	mov	qword ptr [rbp - 0x110], rax
	mov	al, r8b
	call	fprintf
	mov	dword ptr [rbp - 0x114], eax
.label_310:
	jmp	.label_334
.label_334:
	mov	rdi, qword ptr [rbp - 0x88]
	mov	eax, OFFSET FLAT:.str.146
	mov	esi, eax
	call	stpcpy
	cmp	qword ptr [word ptr [user_precision]],  -1
	mov	qword ptr [rbp - 0x120], rax
	jne	.label_333
	movsxd	rax, dword ptr [rbp - 0x9c]
	mov	qword ptr [rbp - 0x128], rax
	jmp	.label_328
.label_333:
	mov	rax,  qword ptr [word ptr [user_precision]]
	mov	qword ptr [rbp - 0x128], rax
.label_328:
	mov	rax, qword ptr [rbp - 0x128]
	mov	ecx, eax
	mov	dword ptr [rbp - 0xa0], ecx
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x28]
	dec	rax
	lea	rdx, [rbp - 0x80]
	fld	xword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x94]
	mov	qword ptr [rbp - 0x130], rdi
	mov	edi, esi
	mov	dword ptr [rbp - 0x134], ecx
	fstp	xword ptr [rbp - 0x140]
	mov	qword ptr [rbp - 0x148], rax
	mov	qword ptr [rbp - 0x150], rdx
	call	suffix_power_char
	mov	rdx, rsp
	fld	xword ptr [rbp - 0x140]
	fstp	xword ptr [rdx]
	xor	ecx, ecx
	mov	r8b, cl
	mov	rdi, qword ptr [rbp - 0x130]
	mov	rsi, qword ptr [rbp - 0x148]
	mov	rdx, qword ptr [rbp - 0x150]
	mov	ecx, dword ptr [rbp - 0x134]
	mov	byte ptr [rbp - 0x151], r8b
	mov	r8, rax
	mov	al, byte ptr [rbp - 0x151]
	call	snprintf
	mov	dword ptr [rbp - 0x38], eax
	cmp	dword ptr [rbp - 0x38], 0
	jl	.label_339
	mov	eax, dword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	edx, ecx
	sub	edx, 1
	cmp	eax, edx
	jl	.label_335
.label_339:
	mov	eax, 1
	xor	ecx, ecx
	mov	edx, OFFSET FLAT:.str.143
	mov	edi, edx
	mov	dword ptr [rbp - 0x158], eax
	mov	dword ptr [rbp - 0x15c], ecx
	call	gettext
	fld	xword ptr [rbp - 0x10]
	mov	rdi, rsp
	fstp	xword ptr [rdi]
	xor	ecx, ecx
	mov	sil, cl
	mov	edi, 1
	mov	byte ptr [rbp - 0x15d], sil
	mov	esi, ecx
	mov	rdx, rax
	mov	al, byte ptr [rbp - 0x15d]
	call	error
.label_335:
	cmp	dword ptr [rbp - 0x2c], 4
	jne	.label_331
	cmp	dword ptr [rbp - 0x94], 0
	jbe	.label_331
	movabs	rsi, OFFSET FLAT:.str.147
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x28]
	movsxd	rcx, dword ptr [rbp - 0x38]
	sub	rax, rcx
	sub	rax, 1
	mov	rdx, rax
	call	strncat
	mov	qword ptr [rbp - 0x168], rax
.label_331:
	jmp	.label_318
.label_318:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_321
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x170], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:.str.148
	mov	rdi, qword ptr [rbp - 0x170]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x174], eax
.label_321:
	jmp	.label_337
.label_337:
	jmp	.label_308
.label_308:
	add	rsp, 0x190
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405380

	.globl absld
	.type absld, @function
absld:
	push	rbp
	mov	rbp, rsp
	fld	xword ptr [rbp + 0x10]
	fld	st(0)
	fstp	xword ptr [rbp - 0x10]
	fldz	
	fucomip	st(1)
	fstp	st(0)
	jbe	.label_341
	jmp	.label_342
.label_342:
	fld	xword ptr [rbp - 0x10]
	fchs	
	fstp	xword ptr [rbp - 0x1c]
	jmp	.label_343
.label_341:
	fld	xword ptr [rbp - 0x10]
	fstp	xword ptr [rbp - 0x1c]
.label_343:
	fld	xword ptr [rbp - 0x1c]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4053c0

	.globl simple_round
	.type simple_round, @function
simple_round:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	fld	xword ptr [rbp + 0x10]
	fstp	xword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 0x24], edi
	fld	xword ptr [rbp - 0x20]
	fld	xword ptr [word ptr [rip + label_344]]
	fdiv	st(1), st(0)
	fnstcw	word ptr [rbp - 0x5a]
	mov	ax, word ptr [rbp - 0x5a]
	mov	word ptr [rbp - 0x5a], 0xc7f
	fldcw	word ptr [rbp - 0x5a]
	mov	word ptr [rbp - 0x5a], ax
	fxch	st(1)
	fistp	qword ptr [rbp - 0x48]
	fldcw	word ptr [rbp - 0x5a]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x38], rcx
	mov	qword ptr [rbp - 0x40], rcx
	fild	qword ptr [rbp - 0x40]
	fmulp	st(1)
	fld	xword ptr [rbp - 0x20]
	fsubrp	st(1)
	fstp	xword ptr [rbp - 0x20]
	mov	edi, dword ptr [rbp - 0x24]
	mov	ecx, edi
	mov	rdx, rcx
	sub	rdx, 4
	mov	qword ptr [rbp - 0x68], rcx
	mov	qword ptr [rbp - 0x70], rdx
	ja	.label_345
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_348]]
	jmp	rcx
.label_1018:
	fld	xword ptr [rbp - 0x20]
	mov	rax, rsp
	fstp	xword ptr [rax]
	call	simple_round_ceiling
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_346
.label_1019:
	fld	xword ptr [rbp - 0x20]
	mov	rax, rsp
	fstp	xword ptr [rax]
	call	simple_round_floor
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_346
.label_1020:
	fld	xword ptr [rbp - 0x20]
	mov	rax, rsp
	fstp	xword ptr [rax]
	call	simple_round_from_zero
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_346
.label_1021:
	fld	xword ptr [rbp - 0x20]
	mov	rax, rsp
	fstp	xword ptr [rax]
	call	simple_round_to_zero
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_346
.label_1022:
	fld	xword ptr [rbp - 0x20]
	mov	rax, rsp
	fstp	xword ptr [rax]
	call	simple_round_nearest
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_346
.label_345:
	fldz	
	fstp	xword ptr [rbp - 0x10]
	jmp	.label_347
.label_346:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x58], rax
	fild	qword ptr [rbp - 0x58]
	fld	xword ptr [word ptr [rip + label_344]]
	fmulp	st(1)
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x50], rax
	fild	qword ptr [rbp - 0x50]
	faddp	st(1)
	fstp	xword ptr [rbp - 0x10]
.label_347:
	fld	xword ptr [rbp - 0x10]
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4054f0

	.globl suffix_power_char
	.type suffix_power_char, @function
suffix_power_char:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 0xc], edi
	mov	edi, dword ptr [rbp - 0xc]
	mov	eax, edi
	mov	rcx, rax
	sub	rcx, 8
	mov	qword ptr [rbp - 0x18], rax
	mov	qword ptr [rbp - 0x20], rcx
	ja	.label_350
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_351]]
	jmp	rcx
.label_1046:
	movabs	rax, OFFSET FLAT:.str_0
	mov	qword ptr [rbp - 8], rax
	jmp	.label_349
.label_1047:
	movabs	rax, OFFSET FLAT:.str.149
	mov	qword ptr [rbp - 8], rax
	jmp	.label_349
.label_1048:
	movabs	rax, OFFSET FLAT:.str.150
	mov	qword ptr [rbp - 8], rax
	jmp	.label_349
.label_1049:
	movabs	rax, OFFSET FLAT:.str.151
	mov	qword ptr [rbp - 8], rax
	jmp	.label_349
.label_1050:
	movabs	rax, OFFSET FLAT:.str.152
	mov	qword ptr [rbp - 8], rax
	jmp	.label_349
.label_1051:
	movabs	rax, OFFSET FLAT:.str.153
	mov	qword ptr [rbp - 8], rax
	jmp	.label_349
.label_1052:
	movabs	rax, OFFSET FLAT:.str.154
	mov	qword ptr [rbp - 8], rax
	jmp	.label_349
.label_1053:
	movabs	rax, OFFSET FLAT:.str.155
	mov	qword ptr [rbp - 8], rax
	jmp	.label_349
.label_1054:
	movabs	rax, OFFSET FLAT:.str.156
	mov	qword ptr [rbp - 8], rax
	jmp	.label_349
.label_350:
	movabs	rax, OFFSET FLAT:.str.157
	mov	qword ptr [rbp - 8], rax
.label_349:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4055e0

	.globl simple_round_ceiling
	.type simple_round_ceiling, @function
simple_round_ceiling:
	push	rbp
	mov	rbp, rsp
	fld	xword ptr [rbp + 0x10]
	fld	st(0)
	fstp	xword ptr [rbp - 0x10]
	fnstcw	word ptr [rbp - 0x2a]
	mov	ax, word ptr [rbp - 0x2a]
	mov	word ptr [rbp - 0x2a], 0xc7f
	fldcw	word ptr [rbp - 0x2a]
	mov	word ptr [rbp - 0x2a], ax
	fistp	qword ptr [rbp - 0x28]
	fldcw	word ptr [rbp - 0x2a]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rcx
	mov	qword ptr [rbp - 0x20], rcx
	fild	qword ptr [rbp - 0x20]
	fld	xword ptr [rbp - 0x10]
	fucomip	st(1)
	fstp	st(0)
	jbe	.label_352
	jmp	.label_353
.label_353:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
.label_352:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405640

	.globl simple_round_floor
	.type simple_round_floor, @function
simple_round_floor:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	fld	xword ptr [rbp + 0x10]
	fld	st(0)
	fstp	xword ptr [rbp - 0x10]
	fchs	
	mov	rax, rsp
	fstp	xword ptr [rax]
	call	simple_round_ceiling
	xor	ecx, ecx
	mov	edx, ecx
	sub	rdx, rax
	mov	rax, rdx
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405670

	.globl simple_round_from_zero
	.type simple_round_from_zero, @function
simple_round_from_zero:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	fld	xword ptr [rbp + 0x10]
	fld	st(0)
	fstp	xword ptr [rbp - 0x10]
	fldz	
	fucomip	st(1)
	fstp	st(0)
	jbe	.label_354
	jmp	.label_355
.label_355:
	fld	xword ptr [rbp - 0x10]
	mov	rax, rsp
	fstp	xword ptr [rax]
	call	simple_round_floor
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_356
.label_354:
	fld	xword ptr [rbp - 0x10]
	mov	rax, rsp
	fstp	xword ptr [rax]
	call	simple_round_ceiling
	mov	qword ptr [rbp - 0x18], rax
.label_356:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4056d0

	.globl simple_round_to_zero
	.type simple_round_to_zero, @function
simple_round_to_zero:
	push	rbp
	mov	rbp, rsp
	fld	xword ptr [rbp + 0x10]
	fld	st(0)
	fstp	xword ptr [rbp - 0x10]
	fld	st(0)
	fnstcw	word ptr [rbp - 0x1a]
	mov	ax, word ptr [rbp - 0x1a]
	mov	word ptr [rbp - 0x1a], 0xc7f
	fldcw	word ptr [rbp - 0x1a]
	mov	word ptr [rbp - 0x1a], ax
	fxch	st(1)
	fistp	qword ptr [rbp - 0x18]
	fldcw	word ptr [rbp - 0x1a]
	mov	rax, qword ptr [rbp - 0x18]
	fstp	xword ptr [rbp - 0x24]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405710

	.globl simple_round_nearest
	.type simple_round_nearest, @function
simple_round_nearest:
	push	rbp
	mov	rbp, rsp
	fld	xword ptr [rbp + 0x10]
	fld	st(0)
	fstp	xword ptr [rbp - 0x10]
	fldz	
	fucomip	st(1)
	fstp	st(0)
	jbe	.label_357
	jmp	.label_358
.label_358:
	fld	xword ptr [rbp - 0x10]
	fld	dword ptr [dword ptr [rip + label_359]]
	faddp	st(1)
	fstp	xword ptr [rbp - 0x24]
	jmp	.label_360
.label_357:
	fld	xword ptr [rbp - 0x10]
	fld	dword ptr [dword ptr [rip + label_361]]
	faddp	st(1)
	fstp	xword ptr [rbp - 0x24]
.label_360:
	fld	xword ptr [rbp - 0x24]
	fnstcw	word ptr [rbp - 0x1a]
	mov	ax, word ptr [rbp - 0x1a]
	mov	word ptr [rbp - 0x1a], 0xc7f
	fldcw	word ptr [rbp - 0x1a]
	mov	word ptr [rbp - 0x1a], ax
	fistp	qword ptr [rbp - 0x18]
	fldcw	word ptr [rbp - 0x1a]
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405780

	.globl set_fields
	.type set_fields, @function
set_fields:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	qword ptr [rbp - 0x18], 1
	mov	qword ptr [rbp - 0x20], 0
	mov	byte ptr [rbp - 0x21], 0
	mov	byte ptr [rbp - 0x22], 0
	mov	byte ptr [rbp - 0x23], 0
	mov	byte ptr [rbp - 0x24], 0
	mov	esi, dword ptr [rbp - 0xc]
	and	esi, 1
	cmp	esi, 0
	je	.label_401
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, OFFSET FLAT:.str_1
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_401
	mov	qword ptr [rbp - 0x20], 1
	mov	byte ptr [rbp - 0x21], 1
	mov	byte ptr [rbp - 0x23], 1
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
.label_401:
	jmp	.label_407
.label_407:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	jne	.label_420
	mov	byte ptr [rbp - 0x24], 0
	test	byte ptr [rbp - 0x23], 1
	je	.label_366
	jmp	.label_406
.label_406:
	mov	eax, dword ptr [rbp - 0xc]
	and	eax, 4
	cmp	eax, 0
	je	.label_374
	movabs	rdi, OFFSET FLAT:.str.1_0
	call	gettext
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_387
.label_374:
	movabs	rdi, OFFSET FLAT:.str.2_0
	call	gettext
	mov	qword ptr [rbp - 0x50], rax
.label_387:
	mov	rax, qword ptr [rbp - 0x50]
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_366:
	mov	byte ptr [rbp - 0x23], 1
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	test	byte ptr [rbp - 0x21], 1
	je	.label_399
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_399
	jmp	.label_408
.label_408:
	mov	eax, dword ptr [rbp - 0xc]
	and	eax, 4
	cmp	eax, 0
	je	.label_411
	movabs	rdi, OFFSET FLAT:.str.3_0
	call	gettext
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_415
.label_411:
	movabs	rdi, OFFSET FLAT:.str.4_0
	call	gettext
	mov	qword ptr [rbp - 0x58], rax
.label_415:
	mov	rax, qword ptr [rbp - 0x58]
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_399:
	test	byte ptr [rbp - 0x21], 1
	je	.label_422
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_363
.label_422:
	mov	eax, 1
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_363
.label_363:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x18], rax
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_370
.label_420:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2c
	je	.label_383
	mov	rax, qword ptr [rbp - 8]
	movsx	edi, byte ptr [rax]
	call	to_uchar_0
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x68], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x68]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 1
	cmp	edi, 0
	jne	.label_383
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_416
.label_383:
	mov	byte ptr [rbp - 0x24], 0
	test	byte ptr [rbp - 0x23], 1
	je	.label_403
	mov	byte ptr [rbp - 0x23], 0
	test	byte ptr [rbp - 0x21], 1
	jne	.label_405
	test	byte ptr [rbp - 0x22], 1
	jne	.label_405
	mov	eax, dword ptr [rbp - 0xc]
	and	eax, 1
	cmp	eax, 0
	je	.label_413
	mov	qword ptr [rbp - 0x18], 1
	jmp	.label_414
.label_413:
	jmp	.label_417
.label_417:
	movabs	rdi, OFFSET FLAT:.str.5_0
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_414:
	jmp	.label_405
.label_405:
	test	byte ptr [rbp - 0x22], 1
	jne	.label_423
	mov	rsi, -1
	mov	rdi, qword ptr [rbp - 0x18]
	call	add_range_pair
	jmp	.label_369
.label_423:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_371
	jmp	.label_377
.label_377:
	movabs	rdi, OFFSET FLAT:.str.6_0
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_371:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	call	add_range_pair
.label_369:
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_396
.label_403:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_398
	jmp	.label_400
.label_400:
	mov	eax, dword ptr [rbp - 0xc]
	and	eax, 4
	cmp	eax, 0
	je	.label_362
	movabs	rdi, OFFSET FLAT:.str.3_0
	call	gettext
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_410
.label_362:
	movabs	rdi, OFFSET FLAT:.str.4_0
	call	gettext
	mov	qword ptr [rbp - 0x70], rax
.label_410:
	mov	rax, qword ptr [rbp - 0x70]
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_398:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x20]
	call	add_range_pair
	mov	qword ptr [rbp - 0x20], 0
.label_396:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_421
	jmp	.label_424
.label_421:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	mov	byte ptr [rbp - 0x21], 0
	mov	byte ptr [rbp - 0x22], 0
	jmp	.label_367
.label_416:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_372
	test	byte ptr [rbp - 0x24], 1
	je	.label_379
	cmp	qword ptr [word ptr [set_fields.num_start]],  0
	jne	.label_385
.label_379:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [set_fields.num_start]],  rax
.label_385:
	mov	byte ptr [rbp - 0x24], 1
	test	byte ptr [rbp - 0x23], 1
	je	.label_389
	mov	byte ptr [rbp - 0x22], 1
	jmp	.label_394
.label_389:
	mov	byte ptr [rbp - 0x21], 1
.label_394:
	movabs	rax, 0x1999999999999999
	cmp	rax, qword ptr [rbp - 0x20]
	jb	.label_397
	imul	rax, qword ptr [rbp - 0x20], 0xa
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx]
	sub	edx, 0x30
	movsxd	rcx, edx
	add	rax, rcx
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_402
.label_397:
	xor	eax, eax
	mov	dword ptr [rbp - 0x74], eax
	jmp	.label_364
.label_402:
	mov	eax, 1
	imul	rcx, qword ptr [rbp - 0x20], 0xa
	mov	rdx, qword ptr [rbp - 8]
	movsx	esi, byte ptr [rdx]
	sub	esi, 0x30
	movsxd	rdx, esi
	add	rcx, rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x74], eax
.label_364:
	mov	eax, dword ptr [rbp - 0x74]
	cmp	eax, 0
	je	.label_418
	cmp	qword ptr [rbp - 0x20], -1
	jne	.label_368
.label_418:
	movabs	rsi, OFFSET FLAT:.str.7_0
	mov	rdi,  qword ptr [word ptr [set_fields.num_start]]
	call	strspn
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi,  qword ptr [word ptr [set_fields.num_start]]
	mov	rsi, qword ptr [rbp - 0x30]
	call	xstrndup
	mov	qword ptr [rbp - 0x38], rax
	mov	ecx, dword ptr [rbp - 0xc]
	and	ecx, 4
	cmp	ecx, 0
	je	.label_392
	movabs	rdi, OFFSET FLAT:.str.8_0
	call	gettext
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_381
.label_392:
	movabs	rdi, OFFSET FLAT:.str.9_0
	call	gettext
	mov	qword ptr [rbp - 0x80], rax
.label_381:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x88], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
	mov	edi, 1
	call	usage
.label_368:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_404
.label_372:
	mov	eax, dword ptr [rbp - 0xc]
	and	eax, 4
	cmp	eax, 0
	je	.label_409
	movabs	rdi, OFFSET FLAT:.str.10_0
	call	gettext
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_393
.label_409:
	movabs	rdi, OFFSET FLAT:.str.11_0
	call	gettext
	mov	qword ptr [rbp - 0x90], rax
.label_393:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x98], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x98]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_404:
	jmp	.label_367
.label_367:
	jmp	.label_370
.label_370:
	jmp	.label_407
.label_424:
	cmp	qword ptr [word ptr [n_frp]],  0
	jne	.label_375
	jmp	.label_382
.label_382:
	mov	eax, dword ptr [rbp - 0xc]
	and	eax, 4
	cmp	eax, 0
	je	.label_384
	movabs	rdi, OFFSET FLAT:.str.12_0
	call	gettext
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_390
.label_384:
	movabs	rdi, OFFSET FLAT:.str.13_0
	call	gettext
	mov	qword ptr [rbp - 0xa0], rax
.label_390:
	mov	rax, qword ptr [rbp - 0xa0]
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_375:
	mov	eax, 0x10
	mov	edx, eax
	movabs	rcx, OFFSET FLAT:compare_ranges
	mov	rsi,  qword ptr [word ptr [frp]]
	mov	rdi,  qword ptr [word ptr [n_frp]]
	mov	qword ptr [rbp - 0xa8], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0xa8]
	call	qsort
	mov	qword ptr [rbp - 0x40], 0
.label_412:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax,  qword ptr [word ptr [n_frp]]
	jae	.label_419
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
.label_380:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax,  qword ptr [word ptr [n_frp]]
	jae	.label_376
	mov	rax, qword ptr [rbp - 0x48]
	shl	rax, 4
	add	rax,  qword ptr [word ptr [frp]]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x40]
	shl	rcx, 4
	add	rcx,  qword ptr [word ptr [frp]]
	cmp	rax, qword ptr [rcx + 8]
	ja	.label_365
	mov	rax, qword ptr [rbp - 0x48]
	shl	rax, 4
	add	rax,  qword ptr [word ptr [frp]]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x40]
	shl	rcx, 4
	add	rcx,  qword ptr [word ptr [frp]]
	cmp	rax, qword ptr [rcx + 8]
	jbe	.label_386
	mov	rax, qword ptr [rbp - 0x48]
	shl	rax, 4
	add	rax,  qword ptr [word ptr [frp]]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_395
.label_386:
	mov	rax, qword ptr [rbp - 0x40]
	shl	rax, 4
	add	rax,  qword ptr [word ptr [frp]]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0xb0], rax
.label_395:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0x40]
	shl	rcx, 4
	add	rcx,  qword ptr [word ptr [frp]]
	mov	qword ptr [rcx + 8], rax
	mov	rax,  qword ptr [word ptr [frp]]
	mov	rcx, qword ptr [rbp - 0x48]
	shl	rcx, 4
	add	rax, rcx
	mov	rcx,  qword ptr [word ptr [frp]]
	mov	rdx, qword ptr [rbp - 0x48]
	shl	rdx, 4
	add	rcx, rdx
	add	rcx, 0x10
	mov	rdx,  qword ptr [word ptr [n_frp]]
	sub	rdx, qword ptr [rbp - 0x48]
	sub	rdx, 1
	shl	rdx, 4
	mov	rdi, rax
	mov	rsi, rcx
	call	memmove
	mov	rax,  qword ptr [word ptr [n_frp]]
	add	rax, -1
	mov	qword ptr [word ptr [n_frp]],  rax
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, -1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_373
.label_365:
	jmp	.label_376
.label_373:
	jmp	.label_378
.label_378:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_380
.label_376:
	jmp	.label_388
.label_388:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_412
.label_419:
	mov	eax, dword ptr [rbp - 0xc]
	and	eax, 2
	cmp	eax, 0
	je	.label_391
	call	complement_rp
.label_391:
	mov	rax,  qword ptr [word ptr [n_frp]]
	add	rax, 1
	mov	qword ptr [word ptr [n_frp]],  rax
	mov	rax,  qword ptr [word ptr [frp]]
	mov	rcx,  qword ptr [word ptr [n_frp]]
	shl	rcx, 4
	mov	rdi, rax
	mov	rsi, rcx
	call	xrealloc
	mov	qword ptr [word ptr [frp]],  rax
	mov	rax,  qword ptr [word ptr [n_frp]]
	sub	rax, 1
	shl	rax, 4
	add	rax,  qword ptr [word ptr [frp]]
	mov	qword ptr [rax + 8], -1
	mov	rax,  qword ptr [word ptr [n_frp]]
	sub	rax, 1
	shl	rax, 4
	add	rax,  qword ptr [word ptr [frp]]
	mov	qword ptr [rax], -1
	add	rsp, 0xb0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405ff0

	.globl to_uchar_0
	.type to_uchar_0, @function
to_uchar_0:
	push	rbp
	mov	rbp, rsp
	mov	al, dil
	mov	byte ptr [rbp - 1], al
	movzx	eax, byte ptr [rbp - 1]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406000

	.globl add_range_pair
	.type add_range_pair, @function
add_range_pair:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi,  qword ptr [word ptr [n_frp]]
	cmp	rsi,  qword ptr [word ptr [n_frp_allocated]]
	jne	.label_425
	movabs	rsi, OFFSET FLAT:n_frp_allocated
	mov	eax, 0x10
	mov	edx, eax
	mov	rcx,  qword ptr [word ptr [frp]]
	mov	rdi, rcx
	call	x2nrealloc
	mov	qword ptr [word ptr [frp]],  rax
.label_425:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [n_frp]]
	shl	rcx, 4
	add	rcx,  qword ptr [word ptr [frp]]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [n_frp]]
	shl	rcx, 4
	add	rcx,  qword ptr [word ptr [frp]]
	mov	qword ptr [rcx + 8], rax
	mov	rax,  qword ptr [word ptr [n_frp]]
	add	rax, 1
	mov	qword ptr [word ptr [n_frp]],  rax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4060a0

	.globl compare_ranges
	.type compare_ranges, @function
compare_ranges:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi]
	mov	eax, esi
	mov	dword ptr [rbp - 0x14], eax
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi]
	mov	eax, esi
	mov	dword ptr [rbp - 0x18], eax
	mov	eax, dword ptr [rbp - 0x14]
	cmp	eax, dword ptr [rbp - 0x18]
	jge	.label_426
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_427
.label_426:
	mov	eax, dword ptr [rbp - 0x14]
	cmp	eax, dword ptr [rbp - 0x18]
	setg	cl
	and	cl, 1
	movzx	eax, cl
	mov	dword ptr [rbp - 0x1c], eax
.label_427:
	mov	eax, dword ptr [rbp - 0x1c]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406100

	.globl complement_rp
	.type complement_rp, @function
complement_rp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rax,  qword ptr [word ptr [frp]]
	mov	qword ptr [rbp - 8], rax
	mov	rax,  qword ptr [word ptr [n_frp]]
	mov	qword ptr [rbp - 0x10], rax
	mov	qword ptr [word ptr [frp]],  0
	mov	qword ptr [word ptr [n_frp]],  0
	mov	qword ptr [word ptr [n_frp_allocated]],  0
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax], 1
	jbe	.label_428
	mov	eax, 1
	mov	edi, eax
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	sub	rcx, 1
	mov	rsi, rcx
	call	add_range_pair
.label_428:
	mov	qword ptr [rbp - 0x18], 1
.label_430:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_432
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx]
	jne	.label_429
	jmp	.label_431
.label_429:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	sub	rcx, 1
	mov	rdi, rax
	mov	rsi, rcx
	call	add_range_pair
.label_431:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_430
.label_432:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 8], -1
	jae	.label_433
	mov	rsi, -1
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	add	rax, 1
	mov	rdi, rax
	call	add_range_pair
.label_433:
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406250
	.globl reset_fields
	.type reset_fields, @function
reset_fields:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [word ptr [n_frp]],  0
	mov	qword ptr [word ptr [n_frp_allocated]],  0
	mov	rax,  qword ptr [word ptr [frp]]
	mov	rdi, rax
	call	free
	mov	qword ptr [word ptr [frp]],  0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406290

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	push	rbp
	mov	rbp, rsp
	mov	edi, 1
	call	usage
	.section	.text
	.align	16
	#Procedure 0x4062a0

	.globl argmatch
	.type argmatch, @function
argmatch:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x40], -1
	mov	byte ptr [rbp - 0x41], 0
	mov	rdi, qword ptr [rbp - 0x10]
	call	strlen
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x30], 0
.label_443:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_439
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x38]
	call	strncmp
	cmp	eax, 0
	jne	.label_436
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	call	strlen
	cmp	rax, qword ptr [rbp - 0x38]
	jne	.label_445
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_435
.label_445:
	cmp	qword ptr [rbp - 0x40], -1
	jne	.label_442
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_434
.label_442:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_438
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	imul	rcx, qword ptr [rbp - 0x40]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	imul	rdx, qword ptr [rbp - 0x30]
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rdi, rax
	mov	rsi, rcx
	call	memcmp
	cmp	eax, 0
	je	.label_437
.label_438:
	mov	byte ptr [rbp - 0x41], 1
.label_437:
	jmp	.label_434
.label_434:
	jmp	.label_440
.label_440:
	jmp	.label_436
.label_436:
	jmp	.label_441
.label_441:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_443
.label_439:
	test	byte ptr [rbp - 0x41], 1
	je	.label_444
	mov	qword ptr [rbp - 8], -2
	jmp	.label_435
.label_444:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
.label_435:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4063f0

	.globl argmatch_invalid
	.type argmatch_invalid, @function
argmatch_invalid:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 0x18], -1
	jne	.label_446
	movabs	rdi, OFFSET FLAT:.str_2
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_447
.label_446:
	movabs	rdi, OFFSET FLAT:.str.1_1
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
.label_447:
	mov	rax, qword ptr [rbp - 0x28]
	xor	edi, edi
	mov	esi, 8
	mov	qword ptr [rbp - 0x20], rax
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rdx
	mov	rdx, rax
	call	quotearg_n_style
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rax
	call	quote_n
	xor	edi, edi
	mov	dword ptr [rbp - 0x3c], edi
	mov	esi, dword ptr [rbp - 0x3c]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	r8, rax
	mov	al, 0
	call	error
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406490

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	movabs	rax, OFFSET FLAT:.str.2_1
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x28], 0
	mov	rdi, rax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stderr]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	qword ptr [rbp - 0x20], 0
	mov	dword ptr [rbp - 0x2c], eax
.label_451:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_453
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_449
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rcx, qword ptr [rbp - 0x20]
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	memcmp
	cmp	eax, 0
	je	.label_448
.label_449:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:.str.3_1
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	imul	rdx, qword ptr [rbp - 0x20]
	add	rcx, rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_452
.label_448:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:.str.4_1
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x4c], eax
.label_452:
	jmp	.label_450
.label_450:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_451
.label_453:
	mov	edi, 0xa
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	putc_unlocked
	mov	dword ptr [rbp - 0x50], eax
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4065e0

	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	call	argmatch
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	jl	.label_455
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_454
.label_455:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x40]
	call	argmatch_invalid
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	call	argmatch_valid
	call	qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 8], -1
.label_454:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406670
	.globl argmatch_to_argument
	.type argmatch_to_argument, @function
argmatch_to_argument:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], 0
.label_457:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_456
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	imul	rcx, qword ptr [rbp - 0x30]
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_458
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_460
.label_458:
	jmp	.label_459
.label_459:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_457
.label_456:
	mov	qword ptr [rbp - 8], 0
.label_460:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406710
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
	jb	.label_461
	jmp	.label_463
.label_463:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_461
	jmp	.label_462
.label_462:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_464
	jmp	.label_461
.label_461:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_465
.label_464:
	mov	byte ptr [rbp - 1], 0
.label_465:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406780
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
	jb	.label_466
	jmp	.label_469
.label_469:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_467
	jmp	.label_466
.label_466:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_468
.label_467:
	mov	byte ptr [rbp - 1], 0
.label_468:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4067d0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_470
	jmp	.label_471
.label_471:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_472
.label_470:
	mov	byte ptr [rbp - 1], 0
.label_472:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406800
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_473
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_473:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406830
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
	jb	.label_474
	jmp	.label_476
.label_476:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_477
	jmp	.label_474
.label_474:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_475
.label_477:
	mov	byte ptr [rbp - 1], 0
.label_475:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406880

	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_478
	jmp	.label_480
.label_480:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_479
.label_478:
	mov	byte ptr [rbp - 1], 0
.label_479:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4068c0
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_481
	jmp	.label_483
.label_483:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_482
.label_481:
	mov	byte ptr [rbp - 1], 0
.label_482:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406900
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_484
	jmp	.label_486
.label_486:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_485
.label_484:
	mov	byte ptr [rbp - 1], 0
.label_485:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406940
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_487
	jmp	.label_489
.label_489:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_488
.label_487:
	mov	byte ptr [rbp - 1], 0
.label_488:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406980
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x21
	sub	eax, 0xf
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_490
	jmp	.label_493
.label_493:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x3a
	sub	eax, 7
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_490
	jmp	.label_494
.label_494:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x5b
	sub	eax, 6
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_490
	jmp	.label_492
.label_492:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x7b
	sub	eax, 3
	mov	dword ptr [rbp - 0x1c], eax
	ja	.label_495
	jmp	.label_490
.label_490:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_491
.label_495:
	mov	byte ptr [rbp - 1], 0
.label_491:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406a00
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
	jb	.label_496
	jmp	.label_499
.label_499:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_498
	jmp	.label_496
.label_496:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_497
.label_498:
	mov	byte ptr [rbp - 1], 0
.label_497:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406a50
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_500
	jmp	.label_502
.label_502:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_501
.label_500:
	mov	byte ptr [rbp - 1], 0
.label_501:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406a90
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
	jb	.label_503
	jmp	.label_506
.label_506:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_503
	jmp	.label_504
.label_504:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_505
	jmp	.label_503
.label_503:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_507
.label_505:
	mov	byte ptr [rbp - 1], 0
.label_507:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406b00

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_508
	jmp	.label_510
.label_510:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_509
.label_508:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_509:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406b40
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_511
	jmp	.label_513
.label_513:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_512
.label_511:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_512:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406b80
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
	#Procedure 0x406ba0
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
	#Procedure 0x406bc0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	close_stream
	cmp	eax, 0
	je	.label_516
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_518
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	je	.label_516
.label_518:
	movabs	rdi, OFFSET FLAT:.str_4
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_514
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str.1_2
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_515
.label_514:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_3
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	call	error
.label_515:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_516:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_517
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_517:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406cb0

	.globl mbsalign
	.type mbsalign, @function
mbsalign:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xd0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	mov	dword ptr [rbp - 0x28], r9d
	mov	qword ptr [rbp - 0x30], -1
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x40], 0
	mov	qword ptr [rbp - 0x48], 0
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x38]
	sub	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x60], rax
	mov	qword ptr [rbp - 0x68], 0
	mov	byte ptr [rbp - 0x69], 0
	mov	byte ptr [rbp - 0x6a], 0
	mov	r8d, dword ptr [rbp - 0x28]
	and	r8d, 2
	cmp	r8d, 0
	jne	.label_528
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_528
	xor	eax, eax
	mov	ecx, eax
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rcx
	mov	rdx, rcx
	call	mbstowcs
	mov	qword ptr [rbp - 0x78], rax
	cmp	qword ptr [rbp - 0x78], -1
	jne	.label_538
	mov	eax, dword ptr [rbp - 0x28]
	and	eax, 1
	cmp	eax, 0
	je	.label_545
	jmp	.label_520
.label_545:
	jmp	.label_523
.label_538:
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 1
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x78]
	shl	rax, 2
	mov	rdi, rax
	call	malloc
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_525
	mov	eax, dword ptr [rbp - 0x28]
	and	eax, 1
	cmp	eax, 0
	je	.label_530
	jmp	.label_520
.label_530:
	jmp	.label_523
.label_525:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x78]
	call	mbstowcs
	cmp	rax, 0
	je	.label_537
	mov	rax, qword ptr [rbp - 0x78]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x48]
	mov	dword ptr [rcx + rax*4], 0
	mov	byte ptr [rbp - 0x6a], 1
	mov	rdi, qword ptr [rbp - 0x48]
	call	wc_ensure_printable
	and	al, 1
	mov	byte ptr [rbp - 0x69], al
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x78]
	call	wcswidth
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x58], rcx
.label_537:
	jmp	.label_528
.label_528:
	test	byte ptr [rbp - 0x6a], 1
	je	.label_526
	test	byte ptr [rbp - 0x69], 1
	jne	.label_529
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx]
	jbe	.label_526
.label_529:
	test	byte ptr [rbp - 0x69], 1
	je	.label_533
	xor	eax, eax
	mov	ecx, eax
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdi, rcx
	mov	rdx, rcx
	call	wcstombs
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
.label_533:
	mov	rdi, qword ptr [rbp - 0x38]
	call	malloc
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_542
	mov	eax, dword ptr [rbp - 0x28]
	and	eax, 1
	cmp	eax, 0
	je	.label_521
	jmp	.label_520
.label_521:
	jmp	.label_523
.label_542:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x50], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rax]
	call	wc_truncate
	mov	qword ptr [rbp - 0x58], rax
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x38]
	call	wcstombs
	mov	qword ptr [rbp - 0x60], rax
.label_526:
	jmp	.label_520
.label_520:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx]
	jbe	.label_536
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x60], rax
.label_536:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x58]
	jbe	.label_543
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	sub	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x68], rax
.label_543:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x24]
	test	edx, edx
	mov	dword ptr [rbp - 0x9c], edx
	je	.label_522
	jmp	.label_531
.label_531:
	mov	eax, dword ptr [rbp - 0x9c]
	sub	eax, 1
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_532
	jmp	.label_534
.label_534:
	mov	eax, dword ptr [rbp - 0x9c]
	sub	eax, 2
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_535
	jmp	.label_524
.label_522:
	mov	qword ptr [rbp - 0x80], 0
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_519
.label_532:
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x80], rax
	mov	qword ptr [rbp - 0x88], 0
	jmp	.label_519
.label_535:
	jmp	.label_524
.label_524:
	mov	rax, qword ptr [rbp - 0x68]
	shr	rax, 1
	mov	rcx, qword ptr [rbp - 0x68]
	and	rcx, 1
	add	rax, rcx
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x68]
	shr	rax, 1
	mov	qword ptr [rbp - 0x88], rax
.label_519:
	mov	eax, dword ptr [rbp - 0x28]
	and	eax, 4
	cmp	eax, 0
	je	.label_527
	mov	qword ptr [rbp - 0x80], 0
.label_527:
	mov	eax, dword ptr [rbp - 0x28]
	and	eax, 8
	cmp	eax, 0
	je	.label_539
	mov	qword ptr [rbp - 0x88], 0
.label_539:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_544
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rbp - 0x18]
	add	rax, -1
	mov	qword ptr [rbp - 0x98], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0x80]
	call	mbs_align_pad
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rax, rdx
	mov	qword ptr [rbp - 0x90], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xb0], rdi
	mov	qword ptr [rbp - 0xb8], rsi
	jae	.label_540
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0xc0], rax
	jmp	.label_541
.label_540:
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_541:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rdi, qword ptr [rbp - 0xb0]
	mov	rsi, qword ptr [rbp - 0xb8]
	mov	rdx, rax
	call	mempcpy
	mov	qword ptr [rbp - 0x10], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0x88]
	call	mbs_align_pad
	mov	qword ptr [rbp - 0xc8], rax
.label_544:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x80]
	add	rcx, qword ptr [rbp - 0x88]
	shl	rcx, 0
	add	rax, rcx
	mov	qword ptr [rbp - 0x30], rax
.label_523:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, rax
	call	free
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
	mov	rax, qword ptr [rbp - 0x30]
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407110

	.globl wc_ensure_printable
	.type wc_ensure_printable, @function
wc_ensure_printable:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rdi
.label_546:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax], 0
	je	.label_547
	mov	rax, qword ptr [rbp - 0x18]
	mov	edi, dword ptr [rax]
	call	iswprint
	cmp	eax, 0
	jne	.label_548
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax], 0xfffd
	mov	byte ptr [rbp - 9], 1
.label_548:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 4
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_546
.label_547:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407180

	.globl wc_truncate
	.type wc_truncate, @function
wc_truncate:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], 0
	mov	dword ptr [rbp - 0x1c], 0
.label_552:
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax], 0
	je	.label_551
	mov	rax, qword ptr [rbp - 8]
	mov	edi, dword ptr [rax]
	call	wcwidth
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], -1
	jne	.label_550
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xfffd
	mov	dword ptr [rbp - 0x1c], 1
.label_550:
	mov	rax, qword ptr [rbp - 0x18]
	movsxd	rcx, dword ptr [rbp - 0x1c]
	add	rax, rcx
	cmp	rax, qword ptr [rbp - 0x10]
	jbe	.label_549
	jmp	.label_551
.label_549:
	movsxd	rax, dword ptr [rbp - 0x1c]
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, 4
	mov	qword ptr [rbp - 8], rax
	jmp	.label_552
.label_551:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407220

	.globl mbs_align_pad
	.type mbs_align_pad, @function
mbs_align_pad:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
.label_554:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, rdx
	add	rsi, -1
	mov	qword ptr [rbp - 0x18], rsi
	cmp	rdx, 0
	mov	byte ptr [rbp - 0x19], cl
	je	.label_553
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x10]
	setb	cl
	mov	byte ptr [rbp - 0x19], cl
.label_553:
	mov	al, byte ptr [rbp - 0x19]
	test	al, 1
	jne	.label_556
	jmp	.label_555
.label_556:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	mov	byte ptr [rax], 0x20
	jmp	.label_554
.label_555:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4072a0
	.globl ambsalign
	.type ambsalign, @function
ambsalign:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	dword ptr [rbp - 0x18], ecx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], rsi
	mov	qword ptr [rbp - 0x38], 0
.label_560:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x28]
	jb	.label_558
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x28]
	call	realloc
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_557
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
	mov	qword ptr [rbp - 0x38], 0
	jmp	.label_558
.label_557:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	r8d, dword ptr [rbp - 0x14]
	mov	r9d, dword ptr [rbp - 0x18]
	call	mbsalign
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_559
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
	mov	qword ptr [rbp - 0x38], 0
	jmp	.label_558
.label_559:
	jmp	.label_560
.label_558:
	mov	rax, qword ptr [rbp - 0x38]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407390

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_563
	movabs	rdi, OFFSET FLAT:.str_5
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x1c], eax
	call	abort
.label_563:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	call	strrchr
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_564
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_561
.label_564:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_561:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cmp	rax, 7
	jl	.label_565
	movabs	rsi, OFFSET FLAT:.str.1_3
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, -7
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_565
	movabs	rsi, OFFSET FLAT:.str.2_2
	mov	eax, 3
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_562
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_562:
	jmp	.label_565
.label_565:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4074b0
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
	je	.label_566
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_567
.label_566:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_567
.label_567:
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
	#Procedure 0x407530
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_568
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_569
.label_568:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_569
.label_569:
	mov	rax, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407570
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
	je	.label_570
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_571
.label_570:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_571
.label_571:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4075c0

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
	je	.label_572
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_573
.label_572:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_573
.label_573:
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
	#Procedure 0x407670
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_574
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_574:
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
	#Procedure 0x4076b0

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
	jne	.label_575
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_575:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_577
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_576
.label_577:
	call	abort
.label_576:
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
	#Procedure 0x407720
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
	je	.label_578
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_579
.label_578:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_579
.label_579:
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
	#Procedure 0x4077f0

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
.label_712:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_612
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_620]]
	jmp	rcx
.label_1070:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_1069:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_627
	jmp	.label_630
.label_630:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_631
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_631:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_627
.label_627:
	movabs	rax, OFFSET FLAT:.str.10_1
	mov	byte ptr [rbp - 0x79], 1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_639
.label_1071:
	mov	byte ptr [rbp - 0x79], 1
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_639
.label_1072:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_650
	movabs	rdi, OFFSET FLAT:.str.11_1
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	movabs	rdi, OFFSET FLAT:.str.12_1
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_650:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_598
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_683:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_667
	jmp	.label_672
.label_672:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_674
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_674:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_679
.label_679:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_683
.label_667:
	jmp	.label_598
.label_598:
	mov	byte ptr [rbp - 0x79], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_639
.label_1067:
	mov	byte ptr [rbp - 0x79], 1
.label_1066:
	mov	byte ptr [rbp - 0x7b], 1
.label_1068:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_698
	mov	byte ptr [rbp - 0x79], 1
.label_698:
	jmp	.label_772
.label_772:
	mov	dword ptr [rbp - 0x34], 2
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_706
	jmp	.label_702
.label_702:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_703
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_703:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_706
.label_706:
	movabs	rax, OFFSET FLAT:.str.12_1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_639
.label_1065:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_639
.label_612:
	call	abort
.label_639:
	mov	qword ptr [rbp - 0x58], 0
.label_681:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_716
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_721
.label_716:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], edx
.label_721:
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_730
	jmp	.label_634
.label_730:
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	je	.label_737
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_737
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_737
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	jne	.label_700
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_700
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_758
.label_700:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_758:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	ja	.label_737
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_737
	test	byte ptr [rbp - 0x7b], 1
	je	.label_764
	jmp	.label_582
.label_764:
	mov	byte ptr [rbp - 0x81], 1
.label_737:
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
	ja	.label_768
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_771]]
	jmp	rcx
.label_1075:
	test	byte ptr [rbp - 0x79], 1
	je	.label_774
	jmp	.label_778
.label_778:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_770
	jmp	.label_582
.label_770:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_581
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_581
	jmp	.label_587
.label_587:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_588
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_588:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_593
.label_593:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_596
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_596:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_602
.label_602:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_608
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_608:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_581:
	jmp	.label_621
.label_621:
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
	jmp	.label_629
.label_629:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_610
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_610
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_610
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x39
	jg	.label_610
	jmp	.label_648
.label_648:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_740
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_740:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_658
.label_658:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_661
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_661:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_610
.label_610:
	mov	byte ptr [rbp - 0x7f], 0x30
	jmp	.label_673
.label_774:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_647
	jmp	.label_669
.label_647:
	jmp	.label_673
.label_673:
	jmp	.label_603
.label_1086:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0x100], ecx
	je	.label_680
	jmp	.label_686
.label_686:
	mov	eax, dword ptr [rbp - 0xfc]
	sub	eax, 5
	mov	dword ptr [rbp - 0x104], eax
	je	.label_688
	jmp	.label_746
.label_680:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_767
	jmp	.label_582
.label_767:
	jmp	.label_697
.label_688:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_699
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_699
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3f
	jne	.label_699
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rax + rcx + 2]
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	je	.label_678
	jmp	.label_711
.label_711:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	jb	.label_678
	jmp	.label_714
.label_714:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	je	.label_678
	jmp	.label_747
.label_747:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2f
	mov	dword ptr [rbp - 0x118], eax
	je	.label_678
	jmp	.label_725
.label_725:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	ja	.label_726
	jmp	.label_678
.label_678:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_732
	jmp	.label_582
.label_732:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_736
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_736:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_745
.label_745:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_749
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_749:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_753
.label_753:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_692
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_692:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_760
.label_760:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_707
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_707:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_762
.label_726:
	jmp	.label_762
.label_762:
	jmp	.label_699
.label_699:
	jmp	.label_697
.label_746:
	jmp	.label_697
.label_697:
	jmp	.label_603
.label_1076:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_597
.label_1077:
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_597
.label_1081:
	mov	byte ptr [rbp - 0x80], 0x66
	jmp	.label_597
.label_1079:
	mov	byte ptr [rbp - 0x80], 0x6e
	jmp	.label_591
.label_1082:
	mov	byte ptr [rbp - 0x80], 0x72
	jmp	.label_591
.label_1078:
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_591
.label_1080:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_597
.label_1087:
	mov	al, byte ptr [rbp - 0x7f]
	mov	byte ptr [rbp - 0x80], al
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_776
	test	byte ptr [rbp - 0x7b], 1
	je	.label_779
	jmp	.label_582
.label_779:
	jmp	.label_583
.label_776:
	test	byte ptr [rbp - 0x79], 1
	je	.label_584
	test	byte ptr [rbp - 0x7b], 1
	je	.label_584
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_584
	jmp	.label_583
.label_584:
	jmp	.label_591
.label_591:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_592
	test	byte ptr [rbp - 0x7b], 1
	je	.label_592
	jmp	.label_582
.label_592:
	jmp	.label_597
.label_597:
	test	byte ptr [rbp - 0x79], 1
	je	.label_599
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_601
.label_599:
	jmp	.label_603
.label_1088:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_605
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_609
	jmp	.label_614
.label_605:
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_609
.label_614:
	jmp	.label_603
.label_609:
	jmp	.label_619
.label_619:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_622
	jmp	.label_603
.label_622:
	jmp	.label_625
.label_625:
	mov	byte ptr [rbp - 0x83], 1
.label_1083:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_628
	test	byte ptr [rbp - 0x7b], 1
	je	.label_628
	jmp	.label_582
.label_628:
	jmp	.label_603
.label_1085:
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_633
	test	byte ptr [rbp - 0x7b], 1
	je	.label_638
	jmp	.label_582
.label_638:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_644
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_644
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_644:
	jmp	.label_653
.label_653:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_655
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_655:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_660
.label_660:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_663
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_663:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_670
.label_670:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_677
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_677:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_633:
	jmp	.label_603
.label_1084:
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_603
.label_768:
	test	byte ptr [rbp - 0x7a], 1
	je	.label_687
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
	jmp	.label_696
.label_687:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_705
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_705:
	jmp	.label_611
.label_611:
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
	jne	.label_723
	jmp	.label_728
.label_723:
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_729
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_728
.label_729:
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_734
	mov	byte ptr [rbp - 0x91], 0
.label_754:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_738
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_738:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_751
	jmp	.label_752
.label_751:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_754
.label_752:
	jmp	.label_728
.label_734:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_590
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_590
	mov	qword ptr [rbp - 0xb8], 1
.label_586:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_761
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
	jb	.label_617
	jmp	.label_769
.label_769:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x138], eax
	je	.label_617
	jmp	.label_741
.label_741:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_617
	jmp	.label_775
.label_775:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_777
	jmp	.label_617
.label_617:
	jmp	.label_582
.label_777:
	jmp	.label_645
.label_645:
	jmp	.label_580
.label_580:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_586
.label_761:
	jmp	.label_590
.label_590:
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_594
	mov	byte ptr [rbp - 0x91], 0
.label_594:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_693
.label_693:
	jmp	.label_719
.label_719:
	jmp	.label_604
.label_604:
	lea	rdi, [rbp - 0xa0]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_611
.label_728:
	jmp	.label_696
.label_696:
	mov	eax, 1
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	jb	.label_616
	test	byte ptr [rbp - 0x79], 1
	je	.label_615
	test	byte ptr [rbp - 0x91], 1
	jne	.label_615
.label_616:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_651:
	test	byte ptr [rbp - 0x79], 1
	je	.label_635
	test	byte ptr [rbp - 0x91], 1
	jne	.label_635
	jmp	.label_691
.label_691:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_640
	jmp	.label_582
.label_640:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_643
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_643
	jmp	.label_652
.label_652:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_654
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_654:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_659
.label_659:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_662
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_662:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_668
.label_668:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_675
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_675:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_643:
	jmp	.label_682
.label_682:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_684
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_684:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_690
.label_690:
	jmp	.label_694
.label_694:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_695
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 6
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_695:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_701
.label_701:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_704
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 3
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_704:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_709
.label_635:
	test	byte ptr [rbp - 0x81], 1
	je	.label_713
	jmp	.label_715
.label_715:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_717
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_717:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x81], 0
.label_713:
	jmp	.label_709
.label_709:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_727
	jmp	.label_731
.label_727:
	jmp	.label_733
.label_733:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_735
	test	byte ptr [rbp - 0x82], 1
	jne	.label_735
	jmp	.label_739
.label_739:
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
	jmp	.label_744
.label_744:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_748
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_748:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_735:
	jmp	.label_755
.label_755:
	jmp	.label_757
.label_757:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_759
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_759:
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
	jmp	.label_651
.label_731:
	jmp	.label_583
.label_615:
	jmp	.label_603
.label_603:
	test	byte ptr [rbp - 0x79], 1
	je	.label_765
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_766
.label_765:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_685
.label_766:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_685
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
	jne	.label_589
.label_685:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_589
	jmp	.label_583
.label_589:
	jmp	.label_601
.label_601:
	jmp	.label_780
.label_780:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_626
	jmp	.label_582
.label_626:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_585
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_585
	jmp	.label_646
.label_646:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_656
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_656:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_595
.label_595:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_600
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_600:
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
	mov	byte ptr [rbp - 0x7c], 1
.label_585:
	jmp	.label_624
.label_624:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_666
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_666:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_632
.label_632:
	jmp	.label_583
.label_583:
	jmp	.label_636
.label_636:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_637
	test	byte ptr [rbp - 0x82], 1
	jne	.label_637
	jmp	.label_641
.label_641:
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
	jmp	.label_649
.label_649:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_657
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_657:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_637:
	jmp	.label_664
.label_664:
	jmp	.label_665
.label_665:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_606
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_606:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x83], 1
	jne	.label_676
	mov	byte ptr [rbp - 0x7e], 0
.label_676:
	jmp	.label_669
.label_669:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_681
.label_634:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_689
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_689
	test	byte ptr [rbp - 0x7b], 1
	je	.label_689
	jmp	.label_582
.label_689:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_718
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_718
	test	byte ptr [rbp - 0x7d], 1
	je	.label_718
	test	byte ptr [rbp - 0x7e], 1
	je	.label_763
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
	jmp	.label_708
.label_763:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_710
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_710
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_712
.label_710:
	jmp	.label_671
.label_671:
	jmp	.label_718
.label_718:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_720
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_720
	jmp	.label_722
.label_722:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_724
	jmp	.label_756
.label_756:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_773
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_773:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_618
.label_618:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_722
.label_724:
	jmp	.label_720
.label_720:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_743
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_743:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_708
.label_582:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_750
	test	byte ptr [rbp - 0x79], 1
	je	.label_750
	mov	dword ptr [rbp - 0x34], 4
.label_750:
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
.label_708:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408b90
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
	#Procedure 0x408bd0

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
	je	.label_781
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_782
.label_781:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_782
.label_782:
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
	je	.label_783
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_783:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408d30
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_786:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_785
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_786
.label_785:
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 8], rax
	je	.label_788
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	qword ptr [word ptr [label_787]],  rax
.label_788:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_784
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_784:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408e10

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
	#Procedure 0x408e50

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
	jge	.label_794
	call	abort
.label_794:
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_791
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x31], cl
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	jge	.label_793
	call	xalloc_die
.label_793:
	test	byte ptr [rbp - 0x31], 1
	je	.label_790
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_792
.label_790:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_792:
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
	je	.label_796
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_787]]
	mov	qword ptr [rax + 8], rcx
.label_796:
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
.label_791:
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
	ja	.label_795
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	cmp	qword ptr [rbp - 0x48], rax
	je	.label_789
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_789:
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
.label_795:
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
	#Procedure 0x4090d0

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
	#Procedure 0x409110
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
	#Procedure 0x409130
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
	#Procedure 0x409160

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
	#Procedure 0x4091a0

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
	jne	.label_797
	call	abort
.label_797:
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
	#Procedure 0x409210

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
	#Procedure 0x409250
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
	#Procedure 0x409280
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
	#Procedure 0x4092b0

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
	#Procedure 0x409330

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
	#Procedure 0x409360

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
	#Procedure 0x409380
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
	#Procedure 0x4093b0
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
	#Procedure 0x409460

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
	#Procedure 0x4094a0

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
	#Procedure 0x409520
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
	#Procedure 0x409550
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
	#Procedure 0x409590

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
	#Procedure 0x4095d0
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
	#Procedure 0x409600

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
	#Procedure 0x409630

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
	#Procedure 0x409650

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
	je	.label_799
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_801
.label_799:
	call	locale_charset
	movabs	rsi, OFFSET FLAT:.str.13_1
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_798
	movabs	rax, OFFSET FLAT:.str.15_0
	movabs	rcx, OFFSET FLAT:.str.14_0
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_801
.label_798:
	movabs	rsi, OFFSET FLAT:.str.16_0
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_800
	movabs	rax, OFFSET FLAT:.str.18_1
	movabs	rcx, OFFSET FLAT:.str.17_1
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_801
.label_800:
	movabs	rax, OFFSET FLAT:.str.12_1
	movabs	rcx, OFFSET FLAT:.str.10_1
	cmp	dword ptr [rbp - 0x14], 9
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_801:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409750

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
	je	.label_805
	movabs	rsi, OFFSET FLAT:.str_6
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_804
.label_805:
	movabs	rsi, OFFSET FLAT:.str.1_4
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_804:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:.str.2_3
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
	mov	ecx, OFFSET FLAT:.str.3_2
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
	ja	.label_803
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_806]]
	jmp	rcx
.label_1029:
	jmp	.label_802
.label_1030:
	movabs	rdi, OFFSET FLAT:.str.4_2
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
	jmp	.label_802
.label_1031:
	movabs	rdi, OFFSET FLAT:.str.5_1
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
	jmp	.label_802
.label_1032:
	movabs	rdi, OFFSET FLAT:.str.6_1
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
	jmp	.label_802
.label_1033:
	movabs	rdi, OFFSET FLAT:.str.7_1
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
	jmp	.label_802
.label_1034:
	movabs	rdi, OFFSET FLAT:.str.8_1
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
	jmp	.label_802
.label_1035:
	movabs	rdi, OFFSET FLAT:.str.9_1
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
	jmp	.label_802
.label_1036:
	movabs	rdi, OFFSET FLAT:.str.10_2
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
	jmp	.label_802
.label_1037:
	movabs	rdi, OFFSET FLAT:.str.11_2
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
	jmp	.label_802
.label_1038:
	movabs	rdi, OFFSET FLAT:.str.12_2
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
	jmp	.label_802
.label_803:
	movabs	rdi, OFFSET FLAT:.str.13_2
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
.label_802:
	add	rsp, 0x180
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409d10
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
.label_809:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_807
	jmp	.label_808
.label_808:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_809
.label_807:
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
	#Procedure 0x409d80

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
.label_813:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_810
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_815
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_814
.label_815:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_814:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x81], dl
.label_810:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_816
	jmp	.label_811
.label_816:
	jmp	.label_812
.label_812:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_813
.label_811:
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
	#Procedure 0x409e90

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
	je	.label_817
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
.label_817:
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
	#Procedure 0x40a000
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.14_1
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.15_1
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.16_1
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.17_0
	movabs	rdx, OFFSET FLAT:.str.18_0
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.19_0
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
	#Procedure 0x40a090
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
	jae	.label_818
	call	xalloc_die
.label_818:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a0e0

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
	jne	.label_819
	cmp	qword ptr [rbp - 8], 0
	je	.label_819
	call	xalloc_die
.label_819:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a120
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
	jae	.label_820
	call	xalloc_die
.label_820:
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
	#Procedure 0x40a170

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_821
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_821
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_823
.label_821:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_822
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_822
	call	xalloc_die
.label_822:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_823:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a1f0

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
	jne	.label_824
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_827
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
.label_827:
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_825
	call	xalloc_die
.label_825:
	jmp	.label_826
.label_824:
	movabs	rax, 0x5555555555555554
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_828
	call	xalloc_die
.label_828:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_826:
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
	#Procedure 0x40a2e0

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
	#Procedure 0x40a300
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
	#Procedure 0x40a330
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
	#Procedure 0x40a370
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
	jb	.label_829
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_830
.label_829:
	call	xalloc_die
.label_830:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a3d0

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
	#Procedure 0x40a410

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
	#Procedure 0x40a450

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.1_5
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:.str_3
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40a490

	.globl xstrndup
	.type xstrndup, @function
xstrndup:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	strndup
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_831
	call	xalloc_die
.label_831:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a4d0

	.globl xstrtol
	.type xstrtol, @function
xstrtol:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xf0
	xor	eax, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	dword ptr [rbp - 0x4c], 0
	cmp	eax, dword ptr [rbp - 0x1c]
	jg	.label_832
	cmp	dword ptr [rbp - 0x1c], 0x24
	jg	.label_832
	jmp	.label_838
.label_832:
	movabs	rdi, OFFSET FLAT:.str_7
	movabs	rsi, OFFSET FLAT:.str.1_6
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtol
	call	__assert_fail
.label_838:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_857
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_871
.label_857:
	lea	rax, [rbp - 0x38]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_871
.label_871:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x40], rax
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x1c]
	call	strtol
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_840
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_874
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_874
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	je	.label_874
	mov	qword ptr [rbp - 0x48], 1
	jmp	.label_865
.label_874:
	mov	dword ptr [rbp - 4], 4
	jmp	.label_837
.label_865:
	jmp	.label_845
.label_840:
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_892
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	je	.label_833
	mov	dword ptr [rbp - 4], 4
	jmp	.label_837
.label_833:
	mov	dword ptr [rbp - 0x4c], 1
.label_892:
	jmp	.label_845
.label_845:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_848
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
	jmp	.label_837
.label_848:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_855
	mov	dword ptr [rbp - 0x50], 0x400
	mov	dword ptr [rbp - 0x54], 1
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	jne	.label_839
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_837
.label_839:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x64], ecx
	mov	dword ptr [rbp - 0x68], edx
	je	.label_846
	jmp	.label_881
.label_881:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x6c], eax
	je	.label_846
	jmp	.label_880
.label_880:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x70], eax
	je	.label_846
	jmp	.label_887
.label_887:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x74], eax
	je	.label_846
	jmp	.label_891
.label_891:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x78], eax
	je	.label_846
	jmp	.label_835
.label_835:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x7c], eax
	je	.label_846
	jmp	.label_842
.label_842:
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, -0x59
	sub	eax, 2
	mov	dword ptr [rbp - 0x80], eax
	jb	.label_846
	jmp	.label_850
.label_850:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x84], eax
	je	.label_846
	jmp	.label_877
.label_877:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0x88], eax
	je	.label_846
	jmp	.label_859
.label_859:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_846
	jmp	.label_864
.label_864:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x90], eax
	jne	.label_853
	jmp	.label_846
.label_846:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x30]
	call	strchr
	cmp	rax, 0
	je	.label_852
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	edx, ecx
	sub	edx, 0x42
	mov	dword ptr [rbp - 0x94], ecx
	mov	dword ptr [rbp - 0x98], edx
	je	.label_878
	jmp	.label_884
.label_884:
	mov	eax, dword ptr [rbp - 0x94]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_878
	jmp	.label_889
.label_889:
	mov	eax, dword ptr [rbp - 0x94]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xa0], eax
	jne	.label_847
	jmp	.label_894
.label_894:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x42
	jne	.label_834
	mov	eax, dword ptr [rbp - 0x54]
	add	eax, 2
	mov	dword ptr [rbp - 0x54], eax
.label_834:
	jmp	.label_847
.label_878:
	mov	dword ptr [rbp - 0x50], 0x3e8
	mov	eax, dword ptr [rbp - 0x54]
	add	eax, 1
	mov	dword ptr [rbp - 0x54], eax
.label_847:
	jmp	.label_852
.label_852:
	jmp	.label_853
.label_853:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x42
	mov	dword ptr [rbp - 0xa4], ecx
	mov	dword ptr [rbp - 0xa8], edx
	je	.label_854
	jmp	.label_860
.label_860:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x45
	mov	dword ptr [rbp - 0xac], eax
	je	.label_862
	jmp	.label_868
.label_868:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0xb0], eax
	je	.label_866
	jmp	.label_867
.label_867:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_875
	jmp	.label_879
.label_879:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0xb8], eax
	je	.label_876
	jmp	.label_883
.label_883:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0xbc], eax
	je	.label_858
	jmp	.label_888
.label_888:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0xc0], eax
	je	.label_882
	jmp	.label_893
.label_893:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x59
	mov	dword ptr [rbp - 0xc4], eax
	je	.label_863
	jmp	.label_841
.label_841:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x5a
	mov	dword ptr [rbp - 0xc8], eax
	je	.label_844
	jmp	.label_851
.label_851:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x62
	mov	dword ptr [rbp - 0xcc], eax
	je	.label_870
	jmp	.label_856
.label_856:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0xd0], eax
	je	.label_873
	jmp	.label_861
.label_861:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0xd4], eax
	je	.label_866
	jmp	.label_869
.label_869:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xd8], eax
	je	.label_875
	jmp	.label_872
.label_872:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xdc], eax
	je	.label_876
	jmp	.label_849
.label_849:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xe0], eax
	je	.label_882
	jmp	.label_885
.label_885:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x77
	mov	dword ptr [rbp - 0xe4], eax
	je	.label_886
	jmp	.label_890
.label_870:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x200
	call	bkm_scale
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_836
.label_854:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x400
	call	bkm_scale
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_836
.label_873:
	mov	dword ptr [rbp - 0x58], 0
	jmp	.label_836
.label_862:
	lea	rdi, [rbp - 0x48]
	mov	edx, 6
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_836
.label_866:
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_836
.label_875:
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_836
.label_876:
	lea	rdi, [rbp - 0x48]
	mov	edx, 2
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_836
.label_858:
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_836
.label_882:
	lea	rdi, [rbp - 0x48]
	mov	edx, 4
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_836
.label_886:
	lea	rdi, [rbp - 0x48]
	mov	esi, 2
	call	bkm_scale
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_836
.label_863:
	lea	rdi, [rbp - 0x48]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_836
.label_844:
	lea	rdi, [rbp - 0x48]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_836
.label_890:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_837
.label_836:
	mov	eax, dword ptr [rbp - 0x58]
	or	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x4c], eax
	mov	eax, dword ptr [rbp - 0x54]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rcx]
	movsxd	rsi, eax
	add	rdx, rsi
	mov	qword ptr [rcx], rdx
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx]
	cmp	byte ptr [rcx], 0
	je	.label_843
	mov	eax, dword ptr [rbp - 0x4c]
	or	eax, 2
	mov	dword ptr [rbp - 0x4c], eax
.label_843:
	jmp	.label_855
.label_855:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
.label_837:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xf0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ab80

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	push	rbp
	mov	rbp, rsp
	movabs	rax, 0x8000000000000000
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi]
	movsxd	rcx, dword ptr [rbp - 0x14]
	cqo	
	idiv	rcx
	cmp	rdi, rax
	jge	.label_895
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 1
	jmp	.label_896
.label_895:
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0x14]
	cqo	
	idiv	rcx
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx]
	jge	.label_897
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 1
	jmp	.label_896
.label_897:
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_896:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ac30

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	dword ptr [rbp - 0x10], edx
	mov	dword ptr [rbp - 0x14], 0
.label_899:
	mov	eax, dword ptr [rbp - 0x10]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x10], ecx
	cmp	eax, 0
	je	.label_898
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	bkm_scale
	or	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_899
.label_898:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ac80

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x100
	xor	eax, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	dword ptr [rbp - 0x4c], 0
	cmp	eax, dword ptr [rbp - 0x1c]
	jg	.label_936
	cmp	dword ptr [rbp - 0x1c], 0x24
	jg	.label_936
	jmp	.label_948
.label_936:
	movabs	rdi, OFFSET FLAT:.str_7
	movabs	rsi, OFFSET FLAT:.str.1_7
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
.label_948:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_957
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_961
.label_957:
	lea	rax, [rbp - 0x38]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_961
.label_961:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x40], rax
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x59], cl
.label_927:
	movzx	eax, byte ptr [rbp - 0x59]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x78], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x2000
	cmp	edx, 0
	je	.label_919
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x59], dl
	jmp	.label_927
.label_919:
	movzx	eax, byte ptr [rbp - 0x59]
	cmp	eax, 0x2d
	jne	.label_947
	mov	dword ptr [rbp - 4], 4
	jmp	.label_915
.label_947:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x1c]
	call	strtoumax
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_941
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_905
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_905
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	je	.label_905
	mov	qword ptr [rbp - 0x48], 1
	jmp	.label_960
.label_905:
	mov	dword ptr [rbp - 4], 4
	jmp	.label_915
.label_960:
	jmp	.label_903
.label_941:
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_906
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	je	.label_914
	mov	dword ptr [rbp - 4], 4
	jmp	.label_915
.label_914:
	mov	dword ptr [rbp - 0x4c], 1
.label_906:
	jmp	.label_903
.label_903:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_918
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
	jmp	.label_915
.label_918:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_929
	mov	dword ptr [rbp - 0x60], 0x400
	mov	dword ptr [rbp - 0x64], 1
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	jne	.label_939
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_915
.label_939:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x7c], ecx
	mov	dword ptr [rbp - 0x80], edx
	je	.label_902
	jmp	.label_953
.label_953:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x84], eax
	je	.label_902
	jmp	.label_958
.label_958:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x88], eax
	je	.label_902
	jmp	.label_901
.label_901:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_902
	jmp	.label_911
.label_911:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x90], eax
	je	.label_902
	jmp	.label_917
.label_917:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x94], eax
	je	.label_902
	jmp	.label_921
.label_921:
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, -0x59
	sub	eax, 2
	mov	dword ptr [rbp - 0x98], eax
	jb	.label_902
	jmp	.label_928
.label_928:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_902
	jmp	.label_951
.label_951:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_902
	jmp	.label_925
.label_925:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_902
	jmp	.label_942
.label_942:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xa8], eax
	jne	.label_932
	jmp	.label_902
.label_902:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x30]
	call	strchr
	cmp	rax, 0
	je	.label_930
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	edx, ecx
	sub	edx, 0x42
	mov	dword ptr [rbp - 0xac], ecx
	mov	dword ptr [rbp - 0xb0], edx
	je	.label_954
	jmp	.label_963
.label_963:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_954
	jmp	.label_908
.label_908:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xb8], eax
	jne	.label_926
	jmp	.label_909
.label_909:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x42
	jne	.label_964
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 2
	mov	dword ptr [rbp - 0x64], eax
.label_964:
	jmp	.label_926
.label_954:
	mov	dword ptr [rbp - 0x60], 0x3e8
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 1
	mov	dword ptr [rbp - 0x64], eax
.label_926:
	jmp	.label_930
.label_930:
	jmp	.label_932
.label_932:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x42
	mov	dword ptr [rbp - 0xbc], ecx
	mov	dword ptr [rbp - 0xc0], edx
	je	.label_934
	jmp	.label_938
.label_938:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x45
	mov	dword ptr [rbp - 0xc4], eax
	je	.label_900
	jmp	.label_943
.label_943:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0xc8], eax
	je	.label_940
	jmp	.label_950
.label_950:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0xcc], eax
	je	.label_946
	jmp	.label_955
.label_955:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0xd0], eax
	je	.label_952
	jmp	.label_962
.label_962:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0xd4], eax
	je	.label_965
	jmp	.label_907
.label_907:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0xd8], eax
	je	.label_933
	jmp	.label_916
.label_916:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x59
	mov	dword ptr [rbp - 0xdc], eax
	je	.label_924
	jmp	.label_922
.label_922:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x5a
	mov	dword ptr [rbp - 0xe0], eax
	je	.label_949
	jmp	.label_920
.label_920:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x62
	mov	dword ptr [rbp - 0xe4], eax
	je	.label_931
	jmp	.label_935
.label_935:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0xe8], eax
	je	.label_937
	jmp	.label_959
.label_959:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0xec], eax
	je	.label_940
	jmp	.label_944
.label_944:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xf0], eax
	je	.label_946
	jmp	.label_945
.label_945:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xf4], eax
	je	.label_952
	jmp	.label_956
.label_956:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xf8], eax
	je	.label_933
	jmp	.label_913
.label_913:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x77
	mov	dword ptr [rbp - 0xfc], eax
	je	.label_904
	jmp	.label_910
.label_931:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x200
	call	bkm_scale_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_912
.label_934:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x400
	call	bkm_scale_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_912
.label_937:
	mov	dword ptr [rbp - 0x68], 0
	jmp	.label_912
.label_900:
	lea	rdi, [rbp - 0x48]
	mov	edx, 6
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_912
.label_940:
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_912
.label_946:
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_912
.label_952:
	lea	rdi, [rbp - 0x48]
	mov	edx, 2
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_912
.label_965:
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_912
.label_933:
	lea	rdi, [rbp - 0x48]
	mov	edx, 4
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_912
.label_904:
	lea	rdi, [rbp - 0x48]
	mov	esi, 2
	call	bkm_scale_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_912
.label_924:
	lea	rdi, [rbp - 0x48]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_912
.label_949:
	lea	rdi, [rbp - 0x48]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_912
.label_910:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_915
.label_912:
	mov	eax, dword ptr [rbp - 0x68]
	or	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x4c], eax
	mov	eax, dword ptr [rbp - 0x64]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rcx]
	movsxd	rsi, eax
	add	rdx, rsi
	mov	qword ptr [rcx], rdx
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx]
	cmp	byte ptr [rcx], 0
	je	.label_923
	mov	eax, dword ptr [rbp - 0x4c]
	or	eax, 2
	mov	dword ptr [rbp - 0x4c], eax
.label_923:
	jmp	.label_929
.label_929:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
.label_915:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x100
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b3b0

	.globl bkm_scale_0
	.type bkm_scale_0, @function
bkm_scale_0:
	push	rbp
	mov	rbp, rsp
	mov	rax, -1
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	movsxd	rdi, dword ptr [rbp - 0x14]
	xor	esi, esi
	mov	edx, esi
	div	rdi
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rdi]
	jae	.label_966
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], -1
	mov	dword ptr [rbp - 4], 1
	jmp	.label_967
.label_966:
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_967:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b410

	.globl bkm_scale_by_power_0
	.type bkm_scale_by_power_0, @function
bkm_scale_by_power_0:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	dword ptr [rbp - 0x10], edx
	mov	dword ptr [rbp - 0x14], 0
.label_969:
	mov	eax, dword ptr [rbp - 0x10]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x10], ecx
	cmp	eax, 0
	je	.label_968
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	bkm_scale_0
	or	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_969
.label_968:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b460

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
	jne	.label_970
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_970:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	mbrtowc
	mov	rcx, -2
	mov	qword ptr [rbp - 0x30], rax
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_971
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_971
	xor	edi, edi
	call	hard_locale
	test	al, 1
	jne	.label_971
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], edx
	mov	qword ptr [rbp - 8], 1
	jmp	.label_972
.label_971:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_972:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b510

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
	ja	.label_973
	jmp	.label_975
.label_975:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	add	eax, 0x2001a
	mov	dword ptr [rbp - 4], eax
	jmp	.label_974
.label_973:
	jmp	.label_974
.label_974:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b560

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
	jne	.label_976
	mov	dword ptr [rbp - 4], 0
	jmp	.label_980
.label_976:
	jmp	.label_977
.label_977:
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
	jne	.label_979
	jmp	.label_978
.label_979:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	je	.label_977
.label_978:
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_980:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b620

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
	jne	.label_981
	test	byte ptr [rbp - 0x13], 1
	je	.label_983
	test	byte ptr [rbp - 0x11], 1
	jne	.label_981
	call	__errno_location
	cmp	dword ptr [rax], 9
	je	.label_983
.label_981:
	test	byte ptr [rbp - 0x13], 1
	jne	.label_984
	call	__errno_location
	mov	dword ptr [rax], 0
.label_984:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_982
.label_983:
	mov	dword ptr [rbp - 4], 0
.label_982:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b6d0

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
	je	.label_985
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str_8
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_987
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str.1_8
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_986
.label_987:
	mov	byte ptr [rbp - 5], 0
.label_986:
	jmp	.label_985
.label_985:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b750

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
	jne	.label_988
	movabs	rax, OFFSET FLAT:.str_0
	mov	qword ptr [rbp - 8], rax
.label_988:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_989
	movabs	rax, OFFSET FLAT:.str.1_9
	mov	qword ptr [rbp - 8], rax
.label_989:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b7b0

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
	jge	.label_993
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	jmp	.label_990
.label_993:
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	je	.label_994
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_992
.label_994:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_992
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_992:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_991
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_991:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_990:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b880

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_995
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_996
.label_995:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	jmp	.label_997
.label_996:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_997:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b8e0

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
	je	.label_998
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fseeko
	mov	dword ptr [rbp - 0xc], eax
.label_998:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b920

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
	jne	.label_999
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_999
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_999
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_1001
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1000
.label_1001:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x90], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1000
.label_999:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fseeko
	mov	dword ptr [rbp - 4], eax
.label_1000:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
