	.section	.text
	.align	32
	#Procedure 0x4019c0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0xb8
	mov	dword ptr [rbp - 0xc], edi
	cmp	dword ptr [rbp - 0xc], 0
	je	.label_26
	jmp	.label_33
.label_33:
	movabs	rdi, OFFSET FLAT:label_36
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x18], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_12
.label_26:
	movabs	rdi, OFFSET FLAT:label_14
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_22
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x24], eax
	call	emit_mandatory_arg_note
	movabs	rdi, OFFSET FLAT:label_37
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_9
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_31
	mov	dword ptr [rbp - 0x2c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_28
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_39
	mov	dword ptr [rbp - 0x34], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_11
	mov	dword ptr [rbp - 0x38], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_19
	mov	dword ptr [rbp - 0x3c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_30
	mov	dword ptr [rbp - 0x40], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_38
	mov	dword ptr [rbp - 0x44], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_13
	mov	dword ptr [rbp - 0x48], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_20
	mov	dword ptr [rbp - 0x4c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_32
	mov	dword ptr [rbp - 0x50], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_41
	mov	dword ptr [rbp - 0x54], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_15
	mov	dword ptr [rbp - 0x58], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_25
	mov	dword ptr [rbp - 0x5c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_35
	mov	dword ptr [rbp - 0x60], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_42
	mov	dword ptr [rbp - 0x64], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_17
	mov	dword ptr [rbp - 0x68], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_27
	mov	dword ptr [rbp - 0x6c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_21
	mov	dword ptr [rbp - 0x70], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_29
	mov	dword ptr [rbp - 0x74], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_18
	mov	dword ptr [rbp - 0x78], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_24
	mov	dword ptr [rbp - 0x7c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_40
	mov	dword ptr [rbp - 0x80], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_34
	mov	dword ptr [rbp - 0x84], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_23
	mov	dword ptr [rbp - 0x88], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_16
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
	movabs	rdi, OFFSET FLAT:label_10
	mov	dword ptr [rbp - 0x9c], eax
	call	emit_ancillary_info
.label_12:
	mov	edi, dword ptr [rbp - 0xc]
	call	exit
	.section	.text
	.align	32
	#Procedure 0x401e80

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_43
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401eb0

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
.label_52:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_51
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_51:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_44
	jmp	.label_53
.label_44:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_52
.label_53:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_54
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_54:
	movabs	rdi, OFFSET FLAT:label_58
	call	gettext
	movabs	rsi, OFFSET FLAT:label_48
	movabs	rdx, OFFSET FLAT:label_49
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
	je	.label_55
	movabs	rsi, OFFSET FLAT:label_47
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_55
	movabs	rdi, OFFSET FLAT:label_56
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_55:
	movabs	rdi, OFFSET FLAT:label_50
	call	gettext
	movabs	rsi, OFFSET FLAT:label_49
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_57
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:label_45
	movabs	rsi, OFFSET FLAT:label_46
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
	.align	32
	#Procedure 0x402050

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
	movabs	rsi, OFFSET FLAT:label_45
	call	setlocale
	movabs	rdi, OFFSET FLAT:label_90
	movabs	rsi, OFFSET FLAT:label_91
	cmp	rax, 0
	setne	cl
	xor	cl, 0xff
	xor	cl, 0xff
	and	cl, 1
	mov	byte ptr [rbp - 0x15], cl
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:label_90
	mov	qword ptr [rbp - 0x48], rax
	call	textdomain
	mov	edi, 0x10000
	mov	qword ptr [rbp - 0x50], rax
	call	rpl_nl_langinfo
	mov	qword ptr [word ptr [decimal_point]],  rax
	cmp	qword ptr [word ptr [decimal_point]],  0
	je	.label_111
	mov	rdi,  qword ptr [word ptr [decimal_point]]
	call	strlen
	cmp	rax, 0
	jne	.label_113
.label_111:
	movabs	rax, OFFSET FLAT:label_115
	mov	qword ptr [word ptr [decimal_point]],  rax
.label_113:
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
.label_124:
	movabs	rdx, OFFSET FLAT:label_127
	movabs	rcx, OFFSET FLAT:longopts
	xor	eax, eax
	mov	r8d, eax
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], -1
	jne	.label_132
	jmp	.label_134
.label_132:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	mov	dword ptr [rbp - 0x60], eax
	mov	dword ptr [rbp - 0x64], ecx
	je	.label_136
	jmp	.label_141
.label_141:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0xffffff7e
	mov	dword ptr [rbp - 0x68], eax
	je	.label_150
	jmp	.label_146
.label_146:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x64
	mov	dword ptr [rbp - 0x6c], eax
	je	.label_147
	jmp	.label_148
.label_148:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x7a
	mov	dword ptr [rbp - 0x70], eax
	je	.label_149
	jmp	.label_151
.label_151:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x80
	mov	dword ptr [rbp - 0x74], eax
	je	.label_152
	jmp	.label_153
.label_153:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x81
	mov	dword ptr [rbp - 0x78], eax
	je	.label_154
	jmp	.label_61
.label_61:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x82
	mov	dword ptr [rbp - 0x7c], eax
	je	.label_65
	jmp	.label_66
.label_66:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x83
	mov	dword ptr [rbp - 0x80], eax
	je	.label_67
	jmp	.label_68
.label_68:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x84
	mov	dword ptr [rbp - 0x84], eax
	je	.label_70
	jmp	.label_74
.label_74:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x85
	mov	dword ptr [rbp - 0x88], eax
	je	.label_76
	jmp	.label_81
.label_81:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x86
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_83
	jmp	.label_85
.label_85:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x87
	mov	dword ptr [rbp - 0x90], eax
	je	.label_87
	jmp	.label_93
.label_93:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x88
	mov	dword ptr [rbp - 0x94], eax
	je	.label_95
	jmp	.label_98
.label_98:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x89
	mov	dword ptr [rbp - 0x98], eax
	je	.label_101
	jmp	.label_103
.label_103:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x8a
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_105
	jmp	.label_107
.label_107:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x8b
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_108
	jmp	.label_112
.label_112:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x8c
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_60
	jmp	.label_116
.label_116:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x8d
	mov	dword ptr [rbp - 0xa8], eax
	je	.label_117
	jmp	.label_120
.label_152:
	movabs	rdi, OFFSET FLAT:label_122
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
	jmp	.label_59
.label_154:
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	unit_to_umax
	mov	qword ptr [word ptr [from_unit_size]],  rax
	jmp	.label_59
.label_65:
	movabs	rdi, OFFSET FLAT:label_142
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
	jmp	.label_59
.label_67:
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	unit_to_umax
	mov	qword ptr [word ptr [to_unit_size]],  rax
	jmp	.label_59
.label_70:
	movabs	rdi, OFFSET FLAT:label_75
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
	jmp	.label_59
.label_83:
	mov	dword ptr [dword ptr [grouping]],  1
	jmp	.label_59
.label_87:
	xor	eax, eax
	mov	esi, eax
	mov	edx, 0xa
	movabs	rcx, OFFSET FLAT:padding_width
	movabs	r8, OFFSET FLAT:label_45
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	xstrtol
	cmp	eax, 0
	jne	.label_94
	cmp	qword ptr [word ptr [padding_width]],  0
	jne	.label_97
.label_94:
	movabs	rdi, OFFSET FLAT:label_99
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
.label_97:
	cmp	qword ptr [word ptr [padding_width]],  0
	jge	.label_109
	xor	eax, eax
	mov	ecx, eax
	mov	dword ptr [dword ptr [padding_alignment]],  0
	sub	rcx,  qword ptr [word ptr [padding_width]]
	mov	qword ptr [word ptr [padding_width]],  rcx
.label_109:
	jmp	.label_59
.label_95:
	cmp	qword ptr [word ptr [n_frp]],  0
	je	.label_110
	movabs	rdi, OFFSET FLAT:label_121
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_110:
	mov	esi, 1
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	set_fields
	jmp	.label_59
.label_147:
	mov	rax,  qword ptr [word ptr [optarg]]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_80
	mov	rax,  qword ptr [word ptr [optarg]]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_80
	movabs	rdi, OFFSET FLAT:label_139
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_80:
	mov	rax,  qword ptr [word ptr [optarg]]
	movsx	ecx, byte ptr [rax]
	mov	dword ptr [dword ptr [delimiter]],  ecx
	jmp	.label_59
.label_149:
	mov	byte ptr [byte ptr [line_delim]],  0
	jmp	.label_59
.label_76:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [word ptr [suffix]],  rax
	jmp	.label_59
.label_101:
	mov	byte ptr [byte ptr [debug]],  1
	jmp	.label_59
.label_105:
	mov	byte ptr [byte ptr [dev_debug]],  1
	mov	byte ptr [byte ptr [debug]],  1
	jmp	.label_59
.label_108:
	cmp	qword ptr [word ptr [optarg]],  0
	je	.label_63
	xor	eax, eax
	mov	esi, eax
	mov	edx, 0xa
	movabs	rcx, OFFSET FLAT:header
	movabs	r8, OFFSET FLAT:label_45
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	xstrtoumax
	cmp	eax, 0
	jne	.label_71
	cmp	qword ptr [word ptr [header]],  0
	jne	.label_73
.label_71:
	movabs	rdi, OFFSET FLAT:label_78
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
.label_73:
	jmp	.label_135
.label_63:
	mov	qword ptr [word ptr [header]],  1
.label_135:
	jmp	.label_59
.label_60:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [word ptr [format_str]],  rax
	jmp	.label_59
.label_117:
	movabs	rdi, OFFSET FLAT:label_126
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
	jmp	.label_59
.label_150:
	xor	edi, edi
	call	usage
.label_136:
	movabs	rsi, OFFSET FLAT:label_10
	movabs	rdx, OFFSET FLAT:label_48
	movabs	r8, OFFSET FLAT:label_118
	xor	eax, eax
	mov	r9d, eax
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	rcx,  qword ptr [word ptr [Version]]
	mov	al, 0
	call	version_etc
	xor	edi, edi
	call	exit
.label_120:
	mov	edi, 1
	call	usage
.label_59:
	jmp	.label_124
.label_134:
	cmp	qword ptr [word ptr [format_str]],  0
	je	.label_130
	cmp	dword ptr [dword ptr [grouping]],  0
	je	.label_130
	movabs	rdi, OFFSET FLAT:label_137
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_130:
	test	byte ptr [byte ptr [debug]],  1
	je	.label_143
	test	byte ptr [rbp - 0x15], 1
	jne	.label_143
	movabs	rdi, OFFSET FLAT:label_86
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
.label_143:
	test	byte ptr [byte ptr [debug]],  1
	je	.label_62
	cmp	dword ptr [dword ptr [scale_from]],  0
	jne	.label_62
	cmp	dword ptr [dword ptr [scale_to]],  0
	jne	.label_62
	cmp	dword ptr [dword ptr [grouping]],  0
	jne	.label_62
	cmp	qword ptr [word ptr [padding_width]],  0
	jne	.label_62
	cmp	qword ptr [word ptr [format_str]],  0
	jne	.label_62
	movabs	rdi, OFFSET FLAT:label_69
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
.label_62:
	cmp	qword ptr [word ptr [format_str]],  0
	je	.label_77
	mov	rdi,  qword ptr [word ptr [format_str]]
	call	parse_format_string
.label_77:
	cmp	dword ptr [dword ptr [grouping]],  0
	je	.label_82
	cmp	dword ptr [dword ptr [scale_to]],  0
	je	.label_84
	movabs	rdi, OFFSET FLAT:label_89
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_84:
	test	byte ptr [byte ptr [debug]],  1
	je	.label_104
	mov	edi, 0x10001
	call	rpl_nl_langinfo
	mov	rdi, rax
	call	strlen
	cmp	rax, 0
	jne	.label_104
	movabs	rdi, OFFSET FLAT:label_106
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
.label_104:
	jmp	.label_82
.label_82:
	mov	rdi,  qword ptr [word ptr [padding_width]]
	call	setup_padding_buffer
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [word ptr [padding_width]],  0
	mov	byte ptr [rbp - 0xb9], cl
	jne	.label_114
	cmp	dword ptr [dword ptr [delimiter]],  0x80
	sete	al
	mov	byte ptr [rbp - 0xb9], al
.label_114:
	mov	al, byte ptr [rbp - 0xb9]
	and	al, 1
	movzx	ecx, al
	mov	dword ptr [dword ptr [auto_padding]],  ecx
	cmp	dword ptr [dword ptr [inval_style]],  0
	je	.label_123
	mov	dword ptr [dword ptr [conv_exit_code]],  0
.label_123:
	mov	eax, dword ptr [rbp - 8]
	cmp	eax,  dword ptr [dword ptr [optind]]
	jle	.label_128
	test	byte ptr [byte ptr [debug]],  1
	je	.label_131
	cmp	qword ptr [word ptr [header]],  0
	je	.label_131
	movabs	rdi, OFFSET FLAT:label_138
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
.label_131:
	jmp	.label_144
.label_144:
	mov	eax,  dword ptr [dword ptr [optind]]
	cmp	eax, dword ptr [rbp - 8]
	jge	.label_145
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
	jmp	.label_144
.label_145:
	jmp	.label_72
.label_128:
	mov	qword ptr [rbp - 0x28], 0
	mov	qword ptr [rbp - 0x30], 0
.label_88:
	xor	eax, eax
	mov	cl, al
	mov	rdx,  qword ptr [word ptr [header]]
	mov	rsi, rdx
	add	rsi, -1
	mov	qword ptr [word ptr [header]],  rsi
	cmp	rdx, 0
	mov	byte ptr [rbp - 0xba], cl
	je	.label_64
	lea	rdi, [rbp - 0x28]
	lea	rsi, [rbp - 0x30]
	movzx	edx,  byte ptr [byte ptr [line_delim]]
	mov	rcx,  qword ptr [word ptr [stdin]]
	call	getdelim
	cmp	rax, 0
	setg	r8b
	mov	byte ptr [rbp - 0xba], r8b
.label_64:
	mov	al, byte ptr [rbp - 0xba]
	test	al, 1
	jne	.label_79
	jmp	.label_96
.label_79:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0xc0], eax
	jmp	.label_88
.label_96:
	jmp	.label_92
.label_92:
	lea	rdi, [rbp - 0x28]
	lea	rsi, [rbp - 0x30]
	movzx	edx,  byte ptr [byte ptr [line_delim]]
	mov	rcx,  qword ptr [word ptr [stdin]]
	call	getdelim
	mov	qword ptr [rbp - 0x38], rax
	cmp	rax, 0
	jle	.label_100
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
	je	.label_102
	mov	rax, qword ptr [rbp - 0x38]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x28]
	mov	byte ptr [rcx + rax], 0
.label_102:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	al, byte ptr [rbp - 0x39]
	and	al, 1
	movzx	esi, al
	call	process_line
	and	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_92
.label_100:
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	ferror_unlocked
	cmp	eax, 0
	je	.label_119
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_125
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xc4], esi
	call	gettext
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xc4]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_119:
	jmp	.label_72
.label_72:
	test	byte ptr [byte ptr [debug]],  1
	je	.label_129
	cmp	dword ptr [rbp - 0x14], 0
	jne	.label_129
	movabs	rdi, OFFSET FLAT:label_133
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
.label_129:
	mov	dword ptr [rbp - 0x40], 0
	cmp	dword ptr [rbp - 0x14], 0
	jne	.label_140
	cmp	dword ptr [dword ptr [inval_style]],  2
	je	.label_140
	cmp	dword ptr [dword ptr [inval_style]],  3
	je	.label_140
	mov	dword ptr [rbp - 0x40], 2
.label_140:
	mov	eax, dword ptr [rbp - 0x40]
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402be0

	.globl unit_to_umax
	.type unit_to_umax, @function
unit_to_umax:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	movabs	rax, OFFSET FLAT:label_160
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
	je	.label_156
	mov	rax, qword ptr [rbp - 0x28]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	movsx	edi, byte ptr [rcx + rax]
	call	c_isdigit
	test	al, 1
	jne	.label_156
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
	jne	.label_158
	mov	eax, 2
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x28]
	ja	.label_158
	mov	rax, qword ptr [rbp - 0x30]
	movsx	edi, byte ptr [rax - 1]
	call	c_isdigit
	test	al, 1
	jne	.label_158
	mov	rax, qword ptr [rbp - 0x30]
	mov	byte ptr [rax], 0
	jmp	.label_159
