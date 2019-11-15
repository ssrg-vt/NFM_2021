	.section	.text
	.align	32
	#Procedure 0x401d60

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_13
	jmp	.label_21
.label_21:
	movabs	rdi, OFFSET FLAT:label_20
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_15
.label_13:
	movabs	rdi, OFFSET FLAT:label_18
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_11
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x1c], eax
	call	emit_stdin_note
	call	emit_mandatory_arg_note
	movabs	rdi, OFFSET FLAT:label_10
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	qword ptr [rbp - 0x28], rsi
	call	gettext
	mov	edx, 2
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	movabs	rdi, OFFSET FLAT:label_16
	mov	dword ptr [rbp - 0x2c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_17
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_19
	mov	dword ptr [rbp - 0x34], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x38], eax
	call	emit_size_note
	movabs	rdi, OFFSET FLAT:label_12
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_14
	mov	dword ptr [rbp - 0x3c], eax
	call	emit_ancillary_info
.label_15:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	32
	#Procedure 0x401ee0

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_22
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
	#Procedure 0x401f10

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_23
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
	#Procedure 0x401f40

	.globl emit_size_note
	.type emit_size_note, @function
emit_size_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_24
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
	#Procedure 0x401f70

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
.label_33:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_32
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_32:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_25
	jmp	.label_34
.label_25:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_33
.label_34:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_35
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_35:
	movabs	rdi, OFFSET FLAT:label_39
	call	gettext
	movabs	rsi, OFFSET FLAT:label_29
	movabs	rdx, OFFSET FLAT:label_30
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
	je	.label_36
	movabs	rsi, OFFSET FLAT:label_28
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_36
	movabs	rdi, OFFSET FLAT:label_37
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_36:
	movabs	rdi, OFFSET FLAT:label_31
	call	gettext
	movabs	rsi, OFFSET FLAT:label_30
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_38
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:label_26
	movabs	rsi, OFFSET FLAT:label_27
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
	#Procedure 0x402110

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x350
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], 0
	mov	qword ptr [rbp - 0x20], 0
	call	getpagesize
	movabs	rsi, 0x7fffffffffffffff
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], 0
	mov	qword ptr [rbp - 0x38], 0
	mov	dword ptr [rbp - 0x40], 0
	mov	qword ptr [rbp - 0x48], rsi
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx]
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:label_26
	call	setlocale
	movabs	rdi, OFFSET FLAT:label_130
	movabs	rsi, OFFSET FLAT:label_131
	mov	qword ptr [rbp - 0x150], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:label_130
	mov	qword ptr [rbp - 0x158], rax
	call	textdomain
	movabs	rdi, OFFSET FLAT:close_stdout
	mov	qword ptr [rbp - 0x160], rax
	call	atexit
	movabs	rdi, OFFSET FLAT:label_124
	mov	dword ptr [rbp - 0x164], eax
	call	bad_cast
	movabs	rdi, OFFSET FLAT:label_174
	mov	qword ptr [word ptr [infile]],  rax
	call	bad_cast
	mov	qword ptr [word ptr [outbase]],  rax
.label_126:
	cmp	dword ptr [dword ptr [optind]],  0
	je	.label_44
	mov	eax,  dword ptr [dword ptr [optind]]
	mov	dword ptr [rbp - 0x168], eax
	jmp	.label_50
.label_44:
	mov	eax, 1
	mov	dword ptr [rbp - 0x168], eax
	jmp	.label_50
.label_50:
	mov	eax, dword ptr [rbp - 0x168]
	movabs	rdx, OFFSET FLAT:label_58
	movabs	rcx, OFFSET FLAT:longopts
	xor	esi, esi
	mov	r8d, esi
	mov	dword ptr [rbp - 0x4c], eax
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0x3c], eax
	cmp	dword ptr [rbp - 0x3c], -1
	jne	.label_70
	jmp	.label_74
.label_70:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	mov	dword ptr [rbp - 0x16c], eax
	mov	dword ptr [rbp - 0x170], ecx
	je	.label_76
	jmp	.label_149
.label_149:
	mov	eax, dword ptr [rbp - 0x16c]
	sub	eax, 0xffffff7e
	mov	dword ptr [rbp - 0x174], eax
	je	.label_83
	jmp	.label_170
.label_170:
	mov	eax, dword ptr [rbp - 0x16c]
	add	eax, -0x30
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x178], eax
	jb	.label_64
	jmp	.label_98
.label_98:
	mov	eax, dword ptr [rbp - 0x16c]
	sub	eax, 0x43
	mov	dword ptr [rbp - 0x17c], eax
	je	.label_102
	jmp	.label_107
.label_107:
	mov	eax, dword ptr [rbp - 0x16c]
	sub	eax, 0x61
	mov	dword ptr [rbp - 0x180], eax
	je	.label_108
	jmp	.label_113
.label_113:
	mov	eax, dword ptr [rbp - 0x16c]
	sub	eax, 0x62
	mov	dword ptr [rbp - 0x184], eax
	je	.label_115
	jmp	.label_121
.label_121:
	mov	eax, dword ptr [rbp - 0x16c]
	sub	eax, 0x64
	mov	dword ptr [rbp - 0x188], eax
	je	.label_123
	jmp	.label_152
.label_152:
	mov	eax, dword ptr [rbp - 0x16c]
	sub	eax, 0x65
	mov	dword ptr [rbp - 0x18c], eax
	je	.label_143
	jmp	.label_136
.label_136:
	mov	eax, dword ptr [rbp - 0x16c]
	sub	eax, 0x6c
	mov	dword ptr [rbp - 0x190], eax
	je	.label_137
	jmp	.label_144
.label_144:
	mov	eax, dword ptr [rbp - 0x16c]
	sub	eax, 0x6e
	mov	dword ptr [rbp - 0x194], eax
	je	.label_145
	jmp	.label_122
.label_122:
	mov	eax, dword ptr [rbp - 0x16c]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x198], eax
	je	.label_151
	jmp	.label_155
.label_155:
	mov	eax, dword ptr [rbp - 0x16c]
	sub	eax, 0x75
	mov	dword ptr [rbp - 0x19c], eax
	je	.label_67
	jmp	.label_162
.label_162:
	mov	eax, dword ptr [rbp - 0x16c]
	sub	eax, 0x78
	mov	dword ptr [rbp - 0x1a0], eax
	je	.label_123
	jmp	.label_167
.label_167:
	mov	eax, dword ptr [rbp - 0x16c]
	sub	eax, 0x80
	mov	dword ptr [rbp - 0x1a4], eax
	je	.label_168
	jmp	.label_176
.label_176:
	mov	eax, dword ptr [rbp - 0x16c]
	sub	eax, 0x81
	mov	dword ptr [rbp - 0x1a8], eax
	je	.label_163
	jmp	.label_72
.label_72:
	mov	eax, dword ptr [rbp - 0x16c]
	sub	eax, 0x82
	mov	dword ptr [rbp - 0x1ac], eax
	je	.label_68
	jmp	.label_86
.label_86:
	mov	eax, dword ptr [rbp - 0x16c]
	sub	eax, 0x83
	mov	dword ptr [rbp - 0x1b0], eax
	je	.label_116
	jmp	.label_112
.label_108:
	movabs	rdi, OFFSET FLAT:label_63
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x1b8], rax
	call	gettext
	xor	ecx, ecx
	mov	esi, ecx
	movabs	rdx, 0x1fffffffffffffff
	movabs	rcx, OFFSET FLAT:label_26
	xor	r9d, r9d
	mov	rdi, qword ptr [rbp - 0x1b8]
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [word ptr [suffix_length]],  rax
	jmp	.label_51
.label_116:
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	last_component
	cmp	rax,  qword ptr [word ptr [optarg]]
	je	.label_175
	movabs	rdi, OFFSET FLAT:label_89
	call	gettext
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x1c0], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x1c0]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_175:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [word ptr [additional_suffix]],  rax
	jmp	.label_51
.label_115:
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_117
	jmp	.label_120
.label_120:
	movabs	rdi, OFFSET FLAT:label_61
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_117:
	movabs	rdi, OFFSET FLAT:label_71
	mov	dword ptr [rbp - 0x14], 1
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x1c8], rax
	call	gettext
	mov	ecx, 1
	mov	esi, ecx
	movabs	rdx, 0x7fffffffffffffff
	movabs	rcx, OFFSET FLAT:main.multipliers
	xor	r9d, r9d
	mov	rdi, qword ptr [rbp - 0x1c8]
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_51
.label_137:
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_169
	jmp	.label_48
.label_48:
	movabs	rdi, OFFSET FLAT:label_61
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_169:
	movabs	rdi, OFFSET FLAT:label_110
	mov	dword ptr [rbp - 0x14], 3
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x1d0], rax
	call	gettext
	mov	ecx, 1
	mov	esi, ecx
	mov	rdx, -1
	movabs	rcx, OFFSET FLAT:label_26
	xor	r9d, r9d
	mov	rdi, qword ptr [rbp - 0x1d0]
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_51
.label_102:
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_55
	jmp	.label_59
.label_59:
	movabs	rdi, OFFSET FLAT:label_61
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_55:
	movabs	rdi, OFFSET FLAT:label_71
	mov	dword ptr [rbp - 0x14], 2
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x1d8], rax
	call	gettext
	mov	ecx, 1
	mov	esi, ecx
	movabs	rdx, 0x7fffffffffffffff
	movabs	rcx, OFFSET FLAT:main.multipliers
	xor	r9d, r9d
	mov	rdi, qword ptr [rbp - 0x1d8]
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_51
.label_145:
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_95
	jmp	.label_99
.label_99:
	movabs	rdi, OFFSET FLAT:label_61
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_95:
	jmp	.label_111
.label_111:
	mov	rax,  qword ptr [word ptr [optarg]]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x1e0], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x1e0]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x2000
	cmp	edi, 0
	je	.label_125
	mov	rax,  qword ptr [word ptr [optarg]]
	add	rax, 1
	mov	qword ptr [word ptr [optarg]],  rax
	jmp	.label_111
.label_125:
	movabs	rsi, OFFSET FLAT:label_140
	mov	eax, 2
	mov	edx, eax
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	strncmp
	cmp	eax, 0
	jne	.label_147
	mov	dword ptr [rbp - 0x14], 7
	mov	rax,  qword ptr [word ptr [optarg]]
	add	rax, 2
	mov	qword ptr [word ptr [optarg]],  rax
	jmp	.label_148
.label_147:
	movabs	rsi, OFFSET FLAT:label_157
	mov	eax, 2
	mov	edx, eax
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	strncmp
	cmp	eax, 0
	jne	.label_165
	mov	dword ptr [rbp - 0x14], 6
	mov	rax,  qword ptr [word ptr [optarg]]
	add	rax, 2
	mov	qword ptr [word ptr [optarg]],  rax
	jmp	.label_90
.label_165:
	mov	dword ptr [rbp - 0x14], 5
.label_90:
	jmp	.label_148
.label_148:
	mov	esi, 0x2f
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	strchr
	mov	qword ptr [rbp - 0x58], rax
	cmp	rax, 0
	je	.label_43
	lea	rdi, [rbp - 0x30]
	lea	rsi, [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x58]
	call	parse_chunk
	jmp	.label_53
.label_43:
	movabs	rdi, OFFSET FLAT:label_54
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x1e8], rax
	call	gettext
	mov	ecx, 1
	mov	esi, ecx
	mov	rdx, -1
	movabs	rcx, OFFSET FLAT:label_26
	xor	r9d, r9d
	mov	rdi, qword ptr [rbp - 0x1e8]
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [rbp - 0x38], rax
.label_53:
	jmp	.label_51
.label_67:
	mov	byte ptr [byte ptr [unbuffered]],  1
	jmp	.label_51
.label_151:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x59], cl
	cmp	byte ptr [rbp - 0x59], 0
	jne	.label_81
	movabs	rdi, OFFSET FLAT:label_84
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_81:
	mov	rax,  qword ptr [word ptr [optarg]]
	cmp	byte ptr [rax + 1], 0
	je	.label_79
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	eax, OFFSET FLAT:label_101
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_106
	mov	byte ptr [rbp - 0x59], 0
	jmp	.label_109
.label_106:
	movabs	rdi, OFFSET FLAT:label_77
	call	gettext
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x1f0], rax
	call	quote
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x1f0]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_109:
	jmp	.label_79
.label_79:
	xor	eax, eax
	cmp	eax,  dword ptr [dword ptr [eolchar]]
	jg	.label_164
	movsx	eax, byte ptr [rbp - 0x59]
	cmp	eax,  dword ptr [dword ptr [eolchar]]
	je	.label_164
	movabs	rdi, OFFSET FLAT:label_62
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_164:
	movsx	eax, byte ptr [rbp - 0x59]
	mov	dword ptr [dword ptr [eolchar]],  eax
	jmp	.label_51
.label_64:
	cmp	dword ptr [rbp - 0x14], 0
	jne	.label_150
	mov	dword ptr [rbp - 0x14], 4
	mov	qword ptr [rbp - 0x38], 0
.label_150:
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_156
	cmp	dword ptr [rbp - 0x14], 4
	je	.label_156
	jmp	.label_161
.label_161:
	movabs	rdi, OFFSET FLAT:label_61
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_156:
	cmp	dword ptr [rbp - 0x40], 0
	je	.label_139
	mov	eax, dword ptr [rbp - 0x40]
	cmp	eax, dword ptr [rbp - 0x4c]
	je	.label_139
	mov	qword ptr [rbp - 0x38], 0
.label_139:
	movabs	rax, 0x1999999999999999
	mov	ecx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x40], ecx
	cmp	rax, qword ptr [rbp - 0x38]
	jb	.label_41
	imul	rax, qword ptr [rbp - 0x38], 0xa
	mov	ecx, dword ptr [rbp - 0x3c]
	sub	ecx, 0x30
	movsxd	rdx, ecx
	add	rax, rdx
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_52
.label_41:
	xor	eax, eax
	mov	dword ptr [rbp - 0x1f4], eax
	jmp	.label_56
.label_52:
	mov	eax, 1
	imul	rcx, qword ptr [rbp - 0x38], 0xa
	mov	edx, dword ptr [rbp - 0x3c]
	sub	edx, 0x30
	movsxd	rsi, edx
	add	rcx, rsi
	mov	qword ptr [rbp - 0x38], rcx
	mov	dword ptr [rbp - 0x1f4], eax
.label_56:
	mov	eax, dword ptr [rbp - 0x1f4]
	cmp	eax, 0
	jne	.label_69
	movabs	rdi, OFFSET FLAT:label_73
	call	gettext
	lea	rsi, [rbp - 0x70]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x200], rax
	call	umaxtostr
	mov	edi, 1
	xor	esi, esi
	mov	r8d, dword ptr [rbp - 0x3c]
	mov	rdx, qword ptr [rbp - 0x200]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_69:
	jmp	.label_51
.label_123:
	cmp	dword ptr [rbp - 0x3c], 0x64
	jne	.label_88
	movabs	rax, OFFSET FLAT:label_91
	mov	qword ptr [word ptr [suffix_alphabet]],  rax
	jmp	.label_92
.label_88:
	movabs	rax, OFFSET FLAT:label_103
	mov	qword ptr [word ptr [suffix_alphabet]],  rax
.label_92:
	cmp	qword ptr [word ptr [optarg]],  0
	je	.label_47
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	strlen
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	rsi,  qword ptr [word ptr [suffix_alphabet]]
	mov	qword ptr [rbp - 0x208], rax
	call	strspn
	mov	rsi, qword ptr [rbp - 0x208]
	cmp	rsi, rax
	je	.label_97
	cmp	dword ptr [rbp - 0x3c], 0x64
	jne	.label_129
	movabs	rdi, OFFSET FLAT:label_133
	call	gettext
	mov	qword ptr [rbp - 0x210], rax
	jmp	.label_135
.label_129:
	movabs	rdi, OFFSET FLAT:label_153
	call	gettext
	mov	qword ptr [rbp - 0x210], rax
.label_135:
	mov	rax, qword ptr [rbp - 0x210]
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x218], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x218]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_97:
	jmp	.label_66
.label_66:
	xor	eax, eax
	mov	cl, al
	mov	rdx,  qword ptr [word ptr [optarg]]
	movsx	eax, byte ptr [rdx]
	cmp	eax, 0x30
	mov	byte ptr [rbp - 0x219], cl
	jne	.label_160
	mov	rax,  qword ptr [word ptr [optarg]]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	setne	dl
	mov	byte ptr [rbp - 0x219], dl
.label_160:
	mov	al, byte ptr [rbp - 0x219]
	test	al, 1
	jne	.label_171
	jmp	.label_177
.label_171:
	mov	rax,  qword ptr [word ptr [optarg]]
	add	rax, 1
	mov	qword ptr [word ptr [optarg]],  rax
	jmp	.label_66
.label_177:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [word ptr [numeric_suffix_start]],  rax
	jmp	.label_47
.label_47:
	jmp	.label_51
.label_143:
	mov	byte ptr [byte ptr [elide_empty_files]],  1
	jmp	.label_51
.label_163:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [word ptr [filter_command]],  rax
	jmp	.label_51
.label_68:
	movabs	rdi, OFFSET FLAT:label_65
	mov	rax, -1
	mov	rcx,  qword ptr [word ptr [optarg]]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x228], rax
	mov	qword ptr [rbp - 0x230], rcx
	call	gettext
	mov	edx, 1
	mov	esi, edx
	movabs	rcx, OFFSET FLAT:main.multipliers
	xor	r9d, r9d
	mov	rdi, qword ptr [rbp - 0x230]
	mov	rdx, qword ptr [rbp - 0x228]
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_51
.label_168:
	mov	byte ptr [byte ptr [verbose]],  1
	jmp	.label_51
