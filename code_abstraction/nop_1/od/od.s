	.section	.text
	.align	16
	#Procedure 0x4018d0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_7
	jmp	.label_9
.label_9:
	movabs	rdi, OFFSET FLAT:.str
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_8
.label_7:
	movabs	rdi, OFFSET FLAT:.str.1
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rcx,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.2
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x1c], eax
	call	emit_stdin_note
	movabs	rdi, OFFSET FLAT:.str.3
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x20], eax
	call	emit_mandatory_arg_note
	movabs	rdi, OFFSET FLAT:.str.4
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.5
	mov	dword ptr [rbp - 0x24], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.6
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.7
	mov	dword ptr [rbp - 0x2c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.8
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.9
	mov	dword ptr [rbp - 0x34], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.10
	mov	dword ptr [rbp - 0x38], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.11
	mov	dword ptr [rbp - 0x3c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.12
	mov	dword ptr [rbp - 0x40], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.13
	mov	dword ptr [rbp - 0x44], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.14
	mov	dword ptr [rbp - 0x48], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.15
	mov	dword ptr [rbp - 0x4c], eax
	call	emit_ancillary_info
.label_8:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	16
	#Procedure 0x401b40

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.46
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
	#Procedure 0x401b70

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.47
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
	#Procedure 0x401ba0

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
.label_11:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_10
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_10:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_14
	jmp	.label_15
.label_14:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_11
.label_15:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_12
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_12:
	movabs	rdi, OFFSET FLAT:.str.56
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.17
	movabs	rdx, OFFSET FLAT:.str.18
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
	je	.label_13
	movabs	rsi, OFFSET FLAT:.str.58
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_13
	movabs	rdi, OFFSET FLAT:.str.59
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_13:
	movabs	rdi, OFFSET FLAT:.str.60
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.18
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.61
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:.str_0
	movabs	rsi, OFFSET FLAT:.str.62
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
	#Procedure 0x401d40

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x190
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	byte ptr [rbp - 0x31], 0
	mov	byte ptr [rbp - 0x32], 0
	mov	byte ptr [rbp - 0x33], 1
	mov	qword ptr [rbp - 0x40], 0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:.str_0
	call	setlocale
	movabs	rdi, OFFSET FLAT:.str.17_0
	movabs	rsi, OFFSET FLAT:.str.18_0
	mov	qword ptr [rbp - 0x90], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:.str.17_0
	mov	qword ptr [rbp - 0x98], rax
	call	textdomain
	movabs	rdi, OFFSET FLAT:close_stdout
	mov	qword ptr [rbp - 0xa0], rax
	call	atexit
	mov	qword ptr [rbp - 0x20], 0
	mov	dword ptr [rbp - 0xa4], eax
.label_160:
	cmp	qword ptr [rbp - 0x20], 8
	ja	.label_159
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [dword ptr [+ (rax * 4) + integral_type_size]],  0
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_160
.label_159:
	mov	dword ptr [dword ptr [label_22]],  1
	mov	dword ptr [dword ptr [label_23]],  2
	mov	dword ptr [dword ptr [label_24]],  3
	mov	dword ptr [dword ptr [label_25]],  4
	mov	dword ptr [dword ptr [label_25]],  5
	mov	qword ptr [rbp - 0x20], 0
.label_48:
	cmp	qword ptr [rbp - 0x20], 0x10
	ja	.label_55
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [dword ptr [+ (rax * 4) + fp_type_size]],  0
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_48
.label_55:
	movabs	rax, OFFSET FLAT:format_address_std
	mov	dword ptr [dword ptr [label_57]],  6
	mov	dword ptr [dword ptr [label_58]],  8
	mov	dword ptr [dword ptr [label_59]],  7
	mov	qword ptr [word ptr [n_specs]],  0
	mov	qword ptr [word ptr [n_specs_allocated]],  0
	mov	qword ptr [word ptr [spec]],  0
	mov	qword ptr [word ptr [format_address]],  rax
	mov	dword ptr [dword ptr [address_base]],  8
	mov	dword ptr [dword ptr [address_pad_len]],  7
	mov	byte ptr [byte ptr [flag_dump_strings]],  0
.label_154:
	movabs	rdx, OFFSET FLAT:short_options
	movabs	rcx, OFFSET FLAT:long_options
	lea	r8, [rbp - 0x58]
	mov	dword ptr [rbp - 0x58], 0xffffffff
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0x5c], eax
	cmp	dword ptr [rbp - 0x5c], -1
	jne	.label_110
	jmp	.label_113
.label_110:
	mov	eax, dword ptr [rbp - 0x5c]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	mov	dword ptr [rbp - 0xa8], eax
	mov	dword ptr [rbp - 0xac], ecx
	je	.label_115
	jmp	.label_121
.label_121:
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0xffffff7e
	mov	dword ptr [rbp - 0xb0], eax
	je	.label_124
	jmp	.label_130
.label_130:
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x41
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_146
	jmp	.label_136
.label_136:
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x42
	mov	dword ptr [rbp - 0xb8], eax
	je	.label_138
	jmp	.label_142
.label_142:
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0xbc], eax
	je	.label_143
	jmp	.label_147
.label_147:
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x46
	mov	dword ptr [rbp - 0xc0], eax
	je	.label_101
	jmp	.label_94
.label_94:
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x48
	mov	dword ptr [rbp - 0xc4], eax
	je	.label_31
	jmp	.label_134
.label_134:
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x49
	mov	dword ptr [rbp - 0xc8], eax
	je	.label_19
	jmp	.label_16
.label_16:
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x4c
	mov	dword ptr [rbp - 0xcc], eax
	je	.label_19
	jmp	.label_28
.label_28:
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x4e
	mov	dword ptr [rbp - 0xd0], eax
	je	.label_29
	jmp	.label_35
.label_35:
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x4f
	mov	dword ptr [rbp - 0xd4], eax
	je	.label_36
	jmp	.label_63
.label_63:
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x53
	mov	dword ptr [rbp - 0xd8], eax
	je	.label_47
	jmp	.label_52
.label_52:
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x58
	mov	dword ptr [rbp - 0xdc], eax
	je	.label_31
	jmp	.label_70
.label_70:
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x61
	mov	dword ptr [rbp - 0xe0], eax
	je	.label_120
	jmp	.label_69
.label_69:
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x62
	mov	dword ptr [rbp - 0xe4], eax
	je	.label_74
	jmp	.label_81
.label_81:
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0xe8], eax
	je	.label_83
	jmp	.label_88
.label_88:
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x64
	mov	dword ptr [rbp - 0xec], eax
	je	.label_92
	jmp	.label_100
.label_100:
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x65
	mov	dword ptr [rbp - 0xf0], eax
	je	.label_101
	jmp	.label_158
.label_158:
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x66
	mov	dword ptr [rbp - 0xf4], eax
	je	.label_106
	jmp	.label_111
.label_111:
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x68
	mov	dword ptr [rbp - 0xf8], eax
	je	.label_91
	jmp	.label_129
.label_129:
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xfc], eax
	je	.label_67
	jmp	.label_126
.label_126:
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x6a
	mov	dword ptr [rbp - 0x100], eax
	je	.label_128
	jmp	.label_132
.label_132:
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x6c
	mov	dword ptr [rbp - 0x104], eax
	je	.label_19
	jmp	.label_139
.label_139:
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x6f
	mov	dword ptr [rbp - 0x108], eax
	je	.label_138
	jmp	.label_33
.label_33:
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x73
	mov	dword ptr [rbp - 0x10c], eax
	je	.label_145
	jmp	.label_149
.label_149:
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x110], eax
	je	.label_66
	jmp	.label_137
.label_137:
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x76
	mov	dword ptr [rbp - 0x114], eax
	je	.label_156
	jmp	.label_125
.label_125:
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x77
	mov	dword ptr [rbp - 0x118], eax
	je	.label_151
	jmp	.label_39
.label_39:
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x78
	mov	dword ptr [rbp - 0x11c], eax
	je	.label_91
	jmp	.label_30
.label_30:
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x80
	mov	dword ptr [rbp - 0x120], eax
	je	.label_27
	jmp	.label_37
.label_37:
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x81
	mov	dword ptr [rbp - 0x124], eax
	je	.label_122
	jmp	.label_49
.label_146:
	mov	byte ptr [rbp - 0x31], 1
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x64
	mov	dword ptr [rbp - 0x128], ecx
	mov	dword ptr [rbp - 0x12c], edx
	je	.label_50
	jmp	.label_64
.label_64:
	mov	eax, dword ptr [rbp - 0x128]
	sub	eax, 0x6e
	mov	dword ptr [rbp - 0x130], eax
	je	.label_65
	jmp	.label_71
.label_71:
	mov	eax, dword ptr [rbp - 0x128]
	sub	eax, 0x6f
	mov	dword ptr [rbp - 0x134], eax
	je	.label_75
	jmp	.label_82
.label_82:
	mov	eax, dword ptr [rbp - 0x128]
	sub	eax, 0x78
	mov	dword ptr [rbp - 0x138], eax
	je	.label_84
	jmp	.label_89
.label_50:
	movabs	rax, OFFSET FLAT:format_address_std
	mov	qword ptr [word ptr [format_address]],  rax
	mov	dword ptr [dword ptr [address_base]],  0xa
	mov	dword ptr [dword ptr [address_pad_len]],  7
	jmp	.label_93
.label_75:
	movabs	rax, OFFSET FLAT:format_address_std
	mov	qword ptr [word ptr [format_address]],  rax
	mov	dword ptr [dword ptr [address_base]],  8
	mov	dword ptr [dword ptr [address_pad_len]],  7
	jmp	.label_93
.label_84:
	movabs	rax, OFFSET FLAT:format_address_std
	mov	qword ptr [word ptr [format_address]],  rax
	mov	dword ptr [dword ptr [address_base]],  0x10
	mov	dword ptr [dword ptr [address_pad_len]],  6
	jmp	.label_93
.label_65:
	movabs	rax, OFFSET FLAT:format_address_none
	mov	qword ptr [word ptr [format_address]],  rax
	mov	dword ptr [dword ptr [address_pad_len]],  0
	jmp	.label_93
.label_89:
	movabs	rdi, OFFSET FLAT:.str.19
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rcx,  qword ptr [word ptr [optarg]]
	movsx	ecx, byte ptr [rcx]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_93:
	jmp	.label_18
.label_128:
	xor	eax, eax
	mov	esi, eax
	xor	edx, edx
	movabs	rcx, OFFSET FLAT:n_bytes_to_skip
	movabs	r8, OFFSET FLAT:main.multipliers
	mov	byte ptr [rbp - 0x31], 1
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	xstrtoumax
	mov	dword ptr [rbp - 0x54], eax
	cmp	dword ptr [rbp - 0x54], 0
	je	.label_157
	movabs	rcx, OFFSET FLAT:long_options
	mov	edi, dword ptr [rbp - 0x54]
	mov	esi, dword ptr [rbp - 0x58]
	mov	eax, dword ptr [rbp - 0x5c]
	mov	dl, al
	mov	r8,  qword ptr [word ptr [optarg]]
	movsx	edx, dl
	call	xstrtol_fatal
.label_157:
	jmp	.label_18
.label_29:
	xor	eax, eax
	mov	esi, eax
	xor	edx, edx
	movabs	rcx, OFFSET FLAT:max_bytes_to_format
	movabs	r8, OFFSET FLAT:main.multipliers
	mov	byte ptr [rbp - 0x31], 1
	mov	byte ptr [byte ptr [limit_bytes_to_format]],  1
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	xstrtoumax
	mov	dword ptr [rbp - 0x54], eax
	cmp	dword ptr [rbp - 0x54], 0
	je	.label_42
	movabs	rcx, OFFSET FLAT:long_options
	mov	edi, dword ptr [rbp - 0x54]
	mov	esi, dword ptr [rbp - 0x58]
	mov	eax, dword ptr [rbp - 0x5c]
	mov	dl, al
	mov	r8,  qword ptr [word ptr [optarg]]
	movsx	edx, dl
	call	xstrtol_fatal
.label_42:
	jmp	.label_18
.label_47:
	mov	byte ptr [rbp - 0x31], 1
	cmp	qword ptr [word ptr [optarg]],  0
	jne	.label_61
	mov	qword ptr [word ptr [string_min]],  3
	jmp	.label_40
.label_61:
	xor	eax, eax
	mov	esi, eax
	xor	edx, edx
	lea	rcx, [rbp - 0x50]
	movabs	r8, OFFSET FLAT:main.multipliers
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	xstrtoumax
	mov	dword ptr [rbp - 0x54], eax
	cmp	dword ptr [rbp - 0x54], 0
	je	.label_85
	movabs	rcx, OFFSET FLAT:long_options
	mov	edi, dword ptr [rbp - 0x54]
	mov	esi, dword ptr [rbp - 0x58]
	mov	eax, dword ptr [rbp - 0x5c]
	mov	dl, al
	mov	r8,  qword ptr [word ptr [optarg]]
	movsx	edx, dl
	call	xstrtol_fatal
.label_85:
	mov	rax, -1
	cmp	rax, qword ptr [rbp - 0x50]
	jae	.label_102
	movabs	rdi, OFFSET FLAT:.str.20
	call	gettext
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x140], rax
	call	quote
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x140]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_102:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [word ptr [string_min]],  rax
.label_40:
	mov	byte ptr [byte ptr [flag_dump_strings]],  1
	jmp	.label_18
.label_66:
	mov	byte ptr [rbp - 0x31], 1
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	decode_format_string
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x33]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x33], al
	jmp	.label_18
.label_156:
	mov	byte ptr [rbp - 0x31], 1
	mov	byte ptr [byte ptr [abbreviate_duplicate_blocks]],  0
	jmp	.label_18
.label_27:
	mov	byte ptr [byte ptr [traditional]],  1
	jmp	.label_18
.label_122:
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	eax, OFFSET FLAT:.str.21
	mov	edi, eax
	mov	eax, OFFSET FLAT:endian_args
	mov	edx, eax
	mov	eax, OFFSET FLAT:endian_types
	mov	ecx, eax
	mov	eax, 4
	mov	r8d, eax
	call	__xargmatch_internal
	mov	r10d,  dword ptr [dword ptr [+ (rax * 4) + endian_types]]
	test	r10d, r10d
	mov	dword ptr [rbp - 0x144], r10d
	je	.label_108
	jmp	.label_127
.label_127:
	mov	eax, dword ptr [rbp - 0x144]
	sub	eax, 1
	mov	dword ptr [rbp - 0x148], eax
	jne	.label_20
	jmp	.label_117
.label_117:
	mov	byte ptr [byte ptr [input_swap]],  1
	jmp	.label_20
.label_108:
	mov	byte ptr [byte ptr [input_swap]],  0
.label_20:
	jmp	.label_18
.label_120:
	movabs	rdi, OFFSET FLAT:.str.22
	call	decode_format_string
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x33]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x33], al
	jmp	.label_18
.label_74:
	movabs	rdi, OFFSET FLAT:.str.23
	call	decode_format_string
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x33]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x33], al
	jmp	.label_18
.label_83:
	movabs	rdi, OFFSET FLAT:.str.5_0
	call	decode_format_string
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x33]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x33], al
	jmp	.label_18
.label_143:
	movabs	rdi, OFFSET FLAT:.str.25
	call	decode_format_string
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x33]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x33], al
	jmp	.label_18
.label_92:
	movabs	rdi, OFFSET FLAT:.str.26
	call	decode_format_string
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x33]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x33], al
	jmp	.label_18
.label_101:
	movabs	rdi, OFFSET FLAT:.str.27
	call	decode_format_string
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x33]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x33], al
	jmp	.label_18
.label_106:
	movabs	rdi, OFFSET FLAT:.str.28
	call	decode_format_string
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x33]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x33], al
	jmp	.label_18
.label_31:
	movabs	rdi, OFFSET FLAT:.str.29
	call	decode_format_string
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x33]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x33], al
	jmp	.label_18
.label_67:
	movabs	rdi, OFFSET FLAT:.str.30
	call	decode_format_string
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x33]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x33], al
	jmp	.label_18
.label_19:
	movabs	rdi, OFFSET FLAT:.str.31
	call	decode_format_string
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x33]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x33], al
	jmp	.label_18
.label_36:
	movabs	rdi, OFFSET FLAT:.str.32
	call	decode_format_string
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x33]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x33], al
	jmp	.label_18
.label_138:
	movabs	rdi, OFFSET FLAT:.str.33
	call	decode_format_string
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x33]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x33], al
	jmp	.label_18
.label_145:
	movabs	rdi, OFFSET FLAT:.str.34
	call	decode_format_string
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x33]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x33], al
	jmp	.label_18
.label_91:
	movabs	rdi, OFFSET FLAT:.str.35
	call	decode_format_string
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x33]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x33], al
	jmp	.label_18
.label_151:
	mov	byte ptr [rbp - 0x31], 1
	mov	byte ptr [rbp - 0x32], 1
	cmp	qword ptr [word ptr [optarg]],  0
	jne	.label_77
	mov	qword ptr [rbp - 0x30], 0x20
	jmp	.label_86
.label_77:
	xor	eax, eax
	mov	esi, eax
	mov	edx, 0xa
	lea	rcx, [rbp - 0x68]
	movabs	r8, OFFSET FLAT:.str_0
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	xstrtoumax
	mov	dword ptr [rbp - 0x54], eax
	cmp	dword ptr [rbp - 0x54], 0
	je	.label_116
	movabs	rcx, OFFSET FLAT:long_options
	mov	edi, dword ptr [rbp - 0x54]
	mov	esi, dword ptr [rbp - 0x58]
	mov	eax, dword ptr [rbp - 0x5c]
	mov	dl, al
	mov	r8,  qword ptr [word ptr [optarg]]
	movsx	edx, dl
	call	xstrtol_fatal
.label_116:
	mov	rax, -1
	cmp	rax, qword ptr [rbp - 0x68]
	jae	.label_112
	movabs	rdi, OFFSET FLAT:.str.20
	call	gettext
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x150], rax
	call	quote
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x150]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_112:
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x30], rax
.label_86:
	jmp	.label_18
.label_124:
	xor	edi, edi
	call	usage
.label_115:
	movabs	rsi, OFFSET FLAT:.str.15
	movabs	rdx, OFFSET FLAT:.str.17
	movabs	r8, OFFSET FLAT:.str.37
	xor	eax, eax
	mov	r9d, eax
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	rcx,  qword ptr [word ptr [Version]]
	mov	al, 0
	call	version_etc
	xor	edi, edi
	call	exit
.label_49:
	mov	edi, 1
	call	usage
.label_18:
	jmp	.label_154
.label_113:
	test	byte ptr [rbp - 0x33], 1
	jne	.label_155
	mov	dword ptr [rbp - 4], 1
	jmp	.label_123
.label_155:
	test	byte ptr [byte ptr [flag_dump_strings]],  1
	je	.label_95
	cmp	qword ptr [word ptr [n_specs]],  0
	jbe	.label_95
	movabs	rdi, OFFSET FLAT:.str.38
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_95:
	mov	eax, dword ptr [rbp - 8]
	sub	eax,  dword ptr [dword ptr [optind]]
	mov	dword ptr [rbp - 0x14], eax
	test	byte ptr [rbp - 0x31], 1
	je	.label_32
	test	byte ptr [byte ptr [traditional]],  1
	je	.label_38
.label_32:
	mov	eax, dword ptr [rbp - 0x14]
	mov	ecx, eax
	sub	ecx, 1
	mov	dword ptr [rbp - 0x154], eax
	mov	dword ptr [rbp - 0x158], ecx
	je	.label_45
	jmp	.label_51
.label_51:
	mov	eax, dword ptr [rbp - 0x154]
	sub	eax, 2
	mov	dword ptr [rbp - 0x15c], eax
	je	.label_53
	jmp	.label_62
.label_62:
	mov	eax, dword ptr [rbp - 0x154]
	sub	eax, 3
	mov	dword ptr [rbp - 0x160], eax
	je	.label_118
	jmp	.label_43
.label_45:
	test	byte ptr [byte ptr [traditional]],  1
	jne	.label_73
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax]
	cmp	edx, 0x2b
	jne	.label_78
.label_73:
	lea	rsi, [rbp - 0x70]
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rax*8]
	call	parse_old_offset
	test	al, 1
	jne	.label_97
	jmp	.label_78