.label_158:
	movabs	rax, OFFSET FLAT:label_155
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
.label_159:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
.label_156:
	lea	rsi, [rbp - 0x30]
	mov	edx, 0xa
	lea	rcx, [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x40]
	call	xstrtoumax
	mov	dword ptr [rbp - 0xc], eax
	cmp	dword ptr [rbp - 0xc], 0
	jne	.label_161
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_161
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_162
.label_161:
	mov	rdi, qword ptr [rbp - 0x20]
	call	free
	movabs	rdi, OFFSET FLAT:label_157
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
.label_162:
	mov	rdi, qword ptr [rbp - 0x20]
	call	free
	mov	rax, qword ptr [rbp - 0x38]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402da0

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
.label_188:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 8]
	movsx	eax, byte ptr [rsi + rdx]
	cmp	eax, 0x25
	mov	byte ptr [rbp - 0x41], cl
	jne	.label_207
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x25
	setne	sil
	mov	byte ptr [rbp - 0x41], sil
.label_207:
	mov	al, byte ptr [rbp - 0x41]
	xor	al, 0xff
	test	al, 1
	jne	.label_163
	jmp	.label_166
.label_163:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	byte ptr [rcx + rax], 0
	jne	.label_167
	movabs	rdi, OFFSET FLAT:label_175
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
.label_167:
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
	jmp	.label_188
.label_166:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
.label_195:
	movabs	rsi, OFFSET FLAT:label_203
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
	jne	.label_201
	mov	dword ptr [dword ptr [grouping]],  1
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_178
.label_201:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x30
	jne	.label_212
	mov	byte ptr [rbp - 0x31], 1
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_165
.label_212:
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_173
	jmp	.label_177
.label_173:
	jmp	.label_165
.label_165:
	jmp	.label_178
.label_178:
	jmp	.label_195
.label_177:
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
	jne	.label_190
	movabs	rdi, OFFSET FLAT:label_193
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
.label_190:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, qword ptr [rbp - 0x10]
	cmp	rax, rcx
	je	.label_191
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_191
	test	byte ptr [byte ptr [debug]],  1
	je	.label_172
	cmp	qword ptr [word ptr [padding_width]],  0
	je	.label_172
	test	byte ptr [rbp - 0x31], 1
	je	.label_209
	cmp	qword ptr [rbp - 0x28], 0
	jg	.label_172
.label_209:
	movabs	rdi, OFFSET FLAT:label_213
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
.label_172:
	cmp	qword ptr [rbp - 0x28], 0
	jge	.label_169
	xor	eax, eax
	mov	ecx, eax
	mov	dword ptr [dword ptr [padding_alignment]],  0
	sub	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [word ptr [padding_width]],  rcx
	jmp	.label_174
.label_169:
	test	byte ptr [rbp - 0x31], 1
	je	.label_180
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [word ptr [zero_padding_width]],  rax
	jmp	.label_187
.label_180:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [word ptr [padding_width]],  rax
.label_187:
	jmp	.label_174
.label_174:
	jmp	.label_191
.label_191:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	jne	.label_192
	movabs	rdi, OFFSET FLAT:label_199
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
.label_192:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2e
	jne	.label_204
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
	je	.label_170
	cmp	qword ptr [word ptr [user_precision]],  0
	jl	.label_170
	mov	rax, -1
	cmp	rax,  qword ptr [word ptr [user_precision]]
	jb	.label_170
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
	jne	.label_170
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2b
	jne	.label_194
.label_170:
	movabs	rdi, OFFSET FLAT:label_196
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
.label_194:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x10], rax
.label_204:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x66
	je	.label_206
	movabs	rdi, OFFSET FLAT:label_208
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
.label_206:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rax
.label_200:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	je	.label_176
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x25
	jne	.label_179
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x25
	je	.label_179
	movabs	rdi, OFFSET FLAT:label_189
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
.label_179:
	jmp	.label_198
.label_198:
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
	jmp	.label_200
.label_176:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_205
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	call	xstrndup
	mov	qword ptr [word ptr [format_str_prefix]],  rax
.label_205:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	je	.label_210
	mov	rax, qword ptr [rbp - 8]
	add	rax, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	xstrdup
	mov	qword ptr [word ptr [format_str_suffix]],  rax
.label_210:
	jmp	.label_168
.label_168:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_171
	xor	edi, edi
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x88], rax
	call	quote_n
	movabs	rsi, OFFSET FLAT:label_181
	movabs	rcx, OFFSET FLAT:label_182
	movabs	rdx, OFFSET FLAT:label_183
	movabs	r8, OFFSET FLAT:label_184
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
	je	.label_185
	mov	rax,  qword ptr [word ptr [format_str_prefix]]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_202
.label_185:
	movabs	rax, OFFSET FLAT:label_45
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_202
.label_202:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	edi, 1
	mov	rsi, rax
	call	quote_n
	cmp	qword ptr [word ptr [format_str_suffix]],  0
	mov	qword ptr [rbp - 0xb8], rax
	je	.label_211
	mov	rax,  qword ptr [word ptr [format_str_suffix]]
	mov	qword ptr [rbp - 0xc0], rax
	jmp	.label_164
.label_211:
	movabs	rax, OFFSET FLAT:label_45
	mov	qword ptr [rbp - 0xc0], rax
	jmp	.label_164
.label_164:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	edi, 2
	mov	rsi, rax
	call	quote_n
	movabs	rsi, OFFSET FLAT:label_186
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
.label_171:
	jmp	.label_197
.label_197:
	add	rsp, 0xe0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4034b0

	.globl setup_padding_buffer
	.type setup_padding_buffer, @function
setup_padding_buffer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi,  qword ptr [word ptr [padding_buffer_size]]
	cmp	rdi, qword ptr [rbp - 8]
	jbe	.label_214
	jmp	.label_215
.label_214:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [word ptr [padding_buffer_size]],  rax
	mov	rdi,  qword ptr [word ptr [padding_buffer]]
	mov	rsi,  qword ptr [word ptr [padding_buffer_size]]
	call	xrealloc
	mov	qword ptr [word ptr [padding_buffer]],  rax
.label_215:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403510

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
.label_224:
	lea	rdi, [rbp - 8]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	call	next_field
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_217
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax], 0
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	call	process_field
	test	al, 1
	jne	.label_219
	mov	byte ptr [rbp - 0x21], 0
.label_219:
	cmp	dword ptr [dword ptr [delimiter]],  0x80
	jne	.label_222
	mov	eax, 0x20
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_223
.label_222:
	mov	eax,  dword ptr [dword ptr [delimiter]]
	mov	dword ptr [rbp - 0x28], eax
.label_223:
	mov	eax, dword ptr [rbp - 0x28]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	edi, eax
	call	fputc_unlocked
	mov	rsi, qword ptr [rbp - 8]
	add	rsi, 1
	mov	qword ptr [rbp - 8], rsi
	mov	dword ptr [rbp - 0x2c], eax
	jmp	.label_220
.label_217:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	call	process_field
	test	al, 1
	jne	.label_221
	mov	byte ptr [rbp - 0x21], 0
.label_221:
	jmp	.label_216
.label_220:
	jmp	.label_224
.label_216:
	test	byte ptr [rbp - 9], 1
	je	.label_218
	movzx	edi,  byte ptr [byte ptr [line_delim]]
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x30], eax
.label_218:
	mov	al, byte ptr [rbp - 0x21]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403620

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
	je	.label_234
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx,  dword ptr [dword ptr [delimiter]]
	je	.label_235
	jmp	.label_231
.label_231:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	movsx	eax, byte ptr [rdx]
	cmp	eax, 0
	mov	byte ptr [rbp - 0x19], cl
	je	.label_236
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx,  dword ptr [dword ptr [delimiter]]
	setne	dl
	mov	byte ptr [rbp - 0x19], dl
.label_236:
	mov	al, byte ptr [rbp - 0x19]
	test	al, 1
	jne	.label_229
	jmp	.label_233
.label_229:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_231
.label_233:
	jmp	.label_235
.label_235:
	jmp	.label_230
.label_234:
	jmp	.label_232
.label_232:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	movsx	eax, byte ptr [rdx]
	cmp	eax, 0
	mov	byte ptr [rbp - 0x1a], cl
	je	.label_226
	mov	rax, qword ptr [rbp - 0x18]
	movzx	edi, byte ptr [rax]
	call	field_sep
	mov	byte ptr [rbp - 0x1a], al
.label_226:
	mov	al, byte ptr [rbp - 0x1a]
	test	al, 1
	jne	.label_237
	jmp	.label_239
.label_237:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_232
.label_239:
	jmp	.label_227
.label_227:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	movsx	eax, byte ptr [rdx]
	cmp	eax, 0
	mov	byte ptr [rbp - 0x1b], cl
	je	.label_228
	mov	rax, qword ptr [rbp - 0x18]
	movzx	edi, byte ptr [rax]
	call	field_sep
	xor	al, 0xff
	mov	byte ptr [rbp - 0x1b], al
.label_228:
	mov	al, byte ptr [rbp - 0x1b]
	test	al, 1
	jne	.label_238
	jmp	.label_225
.label_238:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_227
.label_225:
	jmp	.label_230
.label_230:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403780

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
	jne	.label_241
	jmp	.label_244
.label_241:
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
	je	.label_242
	fld	xword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, rsp
	fstp	xword ptr [rax]
	call	prepare_padded_number
	cmp	eax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x29], cl
.label_242:
	test	byte ptr [rbp - 0x29], 1
	je	.label_240
	call	print_padded_number
	jmp	.label_243
.label_240:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x30], eax
.label_243:
	jmp	.label_245
.label_244:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x34], eax
.label_245:
	mov	al, byte ptr [rbp - 0x29]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403860

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
	jne	.label_246
	movzx	eax, byte ptr [rbp - 1]
	cmp	eax, 0xa
	sete	cl
	mov	byte ptr [rbp - 0x11], cl
.label_246:
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4038c0

	.globl include_field
	.type include_field, @function
include_field:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi,  qword ptr [word ptr [frp]]
	mov	qword ptr [rbp - 0x18], rdi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_247
	cmp	qword ptr [rbp - 0x10], 1
	sete	al
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_251
.label_247:
	jmp	.label_248
.label_248:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], -1
	je	.label_250
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	ja	.label_249
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	cmp	rax, qword ptr [rbp - 0x10]
	jb	.label_249
	mov	byte ptr [rbp - 1], 1
	jmp	.label_251
.label_249:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_248
.label_250:
	mov	byte ptr [rbp - 1], 0
.label_251:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403950

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
	je	.label_258
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	mov	rdi,  qword ptr [word ptr [suffix]]
	mov	qword ptr [rbp - 0x70], rax
	call	strlen
	mov	rdi, qword ptr [rbp - 0x70]
	cmp	rdi, rax
	jbe	.label_258
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
	jne	.label_267
	mov	rax, qword ptr [rbp - 0x28]
	mov	byte ptr [rax], 0
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_254
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax,  qword ptr [word ptr [suffix]]
	mov	qword ptr [rbp - 0x90], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:label_266
	mov	rdi, qword ptr [rbp - 0x90]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x94], eax
.label_254:
	jmp	.label_273
.label_273:
	jmp	.label_262
.label_267:
	jmp	.label_275
.label_275:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_276
	movabs	rsi, OFFSET FLAT:label_277
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x98], eax
.label_276:
	jmp	.label_259
.label_259:
	jmp	.label_262
.label_262:
	jmp	.label_258