.label_83:
	xor	edi, edi
	call	usage
.label_76:
	movabs	rsi, OFFSET FLAT:label_14
	movabs	rdx, OFFSET FLAT:label_29
	movabs	r8, OFFSET FLAT:label_93
	movabs	r9, OFFSET FLAT:label_94
	xor	eax, eax
	mov	ecx, eax
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	r10,  qword ptr [word ptr [Version]]
	mov	qword ptr [rbp - 0x238], rcx
	mov	rcx, r10
	mov	qword ptr [rsp], 0
	mov	al, 0
	call	version_etc
	xor	edi, edi
	call	exit
.label_112:
	mov	edi, 1
	call	usage
.label_51:
	jmp	.label_126
.label_74:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_128
	cmp	qword ptr [word ptr [filter_command]],  0
	je	.label_128
	movabs	rdi, OFFSET FLAT:label_134
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_128:
	cmp	dword ptr [rbp - 0x14], 0
	jne	.label_146
	mov	dword ptr [rbp - 0x14], 3
	mov	qword ptr [rbp - 0x38], 0x3e8
.label_146:
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_154
	movabs	rdi, OFFSET FLAT:label_110
	call	gettext
	movabs	rdi, OFFSET FLAT:label_158
	mov	qword ptr [rbp - 0x240], rax
	call	quote
	xor	ecx, ecx
	movabs	rdx, OFFSET FLAT:label_159
	mov	edi, ecx
	mov	esi, ecx
	mov	rcx, qword ptr [rbp - 0x240]
	mov	r8, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_154:
	cmp	dword ptr [dword ptr [eolchar]],  0
	jge	.label_172
	mov	dword ptr [dword ptr [eolchar]],  0xa
.label_172:
	mov	rdi, qword ptr [rbp - 0x38]
	mov	esi, dword ptr [rbp - 0x14]
	call	set_suffix_length
	mov	esi,  dword ptr [dword ptr [optind]]
	cmp	esi, dword ptr [rbp - 8]
	jge	.label_45
	mov	eax,  dword ptr [dword ptr [optind]]
	mov	ecx, eax
	add	ecx, 1
	mov	dword ptr [dword ptr [optind]],  ecx
	movsxd	rdx, eax
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rsi + rdx*8]
	mov	qword ptr [word ptr [infile]],  rdx
.label_45:
	mov	eax,  dword ptr [dword ptr [optind]]
	cmp	eax, dword ptr [rbp - 8]
	jge	.label_60
	mov	eax,  dword ptr [dword ptr [optind]]
	mov	ecx, eax
	add	ecx, 1
	mov	dword ptr [dword ptr [optind]],  ecx
	movsxd	rdx, eax
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rsi + rdx*8]
	mov	qword ptr [word ptr [outbase]],  rdx
.label_60:
	mov	eax,  dword ptr [dword ptr [optind]]
	cmp	eax, dword ptr [rbp - 8]
	jge	.label_75
	movabs	rdi, OFFSET FLAT:label_78
	call	gettext
	movsxd	rdi,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rdi*8]
	mov	qword ptr [rbp - 0x248], rax
	call	quote
	xor	edx, edx
	mov	edi, edx
	mov	esi, edx
	mov	rdx, qword ptr [rbp - 0x248]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_75:
	cmp	qword ptr [word ptr [numeric_suffix_start]],  0
	je	.label_100
	mov	rdi,  qword ptr [word ptr [numeric_suffix_start]]
	call	strlen
	cmp	rax,  qword ptr [word ptr [suffix_length]]
	jbe	.label_100
	movabs	rdi, OFFSET FLAT:label_173
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_100:
	mov	rdi,  qword ptr [word ptr [infile]]
	mov	eax, OFFSET FLAT:label_124
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_46
	xor	eax, eax
	mov	rsi,  qword ptr [word ptr [infile]]
	mov	edi, eax
	mov	edx, eax
	mov	ecx, eax
	call	fd_reopen
	cmp	eax, 0
	jge	.label_46
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_142
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x24c], esi
	call	gettext
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [infile]]
	mov	qword ptr [rbp - 0x258], rax
	call	quotearg_style
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x24c]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_46:
	xor	eax, eax
	mov	edi, eax
	mov	esi, eax
	call	xset_binary_mode
	xor	edi, edi
	movabs	rsi, OFFSET FLAT:in_stat_buf
	call	fstat
	cmp	eax, 0
	je	.label_166
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [infile]]
	mov	dword ptr [rbp - 0x25c], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_40
	mov	esi, dword ptr [rbp - 0x25c]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_166:
	cmp	qword ptr [rbp - 0x20], 0
	setne	al
	xor	al, 0xff
	xor	al, 0xff
	and	al, 1
	mov	byte ptr [rbp - 0x71], al
	test	byte ptr [rbp - 0x71], 1
	jne	.label_49
	movabs	rax, OFFSET FLAT:in_stat_buf
	mov	ecx, OFFSET FLAT:in_stat_buf
	mov	esi, ecx
	mov	rdx, rsp
	mov	ecx, 0x12
	mov	rdi, rdx
	rep movsq	qword ptr [rdi], qword ptr [rsi]
	mov	qword ptr [rbp - 0x268], rax
	call	io_blksize
	mov	qword ptr [rbp - 0x20], rax
.label_49:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	add	rax, qword ptr [rbp - 0x28]
	sub	rax, 1
	mov	rdi, rax
	call	xmalloc
	mov	qword ptr [rbp - 0x80], rax
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x28]
	call	ptr_align
	mov	qword ptr [rbp - 0x88], rax
	mov	qword ptr [rbp - 0x90], -1
	cmp	dword ptr [rbp - 0x14], 5
	je	.label_80
	cmp	dword ptr [rbp - 0x14], 6
	jne	.label_85
.label_80:
	xor	edi, edi
	movabs	rsi, OFFSET FLAT:in_stat_buf
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x20]
	call	input_file_size
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	jge	.label_96
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_105
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x26c], esi
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx,  qword ptr [word ptr [infile]]
	mov	qword ptr [rbp - 0x278], rax
	call	quotearg_n_style_colon
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x26c]
	mov	rdx, qword ptr [rbp - 0x278]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_96:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_127
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x280], rax
	jmp	.label_132
.label_127:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x280], rax
.label_132:
	mov	rax, qword ptr [rbp - 0x280]
	movabs	rcx, 0x7fffffffffffffff
	mov	qword ptr [rbp - 0x90], rax
	cmp	rcx, qword ptr [rbp - 0x38]
	jae	.label_42
	movabs	rdi, OFFSET FLAT:label_54
	call	gettext
	lea	rsi, [rbp - 0xb0]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x288], rax
	call	umaxtostr
	mov	rdi, rax
	call	quote
	mov	edi, 1
	mov	esi, 0x4b
	movabs	rdx, OFFSET FLAT:label_159
	mov	rcx, qword ptr [rbp - 0x288]
	mov	r8, rax
	mov	al, 0
	call	error
.label_42:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x38]
	jbe	.label_141
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x290], rax
	jmp	.label_119
.label_141:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x290], rax
.label_119:
	mov	rax, qword ptr [rbp - 0x290]
	mov	qword ptr [rbp - 0x48], rax
.label_85:
	cmp	qword ptr [word ptr [filter_command]],  0
	je	.label_178
	movabs	rdi, OFFSET FLAT:newblocked
	call	sigemptyset
	mov	edi, 0xd
	xor	ecx, ecx
	mov	esi, ecx
	lea	rdx, [rbp - 0x148]
	mov	dword ptr [rbp - 0x294], eax
	call	sigaction
	mov	ecx, 1
	mov	edx, ecx
	cmp	qword ptr [rbp - 0x148], rdx
	mov	dword ptr [rbp - 0x298], eax
	je	.label_57
	movabs	rdi, OFFSET FLAT:newblocked
	mov	esi, 0xd
	call	sigaddset
	mov	dword ptr [rbp - 0x29c], eax
.label_57:
	xor	edi, edi
	movabs	rsi, OFFSET FLAT:newblocked
	movabs	rdx, OFFSET FLAT:oldblocked
	call	sigprocmask
	mov	dword ptr [rbp - 0x2a0], eax
.label_178:
	mov	eax, dword ptr [rbp - 0x14]
	dec	eax
	mov	ecx, eax
	sub	eax, 6
	mov	qword ptr [rbp - 0x2a8], rcx
	mov	dword ptr [rbp - 0x2ac], eax
	ja	.label_82
	mov	rax, qword ptr [rbp - 0x2a8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_87]]
	jmp	rcx
.label_1113:
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x20]
	call	lines_split
	jmp	.label_104
.label_1111:
	mov	rcx, -1
	xor	eax, eax
	mov	r8d, eax
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x20]
	call	bytes_split
	jmp	.label_104
.label_1112:
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x20]
	call	line_bytes_split
	jmp	.label_104
.label_1114:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_118
	mov	rax, qword ptr [rbp - 0x48]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x88]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x90]
	mov	r8, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x2b8], rdi
	mov	rdi, rax
	mov	rax, qword ptr [rbp - 0x2b8]
	mov	rdx, rax
	call	bytes_split
	jmp	.label_138
.label_118:
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x90]
	mov	r9, qword ptr [rbp - 0x48]
	call	bytes_chunk_extract
.label_138:
	jmp	.label_104
.label_1115:
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x90]
	mov	r9, qword ptr [rbp - 0x48]
	call	lines_chunk_split
	jmp	.label_104
.label_1116:
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x20]
	call	lines_rr
	jmp	.label_104
.label_82:
	call	abort
.label_104:
	xor	edi, edi
	call	close
	cmp	eax, 0
	je	.label_114
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [infile]]
	mov	dword ptr [rbp - 0x2bc], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_40
	mov	esi, dword ptr [rbp - 0x2bc]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_114:
	xor	eax, eax
	mov	edi, eax
	mov	esi,  dword ptr [dword ptr [output_desc]]
	mov	edx,  dword ptr [dword ptr [filter_pid]]
	mov	rcx,  qword ptr [word ptr [outfile]]
	call	closeout
	xor	eax, eax
	add	rsp, 0x350
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403450

	.globl bad_cast
	.type bad_cast, @function
bad_cast:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403460

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
	#Procedure 0x403470

	.globl parse_chunk
	.type parse_chunk, @function
parse_chunk:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	movabs	rax, OFFSET FLAT:label_54
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	add	rdx, 1
	mov	rdi, rax
	mov	qword ptr [rbp - 0x20], rdx
	call	gettext
	mov	ecx, 1
	mov	esi, ecx
	mov	rdx, -1
	movabs	rcx, OFFSET FLAT:label_26
	xor	r9d, r9d
	mov	rdi, qword ptr [rbp - 0x20]
	mov	r8, rax
	call	xdectoumax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax,  qword ptr [word ptr [optarg]]
	je	.label_179
	movabs	rdi, OFFSET FLAT:label_180
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax], 0
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x30], rax
	call	gettext
	mov	esi, 1
	movabs	rcx, OFFSET FLAT:label_26
	xor	r9d, r9d
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	r8, rax
	call	xdectoumax
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
.label_179:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403540

	.globl set_suffix_length
	.type set_suffix_length, @function
set_suffix_length:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	qword ptr [rbp - 0x18], 0
	cmp	qword ptr [word ptr [numeric_suffix_start]],  0
	je	.label_181
	mov	byte ptr [byte ptr [suffix_auto]],  0
.label_181:
	cmp	dword ptr [rbp - 0xc], 5
	je	.label_190
	cmp	dword ptr [rbp - 0xc], 6
	je	.label_190
	cmp	dword ptr [rbp - 0xc], 7
	jne	.label_182
.label_190:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [word ptr [numeric_suffix_start]],  0
	je	.label_184
	xor	eax, eax
	mov	esi, eax
	mov	edx, 0xa
	lea	rcx, [rbp - 0x28]
	movabs	r8, OFFSET FLAT:label_26
	mov	rdi,  qword ptr [word ptr [numeric_suffix_start]]
	call	xstrtoumax
	mov	dword ptr [rbp - 0x2c], eax
	cmp	dword ptr [rbp - 0x2c], 0
	jne	.label_183
	mov	rax, -1
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rax, qword ptr [rbp - 8]
	cmp	rcx, rax
	ja	.label_183
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 8]
	jae	.label_189
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_189:
	jmp	.label_183
.label_183:
	jmp	.label_184
.label_184:
	mov	rdi,  qword ptr [word ptr [suffix_alphabet]]
	call	strlen
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x20]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x38]
	cmp	rdx, 0
	setne	sil
	and	sil, 1
	mov	byte ptr [rbp - 0x39], sil
.label_186:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, rcx
	xor	edx, edx
	mov	rcx, qword ptr [rbp - 0x48]
	div	rcx
	mov	qword ptr [rbp - 0x20], rax
	cmp	rax, 0
	je	.label_194
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_186
.label_194:
	mov	al, byte ptr [rbp - 0x39]
	and	al, 1
	movzx	ecx, al
	mov	edx, ecx
	add	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [byte ptr [suffix_auto]],  0
.label_182:
	cmp	qword ptr [word ptr [suffix_length]],  0
	je	.label_185
	mov	rax,  qword ptr [word ptr [suffix_length]]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_187
	movabs	rdi, OFFSET FLAT:label_191
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_187:
	mov	byte ptr [byte ptr [suffix_auto]],  0
	jmp	.label_193
.label_185:
	mov	eax, 2
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x18]
	jbe	.label_188
	mov	eax, 2
	mov	ecx, eax
	mov	qword ptr [rbp - 0x50], rcx
	jmp	.label_192
.label_188:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x50], rax
.label_192:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [word ptr [suffix_length]],  rax
.label_193:
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403720

	.globl io_blksize
	.type io_blksize, @function
io_blksize:
	push	rbp
	mov	rbp, rsp
	lea	rax, [rbp + 0x10]
	xor	ecx, ecx
	mov	edx, ecx
	cmp	rdx, qword ptr [rax + 0x38]
	mov	qword ptr [rbp - 8], rax
	jge	.label_195
	movabs	rax, 0x2000000000000000
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 0x38], rax
	ja	.label_195
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax + 0x38]
	mov	qword ptr [rbp - 0x10], rcx
	jmp	.label_197
.label_195:
	mov	eax, 0x200
	mov	ecx, eax
	mov	qword ptr [rbp - 0x10], rcx
	jmp	.label_197
.label_197:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, 0x20000
	mov	edx, ecx
	cmp	rdx, rax
	jle	.label_200
	mov	eax, 0x20000
	mov	ecx, eax
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_198
.label_200:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 8]
	cmp	rcx, qword ptr [rdx + 0x38]
	jge	.label_199
	movabs	rax, 0x2000000000000000
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 0x38], rax
	ja	.label_199
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax + 0x38]
	mov	qword ptr [rbp - 0x20], rcx
	jmp	.label_196
.label_199:
	mov	eax, 0x200
	mov	ecx, eax
	mov	qword ptr [rbp - 0x20], rcx
	jmp	.label_196
.label_196:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
.label_198:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4037f0

	.globl ptr_align
	.type ptr_align, @function
ptr_align:
	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	add	rsi, qword ptr [rbp - 0x10]
	add	rsi, -1
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x20]
	xor	edx, edx
	div	qword ptr [rbp - 0x10]
	sub	rcx, rdx
	add	rsi, rcx
	mov	rax, rsi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403840

	.globl input_file_size
	.type input_file_size, @function
input_file_size:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	xor	eax, eax
	mov	r8d, eax
	mov	eax, 1
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsi, r8
	mov	edx, eax
	call	lseek
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	jge	.label_211
	call	__errno_location
	cmp	dword ptr [rax], 0x1d
	jne	.label_201
	call	__errno_location
	mov	dword ptr [rax], 0
.label_201:
	mov	qword ptr [rbp - 8], -1
	jmp	.label_202
.label_211:
	mov	qword ptr [rbp - 0x38], 0
.label_214:
	mov	edi, dword ptr [rbp - 0xc]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rcx, qword ptr [rbp - 0x38]
	mov	rsi, rax
	mov	rdx, rcx
	call	safe_read
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_203
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_202
.label_203:
	cmp	qword ptr [rbp - 0x40], -1
	jne	.label_210
	mov	qword ptr [rbp - 8], -1
	jmp	.label_202
.label_210:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x28]
	jb	.label_214
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x30], 0
	jne	.label_207
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	mov	qword ptr [rbp - 8], -1
	jmp	.label_202
.label_207:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x18]
	call	usable_st_size
	test	al, 1
	jne	.label_205
	jmp	.label_208
.label_205:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x30]
	jg	.label_208
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x30]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_212
.label_208:
	xor	eax, eax
	mov	esi, eax
	mov	edx, 2
	mov	edi, dword ptr [rbp - 0xc]
	call	lseek
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	jge	.label_206
	mov	qword ptr [rbp - 8], -1
	jmp	.label_202
.label_206:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x30]
	je	.label_209
	xor	edx, edx
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsi, qword ptr [rbp - 0x30]
	call	lseek
	cmp	rax, 0
	jge	.label_204
	mov	qword ptr [rbp - 8], -1
	jmp	.label_202
.label_204:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x30]
	jge	.label_213
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x48], rax
.label_213:
	jmp	.label_209