.label_97:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [word ptr [n_bytes_to_skip]],  rax
	mov	ecx, dword ptr [rbp - 0x14]
	add	ecx, -1
	mov	dword ptr [rbp - 0x14], ecx
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 8
	mov	qword ptr [rbp - 0x10], rax
.label_78:
	jmp	.label_43
.label_53:
	test	byte ptr [byte ptr [traditional]],  1
	jne	.label_109
	mov	eax,  dword ptr [dword ptr [optind]]
	add	eax, 1
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rdx + rcx*8]
	movsx	eax, byte ptr [rcx]
	cmp	eax, 0x2b
	je	.label_109
	mov	eax,  dword ptr [dword ptr [optind]]
	add	eax, 1
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rdx + rcx*8]
	movsx	eax, byte ptr [rcx]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_41
.label_109:
	lea	rsi, [rbp - 0x78]
	mov	eax,  dword ptr [dword ptr [optind]]
	add	eax, 1
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdx + rcx*8]
	call	parse_old_offset
	test	al, 1
	jne	.label_140
	jmp	.label_41
.label_140:
	test	byte ptr [byte ptr [traditional]],  1
	je	.label_141
	lea	rsi, [rbp - 0x70]
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rax*8]
	call	parse_old_offset
	test	al, 1
	jne	.label_150
	jmp	.label_141
.label_150:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [word ptr [n_bytes_to_skip]],  rax
	mov	byte ptr [byte ptr [flag_pseudo_start]],  1
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	mov	ecx, dword ptr [rbp - 0x14]
	sub	ecx, 2
	mov	dword ptr [rbp - 0x14], ecx
	jmp	.label_152
.label_141:
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [word ptr [n_bytes_to_skip]],  rax
	mov	ecx, dword ptr [rbp - 0x14]
	add	ecx, -1
	mov	dword ptr [rbp - 0x14], ecx
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rdx + rax*8]
	mov	ecx,  dword ptr [dword ptr [optind]]
	add	ecx, 1
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + rdx*8], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 8
	mov	qword ptr [rbp - 0x10], rax
.label_152:
	jmp	.label_41
.label_41:
	jmp	.label_43
.label_118:
	test	byte ptr [byte ptr [traditional]],  1
	je	.label_46
	lea	rsi, [rbp - 0x70]
	mov	eax,  dword ptr [dword ptr [optind]]
	add	eax, 1
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdx + rcx*8]
	call	parse_old_offset
	test	al, 1
	jne	.label_60
	jmp	.label_46
.label_60:
	lea	rsi, [rbp - 0x78]
	mov	eax,  dword ptr [dword ptr [optind]]
	add	eax, 2
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdx + rcx*8]
	call	parse_old_offset
	test	al, 1
	jne	.label_76
	jmp	.label_46
.label_76:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [word ptr [n_bytes_to_skip]],  rax
	mov	byte ptr [byte ptr [flag_pseudo_start]],  1
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x48], rax
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	edx,  dword ptr [dword ptr [optind]]
	add	edx, 2
	movsxd	rcx, edx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	mov	edx, dword ptr [rbp - 0x14]
	sub	edx, 2
	mov	dword ptr [rbp - 0x14], edx
.label_46:
	jmp	.label_43
.label_43:
	test	byte ptr [byte ptr [traditional]],  1
	je	.label_107
	mov	eax, 1
	cmp	eax, dword ptr [rbp - 0x14]
	jge	.label_107
	movabs	rdi, OFFSET FLAT:.str.39
	call	gettext
	mov	ecx,  dword ptr [dword ptr [optind]]
	add	ecx, 1
	movsxd	rdi, ecx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdx + rdi*8]
	mov	qword ptr [rbp - 0x168], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x168]
	mov	rcx, rax
	mov	al, 0
	call	error
	movabs	rdi, OFFSET FLAT:.str.41
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:.str_1
	mov	edi, esi
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_107:
	jmp	.label_38
.label_38:
	test	byte ptr [byte ptr [flag_pseudo_start]],  1
	je	.label_21
	movabs	rax, OFFSET FLAT:format_address_none
	cmp	qword ptr [word ptr [format_address]],  rax
	jne	.label_148
	movabs	rax, OFFSET FLAT:format_address_paren
	mov	dword ptr [dword ptr [address_base]],  8
	mov	dword ptr [dword ptr [address_pad_len]],  7
	mov	qword ptr [word ptr [format_address]],  rax
	jmp	.label_153
.label_148:
	movabs	rax, OFFSET FLAT:format_address_label
	mov	qword ptr [word ptr [format_address]],  rax
.label_153:
	jmp	.label_21
.label_21:
	test	byte ptr [byte ptr [limit_bytes_to_format]],  1
	je	.label_26
	mov	rax,  qword ptr [word ptr [n_bytes_to_skip]]
	add	rax,  qword ptr [word ptr [max_bytes_to_format]]
	mov	qword ptr [word ptr [end_offset]],  rax
	mov	rax,  qword ptr [word ptr [end_offset]]
	cmp	rax,  qword ptr [word ptr [n_bytes_to_skip]]
	jae	.label_87
	movabs	rdi, OFFSET FLAT:.str.42
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_87:
	jmp	.label_26
.label_26:
	cmp	qword ptr [word ptr [n_specs]],  0
	jne	.label_54
	movabs	rdi, OFFSET FLAT:.str.43
	call	decode_format_string
	mov	byte ptr [rbp - 0x169], al
.label_54:
	cmp	dword ptr [rbp - 0x14], 0
	jle	.label_68
	movsxd	rax,  dword ptr [dword ptr [optind]]
	shl	rax, 3
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [word ptr [file_list]],  rax
	jmp	.label_72
.label_68:
	movabs	rax, OFFSET FLAT:default_file_list
	mov	qword ptr [word ptr [file_list]],  rax
.label_72:
	call	open_next_file
	and	al, 1
	mov	byte ptr [rbp - 0x33], al
	cmp	qword ptr [word ptr [in_stream]],  0
	jne	.label_90
	jmp	.label_99
.label_90:
	mov	rdi,  qword ptr [word ptr [n_bytes_to_skip]]
	call	skip
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x33]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x33], al
	cmp	qword ptr [word ptr [in_stream]],  0
	jne	.label_104
	jmp	.label_99
.label_104:
	test	byte ptr [byte ptr [flag_pseudo_start]],  1
	je	.label_114
	mov	rax, qword ptr [rbp - 0x48]
	sub	rax,  qword ptr [word ptr [n_bytes_to_skip]]
	mov	qword ptr [rbp - 0x178], rax
	jmp	.label_119
.label_114:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x178], rcx
	jmp	.label_119
.label_119:
	mov	rax, qword ptr [rbp - 0x178]
	mov	qword ptr [word ptr [pseudo_offset]],  rax
	call	get_lcm
	mov	dword ptr [rbp - 0x24], eax
	test	byte ptr [rbp - 0x32], 1
	je	.label_133
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_105
	mov	rax, qword ptr [rbp - 0x30]
	movsxd	rcx, dword ptr [rbp - 0x24]
	xor	edx, edx
	div	rcx
	cmp	rdx, 0
	jne	.label_105
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [word ptr [bytes_per_block]],  rax
	jmp	.label_144
.label_105:
	movabs	rdi, OFFSET FLAT:.str.44
	call	gettext
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [rbp - 0x24]
	mov	qword ptr [rbp - 0x180], rdi
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x180]
	mov	al, 0
	call	error
	movsxd	rcx, dword ptr [rbp - 0x24]
	mov	qword ptr [word ptr [bytes_per_block]],  rcx
.label_144:
	jmp	.label_34
.label_133:
	cmp	dword ptr [rbp - 0x24], 0x10
	jge	.label_161
	mov	eax, 0x10
	mov	ecx, dword ptr [rbp - 0x24]
	cdq	
	idiv	dword ptr [rbp - 0x24]
	imul	ecx, eax
	movsxd	rsi, ecx
	mov	qword ptr [word ptr [bytes_per_block]],  rsi
	jmp	.label_17
.label_161:
	movsxd	rax, dword ptr [rbp - 0x24]
	mov	qword ptr [word ptr [bytes_per_block]],  rax
.label_17:
	jmp	.label_34
.label_34:
	mov	qword ptr [rbp - 0x20], 0
.label_80:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax,  qword ptr [word ptr [n_specs]]
	jae	.label_131
	mov	rax,  qword ptr [word ptr [bytes_per_block]]
	mov	rcx, qword ptr [rbp - 0x20]
	imul	rcx, rcx, 0x28
	add	rcx,  qword ptr [word ptr [spec]]
	mov	edx, dword ptr [rcx + 4]
	mov	ecx, edx
	movsxd	rcx,  dword ptr [dword ptr [+ (rcx * 4) + width_bytes]]
	xor	edx, edx
	div	rcx
	mov	esi, eax
	mov	dword ptr [rbp - 0x7c], esi
	mov	rax, qword ptr [rbp - 0x20]
	imul	rax, rax, 0x28
	add	rax,  qword ptr [word ptr [spec]]
	mov	esi, dword ptr [rax + 0x1c]
	add	esi, 1
	imul	esi, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x80], esi
	mov	rax, qword ptr [rbp - 0x40]
	movsxd	rcx, dword ptr [rbp - 0x80]
	cmp	rax, rcx
	jae	.label_44
	movsxd	rax, dword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x40], rax
.label_44:
	jmp	.label_79
.label_79:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_80
.label_131:
	mov	qword ptr [rbp - 0x20], 0
.label_96:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax,  qword ptr [word ptr [n_specs]]
	jae	.label_98
	mov	rax,  qword ptr [word ptr [bytes_per_block]]
	mov	rcx, qword ptr [rbp - 0x20]
	imul	rcx, rcx, 0x28
	add	rcx,  qword ptr [word ptr [spec]]
	mov	edx, dword ptr [rcx + 4]
	mov	ecx, edx
	movsxd	rcx,  dword ptr [dword ptr [+ (rcx * 4) + width_bytes]]
	xor	edx, edx
	div	rcx
	mov	esi, eax
	mov	dword ptr [rbp - 0x84], esi
	mov	rax, qword ptr [rbp - 0x20]
	imul	rax, rax, 0x28
	add	rax,  qword ptr [word ptr [spec]]
	mov	esi, dword ptr [rax + 0x1c]
	imul	esi, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x88], esi
	mov	rax, qword ptr [rbp - 0x40]
	movsxd	rcx, dword ptr [rbp - 0x88]
	sub	rax, rcx
	mov	esi, eax
	mov	rax, qword ptr [rbp - 0x20]
	imul	rax, rax, 0x28
	add	rax,  qword ptr [word ptr [spec]]
	mov	dword ptr [rax + 0x20], esi
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_96
.label_98:
	test	byte ptr [byte ptr [flag_dump_strings]],  1
	je	.label_56
	call	dump_strings
	and	al, 1
	movzx	ecx, al
	mov	dword ptr [rbp - 0x184], ecx
	jmp	.label_135
.label_56:
	call	dump
	and	al, 1
	movzx	ecx, al
	mov	dword ptr [rbp - 0x184], ecx
.label_135:
	mov	eax, dword ptr [rbp - 0x184]
	mov	cl, byte ptr [rbp - 0x33]
	and	cl, 1
	movzx	edx, cl
	and	edx, eax
	cmp	edx, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x33], cl
.label_99:
	test	byte ptr [byte ptr [have_read_stdin]],  1
	je	.label_103
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	rpl_fclose
	cmp	eax, -1
	jne	.label_103
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.45
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x188], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x188]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_103:
	mov	eax, 1
	xor	ecx, ecx
	mov	dl, byte ptr [rbp - 0x33]
	test	dl, 1
	cmovne	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_123:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x190
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403230

	.globl format_address_std
	.type format_address_std, @function
format_address_std:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	al, sil
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	lea	rdi, [rbp - 0x17]
	mov	qword ptr [rbp - 0x38], rdi
	lea	rdi, [rbp - 0x18]
	mov	qword ptr [rbp - 0x38], rdi
	mov	byte ptr [rbp - 0x18], 0
	mov	al, byte ptr [rbp - 9]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, rdi
	dec	rcx
	mov	qword ptr [rbp - 0x38], rcx
	mov	byte ptr [rdi - 1], al
	mov	rcx, qword ptr [rbp - 0x38]
	movsxd	rdi,  dword ptr [dword ptr [rip + address_pad_len]]
	sub	rcx, rdi
	mov	qword ptr [rbp - 0x40], rcx
	mov	esi,  dword ptr [dword ptr [rip + address_base]]
	mov	edx, esi
	sub	edx, 8
	mov	dword ptr [rbp - 0x44], esi
	mov	dword ptr [rbp - 0x48], edx
	je	.label_168
	jmp	.label_171
.label_171:
	mov	eax, dword ptr [rbp - 0x44]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x4c], eax
	je	.label_172
	jmp	.label_166
.label_166:
	mov	eax, dword ptr [rbp - 0x44]
	sub	eax, 0x10
	mov	dword ptr [rbp - 0x50], eax
	je	.label_167
	jmp	.label_164
.label_168:
	jmp	.label_162
.label_162:
	mov	rax, qword ptr [rbp - 8]
	and	rax, 7
	add	rax, 0x30
	mov	cl, al
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdx, rax
	add	rdx, -1
	mov	qword ptr [rbp - 0x38], rdx
	mov	byte ptr [rax - 1], cl
	mov	rax, qword ptr [rbp - 8]
	shr	rax, 3
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_162
	jmp	.label_164
.label_172:
	jmp	.label_163
.label_163:
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	div	rcx
	add	rdx, 0x30
	mov	sil, dl
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x38], rdx
	mov	byte ptr [rcx - 1], sil
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	div	rcx
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_163
	jmp	.label_164
.label_167:
	jmp	.label_170
.label_170:
	mov	rax, qword ptr [rbp - 8]
	and	rax, 0xf
	mov	cl,  byte ptr [byte ptr [+ (rax * 1) + .str.63]]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdx, rax
	add	rdx, -1
	mov	qword ptr [rbp - 0x38], rdx
	mov	byte ptr [rax - 1], cl
	mov	rax, qword ptr [rbp - 8]
	shr	rax, 4
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_170
	jmp	.label_164
.label_164:
	jmp	.label_165
.label_165:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_169
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x38], rcx
	mov	byte ptr [rax - 1], 0x30
	jmp	.label_165
.label_169:
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x54], eax
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4033e0

	.globl format_address_none
	.type format_address_none, @function
format_address_none:
	push	rbp
	mov	rbp, rsp
	mov	al, sil
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4033f0

	.globl decode_format_string
	.type decode_format_string, @function
decode_format_string:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_178
	jmp	.label_177
.label_178:
	movabs	rdi, OFFSET FLAT:.str.75
	movabs	rsi, OFFSET FLAT:.str.76
	mov	edx, 0x3d8
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.decode_format_string
	call	__assert_fail
.label_177:
	jmp	.label_175
.label_175:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_174
	mov	rax,  qword ptr [word ptr [n_specs_allocated]]
	cmp	rax,  qword ptr [word ptr [n_specs]]
	ja	.label_179
	movabs	rsi, OFFSET FLAT:n_specs_allocated
	mov	eax, 0x28
	mov	edx, eax
	mov	rcx,  qword ptr [word ptr [spec]]
	mov	rdi, rcx
	call	x2nrealloc
	mov	qword ptr [word ptr [spec]],  rax
.label_179:
	lea	rdx, [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rax,  qword ptr [word ptr [n_specs]]
	imul	rax, rax, 0x28
	add	rax,  qword ptr [word ptr [spec]]
	mov	rcx, rax
	call	decode_one_format
	test	al, 1
	jne	.label_181
	mov	byte ptr [rbp - 1], 0
	jmp	.label_173
.label_181:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x20]
	je	.label_180
	jmp	.label_176
.label_180:
	movabs	rdi, OFFSET FLAT:.str.77
	movabs	rsi, OFFSET FLAT:.str.76
	mov	edx, 0x3e4
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.decode_format_string
	call	__assert_fail
.label_176:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax,  qword ptr [word ptr [n_specs]]
	add	rax, 1
	mov	qword ptr [word ptr [n_specs]],  rax
	jmp	.label_175
.label_174:
	mov	byte ptr [rbp - 1], 1
.label_173:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403540

	.globl parse_old_offset
	.type parse_old_offset, @function
parse_old_offset:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	movsx	eax, byte ptr [rsi]
	cmp	eax, 0
	jne	.label_182
	mov	byte ptr [rbp - 1], 0
	jmp	.label_183
.label_182:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2b
	jne	.label_185
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
.label_185:
	mov	esi, 0x2e
	mov	rdi, qword ptr [rbp - 0x10]
	call	strchr
	cmp	rax, 0
	je	.label_188
	mov	dword ptr [rbp - 0x1c], 0xa
	jmp	.label_187
.label_188:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x30
	jne	.label_186
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x78
	je	.label_184
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x58
	jne	.label_186
.label_184:
	mov	dword ptr [rbp - 0x1c], 0x10
	jmp	.label_189
.label_186:
	mov	dword ptr [rbp - 0x1c], 8
.label_189:
	jmp	.label_187
.label_187:
	xor	eax, eax
	mov	esi, eax
	movabs	r8, OFFSET FLAT:.str.108
	mov	rdi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	rcx, qword ptr [rbp - 0x18]
	call	xstrtoumax
	cmp	eax, 0
	sete	r9b
	and	r9b, 1
	mov	byte ptr [rbp - 1], r9b
.label_183:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403630

	.globl format_address_paren
	.type format_address_paren, @function
format_address_paren:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	al, sil
	mov	esi, 0x28
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	mov	edi, esi
	call	putchar_unlocked
	mov	esi, 0x29
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x10], eax
	call	format_address_std
	cmp	byte ptr [rbp - 9], 0
	je	.label_190
	movsx	edi, byte ptr [rbp - 9]
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x14], eax
.label_190:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403680

	.globl format_address_label
	.type format_address_label, @function
format_address_label:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	al, sil
	mov	esi, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	mov	rdi, qword ptr [rbp - 8]
	call	format_address_std
	mov	rdi, qword ptr [rbp - 8]
	add	rdi,  qword ptr [word ptr [pseudo_offset]]
	movsx	esi, byte ptr [rbp - 9]
	call	format_address_paren
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4036c0

	.globl open_next_file
	.type open_next_file, @function
open_next_file:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	byte ptr [rbp - 2], 1
.label_196:
	mov	rax,  qword ptr [word ptr [file_list]]
	mov	rax, qword ptr [rax]
	mov	qword ptr [word ptr [input_filename]],  rax
	cmp	qword ptr [word ptr [input_filename]],  0
	jne	.label_192
	mov	al, byte ptr [rbp - 2]
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_198
.label_192:
	mov	rax,  qword ptr [word ptr [file_list]]
	add	rax, 8
	mov	qword ptr [word ptr [file_list]],  rax
	mov	rdi,  qword ptr [word ptr [input_filename]]
	mov	ecx, OFFSET FLAT:.str.109
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	jne	.label_197
	movabs	rdi, OFFSET FLAT:.str.45
	call	gettext
	xor	ecx, ecx
	mov	qword ptr [word ptr [input_filename]],  rax
	mov	rax,  qword ptr [word ptr [stdin]]
	mov	qword ptr [word ptr [in_stream]],  rax
	mov	byte ptr [byte ptr [have_read_stdin]],  1
	mov	edi, ecx
	mov	esi, ecx
	call	xset_binary_mode
	jmp	.label_194
.label_197:
	movabs	rsi, OFFSET FLAT:.str.110
	mov	rdi,  qword ptr [word ptr [input_filename]]
	call	fopen
	mov	qword ptr [word ptr [in_stream]],  rax
	cmp	qword ptr [word ptr [in_stream]],  0
	jne	.label_191
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [input_filename]]
	mov	dword ptr [rbp - 8], ecx
	call	quotearg_n_style_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rbp - 8]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 2], 0
.label_191:
	jmp	.label_194
.label_194:
	jmp	.label_195
.label_195:
	cmp	qword ptr [word ptr [in_stream]],  0
	je	.label_196
	test	byte ptr [byte ptr [limit_bytes_to_format]],  1
	je	.label_193
	test	byte ptr [byte ptr [flag_dump_strings]],  1
	jne	.label_193
	xor	eax, eax
	mov	ecx, eax
	mov	edx, 2
	mov	rdi,  qword ptr [word ptr [in_stream]]
	mov	rsi, rcx
	call	setvbuf
	mov	dword ptr [rbp - 0xc], eax