.label_258:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
.label_278:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x30]
	movsx	eax, byte ptr [rdx]
	cmp	eax, 0
	mov	byte ptr [rbp - 0x99], cl
	je	.label_264
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
.label_264:
	mov	al, byte ptr [rbp - 0x99]
	test	al, 1
	jne	.label_252
	jmp	.label_257
.label_252:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_278
.label_257:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rax, rcx
	mov	edx, eax
	mov	dword ptr [rbp - 0x34], edx
	cmp	dword ptr [dword ptr [auto_padding]],  0
	je	.label_260
	cmp	dword ptr [rbp - 0x34], 0
	ja	.label_269
	cmp	qword ptr [rbp - 0x20], 1
	jle	.label_271
.label_269:
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	mov	qword ptr [word ptr [padding_width]],  rax
	mov	rdi,  qword ptr [word ptr [padding_width]]
	call	setup_padding_buffer
	jmp	.label_270
.label_271:
	mov	qword ptr [word ptr [padding_width]],  0
.label_270:
	jmp	.label_255
.label_255:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_256
	movabs	rsi, OFFSET FLAT:label_261
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rdx,  qword ptr [word ptr [padding_width]]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xac], eax
.label_256:
	jmp	.label_253
.label_253:
	jmp	.label_260
.label_260:
	lea	rsi, [rbp - 0x50]
	fldz	
	fstp	xword ptr [rbp - 0x50]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x18]
	call	parse_human_number
	mov	dword ptr [rbp - 0x54], eax
	cmp	dword ptr [rbp - 0x54], 1
	jne	.label_274
	test	byte ptr [byte ptr [debug]],  1
	je	.label_274
	movabs	rdi, OFFSET FLAT:label_279
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
.label_274:
	cmp	qword ptr [word ptr [from_unit_size]],  1
	jne	.label_265
	cmp	qword ptr [word ptr [to_unit_size]],  1
	je	.label_268
.label_265:
	fld	xword ptr [rbp - 0x50]
	mov	rax,  qword ptr [word ptr [rip + from_unit_size]]
	mov	qword ptr [rbp - 0x68], rax
	test	rax, rax
	setns	cl
	movzx	edx, cl
	mov	eax, edx
	fld	dword ptr [dword ptr [+ (rax * 4) + label_272]]
	fild	qword ptr [rbp - 0x68]
	faddp	st(1)
	fmulp	st(1)
	mov	rax,  qword ptr [word ptr [rip + to_unit_size]]
	mov	qword ptr [rbp - 0x60], rax
	test	rax, rax
	setns	cl
	movzx	edx, cl
	mov	eax, edx
	fld	dword ptr [dword ptr [+ (rax * 4) + label_272]]
	fild	qword ptr [rbp - 0x60]
	faddp	st(1)
	fdivp	st(1)
	fstp	xword ptr [rbp - 0x50]
.label_268:
	mov	al, 1
	fld	xword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x10]
	fstp	xword ptr [rcx]
	cmp	dword ptr [rbp - 0x54], 0
	mov	byte ptr [rbp - 0xb9], al
	je	.label_263
	cmp	dword ptr [rbp - 0x54], 1
	sete	al
	mov	byte ptr [rbp - 0xb9], al
.label_263:
	mov	al, byte ptr [rbp - 0xb9]
	and	al, 1
	movzx	eax, al
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403ce0

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
	jne	.label_293
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xd0], rax
	jmp	.label_280
.label_293:
	mov	rax,  qword ptr [word ptr [user_precision]]
	mov	qword ptr [rbp - 0xd0], rax
.label_280:
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
	jne	.label_291
	mov	eax, dword ptr [rbp - 0xbc]
	mov	ecx, eax
	add	rcx, qword ptr [rbp - 0xb8]
	cmp	rcx, 0x12
	jbe	.label_291
	cmp	dword ptr [dword ptr [inval_style]],  3
	je	.label_290
	cmp	qword ptr [rbp - 0xb8], 0
	je	.label_281
	xor	eax, eax
	mov	edi,  dword ptr [dword ptr [rip + conv_exit_code]]
	mov	ecx, OFFSET FLAT:label_284
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
	jmp	.label_298
.label_281:
	xor	eax, eax
	mov	edi,  dword ptr [dword ptr [rip + conv_exit_code]]
	mov	ecx, OFFSET FLAT:label_299
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
.label_298:
	jmp	.label_290
.label_290:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_287
.label_291:
	cmp	dword ptr [rbp - 0xbc], 0x1a
	jbe	.label_292
	cmp	dword ptr [dword ptr [inval_style]],  3
	je	.label_295
	xor	eax, eax
	mov	edi,  dword ptr [dword ptr [rip + conv_exit_code]]
	mov	ecx, OFFSET FLAT:label_297
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
.label_295:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_287
.label_292:
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
	je	.label_301
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
.label_301:
	jmp	.label_283
.label_283:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_300
	lea	rdi, [rbp - 0xb0]
	mov	rax,  qword ptr [word ptr [rip + stderr]]
	fld	xword ptr [rbp - 0x20]
	fstp	xword ptr [rbp - 0x12c]
	mov	qword ptr [rbp - 0x138], rax
	call	quote
	movabs	rdi, OFFSET FLAT:label_286
	mov	rcx, rsp
	fld	xword ptr [rbp - 0x12c]
	fstp	xword ptr [rcx]
	mov	edx, OFFSET FLAT:label_286
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
.label_300:
	jmp	.label_294
.label_294:
	cmp	qword ptr [word ptr [padding_width]],  0
	je	.label_285
	lea	rdi, [rbp - 0xb0]
	call	strlen
	cmp	rax,  qword ptr [word ptr [padding_width]]
	jae	.label_285
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
	je	.label_296
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax,  qword ptr [word ptr [padding_buffer]]
	mov	qword ptr [rbp - 0x158], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:label_282
	mov	rdi, qword ptr [rbp - 0x158]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x15c], eax
.label_296:
	jmp	.label_288
.label_288:
	jmp	.label_289
.label_285:
	lea	rdi, [rbp - 0xb0]
	call	strlen
	add	rax, 1
	mov	rdi, rax
	call	setup_padding_buffer
	lea	rsi, [rbp - 0xb0]
	mov	rdi,  qword ptr [word ptr [padding_buffer]]
	call	strcpy
	mov	qword ptr [rbp - 0x168], rax
.label_289:
	mov	dword ptr [rbp - 4], 1
.label_287:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x180
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404100

	.globl print_padded_number
	.type print_padded_number, @function
print_padded_number:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	cmp	qword ptr [word ptr [format_str_prefix]],  0
	je	.label_302
	mov	rdi,  qword ptr [word ptr [format_str_prefix]]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
.label_302:
	mov	rdi,  qword ptr [word ptr [padding_buffer]]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	cmp	qword ptr [word ptr [format_str_suffix]],  0
	mov	dword ptr [rbp - 8], eax
	je	.label_303
	mov	rdi,  qword ptr [word ptr [format_str_suffix]]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0xc], eax
.label_303:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404180

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
	.align	32
	#Procedure 0x404190

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
	je	.label_305
	cmp	dword ptr [rbp - 0x2c], 1
	je	.label_305
	mov	edi, dword ptr [rbp - 0x2c]
	mov	rsi, qword ptr [rbp - 0x10]
	call	simple_strtod_fatal
	mov	edi, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 4], edi
	jmp	.label_306
.label_305:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_304
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_304
	cmp	dword ptr [dword ptr [inval_style]],  3
	je	.label_308
	movabs	rdi, OFFSET FLAT:label_307
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
.label_308:
	mov	dword ptr [rbp - 0x2c], 5
.label_304:
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 4], eax
.label_306:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404290

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
	je	.label_329
	xor	edi, edi
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x60], rax
	call	quote_n
	mov	edi, 1
	mov	rsi,  qword ptr [word ptr [decimal_point]]
	mov	qword ptr [rbp - 0x68], rax
	call	quote_n
	movabs	rsi, OFFSET FLAT:label_335
	mov	r8d, 0x12
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rcx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x6c], eax
.label_329:
	jmp	.label_314
.label_314:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	simple_strtod_float
	mov	dword ptr [rbp - 0x38], eax
	cmp	dword ptr [rbp - 0x38], 0
	je	.label_322
	cmp	dword ptr [rbp - 0x38], 1
	je	.label_322
	mov	eax, dword ptr [rbp - 0x38]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_315
.label_322:
	jmp	.label_328
.label_328:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_330
	movabs	rax, OFFSET FLAT:label_332
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rcx, qword ptr [rbp - 0x20]
	fld	xword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx]
	mov	edx, ecx
	mov	rcx, rsp
	fstp	xword ptr [rcx]
	mov	esi, OFFSET FLAT:label_332
	xor	r8d, r8d
	mov	r9b, r8b
	mov	qword ptr [rbp - 0x78], rax
	mov	al, r9b
	call	fprintf
	mov	dword ptr [rbp - 0x7c], eax
.label_330:
	jmp	.label_318
.label_318:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_319
	jmp	.label_309
.label_309:
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
	je	.label_331
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax]
	add	rcx, 1
	mov	qword ptr [rax], rcx
	jmp	.label_309
.label_331:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	movsx	edi, byte ptr [rax]
	call	valid_suffix
	cmp	eax, 0
	jne	.label_317
	mov	dword ptr [rbp - 4], 5
	jmp	.label_315
.label_317:
	cmp	dword ptr [rbp - 0x2c], 0
	jne	.label_323
	mov	dword ptr [rbp - 4], 4
	jmp	.label_315
.label_323:
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
	jne	.label_324
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x69
	jne	.label_324
	mov	dword ptr [rbp - 0x34], 0x400
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax]
	add	rcx, 1
	mov	qword ptr [rax], rcx
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_311
	movabs	rsi, OFFSET FLAT:label_321
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	edx, dword ptr [rbp - 0x34]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x8c], eax
.label_311:
	jmp	.label_327
.label_327:
	jmp	.label_324
.label_324:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax], 0
.label_319:
	cmp	dword ptr [rbp - 0x2c], 4
	jne	.label_316
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x69
	jne	.label_333
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax]
	add	rcx, 1
	mov	qword ptr [rax], rcx
	jmp	.label_310
.label_333:
	mov	dword ptr [rbp - 4], 6
	jmp	.label_315
.label_310:
	jmp	.label_316
.label_316:
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x54], eax
	fild	dword ptr [rbp - 0x54]
	mov	edi, dword ptr [rbp - 0x30]
	mov	rcx, rsp
	fstp	xword ptr [rcx]
	call	powerld
	fstp	xword ptr [rbp - 0x50]
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_325
	movabs	rax, OFFSET FLAT:label_326
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	edx, dword ptr [rbp - 0x34]
	mov	ecx, dword ptr [rbp - 0x30]
	fld	xword ptr [rbp - 0x50]
	mov	rsi, rsp
	fstp	xword ptr [rsi]
	mov	r8d, OFFSET FLAT:label_326
	mov	esi, r8d
	xor	r8d, r8d
	mov	r9b, r8b
	mov	qword ptr [rbp - 0x98], rax
	mov	al, r9b
	call	fprintf
	mov	dword ptr [rbp - 0x9c], eax
.label_325:
	jmp	.label_312
.label_312:
	mov	rax, qword ptr [rbp - 0x20]
	fld	xword ptr [rax]
	fld	xword ptr [rbp - 0x50]
	fmulp	st(1)
	fstp	xword ptr [rax]
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_313
	movabs	rax, OFFSET FLAT:label_320
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rcx, qword ptr [rbp - 0x20]
	fld	xword ptr [rcx]
	fld	st(0)
	mov	rcx, rsp
	fxch	st(1)
	fstp	xword ptr [rcx + 0x10]
	fstp	xword ptr [rcx]
	mov	edx, OFFSET FLAT:label_320
	mov	esi, edx
	xor	edx, edx
	mov	r8b, dl
	mov	qword ptr [rbp - 0xa8], rax
	mov	al, r8b
	call	fprintf
	mov	dword ptr [rbp - 0xac], eax
.label_313:
	jmp	.label_334
.label_334:
	mov	eax, dword ptr [rbp - 0x38]
	mov	dword ptr [rbp - 4], eax
.label_315:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404620

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
	ja	.label_336
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_340]]
	jmp	rcx
.label_1273:
	call	abort
.label_1274:
	movabs	rax, OFFSET FLAT:label_337
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_336
.label_1275:
	movabs	rax, OFFSET FLAT:label_341
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_336
.label_1276:
	movabs	rax, OFFSET FLAT:label_338
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_336
.label_1277:
	movabs	rax, OFFSET FLAT:label_342
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_336
.label_1278:
	movabs	rax, OFFSET FLAT:label_339
	mov	qword ptr [rbp - 0x18], rax
.label_336:
	cmp	dword ptr [dword ptr [inval_style]],  3
	je	.label_343
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
.label_343:
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404710

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
	jb	.label_344
	jmp	.label_347
.label_347:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -3
	sub	eax, 1
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_345
	jmp	.label_348
.label_348:
	mov	dword ptr [rbp - 4], 0x400
	jmp	.label_346
.label_344:
	jmp	.label_345
.label_345:
	mov	dword ptr [rbp - 4], 0x3e8
.label_346:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404770

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
	je	.label_358
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax], 0
.label_358:
	lea	rcx, [rbp - 0x29]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	call	simple_strtod_int
	mov	dword ptr [rbp - 0x30], eax
	cmp	dword ptr [rbp - 0x30], 0
	je	.label_352
	cmp	dword ptr [rbp - 0x30], 1
	je	.label_352
	mov	eax, dword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_353
.label_352:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax]
	mov	rsi,  qword ptr [word ptr [decimal_point]]
	movsxd	rdx,  dword ptr [dword ptr [decimal_point_length]]
	call	strncmp
	cmp	eax, 0
	jne	.label_359
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
	je	.label_350
	cmp	dword ptr [rbp - 0x58], 1
	je	.label_350
	mov	eax, dword ptr [rbp - 0x58]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_353