.label_209:
	jmp	.label_212
.label_212:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x48]
	sub	rcx, qword ptr [rbp - 0x30]
	add	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rcx
	cmp	qword ptr [rbp - 0x38], rax
	jne	.label_215
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	mov	qword ptr [rbp - 8], -1
	jmp	.label_202
.label_215:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 8], rax
.label_202:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403a60

	.globl lines_split
	.type lines_split, @function
lines_split:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rbp - 0x39], 1
	mov	qword ptr [rbp - 0x48], 0
.label_217:
	xor	edi, edi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	safe_read
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], -1
	jne	.label_219
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [infile]]
	mov	dword ptr [rbp - 0x54], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_40
	mov	esi, dword ptr [rbp - 0x54]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_219:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x38], rax
	mov	ecx,  dword ptr [dword ptr [eolchar]]
	mov	dl, cl
	mov	rax, qword ptr [rbp - 0x38]
	mov	byte ptr [rax], dl
.label_218:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	esi,  dword ptr [dword ptr [eolchar]]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rax, rcx
	add	rax, 1
	mov	rdx, rax
	call	memchr
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x38]
	jne	.label_216
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x30]
	je	.label_222
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x50], rax
	mov	dl, byte ptr [rbp - 0x39]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x50]
	and	dl, 1
	movzx	edi, dl
	mov	rdx, rax
	call	cwrite
	mov	byte ptr [rbp - 0x39], 0
	mov	byte ptr [rbp - 0x55], al
.label_222:
	jmp	.label_220
.label_216:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	cmp	rax, qword ptr [rbp - 8]
	jb	.label_223
	mov	al, byte ptr [rbp - 0x39]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	sub	rcx, rdx
	and	al, 1
	movzx	edi, al
	mov	rdx, rcx
	call	cwrite
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], rcx
	mov	byte ptr [rbp - 0x39], 1
	mov	qword ptr [rbp - 0x48], 0
	mov	byte ptr [rbp - 0x56], al
.label_223:
	jmp	.label_218
.label_220:
	jmp	.label_221
.label_221:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_217
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403bf0

	.globl bytes_split
	.type bytes_split, @function
bytes_split:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	byte ptr [rbp - 0x31], 1
	mov	byte ptr [rbp - 0x32], 1
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x40], rcx
	mov	qword ptr [rbp - 0x48], 0
.label_239:
	cmp	qword ptr [rbp - 0x20], -1
	je	.label_234
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0x20], -1
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x18]
	setb	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x49], cl
	jmp	.label_236
.label_234:
	test	byte ptr [rbp - 0x32], 1
	jne	.label_233
	xor	edi, edi
	mov	edx, 1
	mov	rsi, qword ptr [rbp - 0x40]
	call	lseek
	cmp	rax, -1
	je	.label_233
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x40], rax
	mov	byte ptr [rbp - 0x31], 1
.label_233:
	xor	edi, edi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	safe_read
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_240
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [infile]]
	mov	dword ptr [rbp - 0x5c], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_40
	mov	esi, dword ptr [rbp - 0x5c]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_240:
	cmp	qword ptr [rbp - 0x30], 0
	sete	al
	and	al, 1
	mov	byte ptr [rbp - 0x49], al
.label_236:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x58], rax
.label_231:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x30]
	ja	.label_225
	test	byte ptr [rbp - 0x32], 1
	jne	.label_224
	test	byte ptr [rbp - 0x31], 1
	je	.label_229
.label_224:
	mov	al, byte ptr [rbp - 0x31]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x40]
	and	al, 1
	movzx	edi, al
	call	cwrite
	and	al, 1
	mov	byte ptr [rbp - 0x32], al
.label_229:
	mov	al, 1
	mov	cl, byte ptr [rbp - 0x31]
	and	cl, 1
	movzx	edx, cl
	mov	esi, edx
	add	rsi, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rsi
	cmp	qword ptr [rbp - 0x28], 0
	mov	byte ptr [rbp - 0x5d], al
	je	.label_237
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x28]
	setb	cl
	mov	byte ptr [rbp - 0x5d], cl
.label_237:
	mov	al, byte ptr [rbp - 0x5d]
	and	al, 1
	mov	byte ptr [rbp - 0x31], al
	test	byte ptr [rbp - 0x32], 1
	jne	.label_235
	test	byte ptr [rbp - 0x31], 1
	jne	.label_235
	mov	qword ptr [rbp - 0x30], 0
	mov	byte ptr [rbp - 0x49], 1
	jmp	.label_225
.label_235:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x30], rcx
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_231
.label_225:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_230
	test	byte ptr [rbp - 0x32], 1
	jne	.label_242
	test	byte ptr [rbp - 0x31], 1
	je	.label_228
.label_242:
	mov	al, byte ptr [rbp - 0x31]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x30]
	and	al, 1
	movzx	edi, al
	call	cwrite
	and	al, 1
	mov	byte ptr [rbp - 0x32], al
.label_228:
	mov	al, byte ptr [rbp - 0x31]
	and	al, 1
	movzx	ecx, al
	mov	edx, ecx
	add	rdx, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rdx
	mov	byte ptr [rbp - 0x31], 0
	test	byte ptr [rbp - 0x32], 1
	jne	.label_232
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_232
	jmp	.label_241
.label_232:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x40], rcx
.label_230:
	jmp	.label_238
.label_238:
	mov	al, byte ptr [rbp - 0x49]
	xor	al, 0xff
	test	al, 1
	jne	.label_239
.label_241:
	jmp	.label_227
.label_227:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x48], rcx
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_226
	mov	edi, 1
	xor	eax, eax
	mov	ecx, eax
	mov	rsi, rcx
	mov	rdx, rcx
	call	cwrite
	mov	byte ptr [rbp - 0x5e], al
	jmp	.label_227
.label_226:
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403e90

	.globl line_bytes_split
	.type line_bytes_split, @function
line_bytes_split:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x28], 0
	mov	qword ptr [rbp - 0x30], 0
	mov	qword ptr [rbp - 0x38], 0
	mov	qword ptr [rbp - 0x40], 0
	mov	byte ptr [rbp - 0x41], 0
.label_247:
	xor	edi, edi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	safe_read
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], -1
	jne	.label_260
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [infile]]
	mov	dword ptr [rbp - 0x8c], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_40
	mov	esi, dword ptr [rbp - 0x8c]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_260:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x58], rax
.label_263:
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_255
	mov	qword ptr [rbp - 0x60], 0
	mov	qword ptr [rbp - 0x68], 0
	mov	rax, qword ptr [rbp - 8]
	sub	rax, qword ptr [rbp - 0x28]
	sub	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x50]
	ja	.label_259
	mov	rax, qword ptr [rbp - 8]
	sub	rax, qword ptr [rbp - 0x28]
	sub	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x60]
	add	rax, -1
	mov	qword ptr [rbp - 0x68], rax
	mov	rdi, qword ptr [rbp - 0x58]
	mov	esi,  dword ptr [dword ptr [eolchar]]
	mov	rdx, qword ptr [rbp - 0x60]
	call	memrchr
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_250
.label_259:
	mov	rdi, qword ptr [rbp - 0x58]
	mov	esi,  dword ptr [dword ptr [eolchar]]
	mov	rdx, qword ptr [rbp - 0x50]
	call	memrchr
	mov	qword ptr [rbp - 0x70], rax
.label_250:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_258
	cmp	qword ptr [rbp - 0x70], 0
	jne	.label_257
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_258
.label_257:
	cmp	qword ptr [rbp - 0x28], 0
	sete	al
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x30]
	and	al, 1
	movzx	edi, al
	call	cwrite
	mov	rdx, qword ptr [rbp - 0x30]
	add	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, qword ptr [rbp - 0x30]
	cmp	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rbp - 0x8d], al
	jbe	.label_266
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x18]
	call	xrealloc
	mov	qword ptr [rbp - 0x38], rax
.label_266:
	mov	qword ptr [rbp - 0x30], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x40], rax
.label_258:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_256
	mov	byte ptr [rbp - 0x41], 1
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x58]
	sub	rax, rcx
	add	rax, 1
	mov	qword ptr [rbp - 0x78], rax
	cmp	qword ptr [rbp - 0x28], 0
	sete	dl
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rbp - 0x78]
	and	dl, 1
	movzx	edi, dl
	mov	rdx, rax
	call	cwrite
	mov	rcx, qword ptr [rbp - 0x78]
	add	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0x50]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x50], rdx
	mov	rcx, qword ptr [rbp - 0x78]
	add	rcx, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x58], rcx
	cmp	qword ptr [rbp - 0x68], 0
	mov	byte ptr [rbp - 0x8e], al
	je	.label_267
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x60], rcx
.label_267:
	jmp	.label_256
.label_256:
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_249
	test	byte ptr [rbp - 0x41], 1
	jne	.label_249
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_261
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_262
.label_261:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x98], rax
.label_262:
	mov	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0x80], rax
	cmp	qword ptr [rbp - 0x28], 0
	sete	cl
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x80]
	and	cl, 1
	movzx	edi, cl
	call	cwrite
	mov	rdx, qword ptr [rbp - 0x80]
	add	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x50]
	sub	rsi, rdx
	mov	qword ptr [rbp - 0x50], rsi
	mov	rdx, qword ptr [rbp - 0x80]
	add	rdx, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x58], rdx
	cmp	qword ptr [rbp - 0x68], 0
	mov	byte ptr [rbp - 0x99], al
	je	.label_254
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x60], rcx
.label_254:
	jmp	.label_249
.label_249:
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_265
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_268
.label_265:
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_248
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_248
.label_268:
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_252
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0xa8], rax
	jmp	.label_245
.label_252:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xa8], rax
.label_245:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x88]
	jae	.label_253
	mov	rax, -1
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rax, qword ptr [rbp - 0x18]
	cmp	rcx, rax
	ja	.label_243
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_244
.label_243:
	call	xalloc_die
.label_244:
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x40]
	call	xrealloc
	mov	qword ptr [rbp - 0x38], rax
.label_253:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rdi, rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x50]
	sub	rdx, rax
	mov	qword ptr [rbp - 0x50], rdx
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x58], rax
.label_248:
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_264
	mov	qword ptr [rbp - 0x28], 0
	mov	byte ptr [rbp - 0x41], 0
.label_264:
	jmp	.label_263
.label_255:
	jmp	.label_246
.label_246:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_247
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_251
	cmp	qword ptr [rbp - 0x28], 0
	sete	al
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x30]
	and	al, 1
	movzx	edi, al
	call	cwrite
	mov	byte ptr [rbp - 0xa9], al
.label_251:
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
	add	rsp, 0xb0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4042e0

	.globl bytes_chunk_extract
	.type bytes_chunk_extract, @function
bytes_chunk_extract:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], r9
	cmp	qword ptr [rbp - 8], 0
	je	.label_275
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_275
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x10]
	ja	.label_275
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x30]
	ja	.label_275
	jmp	.label_281
.label_275:
	movabs	rdi, OFFSET FLAT:label_283
	movabs	rsi, OFFSET FLAT:label_284
	mov	edx, 0x3e0
	movabs	rcx, OFFSET FLAT:label_285
	call	__assert_fail
.label_281:
	mov	rax, qword ptr [rbp - 8]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, rcx
	xor	edx, edx
	div	qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x50]
	imul	rcx, rax
	mov	qword ptr [rbp - 0x38], rcx
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_279
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_277
.label_279:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, rcx
	xor	edx, edx
	div	qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x60]
	imul	rcx, rax
	mov	qword ptr [rbp - 0x58], rcx
.label_277:
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_270
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rcx, qword ptr [rbp - 0x38]
	mov	rsi, rax
	mov	rdx, rcx
	call	memmove
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x28]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_282
.label_270:
	xor	edi, edi
	mov	edx, 1
	mov	rsi, qword ptr [rbp - 0x38]
	call	lseek
	cmp	rax, 0
	jge	.label_269
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [infile]]
	mov	dword ptr [rbp - 0x6c], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_40
	mov	esi, dword ptr [rbp - 0x6c]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_269:
	mov	qword ptr [rbp - 0x28], -1
.label_282:
	jmp	.label_271
.label_271:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x40]
	jge	.label_272
	cmp	qword ptr [rbp - 0x28], -1
	je	.label_286
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	mov	qword ptr [rbp - 0x28], -1
	jmp	.label_273
.label_286:
	xor	edi, edi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	call	safe_read
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], -1
	jne	.label_280
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [infile]]
	mov	dword ptr [rbp - 0x70], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_40
	mov	esi, dword ptr [rbp - 0x70]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_280:
	jmp	.label_273
.label_273:
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_287
	jmp	.label_272
.label_287:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rcx, qword ptr [rbp - 0x38]
	cmp	rax, rcx
	jae	.label_274
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_278
.label_274:
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x78], rax
.label_278:
	mov	rax, qword ptr [rbp - 0x78]
	mov	edi, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x48]
	call	full_write
	cmp	rax, qword ptr [rbp - 0x48]
	je	.label_276
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	ignorable
	test	al, 1
	jne	.label_276
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	movabs	rdx, OFFSET FLAT:label_124
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x7c], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_40
	mov	esi, dword ptr [rbp - 0x7c]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_276:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_271
.label_272:
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4045d0

	.globl lines_chunk_split
	.type lines_chunk_split, @function
lines_chunk_split:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xe0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], r9
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_291
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x10]
	ja	.label_291
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x30]
	ja	.label_291
	jmp	.label_295
.label_291:
	movabs	rdi, OFFSET FLAT:label_296
	movabs	rsi, OFFSET FLAT:label_284
	mov	edx, 0x362
	movabs	rcx, OFFSET FLAT:label_297
	call	__assert_fail
.label_295:
	mov	rax, qword ptr [rbp - 0x30]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x40], 1
	mov	rax, qword ptr [rbp - 0x38]
	sub	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	qword ptr [rbp - 0x50], 0
	mov	byte ptr [rbp - 0x51], 1
	mov	byte ptr [rbp - 0x52], 0
	cmp	qword ptr [rbp - 8], 1
	jbe	.label_303
	mov	rax, qword ptr [rbp - 8]
	sub	rax, 1
	imul	rax, qword ptr [rbp - 0x38]
	sub	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_332
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rcx, qword ptr [rbp - 0x60]
	mov	rsi, rax
	mov	rdx, rcx
	call	memmove
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x28]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_324
.label_332:
	xor	edi, edi
	mov	edx, 1
	mov	rax, qword ptr [rbp - 0x60]
	sub	rax, qword ptr [rbp - 0x28]
	mov	rsi, rax
	call	lseek
	cmp	rax, 0
	jge	.label_333
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [infile]]
	mov	dword ptr [rbp - 0xa4], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_40
	mov	esi, dword ptr [rbp - 0xa4]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_333:
	mov	qword ptr [rbp - 0x28], -1
.label_324:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 8]
	sub	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	imul	rax, qword ptr [rbp - 0x38]
	sub	rax, 1
	mov	qword ptr [rbp - 0x48], rax
.label_303:
	jmp	.label_308
.label_308:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x30]
	jge	.label_309
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x68], rax
	cmp	qword ptr [rbp - 0x28], -1
	je	.label_313
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x78], rax
	mov	qword ptr [rbp - 0x28], -1
	jmp	.label_290
.label_313:
	xor	edi, edi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	call	safe_read
	mov	qword ptr [rbp - 0x78], rax
	cmp	qword ptr [rbp - 0x78], -1
	jne	.label_322
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [infile]]
	mov	dword ptr [rbp - 0xa8], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_40
	mov	esi, dword ptr [rbp - 0xa8]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_322:
	jmp	.label_290
.label_290:
	cmp	qword ptr [rbp - 0x78], 0
	jne	.label_292
	jmp	.label_309
.label_292:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x50]
	cmp	rax, rcx
	jae	.label_330
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_300
.label_330:
	mov	rax, qword ptr [rbp - 0x30]
	sub	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xb0], rax
.label_300:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0x78], rax
	mov	byte ptr [rbp - 0x52], 0
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x70], rax
.label_312:
	mov	rax, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rbp - 0x70]
	je	.label_307
	xor	eax, eax
	mov	ecx, eax
	mov	byte ptr [rbp - 0x81], 0
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rsi, qword ptr [rbp - 0x48]
	sub	rsi, qword ptr [rbp - 0x50]
	cmp	rcx, rsi
	mov	qword ptr [rbp - 0xb8], rdx
	jle	.label_325
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0xc0], rcx
	jmp	.label_319
.label_325:
	mov	rax, qword ptr [rbp - 0x48]
	sub	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xc0], rax
.label_319:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0xb8]
	cmp	rcx, rax
	jae	.label_323
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0xc8], rax
	jmp	.label_327
.label_323:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x48]
	sub	rdx, qword ptr [rbp - 0x50]
	cmp	rcx, rdx
	jle	.label_331
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0xd0], rcx
	jmp	.label_334
.label_331:
	mov	rax, qword ptr [rbp - 0x48]
	sub	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xd0], rax
.label_334:
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0xc8], rax
.label_327:
	mov	rax, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0x90], rax
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, qword ptr [rbp - 0x90]
	mov	esi,  dword ptr [dword ptr [eolchar]]
	mov	rcx, qword ptr [rbp - 0x78]
	sub	rcx, qword ptr [rbp - 0x90]
	mov	rdi, rax
	mov	rdx, rcx
	call	memchr
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x98], rcx
	cmp	rax, 0
	je	.label_304
	mov	byte ptr [rbp - 0x81], 1
	jmp	.label_315