.label_193:
	mov	al, byte ptr [rbp - 2]
	and	al, 1
	mov	byte ptr [rbp - 1], al
.label_198:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403840

	.globl skip
	.type skip, @function
skip:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20d0
	mov	qword ptr [rbp - 0x10], rdi
	mov	byte ptr [rbp - 0x11], 1
	mov	dword ptr [rbp - 0x18], 0
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_211
	mov	byte ptr [rbp - 1], 1
	jmp	.label_206
.label_211:
	jmp	.label_220
.label_220:
	cmp	qword ptr [word ptr [in_stream]],  0
	je	.label_218
	mov	rdi,  qword ptr [word ptr [in_stream]]
	call	fileno
	lea	rsi, [rbp - 0xa8]
	mov	edi, eax
	call	__fstat
	cmp	eax, 0
	jne	.label_205
	lea	rdi, [rbp - 0xa8]
	call	usable_st_size
	test	al, 1
	jne	.label_209
	jmp	.label_199
.label_209:
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x70]
	jge	.label_215
	movabs	rax, 0x2000000000000000
	cmp	qword ptr [rbp - 0x70], rax
	ja	.label_215
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x20c8], rax
	jmp	.label_208
.label_215:
	mov	eax, 0x200
	mov	ecx, eax
	mov	qword ptr [rbp - 0x20c8], rcx
	jmp	.label_208
.label_208:
	mov	rax, qword ptr [rbp - 0x20c8]
	cmp	rax, qword ptr [rbp - 0x78]
	jge	.label_199
	mov	rax, qword ptr [rbp - 0x78]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_204
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x10], rcx
	jmp	.label_207
.label_204:
	mov	edx, 1
	mov	rdi,  qword ptr [word ptr [in_stream]]
	mov	rsi, qword ptr [rbp - 0x10]
	call	rpl_fseeko
	cmp	eax, 0
	je	.label_216
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x18], ecx
	mov	byte ptr [rbp - 0x11], 0
.label_216:
	mov	qword ptr [rbp - 0x10], 0
.label_207:
	jmp	.label_214
.label_199:
	mov	qword ptr [rbp - 0x20c0], 0x2000
.label_213:
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x10]
	jae	.label_203
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x20c0]
	jae	.label_201
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20c0], rax
.label_201:
	mov	eax, 1
	mov	esi, eax
	lea	rdi, [rbp - 0x20b0]
	mov	rdx, qword ptr [rbp - 0x20c0]
	mov	rcx,  qword ptr [word ptr [in_stream]]
	call	fread_unlocked
	mov	qword ptr [rbp - 0x20b8], rax
	mov	rax, qword ptr [rbp - 0x20b8]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x10], rcx
	mov	rax, qword ptr [rbp - 0x20b8]
	cmp	rax, qword ptr [rbp - 0x20c0]
	je	.label_212
	mov	rdi,  qword ptr [word ptr [in_stream]]
	call	ferror_unlocked
	cmp	eax, 0
	je	.label_202
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x18], ecx
	mov	byte ptr [rbp - 0x11], 0
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_203
.label_202:
	mov	rdi,  qword ptr [word ptr [in_stream]]
	call	feof_unlocked
	cmp	eax, 0
	je	.label_210
	jmp	.label_203
.label_210:
	jmp	.label_212
.label_212:
	jmp	.label_213
.label_203:
	jmp	.label_214
.label_214:
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_217
	jmp	.label_218
.label_217:
	jmp	.label_219
.label_205:
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [input_filename]]
	mov	dword ptr [rbp - 0x20cc], ecx
	call	quotearg_n_style_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rbp - 0x20cc]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x11], 0
.label_219:
	mov	edi, dword ptr [rbp - 0x18]
	call	check_and_close
	and	al, 1
	movzx	edi, al
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	movzx	ecx, al
	and	ecx, edi
	cmp	ecx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	call	open_next_file
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	movzx	edi, al
	and	edi, ecx
	cmp	edi, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	jmp	.label_220
.label_218:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_200
	movabs	rdi, OFFSET FLAT:.str.111
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_200:
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	mov	byte ptr [rbp - 1], al
.label_206:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20d0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403b30

	.globl get_lcm
	.type get_lcm, @function
get_lcm:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], 1
	mov	qword ptr [rbp - 0x10], 0
.label_221:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax,  qword ptr [word ptr [n_specs]]
	jae	.label_222
	movsxd	rdi, dword ptr [rbp - 4]
	mov	rax, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x28
	add	rax,  qword ptr [word ptr [spec]]
	mov	ecx, dword ptr [rax + 4]
	mov	eax, ecx
	movsxd	rsi,  dword ptr [dword ptr [+ (rax * 4) + width_bytes]]
	call	lcm
	mov	ecx, eax
	mov	dword ptr [rbp - 4], ecx
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_221
.label_222:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403ba0

	.globl dump_strings
	.type dump_strings, @function
dump_strings:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	eax, 0x64
	mov	ecx, eax
	cmp	rcx,  qword ptr [word ptr [string_min]]
	jbe	.label_230
	mov	eax, 0x64
	mov	ecx, eax
	mov	qword ptr [rbp - 0x40], rcx
	jmp	.label_236
.label_230:
	mov	rax,  qword ptr [word ptr [string_min]]
	mov	qword ptr [rbp - 0x40], rax
.label_236:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x10], rax
	mov	rdi, qword ptr [rbp - 0x10]
	call	xmalloc
	mov	qword ptr [rbp - 0x18], rax
	mov	rax,  qword ptr [word ptr [n_bytes_to_skip]]
	mov	qword ptr [rbp - 0x20], rax
	mov	byte ptr [rbp - 0x21], 1
.label_227:
	jmp	.label_223
.label_223:
	test	byte ptr [byte ptr [limit_bytes_to_format]],  1
	je	.label_226
	mov	rax,  qword ptr [word ptr [end_offset]]
	cmp	rax,  qword ptr [word ptr [string_min]]
	jb	.label_228
	mov	rax,  qword ptr [word ptr [end_offset]]
	sub	rax,  qword ptr [word ptr [string_min]]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_226
.label_228:
	jmp	.label_238
.label_226:
	mov	qword ptr [rbp - 0x30], 0
.label_242:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax,  qword ptr [word ptr [string_min]]
	jae	.label_240
	lea	rdi, [rbp - 0x34]
	call	read_char
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x21]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	mov	rdi, qword ptr [rbp - 0x20]
	add	rdi, 1
	mov	qword ptr [rbp - 0x20], rdi
	cmp	dword ptr [rbp - 0x34], 0
	jge	.label_248
	mov	rdi, qword ptr [rbp - 0x18]
	call	free
	mov	al, byte ptr [rbp - 0x21]
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_229
.label_248:
	movsxd	rax, dword ptr [rbp - 0x34]
	mov	qword ptr [rbp - 0x48], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x48]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x4000
	cmp	edx, 0
	jne	.label_235
	jmp	.label_223
.label_235:
	mov	eax, dword ptr [rbp - 0x34]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_242
.label_240:
	jmp	.label_245
.label_245:
	mov	al, 1
	test	byte ptr [byte ptr [limit_bytes_to_format]],  1
	mov	byte ptr [rbp - 0x49], al
	je	.label_224
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax,  qword ptr [word ptr [end_offset]]
	setb	cl
	mov	byte ptr [rbp - 0x49], cl
.label_224:
	mov	al, byte ptr [rbp - 0x49]
	test	al, 1
	jne	.label_234
	jmp	.label_232
.label_234:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_241
	lea	rsi, [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 0x18]
	call	x2realloc
	mov	qword ptr [rbp - 0x18], rax
.label_241:
	lea	rdi, [rbp - 0x34]
	call	read_char
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x21]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	mov	rdi, qword ptr [rbp - 0x20]
	add	rdi, 1
	mov	qword ptr [rbp - 0x20], rdi
	cmp	dword ptr [rbp - 0x34], 0
	jge	.label_244
	mov	rdi, qword ptr [rbp - 0x18]
	call	free
	mov	al, byte ptr [rbp - 0x21]
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_229
.label_244:
	cmp	dword ptr [rbp - 0x34], 0
	jne	.label_231
	jmp	.label_232
.label_231:
	movsxd	rax, dword ptr [rbp - 0x34]
	mov	qword ptr [rbp - 0x58], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x58]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x4000
	cmp	edx, 0
	jne	.label_237
	jmp	.label_223
.label_237:
	mov	eax, dword ptr [rbp - 0x34]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rbp - 0x30], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
	jmp	.label_245
.label_232:
	mov	esi, 0x20
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
	mov	rax,  qword ptr [word ptr [format_address]]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rcx, qword ptr [rbp - 0x30]
	sub	rcx, 1
	mov	rdi, rcx
	call	rax
	mov	qword ptr [rbp - 0x30], 0
.label_247:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	movsx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x34], edx
	cmp	edx, 0
	je	.label_233
	mov	eax, dword ptr [rbp - 0x34]
	add	eax, -7
	mov	ecx, eax
	sub	eax, 6
	mov	qword ptr [rbp - 0x60], rcx
	mov	dword ptr [rbp - 0x64], eax
	ja	.label_239
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_246]]
	jmp	rcx
.label_1055:
	movabs	rdi, OFFSET FLAT:.str.97
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_225
.label_1056:
	movabs	rdi, OFFSET FLAT:.str.98
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x6c], eax
	jmp	.label_225
.label_1060:
	movabs	rdi, OFFSET FLAT:.str.99
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x70], eax
	jmp	.label_225
.label_1058:
	movabs	rdi, OFFSET FLAT:.str.100
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x74], eax
	jmp	.label_225
.label_1061:
	movabs	rdi, OFFSET FLAT:.str.101
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x78], eax
	jmp	.label_225
.label_1057:
	movabs	rdi, OFFSET FLAT:.str.102
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_225
.label_1059:
	movabs	rdi, OFFSET FLAT:.str.103
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x80], eax
	jmp	.label_225
.label_239:
	mov	edi, dword ptr [rbp - 0x34]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	putc_unlocked
	mov	dword ptr [rbp - 0x84], eax
.label_225:
	jmp	.label_243
.label_243:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_247
.label_233:
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_227
.label_238:
	mov	rdi, qword ptr [rbp - 0x18]
	call	free
	xor	edi, edi
	call	check_and_close
	and	al, 1
	movzx	edi, al
	mov	al, byte ptr [rbp - 0x21]
	and	al, 1
	movzx	ecx, al
	and	ecx, edi
	cmp	ecx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	mov	al, byte ptr [rbp - 0x21]
	and	al, 1
	mov	byte ptr [rbp - 1], al
.label_229:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403fd0

	.globl dump
	.type dump, @function
dump:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	eax, 2
	mov	edi, eax
	mov	byte ptr [rbp - 0x19], 0
	mov	byte ptr [rbp - 0x1a], 1
	mov	rsi,  qword ptr [word ptr [bytes_per_block]]
	call	xnmalloc
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax,  qword ptr [word ptr [bytes_per_block]]
	mov	qword ptr [rbp - 8], rax
	mov	rax,  qword ptr [word ptr [n_bytes_to_skip]]
	mov	qword ptr [rbp - 0x18], rax
	test	byte ptr [byte ptr [limit_bytes_to_format]],  1
	je	.label_264
	jmp	.label_251
.label_251:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax,  qword ptr [word ptr [end_offset]]
	jb	.label_261
	mov	qword ptr [rbp - 0x28], 0
	jmp	.label_256
.label_261:
	mov	rax,  qword ptr [word ptr [end_offset]]
	sub	rax, qword ptr [rbp - 0x18]
	cmp	rax,  qword ptr [word ptr [bytes_per_block]]
	jae	.label_250
	mov	rax,  qword ptr [word ptr [end_offset]]
	sub	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_257
.label_250:
	mov	rax,  qword ptr [word ptr [bytes_per_block]]
	mov	qword ptr [rbp - 0x48], rax
.label_257:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdx, [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x30]
	mov	cl, byte ptr [rbp - 0x19]
	and	cl, 1
	movzx	esi, cl
	mov	eax, esi
	mov	rsi, qword ptr [rbp + rax*8 - 0x10]
	call	read_block
	and	al, 1
	movzx	r8d, al
	mov	al, byte ptr [rbp - 0x1a]
	and	al, 1
	movzx	r9d, al
	and	r9d, r8d
	cmp	r9d, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	mov	rdx, qword ptr [rbp - 0x28]
	cmp	rdx,  qword ptr [word ptr [bytes_per_block]]
	jae	.label_260
	jmp	.label_256
.label_260:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax,  qword ptr [word ptr [bytes_per_block]]
	jne	.label_259
	jmp	.label_263
.label_259:
	movabs	rdi, OFFSET FLAT:.str.114
	movabs	rsi, OFFSET FLAT:.str.76
	mov	edx, 0x576
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.dump
	call	__assert_fail
.label_263:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	al, byte ptr [rbp - 0x19]
	xor	al, 0xff
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rdx, qword ptr [rbp + rdx*8 - 0x10]
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	movzx	ecx, al
	mov	r8d, ecx
	mov	rcx, qword ptr [rbp + r8*8 - 0x10]
	call	write_block
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rcx
	mov	al, byte ptr [rbp - 0x19]
	xor	al, 0xff
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	jmp	.label_251
.label_256:
	jmp	.label_252
.label_264:
	jmp	.label_262
.label_262:
	lea	rdx, [rbp - 0x28]
	mov	rdi,  qword ptr [word ptr [bytes_per_block]]
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	movzx	ecx, al
	mov	esi, ecx
	mov	rsi, qword ptr [rbp + rsi*8 - 0x10]
	call	read_block
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x1a]
	and	al, 1
	movzx	r8d, al
	and	r8d, ecx
	cmp	r8d, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	mov	rdx, qword ptr [rbp - 0x28]
	cmp	rdx,  qword ptr [word ptr [bytes_per_block]]
	jae	.label_253
	jmp	.label_265
.label_253:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax,  qword ptr [word ptr [bytes_per_block]]
	jne	.label_249
	jmp	.label_255
.label_249:
	movabs	rdi, OFFSET FLAT:.str.114
	movabs	rsi, OFFSET FLAT:.str.76
	mov	edx, 0x584
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.dump
	call	__assert_fail
.label_255:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	al, byte ptr [rbp - 0x19]
	xor	al, 0xff
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rdx, qword ptr [rbp + rdx*8 - 0x10]
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	movzx	ecx, al
	mov	r8d, ecx
	mov	rcx, qword ptr [rbp + r8*8 - 0x10]
	call	write_block
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rcx
	mov	al, byte ptr [rbp - 0x19]
	xor	al, 0xff
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	jmp	.label_262
.label_265:
	jmp	.label_252
.label_252:
	cmp	qword ptr [rbp - 0x28], 0
	jbe	.label_258
	call	get_lcm
	xor	esi, esi
	mov	dword ptr [rbp - 0x34], eax
	movsxd	rcx, dword ptr [rbp - 0x34]
	mov	rdx, qword ptr [rbp - 0x28]
	movsxd	rdi, dword ptr [rbp - 0x34]
	add	rdx, rdi
	sub	rdx, 1
	movsxd	rdi, dword ptr [rbp - 0x34]
	mov	rax, rdx
	xor	r8d, r8d
	mov	edx, r8d
	div	rdi
	imul	rcx, rax
	mov	qword ptr [rbp - 0x40], rcx
	mov	r9b, byte ptr [rbp - 0x19]
	and	r9b, 1
	movzx	r8d, r9b
	mov	eax, r8d
	mov	rax, qword ptr [rbp + rax*8 - 0x10]
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rcx, qword ptr [rbp - 0x28]
	mov	rdi, rax
	mov	rdx, rcx
	call	memset
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	r9b, byte ptr [rbp - 0x19]
	xor	r9b, 0xff
	and	r9b, 1
	movzx	r8d, r9b
	movsxd	rax, r8d
	mov	rdx, qword ptr [rbp + rax*8 - 0x10]
	mov	r9b, byte ptr [rbp - 0x19]
	and	r9b, 1
	movzx	r8d, r9b
	mov	eax, r8d
	mov	rcx, qword ptr [rbp + rax*8 - 0x10]
	call	write_block
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
.label_258:
	mov	esi, 0xa
	mov	rax,  qword ptr [word ptr [format_address]]
	mov	rdi, qword ptr [rbp - 0x18]
	call	rax
	test	byte ptr [byte ptr [limit_bytes_to_format]],  1
	je	.label_254
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax,  qword ptr [word ptr [end_offset]]
	jb	.label_254
	xor	edi, edi
	call	check_and_close
	and	al, 1
	movzx	edi, al
	mov	al, byte ptr [rbp - 0x1a]
	and	al, 1
	movzx	ecx, al
	and	ecx, edi
	cmp	ecx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
.label_254:
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	al, byte ptr [rbp - 0x1a]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404370

	.globl decode_one_format
	.type decode_one_format, @function
decode_one_format:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x190
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_300
	jmp	.label_312
.label_300:
	movabs	rdi, OFFSET FLAT:.str.78
	movabs	rsi, OFFSET FLAT:.str.76
	mov	edx, 0x286
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.decode_one_format
	call	__assert_fail
.label_312:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x61
	mov	dword ptr [rbp - 0x6c], ecx
	mov	dword ptr [rbp - 0x70], edx
	je	.label_327
	jmp	.label_332
.label_332:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0x74], eax
	je	.label_335
	jmp	.label_278
.label_278:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x64
	mov	dword ptr [rbp - 0x78], eax
	je	.label_275
	jmp	.label_270
.label_270:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x66
	mov	dword ptr [rbp - 0x7c], eax
	je	.label_268
	jmp	.label_272
.label_272:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x6f
	mov	dword ptr [rbp - 0x80], eax
	je	.label_275
	jmp	.label_280
.label_280:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x75
	mov	dword ptr [rbp - 0x84], eax
	je	.label_275
	jmp	.label_287
.label_287:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x78
	mov	dword ptr [rbp - 0x88], eax
	jne	.label_321
	jmp	.label_275
.label_275:
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x51], cl
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdx, rax
	inc	rdx
	mov	qword ptr [rbp - 0x18], rdx
	movsx	esi, byte ptr [rax + 1]
	mov	edi, esi
	sub	edi, 0x43
	mov	dword ptr [rbp - 0x8c], esi
	mov	dword ptr [rbp - 0x90], edi
	je	.label_297
	jmp	.label_310
.label_310:
	mov	eax, dword ptr [rbp - 0x8c]
	sub	eax, 0x49
	mov	dword ptr [rbp - 0x94], eax
	je	.label_311
	jmp	.label_320
.label_320:
	mov	eax, dword ptr [rbp - 0x8c]
	sub	eax, 0x4c
	mov	dword ptr [rbp - 0x98], eax
	je	.label_323
	jmp	.label_328
.label_328:
	mov	eax, dword ptr [rbp - 0x8c]
	sub	eax, 0x53
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_329
	jmp	.label_334
.label_297:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	mov	qword ptr [rbp - 0x38], 1
	jmp	.label_279
.label_329:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	mov	qword ptr [rbp - 0x38], 2
	jmp	.label_279
.label_311:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	mov	qword ptr [rbp - 0x38], 4
	jmp	.label_279
.label_323:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	mov	qword ptr [rbp - 0x38], 8
	jmp	.label_279
.label_334:
	lea	rsi, [rbp - 0x50]
	lea	rdx, [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	call	simple_strtoul
	test	al, 1
	jne	.label_293
	movabs	rdi, OFFSET FLAT:.str.79
	call	gettext
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xa8], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0xa8]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_306
.label_293:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_313
	mov	qword ptr [rbp - 0x38], 4
	jmp	.label_322
.label_313:
	mov	eax, 8
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x38]
	jb	.label_325
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [dword ptr [+ (rax * 4) + integral_type_size]],  0
	jne	.label_330
.label_325:
	movabs	rdi, OFFSET FLAT:.str.80
	call	gettext
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xb0], rax
	call	quote
	xor	ecx, ecx
	mov	r8, qword ptr [rbp - 0x38]
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0xb0]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_306
.label_330:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x18], rax
.label_322:
	jmp	.label_279
.label_279:
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx,  dword ptr [dword ptr [+ (rax * 4) + integral_type_size]]
	mov	dword ptr [rbp - 0x2c], ecx
	movsx	ecx, byte ptr [rbp - 0x51]
	mov	edx, ecx
	sub	edx, 0x64
	mov	dword ptr [rbp - 0xb4], ecx
	mov	dword ptr [rbp - 0xb8], edx
	je	.label_281
	jmp	.label_292