.label_350:
	cmp	dword ptr [rbp - 0x58], 1
	jne	.label_354
	mov	eax, dword ptr [rbp - 0x58]
	mov	dword ptr [rbp - 0x30], eax
.label_354:
	test	byte ptr [rbp - 0x51], 1
	je	.label_356
	mov	dword ptr [rbp - 4], 3
	jmp	.label_353
.label_356:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x60], rax
	fld	xword ptr [rbp - 0x50]
	mov	edi, dword ptr [rbp - 0x60]
	mov	rax, rsp
	fld	dword ptr [dword ptr [rip + label_349]]
	fstp	xword ptr [rax]
	fstp	xword ptr [rbp - 0x6c]
	call	powerld
	fld	xword ptr [rbp - 0x6c]
	fdivrp	st(1)
	fstp	xword ptr [rbp - 0x50]
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_355
	test	byte ptr [rbp - 0x29], 1
	je	.label_360
	fld	xword ptr [rbp - 0x50]
	mov	rax, qword ptr [rbp - 0x20]
	fld	xword ptr [rax]
	fsubrp	st(1)
	fstp	xword ptr [rax]
	jmp	.label_351
.label_360:
	fld	xword ptr [rbp - 0x50]
	mov	rax, qword ptr [rbp - 0x20]
	fld	xword ptr [rax]
	faddp	st(1)
	fstp	xword ptr [rax]
.label_351:
	jmp	.label_355
.label_355:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_357
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
.label_357:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
.label_359:
	mov	eax, dword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 4], eax
.label_353:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404920

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
	.align	32
	#Procedure 0x404960

	.globl suffix_power
	.type suffix_power, @function
suffix_power:
	push	rbp
	mov	rbp, rsp
	mov	al, dil
	mov	byte ptr [rbp - 5], al
	movsx	edi, byte ptr [rbp - 5]
	add	edi, -0x45
	mov	ecx, edi
	sub	edi, 0x15
	mov	qword ptr [rbp - 0x10], rcx
	mov	dword ptr [rbp - 0x14], edi
	ja	.label_361
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_363]]
	jmp	rcx
.label_1125:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_362
.label_1126:
	mov	dword ptr [rbp - 4], 2
	jmp	.label_362
.label_1124:
	mov	dword ptr [rbp - 4], 3
	jmp	.label_362
.label_1128:
	mov	dword ptr [rbp - 4], 4
	jmp	.label_362
.label_1127:
	mov	dword ptr [rbp - 4], 5
	jmp	.label_362
.label_1123:
	mov	dword ptr [rbp - 4], 6
	jmp	.label_362
.label_1130:
	mov	dword ptr [rbp - 4], 7
	jmp	.label_362
.label_1129:
	mov	dword ptr [rbp - 4], 8
	jmp	.label_362
.label_361:
	mov	dword ptr [rbp - 4], 0
.label_362:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404a00

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
	jne	.label_364
	fld1	
	fstp	xword ptr [rbp - 0x10]
	jmp	.label_367
.label_364:
	jmp	.label_365
.label_365:
	mov	eax, dword ptr [rbp - 0x24]
	add	eax, -1
	mov	dword ptr [rbp - 0x24], eax
	cmp	eax, 0
	je	.label_366
	fld	xword ptr [rbp - 0x20]
	fld	xword ptr [rbp - 0x40]
	fmulp	st(1)
	fstp	xword ptr [rbp - 0x40]
	jmp	.label_365
.label_366:
	fld	xword ptr [rbp - 0x40]
	fstp	xword ptr [rbp - 0x10]
.label_367:
	fld	xword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404a60

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
	jne	.label_376
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	byte ptr [rax], 1
	jmp	.label_382
.label_376:
	mov	rax, qword ptr [rbp - 0x28]
	mov	byte ptr [rax], 0
.label_382:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
.label_379:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x51], cl
	je	.label_371
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	movsx	edi, byte ptr [rax]
	call	c_isdigit
	mov	byte ptr [rbp - 0x51], al
.label_371:
	mov	al, byte ptr [rbp - 0x51]
	test	al, 1
	jne	.label_377
	jmp	.label_381
.label_377:
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
	jne	.label_368
	jnp	.label_378
	jmp	.label_368
.label_378:
	cmp	dword ptr [rbp - 0x4c], 0
	je	.label_380
.label_368:
	mov	eax, dword ptr [rbp - 0x44]
	add	eax, 1
	mov	dword ptr [rbp - 0x44], eax
.label_380:
	cmp	dword ptr [rbp - 0x44], 0x12
	jbe	.label_373
	mov	dword ptr [rbp - 0x2c], 1
.label_373:
	cmp	dword ptr [rbp - 0x44], 0x1b
	jbe	.label_374
	mov	dword ptr [rbp - 4], 2
	jmp	.label_372
.label_374:
	fld	xword ptr [rbp - 0x40]
	fld	dword ptr [dword ptr [rip + label_349]]
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
	jmp	.label_379
.label_381:
	test	byte ptr [rbp - 0x45], 1
	jne	.label_369
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax]
	mov	rsi,  qword ptr [word ptr [decimal_point]]
	movsxd	rdx,  dword ptr [dword ptr [decimal_point_length]]
	call	strncmp
	cmp	eax, 0
	je	.label_369
	mov	dword ptr [rbp - 4], 3
	jmp	.label_372
.label_369:
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax], 1
	je	.label_375
	fld	xword ptr [rbp - 0x40]
	fchs	
	fstp	xword ptr [rbp - 0x40]
.label_375:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_370
	fld	xword ptr [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x20]
	fstp	xword ptr [rax]
.label_370:
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 4], eax
.label_372:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404c10

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
	fld	xword ptr [word ptr [rip + label_388]]
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	jb	.label_384
	jmp	.label_383
.label_383:
	fld	xword ptr [rbp - 0x10]
	fld	xword ptr [word ptr [rip + label_385]]
	fucomip	st(1)
	fstp	st(0)
	jb	.label_384
	jmp	.label_391
.label_391:
	jmp	.label_389
.label_389:
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
	jb	.label_386
	jmp	.label_387
.label_387:
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
	jmp	.label_389
.label_386:
	jmp	.label_384
.label_384:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_390
	mov	eax, dword ptr [rbp - 0x24]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	dword ptr [rcx], eax
.label_390:
	fld	xword ptr [rbp - 0x10]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404ce0

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
	je	.label_416
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x88], rcx
	mov	byte ptr [rax], 0x27
.label_416:
	cmp	qword ptr [word ptr [zero_padding_width]],  0
	je	.label_420
	mov	eax, 0x3e
	mov	esi, eax
	movabs	rdx, OFFSET FLAT:label_406
	mov	rdi, qword ptr [rbp - 0x88]
	mov	rcx,  qword ptr [word ptr [zero_padding_width]]
	mov	al, 0
	call	snprintf
	mov	rcx, qword ptr [rbp - 0x88]
	movsxd	rdx, eax
	add	rcx, rdx
	mov	qword ptr [rbp - 0x88], rcx
.label_420:
	jmp	.label_399
.label_399:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_402
	movabs	rsi, OFFSET FLAT:label_409
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xa4], eax
.label_402:
	jmp	.label_419
.label_419:
	cmp	dword ptr [rbp - 0x2c], 0
	jne	.label_423
	mov	edi, dword ptr [rbp - 0x14]
	mov	rax, rsp
	fld	dword ptr [dword ptr [rip + label_349]]
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
	je	.label_404
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	eax, dword ptr [rbp - 0x30]
	test	eax, eax
	mov	eax, OFFSET FLAT:label_411
	mov	ecx, eax
	mov	eax, OFFSET FLAT:label_412
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
.label_404:
	jmp	.label_433
.label_433:
	mov	rdi, qword ptr [rbp - 0x88]
	mov	eax, OFFSET FLAT:label_435
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
	jl	.label_413
	mov	eax, dword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	edx, ecx
	cmp	eax, edx
	jl	.label_410
.label_413:
	mov	eax, 1
	xor	ecx, ecx
	mov	edx, OFFSET FLAT:label_426
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
	sub	rsp, 0x10
.label_410:
	jmp	.label_394
.label_423:
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
	je	.label_429
	movabs	rax, OFFSET FLAT:label_434
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	fld	xword ptr [rbp - 0x10]
	movsd	xmm0, qword ptr [rbp - 0x90]
	mov	edx, dword ptr [rbp - 0x94]
	mov	rcx, rsp
	fstp	xword ptr [rcx]
	mov	esi, OFFSET FLAT:label_434
	mov	r8b, 1
	mov	qword ptr [rbp - 0xd8], rax
	mov	al, r8b
	call	fprintf
	mov	dword ptr [rbp - 0xdc], eax
.label_429:
	jmp	.label_415
.label_415:
	mov	dword ptr [rbp - 0x98], 0
	cmp	qword ptr [word ptr [user_precision]],  -1
	je	.label_417
	imul	eax, dword ptr [rbp - 0x94], 3
	mov	eax, eax
	mov	ecx, eax
	cmp	rcx,  qword ptr [word ptr [user_precision]]
	jge	.label_427
	imul	eax, dword ptr [rbp - 0x94], 3
	mov	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0xe8], rcx
	jmp	.label_432
.label_427:
	mov	rax,  qword ptr [word ptr [user_precision]]
	mov	qword ptr [rbp - 0xe8], rax
.label_432:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	ecx, eax
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_401
.label_417:
	fld	xword ptr [rbp - 0x10]
	mov	rax, rsp
	fstp	xword ptr [rax]
	call	absld
	fld	dword ptr [dword ptr [rip + label_349]]
	fucomip	st(1)
	fstp	st(0)
	jbe	.label_414
	jmp	.label_422
.label_422:
	mov	dword ptr [rbp - 0x98], 1
.label_414:
	jmp	.label_401
.label_401:
	mov	edi, dword ptr [rbp - 0x98]
	mov	rax, rsp
	fld	dword ptr [dword ptr [rip + label_349]]
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
	jb	.label_396
	jmp	.label_425
.label_425:
	fld	qword ptr [rbp - 0x90]
	fld	xword ptr [rbp - 0x10]
	fdivrp	st(1)
	fstp	xword ptr [rbp - 0x10]
	mov	eax, dword ptr [rbp - 0x94]
	add	eax, 1
	mov	dword ptr [rbp - 0x94], eax
.label_396:
	fld	xword ptr [rbp - 0x10]
	xor	eax, eax
	mov	cl, al
	fldz	
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	mov	byte ptr [rbp - 0x101], cl
	jne	.label_400
	jp	.label_400
	jmp	.label_408
.label_400:
	fld	xword ptr [rbp - 0x10]
	mov	rax, rsp
	fstp	xword ptr [rax]
	call	absld
	xor	ecx, ecx
	mov	dl, cl
	fld	dword ptr [dword ptr [rip + label_349]]
	fucomip	st(1)
	fstp	st(0)
	mov	byte ptr [rbp - 0x101], dl
	jbe	.label_408
	jmp	.label_421
.label_421:
	cmp	dword ptr [rbp - 0x94], 0
	seta	al
	mov	byte ptr [rbp - 0x101], al
.label_408:
	mov	al, byte ptr [rbp - 0x101]
	and	al, 1
	movzx	ecx, al
	mov	dword ptr [rbp - 0x9c], ecx
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_395
	movabs	rax, OFFSET FLAT:label_436
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	fld	xword ptr [rbp - 0x10]
	movsd	xmm0, qword ptr [rbp - 0x90]
	mov	edx, dword ptr [rbp - 0x94]
	mov	rcx, rsp
	fstp	xword ptr [rcx]
	mov	esi, OFFSET FLAT:label_436
	mov	r8b, 1
	mov	qword ptr [rbp - 0x110], rax
	mov	al, r8b
	call	fprintf
	mov	dword ptr [rbp - 0x114], eax
.label_395:
	jmp	.label_398
.label_398:
	mov	rdi, qword ptr [rbp - 0x88]
	mov	eax, OFFSET FLAT:label_393
	mov	esi, eax
	call	stpcpy
	cmp	qword ptr [word ptr [user_precision]],  -1
	mov	qword ptr [rbp - 0x120], rax
	jne	.label_428
	movsxd	rax, dword ptr [rbp - 0x9c]
	mov	qword ptr [rbp - 0x128], rax
	jmp	.label_431
.label_428:
	mov	rax,  qword ptr [word ptr [user_precision]]
	mov	qword ptr [rbp - 0x128], rax
.label_431:
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
	jl	.label_405
	mov	eax, dword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	edx, ecx
	sub	edx, 1
	cmp	eax, edx
	jl	.label_403
.label_405:
	mov	eax, 1
	xor	ecx, ecx
	mov	edx, OFFSET FLAT:label_426
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
	sub	rsp, 0x10
.label_403:
	cmp	dword ptr [rbp - 0x2c], 4
	jne	.label_397
	cmp	dword ptr [rbp - 0x94], 0
	jbe	.label_397
	movabs	rsi, OFFSET FLAT:label_407
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x28]
	movsxd	rcx, dword ptr [rbp - 0x38]
	sub	rax, rcx
	sub	rax, 1
	mov	rdx, rax
	call	strncat
	mov	qword ptr [rbp - 0x168], rax
.label_397:
	jmp	.label_424
.label_424:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_430
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x170], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:label_392
	mov	rdi, qword ptr [rbp - 0x170]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x174], eax
.label_430:
	jmp	.label_418
.label_418:
	jmp	.label_394
.label_394:
	add	rsp, 0x190
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4053c0

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
	jbe	.label_437
	jmp	.label_438
.label_438:
	fld	xword ptr [rbp - 0x10]
	fchs	
	fstp	xword ptr [rbp - 0x1c]
	jmp	.label_439
.label_437:
	fld	xword ptr [rbp - 0x10]
	fstp	xword ptr [rbp - 0x1c]