.label_304:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x98], rax
.label_315:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x68]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x40]
	jne	.label_317
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x80]
	call	full_write
	cmp	rax, qword ptr [rbp - 0x80]
	je	.label_329
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_301
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xd4], esi
	call	gettext
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_40
	mov	esi, dword ptr [rbp - 0xd4]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_329:
	jmp	.label_294
.label_317:
	cmp	qword ptr [rbp - 8], 0
	jne	.label_305
	mov	al, byte ptr [rbp - 0x51]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x80]
	and	al, 1
	movzx	edi, al
	call	cwrite
	mov	byte ptr [rbp - 0xd5], al
.label_305:
	jmp	.label_294
.label_294:
	mov	rax, qword ptr [rbp - 0x80]
	add	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x80]
	add	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x78]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x78], rcx
	mov	dl, byte ptr [rbp - 0x81]
	and	dl, 1
	mov	byte ptr [rbp - 0x51], dl
.label_310:
	mov	al, 1
	test	byte ptr [rbp - 0x81], 1
	mov	byte ptr [rbp - 0xd6], al
	jne	.label_311
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x50]
	sub	rcx, 1
	cmp	rax, rcx
	setle	dl
	mov	byte ptr [rbp - 0xd6], dl
.label_311:
	mov	al, byte ptr [rbp - 0xd6]
	test	al, 1
	jne	.label_320
	jmp	.label_299
.label_320:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_321
	mov	rax, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rbp - 0x70]
	jne	.label_321
	mov	byte ptr [rbp - 0x52], 1
	jmp	.label_299
.label_321:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 8], 0
	je	.label_328
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 8]
	jbe	.label_328
	jmp	.label_288
.label_328:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_289
	mov	rax, qword ptr [rbp - 0x30]
	sub	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_293
.label_289:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
.label_293:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x50]
	sub	rcx, 1
	cmp	rax, rcx
	jg	.label_298
	cmp	qword ptr [rbp - 8], 0
	jne	.label_302
	mov	edi, 1
	xor	eax, eax
	mov	ecx, eax
	mov	rsi, rcx
	mov	rdx, rcx
	call	cwrite
	mov	byte ptr [rbp - 0xd7], al
.label_302:
	jmp	.label_306
.label_298:
	mov	byte ptr [rbp - 0x81], 0
.label_306:
	jmp	.label_310
.label_299:
	jmp	.label_312
.label_307:
	jmp	.label_308
.label_309:
	test	byte ptr [rbp - 0x52], 1
	je	.label_314
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
.label_314:
	jmp	.label_316
.label_316:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 8], 0
	mov	byte ptr [rbp - 0xd8], cl
	jne	.label_318
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	cmp	rax, qword ptr [rbp - 0x10]
	setbe	dl
	mov	byte ptr [rbp - 0xd8], dl
.label_318:
	mov	al, byte ptr [rbp - 0xd8]
	test	al, 1
	jne	.label_326
	jmp	.label_288
.label_326:
	mov	edi, 1
	xor	eax, eax
	mov	ecx, eax
	mov	rsi, rcx
	mov	rdx, rcx
	call	cwrite
	mov	byte ptr [rbp - 0xd9], al
	jmp	.label_316
.label_288:
	add	rsp, 0xe0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404c10

	.globl lines_rr
	.type lines_rr, @function
lines_rr:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	byte ptr [rbp - 0x21], 0
	mov	byte ptr [rbp - 0x22], 0
	cmp	qword ptr [rbp - 8], 0
	je	.label_338
	mov	qword ptr [rbp - 0x40], 1
	jmp	.label_345
.label_338:
	mov	rax, -1
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_347
	call	xalloc_die
.label_347:
	mov	eax, 0x20
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x10]
	call	xnmalloc
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x30], 0
.label_363:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_373
	call	next_file_name
	mov	rdi,  qword ptr [word ptr [outfile]]
	call	xstrdup
	mov	rdi, qword ptr [rbp - 0x30]
	shl	rdi, 5
	add	rdi, qword ptr [rbp - 0x38]
	mov	qword ptr [rdi], rax
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax + 8], 0xffffffff
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax + 0x18], 0
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_363
.label_373:
	mov	qword ptr [rbp - 0x30], 0
	mov	byte ptr [rbp - 0x23], 0
.label_345:
	jmp	.label_335
.label_335:
	xor	edi, edi
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x48], rax
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	call	safe_read
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], -1
	jne	.label_341
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [infile]]
	mov	dword ptr [rbp - 0x78], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_40
	mov	esi, dword ptr [rbp - 0x78]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_341:
	cmp	qword ptr [rbp - 0x58], 0
	jne	.label_351
	jmp	.label_354
.label_351:
	jmp	.label_369
.label_369:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x50], rax
.label_355:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x50]
	je	.label_358
	mov	byte ptr [rbp - 0x61], 0
	mov	rdi, qword ptr [rbp - 0x48]
	mov	esi,  dword ptr [dword ptr [eolchar]]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x48]
	sub	rax, rcx
	mov	rdx, rax
	call	memchr
	mov	qword ptr [rbp - 0x70], rax
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_366
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	mov	byte ptr [rbp - 0x61], 1
	jmp	.label_368
.label_366:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
.label_368:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x48]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x60], rax
	cmp	qword ptr [rbp - 8], 0
	je	.label_350
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 8]
	jne	.label_337
	test	byte ptr [byte ptr [unbuffered]],  1
	je	.label_337
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x60]
	call	full_write
	cmp	rax, qword ptr [rbp - 0x60]
	je	.label_342
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_301
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x7c], esi
	call	gettext
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_40
	mov	esi, dword ptr [rbp - 0x7c]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_342:
	jmp	.label_352
.label_337:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 8]
	jne	.label_353
	mov	eax, 1
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [stdout]]
	call	fwrite_unlocked
	cmp	rax, 1
	je	.label_353
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	clearerr_unlocked
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_301
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x80], esi
	call	gettext
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_40
	mov	esi, dword ptr [rbp - 0x80]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_353:
	jmp	.label_352
.label_352:
	test	byte ptr [rbp - 0x61], 1
	je	.label_372
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_374
	mov	eax, 1
	mov	ecx, eax
	mov	qword ptr [rbp - 0x88], rcx
	jmp	.label_336
.label_374:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x88], rax
.label_336:
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x40], rax
.label_372:
	jmp	.label_343
.label_350:
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x10]
	call	ofile_open
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x23]
	and	al, 1
	movzx	r8d, al
	or	r8d, ecx
	cmp	r8d, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x23], al
	test	byte ptr [byte ptr [unbuffered]],  1
	je	.label_346
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x38]
	mov	edi, dword ptr [rax + 8]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x60]
	call	full_write
	cmp	rax, qword ptr [rbp - 0x60]
	je	.label_359
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	ignorable
	test	al, 1
	jne	.label_359
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rax]
	mov	dword ptr [rbp - 0x8c], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_40
	mov	esi, dword ptr [rbp - 0x8c]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_359:
	jmp	.label_356
.label_346:
	mov	eax, 1
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x30]
	shl	rcx, 5
	add	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 0x10]
	call	fwrite_unlocked
	cmp	rax, 1
	je	.label_340
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	ignorable
	test	al, 1
	jne	.label_340
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rax]
	mov	dword ptr [rbp - 0x90], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_40
	mov	esi, dword ptr [rbp - 0x90]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_340:
	jmp	.label_356
.label_356:
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	ignorable
	test	al, 1
	jne	.label_361
	mov	byte ptr [rbp - 0x22], 1
.label_361:
	test	byte ptr [rbp - 0x23], 1
	je	.label_364
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rax + 0x10]
	call	rpl_fclose
	cmp	eax, 0
	je	.label_367
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rax]
	mov	dword ptr [rbp - 0x94], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_40
	mov	esi, dword ptr [rbp - 0x94]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_367:
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax + 8], 0xfffffffe
.label_364:
	test	byte ptr [rbp - 0x61], 1
	je	.label_344
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_344
	mov	byte ptr [rbp - 0x21], 1
	test	byte ptr [rbp - 0x22], 1
	jne	.label_349
	jmp	.label_348
.label_349:
	mov	byte ptr [rbp - 0x22], 0
	mov	qword ptr [rbp - 0x30], 0
.label_344:
	jmp	.label_343
.label_343:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_355
.label_358:
	jmp	.label_335
.label_354:
	jmp	.label_348
.label_348:
	cmp	qword ptr [rbp - 8], 0
	jne	.label_360
	test	byte ptr [rbp - 0x21], 1
	je	.label_362
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_365
.label_362:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xa0], rax
.label_365:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	ecx, eax
	mov	dword ptr [rbp - 0x74], ecx
	mov	qword ptr [rbp - 0x30], 0
.label_357:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_370
	mov	rax, qword ptr [rbp - 0x30]
	movsxd	rcx, dword ptr [rbp - 0x74]
	cmp	rax, rcx
	jb	.label_371
	test	byte ptr [byte ptr [elide_empty_files]],  1
	jne	.label_371
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x10]
	call	ofile_open
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x23]
	and	al, 1
	movzx	r8d, al
	or	r8d, ecx
	cmp	r8d, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x23], al
.label_371:
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rax + 8], 0
	jl	.label_339
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x38]
	mov	esi, dword ptr [rax + 8]
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x38]
	mov	edx, dword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rax]
	call	closeout
.label_339:
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax + 8], 0xfffffffe
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_357
.label_370:
	jmp	.label_360
.label_360:
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4052c0

	.globl closeout
	.type closeout, @function
closeout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	dword ptr [rbp - 0x10], edx
	mov	qword ptr [rbp - 0x18], rcx
	cmp	qword ptr [rbp - 8], 0
	je	.label_376
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fclose
	cmp	eax, 0
	je	.label_376
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	ignorable
	test	al, 1
	jne	.label_376
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x64], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_40
	mov	esi, dword ptr [rbp - 0x64]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_376:
	cmp	dword ptr [rbp - 0xc], 0
	jl	.label_375
	cmp	qword ptr [rbp - 8], 0
	jne	.label_389
	mov	edi, dword ptr [rbp - 0xc]
	call	close
	cmp	eax, 0
	jge	.label_389
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x68], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_40
	mov	esi, dword ptr [rbp - 0x68]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_389:
	mov	dword ptr [rbp - 0x1c], 0
.label_378:
	movsxd	rax, dword ptr [rbp - 0x1c]
	cmp	rax,  qword ptr [word ptr [n_open_pipes]]
	jae	.label_382
	movsxd	rax, dword ptr [rbp - 0x1c]
	mov	rcx,  qword ptr [word ptr [open_pipes]]
	mov	edx, dword ptr [rcx + rax*4]
	cmp	edx, dword ptr [rbp - 0xc]
	jne	.label_384
	mov	rax,  qword ptr [word ptr [n_open_pipes]]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [word ptr [n_open_pipes]],  rcx
	mov	rcx,  qword ptr [word ptr [open_pipes]]
	mov	edx, dword ptr [rcx + rax*4 - 4]
	movsxd	rax, dword ptr [rbp - 0x1c]
	mov	rcx,  qword ptr [word ptr [open_pipes]]
	mov	dword ptr [rcx + rax*4], edx
	jmp	.label_382
.label_384:
	jmp	.label_377
.label_377:
	mov	eax, dword ptr [rbp - 0x1c]
	add	eax, 1
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_378
.label_382:
	jmp	.label_375
.label_375:
	cmp	dword ptr [rbp - 0x10], 0
	jle	.label_380
	lea	rsi, [rbp - 0x20]
	xor	edx, edx
	mov	dword ptr [rbp - 0x20], 0
	mov	edi, dword ptr [rbp - 0x10]
	call	waitpid
	cmp	eax, -1
	jne	.label_386
	call	__errno_location
	cmp	dword ptr [rax], 0xa
	je	.label_386
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_392
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x6c], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x6c]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_386:
	mov	eax, dword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 0x28], eax
	mov	eax, dword ptr [rbp - 0x28]
	and	eax, 0x7f
	add	eax, 1
	mov	cl, al
	movsx	eax, cl
	sar	eax, 1
	cmp	eax, 0
	jle	.label_395
	mov	eax, dword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 0x30], eax
	mov	eax, dword ptr [rbp - 0x30]
	and	eax, 0x7f
	mov	dword ptr [rbp - 0x2c], eax
	cmp	dword ptr [rbp - 0x2c], 0xd
	je	.label_381
	lea	rsi, [rbp - 0x50]
	mov	edi, dword ptr [rbp - 0x2c]
	call	sig2str
	cmp	eax, 0
	je	.label_388
	movabs	rsi, OFFSET FLAT:label_390
	lea	rdi, [rbp - 0x50]
	mov	edx, dword ptr [rbp - 0x2c]
	mov	al, 0
	call	sprintf
	mov	dword ptr [rbp - 0x70], eax
.label_388:
	movabs	rdi, OFFSET FLAT:label_393
	mov	eax, dword ptr [rbp - 0x2c]
	add	eax, 0x80
	mov	dword ptr [rbp - 0x74], eax
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x80], rax
	call	quotearg_n_style_colon
	xor	esi, esi
	lea	r8, [rbp - 0x50]
	mov	r9,  qword ptr [word ptr [filter_command]]
	mov	edi, dword ptr [rbp - 0x74]
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_381:
	jmp	.label_383
.label_395:
	mov	eax, dword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 0x58], eax
	mov	eax, dword ptr [rbp - 0x58]
	and	eax, 0x7f
	cmp	eax, 0
	jne	.label_385
	mov	eax, dword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 0x60], eax
	mov	eax, dword ptr [rbp - 0x60]
	and	eax, 0xff00
	sar	eax, 8
	mov	dword ptr [rbp - 0x5c], eax
	cmp	dword ptr [rbp - 0x5c], 0
	je	.label_391
	movabs	rdi, OFFSET FLAT:label_394
	mov	eax, dword ptr [rbp - 0x5c]
	mov	dword ptr [rbp - 0x84], eax
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x90], rax
	call	quotearg_n_style_colon
	xor	esi, esi
	mov	r8d, dword ptr [rbp - 0x5c]
	mov	r9,  qword ptr [word ptr [filter_command]]
	mov	edi, dword ptr [rbp - 0x84]
	mov	rdx, qword ptr [rbp - 0x90]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_391:
	jmp	.label_387
.label_385:
	movabs	rdi, OFFSET FLAT:label_379
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	ecx, dword ptr [rbp - 0x20]
	add	ecx, 0
	mov	rdx, rax
	mov	al, 0
	call	error
.label_387:
	jmp	.label_383
.label_383:
	jmp	.label_380
.label_380:
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405600

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
	je	.label_396
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rcx + 0x18]
	and	edx, 0xf000
	cmp	edx, 0xa000
	mov	byte ptr [rbp - 9], al
	je	.label_396
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rcx + 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	edx, dword ptr [rcx + 0x18]
	cmp	edx, 0
	mov	byte ptr [rbp - 9], al
	jne	.label_396
	xor	eax, eax
	mov	cl, al
	mov	byte ptr [rbp - 9], cl
	jmp	.label_396
.label_396:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405680

	.globl cwrite
	.type cwrite, @function
cwrite:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	al, dil
	and	al, 1
	mov	byte ptr [rbp - 2], al
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	test	byte ptr [rbp - 2], 1
	je	.label_397
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_400
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_400
	test	byte ptr [byte ptr [elide_empty_files]],  1
	je	.label_400
	mov	byte ptr [rbp - 1], 1
	jmp	.label_398
.label_400:
	xor	eax, eax
	mov	edi, eax
	mov	esi,  dword ptr [dword ptr [output_desc]]
	mov	edx,  dword ptr [dword ptr [filter_pid]]
	mov	rcx,  qword ptr [word ptr [outfile]]
	call	closeout
	call	next_file_name
	mov	rdi,  qword ptr [word ptr [outfile]]
	call	create
	mov	dword ptr [dword ptr [output_desc]],  eax
	cmp	dword ptr [dword ptr [output_desc]],  0
	jge	.label_402
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [outfile]]
	mov	dword ptr [rbp - 0x1c], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_40
	mov	esi, dword ptr [rbp - 0x1c]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_402:
	jmp	.label_397
.label_397:
	mov	edi,  dword ptr [dword ptr [output_desc]]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	full_write
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_401
	mov	byte ptr [rbp - 1], 1
	jmp	.label_398
.label_401:
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	ignorable
	test	al, 1
	jne	.label_399
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [outfile]]
	mov	dword ptr [rbp - 0x20], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_40
	mov	esi, dword ptr [rbp - 0x20]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_399:
	mov	byte ptr [rbp - 1], 0
.label_398:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4057e0

	.globl next_file_name
	.type next_file_name, @function
next_file_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	cmp	qword ptr [word ptr [outfile]],  0
	jne	.label_422
	jmp	.label_403
.label_403:
	cmp	qword ptr [word ptr [next_file_name.outfile_length]],  0
	setne	al
	xor	al, 0xff
	xor	al, 0xff
	and	al, 1
	mov	byte ptr [rbp - 1], al
	test	byte ptr [rbp - 1], 1
	jne	.label_425
	mov	rdi,  qword ptr [word ptr [outbase]]
	call	strlen
	mov	qword ptr [word ptr [next_file_name.outbase_length]],  rax
	cmp	qword ptr [word ptr [additional_suffix]],  0
	je	.label_410
	mov	rdi,  qword ptr [word ptr [additional_suffix]]
	call	strlen
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_419
.label_410:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x28], rcx
	jmp	.label_419