.label_292:
	mov	eax, dword ptr [rbp - 0xb4]
	sub	eax, 0x6f
	mov	dword ptr [rbp - 0xbc], eax
	je	.label_295
	jmp	.label_314
.label_314:
	mov	eax, dword ptr [rbp - 0xb4]
	sub	eax, 0x75
	mov	dword ptr [rbp - 0xc0], eax
	je	.label_302
	jmp	.label_307
.label_307:
	mov	eax, dword ptr [rbp - 0xb4]
	sub	eax, 0x78
	mov	dword ptr [rbp - 0xc4], eax
	je	.label_309
	jmp	.label_316
.label_281:
	mov	dword ptr [rbp - 0x3c], 0
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx,  dword ptr [dword ptr [+ (rax * 4) + bytes_to_signed_dec_digits]]
	mov	dword ptr [rbp - 0x58], ecx
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x10
	cmp	dword ptr [rbp - 0x2c], 5
	mov	qword ptr [rbp - 0xd0], rax
	jne	.label_319
	movabs	rax, OFFSET FLAT:.str.82
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_331
.label_319:
	movabs	rax, OFFSET FLAT:.str.83
	movabs	rcx, OFFSET FLAT:.str.82
	cmp	dword ptr [rbp - 0x2c], 4
	cmove	rax, rcx
	mov	qword ptr [rbp - 0xd8], rax
.label_331:
	mov	rax, qword ptr [rbp - 0xd8]
	movabs	rsi, OFFSET FLAT:.str.81
	mov	rdi, qword ptr [rbp - 0xd0]
	mov	rdx, rax
	mov	al, 0
	call	sprintf
	mov	dword ptr [rbp - 0xdc], eax
	jmp	.label_267
.label_295:
	mov	dword ptr [rbp - 0x3c], 2
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x10
	mov	rcx, qword ptr [rbp - 0x38]
	mov	edx,  dword ptr [dword ptr [+ (rcx * 4) + bytes_to_oct_digits]]
	mov	dword ptr [rbp - 0x58], edx
	cmp	dword ptr [rbp - 0x2c], 5
	mov	qword ptr [rbp - 0xe8], rax
	mov	dword ptr [rbp - 0xec], edx
	jne	.label_284
	movabs	rax, OFFSET FLAT:.str.85
	mov	qword ptr [rbp - 0xf8], rax
	jmp	.label_318
.label_284:
	movabs	rax, OFFSET FLAT:.str.86
	movabs	rcx, OFFSET FLAT:.str.85
	cmp	dword ptr [rbp - 0x2c], 4
	cmove	rax, rcx
	mov	qword ptr [rbp - 0xf8], rax
.label_318:
	mov	rax, qword ptr [rbp - 0xf8]
	movabs	rsi, OFFSET FLAT:.str.84
	mov	rdi, qword ptr [rbp - 0xe8]
	mov	edx, dword ptr [rbp - 0xec]
	mov	rcx, rax
	mov	al, 0
	call	sprintf
	mov	dword ptr [rbp - 0xfc], eax
	jmp	.label_267
.label_302:
	mov	dword ptr [rbp - 0x3c], 1
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx,  dword ptr [dword ptr [+ (rax * 4) + bytes_to_unsigned_dec_digits]]
	mov	dword ptr [rbp - 0x58], ecx
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x10
	cmp	dword ptr [rbp - 0x2c], 5
	mov	qword ptr [rbp - 0x108], rax
	jne	.label_333
	movabs	rax, OFFSET FLAT:.str.87
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_269
.label_333:
	movabs	rax, OFFSET FLAT:.str.88
	movabs	rcx, OFFSET FLAT:.str.87
	cmp	dword ptr [rbp - 0x2c], 4
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x110], rax
.label_269:
	mov	rax, qword ptr [rbp - 0x110]
	movabs	rsi, OFFSET FLAT:.str.81
	mov	rdi, qword ptr [rbp - 0x108]
	mov	rdx, rax
	mov	al, 0
	call	sprintf
	mov	dword ptr [rbp - 0x114], eax
	jmp	.label_267
.label_309:
	mov	dword ptr [rbp - 0x3c], 3
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x10
	mov	rcx, qword ptr [rbp - 0x38]
	mov	edx,  dword ptr [dword ptr [+ (rcx * 4) + bytes_to_hex_digits]]
	mov	dword ptr [rbp - 0x58], edx
	cmp	dword ptr [rbp - 0x2c], 5
	mov	qword ptr [rbp - 0x120], rax
	mov	dword ptr [rbp - 0x124], edx
	jne	.label_301
	movabs	rax, OFFSET FLAT:.str.89
	mov	qword ptr [rbp - 0x130], rax
	jmp	.label_317
.label_301:
	movabs	rax, OFFSET FLAT:.str.90
	movabs	rcx, OFFSET FLAT:.str.89
	cmp	dword ptr [rbp - 0x2c], 4
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x130], rax
.label_317:
	mov	rax, qword ptr [rbp - 0x130]
	movabs	rsi, OFFSET FLAT:.str.84
	mov	rdi, qword ptr [rbp - 0x120]
	mov	edx, dword ptr [rbp - 0x124]
	mov	rcx, rax
	mov	al, 0
	call	sprintf
	mov	dword ptr [rbp - 0x134], eax
	jmp	.label_267
.label_316:
	call	abort
.label_267:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x10
	mov	rdi, rax
	call	strlen
	cmp	rax, 8
	jae	.label_277
	jmp	.label_338
.label_277:
	movabs	rdi, OFFSET FLAT:.str.91
	movabs	rsi, OFFSET FLAT:.str.76
	mov	edx, 0x2e9
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.decode_one_format
	call	__assert_fail
.label_338:
	mov	eax, dword ptr [rbp - 0x2c]
	dec	eax
	mov	ecx, eax
	sub	eax, 4
	mov	qword ptr [rbp - 0x140], rcx
	mov	dword ptr [rbp - 0x144], eax
	ja	.label_296
	mov	rax, qword ptr [rbp - 0x140]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_303]]
	jmp	rcx
.label_991:
	movabs	rax, OFFSET FLAT:print_char
	movabs	rcx, OFFSET FLAT:print_s_char
	cmp	dword ptr [rbp - 0x3c], 0
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_308
.label_992:
	movabs	rax, OFFSET FLAT:print_short
	movabs	rcx, OFFSET FLAT:print_s_short
	cmp	dword ptr [rbp - 0x3c], 0
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_308
.label_993:
	movabs	rax, OFFSET FLAT:print_int
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_308
.label_994:
	movabs	rax, OFFSET FLAT:print_long
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_308
.label_995:
	movabs	rax, OFFSET FLAT:print_long_long
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_308
.label_296:
	call	abort
.label_308:
	jmp	.label_271
.label_268:
	mov	dword ptr [rbp - 0x3c], 4
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	inc	rcx
	mov	qword ptr [rbp - 0x18], rcx
	movsx	edx, byte ptr [rax + 1]
	mov	esi, edx
	sub	esi, 0x44
	mov	dword ptr [rbp - 0x148], edx
	mov	dword ptr [rbp - 0x14c], esi
	je	.label_273
	jmp	.label_289
.label_289:
	mov	eax, dword ptr [rbp - 0x148]
	sub	eax, 0x46
	mov	dword ptr [rbp - 0x150], eax
	je	.label_291
	jmp	.label_298
.label_298:
	mov	eax, dword ptr [rbp - 0x148]
	sub	eax, 0x4c
	mov	dword ptr [rbp - 0x154], eax
	je	.label_299
	jmp	.label_304
.label_291:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	mov	qword ptr [rbp - 0x38], 4
	jmp	.label_305
.label_273:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	mov	qword ptr [rbp - 0x38], 8
	jmp	.label_305
.label_299:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	mov	qword ptr [rbp - 0x38], 0x10
	jmp	.label_305
.label_304:
	lea	rsi, [rbp - 0x50]
	lea	rdx, [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	call	simple_strtoul
	test	al, 1
	jne	.label_282
	movabs	rdi, OFFSET FLAT:.str.79
	call	gettext
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x160], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x160]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_306
.label_282:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_276
	mov	qword ptr [rbp - 0x38], 8
	jmp	.label_283
.label_276:
	cmp	qword ptr [rbp - 0x38], 0x10
	ja	.label_285
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [dword ptr [+ (rax * 4) + fp_type_size]],  0
	jne	.label_290
.label_285:
	movabs	rdi, OFFSET FLAT:.str.92
	call	gettext
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x168], rax
	call	quote
	xor	ecx, ecx
	mov	r8, qword ptr [rbp - 0x38]
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x168]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_306
.label_290:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x18], rax
.label_283:
	jmp	.label_305
.label_305:
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx,  dword ptr [dword ptr [+ (rax * 4) + fp_type_size]]
	mov	dword ptr [rbp - 0x2c], ecx
	call	localeconv
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_326
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdi, qword ptr [rax]
	call	strlen
	mov	qword ptr [rbp - 0x170], rax
	jmp	.label_336
.label_326:
	mov	eax, 1
	mov	ecx, eax
	mov	qword ptr [rbp - 0x170], rcx
	jmp	.label_336
.label_336:
	mov	rax, qword ptr [rbp - 0x170]
	mov	qword ptr [rbp - 0x68], rax
	mov	ecx, dword ptr [rbp - 0x2c]
	mov	edx, ecx
	sub	edx, 6
	mov	dword ptr [rbp - 0x174], ecx
	mov	dword ptr [rbp - 0x178], edx
	je	.label_266
	jmp	.label_337
.label_337:
	mov	eax, dword ptr [rbp - 0x174]
	sub	eax, 7
	mov	dword ptr [rbp - 0x17c], eax
	je	.label_324
	jmp	.label_286
.label_286:
	mov	eax, dword ptr [rbp - 0x174]
	sub	eax, 8
	mov	dword ptr [rbp - 0x180], eax
	je	.label_288
	jmp	.label_294
.label_266:
	movabs	rax, OFFSET FLAT:print_float
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 0xa
	add	rax, 1
	add	rax, 3
	mov	ecx, eax
	mov	dword ptr [rbp - 0x58], ecx
	jmp	.label_274
.label_324:
	movabs	rax, OFFSET FLAT:print_double
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 0x12
	add	rax, 1
	add	rax, 4
	mov	ecx, eax
	mov	dword ptr [rbp - 0x58], ecx
	jmp	.label_274
.label_288:
	movabs	rax, OFFSET FLAT:print_long_double
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 0x16
	add	rax, 1
	add	rax, 5
	mov	ecx, eax
	mov	dword ptr [rbp - 0x58], ecx
	jmp	.label_274
.label_294:
	call	abort
.label_274:
	jmp	.label_271
.label_327:
	movabs	rax, OFFSET FLAT:print_named_ascii
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dword ptr [rbp - 0x3c], 5
	mov	dword ptr [rbp - 0x2c], 1
	mov	qword ptr [rbp - 0x48], rax
	mov	dword ptr [rbp - 0x58], 3
	jmp	.label_271
.label_335:
	movabs	rax, OFFSET FLAT:print_ascii
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dword ptr [rbp - 0x3c], 6
	mov	dword ptr [rbp - 0x2c], 1
	mov	qword ptr [rbp - 0x48], rax
	mov	dword ptr [rbp - 0x58], 3
	jmp	.label_271
.label_321:
	movabs	rdi, OFFSET FLAT:.str.93
	call	gettext
	mov	rdi, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x188], rax
	mov	dword ptr [rbp - 0x18c], ecx
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x188]
	mov	ecx, dword ptr [rbp - 0x18c]
	mov	r8, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_306
.label_271:
	mov	eax, dword ptr [rbp - 0x2c]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dword ptr [rcx + 4], eax
	mov	eax, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dword ptr [rcx], eax
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rdx + 8], rcx
	mov	eax, dword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dword ptr [rcx + 0x1c], eax
	mov	rcx, qword ptr [rbp - 0x18]
	movsx	eax, byte ptr [rcx]
	cmp	eax, 0x7a
	sete	sil
	mov	rcx, qword ptr [rbp - 0x28]
	and	sil, 1
	mov	byte ptr [rcx + 0x18], sil
	mov	rcx, qword ptr [rbp - 0x28]
	test	byte ptr [rcx + 0x18], 1
	je	.label_315
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
.label_315:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_339
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_339:
	mov	byte ptr [rbp - 1], 1
.label_306:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x190
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404e30

	.globl simple_strtoul
	.type simple_strtoul, @function
simple_strtoul:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], 0
.label_342:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_341
	mov	eax, 0xa
	mov	ecx, eax
	mov	rdx, -1
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rsi
	add	rdi, 1
	mov	qword ptr [rbp - 0x10], rdi
	movsx	eax, byte ptr [rsi]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x2c], eax
	mov	rsi, qword ptr [rbp - 0x28]
	movsxd	rdi, dword ptr [rbp - 0x2c]
	sub	rdx, rdi
	mov	rax, rdx
	xor	r8d, r8d
	mov	edx, r8d
	div	rcx
	cmp	rsi, rax
	jbe	.label_343
	mov	byte ptr [rbp - 1], 0
	jmp	.label_340
.label_343:
	imul	rax, qword ptr [rbp - 0x28], 0xa
	movsxd	rcx, dword ptr [rbp - 0x2c]
	add	rax, rcx
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_342
.label_341:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
	mov	byte ptr [rbp - 1], 1
.label_340:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404ef0

	.globl print_s_char
	.type print_s_char, @function
print_s_char:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	mov	dword ptr [rbp - 0x28], r9d
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rcx
	mov	r8d, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x3c], r8d
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rcx
.label_348:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_346
	movsxd	rax, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rcx, 1
	imul	rax, rcx
	xor	edx, edx
	div	qword ptr [rbp - 8]
	mov	esi, eax
	mov	dword ptr [rbp - 0x40], esi
	mov	esi, dword ptr [rbp - 0x3c]
	sub	esi, dword ptr [rbp - 0x40]
	add	esi, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x44], esi
	test	byte ptr [byte ptr [input_swap]],  1
	je	.label_349
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_347
	jmp	.label_349
.label_347:
	mov	qword ptr [rbp - 0x50], 0
.label_344:
	cmp	qword ptr [rbp - 0x50], 1
	jae	.label_345
	xor	eax, eax
	mov	ecx, eax
	sub	rcx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	sil, byte ptr [rdx + rcx]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	byte ptr [rbp + rcx - 0x58], sil
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_344
.label_345:
	mov	al, byte ptr [rbp - 0x58]
	mov	byte ptr [rbp - 0x45], al
	jmp	.label_350
.label_349:
	mov	rax, qword ptr [rbp - 0x30]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x45], cl
.label_350:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	esi, dword ptr [rbp - 0x44]
	movsx	edx, byte ptr [rbp - 0x45]
	mov	al, 0
	call	xprintf
	mov	edx, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0x3c], edx
	mov	dword ptr [rbp - 0x5c], eax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, -1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_348
.label_346:
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405010

	.globl print_char
	.type print_char, @function
print_char:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	mov	dword ptr [rbp - 0x28], r9d
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rcx
	mov	r8d, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x3c], r8d
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rcx
.label_355:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_353
	movsxd	rax, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rcx, 1
	imul	rax, rcx
	xor	edx, edx
	div	qword ptr [rbp - 8]
	mov	esi, eax
	mov	dword ptr [rbp - 0x40], esi
	mov	esi, dword ptr [rbp - 0x3c]
	sub	esi, dword ptr [rbp - 0x40]
	add	esi, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x44], esi
	test	byte ptr [byte ptr [input_swap]],  1
	je	.label_356
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_354
	jmp	.label_356
.label_354:
	mov	qword ptr [rbp - 0x50], 0
.label_351:
	cmp	qword ptr [rbp - 0x50], 1
	jae	.label_352
	xor	eax, eax
	mov	ecx, eax
	sub	rcx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	sil, byte ptr [rdx + rcx]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	byte ptr [rbp + rcx - 0x58], sil
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_351
.label_352:
	mov	al, byte ptr [rbp - 0x58]
	mov	byte ptr [rbp - 0x45], al
	jmp	.label_357
.label_356:
	mov	rax, qword ptr [rbp - 0x30]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x45], cl
.label_357:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	esi, dword ptr [rbp - 0x44]
	movzx	edx, byte ptr [rbp - 0x45]
	mov	al, 0
	call	xprintf
	mov	edx, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0x3c], edx
	mov	dword ptr [rbp - 0x5c], eax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, -1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_355
.label_353:
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405130

	.globl print_s_short
	.type print_s_short, @function
print_s_short:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	mov	dword ptr [rbp - 0x28], r9d
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rcx
	mov	r8d, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x3c], r8d
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rcx
.label_359:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_360
	movsxd	rax, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rcx, 1
	imul	rax, rcx
	xor	edx, edx
	div	qword ptr [rbp - 8]
	mov	esi, eax
	mov	dword ptr [rbp - 0x40], esi
	mov	esi, dword ptr [rbp - 0x3c]
	sub	esi, dword ptr [rbp - 0x40]
	add	esi, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x44], esi
	test	byte ptr [byte ptr [input_swap]],  1
	je	.label_358
	mov	qword ptr [rbp - 0x50], 0
.label_362:
	cmp	qword ptr [rbp - 0x50], 2
	jae	.label_361
	mov	eax, 1
	mov	ecx, eax
	sub	rcx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	sil, byte ptr [rdx + rcx]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	byte ptr [rbp + rcx - 0x58], sil
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_362
.label_361:
	mov	ax, word ptr [rbp - 0x58]
	mov	word ptr [rbp - 0x46], ax
	jmp	.label_363
.label_358:
	mov	rax, qword ptr [rbp - 0x30]
	mov	cx, word ptr [rax]
	mov	word ptr [rbp - 0x46], cx
.label_363:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 2
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	esi, dword ptr [rbp - 0x44]
	movsx	edx, word ptr [rbp - 0x46]
	mov	al, 0
	call	xprintf
	mov	edx, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0x3c], edx
	mov	dword ptr [rbp - 0x5c], eax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, -1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_359
.label_360:
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405250

	.globl print_short
	.type print_short, @function
print_short:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	mov	dword ptr [rbp - 0x28], r9d
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rcx
	mov	r8d, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x3c], r8d
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rcx
.label_366:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_367
	movsxd	rax, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rcx, 1
	imul	rax, rcx
	xor	edx, edx
	div	qword ptr [rbp - 8]
	mov	esi, eax
	mov	dword ptr [rbp - 0x40], esi
	mov	esi, dword ptr [rbp - 0x3c]
	sub	esi, dword ptr [rbp - 0x40]
	add	esi, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x44], esi
	test	byte ptr [byte ptr [input_swap]],  1
	je	.label_365
	mov	qword ptr [rbp - 0x50], 0
.label_369:
	cmp	qword ptr [rbp - 0x50], 2
	jae	.label_364
	mov	eax, 1
	mov	ecx, eax
	sub	rcx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	sil, byte ptr [rdx + rcx]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	byte ptr [rbp + rcx - 0x58], sil
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_369
.label_364:
	mov	ax, word ptr [rbp - 0x58]
	mov	word ptr [rbp - 0x46], ax
	jmp	.label_368
.label_365:
	mov	rax, qword ptr [rbp - 0x30]
	mov	cx, word ptr [rax]
	mov	word ptr [rbp - 0x46], cx
.label_368:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 2
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	esi, dword ptr [rbp - 0x44]
	movzx	edx, word ptr [rbp - 0x46]
	mov	al, 0
	call	xprintf
	mov	edx, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0x3c], edx
	mov	dword ptr [rbp - 0x5c], eax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, -1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_366
.label_367:
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405370

	.globl print_int
	.type print_int, @function
print_int:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	mov	dword ptr [rbp - 0x28], r9d
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rcx
	mov	r8d, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x3c], r8d
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rcx
.label_374:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_373
	movsxd	rax, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rcx, 1
	imul	rax, rcx
	xor	edx, edx
	div	qword ptr [rbp - 8]
	mov	esi, eax
	mov	dword ptr [rbp - 0x40], esi
	mov	esi, dword ptr [rbp - 0x3c]
	sub	esi, dword ptr [rbp - 0x40]
	add	esi, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x44], esi
	test	byte ptr [byte ptr [input_swap]],  1
	je	.label_372
	mov	qword ptr [rbp - 0x50], 0