.label_439:
	fld	xword ptr [rbp - 0x1c]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405400

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
	fld	xword ptr [word ptr [rip + label_440]]
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
	ja	.label_441
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_444]]
	jmp	rcx
.label_1305:
	fld	xword ptr [rbp - 0x20]
	mov	rax, rsp
	fstp	xword ptr [rax]
	call	simple_round_ceiling
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_442
.label_1306:
	fld	xword ptr [rbp - 0x20]
	mov	rax, rsp
	fstp	xword ptr [rax]
	call	simple_round_floor
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_442
.label_1307:
	fld	xword ptr [rbp - 0x20]
	mov	rax, rsp
	fstp	xword ptr [rax]
	call	simple_round_from_zero
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_442
.label_1308:
	fld	xword ptr [rbp - 0x20]
	mov	rax, rsp
	fstp	xword ptr [rax]
	call	simple_round_to_zero
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_442
.label_1309:
	fld	xword ptr [rbp - 0x20]
	mov	rax, rsp
	fstp	xword ptr [rax]
	call	simple_round_nearest
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_442
.label_441:
	fldz	
	fstp	xword ptr [rbp - 0x10]
	jmp	.label_443
.label_442:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x58], rax
	fild	qword ptr [rbp - 0x58]
	fld	xword ptr [word ptr [rip + label_440]]
	fmulp	st(1)
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x50], rax
	fild	qword ptr [rbp - 0x50]
	faddp	st(1)
	fstp	xword ptr [rbp - 0x10]
.label_443:
	fld	xword ptr [rbp - 0x10]
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405530

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
	ja	.label_451
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_452]]
	jmp	rcx
.label_1280:
	movabs	rax, OFFSET FLAT:label_45
	mov	qword ptr [rbp - 8], rax
	jmp	.label_446
.label_1281:
	movabs	rax, OFFSET FLAT:label_453
	mov	qword ptr [rbp - 8], rax
	jmp	.label_446
.label_1282:
	movabs	rax, OFFSET FLAT:label_447
	mov	qword ptr [rbp - 8], rax
	jmp	.label_446
.label_1283:
	movabs	rax, OFFSET FLAT:label_455
	mov	qword ptr [rbp - 8], rax
	jmp	.label_446
.label_1284:
	movabs	rax, OFFSET FLAT:label_450
	mov	qword ptr [rbp - 8], rax
	jmp	.label_446
.label_1285:
	movabs	rax, OFFSET FLAT:label_456
	mov	qword ptr [rbp - 8], rax
	jmp	.label_446
.label_1286:
	movabs	rax, OFFSET FLAT:label_448
	mov	qword ptr [rbp - 8], rax
	jmp	.label_446
.label_1287:
	movabs	rax, OFFSET FLAT:label_445
	mov	qword ptr [rbp - 8], rax
	jmp	.label_446
.label_1288:
	movabs	rax, OFFSET FLAT:label_454
	mov	qword ptr [rbp - 8], rax
	jmp	.label_446
.label_451:
	movabs	rax, OFFSET FLAT:label_449
	mov	qword ptr [rbp - 8], rax
.label_446:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405620

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
	jbe	.label_457
	jmp	.label_458
.label_458:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
.label_457:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405680

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
	.align	32
	#Procedure 0x4056b0

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
	jbe	.label_459
	jmp	.label_460
.label_460:
	fld	xword ptr [rbp - 0x10]
	mov	rax, rsp
	fstp	xword ptr [rax]
	call	simple_round_floor
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_461
.label_459:
	fld	xword ptr [rbp - 0x10]
	mov	rax, rsp
	fstp	xword ptr [rax]
	call	simple_round_ceiling
	mov	qword ptr [rbp - 0x18], rax
.label_461:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405710

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
	.align	32
	#Procedure 0x405750

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
	jbe	.label_462
	jmp	.label_463
.label_463:
	fld	xword ptr [rbp - 0x10]
	fld	dword ptr [dword ptr [rip + label_465]]
	faddp	st(1)
	fstp	xword ptr [rbp - 0x24]
	jmp	.label_466
.label_462:
	fld	xword ptr [rbp - 0x10]
	fld	dword ptr [dword ptr [rip + label_464]]
	faddp	st(1)
	fstp	xword ptr [rbp - 0x24]
.label_466:
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
	.align	32
	#Procedure 0x4057c0

	.globl set_fields
	.type set_fields, @function
set_fields:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
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
	je	.label_473
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, OFFSET FLAT:label_467
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_473
	mov	qword ptr [rbp - 0x20], 1
	mov	byte ptr [rbp - 0x21], 1
	mov	byte ptr [rbp - 0x23], 1
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
.label_473:
	jmp	.label_487
.label_487:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	jne	.label_523
	mov	byte ptr [rbp - 0x24], 0
	test	byte ptr [rbp - 0x23], 1
	je	.label_489
	jmp	.label_474
.label_474:
	mov	eax, dword ptr [rbp - 0xc]
	and	eax, 4
	cmp	eax, 0
	je	.label_479
	movabs	rdi, OFFSET FLAT:label_513
	call	gettext
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_537
.label_479:
	movabs	rdi, OFFSET FLAT:label_509
	call	gettext
	mov	qword ptr [rbp - 0x50], rax
.label_537:
	mov	rax, qword ptr [rbp - 0x50]
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_489:
	mov	byte ptr [rbp - 0x23], 1
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	test	byte ptr [rbp - 0x21], 1
	je	.label_524
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_524
	jmp	.label_532
.label_532:
	mov	eax, dword ptr [rbp - 0xc]
	and	eax, 4
	cmp	eax, 0
	je	.label_535
	movabs	rdi, OFFSET FLAT:label_531
	call	gettext
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_543
.label_535:
	movabs	rdi, OFFSET FLAT:label_469
	call	gettext
	mov	qword ptr [rbp - 0x58], rax
.label_543:
	mov	rax, qword ptr [rbp - 0x58]
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_524:
	test	byte ptr [rbp - 0x21], 1
	je	.label_481
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_490
.label_481:
	mov	eax, 1
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_490
.label_490:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x18], rax
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_492
.label_523:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2c
	je	.label_504
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
	jne	.label_504
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_476
.label_504:
	mov	byte ptr [rbp - 0x24], 0
	test	byte ptr [rbp - 0x23], 1
	je	.label_528
	mov	byte ptr [rbp - 0x23], 0
	test	byte ptr [rbp - 0x21], 1
	jne	.label_480
	test	byte ptr [rbp - 0x22], 1
	jne	.label_480
	mov	eax, dword ptr [rbp - 0xc]
	and	eax, 1
	cmp	eax, 0
	je	.label_539
	mov	qword ptr [rbp - 0x18], 1
	jmp	.label_542
.label_539:
	jmp	.label_470
.label_470:
	movabs	rdi, OFFSET FLAT:label_472
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_542:
	jmp	.label_480
.label_480:
	test	byte ptr [rbp - 0x22], 1
	jne	.label_482
	mov	rsi, -1
	mov	rdi, qword ptr [rbp - 0x18]
	call	add_range_pair
	jmp	.label_491
.label_482:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_493
	jmp	.label_499
.label_499:
	movabs	rdi, OFFSET FLAT:label_500
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_493:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	call	add_range_pair
.label_491:
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_520
.label_528:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_522
	jmp	.label_526
.label_526:
	mov	eax, dword ptr [rbp - 0xc]
	and	eax, 4
	cmp	eax, 0
	je	.label_508
	movabs	rdi, OFFSET FLAT:label_531
	call	gettext
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_534
.label_508:
	movabs	rdi, OFFSET FLAT:label_469
	call	gettext
	mov	qword ptr [rbp - 0x70], rax
.label_534:
	mov	rax, qword ptr [rbp - 0x70]
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_522:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x20]
	call	add_range_pair
	mov	qword ptr [rbp - 0x20], 0
.label_520:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_478
	jmp	.label_483
.label_478:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	mov	byte ptr [rbp - 0x21], 0
	mov	byte ptr [rbp - 0x22], 0
	jmp	.label_486
.label_476:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_494
	test	byte ptr [rbp - 0x24], 1
	je	.label_501
	cmp	qword ptr [word ptr [set_fields.num_start]],  0
	jne	.label_506
.label_501:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [set_fields.num_start]],  rax
.label_506:
	mov	byte ptr [rbp - 0x24], 1
	test	byte ptr [rbp - 0x23], 1
	je	.label_515
	mov	byte ptr [rbp - 0x22], 1
	jmp	.label_518
.label_515:
	mov	byte ptr [rbp - 0x21], 1
.label_518:
	movabs	rax, 0x1999999999999999
	cmp	rax, qword ptr [rbp - 0x20]
	jb	.label_521
	imul	rax, qword ptr [rbp - 0x20], 0xa
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx]
	sub	edx, 0x30
	movsxd	rcx, edx
	add	rax, rcx
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_527
.label_521:
	xor	eax, eax
	mov	dword ptr [rbp - 0x74], eax
	jmp	.label_536
.label_527:
	mov	eax, 1
	imul	rcx, qword ptr [rbp - 0x20], 0xa
	mov	rdx, qword ptr [rbp - 8]
	movsx	esi, byte ptr [rdx]
	sub	esi, 0x30
	movsxd	rdx, esi
	add	rcx, rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x74], eax
.label_536:
	mov	eax, dword ptr [rbp - 0x74]
	cmp	eax, 0
	je	.label_471
	cmp	qword ptr [rbp - 0x20], -1
	jne	.label_514
.label_471:
	movabs	rsi, OFFSET FLAT:label_475
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
	je	.label_477
	movabs	rdi, OFFSET FLAT:label_496
	call	gettext
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_502
.label_477:
	movabs	rdi, OFFSET FLAT:label_507
	call	gettext
	mov	qword ptr [rbp - 0x80], rax
.label_502:
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
.label_514:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_530
.label_494:
	mov	eax, dword ptr [rbp - 0xc]
	and	eax, 4
	cmp	eax, 0
	je	.label_533
	movabs	rdi, OFFSET FLAT:label_538
	call	gettext
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_541
.label_533:
	movabs	rdi, OFFSET FLAT:label_468
	call	gettext
	mov	qword ptr [rbp - 0x90], rax
.label_541:
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
.label_530:
	jmp	.label_486
.label_486:
	jmp	.label_492
.label_492:
	jmp	.label_487
.label_483:
	cmp	qword ptr [word ptr [n_frp]],  0
	jne	.label_497
	jmp	.label_503
.label_503:
	mov	eax, dword ptr [rbp - 0xc]
	and	eax, 4
	cmp	eax, 0
	je	.label_505
	movabs	rdi, OFFSET FLAT:label_510
	call	gettext
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_516
.label_505:
	movabs	rdi, OFFSET FLAT:label_529
	call	gettext
	mov	qword ptr [rbp - 0xa0], rax
.label_516:
	mov	rax, qword ptr [rbp - 0xa0]
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_497:
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
.label_485:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax,  qword ptr [word ptr [n_frp]]
	jae	.label_512
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
.label_540:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax,  qword ptr [word ptr [n_frp]]
	jae	.label_484
	mov	rax, qword ptr [rbp - 0x48]
	shl	rax, 4
	add	rax,  qword ptr [word ptr [frp]]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x40]
	shl	rcx, 4
	add	rcx,  qword ptr [word ptr [frp]]
	cmp	rax, qword ptr [rcx + 8]
	ja	.label_488
	mov	rax, qword ptr [rbp - 0x48]
	shl	rax, 4
	add	rax,  qword ptr [word ptr [frp]]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x40]
	shl	rcx, 4
	add	rcx,  qword ptr [word ptr [frp]]
	cmp	rax, qword ptr [rcx + 8]
	jbe	.label_525
	mov	rax, qword ptr [rbp - 0x48]
	shl	rax, 4
	add	rax,  qword ptr [word ptr [frp]]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_519
.label_525:
	mov	rax, qword ptr [rbp - 0x40]
	shl	rax, 4
	add	rax,  qword ptr [word ptr [frp]]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0xb0], rax
.label_519:
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
	mov	rcx,  qword ptr [word ptr [n_frp]]
	add	rcx, -1
	mov	qword ptr [word ptr [n_frp]],  rcx
	mov	rcx, qword ptr [rbp - 0x48]
	add	rcx, -1
	mov	qword ptr [rbp - 0x48], rcx
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_498
.label_488:
	jmp	.label_484
.label_498:
	jmp	.label_495
.label_495:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_540
.label_484:
	jmp	.label_511
.label_511:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_485
.label_512:
	mov	eax, dword ptr [rbp - 0xc]
	and	eax, 2
	cmp	eax, 0
	je	.label_517
	call	complement_rp
.label_517:
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
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406040

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
	.align	32
	#Procedure 0x406050

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
	jne	.label_544
	movabs	rsi, OFFSET FLAT:n_frp_allocated
	mov	eax, 0x10
	mov	edx, eax
	mov	rcx,  qword ptr [word ptr [frp]]
	mov	rdi, rcx
	call	x2nrealloc
	mov	qword ptr [word ptr [frp]],  rax
.label_544:
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
	.align	32
	#Procedure 0x4060f0

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
	jge	.label_545
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_546
.label_545:
	mov	eax, dword ptr [rbp - 0x14]
	cmp	eax, dword ptr [rbp - 0x18]
	setg	cl
	and	cl, 1
	movzx	eax, cl
	mov	dword ptr [rbp - 0x1c], eax
.label_546:
	mov	eax, dword ptr [rbp - 0x1c]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406150

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
	jbe	.label_549
	mov	eax, 1
	mov	edi, eax
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	sub	rcx, 1
	mov	rsi, rcx
	call	add_range_pair
.label_549:
	mov	qword ptr [rbp - 0x18], 1
.label_551:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_547
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
	jne	.label_550
	jmp	.label_552
.label_550:
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
.label_552:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_551
.label_547:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 8], -1
	jae	.label_548
	mov	rsi, -1
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	add	rax, 1
	mov	rdi, rax
	call	add_range_pair