.label_419:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [word ptr [next_file_name.addsuf_length]],  rax
	mov	rax,  qword ptr [word ptr [next_file_name.outbase_length]]
	add	rax,  qword ptr [word ptr [suffix_length]]
	add	rax,  qword ptr [word ptr [next_file_name.addsuf_length]]
	mov	qword ptr [word ptr [next_file_name.outfile_length]],  rax
	jmp	.label_423
.label_425:
	mov	rax,  qword ptr [word ptr [next_file_name.outfile_length]]
	add	rax, 2
	mov	qword ptr [word ptr [next_file_name.outfile_length]],  rax
	mov	rax,  qword ptr [word ptr [suffix_length]]
	add	rax, 1
	mov	qword ptr [word ptr [suffix_length]],  rax
.label_423:
	mov	rax,  qword ptr [word ptr [next_file_name.outfile_length]]
	add	rax, 1
	cmp	rax,  qword ptr [word ptr [next_file_name.outbase_length]]
	jae	.label_413
	call	xalloc_die
.label_413:
	mov	rdi,  qword ptr [word ptr [outfile]]
	mov	rax,  qword ptr [word ptr [next_file_name.outfile_length]]
	add	rax, 1
	mov	rsi, rax
	call	xrealloc
	mov	qword ptr [word ptr [outfile]],  rax
	test	byte ptr [rbp - 1], 1
	jne	.label_424
	mov	rdi,  qword ptr [word ptr [outfile]]
	mov	rsi,  qword ptr [word ptr [outbase]]
	mov	rdx,  qword ptr [word ptr [next_file_name.outbase_length]]
	call	memcpy
	jmp	.label_408
.label_424:
	mov	rax,  qword ptr [word ptr [next_file_name.sufindex]]
	mov	rax, qword ptr [rax]
	mov	rcx,  qword ptr [word ptr [suffix_alphabet]]
	mov	dl, byte ptr [rcx + rax]
	mov	rax,  qword ptr [word ptr [next_file_name.outbase_length]]
	mov	rcx,  qword ptr [word ptr [outfile]]
	mov	byte ptr [rcx + rax], dl
	mov	rax,  qword ptr [word ptr [next_file_name.outbase_length]]
	add	rax, 1
	mov	qword ptr [word ptr [next_file_name.outbase_length]],  rax
.label_408:
	mov	rax,  qword ptr [word ptr [outfile]]
	add	rax,  qword ptr [word ptr [next_file_name.outbase_length]]
	mov	qword ptr [word ptr [outfile_mid]],  rax
	mov	rdi,  qword ptr [word ptr [outfile_mid]]
	mov	rax,  qword ptr [word ptr [suffix_alphabet]]
	movsx	ecx, byte ptr [rax]
	mov	dl, cl
	mov	rax,  qword ptr [word ptr [suffix_length]]
	movzx	esi, dl
	mov	rdx, rax
	call	memset
	cmp	qword ptr [word ptr [additional_suffix]],  0
	je	.label_409
	mov	rax,  qword ptr [word ptr [outfile_mid]]
	add	rax,  qword ptr [word ptr [suffix_length]]
	mov	rsi,  qword ptr [word ptr [additional_suffix]]
	mov	rdx,  qword ptr [word ptr [next_file_name.addsuf_length]]
	mov	rdi, rax
	call	memcpy
.label_409:
	mov	rax,  qword ptr [word ptr [next_file_name.outfile_length]]
	mov	rcx,  qword ptr [word ptr [outfile]]
	mov	byte ptr [rcx + rax], 0
	mov	rax,  qword ptr [word ptr [next_file_name.sufindex]]
	mov	rdi, rax
	call	free
	mov	edx, 8
	mov	esi, edx
	mov	rdi,  qword ptr [word ptr [suffix_length]]
	call	xcalloc
	mov	qword ptr [word ptr [next_file_name.sufindex]],  rax
	cmp	qword ptr [word ptr [numeric_suffix_start]],  0
	je	.label_404
	test	byte ptr [rbp - 1], 1
	jne	.label_411
	jmp	.label_412
.label_411:
	movabs	rdi, OFFSET FLAT:label_414
	movabs	rsi, OFFSET FLAT:label_284
	mov	edx, 0x198
	movabs	rcx, OFFSET FLAT:label_415
	call	__assert_fail
.label_412:
	xor	eax, eax
	mov	ecx, eax
	mov	rdi,  qword ptr [word ptr [numeric_suffix_start]]
	mov	qword ptr [rbp - 0x30], rcx
	call	strlen
	mov	qword ptr [rbp - 0x10], rax
	mov	rax,  qword ptr [word ptr [outfile_mid]]
	add	rax,  qword ptr [word ptr [suffix_length]]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x10]
	add	rax, rcx
	mov	rsi,  qword ptr [word ptr [numeric_suffix_start]]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	memcpy
	mov	rax,  qword ptr [word ptr [next_file_name.sufindex]]
	mov	rcx,  qword ptr [word ptr [suffix_length]]
	shl	rcx, 3
	add	rax, rcx
	mov	qword ptr [rbp - 0x18], rax
.label_417:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x10], rcx
	cmp	rax, 0
	je	.label_418
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [numeric_suffix_start]]
	movsx	edx, byte ptr [rcx + rax]
	sub	edx, 0x30
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsi, rcx
	add	rsi, -8
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rcx - 8], rax
	jmp	.label_417
.label_418:
	jmp	.label_404
.label_404:
	jmp	.label_420
.label_422:
	mov	rax,  qword ptr [word ptr [suffix_length]]
	mov	qword ptr [rbp - 0x20], rax
.label_421:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x20], rcx
	cmp	rax, 0
	je	.label_407
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx,  qword ptr [word ptr [next_file_name.sufindex]]
	mov	rdx, qword ptr [rcx + rax*8]
	add	rdx, 1
	mov	qword ptr [rcx + rax*8], rdx
	test	byte ptr [byte ptr [suffix_auto]],  1
	je	.label_416
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_416
	mov	rax,  qword ptr [word ptr [next_file_name.sufindex]]
	mov	rax, qword ptr [rax]
	mov	rcx,  qword ptr [word ptr [suffix_alphabet]]
	cmp	byte ptr [rcx + rax + 1], 0
	jne	.label_416
	jmp	.label_403
.label_416:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx,  qword ptr [word ptr [next_file_name.sufindex]]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx,  qword ptr [word ptr [suffix_alphabet]]
	mov	dl, byte ptr [rcx + rax]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx,  qword ptr [word ptr [outfile_mid]]
	mov	byte ptr [rcx + rax], dl
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx,  qword ptr [word ptr [outfile_mid]]
	cmp	byte ptr [rcx + rax], 0
	je	.label_405
	jmp	.label_420
.label_405:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx,  qword ptr [word ptr [next_file_name.sufindex]]
	mov	qword ptr [rcx + rax*8], 0
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx,  qword ptr [word ptr [next_file_name.sufindex]]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx,  qword ptr [word ptr [suffix_alphabet]]
	mov	dl, byte ptr [rcx + rax]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx,  qword ptr [word ptr [outfile_mid]]
	mov	byte ptr [rcx + rax], dl
	jmp	.label_421
.label_407:
	movabs	rdi, OFFSET FLAT:label_406
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_420:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405c40

	.globl create
	.type create, @function
create:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x150
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [word ptr [filter_command]],  0
	jne	.label_434
	test	byte ptr [byte ptr [verbose]],  1
	je	.label_439
	movabs	rdi, OFFSET FLAT:label_442
	mov	rax,  qword ptr [word ptr [stdout]]
	mov	qword ptr [rbp - 0xd0], rax
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xd8], rax
	call	quotearg_style
	mov	rdi, qword ptr [rbp - 0xd0]
	mov	rsi, qword ptr [rbp - 0xd8]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xdc], eax
.label_439:
	mov	esi, 0x41
	mov	edx, 0x1b6
	mov	rdi, qword ptr [rbp - 0x10]
	mov	al, 0
	call	open_safer
	mov	dword ptr [rbp - 0x14], eax
	cmp	dword ptr [rbp - 0x14], 0
	jge	.label_458
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_436
.label_458:
	lea	rsi, [rbp - 0xa8]
	mov	edi, dword ptr [rbp - 0x14]
	call	fstat
	cmp	eax, 0
	je	.label_466
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_428
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xe0], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xe8], rax
	call	quotearg_style
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0xe0]
	mov	rdx, qword ptr [rbp - 0xe8]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_466:
	mov	rax,  qword ptr [word ptr [label_462]]
	cmp	rax, qword ptr [rbp - 0xa0]
	jne	.label_441
	mov	rax,  qword ptr [word ptr [in_stat_buf]]
	cmp	rax, qword ptr [rbp - 0xa8]
	jne	.label_441
	movabs	rdi, OFFSET FLAT:label_460
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xf0], rax
	call	quotearg_style
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0xf0]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_441:
	xor	eax, eax
	mov	esi, eax
	mov	edi, dword ptr [rbp - 0x14]
	call	ftruncate
	cmp	eax, 0
	je	.label_453
	mov	eax, dword ptr [rbp - 0x90]
	and	eax, 0xf000
	cmp	eax, 0x8000
	je	.label_455
	mov	eax, dword ptr [rbp - 0x90]
	sub	eax, dword ptr [rbp - 0x90]
	cmp	eax, 0
	je	.label_453
.label_455:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_467
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xf4], esi
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x100], rax
	call	quotearg_n_style_colon
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0xf4]
	mov	rdx, qword ptr [rbp - 0x100]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_453:
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_436
.label_434:
	movabs	rdi, OFFSET FLAT:label_437
	call	getenv
	mov	qword ptr [rbp - 0xc0], rax
	cmp	qword ptr [rbp - 0xc0], 0
	jne	.label_432
	movabs	rax, OFFSET FLAT:label_444
	mov	qword ptr [rbp - 0xc0], rax
.label_432:
	movabs	rdi, OFFSET FLAT:label_447
	mov	edx, 1
	mov	rsi, qword ptr [rbp - 0x10]
	call	setenv
	cmp	eax, 0
	je	.label_449
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_450
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x104], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x104]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_449:
	test	byte ptr [byte ptr [verbose]],  1
	je	.label_459
	movabs	rdi, OFFSET FLAT:label_463
	mov	rax,  qword ptr [word ptr [stdout]]
	mov	qword ptr [rbp - 0x110], rax
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x118], rax
	call	quotearg_n_style_colon
	mov	rdi, qword ptr [rbp - 0x110]
	mov	rsi, qword ptr [rbp - 0x118]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x11c], eax
.label_459:
	lea	rdi, [rbp - 0xb0]
	call	pipe
	cmp	eax, 0
	je	.label_435
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_438
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x120], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x120]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_435:
	call	fork
	mov	dword ptr [rbp - 0xb4], eax
	cmp	dword ptr [rbp - 0xb4], 0
	jne	.label_446
	mov	dword ptr [rbp - 0xc4], 0
.label_429:
	movsxd	rax, dword ptr [rbp - 0xc4]
	cmp	rax,  qword ptr [word ptr [n_open_pipes]]
	jae	.label_451
	movsxd	rax, dword ptr [rbp - 0xc4]
	mov	rcx,  qword ptr [word ptr [open_pipes]]
	mov	edi, dword ptr [rcx + rax*4]
	call	close
	cmp	eax, 0
	je	.label_456
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_461
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x124], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x124]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_456:
	jmp	.label_427
.label_427:
	mov	eax, dword ptr [rbp - 0xc4]
	add	eax, 1
	mov	dword ptr [rbp - 0xc4], eax
	jmp	.label_429
.label_451:
	mov	edi, dword ptr [rbp - 0xac]
	call	close
	cmp	eax, 0
	je	.label_430
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_445
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x128], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x128]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_430:
	cmp	dword ptr [rbp - 0xb0], 0
	je	.label_440
	xor	esi, esi
	mov	edi, dword ptr [rbp - 0xb0]
	call	dup2
	cmp	eax, 0
	je	.label_464
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_448
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x12c], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x12c]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_464:
	mov	edi, dword ptr [rbp - 0xb0]
	call	close
	cmp	eax, 0
	je	.label_454
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_457
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x130], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x130]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_454:
	jmp	.label_440
.label_440:
	mov	edi, 2
	movabs	rsi, OFFSET FLAT:oldblocked
	xor	eax, eax
	mov	edx, eax
	call	sigprocmask
	mov	rdi, qword ptr [rbp - 0xc0]
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0x138], rdi
	mov	rdi, rdx
	mov	dword ptr [rbp - 0x13c], eax
	call	last_component
	movabs	rdx, OFFSET FLAT:label_433
	xor	ecx, ecx
	mov	r8d, ecx
	mov	rcx,  qword ptr [word ptr [filter_command]]
	mov	rdi, qword ptr [rbp - 0x138]
	mov	rsi, rax
	mov	al, 0
	call	execl
	mov	dword ptr [rbp - 0x140], eax
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_443
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x144], esi
	call	gettext
	mov	edi, 1
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	r8,  qword ptr [word ptr [filter_command]]
	mov	esi, dword ptr [rbp - 0x144]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_446:
	cmp	dword ptr [rbp - 0xb4], -1
	jne	.label_468
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_452
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x148], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x148]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_468:
	mov	edi, dword ptr [rbp - 0xb0]
	call	close
	cmp	eax, 0
	je	.label_465
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_426
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x14c], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x14c]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_465:
	mov	eax, dword ptr [rbp - 0xb4]
	mov	dword ptr [dword ptr [filter_pid]],  eax
	mov	rcx,  qword ptr [word ptr [n_open_pipes]]
	cmp	rcx,  qword ptr [word ptr [open_pipes_alloc]]
	jne	.label_431
	movabs	rsi, OFFSET FLAT:open_pipes_alloc
	mov	eax, 4
	mov	edx, eax
	mov	rcx,  qword ptr [word ptr [open_pipes]]
	mov	rdi, rcx
	call	x2nrealloc
	mov	qword ptr [word ptr [open_pipes]],  rax
.label_431:
	mov	eax, dword ptr [rbp - 0xac]
	mov	rcx,  qword ptr [word ptr [n_open_pipes]]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [word ptr [n_open_pipes]],  rdx
	mov	rdx,  qword ptr [word ptr [open_pipes]]
	mov	dword ptr [rdx + rcx*4], eax
	mov	eax, dword ptr [rbp - 0xac]
	mov	dword ptr [rbp - 4], eax
.label_436:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x150
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4062c0

	.globl ignorable
	.type ignorable, @function
ignorable:
	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	cl, al
	mov	dword ptr [rbp - 4], edi
	cmp	qword ptr [word ptr [filter_command]],  0
	mov	byte ptr [rbp - 5], cl
	je	.label_469
	cmp	dword ptr [rbp - 4], 0x20
	sete	al
	mov	byte ptr [rbp - 5], al
.label_469:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406300

	.globl ofile_open
	.type ofile_open, @function
ofile_open:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rbp - 0x19], 0
	mov	rdx, qword ptr [rbp - 0x10]
	shl	rdx, 5
	add	rdx, qword ptr [rbp - 8]
	cmp	dword ptr [rdx + 8], -1
	jg	.label_470
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_481
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_485
.label_481:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	qword ptr [rbp - 0x30], rax
.label_485:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
.label_477:
	mov	rax, qword ptr [rbp - 0x10]
	shl	rax, 5
	add	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 8], -1
	jne	.label_482
	mov	rax, qword ptr [rbp - 0x10]
	shl	rax, 5
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	call	create
	mov	dword ptr [rbp - 0x20], eax
	jmp	.label_472
.label_482:
	mov	esi, 0xc01
	mov	rax, qword ptr [rbp - 0x10]
	shl	rax, 5
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	mov	al, 0
	call	open_safer
	mov	dword ptr [rbp - 0x20], eax
.label_472:
	mov	eax, 0xffffffff
	cmp	eax, dword ptr [rbp - 0x20]
	jge	.label_476
	jmp	.label_486
.label_476:
	call	__errno_location
	cmp	dword ptr [rax], 0x18
	je	.label_475
	call	__errno_location
	cmp	dword ptr [rax], 0x17
	je	.label_475
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x10]
	shl	rax, 5
	add	rax, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rax]
	mov	dword ptr [rbp - 0x34], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_40
	mov	esi, dword ptr [rbp - 0x34]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_475:
	mov	byte ptr [rbp - 0x19], 1
.label_483:
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 5
	add	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 8], 0
	jge	.label_479
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_484
	mov	rax, qword ptr [rbp - 0x28]
	sub	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_474
.label_484:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	qword ptr [rbp - 0x40], rax
.label_474:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_478
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x10]
	shl	rax, 5
	add	rax, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rax]
	mov	dword ptr [rbp - 0x44], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_40
	mov	esi, dword ptr [rbp - 0x44]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_478:
	jmp	.label_483
.label_479:
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 5
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 0x10]
	call	rpl_fclose
	cmp	eax, 0
	je	.label_473
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 5
	add	rax, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rax]
	mov	dword ptr [rbp - 0x48], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_40
	mov	esi, dword ptr [rbp - 0x48]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_473:
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 5
	add	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 5
	add	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 8], 0xfffffffe
	jmp	.label_477