.label_375:
	cmp	qword ptr [rbp - 0x50], 4
	jae	.label_371
	mov	eax, 3
	mov	ecx, eax
	sub	rcx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	sil, byte ptr [rdx + rcx]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	byte ptr [rbp + rcx - 0x58], sil
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_375
.label_371:
	mov	eax, dword ptr [rbp - 0x58]
	mov	dword ptr [rbp - 0x48], eax
	jmp	.label_370
.label_372:
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x48], ecx
.label_370:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 4
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	esi, dword ptr [rbp - 0x44]
	mov	edx, dword ptr [rbp - 0x48]
	mov	al, 0
	call	xprintf
	mov	edx, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0x3c], edx
	mov	dword ptr [rbp - 0x5c], eax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, -1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_374
.label_373:
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405480

	.globl print_long
	.type print_long, @function
print_long:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	mov	dword ptr [rbp - 0x28], r9d
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rcx
	mov	r8d, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x3c], r8d
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rcx
.label_378:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_379
	movsxd	rax, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rcx, 1
	imul	rax, rcx
	xor	edx, edx
	div	qword ptr [rbp - 8]
	mov	esi, eax
	mov	dword ptr [rbp - 0x40], esi
	mov	esi, dword ptr [rbp - 0x3c]
	sub	esi, dword ptr [rbp - 0x40]
	add	esi, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x44], esi
	test	byte ptr [byte ptr [input_swap]],  1
	je	.label_377
	mov	qword ptr [rbp - 0x58], 0
.label_376:
	cmp	qword ptr [rbp - 0x58], 8
	jae	.label_381
	mov	eax, 7
	mov	ecx, eax
	sub	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	sil, byte ptr [rdx + rcx]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	byte ptr [rbp + rcx - 0x60], sil
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_376
.label_381:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_380
.label_377:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x50], rax
.label_380:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	esi, dword ptr [rbp - 0x44]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	al, 0
	call	xprintf
	mov	esi, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0x3c], esi
	mov	dword ptr [rbp - 0x64], eax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, -1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_378
.label_379:
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4055a0

	.globl print_long_long
	.type print_long_long, @function
print_long_long:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	mov	dword ptr [rbp - 0x28], r9d
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rcx
	mov	r8d, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x3c], r8d
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rcx
.label_384:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_385
	movsxd	rax, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rcx, 1
	imul	rax, rcx
	xor	edx, edx
	div	qword ptr [rbp - 8]
	mov	esi, eax
	mov	dword ptr [rbp - 0x40], esi
	mov	esi, dword ptr [rbp - 0x3c]
	sub	esi, dword ptr [rbp - 0x40]
	add	esi, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x44], esi
	test	byte ptr [byte ptr [input_swap]],  1
	je	.label_383
	mov	qword ptr [rbp - 0x58], 0
.label_387:
	cmp	qword ptr [rbp - 0x58], 8
	jae	.label_386
	mov	eax, 7
	mov	ecx, eax
	sub	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	sil, byte ptr [rdx + rcx]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	byte ptr [rbp + rcx - 0x60], sil
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_387
.label_386:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_382
.label_383:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x50], rax
.label_382:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	esi, dword ptr [rbp - 0x44]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	al, 0
	call	xprintf
	mov	esi, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0x3c], esi
	mov	dword ptr [rbp - 0x64], eax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, -1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_384
.label_385:
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4056c0

	.globl print_float
	.type print_float, @function
print_float:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	mov	dword ptr [rbp - 0x28], r9d
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rcx
	mov	r8d, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x3c], r8d
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rcx
.label_393:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_391
	movsxd	rax, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rcx, 1
	imul	rax, rcx
	xor	edx, edx
	div	qword ptr [rbp - 8]
	mov	esi, eax
	mov	dword ptr [rbp - 0x40], esi
	mov	esi, dword ptr [rbp - 0x3c]
	sub	esi, dword ptr [rbp - 0x40]
	add	esi, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x44], esi
	test	byte ptr [byte ptr [input_swap]],  1
	je	.label_389
	mov	qword ptr [rbp - 0x50], 0
.label_390:
	cmp	qword ptr [rbp - 0x50], 4
	jae	.label_388
	mov	eax, 3
	mov	ecx, eax
	sub	rcx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	sil, byte ptr [rdx + rcx]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	byte ptr [rbp + rcx - 0x58], sil
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_390
.label_388:
	movss	xmm0, dword ptr [rbp - 0x58]
	movss	dword ptr [rbp - 0x48], xmm0
	jmp	.label_392
.label_389:
	mov	rax, qword ptr [rbp - 0x30]
	movss	xmm0, dword ptr [rax]
	movss	dword ptr [rbp - 0x48], xmm0
.label_392:
	mov	eax, 0x1f
	mov	esi, eax
	xor	eax, eax
	lea	rdi, [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x30]
	add	rcx, 4
	mov	qword ptr [rbp - 0x30], rcx
	movss	xmm0, dword ptr [rbp - 0x48]
	mov	edx, eax
	mov	ecx, eax
	call	ftoastr
	movabs	rdi, OFFSET FLAT:.str.94
	lea	rdx, [rbp - 0x80]
	mov	esi, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 0x84], eax
	mov	al, 0
	call	xprintf
	mov	ecx, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0x3c], ecx
	mov	dword ptr [rbp - 0x88], eax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, -1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_393
.label_391:
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405810

	.globl print_double
	.type print_double, @function
print_double:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	mov	dword ptr [rbp - 0x28], r9d
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rcx
	mov	r8d, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x3c], r8d
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rcx
.label_399:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_395
	movsxd	rax, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rcx, 1
	imul	rax, rcx
	xor	edx, edx
	div	qword ptr [rbp - 8]
	mov	esi, eax
	mov	dword ptr [rbp - 0x40], esi
	mov	esi, dword ptr [rbp - 0x3c]
	sub	esi, dword ptr [rbp - 0x40]
	add	esi, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x44], esi
	test	byte ptr [byte ptr [input_swap]],  1
	je	.label_398
	mov	qword ptr [rbp - 0x58], 0
.label_394:
	cmp	qword ptr [rbp - 0x58], 8
	jae	.label_397
	mov	eax, 7
	mov	ecx, eax
	sub	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	sil, byte ptr [rdx + rcx]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	byte ptr [rbp + rcx - 0x60], sil
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_394
.label_397:
	movsd	xmm0, qword ptr [rbp - 0x60]
	movsd	qword ptr [rbp - 0x50], xmm0
	jmp	.label_396
.label_398:
	mov	rax, qword ptr [rbp - 0x30]
	movsd	xmm0, qword ptr [rax]
	movsd	qword ptr [rbp - 0x50], xmm0
.label_396:
	mov	eax, 0x28
	mov	esi, eax
	xor	eax, eax
	lea	rdi, [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x30]
	add	rcx, 8
	mov	qword ptr [rbp - 0x30], rcx
	movsd	xmm0, qword ptr [rbp - 0x50]
	mov	edx, eax
	mov	ecx, eax
	call	dtoastr
	movabs	rdi, OFFSET FLAT:.str.94
	lea	rdx, [rbp - 0x90]
	mov	esi, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 0x94], eax
	mov	al, 0
	call	xprintf
	mov	ecx, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0x3c], ecx
	mov	dword ptr [rbp - 0x98], eax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, -1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_399
.label_395:
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405960

	.globl print_long_double
	.type print_long_double, @function
print_long_double:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xe0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	mov	dword ptr [rbp - 0x28], r9d
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rcx
	mov	r8d, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x3c], r8d
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rcx
.label_401:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_404
	movsxd	rax, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rcx, 1
	imul	rax, rcx
	xor	edx, edx
	div	qword ptr [rbp - 8]
	mov	esi, eax
	mov	dword ptr [rbp - 0x40], esi
	mov	esi, dword ptr [rbp - 0x3c]
	sub	esi, dword ptr [rbp - 0x40]
	add	esi, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x44], esi
	test	byte ptr [byte ptr [input_swap]],  1
	je	.label_403
	mov	qword ptr [rbp - 0x68], 0
.label_402:
	cmp	qword ptr [rbp - 0x68], 0x10
	jae	.label_400
	mov	eax, 0xf
	mov	ecx, eax
	sub	rcx, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	sil, byte ptr [rdx + rcx]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	byte ptr [rbp + rcx - 0x80], sil
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_402
.label_400:
	fld	xword ptr [rbp - 0x80]
	fstp	xword ptr [rbp - 0x60]
	jmp	.label_405
.label_403:
	mov	rax, qword ptr [rbp - 0x30]
	fld	xword ptr [rax]
	fstp	xword ptr [rbp - 0x60]
.label_405:
	mov	eax, 0x2d
	mov	ecx, eax
	xor	eax, eax
	mov	rdx, qword ptr [rbp - 0x30]
	add	rdx, 0x10
	mov	qword ptr [rbp - 0x30], rdx
	lea	rdi, [rbp - 0xb0]
	fld	xword ptr [rbp - 0x60]
	mov	rdx, rsp
	fstp	xword ptr [rdx]
	mov	esi, 0x2d
	xor	r8d, r8d
	mov	edx, r8d
	mov	qword ptr [rbp - 0xb8], rcx
	mov	ecx, r8d
	mov	dword ptr [rbp - 0xbc], eax
	call	ldtoastr
	movabs	rdi, OFFSET FLAT:.str.94
	lea	rdx, [rbp - 0xb0]
	mov	esi, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 0xc0], eax
	mov	al, 0
	call	xprintf
	mov	ecx, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0x3c], ecx
	mov	dword ptr [rbp - 0xc4], eax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, -1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_401
.label_404:
	add	rsp, 0xe0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405ac0

	.globl print_named_ascii
	.type print_named_ascii, @function
print_named_ascii:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	mov	dword ptr [rbp - 0x28], r9d
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rcx
	mov	r8d, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x3c], r8d
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rcx
.label_410:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_409
	movsxd	rax, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rcx, 1
	imul	rax, rcx
	xor	edx, edx
	div	qword ptr [rbp - 8]
	mov	esi, eax
	mov	dword ptr [rbp - 0x40], esi
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x30], rcx
	movzx	esi, byte ptr [rax]
	and	esi, 0x7f
	mov	dword ptr [rbp - 0x44], esi
	cmp	dword ptr [rbp - 0x44], 0x7f
	jne	.label_407
	movabs	rax, OFFSET FLAT:.str.95
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_406
.label_407:
	cmp	dword ptr [rbp - 0x44], 0x20
	jg	.label_408
	movabs	rax, OFFSET FLAT:charname
	movsxd	rcx, dword ptr [rbp - 0x44]
	shl	rcx, 2
	add	rax, rcx
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_411
.label_408:
	lea	rax, [rbp - 0x52]
	mov	ecx, dword ptr [rbp - 0x44]
	mov	dl, cl
	mov	byte ptr [rbp - 0x52], dl
	mov	byte ptr [rbp - 0x51], 0
	mov	qword ptr [rbp - 0x50], rax
.label_411:
	jmp	.label_406
.label_406:
	movabs	rdi, OFFSET FLAT:.str.94
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, dword ptr [rbp - 0x40]
	add	eax, dword ptr [rbp - 0x24]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	esi, eax
	mov	al, 0
	call	xprintf
	mov	esi, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0x3c], esi
	mov	dword ptr [rbp - 0x58], eax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, -1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_410
.label_409:
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405be0

	.globl print_ascii
	.type print_ascii, @function
print_ascii:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	mov	dword ptr [rbp - 0x28], r9d
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rcx
	mov	r8d, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x3c], r8d
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rcx
.label_415:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_416
	movsxd	rax, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x38]
	dec	rcx
	imul	rax, rcx
	mov	rcx, qword ptr [rbp - 8]
	xor	edx, edx
	div	rcx
	mov	esi, eax
	mov	dword ptr [rbp - 0x40], esi
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, rax
	inc	rcx
	mov	qword ptr [rbp - 0x30], rcx
	mov	dil, byte ptr [rax]
	mov	byte ptr [rbp - 0x41], dil
	movzx	esi, byte ptr [rbp - 0x41]
	mov	eax, esi
	mov	rcx, rax
	sub	rcx, 0xd
	mov	qword ptr [rbp - 0x60], rax
	mov	qword ptr [rbp - 0x68], rcx
	ja	.label_414
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_413]]
	jmp	rcx
.label_997:
	movabs	rax, OFFSET FLAT:.str.96
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_412
.label_998:
	movabs	rax, OFFSET FLAT:.str.97
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_412
.label_999:
	movabs	rax, OFFSET FLAT:.str.98
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_412
.label_1003:
	movabs	rax, OFFSET FLAT:.str.99
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_412
.label_1001:
	movabs	rax, OFFSET FLAT:.str.100
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_412
.label_1004:
	movabs	rax, OFFSET FLAT:.str.101
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_412
.label_1000:
	movabs	rax, OFFSET FLAT:.str.102
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_412
.label_1002:
	movabs	rax, OFFSET FLAT:.str.103
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_412
.label_414:
	lea	rdi, [rbp - 0x54]
	movzx	eax, byte ptr [rbp - 0x41]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x70], rdi
	mov	qword ptr [rbp - 0x78], rcx
	call	__ctype_b_loc
	movabs	rcx, OFFSET FLAT:.str.105
	movabs	rdi, OFFSET FLAT:.str.104
	mov	rax, qword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x78]
	movzx	esi, word ptr [rax + rdx*2]
	and	esi, 0x4000
	cmp	esi, 0
	cmovne	rcx, rdi
	movzx	edx, byte ptr [rbp - 0x41]
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, rcx
	mov	al, 0
	call	sprintf
	lea	rcx, [rbp - 0x54]
	mov	qword ptr [rbp - 0x50], rcx
	mov	dword ptr [rbp - 0x7c], eax
.label_412:
	movabs	rdi, OFFSET FLAT:.str.94
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, dword ptr [rbp - 0x40]
	add	eax, dword ptr [rbp - 0x24]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	esi, eax
	mov	al, 0
	call	xprintf
	mov	esi, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0x3c], esi
	mov	dword ptr [rbp - 0x80], eax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, -1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_415
.label_416:
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405dc0

	.globl usable_st_size
	.type usable_st_size, @function
usable_st_size:
	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rdi + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	mov	byte ptr [rbp - 9], al
	je	.label_417
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rcx + 0x18]
	and	edx, 0xf000
	cmp	edx, 0xa000
	mov	byte ptr [rbp - 9], al
	je	.label_417
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rcx + 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	edx, dword ptr [rcx + 0x18]
	cmp	edx, 0
	mov	byte ptr [rbp - 9], al
	jne	.label_417
	xor	eax, eax
	mov	cl, al
	mov	byte ptr [rbp - 9], cl
	jmp	.label_417
.label_417:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405e40

	.globl check_and_close
	.type check_and_close, @function
check_and_close:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 4], edi
	mov	byte ptr [rbp - 5], 1
	cmp	qword ptr [word ptr [in_stream]],  0
	je	.label_418
	mov	rdi,  qword ptr [word ptr [in_stream]]
	call	ferror_unlocked
	cmp	eax, 0
	je	.label_422
	movabs	rdi, OFFSET FLAT:.str.112
	mov	esi, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0xc], esi
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx,  qword ptr [word ptr [input_filename]]
	mov	qword ptr [rbp - 0x18], rax
	call	quotearg_n_style_colon
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xc]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	rcx,  qword ptr [word ptr [file_list]]
	mov	rdi, qword ptr [rcx - 8]
	mov	esi, OFFSET FLAT:.str.109
	call	strcmp
	cmp	eax, 0
	je	.label_420
	mov	rdi,  qword ptr [word ptr [in_stream]]
	call	rpl_fclose
	mov	dword ptr [rbp - 0x1c], eax
.label_420:
	mov	byte ptr [rbp - 5], 0
	jmp	.label_421
.label_422:
	mov	rax,  qword ptr [word ptr [file_list]]
	mov	rdi, qword ptr [rax - 8]
	mov	ecx, OFFSET FLAT:.str.109
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	je	.label_419
	mov	rdi,  qword ptr [word ptr [in_stream]]
	call	rpl_fclose
	cmp	eax, 0
	je	.label_419
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [input_filename]]
	mov	dword ptr [rbp - 0x20], ecx
	call	quotearg_n_style_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rbp - 0x20]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 5], 0
.label_419:
	jmp	.label_421
.label_421:
	mov	qword ptr [word ptr [in_stream]],  0
.label_418:
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	ferror_unlocked
	cmp	eax, 0
	je	.label_423
	movabs	rdi, OFFSET FLAT:.str_2
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 5], 0
.label_423:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405fc0

	.globl lcm
	.type lcm, @function
lcm:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x20], rax
	call	gcd
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, rcx
	xor	edx, edx
	mov	rsi, qword ptr [rbp - 0x28]
	div	rsi
	mov	rdi, qword ptr [rbp - 0x18]
	imul	rdi, rax
	mov	rax, rdi
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406020

	.globl gcd
	.type gcd, @function
gcd:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
.label_424:
	mov	rax, qword ptr [rbp - 8]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x10], rdx
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_424
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406060

	.globl read_char
	.type read_char, @function
read_char:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], 1
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rdi], 0xffffffff
.label_427:
	cmp	qword ptr [word ptr [in_stream]],  0
	je	.label_426
	mov	rdi,  qword ptr [word ptr [in_stream]]
	call	fgetc
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rdi], eax
	mov	rdi, qword ptr [rbp - 8]
	cmp	dword ptr [rdi], -1
	je	.label_425
	jmp	.label_426
.label_425:
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	check_and_close
	and	al, 1
	movzx	edi, al
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	ecx, al
	and	ecx, edi
	cmp	ecx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 9], al
	call	open_next_file
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	edi, al
	and	edi, ecx
	cmp	edi, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 9], al
	jmp	.label_427
.label_426:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406110

	.globl read_block
	.type read_block, @function
read_block:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rbp - 0x19], 1
	cmp	rcx, qword ptr [rbp - 8]
	jae	.label_431
	mov	rax, qword ptr [rbp - 8]
	cmp	rax,  qword ptr [word ptr [bytes_per_block]]
	ja	.label_431
	jmp	.label_429
.label_431:
	movabs	rdi, OFFSET FLAT:.str.115
	movabs	rsi, OFFSET FLAT:.str.76
	mov	edx, 0x508
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.read_block
	call	__assert_fail
.label_429:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax], 0
.label_432:
	cmp	qword ptr [word ptr [in_stream]],  0
	je	.label_428
	mov	eax, 1
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rcx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	add	rcx, qword ptr [rdx]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rdi,  qword ptr [word ptr [in_stream]]
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rcx
	mov	rcx, qword ptr [rbp - 0x38]
	call	fread_unlocked
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_430
	jmp	.label_428
.label_430:
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	check_and_close
	and	al, 1
	movzx	edi, al
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	movzx	ecx, al
	and	ecx, edi
	cmp	ecx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	call	open_next_file
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	movzx	edi, al
	and	edi, ecx
	cmp	edi, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	jmp	.label_432
.label_428:
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406250

	.globl write_block
	.type write_block, @function
write_block:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	test	byte ptr [byte ptr [abbreviate_duplicate_blocks]],  1
	je	.label_435
	test	byte ptr [byte ptr [write_block.first]],  1
	jne	.label_435
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax,  qword ptr [word ptr [bytes_per_block]]
	jne	.label_435
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx,  qword ptr [word ptr [bytes_per_block]]
	call	memcmp
	cmp	eax, 0
	jne	.label_435
	test	byte ptr [byte ptr [write_block.prev_pair_equal]],  1
	je	.label_441
	jmp	.label_434
.label_441:
	movabs	rdi, OFFSET FLAT:.str.116
	mov	al, 0
	call	printf
	mov	byte ptr [byte ptr [write_block.prev_pair_equal]],  1
	mov	dword ptr [rbp - 0x40], eax
.label_434:
	jmp	.label_439
.label_435:
	mov	byte ptr [byte ptr [write_block.prev_pair_equal]],  0
	mov	qword ptr [rbp - 0x28], 0