.label_548:
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4062a0
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
	.align	32
	#Procedure 0x4062e0

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	push	rbp
	mov	rbp, rsp
	mov	edi, 1
	call	usage
	.section	.text
	.align	32
	#Procedure 0x4062f0

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
.label_558:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_562
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x38]
	call	strncmp
	cmp	eax, 0
	jne	.label_557
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	call	strlen
	cmp	rax, qword ptr [rbp - 0x38]
	jne	.label_563
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_556
.label_563:
	cmp	qword ptr [rbp - 0x40], -1
	jne	.label_553
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_555
.label_553:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_560
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
	je	.label_559
.label_560:
	mov	byte ptr [rbp - 0x41], 1
.label_559:
	jmp	.label_555
.label_555:
	jmp	.label_561
.label_561:
	jmp	.label_557
.label_557:
	jmp	.label_564
.label_564:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_558
.label_562:
	test	byte ptr [rbp - 0x41], 1
	je	.label_554
	mov	qword ptr [rbp - 8], -2
	jmp	.label_556
.label_554:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
.label_556:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406440

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
	jne	.label_565
	movabs	rdi, OFFSET FLAT:label_568
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_567
.label_565:
	movabs	rdi, OFFSET FLAT:label_566
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
.label_567:
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
	.align	32
	#Procedure 0x4064e0

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	movabs	rax, OFFSET FLAT:label_569
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
.label_574:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_573
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_576
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rcx, qword ptr [rbp - 0x20]
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	memcmp
	cmp	eax, 0
	je	.label_571
.label_576:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:label_570
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
	jmp	.label_572
.label_571:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:label_575
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x4c], eax
.label_572:
	jmp	.label_577
.label_577:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_574
.label_573:
	mov	edi, 0xa
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	putc_unlocked
	mov	dword ptr [rbp - 0x50], eax
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406630

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
	jl	.label_579
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_578
.label_579:
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
.label_578:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4066c0
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
.label_581:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_580
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	imul	rcx, qword ptr [rbp - 0x30]
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_582
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_583
.label_582:
	jmp	.label_584
.label_584:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_581
.label_580:
	mov	qword ptr [rbp - 8], 0
.label_583:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406760
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
	jb	.label_585
	jmp	.label_588
.label_588:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_585
	jmp	.label_586
.label_586:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_587
	jmp	.label_585
.label_585:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_589
.label_587:
	mov	byte ptr [rbp - 1], 0
.label_589:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4067d0
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
	jb	.label_590
	jmp	.label_593
.label_593:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_591
	jmp	.label_590
.label_590:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_592
.label_591:
	mov	byte ptr [rbp - 1], 0
.label_592:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406820
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_594
	jmp	.label_595
.label_595:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_596
.label_594:
	mov	byte ptr [rbp - 1], 0
.label_596:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406850
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_597
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_597:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406880
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
	jb	.label_598
	jmp	.label_600
.label_600:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_601
	jmp	.label_598
.label_598:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_599
.label_601:
	mov	byte ptr [rbp - 1], 0
.label_599:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4068d0

	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_602
	jmp	.label_604
.label_604:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_603
.label_602:
	mov	byte ptr [rbp - 1], 0
.label_603:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406910
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_605
	jmp	.label_607
.label_607:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_606
.label_605:
	mov	byte ptr [rbp - 1], 0
.label_606:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406950
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_608
	jmp	.label_610
.label_610:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_609
.label_608:
	mov	byte ptr [rbp - 1], 0
.label_609:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406990
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_611
	jmp	.label_613
.label_613:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_612
.label_611:
	mov	byte ptr [rbp - 1], 0
.label_612:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4069d0
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
	ja	.label_614
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_616]]
	jmp	rcx
.label_1301:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_615
.label_614:
	mov	byte ptr [rbp - 1], 0
.label_615:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406a20
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
	jb	.label_617
	jmp	.label_620
.label_620:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_619
	jmp	.label_617
.label_617:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_618
.label_619:
	mov	byte ptr [rbp - 1], 0
.label_618:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406a70
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_621
	jmp	.label_623
.label_623:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_622
.label_621:
	mov	byte ptr [rbp - 1], 0
.label_622:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406ab0
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
	jb	.label_624
	jmp	.label_627
.label_627:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_624
	jmp	.label_625
.label_625:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_626
	jmp	.label_624
.label_624:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_628
.label_626:
	mov	byte ptr [rbp - 1], 0
.label_628:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406b20

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_629
	jmp	.label_631
.label_631:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_630
.label_629:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_630:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406b60
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_632
	jmp	.label_634
.label_634:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_633
.label_632:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_633:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406ba0
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
	.align	32
	#Procedure 0x406bc0
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
	.align	32
	#Procedure 0x406be0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	close_stream
	cmp	eax, 0
	je	.label_638
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_642
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	je	.label_638
.label_642:
	movabs	rdi, OFFSET FLAT:label_640
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_636
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_635
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_637
.label_636:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_641
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	call	error
.label_637:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_638:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_639
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_639:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406cd0

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
	jne	.label_643
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_643
	xor	eax, eax
	mov	ecx, eax
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rcx
	mov	rdx, rcx
	call	mbstowcs
	mov	qword ptr [rbp - 0x78], rax
	cmp	qword ptr [rbp - 0x78], -1
	jne	.label_668
	mov	eax, dword ptr [rbp - 0x28]
	and	eax, 1
	cmp	eax, 0
	je	.label_646
	jmp	.label_650
.label_646:
	jmp	.label_651
.label_668:
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 1
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x78]
	shl	rax, 2
	mov	rdi, rax
	call	malloc
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_655
	mov	eax, dword ptr [rbp - 0x28]
	and	eax, 1
	cmp	eax, 0
	je	.label_659
	jmp	.label_650
.label_659:
	jmp	.label_651
.label_655:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x78]
	call	mbstowcs
	cmp	rax, 0
	je	.label_667
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
.label_667:
	jmp	.label_643
.label_643:
	test	byte ptr [rbp - 0x6a], 1
	je	.label_656
	test	byte ptr [rbp - 0x69], 1
	jne	.label_658
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx]
	jbe	.label_656
.label_658:
	test	byte ptr [rbp - 0x69], 1
	je	.label_662
	xor	eax, eax
	mov	ecx, eax
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdi, rcx
	mov	rdx, rcx
	call	wcstombs
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
.label_662:
	mov	rdi, qword ptr [rbp - 0x38]
	call	malloc
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_647
	mov	eax, dword ptr [rbp - 0x28]
	and	eax, 1
	cmp	eax, 0
	je	.label_652
	jmp	.label_650
.label_652:
	jmp	.label_651
.label_647:
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
.label_656:
	jmp	.label_650
.label_650:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx]
	jbe	.label_666
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x60], rax
.label_666:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x58]
	jbe	.label_648
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	sub	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x68], rax
.label_648:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x24]
	test	edx, edx
	mov	dword ptr [rbp - 0x9c], edx
	je	.label_653
	jmp	.label_660
.label_660:
	mov	eax, dword ptr [rbp - 0x9c]
	sub	eax, 1
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_661
	jmp	.label_664
.label_664:
	mov	eax, dword ptr [rbp - 0x9c]
	sub	eax, 2
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_665
	jmp	.label_644
.label_653:
	mov	qword ptr [rbp - 0x80], 0
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_657
.label_661:
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x80], rax
	mov	qword ptr [rbp - 0x88], 0
	jmp	.label_657
.label_665:
	jmp	.label_644
.label_644:
	mov	rax, qword ptr [rbp - 0x68]
	shr	rax, 1
	mov	rcx, qword ptr [rbp - 0x68]
	and	rcx, 1
	add	rax, rcx
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x68]
	shr	rax, 1
	mov	qword ptr [rbp - 0x88], rax
.label_657:
	mov	eax, dword ptr [rbp - 0x28]
	and	eax, 4
	cmp	eax, 0
	je	.label_663
	mov	qword ptr [rbp - 0x80], 0
.label_663:
	mov	eax, dword ptr [rbp - 0x28]
	and	eax, 8
	cmp	eax, 0
	je	.label_669
	mov	qword ptr [rbp - 0x88], 0
.label_669:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_649
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
	jae	.label_654
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0xc0], rax
	jmp	.label_645
.label_654:
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_645:
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
.label_649:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x80]
	add	rcx, qword ptr [rbp - 0x88]
	shl	rcx, 0
	add	rax, rcx
	mov	qword ptr [rbp - 0x30], rax
.label_651:
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
	.align	32
	#Procedure 0x407130

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
.label_671:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax], 0
	je	.label_672
	mov	rax, qword ptr [rbp - 0x18]
	mov	edi, dword ptr [rax]
	call	iswprint
	cmp	eax, 0
	jne	.label_670
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax], 0xfffd
	mov	byte ptr [rbp - 9], 1
.label_670:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 4
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_671
.label_672:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4071a0

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
.label_676:
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax], 0
	je	.label_675
	mov	rax, qword ptr [rbp - 8]
	mov	edi, dword ptr [rax]
	call	wcwidth
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], -1
	jne	.label_674
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xfffd
	mov	dword ptr [rbp - 0x1c], 1
.label_674:
	mov	rax, qword ptr [rbp - 0x18]
	movsxd	rcx, dword ptr [rbp - 0x1c]
	add	rax, rcx
	cmp	rax, qword ptr [rbp - 0x10]
	jbe	.label_673
	jmp	.label_675
.label_673:
	movsxd	rax, dword ptr [rbp - 0x1c]
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, 4
	mov	qword ptr [rbp - 8], rax
	jmp	.label_676
.label_675:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407240

	.globl mbs_align_pad
	.type mbs_align_pad, @function
mbs_align_pad:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
.label_680:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, rdx
	add	rsi, -1
	mov	qword ptr [rbp - 0x18], rsi
	cmp	rdx, 0
	mov	byte ptr [rbp - 0x19], cl
	je	.label_677
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x10]
	setb	cl
	mov	byte ptr [rbp - 0x19], cl
.label_677:
	mov	al, byte ptr [rbp - 0x19]
	test	al, 1
	jne	.label_678
	jmp	.label_679
.label_678:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	mov	byte ptr [rax], 0x20
	jmp	.label_680
.label_679:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4072c0
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
.label_684:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x28]
	jb	.label_682
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x28]
	call	realloc
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_681
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
	mov	qword ptr [rbp - 0x38], 0
	jmp	.label_682
.label_681:
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
	jne	.label_683
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
	mov	qword ptr [rbp - 0x38], 0
	jmp	.label_682
.label_683:
	jmp	.label_684
.label_682:
	mov	rax, qword ptr [rbp - 0x38]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4073b0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_688
	movabs	rdi, OFFSET FLAT:label_687
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x1c], eax
	call	abort
.label_688:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	call	strrchr
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_690
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_685
.label_690:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_685:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cmp	rax, 7
	jl	.label_692
	movabs	rsi, OFFSET FLAT:label_691
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, -7
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_692
	movabs	rsi, OFFSET FLAT:label_689
	mov	eax, 3
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_686
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname]],  rax
.label_686:
	jmp	.label_692
.label_692:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4074d0
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
	je	.label_693
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_694
.label_693:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_694
.label_694:
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
	.align	32
	#Procedure 0x407550
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_695
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_696
.label_695:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_696
.label_696:
	mov	rax, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407590
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
	je	.label_697
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_698
.label_697:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_698
.label_698:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4075e0

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
	je	.label_699
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_700
.label_699:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_700
.label_700:
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
	.align	32
	#Procedure 0x407690
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_701
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_701:
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
	.align	32
	#Procedure 0x4076d0

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
	jne	.label_702
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_702:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_704
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_703
.label_704:
	call	abort
.label_703:
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
	.align	32
	#Procedure 0x407740
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
	je	.label_705
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_706
.label_705:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_706
.label_706:
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
	.align	32
	#Procedure 0x407810

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
.label_846:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_750
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_744]]
	jmp	rcx
.label_1220:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_1219:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_763
	jmp	.label_766
.label_766:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_767
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_767:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_763
.label_763:
	movabs	rax, OFFSET FLAT:label_776
	mov	byte ptr [rbp - 0x79], 1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_777
.label_1221:
	mov	byte ptr [rbp - 0x79], 1
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_777
.label_1222:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_896
	movabs	rdi, OFFSET FLAT:label_791
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	movabs	rdi, OFFSET FLAT:label_795
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_896:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_739
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_820:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_804
	jmp	.label_808
.label_808:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_810
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_810:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_815
.label_815:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_820
.label_804:
	jmp	.label_739
.label_739:
	mov	byte ptr [rbp - 0x79], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_777
.label_1217:
	mov	byte ptr [rbp - 0x79], 1
.label_1216:
	mov	byte ptr [rbp - 0x7b], 1
.label_1218:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_833
	mov	byte ptr [rbp - 0x79], 1
.label_833:
	jmp	.label_745
.label_745:
	mov	dword ptr [rbp - 0x34], 2
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_835
	jmp	.label_837
.label_837:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_839
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_839:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_835
.label_835:
	movabs	rax, OFFSET FLAT:label_795
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_777
.label_1215:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_777
.label_750:
	call	abort
.label_777:
	mov	qword ptr [rbp - 0x58], 0
.label_905:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_755
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_899
.label_755:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], edx
.label_899:
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_864
	jmp	.label_811
.label_864:
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	je	.label_871
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_871
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_871
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	jne	.label_878
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_878
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_910
.label_878:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_910:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	ja	.label_871
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_871
	test	byte ptr [rbp - 0x7b], 1
	je	.label_900
	jmp	.label_717
.label_900:
	mov	byte ptr [rbp - 0x81], 1
.label_871:
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
	ja	.label_904
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_909]]
	jmp	rcx
.label_1176:
	test	byte ptr [rbp - 0x79], 1
	je	.label_708
	jmp	.label_818
.label_818:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_713
	jmp	.label_717
.label_713:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_724
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_724
	jmp	.label_726