.label_486:
	movabs	rsi, OFFSET FLAT:label_471
	mov	eax, dword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	shl	rcx, 5
	add	rcx, qword ptr [rbp - 8]
	mov	dword ptr [rcx + 8], eax
	mov	edi, dword ptr [rbp - 0x20]
	call	fdopen
	mov	rcx, qword ptr [rbp - 0x10]
	shl	rcx, 5
	add	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x10], rax
	cmp	rax, 0
	jne	.label_480
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x10]
	shl	rax, 5
	add	rax, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rax]
	mov	dword ptr [rbp - 0x4c], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_40
	mov	esi, dword ptr [rbp - 0x4c]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_480:
	mov	eax,  dword ptr [dword ptr [filter_pid]]
	mov	rcx, qword ptr [rbp - 0x10]
	shl	rcx, 5
	add	rcx, qword ptr [rbp - 8]
	mov	dword ptr [rcx + 0x18], eax
	mov	dword ptr [dword ptr [filter_pid]],  0
.label_470:
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406600
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
	#Procedure 0x406620
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
	#Procedure 0x406640

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	close_stream
	cmp	eax, 0
	je	.label_490
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_491
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	je	.label_490
.label_491:
	movabs	rdi, OFFSET FLAT:label_301
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_488
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_159
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_489
.label_488:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_40
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	call	error
.label_489:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_490:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_487
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_487:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406730

	.globl last_component
	.type last_component, @function
last_component:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	byte ptr [rbp - 0x19], 0
.label_498:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_492
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_498
.label_492:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_494:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	je	.label_495
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_499
	mov	byte ptr [rbp - 0x19], 1
	jmp	.label_493
.label_499:
	test	byte ptr [rbp - 0x19], 1
	je	.label_497
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x10], rax
	mov	byte ptr [rbp - 0x19], 0
.label_497:
	jmp	.label_493
.label_493:
	jmp	.label_496
.label_496:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_494
.label_495:
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4067d0
	.globl base_len
	.type base_len, @function
base_len:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], 0
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	mov	qword ptr [rbp - 0x10], rax
.label_503:
	xor	eax, eax
	mov	cl, al
	mov	eax, 1
	mov	edx, eax
	cmp	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 0x19], cl
	jae	.label_500
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	sete	sil
	mov	byte ptr [rbp - 0x19], sil
.label_500:
	mov	al, byte ptr [rbp - 0x19]
	test	al, 1
	jne	.label_501
	jmp	.label_504
.label_501:
	jmp	.label_502
.label_502:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, -1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_503
.label_504:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406860

	.globl open_safer
	.type open_safer, @function
open_safer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1b0
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
	mov	dword ptr [rbp - 0x18c], esi
	je	.label_505
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
.label_505:
	mov	rax, qword ptr [rbp - 0x170]
	mov	qword ptr [rbp - 0xb8], rax
	mov	rcx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0xc0], rcx
	mov	rdx, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rdx
	mov	rsi, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0xd0], rsi
	mov	edi, dword ptr [rbp - 0x18c]
	mov	r8, qword ptr [rbp - 0x168]
	mov	qword ptr [rbp - 8], r8
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], 0
	mov	edi, dword ptr [rbp - 0xc]
	and	edi, 0x40
	cmp	edi, 0
	je	.label_506
	lea	rax, [rbp - 0x30]
	mov	rcx, rax
	lea	rdx, [rbp - 0xe0]
	mov	qword ptr [rcx + 0x10], rdx
	lea	rdx, [rbp + 0x10]
	mov	qword ptr [rcx + 8], rdx
	mov	dword ptr [rcx + 4], 0x30
	mov	dword ptr [rcx], 0x10
	mov	esi, dword ptr [rbp - 0x30]
	cmp	esi, 0x28
	mov	qword ptr [rbp - 0x198], rax
	mov	dword ptr [rbp - 0x19c], esi
	ja	.label_507
	mov	eax, dword ptr [rbp - 0x19c]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x198]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1a8], rcx
	jmp	.label_508
.label_507:
	mov	rax, qword ptr [rbp - 0x198]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1a8], rdx
.label_508:
	mov	rax, qword ptr [rbp - 0x1a8]
	lea	rcx, [rbp - 0x30]
	mov	edx, dword ptr [rax]
	mov	dword ptr [rbp - 0x10], edx
	mov	qword ptr [rbp - 0x1b0], rcx
.label_506:
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	edx, dword ptr [rbp - 0x10]
	xor	eax, eax
	mov	cl, al
	mov	al, cl
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0x1b0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406a60

	.globl fd_reopen
	.type fd_reopen, @function
fd_reopen:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	dword ptr [rbp - 0x18], ecx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	mov	edx, dword ptr [rbp - 0x18]
	mov	al, 0
	call	open
	mov	dword ptr [rbp - 0x1c], eax
	mov	eax, dword ptr [rbp - 0x1c]
	cmp	eax, dword ptr [rbp - 8]
	je	.label_510
	cmp	dword ptr [rbp - 0x1c], 0
	jge	.label_509
.label_510:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_511
.label_509:
	mov	edi, dword ptr [rbp - 0x1c]
	mov	esi, dword ptr [rbp - 8]
	call	dup2
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], esi
	mov	edi, dword ptr [rbp - 0x1c]
	call	close
	mov	esi, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x28], eax
	mov	dword ptr [rbp - 0x2c], esi
	call	__errno_location
	mov	esi, dword ptr [rbp - 0x2c]
	mov	dword ptr [rax], esi
	mov	esi, dword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 4], esi
.label_511:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406af0

	.globl full_write
	.type full_write, @function
full_write:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], 0
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rdx
.label_514:
	cmp	qword ptr [rbp - 0x18], 0
	jbe	.label_513
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x18]
	call	safe_write
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_515
	jmp	.label_513
.label_515:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_512
	call	__errno_location
	mov	dword ptr [rax], 0x1c
	jmp	.label_513
.label_512:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_514
.label_513:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406ba0

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	add	rsi, 0x14
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi], 0
	cmp	qword ptr [rbp - 8], 0
	jae	.label_516
	jmp	.label_519
.label_519:
	mov	eax, 0x30
	mov	ecx, eax
	mov	eax, 0xa
	mov	edx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	esi, esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	edx, esi
	mov	rdi, qword ptr [rbp - 0x20]
	div	rdi
	sub	rcx, rdx
	mov	r8b, cl
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rcx - 1], r8b
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	div	rcx
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_519
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax - 1], 0x2d
	jmp	.label_518
.label_516:
	jmp	.label_517
.label_517:
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	div	rcx
	add	rdx, 0x30
	mov	sil, dl
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rcx - 1], sil
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	div	rcx
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_517
	jmp	.label_518
.label_518:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406ca0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_520
	movabs	rdi, OFFSET FLAT:label_527
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x1c], eax
	call	abort
.label_520:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	call	strrchr
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_521
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_525
.label_521:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_525:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cmp	rax, 7
	jl	.label_522
	movabs	rsi, OFFSET FLAT:label_524
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, -7
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_522
	movabs	rsi, OFFSET FLAT:label_523
	mov	eax, 3
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_526
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname]],  rax
.label_526:
	jmp	.label_522
.label_522:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406dc0
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
	je	.label_528
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_529
.label_528:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_529
.label_529:
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
	#Procedure 0x406e40
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_530
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_531
.label_530:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_531
.label_531:
	mov	rax, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406e80
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
	je	.label_532
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_533
.label_532:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_533
.label_533:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406ed0

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
	je	.label_534
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_535
.label_534:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_535
.label_535:
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
	#Procedure 0x406f80
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_536
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_536:
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
	#Procedure 0x406fc0

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
	jne	.label_537
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_537:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_539
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_538
.label_539:
	call	abort
.label_538:
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
	#Procedure 0x407030
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
	je	.label_540
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_541
.label_540:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_541
.label_541:
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
	#Procedure 0x407100

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
.label_716:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_620
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_680]]
	jmp	rcx
.label_1126:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_1125:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_643
	jmp	.label_637
.label_637:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_638
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_638:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_643
.label_643:
	movabs	rax, OFFSET FLAT:label_646
	mov	byte ptr [rbp - 0x79], 1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_647
.label_1127:
	mov	byte ptr [rbp - 0x79], 1
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_647
.label_1128:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_656
	movabs	rdi, OFFSET FLAT:label_661
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	movabs	rdi, OFFSET FLAT:label_665
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_656:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_584
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_691:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_675
	jmp	.label_678
.label_678:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_681
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_681:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_686
.label_686:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_691
.label_675:
	jmp	.label_584
.label_584:
	mov	byte ptr [rbp - 0x79], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_647
.label_1123:
	mov	byte ptr [rbp - 0x79], 1
.label_1122:
	mov	byte ptr [rbp - 0x7b], 1
.label_1124:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_700
	mov	byte ptr [rbp - 0x79], 1
.label_700:
	jmp	.label_657
.label_657:
	mov	dword ptr [rbp - 0x34], 2
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_666
	jmp	.label_704
.label_704:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_705
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_705:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_666
.label_666:
	movabs	rax, OFFSET FLAT:label_665
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_647
.label_1121:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_647
.label_620:
	call	abort
.label_647:
	mov	qword ptr [rbp - 0x58], 0
.label_689:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_721
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_724
.label_721:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], edx
.label_724:
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_734
	jmp	.label_710
.label_734:
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	je	.label_542
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_542
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_542
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	jne	.label_547
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_547
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_634
.label_547:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_634:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	ja	.label_542
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_542
	test	byte ptr [rbp - 0x7b], 1
	je	.label_570
	jmp	.label_573
.label_570:
	mov	byte ptr [rbp - 0x81], 1
.label_542:
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
	ja	.label_557
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_585]]
	jmp	rcx
.label_1185:
	test	byte ptr [rbp - 0x79], 1
	je	.label_586
	jmp	.label_590
.label_590:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_651
	jmp	.label_573
.label_651:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_598
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_598
	jmp	.label_600
.label_600:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_708
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_708:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_606
.label_606:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_609
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_609:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_741
.label_741:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_617
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_617:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_598:
	jmp	.label_625
.label_625:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_627
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_627:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_636
.label_636:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_640
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_640
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_640
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x39
	jg	.label_640
	jmp	.label_654
.label_654:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_602
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_602:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_664
.label_664:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_669
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_669:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_640
.label_640:
	mov	byte ptr [rbp - 0x7f], 0x30
	jmp	.label_679
.label_586:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_683
	jmp	.label_685
.label_683:
	jmp	.label_679
.label_679:
	jmp	.label_544
.label_1196:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0x100], ecx
	je	.label_687
	jmp	.label_694
.label_694:
	mov	eax, dword ptr [rbp - 0xfc]
	sub	eax, 5
	mov	dword ptr [rbp - 0x104], eax
	je	.label_695
	jmp	.label_697
.label_687:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_711
	jmp	.label_573
.label_711:
	jmp	.label_575
.label_695:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_572
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_572
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3f
	jne	.label_572
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 2]
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	je	.label_652
	jmp	.label_715
.label_715:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	jb	.label_652
	jmp	.label_718
.label_718:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	je	.label_652
	jmp	.label_725
.label_725:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2f
	mov	dword ptr [rbp - 0x118], eax
	je	.label_652
	jmp	.label_730
.label_730:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	ja	.label_731
	jmp	.label_652
.label_652:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_736
	jmp	.label_573
.label_736:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_740
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_740:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_545
.label_545:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_549
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_549:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_555
.label_555:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_561
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_561:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_565
.label_565:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_712
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_712:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_568
.label_731:
	jmp	.label_568
.label_568:
	jmp	.label_572
.label_572:
	jmp	.label_575
.label_697:
	jmp	.label_575
.label_575:
	jmp	.label_544
.label_1186:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_578
.label_1187:
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_578
.label_1191:
	mov	byte ptr [rbp - 0x80], 0x66
	jmp	.label_578
.label_1189:
	mov	byte ptr [rbp - 0x80], 0x6e
	jmp	.label_583
.label_1192:
	mov	byte ptr [rbp - 0x80], 0x72
	jmp	.label_583
.label_1188:
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_583
.label_1190:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_578
.label_1197:
	mov	al, byte ptr [rbp - 0x7f]
	mov	byte ptr [rbp - 0x80], al
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_588
	test	byte ptr [rbp - 0x7b], 1
	je	.label_593
	jmp	.label_573
.label_593:
	jmp	.label_569
.label_588:
	test	byte ptr [rbp - 0x79], 1
	je	.label_596
	test	byte ptr [rbp - 0x7b], 1
	je	.label_596
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_596
	jmp	.label_569
.label_596:
	jmp	.label_583
.label_583:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_604
	test	byte ptr [rbp - 0x7b], 1
	je	.label_604
	jmp	.label_573
.label_604:
	jmp	.label_578
.label_578:
	test	byte ptr [rbp - 0x79], 1
	je	.label_610
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_592
.label_610:
	jmp	.label_544
.label_1198:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_615
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_618
	jmp	.label_622
.label_615:
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_618
.label_622:
	jmp	.label_544
.label_618:
	jmp	.label_624
.label_624:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_626
	jmp	.label_544
.label_626:
	jmp	.label_631
.label_631:
	mov	byte ptr [rbp - 0x83], 1
.label_1193:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_635
	test	byte ptr [rbp - 0x7b], 1
	je	.label_635
	jmp	.label_573
.label_635:
	jmp	.label_544
.label_1195:
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_641
	test	byte ptr [rbp - 0x7b], 1
	je	.label_645
	jmp	.label_573
.label_645:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_577
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_577
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_577:
	jmp	.label_659
.label_659:
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
	jmp	.label_668
.label_668:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_671
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_671:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_677
.label_677:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_684
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_684:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_641:
	jmp	.label_544
.label_1194:
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_544
.label_557:
	test	byte ptr [rbp - 0x7a], 1
	je	.label_605
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
	jmp	.label_582
.label_605:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_709
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_709:
	jmp	.label_619
.label_619:
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
	jne	.label_728
	jmp	.label_563
.label_728:
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_733
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_563
.label_733:
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_738
	mov	byte ptr [rbp - 0x91], 0
.label_556:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_742
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_742:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_551
	jmp	.label_553
.label_551:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_556
.label_553:
	jmp	.label_563
.label_738:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_564
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_564
	mov	qword ptr [rbp - 0xb8], 1
.label_599:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_566
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
	jb	.label_558
	jmp	.label_580
.label_580:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x138], eax
	je	.label_558
	jmp	.label_603
.label_603:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_558
	jmp	.label_587
.label_587:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_589
	jmp	.label_558
.label_558:
	jmp	.label_573
.label_589:
	jmp	.label_688
.label_688:
	jmp	.label_696
.label_696:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_599
.label_566:
	jmp	.label_564
.label_564:
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_607
	mov	byte ptr [rbp - 0x91], 0
.label_607:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_554
.label_554:
	jmp	.label_612
.label_612:
	jmp	.label_614
.label_614:
	lea	rdi, [rbp - 0xa0]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_619
.label_563:
	jmp	.label_582
.label_582:
	mov	eax, 1
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	jb	.label_623
	test	byte ptr [rbp - 0x79], 1
	je	.label_633
	test	byte ptr [rbp - 0x91], 1
	jne	.label_633
.label_623:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_581:
	test	byte ptr [rbp - 0x79], 1
	je	.label_642
	test	byte ptr [rbp - 0x91], 1
	jne	.label_642
	jmp	.label_552
.label_552:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_648
	jmp	.label_573
.label_648:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_650
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_650
	jmp	.label_658
.label_658:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_660
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_660:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_667
.label_667:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_670
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_670:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_676
.label_676:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_682
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_682:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_650:
	jmp	.label_690
.label_690:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_692
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_692:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_630
.label_630:
	jmp	.label_698
.label_698:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_699
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 6
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_699:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_702
.label_702:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_707
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 3
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_707:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_713
.label_642:
	test	byte ptr [rbp - 0x81], 1
	je	.label_717
	jmp	.label_720
.label_720:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_722
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_722:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x81], 0
.label_717:
	jmp	.label_713
.label_713:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_732
	jmp	.label_735
.label_732:
	jmp	.label_737
.label_737:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_739
	test	byte ptr [rbp - 0x82], 1
	jne	.label_739
	jmp	.label_743
.label_743:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_744
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_744:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_543
.label_543:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_548
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_548:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_739:
	jmp	.label_559
.label_559:
	jmp	.label_560
.label_560:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_562
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_562:
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
	jmp	.label_581
.label_735:
	jmp	.label_569
.label_633:
	jmp	.label_544
.label_544:
	test	byte ptr [rbp - 0x79], 1
	je	.label_571
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_574
.label_571:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_576
.label_574:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_576
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
	jne	.label_579
.label_576:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_579
	jmp	.label_569
.label_579:
	jmp	.label_592
.label_592:
	jmp	.label_594
.label_594:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_595
	jmp	.label_573
.label_595:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_597
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_597
	jmp	.label_601
.label_601:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_726
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_726:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_608
.label_608:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_611
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_611:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_616
.label_616:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_621
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_621:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_597:
	jmp	.label_629
.label_629:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_632
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_632:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_639
.label_639:
	jmp	.label_569
.label_569:
	jmp	.label_706
.label_706:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_644
	test	byte ptr [rbp - 0x82], 1
	jne	.label_644
	jmp	.label_567
.label_567:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_649
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_649:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_655
.label_655:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_662
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_662:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_644:
	jmp	.label_672
.label_672:
	jmp	.label_673
.label_673:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_674
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_674:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x83], 1
	jne	.label_719
	mov	byte ptr [rbp - 0x7e], 0
.label_719:
	jmp	.label_685
.label_685:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_689
.label_710:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_693
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_693
	test	byte ptr [rbp - 0x7b], 1
	je	.label_693
	jmp	.label_573