.label_440:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax,  qword ptr [word ptr [n_specs]]
	jae	.label_438
	mov	rax, qword ptr [rbp - 0x28]
	imul	rax, rax, 0x28
	add	rax,  qword ptr [word ptr [spec]]
	mov	ecx, dword ptr [rax + 4]
	mov	eax, ecx
	mov	ecx,  dword ptr [dword ptr [+ (rax * 4) + width_bytes]]
	mov	dword ptr [rbp - 0x2c], ecx
	mov	rax,  qword ptr [word ptr [bytes_per_block]]
	movsxd	rdx, dword ptr [rbp - 0x2c]
	xor	ecx, ecx
	mov	qword ptr [rbp - 0x48], rdx
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x48]
	div	rsi
	mov	ecx, eax
	mov	dword ptr [rbp - 0x30], ecx
	mov	rax,  qword ptr [word ptr [bytes_per_block]]
	sub	rax, qword ptr [rbp - 0x10]
	movsxd	rdi, dword ptr [rbp - 0x2c]
	xor	ecx, ecx
	mov	edx, ecx
	div	rdi
	mov	ecx, eax
	mov	dword ptr [rbp - 0x34], ecx
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_437
	xor	esi, esi
	mov	rax,  qword ptr [word ptr [format_address]]
	mov	rdi, qword ptr [rbp - 8]
	call	rax
	jmp	.label_433
.label_437:
	movabs	rdi, OFFSET FLAT:.str.94
	movabs	rdx, OFFSET FLAT:.str_0
	mov	esi,  dword ptr [dword ptr [address_pad_len]]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x4c], eax
.label_433:
	mov	rax, qword ptr [rbp - 0x28]
	imul	rax, rax, 0x28
	add	rax,  qword ptr [word ptr [spec]]
	mov	rax, qword ptr [rax + 8]
	movsxd	rdi, dword ptr [rbp - 0x30]
	movsxd	rsi, dword ptr [rbp - 0x34]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	imul	rcx, rcx, 0x28
	add	rcx,  qword ptr [word ptr [spec]]
	add	rcx, 0x10
	mov	r8, qword ptr [rbp - 0x28]
	imul	r8, r8, 0x28
	add	r8,  qword ptr [word ptr [spec]]
	mov	r8d, dword ptr [r8 + 0x1c]
	mov	r9, qword ptr [rbp - 0x28]
	imul	r9, r9, 0x28
	add	r9,  qword ptr [word ptr [spec]]
	mov	r9d, dword ptr [r9 + 0x20]
	call	rax
	mov	rax, qword ptr [rbp - 0x28]
	imul	rax, rax, 0x28
	add	rax,  qword ptr [word ptr [spec]]
	test	byte ptr [rax + 0x18], 1
	je	.label_436
	movabs	rdi, OFFSET FLAT:.str.94
	movabs	rdx, OFFSET FLAT:.str_0
	mov	rax, qword ptr [rbp - 0x28]
	imul	rax, rax, 0x28
	add	rax,  qword ptr [word ptr [spec]]
	mov	ecx, dword ptr [rax + 0x1c]
	mov	dword ptr [rbp - 0x38], ecx
	mov	rax, qword ptr [rbp - 0x28]
	imul	rax, rax, 0x28
	add	rax,  qword ptr [word ptr [spec]]
	mov	ecx, dword ptr [rax + 0x20]
	imul	ecx, dword ptr [rbp - 0x34]
	mov	eax, ecx
	mov	qword ptr [rbp - 0x58], rdx
	cdq	
	idiv	dword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 0x3c], eax
	mov	eax, dword ptr [rbp - 0x34]
	imul	eax, dword ptr [rbp - 0x38]
	add	eax, dword ptr [rbp - 0x3c]
	mov	esi, eax
	mov	r8, qword ptr [rbp - 0x58]
	mov	rdx, r8
	mov	al, 0
	call	printf
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 0x5c], eax
	call	dump_hexl_mode_trailer
.label_436:
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x60], eax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_440
.label_438:
	jmp	.label_439
.label_439:
	mov	byte ptr [byte ptr [write_block.first]],  0
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4064d0

	.globl dump_hexl_mode_trailer
	.type dump_hexl_mode_trailer, @function
dump_hexl_mode_trailer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:.str.117
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x20], eax
.label_444:
	cmp	qword ptr [rbp - 0x18], 0
	jbe	.label_443
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax]
	mov	byte ptr [rbp - 0x19], dl
	movzx	esi, byte ptr [rbp - 0x19]
	movsxd	rax, esi
	mov	qword ptr [rbp - 0x28], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x28]
	movzx	esi, word ptr [rax + rcx*2]
	and	esi, 0x4000
	cmp	esi, 0
	je	.label_442
	movzx	eax, byte ptr [rbp - 0x19]
	mov	dword ptr [rbp - 0x2c], eax
	jmp	.label_445
.label_442:
	mov	eax, 0x2e
	mov	dword ptr [rbp - 0x2c], eax
	jmp	.label_445
.label_445:
	mov	eax, dword ptr [rbp - 0x2c]
	mov	cl, al
	mov	byte ptr [rbp - 0x1a], cl
	movzx	edi, byte ptr [rbp - 0x1a]
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x30], eax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, -1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_444
.label_443:
	mov	edi, 0x3c
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x34], eax
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4065a0

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	push	rbp
	mov	rbp, rsp
	mov	edi, 1
	call	usage
	.section	.text
	.align	16
	#Procedure 0x4065b0

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
.label_452:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_446
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x38]
	call	strncmp
	cmp	eax, 0
	jne	.label_451
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	call	strlen
	cmp	rax, qword ptr [rbp - 0x38]
	jne	.label_455
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_450
.label_455:
	cmp	qword ptr [rbp - 0x40], -1
	jne	.label_447
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_449
.label_447:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_457
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
	je	.label_453
.label_457:
	mov	byte ptr [rbp - 0x41], 1
.label_453:
	jmp	.label_449
.label_449:
	jmp	.label_454
.label_454:
	jmp	.label_451
.label_451:
	jmp	.label_456
.label_456:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_452
.label_446:
	test	byte ptr [rbp - 0x41], 1
	je	.label_448
	mov	qword ptr [rbp - 8], -2
	jmp	.label_450
.label_448:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
.label_450:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406700

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
	jne	.label_458
	movabs	rdi, OFFSET FLAT:.str_3
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_459
.label_458:
	movabs	rdi, OFFSET FLAT:.str.1_0
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
.label_459:
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
	#Procedure 0x4067a0

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	movabs	rax, OFFSET FLAT:.str.2_0
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
.label_463:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_461
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_464
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rcx, qword ptr [rbp - 0x20]
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	memcmp
	cmp	eax, 0
	je	.label_462
.label_464:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:.str.3_0
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
	jmp	.label_460
.label_462:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:.str.4_0
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x4c], eax
.label_460:
	jmp	.label_465
.label_465:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_463
.label_461:
	mov	edi, 0xa
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	putc_unlocked
	mov	dword ptr [rbp - 0x50], eax
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4068f0

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
	jl	.label_467
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_466
.label_467:
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
.label_466:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406980
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
.label_469:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_468
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	imul	rcx, qword ptr [rbp - 0x30]
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_472
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_471
.label_472:
	jmp	.label_470
.label_470:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_469
.label_468:
	mov	qword ptr [rbp - 8], 0
.label_471:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406a20
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
	#Procedure 0x406a40
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
	#Procedure 0x406a60

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	close_stream
	cmp	eax, 0
	je	.label_476
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_477
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	je	.label_476
.label_477:
	movabs	rdi, OFFSET FLAT:.str_2
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_474
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str.1_1
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_475
.label_474:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	call	error
.label_475:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_476:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_473
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_473:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406b50

	.globl dtoastr
	.type dtoastr, @function
dtoastr:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	xorps	xmm1, xmm1
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	dword ptr [rbp - 0x18], ecx
	movsd	qword ptr [rbp - 0x20], xmm0
	movsd	xmm0, qword ptr [rbp - 0x20]
	movsd	qword ptr [rbp - 0x28], xmm0
	ucomisd	xmm1, qword ptr [rbp - 0x20]
	jbe	.label_482
	movsd	xmm0, qword ptr [rbp - 0x20]
	movq	rax, xmm0
	movabs	rcx, 0x8000000000000000
	xor	rax, rcx
	movq	xmm0, rax
	movsd	qword ptr [rbp - 0x60], xmm0
	jmp	.label_479
.label_482:
	movsd	xmm0, qword ptr [rbp - 0x20]
	movsd	qword ptr [rbp - 0x60], xmm0
.label_479:
	movsd	xmm0, qword ptr [rbp - 0x60]
	movsd	xmm1,  qword ptr [word ptr [label_484]]
	mov	eax, 0xf
	mov	ecx, 1
	mov	edx, 0x67
	mov	esi, 0x47
	lea	rdi, [rbp - 0x33]
	movsd	qword ptr [rbp - 0x40], xmm0
	mov	qword ptr [rbp - 0x50], rdi
	mov	rdi, qword ptr [rbp - 0x50]
	mov	r8, rdi
	add	r8, 1
	mov	qword ptr [rbp - 0x50], r8
	mov	byte ptr [rdi], 0x25
	mov	rdi, qword ptr [rbp - 0x50]
	mov	byte ptr [rdi], 0x2d
	mov	r9d, dword ptr [rbp - 0x14]
	and	r9d, 1
	cmp	r9d, 0
	setne	r10b
	and	r10b, 1
	movzx	r9d, r10b
	mov	rdi, qword ptr [rbp - 0x50]
	movsxd	r8, r9d
	add	rdi, r8
	mov	qword ptr [rbp - 0x50], rdi
	mov	rdi, qword ptr [rbp - 0x50]
	mov	byte ptr [rdi], 0x2b
	mov	r9d, dword ptr [rbp - 0x14]
	and	r9d, 2
	cmp	r9d, 0
	setne	r10b
	and	r10b, 1
	movzx	r9d, r10b
	mov	rdi, qword ptr [rbp - 0x50]
	movsxd	r8, r9d
	add	rdi, r8
	mov	qword ptr [rbp - 0x50], rdi
	mov	rdi, qword ptr [rbp - 0x50]
	mov	byte ptr [rdi], 0x20
	mov	r9d, dword ptr [rbp - 0x14]
	and	r9d, 4
	cmp	r9d, 0
	setne	r10b
	and	r10b, 1
	movzx	r9d, r10b
	mov	rdi, qword ptr [rbp - 0x50]
	movsxd	r8, r9d
	add	rdi, r8
	mov	qword ptr [rbp - 0x50], rdi
	mov	rdi, qword ptr [rbp - 0x50]
	mov	byte ptr [rdi], 0x30
	mov	r9d, dword ptr [rbp - 0x14]
	and	r9d, 8
	cmp	r9d, 0
	setne	r10b
	and	r10b, 1
	movzx	r9d, r10b
	mov	rdi, qword ptr [rbp - 0x50]
	movsxd	r8, r9d
	add	rdi, r8
	mov	qword ptr [rbp - 0x50], rdi
	mov	rdi, qword ptr [rbp - 0x50]
	mov	r8, rdi
	add	r8, 1
	mov	qword ptr [rbp - 0x50], r8
	mov	byte ptr [rdi], 0x2a
	mov	rdi, qword ptr [rbp - 0x50]
	mov	r8, rdi
	add	r8, 1
	mov	qword ptr [rbp - 0x50], r8
	mov	byte ptr [rdi], 0x2e
	mov	rdi, qword ptr [rbp - 0x50]
	mov	r8, rdi
	add	r8, 1
	mov	qword ptr [rbp - 0x50], r8
	mov	byte ptr [rdi], 0x2a
	mov	rdi, qword ptr [rbp - 0x50]
	mov	byte ptr [rdi], 0x4c
	mov	rdi, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x50], rdi
	mov	r9d, dword ptr [rbp - 0x14]
	and	r9d, 0x10
	cmp	r9d, 0
	cmovne	edx, esi
	mov	r10b, dl
	mov	rdi, qword ptr [rbp - 0x50]
	mov	r8, rdi
	add	r8, 1
	mov	qword ptr [rbp - 0x50], r8
	mov	byte ptr [rdi], r10b
	mov	rdi, qword ptr [rbp - 0x50]
	mov	byte ptr [rdi], 0
	ucomisd	xmm1, qword ptr [rbp - 0x40]
	cmova	eax, ecx
	mov	dword ptr [rbp - 0x44], eax
.label_480:
	lea	rdx, [rbp - 0x33]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x18]
	mov	r8d, dword ptr [rbp - 0x44]
	movsd	xmm0, qword ptr [rbp - 0x28]
	mov	al, 1
	call	snprintf
	mov	dword ptr [rbp - 0x54], eax
	cmp	dword ptr [rbp - 0x54], 0
	jl	.label_478
	mov	eax, 0x11
	cmp	eax, dword ptr [rbp - 0x44]
	jle	.label_478
	movsxd	rax, dword ptr [rbp - 0x54]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_481
	xor	eax, eax
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 8]
	call	strtod
	ucomisd	xmm0, qword ptr [rbp - 0x20]
	jne	.label_481
	jp	.label_481
.label_478:
	mov	eax, dword ptr [rbp - 0x54]
	add	rsp, 0x60
	pop	rbp
	ret	
.label_481:
	jmp	.label_483
.label_483:
	mov	eax, dword ptr [rbp - 0x44]
	add	eax, 1
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_480
	.section	.text
	.align	16
	#Procedure 0x406db0

	.globl ftoastr
	.type ftoastr, @function
ftoastr:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	xorps	xmm1, xmm1
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	dword ptr [rbp - 0x18], ecx
	movss	dword ptr [rbp - 0x1c], xmm0
	cvtss2sd	xmm0, dword ptr [rbp - 0x1c]
	movsd	qword ptr [rbp - 0x28], xmm0
	ucomiss	xmm1, dword ptr [rbp - 0x1c]
	jbe	.label_490
	movss	xmm0, dword ptr [rbp - 0x1c]
	movd	eax, xmm0
	xor	eax, 0x80000000
	movd	xmm0, eax
	movss	dword ptr [rbp - 0x50], xmm0
	jmp	.label_485
.label_490:
	movss	xmm0, dword ptr [rbp - 0x1c]
	movss	dword ptr [rbp - 0x50], xmm0
.label_485:
	movss	xmm0, dword ptr [rbp - 0x50]
	movss	xmm1,  dword ptr [dword ptr [label_487]]
	mov	eax, 6
	mov	ecx, 1
	mov	edx, 0x67
	mov	esi, 0x47
	lea	rdi, [rbp - 0x33]
	movss	dword ptr [rbp - 0x38], xmm0
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, qword ptr [rbp - 0x48]
	mov	r8, rdi
	add	r8, 1
	mov	qword ptr [rbp - 0x48], r8
	mov	byte ptr [rdi], 0x25
	mov	rdi, qword ptr [rbp - 0x48]
	mov	byte ptr [rdi], 0x2d
	mov	r9d, dword ptr [rbp - 0x14]
	and	r9d, 1
	cmp	r9d, 0
	setne	r10b
	and	r10b, 1
	movzx	r9d, r10b
	mov	rdi, qword ptr [rbp - 0x48]
	movsxd	r8, r9d
	add	rdi, r8
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, qword ptr [rbp - 0x48]
	mov	byte ptr [rdi], 0x2b
	mov	r9d, dword ptr [rbp - 0x14]
	and	r9d, 2
	cmp	r9d, 0
	setne	r10b
	and	r10b, 1
	movzx	r9d, r10b
	mov	rdi, qword ptr [rbp - 0x48]
	movsxd	r8, r9d
	add	rdi, r8
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, qword ptr [rbp - 0x48]
	mov	byte ptr [rdi], 0x20
	mov	r9d, dword ptr [rbp - 0x14]
	and	r9d, 4
	cmp	r9d, 0
	setne	r10b
	and	r10b, 1
	movzx	r9d, r10b
	mov	rdi, qword ptr [rbp - 0x48]
	movsxd	r8, r9d
	add	rdi, r8
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, qword ptr [rbp - 0x48]
	mov	byte ptr [rdi], 0x30
	mov	r9d, dword ptr [rbp - 0x14]
	and	r9d, 8
	cmp	r9d, 0
	setne	r10b
	and	r10b, 1
	movzx	r9d, r10b
	mov	rdi, qword ptr [rbp - 0x48]
	movsxd	r8, r9d
	add	rdi, r8
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, qword ptr [rbp - 0x48]
	mov	r8, rdi
	add	r8, 1
	mov	qword ptr [rbp - 0x48], r8
	mov	byte ptr [rdi], 0x2a
	mov	rdi, qword ptr [rbp - 0x48]
	mov	r8, rdi
	add	r8, 1
	mov	qword ptr [rbp - 0x48], r8
	mov	byte ptr [rdi], 0x2e
	mov	rdi, qword ptr [rbp - 0x48]
	mov	r8, rdi
	add	r8, 1
	mov	qword ptr [rbp - 0x48], r8
	mov	byte ptr [rdi], 0x2a
	mov	rdi, qword ptr [rbp - 0x48]
	mov	byte ptr [rdi], 0x4c
	mov	rdi, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rdi
	mov	r9d, dword ptr [rbp - 0x14]
	and	r9d, 0x10
	cmp	r9d, 0
	cmovne	edx, esi
	mov	r10b, dl
	mov	rdi, qword ptr [rbp - 0x48]
	mov	r8, rdi
	add	r8, 1
	mov	qword ptr [rbp - 0x48], r8
	mov	byte ptr [rdi], r10b
	mov	rdi, qword ptr [rbp - 0x48]
	mov	byte ptr [rdi], 0
	ucomiss	xmm1, dword ptr [rbp - 0x38]
	cmova	eax, ecx
	mov	dword ptr [rbp - 0x3c], eax
.label_488:
	lea	rdx, [rbp - 0x33]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x18]
	mov	r8d, dword ptr [rbp - 0x3c]
	movsd	xmm0, qword ptr [rbp - 0x28]
	mov	al, 1
	call	snprintf
	mov	dword ptr [rbp - 0x4c], eax
	cmp	dword ptr [rbp - 0x4c], 0
	jl	.label_491
	mov	eax, 9
	cmp	eax, dword ptr [rbp - 0x3c]
	jle	.label_491
	movsxd	rax, dword ptr [rbp - 0x4c]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_489
	xor	eax, eax
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 8]
	call	strtof
	ucomiss	xmm0, dword ptr [rbp - 0x1c]
	jne	.label_489
	jp	.label_489
.label_491:
	mov	eax, dword ptr [rbp - 0x4c]
	add	rsp, 0x50
	pop	rbp
	ret	
.label_489:
	jmp	.label_486
.label_486:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_488
	.section	.text
	.align	16
	#Procedure 0x407000

	.globl ldtoastr
	.type ldtoastr, @function
ldtoastr:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
	fld	xword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	dword ptr [rbp - 0x18], ecx
	fld	st(0)
	fstp	xword ptr [rbp - 0x30]
	fstp	xword ptr [rbp - 0x40]
	fld	xword ptr [rbp - 0x30]
	fldz	
	fucomip	st(1)
	fstp	st(0)
	jbe	.label_492
	jmp	.label_497
.label_497:
	fld	xword ptr [rbp - 0x30]
	fchs	
	fstp	xword ptr [rbp - 0x80]
	jmp	.label_500
.label_492:
	fld	xword ptr [rbp - 0x30]
	fstp	xword ptr [rbp - 0x80]