.label_726:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_807
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_807:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_732
.label_732:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_854
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_854:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_882
.label_882:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_747
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_747:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_724:
	jmp	.label_757
.label_757:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_759
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_759:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_792
.label_792:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_770
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_770
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_770
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x39
	jg	.label_770
	jmp	.label_785
.label_785:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_787
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_787:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_794
.label_794:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_798
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_798:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_770
.label_770:
	mov	byte ptr [rbp - 0x7f], 0x30
	jmp	.label_809
.label_708:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_813
	jmp	.label_816
.label_813:
	jmp	.label_809
.label_809:
	jmp	.label_714
.label_1187:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0x100], ecx
	je	.label_817
	jmp	.label_824
.label_824:
	mov	eax, dword ptr [rbp - 0xfc]
	sub	eax, 5
	mov	dword ptr [rbp - 0x104], eax
	je	.label_825
	jmp	.label_903
.label_817:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_907
	jmp	.label_717
.label_907:
	jmp	.label_832
.label_825:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_731
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_731
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3f
	jne	.label_731
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 2]
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	je	.label_774
	jmp	.label_845
.label_845:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	jb	.label_774
	jmp	.label_848
.label_848:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	je	.label_774
	jmp	.label_855
.label_855:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2f
	mov	dword ptr [rbp - 0x118], eax
	je	.label_774
	jmp	.label_859
.label_859:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	ja	.label_860
	jmp	.label_774
.label_774:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_782
	jmp	.label_717
.label_782:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_870
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_870:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_877
.label_877:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_880
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_880:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_886
.label_886:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_891
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_891:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_893
.label_893:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_827
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_827:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_898
.label_860:
	jmp	.label_898
.label_898:
	jmp	.label_731
.label_731:
	jmp	.label_832
.label_903:
	jmp	.label_832
.label_832:
	jmp	.label_714
.label_1177:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_707
.label_1178:
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_707
.label_1182:
	mov	byte ptr [rbp - 0x80], 0x66
	jmp	.label_707
.label_1180:
	mov	byte ptr [rbp - 0x80], 0x6e
	jmp	.label_729
.label_1183:
	mov	byte ptr [rbp - 0x80], 0x72
	jmp	.label_729
.label_1179:
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_729
.label_1181:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_707
.label_1188:
	mov	al, byte ptr [rbp - 0x7f]
	mov	byte ptr [rbp - 0x80], al
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_711
	test	byte ptr [rbp - 0x7b], 1
	je	.label_716
	jmp	.label_717
.label_716:
	jmp	.label_721
.label_711:
	test	byte ptr [rbp - 0x79], 1
	je	.label_722
	test	byte ptr [rbp - 0x7b], 1
	je	.label_722
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_722
	jmp	.label_721
.label_722:
	jmp	.label_729
.label_729:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_730
	test	byte ptr [rbp - 0x7b], 1
	je	.label_730
	jmp	.label_717
.label_730:
	jmp	.label_707
.label_707:
	test	byte ptr [rbp - 0x79], 1
	je	.label_736
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_715
.label_736:
	jmp	.label_714
.label_1189:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_743
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_748
	jmp	.label_753
.label_743:
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_748
.label_753:
	jmp	.label_714
.label_748:
	jmp	.label_756
.label_756:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_758
	jmp	.label_714
.label_758:
	jmp	.label_761
.label_761:
	mov	byte ptr [rbp - 0x83], 1
.label_1184:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_764
	test	byte ptr [rbp - 0x7b], 1
	je	.label_764
	jmp	.label_717
.label_764:
	jmp	.label_714
.label_1186:
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_771
	test	byte ptr [rbp - 0x7b], 1
	je	.label_775
	jmp	.label_717
.label_775:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_865
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_865
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_865:
	jmp	.label_789
.label_789:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_888
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_888:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_797
.label_797:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_800
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_800:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_806
.label_806:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_814
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_814:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_771:
	jmp	.label_714
.label_1185:
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_714
.label_904:
	test	byte ptr [rbp - 0x7a], 1
	je	.label_884
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
	jmp	.label_720
.label_884:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_841
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_841:
	jmp	.label_749
.label_749:
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
	jne	.label_857
	jmp	.label_751
.label_857:
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_863
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_751
.label_863:
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_868
	mov	byte ptr [rbp - 0x91], 0
.label_887:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_872
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_872:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_883
	jmp	.label_885
.label_883:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_887
.label_885:
	jmp	.label_751
.label_868:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_728
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_728
	mov	qword ptr [rbp - 0xb8], 1
.label_725:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_895
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
	jb	.label_741
	jmp	.label_906
.label_906:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x138], eax
	je	.label_741
	jmp	.label_897
.label_897:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_741
	jmp	.label_710
.label_710:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_712
	jmp	.label_741
.label_741:
	jmp	.label_717
.label_712:
	jmp	.label_803
.label_803:
	jmp	.label_784
.label_784:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_725
.label_895:
	jmp	.label_728
.label_728:
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_733
	mov	byte ptr [rbp - 0x91], 0
.label_733:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_735
.label_735:
	jmp	.label_740
.label_740:
	jmp	.label_742
.label_742:
	lea	rdi, [rbp - 0xa0]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_749
.label_751:
	jmp	.label_720
.label_720:
	mov	eax, 1
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	jb	.label_754
	test	byte ptr [rbp - 0x79], 1
	je	.label_765
	test	byte ptr [rbp - 0x91], 1
	jne	.label_765
.label_754:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_768:
	test	byte ptr [rbp - 0x79], 1
	je	.label_772
	test	byte ptr [rbp - 0x91], 1
	jne	.label_772
	jmp	.label_852
.label_852:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_778
	jmp	.label_717
.label_778:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_781
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_781
	jmp	.label_788
.label_788:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_790
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_790:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_796
.label_796:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_799
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_799:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_805
.label_805:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_812
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_812:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_781:
	jmp	.label_819
.label_819:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_821
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_821:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_826
.label_826:
	jmp	.label_830
.label_830:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_831
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 6
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_831:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_836
.label_836:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_840
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 3
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_840:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_843
.label_772:
	test	byte ptr [rbp - 0x81], 1
	je	.label_847
	jmp	.label_849
.label_849:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_851
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_851:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x81], 0
.label_847:
	jmp	.label_843
.label_843:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_861
	jmp	.label_866
.label_861:
	jmp	.label_867
.label_867:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_869
	test	byte ptr [rbp - 0x82], 1
	jne	.label_869
	jmp	.label_873
.label_873:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_874
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_874:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_876
.label_876:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_879
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_879:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_869:
	jmp	.label_889
.label_889:
	jmp	.label_890
.label_890:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_892
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_892:
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
	jmp	.label_768
.label_866:
	jmp	.label_721
.label_765:
	jmp	.label_714
.label_714:
	test	byte ptr [rbp - 0x79], 1
	je	.label_901
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_902
.label_901:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_894
.label_902:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_894
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
	jne	.label_709
.label_894:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_709
	jmp	.label_721
.label_709:
	jmp	.label_715
.label_715:
	jmp	.label_908
.label_908:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_719
	jmp	.label_717
.label_719:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_723
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_723
	jmp	.label_727
.label_727:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_828
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_828:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_734
.label_734:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_737
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_737:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_746
.label_746:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_752
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_752:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_723:
	jmp	.label_760
.label_760:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_762
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_762:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_769
.label_769:
	jmp	.label_721
.label_721:
	jmp	.label_838
.label_838:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_773
	test	byte ptr [rbp - 0x82], 1
	jne	.label_773
	jmp	.label_779
.label_779:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_780
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_780:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_786
.label_786:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_793
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_793:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_773:
	jmp	.label_801
.label_801:
	jmp	.label_802
.label_802:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_783
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_783:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x83], 1
	jne	.label_823
	mov	byte ptr [rbp - 0x7e], 0
.label_823:
	jmp	.label_816
.label_816:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_905
.label_811:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_822
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_822
	test	byte ptr [rbp - 0x7b], 1
	je	.label_822
	jmp	.label_717
.label_822:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_829
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_829
	test	byte ptr [rbp - 0x7d], 1
	je	.label_829
	test	byte ptr [rbp - 0x7e], 1
	je	.label_834
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
	jmp	.label_842
.label_834:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_844
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_844
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_846
.label_844:
	jmp	.label_850
.label_850:
	jmp	.label_829
.label_829:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_853
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_853
	jmp	.label_856
.label_856:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_858
	jmp	.label_738
.label_738:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_862
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_862:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_718
.label_718:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_856
.label_858:
	jmp	.label_853
.label_853:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_875
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_875:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_842
.label_717:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_881
	test	byte ptr [rbp - 0x79], 1
	je	.label_881
	mov	dword ptr [rbp - 0x34], 4
.label_881:
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
.label_842:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408bb0
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
	.align	32
	#Procedure 0x408bf0

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
	je	.label_911
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_912
.label_911:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_912
.label_912:
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
	je	.label_913
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_913:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408d50
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_915:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_916
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_915
.label_916:
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 8], rax
	je	.label_918
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	qword ptr [word ptr [label_917]],  rax
.label_918:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_914
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_914:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408e30

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
	.align	32
	#Procedure 0x408e70

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
	jge	.label_919
	call	abort
.label_919:
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_923
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x31], cl
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	jge	.label_926
	call	xalloc_die
.label_926:
	test	byte ptr [rbp - 0x31], 1
	je	.label_922
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_925
.label_922:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_925:
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
	je	.label_924
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_917]]
	mov	qword ptr [rax + 8], rcx
.label_924:
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
.label_923:
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
	ja	.label_920
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	cmp	qword ptr [rbp - 0x48], rax
	je	.label_921
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_921:
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
.label_920:
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
	.align	32
	#Procedure 0x4090f0

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
	.align	32
	#Procedure 0x409130
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
	.align	32
	#Procedure 0x409150
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
	.align	32
	#Procedure 0x409180

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
	.align	32
	#Procedure 0x4091c0

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
	jne	.label_927
	call	abort
.label_927:
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
	.align	32
	#Procedure 0x409230

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
	.align	32
	#Procedure 0x409270
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
	.align	32
	#Procedure 0x4092a0
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
	.align	32
	#Procedure 0x4092d0

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
	.align	32
	#Procedure 0x409350

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
	.align	32
	#Procedure 0x409380

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
	.align	32
	#Procedure 0x4093a0
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
	.align	32
	#Procedure 0x4093d0
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
	.align	32
	#Procedure 0x409480

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
	.align	32
	#Procedure 0x4094c0

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
	.align	32
	#Procedure 0x409540
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
	.align	32
	#Procedure 0x409570
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
	.align	32
	#Procedure 0x4095b0

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
	.align	32
	#Procedure 0x4095f0
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
	.align	32
	#Procedure 0x409620

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
	.align	32
	#Procedure 0x409650

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
	.align	32
	#Procedure 0x409670

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
	je	.label_929
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_934
.label_929:
	call	locale_charset
	movabs	rsi, OFFSET FLAT:label_930
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_928
	movabs	rax, OFFSET FLAT:label_932
	movabs	rcx, OFFSET FLAT:label_933
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_934
.label_928:
	movabs	rsi, OFFSET FLAT:label_937
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_931
	movabs	rax, OFFSET FLAT:label_935
	movabs	rcx, OFFSET FLAT:label_936
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_934
.label_931:
	movabs	rax, OFFSET FLAT:label_795
	movabs	rcx, OFFSET FLAT:label_776
	cmp	dword ptr [rbp - 0x14], 9
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_934:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409770

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
	je	.label_944
	movabs	rsi, OFFSET FLAT:label_950
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_939
.label_944:
	movabs	rsi, OFFSET FLAT:label_943
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_939:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:label_951
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
	mov	ecx, OFFSET FLAT:label_941
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
	ja	.label_955
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_946]]
	jmp	rcx
.label_1132:
	jmp	.label_942
.label_1133:
	movabs	rdi, OFFSET FLAT:label_952
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
	jmp	.label_942
.label_1134:
	movabs	rdi, OFFSET FLAT:label_949
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
	jmp	.label_942
.label_1135:
	movabs	rdi, OFFSET FLAT:label_948
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
	jmp	.label_942
.label_1136:
	movabs	rdi, OFFSET FLAT:label_940
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
	jmp	.label_942
.label_1137:
	movabs	rdi, OFFSET FLAT:label_945
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
	jmp	.label_942
.label_1138:
	movabs	rdi, OFFSET FLAT:label_953
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
	jmp	.label_942
.label_1139:
	movabs	rdi, OFFSET FLAT:label_956
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
	jmp	.label_942
.label_1140:
	movabs	rdi, OFFSET FLAT:label_947
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
	jmp	.label_942
.label_1141:
	movabs	rdi, OFFSET FLAT:label_938
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
	jmp	.label_942
.label_955:
	movabs	rdi, OFFSET FLAT:label_954
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
.label_942:
	add	rsp, 0x180
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409d30
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
.label_959:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_957
	jmp	.label_958
.label_958:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_959
.label_957:
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
	.align	32
	#Procedure 0x409da0

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
.label_963:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_960
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_965
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_964
.label_965:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_964:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x81], dl
.label_960:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_966
	jmp	.label_961
.label_966:
	jmp	.label_962
.label_962:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_963
.label_961:
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
	.align	32
	#Procedure 0x409eb0

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
	je	.label_967
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
.label_967:
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
	.align	32
	#Procedure 0x40a020
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_968
	call	gettext
	movabs	rsi, OFFSET FLAT:label_970
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_969
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_48
	movabs	rdx, OFFSET FLAT:label_49
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_971
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
	.align	32
	#Procedure 0x40a0b0
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
	jae	.label_972
	call	xalloc_die
.label_972:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a100

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
	jne	.label_973
	cmp	qword ptr [rbp - 8], 0
	je	.label_973
	call	xalloc_die
.label_973:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a140
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
	jae	.label_974
	call	xalloc_die
.label_974:
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	xrealloc
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a190

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_975
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_975
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_977
.label_975:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_976
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_976
	call	xalloc_die