.label_693:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_628
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_628
	test	byte ptr [rbp - 0x7d], 1
	je	.label_628
	test	byte ptr [rbp - 0x7e], 1
	je	.label_701
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
	jmp	.label_546
.label_701:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_714
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_714
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_716
.label_714:
	jmp	.label_591
.label_591:
	jmp	.label_628
.label_628:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_723
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_723
	jmp	.label_727
.label_727:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_729
	jmp	.label_653
.label_653:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_663
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_663:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_703
.label_703:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_727
.label_729:
	jmp	.label_723
.label_723:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_745
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_745:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_546
.label_573:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_550
	test	byte ptr [rbp - 0x79], 1
	je	.label_550
	mov	dword ptr [rbp - 0x34], 4
.label_550:
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
.label_546:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4084a0
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
	#Procedure 0x4084e0

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
	je	.label_746
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_747
.label_746:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_747
.label_747:
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
	je	.label_748
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_748:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408640
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_752:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_750
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_752
.label_750:
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 8], rax
	je	.label_753
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	qword ptr [word ptr [label_751]],  rax
.label_753:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_749
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_749:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408720

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
	#Procedure 0x408760

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
	jge	.label_761
	call	abort
.label_761:
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_759
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x31], cl
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	jge	.label_757
	call	xalloc_die
.label_757:
	test	byte ptr [rbp - 0x31], 1
	je	.label_758
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_760
.label_758:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_760:
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
	je	.label_756
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_751]]
	mov	qword ptr [rax + 8], rcx
.label_756:
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
.label_759:
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
	ja	.label_754
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	cmp	qword ptr [rbp - 0x48], rax
	je	.label_755
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_755:
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
.label_754:
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
	#Procedure 0x4089e0

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
	#Procedure 0x408a20
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
	#Procedure 0x408a40
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
	#Procedure 0x408a70

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
	#Procedure 0x408ab0

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
	jne	.label_762
	call	abort
.label_762:
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
	#Procedure 0x408b20

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
	#Procedure 0x408b60

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
	#Procedure 0x408b90
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
	#Procedure 0x408bc0

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
	#Procedure 0x408c40

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
	#Procedure 0x408c70

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
	#Procedure 0x408c90
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
	#Procedure 0x408cc0

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
	#Procedure 0x408d70

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
	#Procedure 0x408db0

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
	#Procedure 0x408e30
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
	#Procedure 0x408e60
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
	#Procedure 0x408ea0

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
	#Procedure 0x408ee0
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
	#Procedure 0x408f10

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
	#Procedure 0x408f40

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
	#Procedure 0x408f60

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
	je	.label_769
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_765
.label_769:
	call	locale_charset
	movabs	rsi, OFFSET FLAT:label_767
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_768
	movabs	rax, OFFSET FLAT:label_771
	movabs	rcx, OFFSET FLAT:label_772
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_765
.label_768:
	movabs	rsi, OFFSET FLAT:label_766
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_770
	movabs	rax, OFFSET FLAT:label_763
	movabs	rcx, OFFSET FLAT:label_764
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_765
.label_770:
	movabs	rax, OFFSET FLAT:label_665
	movabs	rcx, OFFSET FLAT:label_646
	cmp	dword ptr [rbp - 0x14], 9
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_765:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409060

	.globl safe_read
	.type safe_read, @function
safe_read:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
.label_779:
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	call	read
	xor	edi, edi
	mov	edx, edi
	mov	qword ptr [rbp - 0x28], rax
	cmp	rdx, qword ptr [rbp - 0x28]
	jg	.label_774
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_773
.label_774:
	call	__errno_location
	cmp	dword ptr [rax], 4
	jne	.label_776
	jmp	.label_779
.label_776:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_775
	mov	eax, 0x7ff00000
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x20]
	jae	.label_775
	mov	qword ptr [rbp - 0x20], 0x7ff00000
	jmp	.label_780
.label_775:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_773
.label_780:
	jmp	.label_778
.label_778:
	jmp	.label_777
.label_777:
	jmp	.label_779
.label_773:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409110

	.globl safe_write
	.type safe_write, @function
safe_write:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
.label_781:
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	call	write
	xor	edi, edi
	mov	edx, edi
	mov	qword ptr [rbp - 0x28], rax
	cmp	rdx, qword ptr [rbp - 0x28]
	jg	.label_786
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_783
.label_786:
	call	__errno_location
	cmp	dword ptr [rax], 4
	jne	.label_787
	jmp	.label_781
.label_787:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_785
	mov	eax, 0x7ff00000
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x20]
	jae	.label_785
	mov	qword ptr [rbp - 0x20], 0x7ff00000
	jmp	.label_782
.label_785:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_783
.label_782:
	jmp	.label_788
.label_788:
	jmp	.label_784
.label_784:
	jmp	.label_781
.label_783:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4091c0

	.globl fd_safer
	.type fd_safer, @function
fd_safer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_789
	cmp	dword ptr [rbp - 4], 2
	jg	.label_789
	mov	edi, dword ptr [rbp - 4]
	call	dup_safer
	mov	dword ptr [rbp - 8], eax
	call	__errno_location
	mov	edi, dword ptr [rax]
	mov	dword ptr [rbp - 0xc], edi
	mov	edi, dword ptr [rbp - 4]
	call	close
	mov	edi, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x10], eax
	mov	dword ptr [rbp - 0x14], edi
	call	__errno_location
	mov	edi, dword ptr [rbp - 0x14]
	mov	dword ptr [rax], edi
	mov	edi, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], edi
.label_789:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409220

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
	je	.label_798
	movabs	rsi, OFFSET FLAT:label_803
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_807
.label_798:
	movabs	rsi, OFFSET FLAT:label_808
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_807:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:label_796
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
	mov	ecx, OFFSET FLAT:label_795
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
	ja	.label_804
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_791]]
	jmp	rcx
.label_1159:
	jmp	.label_790
.label_1160:
	movabs	rdi, OFFSET FLAT:label_801
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
	jmp	.label_790
.label_1161:
	movabs	rdi, OFFSET FLAT:label_794
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
	jmp	.label_790
.label_1162:
	movabs	rdi, OFFSET FLAT:label_793
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
	jmp	.label_790
.label_1163:
	movabs	rdi, OFFSET FLAT:label_797
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
	jmp	.label_790
.label_1164:
	movabs	rdi, OFFSET FLAT:label_799
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
	jmp	.label_790
.label_1165:
	movabs	rdi, OFFSET FLAT:label_800
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
	jmp	.label_790
.label_1166:
	movabs	rdi, OFFSET FLAT:label_805
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
	jmp	.label_790
.label_1167:
	movabs	rdi, OFFSET FLAT:label_792
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
	jmp	.label_790
.label_1168:
	movabs	rdi, OFFSET FLAT:label_806
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
	jmp	.label_790
.label_804:
	movabs	rdi, OFFSET FLAT:label_802
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
.label_790:
	add	rsp, 0x180
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4097e0
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
.label_811:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_809
	jmp	.label_810
.label_810:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_811
.label_809:
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
	#Procedure 0x409850

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
.label_812:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_816
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_814
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_813
.label_814:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_813:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x81], dl
.label_816:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_818
	jmp	.label_817
.label_818:
	jmp	.label_815
.label_815:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_812
.label_817:
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
	#Procedure 0x409960

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
	je	.label_819
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
.label_819:
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
	#Procedure 0x409ad0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_820
	call	gettext
	movabs	rsi, OFFSET FLAT:label_822
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_821
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_29
	movabs	rdx, OFFSET FLAT:label_30
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_823
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
	#Procedure 0x409b60

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
	jae	.label_824
	call	xalloc_die
.label_824:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409bb0

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
	jne	.label_825
	cmp	qword ptr [rbp - 8], 0
	je	.label_825
	call	xalloc_die
.label_825:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409bf0
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
	jae	.label_826
	call	xalloc_die
.label_826:
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
	#Procedure 0x409c40

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_827
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_827
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_829
.label_827:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_828
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_828
	call	xalloc_die
.label_828:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_829:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409cc0

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
	jne	.label_830
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_833
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
.label_833:
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_831
	call	xalloc_die
.label_831:
	jmp	.label_832
.label_830:
	movabs	rax, 0x5555555555555554
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_834
	call	xalloc_die
.label_834:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_832:
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
	#Procedure 0x409db0

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
	#Procedure 0x409dd0
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
	#Procedure 0x409e00
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
	#Procedure 0x409e40

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
	jb	.label_835
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_836
.label_835:
	call	xalloc_die
.label_836:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409ea0

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
	#Procedure 0x409ee0

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
	#Procedure 0x409f20

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_837
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:label_40
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x409f60

	.globl xset_binary_mode_error
	.type xset_binary_mode_error, @function
xset_binary_mode_error:
	push	rbp
	mov	rbp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409f70

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
	jge	.label_838
	call	xset_binary_mode_error
.label_838:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409fa0

	.globl xnumtoumax
	.type xnumtoumax, @function
xnumtoumax:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x58
	mov	eax, dword ptr [rbp + 0x10]
	xor	r10d, r10d
	mov	r11d, r10d
	lea	rbx, [rbp - 0x48]
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	dword ptr [rbp - 0x3c], eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	mov	r8, qword ptr [rbp - 0x30]
	mov	rsi, r11
	mov	rcx, rbx
	call	xstrtoumax
	mov	dword ptr [rbp - 0x40], eax
	cmp	dword ptr [rbp - 0x40], 0
	jne	.label_850
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x20]
	jb	.label_852
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x48]
	jae	.label_839
.label_852:
	mov	dword ptr [rbp - 0x40], 1
	cmp	qword ptr [rbp - 0x48], 0x3fffffff
	jbe	.label_845
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_851
.label_845:
	call	__errno_location
	mov	dword ptr [rax], 0x22
.label_851:
	jmp	.label_839
.label_839:
	jmp	.label_841
.label_850:
	cmp	dword ptr [rbp - 0x40], 1
	jne	.label_842
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_848
.label_842:
	cmp	dword ptr [rbp - 0x40], 3
	jne	.label_849
	call	__errno_location
	mov	dword ptr [rax], 0
.label_849:
	jmp	.label_848
.label_848:
	jmp	.label_841
.label_841:
	cmp	dword ptr [rbp - 0x40], 0
	je	.label_840
	cmp	dword ptr [rbp - 0x3c], 0
	je	.label_843
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_846
.label_843:
	mov	eax, 1
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_846
.label_846:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x50], eax
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_847
	xor	eax, eax
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_844
.label_847:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x54], ecx
.label_844:
	mov	eax, dword ptr [rbp - 0x54]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x58], eax
	mov	qword ptr [rbp - 0x60], rcx
	call	quote
	movabs	rdx, OFFSET FLAT:label_159
	mov	edi, dword ptr [rbp - 0x50]
	mov	esi, dword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	r8, rax
	mov	al, 0
	call	error
.label_840:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x58
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a120

	.globl xdectoumax
	.type xdectoumax, @function
xdectoumax:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	eax, 0xa
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	dword ptr [rbp - 0x2c], r9d
	mov	rdi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x20]
	mov	r9, qword ptr [rbp - 0x28]
	mov	r10d, dword ptr [rbp - 0x2c]
	mov	esi, eax
	mov	dword ptr [rsp], r10d
	call	xnumtoumax
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a170

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
	jg	.label_875
	cmp	dword ptr [rbp - 0x1c], 0x24
	jg	.label_875
	jmp	.label_881
.label_875:
	movabs	rdi, OFFSET FLAT:label_882
	movabs	rsi, OFFSET FLAT:label_883
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:label_884
	call	__assert_fail
.label_881:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_891
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_879
.label_891:
	lea	rax, [rbp - 0x38]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_879
.label_879:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x40], rax
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x59], cl
.label_886:
	movzx	eax, byte ptr [rbp - 0x59]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x78], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x2000
	cmp	edx, 0
	je	.label_864
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x59], dl
	jmp	.label_886
.label_864:
	movzx	eax, byte ptr [rbp - 0x59]
	cmp	eax, 0x2d
	jne	.label_873
	mov	dword ptr [rbp - 4], 4
	jmp	.label_854
.label_873:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x1c]
	call	strtoumax
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_877
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_880
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_880
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	je	.label_880
	mov	qword ptr [rbp - 0x48], 1
	jmp	.label_893
.label_880:
	mov	dword ptr [rbp - 4], 4
	jmp	.label_854
.label_893:
	jmp	.label_862
.label_877:
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_853
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	je	.label_858
	mov	dword ptr [rbp - 4], 4
	jmp	.label_854
.label_858:
	mov	dword ptr [rbp - 0x4c], 1
.label_853:
	jmp	.label_862
.label_862:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_863
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
	jmp	.label_854
.label_863:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_869
	mov	dword ptr [rbp - 0x60], 0x400
	mov	dword ptr [rbp - 0x64], 1
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	jne	.label_876
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_854
.label_876:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x7c], ecx
	mov	dword ptr [rbp - 0x80], edx
	je	.label_857
	jmp	.label_887
.label_887:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x84], eax
	je	.label_857
	jmp	.label_892
.label_892:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x88], eax
	je	.label_857
	jmp	.label_895
.label_895:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_857
	jmp	.label_856
.label_856:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x90], eax
	je	.label_857
	jmp	.label_885
.label_885:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x94], eax
	je	.label_857
	jmp	.label_866
.label_866:
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, -0x59
	sub	eax, 2
	mov	dword ptr [rbp - 0x98], eax
	jb	.label_857
	jmp	.label_868
.label_868:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_857
	jmp	.label_874
.label_874:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_857
	jmp	.label_890
.label_890:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_857
	jmp	.label_878
.label_878:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xa8], eax
	jne	.label_871
	jmp	.label_857
.label_857:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x30]
	call	strchr
	cmp	rax, 0
	je	.label_870
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	edx, ecx
	sub	edx, 0x42
	mov	dword ptr [rbp - 0xac], ecx
	mov	dword ptr [rbp - 0xb0], edx
	je	.label_889
	jmp	.label_894
.label_894:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_889
	jmp	.label_855
.label_855:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xb8], eax
	jne	.label_865
	jmp	.label_861
.label_861:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x42
	jne	.label_867
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 2
	mov	dword ptr [rbp - 0x64], eax
.label_867:
	jmp	.label_865
.label_889:
	mov	dword ptr [rbp - 0x60], 0x3e8
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 1
	mov	dword ptr [rbp - 0x64], eax
.label_865:
	jmp	.label_870
.label_870:
	jmp	.label_871
.label_871:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	mov	eax, ecx
	sub	ecx, 0x35
	mov	qword ptr [rbp - 0xc0], rax
	mov	dword ptr [rbp - 0xc4], ecx
	ja	.label_872
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_860]]
	jmp	rcx
.label_1104:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x200
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_859
.label_1095:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x400
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_859
.label_1105:
	mov	dword ptr [rbp - 0x68], 0
	jmp	.label_859
.label_1096:
	lea	rdi, [rbp - 0x48]
	mov	edx, 6
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_859
.label_1097:
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_859
.label_1098:
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_859
.label_1099:
	lea	rdi, [rbp - 0x48]
	mov	edx, 2
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_859
.label_1100:
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_859
.label_1101:
	lea	rdi, [rbp - 0x48]
	mov	edx, 4
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_859
.label_1106:
	lea	rdi, [rbp - 0x48]
	mov	esi, 2
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_859
.label_1102:
	lea	rdi, [rbp - 0x48]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_859
.label_1103:
	lea	rdi, [rbp - 0x48]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_859
.label_872:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_854
.label_859:
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
	je	.label_888
	mov	eax, dword ptr [rbp - 0x4c]
	or	eax, 2
	mov	dword ptr [rbp - 0x4c], eax
.label_888:
	jmp	.label_869
.label_869:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
.label_854:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a720

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
	jae	.label_896
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], -1
	mov	dword ptr [rbp - 4], 1
	jmp	.label_897
.label_896:
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_897:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a780

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
	.align	32
	#Procedure 0x40a7d0

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
	jge	.label_903
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	jmp	.label_900
.label_903:
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	je	.label_904
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_902
.label_904:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_902
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_902:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_901
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_901:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_900:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a8a0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_905
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_906
.label_905:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	jmp	.label_907
.label_906:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_907:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a900

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
	je	.label_908
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fseeko
	mov	dword ptr [rbp - 0xc], eax
.label_908:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a940

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
	jne	.label_909
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_909
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_909
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_911
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_910
.label_911:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x90], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_910
.label_909:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fseeko
	mov	dword ptr [rbp - 4], eax
.label_910:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40aa10

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
	jne	.label_912
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_912:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	mbrtowc
	mov	rcx, -2
	mov	qword ptr [rbp - 0x30], rax
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_913
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_913
	xor	edi, edi
	call	hard_locale
	test	al, 1
	jne	.label_913
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], edx
	mov	qword ptr [rbp - 8], 1
	jmp	.label_914
.label_913:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_914:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40aac0
	.globl str2sig
	.type str2sig, @function
str2sig:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	call	str2signum
	xor	ecx, ecx
	mov	edx, 0xffffffff
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rsi], eax
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	dword ptr [rsi], 0
	cmovl	ecx, edx
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ab00

	.globl str2signum
	.type str2signum, @function
str2signum:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	movsx	eax, byte ptr [rdi]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_915
	lea	rsi, [rbp - 0x18]
	mov	edx, 0xa
	mov	rdi, qword ptr [rbp - 0x10]
	call	strtol
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	jne	.label_917
	cmp	qword ptr [rbp - 0x20], 0x40
	jg	.label_917
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, eax
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_922
.label_917:
	jmp	.label_926