.label_500:
	fld	xword ptr [rbp - 0x80]
	fstp	xword ptr [rbp - 0x60]
	lea	rax, [rbp - 0x4b]
	mov	qword ptr [rbp - 0x70], rax
	lea	rax, [rbp - 0x4a]
	mov	qword ptr [rbp - 0x70], rax
	mov	byte ptr [rbp - 0x4b], 0x25
	mov	rax, qword ptr [rbp - 0x70]
	mov	byte ptr [rax], 0x2d
	mov	ecx, dword ptr [rbp - 0x14]
	mov	eax, ecx
	mov	rdx, qword ptr [rbp - 0x70]
	mov	ecx, eax
	and	ecx, 1
	mov	eax, ecx
	mov	rsi, rdx
	add	rsi, rax
	mov	qword ptr [rbp - 0x70], rsi
	mov	byte ptr [rdx + rax], 0x2b
	mov	ecx, dword ptr [rbp - 0x14]
	and	ecx, 2
	shr	ecx, 1
	mov	rax, qword ptr [rbp - 0x70]
	mov	edx, ecx
	mov	rsi, rax
	add	rsi, rdx
	mov	qword ptr [rbp - 0x70], rsi
	mov	byte ptr [rax + rdx], 0x20
	mov	ecx, dword ptr [rbp - 0x14]
	and	ecx, 4
	shr	ecx, 2
	mov	rax, qword ptr [rbp - 0x70]
	mov	edx, ecx
	mov	rsi, rax
	add	rsi, rdx
	mov	qword ptr [rbp - 0x70], rsi
	mov	byte ptr [rax + rdx], 0x30
	mov	ecx, dword ptr [rbp - 0x14]
	and	ecx, 8
	shr	ecx, 3
	mov	rax, qword ptr [rbp - 0x70]
	mov	edx, ecx
	mov	rsi, rax
	add	rsi, rdx
	mov	qword ptr [rbp - 0x70], rsi
	lea	rsi, [rax + rdx + 1]
	mov	qword ptr [rbp - 0x70], rsi
	mov	byte ptr [rax + rdx], 0x2a
	mov	rax, qword ptr [rbp - 0x70]
	mov	rdx, rax
	inc	rdx
	mov	qword ptr [rbp - 0x70], rdx
	mov	byte ptr [rax], 0x2e
	mov	rax, qword ptr [rbp - 0x70]
	mov	rdx, rax
	inc	rdx
	mov	qword ptr [rbp - 0x70], rdx
	mov	byte ptr [rax], 0x2a
	mov	rax, qword ptr [rbp - 0x70]
	mov	byte ptr [rax], 0x4c
	mov	rax, qword ptr [rbp - 0x70]
	mov	rdx, rax
	inc	rdx
	mov	qword ptr [rbp - 0x70], rdx
	mov	ecx, dword ptr [rbp - 0x14]
	mov	dil, cl
	test	dil, 0x10
	mov	dil, 0x47
	mov	r8b, 0x67
	mov	qword ptr [rbp - 0x88], rax
	mov	byte ptr [rbp - 0x89], r8b
	mov	byte ptr [rbp - 0x8a], dil
	jne	.label_494
	mov	al, byte ptr [rbp - 0x89]
	mov	byte ptr [rbp - 0x8a], al
.label_494:
	mov	al, byte ptr [rbp - 0x8a]
	mov	rcx, qword ptr [rbp - 0x88]
	add	rcx, 2
	mov	qword ptr [rbp - 0x70], rcx
	mov	rcx, qword ptr [rbp - 0x88]
	mov	byte ptr [rcx + 1], al
	mov	rdx, qword ptr [rbp - 0x70]
	mov	byte ptr [rdx], 0
	fld	xword ptr [rbp - 0x60]
	fld	xword ptr [word ptr [rip + label_499]]
	fucomip	st(1)
	fstp	st(0)
	mov	esi, 1
	mov	edi, 0x12
	cmova	edi, esi
	mov	dword ptr [rbp - 0x64], edi
.label_496:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdx, [rbp - 0x4b]
	mov	ecx, dword ptr [rbp - 0x18]
	mov	r8d, dword ptr [rbp - 0x64]
	fld	xword ptr [rbp - 0x40]
	mov	rax, rsp
	fstp	xword ptr [rax]
	xor	r9d, r9d
	mov	r10b, r9b
	mov	al, r10b
	call	snprintf
	mov	dword ptr [rbp - 0x74], eax
	cmp	dword ptr [rbp - 0x74], 0
	jl	.label_493
	mov	eax, 0x15
	cmp	eax, dword ptr [rbp - 0x64]
	jle	.label_493
	movsxd	rax, dword ptr [rbp - 0x74]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_498
	mov	rdi, qword ptr [rbp - 8]
	xor	eax, eax
	mov	esi, eax
	call	strtold
	fld	st(0)
	fld	xword ptr [rbp - 0x30]
	fxch	st(2)
	fucomip	st(2)
	fstp	st(1)
	fstp	xword ptr [rbp - 0x94]
	jne	.label_498
	jnp	.label_493
	jmp	.label_498
.label_493:
	mov	eax, dword ptr [rbp - 0x74]
	add	rsp, 0xb0
	pop	rbp
	ret	
.label_498:
	jmp	.label_495
.label_495:
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 1
	mov	dword ptr [rbp - 0x64], eax
	jmp	.label_496
	.section	.text
	.align	16
	#Procedure 0x407240

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_501
	movabs	rdi, OFFSET FLAT:.str_4
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x1c], eax
	call	abort
.label_501:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	call	strrchr
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_502
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_504
.label_502:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_504:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cmp	rax, 7
	jl	.label_503
	movabs	rsi, OFFSET FLAT:.str.1_2
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, -7
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_503
	movabs	rsi, OFFSET FLAT:.str.2_1
	mov	eax, 3
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_505
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_505:
	jmp	.label_503
.label_503:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407360
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
	je	.label_506
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_507
.label_506:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_507
.label_507:
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
	#Procedure 0x4073e0
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_508
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_509
.label_508:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_509
.label_509:
	mov	rax, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407420
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
	je	.label_510
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_511
.label_510:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_511
.label_511:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407470

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
	je	.label_512
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_513
.label_512:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_513
.label_513:
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
	#Procedure 0x407520
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_514
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_514:
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
	#Procedure 0x407560

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
	jne	.label_515
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_515:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_517
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_516
.label_517:
	call	abort
.label_516:
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
	#Procedure 0x4075d0
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
	je	.label_518
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_519
.label_518:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_519
.label_519:
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
	#Procedure 0x4076a0

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
.label_575:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_678
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_683]]
	jmp	rcx
.label_1014:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_1013:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_692
	jmp	.label_695
.label_695:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_696
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_696:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_692
.label_692:
	movabs	rax, OFFSET FLAT:.str.10_0
	mov	byte ptr [rbp - 0x79], 1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_551
.label_1015:
	mov	byte ptr [rbp - 0x79], 1
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_551
.label_1016:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_614
	movabs	rdi, OFFSET FLAT:.str.11_0
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	movabs	rdi, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_614:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_524
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_545:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_529
	jmp	.label_532
.label_532:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_534
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_534:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_541
.label_541:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_545
.label_529:
	jmp	.label_524
.label_524:
	mov	byte ptr [rbp - 0x79], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_551
.label_1011:
	mov	byte ptr [rbp - 0x79], 1
.label_1010:
	mov	byte ptr [rbp - 0x7b], 1
.label_1012:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_558
	mov	byte ptr [rbp - 0x79], 1
.label_558:
	jmp	.label_701
.label_701:
	mov	dword ptr [rbp - 0x34], 2
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_568
	jmp	.label_563
.label_563:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_564
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_564:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_568
.label_568:
	movabs	rax, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_551
.label_1009:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_551
.label_678:
	call	abort
.label_551:
	mov	qword ptr [rbp - 0x58], 0
.label_543:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_654
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_582
.label_654:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], edx
.label_582:
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_596
	jmp	.label_602
.label_596:
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	je	.label_603
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_603
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_603
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	jne	.label_611
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_611
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_698
.label_611:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_698:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	ja	.label_603
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_603
	test	byte ptr [rbp - 0x7b], 1
	je	.label_634
	jmp	.label_528
.label_634:
	mov	byte ptr [rbp - 0x81], 1
.label_603:
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
	ja	.label_627
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_642]]
	jmp	rcx
.label_962:
	test	byte ptr [rbp - 0x79], 1
	je	.label_643
	jmp	.label_648
.label_648:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_677
	jmp	.label_528
.label_677:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_538
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_538
	jmp	.label_658
.label_658:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_572
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_572:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_662
.label_662:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_666
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_666:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_644
.label_644:
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
.label_538:
	jmp	.label_684
.label_684:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_686
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_686:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_694
.label_694:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_527
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_527
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_527
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x39
	jg	.label_527
	jmp	.label_709
.label_709:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_711
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_711:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_718
.label_718:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_520
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_520:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_527
.label_527:
	mov	byte ptr [rbp - 0x7f], 0x30
	jmp	.label_533
.label_643:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_536
	jmp	.label_539
.label_536:
	jmp	.label_533
.label_533:
	jmp	.label_540
.label_973:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0x100], ecx
	je	.label_542
	jmp	.label_548
.label_548:
	mov	eax, dword ptr [rbp - 0xfc]
	sub	eax, 5
	mov	dword ptr [rbp - 0x104], eax
	je	.label_550
	jmp	.label_673
.label_542:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_552
	jmp	.label_528
.label_552:
	jmp	.label_557
.label_550:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_561
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_561
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3f
	jne	.label_561
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rax + rcx + 2]
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	je	.label_566
	jmp	.label_573
.label_573:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	jb	.label_566
	jmp	.label_577
.label_577:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	je	.label_566
	jmp	.label_583
.label_583:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2f
	mov	dword ptr [rbp - 0x118], eax
	je	.label_566
	jmp	.label_590
.label_590:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	ja	.label_591
	jmp	.label_566
.label_566:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_598
	jmp	.label_528
.label_598:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_601
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_601:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_610
.label_610:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_615
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_615:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_619
.label_619:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_623
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_623:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_628
.label_628:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_656
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_656:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_631
.label_591:
	jmp	.label_631
.label_631:
	jmp	.label_561
.label_561:
	jmp	.label_557
.label_673:
	jmp	.label_557
.label_557:
	jmp	.label_540
.label_963:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_638
.label_964:
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_638
.label_968:
	mov	byte ptr [rbp - 0x80], 0x66
	jmp	.label_638
.label_966:
	mov	byte ptr [rbp - 0x80], 0x6e
	jmp	.label_592
.label_969:
	mov	byte ptr [rbp - 0x80], 0x72
	jmp	.label_592
.label_965:
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_592
.label_967:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_638
.label_974:
	mov	al, byte ptr [rbp - 0x7f]
	mov	byte ptr [rbp - 0x80], al
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_646
	test	byte ptr [rbp - 0x7b], 1
	je	.label_650
	jmp	.label_528
.label_650:
	jmp	.label_632
.label_646:
	test	byte ptr [rbp - 0x79], 1
	je	.label_653
	test	byte ptr [rbp - 0x7b], 1
	je	.label_653
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_653
	jmp	.label_632
.label_653:
	jmp	.label_592
.label_592:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_660
	test	byte ptr [rbp - 0x7b], 1
	je	.label_660
	jmp	.label_528
.label_660:
	jmp	.label_638
.label_638:
	test	byte ptr [rbp - 0x79], 1
	je	.label_667
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_649
.label_667:
	jmp	.label_540
.label_975:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_672
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_676
	jmp	.label_680
.label_672:
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_676
.label_680:
	jmp	.label_540
.label_676:
	jmp	.label_682
.label_682:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_685
	jmp	.label_540
.label_685:
	jmp	.label_689
.label_689:
	mov	byte ptr [rbp - 0x83], 1
.label_970:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_693
	test	byte ptr [rbp - 0x7b], 1
	je	.label_693
	jmp	.label_528
.label_693:
	jmp	.label_540
.label_972:
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_699
	test	byte ptr [rbp - 0x7b], 1
	je	.label_703
	jmp	.label_528
.label_703:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_633
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_633
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_633:
	jmp	.label_713
.label_713:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_715
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_715:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_720
.label_720:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_523
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_523:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_531
.label_531:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_537
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_537:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_699:
	jmp	.label_540
.label_971:
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_540
.label_627:
	test	byte ptr [rbp - 0x7a], 1
	je	.label_549
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
	jmp	.label_556
.label_549:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_567
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_567:
	jmp	.label_574
.label_574:
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
	jne	.label_588
	jmp	.label_521
.label_588:
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_595
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_521
.label_595:
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_708
	mov	byte ptr [rbp - 0x91], 0
.label_620:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_604
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_604:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_617
	jmp	.label_618
.label_617:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_620
.label_618:
	jmp	.label_521
.label_708:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_626
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_626
	mov	qword ptr [rbp - 0xb8], 1
.label_657:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_629
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
	jb	.label_585
	jmp	.label_640
.label_640:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x138], eax
	je	.label_585
	jmp	.label_670
.label_670:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_585
	jmp	.label_645
.label_645:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_647
	jmp	.label_585
.label_585:
	jmp	.label_528
.label_647:
	jmp	.label_639
.label_639:
	jmp	.label_664
.label_664:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_657
.label_629:
	jmp	.label_626
.label_626:
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_663
	mov	byte ptr [rbp - 0x91], 0
.label_663:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_630
.label_630:
	jmp	.label_669
.label_669:
	jmp	.label_671
.label_671:
	lea	rdi, [rbp - 0xa0]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_574
.label_521:
	jmp	.label_556
.label_556:
	mov	eax, 1
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	jb	.label_681
	test	byte ptr [rbp - 0x79], 1
	je	.label_691
	test	byte ptr [rbp - 0x91], 1
	jne	.label_691
.label_681:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_612:
	test	byte ptr [rbp - 0x79], 1
	je	.label_700
	test	byte ptr [rbp - 0x91], 1
	jne	.label_700
	jmp	.label_625
.label_625:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_704
	jmp	.label_528
.label_704:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_707
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_707
	jmp	.label_712
.label_712:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_714
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_714:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_719
.label_719:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_522
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_522:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_530
.label_530:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_535
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_535:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_707:
	jmp	.label_544
.label_544:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_546
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_546:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_661
.label_661:
	jmp	.label_553
.label_553:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_555
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 6
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_555:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_562
.label_562:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_565
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 3
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_565:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_570
.label_700:
	test	byte ptr [rbp - 0x81], 1
	je	.label_576
	jmp	.label_578
.label_578:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_580
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_580:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x81], 0
.label_576:
	jmp	.label_570
.label_570:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_593
	jmp	.label_597
.label_593:
	jmp	.label_599
.label_599:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_584
	test	byte ptr [rbp - 0x82], 1
	jne	.label_584
	jmp	.label_605
.label_605:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_607
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_607:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_609
.label_609:
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
.label_584:
	jmp	.label_621
.label_621:
	jmp	.label_622
.label_622:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_624
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_624:
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
	jmp	.label_612
.label_597:
	jmp	.label_632
.label_691:
	jmp	.label_540
.label_540:
	test	byte ptr [rbp - 0x79], 1
	je	.label_635
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_636
.label_635:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_637
.label_636:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_637
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
	jne	.label_641
.label_637:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_641
	jmp	.label_632
.label_641:
	jmp	.label_649
.label_649:
	jmp	.label_651
.label_651:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_652
	jmp	.label_528
.label_652:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_655
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_655
	jmp	.label_687
.label_687:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_659
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_659:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_665
.label_665:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_668
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_668:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_674
.label_674:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_679
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_679:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_655:
	jmp	.label_688
.label_688:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_690
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_690:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_697
.label_697:
	jmp	.label_632
.label_632:
	jmp	.label_606
.label_606:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_702
	test	byte ptr [rbp - 0x82], 1
	jne	.label_702
	jmp	.label_705
.label_705:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_706
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_706:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_710
.label_710:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_716
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_716:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_702:
	jmp	.label_525
.label_525:
	jmp	.label_526
.label_526:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_554
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_554:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x83], 1
	jne	.label_586
	mov	byte ptr [rbp - 0x7e], 0
.label_586:
	jmp	.label_539
.label_539:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_543
.label_602:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_547
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_547
	test	byte ptr [rbp - 0x7b], 1
	je	.label_547
	jmp	.label_528
.label_547:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_559
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_559
	test	byte ptr [rbp - 0x7d], 1
	je	.label_559
	test	byte ptr [rbp - 0x7e], 1
	je	.label_560
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
	jmp	.label_569
.label_560:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_571
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_571
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_575
.label_571:
	jmp	.label_579
.label_579:
	jmp	.label_559
.label_559:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_581
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_581
	jmp	.label_587
.label_587:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_589
	jmp	.label_717
.label_717:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_594
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_594:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_600
.label_600:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_587
.label_589:
	jmp	.label_581
.label_581:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_608
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_608:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_569
.label_528:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_616
	test	byte ptr [rbp - 0x79], 1
	je	.label_616
	mov	dword ptr [rbp - 0x34], 4
.label_616:
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
.label_569:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408a40
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
	#Procedure 0x408a80

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
	je	.label_721
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_722
.label_721:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_722
.label_722:
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
	je	.label_723
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_723:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408be0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_726:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_727
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_726
.label_727:
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 8], rax
	je	.label_728
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	qword ptr [word ptr [label_725]],  rax
.label_728:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_724
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_724:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408cc0

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
	#Procedure 0x408d00

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
	jge	.label_731
	call	abort
.label_731:
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_736
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x31], cl
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	jge	.label_730
	call	xalloc_die
.label_730:
	test	byte ptr [rbp - 0x31], 1
	je	.label_735
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_729
.label_735:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_729:
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
	je	.label_734
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_725]]
	mov	qword ptr [rax + 8], rcx
.label_734:
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
.label_736:
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
	ja	.label_732
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	cmp	qword ptr [rbp - 0x48], rax
	je	.label_733
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_733:
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
.label_732:
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
	#Procedure 0x408f80

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
	#Procedure 0x408fc0
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
	#Procedure 0x408fe0
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
	#Procedure 0x409010

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
	#Procedure 0x409050

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
	jne	.label_737
	call	abort
.label_737:
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
	#Procedure 0x4090c0

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
	#Procedure 0x409100
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
	#Procedure 0x409130
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
	#Procedure 0x409160

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
	#Procedure 0x4091e0

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
	#Procedure 0x409210

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
	#Procedure 0x409230
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
	#Procedure 0x409260

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
	#Procedure 0x409310

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
	#Procedure 0x409350

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
	#Procedure 0x4093d0
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
	#Procedure 0x409400
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
	#Procedure 0x409440

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
	#Procedure 0x409480
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
	#Procedure 0x4094b0

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
	#Procedure 0x4094e0

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
	#Procedure 0x409500

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
	je	.label_740
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_738
.label_740:
	call	locale_charset
	movabs	rsi, OFFSET FLAT:.str.13_0
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_739
	movabs	rax, OFFSET FLAT:.str.15_0
	movabs	rcx, OFFSET FLAT:.str.14_0
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_738
.label_739:
	movabs	rsi, OFFSET FLAT:.str.16
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_741
	movabs	rax, OFFSET FLAT:.str.18_1
	movabs	rcx, OFFSET FLAT:.str.17_1
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_738
.label_741:
	movabs	rax, OFFSET FLAT:.str.12_0
	movabs	rcx, OFFSET FLAT:.str.10_0
	cmp	dword ptr [rbp - 0x14], 9
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_738:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409600

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
	je	.label_742
	movabs	rsi, OFFSET FLAT:.str_5
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_745
.label_742:
	movabs	rsi, OFFSET FLAT:.str.1_3
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_745:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:.str.2_2
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
	mov	ecx, OFFSET FLAT:.str.3_1
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
	ja	.label_744
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_746]]
	jmp	rcx
.label_1026:
	jmp	.label_743
.label_1027:
	movabs	rdi, OFFSET FLAT:.str.4_1
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
	jmp	.label_743
.label_1028:
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
	jmp	.label_743
.label_1029:
	movabs	rdi, OFFSET FLAT:.str.6_0
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
	jmp	.label_743
.label_1030:
	movabs	rdi, OFFSET FLAT:.str.7_0
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
	jmp	.label_743
.label_1031:
	movabs	rdi, OFFSET FLAT:.str.8_0
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
	jmp	.label_743
.label_1032:
	movabs	rdi, OFFSET FLAT:.str.9_0
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
	jmp	.label_743
.label_1033:
	movabs	rdi, OFFSET FLAT:.str.10_1
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
	jmp	.label_743
.label_1034:
	movabs	rdi, OFFSET FLAT:.str.11_1
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
	jmp	.label_743
.label_1035:
	movabs	rdi, OFFSET FLAT:.str.12_1
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
	jmp	.label_743
.label_744:
	movabs	rdi, OFFSET FLAT:.str.13_1
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
.label_743:
	add	rsp, 0x180
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409bc0
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
.label_749:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_747
	jmp	.label_748
.label_748:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_749
.label_747:
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
	#Procedure 0x409c30

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
.label_750:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_754
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_752
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_751
.label_752:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_751:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x81], dl
.label_754:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_756
	jmp	.label_755
.label_756:
	jmp	.label_753
.label_753:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_750
.label_755:
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
	#Procedure 0x409d40

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
	je	.label_757
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
.label_757:
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
	#Procedure 0x409eb0
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
	movabs	rdi, OFFSET FLAT:.str.16_0
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.17
	movabs	rdx, OFFSET FLAT:.str.18
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
	#Procedure 0x409f40

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
	jae	.label_758
	call	xalloc_die
.label_758:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409f90

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
	jne	.label_759
	cmp	qword ptr [rbp - 8], 0
	je	.label_759
	call	xalloc_die