.label_976:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_977:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a210

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
	jne	.label_978
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_981
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
.label_981:
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_979
	call	xalloc_die
.label_979:
	jmp	.label_980
.label_978:
	movabs	rax, 0x5555555555555554
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_982
	call	xalloc_die
.label_982:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_980:
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
	.align	32
	#Procedure 0x40a300

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
	.align	32
	#Procedure 0x40a320
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
	.align	32
	#Procedure 0x40a350
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
	.align	32
	#Procedure 0x40a390
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
	jb	.label_983
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_984
.label_983:
	call	xalloc_die
.label_984:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a3f0

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
	.align	32
	#Procedure 0x40a430

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
	.align	32
	#Procedure 0x40a470

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_985
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:label_641
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40a4b0

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
	jne	.label_986
	call	xalloc_die
.label_986:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a4f0

	.globl xstrtol
	.type xstrtol, @function
xstrtol:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
	xor	eax, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	dword ptr [rbp - 0x4c], 0
	cmp	eax, dword ptr [rbp - 0x1c]
	jg	.label_996
	cmp	dword ptr [rbp - 0x1c], 0x24
	jg	.label_996
	jmp	.label_1000
.label_996:
	movabs	rdi, OFFSET FLAT:label_1001
	movabs	rsi, OFFSET FLAT:label_1002
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:label_1003
	call	__assert_fail
.label_1000:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_992
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1006
.label_992:
	lea	rax, [rbp - 0x38]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1006
.label_1006:
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
	jne	.label_1018
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1019
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_1019
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	je	.label_1019
	mov	qword ptr [rbp - 0x48], 1
	jmp	.label_1024
.label_1019:
	mov	dword ptr [rbp - 4], 4
	jmp	.label_988
.label_1024:
	jmp	.label_990
.label_1018:
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_994
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	je	.label_1026
	mov	dword ptr [rbp - 4], 4
	jmp	.label_988
.label_1026:
	mov	dword ptr [rbp - 0x4c], 1
.label_994:
	jmp	.label_990
.label_990:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_1005
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
	jmp	.label_988
.label_1005:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_1011
	mov	dword ptr [rbp - 0x50], 0x400
	mov	dword ptr [rbp - 0x54], 1
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	jne	.label_1016
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_988
.label_1016:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x64], ecx
	mov	dword ptr [rbp - 0x68], edx
	je	.label_987
	jmp	.label_1021
.label_1021:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x6c], eax
	je	.label_987
	jmp	.label_1022
.label_1022:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x70], eax
	je	.label_987
	jmp	.label_1025
.label_1025:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x74], eax
	je	.label_987
	jmp	.label_993
.label_993:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x78], eax
	je	.label_987
	jmp	.label_998
.label_998:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x7c], eax
	je	.label_987
	jmp	.label_1004
.label_1004:
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, -0x59
	sub	eax, 2
	mov	dword ptr [rbp - 0x80], eax
	jb	.label_987
	jmp	.label_1007
.label_1007:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x84], eax
	je	.label_987
	jmp	.label_1012
.label_1012:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0x88], eax
	je	.label_987
	jmp	.label_1013
.label_1013:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_987
	jmp	.label_1015
.label_1015:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x90], eax
	jne	.label_1009
	jmp	.label_987
.label_987:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x30]
	call	strchr
	cmp	rax, 0
	je	.label_1008
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	edx, ecx
	sub	edx, 0x42
	mov	dword ptr [rbp - 0x94], ecx
	mov	dword ptr [rbp - 0x98], edx
	je	.label_1017
	jmp	.label_1023
.label_1023:
	mov	eax, dword ptr [rbp - 0x94]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_1017
	jmp	.label_989
.label_989:
	mov	eax, dword ptr [rbp - 0x94]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xa0], eax
	jne	.label_991
	jmp	.label_995
.label_995:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x42
	jne	.label_997
	mov	eax, dword ptr [rbp - 0x54]
	add	eax, 2
	mov	dword ptr [rbp - 0x54], eax
.label_997:
	jmp	.label_991
.label_1017:
	mov	dword ptr [rbp - 0x50], 0x3e8
	mov	eax, dword ptr [rbp - 0x54]
	add	eax, 1
	mov	dword ptr [rbp - 0x54], eax
.label_991:
	jmp	.label_1008
.label_1008:
	jmp	.label_1009
.label_1009:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	mov	eax, ecx
	sub	ecx, 0x35
	mov	qword ptr [rbp - 0xa8], rax
	mov	dword ptr [rbp - 0xac], ecx
	ja	.label_1010
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1014]]
	jmp	rcx
.label_1233:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x200
	call	bkm_scale
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_999
.label_1224:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x400
	call	bkm_scale
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_999
.label_1234:
	mov	dword ptr [rbp - 0x58], 0
	jmp	.label_999
.label_1225:
	lea	rdi, [rbp - 0x48]
	mov	edx, 6
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_999
.label_1226:
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_999
.label_1227:
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_999
.label_1228:
	lea	rdi, [rbp - 0x48]
	mov	edx, 2
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_999
.label_1229:
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_999
.label_1230:
	lea	rdi, [rbp - 0x48]
	mov	edx, 4
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_999
.label_1235:
	lea	rdi, [rbp - 0x48]
	mov	esi, 2
	call	bkm_scale
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_999
.label_1231:
	lea	rdi, [rbp - 0x48]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_999
.label_1232:
	lea	rdi, [rbp - 0x48]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_999
.label_1010:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_988
.label_999:
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
	je	.label_1020
	mov	eax, dword ptr [rbp - 0x4c]
	or	eax, 2
	mov	dword ptr [rbp - 0x4c], eax
.label_1020:
	jmp	.label_1011
.label_1011:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
.label_988:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xb0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40aa20

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale_0:
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
	jge	.label_1027
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1028
.label_1027:
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0x14]
	cqo	
	idiv	rcx
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx]
	jge	.label_1029
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1028
.label_1029:
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_1028:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40aad0

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
.label_1031:
	mov	eax, dword ptr [rbp - 0x10]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x10], ecx
	cmp	eax, 0
	je	.label_1030
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	bkm_scale
	or	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_1031
.label_1030:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ab20

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xd0
	xor	eax, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	dword ptr [rbp - 0x4c], 0
	cmp	eax, dword ptr [rbp - 0x1c]
	jg	.label_1040
	cmp	dword ptr [rbp - 0x1c], 0x24
	jg	.label_1040
	jmp	.label_1048
.label_1040:
	movabs	rdi, OFFSET FLAT:label_1001
	movabs	rsi, OFFSET FLAT:label_1049
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:label_1050
	call	__assert_fail
.label_1048:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1054
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1057
.label_1054:
	lea	rax, [rbp - 0x38]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1057
.label_1057:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x40], rax
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x59], cl
.label_1068:
	movzx	eax, byte ptr [rbp - 0x59]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x78], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x2000
	cmp	edx, 0
	je	.label_1070
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x59], dl
	jmp	.label_1068
.label_1070:
	movzx	eax, byte ptr [rbp - 0x59]
	cmp	eax, 0x2d
	jne	.label_1038
	mov	dword ptr [rbp - 4], 4
	jmp	.label_1041
.label_1038:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x1c]
	call	strtoumax
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_1045
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1047
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_1047
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	je	.label_1047
	mov	qword ptr [rbp - 0x48], 1
	jmp	.label_1056
.label_1047:
	mov	dword ptr [rbp - 4], 4
	jmp	.label_1041
.label_1056:
	jmp	.label_1060
.label_1045:
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_1061
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	je	.label_1065
	mov	dword ptr [rbp - 4], 4
	jmp	.label_1041
.label_1065:
	mov	dword ptr [rbp - 0x4c], 1
.label_1061:
	jmp	.label_1060
.label_1060:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_1069
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
	jmp	.label_1041
.label_1069:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_1032
	mov	dword ptr [rbp - 0x60], 0x400
	mov	dword ptr [rbp - 0x64], 1
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	jne	.label_1044
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_1041
.label_1044:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x7c], ecx
	mov	dword ptr [rbp - 0x80], edx
	je	.label_1033
	jmp	.label_1051
.label_1051:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x84], eax
	je	.label_1033
	jmp	.label_1055
.label_1055:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x88], eax
	je	.label_1033
	jmp	.label_1059
.label_1059:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_1033
	jmp	.label_1063
.label_1063:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x90], eax
	je	.label_1033
	jmp	.label_1067
.label_1067:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x94], eax
	je	.label_1033
	jmp	.label_1071
.label_1071:
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, -0x59
	sub	eax, 2
	mov	dword ptr [rbp - 0x98], eax
	jb	.label_1033
	jmp	.label_1073
.label_1073:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_1033
	jmp	.label_1039
.label_1039:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_1033
	jmp	.label_1064
.label_1064:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_1033
	jmp	.label_1046
.label_1046:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xa8], eax
	jne	.label_1035
	jmp	.label_1033
.label_1033:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x30]
	call	strchr
	cmp	rax, 0
	je	.label_1034
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	edx, ecx
	sub	edx, 0x42
	mov	dword ptr [rbp - 0xac], ecx
	mov	dword ptr [rbp - 0xb0], edx
	je	.label_1053
	jmp	.label_1058
.label_1058:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_1053
	jmp	.label_1062
.label_1062:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xb8], eax
	jne	.label_1072
	jmp	.label_1066
.label_1066:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x42
	jne	.label_1043
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 2
	mov	dword ptr [rbp - 0x64], eax
.label_1043:
	jmp	.label_1072
.label_1053:
	mov	dword ptr [rbp - 0x60], 0x3e8
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 1
	mov	dword ptr [rbp - 0x64], eax
.label_1072:
	jmp	.label_1034
.label_1034:
	jmp	.label_1035
.label_1035:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	mov	eax, ecx
	sub	ecx, 0x35
	mov	qword ptr [rbp - 0xc0], rax
	mov	dword ptr [rbp - 0xc4], ecx
	ja	.label_1037
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1042]]
	jmp	rcx
.label_1162:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x200
	call	bkm_scale_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1036
.label_1153:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x400
	call	bkm_scale_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1036
.label_1163:
	mov	dword ptr [rbp - 0x68], 0
	jmp	.label_1036
.label_1154:
	lea	rdi, [rbp - 0x48]
	mov	edx, 6
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1036
.label_1155:
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1036
.label_1156:
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1036
.label_1157:
	lea	rdi, [rbp - 0x48]
	mov	edx, 2
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1036
.label_1158:
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1036
.label_1159:
	lea	rdi, [rbp - 0x48]
	mov	edx, 4
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1036
.label_1164:
	lea	rdi, [rbp - 0x48]
	mov	esi, 2
	call	bkm_scale_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1036
.label_1160:
	lea	rdi, [rbp - 0x48]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1036
.label_1161:
	lea	rdi, [rbp - 0x48]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1036
.label_1037:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_1041
.label_1036:
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
	je	.label_1052
	mov	eax, dword ptr [rbp - 0x4c]
	or	eax, 2
	mov	dword ptr [rbp - 0x4c], eax
.label_1052:
	jmp	.label_1032
.label_1032:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
.label_1041:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b0d0

	.globl bkm_scale_0
	.type bkm_scale_0, @function
bkm_scale:
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
	jae	.label_1074
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], -1
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1075
.label_1074:
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_1075:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b130

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
.label_1077:
	mov	eax, dword ptr [rbp - 0x10]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x10], ecx
	cmp	eax, 0
	je	.label_1076
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	bkm_scale_0
	or	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_1077
.label_1076:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b180

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
	jne	.label_1078
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_1078:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	mbrtowc
	mov	rcx, -2
	mov	qword ptr [rbp - 0x30], rax
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_1079
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1079
	xor	edi, edi
	call	hard_locale
	test	al, 1
	jne	.label_1079
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], edx
	mov	qword ptr [rbp - 8], 1
	jmp	.label_1080
.label_1079:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_1080:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b230

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
	ja	.label_1081
	jmp	.label_1083
.label_1083:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	add	eax, 0x2001a
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1082
.label_1081:
	jmp	.label_1082
.label_1082:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b280

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
	jne	.label_1084
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1088
.label_1084:
	jmp	.label_1085
.label_1085:
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
	jne	.label_1087
	jmp	.label_1086
.label_1087:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	je	.label_1085
.label_1086:
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_1088:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b340

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
	jne	.label_1089
	test	byte ptr [rbp - 0x13], 1
	je	.label_1091
	test	byte ptr [rbp - 0x11], 1
	jne	.label_1089
	call	__errno_location
	cmp	dword ptr [rax], 9
	je	.label_1091
.label_1089:
	test	byte ptr [rbp - 0x13], 1
	jne	.label_1092
	call	__errno_location
	mov	dword ptr [rax], 0
.label_1092:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1090
.label_1091:
	mov	dword ptr [rbp - 4], 0
.label_1090:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b3f0

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
	je	.label_1093
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_1096
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_1097
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_1095
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_1094
.label_1097:
	mov	byte ptr [rbp - 5], 0
.label_1094:
	jmp	.label_1093
.label_1093:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b470

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
	jne	.label_1098
	movabs	rax, OFFSET FLAT:label_45
	mov	qword ptr [rbp - 8], rax
.label_1098:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_1099
	movabs	rax, OFFSET FLAT:label_1100
	mov	qword ptr [rbp - 8], rax
.label_1099:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b4d0

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
	jge	.label_1104
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1101
.label_1104:
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	je	.label_1105
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_1103
.label_1105:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_1103
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_1103:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_1102
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_1102:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_1101:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b5a0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1106
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_1107
.label_1106:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1108
.label_1107:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_1108:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b600

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
	je	.label_1109
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fseeko
	mov	dword ptr [rbp - 0xc], eax
.label_1109:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b640

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
	jne	.label_1110
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_1110
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_1110
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_1111
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1112
.label_1111:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x90], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1112
.label_1110:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fseeko
	mov	dword ptr [rbp - 4], eax
.label_1112:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