.label_915:
	mov	dword ptr [rbp - 0x24], 0
.label_921:
	mov	eax, dword ptr [rbp - 0x24]
	mov	ecx, eax
	cmp	rcx, 0x23
	jae	.label_928
	movabs	rax, OFFSET FLAT:numname_table
	mov	ecx, dword ptr [rbp - 0x24]
	mov	edx, ecx
	imul	rdx, rdx, 0xc
	add	rax, rdx
	add	rax, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	strcmp
	cmp	eax, 0
	jne	.label_927
	movabs	rax, OFFSET FLAT:numname_table
	mov	ecx, dword ptr [rbp - 0x24]
	mov	edx, ecx
	imul	rdx, rdx, 0xc
	add	rax, rdx
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_922
.label_927:
	jmp	.label_918
.label_918:
	mov	eax, dword ptr [rbp - 0x24]
	add	eax, 1
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_921
.label_928:
	call	__libc_current_sigrtmin
	mov	dword ptr [rbp - 0x34], eax
	call	__libc_current_sigrtmax
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x38], eax
	cmp	ecx, dword ptr [rbp - 0x34]
	jge	.label_924
	movabs	rsi, OFFSET FLAT:label_929
	mov	eax, 5
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x10]
	call	strncmp
	cmp	eax, 0
	jne	.label_924
	lea	rsi, [rbp - 0x30]
	mov	edx, 0xa
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 5
	mov	rdi, rax
	call	strtol
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x30]
	cmp	byte ptr [rax], 0
	jne	.label_923
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x40]
	jg	.label_923
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rbp - 0x38]
	sub	ecx, dword ptr [rbp - 0x34]
	movsxd	rdx, ecx
	cmp	rax, rdx
	jg	.label_923
	movsxd	rax, dword ptr [rbp - 0x34]
	add	rax, qword ptr [rbp - 0x40]
	mov	ecx, eax
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_922
.label_923:
	jmp	.label_920
.label_924:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x38]
	jge	.label_916
	movabs	rsi, OFFSET FLAT:label_919
	mov	eax, 5
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x10]
	call	strncmp
	cmp	eax, 0
	jne	.label_916
	lea	rsi, [rbp - 0x30]
	mov	edx, 0xa
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 5
	mov	rdi, rax
	call	strtol
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x30]
	cmp	byte ptr [rax], 0
	jne	.label_925
	mov	eax, dword ptr [rbp - 0x34]
	sub	eax, dword ptr [rbp - 0x38]
	movsxd	rcx, eax
	cmp	rcx, qword ptr [rbp - 0x48]
	jg	.label_925
	cmp	qword ptr [rbp - 0x48], 0
	jg	.label_925
	movsxd	rax, dword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x48]
	mov	ecx, eax
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_922
.label_925:
	jmp	.label_916
.label_916:
	jmp	.label_920
.label_920:
	jmp	.label_926
.label_926:
	mov	dword ptr [rbp - 4], 0xffffffff
.label_922:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ad30

	.globl sig2str
	.type sig2str, @function
sig2str:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], 0
.label_939:
	mov	eax, dword ptr [rbp - 0x14]
	mov	ecx, eax
	cmp	rcx, 0x23
	jae	.label_930
	movabs	rax, OFFSET FLAT:numname_table
	mov	ecx, dword ptr [rbp - 0x14]
	mov	edx, ecx
	imul	rdx, rdx, 0xc
	add	rax, rdx
	mov	ecx, dword ptr [rax]
	cmp	ecx, dword ptr [rbp - 8]
	jne	.label_932
	movabs	rax, OFFSET FLAT:numname_table
	mov	rdi, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x14]
	mov	edx, ecx
	imul	rdx, rdx, 0xc
	add	rax, rdx
	add	rax, 4
	mov	rsi, rax
	call	strcpy
	mov	dword ptr [rbp - 4], 0
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_935
.label_932:
	jmp	.label_937
.label_937:
	mov	eax, dword ptr [rbp - 0x14]
	add	eax, 1
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_939
.label_930:
	call	__libc_current_sigrtmin
	mov	dword ptr [rbp - 0x18], eax
	call	__libc_current_sigrtmax
	mov	dword ptr [rbp - 0x1c], eax
	mov	eax, dword ptr [rbp - 0x18]
	cmp	eax, dword ptr [rbp - 8]
	jg	.label_931
	mov	eax, dword ptr [rbp - 8]
	cmp	eax, dword ptr [rbp - 0x1c]
	jle	.label_934
.label_931:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_935
.label_934:
	mov	eax, 2
	mov	ecx, dword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x1c]
	sub	esi, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x34], eax
	mov	eax, esi
	mov	dword ptr [rbp - 0x38], edx
	cdq	
	mov	esi, dword ptr [rbp - 0x34]
	idiv	esi
	mov	edi, dword ptr [rbp - 0x38]
	add	edi, eax
	cmp	ecx, edi
	jg	.label_940
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_929
	mov	esi, eax
	call	strcpy
	mov	ecx, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x20], ecx
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_938
.label_940:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_919
	mov	esi, eax
	call	strcpy
	mov	ecx, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x20], ecx
	mov	qword ptr [rbp - 0x48], rax
.label_938:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 0
	je	.label_933
	movabs	rsi, OFFSET FLAT:label_936
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 5
	mov	edx, dword ptr [rbp - 0x24]
	mov	rdi, rax
	mov	al, 0
	call	sprintf
	mov	dword ptr [rbp - 0x4c], eax
.label_933:
	mov	dword ptr [rbp - 4], 0
.label_935:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40aea0

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
	.align	32
	#Procedure 0x40aeb0

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
	.align	32
	#Procedure 0x40aec0

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
	je	.label_942
	mov	eax, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x10], eax
	jmp	.label_941
.label_942:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	__gl_setmode
	mov	dword ptr [rbp - 0x10], eax
.label_941:
	mov	eax, dword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40af10

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
	jne	.label_943
	mov	dword ptr [rbp - 4], 0
	jmp	.label_947
.label_943:
	jmp	.label_944
.label_944:
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
	jne	.label_946
	jmp	.label_945
.label_946:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	je	.label_944
.label_945:
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_947:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40afd0

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
	jne	.label_948
	test	byte ptr [rbp - 0x13], 1
	je	.label_949
	test	byte ptr [rbp - 0x11], 1
	jne	.label_948
	call	__errno_location
	cmp	dword ptr [rax], 9
	je	.label_949
.label_948:
	test	byte ptr [rbp - 0x13], 1
	jne	.label_950
	call	__errno_location
	mov	dword ptr [rax], 0
.label_950:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_951
.label_949:
	mov	dword ptr [rbp - 4], 0
.label_951:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b080

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
	je	.label_952
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_955
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_956
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_953
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_954
.label_956:
	mov	byte ptr [rbp - 5], 0
.label_954:
	jmp	.label_952
.label_952:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b100

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
	jne	.label_957
	movabs	rax, OFFSET FLAT:label_26
	mov	qword ptr [rbp - 8], rax
.label_957:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_958
	movabs	rax, OFFSET FLAT:label_959
	mov	qword ptr [rbp - 8], rax
.label_958:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b160

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	esi, esi
	mov	edx, 3
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	mov	al, 0
	call	rpl_fcntl
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b190

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x240
	test	al, al
	movaps	xmmword ptr [rbp - 0x100], xmm7
	movaps	xmmword ptr [rbp - 0x110], xmm6
	movaps	xmmword ptr [rbp - 0x120], xmm5
	movaps	xmmword ptr [rbp - 0x130], xmm4
	movaps	xmmword ptr [rbp - 0x140], xmm3
	movaps	xmmword ptr [rbp - 0x150], xmm2
	movaps	xmmword ptr [rbp - 0x160], xmm1
	movaps	xmmword ptr [rbp - 0x170], xmm0
	mov	dword ptr [rbp - 0x174], edi
	mov	qword ptr [rbp - 0x180], r9
	mov	qword ptr [rbp - 0x188], r8
	mov	qword ptr [rbp - 0x190], rcx
	mov	qword ptr [rbp - 0x198], rdx
	mov	dword ptr [rbp - 0x19c], esi
	je	.label_969
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
.label_969:
	mov	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rcx, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0xd0], rcx
	mov	rdx, qword ptr [rbp - 0x190]
	mov	qword ptr [rbp - 0xd8], rdx
	mov	rsi, qword ptr [rbp - 0x198]
	mov	qword ptr [rbp - 0xe0], rsi
	mov	edi, dword ptr [rbp - 0x19c]
	mov	r8d, dword ptr [rbp - 0x174]
	mov	dword ptr [rbp - 4], r8d
	mov	dword ptr [rbp - 8], edi
	mov	dword ptr [rbp - 0x24], 0xffffffff
	lea	r9, [rbp - 0xf0]
	mov	qword ptr [rbp - 0x10], r9
	lea	r9, [rbp + 0x10]
	mov	qword ptr [rbp - 0x18], r9
	mov	dword ptr [rbp - 0x1c], 0x30
	mov	dword ptr [rbp - 0x20], 0x10
	mov	edi, dword ptr [rbp - 8]
	test	edi, edi
	mov	dword ptr [rbp - 0x1a0], edi
	je	.label_986
	jmp	.label_965
.label_965:
	mov	eax, dword ptr [rbp - 0x1a0]
	sub	eax, 0x406
	mov	dword ptr [rbp - 0x1a4], eax
	je	.label_989
	jmp	.label_964
.label_986:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1b0], rax
	mov	dword ptr [rbp - 0x1b4], ecx
	ja	.label_967
	mov	eax, dword ptr [rbp - 0x1b4]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1b0]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1c0], rcx
	jmp	.label_976
.label_967:
	mov	rax, qword ptr [rbp - 0x1b0]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1c0], rdx
.label_976:
	mov	rax, qword ptr [rbp - 0x1c0]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x28], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x28]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_960
.label_989:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1c8], rax
	mov	dword ptr [rbp - 0x1cc], ecx
	ja	.label_966
	mov	eax, dword ptr [rbp - 0x1cc]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1c8]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1d8], rcx
	jmp	.label_974
.label_966:
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1d8], rdx
.label_974:
	mov	rax, qword ptr [rbp - 0x1d8]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x2c], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x2c]
	call	rpl_fcntl_DUPFD_CLOEXEC
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_960
.label_964:
	mov	eax, dword ptr [rbp - 8]
	test	eax, eax
	mov	dword ptr [rbp - 0x1dc], eax
	je	.label_963
	jmp	.label_971
.label_971:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 1
	mov	dword ptr [rbp - 0x1e0], eax
	je	.label_972
	jmp	.label_979
.label_979:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 2
	mov	dword ptr [rbp - 0x1e4], eax
	je	.label_963
	jmp	.label_982
.label_982:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 3
	mov	dword ptr [rbp - 0x1e8], eax
	je	.label_972
	jmp	.label_987
.label_987:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 4
	mov	dword ptr [rbp - 0x1ec], eax
	je	.label_963
	jmp	.label_961
.label_961:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 8
	mov	dword ptr [rbp - 0x1f0], eax
	je	.label_963
	jmp	.label_975
.label_975:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 9
	mov	dword ptr [rbp - 0x1f4], eax
	je	.label_972
	jmp	.label_980
.label_980:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x1f8], eax
	je	.label_963
	jmp	.label_983
.label_983:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xb
	mov	dword ptr [rbp - 0x1fc], eax
	je	.label_972
	jmp	.label_988
.label_988:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x400
	mov	dword ptr [rbp - 0x200], eax
	je	.label_963
	jmp	.label_962
.label_962:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x401
	mov	dword ptr [rbp - 0x204], eax
	je	.label_972
	jmp	.label_973
.label_973:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x402
	mov	dword ptr [rbp - 0x208], eax
	je	.label_963
	jmp	.label_981
.label_981:
	mov	eax, dword ptr [rbp - 0x1dc]
	add	eax, 0xfffffbfa
	sub	eax, 2
	mov	dword ptr [rbp - 0x20c], eax
	jb	.label_963
	jmp	.label_984
.label_984:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x408
	mov	dword ptr [rbp - 0x210], eax
	jne	.label_985
	jmp	.label_972
.label_972:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_968
.label_963:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x218], rax
	mov	dword ptr [rbp - 0x21c], ecx
	ja	.label_990
	mov	eax, dword ptr [rbp - 0x21c]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x218]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x228], rcx
	jmp	.label_977
.label_990:
	mov	rax, qword ptr [rbp - 0x218]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x228], rdx
.label_977:
	mov	rax, qword ptr [rbp - 0x228]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x30], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 0x30]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_968
.label_985:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x230], rax
	mov	dword ptr [rbp - 0x234], ecx
	ja	.label_970
	mov	eax, dword ptr [rbp - 0x234]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x230]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x240], rcx
	jmp	.label_978
.label_970:
	mov	rax, qword ptr [rbp - 0x230]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x240], rdx
.label_978:
	mov	rax, qword ptr [rbp - 0x240]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
.label_968:
	jmp	.label_960
.label_960:
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x240
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b6b0

	.globl rpl_fcntl_DUPFD
	.type rpl_fcntl_DUPFD, @function
rpl_fcntl_DUPFD:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	edi, dword ptr [rbp - 4]
	mov	edx, dword ptr [rbp - 8]
	mov	esi, eax
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0xc], eax
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b6e0

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	cmp	eax,  dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]]
	jg	.label_996
	mov	esi, 0x406
	mov	edi, dword ptr [rbp - 4]
	mov	edx, dword ptr [rbp - 8]
	mov	al, 0
	call	fcntl
	xor	edx, edx
	mov	dword ptr [rbp - 0xc], eax
	cmp	edx, dword ptr [rbp - 0xc]
	jle	.label_994
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_997
.label_994:
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_995
.label_997:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
	cmp	dword ptr [rbp - 0xc], 0
	jl	.label_993
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
.label_993:
	jmp	.label_995
.label_995:
	jmp	.label_998
.label_996:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
.label_998:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0xc]
	jg	.label_991
	cmp	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_991
	mov	esi, 1
	mov	edi, dword ptr [rbp - 0xc]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x10], eax
	cmp	dword ptr [rbp - 0x10], 0
	jl	.label_999
	mov	esi, 2
	mov	edi, dword ptr [rbp - 0xc]
	mov	eax, dword ptr [rbp - 0x10]
	or	eax, 1
	mov	edx, eax
	mov	al, 0
	call	fcntl
	cmp	eax, -1
	jne	.label_992
.label_999:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
	mov	edi, dword ptr [rbp - 0xc]
	call	close
	mov	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x18], eax
	mov	dword ptr [rbp - 0x1c], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x1c]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0xc], 0xffffffff
.label_992:
	jmp	.label_991
.label_991:
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b810

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
	ja	.label_1000
	jmp	.label_1002
.label_1002:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	add	eax, 0x2001a
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1001
.label_1000:
	jmp	.label_1001
.label_1001:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b860
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
	jb	.label_1003
	jmp	.label_1006
.label_1006:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_1003
	jmp	.label_1004
.label_1004:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_1005
	jmp	.label_1003
.label_1003:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1007
.label_1005:
	mov	byte ptr [rbp - 1], 0
.label_1007:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b8d0
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
	jb	.label_1008
	jmp	.label_1011
.label_1011:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_1009
	jmp	.label_1008
.label_1008:
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
	.align	32
	#Procedure 0x40b920
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1012
	jmp	.label_1013
.label_1013:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1014
.label_1012:
	mov	byte ptr [rbp - 1], 0
.label_1014:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b950
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_1015
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_1015:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b980
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
	jb	.label_1016
	jmp	.label_1018
.label_1018:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_1019
	jmp	.label_1016
.label_1016:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1017
.label_1019:
	mov	byte ptr [rbp - 1], 0
.label_1017:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b9d0
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1020
	jmp	.label_1022
.label_1022:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1021
.label_1020:
	mov	byte ptr [rbp - 1], 0
.label_1021:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ba10
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1023
	jmp	.label_1025
.label_1025:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1024
.label_1023:
	mov	byte ptr [rbp - 1], 0
.label_1024:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ba50
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1026
	jmp	.label_1028
.label_1028:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1027
.label_1026:
	mov	byte ptr [rbp - 1], 0
.label_1027:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ba90
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1029
	jmp	.label_1031
.label_1031:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1030
.label_1029:
	mov	byte ptr [rbp - 1], 0
.label_1030:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bad0
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
	ja	.label_1032
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1034]]
	jmp	rcx
.label_1170:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1033
.label_1032:
	mov	byte ptr [rbp - 1], 0
.label_1033:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bb20
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
	jb	.label_1035
	jmp	.label_1037
.label_1037:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_1038
	jmp	.label_1035
.label_1035:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1036
.label_1038:
	mov	byte ptr [rbp - 1], 0
.label_1036:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bb70
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1039
	jmp	.label_1041
.label_1041:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1040
.label_1039:
	mov	byte ptr [rbp - 1], 0
.label_1040:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bbb0
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
	jb	.label_1042
	jmp	.label_1044
.label_1044:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_1042
	jmp	.label_1043
.label_1043:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_1045
	jmp	.label_1042
.label_1042:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1046
.label_1045:
	mov	byte ptr [rbp - 1], 0
.label_1046:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bc20

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1047
	jmp	.label_1049
.label_1049:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1048
.label_1047:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_1048:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bc60
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1050
	jmp	.label_1052
.label_1052:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1051
.label_1050:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_1051:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bd50

	.globl fstat
	.type fstat, @function
fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