.label_759:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409fd0
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
	jae	.label_760
	call	xalloc_die
.label_760:
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
	#Procedure 0x40a020

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_761
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_761
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_763
.label_761:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_762
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_762
	call	xalloc_die
.label_762:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_763:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a0a0

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
	jne	.label_764
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_767
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
.label_767:
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_765
	call	xalloc_die
.label_765:
	jmp	.label_766
.label_764:
	movabs	rax, 0x5555555555555554
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_768
	call	xalloc_die
.label_768:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_766:
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
	#Procedure 0x40a190

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
	#Procedure 0x40a1b0

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
	#Procedure 0x40a1e0
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
	#Procedure 0x40a220
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
	jb	.label_769
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_770
.label_769:
	call	xalloc_die
.label_770:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a280

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
	#Procedure 0x40a2c0
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
	#Procedure 0x40a300

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.1_4
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:.str_1
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40a340

	.globl xset_binary_mode_error
	.type xset_binary_mode_error, @function
xset_binary_mode_error:
	push	rbp
	mov	rbp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a350

	.globl xset_binary_mode
	.type xset_binary_mode, @function
xset_binary_mode:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	set_binary_mode
	cmp	eax, 0
	jge	.label_771
	call	xset_binary_mode_error
.label_771:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a380

	.globl xprintf
	.type xprintf, @function
xprintf:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x190
	test	al, al
	movaps	xmmword ptr [rbp - 0xf0], xmm7
	movaps	xmmword ptr [rbp - 0x100], xmm6
	movaps	xmmword ptr [rbp - 0x110], xmm5
	movaps	xmmword ptr [rbp - 0x120], xmm4
	movaps	xmmword ptr [rbp - 0x130], xmm3
	movaps	xmmword ptr [rbp - 0x140], xmm2
	movaps	xmmword ptr [rbp - 0x150], xmm1
	movaps	xmmword ptr [rbp - 0x160], xmm0
	mov	qword ptr [rbp - 0x168], rdi
	mov	qword ptr [rbp - 0x170], r9
	mov	qword ptr [rbp - 0x178], r8
	mov	qword ptr [rbp - 0x180], rcx
	mov	qword ptr [rbp - 0x188], rdx
	mov	qword ptr [rbp - 0x190], rsi
	je	.label_772
	movaps	xmm0, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x150]
	movaps	xmmword ptr [rbp - 0xa0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x130]
	movaps	xmmword ptr [rbp - 0x80], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x120]
	movaps	xmmword ptr [rbp - 0x70], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x110]
	movaps	xmmword ptr [rbp - 0x60], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0x100]
	movaps	xmmword ptr [rbp - 0x50], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0xf0]
	movaps	xmmword ptr [rbp - 0x40], xmm7
.label_772:
	mov	rax, qword ptr [rbp - 0x170]
	mov	qword ptr [rbp - 0xb8], rax
	mov	rcx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0xc0], rcx
	mov	rdx, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rdx
	mov	rsi, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0xd0], rsi
	mov	rdi, qword ptr [rbp - 0x190]
	mov	qword ptr [rbp - 0xd8], rdi
	mov	r8, qword ptr [rbp - 0x168]
	mov	qword ptr [rbp - 8], r8
	lea	r8, [rbp - 0xe0]
	mov	qword ptr [rbp - 0x10], r8
	lea	r8, [rbp + 0x10]
	mov	qword ptr [rbp - 0x18], r8
	mov	dword ptr [rbp - 0x1c], 0x30
	mov	dword ptr [rbp - 0x20], 8
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rbp - 0x20]
	call	xvprintf
	mov	dword ptr [rbp - 0x24], eax
	add	rsp, 0x190
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a4f0

	.globl xvprintf
	.type xvprintf, @function
xvprintf:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	vprintf
	mov	dword ptr [rbp - 0x14], eax
	cmp	dword ptr [rbp - 0x14], 0
	jge	.label_773
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	ferror
	cmp	eax, 0
	jne	.label_773
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 0x18], edi
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str_6
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x1c], esi
	call	gettext
	mov	edi, dword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x1c]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_773:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a570
	.globl xfprintf
	.type xfprintf, @function
xfprintf:

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
	je	.label_774
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
.label_774:
	mov	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rcx, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0xd0], rcx
	mov	rdx, qword ptr [rbp - 0x190]
	mov	qword ptr [rbp - 0xd8], rdx
	mov	rsi, qword ptr [rbp - 0x198]
	mov	qword ptr [rbp - 0xe0], rsi
	mov	rdi, qword ptr [rbp - 0x1a0]
	mov	r8, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 8], r8
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rbp - 0xf0]
	mov	qword ptr [rbp - 0x20], rdi
	lea	rdi, [rbp + 0x10]
	mov	qword ptr [rbp - 0x28], rdi
	mov	dword ptr [rbp - 0x2c], 0x30
	mov	dword ptr [rbp - 0x30], 0x10
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdx, [rbp - 0x30]
	call	xvfprintf
	mov	dword ptr [rbp - 0x34], eax
	add	rsp, 0x1a0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a6e0

	.globl xvfprintf
	.type xvfprintf, @function
xvfprintf:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	vfprintf
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	jge	.label_775
	mov	rdi, qword ptr [rbp - 8]
	call	ferror
	cmp	eax, 0
	jne	.label_775
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 0x20], edi
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str_6
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], esi
	call	gettext
	mov	edi, dword ptr [rbp - 0x20]
	mov	esi, dword ptr [rbp - 0x24]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_775:
	mov	eax, dword ptr [rbp - 0x1c]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a760

	.globl xstrtol_fatal
	.type xstrtol_fatal, @function
xstrtol_fatal:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	al, dl
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	byte ptr [rbp - 9], al
	mov	qword ptr [rbp - 0x18], rcx
	mov	qword ptr [rbp - 0x20], r8
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	al, byte ptr [rbp - 9]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x20]
	mov	r9d,  dword ptr [dword ptr [exit_failure]]
	movsx	edx, al
	call	xstrtol_error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40a7b0

	.globl xstrtol_error
	.type xstrtol_error, @function
xstrtol_error:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	al, dl
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	byte ptr [rbp - 9], al
	mov	qword ptr [rbp - 0x18], rcx
	mov	qword ptr [rbp - 0x20], r8
	mov	dword ptr [rbp - 0x24], r9d
	mov	qword ptr [word ptr [rbp - 48]], OFFSET FLAT:.str_7
	mov	edx, dword ptr [rbp - 4]
	mov	esi, edx
	sub	esi, 1
	mov	dword ptr [rbp - 0x48], edx
	mov	dword ptr [rbp - 0x4c], esi
	je	.label_781
	jmp	.label_780
.label_780:
	mov	eax, dword ptr [rbp - 0x48]
	add	eax, -2
	sub	eax, 2
	mov	dword ptr [rbp - 0x50], eax
	jb	.label_777
	jmp	.label_778
.label_778:
	mov	eax, dword ptr [rbp - 0x48]
	sub	eax, 4
	mov	dword ptr [rbp - 0x54], eax
	je	.label_779
	jmp	.label_783
.label_783:
	call	abort
.label_779:
	movabs	rax, OFFSET FLAT:.str.1_5
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_776
.label_777:
	movabs	rax, OFFSET FLAT:.str.2_3
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_776
.label_781:
	movabs	rax, OFFSET FLAT:.str.3_2
	mov	qword ptr [rbp - 0x38], rax
.label_776:
	cmp	dword ptr [rbp - 8], 0
	jge	.label_782
	lea	rax, [rbp - 0x42]
	xor	ecx, ecx
	mov	edx, ecx
	mov	ecx, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x30]
	movsxd	rdi, ecx
	sub	rdx, rdi
	add	rsi, rdx
	mov	qword ptr [rbp - 0x30], rsi
	mov	r8b, byte ptr [rbp - 9]
	mov	byte ptr [rbp - 0x42], r8b
	mov	byte ptr [rbp - 0x41], 0
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_784
.label_782:
	movsxd	rax, dword ptr [rbp - 8]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
.label_784:
	mov	edi, dword ptr [rbp - 0x24]
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rbp - 0x58], edi
	mov	rdi, rax
	call	gettext
	xor	esi, esi
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r8, qword ptr [rbp - 0x40]
	mov	r9, qword ptr [rbp - 0x20]
	mov	edi, dword ptr [rbp - 0x58]
	mov	rdx, rax
	mov	al, 0
	call	error
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a8e0

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
	jg	.label_791
	cmp	dword ptr [rbp - 0x1c], 0x24
	jg	.label_791
	jmp	.label_796
.label_791:
	movabs	rdi, OFFSET FLAT:.str_8
	movabs	rsi, OFFSET FLAT:.str.1_6
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
.label_796:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_806
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_803
.label_806:
	lea	rax, [rbp - 0x38]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_803
.label_803:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x40], rax
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x59], cl
.label_839:
	movzx	eax, byte ptr [rbp - 0x59]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x78], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x2000
	cmp	edx, 0
	je	.label_833
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x59], dl
	jmp	.label_839
.label_833:
	movzx	eax, byte ptr [rbp - 0x59]
	cmp	eax, 0x2d
	jne	.label_843
	mov	dword ptr [rbp - 4], 4
	jmp	.label_811
.label_843:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x1c]
	call	strtoumax
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_845
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_792
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_792
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	je	.label_792
	mov	qword ptr [rbp - 0x48], 1
	jmp	.label_808
.label_792:
	mov	dword ptr [rbp - 4], 4
	jmp	.label_811
.label_808:
	jmp	.label_816
.label_845:
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_819
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	je	.label_826
	mov	dword ptr [rbp - 4], 4
	jmp	.label_811
.label_826:
	mov	dword ptr [rbp - 0x4c], 1
.label_819:
	jmp	.label_816
.label_816:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_840
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
	jmp	.label_811
.label_840:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_841
	mov	dword ptr [rbp - 0x60], 0x400
	mov	dword ptr [rbp - 0x64], 1
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	jne	.label_848
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_811
.label_848:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x7c], ecx
	mov	dword ptr [rbp - 0x80], edx
	je	.label_794
	jmp	.label_801
.label_801:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x84], eax
	je	.label_794
	jmp	.label_807
.label_807:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x88], eax
	je	.label_794
	jmp	.label_814
.label_814:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_794
	jmp	.label_823
.label_823:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x90], eax
	je	.label_794
	jmp	.label_809
.label_809:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x94], eax
	je	.label_794
	jmp	.label_835
.label_835:
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, -0x59
	sub	eax, 2
	mov	dword ptr [rbp - 0x98], eax
	jb	.label_794
	jmp	.label_825
.label_825:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_794
	jmp	.label_786
.label_786:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_794
	jmp	.label_831
.label_831:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_794
	jmp	.label_785
.label_785:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xa8], eax
	jne	.label_787
	jmp	.label_794
.label_794:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x30]
	call	strchr
	cmp	rax, 0
	je	.label_800
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	edx, ecx
	sub	edx, 0x42
	mov	dword ptr [rbp - 0xac], ecx
	mov	dword ptr [rbp - 0xb0], edx
	je	.label_802
	jmp	.label_850
.label_850:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_802
	jmp	.label_821
.label_821:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xb8], eax
	jne	.label_824
	jmp	.label_830
.label_830:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x42
	jne	.label_834
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 2
	mov	dword ptr [rbp - 0x64], eax
.label_834:
	jmp	.label_824
.label_802:
	mov	dword ptr [rbp - 0x60], 0x3e8
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 1
	mov	dword ptr [rbp - 0x64], eax
.label_824:
	jmp	.label_800
.label_800:
	jmp	.label_787
.label_787:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x42
	mov	dword ptr [rbp - 0xbc], ecx
	mov	dword ptr [rbp - 0xc0], edx
	je	.label_842
	jmp	.label_846
.label_846:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x45
	mov	dword ptr [rbp - 0xc4], eax
	je	.label_849
	jmp	.label_788
.label_788:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0xc8], eax
	je	.label_790
	jmp	.label_798
.label_798:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0xcc], eax
	je	.label_793
	jmp	.label_804
.label_804:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0xd0], eax
	je	.label_799
	jmp	.label_810
.label_810:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0xd4], eax
	je	.label_813
	jmp	.label_820
.label_820:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0xd8], eax
	je	.label_795
	jmp	.label_829
.label_829:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x59
	mov	dword ptr [rbp - 0xdc], eax
	je	.label_817
	jmp	.label_836
.label_836:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x5a
	mov	dword ptr [rbp - 0xe0], eax
	je	.label_837
	jmp	.label_827
.label_827:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x62
	mov	dword ptr [rbp - 0xe4], eax
	je	.label_828
	jmp	.label_844
.label_844:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0xe8], eax
	je	.label_832
	jmp	.label_838
.label_838:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0xec], eax
	je	.label_790
	jmp	.label_789
.label_789:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xf0], eax
	je	.label_793
	jmp	.label_847
.label_847:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xf4], eax
	je	.label_799
	jmp	.label_805
.label_805:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xf8], eax
	je	.label_795
	jmp	.label_812
.label_812:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x77
	mov	dword ptr [rbp - 0xfc], eax
	je	.label_815
	jmp	.label_822
.label_828:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x200
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_797
.label_842:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x400
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_797
.label_832:
	mov	dword ptr [rbp - 0x68], 0
	jmp	.label_797
.label_849:
	lea	rdi, [rbp - 0x48]
	mov	edx, 6
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_797
.label_790:
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_797
.label_793:
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_797
.label_799:
	lea	rdi, [rbp - 0x48]
	mov	edx, 2
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_797
.label_813:
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_797
.label_795:
	lea	rdi, [rbp - 0x48]
	mov	edx, 4
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_797
.label_815:
	lea	rdi, [rbp - 0x48]
	mov	esi, 2
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_797
.label_817:
	lea	rdi, [rbp - 0x48]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_797
.label_837:
	lea	rdi, [rbp - 0x48]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_797
.label_822:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_811
.label_797:
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
	je	.label_818
	mov	eax, dword ptr [rbp - 0x4c]
	or	eax, 2
	mov	dword ptr [rbp - 0x4c], eax
.label_818:
	jmp	.label_841
.label_841:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
.label_811:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x100
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b010

	.globl bkm_scale
	.type bkm_scale, @function
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
	jae	.label_851
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], -1
	mov	dword ptr [rbp - 4], 1
	jmp	.label_852
.label_851:
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_852:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b070

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
.label_854:
	mov	eax, dword ptr [rbp - 0x10]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x10], ecx
	cmp	eax, 0
	je	.label_853
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	bkm_scale
	or	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_854
.label_853:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b0c0

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
	jge	.label_855
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	jmp	.label_858
.label_855:
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	je	.label_856
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_857
.label_856:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_857
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_857:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_859
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_859:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_858:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b190

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_860
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_861
.label_860:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	jmp	.label_862
.label_861:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_862:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b1f0

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
	je	.label_863
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fseeko
	mov	dword ptr [rbp - 0xc], eax
.label_863:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b230

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
	jne	.label_864
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_864
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_864
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_866
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_865
.label_866:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x90], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_865
.label_864:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fseeko
	mov	dword ptr [rbp - 4], eax
.label_865:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b300

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
	jne	.label_867
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_867:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	mbrtowc
	mov	rcx, -2
	mov	qword ptr [rbp - 0x30], rax
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_868
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_868
	xor	edi, edi
	call	hard_locale
	test	al, 1
	jne	.label_868
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], edx
	mov	qword ptr [rbp - 8], 1
	jmp	.label_869
.label_868:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_869:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b3b0

	.globl __gl_setmode
	.type __gl_setmode, @function
__gl_setmode:
	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b3c0

	.globl __gl_setmode_check
	.type __gl_setmode_check, @function
__gl_setmode_check:
	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b3d0

	.globl set_binary_mode
	.type set_binary_mode, @function
set_binary_mode:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	edi, dword ptr [rbp - 4]
	call	__gl_setmode_check
	mov	dword ptr [rbp - 0xc], eax
	cmp	dword ptr [rbp - 0xc], 0
	je	.label_871
	mov	eax, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x10], eax
	jmp	.label_870
.label_871:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	__gl_setmode
	mov	dword ptr [rbp - 0x10], eax
.label_870:
	mov	eax, dword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b420

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
	jne	.label_872
	mov	dword ptr [rbp - 4], 0
	jmp	.label_876
.label_872:
	jmp	.label_873
.label_873:
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
	jne	.label_875
	jmp	.label_874
.label_875:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	je	.label_873
.label_874:
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_876:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b4e0

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
	jne	.label_877
	test	byte ptr [rbp - 0x13], 1
	je	.label_879
	test	byte ptr [rbp - 0x11], 1
	jne	.label_877
	call	__errno_location
	cmp	dword ptr [rax], 9
	je	.label_879
.label_877:
	test	byte ptr [rbp - 0x13], 1
	jne	.label_880
	call	__errno_location
	mov	dword ptr [rax], 0
.label_880:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_878
.label_879:
	mov	dword ptr [rbp - 4], 0
.label_878:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b590

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
	je	.label_881
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str_9
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_882
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str.1_7
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_883
.label_882:
	mov	byte ptr [rbp - 5], 0
.label_883:
	jmp	.label_881
.label_881:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b610

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
	jne	.label_884
	movabs	rax, OFFSET FLAT:.str_0
	mov	qword ptr [rbp - 8], rax
.label_884:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_885
	movabs	rax, OFFSET FLAT:.str.1_8
	mov	qword ptr [rbp - 8], rax
.label_885:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b670

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
	ja	.label_886
	jmp	.label_888
.label_888:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	add	eax, 0x2001a
	mov	dword ptr [rbp - 4], eax
	jmp	.label_887
.label_886:
	jmp	.label_887
.label_887:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b6c0
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
	jb	.label_889
	jmp	.label_892
.label_892:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_889
	jmp	.label_890
.label_890:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_891
	jmp	.label_889
.label_889:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_893
.label_891:
	mov	byte ptr [rbp - 1], 0
.label_893:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b730
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
	jb	.label_894
	jmp	.label_897
.label_897:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_895
	jmp	.label_894
.label_894:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_896
.label_895:
	mov	byte ptr [rbp - 1], 0
.label_896:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b780
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_898
	jmp	.label_900
.label_900:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_899
.label_898:
	mov	byte ptr [rbp - 1], 0
.label_899:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b7b0
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_901
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_901:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b7e0
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
	jb	.label_902
	jmp	.label_904
.label_904:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_905
	jmp	.label_902
.label_902:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_903
.label_905:
	mov	byte ptr [rbp - 1], 0
.label_903:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b830
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_906
	jmp	.label_908
.label_908:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_907
.label_906:
	mov	byte ptr [rbp - 1], 0
.label_907:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b870
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_909
	jmp	.label_911
.label_911:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_910
.label_909:
	mov	byte ptr [rbp - 1], 0
.label_910:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b8b0
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_912
	jmp	.label_914
.label_914:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_913
.label_912:
	mov	byte ptr [rbp - 1], 0
.label_913:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b8f0
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_915
	jmp	.label_917
.label_917:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_916
.label_915:
	mov	byte ptr [rbp - 1], 0
.label_916:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b930
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
	jb	.label_918
	jmp	.label_921
.label_921:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x3a
	sub	eax, 7
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_918
	jmp	.label_922
.label_922:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x5b
	sub	eax, 6
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_918
	jmp	.label_920
.label_920:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x7b
	sub	eax, 3
	mov	dword ptr [rbp - 0x1c], eax
	ja	.label_923
	jmp	.label_918
.label_918:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_919
.label_923:
	mov	byte ptr [rbp - 1], 0
.label_919:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b9b0
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
	jb	.label_924
	jmp	.label_927
.label_927:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_925
	jmp	.label_924
.label_924:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_926
.label_925:
	mov	byte ptr [rbp - 1], 0
.label_926:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ba00
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_928
	jmp	.label_930
.label_930:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_929
.label_928:
	mov	byte ptr [rbp - 1], 0
.label_929:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ba40
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
	jb	.label_931
	jmp	.label_934
.label_934:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_931
	jmp	.label_932
.label_932:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_933
	jmp	.label_931
.label_931:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_935
.label_933:
	mov	byte ptr [rbp - 1], 0
.label_935:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bab0

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_936
	jmp	.label_938
.label_938:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_937
.label_936:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_937:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40baf0
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_939
	jmp	.label_941
.label_941:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_940
.label_939:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_940:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bbe0

	.globl __fstat
	.type __fstat, @function
__fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat