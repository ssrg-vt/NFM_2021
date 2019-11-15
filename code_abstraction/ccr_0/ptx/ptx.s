	.section	.text
	.align	16
	#Procedure 0x401e10

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_12
	jmp	.label_18
.label_18:
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
	jmp	.label_14
.label_12:
	movabs	rdi, OFFSET FLAT:label_17
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdx,  qword ptr [word ptr [program_name]]
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
	movabs	rdi, OFFSET FLAT:label_21
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_13
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_22
	mov	dword ptr [rbp - 0x24], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_15
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_9
	mov	dword ptr [rbp - 0x2c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_16
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_10
	mov	dword ptr [rbp - 0x34], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_19
	mov	dword ptr [rbp - 0x38], eax
	call	emit_ancillary_info
.label_14:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	16
	#Procedure 0x401fc0

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
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
	.align	16
	#Procedure 0x401ff0

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
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
	.align	16
	#Procedure 0x402020

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
.label_27:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_26
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_26:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_34
	jmp	.label_39
.label_34:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_27
.label_39:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_29
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_29:
	movabs	rdi, OFFSET FLAT:label_33
	call	gettext
	movabs	rsi, OFFSET FLAT:label_35
	movabs	rdx, OFFSET FLAT:label_28
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
	je	.label_30
	movabs	rsi, OFFSET FLAT:label_38
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_30
	movabs	rdi, OFFSET FLAT:label_31
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_30:
	movabs	rdi, OFFSET FLAT:label_25
	call	gettext
	movabs	rsi, OFFSET FLAT:label_28
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_32
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:label_36
	movabs	rsi, OFFSET FLAT:label_37
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
	#Procedure 0x4021c0

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xf0
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:label_36
	call	setlocale
	movabs	rdi, OFFSET FLAT:label_49
	movabs	rsi, OFFSET FLAT:label_124
	mov	qword ptr [rbp - 0x38], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:label_49
	mov	qword ptr [rbp - 0x40], rax
	call	textdomain
	movabs	rdi, OFFSET FLAT:close_stdout
	mov	qword ptr [rbp - 0x48], rax
	call	atexit
	mov	dword ptr [rbp - 0x4c], eax
.label_78:
	movabs	rdx, OFFSET FLAT:label_60
	movabs	rcx, OFFSET FLAT:long_options
	xor	eax, eax
	mov	r8d, eax
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0x14], eax
	cmp	dword ptr [rbp - 0x14], -1
	je	.label_67
	mov	eax, dword ptr [rbp - 0x14]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	mov	dword ptr [rbp - 0x50], eax
	mov	dword ptr [rbp - 0x54], ecx
	je	.label_75
	jmp	.label_84
.label_84:
	mov	eax, dword ptr [rbp - 0x50]
	sub	eax, 0xffffff7e
	mov	dword ptr [rbp - 0x58], eax
	je	.label_86
	jmp	.label_96
.label_96:
	mov	eax, dword ptr [rbp - 0x50]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x5c], eax
	je	.label_98
	jmp	.label_55
.label_55:
	mov	eax, dword ptr [rbp - 0x50]
	sub	eax, 0x41
	mov	dword ptr [rbp - 0x60], eax
	je	.label_103
	jmp	.label_106
.label_106:
	mov	eax, dword ptr [rbp - 0x50]
	sub	eax, 0x46
	mov	dword ptr [rbp - 0x64], eax
	je	.label_108
	jmp	.label_110
.label_110:
	mov	eax, dword ptr [rbp - 0x50]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x68], eax
	je	.label_112
	jmp	.label_119
.label_119:
	mov	eax, dword ptr [rbp - 0x50]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x6c], eax
	je	.label_120
	jmp	.label_68
.label_68:
	mov	eax, dword ptr [rbp - 0x50]
	sub	eax, 0x4f
	mov	dword ptr [rbp - 0x70], eax
	je	.label_54
	jmp	.label_83
.label_83:
	mov	eax, dword ptr [rbp - 0x50]
	sub	eax, 0x52
	mov	dword ptr [rbp - 0x74], eax
	je	.label_50
	jmp	.label_53
.label_53:
	mov	eax, dword ptr [rbp - 0x50]
	sub	eax, 0x53
	mov	dword ptr [rbp - 0x78], eax
	je	.label_57
	jmp	.label_59
.label_59:
	mov	eax, dword ptr [rbp - 0x50]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x7c], eax
	je	.label_90
	jmp	.label_66
.label_66:
	mov	eax, dword ptr [rbp - 0x50]
	sub	eax, 0x57
	mov	dword ptr [rbp - 0x80], eax
	je	.label_44
	jmp	.label_48
.label_48:
	mov	eax, dword ptr [rbp - 0x50]
	sub	eax, 0x62
	mov	dword ptr [rbp - 0x84], eax
	je	.label_71
	jmp	.label_79
.label_79:
	mov	eax, dword ptr [rbp - 0x50]
	sub	eax, 0x66
	mov	dword ptr [rbp - 0x88], eax
	je	.label_82
	jmp	.label_91
.label_91:
	mov	eax, dword ptr [rbp - 0x50]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_95
	jmp	.label_116
.label_116:
	mov	eax, dword ptr [rbp - 0x50]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0x90], eax
	je	.label_100
	jmp	.label_113
.label_113:
	mov	eax, dword ptr [rbp - 0x50]
	sub	eax, 0x6f
	mov	dword ptr [rbp - 0x94], eax
	je	.label_107
	jmp	.label_89
.label_89:
	mov	eax, dword ptr [rbp - 0x50]
	sub	eax, 0x72
	mov	dword ptr [rbp - 0x98], eax
	je	.label_111
	jmp	.label_62
.label_62:
	mov	eax, dword ptr [rbp - 0x50]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_121
	jmp	.label_114
.label_114:
	mov	eax, dword ptr [rbp - 0x50]
	sub	eax, 0x77
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_87
	jmp	.label_51
.label_51:
	mov	edi, 1
	call	usage
.label_112:
	mov	byte ptr [byte ptr [gnu_extensions]],  0
	jmp	.label_43
.label_71:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [word ptr [break_file]],  rax
	jmp	.label_43
.label_82:
	mov	byte ptr [byte ptr [ignore_case]],  1
	jmp	.label_43
.label_95:
	xor	eax, eax
	mov	ecx, eax
	xor	edx, edx
	lea	rsi, [rbp - 0x20]
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0xa8], rsi
	mov	rsi, rcx
	mov	r8, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0xb0], rcx
	mov	rcx, r8
	mov	r8, qword ptr [rbp - 0xb0]
	call	xstrtoimax
	cmp	eax, 0
	jne	.label_92
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x20]
	jge	.label_92
	movabs	rax, 0x7fffffffffffffff
	cmp	qword ptr [rbp - 0x20], rax
	jle	.label_42
.label_92:
	movabs	rdi, OFFSET FLAT:label_99
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
.label_42:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [word ptr [gap_size]],  rax
	jmp	.label_43
.label_100:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [word ptr [ignore_file]],  rax
	jmp	.label_43
.label_107:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [word ptr [only_file]],  rax
	jmp	.label_43
.label_111:
	mov	byte ptr [byte ptr [input_reference]],  1
	jmp	.label_43
.label_121:
	jmp	.label_43
.label_87:
	xor	eax, eax
	mov	ecx, eax
	xor	edx, edx
	lea	rsi, [rbp - 0x28]
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0xc0], rsi
	mov	rsi, rcx
	mov	r8, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0xc8], rcx
	mov	rcx, r8
	mov	r8, qword ptr [rbp - 0xc8]
	call	xstrtoimax
	cmp	eax, 0
	jne	.label_85
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x28]
	jge	.label_85
	movabs	rax, 0x7fffffffffffffff
	cmp	qword ptr [rbp - 0x28], rax
	jle	.label_94
.label_85:
	movabs	rdi, OFFSET FLAT:label_104
	call	gettext
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0xd0], rax
	call	quote
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0xd0]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_94:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [word ptr [line_width]],  rax
	jmp	.label_43
.label_103:
	mov	byte ptr [byte ptr [auto_reference]],  1
	jmp	.label_43
.label_108:
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	copy_unescaped_string
	mov	qword ptr [word ptr [truncation_string]],  rax
	jmp	.label_43
.label_120:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [word ptr [macro_name]],  rax
	jmp	.label_43
.label_54:
	mov	dword ptr [dword ptr [output_format]],  2
	jmp	.label_43
.label_50:
	mov	byte ptr [byte ptr [right_reference]],  1
	jmp	.label_43
.label_57:
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	copy_unescaped_string
	mov	qword ptr [word ptr [context_regex]],  rax
	jmp	.label_43
.label_90:
	mov	dword ptr [dword ptr [output_format]],  3
	jmp	.label_43
.label_44:
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	copy_unescaped_string
	mov	qword ptr [word ptr [word_regex]],  rax
	mov	rax,  qword ptr [word ptr [word_regex]]
	cmp	byte ptr [rax], 0
	jne	.label_58
	mov	qword ptr [word ptr [word_regex]],  0
.label_58:
	jmp	.label_43
.label_98:
	movabs	rdi, OFFSET FLAT:label_101
	movabs	rdx, OFFSET FLAT:format_args
	movabs	rax, OFFSET FLAT:format_vals
	mov	ecx, 4
	mov	r8d, ecx
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	mov	rcx, rax
	call	__xargmatch_internal
	mov	r10d,  dword ptr [dword ptr [+ (rax * 4) + format_vals]]
	mov	dword ptr [dword ptr [output_format]],  r10d
	jmp	.label_43
.label_86:
	xor	edi, edi
	call	usage
.label_75:
	movabs	rdi, OFFSET FLAT:label_45
	movabs	rsi, OFFSET FLAT:label_46
	mov	rax,  qword ptr [word ptr [stdout]]
	mov	rcx,  qword ptr [word ptr [Version]]
	mov	qword ptr [rbp - 0xd8], rcx
	mov	qword ptr [rbp - 0xe0], rax
	call	proper_name_utf8
	movabs	rsi, OFFSET FLAT:label_19
	movabs	rdx, OFFSET FLAT:label_35
	xor	r8d, r8d
	mov	r9d, r8d
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	r8, rax
	mov	al, 0
	call	version_etc
	xor	edi, edi
	call	exit
.label_43:
	jmp	.label_78
.label_67:
	mov	eax,  dword ptr [dword ptr [optind]]
	cmp	eax, dword ptr [rbp - 8]
	jne	.label_81
	mov	eax, 8
	mov	edi, eax
	call	xmalloc
	mov	ecx, 8
	mov	edi, ecx
	mov	qword ptr [word ptr [input_file_name]],  rax
	call	xmalloc
	mov	ecx, 0x10
	mov	edi, ecx
	mov	qword ptr [word ptr [file_line_count]],  rax
	call	xmalloc
	mov	qword ptr [word ptr [text_buffers]],  rax
	mov	dword ptr [dword ptr [number_input_files]],  1
	mov	rax,  qword ptr [word ptr [input_file_name]]
	mov	qword ptr [rax], 0
	jmp	.label_105
.label_81:
	test	byte ptr [byte ptr [gnu_extensions]],  1
	je	.label_117
	mov	eax, 8
	mov	esi, eax
	mov	eax, dword ptr [rbp - 8]
	sub	eax,  dword ptr [dword ptr [optind]]
	mov	dword ptr [dword ptr [number_input_files]],  eax
	movsxd	rdi,  dword ptr [dword ptr [number_input_files]]
	call	xnmalloc
	mov	ecx, 8
	mov	esi, ecx
	mov	qword ptr [word ptr [input_file_name]],  rax
	movsxd	rdi,  dword ptr [dword ptr [number_input_files]]
	call	xnmalloc
	mov	ecx, 0x10
	mov	esi, ecx
	mov	qword ptr [word ptr [file_line_count]],  rax
	movsxd	rdi,  dword ptr [dword ptr [number_input_files]]
	call	xnmalloc
	mov	qword ptr [word ptr [text_buffers]],  rax
	mov	dword ptr [rbp - 0x18], 0
.label_118:
	mov	eax, dword ptr [rbp - 0x18]
	cmp	eax,  dword ptr [dword ptr [number_input_files]]
	jge	.label_73
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	byte ptr [rax], 0
	je	.label_76
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	edx, OFFSET FLAT:label_88
	mov	esi, edx
	call	strcmp
	cmp	eax, 0
	jne	.label_40
.label_76:
	movsxd	rax, dword ptr [rbp - 0x18]
	mov	rcx,  qword ptr [word ptr [input_file_name]]
	mov	qword ptr [rcx + rax*8], 0
	jmp	.label_102
.label_40:
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	movsxd	rcx, dword ptr [rbp - 0x18]
	mov	rdx,  qword ptr [word ptr [input_file_name]]
	mov	qword ptr [rdx + rcx*8], rax
.label_102:
	mov	eax,  dword ptr [dword ptr [optind]]
	add	eax, 1
	mov	dword ptr [dword ptr [optind]],  eax
	mov	eax, dword ptr [rbp - 0x18]
	add	eax, 1
	mov	dword ptr [rbp - 0x18], eax
	jmp	.label_118
.label_73:
	jmp	.label_63
.label_117:
	mov	eax, 8
	mov	edi, eax
	mov	dword ptr [dword ptr [number_input_files]],  1
	call	xmalloc
	mov	ecx, 8
	mov	edi, ecx
	mov	qword ptr [word ptr [input_file_name]],  rax
	call	xmalloc
	mov	ecx, 0x10
	mov	edi, ecx
	mov	qword ptr [word ptr [file_line_count]],  rax
	call	xmalloc
	mov	qword ptr [word ptr [text_buffers]],  rax
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rdi + rax*8]
	cmp	byte ptr [rax], 0
	je	.label_65
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	edx, OFFSET FLAT:label_88
	mov	esi, edx
	call	strcmp
	cmp	eax, 0
	jne	.label_64
.label_65:
	mov	rax,  qword ptr [word ptr [input_file_name]]
	mov	qword ptr [rax], 0
	jmp	.label_93
.label_64:
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx,  qword ptr [word ptr [input_file_name]]
	mov	qword ptr [rcx], rax
.label_93:
	mov	eax,  dword ptr [dword ptr [optind]]
	add	eax, 1
	mov	dword ptr [dword ptr [optind]],  eax
	mov	eax,  dword ptr [dword ptr [optind]]
	cmp	eax, dword ptr [rbp - 8]
	jge	.label_97
	movabs	rsi, OFFSET FLAT:label_115
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rdx,  qword ptr [word ptr [stdout]]
	call	freopen_safer
	cmp	rax, 0
	jne	.label_47
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + rax*8]
	mov	dword ptr [rbp - 0xe4], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_61
	mov	esi, dword ptr [rbp - 0xe4]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_47:
	mov	eax,  dword ptr [dword ptr [optind]]
	add	eax, 1
	mov	dword ptr [dword ptr [optind]],  eax
.label_97:
	mov	eax,  dword ptr [dword ptr [optind]]
	cmp	eax, dword ptr [rbp - 8]
	jge	.label_74
	movabs	rdi, OFFSET FLAT:label_80
	call	gettext
	movsxd	rdi,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rdi*8]
	mov	qword ptr [rbp - 0xf0], rax
	call	quote
	xor	edx, edx
	mov	edi, edx
	mov	esi, edx
	mov	rdx, qword ptr [rbp - 0xf0]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_74:
	jmp	.label_63
.label_63:
	jmp	.label_105
.label_105:
	cmp	dword ptr [dword ptr [output_format]],  0
	jne	.label_109
	mov	eax, 2
	mov	ecx, 1
	mov	dl,  byte ptr [byte ptr [gnu_extensions]]
	test	dl, 1
	cmovne	eax, ecx
	mov	dword ptr [dword ptr [output_format]],  eax
.label_109:
	call	initialize_regex
	cmp	qword ptr [word ptr [break_file]],  0
	je	.label_41
	mov	rdi,  qword ptr [word ptr [break_file]]
	call	digest_break_file
.label_41:
	cmp	qword ptr [word ptr [ignore_file]],  0
	je	.label_52
	movabs	rsi, OFFSET FLAT:ignore_table
	mov	rdi,  qword ptr [word ptr [ignore_file]]
	call	digest_word_file
	cmp	qword ptr [word ptr [label_122]],  0
	jne	.label_123
	mov	qword ptr [word ptr [ignore_file]],  0
.label_123:
	jmp	.label_52
.label_52:
	cmp	qword ptr [word ptr [only_file]],  0
	je	.label_77
	movabs	rsi, OFFSET FLAT:only_table
	mov	rdi,  qword ptr [word ptr [only_file]]
	call	digest_word_file
	cmp	qword ptr [word ptr [label_69]],  0
	jne	.label_70
	mov	qword ptr [word ptr [only_file]],  0
.label_70:
	jmp	.label_77
.label_77:
	mov	qword ptr [word ptr [number_of_occurs]],  0
	mov	qword ptr [word ptr [total_line_count]],  0
	mov	qword ptr [word ptr [maximum_word_length]],  0
	mov	qword ptr [word ptr [reference_max_width]],  0
	mov	dword ptr [rbp - 0x18], 0
.label_56:
	mov	eax, dword ptr [rbp - 0x18]
	cmp	eax,  dword ptr [dword ptr [number_input_files]]
	jge	.label_72
	mov	rax,  qword ptr [word ptr [text_buffers]]
	movsxd	rcx, dword ptr [rbp - 0x18]
	shl	rcx, 4
	add	rax, rcx
	mov	qword ptr [rbp - 0x30], rax
	movsxd	rax, dword ptr [rbp - 0x18]
	mov	rcx,  qword ptr [word ptr [input_file_name]]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rsi, qword ptr [rbp - 0x30]
	call	swallow_file_in_memory
	mov	edi, dword ptr [rbp - 0x18]
	call	find_occurs_in_text
	mov	rax,  qword ptr [word ptr [total_line_count]]
	add	rax, 1
	mov	qword ptr [word ptr [total_line_count]],  rax
	mov	rax,  qword ptr [word ptr [total_line_count]]
	movsxd	rcx, dword ptr [rbp - 0x18]
	mov	rsi,  qword ptr [word ptr [file_line_count]]
	mov	qword ptr [rsi + rcx*8], rax
	mov	eax, dword ptr [rbp - 0x18]
	add	eax, 1
	mov	dword ptr [rbp - 0x18], eax
	jmp	.label_56
.label_72:
	call	sort_found_occurs
	call	fix_output_parameters
	call	generate_all_output
	xor	eax, eax
	add	rsp, 0xf0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402c90

	.globl copy_unescaped_string
	.type copy_unescaped_string, @function
copy_unescaped_string:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	add	rax, 1
	mov	rdi, rax
	call	xmalloc
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_157:
	mov	rax, qword ptr [rbp - 8]
	cmp	byte ptr [rax], 0
	je	.label_148
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x5c
	jne	.label_151
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	inc	rcx
	mov	qword ptr [rbp - 8], rcx
	movsx	edx, byte ptr [rax + 1]
	test	edx, edx
	mov	dword ptr [rbp - 0x24], edx
	je	.label_155
	jmp	.label_165
.label_165:
	mov	eax, dword ptr [rbp - 0x24]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x28], eax
	je	.label_167
	jmp	.label_129
.label_129:
	mov	eax, dword ptr [rbp - 0x24]
	sub	eax, 0x61
	mov	dword ptr [rbp - 0x2c], eax
	je	.label_131
	jmp	.label_136
.label_136:
	mov	eax, dword ptr [rbp - 0x24]
	sub	eax, 0x62
	mov	dword ptr [rbp - 0x30], eax
	je	.label_137
	jmp	.label_144
.label_144:
	mov	eax, dword ptr [rbp - 0x24]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0x34], eax
	je	.label_147
	jmp	.label_140
.label_140:
	mov	eax, dword ptr [rbp - 0x24]
	sub	eax, 0x66
	mov	dword ptr [rbp - 0x38], eax
	je	.label_153
	jmp	.label_156
.label_156:
	mov	eax, dword ptr [rbp - 0x24]
	sub	eax, 0x6e
	mov	dword ptr [rbp - 0x3c], eax
	je	.label_160
	jmp	.label_163
.label_163:
	mov	eax, dword ptr [rbp - 0x24]
	sub	eax, 0x72
	mov	dword ptr [rbp - 0x40], eax
	je	.label_164
	jmp	.label_126
.label_126:
	mov	eax, dword ptr [rbp - 0x24]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x44], eax
	je	.label_128
	jmp	.label_133
.label_133:
	mov	eax, dword ptr [rbp - 0x24]
	sub	eax, 0x76
	mov	dword ptr [rbp - 0x48], eax
	je	.label_134
	jmp	.label_168
.label_168:
	mov	eax, dword ptr [rbp - 0x24]
	sub	eax, 0x78
	mov	dword ptr [rbp - 0x4c], eax
	jne	.label_143
	jmp	.label_149
.label_149:
	mov	dword ptr [rbp - 0x1c], 0
	mov	dword ptr [rbp - 0x20], 0
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
.label_141:
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x20], 3
	mov	byte ptr [rbp - 0x4d], cl
	jge	.label_159
	mov	rax, qword ptr [rbp - 8]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x58], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x58]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x1000
	cmp	edi, 0
	setne	dl
	mov	byte ptr [rbp - 0x4d], dl
.label_159:
	mov	al, byte ptr [rbp - 0x4d]
	test	al, 1
	jne	.label_142
	jmp	.label_166
.label_142:
	mov	eax, dword ptr [rbp - 0x1c]
	shl	eax, 4
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx]
	cmp	edx, 0x61
	mov	dword ptr [rbp - 0x5c], eax
	jl	.label_145
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x66
	jg	.label_145
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x61
	add	ecx, 0xa
	mov	dword ptr [rbp - 0x60], ecx
	jmp	.label_158
.label_145:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x41
	jl	.label_130
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x46
	jg	.label_130
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x41
	add	ecx, 0xa
	mov	dword ptr [rbp - 0x64], ecx
	jmp	.label_162
.label_130:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	mov	dword ptr [rbp - 0x64], ecx
.label_162:
	mov	eax, dword ptr [rbp - 0x64]
	mov	dword ptr [rbp - 0x60], eax
.label_158:
	mov	eax, dword ptr [rbp - 0x60]
	mov	ecx, dword ptr [rbp - 0x5c]
	add	ecx, eax
	mov	dword ptr [rbp - 0x1c], ecx
	mov	eax, dword ptr [rbp - 0x20]
	add	eax, 1
	mov	dword ptr [rbp - 0x20], eax
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	jmp	.label_141
.label_166:
	cmp	dword ptr [rbp - 0x20], 0
	jne	.label_135
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax], 0x5c
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax], 0x78
	jmp	.label_152
.label_135:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rbp - 0x18], rsi
	mov	byte ptr [rdx], cl
.label_152:
	jmp	.label_125
.label_167:
	mov	dword ptr [rbp - 0x1c], 0
	mov	dword ptr [rbp - 0x20], 0
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
.label_132:
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x20], 3
	mov	byte ptr [rbp - 0x65], cl
	jge	.label_150
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	movsx	eax, byte ptr [rdx]
	cmp	eax, 0x30
	mov	byte ptr [rbp - 0x66], cl
	jl	.label_154
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x37
	setle	dl
	mov	byte ptr [rbp - 0x66], dl
.label_154:
	mov	al, byte ptr [rbp - 0x66]
	mov	byte ptr [rbp - 0x65], al
.label_150:
	mov	al, byte ptr [rbp - 0x65]
	test	al, 1
	jne	.label_127
	jmp	.label_161
.label_127:
	mov	eax, dword ptr [rbp - 0x1c]
	shl	eax, 3
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx]
	sub	edx, 0x30
	add	eax, edx
	mov	dword ptr [rbp - 0x1c], eax
	mov	eax, dword ptr [rbp - 0x20]
	add	eax, 1
	mov	dword ptr [rbp - 0x20], eax
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	jmp	.label_132
.label_161:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rbp - 0x18], rsi
	mov	byte ptr [rdx], cl
	jmp	.label_125
.label_131:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax], 7
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_125
.label_137:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax], 8
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_125
.label_147:
	jmp	.label_138
.label_138:
	mov	rax, qword ptr [rbp - 8]
	cmp	byte ptr [rax], 0
	je	.label_139
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_138
.label_139:
	jmp	.label_125
.label_153:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax], 0xc
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_125
.label_160:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax], 0xa
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_125
.label_164:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax], 0xd
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_125
.label_128:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax], 9
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_125
.label_134:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax], 0xb
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_125
.label_155:
	jmp	.label_125
.label_143:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax], 0x5c
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	mov	dl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax], dl
.label_125:
	jmp	.label_146
.label_151:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	mov	dl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax], dl
.label_146:
	jmp	.label_157
.label_148:
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403180

	.globl initialize_regex
	.type initialize_regex, @function
initialize_regex:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	test	byte ptr [byte ptr [ignore_case]],  1
	je	.label_169
	mov	dword ptr [rbp - 4], 0
.label_183:
	cmp	dword ptr [rbp - 4], 0x100
	jge	.label_177
	mov	edi, dword ptr [rbp - 4]
	call	toupper
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 4]
	mov	byte ptr [byte ptr [+ (rdx * 1) + folded_chars]],  cl
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	mov	dword ptr [rbp - 4], eax
	jmp	.label_183
.label_177:
	jmp	.label_169
.label_169:
	cmp	qword ptr [word ptr [context_regex]],  0
	je	.label_176
	mov	rax,  qword ptr [word ptr [context_regex]]
	cmp	byte ptr [rax], 0
	jne	.label_180
	mov	qword ptr [word ptr [context_regex]],  0
.label_180:
	jmp	.label_171
.label_176:
	test	byte ptr [byte ptr [gnu_extensions]],  1
	je	.label_170
	test	byte ptr [byte ptr [input_reference]],  1
	jne	.label_170
	movabs	rax, OFFSET FLAT:label_178
	mov	qword ptr [word ptr [context_regex]],  rax
	jmp	.label_179
.label_170:
	movabs	rax, OFFSET FLAT:label_188
	mov	qword ptr [word ptr [context_regex]],  rax
.label_179:
	jmp	.label_171
.label_171:
	cmp	qword ptr [word ptr [context_regex]],  0
	je	.label_175
	movabs	rdi, OFFSET FLAT:context_regex
	call	compile_regex
.label_175:
	cmp	qword ptr [word ptr [word_regex]],  0
	je	.label_182
	movabs	rdi, OFFSET FLAT:word_regex
	call	compile_regex
	jmp	.label_172
.label_182:
	cmp	qword ptr [word ptr [break_file]],  0
	jne	.label_174
	test	byte ptr [byte ptr [gnu_extensions]],  1
	je	.label_184
	mov	dword ptr [rbp - 4], 0
.label_173:
	cmp	dword ptr [rbp - 4], 0x100
	jge	.label_189
	movsxd	rax, dword ptr [rbp - 4]
	mov	qword ptr [rbp - 0x10], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x400
	cmp	edx, 0
	setne	sil
	xor	sil, 0xff
	xor	sil, 0xff
	and	sil, 1
	movzx	edx, sil
	mov	sil, dl
	movsxd	rax, dword ptr [rbp - 4]
	mov	byte ptr [byte ptr [+ (rax * 1) + word_fastmap]],  sil
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	mov	dword ptr [rbp - 4], eax
	jmp	.label_173
.label_189:
	jmp	.label_181
.label_184:
	movabs	rdi, OFFSET FLAT:word_fastmap
	mov	esi, 1
	mov	eax, 0x100
	mov	edx, eax
	call	memset
	mov	byte ptr [byte ptr [label_185]],  0
	mov	byte ptr [byte ptr [label_186]],  0
	mov	byte ptr [byte ptr [label_187]],  0
.label_181:
	jmp	.label_174
.label_174:
	jmp	.label_172
.label_172:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403360

	.globl digest_break_file
	.type digest_break_file, @function
digest_break_file:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rsi, [rbp - 0x18]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	swallow_file_in_memory
	movabs	rdi, OFFSET FLAT:word_fastmap
	mov	esi, 1
	mov	eax, 0x100
	mov	edx, eax
	call	memset
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rdx
.label_190:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_191
	mov	rax, qword ptr [rbp - 0x20]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	byte ptr [byte ptr [+ (rcx * 1) + word_fastmap]],  0
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_190
.label_191:
	test	byte ptr [byte ptr [gnu_extensions]],  1
	jne	.label_192
	mov	byte ptr [byte ptr [label_185]],  0
	mov	byte ptr [byte ptr [label_186]],  0
	mov	byte ptr [byte ptr [label_187]],  0
.label_192:
	mov	rdi, qword ptr [rbp - 0x18]
	call	free
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403410

	.globl digest_word_file
	.type digest_word_file, @function
digest_word_file:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	lea	rax, [rbp - 0x20]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, rax
	call	swallow_file_in_memory
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
.label_193:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_200
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], rax
.label_194:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x28]
	cmp	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rbp - 0x31], cl
	jae	.label_197
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0xa
	setne	dl
	mov	byte ptr [rbp - 0x31], dl
.label_197:
	mov	al, byte ptr [rbp - 0x31]
	test	al, 1
	jne	.label_198
	jmp	.label_195
.label_198:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_194
.label_195:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	jbe	.label_199
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jne	.label_201
	mov	eax, 0x10
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	mov	rsi, qword ptr [rbp - 0x10]
	add	rsi, 8
	mov	rdi, rcx
	call	x2nrealloc
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
.label_201:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x10]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rax, rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x10]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x10]
	add	rcx, 1
	mov	qword ptr [rax + 0x10], rcx
.label_199:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_196
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
.label_196:
	jmp	.label_193
.label_200:
	mov	eax, 0x10
	mov	edx, eax
	movabs	rcx, OFFSET FLAT:compare_words
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 0x10]
	mov	qword ptr [rbp - 0x40], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x40]
	call	qsort
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4035b0

	.globl swallow_file_in_memory
	.type swallow_file_in_memory, @function
swallow_file_in_memory:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	al, 1
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	cmp	qword ptr [rbp - 8], 0
	mov	byte ptr [rbp - 0x1a], al
	je	.label_203
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	cmp	byte ptr [rcx], 0
	mov	byte ptr [rbp - 0x1a], al
	je	.label_203
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, OFFSET FLAT:label_88
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	sete	cl
	mov	byte ptr [rbp - 0x1a], cl
.label_203:
	mov	al, byte ptr [rbp - 0x1a]
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_206
	lea	rsi, [rbp - 0x18]
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	fread_file
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi], rax
	jmp	.label_205
.label_206:
	lea	rsi, [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 8]
	call	read_file
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi], rax
.label_205:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	jne	.label_207
	call	__errno_location
	mov	esi, dword ptr [rax]
	test	byte ptr [rbp - 0x19], 1
	mov	dword ptr [rbp - 0x20], esi
	je	.label_204
	movabs	rax, OFFSET FLAT:label_88
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_202
.label_204:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_202:
	mov	rax, qword ptr [rbp - 0x28]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rax
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_61
	mov	esi, dword ptr [rbp - 0x20]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_207:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	add	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4036d0

	.globl find_occurs_in_text
	.type find_occurs_in_text, @function
find_occurs_in_text:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x130
	mov	dword ptr [rbp - 4], edi
	movsxd	rax, dword ptr [rbp - 4]
	shl	rax, 4
	add	rax,  qword ptr [word ptr [text_buffers]]
	mov	qword ptr [rbp - 0x78], rax
	mov	qword ptr [rbp - 0x30], 0
	mov	rax, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
	test	byte ptr [byte ptr [input_reference]],  1
	je	.label_231
	jmp	.label_223
.label_223:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x78]
	cmp	rdx, qword ptr [rsi + 8]
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_227
	mov	rax, qword ptr [rbp - 0x28]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x90], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x90]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x2000
	cmp	edi, 0
	setne	dl
	xor	dl, 0xff
	mov	byte ptr [rbp - 0x81], dl
.label_227:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_252
	jmp	.label_256
.label_252:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_223
.label_256:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x30], rax
.label_225:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x78]
	cmp	rdx, qword ptr [rsi + 8]
	mov	byte ptr [rbp - 0x91], cl
	jae	.label_268
	mov	rax, qword ptr [rbp - 0x28]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0xa0], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xa0]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x2000
	cmp	edi, 0
	setne	dl
	mov	byte ptr [rbp - 0x91], dl
.label_268:
	mov	al, byte ptr [rbp - 0x91]
	test	al, 1
	jne	.label_214
	jmp	.label_222
.label_214:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_225
.label_222:
	jmp	.label_231
.label_231:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
.label_259:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x78]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_249
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x70], rax
	cmp	qword ptr [word ptr [context_regex]],  0
	je	.label_239
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rcx + 8]
	sub	rcx, rax
	mov	edx, OFFSET FLAT:context_regs
	mov	r9d, edx
	mov	edx, OFFSET FLAT:label_270
	mov	edi, edx
	xor	edx, edx
	mov	esi, edx
	mov	qword ptr [rbp - 0xa8], rsi
	mov	rsi, rax
	mov	rdx, rcx
	mov	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0xb0], rcx
	mov	rcx, rax
	mov	r8, qword ptr [rbp - 0xb0]
	call	rpl_re_search
	mov	rcx, rax
	sub	rax, -2
	mov	qword ptr [rbp - 0xb8], rcx
	mov	qword ptr [rbp - 0xc0], rax
	je	.label_274
	jmp	.label_278
.label_278:
	mov	rax, qword ptr [rbp - 0xb8]
	sub	rax, -1
	mov	qword ptr [rbp - 0xc8], rax
	je	.label_280
	jmp	.label_287
.label_287:
	mov	rax, qword ptr [rbp - 0xb8]
	test	rax, rax
	je	.label_288
	jmp	.label_216
.label_274:
	call	matcher_error
.label_280:
	jmp	.label_221
.label_288:
	movabs	rdi, OFFSET FLAT:label_262
	call	gettext
	mov	rdi,  qword ptr [word ptr [context_regex]]
	mov	qword ptr [rbp - 0xd0], rax
	call	quote
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0xd0]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_216:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [label_240]]
	add	rax, qword ptr [rcx]
	mov	qword ptr [rbp - 0x70], rax
.label_221:
	jmp	.label_239
.label_239:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x58], rax
.label_281:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	cmp	rdx, qword ptr [rbp - 0x50]
	mov	byte ptr [rbp - 0xd1], cl
	jbe	.label_250
	mov	rax, qword ptr [rbp - 0x58]
	movsx	edi, byte ptr [rax - 1]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0xe0], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xe0]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x2000
	cmp	edi, 0
	setne	dl
	mov	byte ptr [rbp - 0xd1], dl
.label_250:
	mov	al, byte ptr [rbp - 0xd1]
	test	al, 1
	jne	.label_276
	jmp	.label_279
.label_276:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, -1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_281
.label_279:
	jmp	.label_209
.label_209:
	cmp	qword ptr [word ptr [word_regex]],  0
	je	.label_286
	movabs	rax, OFFSET FLAT:word_regex
	add	rax, 8
	xor	ecx, ecx
	movabs	r9, OFFSET FLAT:word_regs
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rdi, qword ptr [rbp - 0x10]
	sub	rdx, rdi
	mov	rdi, qword ptr [rbp - 0x58]
	mov	r8, qword ptr [rbp - 0x10]
	sub	rdi, r8
	mov	qword ptr [rbp - 0xe8], rdi
	mov	rdi, rax
	mov	r8, qword ptr [rbp - 0xe8]
	call	rpl_re_search
	mov	qword ptr [rbp - 0x80], rax
	cmp	qword ptr [rbp - 0x80], -2
	jne	.label_238
	call	matcher_error
.label_238:
	cmp	qword ptr [rbp - 0x80], -1
	jne	.label_243
	jmp	.label_219
.label_243:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [label_246]]
	add	rax, qword ptr [rcx]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [label_247]]
	add	rax, qword ptr [rcx]
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_248
.label_286:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_285:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 0x58]
	mov	byte ptr [rbp - 0xe9], cl
	jae	.label_263
	mov	rax, qword ptr [rbp - 0x18]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	cmp	byte ptr [byte ptr [+ (rcx * 1) + word_fastmap]],  0
	setne	al
	xor	al, 0xff
	mov	byte ptr [rbp - 0xe9], al
.label_263:
	mov	al, byte ptr [rbp - 0xe9]
	test	al, 1
	jne	.label_282
	jmp	.label_284
.label_282:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_285
.label_284:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x58]
	jne	.label_211
	jmp	.label_219
.label_211:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x60], rax
.label_245:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 0x58]
	mov	byte ptr [rbp - 0xea], cl
	jae	.label_228
	mov	rax, qword ptr [rbp - 0x18]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	movsx	edi,  byte ptr [byte ptr [+ (rcx * 1) + word_fastmap]]
	cmp	edi, 0
	setne	al
	mov	byte ptr [rbp - 0xea], al
.label_228:
	mov	al, byte ptr [rbp - 0xea]
	test	al, 1
	jne	.label_241
	jmp	.label_254
.label_241:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_245
.label_254:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x68], rax
.label_248:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rbp - 0x60]
	jne	.label_255
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_209
.label_255:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax,  qword ptr [word ptr [maximum_word_length]]
	jle	.label_269
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [word ptr [maximum_word_length]],  rax
.label_269:
	test	byte ptr [byte ptr [input_reference]],  1
	je	.label_210
	jmp	.label_208
.label_208:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x40]
	jae	.label_226
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0xa
	jne	.label_218
	mov	rax,  qword ptr [word ptr [total_line_count]]
	add	rax, 1
	mov	qword ptr [word ptr [total_line_count]],  rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x20], rax
.label_273:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x78]
	cmp	rdx, qword ptr [rsi + 8]
	mov	byte ptr [rbp - 0xeb], cl
	jae	.label_237
	mov	rax, qword ptr [rbp - 0x28]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0xf8], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xf8]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x2000
	cmp	edi, 0
	setne	dl
	xor	dl, 0xff
	mov	byte ptr [rbp - 0xeb], dl
.label_237:
	mov	al, byte ptr [rbp - 0xeb]
	test	al, 1
	jne	.label_265
	jmp	.label_272
.label_265:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_273
.label_272:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_275
.label_218:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
.label_275:
	jmp	.label_208
.label_226:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x40]
	jbe	.label_264
	jmp	.label_209
.label_264:
	jmp	.label_210
.label_210:
	cmp	qword ptr [word ptr [ignore_file]],  0
	je	.label_213
	lea	rdi, [rbp - 0x40]
	movabs	rsi, OFFSET FLAT:ignore_table
	call	search_table
	test	al, 1
	jne	.label_229
	jmp	.label_213
.label_229:
	jmp	.label_209
.label_213:
	cmp	qword ptr [word ptr [only_file]],  0
	je	.label_233
	lea	rdi, [rbp - 0x40]
	movabs	rsi, OFFSET FLAT:only_table
	call	search_table
	test	al, 1
	jne	.label_233
	jmp	.label_209
.label_233:
	mov	rax,  qword ptr [word ptr [number_of_occurs]]
	cmp	rax,  qword ptr [word ptr [occurs_alloc]]
	jne	.label_244
	movabs	rsi, OFFSET FLAT:occurs_alloc
	mov	eax, 0x30
	mov	edx, eax
	mov	rcx,  qword ptr [word ptr [occurs_table]]
	mov	rdi, rcx
	call	x2nrealloc
	mov	qword ptr [word ptr [occurs_table]],  rax
.label_244:
	mov	rax,  qword ptr [word ptr [occurs_table]]
	imul	rcx,  qword ptr [word ptr [number_of_occurs]],  0x30
	add	rax, rcx
	mov	qword ptr [rbp - 0x48], rax
	test	byte ptr [byte ptr [auto_reference]],  1
	je	.label_266
	jmp	.label_267
.label_267:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x40]
	jae	.label_277
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0xa
	jne	.label_283
	mov	rax,  qword ptr [word ptr [total_line_count]]
	add	rax, 1
	mov	qword ptr [word ptr [total_line_count]],  rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x20], rax
.label_257:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x78]
	cmp	rdx, qword ptr [rsi + 8]
	mov	byte ptr [rbp - 0xf9], cl
	jae	.label_224
	mov	rax, qword ptr [rbp - 0x28]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x108], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x108]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x2000
	cmp	edi, 0
	setne	dl
	xor	dl, 0xff
	mov	byte ptr [rbp - 0xf9], dl
.label_224:
	mov	al, byte ptr [rbp - 0xf9]
	test	al, 1
	jne	.label_251
	jmp	.label_253
.label_251:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_257
.label_253:
	jmp	.label_261
.label_283:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
.label_261:
	jmp	.label_267
.label_277:
	mov	rax,  qword ptr [word ptr [total_line_count]]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx + 0x20], rax
	jmp	.label_236
.label_266:
	test	byte ptr [byte ptr [input_reference]],  1
	je	.label_212
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rax, rcx
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx + 0x20], rax
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax,  qword ptr [word ptr [reference_max_width]]
	jle	.label_217
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [word ptr [reference_max_width]],  rax
.label_217:
	jmp	.label_212
.label_212:
	jmp	.label_236
.label_236:
	test	byte ptr [byte ptr [input_reference]],  1
	je	.label_220
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x50]
	jne	.label_220
	jmp	.label_230
.label_230:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x50]
	cmp	rdx, qword ptr [rbp - 0x58]
	mov	byte ptr [rbp - 0x109], cl
	jae	.label_232
	mov	rax, qword ptr [rbp - 0x50]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x118], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x118]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x2000
	cmp	edi, 0
	setne	dl
	xor	dl, 0xff
	mov	byte ptr [rbp - 0x109], dl
.label_232:
	mov	al, byte ptr [rbp - 0x109]
	test	al, 1
	jne	.label_235
	jmp	.label_260
.label_235:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_230
.label_260:
	jmp	.label_242
.label_242:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x50]
	cmp	rdx, qword ptr [rbp - 0x58]
	mov	byte ptr [rbp - 0x119], cl
	jae	.label_271
	mov	rax, qword ptr [rbp - 0x50]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x128], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x128]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x2000
	cmp	edi, 0
	setne	dl
	mov	byte ptr [rbp - 0x119], dl
.label_271:
	mov	al, byte ptr [rbp - 0x119]
	test	al, 1
	jne	.label_215
	jmp	.label_234
.label_215:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_242
.label_234:
	jmp	.label_220
.label_220:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rax], rcx
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 8], rcx
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rax, rcx
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rax, rcx
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx + 0x18], rax
	mov	edx, dword ptr [rbp - 4]
	mov	rax, qword ptr [rbp - 0x48]
	mov	dword ptr [rax + 0x28], edx
	mov	rax,  qword ptr [word ptr [number_of_occurs]]
	add	rax, 1
	mov	qword ptr [word ptr [number_of_occurs]],  rax
	jmp	.label_209
.label_219:
	jmp	.label_258
.label_258:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_259
.label_249:
	add	rsp, 0x130
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4040b0

	.globl sort_found_occurs
	.type sort_found_occurs, @function
sort_found_occurs:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	cmp	qword ptr [word ptr [number_of_occurs]],  0
	je	.label_289
	mov	eax, 0x30
	mov	edx, eax
	movabs	rcx, OFFSET FLAT:compare_occurs
	mov	rsi,  qword ptr [word ptr [occurs_table]]
	mov	rdi,  qword ptr [word ptr [number_of_occurs]]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 8]
	call	qsort
.label_289:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404100

	.globl fix_output_parameters
	.type fix_output_parameters, @function
fix_output_parameters:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	test	byte ptr [byte ptr [auto_reference]],  1
	je	.label_290
	mov	qword ptr [word ptr [reference_max_width]],  0
	mov	qword ptr [rbp - 8], 0
.label_320:
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx,  dword ptr [dword ptr [number_input_files]]
	cmp	rax, rcx
	jae	.label_303
	mov	rax, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [file_line_count]]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 8], 0
	jbe	.label_308
	mov	rax, qword ptr [rbp - 8]
	sub	rax, 1
	mov	rcx,  qword ptr [word ptr [file_line_count]]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x10], rcx
.label_308:
	movabs	rsi, OFFSET FLAT:label_291
	lea	rdi, [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	al, 0
	call	sprintf
	movsxd	rdx, eax
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	rsi,  qword ptr [word ptr [input_file_name]]
	cmp	qword ptr [rsi + rdx*8], 0
	je	.label_297
	mov	rax, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [input_file_name]]
	mov	rdi, qword ptr [rcx + rax*8]
	call	strlen
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
.label_297:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax,  qword ptr [word ptr [reference_max_width]]
	jle	.label_293
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [word ptr [reference_max_width]],  rax
.label_293:
	jmp	.label_305
.label_305:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_320
.label_303:
	mov	rax,  qword ptr [word ptr [reference_max_width]]
	add	rax, 1
	mov	qword ptr [word ptr [reference_max_width]],  rax
	mov	rax,  qword ptr [word ptr [reference_max_width]]
	add	rax, 1
	mov	rdi, rax
	call	xmalloc
	mov	qword ptr [word ptr [reference]],  rax
.label_290:
	test	byte ptr [byte ptr [auto_reference]],  1
	jne	.label_306
	test	byte ptr [byte ptr [input_reference]],  1
	je	.label_312
.label_306:
	test	byte ptr [byte ptr [right_reference]],  1
	jne	.label_312
	mov	rax,  qword ptr [word ptr [reference_max_width]]
	add	rax,  qword ptr [word ptr [gap_size]]
	mov	rcx,  qword ptr [word ptr [line_width]]
	sub	rcx, rax
	mov	qword ptr [word ptr [line_width]],  rcx
.label_312:
	cmp	qword ptr [word ptr [line_width]],  0
	jge	.label_292
	mov	qword ptr [word ptr [line_width]],  0
.label_292:
	mov	eax, 2
	mov	ecx, eax
	mov	rax,  qword ptr [word ptr [line_width]]
	cqo	
	idiv	rcx
	mov	qword ptr [word ptr [half_line_width]],  rax
	mov	rax,  qword ptr [word ptr [half_line_width]]
	sub	rax,  qword ptr [word ptr [gap_size]]
	mov	qword ptr [word ptr [before_max_width]],  rax
	mov	rax,  qword ptr [word ptr [half_line_width]]
	mov	qword ptr [word ptr [keyafter_max_width]],  rax
	cmp	qword ptr [word ptr [truncation_string]],  0
	je	.label_299
	mov	rax,  qword ptr [word ptr [truncation_string]]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_299
	mov	rdi,  qword ptr [word ptr [truncation_string]]
	call	strlen
	mov	qword ptr [word ptr [truncation_string_length]],  rax
	jmp	.label_296
.label_299:
	mov	qword ptr [word ptr [truncation_string]],  0
.label_296:
	test	byte ptr [byte ptr [gnu_extensions]],  1
	je	.label_304
	mov	rax,  qword ptr [word ptr [truncation_string_length]]
	shl	rax, 1
	mov	rcx,  qword ptr [word ptr [before_max_width]]
	sub	rcx, rax
	mov	qword ptr [word ptr [before_max_width]],  rcx
	cmp	qword ptr [word ptr [before_max_width]],  0
	jge	.label_307
	mov	qword ptr [word ptr [before_max_width]],  0
.label_307:
	mov	rax,  qword ptr [word ptr [truncation_string_length]]
	shl	rax, 1
	mov	rcx,  qword ptr [word ptr [keyafter_max_width]]
	sub	rcx, rax
	mov	qword ptr [word ptr [keyafter_max_width]],  rcx
	jmp	.label_319
.label_304:
	mov	rax,  qword ptr [word ptr [truncation_string_length]]
	shl	rax, 1
	add	rax, 1
	mov	rcx,  qword ptr [word ptr [keyafter_max_width]]
	sub	rcx, rax
	mov	qword ptr [word ptr [keyafter_max_width]],  rcx
.label_319:
	mov	dword ptr [rbp - 0x1c], 0
.label_316:
	cmp	dword ptr [rbp - 0x1c], 0x100
	jge	.label_310
	movsxd	rax, dword ptr [rbp - 0x1c]
	mov	qword ptr [rbp - 0x48], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x48]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x2000
	cmp	edx, 0
	setne	sil
	xor	sil, 0xff
	xor	sil, 0xff
	and	sil, 1
	movzx	edx, sil
	mov	sil, dl
	movsxd	rax, dword ptr [rbp - 0x1c]
	mov	byte ptr [byte ptr [+ (rax * 1) + edited_flag]],  sil
	mov	eax, dword ptr [rbp - 0x1c]
	add	eax, 1
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_316
.label_310:
	mov	byte ptr [byte ptr [rip + label_300]],  1
	mov	eax,  dword ptr [dword ptr [rip + output_format]]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0x4c], eax
	mov	dword ptr [rbp - 0x50], ecx
	jb	.label_301
	jmp	.label_309
.label_309:
	mov	eax, dword ptr [rbp - 0x4c]
	sub	eax, 2
	mov	dword ptr [rbp - 0x54], eax
	je	.label_311
	jmp	.label_298
.label_298:
	mov	eax, dword ptr [rbp - 0x4c]
	sub	eax, 3
	mov	dword ptr [rbp - 0x58], eax
	je	.label_315
	jmp	.label_295
.label_301:
	jmp	.label_295
.label_311:
	mov	byte ptr [byte ptr [label_318]],  1
	jmp	.label_295
.label_315:
	movabs	rax, OFFSET FLAT:label_317
	mov	qword ptr [rbp - 0x28], rax
.label_302:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	byte ptr [rax], 0
	je	.label_294
	mov	rax, qword ptr [rbp - 0x28]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	byte ptr [byte ptr [+ (rcx * 1) + edited_flag]],  1
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_302
.label_294:
	mov	dword ptr [rbp - 0x1c], 0x80
.label_314:
	cmp	dword ptr [rbp - 0x1c], 0x100
	jge	.label_313
	mov	eax, dword ptr [rbp - 0x1c]
	mov	cl, al
	movzx	eax, cl
	mov	edx, eax
	movsx	eax,  byte ptr [byte ptr [+ (rdx * 1) + diacrit_diac]]
	cmp	eax, 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 0x1c]
	mov	byte ptr [byte ptr [+ (rdx * 1) + edited_flag]],  cl
	mov	eax, dword ptr [rbp - 0x1c]
	add	eax, 1
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_314
.label_313:
	jmp	.label_295
.label_295:
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404520

	.globl generate_all_output
	.type generate_all_output, @function
generate_all_output:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [word ptr [tail]],  0
	mov	qword ptr [word ptr [label_321]],  0
	mov	byte ptr [byte ptr [tail_truncation]],  0
	mov	qword ptr [word ptr [head]],  0
	mov	qword ptr [word ptr [label_322]],  0
	mov	byte ptr [byte ptr [head_truncation]],  0
	mov	rax,  qword ptr [word ptr [occurs_table]]
	mov	qword ptr [rbp - 0x10], rax
	mov	qword ptr [rbp - 8], 0
.label_328:
	mov	rax, qword ptr [rbp - 8]
	cmp	rax,  qword ptr [word ptr [number_of_occurs]]
	jge	.label_330
	mov	rdi, qword ptr [rbp - 0x10]
	call	define_all_fields
	mov	eax,  dword ptr [dword ptr [rip + output_format]]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0x14], eax
	mov	dword ptr [rbp - 0x18], ecx
	jb	.label_329
	jmp	.label_326
.label_326:
	mov	eax, dword ptr [rbp - 0x14]
	sub	eax, 2
	mov	dword ptr [rbp - 0x1c], eax
	je	.label_327
	jmp	.label_324
.label_324:
	mov	eax, dword ptr [rbp - 0x14]
	sub	eax, 3
	mov	dword ptr [rbp - 0x20], eax
	je	.label_325
	jmp	.label_323
.label_329:
	call	output_one_dumb_line
	jmp	.label_323
.label_327:
	call	output_one_roff_line
	jmp	.label_323
.label_325:
	call	output_one_tex_line
.label_323:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x30
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_328
.label_330:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404620

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
	#Procedure 0x404630

	.globl compile_regex
	.type compile_regex, @function
compile_regex:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	xor	eax, eax
	mov	ecx, eax
	movabs	rdx, OFFSET FLAT:folded_chars
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	add	rdi, 8
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], 0
	mov	rdi, qword ptr [rbp - 8]
	add	rdi, 0x48
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x20], rdi
	mov	r8b,  byte ptr [byte ptr [ignore_case]]
	test	r8b, 1
	cmovne	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x28], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x28], rdi
	mov	rdi, rcx
	call	strlen
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, rax
	call	rpl_re_compile_pattern
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_332
	movabs	rdi, OFFSET FLAT:label_331
	call	gettext
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0x38], rcx
	call	quote
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	r8, rax
	mov	al, 0
	call	error
.label_332:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_re_compile_fastmap
	mov	dword ptr [rbp - 0x3c], eax
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404730

	.globl compare_words
	.type compare_words, @function
compare_words:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 8]
	mov	rdi, qword ptr [rbp - 0x18]
	cmp	rsi, qword ptr [rdi + 8]
	jge	.label_342
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_336
.label_342:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
.label_336:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x20], rax
	test	byte ptr [byte ptr [ignore_case]],  1
	je	.label_344
	mov	qword ptr [rbp - 0x28], 0
.label_343:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x20]
	jge	.label_335
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	movsx	edi, byte ptr [rcx + rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	movzx	edi,  byte ptr [byte ptr [+ (rcx * 1) + folded_chars]]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx]
	movsx	esi, byte ptr [rdx + rcx]
	mov	dword ptr [rbp - 0x3c], edi
	mov	edi, esi
	call	to_uchar
	movzx	esi, al
	mov	ecx, esi
	movzx	esi,  byte ptr [byte ptr [+ (rcx * 1) + folded_chars]]
	mov	edi, dword ptr [rbp - 0x3c]
	sub	edi, esi
	mov	dword ptr [rbp - 0x2c], edi
	cmp	dword ptr [rbp - 0x2c], 0
	je	.label_338
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_347
.label_338:
	jmp	.label_333
.label_333:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_343
.label_335:
	jmp	.label_337
.label_344:
	mov	qword ptr [rbp - 0x28], 0
.label_346:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x20]
	jge	.label_341
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	movsx	edi, byte ptr [rcx + rax]
	call	to_uchar
	movzx	edi, al
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx]
	movsx	esi, byte ptr [rdx + rcx]
	mov	dword ptr [rbp - 0x40], edi
	mov	edi, esi
	call	to_uchar
	movzx	esi, al
	mov	edi, dword ptr [rbp - 0x40]
	sub	edi, esi
	mov	dword ptr [rbp - 0x2c], edi
	cmp	dword ptr [rbp - 0x2c], 0
	je	.label_340
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_347
.label_340:
	jmp	.label_334
.label_334:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_346
.label_341:
	jmp	.label_337
.label_337:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_339
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_345
.label_339:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	setg	dl
	and	dl, 1
	movzx	esi, dl
	mov	dword ptr [rbp - 0x44], esi
.label_345:
	mov	eax, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 4], eax
.label_347:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4048f0

	.globl matcher_error
	.type matcher_error, @function
matcher_error:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_348
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 4], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, rax
	mov	al, 0
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404930

	.globl search_table
	.type search_table, @function
search_table:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], 0
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 0x10]
	sub	rsi, 1
	mov	qword ptr [rbp - 0x28], rsi
.label_352:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x28]
	jg	.label_354
	mov	eax, 2
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, qword ptr [rbp - 0x28]
	mov	rax, rdx
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	mov	rsi, qword ptr [rbp - 0x30]
	shl	rsi, 4
	add	rcx, rsi
	mov	rdi, rax
	mov	rsi, rcx
	call	compare_words
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	jge	.label_350
	mov	rax, qword ptr [rbp - 0x30]
	sub	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_351
.label_350:
	cmp	dword ptr [rbp - 0x34], 0
	jle	.label_349
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_353
.label_349:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_355
.label_353:
	jmp	.label_351
.label_351:
	jmp	.label_352
.label_354:
	mov	byte ptr [rbp - 1], 0
.label_355:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404a00

	.globl compare_occurs
	.type compare_occurs, @function
compare_occurs:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x20]
	call	compare_words
	mov	dword ptr [rbp - 0x14], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_359
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_358
.label_359:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx]
	jae	.label_356
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_357
.label_356:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx]
	seta	dl
	and	dl, 1
	movzx	esi, dl
	mov	dword ptr [rbp - 0x28], esi
.label_357:
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x24], eax
.label_358:
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404a90

	.globl define_all_fields
	.type define_all_fields, @function
define_all_fields:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1b0
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [word ptr [keyafter]],  rdi
	mov	rdi,  qword ptr [word ptr [keyafter]]
	mov	rax, qword ptr [rbp - 8]
	add	rdi, qword ptr [rax + 8]
	mov	qword ptr [word ptr [label_425]],  rdi
	mov	rax,  qword ptr [word ptr [keyafter]]
	mov	rdi, qword ptr [rbp - 8]
	add	rax, qword ptr [rdi + 0x10]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax,  qword ptr [word ptr [keyafter]]
	mov	rdi, qword ptr [rbp - 8]
	add	rax, qword ptr [rdi + 0x18]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 8]
	movsxd	rax, dword ptr [rax + 0x28]
	shl	rax, 4
	add	rax,  qword ptr [word ptr [text_buffers]]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 8]
	movsxd	rax, dword ptr [rax + 0x28]
	shl	rax, 4
	add	rax,  qword ptr [word ptr [text_buffers]]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax,  qword ptr [word ptr [label_425]]
	mov	qword ptr [rbp - 0x20], rax
.label_418:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x20]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x89], cl
	jae	.label_445
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx,  qword ptr [word ptr [keyafter]]
	add	rcx,  qword ptr [word ptr [keyafter_max_width]]
	cmp	rax, rcx
	setbe	dl
	mov	byte ptr [rbp - 0x89], dl
.label_445:
	mov	al, byte ptr [rbp - 0x89]
	test	al, 1
	jne	.label_398
	jmp	.label_459
.label_398:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [word ptr [label_425]],  rax
	cmp	qword ptr [word ptr [word_regex]],  0
	je	.label_426
	movabs	rax, OFFSET FLAT:word_regex
	add	rax, 8
	xor	ecx, ecx
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	r8, qword ptr [rbp - 0x20]
	sub	rdi, r8
	mov	qword ptr [rbp - 0x98], rdi
	mov	rdi, rax
	mov	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0xa0], rdx
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	r8, qword ptr [rbp - 0xa0]
	call	rpl_re_match
	mov	qword ptr [rbp - 0x60], rax
	cmp	qword ptr [rbp - 0x60], -2
	jne	.label_484
	call	matcher_error
.label_484:
	cmp	qword ptr [rbp - 0x60], -1
	jne	.label_487
	mov	eax, 1
	mov	ecx, eax
	mov	qword ptr [rbp - 0xa8], rcx
	jmp	.label_361
.label_487:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0xa8], rax
.label_361:
	mov	rax, qword ptr [rbp - 0xa8]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_371
.label_426:
	mov	rax, qword ptr [rbp - 0x20]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	cmp	byte ptr [byte ptr [+ (rcx * 1) + word_fastmap]],  0
	je	.label_380
	jmp	.label_389
.label_389:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x20]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0xa9], cl
	jae	.label_392
	mov	rax, qword ptr [rbp - 0x20]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	movsx	edi,  byte ptr [byte ptr [+ (rcx * 1) + word_fastmap]]
	cmp	edi, 0
	setne	al
	mov	byte ptr [rbp - 0xa9], al
.label_392:
	mov	al, byte ptr [rbp - 0xa9]
	test	al, 1
	jne	.label_408
	jmp	.label_410
.label_408:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_389
.label_410:
	jmp	.label_395
.label_380:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
.label_395:
	jmp	.label_371
.label_371:
	jmp	.label_418
.label_459:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx,  qword ptr [word ptr [keyafter]]
	add	rcx,  qword ptr [word ptr [keyafter_max_width]]
	cmp	rax, rcx
	ja	.label_421
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [word ptr [label_425]],  rax
.label_421:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [word ptr [truncation_string]],  0
	mov	byte ptr [rbp - 0xaa], cl
	je	.label_433
	mov	rax,  qword ptr [word ptr [label_425]]
	cmp	rax, qword ptr [rbp - 0x30]
	setb	cl
	mov	byte ptr [rbp - 0xaa], cl
.label_433:
	mov	al, byte ptr [rbp - 0xaa]
	and	al, 1
	mov	byte ptr [byte ptr [keyafter_truncation]],  al
.label_477:
	xor	eax, eax
	mov	cl, al
	mov	rdx,  qword ptr [word ptr [label_425]]
	cmp	rdx,  qword ptr [word ptr [keyafter]]
	mov	byte ptr [rbp - 0xab], cl
	jbe	.label_449
	mov	rax,  qword ptr [word ptr [label_425]]
	movsx	edi, byte ptr [rax - 1]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0xb8], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xb8]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x2000
	cmp	edi, 0
	setne	dl
	mov	byte ptr [rbp - 0xab], dl
.label_449:
	mov	al, byte ptr [rbp - 0xab]
	test	al, 1
	jne	.label_469
	jmp	.label_474
.label_469:
	mov	rax,  qword ptr [word ptr [label_425]]
	add	rax, -1
	mov	qword ptr [word ptr [label_425]],  rax
	jmp	.label_477
.label_474:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 8]
	sub	rcx, qword ptr [rdx + 0x10]
	mov	rdx,  qword ptr [word ptr [half_line_width]]
	add	rdx,  qword ptr [word ptr [maximum_word_length]]
	cmp	rcx, rdx
	jle	.label_393
	xor	eax, eax
	mov	ecx, eax
	mov	rdx,  qword ptr [word ptr [keyafter]]
	mov	rsi,  qword ptr [word ptr [half_line_width]]
	add	rsi,  qword ptr [word ptr [maximum_word_length]]
	sub	rcx, rsi
	add	rdx, rcx
	mov	qword ptr [rbp - 0x38], rdx
	cmp	qword ptr [word ptr [word_regex]],  0
	je	.label_486
	movabs	rax, OFFSET FLAT:word_regex
	add	rax, 8
	xor	ecx, ecx
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdi,  qword ptr [word ptr [keyafter]]
	mov	r8, qword ptr [rbp - 0x38]
	sub	rdi, r8
	mov	qword ptr [rbp - 0xc0], rdi
	mov	rdi, rax
	mov	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0xc8], rdx
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	r8, qword ptr [rbp - 0xc8]
	call	rpl_re_match
	mov	qword ptr [rbp - 0x68], rax
	cmp	qword ptr [rbp - 0x68], -2
	jne	.label_399
	call	matcher_error
.label_399:
	cmp	qword ptr [rbp - 0x68], -1
	jne	.label_404
	mov	eax, 1
	mov	ecx, eax
	mov	qword ptr [rbp - 0xd0], rcx
	jmp	.label_384
.label_404:
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0xd0], rax
.label_384:
	mov	rax, qword ptr [rbp - 0xd0]
	add	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_413
.label_486:
	mov	rax, qword ptr [rbp - 0x38]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	cmp	byte ptr [byte ptr [+ (rcx * 1) + word_fastmap]],  0
	je	.label_420
	jmp	.label_435
.label_435:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x38]
	cmp	rdx,  qword ptr [word ptr [keyafter]]
	mov	byte ptr [rbp - 0xd1], cl
	jae	.label_466
	mov	rax, qword ptr [rbp - 0x38]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	movsx	edi,  byte ptr [byte ptr [+ (rcx * 1) + word_fastmap]]
	cmp	edi, 0
	setne	al
	mov	byte ptr [rbp - 0xd1], al
.label_466:
	mov	al, byte ptr [rbp - 0xd1]
	test	al, 1
	jne	.label_444
	jmp	.label_457
.label_444:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_435
.label_457:
	jmp	.label_452
.label_420:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
.label_452:
	jmp	.label_413
.label_413:
	jmp	.label_456
.label_393:
	mov	rax,  qword ptr [word ptr [keyafter]]
	mov	rcx, qword ptr [rbp - 8]
	add	rax, qword ptr [rcx + 0x10]
	mov	qword ptr [rbp - 0x38], rax
.label_456:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [word ptr [before]],  rax
	mov	rax,  qword ptr [word ptr [keyafter]]
	mov	qword ptr [word ptr [label_364]],  rax
.label_365:
	xor	eax, eax
	mov	cl, al
	mov	rdx,  qword ptr [word ptr [label_364]]
	cmp	rdx,  qword ptr [word ptr [before]]
	mov	byte ptr [rbp - 0xd2], cl
	jbe	.label_467
	mov	rax,  qword ptr [word ptr [label_364]]
	movsx	edi, byte ptr [rax - 1]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0xe0], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xe0]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x2000
	cmp	edi, 0
	setne	dl
	mov	byte ptr [rbp - 0xd2], dl
.label_467:
	mov	al, byte ptr [rbp - 0xd2]
	test	al, 1
	jne	.label_360
	jmp	.label_363
.label_360:
	mov	rax,  qword ptr [word ptr [label_364]]
	add	rax, -1
	mov	qword ptr [word ptr [label_364]],  rax
	jmp	.label_365
.label_363:
	jmp	.label_372
.label_372:
	mov	rax,  qword ptr [word ptr [before]]
	add	rax,  qword ptr [word ptr [before_max_width]]
	cmp	rax,  qword ptr [word ptr [label_364]]
	jae	.label_374
	cmp	qword ptr [word ptr [word_regex]],  0
	je	.label_387
	movabs	rax, OFFSET FLAT:word_regex
	add	rax, 8
	xor	ecx, ecx
	mov	edx, ecx
	mov	rsi,  qword ptr [word ptr [before]]
	mov	rdi,  qword ptr [word ptr [label_364]]
	mov	r8,  qword ptr [word ptr [before]]
	sub	rdi, r8
	mov	qword ptr [rbp - 0xe8], rdi
	mov	rdi, rax
	mov	rax, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0xf0], rdx
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0xf0]
	mov	r8, qword ptr [rbp - 0xf0]
	call	rpl_re_match
	mov	qword ptr [rbp - 0x70], rax
	cmp	qword ptr [rbp - 0x70], -2
	jne	.label_414
	call	matcher_error
.label_414:
	cmp	qword ptr [rbp - 0x70], -1
	jne	.label_419
	mov	eax, 1
	mov	ecx, eax
	mov	qword ptr [rbp - 0xf8], rcx
	jmp	.label_422
.label_419:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0xf8], rax
.label_422:
	mov	rax, qword ptr [rbp - 0xf8]
	add	rax,  qword ptr [word ptr [before]]
	mov	qword ptr [word ptr [before]],  rax
	jmp	.label_370
.label_387:
	mov	rax,  qword ptr [word ptr [before]]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	cmp	byte ptr [byte ptr [+ (rcx * 1) + word_fastmap]],  0
	je	.label_440
	jmp	.label_447
.label_447:
	xor	eax, eax
	mov	cl, al
	mov	rdx,  qword ptr [word ptr [before]]
	cmp	rdx,  qword ptr [word ptr [label_364]]
	mov	byte ptr [rbp - 0xf9], cl
	jae	.label_448
	mov	rax,  qword ptr [word ptr [before]]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	movsx	edi,  byte ptr [byte ptr [+ (rcx * 1) + word_fastmap]]
	cmp	edi, 0
	setne	al
	mov	byte ptr [rbp - 0xf9], al
.label_448:
	mov	al, byte ptr [rbp - 0xf9]
	test	al, 1
	jne	.label_461
	jmp	.label_465
.label_461:
	mov	rax,  qword ptr [word ptr [before]]
	add	rax, 1
	mov	qword ptr [word ptr [before]],  rax
	jmp	.label_447
.label_465:
	jmp	.label_475
.label_440:
	mov	rax,  qword ptr [word ptr [before]]
	add	rax, 1
	mov	qword ptr [word ptr [before]],  rax
.label_475:
	jmp	.label_370
.label_370:
	jmp	.label_372
.label_374:
	cmp	qword ptr [word ptr [truncation_string]],  0
	je	.label_482
	mov	rax,  qword ptr [word ptr [before]]
	mov	qword ptr [rbp - 0x20], rax
.label_390:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x20]
	cmp	rdx, qword ptr [rbp - 0x50]
	mov	byte ptr [rbp - 0xfa], cl
	jbe	.label_485
	mov	rax, qword ptr [rbp - 0x20]
	movsx	edi, byte ptr [rax - 1]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x108], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x108]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x2000
	cmp	edi, 0
	setne	dl
	mov	byte ptr [rbp - 0xfa], dl
.label_485:
	mov	al, byte ptr [rbp - 0xfa]
	test	al, 1
	jne	.label_381
	jmp	.label_388
.label_381:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_390
.label_388:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x28]
	seta	cl
	and	cl, 1
	mov	byte ptr [byte ptr [before_truncation]],  cl
	jmp	.label_423
.label_482:
	mov	byte ptr [byte ptr [before_truncation]],  0
.label_423:
	jmp	.label_403
.label_403:
	xor	eax, eax
	mov	cl, al
	mov	rdx,  qword ptr [word ptr [before]]
	cmp	rdx, qword ptr [rbp - 0x58]
	mov	byte ptr [rbp - 0x109], cl
	jae	.label_405
	mov	rax,  qword ptr [word ptr [before]]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x118], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x118]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x2000
	cmp	edi, 0
	setne	dl
	mov	byte ptr [rbp - 0x109], dl
.label_405:
	mov	al, byte ptr [rbp - 0x109]
	test	al, 1
	jne	.label_428
	jmp	.label_431
.label_428:
	mov	rax,  qword ptr [word ptr [before]]
	add	rax, 1
	mov	qword ptr [word ptr [before]],  rax
	jmp	.label_403
.label_431:
	mov	rax,  qword ptr [word ptr [before_max_width]]
	mov	rcx,  qword ptr [word ptr [label_364]]
	mov	rdx,  qword ptr [word ptr [before]]
	sub	rcx, rdx
	sub	rax, rcx
	sub	rax,  qword ptr [word ptr [gap_size]]
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jle	.label_438
	mov	rax,  qword ptr [word ptr [label_425]]
	mov	qword ptr [word ptr [tail]],  rax
.label_481:
	xor	eax, eax
	mov	cl, al
	mov	rdx,  qword ptr [word ptr [tail]]
	cmp	rdx, qword ptr [rbp - 0x58]
	mov	byte ptr [rbp - 0x119], cl
	jae	.label_378
	mov	rax,  qword ptr [word ptr [tail]]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x128], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x128]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x2000
	cmp	edi, 0
	setne	dl
	mov	byte ptr [rbp - 0x119], dl
.label_378:
	mov	al, byte ptr [rbp - 0x119]
	test	al, 1
	jne	.label_397
	jmp	.label_479
.label_397:
	mov	rax,  qword ptr [word ptr [tail]]
	add	rax, 1
	mov	qword ptr [word ptr [tail]],  rax
	jmp	.label_481
.label_479:
	mov	rax,  qword ptr [word ptr [tail]]
	mov	qword ptr [word ptr [label_321]],  rax
	mov	rax,  qword ptr [word ptr [label_321]]
	mov	qword ptr [rbp - 0x20], rax
.label_470:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x20]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_369
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx,  qword ptr [word ptr [tail]]
	add	rcx, qword ptr [rbp - 0x10]
	cmp	rax, rcx
	setb	dl
	mov	byte ptr [rbp - 0x129], dl
.label_369:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_377
	jmp	.label_382
.label_377:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [word ptr [label_321]],  rax
	cmp	qword ptr [word ptr [word_regex]],  0
	je	.label_385
	movabs	rax, OFFSET FLAT:word_regex
	add	rax, 8
	xor	ecx, ecx
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	r8, qword ptr [rbp - 0x20]
	sub	rdi, r8
	mov	qword ptr [rbp - 0x138], rdi
	mov	rdi, rax
	mov	rax, qword ptr [rbp - 0x138]
	mov	qword ptr [rbp - 0x140], rdx
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x140]
	mov	r8, qword ptr [rbp - 0x140]
	call	rpl_re_match
	mov	qword ptr [rbp - 0x78], rax
	cmp	qword ptr [rbp - 0x78], -2
	jne	.label_488
	call	matcher_error
.label_488:
	cmp	qword ptr [rbp - 0x78], -1
	jne	.label_415
	mov	eax, 1
	mov	ecx, eax
	mov	qword ptr [rbp - 0x148], rcx
	jmp	.label_432
.label_415:
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x148], rax
.label_432:
	mov	rax, qword ptr [rbp - 0x148]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_437
.label_385:
	mov	rax, qword ptr [rbp - 0x20]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	cmp	byte ptr [byte ptr [+ (rcx * 1) + word_fastmap]],  0
	je	.label_424
	jmp	.label_439
.label_439:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x20]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x149], cl
	jae	.label_443
	mov	rax, qword ptr [rbp - 0x20]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	movsx	edi,  byte ptr [byte ptr [+ (rcx * 1) + word_fastmap]]
	cmp	edi, 0
	setne	al
	mov	byte ptr [rbp - 0x149], al
.label_443:
	mov	al, byte ptr [rbp - 0x149]
	test	al, 1
	jne	.label_455
	jmp	.label_458
.label_455:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_439
.label_458:
	jmp	.label_462
.label_424:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
.label_462:
	jmp	.label_437
.label_437:
	jmp	.label_470
.label_382:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx,  qword ptr [word ptr [tail]]
	add	rcx, qword ptr [rbp - 0x10]
	cmp	rax, rcx
	jae	.label_472
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [word ptr [label_321]],  rax
.label_472:
	mov	rax,  qword ptr [word ptr [label_321]]
	cmp	rax,  qword ptr [word ptr [tail]]
	jbe	.label_480
	xor	eax, eax
	mov	cl, al
	mov	byte ptr [byte ptr [keyafter_truncation]],  0
	cmp	qword ptr [word ptr [truncation_string]],  0
	mov	byte ptr [rbp - 0x14a], cl
	je	.label_451
	mov	rax,  qword ptr [word ptr [label_321]]
	cmp	rax, qword ptr [rbp - 0x30]
	setb	cl
	mov	byte ptr [rbp - 0x14a], cl
.label_451:
	mov	al, byte ptr [rbp - 0x14a]
	and	al, 1
	mov	byte ptr [byte ptr [tail_truncation]],  al
	jmp	.label_406
.label_480:
	mov	byte ptr [byte ptr [tail_truncation]],  0
.label_406:
	jmp	.label_375
.label_375:
	xor	eax, eax
	mov	cl, al
	mov	rdx,  qword ptr [word ptr [label_321]]
	cmp	rdx,  qword ptr [word ptr [tail]]
	mov	byte ptr [rbp - 0x14b], cl
	jbe	.label_453
	mov	rax,  qword ptr [word ptr [label_321]]
	movsx	edi, byte ptr [rax - 1]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x158], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x158]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x2000
	cmp	edi, 0
	setne	dl
	mov	byte ptr [rbp - 0x14b], dl
.label_453:
	mov	al, byte ptr [rbp - 0x14b]
	test	al, 1
	jne	.label_409
	jmp	.label_411
.label_409:
	mov	rax,  qword ptr [word ptr [label_321]]
	add	rax, -1
	mov	qword ptr [word ptr [label_321]],  rax
	jmp	.label_375
.label_411:
	jmp	.label_417
.label_438:
	mov	qword ptr [word ptr [tail]],  0
	mov	qword ptr [word ptr [label_321]],  0
	mov	byte ptr [byte ptr [tail_truncation]],  0
.label_417:
	mov	rax,  qword ptr [word ptr [keyafter_max_width]]
	mov	rcx,  qword ptr [word ptr [label_425]]
	mov	rdx,  qword ptr [word ptr [keyafter]]
	sub	rcx, rdx
	sub	rax, rcx
	sub	rax,  qword ptr [word ptr [gap_size]]
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	jle	.label_427
	mov	rax,  qword ptr [word ptr [before]]
	mov	qword ptr [word ptr [label_322]],  rax
.label_471:
	xor	eax, eax
	mov	cl, al
	mov	rdx,  qword ptr [word ptr [label_322]]
	cmp	rdx, qword ptr [rbp - 0x50]
	mov	byte ptr [rbp - 0x159], cl
	jbe	.label_446
	mov	rax,  qword ptr [word ptr [label_322]]
	movsx	edi, byte ptr [rax - 1]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x168], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x168]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x2000
	cmp	edi, 0
	setne	dl
	mov	byte ptr [rbp - 0x159], dl
.label_446:
	mov	al, byte ptr [rbp - 0x159]
	test	al, 1
	jne	.label_464
	jmp	.label_468
.label_464:
	mov	rax,  qword ptr [word ptr [label_322]]
	add	rax, -1
	mov	qword ptr [word ptr [label_322]],  rax
	jmp	.label_471
.label_468:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [word ptr [head]],  rax
.label_373:
	mov	rax,  qword ptr [word ptr [head]]
	add	rax, qword ptr [rbp - 0x18]
	cmp	rax,  qword ptr [word ptr [label_322]]
	jae	.label_478
	cmp	qword ptr [word ptr [word_regex]],  0
	je	.label_483
	movabs	rax, OFFSET FLAT:word_regex
	add	rax, 8
	xor	ecx, ecx
	mov	edx, ecx
	mov	rsi,  qword ptr [word ptr [head]]
	mov	rdi,  qword ptr [word ptr [label_322]]
	mov	r8,  qword ptr [word ptr [head]]
	sub	rdi, r8
	mov	qword ptr [rbp - 0x170], rdi
	mov	rdi, rax
	mov	rax, qword ptr [rbp - 0x170]
	mov	qword ptr [rbp - 0x178], rdx
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x178]
	mov	r8, qword ptr [rbp - 0x178]
	call	rpl_re_match
	mov	qword ptr [rbp - 0x80], rax
	cmp	qword ptr [rbp - 0x80], -2
	jne	.label_386
	call	matcher_error
.label_386:
	cmp	qword ptr [rbp - 0x80], -1
	jne	.label_394
	mov	eax, 1
	mov	ecx, eax
	mov	qword ptr [rbp - 0x180], rcx
	jmp	.label_396
.label_394:
	mov	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x180], rax
.label_396:
	mov	rax, qword ptr [rbp - 0x180]
	add	rax,  qword ptr [word ptr [head]]
	mov	qword ptr [word ptr [head]],  rax
	jmp	.label_402
.label_483:
	mov	rax,  qword ptr [word ptr [head]]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	cmp	byte ptr [byte ptr [+ (rcx * 1) + word_fastmap]],  0
	je	.label_412
	jmp	.label_391
.label_391:
	xor	eax, eax
	mov	cl, al
	mov	rdx,  qword ptr [word ptr [head]]
	cmp	rdx,  qword ptr [word ptr [label_322]]
	mov	byte ptr [rbp - 0x181], cl
	jae	.label_429
	mov	rax,  qword ptr [word ptr [head]]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	movsx	edi,  byte ptr [byte ptr [+ (rcx * 1) + word_fastmap]]
	cmp	edi, 0
	setne	al
	mov	byte ptr [rbp - 0x181], al
.label_429:
	mov	al, byte ptr [rbp - 0x181]
	test	al, 1
	jne	.label_436
	jmp	.label_441
.label_436:
	mov	rax,  qword ptr [word ptr [head]]
	add	rax, 1
	mov	qword ptr [word ptr [head]],  rax
	jmp	.label_391
.label_441:
	jmp	.label_463
.label_412:
	mov	rax,  qword ptr [word ptr [head]]
	add	rax, 1
	mov	qword ptr [word ptr [head]],  rax
.label_463:
	jmp	.label_402
.label_402:
	jmp	.label_373
.label_478:
	mov	rax,  qword ptr [word ptr [label_322]]
	cmp	rax,  qword ptr [word ptr [head]]
	jbe	.label_454
	xor	eax, eax
	mov	cl, al
	mov	byte ptr [byte ptr [before_truncation]],  0
	cmp	qword ptr [word ptr [truncation_string]],  0
	mov	byte ptr [rbp - 0x182], cl
	je	.label_460
	mov	rax,  qword ptr [word ptr [head]]
	cmp	rax, qword ptr [rbp - 0x28]
	seta	cl
	mov	byte ptr [rbp - 0x182], cl
.label_460:
	mov	al, byte ptr [rbp - 0x182]
	and	al, 1
	mov	byte ptr [byte ptr [head_truncation]],  al
	jmp	.label_476
.label_454:
	mov	byte ptr [byte ptr [head_truncation]],  0
.label_476:
	jmp	.label_383
.label_383:
	xor	eax, eax
	mov	cl, al
	mov	rdx,  qword ptr [word ptr [head]]
	cmp	rdx,  qword ptr [word ptr [label_322]]
	mov	byte ptr [rbp - 0x183], cl
	jae	.label_430
	mov	rax,  qword ptr [word ptr [head]]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x190], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x190]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x2000
	cmp	edi, 0
	setne	dl
	mov	byte ptr [rbp - 0x183], dl
.label_430:
	mov	al, byte ptr [rbp - 0x183]
	test	al, 1
	jne	.label_376
	jmp	.label_400
.label_376:
	mov	rax,  qword ptr [word ptr [head]]
	add	rax, 1
	mov	qword ptr [word ptr [head]],  rax
	jmp	.label_383
.label_400:
	jmp	.label_442
.label_427:
	mov	qword ptr [word ptr [head]],  0
	mov	qword ptr [word ptr [label_322]],  0
	mov	byte ptr [byte ptr [head_truncation]],  0
.label_442:
	test	byte ptr [byte ptr [auto_reference]],  1
	je	.label_401
	mov	rax, qword ptr [rbp - 8]
	movsxd	rax, dword ptr [rax + 0x28]
	mov	rcx,  qword ptr [word ptr [input_file_name]]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_407
	movabs	rax, OFFSET FLAT:label_36
	mov	qword ptr [rbp - 0x40], rax
.label_407:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x28], 0
	jle	.label_416
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x28]
	sub	ecx, 1
	movsxd	rax, ecx
	mov	rdx,  qword ptr [word ptr [file_line_count]]
	mov	rax, qword ptr [rdx + rax*8]
	mov	rdx, qword ptr [rbp - 0x48]
	sub	rdx, rax
	mov	qword ptr [rbp - 0x48], rdx
.label_416:
	movabs	rsi, OFFSET FLAT:label_434
	mov	rdi,  qword ptr [word ptr [reference]]
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x198], rsi
	mov	rsi, rax
	call	stpcpy
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x198]
	mov	qword ptr [rbp - 0x1a0], rax
	mov	al, 0
	call	sprintf
	movsxd	rdx, eax
	mov	rsi, qword ptr [rbp - 0x1a0]
	add	rsi, rdx
	mov	qword ptr [word ptr [label_367]],  rsi
	jmp	.label_379
.label_401:
	test	byte ptr [byte ptr [input_reference]],  1
	je	.label_450
	mov	rax,  qword ptr [word ptr [keyafter]]
	mov	rcx, qword ptr [rbp - 8]
	add	rax, qword ptr [rcx + 0x20]
	mov	qword ptr [word ptr [reference]],  rax
	mov	rax,  qword ptr [word ptr [reference]]
	mov	qword ptr [word ptr [label_367]],  rax
.label_368:
	xor	eax, eax
	mov	cl, al
	mov	rdx,  qword ptr [word ptr [label_367]]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x1a1], cl
	jae	.label_473
	mov	rax,  qword ptr [word ptr [label_367]]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x1b0], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x1b0]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x2000
	cmp	edi, 0
	setne	dl
	xor	dl, 0xff
	mov	byte ptr [rbp - 0x1a1], dl
.label_473:
	mov	al, byte ptr [rbp - 0x1a1]
	test	al, 1
	jne	.label_362
	jmp	.label_366
.label_362:
	mov	rax,  qword ptr [word ptr [label_367]]
	add	rax, 1
	mov	qword ptr [word ptr [label_367]],  rax
	jmp	.label_368
.label_366:
	jmp	.label_450
.label_450:
	jmp	.label_379
.label_379:
	add	rsp, 0x1b0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405c50

	.globl output_one_dumb_line
	.type output_one_dumb_line, @function
output_one_dumb_line:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	test	byte ptr [byte ptr [right_reference]],  1
	jne	.label_491
	test	byte ptr [byte ptr [auto_reference]],  1
	je	.label_513
	mov	rdi,  qword ptr [word ptr [reference]]
	mov	rsi,  qword ptr [word ptr [label_367]]
	call	print_field
	mov	edi, 0x3a
	call	putchar_unlocked
	mov	rsi,  qword ptr [word ptr [reference_max_width]]
	add	rsi,  qword ptr [word ptr [gap_size]]
	mov	rcx,  qword ptr [word ptr [label_367]]
	mov	rdx,  qword ptr [word ptr [reference]]
	sub	rcx, rdx
	sub	rsi, rcx
	sub	rsi, 1
	mov	rdi, rsi
	mov	dword ptr [rbp - 4], eax
	call	print_spaces
	jmp	.label_507
.label_513:
	mov	rdi,  qword ptr [word ptr [reference]]
	mov	rsi,  qword ptr [word ptr [label_367]]
	call	print_field
	mov	rsi,  qword ptr [word ptr [reference_max_width]]
	add	rsi,  qword ptr [word ptr [gap_size]]
	mov	rdi,  qword ptr [word ptr [label_367]]
	mov	rax,  qword ptr [word ptr [reference]]
	sub	rdi, rax
	sub	rsi, rdi
	mov	rdi, rsi
	call	print_spaces
.label_507:
	jmp	.label_491
.label_491:
	mov	rax,  qword ptr [word ptr [tail]]
	cmp	rax,  qword ptr [word ptr [label_321]]
	jae	.label_494
	mov	rdi,  qword ptr [word ptr [tail]]
	mov	rsi,  qword ptr [word ptr [label_321]]
	call	print_field
	test	byte ptr [byte ptr [tail_truncation]],  1
	je	.label_505
	mov	rdi,  qword ptr [word ptr [truncation_string]]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 8], eax
.label_505:
	mov	rax,  qword ptr [word ptr [half_line_width]]
	sub	rax,  qword ptr [word ptr [gap_size]]
	mov	rcx,  qword ptr [word ptr [label_364]]
	mov	rdx,  qword ptr [word ptr [before]]
	sub	rcx, rdx
	sub	rax, rcx
	test	byte ptr [byte ptr [before_truncation]],  1
	mov	qword ptr [rbp - 0x10], rax
	je	.label_508
	mov	rax,  qword ptr [word ptr [truncation_string_length]]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_496
.label_508:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_496
.label_496:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, rax
	mov	rax,  qword ptr [word ptr [label_321]]
	mov	rdx,  qword ptr [word ptr [tail]]
	sub	rax, rdx
	sub	rcx, rax
	test	byte ptr [byte ptr [tail_truncation]],  1
	mov	qword ptr [rbp - 0x20], rcx
	je	.label_504
	mov	rax,  qword ptr [word ptr [truncation_string_length]]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_489
.label_504:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x28], rcx
	jmp	.label_489
.label_489:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rcx, rax
	mov	rdi, rcx
	call	print_spaces
	jmp	.label_497
.label_494:
	mov	rax,  qword ptr [word ptr [half_line_width]]
	sub	rax,  qword ptr [word ptr [gap_size]]
	mov	rcx,  qword ptr [word ptr [label_364]]
	mov	rdx,  qword ptr [word ptr [before]]
	sub	rcx, rdx
	sub	rax, rcx
	test	byte ptr [byte ptr [before_truncation]],  1
	mov	qword ptr [rbp - 0x30], rax
	je	.label_498
	mov	rax,  qword ptr [word ptr [truncation_string_length]]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_511
.label_498:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x38], rcx
	jmp	.label_511
.label_511:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, rax
	mov	rdi, rcx
	call	print_spaces
.label_497:
	test	byte ptr [byte ptr [before_truncation]],  1
	je	.label_512
	mov	rdi,  qword ptr [word ptr [truncation_string]]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x3c], eax
.label_512:
	mov	rdi,  qword ptr [word ptr [before]]
	mov	rsi,  qword ptr [word ptr [label_364]]
	call	print_field
	mov	rdi,  qword ptr [word ptr [gap_size]]
	call	print_spaces
	mov	rdi,  qword ptr [word ptr [keyafter]]
	mov	rsi,  qword ptr [word ptr [label_425]]
	call	print_field
	test	byte ptr [byte ptr [keyafter_truncation]],  1
	je	.label_514
	mov	rdi,  qword ptr [word ptr [truncation_string]]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x40], eax
.label_514:
	mov	rax,  qword ptr [word ptr [head]]
	cmp	rax,  qword ptr [word ptr [label_322]]
	jae	.label_492
	mov	rax,  qword ptr [word ptr [half_line_width]]
	mov	rcx,  qword ptr [word ptr [label_425]]
	mov	rdx,  qword ptr [word ptr [keyafter]]
	sub	rcx, rdx
	sub	rax, rcx
	test	byte ptr [byte ptr [keyafter_truncation]],  1
	mov	qword ptr [rbp - 0x48], rax
	je	.label_499
	mov	rax,  qword ptr [word ptr [truncation_string_length]]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_509
.label_499:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x50], rcx
	jmp	.label_509
.label_509:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x48]
	sub	rcx, rax
	mov	rax,  qword ptr [word ptr [label_322]]
	mov	rdx,  qword ptr [word ptr [head]]
	sub	rax, rdx
	sub	rcx, rax
	test	byte ptr [byte ptr [head_truncation]],  1
	mov	qword ptr [rbp - 0x58], rcx
	je	.label_515
	mov	rax,  qword ptr [word ptr [truncation_string_length]]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_500
.label_515:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_500
.label_500:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x58]
	sub	rcx, rax
	mov	rdi, rcx
	call	print_spaces
	test	byte ptr [byte ptr [head_truncation]],  1
	je	.label_510
	mov	rdi,  qword ptr [word ptr [truncation_string]]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x64], eax
.label_510:
	mov	rdi,  qword ptr [word ptr [head]]
	mov	rsi,  qword ptr [word ptr [label_322]]
	call	print_field
	jmp	.label_493
.label_492:
	test	byte ptr [byte ptr [auto_reference]],  1
	jne	.label_495
	test	byte ptr [byte ptr [input_reference]],  1
	je	.label_502
.label_495:
	test	byte ptr [byte ptr [right_reference]],  1
	je	.label_502
	mov	rax,  qword ptr [word ptr [half_line_width]]
	mov	rcx,  qword ptr [word ptr [label_425]]
	mov	rdx,  qword ptr [word ptr [keyafter]]
	sub	rcx, rdx
	sub	rax, rcx
	test	byte ptr [byte ptr [keyafter_truncation]],  1
	mov	qword ptr [rbp - 0x70], rax
	je	.label_506
	mov	rax,  qword ptr [word ptr [truncation_string_length]]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_490
.label_506:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x78], rcx
	jmp	.label_490
.label_490:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x70]
	sub	rcx, rax
	mov	rdi, rcx
	call	print_spaces
.label_502:
	jmp	.label_493
.label_493:
	test	byte ptr [byte ptr [auto_reference]],  1
	jne	.label_501
	test	byte ptr [byte ptr [input_reference]],  1
	je	.label_503
.label_501:
	test	byte ptr [byte ptr [right_reference]],  1
	je	.label_503
	mov	rdi,  qword ptr [word ptr [gap_size]]
	call	print_spaces
	mov	rdi,  qword ptr [word ptr [reference]]
	mov	rsi,  qword ptr [word ptr [label_367]]
	call	print_field
.label_503:
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x7c], eax
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406110

	.globl output_one_roff_line
	.type output_one_roff_line, @function
output_one_roff_line:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	movabs	rdi, OFFSET FLAT:label_518
	mov	rsi,  qword ptr [word ptr [macro_name]]
	mov	al, 0
	call	printf
	mov	rdi,  qword ptr [word ptr [tail]]
	mov	rsi,  qword ptr [word ptr [label_321]]
	mov	dword ptr [rbp - 4], eax
	call	print_field
	test	byte ptr [byte ptr [tail_truncation]],  1
	je	.label_516
	mov	rdi,  qword ptr [word ptr [truncation_string]]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 8], eax
.label_516:
	mov	edi, 0x22
	call	putchar_unlocked
	movabs	rdi, OFFSET FLAT:label_523
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	dword ptr [rbp - 0xc], eax
	call	fputs_unlocked
	test	byte ptr [byte ptr [before_truncation]],  1
	mov	dword ptr [rbp - 0x10], eax
	je	.label_519
	mov	rdi,  qword ptr [word ptr [truncation_string]]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x14], eax
.label_519:
	mov	rdi,  qword ptr [word ptr [before]]
	mov	rsi,  qword ptr [word ptr [label_364]]
	call	print_field
	mov	edi, 0x22
	call	putchar_unlocked
	movabs	rdi, OFFSET FLAT:label_523
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	dword ptr [rbp - 0x18], eax
	call	fputs_unlocked
	mov	rdi,  qword ptr [word ptr [keyafter]]
	mov	rsi,  qword ptr [word ptr [label_425]]
	mov	dword ptr [rbp - 0x1c], eax
	call	print_field
	test	byte ptr [byte ptr [keyafter_truncation]],  1
	je	.label_517
	mov	rdi,  qword ptr [word ptr [truncation_string]]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x20], eax
.label_517:
	mov	edi, 0x22
	call	putchar_unlocked
	movabs	rdi, OFFSET FLAT:label_523
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	dword ptr [rbp - 0x24], eax
	call	fputs_unlocked
	test	byte ptr [byte ptr [head_truncation]],  1
	mov	dword ptr [rbp - 0x28], eax
	je	.label_520
	mov	rdi,  qword ptr [word ptr [truncation_string]]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_520:
	mov	rdi,  qword ptr [word ptr [head]]
	mov	rsi,  qword ptr [word ptr [label_322]]
	call	print_field
	mov	edi, 0x22
	call	putchar_unlocked
	test	byte ptr [byte ptr [auto_reference]],  1
	mov	dword ptr [rbp - 0x30], eax
	jne	.label_521
	test	byte ptr [byte ptr [input_reference]],  1
	je	.label_522
.label_521:
	movabs	rdi, OFFSET FLAT:label_523
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	rdi,  qword ptr [word ptr [reference]]
	mov	rsi,  qword ptr [word ptr [label_367]]
	mov	dword ptr [rbp - 0x34], eax
	call	print_field
	mov	edi, 0x22
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x38], eax
.label_522:
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x3c], eax
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406310

	.globl output_one_tex_line
	.type output_one_tex_line, @function
output_one_tex_line:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	movabs	rdi, OFFSET FLAT:label_538
	mov	rsi,  qword ptr [word ptr [macro_name]]
	mov	al, 0
	call	printf
	mov	edi, 0x7b
	mov	dword ptr [rbp - 0x34], eax
	call	putchar_unlocked
	mov	rdi,  qword ptr [word ptr [tail]]
	mov	rsi,  qword ptr [word ptr [label_321]]
	mov	dword ptr [rbp - 0x38], eax
	call	print_field
	movabs	rdi, OFFSET FLAT:label_528
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	rdi,  qword ptr [word ptr [before]]
	mov	rsi,  qword ptr [word ptr [label_364]]
	mov	dword ptr [rbp - 0x3c], eax
	call	print_field
	movabs	rdi, OFFSET FLAT:label_528
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	rsi,  qword ptr [word ptr [keyafter]]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi,  qword ptr [word ptr [label_425]]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi,  qword ptr [word ptr [keyafter]]
	mov	qword ptr [rbp - 0x28], rsi
	cmp	qword ptr [word ptr [word_regex]],  0
	mov	dword ptr [rbp - 0x40], eax
	je	.label_533
	movabs	rax, OFFSET FLAT:word_regex
	add	rax, 8
	xor	ecx, ecx
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdi,  qword ptr [word ptr [label_425]]
	mov	r8, qword ptr [rbp - 0x28]
	sub	rdi, r8
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x50], rdx
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x50]
	mov	r8, qword ptr [rbp - 0x50]
	call	rpl_re_match
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], -2
	jne	.label_532
	call	matcher_error
.label_532:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_530
	mov	eax, 1
	mov	ecx, eax
	mov	qword ptr [rbp - 0x58], rcx
	jmp	.label_536
.label_530:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x58], rax
.label_536:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_531
.label_533:
	mov	rax, qword ptr [rbp - 0x28]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	cmp	byte ptr [byte ptr [+ (rcx * 1) + word_fastmap]],  0
	je	.label_535
	jmp	.label_524
.label_524:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x28]
	cmp	rdx,  qword ptr [word ptr [label_425]]
	mov	byte ptr [rbp - 0x59], cl
	jae	.label_526
	mov	rax, qword ptr [rbp - 0x28]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	movsx	edi,  byte ptr [byte ptr [+ (rcx * 1) + word_fastmap]]
	cmp	edi, 0
	setne	al
	mov	byte ptr [rbp - 0x59], al
.label_526:
	mov	al, byte ptr [rbp - 0x59]
	test	al, 1
	jne	.label_534
	jmp	.label_529
.label_534:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_524
.label_529:
	jmp	.label_527
.label_535:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
.label_527:
	jmp	.label_531
.label_531:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 8]
	call	print_field
	movabs	rdi, OFFSET FLAT:label_528
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x60], eax
	call	print_field
	movabs	rdi, OFFSET FLAT:label_528
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	rdi,  qword ptr [word ptr [head]]
	mov	rsi,  qword ptr [word ptr [label_322]]
	mov	dword ptr [rbp - 0x64], eax
	call	print_field
	mov	edi, 0x7d
	call	putchar_unlocked
	test	byte ptr [byte ptr [auto_reference]],  1
	mov	dword ptr [rbp - 0x68], eax
	jne	.label_537
	test	byte ptr [byte ptr [input_reference]],  1
	je	.label_525
.label_537:
	mov	edi, 0x7b
	call	putchar_unlocked
	mov	rdi,  qword ptr [word ptr [reference]]
	mov	rsi,  qword ptr [word ptr [label_367]]
	mov	dword ptr [rbp - 0x6c], eax
	call	print_field
	mov	edi, 0x7d
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x70], eax
.label_525:
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x74], eax
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4065e0

	.globl print_field
	.type print_field, @function
print_field:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xe0
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rsi
.label_552:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 8]
	jae	.label_593
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x21], cl
	movzx	edx, byte ptr [rbp - 0x21]
	mov	eax, edx
	cmp	byte ptr [byte ptr [+ (rax * 1) + edited_flag]],  0
	je	.label_541
	movzx	eax, byte ptr [rbp - 0x21]
	mov	ecx, eax
	movsx	eax,  byte ptr [byte ptr [+ (rcx * 1) + diacrit_diac]]
	mov	dword ptr [rbp - 0x20], eax
	cmp	dword ptr [rbp - 0x20], 0
	je	.label_551
	cmp	dword ptr [dword ptr [output_format]],  3
	jne	.label_551
	movzx	eax, byte ptr [rbp - 0x21]
	mov	ecx, eax
	movsx	eax,  byte ptr [byte ptr [rcx + diacrit_base]]
	mov	dword ptr [rbp - 0x1c], eax
	mov	eax, dword ptr [rbp - 0x20]
	dec	eax
	mov	ecx, eax
	sub	eax, 8
	mov	qword ptr [rbp - 0x30], rcx
	mov	dword ptr [rbp - 0x34], eax
	ja	.label_544
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_565]]
	jmp	rcx
.label_3909:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	ecx, eax
	sub	ecx, 0x41
	mov	dword ptr [rbp - 0x38], eax
	mov	dword ptr [rbp - 0x3c], ecx
	je	.label_567
	jmp	.label_571
.label_571:
	mov	eax, dword ptr [rbp - 0x38]
	sub	eax, 0x4f
	mov	dword ptr [rbp - 0x40], eax
	je	.label_572
	jmp	.label_574
.label_574:
	mov	eax, dword ptr [rbp - 0x38]
	sub	eax, 0x61
	mov	dword ptr [rbp - 0x44], eax
	je	.label_575
	jmp	.label_578
.label_578:
	mov	eax, dword ptr [rbp - 0x38]
	sub	eax, 0x6f
	mov	dword ptr [rbp - 0x48], eax
	jne	.label_580
	jmp	.label_584
.label_584:
	movabs	rdi, OFFSET FLAT:label_587
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_543
.label_572:
	movabs	rdi, OFFSET FLAT:label_591
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x50], eax
	jmp	.label_543
.label_575:
	movabs	rdi, OFFSET FLAT:label_545
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_543
.label_567:
	movabs	rdi, OFFSET FLAT:label_555
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_543
.label_580:
	mov	edi, 0x20
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x5c], eax
.label_543:
	jmp	.label_544
.label_3910:
	movabs	rdi, OFFSET FLAT:label_562
	movabs	rax, OFFSET FLAT:label_36
	movabs	rcx, OFFSET FLAT:label_547
	cmp	dword ptr [rbp - 0x1c], 0x69
	cmove	rax, rcx
	mov	edx, dword ptr [rbp - 0x1c]
	mov	rsi, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x60], eax
	jmp	.label_544
.label_3911:
	movabs	rdi, OFFSET FLAT:label_562
	movabs	rax, OFFSET FLAT:label_36
	movabs	rcx, OFFSET FLAT:label_547
	cmp	dword ptr [rbp - 0x1c], 0x69
	cmove	rax, rcx
	mov	edx, dword ptr [rbp - 0x1c]
	mov	rsi, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x64], eax
	jmp	.label_544
.label_3912:
	movabs	rdi, OFFSET FLAT:label_589
	movabs	rax, OFFSET FLAT:label_36
	movabs	rcx, OFFSET FLAT:label_547
	cmp	dword ptr [rbp - 0x1c], 0x69
	cmove	rax, rcx
	mov	edx, dword ptr [rbp - 0x1c]
	mov	rsi, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_544
.label_3913:
	movabs	rdi, OFFSET FLAT:label_546
	movabs	rax, OFFSET FLAT:label_36
	movabs	rcx, OFFSET FLAT:label_547
	cmp	dword ptr [rbp - 0x1c], 0x69
	cmove	rax, rcx
	mov	edx, dword ptr [rbp - 0x1c]
	mov	rsi, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x6c], eax
	jmp	.label_544
.label_3914:
	movabs	rdi, OFFSET FLAT:label_559
	movabs	rax, OFFSET FLAT:label_36
	movabs	rcx, OFFSET FLAT:label_547
	cmp	dword ptr [rbp - 0x1c], 0x69
	cmove	rax, rcx
	mov	edx, dword ptr [rbp - 0x1c]
	mov	rsi, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x70], eax
	jmp	.label_544
.label_3915:
	movabs	rdi, OFFSET FLAT:label_570
	mov	esi, dword ptr [rbp - 0x1c]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x74], eax
	jmp	.label_544
.label_3916:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	ecx, eax
	sub	ecx, 0x41
	mov	dword ptr [rbp - 0x78], eax
	mov	dword ptr [rbp - 0x7c], ecx
	je	.label_573
	jmp	.label_577
.label_577:
	mov	eax, dword ptr [rbp - 0x78]
	sub	eax, 0x61
	mov	dword ptr [rbp - 0x80], eax
	jne	.label_579
	jmp	.label_583
.label_583:
	movabs	rdi, OFFSET FLAT:label_586
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_560
.label_573:
	movabs	rdi, OFFSET FLAT:label_592
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_560
.label_579:
	mov	edi, 0x20
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x8c], eax
.label_560:
	jmp	.label_544
.label_3917:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	ecx, eax
	sub	ecx, 0x4f
	mov	dword ptr [rbp - 0x90], eax
	mov	dword ptr [rbp - 0x94], ecx
	je	.label_553
	jmp	.label_558
.label_558:
	mov	eax, dword ptr [rbp - 0x90]
	sub	eax, 0x6f
	mov	dword ptr [rbp - 0x98], eax
	jne	.label_588
	jmp	.label_561
.label_561:
	movabs	rdi, OFFSET FLAT:label_563
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_566
.label_553:
	movabs	rdi, OFFSET FLAT:label_569
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0xa0], eax
	jmp	.label_566
.label_588:
	mov	edi, 0x20
	call	putchar_unlocked
	mov	dword ptr [rbp - 0xa4], eax
.label_566:
	jmp	.label_544
.label_544:
	jmp	.label_540
.label_551:
	movzx	eax, byte ptr [rbp - 0x21]
	mov	ecx, eax
	sub	ecx, 0x22
	mov	dword ptr [rbp - 0xa8], eax
	mov	dword ptr [rbp - 0xac], ecx
	je	.label_581
	jmp	.label_590
.label_590:
	mov	eax, dword ptr [rbp - 0xa8]
	add	eax, -0x23
	sub	eax, 4
	mov	dword ptr [rbp - 0xb0], eax
	jb	.label_549
	jmp	.label_556
.label_556:
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x5c
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_539
	jmp	.label_548
.label_548:
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x5f
	mov	dword ptr [rbp - 0xb8], eax
	je	.label_549
	jmp	.label_554
.label_554:
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x7b
	mov	dword ptr [rbp - 0xbc], eax
	je	.label_557
	jmp	.label_582
.label_582:
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x7d
	mov	dword ptr [rbp - 0xc0], eax
	je	.label_557
	jmp	.label_564
.label_581:
	mov	edi, 0x22
	call	putchar_unlocked
	mov	edi, 0x22
	mov	dword ptr [rbp - 0xc4], eax
	call	putchar_unlocked
	mov	dword ptr [rbp - 0xc8], eax
	jmp	.label_568
.label_549:
	mov	edi, 0x5c
	call	putchar_unlocked
	movzx	edi, byte ptr [rbp - 0x21]
	mov	dword ptr [rbp - 0xcc], eax
	call	putchar_unlocked
	mov	dword ptr [rbp - 0xd0], eax
	jmp	.label_568
.label_557:
	movabs	rdi, OFFSET FLAT:label_576
	movzx	esi, byte ptr [rbp - 0x21]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0xd4], eax
	jmp	.label_568
.label_539:
	movabs	rdi, OFFSET FLAT:label_585
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0xd8], eax
	jmp	.label_568
.label_564:
	mov	edi, 0x20
	call	putchar_unlocked
	mov	dword ptr [rbp - 0xdc], eax
.label_568:
	jmp	.label_540
.label_540:
	jmp	.label_542
.label_541:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	edi, byte ptr [rax]
	call	putchar_unlocked
	mov	dword ptr [rbp - 0xe0], eax
.label_542:
	jmp	.label_550
.label_550:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_552
.label_593:
	add	rsp, 0xe0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406b50

	.globl print_spaces
	.type print_spaces, @function
print_spaces:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
.label_594:
	cmp	qword ptr [rbp - 0x10], 0
	jle	.label_595
	mov	edi, 0x20
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x14], eax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, -1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_594
.label_595:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406ba0

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	push	rbp
	mov	rbp, rsp
	mov	edi, 1
	call	usage
	.section	.text
	.align	16
	#Procedure 0x406bb0

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
.label_601:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_607
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x38]
	call	strncmp
	cmp	eax, 0
	jne	.label_600
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	call	strlen
	cmp	rax, qword ptr [rbp - 0x38]
	jne	.label_605
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_599
.label_605:
	cmp	qword ptr [rbp - 0x40], -1
	jne	.label_596
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_598
.label_596:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_603
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
	je	.label_602
.label_603:
	mov	byte ptr [rbp - 0x41], 1
.label_602:
	jmp	.label_598
.label_598:
	jmp	.label_604
.label_604:
	jmp	.label_600
.label_600:
	jmp	.label_606
.label_606:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_601
.label_607:
	test	byte ptr [rbp - 0x41], 1
	je	.label_597
	mov	qword ptr [rbp - 8], -2
	jmp	.label_599
.label_597:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
.label_599:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406d00

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
	jne	.label_608
	movabs	rdi, OFFSET FLAT:label_611
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_610
.label_608:
	movabs	rdi, OFFSET FLAT:label_609
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
.label_610:
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
	#Procedure 0x406da0

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	movabs	rax, OFFSET FLAT:label_612
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
.label_617:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_614
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_619
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rcx, qword ptr [rbp - 0x20]
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	memcmp
	cmp	eax, 0
	je	.label_615
.label_619:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:label_613
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
	jmp	.label_616
.label_615:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:label_618
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x4c], eax
.label_616:
	jmp	.label_620
.label_620:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_617
.label_614:
	mov	edi, 0xa
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	putc_unlocked
	mov	dword ptr [rbp - 0x50], eax
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406ef0

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
	jl	.label_622
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_621
.label_622:
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
.label_621:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406f80
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
.label_624:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_623
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	imul	rcx, qword ptr [rbp - 0x30]
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_627
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_626
.label_627:
	jmp	.label_625
.label_625:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_624
.label_623:
	mov	qword ptr [rbp - 8], 0
.label_626:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407020
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
	#Procedure 0x407040
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
	#Procedure 0x407060

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	close_stream
	cmp	eax, 0
	je	.label_631
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_634
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	je	.label_631
.label_634:
	movabs	rdi, OFFSET FLAT:label_633
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_629
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_628
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_630
.label_629:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_61
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	call	error
.label_630:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_631:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_632
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_632:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407150

	.globl freopen_safer
	.type freopen_safer, @function
freopen_safer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rbp - 0x19], 0
	mov	byte ptr [rbp - 0x1a], 0
	mov	byte ptr [rbp - 0x1b], 0
	mov	rdi, qword ptr [rbp - 0x18]
	call	fileno
	mov	ecx, eax
	test	eax, eax
	mov	dword ptr [rbp - 0x24], ecx
	je	.label_646
	jmp	.label_636
.label_636:
	mov	eax, dword ptr [rbp - 0x24]
	sub	eax, 1
	mov	dword ptr [rbp - 0x28], eax
	je	.label_637
	jmp	.label_640
.label_640:
	mov	eax, dword ptr [rbp - 0x24]
	sub	eax, 2
	mov	dword ptr [rbp - 0x2c], eax
	je	.label_641
	jmp	.label_653
.label_653:
	mov	eax, 2
	mov	edi, eax
	mov	esi, eax
	call	dup2
	cmp	eax, 2
	je	.label_645
	mov	byte ptr [rbp - 0x1b], 1
.label_645:
	jmp	.label_641
.label_641:
	mov	eax, 1
	mov	edi, eax
	mov	esi, eax
	call	dup2
	cmp	eax, 1
	je	.label_651
	mov	byte ptr [rbp - 0x1a], 1
.label_651:
	jmp	.label_637
.label_637:
	xor	eax, eax
	mov	edi, eax
	mov	esi, eax
	call	dup2
	cmp	eax, 0
	je	.label_654
	mov	byte ptr [rbp - 0x19], 1
.label_654:
	jmp	.label_646
.label_646:
	jmp	.label_638
.label_638:
	test	byte ptr [rbp - 0x19], 1
	je	.label_639
	xor	edi, edi
	call	protect_fd
	test	al, 1
	jne	.label_639
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_643
.label_639:
	test	byte ptr [rbp - 0x1a], 1
	je	.label_648
	mov	edi, 1
	call	protect_fd
	test	al, 1
	jne	.label_648
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_642
.label_648:
	test	byte ptr [rbp - 0x1b], 1
	je	.label_650
	mov	edi, 2
	call	protect_fd
	test	al, 1
	jne	.label_650
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_635
.label_650:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	rpl_freopen
	mov	qword ptr [rbp - 0x18], rax
.label_635:
	jmp	.label_642
.label_642:
	jmp	.label_643
.label_643:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x20], ecx
	test	byte ptr [rbp - 0x1b], 1
	je	.label_644
	mov	edi, 2
	call	close
	mov	dword ptr [rbp - 0x30], eax
.label_644:
	test	byte ptr [rbp - 0x1a], 1
	je	.label_647
	mov	edi, 1
	call	close
	mov	dword ptr [rbp - 0x34], eax
.label_647:
	test	byte ptr [rbp - 0x19], 1
	je	.label_652
	xor	edi, edi
	call	close
	mov	dword ptr [rbp - 0x38], eax
.label_652:
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_649
	mov	eax, dword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 0x3c], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x3c]
	mov	dword ptr [rax], ecx
.label_649:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407320

	.globl protect_fd
	.type protect_fd, @function
protect_fd:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rax, OFFSET FLAT:label_655
	xor	esi, esi
	mov	dword ptr [rbp - 8], edi
	mov	rdi, rax
	mov	al, 0
	call	open
	mov	dword ptr [rbp - 0xc], eax
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax, dword ptr [rbp - 8]
	je	.label_656
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0xc]
	jg	.label_658
	mov	edi, dword ptr [rbp - 0xc]
	call	close
	mov	dword ptr [rbp - 0x10], eax
	call	__errno_location
	mov	dword ptr [rax], 9
.label_658:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_657
.label_656:
	mov	byte ptr [rbp - 1], 1
.label_657:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
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
	jne	.label_662
	movabs	rdi, OFFSET FLAT:label_661
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x1c], eax
	call	abort
.label_662:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	call	strrchr
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_664
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_659
.label_664:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_659:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cmp	rax, 7
	jl	.label_665
	movabs	rsi, OFFSET FLAT:label_666
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, -7
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_665
	movabs	rsi, OFFSET FLAT:label_663
	mov	eax, 3
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_660
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname]],  rax
.label_660:
	jmp	.label_665
.label_665:
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
	.globl proper_name
	.type proper_name, @function
proper_name:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	call	gettext
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x10]
	je	.label_668
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x10]
	call	mbsstr_trimmed_wordbounded
	test	al, 1
	jne	.label_667
	jmp	.label_670
.label_667:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_671
.label_670:
	mov	rdi, qword ptr [rbp - 0x18]
	call	strlen
	add	rax, 2
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
	call	strlen
	mov	rdi, qword ptr [rbp - 0x28]
	add	rdi, rax
	add	rdi, 1
	add	rdi, 1
	call	xmalloc
	movabs	rsi, OFFSET FLAT:label_669
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	al, 0
	call	sprintf
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rcx
	mov	dword ptr [rbp - 0x2c], eax
	jmp	.label_671
.label_668:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_671:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407570

	.globl mbsstr_trimmed_wordbounded
	.type mbsstr_trimmed_wordbounded, @function
mbsstr_trimmed_wordbounded:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x170
	mov	eax, 2
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, eax
	call	trim2
	mov	qword ptr [rbp - 0x18], rax
	mov	byte ptr [rbp - 0x19], 0
.label_691:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_678
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	call	mbsstr
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_692
	jmp	.label_678
.label_692:
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_696
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0x68]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x58], rdi
	mov	byte ptr [rbp - 0x68], 0
	add	rcx, 4
	mov	rdi, rcx
	call	memset
	mov	byte ptr [rbp - 0x5c], 0
	mov	byte ptr [rbp - 0x69], 1
	mov	rcx, qword ptr [rbp - 0x58]
	cmp	rcx, qword ptr [rbp - 0x28]
	jae	.label_672
	jmp	.label_683
.label_683:
	lea	rdi, [rbp - 0x68]
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x48], 1
	mov	byte ptr [rbp - 0x122], cl
	je	.label_698
	cmp	dword ptr [rbp - 0x44], 0
	sete	al
	mov	byte ptr [rbp - 0x122], al
.label_698:
	mov	al, byte ptr [rbp - 0x122]
	xor	al, 0xff
	test	al, 1
	jne	.label_693
	call	abort
.label_693:
	mov	eax, 0x30
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	lea	rsi, [rbp - 0x68]
	add	rsi, 0x10
	mov	rdi, rcx
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x50]
	add	rcx, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x58], rcx
	mov	byte ptr [rbp - 0x5c], 0
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x28]
	jb	.label_683
	test	byte ptr [rbp - 0x90], 1
	je	.label_675
	mov	edi, dword ptr [rbp - 0x8c]
	call	iswalnum
	cmp	eax, 0
	je	.label_675
	mov	byte ptr [rbp - 0x69], 0
.label_675:
	jmp	.label_672
.label_672:
	xor	eax, eax
	mov	ecx, 8
	mov	edx, ecx
	lea	rsi, [rbp - 0xe0]
	lea	rdi, [rbp - 0x68]
	mov	r8, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x58], r8
	mov	byte ptr [rbp - 0x68], 0
	add	rdi, 4
	mov	qword ptr [rbp - 0x130], rsi
	mov	esi, eax
	mov	qword ptr [rbp - 0x138], rdx
	mov	dword ptr [rbp - 0x13c], eax
	call	memset
	mov	byte ptr [rbp - 0x5c], 0
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xd0], rdx
	mov	byte ptr [rbp - 0xe0], 0
	mov	rdx, qword ptr [rbp - 0x130]
	add	rdx, 4
	mov	rdi, rdx
	mov	esi, dword ptr [rbp - 0x13c]
	mov	rdx, qword ptr [rbp - 0x138]
	call	memset
	mov	byte ptr [rbp - 0xd4], 0
.label_684:
	lea	rdi, [rbp - 0xe0]
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0xc0], 1
	mov	byte ptr [rbp - 0x13d], cl
	je	.label_689
	cmp	dword ptr [rbp - 0xbc], 0
	sete	al
	mov	byte ptr [rbp - 0x13d], al
.label_689:
	mov	al, byte ptr [rbp - 0x13d]
	xor	al, 0xff
	test	al, 1
	jne	.label_700
	jmp	.label_674
.label_700:
	lea	rdi, [rbp - 0x68]
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x48], 1
	mov	byte ptr [rbp - 0x13e], cl
	je	.label_679
	cmp	dword ptr [rbp - 0x44], 0
	sete	al
	mov	byte ptr [rbp - 0x13e], al
.label_679:
	mov	al, byte ptr [rbp - 0x13e]
	xor	al, 0xff
	test	al, 1
	jne	.label_682
	call	abort
.label_682:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x58], rax
	mov	byte ptr [rbp - 0x5c], 0
	mov	rax, qword ptr [rbp - 0xc8]
	add	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0xd0], rax
	mov	byte ptr [rbp - 0xd4], 0
	jmp	.label_684
.label_674:
	lea	rdi, [rbp - 0x68]
	mov	byte ptr [rbp - 0x6a], 1
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x48], 1
	mov	byte ptr [rbp - 0x13f], cl
	je	.label_673
	cmp	dword ptr [rbp - 0x44], 0
	sete	al
	mov	byte ptr [rbp - 0x13f], al
.label_673:
	mov	al, byte ptr [rbp - 0x13f]
	xor	al, 0xff
	test	al, 1
	jne	.label_686
	jmp	.label_688
.label_686:
	mov	eax, 0x30
	mov	edx, eax
	lea	rcx, [rbp - 0x110]
	lea	rsi, [rbp - 0x68]
	add	rsi, 0x10
	mov	rdi, rcx
	call	memcpy
	test	byte ptr [rbp - 0x100], 1
	je	.label_687
	mov	edi, dword ptr [rbp - 0xfc]
	call	iswalnum
	cmp	eax, 0
	je	.label_687
	mov	byte ptr [rbp - 0x6a], 0
.label_687:
	jmp	.label_688
.label_688:
	test	byte ptr [rbp - 0x69], 1
	je	.label_677
	test	byte ptr [rbp - 0x6a], 1
	je	.label_677
	mov	byte ptr [rbp - 0x19], 1
	jmp	.label_678
.label_677:
	lea	rax, [rbp - 0x68]
	xor	esi, esi
	mov	ecx, 8
	mov	edx, ecx
	mov	rdi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x58], rdi
	mov	byte ptr [rbp - 0x68], 0
	mov	rdi, rax
	add	rdi, 4
	mov	qword ptr [rbp - 0x148], rax
	call	memset
	mov	byte ptr [rbp - 0x5c], 0
	mov	rdi, qword ptr [rbp - 0x148]
	call	mbuiter_multi_next
	xor	ecx, ecx
	mov	r8b, cl
	test	byte ptr [rbp - 0x48], 1
	mov	byte ptr [rbp - 0x149], r8b
	je	.label_697
	cmp	dword ptr [rbp - 0x44], 0
	sete	al
	mov	byte ptr [rbp - 0x149], al
.label_697:
	mov	al, byte ptr [rbp - 0x149]
	xor	al, 0xff
	test	al, 1
	jne	.label_699
	jmp	.label_678
.label_699:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_680
.label_696:
	mov	byte ptr [rbp - 0x111], 1
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_685
	mov	rax, qword ptr [rbp - 0x28]
	movzx	ecx, byte ptr [rax - 1]
	movsxd	rax, ecx
	mov	qword ptr [rbp - 0x158], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x158]
	movzx	ecx, word ptr [rax + rdx*2]
	and	ecx, 8
	cmp	ecx, 0
	je	.label_695
	mov	byte ptr [rbp - 0x111], 0
.label_695:
	jmp	.label_685
.label_685:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x160], rax
	call	strlen
	mov	rdi, qword ptr [rbp - 0x160]
	add	rdi, rax
	mov	qword ptr [rbp - 0x120], rdi
	mov	byte ptr [rbp - 0x121], 1
	mov	rax, qword ptr [rbp - 0x120]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_676
	mov	rax, qword ptr [rbp - 0x120]
	movzx	ecx, byte ptr [rax]
	movsxd	rax, ecx
	mov	qword ptr [rbp - 0x168], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x168]
	movzx	ecx, word ptr [rax + rdx*2]
	and	ecx, 8
	cmp	ecx, 0
	je	.label_694
	mov	byte ptr [rbp - 0x121], 0
.label_694:
	jmp	.label_676
.label_676:
	test	byte ptr [rbp - 0x111], 1
	je	.label_701
	test	byte ptr [rbp - 0x121], 1
	je	.label_701
	mov	byte ptr [rbp - 0x19], 1
	jmp	.label_678
.label_701:
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_681
	jmp	.label_678
.label_681:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
.label_680:
	jmp	.label_690
.label_690:
	jmp	.label_691
.label_678:
	mov	rdi, qword ptr [rbp - 0x18]
	call	free
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x170
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407a60

	.globl proper_name_utf8
	.type proper_name_utf8, @function
proper_name_utf8:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	call	gettext
	mov	qword ptr [rbp - 0x20], rax
	call	locale_charset
	movabs	rsi, OFFSET FLAT:label_702
	mov	qword ptr [rbp - 0x28], rax
	mov	qword ptr [rbp - 0x30], 0
	mov	qword ptr [rbp - 0x38], 0
	mov	qword ptr [rbp - 0x40], 0
	mov	qword ptr [rbp - 0x48], 0
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	je	.label_717
	movabs	rsi, OFFSET FLAT:label_702
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	call	xstr_iconv
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 0xa
	add	rax, 1
	mov	rdi, rax
	call	xmalloc
	movabs	rsi, OFFSET FLAT:label_702
	mov	qword ptr [rbp - 0x68], rax
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x78], rsi
	mov	rsi, rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi,  qword ptr [word ptr [label_710]]
	mov	qword ptr [rax + rdx], rsi
	mov	cx,  word ptr [word ptr [label_711]]
	mov	word ptr [rax + rdx + 8], cx
	mov	r8b,  byte ptr [byte ptr [label_712]]
	mov	byte ptr [rax + rdx + 0xa], r8b
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x78]
	call	xstr_iconv
	mov	qword ptr [rbp - 0x58], rax
	mov	rdi, qword ptr [rbp - 0x68]
	call	free
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_714
	mov	esi, 0x3f
	mov	rdi, qword ptr [rbp - 0x58]
	call	strchr
	cmp	rax, 0
	je	.label_707
	mov	rdi, qword ptr [rbp - 0x58]
	call	free
	jmp	.label_720
.label_707:
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x48], rax
.label_720:
	jmp	.label_714
.label_714:
	jmp	.label_716
.label_717:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x48], rax
.label_716:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_719
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_722
.label_719:
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_723
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_725
.label_723:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x88], rax
.label_725:
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x80], rax
.label_722:
	mov	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x50], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	call	strcmp
	cmp	eax, 0
	je	.label_713
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	call	mbsstr_trimmed_wordbounded
	test	al, 1
	jne	.label_705
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_718
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x40]
	call	mbsstr_trimmed_wordbounded
	test	al, 1
	jne	.label_705
.label_718:
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_704
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x48]
	call	mbsstr_trimmed_wordbounded
	test	al, 1
	jne	.label_705
	jmp	.label_704
.label_705:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_706
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
.label_706:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_709
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
.label_709:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_715
.label_704:
	mov	rdi, qword ptr [rbp - 0x20]
	call	strlen
	add	rax, 2
	mov	rdi, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x90], rax
	call	strlen
	mov	rdi, qword ptr [rbp - 0x90]
	add	rdi, rax
	add	rdi, 1
	add	rdi, 1
	call	xmalloc
	movabs	rsi, OFFSET FLAT:label_669
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	al, 0
	call	sprintf
	cmp	qword ptr [rbp - 0x30], 0
	mov	dword ptr [rbp - 0x94], eax
	je	.label_708
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
.label_708:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_724
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
.label_724:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_715
.label_713:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_721
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x50]
	je	.label_721
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
.label_721:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_703
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x50]
	je	.label_703
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
.label_703:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
.label_715:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407db0
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
	je	.label_726
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_727
.label_726:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_727
.label_727:
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
	#Procedure 0x407e30
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_728
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_729
.label_728:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_729
.label_729:
	mov	rax, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407e70
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
	je	.label_730
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_731
.label_730:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_731
.label_731:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407ec0

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
	je	.label_732
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_733
.label_732:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_733
.label_733:
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
	#Procedure 0x407f70
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_734
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_734:
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
	#Procedure 0x407fb0

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
	jne	.label_735
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_735:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_737
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_736
.label_737:
	call	abort
.label_736:
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
	#Procedure 0x408020
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
	je	.label_738
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_739
.label_738:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_739
.label_739:
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
	#Procedure 0x4080f0

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
.label_908:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_814
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_832]]
	jmp	rcx
.label_3934:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_3933:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_762
	jmp	.label_829
.label_829:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_830
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_830:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_762
.label_762:
	movabs	rax, OFFSET FLAT:label_936
	mov	byte ptr [rbp - 0x79], 1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_846
.label_3935:
	mov	byte ptr [rbp - 0x79], 1
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_846
.label_3936:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_851
	movabs	rdi, OFFSET FLAT:label_855
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	movabs	rdi, OFFSET FLAT:label_858
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_851:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_866
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_886:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_870
	jmp	.label_874
.label_874:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_876
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_876:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_882
.label_882:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_886
.label_870:
	jmp	.label_866
.label_866:
	mov	byte ptr [rbp - 0x79], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_846
.label_3931:
	mov	byte ptr [rbp - 0x79], 1
.label_3930:
	mov	byte ptr [rbp - 0x7b], 1
.label_3932:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_896
	mov	byte ptr [rbp - 0x79], 1
.label_896:
	jmp	.label_834
.label_834:
	mov	dword ptr [rbp - 0x34], 2
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_839
	jmp	.label_899
.label_899:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_900
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_900:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_839
.label_839:
	movabs	rax, OFFSET FLAT:label_858
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_846
.label_3929:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_846
.label_814:
	call	abort
.label_846:
	mov	qword ptr [rbp - 0x58], 0
.label_884:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_913
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_917
.label_913:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], edx
.label_917:
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_928
	jmp	.label_894
.label_928:
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	je	.label_759
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_759
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_759
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	jne	.label_742
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_742
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_754
.label_742:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_754:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	ja	.label_759
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_759
	test	byte ptr [rbp - 0x7b], 1
	je	.label_768
	jmp	.label_771
.label_768:
	mov	byte ptr [rbp - 0x81], 1
.label_759:
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
	ja	.label_941
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_780]]
	jmp	rcx
.label_3990:
	test	byte ptr [rbp - 0x79], 1
	je	.label_783
	jmp	.label_819
.label_819:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_787
	jmp	.label_771
.label_787:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_790
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_790
	jmp	.label_795
.label_795:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_892
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_892:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_798
.label_798:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_802
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_802:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_763
.label_763:
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
.label_790:
	jmp	.label_820
.label_820:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_822
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_822:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_827
.label_827:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_833
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_833
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_833
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x39
	jg	.label_833
	jmp	.label_849
.label_849:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_781
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_781:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_857
.label_857:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_861
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_861:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_833
.label_833:
	mov	byte ptr [rbp - 0x7f], 0x30
	jmp	.label_875
.label_783:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_903
	jmp	.label_881
.label_903:
	jmp	.label_875
.label_875:
	jmp	.label_748
.label_4001:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0x100], ecx
	je	.label_883
	jmp	.label_888
.label_888:
	mov	eax, dword ptr [rbp - 0xfc]
	sub	eax, 5
	mov	dword ptr [rbp - 0x104], eax
	je	.label_889
	jmp	.label_891
.label_883:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_837
	jmp	.label_771
.label_837:
	jmp	.label_773
.label_889:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_770
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_770
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3f
	jne	.label_770
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 2]
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	je	.label_862
	jmp	.label_907
.label_907:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	jb	.label_862
	jmp	.label_910
.label_910:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	je	.label_862
	jmp	.label_918
.label_918:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2f
	mov	dword ptr [rbp - 0x118], eax
	je	.label_862
	jmp	.label_922
.label_922:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	ja	.label_923
	jmp	.label_862
.label_862:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_930
	jmp	.label_771
.label_930:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_935
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_935:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_740
.label_740:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_744
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_744:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_750
.label_750:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_809
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_809:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_758
.label_758:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_877
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_877:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_766
.label_923:
	jmp	.label_766
.label_766:
	jmp	.label_770
.label_770:
	jmp	.label_773
.label_891:
	jmp	.label_773
.label_773:
	jmp	.label_748
.label_3991:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_776
.label_3992:
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_776
.label_3996:
	mov	byte ptr [rbp - 0x80], 0x66
	jmp	.label_776
.label_3994:
	mov	byte ptr [rbp - 0x80], 0x6e
	jmp	.label_778
.label_3997:
	mov	byte ptr [rbp - 0x80], 0x72
	jmp	.label_778
.label_3993:
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_778
.label_3995:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_776
.label_4002:
	mov	al, byte ptr [rbp - 0x7f]
	mov	byte ptr [rbp - 0x80], al
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_785
	test	byte ptr [rbp - 0x7b], 1
	je	.label_789
	jmp	.label_771
.label_789:
	jmp	.label_767
.label_785:
	test	byte ptr [rbp - 0x79], 1
	je	.label_791
	test	byte ptr [rbp - 0x7b], 1
	je	.label_791
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_791
	jmp	.label_767
.label_791:
	jmp	.label_778
.label_778:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_797
	test	byte ptr [rbp - 0x7b], 1
	je	.label_797
	jmp	.label_771
.label_797:
	jmp	.label_776
.label_776:
	test	byte ptr [rbp - 0x79], 1
	je	.label_803
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_788
.label_803:
	jmp	.label_748
.label_4003:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_810
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_806
	jmp	.label_816
.label_810:
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_806
.label_816:
	jmp	.label_748
.label_806:
	jmp	.label_828
.label_828:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_821
	jmp	.label_748
.label_821:
	jmp	.label_824
.label_824:
	mov	byte ptr [rbp - 0x83], 1
.label_3998:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_826
	test	byte ptr [rbp - 0x7b], 1
	je	.label_826
	jmp	.label_771
.label_826:
	jmp	.label_748
.label_4000:
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_835
	test	byte ptr [rbp - 0x7b], 1
	je	.label_931
	jmp	.label_771
.label_931:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_843
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_843
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_843:
	jmp	.label_853
.label_853:
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
	jmp	.label_860
.label_860:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_865
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_865:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_873
.label_873:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_880
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_880:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_835:
	jmp	.label_748
.label_3999:
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_748
.label_941:
	test	byte ptr [rbp - 0x7a], 1
	je	.label_765
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
	jmp	.label_817
.label_765:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_904
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_904:
	jmp	.label_813
.label_813:
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
	jne	.label_920
	jmp	.label_756
.label_920:
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_927
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_756
.label_927:
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_848
	mov	byte ptr [rbp - 0x91], 0
.label_751:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_937
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_937:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_747
	jmp	.label_749
.label_747:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_751
.label_749:
	jmp	.label_756
.label_848:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_757
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_757
	mov	qword ptr [rbp - 0xb8], 1
.label_793:
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
	jb	.label_764
	jmp	.label_777
.label_777:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x138], eax
	je	.label_764
	jmp	.label_782
.label_782:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_764
	jmp	.label_784
.label_784:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_786
	jmp	.label_764
.label_764:
	jmp	.label_771
.label_786:
	jmp	.label_863
.label_863:
	jmp	.label_872
.label_872:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_793
.label_761:
	jmp	.label_757
.label_757:
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_799
	mov	byte ptr [rbp - 0x91], 0
.label_799:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_938
.label_938:
	jmp	.label_807
.label_807:
	jmp	.label_808
.label_808:
	lea	rdi, [rbp - 0xa0]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_813
.label_756:
	jmp	.label_817
.label_817:
	mov	eax, 1
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	jb	.label_818
	test	byte ptr [rbp - 0x79], 1
	je	.label_801
	test	byte ptr [rbp - 0x91], 1
	jne	.label_801
.label_818:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_912:
	test	byte ptr [rbp - 0x79], 1
	je	.label_836
	test	byte ptr [rbp - 0x91], 1
	jne	.label_836
	jmp	.label_840
.label_840:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_842
	jmp	.label_771
.label_842:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_845
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_845
	jmp	.label_852
.label_852:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_854
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_854:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_859
.label_859:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_864
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_864:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_871
.label_871:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_878
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_878:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_845:
	jmp	.label_885
.label_885:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_887
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_887:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_890
.label_890:
	jmp	.label_893
.label_893:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_895
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 6
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_895:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_898
.label_898:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_902
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 3
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_902:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_905
.label_836:
	test	byte ptr [rbp - 0x81], 1
	je	.label_909
	jmp	.label_911
.label_911:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_915
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_915:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x81], 0
.label_909:
	jmp	.label_905
.label_905:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_925
	jmp	.label_929
.label_925:
	jmp	.label_932
.label_932:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_934
	test	byte ptr [rbp - 0x82], 1
	jne	.label_934
	jmp	.label_939
.label_939:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_940
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_940:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_943
.label_943:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_743
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_743:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_934:
	jmp	.label_752
.label_752:
	jmp	.label_753
.label_753:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_755
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_755:
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
	jmp	.label_912
.label_929:
	jmp	.label_767
.label_801:
	jmp	.label_748
.label_748:
	test	byte ptr [rbp - 0x79], 1
	je	.label_769
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_772
.label_769:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_775
.label_772:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_775
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
	jne	.label_760
.label_775:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_760
	jmp	.label_767
.label_760:
	jmp	.label_788
.label_788:
	jmp	.label_841
.label_841:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_847
	jmp	.label_771
.label_847:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_792
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_792
	jmp	.label_901
.label_901:
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
	jmp	.label_800
.label_800:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_804
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_804:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_811
.label_811:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_815
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_815:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_792:
	jmp	.label_823
.label_823:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_825
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_825:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_831
.label_831:
	jmp	.label_767
.label_767:
	jmp	.label_914
.label_914:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_838
	test	byte ptr [rbp - 0x82], 1
	jne	.label_838
	jmp	.label_746
.label_746:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_844
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_844:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_850
.label_850:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_856
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_856:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_838:
	jmp	.label_867
.label_867:
	jmp	.label_868
.label_868:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_869
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_869:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x83], 1
	jne	.label_879
	mov	byte ptr [rbp - 0x7e], 0
.label_879:
	jmp	.label_881
.label_881:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_884
.label_894:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_779
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_779
	test	byte ptr [rbp - 0x7b], 1
	je	.label_779
	jmp	.label_771
.label_779:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_805
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_805
	test	byte ptr [rbp - 0x7d], 1
	je	.label_805
	test	byte ptr [rbp - 0x7e], 1
	je	.label_897
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
	jmp	.label_741
.label_897:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_906
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_906
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_908
.label_906:
	jmp	.label_774
.label_774:
	jmp	.label_805
.label_805:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_916
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_916
	jmp	.label_919
.label_919:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_921
	jmp	.label_924
.label_924:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_926
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_926:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_933
.label_933:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_919
.label_921:
	jmp	.label_916
.label_916:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_942
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_942:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_741
.label_771:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_745
	test	byte ptr [rbp - 0x79], 1
	je	.label_745
	mov	dword ptr [rbp - 0x34], 4
.label_745:
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
.label_741:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409490
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
	#Procedure 0x4094d0

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
	je	.label_944
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_945
.label_944:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_945
.label_945:
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
	je	.label_946
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_946:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409630
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_950:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_948
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_950
.label_948:
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 8], rax
	je	.label_951
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	qword ptr [word ptr [label_949]],  rax
.label_951:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_947
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_947:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409710

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
	#Procedure 0x409750

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
	jge	.label_957
	call	abort
.label_957:
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_954
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x31], cl
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	jge	.label_956
	call	xalloc_die
.label_956:
	test	byte ptr [rbp - 0x31], 1
	je	.label_953
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_955
.label_953:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_955:
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
	je	.label_959
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_949]]
	mov	qword ptr [rax + 8], rcx
.label_959:
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
.label_954:
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
	ja	.label_958
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	cmp	qword ptr [rbp - 0x48], rax
	je	.label_952
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_952:
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
.label_958:
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
	#Procedure 0x4099d0

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
	#Procedure 0x409a10
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
	#Procedure 0x409a30
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
	#Procedure 0x409a60

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
	#Procedure 0x409aa0

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
	jne	.label_960
	call	abort
.label_960:
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
	#Procedure 0x409b10

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
	#Procedure 0x409b50
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
	#Procedure 0x409b80
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
	#Procedure 0x409bb0

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
	#Procedure 0x409c30

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
	#Procedure 0x409c60

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
	#Procedure 0x409c80
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
	#Procedure 0x409cb0

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
	#Procedure 0x409d60

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
	#Procedure 0x409da0

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
	#Procedure 0x409e20
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
	#Procedure 0x409e50
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
	#Procedure 0x409e90

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
	#Procedure 0x409ed0
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
	#Procedure 0x409f00

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
	#Procedure 0x409f30

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
	#Procedure 0x409f50

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
	je	.label_962
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_966
.label_962:
	call	locale_charset
	movabs	rsi, OFFSET FLAT:label_702
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_961
	movabs	rax, OFFSET FLAT:label_964
	movabs	rcx, OFFSET FLAT:label_965
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_966
.label_961:
	movabs	rsi, OFFSET FLAT:label_969
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_963
	movabs	rax, OFFSET FLAT:label_967
	movabs	rcx, OFFSET FLAT:label_968
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_966
.label_963:
	movabs	rax, OFFSET FLAT:label_858
	movabs	rcx, OFFSET FLAT:label_936
	cmp	dword ptr [rbp - 0x14], 9
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_966:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a050

	.globl fread_file
	.type fread_file, @function
fread_file:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x110
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x28], 0x2000
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	lea	rsi, [rbp - 0xb8]
	mov	edi, eax
	call	fstat
	cmp	eax, 0
	jl	.label_972
	mov	eax, dword ptr [rbp - 0xa0]
	and	eax, 0xf000
	cmp	eax, 0x8000
	jne	.label_972
	mov	rdi, qword ptr [rbp - 0x10]
	call	ftello
	mov	qword ptr [rbp - 0xc0], rax
	cmp	qword ptr [rbp - 0xc0], 0
	jl	.label_976
	mov	rax, qword ptr [rbp - 0xc0]
	cmp	rax, qword ptr [rbp - 0x88]
	jge	.label_976
	mov	rax, -2
	mov	rcx, qword ptr [rbp - 0x88]
	sub	rcx, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0xc8], rcx
	cmp	rax, qword ptr [rbp - 0xc8]
	jae	.label_974
	call	__errno_location
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 8], 0
	jmp	.label_971
.label_974:
	mov	rax, qword ptr [rbp - 0xc8]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
.label_976:
	jmp	.label_972
.label_972:
	mov	rdi, qword ptr [rbp - 0x28]
	call	malloc
	mov	qword ptr [rbp - 0x20], rax
	cmp	rax, 0
	jne	.label_984
	mov	qword ptr [rbp - 8], 0
	jmp	.label_971
.label_984:
	mov	qword ptr [rbp - 0xd0], 0
.label_983:
	mov	eax, 1
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rcx, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0xe0], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rbp - 0xd0]
	mov	rdx, qword ptr [rbp - 0xe0]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x100], rdi
	mov	rdi, rcx
	mov	rcx, qword ptr [rbp - 0x100]
	call	fread
	mov	qword ptr [rbp - 0xe8], rax
	mov	rax, qword ptr [rbp - 0xe8]
	add	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0xd0], rax
	mov	rax, qword ptr [rbp - 0xe8]
	cmp	rax, qword ptr [rbp - 0xe0]
	je	.label_978
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0xd4], ecx
	mov	rdi, qword ptr [rbp - 0x10]
	call	ferror
	cmp	eax, 0
	je	.label_980
	jmp	.label_970
.label_980:
	mov	rax, qword ptr [rbp - 0xd0]
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rcx, 1
	cmp	rax, rcx
	jae	.label_973
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0xd0]
	add	rax, 1
	mov	rsi, rax
	call	realloc
	mov	qword ptr [rbp - 0xf0], rax
	cmp	qword ptr [rbp - 0xf0], 0
	je	.label_979
	mov	rax, qword ptr [rbp - 0xf0]
	mov	qword ptr [rbp - 0x20], rax
.label_979:
	jmp	.label_973
.label_973:
	mov	rax, qword ptr [rbp - 0xd0]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0xd0]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_971
.label_978:
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_982
	mov	dword ptr [rbp - 0xd4], 0xc
	jmp	.label_970
.label_982:
	mov	rax, -1
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x28]
	shr	rdx, 1
	sub	rax, rdx
	cmp	rcx, rax
	jae	.label_977
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x28]
	shr	rcx, 1
	add	rax, rcx
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_981
.label_977:
	mov	qword ptr [rbp - 0x28], -1
.label_981:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	call	realloc
	mov	qword ptr [rbp - 0xf8], rax
	cmp	rax, 0
	jne	.label_975
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0xd4], ecx
	jmp	.label_970
.label_975:
	mov	rax, qword ptr [rbp - 0xf8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_983
.label_970:
	mov	rdi, qword ptr [rbp - 0x20]
	call	free
	mov	eax, dword ptr [rbp - 0xd4]
	mov	dword ptr [rbp - 0x104], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x104]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
.label_971:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x110
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a350

	.globl read_file
	.type read_file, @function
read_file:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdx, OFFSET FLAT:label_985
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	internal_read_file
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a380

	.globl internal_read_file
	.type internal_read_file, @function
internal_read_file:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	fopen
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_986
	mov	qword ptr [rbp - 8], 0
	jmp	.label_989
.label_986:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	call	fread_file
	mov	qword ptr [rbp - 0x30], rax
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x34], ecx
	mov	rdi, qword ptr [rbp - 0x28]
	call	rpl_fclose
	cmp	eax, 0
	je	.label_987
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_988
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x34], ecx
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
.label_988:
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x38], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x38]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
	jmp	.label_989
.label_987:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_989:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a440
	.globl read_binary_file
	.type read_binary_file, @function
read_binary_file:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdx, OFFSET FLAT:label_990
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	internal_read_file
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a470

	.globl trim2
	.type trim2, @function
trim2:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x120
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	call	strdup
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1012
	call	xalloc_die
.label_1012:
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_1015
	cmp	dword ptr [rbp - 0xc], 0
	je	.label_1019
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0x60]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, qword ptr [rbp - 0x48]
	mov	r8, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x80], rdi
	mov	rdi, r8
	mov	dword ptr [rbp - 0x84], esi
	mov	qword ptr [rbp - 0x90], rdx
	mov	qword ptr [rbp - 0x98], rcx
	call	strlen
	mov	rcx, qword ptr [rbp - 0x80]
	add	rcx, rax
	mov	qword ptr [rbp - 0x60], rcx
	mov	byte ptr [rbp - 0x58], 0
	mov	rax, qword ptr [rbp - 0x98]
	add	rax, 0xc
	mov	rdi, rax
	mov	esi, dword ptr [rbp - 0x84]
	mov	rdx, qword ptr [rbp - 0x90]
	call	memset
	mov	byte ptr [rbp - 0x4c], 0
.label_1020:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x48]
	cmp	rdx, qword ptr [rbp - 0x60]
	mov	byte ptr [rbp - 0x99], cl
	jae	.label_996
	lea	rdi, [rbp - 0x60]
	call	mbiter_multi_next
	xor	eax, eax
	mov	cl, al
	mov	dl, 1
	test	dl, 1
	mov	byte ptr [rbp - 0x99], cl
	jne	.label_999
	jmp	.label_996
.label_999:
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x38], 1
	mov	byte ptr [rbp - 0x9a], cl
	je	.label_1002
	mov	edi, dword ptr [rbp - 0x34]
	call	iswspace
	cmp	eax, 0
	setne	cl
	mov	byte ptr [rbp - 0x9a], cl
.label_1002:
	mov	al, byte ptr [rbp - 0x9a]
	mov	byte ptr [rbp - 0x99], al
.label_996:
	mov	al, byte ptr [rbp - 0x99]
	test	al, 1
	jne	.label_1014
	jmp	.label_1016
.label_1014:
	jmp	.label_1017
.label_1017:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	byte ptr [rbp - 0x4c], 0
	jmp	.label_1020
.label_1016:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0xa8], rdi
	mov	rdi, rax
	mov	qword ptr [rbp - 0xb0], rsi
	call	strlen
	add	rax, 1
	mov	rdi, qword ptr [rbp - 0xa8]
	mov	rsi, qword ptr [rbp - 0xb0]
	mov	rdx, rax
	call	memmove
	mov	qword ptr [rbp - 0xb8], rax
.label_1019:
	cmp	dword ptr [rbp - 0xc], 1
	je	.label_992
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0x60]
	mov	dword ptr [rbp - 0x64], 0
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, qword ptr [rbp - 0x48]
	mov	r8, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xc0], rdi
	mov	rdi, r8
	mov	dword ptr [rbp - 0xc4], esi
	mov	qword ptr [rbp - 0xd0], rdx
	mov	qword ptr [rbp - 0xd8], rcx
	call	strlen
	mov	rcx, qword ptr [rbp - 0xc0]
	add	rcx, rax
	mov	qword ptr [rbp - 0x60], rcx
	mov	byte ptr [rbp - 0x58], 0
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 0xc
	mov	rdi, rax
	mov	esi, dword ptr [rbp - 0xc4]
	mov	rdx, qword ptr [rbp - 0xd0]
	call	memset
	mov	byte ptr [rbp - 0x4c], 0
.label_1023:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x48]
	cmp	rdx, qword ptr [rbp - 0x60]
	mov	byte ptr [rbp - 0xd9], cl
	jae	.label_1013
	lea	rdi, [rbp - 0x60]
	call	mbiter_multi_next
	mov	al, 1
	mov	byte ptr [rbp - 0xd9], al
.label_1013:
	mov	al, byte ptr [rbp - 0xd9]
	test	al, 1
	jne	.label_1022
	jmp	.label_1024
.label_1022:
	cmp	dword ptr [rbp - 0x64], 0
	jne	.label_1025
	test	byte ptr [rbp - 0x38], 1
	je	.label_1025
	mov	edi, dword ptr [rbp - 0x34]
	call	iswspace
	cmp	eax, 0
	je	.label_1025
	jmp	.label_994
.label_1025:
	cmp	dword ptr [rbp - 0x64], 0
	jne	.label_993
	test	byte ptr [rbp - 0x38], 1
	je	.label_1028
	mov	edi, dword ptr [rbp - 0x34]
	call	iswspace
	cmp	eax, 0
	jne	.label_993
.label_1028:
	mov	dword ptr [rbp - 0x64], 1
	jmp	.label_994
.label_993:
	cmp	dword ptr [rbp - 0x64], 1
	jne	.label_995
	test	byte ptr [rbp - 0x38], 1
	je	.label_997
	mov	edi, dword ptr [rbp - 0x34]
	call	iswspace
	cmp	eax, 0
	jne	.label_995
.label_997:
	jmp	.label_994
.label_995:
	cmp	dword ptr [rbp - 0x64], 1
	jne	.label_1000
	test	byte ptr [rbp - 0x38], 1
	je	.label_1000
	mov	edi, dword ptr [rbp - 0x34]
	call	iswspace
	cmp	eax, 0
	je	.label_1000
	mov	dword ptr [rbp - 0x64], 2
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1010
.label_1000:
	cmp	dword ptr [rbp - 0x64], 2
	jne	.label_1011
	test	byte ptr [rbp - 0x38], 1
	je	.label_1011
	mov	edi, dword ptr [rbp - 0x34]
	call	iswspace
	cmp	eax, 0
	je	.label_1011
	jmp	.label_1018
.label_1011:
	mov	dword ptr [rbp - 0x64], 1
.label_1018:
	jmp	.label_1010
.label_1010:
	jmp	.label_994
.label_994:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	byte ptr [rbp - 0x4c], 0
	jmp	.label_1023
.label_1024:
	cmp	dword ptr [rbp - 0x64], 2
	jne	.label_1026
	mov	rax, qword ptr [rbp - 0x70]
	mov	byte ptr [rax], 0
.label_1026:
	jmp	.label_992
.label_992:
	jmp	.label_1009
.label_1015:
	cmp	dword ptr [rbp - 0xc], 0
	je	.label_1027
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x78], rax
.label_1008:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x78]
	movsx	eax, byte ptr [rdx]
	cmp	eax, 0
	mov	byte ptr [rbp - 0xda], cl
	je	.label_991
	mov	rax, qword ptr [rbp - 0x78]
	movzx	ecx, byte ptr [rax]
	movsxd	rax, ecx
	mov	qword ptr [rbp - 0xe8], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rdx, qword ptr [rbp - 0xe8]
	movzx	ecx, word ptr [rax + rdx*2]
	and	ecx, 0x2000
	cmp	ecx, 0
	setne	sil
	mov	byte ptr [rbp - 0xda], sil
.label_991:
	mov	al, byte ptr [rbp - 0xda]
	test	al, 1
	jne	.label_1004
	jmp	.label_1005
.label_1004:
	jmp	.label_1006
.label_1006:
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 1
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1008
.label_1005:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0xf0], rdi
	mov	rdi, rax
	mov	qword ptr [rbp - 0xf8], rsi
	call	strlen
	add	rax, 1
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rsi, qword ptr [rbp - 0xf8]
	mov	rdx, rax
	call	memmove
	mov	qword ptr [rbp - 0x100], rax
.label_1027:
	cmp	dword ptr [rbp - 0xc], 1
	je	.label_1007
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x108], rax
	call	strlen
	mov	rdi, qword ptr [rbp - 0x108]
	add	rdi, rax
	add	rdi, -1
	mov	qword ptr [rbp - 0x78], rdi
.label_1003:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x78]
	cmp	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rbp - 0x109], cl
	jb	.label_1021
	mov	rax, qword ptr [rbp - 0x78]
	movzx	ecx, byte ptr [rax]
	movsxd	rax, ecx
	mov	qword ptr [rbp - 0x118], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x118]
	movzx	ecx, word ptr [rax + rdx*2]
	and	ecx, 0x2000
	cmp	ecx, 0
	setne	sil
	mov	byte ptr [rbp - 0x109], sil
.label_1021:
	mov	al, byte ptr [rbp - 0x109]
	test	al, 1
	jne	.label_998
	jmp	.label_1001
.label_998:
	mov	rax, qword ptr [rbp - 0x78]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, -1
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1003
.label_1001:
	jmp	.label_1007
.label_1007:
	jmp	.label_1009
.label_1009:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x120
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a990

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
	je	.label_1034
	movabs	rsi, OFFSET FLAT:label_1030
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_1040
.label_1034:
	movabs	rsi, OFFSET FLAT:label_1042
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_1040:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:label_1032
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
	mov	ecx, OFFSET FLAT:label_1043
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
	ja	.label_1037
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1044]]
	jmp	rcx
.label_3785:
	jmp	.label_1029
.label_3786:
	movabs	rdi, OFFSET FLAT:label_1031
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
	jmp	.label_1029
.label_3787:
	movabs	rdi, OFFSET FLAT:label_1047
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
	jmp	.label_1029
.label_3788:
	movabs	rdi, OFFSET FLAT:label_1046
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
	jmp	.label_1029
.label_3789:
	movabs	rdi, OFFSET FLAT:label_1033
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
	jmp	.label_1029
.label_3790:
	movabs	rdi, OFFSET FLAT:label_1041
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
	jmp	.label_1029
.label_3791:
	movabs	rdi, OFFSET FLAT:label_1035
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
	jmp	.label_1029
.label_3792:
	movabs	rdi, OFFSET FLAT:label_1038
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
	jmp	.label_1029
.label_3793:
	movabs	rdi, OFFSET FLAT:label_1045
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
	jmp	.label_1029
.label_3794:
	movabs	rdi, OFFSET FLAT:label_1039
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
	jmp	.label_1029
.label_1037:
	movabs	rdi, OFFSET FLAT:label_1036
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
.label_1029:
	add	rsp, 0x180
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40af50
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
.label_1050:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1048
	jmp	.label_1049
.label_1049:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1050
.label_1048:
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
	#Procedure 0x40afc0

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
.label_1054:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_1051
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_1056
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_1055
.label_1056:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_1055:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x81], dl
.label_1051:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_1057
	jmp	.label_1052
.label_1057:
	jmp	.label_1053
.label_1053:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1054
.label_1052:
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
	#Procedure 0x40b0d0

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
	je	.label_1058
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
.label_1058:
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
	#Procedure 0x40b240
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_1059
	call	gettext
	movabs	rsi, OFFSET FLAT:label_1061
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_1062
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_35
	movabs	rdx, OFFSET FLAT:label_28
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_1060
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
	#Procedure 0x40b2d0

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
	jae	.label_1063
	call	xalloc_die
.label_1063:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b320

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
	jne	.label_1064
	cmp	qword ptr [rbp - 8], 0
	je	.label_1064
	call	xalloc_die
.label_1064:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b360
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
	jae	.label_1065
	call	xalloc_die
.label_1065:
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
	#Procedure 0x40b3b0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1066
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1066
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1068
.label_1066:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1067
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1067
	call	xalloc_die
.label_1067:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_1068:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b430

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
	jne	.label_1069
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1072
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
.label_1072:
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1070
	call	xalloc_die
.label_1070:
	jmp	.label_1071
.label_1069:
	movabs	rax, 0x5555555555555554
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_1073
	call	xalloc_die
.label_1073:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_1071:
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
	#Procedure 0x40b520

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
	#Procedure 0x40b540
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
	#Procedure 0x40b570
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
	#Procedure 0x40b5b0
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
	jb	.label_1074
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_1075
.label_1074:
	call	xalloc_die
.label_1075:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b610

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
	#Procedure 0x40b650
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
	#Procedure 0x40b690

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_1076
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:label_61
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40b6d0
	.globl xmem_cd_iconv
	.type xmem_cd_iconv, @function
xmem_cd_iconv:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x28]
	call	mem_cd_iconv
	mov	dword ptr [rbp - 0x2c], eax
	cmp	dword ptr [rbp - 0x2c], 0
	jge	.label_1077
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	jne	.label_1077
	call	xalloc_die
.label_1077:
	mov	eax, dword ptr [rbp - 0x2c]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b730
	.globl xstr_cd_iconv
	.type xstr_cd_iconv, @function
xstr_cd_iconv:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	str_cd_iconv
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1078
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	jne	.label_1078
	call	xalloc_die
.label_1078:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b780

	.globl xstr_iconv
	.type xstr_iconv, @function
xstr_iconv:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	str_iconv
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1079
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	jne	.label_1079
	call	xalloc_die
.label_1079:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b7e0

	.globl xstrtoimax
	.type xstrtoimax, @function
xstrtoimax:
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
	jg	.label_1100
	cmp	dword ptr [rbp - 0x1c], 0x24
	jg	.label_1100
	jmp	.label_1088
.label_1100:
	movabs	rdi, OFFSET FLAT:label_1089
	movabs	rsi, OFFSET FLAT:label_1090
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:label_1091
	call	__assert_fail
.label_1088:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1102
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1104
.label_1102:
	lea	rax, [rbp - 0x38]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1104
.label_1104:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x40], rax
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x1c]
	call	strtoimax
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_1111
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1112
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_1112
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	je	.label_1112
	mov	qword ptr [rbp - 0x48], 1
	jmp	.label_1117
.label_1112:
	mov	dword ptr [rbp - 4], 4
	jmp	.label_1098
.label_1117:
	jmp	.label_1093
.label_1111:
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_1082
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	je	.label_1085
	mov	dword ptr [rbp - 4], 4
	jmp	.label_1098
.label_1085:
	mov	dword ptr [rbp - 0x4c], 1
.label_1082:
	jmp	.label_1093
.label_1093:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_1095
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
	jmp	.label_1098
.label_1095:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_1118
	mov	dword ptr [rbp - 0x50], 0x400
	mov	dword ptr [rbp - 0x54], 1
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	jne	.label_1109
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_1098
.label_1109:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x64], ecx
	mov	dword ptr [rbp - 0x68], edx
	je	.label_1083
	jmp	.label_1114
.label_1114:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x6c], eax
	je	.label_1083
	jmp	.label_1115
.label_1115:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x70], eax
	je	.label_1083
	jmp	.label_1110
.label_1110:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x74], eax
	je	.label_1083
	jmp	.label_1080
.label_1080:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x78], eax
	je	.label_1083
	jmp	.label_1087
.label_1087:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x7c], eax
	je	.label_1083
	jmp	.label_1092
.label_1092:
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, -0x59
	sub	eax, 2
	mov	dword ptr [rbp - 0x80], eax
	jb	.label_1083
	jmp	.label_1099
.label_1099:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x84], eax
	je	.label_1083
	jmp	.label_1105
.label_1105:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0x88], eax
	je	.label_1083
	jmp	.label_1106
.label_1106:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_1083
	jmp	.label_1108
.label_1108:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x90], eax
	jne	.label_1096
	jmp	.label_1083
.label_1083:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x30]
	call	strchr
	cmp	rax, 0
	je	.label_1101
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	edx, ecx
	sub	edx, 0x42
	mov	dword ptr [rbp - 0x94], ecx
	mov	dword ptr [rbp - 0x98], edx
	je	.label_1097
	jmp	.label_1116
.label_1116:
	mov	eax, dword ptr [rbp - 0x94]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_1097
	jmp	.label_1119
.label_1119:
	mov	eax, dword ptr [rbp - 0x94]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xa0], eax
	jne	.label_1094
	jmp	.label_1084
.label_1084:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x42
	jne	.label_1086
	mov	eax, dword ptr [rbp - 0x54]
	add	eax, 2
	mov	dword ptr [rbp - 0x54], eax
.label_1086:
	jmp	.label_1094
.label_1097:
	mov	dword ptr [rbp - 0x50], 0x3e8
	mov	eax, dword ptr [rbp - 0x54]
	add	eax, 1
	mov	dword ptr [rbp - 0x54], eax
.label_1094:
	jmp	.label_1101
.label_1101:
	jmp	.label_1096
.label_1096:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	mov	eax, ecx
	sub	ecx, 0x35
	mov	qword ptr [rbp - 0xa8], rax
	mov	dword ptr [rbp - 0xac], ecx
	ja	.label_1103
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1107]]
	jmp	rcx
.label_3948:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x200
	call	bkm_scale
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1081
.label_3939:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x400
	call	bkm_scale
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1081
.label_3949:
	mov	dword ptr [rbp - 0x58], 0
	jmp	.label_1081
.label_3940:
	lea	rdi, [rbp - 0x48]
	mov	edx, 6
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1081
.label_3941:
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1081
.label_3942:
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1081
.label_3943:
	lea	rdi, [rbp - 0x48]
	mov	edx, 2
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1081
.label_3944:
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1081
.label_3945:
	lea	rdi, [rbp - 0x48]
	mov	edx, 4
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1081
.label_3950:
	lea	rdi, [rbp - 0x48]
	mov	esi, 2
	call	bkm_scale
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1081
.label_3946:
	lea	rdi, [rbp - 0x48]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1081
.label_3947:
	lea	rdi, [rbp - 0x48]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1081
.label_1103:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_1098
.label_1081:
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
	je	.label_1113
	mov	eax, dword ptr [rbp - 0x4c]
	or	eax, 2
	mov	dword ptr [rbp - 0x4c], eax
.label_1113:
	jmp	.label_1118
.label_1118:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
.label_1098:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xb0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bd10

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
	jge	.label_1120
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1121
.label_1120:
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0x14]
	cqo	
	idiv	rcx
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx]
	jge	.label_1122
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1121
.label_1122:
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_1121:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bdc0

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
.label_1124:
	mov	eax, dword ptr [rbp - 0x10]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x10], ecx
	cmp	eax, 0
	je	.label_1123
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	bkm_scale
	or	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_1124
.label_1123:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40be10

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
	jge	.label_1128
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1125
.label_1128:
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	je	.label_1129
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_1127
.label_1129:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_1127
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_1127:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_1126
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_1126:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_1125:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bee0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1130
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_1131
.label_1130:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1132
.label_1131:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_1132:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bf40

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
	je	.label_1133
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fseeko
	mov	dword ptr [rbp - 0xc], eax
.label_1133:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bf80

	.globl rpl_freopen
	.type rpl_freopen, @function
rpl_freopen:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:label_655
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	orig_freopen
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1140
	jmp	.label_1134
.label_1140:
	cmp	qword ptr [rbp - 8], 0
	je	.label_1135
	mov	rdi, qword ptr [rbp - 0x20]
	call	fileno
	mov	dword ptr [rbp - 0x2c], eax
	mov	edi, dword ptr [rbp - 0x2c]
	mov	esi, dword ptr [rbp - 0x2c]
	call	dup2
	cmp	eax, 0
	jge	.label_1138
	call	__errno_location
	cmp	dword ptr [rax], 9
	jne	.label_1138
	mov	esi, 0x80000
	mov	rdi, qword ptr [rbp - 0x28]
	mov	al, 0
	call	open
	mov	dword ptr [rbp - 0x30], eax
	mov	dword ptr [rbp - 0x34], 0
	mov	eax, dword ptr [rbp - 0x30]
	cmp	eax, dword ptr [rbp - 0x2c]
	je	.label_1137
	mov	edi, dword ptr [rbp - 0x30]
	mov	esi, dword ptr [rbp - 0x2c]
	call	dup2
	cmp	eax, 0
	jge	.label_1139
	mov	dword ptr [rbp - 0x34], 1
.label_1139:
	mov	edi, dword ptr [rbp - 0x30]
	call	close
	mov	dword ptr [rbp - 0x38], eax
.label_1137:
	cmp	dword ptr [rbp - 0x34], 0
	jne	.label_1136
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x20]
	call	orig_freopen
	mov	qword ptr [rbp - 0x20], rax
.label_1136:
	jmp	.label_1138
.label_1138:
	jmp	.label_1135
.label_1135:
	jmp	.label_1134
.label_1134:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c090

	.globl orig_freopen
	.type orig_freopen, @function
orig_freopen:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	freopen
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c0c0

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
	jne	.label_1141
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_1141
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_1141
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_1143
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1142
.label_1143:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x90], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1142
.label_1141:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fseeko
	mov	dword ptr [rbp - 4], eax
.label_1142:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c190

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
	jne	.label_1144
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_1144:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	mbrtowc
	mov	rcx, -2
	mov	qword ptr [rbp - 0x30], rax
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_1145
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1145
	xor	edi, edi
	call	hard_locale
	test	al, 1
	jne	.label_1145
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], edx
	mov	qword ptr [rbp - 8], 1
	jmp	.label_1146
.label_1145:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_1146:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c240

	.globl rpl_re_compile_pattern
	.type rpl_re_compile_pattern, @function
rpl_re_compile_pattern:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx,  qword ptr [word ptr [rpl_re_syntax_options]]
	and	rdx, 0x2000000
	cmp	rdx, 0
	setne	al
	xor	al, 0xff
	xor	al, 0xff
	and	al, 1
	movzx	ecx, al
	mov	rdx, qword ptr [rbp - 0x20]
	mov	al, cl
	mov	r8b, byte ptr [rdx + 0x38]
	and	al, 1
	shl	al, 4
	and	r8b, 0xef
	or	r8b, al
	mov	byte ptr [rdx + 0x38], r8b
	mov	rdx, qword ptr [rbp - 0x20]
	mov	al, byte ptr [rdx + 0x38]
	and	al, 0x7f
	or	al, 0x80
	mov	byte ptr [rdx + 0x38], al
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx,  qword ptr [word ptr [rpl_re_syntax_options]]
	call	re_compile_internal
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 0
	jne	.label_1148
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1147
.label_1148:
	movabs	rax, OFFSET FLAT:__re_error_msgid
	movsxd	rcx, dword ptr [rbp - 0x24]
	add	rax,  qword ptr [word ptr [+ (rcx * 8) + __re_error_msgid_idx]]
	mov	rdi, rax
	call	gettext
	mov	qword ptr [rbp - 8], rax
.label_1147:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c300

	.globl re_compile_internal
	.type re_compile_internal, @function
re_compile_internal:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xe0
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	dword ptr [rbp - 0x2c], 0
	mov	rcx, qword ptr [rbp - 0x10]
	mov	al, byte ptr [rcx + 0x38]
	and	al, 0xf7
	mov	byte ptr [rcx + 0x38], al
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x18], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	al, byte ptr [rcx + 0x38]
	and	al, 0xbf
	mov	byte ptr [rcx + 0x38], al
	mov	rcx, qword ptr [rbp - 0x10]
	mov	al, byte ptr [rcx + 0x38]
	and	al, 0xdf
	mov	byte ptr [rcx + 0x38], al
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], 0
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x30], 0
	mov	rcx, qword ptr [rbp - 0x10]
	mov	al, byte ptr [rcx + 0x38]
	and	al, 0xfe
	mov	byte ptr [rcx + 0x38], al
	mov	rcx, qword ptr [rbp - 0x10]
	mov	al, byte ptr [rcx + 0x38]
	and	al, 0xf9
	mov	byte ptr [rcx + 0x38], al
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x38], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	qword ptr [rcx + 8], 0xe8
	setb	al
	and	al, 1
	movzx	r8d, al
	movsxd	rcx, r8d
	cmp	rcx, 0
	je	.label_1149
	mov	eax, 0xe8
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	mov	rdi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_1151
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_1154
.label_1151:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0xe8
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
.label_1149:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x10], 0xe8
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x20]
	call	init_dfa
	xor	ecx, ecx
	mov	dl, cl
	mov	dword ptr [rbp - 0x2c], eax
	cmp	dword ptr [rbp - 0x2c], 0
	mov	byte ptr [rbp - 0xd1], dl
	jne	.label_1152
	xor	eax, eax
	mov	cl, al
	mov	byte ptr [rbp - 0xd1], cl
	jmp	.label_1152
.label_1152:
	mov	al, byte ptr [rbp - 0xd1]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1160
	mov	dword ptr [rbp - 0x2c], 0xc
.label_1160:
	cmp	dword ptr [rbp - 0x2c], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1155
	mov	rdi, qword ptr [rbp - 0x38]
	call	free_dfa_content
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], 0
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1154
.label_1155:
	lea	rax, [rbp - 0xd0]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	rdi, qword ptr [rbp - 0x28]
	and	rdi, 0x400000
	cmp	rdi, 0
	setne	r8b
	mov	r9, qword ptr [rbp - 0x38]
	and	r8b, 1
	movzx	r8d, r8b
	lea	rdi, [rbp - 0xd0]
	mov	qword ptr [rbp - 0xe0], rax
	call	re_string_construct
	mov	dword ptr [rbp - 0x2c], eax
	cmp	dword ptr [rbp - 0x2c], 0
	setne	r10b
	and	r10b, 1
	movzx	eax, r10b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_1157
	jmp	.label_1150
.label_1150:
	mov	rdi, qword ptr [rbp - 0x10]
	call	free_workarea_compile
	lea	rdi, [rbp - 0xd0]
	call	re_string_destruct
	mov	rdi, qword ptr [rbp - 0x38]
	call	free_dfa_content
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], 0
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1154
.label_1157:
	lea	rdi, [rbp - 0xd0]
	lea	rcx, [rbp - 0x2c]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x30], 0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	call	parse
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x68], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 0x68], 0
	sete	r8b
	and	r8b, 1
	movzx	r9d, r8b
	movsxd	rax, r9d
	cmp	rax, 0
	je	.label_1159
	jmp	.label_1150
.label_1159:
	mov	rdi, qword ptr [rbp - 0x10]
	call	analyze
	mov	dword ptr [rbp - 0x2c], eax
	cmp	dword ptr [rbp - 0x2c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdi, eax
	cmp	rdi, 0
	je	.label_1158
	jmp	.label_1150
.label_1158:
	mov	rax, qword ptr [rbp - 0x38]
	mov	cl, byte ptr [rax + 0xb0]
	shr	cl, 2
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	je	.label_1153
	mov	rax, qword ptr [rbp - 0x28]
	and	rax, 0x400000
	cmp	rax, 0
	jne	.label_1153
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x28], 0
	jne	.label_1153
	mov	rdi, qword ptr [rbp - 0x38]
	call	optimize_utf8
.label_1153:
	mov	rdi, qword ptr [rbp - 0x38]
	call	create_initial_state
	mov	dword ptr [rbp - 0x2c], eax
	mov	rdi, qword ptr [rbp - 0x10]
	call	free_workarea_compile
	lea	rdi, [rbp - 0xd0]
	call	re_string_destruct
	cmp	dword ptr [rbp - 0x2c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdi, eax
	cmp	rdi, 0
	je	.label_1156
	mov	rdi, qword ptr [rbp - 0x38]
	call	free_dfa_content
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], 0
.label_1156:
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 4], eax
.label_1154:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xe0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c680
	.globl rpl_re_set_syntax
	.type rpl_re_set_syntax, @function
rpl_re_set_syntax:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi,  qword ptr [word ptr [rpl_re_syntax_options]]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [rpl_re_syntax_options]],  rdi
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c6b0

	.globl rpl_re_compile_fastmap
	.type rpl_re_compile_fastmap, @function
rpl_re_compile_fastmap:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	esi, esi
	mov	eax, 0x100
	mov	edx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, qword ptr [rbp - 0x18]
	call	memset
	mov	rdi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rdx + 0x48]
	mov	rdx, qword ptr [rbp - 0x18]
	call	re_compile_fastmap_iter
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x48]
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	rdx, qword ptr [rsi + 0x50]
	je	.label_1162
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rax + 0x50]
	mov	rdx, qword ptr [rbp - 0x18]
	call	re_compile_fastmap_iter
.label_1162:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x58]
	je	.label_1163
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rax + 0x58]
	mov	rdx, qword ptr [rbp - 0x18]
	call	re_compile_fastmap_iter
.label_1163:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x60]
	je	.label_1161
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rax + 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	call	re_compile_fastmap_iter
.label_1161:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 8]
	mov	dl, byte ptr [rcx + 0x38]
	and	dl, 0xf7
	or	dl, 8
	mov	byte ptr [rcx + 0x38], dl
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c7a0

	.globl re_compile_fastmap_iter
	.type re_compile_fastmap_iter, @function
re_compile_fastmap_iter:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x270
	xor	eax, eax
	mov	cl, al
	mov	qword ptr [rbp - 0x68], rdi
	mov	qword ptr [rbp - 0x70], rsi
	mov	qword ptr [rbp - 0x78], rdx
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x80], rdx
	mov	rdx, qword ptr [rbp - 0x80]
	cmp	dword ptr [rdx + 0xb4], 1
	mov	byte ptr [rbp - 0x209], cl
	jne	.label_1196
	mov	rax, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rax + 0x18]
	and	rax, 0x400000
	cmp	rax, 0
	setne	cl
	mov	byte ptr [rbp - 0x209], cl
.label_1196:
	mov	al, byte ptr [rbp - 0x209]
	and	al, 1
	mov	byte ptr [rbp - 0x89], al
	mov	qword ptr [rbp - 0x88], 0
.label_1200:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x70]
	cmp	rax, qword ptr [rcx + 0x10]
	jge	.label_1190
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x80]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	mov	dword ptr [rbp - 0x9c], edx
	cmp	dword ptr [rbp - 0x9c], 1
	jne	.label_1177
	mov	rax, qword ptr [rbp - 0x78]
	mov	cl, byte ptr [rbp - 0x89]
	mov	rdx, qword ptr [rbp - 0x98]
	mov	rsi, qword ptr [rbp - 0x80]
	shl	rdx, 4
	add	rdx, qword ptr [rsi]
	movzx	edi, byte ptr [rdx]
	mov	qword ptr [rbp - 0x58], rax
	and	cl, 1
	mov	byte ptr [rbp - 0x59], cl
	mov	dword ptr [rbp - 0x60], edi
	movsxd	rax, dword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	byte ptr [rdx + rax], 1
	test	byte ptr [rbp - 0x59], 1
	je	.label_1191
	mov	edi, dword ptr [rbp - 0x60]
	call	tolower
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x58]
	mov	byte ptr [rdx + rcx], 1
.label_1191:
	mov	rax, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rax + 0x18]
	and	rax, 0x400000
	cmp	rax, 0
	je	.label_1203
	mov	rax, qword ptr [rbp - 0x80]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_1203
	lea	rax, [rbp - 0xb0]
	mov	qword ptr [rbp - 0xb8], rax
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x80]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	dl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0xb8], rcx
	mov	byte ptr [rax], dl
.label_1184:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x98]
	add	rdx, 1
	mov	qword ptr [rbp - 0x98], rdx
	mov	rsi, qword ptr [rbp - 0x80]
	cmp	rdx, qword ptr [rsi + 0x10]
	mov	byte ptr [rbp - 0x20a], cl
	jae	.label_1176
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x98]
	mov	rsi, qword ptr [rbp - 0x80]
	shl	rdx, 4
	add	rdx, qword ptr [rsi]
	mov	eax, dword ptr [rdx + 8]
	and	eax, 0xff
	cmp	eax, 1
	mov	byte ptr [rbp - 0x20a], cl
	jne	.label_1176
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x80]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	shr	edx, 0x15
	and	edx, 1
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x20a], sil
.label_1176:
	mov	al, byte ptr [rbp - 0x20a]
	test	al, 1
	jne	.label_1199
	jmp	.label_1201
.label_1199:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x80]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	dl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0xb8], rcx
	mov	byte ptr [rax], dl
	jmp	.label_1184
.label_1201:
	lea	rdi, [rbp - 0xbc]
	lea	rax, [rbp - 0xc8]
	lea	rcx, [rbp - 0xb0]
	xor	esi, esi
	mov	edx, 8
	mov	r8, rax
	mov	qword ptr [rbp - 0x218], rdi
	mov	rdi, r8
	mov	qword ptr [rbp - 0x220], rcx
	mov	qword ptr [rbp - 0x228], rax
	call	memset
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rcx, qword ptr [rbp - 0x220]
	sub	rax, rcx
	mov	rdi, qword ptr [rbp - 0x218]
	mov	rsi, rcx
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x228]
	call	rpl_mbrtowc
	lea	rcx, [rbp - 0xb0]
	mov	rdx, qword ptr [rbp - 0xb8]
	sub	rdx, rcx
	cmp	rax, rdx
	jne	.label_1182
	lea	rdi, [rbp - 0xb0]
	mov	eax, dword ptr [rbp - 0xbc]
	mov	qword ptr [rbp - 0x230], rdi
	mov	edi, eax
	call	towlower
	lea	rdx, [rbp - 0xc8]
	mov	rdi, qword ptr [rbp - 0x230]
	mov	esi, eax
	call	wcrtomb
	cmp	rax, -1
	je	.label_1182
	mov	rax, qword ptr [rbp - 0x78]
	movzx	ecx, byte ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0x48], rax
	mov	byte ptr [rbp - 0x49], 0
	mov	dword ptr [rbp - 0x50], ecx
	movsxd	rax, dword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	byte ptr [rdx + rax], 1
	test	byte ptr [rbp - 0x49], 1
	je	.label_1185
	mov	edi, dword ptr [rbp - 0x50]
	call	tolower
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x48]
	mov	byte ptr [rdx + rcx], 1
.label_1185:
	jmp	.label_1182
.label_1182:
	jmp	.label_1203
.label_1203:
	jmp	.label_1195
.label_1177:
	cmp	dword ptr [rbp - 0x9c], 3
	jne	.label_1207
	mov	dword ptr [rbp - 0xcc], 0
	mov	dword ptr [rbp - 0xd0], 0
.label_1168:
	cmp	dword ptr [rbp - 0xcc], 4
	jge	.label_1170
	movsxd	rax, dword ptr [rbp - 0xcc]
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0x80]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	mov	rcx, qword ptr [rcx]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0xe0], rax
	mov	dword ptr [rbp - 0xd4], 0
.label_1206:
	cmp	dword ptr [rbp - 0xd4], 0x40
	jge	.label_1186
	mov	eax, 1
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0xe0]
	mov	eax, dword ptr [rbp - 0xd4]
	mov	esi, eax
	mov	qword ptr [rbp - 0x238], rcx
	mov	rcx, rsi
	mov	rsi, qword ptr [rbp - 0x238]
	shl	rsi, cl
	and	rdx, rsi
	cmp	rdx, 0
	je	.label_1173
	mov	rax, qword ptr [rbp - 0x78]
	mov	cl, byte ptr [rbp - 0x89]
	mov	edx, dword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0x38], rax
	and	cl, 1
	mov	byte ptr [rbp - 0x39], cl
	mov	dword ptr [rbp - 0x40], edx
	movsxd	rax, dword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	byte ptr [rsi + rax], 1
	test	byte ptr [rbp - 0x39], 1
	je	.label_1193
	mov	edi, dword ptr [rbp - 0x40]
	call	tolower
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x38]
	mov	byte ptr [rdx + rcx], 1
.label_1193:
	jmp	.label_1173
.label_1173:
	jmp	.label_1205
.label_1205:
	mov	eax, dword ptr [rbp - 0xd4]
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	mov	eax, dword ptr [rbp - 0xd0]
	add	eax, 1
	mov	dword ptr [rbp - 0xd0], eax
	jmp	.label_1206
.label_1186:
	jmp	.label_1165
.label_1165:
	mov	eax, dword ptr [rbp - 0xcc]
	add	eax, 1
	mov	dword ptr [rbp - 0xcc], eax
	jmp	.label_1168
.label_1170:
	jmp	.label_1175
.label_1207:
	cmp	dword ptr [rbp - 0x9c], 6
	jne	.label_1204
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x80]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0xe8], rax
	mov	rax, qword ptr [rbp - 0x80]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_1180
	mov	rax, qword ptr [rbp - 0xe8]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_1187
	mov	rax, qword ptr [rbp - 0xe8]
	mov	cl, byte ptr [rax + 0x20]
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	jne	.label_1187
	mov	rax, qword ptr [rbp - 0xe8]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_1180
.label_1187:
	mov	byte ptr [rbp - 0xf1], 0
.label_1189:
	xor	eax, eax
	mov	edi, eax
	lea	rsi, [rbp - 0xf1]
	mov	eax, 1
	mov	edx, eax
	lea	rcx, [rbp - 0x100]
	xor	eax, eax
	mov	r8d, 8
	mov	r9d, r8d
	mov	r10, rcx
	mov	qword ptr [rbp - 0x240], rdi
	mov	rdi, r10
	mov	qword ptr [rbp - 0x248], rsi
	mov	esi, eax
	mov	qword ptr [rbp - 0x250], rdx
	mov	rdx, r9
	mov	qword ptr [rbp - 0x258], rcx
	call	memset
	mov	rdi, qword ptr [rbp - 0x240]
	mov	rsi, qword ptr [rbp - 0x248]
	mov	rdx, qword ptr [rbp - 0x250]
	mov	rcx, qword ptr [rbp - 0x258]
	call	rpl_mbrtowc
	cmp	rax, -2
	jne	.label_1171
	mov	rax, qword ptr [rbp - 0x78]
	movzx	ecx, byte ptr [rbp - 0xf1]
	mov	qword ptr [rbp - 0x28], rax
	mov	byte ptr [rbp - 0x29], 0
	mov	dword ptr [rbp - 0x30], ecx
	movsxd	rax, dword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	byte ptr [rdx + rax], 1
	test	byte ptr [rbp - 0x29], 1
	je	.label_1174
	mov	edi, dword ptr [rbp - 0x30]
	call	tolower
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x28]
	mov	byte ptr [rdx + rcx], 1
.label_1174:
	jmp	.label_1171
.label_1171:
	jmp	.label_1188
.label_1188:
	mov	al, byte ptr [rbp - 0xf1]
	add	al, 1
	mov	byte ptr [rbp - 0xf1], al
	movzx	ecx, al
	cmp	ecx, 0
	jne	.label_1189
	jmp	.label_1178
.label_1180:
	mov	qword ptr [rbp - 0xf0], 0
.label_1172:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rbp - 0xe8]
	cmp	rax, qword ptr [rcx + 0x28]
	jge	.label_1194
	lea	rax, [rbp - 0x208]
	lea	rdi, [rbp - 0x200]
	xor	esi, esi
	mov	ecx, 8
	mov	edx, ecx
	mov	r8, rax
	mov	qword ptr [rbp - 0x260], rdi
	mov	rdi, r8
	mov	qword ptr [rbp - 0x268], rax
	call	memset
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rdx, qword ptr [rbp - 0xe8]
	mov	rdx, qword ptr [rdx]
	mov	esi, dword ptr [rdx + rax*4]
	mov	rdi, qword ptr [rbp - 0x260]
	mov	rdx, qword ptr [rbp - 0x268]
	call	wcrtomb
	cmp	rax, -1
	je	.label_1183
	mov	rax, qword ptr [rbp - 0x78]
	mov	cl, byte ptr [rbp - 0x89]
	movzx	edx, byte ptr [rbp - 0x200]
	mov	qword ptr [rbp - 0x18], rax
	and	cl, 1
	mov	byte ptr [rbp - 0x19], cl
	mov	dword ptr [rbp - 0x20], edx
	movsxd	rax, dword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rax], 1
	test	byte ptr [rbp - 0x19], 1
	je	.label_1166
	mov	edi, dword ptr [rbp - 0x20]
	call	tolower
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], 1
.label_1166:
	jmp	.label_1183
.label_1183:
	mov	rax, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rax + 0x18]
	and	rax, 0x400000
	cmp	rax, 0
	je	.label_1167
	mov	rax, qword ptr [rbp - 0x80]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_1167
	lea	rdi, [rbp - 0x200]
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rcx]
	mov	edx, dword ptr [rcx + rax*4]
	mov	qword ptr [rbp - 0x270], rdi
	mov	edi, edx
	call	towlower
	lea	rdx, [rbp - 0x208]
	mov	rdi, qword ptr [rbp - 0x270]
	mov	esi, eax
	call	wcrtomb
	cmp	rax, -1
	je	.label_1164
	mov	rax, qword ptr [rbp - 0x78]
	movzx	ecx, byte ptr [rbp - 0x200]
	mov	qword ptr [rbp - 8], rax
	mov	byte ptr [rbp - 9], 0
	mov	dword ptr [rbp - 0x10], ecx
	movsxd	rax, dword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rdx + rax], 1
	test	byte ptr [rbp - 9], 1
	je	.label_1198
	mov	edi, dword ptr [rbp - 0x10]
	call	tolower
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rdx + rcx], 1
.label_1198:
	jmp	.label_1164
.label_1164:
	jmp	.label_1167
.label_1167:
	jmp	.label_1169
.label_1169:
	mov	rax, qword ptr [rbp - 0xf0]
	add	rax, 1
	mov	qword ptr [rbp - 0xf0], rax
	jmp	.label_1172
.label_1194:
	jmp	.label_1178
.label_1178:
	jmp	.label_1179
.label_1204:
	cmp	dword ptr [rbp - 0x9c], 5
	je	.label_1181
	cmp	dword ptr [rbp - 0x9c], 7
	je	.label_1181
	cmp	dword ptr [rbp - 0x9c], 2
	jne	.label_1202
.label_1181:
	mov	esi, 1
	mov	eax, 0x100
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x78]
	call	memset
	cmp	dword ptr [rbp - 0x9c], 2
	jne	.label_1192
	mov	rax, qword ptr [rbp - 0x68]
	mov	cl, byte ptr [rax + 0x38]
	and	cl, 0xfe
	or	cl, 1
	mov	byte ptr [rax + 0x38], cl
.label_1192:
	jmp	.label_1190
.label_1202:
	jmp	.label_1179
.label_1179:
	jmp	.label_1175
.label_1175:
	jmp	.label_1195
.label_1195:
	jmp	.label_1197
.label_1197:
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, 1
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_1200
.label_1190:
	add	rsp, 0x270
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cfd0
	.globl rpl_regcomp
	.type rpl_regcomp, @function
rpl_regcomp:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	eax, 0x100
	mov	ecx, eax
	mov	eax, 0x10102c6
	mov	r8d, eax
	mov	eax, 0x3b2fc
	mov	r9d, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 1
	cmp	eax, 0
	cmovne	r8, r9
	mov	qword ptr [rbp - 0x28], r8
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi], 0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 8], 0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x10], 0
	mov	rdi, rcx
	call	malloc
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x20], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x20], 0
	sete	r10b
	and	r10b, 1
	movzx	edx, r10b
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1211
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_1208
.label_1211:
	xor	eax, eax
	mov	ecx, eax
	mov	eax, 0x400000
	mov	edx, eax
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 2
	cmp	eax, 0
	cmovne	rcx, rdx
	or	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rcx
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 4
	cmp	eax, 0
	je	.label_1210
	mov	rax, qword ptr [rbp - 0x28]
	and	rax, 0xffffffffffffffbf
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	or	rax, 0x100
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	cl, byte ptr [rax + 0x38]
	and	cl, 0x7f
	or	cl, 0x80
	mov	byte ptr [rax + 0x38], cl
	jmp	.label_1213
.label_1210:
	mov	rax, qword ptr [rbp - 0x10]
	mov	cl, byte ptr [rax + 0x38]
	and	cl, 0x7f
	mov	byte ptr [rax + 0x38], cl
.label_1213:
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 8
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	xor	cl, 0xff
	and	cl, 1
	movzx	eax, cl
	mov	rdx, qword ptr [rbp - 0x10]
	mov	cl, al
	mov	sil, byte ptr [rdx + 0x38]
	and	cl, 1
	shl	cl, 4
	and	sil, 0xef
	or	sil, cl
	mov	byte ptr [rdx + 0x38], sil
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x28], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rdi
	mov	rdi, rdx
	mov	qword ptr [rbp - 0x38], rsi
	call	strlen
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, rax
	call	re_compile_internal
	mov	dword ptr [rbp - 0x20], eax
	cmp	dword ptr [rbp - 0x20], 0x10
	jne	.label_1209
	mov	dword ptr [rbp - 0x20], 8
.label_1209:
	cmp	dword ptr [rbp - 0x20], 0
	sete	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1212
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_re_compile_fastmap
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_1214
.label_1212:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 0x20]
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x20], 0
.label_1214:
	mov	eax, dword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 4], eax
.label_1208:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d1b0
	.globl rpl_regerror
	.type rpl_regerror, @function
rpl_regerror:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x34], 0x11
	cmp	dword ptr [rbp - 4], 0
	mov	byte ptr [rbp - 0x41], al
	jl	.label_1215
	mov	eax, dword ptr [rbp - 4]
	cmp	eax, dword ptr [rbp - 0x34]
	setge	cl
	mov	byte ptr [rbp - 0x41], cl
.label_1215:
	mov	al, byte ptr [rbp - 0x41]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1218
	call	abort
.label_1218:
	movabs	rax, OFFSET FLAT:__re_error_msgid
	movsxd	rcx, dword ptr [rbp - 4]
	add	rax,  qword ptr [word ptr [+ (rcx * 8) + __re_error_msgid_idx]]
	mov	rdi, rax
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x20], 0
	setne	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_1216
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x20]
	seta	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1217
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_1217:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x40]
	call	memcpy
.label_1216:
	mov	rax, qword ptr [rbp - 0x30]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d2b0
	.globl rpl_regfree
	.type rpl_regfree, @function
rpl_regfree:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdi, ecx
	cmp	rdi, 0
	je	.label_1219
	mov	rdi, qword ptr [rbp - 0x10]
	call	free_dfa_content
.label_1219:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 0x20]
	call	free
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x20], 0
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 0x28]
	call	free
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x28], 0
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d340

	.globl free_dfa_content
	.type free_dfa_content, @function
free_dfa_content:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	qword ptr [rdi], 0
	je	.label_1220
	mov	qword ptr [rbp - 0x10], 0
.label_1223:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 0x10]
	jae	.label_1230
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	shl	rcx, 4
	add	rax, rcx
	mov	rdi, rax
	call	free_token
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1223
.label_1230:
	jmp	.label_1220
.label_1220:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x18]
	mov	rdi, rax
	call	free
	mov	qword ptr [rbp - 0x10], 0
.label_1225:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 0x10]
	jae	.label_1234
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x30], 0
	je	.label_1228
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x30]
	imul	rcx, qword ptr [rbp - 0x10], 0x18
	add	rax, rcx
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	call	free
.label_1228:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x38], 0
	je	.label_1232
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x38]
	imul	rcx, qword ptr [rbp - 0x10], 0x18
	add	rax, rcx
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	call	free
.label_1232:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x28], 0
	je	.label_1227
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x10], 0x18
	add	rax, rcx
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	call	free
.label_1227:
	jmp	.label_1224
.label_1224:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1225
.label_1234:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x28]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x30]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_1222
	mov	qword ptr [rbp - 0x10], 0
.label_1221:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 0x88]
	ja	.label_1226
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	imul	rcx, qword ptr [rbp - 0x10], 0x18
	add	rax, rcx
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x18], 0
.label_1233:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx]
	jge	.label_1231
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	free_state
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1233
.label_1231:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1221
.label_1226:
	jmp	.label_1222
.label_1222:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:utf8_sb_map
	mov	rdi, qword ptr [rbp - 8]
	cmp	qword ptr [rdi + 0x78], rax
	je	.label_1229
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x78]
	mov	rdi, rax
	call	free
.label_1229:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0xe0]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d5b0
	.globl rpl_regexec
	.type rpl_regexec, @function
rpl_regexec:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	dword ptr [rbp - 0x2c], r8d
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x48], rcx
	mov	r8d, dword ptr [rbp - 0x2c]
	and	r8d, 0xfffffff8
	cmp	r8d, 0
	je	.label_1237
	mov	dword ptr [rbp - 4], 2
	jmp	.label_1236
.label_1237:
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 4
	cmp	eax, 0
	je	.label_1239
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1235
.label_1239:
	mov	qword ptr [rbp - 0x38], 0
	mov	rdi, qword ptr [rbp - 0x18]
	call	strlen
	mov	qword ptr [rbp - 0x40], rax
.label_1235:
	mov	rax, qword ptr [rbp - 0x10]
	mov	cl, byte ptr [rax + 0x38]
	shr	cl, 4
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	je	.label_1240
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	r8, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rbp - 0x40]
	mov	r10, qword ptr [rbp - 0x40]
	mov	eax, dword ptr [rbp - 0x2c]
	mov	qword ptr [rbp - 0x50], rcx
	mov	rcx, r8
	mov	r8, r9
	mov	r9, r10
	mov	qword ptr [rsp], 0
	mov	qword ptr [rsp + 8], 0
	mov	dword ptr [rsp + 0x10], eax
	call	re_search_internal
	mov	dword ptr [rbp - 0x30], eax
	jmp	.label_1238
.label_1240:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rbp - 0x40]
	mov	r9, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x20]
	mov	r10, qword ptr [rbp - 0x28]
	mov	r11d, dword ptr [rbp - 0x2c]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	dword ptr [rsp + 0x10], r11d
	call	re_search_internal
	mov	dword ptr [rbp - 0x30], eax
.label_1238:
	cmp	dword ptr [rbp - 0x30], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	mov	dword ptr [rbp - 4], ecx
.label_1236:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d6f0

	.globl re_search_internal
	.type re_search_internal, @function
re_search_internal:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x270
	mov	eax, dword ptr [rbp + 0x20]
	mov	r10, qword ptr [rbp + 0x18]
	mov	r11, qword ptr [rbp + 0x10]
	xor	ebx, ebx
	mov	r14d, 0x100
	mov	r15d, r14d
	lea	r12, [rbp - 0x1b8]
	mov	qword ptr [rbp - 0x30], rdi
	mov	qword ptr [rbp - 0x38], rsi
	mov	qword ptr [rbp - 0x40], rdx
	mov	qword ptr [rbp - 0x48], rcx
	mov	qword ptr [rbp - 0x50], r8
	mov	qword ptr [rbp - 0x58], r9
	mov	qword ptr [rbp - 0x60], r11
	mov	qword ptr [rbp - 0x68], r10
	mov	dword ptr [rbp - 0x6c], eax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x78], rcx
	mov	qword ptr [rbp - 0xa8], -1
	mov	rdi, r12
	mov	esi, ebx
	mov	rdx, r15
	call	memset
	mov	rcx, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x120], rcx
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	qword ptr [rcx + 0x20], 0
	je	.label_1318
	mov	rax, qword ptr [rbp - 0x30]
	mov	cl, byte ptr [rax + 0x38]
	shr	cl, 3
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	je	.label_1318
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x50]
	je	.label_1318
	mov	rax, qword ptr [rbp - 0x30]
	mov	cl, byte ptr [rax + 0x38]
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	jne	.label_1318
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x20]
	mov	qword ptr [rbp - 0x1e8], rax
	jmp	.label_1334
.label_1318:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x1e8], rcx
	jmp	.label_1334
.label_1334:
	mov	rax, qword ptr [rbp - 0x1e8]
	mov	qword ptr [rbp - 0x1c0], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x28]
	mov	qword ptr [rbp - 0x1c8], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rcx + 0x30]
	jbe	.label_1343
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + 0x30]
	add	rcx, 1
	sub	rax, rcx
	mov	qword ptr [rbp - 0x1f0], rax
	jmp	.label_1245
.label_1343:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x1f0], rcx
	jmp	.label_1245
.label_1245:
	mov	rax, qword ptr [rbp - 0x1f0]
	mov	cl, 1
	mov	qword ptr [rbp - 0xb0], rax
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rdx, qword ptr [rbp - 0x60]
	sub	rdx, rax
	mov	qword ptr [rbp - 0x60], rdx
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax + 0x10], 0
	mov	byte ptr [rbp - 0x1f1], cl
	je	.label_1264
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x78]
	cmp	qword ptr [rcx + 0x48], 0
	mov	byte ptr [rbp - 0x1f1], al
	je	.label_1264
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x78]
	cmp	qword ptr [rcx + 0x50], 0
	mov	byte ptr [rbp - 0x1f1], al
	je	.label_1264
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x78]
	cmp	qword ptr [rcx + 0x58], 0
	mov	byte ptr [rbp - 0x1f1], al
	je	.label_1264
	mov	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rax + 0x60], 0
	sete	cl
	mov	byte ptr [rbp - 0x1f1], cl
.label_1264:
	mov	al, byte ptr [rbp - 0x1f1]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1282
	mov	dword ptr [rbp - 0x24], 1
	jmp	.label_1314
.label_1282:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rax + 0x48]
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_1291
	mov	rax, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rax + 0x50]
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_1291
	mov	rax, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rax + 0x58]
	cmp	qword ptr [rax + 0x10], 0
	je	.label_1295
	mov	rax, qword ptr [rbp - 0x30]
	mov	cl, byte ptr [rax + 0x38]
	shr	cl, 7
	movzx	edx, cl
	cmp	edx, 0
	jne	.label_1291
.label_1295:
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_1307
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_1307
	mov	dword ptr [rbp - 0x24], 1
	jmp	.label_1314
.label_1307:
	mov	qword ptr [rbp - 0x50], 0
	mov	qword ptr [rbp - 0x48], 0
.label_1291:
	mov	al, 1
	cmp	qword ptr [rbp - 0x60], 0
	mov	byte ptr [rbp - 0x1f2], al
	jne	.label_1321
	mov	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rax + 0x98], 0
	setne	cl
	mov	byte ptr [rbp - 0x1f2], cl
.label_1321:
	mov	al, byte ptr [rbp - 0x1f2]
	lea	rdi, [rbp - 0x1b8]
	and	al, 1
	mov	byte ptr [rbp - 0x8d], al
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rcx + 0x10]
	add	rcx, 1
	mov	r8, qword ptr [rbp - 0x30]
	mov	r8, qword ptr [r8 + 0x28]
	mov	r9, qword ptr [rbp - 0x30]
	mov	r9, qword ptr [r9 + 0x18]
	and	r9, 0x400000
	cmp	r9, 0
	setne	al
	mov	r9, qword ptr [rbp - 0x78]
	mov	r10, rsp
	mov	qword ptr [r10], r9
	and	al, 1
	movzx	r9d, al
	call	re_string_allocate
	mov	dword ptr [rbp - 0x70], eax
	cmp	dword ptr [rbp - 0x70], 0
	setne	r11b
	and	r11b, 1
	movzx	eax, r11b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_1335
	jmp	.label_1247
.label_1335:
	lea	rdi, [rbp - 0x1b8]
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x150], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x158], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	cl, byte ptr [rax + 0x38]
	shr	cl, 7
	movzx	edx, cl
	mov	cl, dl
	mov	byte ptr [rbp - 0x12b], cl
	mov	esi, dword ptr [rbp - 0x6c]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rax + 0x98]
	shl	rax, 1
	mov	rdx, rax
	call	match_ctx_init
	mov	dword ptr [rbp - 0x70], eax
	cmp	dword ptr [rbp - 0x70], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_1262
	jmp	.label_1247
.label_1262:
	cmp	qword ptr [rbp - 0x60], 1
	ja	.label_1266
	mov	rax, qword ptr [rbp - 0x78]
	mov	cl, byte ptr [rax + 0xb0]
	shr	cl, 1
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	je	.label_1268
.label_1266:
	movabs	rax, 0x1fffffffffffffff
	cmp	rax, qword ptr [rbp - 0x178]
	setbe	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1276
	mov	dword ptr [rbp - 0x70], 0xc
	jmp	.label_1247
.label_1276:
	mov	rax, qword ptr [rbp - 0x178]
	add	rax, 1
	shl	rax, 3
	mov	rdi, rax
	call	malloc
	mov	qword ptr [rbp - 0x100], rax
	cmp	qword ptr [rbp - 0x100], 0
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1340
	mov	dword ptr [rbp - 0x70], 0xc
	jmp	.label_1247
.label_1340:
	jmp	.label_1299
.label_1268:
	mov	qword ptr [rbp - 0x100], 0
.label_1299:
	mov	eax, 1
	mov	ecx, 0xffffffff
	mov	edx, 6
	mov	esi, 4
	mov	rdi, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0xa0], rdi
	mov	r8d, dword ptr [rbp - 0x6c]
	and	r8d, 1
	cmp	r8d, 0
	cmovne	edx, esi
	mov	dword ptr [rbp - 0x148], edx
	mov	rdi, qword ptr [rbp - 0x50]
	cmp	rdi, qword ptr [rbp - 0x48]
	cmovl	eax, ecx
	mov	dword ptr [rbp - 0x8c], eax
	mov	rdi, qword ptr [rbp - 0x50]
	cmp	rdi, qword ptr [rbp - 0x48]
	jge	.label_1305
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x200], rax
	jmp	.label_1278
.label_1305:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x200], rax
.label_1278:
	mov	rax, qword ptr [rbp - 0x200]
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x48]
	jge	.label_1332
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x208], rax
	jmp	.label_1336
.label_1332:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x208], rax
.label_1336:
	mov	rax, qword ptr [rbp - 0x208]
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x78]
	cmp	dword ptr [rax + 0xb4], 1
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0xb1], cl
	cmp	qword ptr [rbp - 0x1c0], 0
	je	.label_1341
	mov	al, 1
	test	byte ptr [rbp - 0xb1], 1
	mov	byte ptr [rbp - 0x209], al
	jne	.label_1258
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + 0x18]
	and	rcx, 0x400000
	cmp	rcx, 0
	mov	byte ptr [rbp - 0x20a], al
	jne	.label_1249
	cmp	qword ptr [rbp - 0x1c8], 0
	setne	al
	mov	byte ptr [rbp - 0x20a], al
.label_1249:
	mov	al, byte ptr [rbp - 0x20a]
	xor	al, 0xff
	mov	byte ptr [rbp - 0x209], al
.label_1258:
	mov	al, byte ptr [rbp - 0x209]
	xor	ecx, ecx
	mov	edx, 1
	mov	esi, 2
	mov	edi, 4
	test	al, 1
	mov	r8d, ecx
	cmovne	r8d, edi
	mov	r9, qword ptr [rbp - 0x48]
	cmp	r9, qword ptr [rbp - 0x50]
	mov	edi, ecx
	cmovle	edi, esi
	or	r8d, edi
	cmp	qword ptr [rbp - 0x1c8], 0
	cmovne	ecx, edx
	or	r8d, ecx
	mov	dword ptr [rbp - 0x210], r8d
	jmp	.label_1260
.label_1341:
	mov	eax, 8
	mov	dword ptr [rbp - 0x210], eax
	jmp	.label_1260
.label_1260:
	mov	eax, dword ptr [rbp - 0x210]
	mov	dword ptr [rbp - 0x94], eax
.label_1329:
	mov	dword ptr [rbp - 0x70], 1
	mov	rax, qword ptr [rbp - 0xa0]
	cmp	rax, qword ptr [rbp - 0x80]
	jl	.label_1281
	mov	rax, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rbp - 0xa0]
	jge	.label_1311
.label_1281:
	jmp	.label_1247
.label_1311:
	mov	eax, dword ptr [rbp - 0x94]
	add	eax, -4
	mov	ecx, eax
	sub	eax, 4
	mov	qword ptr [rbp - 0x218], rcx
	mov	dword ptr [rbp - 0x21c], eax
	ja	.label_1289
	mov	rax, qword ptr [rbp - 0x218]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1296]]
	jmp	rcx
.label_3888:
	jmp	.label_1297
.label_3887:
	jmp	.label_1301
.label_1301:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0xa0]
	cmp	rdx, qword ptr [rbp - 0x88]
	setl	sil
	and	sil, 1
	movzx	eax, sil
	movsxd	rdx, eax
	cmp	rdx, 0
	mov	byte ptr [rbp - 0x21d], cl
	je	.label_1303
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rbp - 0x38]
	movzx	edx, byte ptr [rcx + rax]
	mov	eax, edx
	mov	rcx, qword ptr [rbp - 0x1c8]
	movzx	edx, byte ptr [rcx + rax]
	mov	eax, edx
	mov	rcx, qword ptr [rbp - 0x1c0]
	cmp	byte ptr [rcx + rax], 0
	setne	sil
	xor	sil, 0xff
	mov	byte ptr [rbp - 0x21d], sil
.label_1303:
	mov	al, byte ptr [rbp - 0x21d]
	test	al, 1
	jne	.label_1328
	jmp	.label_1333
.label_1328:
	mov	rax, qword ptr [rbp - 0xa0]
	add	rax, 1
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_1301
.label_1333:
	jmp	.label_1257
.label_3886:
	jmp	.label_1254
.label_1254:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0xa0]
	cmp	rdx, qword ptr [rbp - 0x88]
	setl	sil
	and	sil, 1
	movzx	eax, sil
	movsxd	rdx, eax
	cmp	rdx, 0
	mov	byte ptr [rbp - 0x21e], cl
	je	.label_1338
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rbp - 0x38]
	movzx	edx, byte ptr [rcx + rax]
	mov	eax, edx
	mov	rcx, qword ptr [rbp - 0x1c0]
	cmp	byte ptr [rcx + rax], 0
	setne	sil
	xor	sil, 0xff
	mov	byte ptr [rbp - 0x21e], sil
.label_1338:
	mov	al, byte ptr [rbp - 0x21e]
	test	al, 1
	jne	.label_1251
	jmp	.label_1253
.label_1251:
	mov	rax, qword ptr [rbp - 0xa0]
	add	rax, 1
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_1254
.label_1253:
	jmp	.label_1257
.label_1257:
	mov	rax, qword ptr [rbp - 0xa0]
	cmp	rax, qword ptr [rbp - 0x88]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1259
	mov	rax, qword ptr [rbp - 0xa0]
	cmp	rax, qword ptr [rbp - 0x40]
	jl	.label_1265
	xor	eax, eax
	mov	dword ptr [rbp - 0x224], eax
	jmp	.label_1269
.label_1265:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rbp - 0x38]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x224], edx
.label_1269:
	mov	eax, dword ptr [rbp - 0x224]
	mov	dword ptr [rbp - 0xb8], eax
	cmp	qword ptr [rbp - 0x1c8], 0
	je	.label_1255
	movsxd	rax, dword ptr [rbp - 0xb8]
	mov	rcx, qword ptr [rbp - 0x1c8]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x228], edx
	jmp	.label_1283
.label_1255:
	mov	eax, dword ptr [rbp - 0xb8]
	mov	dword ptr [rbp - 0x228], eax
.label_1283:
	mov	eax, dword ptr [rbp - 0x228]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1c0]
	cmp	byte ptr [rdx + rcx], 0
	jne	.label_1288
	jmp	.label_1247
.label_1288:
	jmp	.label_1259
.label_1259:
	jmp	.label_1297
.label_3885:
	jmp	.label_1298
.label_1298:
	mov	rax, qword ptr [rbp - 0xa0]
	cmp	rax, qword ptr [rbp - 0x80]
	jl	.label_1277
	mov	rax, qword ptr [rbp - 0xa0]
	cmp	rax, qword ptr [rbp - 0x40]
	jl	.label_1304
	xor	eax, eax
	mov	dword ptr [rbp - 0x22c], eax
	jmp	.label_1310
.label_1304:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rbp - 0x38]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x22c], edx
.label_1310:
	mov	eax, dword ptr [rbp - 0x22c]
	mov	dword ptr [rbp - 0xb8], eax
	cmp	qword ptr [rbp - 0x1c8], 0
	je	.label_1320
	movsxd	rax, dword ptr [rbp - 0xb8]
	mov	rcx, qword ptr [rbp - 0x1c8]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x230], edx
	jmp	.label_1323
.label_1320:
	mov	eax, dword ptr [rbp - 0xb8]
	mov	dword ptr [rbp - 0x230], eax
.label_1323:
	mov	eax, dword ptr [rbp - 0x230]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1c0]
	cmp	byte ptr [rdx + rcx], 0
	je	.label_1319
	jmp	.label_1277
.label_1319:
	mov	rax, qword ptr [rbp - 0xa0]
	add	rax, -1
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_1298
.label_1277:
	mov	rax, qword ptr [rbp - 0xa0]
	cmp	rax, qword ptr [rbp - 0x80]
	jge	.label_1344
	jmp	.label_1247
.label_1344:
	jmp	.label_1297
.label_1289:
	jmp	.label_1300
.label_1300:
	mov	rax, qword ptr [rbp - 0xa0]
	sub	rax, qword ptr [rbp - 0x190]
	mov	qword ptr [rbp - 0x1d0], rax
	mov	rax, qword ptr [rbp - 0x1d0]
	cmp	rax, qword ptr [rbp - 0x180]
	setae	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1241
	lea	rdi, [rbp - 0x1b8]
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	edx, dword ptr [rbp - 0x6c]
	call	re_string_reconstruct
	mov	dword ptr [rbp - 0x70], eax
	cmp	dword ptr [rbp - 0x70], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_1256
	jmp	.label_1247
.label_1256:
	mov	rax, qword ptr [rbp - 0xa0]
	sub	rax, qword ptr [rbp - 0x190]
	mov	qword ptr [rbp - 0x1d0], rax
.label_1241:
	mov	rax, qword ptr [rbp - 0xa0]
	cmp	rax, qword ptr [rbp - 0x40]
	jl	.label_1267
	xor	eax, eax
	mov	dword ptr [rbp - 0x234], eax
	jmp	.label_1272
.label_1267:
	mov	rax, qword ptr [rbp - 0x1d0]
	mov	rcx, qword ptr [rbp - 0x1b0]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x234], edx
.label_1272:
	mov	eax, dword ptr [rbp - 0x234]
	mov	dword ptr [rbp - 0xb8], eax
	movsxd	rcx, dword ptr [rbp - 0xb8]
	mov	rdx, qword ptr [rbp - 0x1c0]
	cmp	byte ptr [rdx + rcx], 0
	je	.label_1279
	jmp	.label_1285
.label_1279:
	movsxd	rax, dword ptr [rbp - 0x8c]
	add	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0xa0], rax
	mov	rax, qword ptr [rbp - 0xa0]
	cmp	rax, qword ptr [rbp - 0x80]
	jl	.label_1286
	mov	rax, qword ptr [rbp - 0xa0]
	cmp	rax, qword ptr [rbp - 0x88]
	jle	.label_1293
.label_1286:
	mov	dword ptr [rbp - 0x70], 1
	jmp	.label_1247
.label_1293:
	jmp	.label_1300
.label_1285:
	jmp	.label_1297
.label_1297:
	lea	rdi, [rbp - 0x1b8]
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	edx, dword ptr [rbp - 0x6c]
	call	re_string_reconstruct
	mov	dword ptr [rbp - 0x70], eax
	cmp	dword ptr [rbp - 0x70], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_1312
	jmp	.label_1247
.label_1312:
	test	byte ptr [rbp - 0xb1], 1
	jne	.label_1275
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x188]
	je	.label_1275
	mov	rax, qword ptr [rbp - 0x1a8]
	cmp	dword ptr [rax], -1
	jne	.label_1275
	jmp	.label_1327
.label_1275:
	mov	dword ptr [rbp - 0xd8], 0
	mov	qword ptr [rbp - 0xf0], 0
	mov	qword ptr [rbp - 0xf8], 0
	mov	al, byte ptr [rbp - 0x8d]
	mov	rcx, qword ptr [rbp - 0x48]
	cmp	rcx, qword ptr [rbp - 0x50]
	mov	byte ptr [rbp - 0x235], al
	jg	.label_1330
	lea	rax, [rbp - 0xa0]
	mov	qword ptr [rbp - 0x240], rax
	jmp	.label_1342
.label_1330:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x240], rcx
	jmp	.label_1342
.label_1342:
	mov	rax, qword ptr [rbp - 0x240]
	lea	rcx, [rbp - 0x1b8]
	mov	dl, byte ptr [rbp - 0x235]
	and	dl, 1
	movzx	esi, dl
	lea	rdi, [rbp - 0x1b8]
	mov	rdx, rax
	mov	qword ptr [rbp - 0x248], rcx
	call	check_matching
	mov	qword ptr [rbp - 0xa8], rax
	cmp	qword ptr [rbp - 0xa8], -1
	je	.label_1252
	cmp	qword ptr [rbp - 0xa8], -2
	sete	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1331
	mov	dword ptr [rbp - 0x70], 0xc
	jmp	.label_1247
.label_1331:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0x110], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	cl, byte ptr [rax + 0x38]
	shr	cl, 4
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	jne	.label_1263
	cmp	qword ptr [rbp - 0x60], 1
	ja	.label_1270
.label_1263:
	mov	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rax + 0x98], 0
	je	.label_1274
.label_1270:
	lea	rdi, [rbp - 0x1b8]
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rbp - 0x100]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x1d8], rax
	mov	rsi, qword ptr [rbp - 0x1d8]
	mov	rdx, qword ptr [rbp - 0xa8]
	call	check_halt_state_context
	mov	qword ptr [rbp - 0x108], rax
.label_1274:
	mov	rax, qword ptr [rbp - 0x30]
	mov	cl, byte ptr [rax + 0x38]
	shr	cl, 4
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	jne	.label_1287
	cmp	qword ptr [rbp - 0x60], 1
	jbe	.label_1287
	mov	rax, qword ptr [rbp - 0x78]
	mov	cl, byte ptr [rax + 0xb0]
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	jne	.label_1294
.label_1287:
	mov	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rax + 0x98], 0
	je	.label_1243
.label_1294:
	lea	rdi, [rbp - 0x1b8]
	call	prune_impossible_nodes
	mov	dword ptr [rbp - 0x70], eax
	cmp	dword ptr [rbp - 0x70], 0
	jne	.label_1309
	jmp	.label_1324
.label_1309:
	cmp	dword ptr [rbp - 0x70], 1
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1316
	jmp	.label_1247
.label_1316:
	mov	qword ptr [rbp - 0xa8], -1
	jmp	.label_1322
.label_1243:
	jmp	.label_1324
.label_1322:
	jmp	.label_1325
.label_1325:
	jmp	.label_1252
.label_1252:
	lea	rdi, [rbp - 0x1b8]
	call	match_ctx_clean
.label_1327:
	movsxd	rax, dword ptr [rbp - 0x8c]
	add	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_1329
.label_1324:
	cmp	qword ptr [rbp - 0x60], 0
	jbe	.label_1292
	mov	qword ptr [rbp - 0x1e0], 1
.label_1315:
	mov	rax, qword ptr [rbp - 0x1e0]
	cmp	rax, qword ptr [rbp - 0x60]
	jae	.label_1337
	mov	rax, qword ptr [rbp - 0x1e0]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rax + 8], -1
	mov	rax, qword ptr [rbp - 0x1e0]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rax], -1
	mov	rax, qword ptr [rbp - 0x1e0]
	add	rax, 1
	mov	qword ptr [rbp - 0x1e0], rax
	jmp	.label_1315
.label_1337:
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x110]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	dl, byte ptr [rax + 0x38]
	shr	dl, 4
	and	dl, 1
	movzx	esi, dl
	cmp	esi, 0
	jne	.label_1248
	cmp	qword ptr [rbp - 0x60], 1
	jbe	.label_1248
	xor	eax, eax
	mov	cl, al
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	r8, qword ptr [rbp - 0x78]
	mov	r9b, byte ptr [r8 + 0xb0]
	and	r9b, 1
	movzx	eax, r9b
	cmp	eax, 0
	mov	qword ptr [rbp - 0x250], rsi
	mov	qword ptr [rbp - 0x258], rdi
	mov	qword ptr [rbp - 0x260], rdx
	mov	byte ptr [rbp - 0x261], cl
	je	.label_1261
	mov	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rax + 0x98], 0
	setg	cl
	mov	byte ptr [rbp - 0x261], cl
.label_1261:
	mov	al, byte ptr [rbp - 0x261]
	lea	rcx, [rbp - 0x1b8]
	and	al, 1
	movzx	r8d, al
	lea	rsi, [rbp - 0x1b8]
	mov	rdi, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rbp - 0x260]
	mov	r9, qword ptr [rbp - 0x250]
	mov	qword ptr [rbp - 0x270], rcx
	mov	rcx, r9
	call	set_regs
	mov	dword ptr [rbp - 0x70], eax
	cmp	dword ptr [rbp - 0x70], 0
	setne	r10b
	and	r10b, 1
	movzx	eax, r10b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_1290
	jmp	.label_1247
.label_1290:
	jmp	.label_1248
.label_1248:
	mov	qword ptr [rbp - 0x1e0], 0
.label_1273:
	mov	rax, qword ptr [rbp - 0x1e0]
	cmp	rax, qword ptr [rbp - 0x60]
	jae	.label_1302
	mov	rax, qword ptr [rbp - 0x1e0]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x68]
	cmp	qword ptr [rax], -1
	je	.label_1308
	movzx	eax, byte ptr [rbp - 0x12c]
	cmp	eax, 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_1317
	mov	rax, qword ptr [rbp - 0x1e0]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x188]
	jne	.label_1246
	mov	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0x278], rax
	jmp	.label_1326
.label_1246:
	mov	rax, qword ptr [rbp - 0x1e0]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x1a0]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x278], rax
.label_1326:
	mov	rax, qword ptr [rbp - 0x278]
	mov	rcx, qword ptr [rbp - 0x1e0]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x68]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x1e0]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rax + 8]
	cmp	rax, qword ptr [rbp - 0x188]
	jne	.label_1339
	mov	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0x280], rax
	jmp	.label_1244
.label_1339:
	mov	rax, qword ptr [rbp - 0x1e0]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x1a0]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x280], rax
.label_1244:
	mov	rax, qword ptr [rbp - 0x280]
	mov	rcx, qword ptr [rbp - 0x1e0]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x68]
	mov	qword ptr [rcx + 8], rax
.label_1317:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rbp - 0x1e0]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x68]
	add	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rbp - 0x1e0]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x68]
	add	rax, qword ptr [rcx + 8]
	mov	qword ptr [rcx + 8], rax
.label_1308:
	jmp	.label_1271
.label_1271:
	mov	rax, qword ptr [rbp - 0x1e0]
	add	rax, 1
	mov	qword ptr [rbp - 0x1e0], rax
	jmp	.label_1273
.label_1302:
	mov	qword ptr [rbp - 0x1e0], 0
.label_1284:
	mov	rax, qword ptr [rbp - 0x1e0]
	cmp	rax, qword ptr [rbp - 0xb0]
	jge	.label_1280
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, qword ptr [rbp - 0x1e0]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rax], -1
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, qword ptr [rbp - 0x1e0]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rax + 8], -1
	mov	rax, qword ptr [rbp - 0x1e0]
	add	rax, 1
	mov	qword ptr [rbp - 0x1e0], rax
	jmp	.label_1284
.label_1280:
	mov	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rax + 0xe0], 0
	je	.label_1242
	mov	qword ptr [rbp - 0x1e0], 0
.label_1346:
	mov	rax, qword ptr [rbp - 0x1e0]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x60]
	jae	.label_1306
	mov	rax, qword ptr [rbp - 0x1e0]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rcx + 0xe0]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, qword ptr [rbp - 0x1e0]
	je	.label_1313
	mov	rax, qword ptr [rbp - 0x1e0]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rcx + 0xe0]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, 1
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x1e0]
	add	rcx, 1
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x68]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x1e0]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rcx + 0xe0]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, 1
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x1e0]
	add	rcx, 1
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x68]
	mov	qword ptr [rcx + 8], rax
.label_1313:
	jmp	.label_1345
.label_1345:
	mov	rax, qword ptr [rbp - 0x1e0]
	add	rax, 1
	mov	qword ptr [rbp - 0x1e0], rax
	jmp	.label_1346
.label_1306:
	jmp	.label_1242
.label_1242:
	jmp	.label_1292
.label_1292:
	jmp	.label_1247
.label_1247:
	mov	rax, qword ptr [rbp - 0x100]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rax + 0x98], 0
	je	.label_1250
	lea	rdi, [rbp - 0x1b8]
	call	match_ctx_free
.label_1250:
	lea	rdi, [rbp - 0x1b8]
	call	re_string_destruct
	mov	eax, dword ptr [rbp - 0x70]
	mov	dword ptr [rbp - 0x24], eax
.label_1314:
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x270
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e870

	.globl rpl_re_match
	.type rpl_re_match, @function
rpl_re_match:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	xor	eax, eax
	mov	r9d, eax
	mov	eax, 1
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x18]
	mov	r10, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], r8
	mov	r8, r9
	mov	r9, qword ptr [rbp - 0x30]
	mov	qword ptr [rsp], r10
	mov	dword ptr [rsp + 8], 1
	mov	dword ptr [rbp - 0x34], eax
	call	re_search_stub
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e8e0

	.globl re_search_stub
	.type re_search_stub, @function
re_search_stub:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	al, byte ptr [rbp + 0x18]
	mov	r10, qword ptr [rbp + 0x10]
	mov	r11b, 1
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	qword ptr [rbp - 0x40], r10
	and	al, 1
	mov	byte ptr [rbp - 0x41], al
	mov	dword ptr [rbp - 0x64], 0
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x70], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x78], rcx
	cmp	qword ptr [rbp - 0x28], 0
	mov	byte ptr [rbp - 0x79], r11b
	jl	.label_1367
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x20]
	setg	cl
	mov	byte ptr [rbp - 0x79], cl
.label_1367:
	mov	al, byte ptr [rbp - 0x79]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1370
	mov	qword ptr [rbp - 8], -1
	jmp	.label_1369
.label_1370:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rcx, qword ptr [rbp - 0x78]
	mov	byte ptr [rbp - 0x7a], al
	jl	.label_1376
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x7b], cl
	jg	.label_1347
	mov	rax, qword ptr [rbp - 0x78]
	cmp	rax, qword ptr [rbp - 0x28]
	setl	cl
	mov	byte ptr [rbp - 0x7b], cl
.label_1347:
	mov	al, byte ptr [rbp - 0x7b]
	mov	byte ptr [rbp - 0x7a], al
.label_1376:
	mov	al, byte ptr [rbp - 0x7a]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1355
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1353
.label_1355:
	mov	al, 1
	cmp	qword ptr [rbp - 0x78], 0
	mov	byte ptr [rbp - 0x7c], al
	jl	.label_1362
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0
	mov	byte ptr [rbp - 0x7d], cl
	jge	.label_1368
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x78]
	setle	cl
	mov	byte ptr [rbp - 0x7d], cl
.label_1368:
	mov	al, byte ptr [rbp - 0x7d]
	mov	byte ptr [rbp - 0x7c], al
.label_1362:
	mov	al, byte ptr [rbp - 0x7c]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1348
	mov	qword ptr [rbp - 0x78], 0
.label_1348:
	jmp	.label_1353
.label_1353:
	xor	eax, eax
	mov	ecx, 2
	mov	edx, 1
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dil, byte ptr [rsi + 0x38]
	shr	dil, 5
	and	dil, 1
	movzx	r8d, dil
	cmp	r8d, 0
	mov	r8d, eax
	cmovne	r8d, edx
	or	r8d, dword ptr [rbp - 0x64]
	mov	dword ptr [rbp - 0x64], r8d
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dil, byte ptr [rsi + 0x38]
	shr	dil, 6
	and	dil, 1
	movzx	edx, dil
	cmp	edx, 0
	cmovne	eax, ecx
	or	eax, dword ptr [rbp - 0x64]
	mov	dword ptr [rbp - 0x64], eax
	mov	rsi, qword ptr [rbp - 0x28]
	cmp	rsi, qword ptr [rbp - 0x78]
	jge	.label_1349
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x20], 0
	je	.label_1349
	mov	rax, qword ptr [rbp - 0x10]
	mov	cl, byte ptr [rax + 0x38]
	shr	cl, 3
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	jne	.label_1349
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_re_compile_fastmap
	mov	dword ptr [rbp - 0x84], eax
.label_1349:
	mov	rax, qword ptr [rbp - 0x10]
	mov	cl, byte ptr [rax + 0x38]
	shr	cl, 4
	and	cl, 1
	movzx	edx, cl
	mov	edx, edx
	mov	eax, edx
	cmp	rax, 0
	je	.label_1359
	mov	qword ptr [rbp - 0x40], 0
.label_1359:
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_1371
	mov	qword ptr [rbp - 0x58], 1
	jmp	.label_1352
.label_1371:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	sil, byte ptr [rdx + 0x38]
	shr	sil, 1
	and	sil, 3
	movzx	eax, sil
	cmp	eax, 2
	mov	byte ptr [rbp - 0x85], cl
	jne	.label_1378
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x30]
	setbe	dl
	mov	byte ptr [rbp - 0x85], dl
.label_1378:
	mov	al, byte ptr [rbp - 0x85]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1358
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], 1
	setl	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1364
	mov	qword ptr [rbp - 0x40], 0
	mov	qword ptr [rbp - 0x58], 1
.label_1364:
	jmp	.label_1350
.label_1358:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
.label_1350:
	jmp	.label_1352
.label_1352:
	mov	rax, qword ptr [rbp - 0x58]
	shl	rax, 4
	mov	rdi, rax
	call	malloc
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1356
	mov	qword ptr [rbp - 0x60], -2
	jmp	.label_1363
.label_1356:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x78]
	mov	r9, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x58]
	mov	r10, qword ptr [rbp - 0x50]
	mov	r11d, dword ptr [rbp - 0x64]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	dword ptr [rsp + 0x10], r11d
	call	re_search_internal
	mov	dword ptr [rbp - 0x48], eax
	mov	qword ptr [rbp - 0x60], 0
	cmp	dword ptr [rbp - 0x48], 0
	je	.label_1351
	mov	eax, 0xfffffffe
	mov	ecx, 0xffffffff
	cmp	dword ptr [rbp - 0x48], 1
	cmove	eax, ecx
	movsxd	rdx, eax
	mov	qword ptr [rbp - 0x60], rdx
	jmp	.label_1354
.label_1351:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_1361
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rbp - 0x10]
	mov	cl, byte ptr [rax + 0x38]
	shr	cl, 1
	and	cl, 3
	movzx	ecx, cl
	call	re_copy_regs
	mov	rdx, qword ptr [rbp - 0x10]
	mov	r8b, al
	mov	r9b, byte ptr [rdx + 0x38]
	and	r8b, 3
	shl	r8b, 1
	and	r9b, 0xf9
	or	r9b, r8b
	mov	byte ptr [rdx + 0x38], r9b
	mov	rdx, qword ptr [rbp - 0x10]
	mov	r8b, byte ptr [rdx + 0x38]
	shr	r8b, 1
	and	r8b, 3
	movzx	eax, r8b
	cmp	eax, 0
	sete	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_1366
	mov	qword ptr [rbp - 0x60], -2
.label_1366:
	jmp	.label_1361
.label_1361:
	jmp	.label_1354
.label_1354:
	cmp	qword ptr [rbp - 0x60], 0
	sete	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1365
	test	byte ptr [rbp - 0x41], 1
	je	.label_1375
	mov	rax, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_1377
	jmp	.label_1360
.label_1377:
	movabs	rdi, OFFSET FLAT:label_1372
	movabs	rsi, OFFSET FLAT:label_1373
	mov	edx, 0x1be
	movabs	rcx, OFFSET FLAT:label_1374
	call	__assert_fail
.label_1360:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rax + 8]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1357
.label_1375:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x60], rax
.label_1357:
	jmp	.label_1365
.label_1365:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, rax
	call	free
.label_1363:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 8], rax
.label_1369:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ed80

	.globl rpl_re_search
	.type rpl_re_search, @function
rpl_re_search:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], r9
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x28]
	mov	r9, qword ptr [rbp - 0x18]
	mov	r10, qword ptr [rbp - 0x30]
	mov	qword ptr [rsp], r10
	mov	dword ptr [rsp + 8], 0
	mov	dword ptr [rbp - 0x34], eax
	call	re_search_stub
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ede0
	.globl rpl_re_match_2
	.type rpl_re_match_2, @function
rpl_re_match_2:

	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x78
	mov	rax, qword ptr [rbp + 0x18]
	mov	r10, qword ptr [rbp + 0x10]
	xor	r11d, r11d
	mov	ebx, r11d
	mov	r11d, 1
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	qword ptr [rbp - 0x40], r10
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	r9, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x40]
	mov	r10, qword ptr [rbp - 0x48]
	mov	qword ptr [rsp], 0
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	dword ptr [rsp + 0x18], 1
	mov	qword ptr [rbp - 0x50], rbx
	mov	dword ptr [rbp - 0x54], r11d
	call	re_search_2_stub
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ee70

	.globl re_search_2_stub
	.type re_search_2_stub, @function
re_search_2_stub:
	push	rbp
	mov	rbp, rsp
	push	r14
	push	rbx
	sub	rsp, 0xa0
	mov	al, byte ptr [rbp + 0x28]
	mov	r10, qword ptr [rbp + 0x20]
	mov	r11, qword ptr [rbp + 0x18]
	mov	rbx, qword ptr [rbp + 0x10]
	mov	r14b, 1
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 0x28], rsi
	mov	qword ptr [rbp - 0x30], rdx
	mov	qword ptr [rbp - 0x38], rcx
	mov	qword ptr [rbp - 0x40], r8
	mov	qword ptr [rbp - 0x48], r9
	mov	qword ptr [rbp - 0x50], rbx
	mov	qword ptr [rbp - 0x58], r11
	mov	qword ptr [rbp - 0x60], r10
	and	al, 1
	mov	byte ptr [rbp - 0x61], al
	mov	qword ptr [rbp - 0x88], 0
	cmp	qword ptr [rbp - 0x30], 0
	mov	byte ptr [rbp - 0x89], r14b
	jl	.label_1380
	mov	al, 1
	cmp	qword ptr [rbp - 0x40], 0
	mov	byte ptr [rbp - 0x89], al
	jl	.label_1380
	mov	al, 1
	cmp	qword ptr [rbp - 0x60], 0
	mov	byte ptr [rbp - 0x89], al
	jl	.label_1380
	mov	al, 1
	test	al, 1
	jne	.label_1388
	jmp	.label_1381
.label_1388:
	cmp	qword ptr [rbp - 0x40], 0
	jge	.label_1383
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rax, qword ptr [rbp - 0x40]
	cmp	rcx, rax
	jl	.label_1379
	jmp	.label_1385
.label_1383:
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x30]
	jl	.label_1379
	jmp	.label_1385
.label_1381:
	cmp	qword ptr [rbp - 0x30], 0
	jge	.label_1387
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x30]
	add	rcx, qword ptr [rbp - 0x40]
	cmp	rax, rcx
	jle	.label_1379
	jmp	.label_1385
.label_1387:
	cmp	qword ptr [rbp - 0x40], 0
	jge	.label_1394
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x30]
	add	rcx, qword ptr [rbp - 0x40]
	cmp	rax, rcx
	jle	.label_1379
	jmp	.label_1385
.label_1394:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x40]
	jl	.label_1379
.label_1385:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x30]
	add	rcx, qword ptr [rbp - 0x40]
	cmp	rcx, rax
	jl	.label_1379
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x30]
	add	rcx, qword ptr [rbp - 0x40]
	cmp	rax, rcx
	jge	.label_1382
.label_1379:
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 0x30]
	add	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x80], rcx
	mov	dword ptr [rbp - 0x90], eax
	jmp	.label_1390
.label_1382:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x30]
	add	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x80], rcx
	mov	dword ptr [rbp - 0x90], eax
.label_1390:
	mov	eax, dword ptr [rbp - 0x90]
	cmp	eax, 0
	setne	cl
	mov	byte ptr [rbp - 0x89], cl
.label_1380:
	mov	al, byte ptr [rbp - 0x89]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1392
	mov	qword ptr [rbp - 0x18], -2
	jmp	.label_1386
.label_1392:
	cmp	qword ptr [rbp - 0x40], 0
	jle	.label_1384
	cmp	qword ptr [rbp - 0x30], 0
	jle	.label_1389
	mov	rax, qword ptr [rbp - 0x80]
	shl	rax, 0
	mov	rdi, rax
	call	malloc
	mov	qword ptr [rbp - 0x88], rax
	cmp	qword ptr [rbp - 0x88], 0
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1393
	mov	qword ptr [rbp - 0x18], -2
	jmp	.label_1386
.label_1393:
	mov	rdi, qword ptr [rbp - 0x88]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	call	memcpy
	mov	rdx, qword ptr [rbp - 0x88]
	add	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x98], rdi
	mov	rdi, rdx
	mov	rdx, qword ptr [rbp - 0x98]
	call	memcpy
	mov	rdx, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x70], rdx
	jmp	.label_1391
.label_1389:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x70], rax
.label_1391:
	jmp	.label_1395
.label_1384:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x70], rax
.label_1395:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	r8, qword ptr [rbp - 0x50]
	mov	r9, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x58]
	mov	r10b, byte ptr [rbp - 0x61]
	and	r10b, 1
	mov	qword ptr [rsp], rax
	movzx	r11d, r10b
	mov	dword ptr [rsp + 8], r11d
	call	re_search_stub
	mov	qword ptr [rbp - 0x78], rax
	mov	rdi, qword ptr [rbp - 0x88]
	call	free
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x18], rax
.label_1386:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0xa0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f170
	.globl rpl_re_search_2
	.type rpl_re_search_2, @function
rpl_re_search_2:

	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x78
	mov	rax, qword ptr [rbp + 0x20]
	mov	r10, qword ptr [rbp + 0x18]
	mov	r11, qword ptr [rbp + 0x10]
	xor	ebx, ebx
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	qword ptr [rbp - 0x40], r11
	mov	qword ptr [rbp - 0x48], r10
	mov	qword ptr [rbp - 0x50], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	r9, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x40]
	mov	r10, qword ptr [rbp - 0x48]
	mov	r11, qword ptr [rbp - 0x50]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	mov	dword ptr [rsp + 0x18], 0
	mov	dword ptr [rbp - 0x54], ebx
	call	re_search_2_stub
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f200
	.globl rpl_re_set_registers
	.type rpl_re_set_registers, @function
rpl_re_set_registers:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1396
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax + 0x38]
	and	cl, 0xf9
	or	cl, 2
	mov	byte ptr [rax + 0x38], cl
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 8], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x10], rax
	jmp	.label_1397
.label_1396:
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax + 0x38]
	and	cl, 0xf9
	mov	byte ptr [rax + 0x38], cl
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
.label_1397:
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f290

	.globl free_token
	.type free_token, @function
free_token:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdi + 8]
	and	eax, 0xff
	cmp	eax, 6
	jne	.label_1398
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 0x12
	and	ecx, 1
	cmp	ecx, 0
	jne	.label_1398
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	call	free_charset
	jmp	.label_1399
.label_1398:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 3
	jne	.label_1400
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 0x12
	and	ecx, 1
	cmp	ecx, 0
	jne	.label_1400
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	call	free
.label_1400:
	jmp	.label_1399
.label_1399:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f320

	.globl free_state
	.type free_state, @function
free_state:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x30]
	call	free
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x48]
	call	free
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x50]
	mov	rax, qword ptr [rbp - 8]
	add	rax, 8
	cmp	rdi, rax
	je	.label_1401
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x50]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x50]
	mov	rdi, rax
	call	free
.label_1401:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x18]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x60]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x58]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f3d0

	.globl free_charset
	.type free_charset, @function
free_charset:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	call	free
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 8]
	call	free
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x10]
	call	free
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x18]
	call	free
	mov	rdi, qword ptr [rbp - 8]
	call	free
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f420

	.globl init_dfa
	.type init_dfa, @function
init_dfa:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xf0
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x30], 8
	cmp	rcx, qword ptr [rbp - 0x30]
	jae	.label_1413
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1422
.label_1413:
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0x50], rcx
	jmp	.label_1422
.label_1422:
	mov	rax, qword ptr [rbp - 0x50]
	mov	ecx, 0x18
	mov	edx, ecx
	cmp	rdx, rax
	jae	.label_1428
	mov	eax, 0x10
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x30]
	jae	.label_1432
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_1436
.label_1432:
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0x58], rcx
	jmp	.label_1436
.label_1436:
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1440
.label_1428:
	mov	eax, 0x18
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_1440
.label_1440:
	mov	rax, qword ptr [rbp - 0x60]
	mov	ecx, 0x10
	mov	edx, ecx
	cmp	rdx, rax
	jae	.label_1447
	mov	eax, 0x10
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x30]
	jae	.label_1454
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_1457
.label_1454:
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0x68], rcx
	jmp	.label_1457
.label_1457:
	mov	rax, qword ptr [rbp - 0x68]
	mov	ecx, 0x18
	mov	edx, ecx
	cmp	rdx, rax
	jae	.label_1406
	mov	eax, 0x10
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x30]
	jae	.label_1412
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1417
.label_1412:
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0x70], rcx
	jmp	.label_1417
.label_1417:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1409
.label_1406:
	mov	eax, 0x18
	mov	ecx, eax
	mov	qword ptr [rbp - 0x78], rcx
	jmp	.label_1409
.label_1409:
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_1430
.label_1447:
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0x80], rcx
	jmp	.label_1430
.label_1430:
	mov	rax, qword ptr [rbp - 0x80]
	mov	ecx, 0x18
	mov	edx, ecx
	cmp	rdx, rax
	jae	.label_1433
	mov	eax, 0x10
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x30]
	jae	.label_1438
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_1404
.label_1438:
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0x88], rcx
	jmp	.label_1404
.label_1404:
	mov	rax, qword ptr [rbp - 0x88]
	mov	ecx, 0x18
	mov	edx, ecx
	cmp	rdx, rax
	jae	.label_1448
	mov	eax, 0x10
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x30]
	jae	.label_1435
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_1405
.label_1435:
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0x90], rcx
	jmp	.label_1405
.label_1405:
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_1410
.label_1448:
	mov	eax, 0x18
	mov	ecx, eax
	mov	qword ptr [rbp - 0x98], rcx
	jmp	.label_1410
.label_1410:
	mov	rax, qword ptr [rbp - 0x98]
	mov	ecx, 0x10
	mov	edx, ecx
	cmp	rdx, rax
	jae	.label_1419
	mov	eax, 0x10
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x30]
	jae	.label_1424
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_1427
.label_1424:
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_1427
.label_1427:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	ecx, 0x18
	mov	edx, ecx
	cmp	rdx, rax
	jae	.label_1418
	mov	eax, 0x10
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x30]
	jae	.label_1439
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xa8], rax
	jmp	.label_1442
.label_1439:
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0xa8], rcx
	jmp	.label_1442
.label_1442:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_1451
.label_1418:
	mov	eax, 0x18
	mov	ecx, eax
	mov	qword ptr [rbp - 0xb0], rcx
	jmp	.label_1451
.label_1451:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_1423
.label_1419:
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0xb8], rcx
	jmp	.label_1423
.label_1423:
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0xc0], rax
	jmp	.label_1414
.label_1433:
	mov	eax, 0x18
	mov	ecx, eax
	mov	qword ptr [rbp - 0xc0], rcx
	jmp	.label_1414
.label_1414:
	mov	rax, qword ptr [rbp - 0xc0]
	movabs	rcx, 0x7fffffffffffffff
	mov	rdx, -1
	xor	esi, esi
	mov	edi, 0xe8
	mov	r8d, edi
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	qword ptr [rbp - 0xc8], rdx
	mov	rdx, r8
	mov	qword ptr [rbp - 0xd0], rcx
	call	memset
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0x80], 0xf
	mov	rax, qword ptr [rbp - 0xc8]
	xor	esi, esi
	mov	edx, esi
	div	qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0xd0]
	cmp	rcx, rax
	jae	.label_1434
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_1445
.label_1434:
	mov	rax, -1
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0xd8], rax
.label_1445:
	mov	rax, qword ptr [rbp - 0xd8]
	shr	rax, 1
	cmp	rax, qword ptr [rbp - 0x18]
	setbe	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1455
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_1403
.label_1455:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	shl	rax, 4
	mov	rdi, rax
	call	malloc
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	qword ptr [rbp - 0x20], 1
.label_1426:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x18]
	jbe	.label_1421
	jmp	.label_1446
.label_1421:
	jmp	.label_1425
.label_1425:
	mov	rax, qword ptr [rbp - 0x20]
	shl	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1426
.label_1446:
	mov	eax, 0x18
	mov	edi, eax
	mov	rsi, qword ptr [rbp - 0x20]
	call	calloc
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x40], rax
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 1
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x88], rax
	call	__ctype_get_mb_cur_max
	mov	edi, 0xe
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0xb4], ecx
	call	rpl_nl_langinfo
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x55
	je	.label_1444
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x75
	jne	.label_1407
.label_1444:
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x54
	je	.label_1452
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x74
	jne	.label_1407
.label_1452:
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x46
	je	.label_1458
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x66
	jne	.label_1407
.label_1458:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 3
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + 3]
	cmp	edx, 0x2d
	sete	sil
	and	sil, 1
	movzx	edx, sil
	movsxd	rcx, edx
	add	rax, rcx
	mov	edx, OFFSET FLAT:label_1443
	mov	esi, edx
	mov	rdi, rax
	call	strcmp
	cmp	eax, 0
	jne	.label_1407
	mov	rax, qword ptr [rbp - 0x10]
	mov	cl, byte ptr [rax + 0xb0]
	and	cl, 0xfb
	or	cl, 4
	mov	byte ptr [rax + 0xb0], cl
.label_1407:
	mov	rax, qword ptr [rbp - 0x10]
	mov	cl, byte ptr [rax + 0xb0]
	and	cl, 0xf7
	mov	byte ptr [rax + 0xb0], cl
	mov	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_1429
	mov	rax, qword ptr [rbp - 0x10]
	mov	cl, byte ptr [rax + 0xb0]
	shr	cl, 2
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	je	.label_1437
	movabs	rax, OFFSET FLAT:utf8_sb_map
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x78], rax
	jmp	.label_1441
.label_1437:
	mov	eax, 0x20
	mov	edi, eax
	mov	eax, 1
	mov	esi, eax
	call	calloc
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x78], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x78], 0
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1453
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_1403
.label_1453:
	mov	dword ptr [rbp - 0x3c], 0
	mov	dword ptr [rbp - 0x44], 0
.label_1450:
	cmp	dword ptr [rbp - 0x3c], 4
	jge	.label_1411
	mov	dword ptr [rbp - 0x40], 0
.label_1420:
	cmp	dword ptr [rbp - 0x40], 0x40
	jge	.label_1416
	mov	edi, dword ptr [rbp - 0x44]
	call	btowc
	mov	dword ptr [rbp - 0x48], eax
	cmp	dword ptr [rbp - 0x48], -1
	je	.label_1431
	mov	eax, 1
	mov	ecx, eax
	mov	eax, dword ptr [rbp - 0x40]
	mov	edx, eax
	mov	qword ptr [rbp - 0xe0], rcx
	mov	rcx, rdx
	mov	rdx, qword ptr [rbp - 0xe0]
	shl	rdx, cl
	movsxd	rsi, dword ptr [rbp - 0x3c]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 0x78]
	or	rdx, qword ptr [rdi + rsi*8]
	mov	qword ptr [rdi + rsi*8], rdx
.label_1431:
	mov	eax, dword ptr [rbp - 0x44]
	and	eax, 0xffffff80
	cmp	eax, 0
	jne	.label_1402
	mov	eax, dword ptr [rbp - 0x48]
	cmp	eax, dword ptr [rbp - 0x44]
	je	.label_1402
	mov	rax, qword ptr [rbp - 0x10]
	mov	cl, byte ptr [rax + 0xb0]
	and	cl, 0xf7
	or	cl, 8
	mov	byte ptr [rax + 0xb0], cl
.label_1402:
	jmp	.label_1415
.label_1415:
	mov	eax, dword ptr [rbp - 0x40]
	add	eax, 1
	mov	dword ptr [rbp - 0x40], eax
	mov	eax, dword ptr [rbp - 0x44]
	add	eax, 1
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_1420
.label_1416:
	jmp	.label_1449
.label_1449:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_1450
.label_1411:
	jmp	.label_1441
.label_1441:
	jmp	.label_1429
.label_1429:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	qword ptr [rcx], 0
	mov	byte ptr [rbp - 0xe1], al
	je	.label_1456
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x40], 0
	sete	cl
	mov	byte ptr [rbp - 0xe1], cl
.label_1456:
	mov	al, byte ptr [rbp - 0xe1]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1408
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_1403
.label_1408:
	mov	dword ptr [rbp - 4], 0
.label_1403:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xf0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40fb50

	.globl re_string_construct
	.type re_string_construct, @function
re_string_construct:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	al, r8b
	xor	r8d, r8d
	mov	r10d, 0x98
	mov	r11d, r10d
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	and	al, 1
	mov	byte ptr [rbp - 0x29], al
	mov	qword ptr [rbp - 0x38], r9
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, rcx
	mov	esi, r8d
	mov	rdx, r11
	call	memset
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	al, byte ptr [rbp - 0x29]
	mov	r9, qword ptr [rbp - 0x38]
	and	al, 1
	movzx	r8d, al
	call	re_string_construct_common
	cmp	qword ptr [rbp - 0x20], 0
	jle	.label_1475
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	rsi, rax
	call	re_string_realloc_buffers
	mov	dword ptr [rbp - 0x3c], eax
	cmp	dword ptr [rbp - 0x3c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_1467
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1466
.label_1467:
	jmp	.label_1475
.label_1475:
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax + 0x8b]
	cmp	ecx, 0
	je	.label_1459
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1476
.label_1459:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x48], rax
.label_1476:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	test	byte ptr [rbp - 0x29], 1
	je	.label_1473
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_1461
	jmp	.label_1468
.label_1468:
	mov	rdi, qword ptr [rbp - 0x10]
	call	build_wcs_upper_buffer
	mov	dword ptr [rbp - 0x3c], eax
	cmp	dword ptr [rbp - 0x3c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdi, eax
	cmp	rdi, 0
	je	.label_1472
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1466
.label_1472:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	cmp	rax, qword ptr [rbp - 0x20]
	jl	.label_1465
	jmp	.label_1464
.label_1465:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	rdx, qword ptr [rbp - 0x38]
	movsxd	rdx, dword ptr [rdx + 0xb4]
	add	rcx, rdx
	cmp	rax, rcx
	jle	.label_1471
	jmp	.label_1464
.label_1471:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	shl	rax, 1
	mov	rsi, rax
	call	re_string_realloc_buffers
	mov	dword ptr [rbp - 0x3c], eax
	cmp	dword ptr [rbp - 0x3c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_1463
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1466
.label_1463:
	jmp	.label_1468
.label_1464:
	jmp	.label_1474
.label_1461:
	mov	rdi, qword ptr [rbp - 0x10]
	call	build_upper_buffer
.label_1474:
	jmp	.label_1460
.label_1473:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_1470
	mov	rdi, qword ptr [rbp - 0x10]
	call	build_wcs_buffer
	jmp	.label_1477
.label_1470:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_1462
	mov	rdi, qword ptr [rbp - 0x10]
	call	re_string_translate_buffer
	jmp	.label_1469
.label_1462:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x38], rax
.label_1469:
	jmp	.label_1477
.label_1477:
	jmp	.label_1460
.label_1460:
	mov	dword ptr [rbp - 4], 0
.label_1466:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40fda0

	.globl free_workarea_compile
	.type free_workarea_compile, @function
free_workarea_compile:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 0x70]
	mov	qword ptr [rbp - 0x18], rdi
.label_1479:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1478
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1479
.label_1478:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x70], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0x80], 0xf
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x68], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x20]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x20], 0
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40fe40

	.globl re_string_destruct
	.type re_string_destruct, @function
re_string_destruct:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x10]
	call	free
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x18]
	call	free
	mov	rdi, qword ptr [rbp - 8]
	cmp	byte ptr [rdi + 0x8b], 0
	je	.label_1480
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
.label_1480:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40fe90

	.globl parse
	.type parse, @function
parse:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	lea	rax, [rbp - 0x58]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx + 0xd8], rcx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	or	rcx, 0x800000
	mov	rdi, rax
	mov	rdx, rcx
	call	fetch_token
	lea	rdx, [rbp - 0x58]
	xor	r8d, r8d
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r9, qword ptr [rbp - 0x28]
	call	parse_reg_exp
	xor	r10d, r10d
	mov	r11b, r10b
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x28]
	cmp	dword ptr [rax], 0
	mov	byte ptr [rbp - 0x59], r11b
	je	.label_1486
	cmp	qword ptr [rbp - 0x38], 0
	sete	al
	mov	byte ptr [rbp - 0x59], al
.label_1486:
	mov	al, byte ptr [rbp - 0x59]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1481
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1482
.label_1481:
	xor	eax, eax
	mov	ecx, eax
	mov	eax, 2
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, rcx
	mov	rdx, rcx
	mov	ecx, eax
	call	create_tree
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1487
	mov	ecx, 0x10
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x40]
	call	create_tree
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1484
.label_1487:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x48], rax
.label_1484:
	mov	al, 1
	cmp	qword ptr [rbp - 0x40], 0
	mov	byte ptr [rbp - 0x5a], al
	je	.label_1485
	cmp	qword ptr [rbp - 0x48], 0
	sete	al
	mov	byte ptr [rbp - 0x5a], al
.label_1485:
	mov	al, byte ptr [rbp - 0x5a]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1483
	mov	rax, qword ptr [rbp - 0x28]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1482
.label_1483:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 8], rax
.label_1482:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40fff0

	.globl analyze
	.type analyze, @function
analyze:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
.label_3830:
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rdi + 8]
	shl	rdi, 3
	call	malloc
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rdi + 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	shl	rax, 3
	mov	rdi, rax
	call	malloc
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rdi + 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	imul	rdi, qword ptr [rax + 8], 0x18
	call	malloc
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rdi + 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	imul	rdi, qword ptr [rax + 8], 0x18
	call	malloc
	mov	cl, 1
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rdi + 0x30], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x18], 0
	mov	byte ptr [rbp - 0x29], cl
	je	.label_1491
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + 0x20], 0
	mov	byte ptr [rbp - 0x29], al
	je	.label_1491
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + 0x28], 0
	mov	byte ptr [rbp - 0x29], al
	je	.label_1491
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x30], 0
	sete	cl
	mov	byte ptr [rbp - 0x29], cl
.label_1491:
	mov	al, byte ptr [rbp - 0x29]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1497
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_1489
.label_1497:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	shl	rax, 3
	mov	rdi, rax
	call	malloc
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rdi + 0xe0], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0xe0], 0
	je	.label_1504
	mov	qword ptr [rbp - 0x28], 0
.label_1494:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x30]
	jae	.label_1490
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0xe0]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1494
.label_1490:
	movabs	rsi, OFFSET FLAT:optimize_subexps
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax + 0x68]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdx, rax
	call	preorder
	mov	qword ptr [rbp - 0x28], 0
	mov	dword ptr [rbp - 0x30], eax
.label_1496:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x30]
	jae	.label_1501
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0xe0]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, qword ptr [rbp - 0x28]
	je	.label_1488
	jmp	.label_1501
.label_1488:
	jmp	.label_1495
.label_1495:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1496
.label_1501:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x30]
	jne	.label_1498
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0xe0]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 0xe0], 0
.label_1498:
	jmp	.label_1504
.label_1504:
	movabs	rsi, OFFSET FLAT:lower_subexps
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax + 0x68]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, rax
	call	postorder
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_1492
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1489
.label_1492:
	movabs	rsi, OFFSET FLAT:calc_first
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax + 0x68]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdx, rax
	call	postorder
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_1503
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1489
.label_1503:
	movabs	rsi, OFFSET FLAT:calc_next
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax + 0x68]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdx, rax
	call	preorder
	movabs	rsi, OFFSET FLAT:link_nfa_nodes
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rdx + 0x68]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x34], eax
	call	preorder
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_1499
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1489
.label_1499:
	mov	rdi, qword ptr [rbp - 0x18]
	call	calc_eclosure
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdi, eax
	cmp	rdi, 0
	je	.label_1505
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1489
.label_1505:
	mov	rax, qword ptr [rbp - 0x10]
	mov	cl, byte ptr [rax + 0x38]
	shr	cl, 4
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	jne	.label_1493
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x30], 0
	jbe	.label_1493
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax + 0xb0]
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	jne	.label_1500
.label_1493:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x98], 0
	je	.label_1502
.label_1500:
	mov	rax, qword ptr [rbp - 0x18]
	imul	rdi, qword ptr [rax + 0x10], 0x18
	call	malloc
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rdi + 0x38], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x38], 0
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1506
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_1489
.label_1506:
	mov	rdi, qword ptr [rbp - 0x18]
	call	calc_inveclosure
	mov	dword ptr [rbp - 0x1c], eax
.label_1502:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_1489:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4103d0

	.globl optimize_utf8
	.type optimize_utf8, @function
optimize_utf8:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 0x15], 0
	mov	byte ptr [rbp - 0x16], 0
	mov	qword ptr [rbp - 0x10], 0
.label_1510:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 0x10]
	jae	.label_1527
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	shl	rax, 4
	movzx	edx, byte ptr [rcx + rax + 8]
	dec	edx
	mov	eax, edx
	sub	edx, 0xb
	mov	qword ptr [rbp - 0x28], rax
	mov	dword ptr [rbp - 0x2c], edx
	ja	.label_1526
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1525]]
	jmp	rcx
.label_3889:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	movzx	edx, byte ptr [rax]
	cmp	edx, 0x80
	jl	.label_1518
	mov	byte ptr [rbp - 0x15], 1
.label_1518:
	jmp	.label_1508
.label_3894:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	shl	rax, 4
	mov	edx, dword ptr [rcx + rax]
	mov	esi, edx
	sub	esi, 0x10
	mov	dword ptr [rbp - 0x30], edx
	mov	dword ptr [rbp - 0x34], esi
	je	.label_1507
	jmp	.label_1532
.label_1532:
	mov	eax, dword ptr [rbp - 0x30]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x38], eax
	je	.label_1507
	jmp	.label_1511
.label_1511:
	mov	eax, dword ptr [rbp - 0x30]
	sub	eax, 0x40
	mov	dword ptr [rbp - 0x3c], eax
	je	.label_1507
	jmp	.label_1513
.label_1513:
	mov	eax, dword ptr [rbp - 0x30]
	sub	eax, 0x80
	mov	dword ptr [rbp - 0x40], eax
	jne	.label_1514
	jmp	.label_1507
.label_1507:
	jmp	.label_1520
.label_1514:
	jmp	.label_1512
.label_1520:
	jmp	.label_1508
.label_3892:
	mov	byte ptr [rbp - 0x16], 1
	jmp	.label_1508
.label_3890:
	jmp	.label_1508
.label_3893:
	jmp	.label_1512
.label_3891:
	mov	dword ptr [rbp - 0x1c], 0
	mov	dword ptr [rbp - 0x14], 2
.label_1515:
	cmp	dword ptr [rbp - 0x14], 4
	jge	.label_1529
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	mov	rcx, qword ptr [rcx]
	mov	rax, qword ptr [rcx + rax*8]
	mov	esi, dword ptr [rbp - 0x1c]
	mov	ecx, esi
	shr	rax, cl
	cmp	rax, 0
	je	.label_1530
	jmp	.label_1512
.label_1530:
	mov	dword ptr [rbp - 0x1c], 0
	mov	eax, dword ptr [rbp - 0x14]
	add	eax, 1
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_1515
.label_1529:
	jmp	.label_1508
.label_1526:
	call	abort
.label_1508:
	jmp	.label_1523
.label_1523:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1510
.label_1527:
	test	byte ptr [rbp - 0x15], 1
	jne	.label_1521
	test	byte ptr [rbp - 0x16], 1
	je	.label_1522
.label_1521:
	mov	qword ptr [rbp - 0x10], 0
.label_1519:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 0x10]
	jae	.label_1531
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	cmp	edx, 1
	jne	.label_1509
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	movzx	edx, byte ptr [rax]
	cmp	edx, 0x80
	jl	.label_1509
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xffdfffff
	mov	dword ptr [rax + 8], edx
	jmp	.label_1516
.label_1509:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	cmp	edx, 5
	jne	.label_1528
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xffffff00
	or	edx, 7
	mov	dword ptr [rax + 8], edx
.label_1528:
	jmp	.label_1516
.label_1516:
	jmp	.label_1517
.label_1517:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1519
.label_1531:
	jmp	.label_1522
.label_1522:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	mov	dword ptr [rcx + 0xb4], 1
	mov	rcx, qword ptr [rbp - 8]
	mov	dl, byte ptr [rcx + 0xb0]
	and	dl, 0xfb
	mov	byte ptr [rcx + 0xb0], dl
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 0x98], 0
	mov	byte ptr [rbp - 0x41], al
	jg	.label_1524
	mov	al, byte ptr [rbp - 0x16]
	mov	byte ptr [rbp - 0x41], al
.label_1524:
	mov	al, byte ptr [rbp - 0x41]
	and	al, 1
	movzx	ecx, al
	mov	rdx, qword ptr [rbp - 8]
	mov	al, cl
	mov	sil, byte ptr [rdx + 0xb0]
	and	al, 1
	shl	al, 1
	and	sil, 0xfd
	or	sil, al
	mov	byte ptr [rdx + 0xb0], sil
.label_1512:
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4106c0

	.globl create_initial_state
	.type create_initial_state, @function
create_initial_state:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	lea	rax, [rbp - 0x40]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 0x68]
	mov	rdi, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rdi + 0x38]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x90], rdi
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x30]
	imul	rdi, qword ptr [rbp - 0x18], 0x18
	add	rcx, rdi
	mov	rdi, rax
	mov	rsi, rcx
	call	re_node_set_init_copy
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 0
	setne	dl
	and	dl, 1
	movzx	eax, dl
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_1537
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1533
.label_1537:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x98], 0
	jle	.label_1546
	mov	qword ptr [rbp - 0x20], 0
.label_1545:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x38]
	jge	.label_1549
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	mov	dword ptr [rbp - 0x4c], edx
	cmp	dword ptr [rbp - 0x4c], 4
	je	.label_1552
	jmp	.label_1539
.label_1552:
	mov	qword ptr [rbp - 0x58], 0
.label_1536:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x38]
	jge	.label_1535
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rdx + rcx*8]
	shl	rcx, 4
	add	rax, rcx
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	esi, dword ptr [rax + 8]
	and	esi, 0xff
	cmp	esi, 9
	jne	.label_1543
	mov	rax, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x10]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	cmp	rax, qword ptr [rcx]
	jne	.label_1543
	jmp	.label_1535
.label_1543:
	jmp	.label_1534
.label_1534:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_1536
.label_1535:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x38]
	jne	.label_1541
	jmp	.label_1539
.label_1541:
	cmp	dword ptr [rbp - 0x4c], 4
	jne	.label_1544
	lea	rdi, [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x68], rax
	mov	rsi, qword ptr [rbp - 0x68]
	call	re_node_set_contains
	cmp	rax, 0
	jne	.label_1542
	lea	rdi, [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	imul	rcx, qword ptr [rbp - 0x68], 0x18
	add	rax, rcx
	mov	rsi, rax
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x6c], eax
	cmp	dword ptr [rbp - 0x6c], 0
	je	.label_1548
	mov	eax, dword ptr [rbp - 0x6c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1533
.label_1548:
	mov	qword ptr [rbp - 0x20], 0
.label_1542:
	jmp	.label_1544
.label_1544:
	jmp	.label_1539
.label_1539:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1545
.label_1549:
	jmp	.label_1546
.label_1546:
	lea	rdi, [rbp - 0x24]
	lea	rdx, [rbp - 0x40]
	xor	ecx, ecx
	mov	rsi, qword ptr [rbp - 0x10]
	call	re_acquire_state_context
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x48], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	sete	r8b
	and	r8b, 1
	movzx	ecx, r8b
	movsxd	rax, ecx
	cmp	rax, 0
	je	.label_1550
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1533
.label_1550:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	mov	cl, byte ptr [rax + 0x68]
	shr	cl, 7
	movzx	edx, cl
	cmp	edx, 0
	je	.label_1538
	lea	rdi, [rbp - 0x24]
	lea	rdx, [rbp - 0x40]
	mov	ecx, 1
	mov	rsi, qword ptr [rbp - 0x10]
	call	re_acquire_state_context
	lea	rdi, [rbp - 0x24]
	lea	rdx, [rbp - 0x40]
	mov	ecx, 2
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x50], rax
	mov	rsi, qword ptr [rbp - 0x10]
	call	re_acquire_state_context
	lea	rdi, [rbp - 0x24]
	lea	rdx, [rbp - 0x40]
	mov	ecx, 6
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x58], rax
	mov	rsi, qword ptr [rbp - 0x10]
	call	re_acquire_state_context
	mov	r8b, 1
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x60], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x50], 0
	mov	byte ptr [rbp - 0x6d], r8b
	je	.label_1540
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	qword ptr [rcx + 0x58], 0
	mov	byte ptr [rbp - 0x6d], al
	je	.label_1540
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x60], 0
	sete	cl
	mov	byte ptr [rbp - 0x6d], cl
.label_1540:
	mov	al, byte ptr [rbp - 0x6d]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1547
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1533
.label_1547:
	jmp	.label_1551
.label_1538:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x60], rax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x58], rax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x50], rax
.label_1551:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdi, rax
	call	free
	mov	dword ptr [rbp - 4], 0
.label_1533:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410a20

	.globl re_string_construct_common
	.type re_string_construct_common, @function
re_string_construct_common:
	push	rbp
	mov	rbp, rsp
	mov	al, r8b
	mov	r10b, 1
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	mov	qword ptr [rbp - 0x30], r9
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + 0x58], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + 0x50], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + 0x78], rcx
	mov	al, byte ptr [rbp - 0x21]
	and	al, 1
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + 0x88], al
	cmp	qword ptr [rbp - 0x20], 0
	mov	byte ptr [rbp - 0x31], r10b
	jne	.label_1553
	mov	al, byte ptr [rbp - 0x21]
	mov	byte ptr [rbp - 0x31], al
.label_1553:
	mov	al, byte ptr [rbp - 0x31]
	and	al, 1
	movzx	ecx, al
	mov	al, cl
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + 0x8b], al
	mov	rdx, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rdx + 0xb4]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	dword ptr [rdx + 0x90], ecx
	mov	rdx, qword ptr [rbp - 0x30]
	mov	al, byte ptr [rdx + 0xb0]
	shr	al, 2
	and	al, 1
	movzx	ecx, al
	mov	al, cl
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + 0x89], al
	mov	rdx, qword ptr [rbp - 0x30]
	mov	al, byte ptr [rdx + 0xb0]
	shr	al, 3
	and	al, 1
	movzx	ecx, al
	mov	al, cl
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + 0x8a], al
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x58]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rsi + 0x68], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x68]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rsi + 0x60], rdx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410b20

	.globl re_string_realloc_buffers
	.type re_string_realloc_buffers, @function
re_string_realloc_buffers:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	dword ptr [rsi + 0x90], 1
	jle	.label_1554
	movabs	rax, 0x1fffffffffffffff
	mov	qword ptr [rbp - 0x28], 8
	cmp	rax, qword ptr [rbp - 0x18]
	setb	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1555
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_1556
.label_1555:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rcx, 2
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_1558
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_1556
.label_1558:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x18], 0
	je	.label_1560
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rcx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_1559
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_1556
.label_1559:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x18], rax
.label_1560:
	jmp	.label_1554
.label_1554:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax + 0x8b], 0
	je	.label_1557
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 8]
	mov	rax, qword ptr [rbp - 0x18]
	shl	rax, 0
	mov	rsi, rax
	call	realloc
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1561
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_1556
.label_1561:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
.label_1557:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x40], rax
	mov	dword ptr [rbp - 4], 0
.label_1556:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410cb0

	.globl build_wcs_upper_buffer
	.type build_wcs_upper_buffer, @function
build_wcs_upper_buffer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x100
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 0x30]
	mov	qword ptr [rbp - 0x28], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 0x40]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rdi, qword ptr [rax + 0x58]
	jle	.label_1606
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x58]
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_1578
.label_1606:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	mov	qword ptr [rbp - 0xd8], rax
.label_1578:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax + 0x8a], 0
	jne	.label_1564
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x78], 0
	jne	.label_1564
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax + 0x8c], 0
	jne	.label_1564
	jmp	.label_1563
.label_1563:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	jge	.label_1577
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	movzx	edx, byte ptr [rcx + rax]
	and	edx, 0xffffff80
	cmp	edx, 0
	jne	.label_1581
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x20
	mov	rdi, rax
	call	mbsinit
	cmp	eax, 0
	je	.label_1581
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	movzx	edi, byte ptr [rcx + rax]
	call	toupper
	mov	dl, al
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 8]
	mov	byte ptr [rsi + rcx], dl
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 8]
	movzx	eax, byte ptr [rsi + rcx]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x10]
	mov	dword ptr [rsi + rcx*4], eax
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	jmp	.label_1563
.label_1581:
	lea	rdi, [rbp - 0x84]
	mov	rax, qword ptr [rbp - 0x30]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x20]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rcx + 0x28]
	add	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 0x20
	mov	rsi, rax
	call	rpl_mbrtowc
	xor	r8d, r8d
	mov	r9b, r8b
	xor	r8d, r8d
	mov	ecx, r8d
	mov	qword ptr [rbp - 0x40], rax
	cmp	rcx, qword ptr [rbp - 0x40]
	mov	byte ptr [rbp - 0xd9], r9b
	jae	.label_1572
	cmp	qword ptr [rbp - 0x40], -2
	setb	al
	mov	byte ptr [rbp - 0xd9], al
.label_1572:
	mov	al, byte ptr [rbp - 0xd9]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1587
	mov	edi, dword ptr [rbp - 0x84]
	call	towupper
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x88]
	cmp	eax, dword ptr [rbp - 0x84]
	je	.label_1595
	lea	rdx, [rbp - 0x18]
	lea	rdi, [rbp - 0x80]
	mov	esi, dword ptr [rbp - 0x88]
	call	wcrtomb
	mov	qword ptr [rbp - 0x90], rax
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x90]
	sete	cl
	and	cl, 1
	movzx	esi, cl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_1605
	lea	rsi, [rbp - 0x80]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	add	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rdi, rax
	call	memcpy
	jmp	.label_1621
.label_1605:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1608
.label_1621:
	jmp	.label_1565
.label_1595:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 0x10]
	add	rcx, qword ptr [rdx + 0x28]
	add	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rdi, rax
	mov	rsi, rcx
	call	memcpy
.label_1565:
	mov	eax, dword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	dword ptr [rdx + rcx*4], eax
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rbp - 0x40]
	sub	rcx, 1
	mov	qword ptr [rbp - 0x38], rcx
.label_1614:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x38]
	jge	.label_1589
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	dword ptr [rcx + rax*4], 0xffffffff
	jmp	.label_1614
.label_1589:
	jmp	.label_1591
.label_1587:
	cmp	qword ptr [rbp - 0x40], -1
	je	.label_1600
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_1600
	cmp	qword ptr [rbp - 0x40], -2
	jne	.label_1609
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x58]
	jl	.label_1609
.label_1600:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x94], edx
	mov	edx, dword ptr [rbp - 0x94]
	mov	sil, dl
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	byte ptr [rcx + rax], sil
	mov	edx, dword ptr [rbp - 0x94]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	dword ptr [rcx + rax*4], edx
	cmp	qword ptr [rbp - 0x40], -1
	sete	sil
	and	sil, 1
	movzx	edx, sil
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1616
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 0x20], rcx
.label_1616:
	jmp	.label_1582
.label_1609:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 0x20], rcx
	jmp	.label_1577
.label_1582:
	jmp	.label_1591
.label_1591:
	jmp	.label_1563
.label_1577:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x38], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1569
.label_1564:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [rbp - 0x20], rax
.label_1584:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	jge	.label_1602
	jmp	.label_1608
.label_1608:
	mov	rax, qword ptr [rbp - 0x30]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x20]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x78], 0
	setne	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1610
	mov	dword ptr [rbp - 0xa4], 0
.label_1576:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0xa4]
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	eax, dword ptr [rdx + 0x90]
	mov	byte ptr [rbp - 0xda], cl
	jge	.label_1622
	movsxd	rax, dword ptr [rbp - 0xa4]
	cmp	rax, qword ptr [rbp - 0x38]
	setl	cl
	mov	byte ptr [rbp - 0xda], cl
.label_1622:
	mov	al, byte ptr [rbp - 0xda]
	test	al, 1
	jne	.label_1566
	jmp	.label_1574
.label_1566:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	add	rax, qword ptr [rbp - 0x20]
	movsxd	rcx, dword ptr [rbp - 0xa4]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0xa8], edx
	movsxd	rax, dword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x78]
	mov	sil, byte ptr [rcx + rax]
	movsxd	rax, dword ptr [rbp - 0xa4]
	mov	byte ptr [rbp + rax - 0x80], sil
	mov	eax, dword ptr [rbp - 0xa4]
	add	eax, 1
	mov	dword ptr [rbp - 0xa4], eax
	jmp	.label_1576
.label_1574:
	lea	rax, [rbp - 0x80]
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_1599
.label_1610:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rcx + 0x28]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0xa0], rax
.label_1599:
	lea	rdi, [rbp - 0x98]
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x20
	mov	rcx, rax
	call	rpl_mbrtowc
	xor	r8d, r8d
	mov	r9b, r8b
	xor	r8d, r8d
	mov	ecx, r8d
	mov	qword ptr [rbp - 0x40], rax
	cmp	rcx, qword ptr [rbp - 0x40]
	mov	byte ptr [rbp - 0xdb], r9b
	jae	.label_1619
	cmp	qword ptr [rbp - 0x40], -2
	setb	al
	mov	byte ptr [rbp - 0xdb], al
.label_1619:
	mov	al, byte ptr [rbp - 0xdb]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1567
	mov	edi, dword ptr [rbp - 0x98]
	call	towupper
	mov	dword ptr [rbp - 0xac], eax
	mov	eax, dword ptr [rbp - 0xac]
	cmp	eax, dword ptr [rbp - 0x98]
	je	.label_1573
	lea	rdx, [rbp - 0x18]
	lea	rdi, [rbp - 0x80]
	mov	esi, dword ptr [rbp - 0xac]
	call	wcrtomb
	mov	qword ptr [rbp - 0xb8], rax
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0xb8]
	sete	cl
	and	cl, 1
	movzx	esi, cl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_1588
	lea	rsi, [rbp - 0x80]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	add	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rdi, rax
	call	memcpy
	jmp	.label_1583
.label_1588:
	cmp	qword ptr [rbp - 0xb8], -1
	je	.label_1604
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0xb8]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x40]
	jbe	.label_1611
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 0x20], rcx
	jmp	.label_1602
.label_1611:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x18], 0
	jne	.label_1570
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	shl	rax, 3
	mov	rdi, rax
	call	malloc
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0x18], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x18], 0
	jne	.label_1571
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_1569
.label_1571:
	jmp	.label_1570
.label_1570:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax + 0x8c], 0
	jne	.label_1568
	mov	qword ptr [rbp - 0xc0], 0
.label_1585:
	mov	rax, qword ptr [rbp - 0xc0]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1613
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0xc0]
	add	rax, 1
	mov	qword ptr [rbp - 0xc0], rax
	jmp	.label_1585
.label_1613:
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 0x8c], 1
.label_1568:
	lea	rsi, [rbp - 0x80]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	add	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0xb8]
	mov	rdi, rax
	call	memcpy
	mov	ecx, dword ptr [rbp - 0xac]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	dword ptr [rdx + rax*4], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x18]
	mov	qword ptr [rsi + rdx*8], rax
	mov	qword ptr [rbp - 0xc0], 1
.label_1575:
	mov	rax, qword ptr [rbp - 0xc0]
	cmp	rax, qword ptr [rbp - 0xb8]
	jae	.label_1620
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0xc0]
	cmp	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0xe8], rax
	jae	.label_1623
	mov	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0xf0], rax
	jmp	.label_1601
.label_1623:
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	qword ptr [rbp - 0xf0], rax
.label_1601:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rbp - 0xe8]
	add	rcx, rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0xc0]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	qword ptr [rdx + rax*8], rcx
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	dword ptr [rcx + rax*4], 0xffffffff
	mov	rax, qword ptr [rbp - 0xc0]
	add	rax, 1
	mov	qword ptr [rbp - 0xc0], rax
	jmp	.label_1575
.label_1620:
	mov	rax, qword ptr [rbp - 0xb8]
	sub	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rcx + 0x58]
	mov	qword ptr [rcx + 0x58], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jle	.label_1598
	mov	rax, qword ptr [rbp - 0xb8]
	sub	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rcx + 0x68]
	mov	qword ptr [rcx + 0x68], rax
.label_1598:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x58]
	jle	.label_1617
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x58]
	mov	qword ptr [rbp - 0xf8], rax
	jmp	.label_1597
.label_1617:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	mov	qword ptr [rbp - 0xf8], rax
.label_1597:
	mov	rax, qword ptr [rbp - 0xf8]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1584
.label_1604:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	add	rax, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rdi, rax
	call	memcpy
	jmp	.label_1583
.label_1583:
	jmp	.label_1586
.label_1573:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	add	rax, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rdi, rax
	call	memcpy
.label_1586:
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax + 0x8c]
	cmp	ecx, 0
	setne	dl
	and	dl, 1
	movzx	ecx, dl
	movsxd	rax, ecx
	cmp	rax, 0
	je	.label_1594
	mov	qword ptr [rbp - 0xc8], 0
.label_1612:
	mov	rax, qword ptr [rbp - 0xc8]
	cmp	rax, qword ptr [rbp - 0x40]
	jae	.label_1607
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0xc8]
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rbp - 0xc8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0xc8]
	add	rax, 1
	mov	qword ptr [rbp - 0xc8], rax
	jmp	.label_1612
.label_1607:
	jmp	.label_1594
.label_1594:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	ecx, dword ptr [rbp - 0xac]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, rax
	add	rdx, 1
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	dword ptr [rdx + rax*4], ecx
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	qword ptr [rbp - 0x38], rax
.label_1579:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x38]
	jge	.label_1590
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	dword ptr [rcx + rax*4], 0xffffffff
	jmp	.label_1579
.label_1590:
	jmp	.label_1592
.label_1567:
	cmp	qword ptr [rbp - 0x40], -1
	je	.label_1593
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_1593
	cmp	qword ptr [rbp - 0x40], -2
	jne	.label_1596
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x58]
	jl	.label_1596
.label_1593:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	add	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0xcc], edx
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x78], 0
	setne	sil
	and	sil, 1
	movzx	edx, sil
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1603
	movsxd	rax, dword ptr [rbp - 0xcc]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x78]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0xcc], edx
.label_1603:
	mov	eax, dword ptr [rbp - 0xcc]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 8]
	mov	byte ptr [rsi + rdx], cl
	mov	rdx, qword ptr [rbp - 0x10]
	movzx	eax, byte ptr [rdx + 0x8c]
	cmp	eax, 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_1562
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
.label_1562:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	ecx, dword ptr [rbp - 0xcc]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, rax
	add	rdx, 1
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	dword ptr [rdx + rax*4], ecx
	cmp	qword ptr [rbp - 0x40], -1
	sete	sil
	and	sil, 1
	movzx	ecx, sil
	movsxd	rax, ecx
	cmp	rax, 0
	je	.label_1580
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 0x20], rcx
.label_1580:
	jmp	.label_1618
.label_1596:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 0x20], rcx
	jmp	.label_1602
.label_1618:
	jmp	.label_1592
.label_1592:
	jmp	.label_1584
.label_1602:
	jmp	.label_1615
.label_1615:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x38], rax
	mov	dword ptr [rbp - 4], 0
.label_1569:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x100
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411800

	.globl build_upper_buffer
	.type build_upper_buffer, @function
build_upper_buffer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x40]
	mov	rax, qword ptr [rbp - 8]
	cmp	rdi, qword ptr [rax + 0x58]
	jle	.label_1624
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x58]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1625
.label_1624:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	qword ptr [rbp - 0x28], rax
.label_1625:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x30]
	mov	qword ptr [rbp - 0x10], rax
.label_1628:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x18]
	jge	.label_1626
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x28]
	add	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x1c], edx
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x78], 0
	setne	sil
	and	sil, 1
	movzx	edx, sil
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1627
	movsxd	rax, dword ptr [rbp - 0x1c]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0x78]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x1c], edx
.label_1627:
	mov	edi, dword ptr [rbp - 0x1c]
	call	toupper
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 8]
	mov	byte ptr [rsi + rdx], cl
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1628
.label_1626:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x38], rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411900

	.globl build_wcs_buffer
	.type build_wcs_buffer, @function
build_wcs_buffer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x40]
	mov	rax, qword ptr [rbp - 8]
	cmp	rdi, qword ptr [rax + 0x58]
	jle	.label_1629
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x58]
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_1640
.label_1629:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	qword ptr [rbp - 0x98], rax
.label_1640:
	mov	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_1641:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x68]
	jge	.label_1637
	mov	rax, qword ptr [rbp - 0x68]
	sub	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x20]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x78], 0
	setne	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1643
	mov	dword ptr [rbp - 0x8c], 0
.label_1646:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x8c]
	mov	rdx, qword ptr [rbp - 8]
	cmp	eax, dword ptr [rdx + 0x90]
	mov	byte ptr [rbp - 0x99], cl
	jge	.label_1644
	movsxd	rax, dword ptr [rbp - 0x8c]
	cmp	rax, qword ptr [rbp - 0x70]
	setl	cl
	mov	byte ptr [rbp - 0x99], cl
.label_1644:
	mov	al, byte ptr [rbp - 0x99]
	test	al, 1
	jne	.label_1639
	jmp	.label_1638
.label_1639:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x28]
	add	rax, qword ptr [rbp - 0x60]
	movsxd	rcx, dword ptr [rbp - 0x8c]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x90], edx
	movsxd	rax, dword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0x78]
	mov	sil, byte ptr [rcx + rax]
	mov	rax, qword ptr [rbp - 0x60]
	movsxd	rcx, dword ptr [rbp - 0x8c]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 8]
	mov	byte ptr [rcx + rax], sil
	movsxd	rax, dword ptr [rbp - 0x8c]
	mov	byte ptr [rbp + rax - 0x50], sil
	mov	eax, dword ptr [rbp - 0x8c]
	add	eax, 1
	mov	dword ptr [rbp - 0x8c], eax
	jmp	.label_1646
.label_1638:
	lea	rax, [rbp - 0x50]
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_1642
.label_1643:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	add	rax, qword ptr [rcx + 0x28]
	add	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x88], rax
.label_1642:
	lea	rdi, [rbp - 0x7c]
	mov	rsi, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x20
	mov	rcx, rax
	call	rpl_mbrtowc
	mov	r8b, 1
	mov	qword ptr [rbp - 0x78], rax
	cmp	qword ptr [rbp - 0x78], -1
	mov	byte ptr [rbp - 0x9a], r8b
	je	.label_1631
	mov	al, 1
	cmp	qword ptr [rbp - 0x78], 0
	mov	byte ptr [rbp - 0x9a], al
	je	.label_1631
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x78], -2
	mov	byte ptr [rbp - 0x9b], cl
	jne	.label_1636
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 0x58]
	setge	dl
	mov	byte ptr [rbp - 0x9b], dl
.label_1636:
	mov	al, byte ptr [rbp - 0x9b]
	mov	byte ptr [rbp - 0x9a], al
.label_1631:
	mov	al, byte ptr [rbp - 0x9a]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1633
	mov	qword ptr [rbp - 0x78], 1
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x28]
	add	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x7c], edx
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x78], 0
	setne	sil
	and	sil, 1
	movzx	edx, sil
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1645
	movsxd	rax, dword ptr [rbp - 0x7c]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0x78]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x7c], edx
.label_1645:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	qword ptr [rax + 0x20], rcx
	jmp	.label_1630
.label_1633:
	cmp	qword ptr [rbp - 0x78], -2
	sete	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1632
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	qword ptr [rax + 0x20], rcx
	jmp	.label_1637
.label_1632:
	jmp	.label_1630
.label_1630:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x60], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	dword ptr [rdx + rcx*4], eax
	mov	rcx, qword ptr [rbp - 0x60]
	add	rcx, qword ptr [rbp - 0x78]
	sub	rcx, 1
	mov	qword ptr [rbp - 0x70], rcx
.label_1635:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x70]
	jge	.label_1634
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x60], rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	dword ptr [rcx + rax*4], 0xffffffff
	jmp	.label_1635
.label_1634:
	jmp	.label_1641
.label_1637:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x38], rax
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411c50

	.globl re_string_translate_buffer
	.type re_string_translate_buffer, @function
re_string_translate_buffer:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x40]
	mov	rax, qword ptr [rbp - 8]
	cmp	rdi, qword ptr [rax + 0x58]
	jle	.label_1647
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x58]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1649
.label_1647:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	qword ptr [rbp - 0x28], rax
.label_1649:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x30]
	mov	qword ptr [rbp - 0x10], rax
.label_1648:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x18]
	jge	.label_1650
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x28]
	add	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x1c], edx
	movsxd	rax, dword ptr [rbp - 0x1c]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0x78]
	mov	sil, byte ptr [rcx + rax]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 8]
	mov	byte ptr [rcx + rax], sil
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1648
.label_1650:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x38], rax
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411d20

	.globl fetch_token
	.type fetch_token, @function
fetch_token:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	peek_token
	movsxd	rdx, eax
	mov	rsi, qword ptr [rbp - 0x10]
	add	rdx, qword ptr [rsi + 0x48]
	mov	qword ptr [rsi + 0x48], rdx
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411d60

	.globl parse_reg_exp
	.type parse_reg_exp, @function
parse_reg_exp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x40], rcx
	mov	qword ptr [rbp - 0x50], 0
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx + 0xa8]
	mov	qword ptr [rbp - 0x58], rcx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	r9, qword ptr [rbp - 0x38]
	call	parse_branch
	xor	r10d, r10d
	mov	r11b, r10b
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rax], 0
	mov	byte ptr [rbp - 0x61], r11b
	je	.label_1662
	cmp	qword ptr [rbp - 0x48], 0
	sete	al
	mov	byte ptr [rbp - 0x61], al
.label_1662:
	mov	al, byte ptr [rbp - 0x61]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1656
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1652
.label_1656:
	jmp	.label_1653
.label_1653:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0xa
	jne	.label_1654
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x28]
	or	rax, 0x800000
	mov	rdx, rax
	call	fetch_token
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0xa
	je	.label_1655
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 2
	je	.label_1655
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1659
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 9
	je	.label_1655
.label_1659:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0xa8]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rcx + 0xa8], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	r9, qword ptr [rbp - 0x38]
	call	parse_branch
	xor	r10d, r10d
	mov	r11b, r10b
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rax], 0
	mov	byte ptr [rbp - 0x62], r11b
	je	.label_1651
	cmp	qword ptr [rbp - 0x50], 0
	sete	al
	mov	byte ptr [rbp - 0x62], al
.label_1651:
	mov	al, byte ptr [rbp - 0x62]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1661
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_1660
	movabs	rsi, OFFSET FLAT:free_tree
	xor	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x48]
	call	postorder
	mov	dword ptr [rbp - 0x68], eax
.label_1660:
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1652
.label_1661:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x40]
	or	rax, qword ptr [rcx + 0xa8]
	mov	qword ptr [rcx + 0xa8], rax
	jmp	.label_1657
.label_1655:
	mov	qword ptr [rbp - 0x50], 0
.label_1657:
	mov	ecx, 0xa
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x50]
	call	create_tree
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	sete	r8b
	and	r8b, 1
	movzx	ecx, r8b
	movsxd	rax, ecx
	cmp	rax, 0
	je	.label_1658
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1652
.label_1658:
	jmp	.label_1653
.label_1654:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 8], rax
.label_1652:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411fc0

	.globl create_tree
	.type create_tree, @function
create_tree:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rax, [rbp - 0x30]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	dword ptr [rbp - 0x1c], ecx
	mov	ecx, dword ptr [rbp - 0x1c]
	mov	r8d, dword ptr [rbp - 0x28]
	and	ecx, 0xff
	and	r8d, 0xffffff00
	or	r8d, ecx
	mov	dword ptr [rbp - 0x28], r8d
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, rax
	call	create_token_tree
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412010

	.globl peek_token
	.type peek_token, @function
peek_token:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x68]
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rsi + 0x48]
	jg	.label_1671
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 2
	mov	dword ptr [rax + 8], ecx
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1667
.label_1671:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 0x21], dl
	mov	dl, byte ptr [rbp - 0x21]
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax], dl
	mov	rax, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rax + 8]
	and	esi, 0xffbfffff
	mov	dword ptr [rax + 8], esi
	mov	rax, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rax + 8]
	and	esi, 0xffdfffff
	mov	dword ptr [rax + 8], esi
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0x90], 1
	jle	.label_1665
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x30]
	je	.label_1665
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_1665
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 1
	mov	dword ptr [rax + 8], ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffdfffff
	or	ecx, 0x200000
	mov	dword ptr [rax + 8], ecx
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1667
.label_1665:
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, 0x5c
	jne	.label_1672
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x58]
	jl	.label_1676
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x24
	mov	dword ptr [rax + 8], ecx
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1667
.label_1676:
	mov	eax, 1
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x18]
	call	re_string_peek_byte_case
	mov	byte ptr [rbp - 0x22], al
	mov	al, byte ptr [rbp - 0x22]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	byte ptr [rsi], al
	mov	rsi, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rsi + 8]
	and	ecx, 0xffffff00
	or	ecx, 1
	mov	dword ptr [rsi + 8], ecx
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	dword ptr [rsi + 0x90], 1
	jle	.label_1688
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	add	rax, 1
	mov	rsi, rax
	call	re_string_wchar_at
	mov	dword ptr [rbp - 0x28], eax
	mov	edi, dword ptr [rbp - 0x28]
	call	iswalnum
	mov	cl, 1
	cmp	eax, 0
	mov	byte ptr [rbp - 0x41], cl
	jne	.label_1701
	cmp	dword ptr [rbp - 0x28], 0x5f
	sete	al
	mov	byte ptr [rbp - 0x41], al
.label_1701:
	mov	al, byte ptr [rbp - 0x41]
	and	al, 1
	movzx	ecx, al
	cmp	ecx, 0
	setne	al
	and	al, 1
	movzx	ecx, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rdx + 8]
	and	ecx, 1
	shl	ecx, 0x16
	and	esi, 0xffbfffff
	or	esi, ecx
	mov	dword ptr [rdx + 8], esi
	jmp	.label_1708
.label_1688:
	movzx	eax, byte ptr [rbp - 0x22]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x50], rcx
	call	__ctype_b_loc
	mov	dl, 1
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x50]
	movzx	esi, word ptr [rax + rcx*2]
	and	esi, 8
	cmp	esi, 0
	mov	byte ptr [rbp - 0x51], dl
	jne	.label_1673
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, 0x5f
	sete	cl
	mov	byte ptr [rbp - 0x51], cl
.label_1673:
	mov	al, byte ptr [rbp - 0x51]
	and	al, 1
	movzx	ecx, al
	cmp	ecx, 0
	setne	al
	and	al, 1
	movzx	ecx, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rdx + 8]
	and	ecx, 1
	shl	ecx, 0x16
	and	esi, 0xffbfffff
	or	esi, ecx
	mov	dword ptr [rdx + 8], esi
.label_1708:
	movzx	eax, byte ptr [rbp - 0x22]
	add	eax, -0x27
	mov	ecx, eax
	sub	eax, 0x56
	mov	qword ptr [rbp - 0x60], rcx
	mov	dword ptr [rbp - 0x64], eax
	ja	.label_1669
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1691]]
	jmp	rcx
.label_3983:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x400
	cmp	rax, 0
	jne	.label_1693
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x8000
	cmp	rax, 0
	jne	.label_1693
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0xa
	mov	dword ptr [rax + 8], ecx
.label_1693:
	jmp	.label_1664
.label_3971:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x4000
	cmp	rax, 0
	jne	.label_1705
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 4
	mov	dword ptr [rax + 8], ecx
	movzx	ecx, byte ptr [rbp - 0x22]
	sub	ecx, 0x31
	movsxd	rax, ecx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx], rax
.label_1705:
	jmp	.label_1664
.label_3972:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x80000
	cmp	rax, 0
	jne	.label_1666
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0xc
	mov	dword ptr [rax + 8], ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 6
.label_1666:
	jmp	.label_1664
.label_3973:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x80000
	cmp	rax, 0
	jne	.label_1682
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0xc
	mov	dword ptr [rax + 8], ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 9
.label_1682:
	jmp	.label_1664
.label_3979:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x80000
	cmp	rax, 0
	jne	.label_1690
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0xc
	mov	dword ptr [rax + 8], ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0x100
.label_1690:
	jmp	.label_1664
.label_3975:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x80000
	cmp	rax, 0
	jne	.label_1699
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0xc
	mov	dword ptr [rax + 8], ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0x200
.label_1699:
	jmp	.label_1664
.label_3981:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x80000
	cmp	rax, 0
	jne	.label_1707
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x20
	mov	dword ptr [rax + 8], ecx
.label_1707:
	jmp	.label_1664
.label_3977:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x80000
	cmp	rax, 0
	jne	.label_1670
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x21
	mov	dword ptr [rax + 8], ecx
.label_1670:
	jmp	.label_1664
.label_3980:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x80000
	cmp	rax, 0
	jne	.label_1681
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x22
	mov	dword ptr [rax + 8], ecx
.label_1681:
	jmp	.label_1664
.label_3976:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x80000
	cmp	rax, 0
	jne	.label_1687
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x23
	mov	dword ptr [rax + 8], ecx
.label_1687:
	jmp	.label_1664
.label_3978:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x80000
	cmp	rax, 0
	jne	.label_1694
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0xc
	mov	dword ptr [rax + 8], ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0x40
.label_1694:
	jmp	.label_1664
.label_3967:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x80000
	cmp	rax, 0
	jne	.label_1696
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0xc
	mov	dword ptr [rax + 8], ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0x80
.label_1696:
	jmp	.label_1664
.label_3968:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x2000
	cmp	rax, 0
	jne	.label_1712
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 8
	mov	dword ptr [rax + 8], ecx
.label_1712:
	jmp	.label_1664
.label_3969:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x2000
	cmp	rax, 0
	jne	.label_1711
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 9
	mov	dword ptr [rax + 8], ecx
.label_1711:
	jmp	.label_1664
.label_3970:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x400
	cmp	rax, 0
	jne	.label_1684
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 2
	cmp	rax, 0
	je	.label_1684
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x12
	mov	dword ptr [rax + 8], ecx
.label_1684:
	jmp	.label_1664
.label_3974:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x400
	cmp	rax, 0
	jne	.label_1695
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 2
	cmp	rax, 0
	je	.label_1695
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x13
	mov	dword ptr [rax + 8], ecx
.label_1695:
	jmp	.label_1664
.label_3982:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x200
	cmp	rax, 0
	je	.label_1706
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x1000
	cmp	rax, 0
	jne	.label_1706
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x17
	mov	dword ptr [rax + 8], ecx
.label_1706:
	jmp	.label_1664
.label_3984:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x200
	cmp	rax, 0
	je	.label_1678
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x1000
	cmp	rax, 0
	jne	.label_1678
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x18
	mov	dword ptr [rax + 8], ecx
.label_1678:
	jmp	.label_1664
.label_1669:
	jmp	.label_1664
.label_1664:
	mov	dword ptr [rbp - 4], 2
	jmp	.label_1667
.label_1672:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 1
	mov	dword ptr [rax + 8], ecx
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0x90], 1
	jle	.label_1685
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax + 0x48]
	call	re_string_wchar_at
	mov	dword ptr [rbp - 0x2c], eax
	mov	edi, dword ptr [rbp - 0x2c]
	call	iswalnum
	mov	cl, 1
	cmp	eax, 0
	mov	byte ptr [rbp - 0x65], cl
	jne	.label_1698
	cmp	dword ptr [rbp - 0x2c], 0x5f
	sete	al
	mov	byte ptr [rbp - 0x65], al
.label_1698:
	mov	al, byte ptr [rbp - 0x65]
	and	al, 1
	movzx	ecx, al
	cmp	ecx, 0
	setne	al
	and	al, 1
	movzx	ecx, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rdx + 8]
	and	ecx, 1
	shl	ecx, 0x16
	and	esi, 0xffbfffff
	or	esi, ecx
	mov	dword ptr [rdx + 8], esi
	jmp	.label_1702
.label_1685:
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax]
	movsxd	rax, ecx
	mov	qword ptr [rbp - 0x70], rax
	call	__ctype_b_loc
	mov	dl, 1
	mov	rax, qword ptr [rax]
	mov	rsi, qword ptr [rbp - 0x70]
	movzx	ecx, word ptr [rax + rsi*2]
	and	ecx, 8
	cmp	ecx, 0
	mov	byte ptr [rbp - 0x71], dl
	jne	.label_1710
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x5f
	sete	dl
	mov	byte ptr [rbp - 0x71], dl
.label_1710:
	mov	al, byte ptr [rbp - 0x71]
	and	al, 1
	movzx	ecx, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rdx + 8]
	and	ecx, 1
	shl	ecx, 0x16
	and	esi, 0xffbfffff
	or	esi, ecx
	mov	dword ptr [rdx + 8], esi
.label_1702:
	movzx	eax, byte ptr [rbp - 0x21]
	add	eax, -0xa
	mov	ecx, eax
	sub	eax, 0x73
	mov	qword ptr [rbp - 0x80], rcx
	mov	dword ptr [rbp - 0x84], eax
	ja	.label_1703
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1686]]
	jmp	rcx
.label_3896:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x800
	cmp	rax, 0
	je	.label_1689
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0xa
	mov	dword ptr [rax + 8], ecx
.label_1689:
	jmp	.label_1674
.label_3907:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x400
	cmp	rax, 0
	jne	.label_1680
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x8000
	cmp	rax, 0
	je	.label_1680
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0xa
	mov	dword ptr [rax + 8], ecx
.label_1680:
	jmp	.label_1674
.label_3900:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0xb
	mov	dword ptr [rax + 8], ecx
	jmp	.label_1674
.label_3901:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x400
	cmp	rax, 0
	jne	.label_1668
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 2
	cmp	rax, 0
	jne	.label_1668
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x12
	mov	dword ptr [rax + 8], ecx
.label_1668:
	jmp	.label_1674
.label_3903:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x400
	cmp	rax, 0
	jne	.label_1679
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 2
	cmp	rax, 0
	jne	.label_1679
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x13
	mov	dword ptr [rax + 8], ecx
.label_1679:
	jmp	.label_1674
.label_3906:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x200
	cmp	rax, 0
	je	.label_1692
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x1000
	cmp	rax, 0
	je	.label_1692
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x17
	mov	dword ptr [rax + 8], ecx
.label_1692:
	jmp	.label_1674
.label_3908:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x200
	cmp	rax, 0
	je	.label_1700
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x1000
	cmp	rax, 0
	je	.label_1700
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x18
	mov	dword ptr [rax + 8], ecx
.label_1700:
	jmp	.label_1674
.label_3898:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x2000
	cmp	rax, 0
	je	.label_1709
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 8
	mov	dword ptr [rax + 8], ecx
.label_1709:
	jmp	.label_1674
.label_3899:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x2000
	cmp	rax, 0
	je	.label_1677
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 9
	mov	dword ptr [rax + 8], ecx
.label_1677:
	jmp	.label_1674
.label_3904:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x14
	mov	dword ptr [rax + 8], ecx
	jmp	.label_1674
.label_3902:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 5
	mov	dword ptr [rax + 8], ecx
	jmp	.label_1674
.label_3905:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x800008
	cmp	rax, 0
	jne	.label_1675
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x48], 0
	je	.label_1675
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, byte ptr [rcx + rax - 1]
	mov	byte ptr [rbp - 0x2d], dl
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x800
	cmp	rax, 0
	je	.label_1697
	movsx	eax, byte ptr [rbp - 0x2d]
	cmp	eax, 0xa
	je	.label_1704
.label_1697:
	jmp	.label_1674
.label_1704:
	jmp	.label_1675
.label_1675:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0xc
	mov	dword ptr [rax + 8], ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0x10
	jmp	.label_1674
.label_3897:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 8
	cmp	rax, 0
	jne	.label_1663
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x58]
	je	.label_1663
	lea	rdi, [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax + 0x48]
	add	rcx, 1
	mov	qword ptr [rax + 0x48], rcx
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	call	peek_token
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rcx + 0x48]
	add	rdx, -1
	mov	qword ptr [rcx + 0x48], rdx
	mov	r8d, dword ptr [rbp - 0x38]
	and	r8d, 0xff
	cmp	r8d, 0xa
	mov	dword ptr [rbp - 0x88], eax
	je	.label_1683
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 0xff
	cmp	eax, 9
	je	.label_1683
	jmp	.label_1674
.label_1683:
	jmp	.label_1663
.label_1663:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0xc
	mov	dword ptr [rax + 8], ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0x20
	jmp	.label_1674
.label_1703:
	jmp	.label_1674
.label_1674:
	mov	dword ptr [rbp - 4], 1
.label_1667:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412ad0

	.globl re_string_peek_byte_case
	.type re_string_peek_byte_case, @function
re_string_peek_byte_case:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	byte ptr [rsi + 0x8b], 0
	setne	al
	xor	al, 0xff
	and	al, 1
	movzx	ecx, al
	movsxd	rsi, ecx
	cmp	rsi, 0
	je	.label_1718
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	add	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 1], dl
	jmp	.label_1715
.label_1718:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0x90], 1
	jle	.label_1714
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	add	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	je	.label_1717
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x48]
	add	rcx, qword ptr [rbp - 0x18]
	add	rcx, 1
	cmp	rax, rcx
	je	.label_1714
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	add	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	dword ptr [rcx + rax*4 + 4], -1
	jne	.label_1714
.label_1717:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	add	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 1], dl
	jmp	.label_1715
.label_1714:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax + 0x8c], 0
	je	.label_1716
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x28], rax
.label_1716:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x1c], edx
	mov	rax, qword ptr [rbp - 0x10]
	movzx	edx, byte ptr [rax + 0x8c]
	cmp	edx, 0
	je	.label_1713
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 0xffffff80
	cmp	eax, 0
	je	.label_1713
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	add	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 1], dl
	jmp	.label_1715
.label_1713:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	cl, al
	mov	byte ptr [rbp - 1], cl
.label_1715:
	movzx	eax, byte ptr [rbp - 1]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412c50

	.globl re_string_wchar_at
	.type re_string_wchar_at, @function
re_string_wchar_at:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	dword ptr [rsi + 0x90], 1
	jne	.label_1719
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 4], edx
	jmp	.label_1720
.label_1719:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	edx, dword ptr [rcx + rax*4]
	mov	dword ptr [rbp - 4], edx
.label_1720:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412ca0

	.globl parse_branch
	.type parse_branch, @function
parse_branch:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x50], rcx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	r9, qword ptr [rbp - 0x38]
	call	parse_expression
	xor	r10d, r10d
	mov	r11b, r10b
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rax], 0
	mov	byte ptr [rbp - 0x59], r11b
	je	.label_1731
	cmp	qword ptr [rbp - 0x40], 0
	sete	al
	mov	byte ptr [rbp - 0x59], al
.label_1731:
	mov	al, byte ptr [rbp - 0x59]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1723
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1728
.label_1723:
	jmp	.label_1726
.label_1726:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x20]
	mov	eax, dword ptr [rdx + 8]
	and	eax, 0xff
	cmp	eax, 0xa
	mov	byte ptr [rbp - 0x5a], cl
	je	.label_1724
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x20]
	mov	eax, dword ptr [rdx + 8]
	and	eax, 0xff
	cmp	eax, 2
	mov	byte ptr [rbp - 0x5a], cl
	je	.label_1724
	mov	al, 1
	cmp	qword ptr [rbp - 0x30], 0
	mov	byte ptr [rbp - 0x5b], al
	je	.label_1734
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 9
	setne	dl
	mov	byte ptr [rbp - 0x5b], dl
.label_1734:
	mov	al, byte ptr [rbp - 0x5b]
	mov	byte ptr [rbp - 0x5a], al
.label_1724:
	mov	al, byte ptr [rbp - 0x5a]
	test	al, 1
	jne	.label_1725
	jmp	.label_1729
.label_1725:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	r9, qword ptr [rbp - 0x38]
	call	parse_expression
	xor	r10d, r10d
	mov	r11b, r10b
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rax], 0
	mov	byte ptr [rbp - 0x5c], r11b
	je	.label_1722
	cmp	qword ptr [rbp - 0x48], 0
	sete	al
	mov	byte ptr [rbp - 0x5c], al
.label_1722:
	mov	al, byte ptr [rbp - 0x5c]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1733
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_1721
	movabs	rsi, OFFSET FLAT:free_tree
	xor	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x40]
	call	postorder
	mov	dword ptr [rbp - 0x60], eax
.label_1721:
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1728
.label_1733:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_1735
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_1735
	mov	ecx, 0x10
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x48]
	call	create_tree
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], 0
	jne	.label_1727
	movabs	rsi, OFFSET FLAT:free_tree
	xor	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x48]
	call	postorder
	movabs	rsi, OFFSET FLAT:free_tree
	xor	ecx, ecx
	mov	edx, ecx
	mov	rdi, qword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0x64], eax
	call	postorder
	mov	rdx, qword ptr [rbp - 0x38]
	mov	dword ptr [rdx], 0xc
	mov	qword ptr [rbp - 8], 0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1728
.label_1727:
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1732
.label_1735:
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_1730
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x40], rax
.label_1730:
	jmp	.label_1732
.label_1732:
	jmp	.label_1726
.label_1729:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
.label_1728:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412f00

	.globl postorder
	.type postorder, @function
postorder:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rdx
.label_1741:
	jmp	.label_1737
.label_1737:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + 8], 0
	mov	byte ptr [rbp - 0x35], al
	jne	.label_1736
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax + 0x10], 0
	setne	cl
	mov	byte ptr [rbp - 0x35], cl
.label_1736:
	mov	al, byte ptr [rbp - 0x35]
	test	al, 1
	jne	.label_1739
	jmp	.label_1743
.label_1739:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax + 8], 0
	je	.label_1744
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1738
.label_1744:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x28], rax
.label_1738:
	jmp	.label_1737
.label_1743:
	jmp	.label_1740
.label_1740:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	call	rax
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_1745
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1742
.label_1745:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], 0
	jne	.label_1746
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1742
.label_1746:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x28], rax
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	rcx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x36], al
	je	.label_1747
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax + 0x10], 0
	sete	cl
	mov	byte ptr [rbp - 0x36], cl
.label_1747:
	mov	al, byte ptr [rbp - 0x36]
	test	al, 1
	jne	.label_1740
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1741
.label_1742:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413040

	.globl free_tree
	.type free_tree, @function
free_tree:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	add	rsi, 0x28
	mov	rdi, rsi
	call	free_token
	xor	eax, eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413070

	.globl parse_expression
	.type parse_expression, @function
parse_expression:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x118
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	qword ptr [rbp - 0x38], r8
	mov	qword ptr [rbp - 0x40], r9
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x48], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	movzx	eax, byte ptr [rcx + 8]
	dec	eax
	mov	ecx, eax
	sub	eax, 0x23
	mov	qword ptr [rbp - 0x78], rcx
	mov	dword ptr [rbp - 0x7c], eax
	ja	.label_1774
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1790]]
	jmp	rcx
.label_4017:
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x88], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x88]
	call	create_token_tree
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	sete	r8b
	and	r8b, 1
	movzx	r9d, r8b
	movsxd	rax, r9d
	cmp	rax, 0
	je	.label_1797
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1749
.label_1797:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_1759
	jmp	.label_1763
.label_1763:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x68]
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rsi + 0x48]
	mov	byte ptr [rbp - 0x89], cl
	jle	.label_1766
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x48]
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rcx, qword ptr [rdx + 0x30]
	mov	byte ptr [rbp - 0x8a], al
	je	.label_1762
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	setne	dl
	mov	byte ptr [rbp - 0x8a], dl
.label_1762:
	mov	al, byte ptr [rbp - 0x8a]
	xor	al, 0xff
	mov	byte ptr [rbp - 0x89], al
.label_1766:
	mov	al, byte ptr [rbp - 0x89]
	test	al, 1
	jne	.label_1784
	jmp	.label_1788
.label_1784:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x30]
	call	fetch_token
	xor	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsi, rdx
	call	create_token_tree
	mov	ecx, 0x10
	mov	qword ptr [rbp - 0x58], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x58]
	call	create_tree
	mov	r8b, 1
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x58], 0
	mov	byte ptr [rbp - 0x8b], r8b
	je	.label_1802
	cmp	qword ptr [rbp - 0x50], 0
	sete	al
	mov	byte ptr [rbp - 0x8b], al
.label_1802:
	mov	al, byte ptr [rbp - 0x8b]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1756
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1749
.label_1756:
	jmp	.label_1763
.label_1788:
	jmp	.label_1759
.label_1759:
	jmp	.label_1755
.label_4021:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	r9, qword ptr [rbp - 0x40]
	mov	r8, rax
	call	parse_sub_exp
	xor	r10d, r10d
	mov	r11b, r10b
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax], 0
	mov	byte ptr [rbp - 0x8c], r11b
	je	.label_1780
	cmp	qword ptr [rbp - 0x50], 0
	sete	al
	mov	byte ptr [rbp - 0x8c], al
.label_1780:
	mov	al, byte ptr [rbp - 0x8c]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1786
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1749
.label_1786:
	jmp	.label_1755
.label_4023:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r8, qword ptr [rbp - 0x40]
	call	parse_bracket_exp
	xor	r9d, r9d
	mov	r10b, r9b
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax], 0
	mov	byte ptr [rbp - 0x8d], r10b
	je	.label_1798
	cmp	qword ptr [rbp - 0x50], 0
	sete	al
	mov	byte ptr [rbp - 0x8d], al
.label_1798:
	mov	al, byte ptr [rbp - 0x8d]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1754
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1749
.label_1754:
	jmp	.label_1755
.label_4019:
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rcx + 0xa8]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rdx]
	mov	esi, edx
	mov	qword ptr [rbp - 0x98], rcx
	mov	ecx, esi
	shl	eax, cl
	movsxd	rdx, eax
	mov	rdi, qword ptr [rbp - 0x98]
	and	rdi, rdx
	cmp	rdi, 0
	jne	.label_1768
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 6
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1749
.label_1768:
	xor	eax, eax
	mov	ecx, eax
	mov	eax, 1
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rdx]
	mov	esi, edx
	mov	qword ptr [rbp - 0xa0], rcx
	mov	ecx, esi
	shl	eax, cl
	movsxd	rdx, eax
	mov	rdi, qword ptr [rbp - 0x48]
	or	rdx, qword ptr [rdi + 0xa0]
	mov	qword ptr [rdi + 0xa0], rdx
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	rdx, qword ptr [rbp - 0xa0]
	call	create_token_tree
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	sete	r8b
	and	r8b, 1
	movzx	r9d, r8b
	movsxd	rax, r9d
	cmp	rax, 0
	je	.label_1796
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1749
.label_1796:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rax + 0x98]
	add	rcx, 1
	mov	qword ptr [rax + 0x98], rcx
	mov	rax, qword ptr [rbp - 0x48]
	mov	dl, byte ptr [rax + 0xb0]
	and	dl, 0xfd
	or	dl, 2
	mov	byte ptr [rax + 0xb0], dl
	jmp	.label_1755
.label_4024:
	mov	rax, qword ptr [rbp - 0x30]
	and	rax, 0x1000000
	cmp	rax, 0
	je	.label_1770
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 0xd
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1749
.label_1770:
	jmp	.label_1778
.label_1778:
	mov	rax, qword ptr [rbp - 0x30]
	and	rax, 0x20
	cmp	rax, 0
	je	.label_1779
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 0xd
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1749
.label_1779:
	mov	rax, qword ptr [rbp - 0x30]
	and	rax, 0x10
	cmp	rax, 0
	je	.label_1785
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x30]
	call	fetch_token
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r8, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rbp - 0x40]
	call	parse_expression
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1749
.label_1785:
	jmp	.label_1799
.label_1799:
	jmp	.label_1801
.label_1801:
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 9
	jne	.label_1773
	mov	rax, qword ptr [rbp - 0x30]
	and	rax, 0x20000
	cmp	rax, 0
	jne	.label_1773
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 0x10
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1749
.label_1773:
	jmp	.label_1765
.label_1765:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x28]
	mov	eax, dword ptr [rdx + 8]
	and	eax, 0xffffff00
	or	eax, 1
	mov	dword ptr [rdx + 8], eax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, rcx
	mov	qword ptr [rbp - 0xa8], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0xa8]
	call	create_token_tree
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	sete	r8b
	and	r8b, 1
	movzx	r9d, r8b
	movsxd	rax, r9d
	cmp	rax, 0
	je	.label_1777
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1749
.label_1777:
	jmp	.label_1755
.label_4022:
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	and	ecx, 0x30f
	cmp	ecx, 0
	je	.label_1767
	mov	rax, qword ptr [rbp - 0x48]
	mov	cl, byte ptr [rax + 0xb0]
	shr	cl, 4
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	jne	.label_1767
	mov	rdi, qword ptr [rbp - 0x48]
	call	init_word_char
.label_1767:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	dword ptr [rax], 0x100
	je	.label_1782
	mov	rax, qword ptr [rbp - 0x28]
	cmp	dword ptr [rax], 0x200
	jne	.label_1748
.label_1782:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	dword ptr [rax], 0x100
	jne	.label_1772
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x28]
	mov	dword ptr [rdx], 6
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, rcx
	mov	qword ptr [rbp - 0xb0], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0xb0]
	call	create_token_tree
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	dword ptr [rax], 9
	jmp	.label_1794
.label_1772:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x28]
	mov	dword ptr [rdx], 5
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, rcx
	mov	qword ptr [rbp - 0xb8], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0xb8]
	call	create_token_tree
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	dword ptr [rax], 0xa
.label_1794:
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, rcx
	mov	qword ptr [rbp - 0xc0], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0xc0]
	call	create_token_tree
	mov	ecx, 0xa
	mov	qword ptr [rbp - 0x68], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x68]
	call	create_tree
	mov	r8b, 1
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x60], 0
	mov	byte ptr [rbp - 0xc1], r8b
	je	.label_1800
	mov	al, 1
	cmp	qword ptr [rbp - 0x68], 0
	mov	byte ptr [rbp - 0xc1], al
	je	.label_1800
	cmp	qword ptr [rbp - 0x50], 0
	sete	al
	mov	byte ptr [rbp - 0xc1], al
.label_1800:
	mov	al, byte ptr [rbp - 0xc1]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1753
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1749
.label_1753:
	jmp	.label_1769
.label_1748:
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, rcx
	mov	qword ptr [rbp - 0xd0], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0xd0]
	call	create_token_tree
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	sete	r8b
	and	r8b, 1
	movzx	r9d, r8b
	movsxd	rax, r9d
	cmp	rax, 0
	je	.label_1775
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1749
.label_1775:
	jmp	.label_1769
.label_1769:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x30]
	call	fetch_token
	mov	rdx, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x10], rdx
	jmp	.label_1749
.label_4020:
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, rcx
	mov	qword ptr [rbp - 0xd8], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0xd8]
	call	create_token_tree
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	sete	r8b
	and	r8b, 1
	movzx	r9d, r8b
	movsxd	rax, r9d
	cmp	rax, 0
	je	.label_1757
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1749
.label_1757:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_1761
	mov	rax, qword ptr [rbp - 0x48]
	mov	cl, byte ptr [rax + 0xb0]
	and	cl, 0xfd
	or	cl, 2
	mov	byte ptr [rax + 0xb0], cl
.label_1761:
	jmp	.label_1755
.label_4025:
	movabs	rax, OFFSET FLAT:label_1751
	movabs	rcx, OFFSET FLAT:label_1752
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rdx + 0x78]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	r8d, dword ptr [rdx + 8]
	and	r8d, 0xff
	cmp	r8d, 0x21
	sete	r9b
	mov	rdx, qword ptr [rbp - 0x40]
	mov	r8d, OFFSET FLAT:label_1751
	mov	r10d, r8d
	mov	r8d, OFFSET FLAT:label_1752
	mov	r11d, r8d
	and	r9b, 1
	movzx	r8d, r9b
	mov	qword ptr [rbp - 0xe0], rdx
	mov	rdx, r10
	mov	qword ptr [rbp - 0xe8], rcx
	mov	rcx, r11
	mov	r9, qword ptr [rbp - 0xe0]
	mov	qword ptr [rbp - 0xf0], rax
	call	build_charclass_op
	xor	r8d, r8d
	mov	bl, r8b
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax], 0
	mov	byte ptr [rbp - 0xf1], bl
	je	.label_1793
	cmp	qword ptr [rbp - 0x50], 0
	sete	al
	mov	byte ptr [rbp - 0xf1], al
.label_1793:
	mov	al, byte ptr [rbp - 0xf1]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1803
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1749
.label_1803:
	jmp	.label_1755
.label_4026:
	movabs	rax, OFFSET FLAT:label_1760
	movabs	rcx, OFFSET FLAT:label_36
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rdx + 0x78]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	r8d, dword ptr [rdx + 8]
	and	r8d, 0xff
	cmp	r8d, 0x23
	sete	r9b
	mov	rdx, qword ptr [rbp - 0x40]
	mov	r8d, OFFSET FLAT:label_1760
	mov	r10d, r8d
	mov	r8d, OFFSET FLAT:label_36
	mov	r11d, r8d
	and	r9b, 1
	movzx	r8d, r9b
	mov	qword ptr [rbp - 0x100], rdx
	mov	rdx, r10
	mov	qword ptr [rbp - 0x108], rcx
	mov	rcx, r11
	mov	r9, qword ptr [rbp - 0x100]
	mov	qword ptr [rbp - 0x110], rax
	call	build_charclass_op
	xor	r8d, r8d
	mov	bl, r8b
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax], 0
	mov	byte ptr [rbp - 0x111], bl
	je	.label_1783
	cmp	qword ptr [rbp - 0x50], 0
	sete	al
	mov	byte ptr [rbp - 0x111], al
.label_1783:
	mov	al, byte ptr [rbp - 0x111]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1792
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1749
.label_1792:
	jmp	.label_1755
.label_4018:
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1749
.label_4027:
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 5
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1749
.label_1774:
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1749
.label_1755:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x30]
	call	fetch_token
.label_1789:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x28]
	mov	edx, dword ptr [rcx + 8]
	and	edx, 0xff
	cmp	edx, 0xb
	mov	byte ptr [rbp - 0x112], al
	je	.label_1764
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x28]
	mov	edx, dword ptr [rcx + 8]
	and	edx, 0xff
	cmp	edx, 0x12
	mov	byte ptr [rbp - 0x112], al
	je	.label_1764
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x28]
	mov	edx, dword ptr [rcx + 8]
	and	edx, 0xff
	cmp	edx, 0x13
	mov	byte ptr [rbp - 0x112], al
	je	.label_1764
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x17
	sete	dl
	mov	byte ptr [rbp - 0x112], dl
.label_1764:
	mov	al, byte ptr [rbp - 0x112]
	test	al, 1
	jne	.label_1787
	jmp	.label_1791
.label_1787:
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	r9, qword ptr [rbp - 0x40]
	call	parse_dup_op
	xor	r10d, r10d
	mov	r11b, r10b
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax], 0
	mov	byte ptr [rbp - 0x113], r11b
	je	.label_1795
	cmp	qword ptr [rbp - 0x70], 0
	sete	al
	mov	byte ptr [rbp - 0x113], al
.label_1795:
	mov	al, byte ptr [rbp - 0x113]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1750
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_1758
	movabs	rsi, OFFSET FLAT:free_tree
	xor	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x50]
	call	postorder
	mov	dword ptr [rbp - 0x118], eax
.label_1758:
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1749
.label_1750:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x30]
	and	rax, 0x1000000
	cmp	rax, 0
	je	.label_1771
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0xb
	je	.label_1776
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x17
	jne	.label_1771
.label_1776:
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_1781
	movabs	rsi, OFFSET FLAT:free_tree
	xor	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x50]
	call	postorder
	mov	dword ptr [rbp - 0x11c], eax
.label_1781:
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 0xd
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1749
.label_1771:
	jmp	.label_1789
.label_1791:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x10], rax
.label_1749:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x118
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413c00

	.globl create_token_tree
	.type create_token_tree, @function
create_token_tree:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	movsxd	rcx, dword ptr [rcx + 0x80]
	cmp	rcx, 0xf
	sete	al
	and	al, 1
	movzx	r8d, al
	movsxd	rcx, r8d
	cmp	rcx, 0
	je	.label_1804
	mov	eax, 0x3c8
	mov	edi, eax
	call	malloc
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_1807
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1806
.label_1807:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x70]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x70], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0x80], 0
.label_1804:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x80]
	mov	edx, ecx
	add	edx, 1
	mov	dword ptr [rax + 0x80], edx
	movsxd	rax, ecx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x70]
	add	rsi, 8
	shl	rax, 6
	add	rsi, rax
	mov	qword ptr [rbp - 0x30], rsi
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	qword ptr [rsi + 8], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	qword ptr [rsi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rsi]
	mov	qword ptr [rax + 0x28], rdi
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rax + 0x30], rsi
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xfffbffff
	mov	dword ptr [rax + 0x30], ecx
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xfff7ffff
	mov	dword ptr [rax + 0x30], ecx
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax + 0x18], 0
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax + 0x20], 0
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax + 0x38], -1
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1808
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
.label_1808:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1805
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_1805:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_1806:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413d80

	.globl parse_sub_exp
	.type parse_sub_exp, @function
parse_sub_exp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x40], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rcx + 0x30]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rcx + 0x30], rsi
	mov	qword ptr [rbp - 0x50], rdx
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x28]
	or	rcx, 0x800000
	mov	rdx, rcx
	call	fetch_token
	mov	rcx, qword ptr [rbp - 0x20]
	mov	eax, dword ptr [rcx + 8]
	and	eax, 0xff
	cmp	eax, 9
	jne	.label_1817
	mov	qword ptr [rbp - 0x48], 0
	jmp	.label_1815
.label_1817:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	r9, qword ptr [rbp - 0x38]
	call	parse_reg_exp
	xor	r10d, r10d
	mov	r11b, r10b
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rax], 0
	mov	byte ptr [rbp - 0x51], r11b
	jne	.label_1816
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 9
	setne	dl
	mov	byte ptr [rbp - 0x51], dl
.label_1816:
	mov	al, byte ptr [rbp - 0x51]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1812
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_1810
	movabs	rsi, OFFSET FLAT:free_tree
	xor	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x48]
	call	postorder
	mov	dword ptr [rbp - 0x58], eax
.label_1810:
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax], 8
.label_1812:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rax], 0
	setne	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1814
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1813
.label_1814:
	jmp	.label_1815
.label_1815:
	cmp	qword ptr [rbp - 0x50], 8
	ja	.label_1809
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 0x50]
	mov	edx, ecx
	mov	ecx, edx
	shl	eax, cl
	movsxd	rsi, eax
	mov	rdi, qword ptr [rbp - 0x40]
	or	rsi, qword ptr [rdi + 0xa8]
	mov	qword ptr [rdi + 0xa8], rsi
.label_1809:
	xor	eax, eax
	mov	edx, eax
	mov	ecx, 0x11
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x48]
	call	create_tree
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	sete	r8b
	and	r8b, 1
	movzx	ecx, r8b
	movsxd	rax, ecx
	cmp	rax, 0
	je	.label_1811
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1813
.label_1811:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 8], rax
.label_1813:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413f60

	.globl parse_bracket_exp
	.type parse_bracket_exp, @function
parse_bracket_exp:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x188
	mov	eax, 0x20
	mov	r9d, eax
	mov	eax, 1
	mov	r10d, eax
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	qword ptr [rbp - 0x38], r8
	mov	qword ptr [rbp - 0x60], 0
	mov	qword ptr [rbp - 0x68], 0
	mov	qword ptr [rbp - 0x70], 0
	mov	qword ptr [rbp - 0x78], 0
	mov	qword ptr [rbp - 0x80], 0
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x95], 1
	mov	rdi, r9
	mov	rsi, r10
	call	calloc
	mov	r11d, 0x50
	mov	edi, r11d
	mov	r11d, 1
	mov	esi, r11d
	mov	qword ptr [rbp - 0x50], rax
	call	calloc
	mov	bl, 1
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x50], 0
	mov	byte ptr [rbp - 0x135], bl
	je	.label_1851
	cmp	qword ptr [rbp - 0x58], 0
	sete	al
	mov	byte ptr [rbp - 0x135], al
.label_1851:
	mov	al, byte ptr [rbp - 0x135]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1823
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x58]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1835
.label_1823:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x30]
	call	peek_token_bracket
	mov	dword ptr [rbp - 0x94], eax
	mov	rdx, qword ptr [rbp - 0x28]
	mov	eax, dword ptr [rdx + 8]
	and	eax, 0xff
	cmp	eax, 2
	sete	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_1845
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax], 2
	jmp	.label_1822
.label_1845:
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x19
	jne	.label_1858
	mov	rax, qword ptr [rbp - 0x58]
	mov	cl, byte ptr [rax + 0x20]
	and	cl, 0xfe
	or	cl, 1
	mov	byte ptr [rax + 0x20], cl
	mov	byte ptr [rbp - 0x81], 1
	mov	rax, qword ptr [rbp - 0x30]
	and	rax, 0x100
	cmp	rax, 0
	je	.label_1840
	mov	eax, 0xa
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x50]
	call	bitset_set
.label_1840:
	movsxd	rax, dword ptr [rbp - 0x94]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rcx + 0x48]
	mov	qword ptr [rcx + 0x48], rax
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x30]
	call	peek_token_bracket
	mov	dword ptr [rbp - 0x94], eax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	eax, dword ptr [rcx + 8]
	and	eax, 0xff
	cmp	eax, 2
	sete	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_1826
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax], 2
	jmp	.label_1822
.label_1826:
	jmp	.label_1858
.label_1858:
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x15
	jne	.label_1841
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 1
	mov	dword ptr [rax + 8], ecx
.label_1841:
	jmp	.label_1820
.label_1820:
	lea	rdi, [rbp - 0xa8]
	lea	rax, [rbp - 0xe0]
	mov	dword ptr [rbp - 0x108], 0
	mov	byte ptr [rbp - 0x109], 0
	mov	qword ptr [rbp - 0xa0], rax
	mov	dword ptr [rbp - 0xa8], 3
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rbp - 0x94]
	mov	r8, qword ptr [rbp - 0x20]
	mov	r9, qword ptr [rbp - 0x30]
	mov	r10b, byte ptr [rbp - 0x95]
	and	r10b, 1
	movzx	r11d, r10b
	mov	dword ptr [rsp], r11d
	call	parse_bracket_element
	mov	dword ptr [rbp - 0x104], eax
	cmp	dword ptr [rbp - 0x104], 0
	setne	r10b
	and	r10b, 1
	movzx	eax, r10b
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_1868
	mov	eax, dword ptr [rbp - 0x104]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	dword ptr [rcx], eax
	jmp	.label_1822
.label_1868:
	mov	byte ptr [rbp - 0x95], 0
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x30]
	call	peek_token_bracket
	mov	dword ptr [rbp - 0x94], eax
	cmp	dword ptr [rbp - 0xa8], 4
	je	.label_1834
	cmp	dword ptr [rbp - 0xa8], 2
	je	.label_1834
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 2
	sete	dl
	and	dl, 1
	movzx	ecx, dl
	movsxd	rax, ecx
	cmp	rax, 0
	je	.label_1838
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax], 7
	jmp	.label_1822
.label_1838:
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x16
	jne	.label_1837
	lea	rdi, [rbp - 0x120]
	movsxd	rax, dword ptr [rbp - 0x94]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rcx + 0x48]
	mov	qword ptr [rcx + 0x48], rax
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x30]
	call	peek_token_bracket
	mov	dword ptr [rbp - 0x108], eax
	mov	eax, dword ptr [rbp - 0x118]
	and	eax, 0xff
	cmp	eax, 2
	sete	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_1866
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax], 7
	jmp	.label_1822
.label_1866:
	mov	eax, dword ptr [rbp - 0x118]
	and	eax, 0xff
	cmp	eax, 0x15
	jne	.label_1824
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	add	rcx, qword ptr [rdx + 0x48]
	mov	qword ptr [rdx + 0x48], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	eax, dword ptr [rcx + 8]
	and	eax, 0xffffff00
	or	eax, 1
	mov	dword ptr [rcx + 8], eax
	jmp	.label_1825
.label_1824:
	mov	byte ptr [rbp - 0x109], 1
.label_1825:
	jmp	.label_1837
.label_1837:
	jmp	.label_1834
.label_1834:
	mov	al, byte ptr [rbp - 0x109]
	and	al, 1
	movzx	ecx, al
	cmp	ecx, 1
	jne	.label_1839
	lea	rdi, [rbp - 0xb8]
	lea	rdx, [rbp - 0x120]
	mov	eax, 1
	lea	rcx, [rbp - 0x100]
	mov	qword ptr [rbp - 0xb0], rcx
	mov	dword ptr [rbp - 0xb8], 3
	mov	rsi, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x108]
	mov	r8, qword ptr [rbp - 0x20]
	mov	r9, qword ptr [rbp - 0x30]
	mov	dword ptr [rsp], 1
	mov	dword ptr [rbp - 0x13c], eax
	call	parse_bracket_element
	mov	dword ptr [rbp - 0x104], eax
	cmp	dword ptr [rbp - 0x104], 0
	setne	r10b
	and	r10b, 1
	movzx	eax, r10b
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_1862
	mov	eax, dword ptr [rbp - 0x104]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	dword ptr [rcx], eax
	jmp	.label_1822
.label_1862:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x30]
	call	peek_token_bracket
	mov	dword ptr [rbp - 0x94], eax
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x20]
	cmp	dword ptr [rdx + 0xb4], 1
	mov	qword ptr [rbp - 0x148], rdi
	mov	qword ptr [rbp - 0x150], rsi
	jle	.label_1818
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x158], rax
	jmp	.label_1830
.label_1818:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x158], rcx
	jmp	.label_1830
.label_1830:
	mov	rax, qword ptr [rbp - 0x158]
	lea	rcx, [rbp - 0x68]
	lea	r8, [rbp - 0xa8]
	lea	r9, [rbp - 0xb8]
	mov	rdi, qword ptr [rbp - 0x148]
	mov	rsi, qword ptr [rbp - 0x150]
	mov	rdx, rax
	call	build_range_exp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	dword ptr [rcx], eax
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	dword ptr [rcx], 0
	setne	r10b
	and	r10b, 1
	movzx	eax, r10b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_1848
	jmp	.label_1822
.label_1848:
	jmp	.label_1859
.label_1839:
	mov	eax, dword ptr [rbp - 0xa8]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 4
	mov	qword ptr [rbp - 0x160], rcx
	mov	qword ptr [rbp - 0x168], rdx
	ja	.label_1860
	mov	rax, qword ptr [rbp - 0x160]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1867]]
	jmp	rcx
.label_3796:
	mov	rdi, qword ptr [rbp - 0x50]
	movzx	eax, byte ptr [rbp - 0xa0]
	mov	esi, eax
	call	bitset_set
	jmp	.label_1831
.label_3797:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rcx + 0x28]
	sete	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_1870
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax + 0x28]
	shl	rax, 1
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x70]
	shl	rcx, 2
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x128], rax
	cmp	qword ptr [rbp - 0x128], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_1861
	jmp	.label_1832
.label_1861:
	mov	rax, qword ptr [rbp - 0x128]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	qword ptr [rcx], rax
.label_1870:
	mov	eax, dword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rcx + 0x28]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rcx + 0x28], rsi
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rcx]
	mov	dword ptr [rcx + rdx*4], eax
	jmp	.label_1831
.label_3798:
	lea	rdx, [rbp - 0x78]
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0xa0]
	call	build_equiv_class
	mov	rcx, qword ptr [rbp - 0x38]
	mov	dword ptr [rcx], eax
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	dword ptr [rcx], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_1864
	jmp	.label_1822
.label_1864:
	jmp	.label_1831
.label_3799:
	lea	rdx, [rbp - 0x60]
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0xa0]
	call	build_collating_symbol
	mov	rcx, qword ptr [rbp - 0x38]
	mov	dword ptr [rcx], eax
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	dword ptr [rcx], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_1819
	jmp	.label_1822
.label_1819:
	jmp	.label_1831
.label_3800:
	lea	rcx, [rbp - 0x80]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax + 0x78]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	r8, qword ptr [rbp - 0xa0]
	mov	r9, qword ptr [rbp - 0x30]
	call	build_charclass
	mov	rcx, qword ptr [rbp - 0x38]
	mov	dword ptr [rcx], eax
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	dword ptr [rcx], 0
	setne	r10b
	and	r10b, 1
	movzx	eax, r10b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_1843
	jmp	.label_1822
.label_1843:
	jmp	.label_1831
.label_1860:
	movabs	rdi, OFFSET FLAT:label_1852
	movabs	rsi, OFFSET FLAT:label_1853
	mov	edx, 0xced
	movabs	rcx, OFFSET FLAT:label_1854
	call	__assert_fail
.label_1831:
	jmp	.label_1859
.label_1859:
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 2
	sete	dl
	and	dl, 1
	movzx	ecx, dl
	movsxd	rax, ecx
	cmp	rax, 0
	je	.label_1863
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax], 7
	jmp	.label_1822
.label_1863:
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x15
	jne	.label_1869
	jmp	.label_1827
.label_1869:
	jmp	.label_1820
.label_1827:
	movsxd	rax, dword ptr [rbp - 0x94]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rcx + 0x48]
	mov	qword ptr [rcx + 0x48], rax
	test	byte ptr [rbp - 0x81], 1
	je	.label_1842
	mov	rdi, qword ptr [rbp - 0x50]
	call	bitset_not
.label_1842:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_1833
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rax + 0x78]
	call	bitset_mask
.label_1833:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	qword ptr [rax + 0x28], 0
	jne	.label_1847
	mov	rax, qword ptr [rbp - 0x58]
	cmp	qword ptr [rax + 0x30], 0
	jne	.label_1847
	mov	rax, qword ptr [rbp - 0x58]
	cmp	qword ptr [rax + 0x38], 0
	jne	.label_1847
	mov	rax, qword ptr [rbp - 0x58]
	cmp	qword ptr [rax + 0x40], 0
	jne	.label_1847
	mov	rax, qword ptr [rbp - 0x20]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_1855
	mov	rax, qword ptr [rbp - 0x58]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_1847
	mov	rax, qword ptr [rbp - 0x58]
	mov	cl, byte ptr [rax + 0x20]
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	je	.label_1855
.label_1847:
	xor	eax, eax
	mov	ecx, eax
	lea	rdx, [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	dil, byte ptr [rsi + 0xb0]
	and	dil, 0xfd
	or	dil, 2
	mov	byte ptr [rsi + 0xb0], dil
	mov	eax, dword ptr [rbp - 0x40]
	and	eax, 0xffffff00
	or	eax, 6
	mov	dword ptr [rbp - 0x40], eax
	mov	rsi, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x48], rsi
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x170], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x170]
	call	create_token_tree
	mov	qword ptr [rbp - 0x130], rax
	cmp	qword ptr [rbp - 0x130], 0
	sete	r8b
	and	r8b, 1
	movzx	r9d, r8b
	movsxd	rax, r9d
	cmp	rax, 0
	je	.label_1828
	jmp	.label_1832
.label_1828:
	mov	dword ptr [rbp - 0x134], 0
.label_1850:
	cmp	dword ptr [rbp - 0x134], 4
	jge	.label_1856
	movsxd	rax, dword ptr [rbp - 0x134]
	mov	rcx, qword ptr [rbp - 0x50]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1844
	jmp	.label_1856
.label_1844:
	jmp	.label_1849
.label_1849:
	mov	eax, dword ptr [rbp - 0x134]
	add	eax, 1
	mov	dword ptr [rbp - 0x134], eax
	jmp	.label_1850
.label_1856:
	cmp	dword ptr [rbp - 0x134], 4
	jge	.label_1857
	xor	eax, eax
	mov	ecx, eax
	lea	rdx, [rbp - 0x48]
	mov	eax, dword ptr [rbp - 0x40]
	and	eax, 0xffffff00
	or	eax, 3
	mov	dword ptr [rbp - 0x40], eax
	mov	rsi, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x48], rsi
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x178], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x178]
	call	create_token_tree
	mov	qword ptr [rbp - 0x90], rax
	cmp	qword ptr [rbp - 0x90], 0
	sete	r8b
	and	r8b, 1
	movzx	r9d, r8b
	movsxd	rax, r9d
	cmp	rax, 0
	je	.label_1836
	jmp	.label_1832
.label_1836:
	mov	ecx, 0xa
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x90]
	mov	rdx, qword ptr [rbp - 0x130]
	call	create_tree
	mov	qword ptr [rbp - 0x90], rax
	cmp	qword ptr [rbp - 0x90], 0
	sete	r8b
	and	r8b, 1
	movzx	ecx, r8b
	movsxd	rax, ecx
	cmp	rax, 0
	je	.label_1829
	jmp	.label_1832
.label_1829:
	jmp	.label_1821
.label_1857:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x130]
	mov	qword ptr [rbp - 0x90], rax
.label_1821:
	jmp	.label_1846
.label_1855:
	mov	rdi, qword ptr [rbp - 0x58]
	call	free_charset
	xor	eax, eax
	mov	edi, eax
	lea	rcx, [rbp - 0x48]
	mov	eax, dword ptr [rbp - 0x40]
	and	eax, 0xffffff00
	or	eax, 3
	mov	dword ptr [rbp - 0x40], eax
	mov	rdx, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x48], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x180], rdi
	mov	rdi, rdx
	mov	rsi, qword ptr [rbp - 0x180]
	mov	rdx, qword ptr [rbp - 0x180]
	call	create_token_tree
	mov	qword ptr [rbp - 0x90], rax
	cmp	qword ptr [rbp - 0x90], 0
	sete	r8b
	and	r8b, 1
	movzx	r9d, r8b
	movsxd	rax, r9d
	cmp	rax, 0
	je	.label_1865
	jmp	.label_1832
.label_1865:
	jmp	.label_1846
.label_1846:
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1835
.label_1832:
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax], 0xc
.label_1822:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, rax
	call	free
	mov	rdi, qword ptr [rbp - 0x58]
	call	free_charset
	mov	qword ptr [rbp - 0x10], 0
.label_1835:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x188
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414a40

	.globl init_word_char
	.type init_word_char, @function
init_word_char:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], 0
	mov	dword ptr [rbp - 0x14], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	al, byte ptr [rdi + 0xb0]
	and	al, 0xef
	or	al, 0x10
	mov	byte ptr [rdi + 0xb0], al
	mov	rdi, qword ptr [rbp - 8]
	mov	al, byte ptr [rdi + 0xb0]
	shr	al, 3
	and	al, 1
	movzx	ecx, al
	cmp	ecx, 0
	sete	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdi, ecx
	cmp	rdi, 0
	je	.label_1871
	mov	eax, 0x87fffffe
	mov	ecx, eax
	mov	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x28], 0x3ff0000
	mov	qword ptr [rbp - 0x30], rcx
	mov	qword ptr [rbp - 0x38], 0x7fffffe
	mov	rcx, qword ptr [rbp - 0x28]
	shl	rcx, 0x1f
	shl	rcx, 1
	or	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0xb8], rcx
	mov	rcx, qword ptr [rbp - 0x38]
	shl	rcx, 0x1f
	shl	rcx, 1
	or	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0xc0], rcx
	mov	dword ptr [rbp - 0xc], 2
	mov	dword ptr [rbp - 0x14], 0x80
	mov	rcx, qword ptr [rbp - 8]
	mov	sil, byte ptr [rcx + 0xb0]
	shr	sil, 2
	and	sil, 1
	movzx	eax, sil
	mov	eax, eax
	mov	ecx, eax
	cmp	rcx, 0
	je	.label_1879
	xor	esi, esi
	mov	eax, 8
	mov	ecx, 0x100
	movsxd	rdx, dword ptr [rbp - 0xc]
	mov	rdi, qword ptr [rbp - 8]
	add	rdi, 0xb8
	shl	rdx, 3
	add	rdi, rdx
	sub	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x3c], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x3c]
	idiv	ecx
	movsxd	r8, eax
	mov	rdx, r8
	call	memset
	jmp	.label_1878
.label_1879:
	jmp	.label_1871
.label_1871:
	jmp	.label_1875
.label_1875:
	jmp	.label_1874
.label_1874:
	cmp	dword ptr [rbp - 0xc], 4
	jge	.label_1878
	mov	dword ptr [rbp - 0x10], 0
.label_1873:
	cmp	dword ptr [rbp - 0x10], 0x40
	jge	.label_1880
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	qword ptr [rbp - 0x48], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x48]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 8
	cmp	edx, 0
	jne	.label_1881
	cmp	dword ptr [rbp - 0x14], 0x5f
	jne	.label_1877
.label_1881:
	mov	eax, 1
	mov	ecx, eax
	mov	eax, dword ptr [rbp - 0x10]
	mov	edx, eax
	mov	qword ptr [rbp - 0x50], rcx
	mov	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x50]
	shl	rdx, cl
	movsxd	rsi, dword ptr [rbp - 0xc]
	mov	rdi, qword ptr [rbp - 8]
	or	rdx, qword ptr [rdi + rsi*8 + 0xb8]
	mov	qword ptr [rdi + rsi*8 + 0xb8], rdx
.label_1877:
	jmp	.label_1872
.label_1872:
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, 1
	mov	dword ptr [rbp - 0x10], eax
	mov	eax, dword ptr [rbp - 0x14]
	add	eax, 1
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_1873
.label_1880:
	jmp	.label_1876
.label_1876:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_1874
.label_1878:
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414c30

	.globl build_charclass_op
	.type build_charclass_op, @function
build_charclass_op:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x88
	mov	al, r8b
	mov	r8d, 0x20
	mov	r10d, r8d
	mov	r8d, 1
	mov	r11d, r8d
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x30], rcx
	and	al, 1
	mov	byte ptr [rbp - 0x31], al
	mov	qword ptr [rbp - 0x40], r9
	mov	qword ptr [rbp - 0x58], 0
	mov	rdi, r10
	mov	rsi, r11
	call	calloc
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	sete	bl
	and	bl, 1
	movzx	r8d, bl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_1895
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1891
.label_1895:
	mov	eax, 0x50
	mov	edi, eax
	mov	eax, 1
	mov	esi, eax
	call	calloc
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1884
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1891
.label_1884:
	lea	rcx, [rbp - 0x58]
	xor	eax, eax
	mov	r9d, eax
	mov	dl, byte ptr [rbp - 0x31]
	and	dl, 1
	movzx	eax, dl
	mov	rsi, qword ptr [rbp - 0x50]
	mov	dl, al
	mov	dil, byte ptr [rsi + 0x20]
	and	dl, 1
	and	dil, 0xfe
	or	dil, dl
	mov	byte ptr [rsi + 0x20], dil
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	r8, qword ptr [rbp - 0x28]
	call	build_charclass
	mov	dword ptr [rbp - 0x5c], eax
	cmp	dword ptr [rbp - 0x5c], 0
	setne	r10b
	and	r10b, 1
	movzx	eax, r10b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_1885
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, rax
	call	free
	mov	rdi, qword ptr [rbp - 0x50]
	call	free_charset
	mov	ecx, dword ptr [rbp - 0x5c]
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1891
.label_1885:
	jmp	.label_1888
.label_1888:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	byte ptr [rax], 0
	je	.label_1889
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x30]
	movsx	rsi, byte ptr [rax]
	call	bitset_set
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1888
.label_1889:
	test	byte ptr [rbp - 0x31], 1
	je	.label_1894
	mov	rdi, qword ptr [rbp - 0x48]
	call	bitset_not
.label_1894:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_1890
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax + 0x78]
	call	bitset_mask
.label_1890:
	xor	eax, eax
	mov	ecx, eax
	lea	rdx, [rbp - 0x70]
	mov	eax, dword ptr [rbp - 0x68]
	and	eax, 0xffffff00
	or	eax, 3
	mov	dword ptr [rbp - 0x68], eax
	mov	rsi, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rsi
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x88], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x88]
	call	create_token_tree
	mov	qword ptr [rbp - 0x78], rax
	cmp	qword ptr [rbp - 0x78], 0
	sete	r8b
	and	r8b, 1
	movzx	r9d, r8b
	movsxd	rax, r9d
	cmp	rax, 0
	je	.label_1887
	jmp	.label_1886
.label_1887:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_1892
	xor	eax, eax
	mov	ecx, eax
	lea	rdx, [rbp - 0x70]
	mov	eax, dword ptr [rbp - 0x68]
	and	eax, 0xffffff00
	or	eax, 6
	mov	dword ptr [rbp - 0x68], eax
	mov	rsi, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	dil, byte ptr [rsi + 0xb0]
	and	dil, 0xfd
	or	dil, 2
	mov	byte ptr [rsi + 0xb0], dil
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x90], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x90]
	call	create_token_tree
	mov	qword ptr [rbp - 0x80], rax
	cmp	qword ptr [rbp - 0x80], 0
	sete	r8b
	and	r8b, 1
	movzx	r9d, r8b
	movsxd	rax, r9d
	cmp	rax, 0
	je	.label_1883
	jmp	.label_1886
.label_1883:
	mov	ecx, 0xa
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0x80]
	call	create_tree
	mov	qword ptr [rbp - 0x78], rax
	cmp	qword ptr [rbp - 0x80], 0
	setne	r8b
	and	r8b, 1
	movzx	ecx, r8b
	movsxd	rax, ecx
	cmp	rax, 0
	je	.label_1882
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1891
.label_1882:
	jmp	.label_1893
.label_1892:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free_charset
	mov	rdi, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x10], rdi
	jmp	.label_1891
.label_1893:
	jmp	.label_1886
.label_1886:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, rax
	call	free
	mov	rdi, qword ptr [rbp - 0x50]
	call	free_charset
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x10], 0
.label_1891:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x88
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414f90

	.globl parse_dup_op
	.type parse_dup_op, @function
parse_dup_op:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	qword ptr [rbp - 0x40], 0
	mov	qword ptr [rbp - 0x48], 0
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x48]
	mov	qword ptr [rbp - 0x68], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x78], rdx
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x70], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	eax, dword ptr [rcx + 8]
	and	eax, 0xff
	cmp	eax, 0x17
	jne	.label_1924
	mov	qword ptr [rbp - 0x60], 0
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	call	fetch_number
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], -1
	jne	.label_1899
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 1
	jne	.label_1904
	mov	rax, qword ptr [rbp - 0x28]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2c
	jne	.label_1904
	mov	qword ptr [rbp - 0x58], 0
	jmp	.label_1910
.label_1904:
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax], 0xa
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1905
.label_1910:
	jmp	.label_1899
.label_1899:
	cmp	qword ptr [rbp - 0x58], -2
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1918
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x18
	jne	.label_1922
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_1928
.label_1922:
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 1
	jne	.label_1920
	mov	rax, qword ptr [rbp - 0x28]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2c
	jne	.label_1920
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	call	fetch_number
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_1934
.label_1920:
	mov	rax, -2
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_1934
.label_1934:
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x88], rax
.label_1928:
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x60], rax
.label_1918:
	mov	al, 1
	cmp	qword ptr [rbp - 0x58], -2
	mov	byte ptr [rbp - 0x91], al
	je	.label_1902
	cmp	qword ptr [rbp - 0x60], -2
	sete	al
	mov	byte ptr [rbp - 0x91], al
.label_1902:
	mov	al, byte ptr [rbp - 0x91]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1909
	mov	rax, qword ptr [rbp - 0x30]
	and	rax, 0x200000
	cmp	rax, 0
	setne	cl
	xor	cl, 0xff
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1912
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 2
	jne	.label_1919
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax], 9
	jmp	.label_1926
.label_1919:
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax], 0xa
.label_1926:
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1905
.label_1912:
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x48], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	qword ptr [rax], rcx
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rax + 8], rcx
	mov	rax, qword ptr [rbp - 0x28]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xffffff00
	or	edx, 1
	mov	dword ptr [rax + 8], edx
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1905
.label_1909:
	cmp	qword ptr [rbp - 0x60], -1
	je	.label_1938
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x58]
	cmp	rcx, qword ptr [rbp - 0x60]
	mov	byte ptr [rbp - 0x92], al
	jg	.label_1896
.label_1938:
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x18
	setne	dl
	mov	byte ptr [rbp - 0x92], dl
.label_1896:
	mov	al, byte ptr [rbp - 0x92]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1907
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax], 0xa
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1905
.label_1907:
	cmp	qword ptr [rbp - 0x60], -1
	jne	.label_1914
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_1917
.label_1914:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0xa0], rax
.label_1917:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	ecx, 0x7fff
	mov	edx, ecx
	cmp	rdx, rax
	setl	sil
	and	sil, 1
	movzx	ecx, sil
	movsxd	rax, ecx
	cmp	rax, 0
	je	.label_1921
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax], 0xf
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1905
.label_1921:
	jmp	.label_1933
.label_1924:
	mov	eax, 0xffffffff
	mov	ecx, 1
	xor	edx, edx
	mov	rsi, qword ptr [rbp - 0x28]
	mov	edi, dword ptr [rsi + 8]
	and	edi, 0xff
	cmp	edi, 0x12
	cmove	edx, ecx
	movsxd	rsi, edx
	mov	qword ptr [rbp - 0x58], rsi
	mov	rsi, qword ptr [rbp - 0x28]
	mov	edx, dword ptr [rsi + 8]
	and	edx, 0xff
	cmp	edx, 0x13
	cmove	eax, ecx
	movsxd	rsi, eax
	mov	qword ptr [rbp - 0x60], rsi
.label_1933:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x30]
	call	fetch_token
	cmp	qword ptr [rbp - 0x10], 0
	sete	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1903
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1905
.label_1903:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x58], 0
	mov	byte ptr [rbp - 0xa1], cl
	jne	.label_1929
	cmp	qword ptr [rbp - 0x60], 0
	sete	al
	mov	byte ptr [rbp - 0xa1], al
.label_1929:
	mov	al, byte ptr [rbp - 0xa1]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1916
	movabs	rsi, OFFSET FLAT:free_tree
	xor	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x10]
	call	postorder
	mov	qword ptr [rbp - 8], 0
	mov	dword ptr [rbp - 0xa8], eax
	jmp	.label_1905
.label_1916:
	cmp	qword ptr [rbp - 0x58], 0
	setg	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1930
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x50], 2
.label_1937:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x58]
	jg	.label_1939
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	duplicate_tree
	mov	ecx, 0x10
	mov	qword ptr [rbp - 0x10], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	call	create_tree
	mov	r8b, 1
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x10], 0
	mov	byte ptr [rbp - 0xa9], r8b
	je	.label_1897
	cmp	qword ptr [rbp - 0x40], 0
	sete	al
	mov	byte ptr [rbp - 0xa9], al
.label_1897:
	mov	al, byte ptr [rbp - 0xa9]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1908
	jmp	.label_1898
.label_1908:
	jmp	.label_1911
.label_1911:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1937
.label_1939:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x60]
	jne	.label_1915
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1905
.label_1915:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	duplicate_tree
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1923
	jmp	.label_1898
.label_1923:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1931
.label_1930:
	mov	qword ptr [rbp - 0x48], 0
.label_1931:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xff
	cmp	ecx, 0x11
	jne	.label_1927
	movabs	rsi, OFFSET FLAT:mark_opt_subexp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	qword ptr [rbp - 0x80], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x80]
	call	postorder
	mov	dword ptr [rbp - 0xb0], eax
.label_1927:
	xor	eax, eax
	mov	edx, eax
	mov	eax, 0xa
	mov	ecx, 0xb
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rbp - 0x60], -1
	cmove	eax, ecx
	mov	ecx, eax
	call	create_tree
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	sete	r8b
	and	r8b, 1
	movzx	ecx, r8b
	movsxd	rax, ecx
	cmp	rax, 0
	je	.label_1906
	jmp	.label_1898
.label_1906:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x50], rax
.label_1901:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x60]
	jg	.label_1913
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	duplicate_tree
	mov	ecx, 0x10
	mov	qword ptr [rbp - 0x10], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	call	create_tree
	mov	r8b, 1
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x10], 0
	mov	byte ptr [rbp - 0xb1], r8b
	je	.label_1925
	cmp	qword ptr [rbp - 0x40], 0
	sete	al
	mov	byte ptr [rbp - 0xb1], al
.label_1925:
	mov	al, byte ptr [rbp - 0xb1]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1932
	jmp	.label_1898
.label_1932:
	xor	eax, eax
	mov	edx, eax
	mov	ecx, 0xa
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x40]
	call	create_tree
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	sete	r8b
	and	r8b, 1
	movzx	ecx, r8b
	movsxd	rax, ecx
	cmp	rax, 0
	je	.label_1935
	jmp	.label_1898
.label_1935:
	jmp	.label_1900
.label_1900:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1901
.label_1913:
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_1936
	mov	ecx, 0x10
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x40]
	call	create_tree
	mov	qword ptr [rbp - 0x40], rax
.label_1936:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1905
.label_1898:
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 8], 0
.label_1905:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415680

	.globl peek_token_bracket
	.type peek_token_bracket, @function
peek_token_bracket:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x68]
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rsi + 0x48]
	jg	.label_1940
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 2
	mov	dword ptr [rax + 8], ecx
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1941
.label_1940:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 0x21], dl
	mov	dl, byte ptr [rbp - 0x21]
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax], dl
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0x90], 1
	jle	.label_1944
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x30]
	je	.label_1944
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_1944
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 1
	mov	dword ptr [rax + 8], ecx
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1941
.label_1944:
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, 0x5c
	jne	.label_1943
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 1
	cmp	rax, 0
	je	.label_1943
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x58]
	jge	.label_1943
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax + 0x48]
	add	rcx, 1
	mov	qword ptr [rax + 0x48], rcx
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 0x22], dl
	mov	dl, byte ptr [rbp - 0x22]
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax], dl
	mov	rax, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rax + 8]
	and	esi, 0xffffff00
	or	esi, 1
	mov	dword ptr [rax + 8], esi
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1941
.label_1943:
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, 0x5b
	jne	.label_1942
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x58]
	jge	.label_1949
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, byte ptr [rcx + rax + 1]
	mov	byte ptr [rbp - 0x23], dl
	jmp	.label_1957
.label_1949:
	mov	byte ptr [rbp - 0x23], 0
.label_1957:
	mov	al, byte ptr [rbp - 0x23]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rcx], al
	mov	dword ptr [rbp - 0x28], 2
	movzx	edx, byte ptr [rbp - 0x23]
	mov	esi, edx
	sub	esi, 0x2e
	mov	dword ptr [rbp - 0x2c], edx
	mov	dword ptr [rbp - 0x30], esi
	je	.label_1947
	jmp	.label_1958
.label_1958:
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x3a
	mov	dword ptr [rbp - 0x34], eax
	je	.label_1961
	jmp	.label_1959
.label_1959:
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x3d
	mov	dword ptr [rbp - 0x38], eax
	je	.label_1946
	jmp	.label_1954
.label_1947:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x1a
	mov	dword ptr [rax + 8], ecx
	jmp	.label_1950
.label_1946:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x1c
	mov	dword ptr [rax + 8], ecx
	jmp	.label_1950
.label_1961:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 4
	cmp	rax, 0
	je	.label_1960
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x1e
	mov	dword ptr [rax + 8], ecx
	jmp	.label_1950
.label_1960:
	jmp	.label_1954
.label_1954:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 1
	mov	dword ptr [rax + 8], ecx
	mov	dl, byte ptr [rbp - 0x21]
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax], dl
	mov	dword ptr [rbp - 0x28], 1
.label_1950:
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1941
.label_1942:
	movzx	eax, byte ptr [rbp - 0x21]
	mov	ecx, eax
	sub	ecx, 0x2d
	mov	dword ptr [rbp - 0x3c], eax
	mov	dword ptr [rbp - 0x40], ecx
	je	.label_1956
	jmp	.label_1945
.label_1945:
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 0x5d
	mov	dword ptr [rbp - 0x44], eax
	je	.label_1951
	jmp	.label_1952
.label_1952:
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x48], eax
	je	.label_1953
	jmp	.label_1955
.label_1956:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x16
	mov	dword ptr [rax + 8], ecx
	jmp	.label_1948
.label_1951:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x15
	mov	dword ptr [rax + 8], ecx
	jmp	.label_1948
.label_1953:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x19
	mov	dword ptr [rax + 8], ecx
	jmp	.label_1948
.label_1955:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 1
	mov	dword ptr [rax + 8], ecx
.label_1948:
	mov	dword ptr [rbp - 4], 1
.label_1941:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4159a0

	.globl bitset_set
	.type bitset_set, @function
bitset_set:
	push	rbp
	mov	rbp, rsp
	mov	eax, 0x40
	mov	ecx, eax
	mov	eax, 1
	mov	edx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdx
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x18]
	shl	rdx, cl
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rax, rsi
	mov	qword ptr [rbp - 0x28], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0x20]
	idiv	rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	r8, qword ptr [rbp - 0x28]
	or	r8, qword ptr [rdi + rax*8]
	mov	qword ptr [rdi + rax*8], r8
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415a00

	.globl parse_bracket_element
	.type parse_bracket_element, @function
parse_bracket_element:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	al, byte ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	dword ptr [rbp - 0x24], ecx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	and	al, 1
	mov	byte ptr [rbp - 0x39], al
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rdx + 0x48]
	call	re_string_char_size_at
	mov	dword ptr [rbp - 0x40], eax
	cmp	dword ptr [rbp - 0x40], 1
	jle	.label_1966
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 1
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax + 0x48]
	call	re_string_wchar_at
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rsi + 8], eax
	movsxd	rsi, dword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rbp - 0x18]
	add	rsi, qword ptr [rdi + 0x48]
	mov	qword ptr [rdi + 0x48], rsi
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1962
.label_1966:
	movsxd	rax, dword ptr [rbp - 0x24]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rcx + 0x48]
	mov	qword ptr [rcx + 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	cmp	edx, 0x1a
	je	.label_1963
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x1e
	je	.label_1963
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x1c
	jne	.label_1967
.label_1963:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	call	parse_bracket_symbol
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1962
.label_1967:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x16
	sete	dl
	and	dl, 1
	movzx	ecx, dl
	movsxd	rax, ecx
	cmp	rax, 0
	je	.label_1964
	test	byte ptr [rbp - 0x39], 1
	jne	.label_1964
	lea	rdi, [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x38]
	call	peek_token_bracket
	mov	ecx, dword ptr [rbp - 0x48]
	and	ecx, 0xff
	cmp	ecx, 0x15
	mov	dword ptr [rbp - 0x54], eax
	je	.label_1965
	mov	dword ptr [rbp - 4], 0xb
	jmp	.label_1962
.label_1965:
	jmp	.label_1964
.label_1964:
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x20]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 8], cl
	mov	dword ptr [rbp - 4], 0
.label_1962:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415b80

	.globl build_range_exp
	.type build_range_exp, @function
build_range_exp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	al, 1
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	dword ptr [rcx], 2
	mov	byte ptr [rbp - 0x69], al
	je	.label_1968
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	dword ptr [rcx], 4
	mov	byte ptr [rbp - 0x69], al
	je	.label_1968
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	dword ptr [rcx], 2
	mov	byte ptr [rbp - 0x69], al
	je	.label_1968
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rax], 4
	sete	cl
	mov	byte ptr [rbp - 0x69], cl
.label_1968:
	mov	al, byte ptr [rbp - 0x69]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1995
	mov	dword ptr [rbp - 4], 0xb
	jmp	.label_1977
.label_1995:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax], 3
	jne	.label_1972
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rcx + 8]
	mov	byte ptr [rbp - 0x6a], al
	call	strlen
	cmp	rax, 1
	mov	dl, byte ptr [rbp - 0x6a]
	mov	byte ptr [rbp - 0x6b], dl
	ja	.label_1979
.label_1972:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x38]
	cmp	dword ptr [rdx], 3
	mov	byte ptr [rbp - 0x6c], cl
	jne	.label_1986
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rax + 8]
	call	strlen
	cmp	rax, 1
	seta	cl
	mov	byte ptr [rbp - 0x6c], cl
.label_1986:
	mov	al, byte ptr [rbp - 0x6c]
	mov	byte ptr [rbp - 0x6b], al
.label_1979:
	mov	al, byte ptr [rbp - 0x6b]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1996
	mov	dword ptr [rbp - 4], 3
	jmp	.label_1977
.label_1996:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax], 0
	jne	.label_1973
	mov	rax, qword ptr [rbp - 0x30]
	movzx	ecx, byte ptr [rax + 8]
	mov	dword ptr [rbp - 0x70], ecx
	jmp	.label_1974
.label_1973:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax], 3
	jne	.label_1978
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	movzx	ecx, byte ptr [rax]
	mov	dword ptr [rbp - 0x74], ecx
	jmp	.label_1984
.label_1978:
	xor	eax, eax
	mov	dword ptr [rbp - 0x74], eax
	jmp	.label_1984
.label_1984:
	mov	eax, dword ptr [rbp - 0x74]
	mov	dword ptr [rbp - 0x70], eax
.label_1974:
	mov	eax, dword ptr [rbp - 0x70]
	mov	dword ptr [rbp - 0x3c], eax
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	dword ptr [rcx], 0
	jne	.label_1992
	mov	rax, qword ptr [rbp - 0x38]
	movzx	ecx, byte ptr [rax + 8]
	mov	dword ptr [rbp - 0x78], ecx
	jmp	.label_1997
.label_1992:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rax], 3
	jne	.label_2000
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	movzx	ecx, byte ptr [rax]
	mov	dword ptr [rbp - 0x7c], ecx
	jmp	.label_1971
.label_2000:
	xor	eax, eax
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_1971
.label_1971:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x78], eax
.label_1997:
	mov	eax, dword ptr [rbp - 0x78]
	mov	dword ptr [rbp - 0x40], eax
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	dword ptr [rcx], 0
	je	.label_1980
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax], 3
	jne	.label_1988
.label_1980:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	cl, al
	mov	rsi, qword ptr [rbp - 0x20]
	movzx	edi, cl
	call	parse_byte
	mov	dword ptr [rbp - 0x80], eax
	jmp	.label_1975
.label_1988:
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 0x80], ecx
.label_1975:
	mov	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x48], eax
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	dword ptr [rcx], 0
	je	.label_1998
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rax], 3
	jne	.label_2001
.label_1998:
	mov	eax, dword ptr [rbp - 0x40]
	mov	cl, al
	mov	rsi, qword ptr [rbp - 0x20]
	movzx	edi, cl
	call	parse_byte
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1976
.label_2001:
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 0x84], ecx
.label_1976:
	mov	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x4c], eax
	cmp	dword ptr [rbp - 0x48], -1
	je	.label_1985
	cmp	dword ptr [rbp - 0x4c], -1
	jne	.label_1991
.label_1985:
	mov	dword ptr [rbp - 4], 3
	jmp	.label_1977
.label_1991:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	and	rdx, 0x10000
	cmp	rdx, 0
	mov	byte ptr [rbp - 0x85], cl
	je	.label_1993
	mov	eax, dword ptr [rbp - 0x48]
	cmp	eax, dword ptr [rbp - 0x4c]
	seta	cl
	mov	byte ptr [rbp - 0x85], cl
.label_1993:
	mov	al, byte ptr [rbp - 0x85]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1990
	mov	dword ptr [rbp - 4], 0xb
	jmp	.label_1977
.label_1990:
	jmp	.label_1983
.label_1983:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1987
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx + 0x40]
	sete	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_1989
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x40]
	shl	rax, 1
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x68]
	shl	rcx, 2
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x68]
	shl	rcx, 2
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	dl, 1
	mov	qword ptr [rbp - 0x60], rax
	cmp	qword ptr [rbp - 0x58], 0
	mov	byte ptr [rbp - 0x86], dl
	je	.label_1981
	cmp	qword ptr [rbp - 0x60], 0
	sete	al
	mov	byte ptr [rbp - 0x86], al
.label_1981:
	mov	al, byte ptr [rbp - 0x86]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1982
	mov	rax, qword ptr [rbp - 0x58]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdi, rax
	call	free
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_1977
.label_1982:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
.label_1989:
	mov	eax, dword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x40]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rdx + 8]
	mov	dword ptr [rdx + rcx*4], eax
	mov	eax, dword ptr [rbp - 0x4c]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rcx + 0x40]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rcx + 0x40], rsi
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	dword ptr [rcx + rdx*4], eax
.label_1987:
	mov	dword ptr [rbp - 0x44], 0
.label_1970:
	cmp	dword ptr [rbp - 0x44], 0x100
	jge	.label_1999
	mov	eax, dword ptr [rbp - 0x48]
	cmp	eax, dword ptr [rbp - 0x44]
	ja	.label_1969
	mov	eax, dword ptr [rbp - 0x44]
	cmp	eax, dword ptr [rbp - 0x4c]
	ja	.label_1969
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rsi, dword ptr [rbp - 0x44]
	call	bitset_set
.label_1969:
	jmp	.label_1994
.label_1994:
	mov	eax, dword ptr [rbp - 0x44]
	add	eax, 1
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_1970
.label_1999:
	mov	dword ptr [rbp - 4], 0
.label_1977:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415fd0

	.globl build_equiv_class
	.type build_equiv_class, @function
build_equiv_class:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	cmp	rax, 1
	setne	r8b
	and	r8b, 1
	movzx	r9d, r8b
	movsxd	rax, r9d
	cmp	rax, 0
	je	.label_2002
	mov	dword ptr [rbp - 4], 3
	jmp	.label_2003
.label_2002:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x28]
	movzx	ecx, byte ptr [rax]
	mov	esi, ecx
	call	bitset_set
	mov	dword ptr [rbp - 4], 0
.label_2003:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x416040

	.globl build_collating_symbol
	.type build_collating_symbol, @function
build_collating_symbol:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 1
	setne	r8b
	and	r8b, 1
	movzx	r9d, r8b
	movsxd	rax, r9d
	cmp	rax, 0
	je	.label_2004
	mov	dword ptr [rbp - 4], 3
	jmp	.label_2005
.label_2004:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x28]
	movzx	ecx, byte ptr [rax]
	mov	esi, ecx
	call	bitset_set
	mov	dword ptr [rbp - 4], 0
.label_2005:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4160c0

	.globl build_charclass
	.type build_charclass, @function
build_charclass:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x120
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x48], rcx
	mov	rcx, qword ptr [rbp - 0x38]
	and	rcx, 0x400000
	cmp	rcx, 0
	je	.label_2085
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:label_2110
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_2115
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:label_2008
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_2085
.label_2115:
	movabs	rax, OFFSET FLAT:label_2029
	mov	qword ptr [rbp - 0x48], rax
.label_2085:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx + 0x48]
	sete	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_2133
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x48]
	shl	rax, 1
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x50]
	shl	rcx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_2149
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2098
.label_2149:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
.label_2133:
	mov	rdi, qword ptr [rbp - 0x48]
	call	wctype
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rdi + 0x48]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rdi + 0x48], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	esi, OFFSET FLAT:label_1751
	call	strcmp
	cmp	eax, 0
	jne	.label_2010
	jmp	.label_2061
.label_2061:
	cmp	qword ptr [rbp - 0x10], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2018
	mov	dword ptr [rbp - 0x3c], 0
.label_2063:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_2031
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0x60], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x60]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 8
	cmp	edx, 0
	je	.label_2041
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	call	bitset_set
.label_2041:
	jmp	.label_2060
.label_2060:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_2063
.label_2031:
	jmp	.label_2067
.label_2018:
	mov	dword ptr [rbp - 0x3c], 0
.label_2097:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_2175
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0x68], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x68]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 8
	cmp	edx, 0
	je	.label_2084
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rsi, dword ptr [rbp - 0x3c]
	call	bitset_set
.label_2084:
	jmp	.label_2094
.label_2094:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_2097
.label_2175:
	jmp	.label_2067
.label_2067:
	jmp	.label_2037
.label_2037:
	jmp	.label_2123
.label_2010:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:label_2111
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_2118
	jmp	.label_2120
.label_2120:
	cmp	qword ptr [rbp - 0x10], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2121
	mov	dword ptr [rbp - 0x3c], 0
.label_2156:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_2135
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0x70], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x70]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 2
	cmp	edx, 0
	je	.label_2141
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	call	bitset_set
.label_2141:
	jmp	.label_2131
.label_2131:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_2156
.label_2135:
	jmp	.label_2159
.label_2121:
	mov	dword ptr [rbp - 0x3c], 0
.label_2184:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_2164
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0x78], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 2
	cmp	edx, 0
	je	.label_2171
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rsi, dword ptr [rbp - 0x3c]
	call	bitset_set
.label_2171:
	jmp	.label_2145
.label_2145:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_2184
.label_2164:
	jmp	.label_2159
.label_2159:
	jmp	.label_2188
.label_2188:
	jmp	.label_2007
.label_2118:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:label_2008
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_2017
	jmp	.label_2021
.label_2021:
	cmp	qword ptr [rbp - 0x10], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2023
	mov	dword ptr [rbp - 0x3c], 0
.label_2068:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_2036
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0x80], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x80]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x200
	cmp	edx, 0
	je	.label_2046
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	call	bitset_set
.label_2046:
	jmp	.label_2147
.label_2147:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_2068
.label_2036:
	jmp	.label_2074
.label_2023:
	mov	dword ptr [rbp - 0x3c], 0
.label_2108:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_2081
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0x88], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x88]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x200
	cmp	edx, 0
	je	.label_2091
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rsi, dword ptr [rbp - 0x3c]
	call	bitset_set
.label_2091:
	jmp	.label_2105
.label_2105:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_2108
.label_2081:
	jmp	.label_2074
.label_2074:
	jmp	.label_2116
.label_2116:
	jmp	.label_2076
.label_2017:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:label_1760
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_2124
	jmp	.label_2128
.label_2128:
	cmp	qword ptr [rbp - 0x10], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2130
	mov	dword ptr [rbp - 0x3c], 0
.label_2166:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_2139
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0x90], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x90]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x2000
	cmp	edx, 0
	je	.label_2148
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	call	bitset_set
.label_2148:
	jmp	.label_2165
.label_2165:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_2166
.label_2139:
	jmp	.label_2022
.label_2130:
	mov	dword ptr [rbp - 0x3c], 0
.label_2014:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_2173
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0x98], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x98]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x2000
	cmp	edx, 0
	je	.label_2181
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rsi, dword ptr [rbp - 0x3c]
	call	bitset_set
.label_2181:
	jmp	.label_2013
.label_2013:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_2014
.label_2173:
	jmp	.label_2022
.label_2022:
	jmp	.label_2025
.label_2025:
	jmp	.label_2027
.label_2124:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:label_2029
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_2034
	jmp	.label_2038
.label_2038:
	cmp	qword ptr [rbp - 0x10], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2039
	mov	dword ptr [rbp - 0x3c], 0
.label_2088:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_2052
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0xa0], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xa0]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x400
	cmp	edx, 0
	je	.label_2065
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	call	bitset_set
.label_2065:
	jmp	.label_2087
.label_2087:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_2088
.label_2052:
	jmp	.label_2092
.label_2039:
	mov	dword ptr [rbp - 0x3c], 0
.label_2125:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_2095
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0xa8], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xa8]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x400
	cmp	edx, 0
	je	.label_2109
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rsi, dword ptr [rbp - 0x3c]
	call	bitset_set
.label_2109:
	jmp	.label_2103
.label_2103:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_2125
.label_2095:
	jmp	.label_2092
.label_2092:
	jmp	.label_2134
.label_2134:
	jmp	.label_2049
.label_2034:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:label_2136
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_2140
	jmp	.label_2143
.label_2143:
	cmp	qword ptr [rbp - 0x10], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2144
	mov	dword ptr [rbp - 0x3c], 0
.label_2179:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_2154
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0xb0], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xb0]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x800
	cmp	edx, 0
	je	.label_2163
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	call	bitset_set
.label_2163:
	jmp	.label_2177
.label_2177:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_2179
.label_2154:
	jmp	.label_2040
.label_2144:
	mov	dword ptr [rbp - 0x3c], 0
.label_2150:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_2187
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0xb8], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xb8]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x800
	cmp	edx, 0
	je	.label_2015
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rsi, dword ptr [rbp - 0x3c]
	call	bitset_set
.label_2015:
	jmp	.label_2152
.label_2152:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_2150
.label_2187:
	jmp	.label_2040
.label_2040:
	jmp	.label_2042
.label_2042:
	jmp	.label_2044
.label_2140:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:label_2047
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_2053
	jmp	.label_2100
.label_2100:
	cmp	qword ptr [rbp - 0x10], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2059
	mov	dword ptr [rbp - 0x3c], 0
.label_2104:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_2071
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0xc0], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xc0]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x4000
	cmp	edx, 0
	je	.label_2057
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	call	bitset_set
.label_2057:
	jmp	.label_2102
.label_2102:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_2104
.label_2071:
	jmp	.label_2113
.label_2059:
	mov	dword ptr [rbp - 0x3c], 0
.label_2142:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_2117
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0xc8], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xc8]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x4000
	cmp	edx, 0
	je	.label_2126
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rsi, dword ptr [rbp - 0x3c]
	call	bitset_set
.label_2126:
	jmp	.label_2138
.label_2138:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_2142
.label_2117:
	jmp	.label_2113
.label_2113:
	jmp	.label_2146
.label_2146:
	jmp	.label_2114
.label_2053:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:label_2110
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_2155
	jmp	.label_2077
.label_2077:
	cmp	qword ptr [rbp - 0x10], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2157
	mov	dword ptr [rbp - 0x3c], 0
.label_2012:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_2169
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0xd0], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xd0]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x100
	cmp	edx, 0
	je	.label_2062
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	call	bitset_set
.label_2062:
	jmp	.label_2009
.label_2009:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_2012
.label_2169:
	jmp	.label_2019
.label_2157:
	mov	dword ptr [rbp - 0x3c], 0
.label_2055:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_2026
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0xd8], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xd8]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x100
	cmp	edx, 0
	je	.label_2035
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rsi, dword ptr [rbp - 0x3c]
	call	bitset_set
.label_2035:
	jmp	.label_2051
.label_2051:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_2055
.label_2026:
	jmp	.label_2019
.label_2019:
	jmp	.label_2129
.label_2129:
	jmp	.label_2064
.label_2155:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:label_2066
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_2072
	jmp	.label_2183
.label_2183:
	cmp	qword ptr [rbp - 0x10], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2080
	mov	dword ptr [rbp - 0x3c], 0
.label_2096:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_2101
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0xe0], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xe0]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 1
	cmp	edx, 0
	je	.label_2158
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	call	bitset_set
.label_2158:
	jmp	.label_2086
.label_2086:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_2096
.label_2101:
	jmp	.label_2127
.label_2080:
	mov	dword ptr [rbp - 0x3c], 0
.label_2153:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_2132
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0xe8], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xe8]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 1
	cmp	edx, 0
	je	.label_2024
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rsi, dword ptr [rbp - 0x3c]
	call	bitset_set
.label_2024:
	jmp	.label_2083
.label_2083:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_2153
.label_2132:
	jmp	.label_2127
.label_2127:
	jmp	.label_2160
.label_2160:
	jmp	.label_2107
.label_2072:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:label_2162
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_2168
	jmp	.label_2054
.label_2054:
	cmp	qword ptr [rbp - 0x10], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2032
	mov	dword ptr [rbp - 0x3c], 0
.label_2030:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_2180
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0xf0], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xf0]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x8000
	cmp	edx, 0
	je	.label_2006
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	call	bitset_set
.label_2006:
	jmp	.label_2073
.label_2073:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_2030
.label_2180:
	jmp	.label_2079
.label_2032:
	mov	dword ptr [rbp - 0x3c], 0
.label_2070:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_2186
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0xf8], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xf8]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x8000
	cmp	edx, 0
	je	.label_2075
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rsi, dword ptr [rbp - 0x3c]
	call	bitset_set
.label_2075:
	jmp	.label_2033
.label_2033:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_2070
.label_2186:
	jmp	.label_2079
.label_2079:
	jmp	.label_2048
.label_2048:
	jmp	.label_2082
.label_2168:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:label_2050
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_2090
	jmp	.label_2112
.label_2112:
	cmp	qword ptr [rbp - 0x10], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2122
	mov	dword ptr [rbp - 0x3c], 0
.label_2176:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_2106
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0x100], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x100]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 4
	cmp	edx, 0
	je	.label_2043
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	call	bitset_set
.label_2043:
	jmp	.label_2170
.label_2170:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_2176
.label_2106:
	jmp	.label_2020
.label_2122:
	mov	dword ptr [rbp - 0x3c], 0
.label_2167:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_2056
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0x108], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x108]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 4
	cmp	edx, 0
	je	.label_2151
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rsi, dword ptr [rbp - 0x3c]
	call	bitset_set
.label_2151:
	jmp	.label_2011
.label_2011:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_2167
.label_2056:
	jmp	.label_2020
.label_2020:
	jmp	.label_2172
.label_2172:
	jmp	.label_2028
.label_2090:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:label_2174
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_2178
	jmp	.label_2182
.label_2182:
	cmp	qword ptr [rbp - 0x10], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2185
	mov	dword ptr [rbp - 0x3c], 0
.label_2016:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_2119
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0x110], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x110]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x1000
	cmp	edx, 0
	je	.label_2099
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	call	bitset_set
.label_2099:
	jmp	.label_2045
.label_2045:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_2016
.label_2119:
	jmp	.label_2078
.label_2185:
	mov	dword ptr [rbp - 0x3c], 0
.label_2089:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_2058
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0x118], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x118]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x1000
	cmp	edx, 0
	je	.label_2161
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rsi, dword ptr [rbp - 0x3c]
	call	bitset_set
.label_2161:
	jmp	.label_2069
.label_2069:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_2089
.label_2058:
	jmp	.label_2078
.label_2078:
	jmp	.label_2093
.label_2093:
	jmp	.label_2137
.label_2178:
	mov	dword ptr [rbp - 4], 4
	jmp	.label_2098
.label_2137:
	jmp	.label_2028
.label_2028:
	jmp	.label_2082
.label_2082:
	jmp	.label_2107
.label_2107:
	jmp	.label_2064
.label_2064:
	jmp	.label_2114
.label_2114:
	jmp	.label_2044
.label_2044:
	jmp	.label_2049
.label_2049:
	jmp	.label_2027
.label_2027:
	jmp	.label_2076
.label_2076:
	jmp	.label_2007
.label_2007:
	jmp	.label_2123
.label_2123:
	mov	dword ptr [rbp - 4], 0
.label_2098:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x120
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x416f40

	.globl bitset_not
	.type bitset_not, @function
bitset_not:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], 0
.label_2189:
	cmp	dword ptr [rbp - 0xc], 4
	jge	.label_2190
	movsxd	rax, dword ptr [rbp - 0xc]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	xor	rax, 0xffffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0xc]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + rcx*8], rax
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_2189
.label_2190:
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x416f90

	.globl bitset_mask
	.type bitset_mask, @function
bitset_mask:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], 0
.label_2192:
	cmp	dword ptr [rbp - 0x14], 4
	jge	.label_2191
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	movsxd	rcx, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 8]
	and	rax, qword ptr [rdx + rcx*8]
	mov	qword ptr [rdx + rcx*8], rax
	mov	eax, dword ptr [rbp - 0x14]
	add	eax, 1
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_2192
.label_2191:
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x416fe0

	.globl re_string_char_size_at
	.type re_string_char_size_at, @function
re_string_char_size_at:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	dword ptr [rsi + 0x90], 1
	jne	.label_2193
	mov	dword ptr [rbp - 4], 1
	jmp	.label_2198
.label_2193:
	mov	dword ptr [rbp - 0x1c], 1
.label_2196:
	mov	rax, qword ptr [rbp - 0x18]
	movsxd	rcx, dword ptr [rbp - 0x1c]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x30]
	jge	.label_2194
	mov	rax, qword ptr [rbp - 0x18]
	movsxd	rcx, dword ptr [rbp - 0x1c]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	je	.label_2195
	jmp	.label_2194
.label_2195:
	jmp	.label_2197
.label_2197:
	mov	eax, dword ptr [rbp - 0x1c]
	add	eax, 1
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_2196
.label_2194:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_2198:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417070

	.globl parse_bracket_symbol
	.type parse_bracket_symbol, @function
parse_bracket_symbol:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	al, byte ptr [rdx]
	mov	byte ptr [rbp - 0x22], al
	mov	dword ptr [rbp - 0x28], 0
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x68]
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rsi + 0x48]
	jg	.label_2209
	mov	dword ptr [rbp - 4], 7
	jmp	.label_2200
.label_2209:
	jmp	.label_2211
.label_2211:
	cmp	dword ptr [rbp - 0x28], 0x20
	jl	.label_2213
	mov	dword ptr [rbp - 4], 7
	jmp	.label_2200
.label_2213:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x1e
	jne	.label_2205
	mov	rdi, qword ptr [rbp - 0x18]
	call	re_string_fetch_byte_case
	mov	byte ptr [rbp - 0x21], al
	jmp	.label_2212
.label_2205:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax + 0x48]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rax + 0x48], rdx
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	sil, byte ptr [rax + rcx]
	mov	byte ptr [rbp - 0x21], sil
.label_2212:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x68]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x48]
	jg	.label_2207
	mov	dword ptr [rbp - 4], 7
	jmp	.label_2200
.label_2207:
	movzx	eax, byte ptr [rbp - 0x21]
	movzx	ecx, byte ptr [rbp - 0x22]
	cmp	eax, ecx
	jne	.label_2203
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 8]
	movzx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x5d
	jne	.label_2203
	jmp	.label_2214
.label_2203:
	mov	al, byte ptr [rbp - 0x21]
	movsxd	rcx, dword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 8]
	mov	byte ptr [rdx + rcx], al
	mov	eax, dword ptr [rbp - 0x28]
	add	eax, 1
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_2211
.label_2214:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax + 0x48]
	inc	rcx
	mov	qword ptr [rax + 0x48], rcx
	movsxd	rax, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x20]
	movzx	edx, byte ptr [rax + 8]
	mov	esi, edx
	sub	esi, 0x1a
	mov	dword ptr [rbp - 0x2c], edx
	mov	dword ptr [rbp - 0x30], esi
	je	.label_2204
	jmp	.label_2201
.label_2201:
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x1c
	mov	dword ptr [rbp - 0x34], eax
	je	.label_2202
	jmp	.label_2210
.label_2210:
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x1e
	mov	dword ptr [rbp - 0x38], eax
	je	.label_2208
	jmp	.label_2206
.label_2204:
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 3
	jmp	.label_2199
.label_2202:
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 2
	jmp	.label_2199
.label_2208:
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 4
	jmp	.label_2199
.label_2206:
	jmp	.label_2199
.label_2199:
	mov	dword ptr [rbp - 4], 0
.label_2200:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417240

	.globl re_string_fetch_byte_case
	.type re_string_fetch_byte_case, @function
re_string_fetch_byte_case:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	byte ptr [rdi + 0x8b], 0
	setne	al
	xor	al, 0xff
	and	al, 1
	movzx	ecx, al
	movsxd	rdi, ecx
	cmp	rdi, 0
	je	.label_2215
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x48]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rax + 0x48], rdx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	sil, byte ptr [rax + rcx]
	mov	byte ptr [rbp - 1], sil
	jmp	.label_2216
.label_2215:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax + 0x8c], 0
	je	.label_2218
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x30]
	je	.label_2217
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_2217
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x48]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rax + 0x48], rdx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	sil, byte ptr [rax + rcx]
	mov	byte ptr [rbp - 1], sil
	jmp	.label_2216
.label_2217:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	add	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x1c], edx
	mov	edx, dword ptr [rbp - 0x1c]
	and	edx, 0xffffff80
	cmp	edx, 0
	je	.label_2219
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x48]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rax + 0x48], rdx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	sil, byte ptr [rax + rcx]
	mov	byte ptr [rbp - 1], sil
	jmp	.label_2216
.label_2219:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rax + 0x48]
	call	re_string_char_size_at
	movsxd	rsi, eax
	mov	rdi, qword ptr [rbp - 0x10]
	add	rsi, qword ptr [rdi + 0x48]
	mov	qword ptr [rdi + 0x48], rsi
	mov	eax, dword ptr [rbp - 0x1c]
	mov	cl, al
	mov	byte ptr [rbp - 1], cl
	jmp	.label_2216
.label_2218:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rcx + 0x48]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rcx + 0x48], rsi
	add	rax, rdx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	mov	dil, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 1], dil
.label_2216:
	movzx	eax, byte ptr [rbp - 1]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4173d0

	.globl parse_byte
	.type parse_byte, @function
parse_byte:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	al, dil
	mov	byte ptr [rbp - 1], al
	mov	qword ptr [rbp - 0x10], rsi
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_2220
	movzx	eax, byte ptr [rbp - 1]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_2221
.label_2220:
	movzx	edi, byte ptr [rbp - 1]
	call	btowc
	mov	dword ptr [rbp - 0x14], eax
.label_2221:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417410

	.globl fetch_number
	.type fetch_number, @function
fetch_number:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], -1
.label_2229:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x20]
	call	fetch_token
	mov	rdx, qword ptr [rbp - 0x18]
	mov	al, byte ptr [rdx]
	mov	byte ptr [rbp - 0x29], al
	mov	rdx, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rdx + 8]
	and	ecx, 0xff
	cmp	ecx, 2
	sete	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2227
	mov	qword ptr [rbp - 8], -2
	jmp	.label_2230
.label_2227:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x18
	je	.label_2232
	movzx	eax, byte ptr [rbp - 0x29]
	cmp	eax, 0x2c
	jne	.label_2224
.label_2232:
	jmp	.label_2228
.label_2224:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 1
	jne	.label_2222
	movzx	eax, byte ptr [rbp - 0x29]
	cmp	eax, 0x30
	jl	.label_2222
	mov	eax, 0x39
	movzx	ecx, byte ptr [rbp - 0x29]
	cmp	eax, ecx
	jl	.label_2222
	cmp	qword ptr [rbp - 0x28], -2
	jne	.label_2225
.label_2222:
	mov	rax, -2
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_2234
.label_2225:
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_2231
	movzx	eax, byte ptr [rbp - 0x29]
	sub	eax, 0x30
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x40], rcx
	jmp	.label_2233
.label_2231:
	mov	eax, 0x8000
	mov	ecx, eax
	imul	rdx, qword ptr [rbp - 0x28], 0xa
	movzx	eax, byte ptr [rbp - 0x29]
	mov	esi, eax
	add	rdx, rsi
	sub	rdx, 0x30
	cmp	rcx, rdx
	jge	.label_2223
	mov	eax, 0x8000
	mov	ecx, eax
	mov	qword ptr [rbp - 0x48], rcx
	jmp	.label_2226
.label_2223:
	imul	rax, qword ptr [rbp - 0x28], 0xa
	movzx	ecx, byte ptr [rbp - 0x29]
	mov	edx, ecx
	add	rax, rdx
	sub	rax, 0x30
	mov	qword ptr [rbp - 0x48], rax
.label_2226:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x40], rax
.label_2233:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x38], rax
.label_2234:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2229
.label_2228:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_2230:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417590

	.globl duplicate_tree
	.type duplicate_tree, @function
duplicate_tree:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	lea	rax, [rbp - 0x28]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rax
.label_2240:
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, 0x28
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x48], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x48]
	call	create_token_tree
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	jne	.label_2242
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2237
.label_2242:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	edx, dword ptr [rax + 0x30]
	and	edx, 0xfffbffff
	or	edx, 0x40000
	mov	dword ptr [rax + 0x30], edx
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 8], 0
	je	.label_2235
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 8
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2236
.label_2235:
	mov	qword ptr [rbp - 0x40], 0
.label_2241:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	rcx, qword ptr [rbp - 0x40]
	mov	byte ptr [rbp - 0x49], al
	je	.label_2238
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x10], 0
	sete	cl
	mov	byte ptr [rbp - 0x49], cl
.label_2238:
	mov	al, byte ptr [rbp - 0x49]
	test	al, 1
	jne	.label_2239
	jmp	.label_2243
.label_2239:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_2244
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2237
.label_2244:
	jmp	.label_2241
.label_2243:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x30], rax
.label_2236:
	jmp	.label_2240
.label_2237:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417700

	.globl mark_opt_subexp
	.type mark_opt_subexp, @function
mark_opt_subexp:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rsi + 0x30]
	and	eax, 0xff
	cmp	eax, 0x11
	jne	.label_2245
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_2245
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xfff7ffff
	or	ecx, 0x80000
	mov	dword ptr [rax + 0x30], ecx
.label_2245:
	xor	eax, eax
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417760

	.globl preorder
	.type preorder, @function
preorder:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rdx
.label_2251:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	call	rax
	mov	dword ptr [rbp - 0x2c], eax
	cmp	dword ptr [rbp - 0x2c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_2250
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2249
.label_2250:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax + 8], 0
	je	.label_2252
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2246
.label_2252:
	mov	qword ptr [rbp - 0x38], 0
.label_2253:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	rcx, qword ptr [rbp - 0x38]
	mov	byte ptr [rbp - 0x39], al
	je	.label_2254
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax + 0x10], 0
	sete	cl
	mov	byte ptr [rbp - 0x39], cl
.label_2254:
	mov	al, byte ptr [rbp - 0x39]
	test	al, 1
	jne	.label_2248
	jmp	.label_2247
.label_2248:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_2255
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2249
.label_2255:
	jmp	.label_2253
.label_2247:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x28], rax
.label_2246:
	jmp	.label_2251
.label_2249:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417860

	.globl optimize_subexps
	.type optimize_subexps, @function
optimize_subexps:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rsi + 0x30]
	and	eax, 0xff
	cmp	eax, 4
	jne	.label_2256
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0xe0], 0
	je	.label_2256
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	edx, ecx
	mov	dword ptr [rbp - 0x1c], edx
	movsxd	rcx, dword ptr [rbp - 0x1c]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 0xe0]
	mov	rcx, qword ptr [rsi + rcx*8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	edx, ecx
	mov	ecx, edx
	shl	eax, cl
	movsxd	rsi, eax
	mov	rdi, qword ptr [rbp - 0x18]
	or	rsi, qword ptr [rdi + 0xa0]
	mov	qword ptr [rdi + 0xa0], rsi
	jmp	.label_2260
.label_2256:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xff
	cmp	ecx, 0x11
	jne	.label_2257
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	je	.label_2257
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xff
	cmp	ecx, 0x11
	jne	.label_2257
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax + 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	je	.label_2258
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rcx], rax
.label_2258:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0xe0]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0xe0]
	mov	qword ptr [rdx + rcx*8], rax
	cmp	qword ptr [rbp - 0x28], 0x40
	jge	.label_2259
	mov	eax, 1
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x30]
	shl	rdx, cl
	xor	rdx, 0xffffffffffffffff
	mov	rsi, qword ptr [rbp - 0x18]
	and	rdx, qword ptr [rsi + 0xa0]
	mov	qword ptr [rsi + 0xa0], rdx
.label_2259:
	jmp	.label_2257
.label_2257:
	jmp	.label_2260
.label_2260:
	xor	eax, eax
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4179f0

	.globl lower_subexps
	.type lower_subexps, @function
lower_subexps:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], 0
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rsi + 8], 0
	je	.label_2263
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xff
	cmp	ecx, 0x11
	jne	.label_2263
	lea	rdi, [rbp - 0x1c]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rax + 8]
	call	lower_subexp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	je	.label_2262
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rcx], rax
.label_2262:
	jmp	.label_2263
.label_2263:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	je	.label_2261
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xff
	cmp	ecx, 0x11
	jne	.label_2261
	lea	rdi, [rbp - 0x1c]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rax + 0x10]
	call	lower_subexp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	je	.label_2264
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	qword ptr [rcx], rax
.label_2264:
	jmp	.label_2261
.label_2261:
	mov	eax, dword ptr [rbp - 0x1c]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417af0

	.globl calc_first
	.type calc_first, @function
calc_first:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	eax, dword ptr [rsi + 0x30]
	and	eax, 0xff
	cmp	eax, 0x10
	jne	.label_2265
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax + 0x38]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x38], rax
	jmp	.label_2268
.label_2265:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x18], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax + 0x28]
	mov	rdx, qword ptr [rax + 0x30]
	call	re_dfa_add_node
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x38], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x38], -1
	sete	r8b
	and	r8b, 1
	movzx	r9d, r8b
	movsxd	rax, r9d
	cmp	rax, 0
	je	.label_2269
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2267
.label_2269:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xff
	cmp	ecx, 0xc
	jne	.label_2266
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 0x28]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdx, qword ptr [rbp - 0x20]
	shl	rax, 4
	add	rax, qword ptr [rdx]
	mov	esi, dword ptr [rax + 8]
	and	ecx, 0x3ff
	shl	ecx, 8
	and	esi, 0xfffc00ff
	or	esi, ecx
	mov	dword ptr [rax + 8], esi
.label_2266:
	jmp	.label_2268
.label_2268:
	mov	dword ptr [rbp - 4], 0
.label_2267:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417c00

	.globl calc_next
	.type calc_next, @function
calc_next:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	movzx	eax, byte ptr [rsi + 0x30]
	mov	ecx, eax
	sub	ecx, 0xb
	mov	dword ptr [rbp - 0x14], eax
	mov	dword ptr [rbp - 0x18], ecx
	je	.label_2270
	jmp	.label_2271
.label_2271:
	mov	eax, dword ptr [rbp - 0x14]
	sub	eax, 0x10
	mov	dword ptr [rbp - 0x1c], eax
	je	.label_2273
	jmp	.label_2276
.label_2270:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rcx + 0x20], rax
	jmp	.label_2274
.label_2273:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rcx + 0x20], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	qword ptr [rcx + 0x20], rax
	jmp	.label_2274
.label_2276:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	je	.label_2275
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rcx + 0x20], rax
.label_2275:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	je	.label_2272
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	qword ptr [rcx + 0x20], rax
.label_2272:
	jmp	.label_2274
.label_2274:
	xor	eax, eax
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417cd0

	.globl link_nfa_nodes
	.type link_nfa_nodes, @function
link_nfa_nodes:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x38]
	mov	qword ptr [rbp - 0x20], rsi
	mov	dword ptr [rbp - 0x24], 0
	mov	rsi, qword ptr [rbp - 0x10]
	movzx	eax, byte ptr [rsi + 0x30]
	add	eax, -2
	mov	esi, eax
	sub	eax, 0xe
	mov	qword ptr [rbp - 0x40], rsi
	mov	dword ptr [rbp - 0x44], eax
	ja	.label_2282
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_2296]]
	jmp	rcx
.label_3881:
	jmp	.label_2284
.label_3877:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x20], 0
	jne	.label_2288
	jmp	.label_2294
.label_2288:
	movabs	rdi, OFFSET FLAT:label_2297
	movabs	rsi, OFFSET FLAT:label_1853
	mov	edx, 0x59f
	movabs	rcx, OFFSET FLAT:label_2278
	call	__assert_fail
.label_2294:
	jmp	.label_2284
.label_3880:
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax + 0xb0]
	and	cl, 0xfe
	or	cl, 1
	mov	byte ptr [rax + 0xb0], cl
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	je	.label_2289
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax + 0x18]
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2283
.label_2289:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [rbp - 0x30], rax
.label_2283:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	je	.label_2286
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax + 0x18]
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_2281
.label_2286:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [rbp - 0x38], rax
.label_2281:
	cmp	qword ptr [rbp - 0x30], -1
	jle	.label_2291
	jmp	.label_2295
.label_2291:
	movabs	rdi, OFFSET FLAT:label_2277
	movabs	rsi, OFFSET FLAT:label_1853
	mov	edx, 0x5af
	movabs	rcx, OFFSET FLAT:label_2278
	call	__assert_fail
.label_2295:
	cmp	qword ptr [rbp - 0x38], -1
	jle	.label_2287
	jmp	.label_2292
.label_2287:
	movabs	rdi, OFFSET FLAT:label_2279
	movabs	rsi, OFFSET FLAT:label_1853
	mov	edx, 0x5b0
	movabs	rcx, OFFSET FLAT:label_2278
	call	__assert_fail
.label_2292:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x20], 0x18
	add	rax, rcx
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	re_node_set_init_2
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_2284
.label_3879:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x20], 0x18
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x20]
	mov	rsi, qword ptr [rcx + 0x38]
	mov	rdi, rax
	call	re_node_set_init_1
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_2284
.label_3878:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rax + 0x30]
	and	esi, 0xff
	cmp	esi, 4
	jne	.label_2280
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x20], 0x18
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	rsi, qword ptr [rdx + rcx*8]
	mov	rdi, rax
	call	re_node_set_init_1
	mov	dword ptr [rbp - 0x24], eax
.label_2280:
	jmp	.label_2284
.label_2282:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xff
	and	ecx, 8
	cmp	ecx, 0
	jne	.label_2285
	jmp	.label_2290
.label_2285:
	movabs	rdi, OFFSET FLAT:label_2293
	movabs	rsi, OFFSET FLAT:label_1853
	mov	edx, 0x5c2
	movabs	rcx, OFFSET FLAT:label_2278
	call	__assert_fail
.label_2290:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
.label_2284:
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417f90

	.globl calc_eclosure
	.type calc_eclosure, @function
calc_eclosure:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	byte ptr [rbp - 0x19], 0
	mov	qword ptr [rbp - 0x18], 0
.label_2301:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x10]
	jne	.label_2302
	test	byte ptr [rbp - 0x19], 1
	jne	.label_2306
	jmp	.label_2300
.label_2306:
	mov	byte ptr [rbp - 0x19], 0
	mov	qword ptr [rbp - 0x18], 0
.label_2302:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x30]
	cmp	qword ptr [rax + 8], 0
	je	.label_2304
	jmp	.label_2298
.label_2304:
	lea	rdi, [rbp - 0x38]
	mov	ecx, 1
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	calc_eclosure_iter
	mov	dword ptr [rbp - 0x20], eax
	cmp	dword ptr [rbp - 0x20], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_2303
	mov	eax, dword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2299
.label_2303:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x30]
	cmp	qword ptr [rax + 8], 0
	jne	.label_2305
	mov	byte ptr [rbp - 0x19], 1
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, rax
	call	free
.label_2305:
	jmp	.label_2298
.label_2298:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_2301
.label_2300:
	mov	dword ptr [rbp - 4], 0
.label_2299:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x418090

	.globl calc_inveclosure
	.type calc_inveclosure, @function
calc_inveclosure:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x20], 0
.label_2316:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x10]
	jae	.label_2309
	xor	esi, esi
	mov	eax, 0x18
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x38]
	imul	rdi, qword ptr [rbp - 0x20], 0x18
	add	rcx, rdi
	mov	rdi, rcx
	call	memset
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_2316
.label_2309:
	mov	qword ptr [rbp - 0x18], 0
.label_2315:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x10]
	jae	.label_2307
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x30]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0x20], 0
.label_2314:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x10]
	imul	rcx, rcx, 0x18
	add	rcx, qword ptr [rdx + 0x30]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2312
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x30]
	imul	rcx, qword ptr [rdx + rcx*8], 0x18
	add	rax, rcx
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	re_node_set_insert_last
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	mov	al, byte ptr [rbp - 0x21]
	xor	al, 0xff
	and	al, 1
	movzx	r8d, al
	movsxd	rcx, r8d
	cmp	rcx, 0
	je	.label_2311
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2310
.label_2311:
	jmp	.label_2313
.label_2313:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_2314
.label_2312:
	jmp	.label_2308
.label_2308:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_2315
.label_2307:
	mov	dword ptr [rbp - 4], 0
.label_2310:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4181d0

	.globl lower_subexp
	.type lower_subexp, @function
lower_subexp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rdx + 8]
	mov	qword ptr [rbp - 0x30], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	al, byte ptr [rdx + 0x38]
	shr	al, 4
	and	al, 1
	movzx	ecx, al
	cmp	ecx, 0
	je	.label_2320
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 8], 0
	je	.label_2320
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x28], 0x40
	jge	.label_2318
	mov	eax, 1
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rdx + 0xa0]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	qword ptr [rbp - 0x58], rcx
	mov	rcx, rsi
	mov	rsi, qword ptr [rbp - 0x58]
	shl	rsi, cl
	and	rdx, rsi
	cmp	rdx, 0
	jne	.label_2320
.label_2318:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2317
.label_2320:
	xor	eax, eax
	mov	ecx, eax
	mov	eax, 8
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, rcx
	mov	rdx, rcx
	mov	ecx, eax
	call	create_tree
	xor	ecx, ecx
	mov	edx, ecx
	mov	ecx, 9
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, rdx
	call	create_tree
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_2321
	mov	ecx, 0x10
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x40]
	call	create_tree
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2322
.label_2321:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x60], rax
.label_2322:
	mov	rax, qword ptr [rbp - 0x60]
	mov	ecx, 0x10
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x48]
	call	create_tree
	mov	r8b, 1
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	mov	byte ptr [rbp - 0x61], r8b
	je	.label_2319
	mov	al, 1
	cmp	qword ptr [rbp - 0x48], 0
	mov	byte ptr [rbp - 0x61], al
	je	.label_2319
	mov	al, 1
	cmp	qword ptr [rbp - 0x38], 0
	mov	byte ptr [rbp - 0x61], al
	je	.label_2319
	cmp	qword ptr [rbp - 0x40], 0
	sete	al
	mov	byte ptr [rbp - 0x61], al
.label_2319:
	mov	al, byte ptr [rbp - 0x61]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2323
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2317
.label_2323:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rcx + 0x28], rax
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rax + 0x30]
	shr	edx, 0x13
	and	edx, 1
	mov	rax, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rax + 0x30]
	and	edx, 1
	mov	edi, edx
	shl	edi, 0x13
	and	esi, 0xfff7ffff
	or	esi, edi
	mov	dword ptr [rax + 0x30], esi
	mov	rax, qword ptr [rbp - 0x38]
	mov	esi, dword ptr [rax + 0x30]
	and	edx, 1
	shl	edx, 0x13
	and	esi, 0xfff7ffff
	or	esi, edx
	mov	dword ptr [rax + 0x30], esi
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
.label_2317:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4183e0

	.globl re_dfa_add_node
	.type re_dfa_add_node, @function
re_dfa_add_node:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x10], rdx
	mov	qword ptr [rbp - 0x20], rdi
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	rdx, qword ptr [rsi + 8]
	setae	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2329
	movabs	rax, 0xaaaaaaaaaaaaaaa
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 8]
	shl	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x58], 0x18
	cmp	rax, qword ptr [rbp - 0x28]
	setb	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_2327
	mov	qword ptr [rbp - 8], -1
	jmp	.label_2326
.label_2327:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x28]
	shl	rcx, 4
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_2331
	mov	qword ptr [rbp - 8], -1
	jmp	.label_2326
.label_2331:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	shl	rcx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	shl	rcx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x28]
	imul	rsi, qword ptr [rbp - 0x28], 0x18
	mov	rdi, rax
	call	realloc
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x30]
	imul	rsi, qword ptr [rbp - 0x28], 0x18
	mov	rdi, rax
	call	realloc
	mov	dl, 1
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x30], 0
	mov	byte ptr [rbp - 0x59], dl
	je	.label_2325
	mov	al, 1
	cmp	qword ptr [rbp - 0x38], 0
	mov	byte ptr [rbp - 0x59], al
	je	.label_2325
	mov	al, 1
	cmp	qword ptr [rbp - 0x40], 0
	mov	byte ptr [rbp - 0x59], al
	je	.label_2325
	cmp	qword ptr [rbp - 0x48], 0
	sete	al
	mov	byte ptr [rbp - 0x59], al
.label_2325:
	mov	al, byte ptr [rbp - 0x59]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2328
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, rax
	call	free
	mov	qword ptr [rbp - 8], -1
	jmp	.label_2326
.label_2328:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x20], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 8], rax
.label_2329:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rax], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], rcx
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xfffc00ff
	mov	dword ptr [rax + 8], edx
	mov	edx, dword ptr [rbp - 0x10]
	and	edx, 0xff
	cmp	edx, 5
	jne	.label_2330
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	dword ptr [rcx + 0xb4], 1
	mov	byte ptr [rbp - 0x5a], al
	jg	.label_2324
.label_2330:
	mov	eax, dword ptr [rbp - 0x10]
	and	eax, 0xff
	cmp	eax, 6
	sete	cl
	mov	byte ptr [rbp - 0x5a], cl
.label_2324:
	mov	al, byte ptr [rbp - 0x5a]
	xor	ecx, ecx
	mov	edx, 0x18
	mov	esi, edx
	and	al, 1
	movzx	edx, al
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rdi + 0x10]
	mov	r8, qword ptr [rbp - 0x20]
	shl	rdi, 4
	add	rdi, qword ptr [r8]
	mov	r9d, dword ptr [rdi + 8]
	and	edx, 1
	shl	edx, 0x14
	and	r9d, 0xffefffff
	or	r9d, edx
	mov	dword ptr [rdi + 8], r9d
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rdi + 0x10]
	mov	r8, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [r8 + 0x18]
	mov	qword ptr [r8 + rdi*8], -1
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rdi + 0x28]
	mov	r8, qword ptr [rbp - 0x20]
	imul	r8, qword ptr [r8 + 0x10], 0x18
	add	rdi, r8
	mov	qword ptr [rbp - 0x68], rsi
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x68]
	mov	dword ptr [rbp - 0x6c], ecx
	call	memset
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rdx + 0x30]
	mov	rdi, qword ptr [rbp - 0x20]
	imul	rdi, qword ptr [rdi + 0x10], 0x18
	add	rdx, rdi
	mov	rdi, rdx
	mov	esi, dword ptr [rbp - 0x6c]
	mov	rdx, qword ptr [rbp - 0x68]
	call	memset
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rdx + 0x10]
	mov	r8, rdi
	add	r8, 1
	mov	qword ptr [rdx + 0x10], r8
	mov	qword ptr [rbp - 8], rdi
.label_2326:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x418730

	.globl re_node_set_init_2
	.type re_node_set_init_2, @function
re_node_set_init_2:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx], 2
	mov	rdi, rcx
	call	malloc
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	sete	r8b
	and	r8b, 1
	movzx	r9d, r8b
	movsxd	rax, r9d
	cmp	rax, 0
	je	.label_2337
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2334
.label_2337:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jne	.label_2333
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 1
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	qword ptr [rcx], rax
	jmp	.label_2332
.label_2333:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 2
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jge	.label_2336
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	qword ptr [rcx + 8], rax
	jmp	.label_2335
.label_2336:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	qword ptr [rcx + 8], rax
.label_2335:
	jmp	.label_2332
.label_2332:
	mov	dword ptr [rbp - 4], 0
.label_2334:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x418840

	.globl re_node_set_init_1
	.type re_node_set_init_1, @function
re_node_set_init_1:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	eax, 8
	mov	ecx, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi], 1
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 8], 1
	mov	rdi, rcx
	call	malloc
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_2339
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], 0
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2338
.label_2339:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_2338:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4188e0

	.globl calc_eclosure_iter
	.type calc_eclosure_iter, @function
calc_eclosure_iter:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	al, cl
	lea	r8, [rbp - 0x48]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	mov	byte ptr [rbp - 0x4a], 0
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x18]
	imul	rdx, rdx, 0x18
	add	rdx, qword ptr [rsi + 0x28]
	mov	rdx, qword ptr [rdx + 8]
	add	rdx, 1
	mov	rdi, r8
	mov	rsi, rdx
	call	re_node_set_alloc
	mov	dword ptr [rbp - 0x28], eax
	cmp	dword ptr [rbp - 0x28], 0
	setne	r9b
	and	r9b, 1
	movzx	eax, r9b
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_2352
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2342
.label_2352:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x30]
	mov	qword ptr [rax + 8], -1
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	shr	edx, 8
	and	edx, 0x3ff
	cmp	edx, 0
	je	.label_2346
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	cmp	qword ptr [rax + 8], 0
	je	.label_2346
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	shr	edx, 0x12
	and	edx, 1
	cmp	edx, 0
	jne	.label_2346
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x18]
	shl	rax, 4
	add	rax, qword ptr [r8]
	mov	r9d, dword ptr [rax + 8]
	shr	r9d, 8
	and	r9d, 0x3ff
	mov	r8d, r9d
	call	duplicate_node_closure
	mov	dword ptr [rbp - 0x28], eax
	cmp	dword ptr [rbp - 0x28], 0
	setne	r10b
	and	r10b, 1
	movzx	eax, r10b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2347
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2342
.label_2347:
	jmp	.label_2346
.label_2346:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	and	edx, 8
	cmp	edx, 0
	je	.label_2340
	mov	qword ptr [rbp - 0x30], 0
.label_2355:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	imul	rcx, rcx, 0x18
	add	rcx, qword ptr [rdx + 0x28]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2354
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	imul	rcx, rcx, 0x18
	add	rcx, qword ptr [rdx + 0x28]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x30]
	cmp	qword ptr [rax + 8], -1
	jne	.label_2345
	mov	byte ptr [rbp - 0x4a], 1
	jmp	.label_2343
.label_2345:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x30]
	cmp	qword ptr [rax + 8], 0
	jne	.label_2350
	lea	rdi, [rbp - 0x68]
	xor	ecx, ecx
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x70]
	call	calc_eclosure_iter
	mov	dword ptr [rbp - 0x28], eax
	cmp	dword ptr [rbp - 0x28], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_2356
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2342
.label_2356:
	jmp	.label_2353
.label_2350:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x30]
	mov	rcx, qword ptr [rax]
	mov	qword ptr [rbp - 0x68], rcx
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x60], rcx
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x58], rax
.label_2353:
	lea	rdi, [rbp - 0x48]
	lea	rsi, [rbp - 0x68]
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x28], eax
	cmp	dword ptr [rbp - 0x28], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_2351
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2342
.label_2351:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x30]
	cmp	qword ptr [rax + 8], 0
	jne	.label_2344
	mov	byte ptr [rbp - 0x4a], 1
	mov	rax, qword ptr [rbp - 0x58]
	mov	rdi, rax
	call	free
.label_2344:
	jmp	.label_2343
.label_2343:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2355
.label_2354:
	jmp	.label_2340
.label_2340:
	lea	rdi, [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x20]
	call	re_node_set_insert
	and	al, 1
	mov	byte ptr [rbp - 0x49], al
	mov	al, byte ptr [rbp - 0x49]
	xor	al, 0xff
	and	al, 1
	movzx	ecx, al
	movsxd	rsi, ecx
	cmp	rsi, 0
	je	.label_2349
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2342
.label_2349:
	test	byte ptr [rbp - 0x4a], 1
	je	.label_2341
	test	byte ptr [rbp - 0x21], 1
	jne	.label_2341
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x30]
	mov	qword ptr [rax + 8], 0
	jmp	.label_2348
.label_2341:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x30]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rax], rcx
	mov	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rax + 8], rcx
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 0x10], rcx
.label_2348:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rax], rcx
	mov	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rax + 8], rcx
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 0x10], rcx
	mov	dword ptr [rbp - 4], 0
.label_2342:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x418c90

	.globl re_node_set_alloc
	.type re_node_set_alloc, @function
re_node_set_alloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 8], 0
	mov	rsi, qword ptr [rbp - 0x18]
	shl	rsi, 3
	mov	rdi, rsi
	call	malloc
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_2358
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2357
.label_2358:
	mov	dword ptr [rbp - 4], 0
.label_2357:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x418d10

	.globl duplicate_node_closure
	.type duplicate_node_closure, @function
duplicate_node_closure:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	dword ptr [rbp - 0x2c], r8d
	mov	r8d, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 0x48], r8d
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x38], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x40], rcx
.label_2380:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	cmp	edx, 4
	jne	.label_2372
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x40], 0x18
	add	rax, rcx
	mov	qword ptr [rax + 8], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	edx, dword ptr [rbp - 0x48]
	call	duplicate_node
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], -1
	sete	r8b
	and	r8b, 1
	movzx	edx, r8b
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_2364
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2359
.label_2364:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x40], 0x18
	add	rax, rcx
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdi, rax
	call	re_node_set_insert
	and	al, 1
	mov	byte ptr [rbp - 0x41], al
	mov	al, byte ptr [rbp - 0x41]
	xor	al, 0xff
	and	al, 1
	movzx	r8d, al
	movsxd	rcx, r8d
	cmp	rcx, 0
	je	.label_2361
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2359
.label_2361:
	jmp	.label_2368
.label_2372:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	cmp	qword ptr [rax + 8], 0
	jne	.label_2370
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_2375
.label_2370:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	cmp	qword ptr [rax + 8], 1
	jne	.label_2376
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x40], 0x18
	add	rax, rcx
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_2362
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x38]
	je	.label_2362
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x40], 0x18
	add	rax, rcx
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdi, rax
	call	re_node_set_insert
	and	al, 1
	mov	byte ptr [rbp - 0x41], al
	mov	al, byte ptr [rbp - 0x41]
	xor	al, 0xff
	and	al, 1
	movzx	edx, al
	movsxd	rcx, edx
	cmp	rcx, 0
	je	.label_2379
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2359
.label_2379:
	jmp	.label_2375
.label_2362:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	shr	edx, 8
	and	edx, 0x3ff
	or	edx, dword ptr [rbp - 0x48]
	mov	dword ptr [rbp - 0x48], edx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	edx, dword ptr [rbp - 0x48]
	call	duplicate_node
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], -1
	sete	r8b
	and	r8b, 1
	movzx	edx, r8b
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_2378
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2359
.label_2378:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x40], 0x18
	add	rax, rcx
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdi, rax
	call	re_node_set_insert
	and	al, 1
	mov	byte ptr [rbp - 0x41], al
	mov	al, byte ptr [rbp - 0x41]
	xor	al, 0xff
	and	al, 1
	movzx	edx, al
	movsxd	rcx, edx
	cmp	rcx, 0
	je	.label_2365
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2359
.label_2365:
	jmp	.label_2373
.label_2376:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x40], 0x18
	add	rax, rcx
	mov	qword ptr [rax + 8], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	edx, dword ptr [rbp - 0x48]
	call	search_duplicated_node
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], -1
	jne	.label_2363
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	edx, dword ptr [rbp - 0x48]
	call	duplicate_node
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], -1
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_2369
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2359
.label_2369:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x40], 0x18
	add	rax, rcx
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdi, rax
	call	re_node_set_insert
	and	al, 1
	mov	byte ptr [rbp - 0x41], al
	mov	al, byte ptr [rbp - 0x41]
	xor	al, 0xff
	and	al, 1
	movzx	edx, al
	movsxd	rcx, edx
	cmp	rcx, 0
	je	.label_2381
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2359
.label_2381:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8d, dword ptr [rbp - 0x48]
	call	duplicate_node_closure
	mov	dword ptr [rbp - 0x5c], eax
	cmp	dword ptr [rbp - 0x5c], 0
	setne	r9b
	and	r9b, 1
	movzx	eax, r9b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2371
	mov	eax, dword ptr [rbp - 0x5c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2359
.label_2371:
	jmp	.label_2367
.label_2363:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x40], 0x18
	add	rax, rcx
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdi, rax
	call	re_node_set_insert
	and	al, 1
	mov	byte ptr [rbp - 0x41], al
	mov	al, byte ptr [rbp - 0x41]
	xor	al, 0xff
	and	al, 1
	movzx	edx, al
	movsxd	rcx, edx
	cmp	rcx, 0
	je	.label_2360
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2359
.label_2360:
	jmp	.label_2367
.label_2367:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x50], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	edx, dword ptr [rbp - 0x48]
	call	duplicate_node
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], -1
	sete	r8b
	and	r8b, 1
	movzx	edx, r8b
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_2374
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2359
.label_2374:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x40], 0x18
	add	rax, rcx
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdi, rax
	call	re_node_set_insert
	and	al, 1
	mov	byte ptr [rbp - 0x41], al
	mov	al, byte ptr [rbp - 0x41]
	xor	al, 0xff
	and	al, 1
	movzx	edx, al
	movsxd	rcx, edx
	cmp	rcx, 0
	je	.label_2366
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2359
.label_2366:
	jmp	.label_2373
.label_2373:
	jmp	.label_2377
.label_2377:
	jmp	.label_2368
.label_2368:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_2380
.label_2375:
	mov	dword ptr [rbp - 4], 0
.label_2359:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419210

	.globl re_node_set_merge
	.type re_node_set_merge, @function
re_node_set_merge:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_2394
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	jne	.label_2397
.label_2394:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2400
.label_2397:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 8]
	shl	rcx, 1
	mov	rdx, qword ptr [rbp - 0x10]
	add	rcx, qword ptr [rdx + 8]
	cmp	rax, rcx
	jge	.label_2384
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rcx]
	shl	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x40]
	shl	rcx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_2391
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2400
.label_2391:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
.label_2384:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_2393
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 8]
	shl	rdx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	memcpy
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2400
.label_2393:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 8]
	shl	rcx, 1
	add	rax, rcx
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	sub	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	sub	rax, 1
	mov	qword ptr [rbp - 0x28], rax
.label_2403:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x20], 0
	mov	byte ptr [rbp - 0x49], cl
	jl	.label_2396
	cmp	qword ptr [rbp - 0x28], 0
	setge	al
	mov	byte ptr [rbp - 0x49], al
.label_2396:
	mov	al, byte ptr [rbp - 0x49]
	test	al, 1
	jne	.label_2389
	jmp	.label_2395
.label_2389:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x10]
	cmp	rax, qword ptr [rdx + rcx*8]
	jne	.label_2402
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, -1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2387
.label_2402:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x10]
	cmp	rax, qword ptr [rdx + rcx*8]
	jge	.label_2398
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x30], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	qword ptr [rdx + rcx*8 - 8], rax
	jmp	.label_2388
.label_2398:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, -1
	mov	qword ptr [rbp - 0x28], rax
.label_2388:
	jmp	.label_2387
.label_2387:
	jmp	.label_2403
.label_2395:
	cmp	qword ptr [rbp - 0x20], 0
	jl	.label_2385
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x30], rcx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x30]
	shl	rcx, 3
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, 1
	shl	rdx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	memcpy
.label_2385:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	sub	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 8]
	shl	rcx, 1
	add	rax, rcx
	sub	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_2401
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2400
.label_2401:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rcx + 8]
	mov	qword ptr [rcx + 8], rax
.label_2383:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	cmp	rax, qword ptr [rdx + rcx*8]
	jle	.label_2392
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsi, rdx
	add	rsi, -1
	mov	qword ptr [rbp - 0x38], rsi
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	qword ptr [rdx + rcx*8], rax
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_2382
	jmp	.label_2390
.label_2382:
	jmp	.label_2386
.label_2392:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, -1
	mov	qword ptr [rbp - 0x28], rax
	cmp	rax, 0
	jge	.label_2399
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x30]
	shl	rdx, 3
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x38]
	shl	rdx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	memcpy
	jmp	.label_2390
.label_2399:
	jmp	.label_2386
.label_2386:
	jmp	.label_2383
.label_2390:
	mov	dword ptr [rbp - 4], 0
.label_2400:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419620

	.globl re_node_set_insert
	.type re_node_set_insert, @function
re_node_set_insert:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rsi], 0
	jne	.label_2404
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	re_node_set_init_1
	cmp	eax, 0
	sete	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 1], cl
	jmp	.label_2405
.label_2404:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	jne	.label_2411
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 8]
	add	rcx, 1
	mov	qword ptr [rax + 8], rcx
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2405
.label_2411:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jne	.label_2406
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	shl	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	shl	rcx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_2410
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2405
.label_2410:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], rax
.label_2406:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	rax, qword ptr [rcx]
	jge	.label_2414
	mov	qword ptr [rbp - 0x20], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
.label_2409:
	cmp	qword ptr [rbp - 0x20], 0
	jle	.label_2408
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_2409
.label_2408:
	jmp	.label_2407
.label_2414:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
.label_2413:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, qword ptr [rbp - 0x18]
	jle	.label_2412
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_2413
.label_2412:
	jmp	.label_2407
.label_2407:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 8]
	add	rcx, 1
	mov	qword ptr [rax + 8], rcx
	mov	byte ptr [rbp - 1], 1
.label_2405:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419830

	.globl duplicate_node
	.type duplicate_node, @function
duplicate_node:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 8]
	shl	rsi, 4
	add	rsi, qword ptr [rax]
	mov	rax, qword ptr [rsi]
	mov	rdx, qword ptr [rsi + 8]
	mov	rsi, rax
	call	re_dfa_add_node
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], -1
	setne	cl
	and	cl, 1
	movzx	r8d, cl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_2415
	mov	eax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 8]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	mov	esi, dword ptr [rcx + 8]
	and	eax, 0x3ff
	shl	eax, 8
	and	esi, 0xfffc00ff
	or	esi, eax
	mov	dword ptr [rcx + 8], esi
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	mov	eax, dword ptr [rcx + 8]
	shr	eax, 8
	and	eax, 0x3ff
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 8]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	mov	esi, dword ptr [rcx + 8]
	shr	esi, 8
	and	esi, 0x3ff
	or	esi, eax
	mov	eax, dword ptr [rcx + 8]
	and	esi, 0x3ff
	shl	esi, 8
	and	eax, 0xfffc00ff
	or	eax, esi
	mov	dword ptr [rcx + 8], eax
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 8]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	mov	eax, dword ptr [rcx + 8]
	and	eax, 0xfffbffff
	or	eax, 0x40000
	mov	dword ptr [rcx + 8], eax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	qword ptr [rdi + rdx*8], rcx
.label_2415:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419940

	.globl search_duplicated_node
	.type search_duplicated_node, @function
search_duplicated_node:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x10]
	sub	rsi, 1
	mov	qword ptr [rbp - 0x28], rsi
.label_2420:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	shl	rdx, 4
	add	rdx, qword ptr [rsi]
	mov	eax, dword ptr [rdx + 8]
	shr	eax, 0x12
	and	eax, 1
	cmp	eax, 0
	mov	byte ptr [rbp - 0x29], cl
	je	.label_2422
	cmp	qword ptr [rbp - 0x28], 0
	setg	al
	mov	byte ptr [rbp - 0x29], al
.label_2422:
	mov	al, byte ptr [rbp - 0x29]
	test	al, 1
	jne	.label_2419
	jmp	.label_2421
.label_2419:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x20]
	cmp	rax, qword ptr [rdx + rcx*8]
	jne	.label_2416
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	mov	esi, dword ptr [rcx + 8]
	shr	esi, 8
	and	esi, 0x3ff
	cmp	eax, esi
	jne	.label_2416
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2418
.label_2416:
	jmp	.label_2417
.label_2417:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, -1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2420
.label_2421:
	mov	qword ptr [rbp - 8], -1
.label_2418:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419a20

	.globl re_node_set_insert_last
	.type re_node_set_insert_last, @function
re_node_set_insert_last:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rsi, qword ptr [rdi + 8]
	jne	.label_2423
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	add	rax, 1
	shl	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	shl	rcx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_2425
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2424
.label_2425:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], rax
.label_2423:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rcx + 8]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rcx + 8], rsi
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	qword ptr [rcx + rdx*8], rax
	mov	byte ptr [rbp - 1], 1
.label_2424:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419af0

	.globl re_node_set_init_copy
	.type re_node_set_init_copy, @function
re_node_set_init_copy:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	qword ptr [rsi + 8], 0
	jle	.label_2426
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	shl	rax, 3
	mov	rdi, rax
	call	malloc
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	sete	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_2427
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], 0
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2429
.label_2427:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 8]
	shl	rdx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	memcpy
	jmp	.label_2428
.label_2426:
	xor	esi, esi
	mov	eax, 0x18
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, rcx
	call	memset
.label_2428:
	mov	dword ptr [rbp - 4], 0
.label_2429:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419be0

	.globl re_node_set_contains
	.type re_node_set_contains, @function
re_node_set_contains:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rsi + 8], 0
	jg	.label_2430
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2437
.label_2430:
	mov	qword ptr [rbp - 0x20], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	sub	rax, 1
	mov	qword ptr [rbp - 0x28], rax
.label_2434:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_2431
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x28]
	shr	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, qword ptr [rbp - 0x18]
	jge	.label_2433
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_2436
.label_2433:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
.label_2436:
	jmp	.label_2434
.label_2431:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_2435
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_2432
.label_2435:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x38], rcx
	jmp	.label_2432
.label_2432:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 8], rax
.label_2437:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419cc0

	.globl re_acquire_state_context
	.type re_acquire_state_context, @function
re_acquire_state_context:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	dword ptr [rbp - 0x24], ecx
	mov	rdx, qword ptr [rbp - 0x20]
	cmp	qword ptr [rdx + 8], 0
	jne	.label_2438
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2439
.label_2438:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	esi, dword ptr [rbp - 0x24]
	call	calc_state_hash
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x40]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	and	rdi, qword ptr [rcx + 0x88]
	imul	rcx, rdi, 0x18
	add	rax, rcx
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x48], 0
.label_2442:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rcx]
	jge	.label_2444
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x30]
	jne	.label_2440
	mov	rax, qword ptr [rbp - 0x50]
	mov	cl, byte ptr [rax + 0x68]
	and	cl, 0xf
	movzx	edx, cl
	cmp	edx, dword ptr [rbp - 0x24]
	jne	.label_2440
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, qword ptr [rax + 0x50]
	mov	rsi, qword ptr [rbp - 0x20]
	call	re_node_set_compare
	test	al, 1
	jne	.label_2443
	jmp	.label_2440
.label_2443:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2439
.label_2440:
	jmp	.label_2441
.label_2441:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_2442
.label_2444:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rbp - 0x24]
	mov	rcx, qword ptr [rbp - 0x30]
	call	create_cd_newstate
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	sete	r8b
	and	r8b, 1
	movzx	edx, r8b
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_2445
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0xc
.label_2445:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 8], rax
.label_2439:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419e20

	.globl calc_state_hash
	.type calc_state_hash, @function
calc_state_hash:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	eax, esi
	add	rdi, rax
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], 0
.label_2446:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2447
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_2446
.label_2447:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419e90

	.globl re_node_set_compare
	.type re_node_set_compare, @function
re_node_set_compare:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_2448
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_2448
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	je	.label_2449
.label_2448:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2451
.label_2449:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
.label_2453:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -1
	mov	qword ptr [rbp - 0x20], rax
	cmp	rax, 0
	jl	.label_2452
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x10]
	cmp	rax, qword ptr [rdx + rcx*8]
	je	.label_2450
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2451
.label_2450:
	jmp	.label_2453
.label_2452:
	mov	byte ptr [rbp - 1], 1
.label_2451:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419f40

	.globl create_cd_newstate
	.type create_cd_newstate, @function
create_cd_newstate:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	eax, 0x70
	mov	r8d, eax
	mov	eax, 1
	mov	r9d, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x38], 0
	mov	rdi, r8
	mov	rsi, r9
	call	calloc
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	sete	r10b
	and	r10b, 1
	movzx	edx, r10b
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_2473
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2463
.label_2473:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 8
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	re_node_set_init_copy
	mov	dword ptr [rbp - 0x3c], eax
	cmp	dword ptr [rbp - 0x3c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_2468
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, rax
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2463
.label_2468:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	dl, al
	mov	sil, byte ptr [rcx + 0x68]
	and	dl, 0xf
	and	sil, 0xf0
	or	sil, dl
	mov	byte ptr [rcx + 0x68], sil
	mov	rcx, qword ptr [rbp - 0x48]
	add	rcx, 8
	mov	rdi, qword ptr [rbp - 0x48]
	mov	qword ptr [rdi + 0x50], rcx
	mov	qword ptr [rbp - 0x30], 0
.label_2470:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2464
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rcx, qword ptr [rdx + rcx*8]
	shl	rcx, 4
	add	rax, rcx
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	esi, dword ptr [rax + 8]
	and	esi, 0xff
	mov	dword ptr [rbp - 0x54], esi
	mov	rax, qword ptr [rbp - 0x50]
	mov	esi, dword ptr [rax + 8]
	shr	esi, 8
	and	esi, 0x3ff
	mov	dword ptr [rbp - 0x58], esi
	cmp	dword ptr [rbp - 0x54], 1
	jne	.label_2456
	cmp	dword ptr [rbp - 0x58], 0
	jne	.label_2456
	jmp	.label_2460
.label_2456:
	mov	rax, qword ptr [rbp - 0x50]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 0x14
	and	ecx, 1
	mov	rax, qword ptr [rbp - 0x48]
	mov	dl, byte ptr [rax + 0x68]
	shr	dl, 5
	and	dl, 1
	movzx	esi, dl
	or	esi, ecx
	mov	dl, sil
	mov	dil, byte ptr [rax + 0x68]
	and	dl, 1
	shl	dl, 5
	and	dil, 0xdf
	or	dil, dl
	mov	byte ptr [rax + 0x68], dil
	cmp	dword ptr [rbp - 0x54], 2
	jne	.label_2462
	mov	rax, qword ptr [rbp - 0x48]
	mov	cl, byte ptr [rax + 0x68]
	and	cl, 0xef
	or	cl, 0x10
	mov	byte ptr [rax + 0x68], cl
	jmp	.label_2455
.label_2462:
	cmp	dword ptr [rbp - 0x54], 4
	jne	.label_2471
	mov	rax, qword ptr [rbp - 0x48]
	mov	cl, byte ptr [rax + 0x68]
	and	cl, 0xbf
	or	cl, 0x40
	mov	byte ptr [rax + 0x68], cl
.label_2471:
	jmp	.label_2455
.label_2455:
	cmp	dword ptr [rbp - 0x58], 0
	je	.label_2458
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x50]
	mov	rcx, qword ptr [rbp - 0x48]
	add	rcx, 8
	cmp	rax, rcx
	jne	.label_2461
	mov	eax, 0x18
	mov	edi, eax
	call	malloc
	mov	rdi, qword ptr [rbp - 0x48]
	mov	qword ptr [rdi + 0x50], rax
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax + 0x50], 0
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_2467
	mov	rdi, qword ptr [rbp - 0x48]
	call	free_state
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2463
.label_2467:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rax + 0x50]
	mov	rsi, qword ptr [rbp - 0x18]
	call	re_node_set_init_copy
	cmp	eax, 0
	je	.label_2457
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2463
.label_2457:
	mov	qword ptr [rbp - 0x38], 0
	mov	rax, qword ptr [rbp - 0x48]
	mov	cl, byte ptr [rax + 0x68]
	and	cl, 0x7f
	or	cl, 0x80
	mov	byte ptr [rax + 0x68], cl
.label_2461:
	mov	eax, dword ptr [rbp - 0x58]
	and	eax, 1
	cmp	eax, 0
	je	.label_2466
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 1
	cmp	eax, 0
	je	.label_2465
.label_2466:
	mov	eax, dword ptr [rbp - 0x58]
	and	eax, 2
	cmp	eax, 0
	je	.label_2469
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 1
	cmp	eax, 0
	jne	.label_2465
.label_2469:
	mov	eax, dword ptr [rbp - 0x58]
	and	eax, 0x10
	cmp	eax, 0
	je	.label_2472
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 2
	cmp	eax, 0
	je	.label_2465
.label_2472:
	mov	eax, dword ptr [rbp - 0x58]
	and	eax, 0x40
	cmp	eax, 0
	je	.label_2459
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 4
	cmp	eax, 0
	jne	.label_2459
.label_2465:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 8
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x38]
	mov	rdi, rax
	mov	rsi, rcx
	call	re_node_set_remove_at
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
.label_2459:
	jmp	.label_2458
.label_2458:
	jmp	.label_2460
.label_2460:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2470
.label_2464:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x28]
	call	register_state
	mov	dword ptr [rbp - 0x3c], eax
	cmp	dword ptr [rbp - 0x3c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_2454
	mov	rdi, qword ptr [rbp - 0x48]
	call	free_state
	mov	qword ptr [rbp - 0x48], 0
.label_2454:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 8], rax
.label_2463:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41a2d0

	.globl re_node_set_remove_at
	.type re_node_set_remove_at, @function
re_node_set_remove_at:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	cmp	qword ptr [rbp - 0x10], 0
	jl	.label_2474
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jl	.label_2477
.label_2474:
	jmp	.label_2476
.label_2477:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax + 8]
	add	rcx, -1
	mov	qword ptr [rax + 8], rcx
.label_2475:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2476
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8 + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_2475
.label_2476:
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41a360

	.globl register_state
	.type register_state, @function
register_state:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rsi], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	add	rdx, 0x20
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 0x10]
	mov	rdi, rdx
	call	re_node_set_alloc
	mov	dword ptr [rbp - 0x2c], eax
	cmp	dword ptr [rbp - 0x2c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_2484
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2482
.label_2484:
	mov	qword ptr [rbp - 0x38], 0
.label_2478:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x10]
	jge	.label_2480
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	and	edx, 8
	cmp	edx, 0
	jne	.label_2485
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x20
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdi, rax
	call	re_node_set_insert_last
	test	al, 1
	jne	.label_2479
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2482
.label_2479:
	jmp	.label_2485
.label_2485:
	jmp	.label_2486
.label_2486:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_2478
.label_2480:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x10]
	and	rcx, qword ptr [rdx + 0x88]
	imul	rcx, rcx, 0x18
	add	rax, rcx
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rcx]
	setle	sil
	and	sil, 1
	movzx	edi, sil
	movsxd	rax, edi
	cmp	rax, 0
	je	.label_2483
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	shl	rax, 1
	add	rax, 2
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x48]
	shl	rcx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_2481
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2482
.label_2481:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 8], rax
.label_2483:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rcx]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rcx], rsi
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	qword ptr [rcx + rdx*8], rax
	mov	dword ptr [rbp - 4], 0
.label_2482:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41a550

	.globl re_copy_regs
	.type re_copy_regs, @function
re_copy_regs:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	dword ptr [rbp - 0x24], ecx
	mov	dword ptr [rbp - 0x28], 1
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, 1
	mov	qword ptr [rbp - 0x38], rdx
	cmp	dword ptr [rbp - 0x24], 0
	jne	.label_2491
	mov	rax, qword ptr [rbp - 0x38]
	shl	rax, 3
	mov	rdi, rax
	call	malloc
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_2493
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2497
.label_2493:
	mov	rax, qword ptr [rbp - 0x38]
	shl	rax, 3
	mov	rdi, rax
	call	malloc
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_2494
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rdi, rax
	call	free
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2497
.label_2494:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	jmp	.label_2495
.label_2491:
	cmp	dword ptr [rbp - 0x24], 1
	jne	.label_2503
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx]
	seta	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_2505
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x38]
	shl	rcx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_2504
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2497
.label_2504:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x38]
	shl	rcx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_2507
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, rax
	call	free
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2497
.label_2507:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
.label_2505:
	jmp	.label_2492
.label_2503:
	cmp	dword ptr [rbp - 0x24], 2
	jne	.label_2489
	jmp	.label_2498
.label_2489:
	movabs	rdi, OFFSET FLAT:label_2501
	movabs	rsi, OFFSET FLAT:label_1373
	mov	edx, 0x1f9
	movabs	rcx, OFFSET FLAT:label_2500
	call	__assert_fail
.label_2498:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x20]
	jb	.label_2490
	jmp	.label_2496
.label_2490:
	movabs	rdi, OFFSET FLAT:label_2499
	movabs	rsi, OFFSET FLAT:label_1373
	mov	edx, 0x1fb
	movabs	rcx, OFFSET FLAT:label_2500
	call	__assert_fail
.label_2496:
	mov	dword ptr [rbp - 0x28], 2
.label_2492:
	jmp	.label_2495
.label_2495:
	mov	qword ptr [rbp - 0x30], 0
.label_2502:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x20]
	jge	.label_2487
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 8]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2502
.label_2487:
	jmp	.label_2506
.label_2506:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx]
	jae	.label_2488
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	qword ptr [rcx + rax*8], -1
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rcx + rax*8], -1
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2506
.label_2488:
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], eax
.label_2497:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41a860

	.globl re_string_allocate
	.type re_string_allocate, @function
re_string_allocate:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	al, r9b
	mov	r10, qword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	and	al, 1
	mov	byte ptr [rbp - 0x31], al
	mov	qword ptr [rbp - 0x40], r10
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x40]
	movsxd	rdx, dword ptr [rdx + 0xb4]
	cmp	rcx, rdx
	jge	.label_2508
	mov	rax, qword ptr [rbp - 0x40]
	movsxd	rax, dword ptr [rax + 0xb4]
	mov	qword ptr [rbp - 0x28], rax
.label_2508:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x28]
	jge	.label_2515
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_2510
.label_2515:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x58], rax
.label_2510:
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x50], rax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r8b, byte ptr [rbp - 0x31]
	mov	r9, qword ptr [rbp - 0x40]
	and	r8b, 1
	movzx	r8d, r8b
	call	re_string_construct_common
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x50]
	call	re_string_realloc_buffers
	mov	dword ptr [rbp - 0x44], eax
	cmp	dword ptr [rbp - 0x44], 0
	setne	r10b
	and	r10b, 1
	movzx	eax, r10b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2514
	mov	eax, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2516
.label_2514:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 0xb8
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x80], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	dl, byte ptr [rax + 0xb0]
	shr	dl, 4
	and	dl, 1
	movzx	esi, dl
	mov	dl, sil
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 0x8e], dl
	mov	rax, qword ptr [rbp - 0x10]
	movzx	esi, byte ptr [rax + 0x8b]
	cmp	esi, 0
	je	.label_2509
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2513
.label_2509:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x60], rax
.label_2513:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	movzx	edx, byte ptr [rax + 0x8b]
	cmp	edx, 0
	jne	.label_2517
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_2512
.label_2517:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x68], rcx
	jmp	.label_2511
.label_2512:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
.label_2511:
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x38], rax
	mov	dword ptr [rbp - 4], 0
.label_2516:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41aa20

	.globl match_ctx_init
	.type match_ctx_init, @function
match_ctx_init:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rdx + 0xa0], esi
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0xa8], -1
	cmp	qword ptr [rbp - 0x20], 0
	jle	.label_2518
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, -1
	mov	qword ptr [rbp - 0x28], 0x28
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, rcx
	xor	edx, edx
	div	qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	rcx, rax
	jae	.label_2524
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_2521
.label_2524:
	mov	rax, -1
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
.label_2521:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x20]
	setb	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_2522
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2520
.label_2522:
	imul	rdi, qword ptr [rbp - 0x20], 0x28
	call	malloc
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0xd8], rax
	mov	rax, qword ptr [rbp - 0x20]
	shl	rax, 3
	mov	rdi, rax
	call	malloc
	mov	cl, 1
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0xf8], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0xd8], 0
	mov	byte ptr [rbp - 0x39], cl
	je	.label_2519
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0xf8], 0
	sete	cl
	mov	byte ptr [rbp - 0x39], cl
.label_2519:
	mov	al, byte ptr [rbp - 0x39]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2523
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2520
.label_2523:
	jmp	.label_2518
.label_2518:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0xd0], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0xe0], 1
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0xf0], rax
	mov	dword ptr [rbp - 4], 0
.label_2520:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41aba0

	.globl re_string_reconstruct
	.type re_string_reconstruct, @function
re_string_reconstruct:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x100
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x28]
	cmp	rsi, qword ptr [rbp - 0x18]
	setle	al
	and	al, 1
	movzx	edx, al
	movsxd	rsi, edx
	cmp	rsi, 0
	je	.label_2578
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rcx + 0x28]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2594
.label_2578:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0x90], 1
	jle	.label_2600
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 0x20
	mov	rdi, rcx
	call	memset
.label_2600:
	mov	eax, 6
	mov	ecx, 4
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x50]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x58], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x60]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x68], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x30], 0
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x28], 0
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x38], 0
	mov	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rdx + 0x8c], 0
	mov	edi, dword ptr [rbp - 0x1c]
	and	edi, 1
	cmp	edi, 0
	cmovne	eax, ecx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rdx + 0x70], eax
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	byte ptr [rdx + 0x8b], 0
	jne	.label_2528
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
.label_2528:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x28], rax
.label_2594:
	cmp	qword ptr [rbp - 0x28], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2581
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x38]
	setl	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_2588
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax + 0x8c]
	mov	eax, ecx
	cmp	rax, 0
	je	.label_2599
	mov	qword ptr [rbp - 0x30], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	mov	qword ptr [rbp - 0x38], rax
.label_2570:
	mov	eax, 2
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x38]
	add	rdx, qword ptr [rbp - 0x30]
	mov	rax, rdx
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, qword ptr [rbp - 0x28]
	jle	.label_2527
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_2547
.label_2527:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, qword ptr [rbp - 0x28]
	jge	.label_2550
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2557
.label_2550:
	jmp	.label_2565
.label_2557:
	jmp	.label_2547
.label_2547:
	jmp	.label_2568
.label_2568:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x38]
	jl	.label_2570
.label_2565:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, qword ptr [rbp - 0x28]
	jge	.label_2579
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
.label_2579:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	edx, dword ptr [rbp - 0x1c]
	mov	rsi, rax
	call	re_string_context_at
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rsi + 0x70], eax
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x30]
	cmp	rsi, qword ptr [rbp - 0x28]
	jle	.label_2542
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_2542
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_2542
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	shl	rdx, 2
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x30]
	sub	rdx, qword ptr [rbp - 0x28]
	shl	rdx, 2
	mov	rdi, rax
	mov	rsi, rcx
	call	memmove
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	add	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x30]
	sub	rdx, qword ptr [rbp - 0x28]
	mov	rsi, rcx
	mov	qword ptr [rbp - 0xb8], rax
	call	memmove
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rdx + 0x30]
	sub	rsi, rcx
	mov	qword ptr [rdx + 0x30], rsi
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rdx + 0x38]
	sub	rsi, rcx
	mov	qword ptr [rdx + 0x38], rsi
	mov	qword ptr [rbp - 0x30], 0
	mov	qword ptr [rbp - 0xc0], rax
.label_2572:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x30]
	jge	.label_2585
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	sub	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2572
.label_2585:
	jmp	.label_2543
.label_2542:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x50]
	sub	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x58], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x60]
	sub	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x68], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 0x8c], 0
.label_2535:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x40], 0
	mov	byte ptr [rbp - 0xc1], cl
	jle	.label_2561
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, qword ptr [rbp - 0x28]
	sete	dl
	mov	byte ptr [rbp - 0xc1], dl
.label_2561:
	mov	al, byte ptr [rbp - 0xc1]
	test	al, 1
	jne	.label_2560
	jmp	.label_2567
.label_2560:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, -1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_2535
.label_2567:
	jmp	.label_2575
.label_2575:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x30]
	jge	.label_2576
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	je	.label_2530
	jmp	.label_2576
.label_2530:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_2575
.label_2576:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x30]
	jne	.label_2533
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x30], 0
	jmp	.label_2566
.label_2533:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	sub	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x30], 0
	je	.label_2587
	mov	qword ptr [rbp - 0x30], 0
.label_2544:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x30]
	jge	.label_2546
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	dword ptr [rcx + rax*4], 0xffffffff
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2544
.label_2546:
	mov	esi, 0xff
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 8]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rax + 0x30]
	call	memset
.label_2587:
	jmp	.label_2566
.label_2566:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x38], rax
.label_2543:
	jmp	.label_2574
.label_2599:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x28]
	sub	rax, 1
	mov	edx, dword ptr [rbp - 0x1c]
	mov	rsi, rax
	call	re_string_context_at
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rsi + 0x70], eax
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	dword ptr [rsi + 0x90], 1
	jle	.label_2584
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	shl	rdx, 2
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x30]
	sub	rdx, qword ptr [rbp - 0x28]
	shl	rdx, 2
	mov	rdi, rax
	mov	rsi, rcx
	call	memmove
	mov	qword ptr [rbp - 0xd0], rax
.label_2584:
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax + 0x8b]
	mov	eax, ecx
	cmp	rax, 0
	je	.label_2525
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 8]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x30]
	sub	rcx, qword ptr [rbp - 0x28]
	mov	rsi, rax
	mov	rdx, rcx
	call	memmove
	mov	qword ptr [rbp - 0xd8], rax
.label_2525:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rcx + 0x30]
	sub	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rcx + 0x38]
	sub	rdx, rax
	mov	qword ptr [rcx + 0x38], rdx
.label_2574:
	jmp	.label_2562
.label_2588:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax + 0x8c]
	mov	eax, ecx
	cmp	rax, 0
	je	.label_2564
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x50]
	sub	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x58], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x60]
	sub	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x68], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 0x8c], 0
.label_2564:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x30], 0
	mov	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0x90], 1
	jle	.label_2595
	mov	dword ptr [rbp - 0x54], 0xffffffff
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax + 0x89], 0
	je	.label_2580
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rcx + 0x28]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	movsxd	rdx, dword ptr [rdx + 0x90]
	sub	rcx, rdx
	add	rax, rcx
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx]
	jae	.label_2526
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x70], rax
.label_2526:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, qword ptr [rbp - 0x28]
	add	rax, -1
	mov	qword ptr [rbp - 0x68], rax
.label_2538:
	mov	rax, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rbp - 0x70]
	jb	.label_2534
	mov	rax, qword ptr [rbp - 0x68]
	movzx	ecx, byte ptr [rax]
	and	ecx, 0xc0
	cmp	ecx, 0x80
	je	.label_2563
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rcx + 0x58]
	mov	rcx, qword ptr [rbp - 0x68]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0xa0], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x78], 0
	setne	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_2571
	cmp	qword ptr [rbp - 0x88], 6
	jge	.label_2593
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0xe0], rax
	jmp	.label_2589
.label_2593:
	mov	eax, 6
	mov	ecx, eax
	mov	qword ptr [rbp - 0xe0], rcx
	jmp	.label_2589
.label_2589:
	mov	rax, qword ptr [rbp - 0xe0]
	mov	ecx, eax
	mov	dword ptr [rbp - 0xa4], ecx
.label_2532:
	mov	eax, dword ptr [rbp - 0xa4]
	add	eax, -1
	mov	dword ptr [rbp - 0xa4], eax
	cmp	eax, 0
	jl	.label_2529
	movsxd	rax, dword ptr [rbp - 0xa4]
	mov	rcx, qword ptr [rbp - 0x68]
	movzx	edx, byte ptr [rcx + rax]
	mov	eax, edx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x78]
	mov	sil, byte ptr [rcx + rax]
	movsxd	rax, dword ptr [rbp - 0xa4]
	mov	byte ptr [rbp + rax - 0x8e], sil
	jmp	.label_2532
.label_2529:
	lea	rax, [rbp - 0x8e]
	mov	qword ptr [rbp - 0xa0], rax
.label_2571:
	lea	rdi, [rbp - 0x7c]
	lea	rax, [rbp - 0x78]
	xor	esi, esi
	mov	ecx, 8
	mov	edx, ecx
	mov	r8, rax
	mov	qword ptr [rbp - 0xe8], rdi
	mov	rdi, r8
	mov	qword ptr [rbp - 0xf0], rax
	call	memset
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rdi, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xf0]
	call	rpl_mbrtowc
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x68]
	sub	rax, rcx
	cmp	rax, qword ptr [rbp - 0x98]
	ja	.label_2536
	cmp	qword ptr [rbp - 0x98], -2
	jae	.label_2536
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 0x20
	mov	rdi, rcx
	call	memset
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0x60]
	add	rdx, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rbp - 0x68]
	sub	rdx, rdi
	sub	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x30], rcx
	mov	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x54], eax
.label_2536:
	jmp	.label_2534
.label_2563:
	jmp	.label_2537
.label_2537:
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, -1
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_2538
.label_2534:
	jmp	.label_2580
.label_2580:
	cmp	dword ptr [rbp - 0x54], -1
	jne	.label_2549
	lea	rdx, [rbp - 0x54]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	re_string_skip_chars
	sub	rax, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x30], rax
.label_2549:
	cmp	dword ptr [rbp - 0x54], -1
	jne	.label_2558
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x48]
	sub	rax, 1
	mov	edx, dword ptr [rbp - 0x1c]
	mov	rsi, rax
	call	re_string_context_at
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rsi + 0x70], eax
	jmp	.label_2559
.label_2558:
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax + 0x8e]
	cmp	ecx, 0
	setne	dl
	and	dl, 1
	movzx	ecx, dl
	movsxd	rax, ecx
	cmp	rax, 0
	je	.label_2577
	mov	edi, dword ptr [rbp - 0x54]
	call	iswalnum
	cmp	eax, 0
	jne	.label_2590
	cmp	dword ptr [rbp - 0x54], 0x5f
	jne	.label_2577
.label_2590:
	mov	eax, 1
	mov	dword ptr [rbp - 0xf4], eax
	jmp	.label_2597
.label_2577:
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x54], 0xa
	mov	byte ptr [rbp - 0xf5], cl
	jne	.label_2601
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax + 0x8d]
	cmp	ecx, 0
	setne	dl
	mov	byte ptr [rbp - 0xf5], dl
.label_2601:
	mov	al, byte ptr [rbp - 0xf5]
	xor	ecx, ecx
	mov	edx, 2
	test	al, 1
	cmovne	ecx, edx
	mov	dword ptr [rbp - 0xf4], ecx
.label_2597:
	mov	eax, dword ptr [rbp - 0xf4]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	dword ptr [rcx + 0x70], eax
.label_2559:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x30], 0
	je	.label_2541
	mov	qword ptr [rbp - 0x50], 0
.label_2555:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x30]
	jge	.label_2598
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	dword ptr [rcx + rax*4], 0xffffffff
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_2555
.label_2598:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax + 0x8b], 0
	je	.label_2569
	mov	esi, 0xff
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 8]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rax + 0x30]
	call	memset
.label_2569:
	jmp	.label_2541
.label_2541:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x38], rax
	jmp	.label_2553
.label_2595:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	add	rax, qword ptr [rbp - 0x28]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0xa8], edx
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x38], 0
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x78], 0
	je	.label_2591
	movsxd	rax, dword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x78]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0xa8], edx
.label_2591:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 0x80]
	movsxd	rsi, dword ptr [rbp - 0xa8]
	call	bitset_contain
	test	al, 1
	jne	.label_2540
	jmp	.label_2545
.label_2540:
	mov	eax, 1
	mov	dword ptr [rbp - 0xfc], eax
	jmp	.label_2548
.label_2545:
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0xa8], 0xa
	mov	byte ptr [rbp - 0xfd], cl
	jne	.label_2551
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax + 0x8d]
	cmp	ecx, 0
	setne	dl
	mov	byte ptr [rbp - 0xfd], dl
.label_2551:
	mov	al, byte ptr [rbp - 0xfd]
	xor	ecx, ecx
	mov	edx, 2
	test	al, 1
	cmovne	ecx, edx
	mov	dword ptr [rbp - 0xfc], ecx
.label_2548:
	mov	eax, dword ptr [rbp - 0xfc]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	dword ptr [rcx + 0x70], eax
.label_2553:
	jmp	.label_2562
.label_2562:
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax + 0x8b]
	mov	eax, ecx
	cmp	rax, 0
	jne	.label_2583
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rcx + 8]
	mov	qword ptr [rcx + 8], rax
.label_2583:
	jmp	.label_2581
.label_2581:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rcx + 0x58]
	sub	rdx, rax
	mov	qword ptr [rcx + 0x58], rdx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rcx + 0x68]
	sub	rdx, rax
	mov	qword ptr [rcx + 0x68], rdx
	mov	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0x90], 1
	jle	.label_2596
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax + 0x88], 0
	je	.label_2531
	mov	rdi, qword ptr [rbp - 0x10]
	call	build_wcs_upper_buffer
	mov	dword ptr [rbp - 0xac], eax
	cmp	dword ptr [rbp - 0xac], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdi, eax
	cmp	rdi, 0
	je	.label_2539
	mov	eax, dword ptr [rbp - 0xac]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2552
.label_2539:
	jmp	.label_2556
.label_2531:
	mov	rdi, qword ptr [rbp - 0x10]
	call	build_wcs_buffer
.label_2556:
	jmp	.label_2554
.label_2596:
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax + 0x8b]
	mov	eax, ecx
	cmp	rax, 0
	je	.label_2602
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax + 0x88], 0
	je	.label_2573
	mov	rdi, qword ptr [rbp - 0x10]
	call	build_upper_buffer
	jmp	.label_2582
.label_2573:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x78], 0
	je	.label_2586
	mov	rdi, qword ptr [rbp - 0x10]
	call	re_string_translate_buffer
.label_2586:
	jmp	.label_2582
.label_2582:
	jmp	.label_2592
.label_2602:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x58]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x30], rax
.label_2592:
	jmp	.label_2554
.label_2554:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x48], 0
	mov	dword ptr [rbp - 4], 0
.label_2552:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x100
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41b810

	.globl check_matching
	.type check_matching, @function
check_matching:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	al, sil
	lea	rcx, [rbp - 0x5c]
	mov	qword ptr [rbp - 0x40], rdi
	and	al, 1
	mov	byte ptr [rbp - 0x41], al
	mov	qword ptr [rbp - 0x50], rdx
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rdx + 0x98]
	mov	qword ptr [rbp - 0x58], rdx
	mov	qword ptr [rbp - 0x68], 0
	mov	qword ptr [rbp - 0x70], -1
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rdx + 0x48]
	mov	qword ptr [rbp - 0x78], rdx
	cmp	qword ptr [rbp - 0x50], 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x81], al
	mov	rdx, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x90], rdx
	mov	dword ptr [rbp - 0x5c], 0
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x10], rcx
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rdi
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x98]
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx + 0x48]
	mov	al, byte ptr [rcx + 0x68]
	shr	al, 7
	movzx	esi, al
	cmp	esi, 0
	je	.label_2609
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rcx + 0xa0]
	mov	rsi, rax
	call	re_string_context_at
	mov	dword ptr [rbp - 0x2c], eax
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 1
	cmp	eax, 0
	je	.label_2641
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x50]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2604
.label_2641:
	cmp	dword ptr [rbp - 0x2c], 0
	jne	.label_2643
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2604
.label_2643:
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 4
	cmp	eax, 0
	je	.label_2611
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 2
	cmp	eax, 0
	je	.label_2611
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x60]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2604
.label_2611:
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 2
	cmp	eax, 0
	je	.label_2625
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x58]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2604
.label_2625:
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 4
	cmp	eax, 0
	je	.label_2626
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x48]
	mov	rdx, qword ptr [rax + 0x50]
	mov	ecx, dword ptr [rbp - 0x2c]
	call	re_acquire_state_context
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2604
.label_2626:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2604
.label_2609:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 8], rax
.label_2604:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x80], rax
	cmp	qword ptr [rbp - 0x80], 0
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_2637
	cmp	dword ptr [rbp - 0x5c], 0xc
	jne	.label_2642
	jmp	.label_2644
.label_2642:
	movabs	rdi, OFFSET FLAT:label_2631
	movabs	rsi, OFFSET FLAT:label_1373
	mov	edx, 0x435
	movabs	rcx, OFFSET FLAT:label_2632
	call	__assert_fail
.label_2644:
	mov	qword ptr [rbp - 0x38], -2
	jmp	.label_2608
.label_2637:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	qword ptr [rax + 0xb8], 0
	je	.label_2612
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rdx + 0xb8]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x58]
	cmp	qword ptr [rax + 0x98], 0
	je	.label_2620
	xor	eax, eax
	mov	edx, eax
	mov	byte ptr [rbp - 0x81], 0
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x80]
	add	rcx, 8
	mov	rsi, rcx
	call	check_subexp_matching_top
	mov	dword ptr [rbp - 0x5c], eax
	cmp	dword ptr [rbp - 0x5c], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2628
	movsxd	rax, dword ptr [rbp - 0x5c]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_2608
.label_2628:
	mov	rax, qword ptr [rbp - 0x80]
	mov	cl, byte ptr [rax + 0x68]
	shr	cl, 6
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	je	.label_2635
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x80]
	add	rax, 8
	mov	rsi, rax
	call	transit_state_bkref
	mov	dword ptr [rbp - 0x5c], eax
	cmp	dword ptr [rbp - 0x5c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_2638
	movsxd	rax, dword ptr [rbp - 0x5c]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_2608
.label_2638:
	jmp	.label_2635
.label_2635:
	jmp	.label_2620
.label_2620:
	jmp	.label_2612
.label_2612:
	mov	rax, qword ptr [rbp - 0x80]
	mov	cl, byte ptr [rax + 0x68]
	shr	cl, 4
	and	cl, 1
	movzx	edx, cl
	mov	edx, edx
	mov	eax, edx
	cmp	rax, 0
	je	.label_2606
	mov	rax, qword ptr [rbp - 0x80]
	mov	cl, byte ptr [rax + 0x68]
	shr	cl, 7
	movzx	edx, cl
	cmp	edx, 0
	je	.label_2614
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x78]
	call	check_halt_state_context
	cmp	rax, 0
	je	.label_2640
.label_2614:
	test	byte ptr [rbp - 0x41], 1
	jne	.label_2610
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_2608
.label_2610:
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x68], 1
	jmp	.label_2640
.label_2640:
	jmp	.label_2606
.label_2606:
	jmp	.label_2621
.label_2621:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x68]
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rcx + 0x48]
	setle	dl
	xor	dl, 0xff
	test	dl, 1
	jne	.label_2633
	jmp	.label_2615
.label_2633:
	mov	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0xa0], rax
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rcx + 0x40]
	setge	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_2636
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rcx + 0x58]
	jl	.label_2646
.label_2636:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rcx + 0x30]
	setge	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_2616
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rcx + 0x58]
	jge	.label_2616
.label_2646:
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0xa0]
	add	rax, 1
	mov	ecx, eax
	mov	esi, ecx
	call	extend_buffers
	mov	dword ptr [rbp - 0x5c], eax
	cmp	dword ptr [rbp - 0x5c], 0
	setne	dl
	and	dl, 1
	movzx	eax, dl
	movsxd	rdi, eax
	cmp	rdi, 0
	je	.label_2618
	cmp	dword ptr [rbp - 0x5c], 0xc
	jne	.label_2629
	jmp	.label_2630
.label_2629:
	movabs	rdi, OFFSET FLAT:label_2631
	movabs	rsi, OFFSET FLAT:label_1373
	mov	edx, 0x46c
	movabs	rcx, OFFSET FLAT:label_2632
	call	__assert_fail
.label_2630:
	mov	qword ptr [rbp - 0x38], -2
	jmp	.label_2608
.label_2618:
	jmp	.label_2616
.label_2616:
	lea	rdi, [rbp - 0x5c]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x80]
	call	transit_state
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x40]
	cmp	qword ptr [rax + 0xb8], 0
	je	.label_2647
	lea	rdi, [rbp - 0x5c]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x80]
	call	merge_state_with_log
	mov	qword ptr [rbp - 0x80], rax
.label_2647:
	cmp	qword ptr [rbp - 0x80], 0
	jne	.label_2603
	cmp	dword ptr [rbp - 0x5c], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2607
	mov	qword ptr [rbp - 0x38], -2
	jmp	.label_2608
.label_2607:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	qword ptr [rax + 0xb8], 0
	je	.label_2617
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_2624
	test	byte ptr [rbp - 0x41], 1
	je	.label_2617
.label_2624:
	lea	rdi, [rbp - 0x5c]
	mov	rsi, qword ptr [rbp - 0x40]
	call	find_recover_state
	mov	qword ptr [rbp - 0x80], rax
	cmp	rax, 0
	jne	.label_2627
.label_2617:
	jmp	.label_2615
.label_2627:
	jmp	.label_2603
.label_2603:
	test	byte ptr [rbp - 0x81], 1
	je	.label_2622
	mov	rax, qword ptr [rbp - 0x98]
	cmp	rax, qword ptr [rbp - 0x80]
	jne	.label_2613
	mov	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_2634
.label_2613:
	mov	byte ptr [rbp - 0x81], 0
.label_2634:
	jmp	.label_2622
.label_2622:
	mov	rax, qword ptr [rbp - 0x80]
	mov	cl, byte ptr [rax + 0x68]
	shr	cl, 4
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	je	.label_2619
	mov	rax, qword ptr [rbp - 0x80]
	mov	cl, byte ptr [rax + 0x68]
	shr	cl, 7
	movzx	edx, cl
	cmp	edx, 0
	je	.label_2639
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rax + 0x48]
	call	check_halt_state_context
	cmp	rax, 0
	je	.label_2645
.label_2639:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x68], 1
	mov	qword ptr [rbp - 0x50], 0
	test	byte ptr [rbp - 0x41], 1
	jne	.label_2605
	jmp	.label_2615
.label_2605:
	jmp	.label_2645
.label_2645:
	jmp	.label_2619
.label_2619:
	jmp	.label_2621
.label_2615:
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_2623
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x50]
	add	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
.label_2623:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x38], rax
.label_2608:
	mov	rax, qword ptr [rbp - 0x38]
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41be80

	.globl check_halt_state_context
	.type check_halt_state_context, @function
check_halt_state_context:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rdx + 0xa0]
	call	re_string_context_at
	mov	dword ptr [rbp - 0x2c], eax
	mov	qword ptr [rbp - 0x28], 0
.label_2651:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x10]
	jge	.label_2652
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 0x98]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rsi, qword ptr [rcx + rax*8]
	mov	edx, dword ptr [rbp - 0x2c]
	call	check_halt_node_context
	test	al, 1
	jne	.label_2649
	jmp	.label_2650
.label_2649:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2648
.label_2650:
	jmp	.label_2653
.label_2653:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2651
.label_2652:
	mov	qword ptr [rbp - 8], 0
.label_2648:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41bf40

	.globl prune_impossible_nodes
	.type prune_impossible_nodes, @function
prune_impossible_nodes:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	movabs	rax, 0x1fffffffffffffff
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 0x98]
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x40], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 0xa8]
	mov	qword ptr [rbp - 0x28], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 0xb0]
	mov	qword ptr [rbp - 0x20], rdi
	cmp	rax, qword ptr [rbp - 0x28]
	setbe	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_2663
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2661
.label_2663:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	shl	rax, 3
	mov	rdi, rax
	call	malloc
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_2665
	mov	dword ptr [rbp - 0x2c], 0xc
	jmp	.label_2654
.label_2665:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x98], 0
	je	.label_2672
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	shl	rax, 3
	mov	rdi, rax
	call	malloc
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_2658
	mov	dword ptr [rbp - 0x2c], 0xc
	jmp	.label_2654
.label_2658:
	jmp	.label_2656
.label_2656:
	lea	rdi, [rbp - 0x78]
	xor	esi, esi
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, 1
	shl	rcx, 3
	mov	qword ptr [rbp - 0x80], rdi
	mov	rdi, rax
	mov	rdx, rcx
	call	memset
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rbp - 0x80]
	call	sift_ctx_init
	lea	rsi, [rbp - 0x78]
	mov	rdi, qword ptr [rbp - 0x10]
	call	sift_states_backward
	mov	dword ptr [rbp - 0x2c], eax
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdi, rcx
	call	free
	cmp	dword ptr [rbp - 0x2c], 0
	setne	r9b
	and	r9b, 1
	movzx	eax, r9b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2660
	jmp	.label_2654
.label_2660:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax], 0
	jne	.label_2659
	mov	rax, qword ptr [rbp - 0x40]
	cmp	qword ptr [rax], 0
	je	.label_2667
.label_2659:
	jmp	.label_2668
.label_2667:
	jmp	.label_2669
.label_2669:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, -1
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jge	.label_2671
	mov	dword ptr [rbp - 0x2c], 1
	jmp	.label_2654
.label_2671:
	jmp	.label_2655
.label_2655:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0xb8]
	cmp	qword ptr [rdx + rcx*8], 0
	mov	byte ptr [rbp - 0x81], al
	je	.label_2657
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	dl, byte ptr [rax + 0x68]
	shr	dl, 4
	and	dl, 1
	movzx	esi, dl
	cmp	esi, 0
	setne	dl
	xor	dl, 0xff
	mov	byte ptr [rbp - 0x81], dl
.label_2657:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_2669
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rsi, qword ptr [rcx + rax*8]
	mov	rdx, qword ptr [rbp - 0x28]
	call	check_halt_state_context
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_2656
.label_2668:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	rcx, rax
	call	merge_state_array
	mov	dword ptr [rbp - 0x2c], eax
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdi, rcx
	call	free
	mov	qword ptr [rbp - 0x40], 0
	cmp	dword ptr [rbp - 0x2c], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2664
	jmp	.label_2654
.label_2664:
	jmp	.label_2670
.label_2672:
	lea	rdi, [rbp - 0x78]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x28]
	call	sift_ctx_init
	lea	rsi, [rbp - 0x78]
	mov	rdi, qword ptr [rbp - 0x10]
	call	sift_states_backward
	mov	dword ptr [rbp - 0x2c], eax
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdi, rcx
	call	free
	cmp	dword ptr [rbp - 0x2c], 0
	setne	r9b
	and	r9b, 1
	movzx	eax, r9b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2662
	jmp	.label_2654
.label_2662:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax], 0
	jne	.label_2666
	mov	dword ptr [rbp - 0x2c], 1
	jmp	.label_2654
.label_2666:
	jmp	.label_2670
.label_2670:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xb8]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0xb8], rax
	mov	qword ptr [rbp - 0x38], 0
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0xb0], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0xa8], rax
	mov	dword ptr [rbp - 0x2c], 0
.label_2654:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 4], ecx
.label_2661:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c2f0

	.globl match_ctx_clean
	.type match_ctx_clean, @function
match_ctx_clean:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], 0
.label_2673:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 0xe8]
	jge	.label_2674
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0xf8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x18], 0
.label_2676:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx + 0x20]
	jge	.label_2675
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x20]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_2676
.label_2675:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x28]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x10], 0
	je	.label_2677
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	call	free
.label_2677:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_2673
.label_2674:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0xe8], 0
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0xc8], 0
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c410

	.globl set_regs
	.type set_regs, @function
set_regs:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	al, r8b
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	and	al, 1
	mov	byte ptr [rbp - 0x29], al
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x38], rcx
	mov	rcx,  qword ptr [word ptr [label_2682]]
	mov	qword ptr [rbp - 0x80], rcx
	mov	rcx,  qword ptr [word ptr [label_2683]]
	mov	qword ptr [rbp - 0x78], rcx
	mov	rcx,  qword ptr [word ptr [label_2684]]
	mov	qword ptr [rbp - 0x70], rcx
	mov	byte ptr [rbp - 0x89], 0
	test	byte ptr [rbp - 0x29], 1
	je	.label_2685
	lea	rax, [rbp - 0x80]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x68]
	imul	rdi, qword ptr [rax + 8], 0x30
	call	malloc
	mov	rdi, qword ptr [rbp - 0x68]
	mov	qword ptr [rdi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x68]
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_2680
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2686
.label_2680:
	jmp	.label_2694
.label_2685:
	mov	qword ptr [rbp - 0x68], 0
.label_2694:
	xor	esi, esi
	mov	eax, 0x18
	mov	edx, eax
	lea	rcx, [rbp - 0x60]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x90]
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, rcx
	call	memset
	mov	rcx, qword ptr [rbp - 0x20]
	shl	rcx, 4
	cmp	rcx, 0xfc0
	jae	.label_2702
	mov	rax, qword ptr [rbp - 0x20]
	shl	rax, 4
	mov	rcx, rsp
	sub	rcx, rax
	mov	rsp, rcx
	mov	qword ptr [rbp - 0x88], rcx
	jmp	.label_2705
.label_2702:
	mov	rax, qword ptr [rbp - 0x20]
	shl	rax, 4
	mov	rdi, rax
	call	malloc
	mov	qword ptr [rbp - 0x88], rax
	cmp	qword ptr [rbp - 0x88], 0
	jne	.label_2690
	mov	rdi, qword ptr [rbp - 0x68]
	call	free_fail_stack_return
	mov	dword ptr [rbp - 4], 0xc
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_2686
.label_2690:
	mov	byte ptr [rbp - 0x89], 1
.label_2705:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x20]
	shl	rdx, 4
	mov	rdi, rax
	mov	rsi, rcx
	call	memcpy
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
.label_2681:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rcx + 8]
	jg	.label_2706
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	r8, qword ptr [rbp - 0x40]
	mov	r9, qword ptr [rbp - 0x20]
	call	update_regs
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x28]
	cmp	rcx, qword ptr [rdx + 8]
	jne	.label_2687
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0xb0]
	jne	.label_2687
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_2678
	mov	qword ptr [rbp - 0x98], 0
.label_2697:
	mov	rax, qword ptr [rbp - 0x98]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2695
	mov	rax, qword ptr [rbp - 0x98]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], -1
	jle	.label_2688
	mov	rax, qword ptr [rbp - 0x98]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax + 8], -1
	jne	.label_2688
	jmp	.label_2695
.label_2688:
	jmp	.label_2692
.label_2692:
	mov	rax, qword ptr [rbp - 0x98]
	add	rax, 1
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_2697
.label_2695:
	mov	rax, qword ptr [rbp - 0x98]
	cmp	rax, qword ptr [rbp - 0x20]
	jne	.label_2701
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, rax
	call	free
	test	byte ptr [rbp - 0x89], 1
	je	.label_2704
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	call	free
.label_2704:
	mov	rdi, qword ptr [rbp - 0x68]
	call	free_fail_stack_return
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2686
.label_2701:
	lea	rsi, [rbp - 0x40]
	lea	r8, [rbp - 0x60]
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	pop_fail_stack
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_2696
.label_2678:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, rax
	call	free
	test	byte ptr [rbp - 0x89], 1
	je	.label_2700
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	call	free
.label_2700:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2686
.label_2696:
	jmp	.label_2687
.label_2687:
	lea	rcx, [rbp - 0x40]
	lea	r9, [rbp - 0x60]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x68]
	sub	rsp, 0x10
	mov	qword ptr [rsp], rax
	call	proceed_next_node
	add	rsp, 0x10
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	setl	r10b
	and	r10b, 1
	movzx	r11d, r10b
	movsxd	rax, r11d
	cmp	rax, 0
	je	.label_2679
	cmp	qword ptr [rbp - 0x48], -2
	sete	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2698
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, rax
	call	free
	test	byte ptr [rbp - 0x89], 1
	je	.label_2703
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	call	free
.label_2703:
	mov	rdi, qword ptr [rbp - 0x68]
	call	free_fail_stack_return
	mov	dword ptr [rbp - 4], 0xc
	mov	dword ptr [rbp - 0xa0], eax
	jmp	.label_2686
.label_2698:
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_2691
	lea	rsi, [rbp - 0x40]
	lea	r8, [rbp - 0x60]
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	pop_fail_stack
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_2699
.label_2691:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, rax
	call	free
	test	byte ptr [rbp - 0x89], 1
	je	.label_2693
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	call	free
.label_2693:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_2686
.label_2699:
	jmp	.label_2679
.label_2679:
	jmp	.label_2681
.label_2706:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, rax
	call	free
	test	byte ptr [rbp - 0x89], 1
	je	.label_2689
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	call	free
.label_2689:
	mov	rdi, qword ptr [rbp - 0x68]
	call	free_fail_stack_return
	mov	dword ptr [rbp - 4], eax
.label_2686:
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c850

	.globl match_ctx_free
	.type match_ctx_free, @function
match_ctx_free:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	match_ctx_clean
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0xf8]
	call	free
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0xd8]
	call	free
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c890

	.globl re_string_context_at
	.type re_string_context_at, @function
re_string_context_at:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	cmp	qword ptr [rbp - 0x18], 0
	setl	al
	and	al, 1
	movzx	edx, al
	movsxd	rsi, edx
	cmp	rsi, 0
	je	.label_2711
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x70]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_2712
.label_2711:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x58]
	sete	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_2708
	mov	eax, 0xa
	mov	ecx, 8
	mov	edx, dword ptr [rbp - 0x1c]
	and	edx, 2
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2712
.label_2708:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0x90], 1
	jle	.label_2709
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
.label_2713:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_2714
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, -1
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	jge	.label_2719
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x70]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_2712
.label_2719:
	jmp	.label_2713
.label_2714:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	edx, dword ptr [rcx + rax*4]
	mov	dword ptr [rbp - 0x24], edx
	mov	rax, qword ptr [rbp - 0x10]
	movzx	edx, byte ptr [rax + 0x8e]
	cmp	edx, 0
	setne	sil
	and	sil, 1
	movzx	edx, sil
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_2715
	mov	edi, dword ptr [rbp - 0x24]
	call	iswalnum
	cmp	eax, 0
	jne	.label_2716
	cmp	dword ptr [rbp - 0x24], 0x5f
	jne	.label_2715
.label_2716:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_2712
.label_2715:
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x24], 0xa
	mov	byte ptr [rbp - 0x31], cl
	jne	.label_2707
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax + 0x8d]
	cmp	ecx, 0
	setne	dl
	mov	byte ptr [rbp - 0x31], dl
.label_2707:
	mov	al, byte ptr [rbp - 0x31]
	xor	ecx, ecx
	mov	edx, 2
	test	al, 1
	cmovne	ecx, edx
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_2712
.label_2709:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x20], edx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 0x80]
	movsxd	rsi, dword ptr [rbp - 0x20]
	call	bitset_contain
	test	al, 1
	jne	.label_2717
	jmp	.label_2718
.label_2717:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_2712
.label_2718:
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x20], 0xa
	mov	byte ptr [rbp - 0x32], cl
	jne	.label_2710
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax + 0x8d]
	cmp	ecx, 0
	setne	dl
	mov	byte ptr [rbp - 0x32], dl
.label_2710:
	mov	al, byte ptr [rbp - 0x32]
	xor	ecx, ecx
	mov	edx, 2
	test	al, 1
	cmovne	ecx, edx
	mov	dword ptr [rbp - 4], ecx
.label_2712:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41ca90

	.globl re_string_skip_chars
	.type re_string_skip_chars, @function
re_string_skip_chars:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	dword ptr [rbp - 0x34], 0xffffffff
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 0x28]
	mov	rsi, qword ptr [rbp - 8]
	add	rdx, qword ptr [rsi + 0x38]
	mov	qword ptr [rbp - 0x28], rdx
.label_2722:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x10]
	jge	.label_2726
	lea	rdi, [rbp - 0x38]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x50]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	add	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 0x20
	mov	rsi, rax
	call	rpl_mbrtowc
	mov	r8b, 1
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], -2
	mov	byte ptr [rbp - 0x41], r8b
	je	.label_2721
	mov	al, 1
	cmp	qword ptr [rbp - 0x30], -1
	mov	byte ptr [rbp - 0x41], al
	je	.label_2721
	cmp	qword ptr [rbp - 0x30], 0
	sete	al
	mov	byte ptr [rbp - 0x41], al
.label_2721:
	mov	al, byte ptr [rbp - 0x41]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2727
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_2725
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_2723
.label_2725:
	mov	dword ptr [rbp - 0x34], 0
	jmp	.label_2724
.label_2723:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x28]
	movzx	edx, byte ptr [rax + rcx]
	mov	dword ptr [rbp - 0x34], edx
.label_2724:
	mov	qword ptr [rbp - 0x30], 1
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rax + 0x20], rcx
	jmp	.label_2720
.label_2727:
	mov	eax, dword ptr [rbp - 0x38]
	mov	dword ptr [rbp - 0x34], eax
.label_2720:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2722
.label_2726:
	mov	eax, dword ptr [rbp - 0x34]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dword ptr [rcx], eax
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41cbd0

	.globl bitset_contain
	.type bitset_contain, @function
bitset_contain:
	push	rbp
	mov	rbp, rsp
	mov	eax, 0x40
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rax, qword ptr [rbp - 0x10]
	cqo	
	idiv	rcx
	mov	rsi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rsi + rax*8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, rsi
	cqo	
	idiv	rcx
	mov	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x18]
	shr	rdx, cl
	and	rdx, 1
	cmp	rdx, 0
	setne	cl
	and	cl, 1
	movzx	r8d, cl
	mov	eax, r8d
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41cc30

	.globl check_subexp_matching_top
	.type check_subexp_matching_top, @function
check_subexp_matching_top:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x98]
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x30], 0
.label_2733:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2729
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x28]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	cmp	edx, 8
	jne	.label_2728
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x28]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	cmp	qword ptr [rax], 0x40
	jge	.label_2728
	mov	eax, 1
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rdx + 0xa0]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rbp - 0x28]
	shl	rsi, 4
	add	rsi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 0x48], rcx
	mov	rcx, rsi
	mov	rsi, qword ptr [rbp - 0x48]
	shl	rsi, cl
	and	rdx, rsi
	cmp	rdx, 0
	je	.label_2728
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x20]
	call	match_ctx_add_subtop
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_2731
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2730
.label_2731:
	jmp	.label_2728
.label_2728:
	jmp	.label_2732
.label_2732:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2733
.label_2729:
	mov	dword ptr [rbp - 4], 0
.label_2730:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41cd60

	.globl transit_state_bkref
	.type transit_state_bkref, @function
transit_state_bkref:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x98]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x48]
	mov	qword ptr [rbp - 0x30], rsi
	mov	qword ptr [rbp - 0x28], 0
.label_2745:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2741
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x50]
	shl	rcx, 4
	add	rax, rcx
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	cmp	edx, 4
	je	.label_2751
	jmp	.label_2742
.label_2751:
	mov	rax, qword ptr [rbp - 0x60]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 8
	and	ecx, 0x3ff
	cmp	ecx, 0
	je	.label_2758
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 8]
	mov	edx, dword ptr [rax + 0xa0]
	call	re_string_context_at
	mov	dword ptr [rbp - 0x54], eax
	mov	rsi, qword ptr [rbp - 0x60]
	mov	eax, dword ptr [rsi + 8]
	shr	eax, 8
	and	eax, 0x3ff
	and	eax, 4
	cmp	eax, 0
	je	.label_2744
	mov	eax, dword ptr [rbp - 0x54]
	and	eax, 1
	cmp	eax, 0
	je	.label_2738
.label_2744:
	mov	rax, qword ptr [rbp - 0x60]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 8
	and	ecx, 0x3ff
	and	ecx, 8
	cmp	ecx, 0
	je	.label_2757
	mov	eax, dword ptr [rbp - 0x54]
	and	eax, 1
	cmp	eax, 0
	jne	.label_2738
.label_2757:
	mov	rax, qword ptr [rbp - 0x60]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 8
	and	ecx, 0x3ff
	and	ecx, 0x20
	cmp	ecx, 0
	je	.label_2762
	mov	eax, dword ptr [rbp - 0x54]
	and	eax, 2
	cmp	eax, 0
	je	.label_2738
.label_2762:
	mov	rax, qword ptr [rbp - 0x60]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 8
	and	ecx, 0x3ff
	and	ecx, 0x80
	cmp	ecx, 0
	je	.label_2747
	mov	eax, dword ptr [rbp - 0x54]
	and	eax, 8
	cmp	eax, 0
	jne	.label_2747
.label_2738:
	jmp	.label_2742
.label_2747:
	jmp	.label_2758
.label_2758:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0xc8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x30]
	call	get_subexp
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_2764
	jmp	.label_2737
.label_2764:
	jmp	.label_2736
.label_2736:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 0xc8]
	jge	.label_2746
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0xd8]
	imul	rcx, qword ptr [rbp - 0x48], 0x28
	add	rax, rcx
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x50]
	jne	.label_2755
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + 8]
	cmp	rax, qword ptr [rbp - 0x30]
	je	.label_2760
.label_2755:
	jmp	.label_2734
.label_2760:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x80]
	sub	rax, qword ptr [rcx + 0x10]
	mov	qword ptr [rbp - 0x70], rax
	cmp	qword ptr [rbp - 0x70], 0
	jne	.label_2761
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x18]
	imul	rcx, rcx, 0x18
	add	rcx, qword ptr [rdx + 0x28]
	mov	rcx, qword ptr [rcx + 0x10]
	imul	rcx, qword ptr [rcx], 0x18
	add	rax, rcx
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_2739
.label_2761:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x18]
	imul	rcx, qword ptr [rdx + rcx*8], 0x18
	add	rax, rcx
	mov	qword ptr [rbp - 0xa0], rax
.label_2739:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x80]
	add	rax, qword ptr [rcx + 0x18]
	mov	rcx, qword ptr [rbp - 0x80]
	sub	rax, qword ptr [rcx + 0x10]
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x38]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rcx + 0xa0]
	mov	rsi, rax
	call	re_string_context_at
	mov	dword ptr [rbp - 0x54], eax
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0xb8]
	mov	rcx, qword ptr [rsi + rcx*8]
	mov	qword ptr [rbp - 0x78], rcx
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0xb8]
	cmp	qword ptr [rsi + rcx*8], 0
	jne	.label_2749
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0xa8], rcx
	jmp	.label_2759
.label_2749:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0xa8], rax
.label_2759:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x78], 0
	jne	.label_2735
	lea	rdi, [rbp - 0x1c]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	ecx, dword ptr [rbp - 0x54]
	call	re_acquire_state_context
	xor	ecx, ecx
	mov	r8b, cl
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0xb8]
	mov	qword ptr [rsi + rdx*8], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 0xb8]
	cmp	qword ptr [rdx + rax*8], 0
	mov	byte ptr [rbp - 0xa9], r8b
	jne	.label_2750
	cmp	dword ptr [rbp - 0x1c], 0
	setne	al
	mov	byte ptr [rbp - 0xa9], al
.label_2750:
	mov	al, byte ptr [rbp - 0xa9]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2763
	jmp	.label_2737
.label_2763:
	jmp	.label_2740
.label_2735:
	lea	rdi, [rbp - 0x98]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsi, qword ptr [rax + 0x50]
	mov	rdx, qword ptr [rbp - 0x68]
	call	re_node_set_init_union
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_2754
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	call	free
	jmp	.label_2737
.label_2754:
	lea	rdi, [rbp - 0x1c]
	lea	rdx, [rbp - 0x98]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x54]
	call	re_acquire_state_context
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0xb8]
	mov	qword ptr [rsi + rdx*8], rax
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	call	free
	xor	ecx, ecx
	mov	r8b, cl
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 0xb8]
	cmp	qword ptr [rdx + rax*8], 0
	mov	byte ptr [rbp - 0xaa], r8b
	jne	.label_2743
	cmp	dword ptr [rbp - 0x1c], 0
	setne	al
	mov	byte ptr [rbp - 0xaa], al
.label_2743:
	mov	al, byte ptr [rbp - 0xaa]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2756
	jmp	.label_2737
.label_2756:
	jmp	.label_2740
.label_2740:
	cmp	qword ptr [rbp - 0x70], 0
	jne	.label_2748
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rax, qword ptr [rax + 0x10]
	cmp	rax, qword ptr [rbp - 0x40]
	jle	.label_2748
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x30]
	call	check_subexp_matching_top
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_2753
	jmp	.label_2737
.label_2753:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x68]
	call	transit_state_bkref
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_2752
	jmp	.label_2737
.label_2752:
	jmp	.label_2748
.label_2748:
	jmp	.label_2734
.label_2734:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_2736
.label_2746:
	jmp	.label_2742
.label_2742:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2745
.label_2741:
	mov	dword ptr [rbp - 0x1c], 0
.label_2737:
	mov	eax, dword ptr [rbp - 0x1c]
	add	rsp, 0xb0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41d2d0

	.globl extend_buffers
	.type extend_buffers, @function
extend_buffers:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	movabs	rax, 0xfffffffffffffff
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rdi
	mov	rdi, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rdi + 0x40]
	setbe	cl
	and	cl, 1
	movzx	esi, cl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_2770
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2765
.label_2770:
	mov	rdi, qword ptr [rbp - 0x20]
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x58]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rdx + 0x40]
	shl	rdx, 1
	cmp	rcx, rdx
	mov	qword ptr [rbp - 0x30], rdi
	mov	qword ptr [rbp - 0x38], rax
	jge	.label_2775
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x58]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_2767
.label_2775:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x40]
	shl	rax, 1
	mov	qword ptr [rbp - 0x40], rax
.label_2767:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rcx, rax
	jge	.label_2780
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x40]
	shl	rcx, 1
	cmp	rax, rcx
	jge	.label_2776
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x58]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_2769
.label_2776:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x40]
	shl	rax, 1
	mov	qword ptr [rbp - 0x48], rax
.label_2769:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_2771
.label_2780:
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	qword ptr [rbp - 0x50], rax
.label_2771:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, rax
	call	re_string_realloc_buffers
	mov	dword ptr [rbp - 0x18], eax
	cmp	dword ptr [rbp - 0x18], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_2781
	mov	eax, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2765
.label_2781:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0xb8], 0
	je	.label_2778
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xb8]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x40]
	add	rcx, 1
	shl	rcx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_2783
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2765
.label_2783:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0xb8], rax
.label_2778:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	byte ptr [rax + 0x88], 0
	je	.label_2782
	mov	rax, qword ptr [rbp - 0x20]
	cmp	dword ptr [rax + 0x90], 1
	jle	.label_2768
	mov	rdi, qword ptr [rbp - 0x20]
	call	build_wcs_upper_buffer
	mov	dword ptr [rbp - 0x18], eax
	cmp	dword ptr [rbp - 0x18], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdi, eax
	cmp	rdi, 0
	je	.label_2779
	mov	eax, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2765
.label_2779:
	jmp	.label_2766
.label_2768:
	mov	rdi, qword ptr [rbp - 0x20]
	call	build_upper_buffer
.label_2766:
	jmp	.label_2774
.label_2782:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	dword ptr [rax + 0x90], 1
	jle	.label_2777
	mov	rdi, qword ptr [rbp - 0x20]
	call	build_wcs_buffer
	jmp	.label_2773
.label_2777:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x78], 0
	je	.label_2772
	mov	rdi, qword ptr [rbp - 0x20]
	call	re_string_translate_buffer
.label_2772:
	jmp	.label_2773
.label_2773:
	jmp	.label_2774
.label_2774:
	mov	dword ptr [rbp - 4], 0
.label_2765:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41d530

	.globl transit_state
	.type transit_state, @function
transit_state:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	al, byte ptr [rdx + 0x68]
	shr	al, 5
	and	al, 1
	movzx	ecx, al
	mov	ecx, ecx
	mov	edx, ecx
	cmp	rdx, 0
	je	.label_2791
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	call	transit_state_mb
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rsi], eax
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	dword ptr [rsi], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_2789
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2788
.label_2789:
	jmp	.label_2791
.label_2791:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax + 0x48]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rax + 0x48], rdx
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	sil, byte ptr [rax + rcx]
	mov	byte ptr [rbp - 0x29], sil
.label_2785:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x58]
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	setne	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_2786
	movzx	eax, byte ptr [rbp - 0x29]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rbp - 8], rcx
	jmp	.label_2788
.label_2786:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x60]
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	setne	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_2784
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rcx + 0xa0]
	mov	rsi, rax
	call	re_string_context_at
	mov	dword ptr [rbp - 0x30], eax
	mov	eax, dword ptr [rbp - 0x30]
	and	eax, 1
	cmp	eax, 0
	je	.label_2790
	movzx	eax, byte ptr [rbp - 0x29]
	add	eax, 0x100
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rbp - 8], rcx
	jmp	.label_2788
.label_2790:
	movzx	eax, byte ptr [rbp - 0x29]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rbp - 8], rcx
	jmp	.label_2788
.label_2784:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax + 0x98]
	mov	rsi, qword ptr [rbp - 0x20]
	call	build_trtable
	test	al, 1
	jne	.label_2787
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2788
.label_2787:
	jmp	.label_2785
.label_2788:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41d6e0

	.globl merge_state_with_log
	.type merge_state_with_log, @function
merge_state_with_log:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x98]
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x48]
	mov	qword ptr [rbp - 0x30], rdx
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rsi + 0xc0]
	jle	.label_2801
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0xb8]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0xc0], rax
	jmp	.label_2796
.label_2801:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0xb8]
	cmp	qword ptr [rcx + rax*8], 0
	jne	.label_2795
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0xb8]
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_2800
.label_2795:
	mov	qword ptr [rbp - 0x68], 0
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x50]
	mov	qword ptr [rbp - 0x60], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2792
	lea	rdi, [rbp - 0x58]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x50]
	mov	qword ptr [rbp - 0x68], rax
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x60]
	call	re_node_set_init_union
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rdx], eax
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	dword ptr [rdx], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_2798
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2797
.label_2798:
	jmp	.label_2793
.label_2792:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rax]
	mov	qword ptr [rbp - 0x58], rcx
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x50], rcx
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x48], rax
.label_2793:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rcx + 0xa0]
	mov	rsi, rax
	call	re_string_context_at
	lea	rdx, [rbp - 0x58]
	mov	dword ptr [rbp - 0x3c], eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rbp - 0x3c]
	call	re_acquire_state_context
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 0xb8]
	mov	qword ptr [rsi + rdx*8], rax
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_2802
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, rax
	call	free
.label_2802:
	jmp	.label_2800
.label_2800:
	jmp	.label_2796
.label_2796:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax + 0x98], 0
	je	.label_2799
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2799
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 8
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, rax
	call	check_subexp_matching_top
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rdx], eax
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	dword ptr [rdx], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_2794
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2797
.label_2794:
	mov	rax, qword ptr [rbp - 0x20]
	mov	cl, byte ptr [rax + 0x68]
	shr	cl, 6
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	je	.label_2804
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 8
	mov	rsi, rax
	call	transit_state_bkref
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rsi], eax
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	dword ptr [rsi], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_2803
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2797
.label_2803:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x20], rax
.label_2804:
	jmp	.label_2799
.label_2799:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_2797:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41d990

	.globl find_recover_state
	.type find_recover_state, @function
find_recover_state:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
.label_2808:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0xc0]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x30], rax
.label_2809:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	cmp	rax, qword ptr [rbp - 0x28]
	jle	.label_2807
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2805
.label_2807:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax + 0x48]
	add	rcx, 1
	mov	qword ptr [rax + 0x48], rcx
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0xb8]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_2809
	xor	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	merge_state_with_log
	mov	qword ptr [rbp - 0x20], rax
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	dword ptr [rdx], 0
	mov	byte ptr [rbp - 0x31], cl
	jne	.label_2806
	cmp	qword ptr [rbp - 0x20], 0
	sete	al
	mov	byte ptr [rbp - 0x31], al
.label_2806:
	mov	al, byte ptr [rbp - 0x31]
	test	al, 1
	jne	.label_2808
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_2805:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41da60

	.globl match_ctx_add_subtop
	.type match_ctx_add_subtop, @function
match_ctx_add_subtop:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0xe8]
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	rdx, qword ptr [rsi + 0xf0]
	sete	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2810
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xf0]
	shl	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xf8]
	mov	rcx, qword ptr [rbp - 0x28]
	shl	rcx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_2811
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2812
.label_2811:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0xf8], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0xf0], rax
.label_2810:
	mov	eax, 1
	mov	edi, eax
	mov	eax, 0x30
	mov	esi, eax
	call	calloc
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0xe8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 0xf8]
	mov	qword ptr [rdi + rsi*8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xe8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0xf8]
	cmp	qword ptr [rsi + rax*8], 0
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_2813
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2812
.label_2813:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xe8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0xf8]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rcx + 0xe8]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rcx + 0xe8], rsi
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xf8]
	mov	rcx, qword ptr [rcx + rdx*8]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_2812:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41dbf0

	.globl get_subexp
	.type get_subexp, @function
get_subexp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x98]
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 8]
	mov	qword ptr [rbp - 0x40], rdx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	search_cur_bkref_entry
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], -1
	je	.label_2820
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xd8]
	imul	rcx, qword ptr [rbp - 0x48], 0x28
	add	rax, rcx
	mov	qword ptr [rbp - 0x50], rax
.label_2851:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_2840
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2816
.label_2840:
	jmp	.label_2848
.label_2848:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, rax
	add	rcx, 0x28
	mov	qword ptr [rbp - 0x50], rcx
	cmp	byte ptr [rax + 0x20], 0
	jne	.label_2851
	jmp	.label_2820
.label_2820:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0x38], 0
.label_2837:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0xe8]
	jge	.label_2830
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xf8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x28]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x30]
	je	.label_2838
	jmp	.label_2835
.label_2838:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x80], rax
	mov	qword ptr [rbp - 0x70], 0
.label_2827:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rcx + 0x20]
	jge	.label_2825
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rax + 8]
	sub	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x88], rax
	cmp	qword ptr [rbp - 0x88], 0
	jle	.label_2826
	mov	rax, qword ptr [rbp - 0x80]
	add	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x30]
	setg	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_2845
	mov	rax, qword ptr [rbp - 0x80]
	add	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x58]
	jle	.label_2819
	jmp	.label_2825
.label_2819:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x80]
	add	rax, qword ptr [rbp - 0x88]
	mov	rsi, rax
	call	clean_state_log_if_needed
	mov	dword ptr [rbp - 0x54], eax
	cmp	dword ptr [rbp - 0x54], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_2836
	mov	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2816
.label_2836:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x40], rax
.label_2845:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x40]
	add	rcx, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rdi, rax
	mov	rsi, rcx
	call	memcmp
	cmp	eax, 0
	je	.label_2823
	jmp	.label_2825
.label_2823:
	jmp	.label_2826
.label_2826:
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x20]
	call	get_subexp_sub
	mov	dword ptr [rbp - 0x54], eax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x40], rcx
	cmp	dword ptr [rbp - 0x54], 1
	jne	.label_2844
	jmp	.label_2821
.label_2844:
	cmp	dword ptr [rbp - 0x54], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2814
	mov	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2816
.label_2814:
	jmp	.label_2821
.label_2821:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_2827
.label_2825:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rcx + 0x20]
	jge	.label_2832
	jmp	.label_2835
.label_2832:
	cmp	qword ptr [rbp - 0x70], 0
	jle	.label_2839
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 1
	mov	qword ptr [rbp - 0x78], rax
.label_2839:
	jmp	.label_2829
.label_2829:
	mov	rax, qword ptr [rbp - 0x78]
	cmp	rax, qword ptr [rbp - 0x20]
	jg	.label_2834
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rax, qword ptr [rcx]
	mov	qword ptr [rbp - 0x98], rax
	cmp	qword ptr [rbp - 0x98], 0
	jle	.label_2849
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x30]
	setge	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_2824
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x58]
	jl	.label_2833
	jmp	.label_2834
.label_2833:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x80]
	add	rax, 1
	mov	ecx, eax
	mov	esi, ecx
	call	extend_buffers
	mov	dword ptr [rbp - 0x54], eax
	cmp	dword ptr [rbp - 0x54], 0
	setne	dl
	and	dl, 1
	movzx	eax, dl
	movsxd	rdi, eax
	cmp	rdi, 0
	je	.label_2847
	mov	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2816
.label_2847:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x40], rax
.label_2824:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x80], rcx
	mov	rcx, qword ptr [rbp - 0x40]
	movsx	edx, byte ptr [rcx + rax]
	mov	rax, qword ptr [rbp - 0x78]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x40]
	movsx	esi, byte ptr [rcx + rax]
	cmp	edx, esi
	je	.label_2831
	jmp	.label_2834
.label_2831:
	jmp	.label_2849
.label_2849:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	cmp	qword ptr [rcx + rax*8], 0
	jne	.label_2841
	jmp	.label_2815
.label_2841:
	mov	ecx, 9
	mov	rax, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0xb8]
	mov	rax, qword ptr [rdx + rax*8]
	add	rax, 8
	mov	qword ptr [rbp - 0xa0], rax
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	rdx, qword ptr [rbp - 0x30]
	call	find_subexp_node
	mov	qword ptr [rbp - 0x90], rax
	cmp	qword ptr [rbp - 0x90], -1
	jne	.label_2828
	jmp	.label_2815
.label_2828:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_2822
	mov	eax, 0x18
	mov	edi, eax
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0x60]
	sub	rcx, qword ptr [rdx]
	add	rcx, 1
	mov	rsi, rcx
	call	calloc
	mov	rcx, qword ptr [rbp - 0x60]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_2850
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2816
.label_2850:
	jmp	.label_2822
.label_2822:
	mov	eax, 9
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rcx]
	mov	r8, qword ptr [rbp - 0x90]
	mov	r9, qword ptr [rbp - 0x78]
	mov	dword ptr [rsp], 9
	mov	dword ptr [rbp - 0xa4], eax
	call	check_arrival
	mov	dword ptr [rbp - 0x54], eax
	cmp	dword ptr [rbp - 0x54], 1
	jne	.label_2843
	jmp	.label_2815
.label_2843:
	cmp	dword ptr [rbp - 0x54], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2818
	mov	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2816
.label_2818:
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x90]
	mov	rdx, qword ptr [rbp - 0x78]
	call	match_ctx_add_sublast
	mov	qword ptr [rbp - 0x68], rax
	cmp	qword ptr [rbp - 0x68], 0
	sete	cl
	and	cl, 1
	movzx	r8d, cl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_2842
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2816
.label_2842:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x20]
	call	get_subexp_sub
	mov	dword ptr [rbp - 0x54], eax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x40], rcx
	cmp	dword ptr [rbp - 0x54], 1
	jne	.label_2846
	jmp	.label_2815
.label_2846:
	cmp	dword ptr [rbp - 0x54], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2817
	mov	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2816
.label_2817:
	jmp	.label_2815
.label_2815:
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 1
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_2829
.label_2834:
	jmp	.label_2835
.label_2835:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_2837
.label_2830:
	mov	dword ptr [rbp - 4], 0
.label_2816:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xb0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41e1f0

	.globl re_node_set_init_union
	.type re_node_set_init_union, @function
re_node_set_init_union:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_2857
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	jle	.label_2857
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2857
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 8], 0
	jle	.label_2857
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	shl	rax, 3
	mov	rdi, rax
	call	malloc
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	sete	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_2861
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2852
.label_2861:
	jmp	.label_2859
.label_2857:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_2860
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	jle	.label_2860
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	re_node_set_init_copy
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2852
.label_2860:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2858
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 8], 0
	jle	.label_2858
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	re_node_set_init_copy
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2852
.label_2858:
	xor	esi, esi
	mov	eax, 0x18
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, rcx
	call	memset
	jmp	.label_2856
.label_2856:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2852
.label_2859:
	mov	qword ptr [rbp - 0x38], 0
	mov	qword ptr [rbp - 0x30], 0
	mov	qword ptr [rbp - 0x28], 0
.label_2853:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rsi + 8]
	mov	byte ptr [rbp - 0x39], cl
	jge	.label_2866
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx + 8]
	setl	dl
	mov	byte ptr [rbp - 0x39], dl
.label_2866:
	mov	al, byte ptr [rbp - 0x39]
	test	al, 1
	jne	.label_2855
	jmp	.label_2863
.label_2855:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rdx + 0x10]
	cmp	rax, qword ptr [rdx + rcx*8]
	jle	.label_2865
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x30], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x38], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_2853
.label_2865:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rdx + 0x10]
	cmp	rax, qword ptr [rdx + rcx*8]
	jne	.label_2864
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
.label_2864:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x38], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_2853
.label_2863:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2867
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x38]
	shl	rcx, 3
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	shl	rdx, 3
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 8]
	sub	rdx, qword ptr [rbp - 0x28]
	shl	rdx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	memcpy
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	sub	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_2854
.label_2867:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2862
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x38]
	shl	rcx, 3
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x30]
	shl	rdx, 3
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rdx + 8]
	sub	rdx, qword ptr [rbp - 0x30]
	shl	rdx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	memcpy
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	sub	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rax
.label_2862:
	jmp	.label_2854
.label_2854:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	dword ptr [rbp - 4], 0
.label_2852:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41e540

	.globl search_cur_bkref_entry
	.type search_cur_bkref_entry, @function
search_cur_bkref_entry:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0xc8]
	mov	qword ptr [rbp - 0x28], rsi
	mov	qword ptr [rbp - 0x38], rsi
	mov	qword ptr [rbp - 0x20], 0
.label_2871:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x28]
	jge	.label_2870
	mov	eax, 2
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, qword ptr [rbp - 0x28]
	mov	rax, rdx
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x28
	add	rax, qword ptr [rcx + 0xd8]
	mov	rax, qword ptr [rax + 8]
	cmp	rax, qword ptr [rbp - 0x18]
	jge	.label_2869
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_2868
.label_2869:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
.label_2868:
	jmp	.label_2871
.label_2870:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x38]
	jge	.label_2872
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x28
	add	rax, qword ptr [rcx + 0xd8]
	mov	rax, qword ptr [rax + 8]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_2872
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2873
.label_2872:
	mov	qword ptr [rbp - 8], -1
.label_2873:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41e620

	.globl clean_state_log_if_needed
	.type clean_state_log_if_needed, @function
clean_state_log_if_needed:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0xc0]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rsi, qword ptr [rdi + 0x40]
	jl	.label_2874
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x58]
	jl	.label_2878
.label_2874:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x30]
	jl	.label_2877
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x58]
	jge	.label_2877
.label_2878:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	ecx, eax
	mov	esi, ecx
	call	extend_buffers
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 0
	setne	dl
	and	dl, 1
	movzx	eax, dl
	movsxd	rdi, eax
	cmp	rdi, 0
	je	.label_2875
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2879
.label_2875:
	jmp	.label_2877
.label_2877:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x18]
	jge	.label_2876
	xor	esi, esi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xb8]
	mov	rcx, qword ptr [rbp - 0x20]
	shl	rcx, 3
	add	rax, rcx
	add	rax, 8
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rcx, qword ptr [rbp - 0x20]
	shl	rcx, 3
	mov	rdi, rax
	mov	rdx, rcx
	call	memset
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0xc0], rax
.label_2876:
	mov	dword ptr [rbp - 4], 0
.label_2879:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41e740

	.globl get_subexp_sub
	.type get_subexp_sub, @function
get_subexp_sub:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	eax, 8
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, 0x10
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rdx]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rsi + 8]
	mov	r8, qword ptr [rbp - 0x28]
	mov	r9, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x48], rsi
	mov	rsi, rcx
	mov	rcx, qword ptr [rbp - 0x48]
	mov	dword ptr [rsp], 8
	mov	dword ptr [rbp - 0x4c], eax
	call	check_arrival
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	je	.label_2882
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2881
.label_2882:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rax + 8]
	call	match_ctx_add_entry
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	setne	r9b
	and	r9b, 1
	movzx	eax, r9b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2880
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2881
.label_2880:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rax, qword ptr [rcx]
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	call	clean_state_log_if_needed
	mov	dword ptr [rbp - 4], eax
.label_2881:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41e840

	.globl find_subexp_node
	.type find_subexp_node, @function
find_subexp_node:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	dword ptr [rbp - 0x24], ecx
	mov	qword ptr [rbp - 0x30], 0
.label_2885:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2884
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x38]
	shl	rcx, 4
	add	rax, rcx
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	cmp	edx, dword ptr [rbp - 0x24]
	jne	.label_2886
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x20]
	jne	.label_2886
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2887
.label_2886:
	jmp	.label_2883
.label_2883:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2885
.label_2884:
	mov	qword ptr [rbp - 8], -1
.label_2887:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41e8f0

	.globl check_arrival
	.type check_arrival, @function
check_arrival:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xf0
	mov	eax, dword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	dword ptr [rbp - 0x3c], eax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x98]
	mov	qword ptr [rbp - 0x48], rcx
	mov	dword ptr [rbp - 0x4c], 0
	mov	qword ptr [rbp - 0x78], 0
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x48]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x58], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 8]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x10]
	movsxd	rsi, dword ptr [rsi + 0xe0]
	add	rdx, rsi
	add	rdx, 1
	cmp	rcx, rdx
	setl	r10b
	and	r10b, 1
	movzx	eax, r10b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2925
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0xb8], rcx
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x10]
	movsxd	rdx, dword ptr [rdx + 0xe0]
	add	rcx, rdx
	add	rcx, 1
	mov	qword ptr [rbp - 0xc0], rcx
	sub	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xc0]
	setl	sil
	and	sil, 1
	movzx	edi, sil
	movsxd	rax, edi
	cmp	rax, 0
	je	.label_2911
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2888
.label_2911:
	movabs	rax, 0x1fffffffffffffff
	mov	rcx, qword ptr [rbp - 0xb8]
	add	rcx, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0xc8], rcx
	cmp	rax, qword ptr [rbp - 0xc8]
	setb	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_2910
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2888
.label_2910:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0xc8]
	shl	rcx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0xb0], rax
	cmp	qword ptr [rbp - 0xb0], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_2902
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2888
.label_2902:
	xor	esi, esi
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0xb8]
	shl	rcx, 3
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 8]
	sub	rcx, qword ptr [rbp - 0xb8]
	shl	rcx, 3
	mov	rdi, rax
	mov	rdx, rcx
	call	memset
.label_2925:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	je	.label_2922
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0xd0], rax
	jmp	.label_2923
.label_2922:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xd0], rax
.label_2923:
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xb8]
	mov	qword ptr [rbp - 0xa0], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0xb8], rax
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x48], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x68]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rcx + 0xa0]
	mov	rsi, rax
	call	re_string_context_at
	mov	dword ptr [rbp - 0xa4], eax
	mov	rcx, qword ptr [rbp - 0x68]
	cmp	rcx, qword ptr [rbp - 0x28]
	jne	.label_2908
	lea	rdi, [rbp - 0x98]
	mov	rsi, qword ptr [rbp - 0x20]
	call	re_node_set_init_1
	mov	dword ptr [rbp - 0x4c], eax
	cmp	dword ptr [rbp - 0x4c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_2913
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2888
.label_2913:
	lea	rsi, [rbp - 0x98]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	ecx, dword ptr [rbp - 0x3c]
	call	check_arrival_expand_ecl
	mov	dword ptr [rbp - 0x4c], eax
	cmp	dword ptr [rbp - 0x4c], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_2918
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_2888
.label_2918:
	jmp	.label_2890
.label_2908:
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x78], rax
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_2892
	mov	rax, qword ptr [rbp - 0x78]
	mov	cl, byte ptr [rax + 0x68]
	shr	cl, 6
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	je	.label_2892
	lea	rdi, [rbp - 0x98]
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 8
	mov	rsi, rax
	call	re_node_set_init_copy
	mov	dword ptr [rbp - 0x4c], eax
	cmp	dword ptr [rbp - 0x4c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_2904
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2888
.label_2904:
	jmp	.label_2912
.label_2892:
	xor	esi, esi
	mov	eax, 0x18
	mov	edx, eax
	lea	rcx, [rbp - 0x98]
	mov	rdi, rcx
	call	memset
.label_2912:
	jmp	.label_2890
.label_2890:
	mov	rax, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rbp - 0x28]
	je	.label_2915
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_2917
	mov	rax, qword ptr [rbp - 0x78]
	mov	cl, byte ptr [rax + 0x68]
	shr	cl, 6
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	je	.label_2917
.label_2915:
	cmp	qword ptr [rbp - 0x90], 0
	je	.label_2899
	lea	rsi, [rbp - 0x98]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	r8d, dword ptr [rbp - 0x3c]
	call	expand_bkref_cache
	mov	dword ptr [rbp - 0x4c], eax
	cmp	dword ptr [rbp - 0x4c], 0
	setne	r9b
	and	r9b, 1
	movzx	eax, r9b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2889
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_2888
.label_2889:
	jmp	.label_2899
.label_2899:
	lea	rdi, [rbp - 0x4c]
	lea	rdx, [rbp - 0x98]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	ecx, dword ptr [rbp - 0xa4]
	call	re_acquire_state_context
	xor	ecx, ecx
	mov	r8b, cl
	mov	qword ptr [rbp - 0x78], rax
	cmp	qword ptr [rbp - 0x78], 0
	mov	byte ptr [rbp - 0xd1], r8b
	jne	.label_2903
	cmp	dword ptr [rbp - 0x4c], 0
	setne	al
	mov	byte ptr [rbp - 0xd1], al
.label_2903:
	mov	al, byte ptr [rbp - 0xd1]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2905
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_2888
.label_2905:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0xb8]
	mov	qword ptr [rdx + rcx*8], rax
.label_2917:
	mov	qword ptr [rbp - 0x70], 0
.label_2916:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x68]
	cmp	rdx, qword ptr [rbp - 0x38]
	mov	byte ptr [rbp - 0xd2], cl
	jge	.label_2921
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x10]
	movsxd	rcx, dword ptr [rcx + 0xe0]
	cmp	rax, rcx
	setle	dl
	mov	byte ptr [rbp - 0xd2], dl
.label_2921:
	mov	al, byte ptr [rbp - 0xd2]
	test	al, 1
	jne	.label_2891
	jmp	.label_2895
.label_2891:
	mov	qword ptr [rbp - 0x90], 0
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	cmp	qword ptr [rcx + rax*8 + 8], 0
	je	.label_2897
	lea	rdi, [rbp - 0x98]
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8 + 8]
	add	rax, 8
	mov	rsi, rax
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x4c], eax
	cmp	dword ptr [rbp - 0x4c], 0
	setne	dl
	and	dl, 1
	movzx	eax, dl
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2907
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_2888
.label_2907:
	jmp	.label_2897
.label_2897:
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_2901
	lea	rcx, [rbp - 0x98]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 0x20
	mov	rdx, rax
	call	check_arrival_add_next_nodes
	mov	dword ptr [rbp - 0x4c], eax
	cmp	dword ptr [rbp - 0x4c], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2919
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_2888
.label_2919:
	jmp	.label_2901
.label_2901:
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
	cmp	qword ptr [rbp - 0x90], 0
	je	.label_2893
	lea	rsi, [rbp - 0x98]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	ecx, dword ptr [rbp - 0x3c]
	call	check_arrival_expand_ecl
	mov	dword ptr [rbp - 0x4c], eax
	cmp	dword ptr [rbp - 0x4c], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_2900
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_2888
.label_2900:
	lea	rsi, [rbp - 0x98]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	r8d, dword ptr [rbp - 0x3c]
	call	expand_bkref_cache
	mov	dword ptr [rbp - 0x4c], eax
	cmp	dword ptr [rbp - 0x4c], 0
	setne	r9b
	and	r9b, 1
	movzx	eax, r9b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2914
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_2888
.label_2914:
	jmp	.label_2893
.label_2893:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x68]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rcx + 0xa0]
	mov	rsi, rax
	call	re_string_context_at
	lea	rdi, [rbp - 0x4c]
	lea	rdx, [rbp - 0x98]
	mov	dword ptr [rbp - 0xa4], eax
	mov	rsi, qword ptr [rbp - 0x48]
	mov	ecx, dword ptr [rbp - 0xa4]
	call	re_acquire_state_context
	xor	ecx, ecx
	mov	r8b, cl
	mov	qword ptr [rbp - 0x78], rax
	cmp	qword ptr [rbp - 0x78], 0
	mov	byte ptr [rbp - 0xd3], r8b
	jne	.label_2894
	cmp	dword ptr [rbp - 0x4c], 0
	setne	al
	mov	byte ptr [rbp - 0xd3], al
.label_2894:
	mov	al, byte ptr [rbp - 0xd3]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2898
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_2888
.label_2898:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0xb8]
	mov	qword ptr [rdx + rcx*8], rax
	cmp	qword ptr [rbp - 0x78], 0
	jne	.label_2909
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0xe0], rax
	jmp	.label_2906
.label_2909:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0xe0], rcx
	jmp	.label_2906
.label_2906:
	mov	rax, qword ptr [rbp - 0xe0]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_2916
.label_2895:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 0xb8]
	cmp	qword ptr [rdi + rax*8], 0
	jne	.label_2920
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0xe8], rcx
	jmp	.label_2924
.label_2920:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, 8
	mov	qword ptr [rbp - 0xe8], rax
.label_2924:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0xb8], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x48], rax
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_2896
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x30]
	call	re_node_set_contains
	cmp	rax, 0
	je	.label_2896
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2888
.label_2896:
	mov	dword ptr [rbp - 4], 1
.label_2888:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xf0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41f1a0

	.globl match_ctx_add_sublast
	.type match_ctx_add_sublast, @function
match_ctx_add_sublast:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	rdx, qword ptr [rsi + 0x18]
	sete	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2926
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x18]
	shl	rax, 1
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	shl	rcx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_2929
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2928
.label_2929:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x18], rax
.label_2926:
	mov	eax, 1
	mov	edi, eax
	mov	eax, 0x28
	mov	esi, eax
	call	calloc
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	setne	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_2927
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x20]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x28]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, 1
	mov	qword ptr [rax + 0x20], rcx
.label_2927:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_2928:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41f2d0

	.globl match_ctx_add_entry
	.type match_ctx_add_entry, @function
match_ctx_add_entry:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xc8]
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	rcx, qword ptr [rdx + 0xd0]
	jl	.label_2933
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xd8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xd0]
	shl	rcx, 1
	imul	rsi, rcx, 0x28
	mov	rdi, rax
	call	realloc
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_2934
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xd8]
	mov	rdi, rax
	call	free
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2931
.label_2934:
	xor	esi, esi
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0xd8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xd8]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rcx, qword ptr [rcx + 0xc8], 0x28
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rdx, qword ptr [rcx + 0xd0], 0x28
	mov	rdi, rax
	call	memset
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0xd0]
	shl	rcx, 1
	mov	qword ptr [rax + 0xd0], rcx
.label_2933:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0xc8], 0
	jle	.label_2930
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xc8]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x28
	add	rax, qword ptr [rcx + 0xd8]
	mov	rax, qword ptr [rax + 8]
	cmp	rax, qword ptr [rbp - 0x20]
	jne	.label_2930
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xc8]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x28
	add	rax, qword ptr [rcx + 0xd8]
	mov	byte ptr [rax + 0x20], 1
.label_2930:
	xor	eax, eax
	mov	ecx, 0xffffffff
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0xc8]
	mov	rdi, qword ptr [rbp - 0x10]
	imul	rsi, rsi, 0x28
	add	rsi, qword ptr [rdi + 0xd8]
	mov	qword ptr [rsi], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0xc8]
	mov	rdi, qword ptr [rbp - 0x10]
	imul	rsi, rsi, 0x28
	add	rsi, qword ptr [rdi + 0xd8]
	mov	qword ptr [rsi + 8], rdx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0xc8]
	mov	rdi, qword ptr [rbp - 0x10]
	imul	rsi, rsi, 0x28
	add	rsi, qword ptr [rdi + 0xd8]
	mov	qword ptr [rsi + 0x10], rdx
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0xc8]
	mov	rdi, qword ptr [rbp - 0x10]
	imul	rsi, rsi, 0x28
	add	rsi, qword ptr [rdi + 0xd8]
	mov	qword ptr [rsi + 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x28]
	cmp	rdx, qword ptr [rbp - 0x30]
	cmove	eax, ecx
	mov	r8w, ax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0xc8]
	mov	rsi, qword ptr [rbp - 0x10]
	imul	rdx, rdx, 0x28
	add	rdx, qword ptr [rsi + 0xd8]
	mov	word ptr [rdx + 0x22], r8w
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rdx + 0xc8]
	mov	rdi, rsi
	add	rdi, 1
	mov	qword ptr [rdx + 0xc8], rdi
	mov	rdx, qword ptr [rbp - 0x10]
	imul	rsi, rsi, 0x28
	add	rsi, qword ptr [rdx + 0xd8]
	mov	byte ptr [rsi + 0x20], 0
	mov	rdx, qword ptr [rbp - 0x10]
	movsxd	rdx, dword ptr [rdx + 0xe0]
	mov	rsi, qword ptr [rbp - 0x30]
	sub	rsi, qword ptr [rbp - 0x28]
	cmp	rdx, rsi
	jge	.label_2932
	mov	rax, qword ptr [rbp - 0x30]
	sub	rax, qword ptr [rbp - 0x28]
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0xe0], ecx
.label_2932:
	mov	dword ptr [rbp - 4], 0
.label_2931:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41f550

	.globl check_arrival_expand_ecl
	.type check_arrival_expand_ecl, @function
check_arrival_expand_ecl:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	lea	rax, [rbp - 0x50]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	dword ptr [rbp - 0x24], ecx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rdx + 8]
	mov	rdi, rax
	call	re_node_set_alloc
	mov	dword ptr [rbp - 0x28], eax
	cmp	dword ptr [rbp - 0x28], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_2942
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2935
.label_2942:
	mov	qword ptr [rbp - 0x30], 0
.label_2941:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2937
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	imul	rcx, qword ptr [rbp - 0x58], 0x18
	add	rax, rcx
	mov	qword ptr [rbp - 0x60], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x24]
	call	find_subexp_node
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], -1
	jne	.label_2943
	lea	rdi, [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x60]
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x28], eax
	cmp	dword ptr [rbp - 0x28], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_2938
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_2935
.label_2938:
	jmp	.label_2936
.label_2943:
	lea	rsi, [rbp - 0x50]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8d, dword ptr [rbp - 0x24]
	call	check_arrival_expand_ecl_sub
	mov	dword ptr [rbp - 0x28], eax
	cmp	dword ptr [rbp - 0x28], 0
	setne	r9b
	and	r9b, 1
	movzx	eax, r9b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2940
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_2935
.label_2940:
	jmp	.label_2936
.label_2936:
	jmp	.label_2939
.label_2939:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2941
.label_2937:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x50]
	mov	qword ptr [rax], rdi
	mov	rdi, qword ptr [rbp - 0x48]
	mov	qword ptr [rax + 8], rdi
	mov	rdi, qword ptr [rbp - 0x40]
	mov	qword ptr [rax + 0x10], rdi
	mov	dword ptr [rbp - 4], 0
.label_2935:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41f700

	.globl expand_bkref_cache
	.type expand_bkref_cache, @function
expand_bkref_cache:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	dword ptr [rbp - 0x2c], r8d
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x98]
	mov	qword ptr [rbp - 0x38], rcx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	search_cur_bkref_entry
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], -1
	jne	.label_2963
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2955
.label_2963:
	jmp	.label_2958
.label_2958:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xd8]
	imul	rcx, qword ptr [rbp - 0x48], 0x28
	add	rax, rcx
	mov	qword ptr [rbp - 0x50], rax
.label_2959:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rax]
	call	re_node_set_contains
	cmp	rax, 0
	jne	.label_2944
	jmp	.label_2946
.label_2944:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x50]
	add	rax, qword ptr [rcx + 0x18]
	mov	rcx, qword ptr [rbp - 0x50]
	sub	rax, qword ptr [rcx + 0x10]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x20]
	jne	.label_2947
	mov	rax, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x60], rax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x60]
	call	re_node_set_contains
	cmp	rax, 0
	je	.label_2962
	jmp	.label_2946
.label_2962:
	lea	rdi, [rbp - 0x78]
	mov	rsi, qword ptr [rbp - 0x60]
	call	re_node_set_init_1
	lea	rsi, [rbp - 0x78]
	mov	dword ptr [rbp - 0x3c], eax
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rbp - 0x2c]
	call	check_arrival_expand_ecl
	lea	rsi, [rbp - 0x78]
	mov	dword ptr [rbp - 0x7c], eax
	mov	rdi, qword ptr [rbp - 0x18]
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x80], eax
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rdi, rdx
	call	free
	mov	r8b, 1
	cmp	dword ptr [rbp - 0x3c], 0
	mov	byte ptr [rbp - 0x9a], r8b
	jne	.label_2954
	mov	al, 1
	cmp	dword ptr [rbp - 0x7c], 0
	mov	byte ptr [rbp - 0x9a], al
	jne	.label_2954
	cmp	dword ptr [rbp - 0x80], 0
	setne	al
	mov	byte ptr [rbp - 0x9a], al
.label_2954:
	mov	al, byte ptr [rbp - 0x9a]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2964
	cmp	dword ptr [rbp - 0x3c], 0
	je	.label_2968
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0xa0], eax
	jmp	.label_2965
.label_2968:
	cmp	dword ptr [rbp - 0x7c], 0
	je	.label_2948
	mov	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0xa4], eax
	jmp	.label_2951
.label_2948:
	mov	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0xa4], eax
.label_2951:
	mov	eax, dword ptr [rbp - 0xa4]
	mov	dword ptr [rbp - 0xa0], eax
.label_2965:
	mov	eax, dword ptr [rbp - 0xa0]
	mov	dword ptr [rbp - 0x3c], eax
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2955
.label_2964:
	jmp	.label_2958
.label_2947:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_2960
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, 8
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rdi, rax
	call	re_node_set_contains
	cmp	rax, 0
	je	.label_2953
	jmp	.label_2946
.label_2953:
	lea	rdi, [rbp - 0x98]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, 8
	mov	rsi, rax
	call	re_node_set_init_copy
	lea	rdi, [rbp - 0x98]
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsi, qword ptr [rbp - 0x60]
	call	re_node_set_insert
	mov	dl, 1
	and	al, 1
	mov	byte ptr [rbp - 0x99], al
	cmp	dword ptr [rbp - 0x3c], 0
	mov	byte ptr [rbp - 0xa5], dl
	jne	.label_2966
	mov	al, byte ptr [rbp - 0x99]
	xor	al, 0xff
	mov	byte ptr [rbp - 0xa5], al
.label_2966:
	mov	al, byte ptr [rbp - 0xa5]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2950
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	call	free
	cmp	dword ptr [rbp - 0x3c], 0
	je	.label_2956
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0xac], eax
	jmp	.label_2961
.label_2956:
	mov	eax, 0xc
	mov	dword ptr [rbp - 0xac], eax
	jmp	.label_2961
.label_2961:
	mov	eax, dword ptr [rbp - 0xac]
	mov	dword ptr [rbp - 0x3c], eax
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2955
.label_2950:
	jmp	.label_2945
.label_2960:
	lea	rdi, [rbp - 0x98]
	mov	rsi, qword ptr [rbp - 0x60]
	call	re_node_set_init_1
	mov	dword ptr [rbp - 0x3c], eax
	cmp	dword ptr [rbp - 0x3c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_2949
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2955
.label_2949:
	jmp	.label_2945
.label_2945:
	lea	rdi, [rbp - 0x3c]
	lea	rdx, [rbp - 0x98]
	mov	rsi, qword ptr [rbp - 0x38]
	call	re_acquire_state
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0xb8]
	mov	qword ptr [rsi + rdx*8], rax
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	call	free
	xor	ecx, ecx
	mov	r8b, cl
	mov	rax, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0xb8]
	cmp	qword ptr [rdx + rax*8], 0
	mov	byte ptr [rbp - 0xad], r8b
	jne	.label_2967
	cmp	dword ptr [rbp - 0x3c], 0
	setne	al
	mov	byte ptr [rbp - 0xad], al
.label_2967:
	mov	al, byte ptr [rbp - 0xad]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2952
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2955
.label_2952:
	jmp	.label_2957
.label_2957:
	jmp	.label_2946
.label_2946:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, rax
	add	rcx, 0x28
	mov	qword ptr [rbp - 0x50], rcx
	cmp	byte ptr [rax + 0x20], 0
	jne	.label_2959
	mov	dword ptr [rbp - 4], 0
.label_2955:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xb0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41fb10

	.globl check_arrival_add_next_nodes
	.type check_arrival_add_next_nodes, @function
check_arrival_add_next_nodes:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	xor	eax, eax
	mov	r8d, 0x18
	mov	r9d, r8d
	lea	r10, [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x98]
	mov	qword ptr [rbp - 0x30], rcx
	mov	dword ptr [rbp - 0x44], 0
	mov	rdi, r10
	mov	esi, eax
	mov	rdx, r9
	call	memset
	mov	qword ptr [rbp - 0x40], 0
.label_2978:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2980
	mov	dword ptr [rbp - 0x64], 0
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x30]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	shr	edx, 0x14
	and	edx, 1
	cmp	edx, 0
	je	.label_2972
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	call	check_node_accept_bytes
	mov	dword ptr [rbp - 0x64], eax
	cmp	dword ptr [rbp - 0x64], 1
	jle	.label_2973
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x18]
	movsxd	rcx, dword ptr [rbp - 0x64]
	add	rax, rcx
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x78], rax
	mov	qword ptr [rbp - 0x58], 0
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_2976
	lea	rdi, [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 8
	mov	rsi, rax
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x44], eax
	cmp	dword ptr [rbp - 0x44], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_2982
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_2971
.label_2982:
	jmp	.label_2976
.label_2976:
	lea	rdi, [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x80]
	call	re_node_set_insert
	and	al, 1
	mov	byte ptr [rbp - 0x31], al
	mov	al, byte ptr [rbp - 0x31]
	xor	al, 0xff
	and	al, 1
	movzx	ecx, al
	movsxd	rsi, ecx
	cmp	rsi, 0
	je	.label_2970
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, rax
	call	free
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2971
.label_2970:
	lea	rdi, [rbp - 0x44]
	lea	rdx, [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x30]
	call	re_acquire_state
	xor	ecx, ecx
	mov	r8b, cl
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0xb8]
	mov	qword ptr [rsi + rdx*8], rax
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0xb8]
	cmp	qword ptr [rdx + rax*8], 0
	mov	byte ptr [rbp - 0x89], r8b
	jne	.label_2981
	cmp	dword ptr [rbp - 0x44], 0
	setne	al
	mov	byte ptr [rbp - 0x89], al
.label_2981:
	mov	al, byte ptr [rbp - 0x89]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2975
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_2971
.label_2975:
	jmp	.label_2973
.label_2973:
	jmp	.label_2972
.label_2972:
	cmp	dword ptr [rbp - 0x64], 0
	jne	.label_2974
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x70]
	shl	rcx, 4
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	check_node_accept
	test	al, 1
	jne	.label_2974
	jmp	.label_2969
.label_2974:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rsi, qword ptr [rcx + rax*8]
	call	re_node_set_insert
	and	al, 1
	mov	byte ptr [rbp - 0x31], al
	mov	al, byte ptr [rbp - 0x31]
	xor	al, 0xff
	and	al, 1
	movzx	edx, al
	movsxd	rcx, edx
	cmp	rcx, 0
	je	.label_2979
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, rax
	call	free
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2971
.label_2979:
	jmp	.label_2969
.label_2969:
	jmp	.label_2977
.label_2977:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_2978
.label_2980:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, rax
	call	free
	mov	dword ptr [rbp - 4], 0
.label_2971:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41fe10

	.globl check_arrival_expand_ecl_sub
	.type check_arrival_expand_ecl_sub, @function
check_arrival_expand_ecl_sub:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	dword ptr [rbp - 0x2c], r8d
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x38], rcx
.label_2990:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x38]
	call	re_node_set_contains
	cmp	rax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_2983
	jmp	.label_2986
.label_2983:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	cmp	edx, dword ptr [rbp - 0x2c]
	jne	.label_2989
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_2989
	cmp	dword ptr [rbp - 0x2c], 9
	jne	.label_2987
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x38]
	call	re_node_set_insert
	and	al, 1
	mov	byte ptr [rbp - 0x39], al
	mov	al, byte ptr [rbp - 0x39]
	xor	al, 0xff
	and	al, 1
	movzx	ecx, al
	movsxd	rsi, ecx
	cmp	rsi, 0
	je	.label_2991
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2984
.label_2991:
	jmp	.label_2987
.label_2987:
	jmp	.label_2986
.label_2989:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x38]
	call	re_node_set_insert
	and	al, 1
	mov	byte ptr [rbp - 0x39], al
	mov	al, byte ptr [rbp - 0x39]
	xor	al, 0xff
	and	al, 1
	movzx	ecx, al
	movsxd	rsi, ecx
	cmp	rsi, 0
	je	.label_2985
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2984
.label_2985:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	cmp	qword ptr [rax + 8], 0
	jne	.label_2992
	jmp	.label_2986
.label_2992:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	cmp	qword ptr [rax + 8], 2
	jne	.label_2988
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8d, dword ptr [rbp - 0x2c]
	call	check_arrival_expand_ecl_sub
	mov	dword ptr [rbp - 0x40], eax
	cmp	dword ptr [rbp - 0x40], 0
	setne	r9b
	and	r9b, 1
	movzx	eax, r9b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2993
	mov	eax, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2984
.label_2993:
	jmp	.label_2988
.label_2988:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_2990
.label_2986:
	mov	dword ptr [rbp - 4], 0
.label_2984:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41ffe0

	.globl re_acquire_state
	.type re_acquire_state, @function
re_acquire_state:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	cmp	qword ptr [rdx + 8], 0
	sete	al
.label_3822:
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2994
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0
	mov	qword ptr [rbp - 8], 0
	jmp	.label_3000
.label_2994:
	xor	esi, esi
	mov	rdi, qword ptr [rbp - 0x20]
	call	calc_state_hash
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x40]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	and	rdi, qword ptr [rcx + 0x88]
	imul	rcx, rdi, 0x18
	add	rax, rcx
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x40], 0
.label_2998:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rcx]
	jge	.label_2995
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rcx]
	je	.label_3001
	jmp	.label_2996
.label_3001:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 8
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	re_node_set_compare
	test	al, 1
	jne	.label_2999
	jmp	.label_3002
.label_2999:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_3000
.label_3002:
	jmp	.label_2996
.label_2996:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_2998
.label_2995:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	call	create_ci_newstate
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	sete	cl
	and	cl, 1
	movzx	r8d, cl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_2997
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0xc
.label_2997:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_3000:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x420130

	.globl create_ci_newstate
	.type create_ci_newstate, @function
create_ci_newstate:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	eax, 0x70
	mov	ecx, eax
	mov	eax, 1
	mov	r8d, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdi, rcx
	mov	rsi, r8
	call	calloc
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	sete	r9b
	and	r9b, 1
	movzx	r10d, r9b
	movsxd	rax, r10d
	cmp	rax, 0
	je	.label_3012
	mov	qword ptr [rbp - 8], 0
	jmp	.label_3003
.label_3012:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 8
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	re_node_set_init_copy
	mov	dword ptr [rbp - 0x2c], eax
	cmp	dword ptr [rbp - 0x2c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_3013
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_3003
.label_3013:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 8
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x50], rax
	mov	qword ptr [rbp - 0x28], 0
.label_3009:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_3014
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rcx, qword ptr [rdx + rcx*8]
	shl	rcx, 4
	add	rax, rcx
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rax + 8]
	and	esi, 0xff
	mov	dword ptr [rbp - 0x44], esi
	cmp	dword ptr [rbp - 0x44], 1
	jne	.label_3004
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 8
	and	ecx, 0x3ff
	cmp	ecx, 0
	jne	.label_3004
	jmp	.label_3007
.label_3004:
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 0x14
	and	ecx, 1
	mov	rax, qword ptr [rbp - 0x38]
	mov	dl, byte ptr [rax + 0x68]
	shr	dl, 5
	and	dl, 1
	movzx	esi, dl
	or	esi, ecx
	mov	dl, sil
	mov	dil, byte ptr [rax + 0x68]
	and	dl, 1
	shl	dl, 5
	and	dil, 0xdf
	or	dil, dl
	mov	byte ptr [rax + 0x68], dil
	cmp	dword ptr [rbp - 0x44], 2
	jne	.label_3010
	mov	rax, qword ptr [rbp - 0x38]
	mov	cl, byte ptr [rax + 0x68]
	and	cl, 0xef
	or	cl, 0x10
	mov	byte ptr [rax + 0x68], cl
	jmp	.label_3006
.label_3010:
	cmp	dword ptr [rbp - 0x44], 4
	jne	.label_3015
	mov	rax, qword ptr [rbp - 0x38]
	mov	cl, byte ptr [rax + 0x68]
	and	cl, 0xbf
	or	cl, 0x40
	mov	byte ptr [rax + 0x68], cl
	jmp	.label_3005
.label_3015:
	cmp	dword ptr [rbp - 0x44], 0xc
	je	.label_3008
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 8
	and	ecx, 0x3ff
	cmp	ecx, 0
	je	.label_3011
.label_3008:
	mov	rax, qword ptr [rbp - 0x38]
	mov	cl, byte ptr [rax + 0x68]
	and	cl, 0x7f
	or	cl, 0x80
	mov	byte ptr [rax + 0x68], cl
.label_3011:
	jmp	.label_3005
.label_3005:
	jmp	.label_3006
.label_3006:
	jmp	.label_3007
.label_3007:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_3009
.label_3014:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x20]
	call	register_state
	mov	dword ptr [rbp - 0x2c], eax
	cmp	dword ptr [rbp - 0x2c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_3016
	mov	rdi, qword ptr [rbp - 0x38]
	call	free_state
	mov	qword ptr [rbp - 0x38], 0
.label_3016:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 8], rax
.label_3003:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x420380

	.globl check_node_accept_bytes
	.type check_node_accept_bytes, @function
check_node_accept_bytes:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 0x18]
	shl	rdx, 4
	add	rcx, rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	rcx, qword ptr [rbp - 0x30]
	mov	eax, dword ptr [rcx + 8]
	and	eax, 0xff
	cmp	eax, 7
	sete	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_3050
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 0x41], dl
	movzx	esi, byte ptr [rbp - 0x41]
	cmp	esi, 0xc2
	setl	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_3062
	mov	dword ptr [rbp - 4], 0
	jmp	.label_3019
.label_3062:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 2
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx + 0x58]
	jle	.label_3022
	mov	dword ptr [rbp - 4], 0
	jmp	.label_3019
.label_3022:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, byte ptr [rcx + rax + 1]
	mov	byte ptr [rbp - 0x42], dl
	movzx	esi, byte ptr [rbp - 0x41]
	cmp	esi, 0xe0
	jge	.label_3031
	mov	al, 1
	movzx	ecx, byte ptr [rbp - 0x42]
	cmp	ecx, 0x80
	mov	byte ptr [rbp - 0x61], al
	jl	.label_3023
	movzx	eax, byte ptr [rbp - 0x42]
	cmp	eax, 0xbf
	setg	cl
	mov	byte ptr [rbp - 0x61], cl
.label_3023:
	mov	al, byte ptr [rbp - 0x61]
	mov	ecx, 2
	xor	edx, edx
	test	al, 1
	cmovne	ecx, edx
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_3019
.label_3031:
	movzx	eax, byte ptr [rbp - 0x41]
	cmp	eax, 0xf0
	jge	.label_3053
	mov	dword ptr [rbp - 0x34], 3
	movzx	eax, byte ptr [rbp - 0x41]
	cmp	eax, 0xe0
	jne	.label_3055
	movzx	eax, byte ptr [rbp - 0x42]
	cmp	eax, 0xa0
	jge	.label_3055
	mov	dword ptr [rbp - 4], 0
	jmp	.label_3019
.label_3055:
	jmp	.label_3057
.label_3053:
	movzx	eax, byte ptr [rbp - 0x41]
	cmp	eax, 0xf8
	jge	.label_3063
	mov	dword ptr [rbp - 0x34], 4
	movzx	eax, byte ptr [rbp - 0x41]
	cmp	eax, 0xf0
	jne	.label_3067
	movzx	eax, byte ptr [rbp - 0x42]
	cmp	eax, 0x90
	jge	.label_3067
	mov	dword ptr [rbp - 4], 0
	jmp	.label_3019
.label_3067:
	jmp	.label_3024
.label_3063:
	movzx	eax, byte ptr [rbp - 0x41]
	cmp	eax, 0xfc
	jge	.label_3026
	mov	dword ptr [rbp - 0x34], 5
	movzx	eax, byte ptr [rbp - 0x41]
	cmp	eax, 0xf8
	jne	.label_3020
	movzx	eax, byte ptr [rbp - 0x42]
	cmp	eax, 0x88
	jge	.label_3020
	mov	dword ptr [rbp - 4], 0
	jmp	.label_3019
.label_3020:
	jmp	.label_3040
.label_3026:
	movzx	eax, byte ptr [rbp - 0x41]
	cmp	eax, 0xfe
	jge	.label_3042
	mov	dword ptr [rbp - 0x34], 6
	movzx	eax, byte ptr [rbp - 0x41]
	cmp	eax, 0xfc
	jne	.label_3045
	movzx	eax, byte ptr [rbp - 0x42]
	cmp	eax, 0x84
	jge	.label_3045
	mov	dword ptr [rbp - 4], 0
	jmp	.label_3019
.label_3045:
	jmp	.label_3060
.label_3042:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_3019
.label_3060:
	jmp	.label_3040
.label_3040:
	jmp	.label_3024
.label_3024:
	jmp	.label_3057
.label_3057:
	jmp	.label_3058
.label_3058:
	mov	rax, qword ptr [rbp - 0x28]
	movsxd	rcx, dword ptr [rbp - 0x34]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx + 0x58]
	jle	.label_3059
	mov	dword ptr [rbp - 4], 0
	jmp	.label_3019
.label_3059:
	mov	qword ptr [rbp - 0x40], 1
.label_3036:
	mov	rax, qword ptr [rbp - 0x40]
	movsxd	rcx, dword ptr [rbp - 0x34]
	cmp	rax, rcx
	jge	.label_3069
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 0x42], dl
	movzx	esi, byte ptr [rbp - 0x42]
	cmp	esi, 0x80
	jl	.label_3018
	movzx	eax, byte ptr [rbp - 0x42]
	cmp	eax, 0xbf
	jle	.label_3027
.label_3018:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_3019
.label_3027:
	jmp	.label_3035
.label_3035:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_3036
.label_3069:
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_3019
.label_3050:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	call	re_string_char_size_at
	mov	dword ptr [rbp - 0x34], eax
	mov	rsi, qword ptr [rbp - 0x30]
	mov	eax, dword ptr [rsi + 8]
	and	eax, 0xff
	cmp	eax, 5
	jne	.label_3047
	cmp	dword ptr [rbp - 0x34], 1
	jg	.label_3051
	mov	dword ptr [rbp - 4], 0
	jmp	.label_3019
.label_3051:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xd8]
	and	rax, 0x40
	cmp	rax, 0
	jne	.label_3038
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 8]
	movzx	edx, byte ptr [rcx + rax]
	cmp	edx, 0xa
	je	.label_3056
.label_3038:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xd8]
	and	rax, 0x80
	cmp	rax, 0
	je	.label_3061
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 8]
	movzx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	jne	.label_3061
.label_3056:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_3019
.label_3061:
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_3019
.label_3047:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	call	re_string_elem_size_at
	mov	dword ptr [rbp - 0x38], eax
	cmp	dword ptr [rbp - 0x38], 1
	jg	.label_3028
	cmp	dword ptr [rbp - 0x34], 1
	jle	.label_3032
.label_3028:
	cmp	dword ptr [rbp - 0x34], 0
	jne	.label_3034
.label_3032:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_3019
.label_3034:
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 6
	jne	.label_3039
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x50], rax
	mov	dword ptr [rbp - 0x54], 0
	mov	rax, qword ptr [rbp - 0x50]
	cmp	qword ptr [rax + 0x40], 0
	jne	.label_3044
	mov	rax, qword ptr [rbp - 0x50]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_3044
	mov	rax, qword ptr [rbp - 0x50]
	cmp	qword ptr [rax + 0x28], 0
	je	.label_3054
.label_3044:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	call	re_string_wchar_at
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_3043
.label_3054:
	xor	eax, eax
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_3043
.label_3043:
	mov	eax, dword ptr [rbp - 0x68]
	mov	dword ptr [rbp - 0x58], eax
	mov	qword ptr [rbp - 0x40], 0
.label_3049:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rcx + 0x28]
	jge	.label_3064
	mov	eax, dword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rdx]
	cmp	eax, dword ptr [rdx + rcx*4]
	jne	.label_3068
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_3017
.label_3068:
	jmp	.label_3021
.label_3021:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_3049
.label_3064:
	mov	qword ptr [rbp - 0x40], 0
.label_3048:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rcx + 0x48]
	jge	.label_3029
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x60], rax
	mov	edi, dword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x60]
	call	iswctype
	cmp	eax, 0
	je	.label_3041
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_3017
.label_3041:
	jmp	.label_3046
.label_3046:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_3048
.label_3029:
	mov	qword ptr [rbp - 0x40], 0
.label_3066:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rcx + 0x40]
	jge	.label_3052
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rcx + 8]
	mov	edx, dword ptr [rcx + rax*4]
	cmp	edx, dword ptr [rbp - 0x58]
	jg	.label_3037
	mov	eax, dword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rdx + 0x10]
	cmp	eax, dword ptr [rdx + rcx*4]
	jg	.label_3037
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_3017
.label_3037:
	jmp	.label_3065
.label_3065:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_3066
.label_3052:
	jmp	.label_3017
.label_3017:
	mov	rax, qword ptr [rbp - 0x50]
	mov	cl, byte ptr [rax + 0x20]
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	jne	.label_3070
	mov	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_3019
.label_3070:
	cmp	dword ptr [rbp - 0x54], 0
	jle	.label_3025
	mov	dword ptr [rbp - 4], 0
	jmp	.label_3019
.label_3025:
	mov	eax, dword ptr [rbp - 0x38]
	cmp	eax, dword ptr [rbp - 0x34]
	jle	.label_3030
	mov	eax, dword ptr [rbp - 0x38]
	mov	dword ptr [rbp - 0x6c], eax
	jmp	.label_3033
.label_3030:
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x6c], eax
.label_3033:
	mov	eax, dword ptr [rbp - 0x6c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_3019
.label_3039:
	mov	dword ptr [rbp - 4], 0
.label_3019:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x420970

	.globl check_node_accept
	.type check_node_accept, @function
check_node_accept:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 8]
	mov	al, byte ptr [rsi + rdx]
	mov	byte ptr [rbp - 0x21], al
	mov	rdx, qword ptr [rbp - 0x18]
	movzx	ecx, byte ptr [rdx + 8]
	dec	ecx
	mov	edx, ecx
	sub	ecx, 6
	mov	qword ptr [rbp - 0x30], rdx
	mov	dword ptr [rbp - 0x34], ecx
	ja	.label_3083
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_3086]]
	jmp	rcx
.label_3848:
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, byte ptr [rax]
	movzx	edx, byte ptr [rbp - 0x21]
	cmp	ecx, edx
	je	.label_3087
	mov	byte ptr [rbp - 1], 0
	jmp	.label_3073
.label_3087:
	jmp	.label_3071
.label_3849:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax]
	movzx	ecx, byte ptr [rbp - 0x21]
	mov	esi, ecx
	call	bitset_contain
	test	al, 1
	jne	.label_3078
	mov	byte ptr [rbp - 1], 0
	jmp	.label_3073
.label_3078:
	jmp	.label_3071
.label_3850:
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, 0x80
	jl	.label_3079
	mov	byte ptr [rbp - 1], 0
	jmp	.label_3073
.label_3079:
	jmp	.label_3085
.label_3085:
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, 0xa
	jne	.label_3080
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x98]
	mov	rax, qword ptr [rax + 0xd8]
	and	rax, 0x40
	cmp	rax, 0
	je	.label_3076
.label_3080:
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, 0
	jne	.label_3077
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x98]
	mov	rax, qword ptr [rax + 0xd8]
	and	rax, 0x80
	cmp	rax, 0
	je	.label_3077
.label_3076:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_3073
.label_3077:
	jmp	.label_3071
.label_3083:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_3073
.label_3071:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 8
	and	ecx, 0x3ff
	cmp	ecx, 0
	je	.label_3075
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rax + 0xa0]
	call	re_string_context_at
	mov	dword ptr [rbp - 0x28], eax
	mov	rsi, qword ptr [rbp - 0x18]
	mov	eax, dword ptr [rsi + 8]
	shr	eax, 8
	and	eax, 0x3ff
	and	eax, 4
	cmp	eax, 0
	je	.label_3072
	mov	eax, dword ptr [rbp - 0x28]
	and	eax, 1
	cmp	eax, 0
	je	.label_3074
.label_3072:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 8
	and	ecx, 0x3ff
	and	ecx, 8
	cmp	ecx, 0
	je	.label_3084
	mov	eax, dword ptr [rbp - 0x28]
	and	eax, 1
	cmp	eax, 0
	jne	.label_3074
.label_3084:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 8
	and	ecx, 0x3ff
	and	ecx, 0x20
	cmp	ecx, 0
	je	.label_3082
	mov	eax, dword ptr [rbp - 0x28]
	and	eax, 2
	cmp	eax, 0
	je	.label_3074
.label_3082:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 8
	and	ecx, 0x3ff
	and	ecx, 0x80
	cmp	ecx, 0
	je	.label_3081
	mov	eax, dword ptr [rbp - 0x28]
	and	eax, 8
	cmp	eax, 0
	jne	.label_3081
.label_3074:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_3073
.label_3081:
	jmp	.label_3075
.label_3075:
	mov	byte ptr [rbp - 1], 1
.label_3073:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x420ba0

	.globl re_string_elem_size_at
	.type re_string_elem_size_at, @function
re_string_elem_size_at:
	push	rbp
	mov	rbp, rsp
	mov	eax, 1
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x420bc0

	.globl transit_state_mb
	.type transit_state_mb, @function
transit_state_mb:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x98]
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x30], 0
.label_3097:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x10]
	jge	.label_3102
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	shr	edx, 0x14
	and	edx, 1
	cmp	edx, 0
	jne	.label_3105
	jmp	.label_3088
.label_3105:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	shr	edx, 8
	and	edx, 0x3ff
	cmp	edx, 0
	je	.label_3096
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rax + 0x48]
	mov	rax, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rax + 0xa0]
	call	re_string_context_at
	mov	dword ptr [rbp - 0x6c], eax
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdi, qword ptr [rbp - 0x20]
	shl	rsi, 4
	add	rsi, qword ptr [rdi]
	mov	eax, dword ptr [rsi + 8]
	shr	eax, 8
	and	eax, 0x3ff
	and	eax, 4
	cmp	eax, 0
	je	.label_3108
	mov	eax, dword ptr [rbp - 0x6c]
	and	eax, 1
	cmp	eax, 0
	je	.label_3093
.label_3108:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	shr	edx, 8
	and	edx, 0x3ff
	and	edx, 8
	cmp	edx, 0
	je	.label_3103
	mov	eax, dword ptr [rbp - 0x6c]
	and	eax, 1
	cmp	eax, 0
	jne	.label_3093
.label_3103:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	shr	edx, 8
	and	edx, 0x3ff
	and	edx, 0x20
	cmp	edx, 0
	je	.label_3101
	mov	eax, dword ptr [rbp - 0x6c]
	and	eax, 2
	cmp	eax, 0
	je	.label_3093
.label_3101:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	shr	edx, 8
	and	edx, 0x3ff
	and	edx, 0x80
	cmp	edx, 0
	je	.label_3089
	mov	eax, dword ptr [rbp - 0x6c]
	and	eax, 8
	cmp	eax, 0
	jne	.label_3089
.label_3093:
	jmp	.label_3088
.label_3089:
	jmp	.label_3096
.label_3096:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x48]
	call	check_node_accept_bytes
	mov	dword ptr [rbp - 0x5c], eax
	cmp	dword ptr [rbp - 0x5c], 0
	jne	.label_3104
	jmp	.label_3088
.label_3104:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	movsxd	rcx, dword ptr [rbp - 0x5c]
	add	rax, rcx
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rax + 0xe0]
	cmp	edx, dword ptr [rbp - 0x5c]
	jge	.label_3090
	mov	eax, dword ptr [rbp - 0x5c]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_3095
.label_3090:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0xe0]
	mov	dword ptr [rbp - 0x7c], ecx
.label_3095:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	dword ptr [rcx + 0xe0], eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x68]
	call	clean_state_log_if_needed
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 0
	setne	dl
	and	dl, 1
	movzx	eax, dl
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_3099
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_3098
.label_3099:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rdx + 0x18]
	imul	rcx, qword ptr [rdx + rcx*8], 0x18
	add	rax, rcx
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x78], rax
	cmp	qword ptr [rbp - 0x78], 0
	jne	.label_3091
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rax]
	mov	qword ptr [rbp - 0x48], rcx
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x40], rcx
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_3092
.label_3091:
	lea	rdi, [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsi, qword ptr [rax + 0x50]
	mov	rdx, qword ptr [rbp - 0x50]
	call	re_node_set_init_union
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_3107
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_3098
.label_3107:
	jmp	.label_3092
.label_3092:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x68]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rcx + 0xa0]
	mov	rsi, rax
	call	re_string_context_at
	lea	rdi, [rbp - 0x24]
	lea	rdx, [rbp - 0x48]
	mov	dword ptr [rbp - 0x6c], eax
	mov	rsi, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x6c]
	call	re_acquire_state_context
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0xb8]
	mov	qword ptr [rsi + rdx*8], rax
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_3100
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	free
.label_3100:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0xb8]
	cmp	qword ptr [rsi + rdx*8], 0
	mov	byte ptr [rbp - 0x7d], cl
	jne	.label_3106
	cmp	dword ptr [rbp - 0x24], 0
	setne	al
	mov	byte ptr [rbp - 0x7d], al
.label_3106:
	mov	al, byte ptr [rbp - 0x7d]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_3094
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_3098
.label_3094:
	jmp	.label_3088
.label_3088:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_3097
.label_3102:
	mov	dword ptr [rbp - 4], 0
.label_3098:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x420f80

	.globl build_trtable
	.type build_trtable, @function
build_trtable:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xe0
	mov	eax, 0x3800
	mov	ecx, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	byte ptr [rbp - 0x35], 0
	mov	byte ptr [rbp - 0x49], 0
	mov	byte ptr [rbp - 0x4a], 0
	mov	qword ptr [rbp - 0x68], 0
	mov	rdi, rcx
	call	malloc
	mov	qword ptr [rbp - 0xc8], rax
	cmp	qword ptr [rbp - 0xc8], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_3163
	mov	byte ptr [rbp - 1], 0
	jmp	.label_3140
.label_3163:
	mov	byte ptr [rbp - 0x49], 1
	mov	rax, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0xc8]
	add	rax, 0x1800
	mov	qword ptr [rbp - 0xa0], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 0x58], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 0x60], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0xa0]
	call	group_nodes_into_DFAstates
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], 0
	setle	r8b
	and	r8b, 1
	movzx	r9d, r8b
	movsxd	rax, r9d
	cmp	rax, 0
	je	.label_3124
	test	byte ptr [rbp - 0x49], 1
	je	.label_3137
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rdi, rax
	call	free
.label_3137:
	cmp	qword ptr [rbp - 0x58], 0
	jne	.label_3145
	mov	eax, 8
	mov	edi, eax
	mov	eax, 0x100
	mov	esi, eax
	call	calloc
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rsi + 0x58], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x58], 0
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_3152
	mov	byte ptr [rbp - 1], 0
	jmp	.label_3140
.label_3152:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_3140
.label_3145:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_3140
.label_3124:
	lea	rdi, [rbp - 0x90]
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	rsi, rax
	call	re_node_set_alloc
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_3175
	jmp	.label_3112
.label_3175:
	movabs	rax, 0xaaaaaaaaaaaa855
	mov	qword ptr [rbp - 0xd0], rax
	mov	rax, qword ptr [rbp - 0xd0]
	cmp	rax, qword ptr [rbp - 0x58]
	setb	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_3113
	jmp	.label_3112
.label_3113:
	imul	rax, qword ptr [rbp - 0x58], 3
	shl	rax, 3
	add	rax, 0x3800
	cmp	rax, 0xfc0
	jae	.label_3129
	mov	rax, qword ptr [rbp - 0x58]
	lea	rax, [rax + rax*2]
	lea	rax, [rax*8 + 0xf]
	and	rax, 0xfffffffffffffff0
	mov	rcx, rsp
	sub	rcx, rax
	mov	rsp, rcx
	mov	qword ptr [rbp - 0x68], rcx
	jmp	.label_3138
.label_3129:
	imul	rax, qword ptr [rbp - 0x58], 3
	shl	rax, 3
	mov	rdi, rax
	call	malloc
	mov	qword ptr [rbp - 0x68], rax
	cmp	qword ptr [rbp - 0x68], 0
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_3154
	jmp	.label_3112
.label_3112:
	test	byte ptr [rbp - 0x4a], 1
	je	.label_3166
	mov	rax, qword ptr [rbp - 0x68]
	mov	rdi, rax
	call	free
.label_3166:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rdi, rax
	call	free
	mov	qword ptr [rbp - 0x28], 0
.label_3141:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x58]
	jge	.label_3172
	mov	rax, qword ptr [rbp - 0x98]
	imul	rcx, qword ptr [rbp - 0x28], 0x18
	add	rax, rcx
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_3141
.label_3172:
	test	byte ptr [rbp - 0x49], 1
	je	.label_3117
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rdi, rax
	call	free
.label_3117:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_3140
.label_3154:
	mov	byte ptr [rbp - 0x4a], 1
.label_3138:
	lea	rdi, [rbp - 0xc0]
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x58]
	shl	rcx, 3
	add	rax, rcx
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x58]
	shl	rcx, 3
	add	rax, rcx
	mov	qword ptr [rbp - 0x78], rax
	call	bitset_empty
	mov	qword ptr [rbp - 0x28], 0
.label_3128:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x58]
	jge	.label_3146
	mov	qword ptr [rbp - 0x88], 0
	mov	qword ptr [rbp - 0x30], 0
.label_3130:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	imul	rcx, rcx, 0x18
	add	rcx, qword ptr [rbp - 0x98]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_3156
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	imul	rcx, rcx, 0x18
	add	rcx, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0xd8], rax
	cmp	qword ptr [rbp - 0xd8], -1
	je	.label_3126
	lea	rdi, [rbp - 0x90]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	imul	rcx, qword ptr [rbp - 0xd8], 0x18
	add	rax, rcx
	mov	rsi, rax
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	setne	dl
	and	dl, 1
	movzx	eax, dl
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_3116
	jmp	.label_3112
.label_3116:
	jmp	.label_3126
.label_3126:
	jmp	.label_3127
.label_3127:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_3130
.label_3156:
	lea	rdi, [rbp - 0x1c]
	lea	rdx, [rbp - 0x90]
	xor	ecx, ecx
	mov	rsi, qword ptr [rbp - 0x10]
	call	re_acquire_state_context
	xor	ecx, ecx
	mov	r8b, cl
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	qword ptr [rsi + rdx*8], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x68]
	cmp	qword ptr [rdx + rax*8], 0
	mov	byte ptr [rbp - 0xd9], r8b
	jne	.label_3142
	cmp	dword ptr [rbp - 0x1c], 0
	setne	al
	mov	byte ptr [rbp - 0xd9], al
.label_3142:
	mov	al, byte ptr [rbp - 0xd9]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_3159
	jmp	.label_3112
.label_3159:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rcx + rax*8]
	mov	dl, byte ptr [rax + 0x68]
	shr	dl, 7
	movzx	esi, dl
	cmp	esi, 0
	je	.label_3167
	lea	rdi, [rbp - 0x1c]
	lea	rdx, [rbp - 0x90]
	mov	ecx, 1
	mov	rsi, qword ptr [rbp - 0x10]
	call	re_acquire_state_context
	xor	ecx, ecx
	mov	r8b, cl
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	qword ptr [rsi + rdx*8], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x70]
	cmp	qword ptr [rdx + rax*8], 0
	mov	byte ptr [rbp - 0xda], r8b
	jne	.label_3178
	cmp	dword ptr [rbp - 0x1c], 0
	setne	al
	mov	byte ptr [rbp - 0xda], al
.label_3178:
	mov	al, byte ptr [rbp - 0xda]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_3122
	jmp	.label_3112
.label_3122:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x70]
	cmp	rax, qword ptr [rdx + rcx*8]
	je	.label_3133
	mov	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_3133
	mov	byte ptr [rbp - 0x35], 1
.label_3133:
	lea	rdi, [rbp - 0x1c]
	lea	rdx, [rbp - 0x90]
	mov	ecx, 2
	mov	rsi, qword ptr [rbp - 0x10]
	call	re_acquire_state_context
	xor	ecx, ecx
	mov	r8b, cl
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x78]
	mov	qword ptr [rsi + rdx*8], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x78]
	cmp	qword ptr [rdx + rax*8], 0
	mov	byte ptr [rbp - 0xdb], r8b
	jne	.label_3155
	cmp	dword ptr [rbp - 0x1c], 0
	setne	al
	mov	byte ptr [rbp - 0xdb], al
.label_3155:
	mov	al, byte ptr [rbp - 0xdb]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_3110
	jmp	.label_3112
.label_3110:
	jmp	.label_3176
.label_3167:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	qword ptr [rdx + rcx*8], rax
.label_3176:
	lea	rdi, [rbp - 0xc0]
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0xa0]
	mov	rsi, rax
	call	bitset_merge
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_3128
.label_3146:
	test	byte ptr [rbp - 0x35], 1
	jne	.label_3135
	mov	eax, 8
	mov	edi, eax
	mov	eax, 0x100
	mov	esi, eax
	call	calloc
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rsi + 0x58], rax
	mov	qword ptr [rbp - 0x60], rax
	cmp	qword ptr [rbp - 0x60], 0
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_3144
	jmp	.label_3112
.label_3144:
	mov	qword ptr [rbp - 0x28], 0
.label_3148:
	cmp	qword ptr [rbp - 0x28], 4
	jge	.label_3158
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 6
	mov	ecx, eax
	mov	dword ptr [rbp - 0x34], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp + rax*8 - 0xc0]
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x48], 1
.label_3151:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_3169
	mov	rax, qword ptr [rbp - 0x40]
	and	rax, 1
	cmp	rax, 0
	je	.label_3150
	mov	qword ptr [rbp - 0x30], 0
.label_3119:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	shl	rcx, 5
	add	rcx, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rcx + rax*8]
	and	rax, qword ptr [rbp - 0x48]
	cmp	rax, 0
	jne	.label_3177
	jmp	.label_3168
.label_3168:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_3119
.label_3177:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8 + 0xb8]
	and	rax, qword ptr [rbp - 0x48]
	cmp	rax, 0
	je	.label_3123
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rcx + rax*8]
	movsxd	rcx, dword ptr [rbp - 0x34]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_3134
.label_3123:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rcx + rax*8]
	movsxd	rcx, dword ptr [rbp - 0x34]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	qword ptr [rdx + rcx*8], rax
.label_3134:
	jmp	.label_3150
.label_3150:
	jmp	.label_3164
.label_3164:
	mov	rax, qword ptr [rbp - 0x48]
	shl	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	shr	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	ecx, dword ptr [rbp - 0x34]
	add	ecx, 1
	mov	dword ptr [rbp - 0x34], ecx
	jmp	.label_3151
.label_3169:
	jmp	.label_3165
.label_3165:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_3148
.label_3158:
	jmp	.label_3118
.label_3135:
	mov	eax, 8
	mov	edi, eax
	mov	eax, 0x200
	mov	esi, eax
	call	calloc
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rsi + 0x60], rax
	mov	qword ptr [rbp - 0x60], rax
	cmp	qword ptr [rbp - 0x60], 0
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_3173
	jmp	.label_3112
.label_3173:
	mov	qword ptr [rbp - 0x28], 0
.label_3147:
	cmp	qword ptr [rbp - 0x28], 4
	jge	.label_3115
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 6
	mov	ecx, eax
	mov	dword ptr [rbp - 0x34], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp + rax*8 - 0xc0]
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x48], 1
.label_3174:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_3131
	mov	rax, qword ptr [rbp - 0x40]
	and	rax, 1
	cmp	rax, 0
	je	.label_3136
	mov	qword ptr [rbp - 0x30], 0
.label_3161:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	shl	rcx, 5
	add	rcx, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rcx + rax*8]
	and	rax, qword ptr [rbp - 0x48]
	cmp	rax, 0
	jne	.label_3143
	jmp	.label_3153
.label_3153:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_3161
.label_3143:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rcx + rax*8]
	movsxd	rcx, dword ptr [rbp - 0x34]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rcx + rax*8]
	mov	esi, dword ptr [rbp - 0x34]
	add	esi, 0x100
	movsxd	rcx, esi
	mov	rdx, qword ptr [rbp - 0x60]
	mov	qword ptr [rdx + rcx*8], rax
.label_3136:
	jmp	.label_3171
.label_3171:
	mov	rax, qword ptr [rbp - 0x48]
	shl	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	shr	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	ecx, dword ptr [rbp - 0x34]
	add	ecx, 1
	mov	dword ptr [rbp - 0x34], ecx
	jmp	.label_3174
.label_3131:
	jmp	.label_3139
.label_3139:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_3147
.label_3115:
	jmp	.label_3118
.label_3118:
	mov	eax, 0xa
	mov	esi, eax
	lea	rdi, [rbp - 0xc0]
	call	bitset_contain
	test	al, 1
	jne	.label_3125
	jmp	.label_3160
.label_3125:
	mov	qword ptr [rbp - 0x30], 0
.label_3162:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x58]
	jge	.label_3120
	mov	eax, 0xa
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x30]
	shl	rcx, 5
	add	rcx, qword ptr [rbp - 0xa0]
	mov	rdi, rcx
	call	bitset_contain
	test	al, 1
	jne	.label_3109
	jmp	.label_3149
.label_3109:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	qword ptr [rcx + 0x50], rax
	test	byte ptr [rbp - 0x35], 1
	je	.label_3132
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	qword ptr [rcx + 0x850], rax
.label_3132:
	jmp	.label_3120
.label_3149:
	jmp	.label_3114
.label_3114:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_3162
.label_3120:
	jmp	.label_3160
.label_3160:
	test	byte ptr [rbp - 0x4a], 1
	je	.label_3170
	mov	rax, qword ptr [rbp - 0x68]
	mov	rdi, rax
	call	free
.label_3170:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rdi, rax
	call	free
	mov	qword ptr [rbp - 0x28], 0
.label_3121:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x58]
	jge	.label_3111
	mov	rax, qword ptr [rbp - 0x98]
	imul	rcx, qword ptr [rbp - 0x28], 0x18
	add	rax, rcx
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_3121
.label_3111:
	test	byte ptr [rbp - 0x49], 1
	je	.label_3157
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rdi, rax
	call	free
.label_3157:
	mov	byte ptr [rbp - 1], 1
.label_3140:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	mov	rsp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x421970

	.globl group_nodes_into_DFAstates
	.type group_nodes_into_DFAstates, @function
group_nodes_into_DFAstates:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x100
	lea	rax, [rbp - 0x70]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 8
	mov	qword ptr [rbp - 0x78], rcx
	mov	rdi, rax
	call	bitset_empty
	mov	qword ptr [rbp - 0x50], 0
	mov	qword ptr [rbp - 0x38], 0
.label_3210:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x78]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_3223
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x10]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x80]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	mov	dword ptr [rbp - 0x84], edx
	mov	rax, qword ptr [rbp - 0x80]
	mov	edx, dword ptr [rax + 8]
	shr	edx, 8
	and	edx, 0x3ff
	mov	dword ptr [rbp - 0x88], edx
	cmp	dword ptr [rbp - 0x84], 1
	jne	.label_3228
	lea	rdi, [rbp - 0x70]
	mov	rax, qword ptr [rbp - 0x80]
	movzx	ecx, byte ptr [rax]
	mov	esi, ecx
	call	bitset_set
	jmp	.label_3189
.label_3228:
	cmp	dword ptr [rbp - 0x84], 3
	jne	.label_3191
	lea	rdi, [rbp - 0x70]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rax]
	call	bitset_merge
	jmp	.label_3199
.label_3191:
	cmp	dword ptr [rbp - 0x84], 5
	jne	.label_3201
	mov	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_3205
	lea	rdi, [rbp - 0x70]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rax + 0x78]
	call	bitset_merge
	jmp	.label_3182
.label_3205:
	lea	rdi, [rbp - 0x70]
	call	bitset_set_all
.label_3182:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xd8]
	and	rax, 0x40
	cmp	rax, 0
	jne	.label_3218
	mov	eax, 0xa
	mov	esi, eax
	lea	rdi, [rbp - 0x70]
	call	bitset_clear
.label_3218:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xd8]
	and	rax, 0x80
	cmp	rax, 0
	je	.label_3225
	xor	eax, eax
	mov	esi, eax
	lea	rdi, [rbp - 0x70]
	call	bitset_clear
.label_3225:
	jmp	.label_3206
.label_3201:
	cmp	dword ptr [rbp - 0x84], 7
	jne	.label_3235
	mov	esi, 0xff
	mov	eax, 0x10
	mov	edx, eax
	lea	rcx, [rbp - 0x70]
	mov	rdi, rcx
	call	memset
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xd8]
	and	rcx, 0x40
	cmp	rcx, 0
	jne	.label_3181
	mov	eax, 0xa
	mov	esi, eax
	lea	rdi, [rbp - 0x70]
	call	bitset_clear
.label_3181:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xd8]
	and	rax, 0x80
	cmp	rax, 0
	je	.label_3192
	xor	eax, eax
	mov	esi, eax
	lea	rdi, [rbp - 0x70]
	call	bitset_clear
.label_3192:
	jmp	.label_3188
.label_3235:
	jmp	.label_3187
.label_3188:
	jmp	.label_3206
.label_3206:
	jmp	.label_3199
.label_3199:
	jmp	.label_3189
.label_3189:
	cmp	dword ptr [rbp - 0x88], 0
	je	.label_3209
	mov	eax, dword ptr [rbp - 0x88]
	and	eax, 0x20
	cmp	eax, 0
	je	.label_3212
	mov	eax, 0xa
	mov	esi, eax
	lea	rdi, [rbp - 0x70]
	call	bitset_contain
	lea	rdi, [rbp - 0x70]
	and	al, 1
	mov	byte ptr [rbp - 0x89], al
	call	bitset_empty
	test	byte ptr [rbp - 0x89], 1
	je	.label_3224
	mov	eax, 0xa
	mov	esi, eax
	lea	rdi, [rbp - 0x70]
	call	bitset_set
	jmp	.label_3230
.label_3224:
	jmp	.label_3187
.label_3230:
	jmp	.label_3212
.label_3212:
	mov	eax, dword ptr [rbp - 0x88]
	and	eax, 0x80
	cmp	eax, 0
	je	.label_3196
	lea	rdi, [rbp - 0x70]
	call	bitset_empty
	jmp	.label_3187
.label_3196:
	mov	eax, dword ptr [rbp - 0x88]
	and	eax, 4
	cmp	eax, 0
	je	.label_3179
	mov	qword ptr [rbp - 0x98], 0
	cmp	dword ptr [rbp - 0x84], 1
	jne	.label_3183
	mov	rax, qword ptr [rbp - 0x80]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 0x16
	and	ecx, 1
	cmp	ecx, 0
	jne	.label_3183
	lea	rdi, [rbp - 0x70]
	call	bitset_empty
	jmp	.label_3187
.label_3183:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_3200
	mov	qword ptr [rbp - 0x40], 0
.label_3226:
	cmp	qword ptr [rbp - 0x40], 4
	jge	.label_3208
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8 + 0xb8]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x78]
	mov	rcx, qword ptr [rdx + rcx*8]
	xor	rcx, 0xffffffffffffffff
	or	rax, rcx
	mov	rcx, qword ptr [rbp - 0x40]
	and	rax, qword ptr [rbp + rcx*8 - 0x70]
	mov	qword ptr [rbp + rcx*8 - 0x70], rax
	or	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_3226
.label_3208:
	jmp	.label_3184
.label_3200:
	mov	qword ptr [rbp - 0x40], 0
.label_3197:
	cmp	qword ptr [rbp - 0x40], 4
	jge	.label_3231
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8 + 0xb8]
	mov	rcx, qword ptr [rbp - 0x40]
	and	rax, qword ptr [rbp + rcx*8 - 0x70]
	mov	qword ptr [rbp + rcx*8 - 0x70], rax
	or	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_3197
.label_3231:
	jmp	.label_3184
.label_3184:
	cmp	qword ptr [rbp - 0x98], 0
	jne	.label_3185
	jmp	.label_3187
.label_3185:
	jmp	.label_3179
.label_3179:
	mov	eax, dword ptr [rbp - 0x88]
	and	eax, 8
	cmp	eax, 0
	je	.label_3194
	mov	qword ptr [rbp - 0xa0], 0
	cmp	dword ptr [rbp - 0x84], 1
	jne	.label_3198
	mov	rax, qword ptr [rbp - 0x80]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 0x16
	and	ecx, 1
	cmp	ecx, 0
	je	.label_3198
	lea	rdi, [rbp - 0x70]
	call	bitset_empty
	jmp	.label_3187
.label_3198:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_3215
	mov	qword ptr [rbp - 0x40], 0
.label_3222:
	cmp	qword ptr [rbp - 0x40], 4
	jge	.label_3220
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8 + 0xb8]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x78]
	and	rax, qword ptr [rdx + rcx*8]
	xor	rax, 0xffffffffffffffff
	mov	rcx, qword ptr [rbp - 0x40]
	and	rax, qword ptr [rbp + rcx*8 - 0x70]
	mov	qword ptr [rbp + rcx*8 - 0x70], rax
	or	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0xa0], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_3222
.label_3220:
	jmp	.label_3186
.label_3215:
	mov	qword ptr [rbp - 0x40], 0
.label_3213:
	cmp	qword ptr [rbp - 0x40], 4
	jge	.label_3195
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8 + 0xb8]
	xor	rax, 0xffffffffffffffff
	mov	rcx, qword ptr [rbp - 0x40]
	and	rax, qword ptr [rbp + rcx*8 - 0x70]
	mov	qword ptr [rbp + rcx*8 - 0x70], rax
	or	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0xa0], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_3213
.label_3195:
	jmp	.label_3186
.label_3186:
	cmp	qword ptr [rbp - 0xa0], 0
	jne	.label_3227
	jmp	.label_3187
.label_3227:
	jmp	.label_3194
.label_3194:
	jmp	.label_3209
.label_3209:
	mov	qword ptr [rbp - 0x40], 0
.label_3233:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x50]
	jge	.label_3211
	cmp	dword ptr [rbp - 0x84], 1
	jne	.label_3217
	mov	rax, qword ptr [rbp - 0x40]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x80]
	movzx	edx, byte ptr [rcx]
	mov	esi, edx
	mov	rdi, rax
	call	bitset_contain
	test	al, 1
	jne	.label_3217
	jmp	.label_3204
.label_3217:
	mov	qword ptr [rbp - 0xe8], 0
	mov	qword ptr [rbp - 0x48], 0
.label_3234:
	cmp	qword ptr [rbp - 0x48], 4
	jge	.label_3232
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp + rax*8 - 0x70]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x40]
	shl	rdx, 5
	add	rdx, qword ptr [rbp - 0x28]
	and	rax, qword ptr [rdx + rcx*8]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp + rcx*8 - 0xc0], rax
	or	rax, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0xe8], rax
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_3234
.label_3232:
	cmp	qword ptr [rbp - 0xe8], 0
	jne	.label_3180
	jmp	.label_3204
.label_3180:
	mov	qword ptr [rbp - 0xf8], 0
	mov	qword ptr [rbp - 0xf0], 0
	mov	qword ptr [rbp - 0x48], 0
.label_3207:
	cmp	qword ptr [rbp - 0x48], 4
	jge	.label_3190
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp + rax*8 - 0x70]
	xor	rax, 0xffffffffffffffff
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x40]
	shl	rdx, 5
	add	rdx, qword ptr [rbp - 0x28]
	and	rax, qword ptr [rdx + rcx*8]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp + rcx*8 - 0xe0], rax
	or	rax, qword ptr [rbp - 0xf0]
	mov	qword ptr [rbp - 0xf0], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp + rax*8 - 0x70]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x40]
	shl	rdx, 5
	add	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rdx + rcx*8]
	xor	rcx, 0xffffffffffffffff
	and	rax, rcx
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp + rcx*8 - 0x70], rax
	or	rax, qword ptr [rbp - 0xf8]
	mov	qword ptr [rbp - 0xf8], rax
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_3207
.label_3190:
	cmp	qword ptr [rbp - 0xf0], 0
	je	.label_3236
	lea	rsi, [rbp - 0xe0]
	mov	rax, qword ptr [rbp - 0x50]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x28]
	mov	rdi, rax
	call	bitset_copy
	lea	rsi, [rbp - 0xc0]
	mov	rax, qword ptr [rbp - 0x40]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x28]
	mov	rdi, rax
	call	bitset_copy
	mov	rax, qword ptr [rbp - 0x20]
	imul	rsi, qword ptr [rbp - 0x50], 0x18
	add	rax, rsi
	mov	rsi, qword ptr [rbp - 0x40]
	imul	rsi, rsi, 0x18
	add	rsi, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	re_node_set_init_copy
	mov	dword ptr [rbp - 0x2c], eax
	cmp	dword ptr [rbp - 0x2c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_3219
	jmp	.label_3202
.label_3219:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
.label_3236:
	mov	rax, qword ptr [rbp - 0x40]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rdx + rcx*8]
	mov	rdi, rax
	call	re_node_set_insert
	and	al, 1
	mov	byte ptr [rbp - 0x2d], al
	mov	al, byte ptr [rbp - 0x2d]
	xor	al, 0xff
	and	al, 1
	movzx	r8d, al
	movsxd	rcx, r8d
	cmp	rcx, 0
	je	.label_3221
	jmp	.label_3202
.label_3221:
	cmp	qword ptr [rbp - 0xf8], 0
	jne	.label_3229
	jmp	.label_3211
.label_3229:
	jmp	.label_3204
.label_3204:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_3233
.label_3211:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x50]
	jne	.label_3237
	lea	rsi, [rbp - 0x70]
	mov	rax, qword ptr [rbp - 0x50]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x28]
	mov	rdi, rax
	call	bitset_copy
	mov	rax, qword ptr [rbp - 0x20]
	imul	rsi, qword ptr [rbp - 0x50], 0x18
	add	rax, rsi
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rdi, qword ptr [rdi + 0x10]
	mov	rsi, qword ptr [rdi + rsi*8]
	mov	rdi, rax
	call	re_node_set_init_1
	mov	dword ptr [rbp - 0x2c], eax
	cmp	dword ptr [rbp - 0x2c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_3193
	jmp	.label_3202
.label_3193:
	lea	rdi, [rbp - 0x70]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	call	bitset_empty
.label_3237:
	jmp	.label_3187
.label_3187:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_3210
.label_3223:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_3214
.label_3202:
	mov	qword ptr [rbp - 0x40], 0
.label_3216:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x50]
	jge	.label_3203
	mov	rax, qword ptr [rbp - 0x20]
	imul	rcx, qword ptr [rbp - 0x40], 0x18
	add	rax, rcx
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_3216
.label_3203:
	mov	qword ptr [rbp - 8], -1
.label_3214:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x100
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4221f0

	.globl bitset_empty
	.type bitset_empty, @function
bitset_empty:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	esi, esi
	mov	eax, 0x20
	mov	edx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	memset
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x422220

	.globl bitset_merge
	.type bitset_merge, @function
bitset_merge:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], 0
.label_3239:
	cmp	dword ptr [rbp - 0x14], 4
	jge	.label_3238
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	movsxd	rcx, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 8]
	or	rax, qword ptr [rdx + rcx*8]
	mov	qword ptr [rdx + rcx*8], rax
	mov	eax, dword ptr [rbp - 0x14]
	add	eax, 1
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_3239
.label_3238:
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x422270

	.globl bitset_set_all
	.type bitset_set_all, @function
bitset_set_all:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	esi, 0xff
	mov	eax, 0x20
	mov	edx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	memset
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4222a0

	.globl bitset_clear
	.type bitset_clear, @function
bitset_clear:
	push	rbp
	mov	rbp, rsp
	mov	eax, 0x40
	mov	ecx, eax
	mov	eax, 1
	mov	edx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdx
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x18]
	shl	rdx, cl
	xor	rdx, 0xffffffffffffffff
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rax, rsi
	mov	qword ptr [rbp - 0x28], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0x20]
	idiv	rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	r8, qword ptr [rbp - 0x28]
	and	r8, qword ptr [rdi + rax*8]
	mov	qword ptr [rdi + rax*8], r8
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x422300

	.globl bitset_copy
	.type bitset_copy, @function
bitset_copy:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rdi]
	mov	qword ptr [rsi], rax
	mov	rax, qword ptr [rdi + 8]
	mov	qword ptr [rsi + 8], rax
	mov	rax, qword ptr [rdi + 0x10]
	mov	qword ptr [rsi + 0x10], rax
	mov	rax, qword ptr [rdi + 0x18]
	mov	qword ptr [rsi + 0x18], rax
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x422340

	.globl check_halt_node_context
	.type check_halt_node_context, @function
check_halt_node_context:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x10]
	shl	rsi, 4
	add	rsi, qword ptr [rdi]
	mov	edx, dword ptr [rsi + 8]
	and	edx, 0xff
	mov	dword ptr [rbp - 0x20], edx
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x10]
	shl	rsi, 4
	add	rsi, qword ptr [rdi]
	mov	edx, dword ptr [rsi + 8]
	shr	edx, 8
	and	edx, 0x3ff
	mov	dword ptr [rbp - 0x24], edx
	cmp	dword ptr [rbp - 0x20], 2
	je	.label_3240
	mov	byte ptr [rbp - 1], 0
	jmp	.label_3242
.label_3240:
	cmp	dword ptr [rbp - 0x24], 0
	jne	.label_3241
	mov	byte ptr [rbp - 1], 1
	jmp	.label_3242
.label_3241:
	mov	eax, dword ptr [rbp - 0x24]
	and	eax, 4
	cmp	eax, 0
	je	.label_3245
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 1
	cmp	eax, 0
	je	.label_3247
.label_3245:
	mov	eax, dword ptr [rbp - 0x24]
	and	eax, 8
	cmp	eax, 0
	je	.label_3244
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 1
	cmp	eax, 0
	jne	.label_3247
.label_3244:
	mov	eax, dword ptr [rbp - 0x24]
	and	eax, 0x20
	cmp	eax, 0
	je	.label_3243
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 2
	cmp	eax, 0
	je	.label_3247
.label_3243:
	mov	eax, dword ptr [rbp - 0x24]
	and	eax, 0x80
	cmp	eax, 0
	je	.label_3246
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 8
	cmp	eax, 0
	jne	.label_3246
.label_3247:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_3242
.label_3246:
	mov	byte ptr [rbp - 1], 1
.label_3242:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x422440

	.globl sift_ctx_init
	.type sift_ctx_init, @function
sift_ctx_init:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	xor	eax, eax
	mov	r9d, 0x18
	mov	r10d, r9d
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 8], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x10], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x18], rcx
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 0x20
	mov	rdi, rcx
	mov	esi, eax
	mov	rdx, r10
	call	memset
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4224c0

	.globl sift_states_backward
	.type sift_states_backward, @function
sift_states_backward:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	lea	rax, [rbp - 0x40]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x20], 0
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 0x18]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 0x10]
	mov	rdi, rax
	call	re_node_set_init_1
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_3259
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_3253
.label_3259:
	lea	rcx, [rbp - 0x40]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	call	update_cur_sifted_state
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_3258
	jmp	.label_3250
.label_3258:
	jmp	.label_3248
.label_3248:
	cmp	qword ptr [rbp - 0x28], 0
	jle	.label_3255
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	cmp	qword ptr [rcx + rax*8], 0
	jne	.label_3249
	mov	eax, dword ptr [rbp - 0x20]
	add	eax, 1
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_3252
.label_3249:
	xor	eax, eax
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_3252
.label_3252:
	mov	eax, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 0x20], eax
	mov	eax, dword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	eax, dword ptr [rcx + 0xe0]
	jle	.label_3254
	xor	esi, esi
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x28]
	shl	rcx, 3
	mov	rdi, rax
	mov	rdx, rcx
	call	memset
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdi, rax
	call	free
	mov	dword ptr [rbp - 4], 0
	jmp	.label_3253
.label_3254:
	mov	qword ptr [rbp - 0x38], 0
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, -1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_3251
	lea	rcx, [rbp - 0x40]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	call	build_sifted_states
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_3257
	jmp	.label_3250
.label_3257:
	jmp	.label_3251
.label_3251:
	lea	rcx, [rbp - 0x40]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	call	update_cur_sifted_state
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_3256
	jmp	.label_3250
.label_3256:
	jmp	.label_3248
.label_3255:
	mov	dword ptr [rbp - 0x1c], 0
.label_3250:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], ecx
.label_3253:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4226c0

	.globl merge_state_array
	.type merge_state_array, @function
merge_state_array:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], 0
.label_3263:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x28]
	jge	.label_3260
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	jne	.label_3264
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_3267
.label_3264:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_3268
	lea	rdi, [rbp - 0x50]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, 8
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rdx + rcx*8]
	add	rcx, 8
	mov	rsi, rax
	mov	rdx, rcx
	call	re_node_set_init_union
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_3265
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_3261
.label_3265:
	lea	rdi, [rbp - 0x34]
	lea	rdx, [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x10]
	call	re_acquire_state
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rsi + rdx*8], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, rax
	call	free
	cmp	dword ptr [rbp - 0x34], 0
	setne	cl
	and	cl, 1
	movzx	r8d, cl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_3266
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_3261
.label_3266:
	jmp	.label_3268
.label_3268:
	jmp	.label_3267
.label_3267:
	jmp	.label_3262
.label_3262:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_3263
.label_3260:
	mov	dword ptr [rbp - 4], 0
.label_3261:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x422810

	.globl update_cur_sifted_state
	.type update_cur_sifted_state, @function
update_cur_sifted_state:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x98]
	mov	qword ptr [rbp - 0x30], rcx
	mov	dword ptr [rbp - 0x34], 0
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0xb8]
	cmp	qword ptr [rdx + rcx*8], 0
	jne	.label_3274
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x48], rcx
	jmp	.label_3278
.label_3274:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, 8
	mov	qword ptr [rbp - 0x48], rax
.label_3278:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax + 8], 0
	jne	.label_3269
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rcx + rax*8], 0
	jmp	.label_3277
.label_3269:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_3279
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x40]
	call	add_epsilon_src_nodes
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_3272
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_3276
.label_3272:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x28], 0
	je	.label_3275
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x20
	mov	rcx, qword ptr [rbp - 0x10]
	mov	r8, qword ptr [rcx + 0xd8]
	mov	r9, qword ptr [rbp - 0x20]
	mov	rcx, rax
	call	check_subexp_limits
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	setne	r10b
	and	r10b, 1
	movzx	eax, r10b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_3273
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_3276
.label_3273:
	jmp	.label_3275
.label_3275:
	jmp	.label_3279
.label_3279:
	lea	rdi, [rbp - 0x34]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x28]
	call	re_acquire_state
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rsi + rdx*8], rax
	cmp	dword ptr [rbp - 0x34], 0
	setne	cl
	and	cl, 1
	movzx	r8d, cl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_3271
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_3276
.label_3271:
	jmp	.label_3277
.label_3277:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_3270
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	dl, byte ptr [rax + 0x68]
	shr	dl, 6
	and	dl, 1
	movzx	esi, dl
	cmp	esi, 0
	je	.label_3270
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x40]
	call	sift_states_bkref
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_3280
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_3276
.label_3280:
	jmp	.label_3270
.label_3270:
	mov	dword ptr [rbp - 4], 0
.label_3276:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x422a40

	.globl build_sifted_states
	.type build_sifted_states, @function
build_sifted_states:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x98]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0xb8]
	mov	rcx, qword ptr [rdx + rcx*8]
	add	rcx, 0x20
	mov	qword ptr [rbp - 0x38], rcx
	mov	qword ptr [rbp - 0x40], 0
.label_3292:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_3283
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x48], rax
	mov	dword ptr [rbp - 0x4c], 0
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x30]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	shr	edx, 0x14
	and	edx, 1
	cmp	edx, 0
	je	.label_3287
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rax + 0x18]
	call	sift_states_iter_mb
	mov	dword ptr [rbp - 0x4c], eax
.label_3287:
	cmp	dword ptr [rbp - 0x4c], 0
	jne	.label_3291
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x48]
	shl	rcx, 4
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, rax
	call	check_node_accept
	test	al, 1
	jne	.label_3289
	jmp	.label_3291
.label_3289:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	cmp	qword ptr [rcx + rax*8 + 8], 0
	je	.label_3291
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	mov	rax, qword ptr [rcx + rax*8 + 8]
	add	rax, 8
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	rsi, qword ptr [rdx + rcx*8]
	mov	rdi, rax
	call	re_node_set_contains
	cmp	rax, 0
	je	.label_3291
	mov	dword ptr [rbp - 0x4c], 1
.label_3291:
	cmp	dword ptr [rbp - 0x4c], 0
	jne	.label_3281
	jmp	.label_3285
.label_3281:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x28], 0
	je	.label_3286
	mov	rax, qword ptr [rbp - 0x20]
	movsxd	rcx, dword ptr [rbp - 0x4c]
	add	rax, rcx
	mov	qword ptr [rbp - 0x58], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x20
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	rdx, qword ptr [rdx + rcx*8]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	r8, qword ptr [rbp - 0x48]
	mov	r9, qword ptr [rbp - 0x20]
	mov	rsi, rax
	call	check_dst_limits
	test	al, 1
	jne	.label_3288
	jmp	.label_3290
.label_3288:
	jmp	.label_3285
.label_3290:
	jmp	.label_3286
.label_3286:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x48]
	call	re_node_set_insert
	and	al, 1
	mov	byte ptr [rbp - 0x4d], al
	mov	al, byte ptr [rbp - 0x4d]
	xor	al, 0xff
	and	al, 1
	movzx	ecx, al
	movsxd	rsi, ecx
	cmp	rsi, 0
	je	.label_3282
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_3284
.label_3282:
	jmp	.label_3285
.label_3285:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_3292
.label_3283:
	mov	dword ptr [rbp - 4], 0
.label_3284:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x422c60

	.globl add_epsilon_src_nodes
	.type add_epsilon_src_nodes, @function
add_epsilon_src_nodes:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	lea	rax, [rbp - 0x24]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	dword ptr [rbp - 0x24], 0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	re_acquire_state
	mov	qword ptr [rbp - 0x38], rax
	cmp	dword ptr [rbp - 0x24], 0
	setne	cl
	and	cl, 1
	movzx	r8d, cl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_3297
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_3296
.label_3297:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 0x38], 0
	jne	.label_3295
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 0x38
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rcx + 8]
	mov	rdi, rax
	call	re_node_set_alloc
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 0
	setne	dl
	and	dl, 1
	movzx	eax, dl
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_3293
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_3296
.label_3293:
	mov	qword ptr [rbp - 0x30], 0
.label_3299:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_3294
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 0x38
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x38]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 0x10]
	imul	rdx, qword ptr [rsi + rdx*8], 0x18
	add	rcx, rdx
	mov	rdi, rax
	mov	rsi, rcx
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_3298
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_3296
.label_3298:
	jmp	.label_3300
.label_3300:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_3299
.label_3294:
	jmp	.label_3295
.label_3295:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 0x38
	mov	rdx, rax
	call	re_node_set_add_intersect
	mov	dword ptr [rbp - 4], eax
.label_3296:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x422dc0

	.globl check_subexp_limits
	.type check_subexp_limits, @function
check_subexp_limits:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	qword ptr [rbp - 0x50], 0
.label_3304:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_3324
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rdx + 0x10]
	imul	rcx, qword ptr [rdx + rcx*8], 0x28
	add	rax, rcx
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rcx + 0x10]
	jle	.label_3326
	mov	rax, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rax + 8]
	cmp	rax, qword ptr [rbp - 0x38]
	jge	.label_3316
.label_3326:
	jmp	.label_3301
.label_3316:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rax + 0x18]
	cmp	rax, qword ptr [rbp - 0x38]
	jne	.label_3322
	mov	qword ptr [rbp - 0x68], -1
	mov	qword ptr [rbp - 0x70], -1
	mov	qword ptr [rbp - 0x48], 0
.label_3318:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_3303
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x10]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	mov	dword ptr [rbp - 0x7c], edx
	cmp	dword ptr [rbp - 0x7c], 8
	jne	.label_3307
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0x10]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	cmp	rax, qword ptr [rcx]
	jne	.label_3307
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_3305
.label_3307:
	cmp	dword ptr [rbp - 0x7c], 9
	jne	.label_3302
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0x10]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	cmp	rax, qword ptr [rcx]
	jne	.label_3302
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x70], rax
.label_3302:
	jmp	.label_3305
.label_3305:
	jmp	.label_3317
.label_3317:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_3318
.label_3303:
	cmp	qword ptr [rbp - 0x68], 0
	jl	.label_3308
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	call	sub_epsilon_src_nodes
	mov	dword ptr [rbp - 0x3c], eax
	cmp	dword ptr [rbp - 0x3c], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_3329
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_3321
.label_3329:
	jmp	.label_3308
.label_3308:
	cmp	qword ptr [rbp - 0x70], 0
	jl	.label_3309
	mov	qword ptr [rbp - 0x48], 0
.label_3327:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_3314
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	imul	rcx, qword ptr [rbp - 0x88], 0x18
	add	rax, rcx
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdi, rax
	call	re_node_set_contains
	cmp	rax, 0
	jne	.label_3310
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	imul	rcx, qword ptr [rbp - 0x88], 0x18
	add	rax, rcx
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdi, rax
	call	re_node_set_contains
	cmp	rax, 0
	jne	.label_3310
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	call	sub_epsilon_src_nodes
	mov	dword ptr [rbp - 0x3c], eax
	cmp	dword ptr [rbp - 0x3c], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_3320
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_3321
.label_3320:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, -1
	mov	qword ptr [rbp - 0x48], rax
.label_3310:
	jmp	.label_3313
.label_3313:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_3327
.label_3314:
	jmp	.label_3309
.label_3309:
	jmp	.label_3306
.label_3322:
	mov	qword ptr [rbp - 0x48], 0
.label_3325:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_3311
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x90], rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x10]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	mov	dword ptr [rbp - 0x94], edx
	cmp	dword ptr [rbp - 0x94], 9
	je	.label_3315
	cmp	dword ptr [rbp - 0x94], 8
	jne	.label_3323
.label_3315:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x90]
	mov	rdx, qword ptr [rbp - 0x10]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	cmp	rax, qword ptr [rcx]
	je	.label_3328
	jmp	.label_3312
.label_3328:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x90]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	call	sub_epsilon_src_nodes
	mov	dword ptr [rbp - 0x3c], eax
	cmp	dword ptr [rbp - 0x3c], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_3319
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_3321
.label_3319:
	jmp	.label_3323
.label_3323:
	jmp	.label_3312
.label_3312:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_3325
.label_3311:
	jmp	.label_3306
.label_3306:
	jmp	.label_3301
.label_3301:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_3304
.label_3324:
	mov	dword ptr [rbp - 4], 0
.label_3321:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4231b0

	.globl sift_states_bkref
	.type sift_states_bkref, @function
sift_states_bkref:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xe0
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x98]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	search_cur_bkref_entry
	mov	qword ptr [rbp - 0x88], rax
	cmp	qword ptr [rbp - 0x88], -1
	jne	.label_3347
	mov	dword ptr [rbp - 4], 0
	jmp	.label_3351
.label_3347:
	mov	qword ptr [rbp - 0x80], 0
	mov	qword ptr [rbp - 0x40], 0
.label_3334:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_3336
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x30]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	mov	dword ptr [rbp - 0x94], edx
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x10]
	jne	.label_3349
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x18]
	jne	.label_3349
	jmp	.label_3330
.label_3349:
	cmp	dword ptr [rbp - 0x94], 4
	je	.label_3332
	jmp	.label_3330
.label_3332:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xd8]
	imul	rcx, qword ptr [rbp - 0x88], 0x28
	add	rax, rcx
	mov	qword ptr [rbp - 0xa0], rax
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x90], rax
.label_3346:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x48]
	je	.label_3344
	jmp	.label_3333
.label_3344:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0xa0]
	sub	rax, qword ptr [rcx + 0x10]
	mov	qword ptr [rbp - 0xa8], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0xb0], rax
	cmp	qword ptr [rbp - 0xa8], 0
	je	.label_3338
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0xd0], rax
	jmp	.label_3342
.label_3338:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x30]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0xd0], rax
.label_3342:
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0xb8], rax
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x18]
	jg	.label_3331
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_3331
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_3331
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, 8
	mov	rsi, qword ptr [rbp - 0xb8]
	mov	rdi, rax
	call	re_node_set_contains
	cmp	rax, 0
	je	.label_3331
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x20
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0xb8]
	mov	r9, qword ptr [rbp - 0xb0]
	mov	rsi, rax
	call	check_dst_limits
	test	al, 1
	jne	.label_3331
	jmp	.label_3341
.label_3331:
	jmp	.label_3333
.label_3341:
	cmp	qword ptr [rbp - 0x80], 0
	jne	.label_3348
	lea	rax, [rbp - 0x80]
	mov	ecx, 0x38
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	qword ptr [rbp - 0xd8], rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 0x20
	mov	rdx, qword ptr [rbp - 0x18]
	add	rdx, 0x20
	mov	rdi, rax
	mov	rsi, rdx
	call	re_node_set_init_copy
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_3345
	jmp	.label_3335
.label_3345:
	jmp	.label_3348
.label_3348:
	lea	rax, [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rcx
	add	rax, 0x20
	mov	rsi, qword ptr [rbp - 0x90]
	mov	rdi, rax
	call	re_node_set_insert
	and	al, 1
	mov	byte ptr [rbp - 0xb9], al
	mov	al, byte ptr [rbp - 0xb9]
	xor	al, 0xff
	and	al, 1
	movzx	edx, al
	movsxd	rcx, edx
	cmp	rcx, 0
	je	.label_3340
	mov	dword ptr [rbp - 0x34], 0xc
	jmp	.label_3335
.label_3340:
	lea	rsi, [rbp - 0x80]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rdi, qword ptr [rbp - 0x10]
	call	sift_states_backward
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	setne	dl
	and	dl, 1
	movzx	eax, dl
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_3350
	jmp	.label_3335
.label_3350:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_3337
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax + 8]
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	rcx, rax
	call	merge_state_array
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_3343
	jmp	.label_3335
.label_3343:
	jmp	.label_3337
.label_3337:
	lea	rax, [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x80]
	mov	qword ptr [rsi + rdx*8], rcx
	mov	rcx, rax
	add	rcx, 0x20
	add	rax, 0x20
	mov	rsi, qword ptr [rbp - 0x90]
	mov	rdi, rax
	mov	qword ptr [rbp - 0xe0], rcx
	call	re_node_set_contains
	sub	rax, 1
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	rsi, rax
	call	re_node_set_remove_at
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xd8]
	imul	rcx, qword ptr [rbp - 0x90], 0x28
	add	rax, rcx
	mov	qword ptr [rbp - 0xa0], rax
.label_3333:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, rax
	add	rcx, 0x28
	mov	qword ptr [rbp - 0xa0], rcx
	cmp	byte ptr [rax + 0x20], 0
	jne	.label_3346
	jmp	.label_3330
.label_3330:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_3334
.label_3336:
	mov	dword ptr [rbp - 0x34], 0
.label_3335:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_3339
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, rax
	call	free
.label_3339:
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
.label_3351:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xe0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x423660

	.globl re_node_set_add_intersect
	.type re_node_set_add_intersect, @function
re_node_set_add_intersect:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx + 8], 0
	je	.label_3372
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 8], 0
	jne	.label_3355
.label_3372:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_3361
.label_3355:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx]
	jle	.label_3365
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rcx]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x58]
	shl	rcx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x60], rax
	cmp	qword ptr [rbp - 0x60], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_3378
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_3361
.label_3378:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
.label_3365:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	sub	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	sub	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	sub	rax, 1
	mov	qword ptr [rbp - 0x40], rax
.label_3359:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rdx + 0x10]
	cmp	rax, qword ptr [rdx + rcx*8]
	jne	.label_3357
	jmp	.label_3362
.label_3362:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x40], 0
	mov	byte ptr [rbp - 0x61], cl
	jl	.label_3370
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x10]
	cmp	rax, qword ptr [rdx + rcx*8]
	setg	sil
	mov	byte ptr [rbp - 0x61], sil
.label_3370:
	mov	al, byte ptr [rbp - 0x61]
	test	al, 1
	jne	.label_3375
	jmp	.label_3377
.label_3375:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, -1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_3362
.label_3377:
	cmp	qword ptr [rbp - 0x40], 0
	jl	.label_3360
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x10]
	cmp	rax, qword ptr [rdx + rcx*8]
	je	.label_3363
.label_3360:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x50], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	qword ptr [rdx + rcx*8 - 8], rax
.label_3363:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, -1
	mov	qword ptr [rbp - 0x28], rax
	cmp	rax, 0
	jl	.label_3374
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, -1
	mov	qword ptr [rbp - 0x30], rax
	cmp	rax, 0
	jge	.label_3353
.label_3374:
	jmp	.label_3358
.label_3353:
	jmp	.label_3356
.label_3357:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rdx + 0x10]
	cmp	rax, qword ptr [rdx + rcx*8]
	jge	.label_3366
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, -1
	mov	qword ptr [rbp - 0x30], rax
	cmp	rax, 0
	jge	.label_3371
	jmp	.label_3358
.label_3371:
	jmp	.label_3354
.label_3366:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, -1
	mov	qword ptr [rbp - 0x28], rax
	cmp	rax, 0
	jge	.label_3373
	jmp	.label_3358
.label_3373:
	jmp	.label_3354
.label_3354:
	jmp	.label_3356
.label_3356:
	jmp	.label_3359
.label_3358:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	sub	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rcx + 8]
	sub	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	sub	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rcx + 8]
	mov	qword ptr [rcx + 8], rax
	cmp	qword ptr [rbp - 0x48], 0
	jle	.label_3352
	cmp	qword ptr [rbp - 0x40], 0
	jl	.label_3352
	jmp	.label_3369
.label_3369:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	cmp	rax, qword ptr [rdx + rcx*8]
	jle	.label_3379
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x38], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rsi, rdx
	add	rsi, -1
	mov	qword ptr [rbp - 0x48], rsi
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	qword ptr [rdx + rcx*8], rax
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_3367
	jmp	.label_3368
.label_3367:
	jmp	.label_3364
.label_3379:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x40]
	add	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, -1
	mov	qword ptr [rbp - 0x40], rax
	cmp	rax, 0
	jge	.label_3376
	jmp	.label_3368
.label_3376:
	jmp	.label_3364
.label_3364:
	jmp	.label_3369
.label_3368:
	jmp	.label_3352
.label_3352:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x50]
	shl	rdx, 3
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x48]
	shl	rdx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	memcpy
	mov	dword ptr [rbp - 4], 0
.label_3361:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x423a80

	.globl sub_epsilon_src_nodes
	.type sub_epsilon_src_nodes, @function
sub_epsilon_src_nodes:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	xor	eax, eax
	mov	r8d, 0x18
	mov	r9d, r8d
	lea	r10, [rbp - 0x58]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x38]
	imul	rdx, qword ptr [rbp - 0x18], 0x18
	add	rcx, rdx
	mov	qword ptr [rbp - 0x40], rcx
	mov	rdi, r10
	mov	esi, eax
	mov	rdx, r9
	call	memset
	mov	qword ptr [rbp - 0x30], 0
.label_3394:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_3387
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_3390
	jmp	.label_3382
.label_3390:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x10]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	and	edx, 8
	cmp	edx, 0
	je	.label_3385
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	cmp	qword ptr [rax + 8], 1
	jle	.label_3388
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_3384
.label_3388:
	mov	rax, -1
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_3384
.label_3384:
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x68]
	call	re_node_set_contains
	cmp	rax, 0
	jne	.label_3395
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x68]
	call	re_node_set_contains
	cmp	rax, 0
	jne	.label_3383
.label_3395:
	cmp	qword ptr [rbp - 0x70], 0
	jle	.label_3381
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x70]
	call	re_node_set_contains
	cmp	rax, 0
	jne	.label_3381
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x70]
	call	re_node_set_contains
	cmp	rax, 0
	je	.label_3381
.label_3383:
	lea	rdi, [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	imul	rcx, qword ptr [rbp - 0x60], 0x18
	add	rax, rcx
	mov	rdx, rax
	call	re_node_set_add_intersect
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_3392
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_3389
.label_3392:
	jmp	.label_3381
.label_3381:
	jmp	.label_3385
.label_3385:
	jmp	.label_3382
.label_3382:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_3394
.label_3387:
	mov	qword ptr [rbp - 0x30], 0
.label_3393:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_3386
	lea	rdi, [rbp - 0x58]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x78], rax
	mov	rsi, qword ptr [rbp - 0x78]
	call	re_node_set_contains
	cmp	rax, 0
	jne	.label_3380
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x78]
	call	re_node_set_contains
	sub	rax, 1
	mov	qword ptr [rbp - 0x80], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x80]
	call	re_node_set_remove_at
.label_3380:
	jmp	.label_3391
.label_3391:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_3393
.label_3386:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, rax
	call	free
	mov	dword ptr [rbp - 4], 0
.label_3389:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x423d30

	.globl check_dst_limits
	.type check_dst_limits, @function
check_dst_limits:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x98]
	mov	qword ptr [rbp - 0x40], rcx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x28]
	call	search_cur_bkref_entry
	mov	qword ptr [rbp - 0x60], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x38]
	call	search_cur_bkref_entry
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x48], 0
.label_3400:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_3397
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xd8]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x10]
	imul	rcx, qword ptr [rdx + rcx*8], 0x28
	add	rax, rcx
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x40]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rsi, qword ptr [rcx + rax*8]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x28]
	mov	r9, qword ptr [rbp - 0x60]
	call	check_dst_limits_calc_pos
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x58], rcx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rdx + rcx*8]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r8, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rbp - 0x68]
	call	check_dst_limits_calc_pos
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x50], rcx
	mov	rcx, qword ptr [rbp - 0x50]
	cmp	rcx, qword ptr [rbp - 0x58]
	jne	.label_3399
	jmp	.label_3396
.label_3399:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_3398
.label_3396:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_3400
.label_3397:
	mov	byte ptr [rbp - 1], 0
.label_3398:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x423e80

	.globl check_dst_limits_calc_pos
	.type check_dst_limits_calc_pos, @function
check_dst_limits_calc_pos:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xd8]
	imul	rdx, qword ptr [rbp - 0x18], 0x28
	add	rcx, rdx
	mov	qword ptr [rbp - 0x40], rcx
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x40]
	cmp	rcx, qword ptr [rdx + 0x10]
	jge	.label_3401
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_3404
.label_3401:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x18]
	cmp	rax, qword ptr [rbp - 0x30]
	jge	.label_3403
	mov	dword ptr [rbp - 4], 1
	jmp	.label_3404
.label_3403:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rcx + 0x10]
	sete	dl
	and	dl, 1
	movzx	esi, dl
	mov	dword ptr [rbp - 0x44], esi
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rcx + 0x18]
	sete	dl
	and	dl, 1
	movzx	esi, dl
	shl	esi, 1
	or	esi, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 0x44], esi
	cmp	dword ptr [rbp - 0x44], 0
	jne	.label_3402
	mov	dword ptr [rbp - 4], 0
	jmp	.label_3404
.label_3402:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x44]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x38]
	call	check_dst_limits_calc_pos_1
	mov	dword ptr [rbp - 4], eax
.label_3404:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x423f70

	.globl check_dst_limits_calc_pos_1
	.type check_dst_limits_calc_pos_1, @function
check_dst_limits_calc_pos_1:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x98]
	mov	qword ptr [rbp - 0x38], rcx
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 0x30]
	imul	rdx, qword ptr [rbp - 0x28], 0x18
	add	rcx, rdx
	mov	qword ptr [rbp - 0x40], rcx
	mov	qword ptr [rbp - 0x48], 0
.label_3420:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_3425
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x50], rax
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx]
	shl	rax, 4
	movzx	edx, byte ptr [rcx + rax + 8]
	mov	esi, edx
	sub	esi, 4
	mov	dword ptr [rbp - 0x68], edx
	mov	dword ptr [rbp - 0x6c], esi
	je	.label_3421
	jmp	.label_3405
.label_3405:
	mov	eax, dword ptr [rbp - 0x68]
	sub	eax, 8
	mov	dword ptr [rbp - 0x70], eax
	je	.label_3407
	jmp	.label_3410
.label_3410:
	mov	eax, dword ptr [rbp - 0x68]
	sub	eax, 9
	mov	dword ptr [rbp - 0x74], eax
	je	.label_3411
	jmp	.label_3415
.label_3421:
	cmp	qword ptr [rbp - 0x30], -1
	je	.label_3417
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xd8]
	imul	rcx, qword ptr [rbp - 0x30], 0x28
	add	rax, rcx
	mov	qword ptr [rbp - 0x58], rax
.label_3427:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x50]
	je	.label_3424
	jmp	.label_3409
.label_3424:
	cmp	qword ptr [rbp - 0x20], 0x40
	jge	.label_3426
	mov	eax, 1
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x58]
	movzx	eax, word ptr [rdx + 0x22]
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x80], rcx
	mov	rcx, rsi
	mov	rsi, qword ptr [rbp - 0x80]
	shl	rsi, cl
	and	rdx, rsi
	cmp	rdx, 0
	jne	.label_3426
	jmp	.label_3409
.label_3426:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_3413
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 1
	cmp	eax, 0
	je	.label_3423
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_3412
.label_3423:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_3412
.label_3413:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	r8, qword ptr [rbp - 0x30]
	call	check_dst_limits_calc_pos_1
	mov	dword ptr [rbp - 0x64], eax
	cmp	dword ptr [rbp - 0x64], -1
	jne	.label_3408
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_3412
.label_3408:
	cmp	dword ptr [rbp - 0x64], 0
	jne	.label_3414
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 2
	cmp	eax, 0
	je	.label_3414
	mov	dword ptr [rbp - 4], 0
	jmp	.label_3412
.label_3414:
	cmp	qword ptr [rbp - 0x20], 0x40
	jge	.label_3422
	mov	eax, 1
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x88], rcx
	mov	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x88]
	shl	rdx, cl
	xor	rdx, 0xffffffffffffffff
	mov	rsi, qword ptr [rbp - 0x58]
	movzx	eax, word ptr [rsi + 0x22]
	mov	edi, eax
	and	rdi, rdx
	mov	r8w, di
	mov	word ptr [rsi + 0x22], r8w
.label_3422:
	jmp	.label_3409
.label_3409:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 0x28
	mov	qword ptr [rbp - 0x58], rcx
	cmp	byte ptr [rax + 0x20], 0
	jne	.label_3427
	jmp	.label_3417
.label_3417:
	jmp	.label_3416
.label_3407:
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 1
	cmp	eax, 0
	je	.label_3419
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x38]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	cmp	rax, qword ptr [rcx]
	jne	.label_3419
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_3412
.label_3419:
	jmp	.label_3416
.label_3411:
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 2
	cmp	eax, 0
	je	.label_3406
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x38]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	cmp	rax, qword ptr [rcx]
	jne	.label_3406
	mov	dword ptr [rbp - 4], 0
	jmp	.label_3412
.label_3406:
	jmp	.label_3416
.label_3415:
	jmp	.label_3416
.label_3416:
	jmp	.label_3418
.label_3418:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_3420
.label_3425:
	xor	eax, eax
	mov	ecx, 1
	mov	edx, dword ptr [rbp - 0x14]
	and	edx, 2
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_3412:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x424270

	.globl sift_states_iter_mb
	.type sift_states_iter_mb, @function
sift_states_iter_mb:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0x98]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x20]
	call	check_node_accept_bytes
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	jle	.label_3428
	mov	rax, qword ptr [rbp - 0x20]
	movsxd	rcx, dword ptr [rbp - 0x34]
	add	rax, rcx
	cmp	rax, qword ptr [rbp - 0x28]
	jg	.label_3428
	mov	rax, qword ptr [rbp - 0x20]
	movsxd	rcx, dword ptr [rbp - 0x34]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_3429
	mov	rax, qword ptr [rbp - 0x20]
	movsxd	rcx, dword ptr [rbp - 0x34]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, 8
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	rsi, qword ptr [rdx + rcx*8]
	mov	rdi, rax
	call	re_node_set_contains
	cmp	rax, 0
	jne	.label_3428
.label_3429:
	mov	dword ptr [rbp - 0x34], 0
.label_3428:
	mov	eax, dword ptr [rbp - 0x34]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x424340

	.globl free_fail_stack_return
	.type free_fail_stack_return, @function
free_fail_stack_return:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_3430
	mov	qword ptr [rbp - 0x10], 0
.label_3431:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx]
	jge	.label_3432
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_3431
.label_3432:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	call	free
.label_3430:
	xor	eax, eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4243e0

	.globl update_regs
	.type update_regs, @function
update_regs:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], r9
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 8]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	mov	eax, dword ptr [rcx + 8]
	and	eax, 0xff
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 8
	jne	.label_3433
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	rax, qword ptr [rax]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x30]
	jge	.label_3435
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x40]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x40]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], -1
.label_3435:
	jmp	.label_3440
.label_3433:
	cmp	dword ptr [rbp - 0x34], 9
	jne	.label_3438
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	rax, qword ptr [rax]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x30]
	jge	.label_3434
	mov	rax, qword ptr [rbp - 0x48]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x28]
	jge	.label_3437
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x48]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x30]
	shl	rdx, 4
	mov	rdi, rax
	mov	rsi, rcx
	call	memcpy
	jmp	.label_3439
.label_3437:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	shr	edx, 0x13
	and	edx, 1
	cmp	edx, 0
	je	.label_3441
	mov	rax, qword ptr [rbp - 0x48]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], -1
	je	.label_3441
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x30]
	shl	rdx, 4
	mov	rdi, rax
	mov	rsi, rcx
	call	memcpy
	jmp	.label_3436
.label_3441:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x48]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
.label_3436:
	jmp	.label_3439
.label_3439:
	jmp	.label_3434
.label_3434:
	jmp	.label_3438
.label_3438:
	jmp	.label_3440
.label_3440:
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x424580

	.globl pop_fail_stack
	.type pop_fail_stack, @function
pop_fail_stack:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rcx]
	add	rdx, -1
	mov	qword ptr [rcx], rdx
	mov	qword ptr [rbp - 0x30], rdx
	cmp	qword ptr [rbp - 0x30], 0
	jl	.label_3442
	jmp	.label_3443
.label_3442:
	movabs	rdi, OFFSET FLAT:label_3444
	movabs	rsi, OFFSET FLAT:label_1373
	mov	edx, 0x555
	movabs	rcx, OFFSET FLAT:label_3445
	call	__assert_fail
.label_3443:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 8]
	imul	rcx, rcx, 0x30
	add	rcx, qword ptr [rdx + 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	shl	rdx, 4
	mov	rdi, rax
	mov	rsi, rcx
	call	memcpy
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 8]
	imul	rcx, rcx, 0x30
	add	rcx, qword ptr [rdx + 0x10]
	mov	rdx, qword ptr [rcx + 0x18]
	mov	qword ptr [rax], rdx
	mov	rdx, qword ptr [rcx + 0x20]
	mov	qword ptr [rax + 8], rdx
	mov	rcx, qword ptr [rcx + 0x28]
	mov	qword ptr [rax + 0x10], rcx
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rax + 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4246a0

	.globl proceed_next_node
	.type proceed_next_node, @function
proceed_next_node:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
	mov	rax, qword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x98]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x48]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	r10d, dword ptr [rax + 8]
	and	r10d, 0xff
	and	r10d, 8
	cmp	r10d, 0
	je	.label_3452
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, 8
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x48]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	mov	qword ptr [rbp - 0x68], rax
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x30]
	call	re_node_set_insert
	and	al, 1
	mov	byte ptr [rbp - 0x51], al
	mov	al, byte ptr [rbp - 0x51]
	xor	al, 0xff
	and	al, 1
	movzx	edx, al
	movsxd	rcx, edx
	cmp	rcx, 0
	je	.label_3462
	mov	qword ptr [rbp - 8], -2
	jmp	.label_3446
.label_3462:
	mov	qword ptr [rbp - 0x70], -1
	mov	qword ptr [rbp - 0x50], 0
.label_3460:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_3466
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x78], rax
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x78]
	call	re_node_set_contains
	cmp	rax, 0
	jne	.label_3455
	jmp	.label_3459
.label_3455:
	cmp	qword ptr [rbp - 0x70], -1
	jne	.label_3461
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_3463
.label_3461:
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x70]
	call	re_node_set_contains
	cmp	rax, 0
	je	.label_3453
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_3446
.label_3453:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_3467
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x20]
	mov	r9, qword ptr [rbp - 0x38]
	call	push_fail_stack
	cmp	eax, 0
	je	.label_3467
	mov	qword ptr [rbp - 8], -2
	jmp	.label_3446
.label_3467:
	jmp	.label_3468
.label_3468:
	jmp	.label_3466
.label_3463:
	jmp	.label_3459
.label_3459:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_3460
.label_3466:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_3446
.label_3452:
	mov	qword ptr [rbp - 0x80], 0
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x48]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	mov	dword ptr [rbp - 0x84], edx
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x48]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	shr	edx, 0x14
	and	edx, 1
	cmp	edx, 0
	je	.label_3472
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rax]
	call	check_node_accept_bytes
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x80], rcx
	jmp	.label_3454
.label_3472:
	cmp	dword ptr [rbp - 0x84], 4
	jne	.label_3449
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x48]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	rax, qword ptr [rax]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	mov	rax, qword ptr [rbp - 0x90]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x90]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x20]
	sub	rax, qword ptr [rcx]
	mov	qword ptr [rbp - 0x80], rax
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_3470
	mov	rax, qword ptr [rbp - 0x90]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax], -1
	je	.label_3457
	mov	rax, qword ptr [rbp - 0x90]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 8], -1
	jne	.label_3464
.label_3457:
	mov	qword ptr [rbp - 8], -1
	jmp	.label_3446
.label_3464:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_3475
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rax, qword ptr [rcx]
	cmp	rax, qword ptr [rbp - 0x80]
	jl	.label_3477
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x90]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rdx]
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rdi, rax
	mov	rsi, rcx
	call	memcmp
	cmp	eax, 0
	je	.label_3469
.label_3477:
	mov	qword ptr [rbp - 8], -1
	jmp	.label_3446
.label_3469:
	jmp	.label_3475
.label_3475:
	jmp	.label_3476
.label_3476:
	jmp	.label_3470
.label_3470:
	cmp	qword ptr [rbp - 0x80], 0
	jne	.label_3451
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x30]
	call	re_node_set_insert
	and	al, 1
	mov	byte ptr [rbp - 0x51], al
	mov	al, byte ptr [rbp - 0x51]
	xor	al, 0xff
	and	al, 1
	movzx	ecx, al
	movsxd	rsi, ecx
	cmp	rsi, 0
	je	.label_3450
	mov	qword ptr [rbp - 8], -2
	jmp	.label_3446
.label_3450:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x48]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0xa0], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, 8
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	rdi, rax
	call	re_node_set_contains
	cmp	rax, 0
	je	.label_3447
	mov	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_3446
.label_3447:
	jmp	.label_3451
.label_3451:
	jmp	.label_3449
.label_3449:
	jmp	.label_3454
.label_3454:
	cmp	qword ptr [rbp - 0x80], 0
	jne	.label_3456
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	shl	rcx, 4
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rcx]
	mov	rsi, rax
	call	check_node_accept
	test	al, 1
	jne	.label_3456
	jmp	.label_3473
.label_3456:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0xa8], rax
	cmp	qword ptr [rbp - 0x80], 0
	jne	.label_3474
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	add	rax, 1
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_3448
.label_3474:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0xb0], rax
.label_3448:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_3458
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0xa8]
	jg	.label_3465
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_3465
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, 8
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	rdi, rax
	call	re_node_set_contains
	cmp	rax, 0
	jne	.label_3458
.label_3465:
	mov	qword ptr [rbp - 8], -1
	jmp	.label_3446
.label_3458:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_3446
.label_3473:
	jmp	.label_3471
.label_3471:
	mov	qword ptr [rbp - 8], -1
.label_3446:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xb0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x424c00

	.globl push_fail_stack
	.type push_fail_stack, @function
push_fail_stack:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rcx]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rcx], rsi
	mov	qword ptr [rbp - 0x48], rdx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	rcx, qword ptr [rdx + 8]
	jne	.label_3478
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	shl	rcx, 1
	imul	rsi, rcx, 0x30
	mov	rdi, rax
	call	realloc
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	jne	.label_3481
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_3480
.label_3481:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 8]
	shl	rcx, 1
	mov	qword ptr [rax + 8], rcx
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], rax
.label_3478:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x10]
	imul	rcx, rcx, 0x30
	add	rcx, qword ptr [rdx + 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x10]
	imul	rcx, rcx, 0x30
	add	rcx, qword ptr [rdx + 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 4
	mov	rdi, rax
	call	malloc
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x10]
	imul	rcx, rcx, 0x30
	add	rcx, qword ptr [rdx + 0x10]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rcx + 0x10]
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_3479
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_3480
.label_3479:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x28]
	shl	rdx, 4
	mov	rdi, rax
	mov	rsi, rcx
	call	memcpy
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rcx + 0x10]
	add	rax, 0x18
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	re_node_set_init_copy
	mov	dword ptr [rbp - 0x3c], eax
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 4], eax
.label_3480:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x424d80

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
	jne	.label_3482
	mov	dword ptr [rbp - 4], 0
	jmp	.label_3486
.label_3482:
	jmp	.label_3483
.label_3483:
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
	jne	.label_3485
	jmp	.label_3484
.label_3485:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	je	.label_3483
.label_3484:
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_3486:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x424e40

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
	jne	.label_3487
	test	byte ptr [rbp - 0x13], 1
	je	.label_3489
	test	byte ptr [rbp - 0x11], 1
	jne	.label_3487
	call	__errno_location
	cmp	dword ptr [rax], 9
	je	.label_3489
.label_3487:
	test	byte ptr [rbp - 0x13], 1
	jne	.label_3490
	call	__errno_location
	mov	dword ptr [rax], 0
.label_3490:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_3488
.label_3489:
	mov	dword ptr [rbp - 4], 0
.label_3488:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x424ef0

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
	je	.label_3491
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_3494
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_3495
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_3492
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_3493
.label_3495:
	mov	byte ptr [rbp - 5], 0
.label_3493:
	jmp	.label_3491
.label_3491:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x424f70

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
	jne	.label_3496
	movabs	rax, OFFSET FLAT:label_36
	mov	qword ptr [rbp - 8], rax
.label_3496:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_3497
	movabs	rax, OFFSET FLAT:label_3498
	mov	qword ptr [rbp - 8], rax
.label_3497:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x424fd0

	.globl mbiter_multi_next
	.type mbiter_multi_next, @function
mbiter_multi_next:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	test	byte ptr [rdi + 0x14], 1
	je	.label_3507
	jmp	.label_3515
.label_3507:
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 8], 1
	je	.label_3517
	jmp	.label_3522
.label_3517:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x18]
	movsx	edi, byte ptr [rax]
	call	is_basic
	test	al, 1
	jne	.label_3508
	jmp	.label_3513
.label_3508:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x20], 1
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x18]
	movsx	ecx, byte ptr [rax]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x2c], ecx
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x28], 1
	jmp	.label_3505
.label_3513:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0xc
	mov	rdi, rax
	call	mbsinit
	cmp	eax, 0
	je	.label_3512
	jmp	.label_3499
.label_3512:
	movabs	rdi, OFFSET FLAT:label_3514
	movabs	rsi, OFFSET FLAT:label_3503
	mov	edx, 0x8e
	movabs	rcx, OFFSET FLAT:label_3504
	call	__assert_fail
.label_3499:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 8], 1
.label_3522:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x18
	add	rax, 0x14
	mov	rcx, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rcx + 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 0x18]
	sub	rcx, rdx
	mov	rdx, qword ptr [rbp - 8]
	add	rdx, 0xc
	mov	rdi, rax
	mov	qword ptr [rbp - 0x10], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x10]
	call	rpl_mbrtowc
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x20], rax
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x20], -1
	jne	.label_3511
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x20], 1
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x28], 0
	jmp	.label_3518
.label_3511:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x20], -2
	jne	.label_3500
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0x18]
	sub	rax, rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x20], rax
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x28], 0
	jmp	.label_3501
.label_3500:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x20], 0
	jne	.label_3510
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x20], 1
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_3509
	jmp	.label_3516
.label_3509:
	movabs	rdi, OFFSET FLAT:label_3519
	movabs	rsi, OFFSET FLAT:label_3503
	mov	edx, 0xa9
	movabs	rcx, OFFSET FLAT:label_3504
	call	__assert_fail
.label_3516:
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x2c], 0
	jne	.label_3521
	jmp	.label_3520
.label_3521:
	movabs	rdi, OFFSET FLAT:label_3502
	movabs	rsi, OFFSET FLAT:label_3503
	mov	edx, 0xaa
	movabs	rcx, OFFSET FLAT:label_3504
	call	__assert_fail
.label_3520:
	jmp	.label_3510
.label_3510:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x28], 1
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0xc
	mov	rdi, rax
	call	mbsinit
	cmp	eax, 0
	je	.label_3506
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 8], 0
.label_3506:
	jmp	.label_3501
.label_3501:
	jmp	.label_3518
.label_3518:
	jmp	.label_3505
.label_3505:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x14], 1
.label_3515:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x425230
	.globl mbiter_multi_reloc
	.type mbiter_multi_reloc, @function
mbiter_multi_reloc:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	add	rsi, qword ptr [rdi + 0x18]
	mov	qword ptr [rdi + 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	add	rsi, qword ptr [rdi]
	mov	qword ptr [rdi], rsi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x425260
	.globl mbiter_multi_copy
	.type mbiter_multi_copy, @function
mbiter_multi_copy:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	al, byte ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 8]
	mov	cl, al
	and	cl, 1
	mov	byte ptr [rsi + 8], cl
	test	al, 1
	jne	.label_3523
	jmp	.label_3524
.label_3523:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xc]
	mov	qword ptr [rax + 0xc], rcx
	jmp	.label_3525
.label_3524:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 0xc
	mov	rdi, rcx
	call	memset
.label_3525:
	mov	rax, qword ptr [rbp - 0x10]
	mov	cl, byte ptr [rax + 0x14]
	mov	rax, qword ptr [rbp - 8]
	and	cl, 1
	mov	byte ptr [rax + 0x14], cl
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x18
	mov	rdx, qword ptr [rbp - 0x10]
	add	rdx, 0x18
	mov	rdi, rax
	mov	rsi, rdx
	call	mb_copy
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x425300

	.globl mbsstr
	.type mbsstr, @function
mbsstr:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x250
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_3532
	lea	rax, [rbp - 0x58]
	xor	esi, esi
	mov	ecx, 8
	mov	edx, ecx
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x48], rdi
	mov	byte ptr [rbp - 0x58], 0
	mov	rdi, rax
	add	rdi, 4
	mov	qword ptr [rbp - 0x1e8], rax
	call	memset
	mov	byte ptr [rbp - 0x4c], 0
	mov	rdi, qword ptr [rbp - 0x1e8]
	call	mbuiter_multi_next
	xor	ecx, ecx
	mov	r8b, cl
	test	byte ptr [rbp - 0x38], 1
	mov	byte ptr [rbp - 0x1e9], r8b
	je	.label_3543
	cmp	dword ptr [rbp - 0x34], 0
	sete	al
	mov	byte ptr [rbp - 0x1e9], al
.label_3543:
	mov	al, byte ptr [rbp - 0x1e9]
	xor	al, 0xff
	test	al, 1
	jne	.label_3552
	jmp	.label_3557
.label_3552:
	xor	eax, eax
	mov	ecx, 8
	mov	edx, ecx
	lea	rsi, [rbp - 0xf8]
	lea	rdi, [rbp - 0xb8]
	mov	byte ptr [rbp - 0x59], 1
	mov	qword ptr [rbp - 0x68], 0
	mov	qword ptr [rbp - 0x70], 0
	mov	qword ptr [rbp - 0x78], 0
	mov	r8, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xa8], r8
	mov	byte ptr [rbp - 0xb8], 0
	add	rdi, 4
	mov	qword ptr [rbp - 0x1f8], rsi
	mov	esi, eax
	mov	qword ptr [rbp - 0x200], rdx
	mov	dword ptr [rbp - 0x204], eax
	call	memset
	mov	byte ptr [rbp - 0xac], 0
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xe8], rdx
	mov	byte ptr [rbp - 0xf8], 0
	mov	rdx, qword ptr [rbp - 0x1f8]
	add	rdx, 4
	mov	rdi, rdx
	mov	esi, dword ptr [rbp - 0x204]
	mov	rdx, qword ptr [rbp - 0x200]
	call	memset
	mov	byte ptr [rbp - 0xec], 0
.label_3530:
	lea	rdi, [rbp - 0xf8]
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0xd8], 1
	mov	byte ptr [rbp - 0x205], cl
	je	.label_3541
	cmp	dword ptr [rbp - 0xd4], 0
	sete	al
	mov	byte ptr [rbp - 0x205], al
.label_3541:
	mov	al, byte ptr [rbp - 0x205]
	xor	al, 0xff
	test	al, 1
	jne	.label_3546
	mov	qword ptr [rbp - 8], 0
	jmp	.label_3529
.label_3546:
	test	byte ptr [rbp - 0x59], 1
	je	.label_3558
	cmp	qword ptr [rbp - 0x68], 0xa
	jb	.label_3558
	mov	rax, qword ptr [rbp - 0x70]
	imul	rcx, qword ptr [rbp - 0x68], 5
	cmp	rax, rcx
	jb	.label_3558
	mov	rax, qword ptr [rbp - 0x70]
	sub	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x100], rax
.label_3537:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x100], 0
	mov	byte ptr [rbp - 0x206], cl
	jbe	.label_3564
	lea	rdi, [rbp - 0xb8]
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x98], 1
	mov	byte ptr [rbp - 0x207], cl
	je	.label_3571
	cmp	dword ptr [rbp - 0x94], 0
	sete	al
	mov	byte ptr [rbp - 0x207], al
.label_3571:
	mov	al, byte ptr [rbp - 0x207]
	xor	al, 0xff
	mov	byte ptr [rbp - 0x206], al
.label_3564:
	mov	al, byte ptr [rbp - 0x206]
	test	al, 1
	jne	.label_3533
	jmp	.label_3535
.label_3533:
	mov	rax, qword ptr [rbp - 0xa0]
	add	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0xa8], rax
	mov	byte ptr [rbp - 0xac], 0
	mov	rax, qword ptr [rbp - 0x100]
	add	rax, -1
	mov	qword ptr [rbp - 0x100], rax
	jmp	.label_3537
.label_3535:
	lea	rdi, [rbp - 0xb8]
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x78], rax
	call	mbuiter_multi_next
	xor	ecx, ecx
	mov	dl, cl
	test	byte ptr [rbp - 0x98], 1
	mov	byte ptr [rbp - 0x208], dl
	je	.label_3548
	cmp	dword ptr [rbp - 0x94], 0
	sete	al
	mov	byte ptr [rbp - 0x208], al
.label_3548:
	mov	al, byte ptr [rbp - 0x208]
	xor	al, 0xff
	test	al, 1
	jne	.label_3559
	lea	rdx, [rbp - 0x108]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	knuth_morris_pratt_multibyte
	and	al, 1
	mov	byte ptr [rbp - 0x109], al
	test	byte ptr [rbp - 0x109], 1
	je	.label_3573
	mov	rax, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_3529
.label_3573:
	mov	byte ptr [rbp - 0x59], 0
.label_3559:
	jmp	.label_3558
.label_3558:
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	test	byte ptr [rbp - 0xd8], 1
	je	.label_3544
	test	byte ptr [rbp - 0x38], 1
	je	.label_3544
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, dword ptr [rbp - 0x34]
	je	.label_3570
	jmp	.label_3536
.label_3544:
	mov	rax, qword ptr [rbp - 0xe0]
	cmp	rax, qword ptr [rbp - 0x40]
	jne	.label_3536
	mov	rdi, qword ptr [rbp - 0xe8]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0xe0]
	call	memcmp
	cmp	eax, 0
	jne	.label_3536
.label_3570:
	lea	rax, [rbp - 0x190]
	xor	esi, esi
	mov	ecx, 8
	mov	edx, ecx
	mov	ecx, 0x40
	mov	edi, ecx
	lea	r8, [rbp - 0xf8]
	lea	r9, [rbp - 0x150]
	mov	qword ptr [rbp - 0x210], rdi
	mov	rdi, r9
	mov	dword ptr [rbp - 0x214], esi
	mov	rsi, r8
	mov	r8, qword ptr [rbp - 0x210]
	mov	qword ptr [rbp - 0x220], rdx
	mov	rdx, r8
	mov	qword ptr [rbp - 0x228], rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x138]
	add	rax, qword ptr [rbp - 0x140]
	mov	qword ptr [rbp - 0x140], rax
	mov	byte ptr [rbp - 0x144], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x180], rax
	mov	byte ptr [rbp - 0x190], 0
	mov	rax, qword ptr [rbp - 0x228]
	add	rax, 4
	mov	rdi, rax
	mov	esi, dword ptr [rbp - 0x214]
	mov	rdx, qword ptr [rbp - 0x220]
	call	memset
	mov	byte ptr [rbp - 0x184], 0
	mov	rdi, qword ptr [rbp - 0x228]
	call	mbuiter_multi_next
	xor	ecx, ecx
	mov	r10b, cl
	test	byte ptr [rbp - 0x170], 1
	mov	byte ptr [rbp - 0x229], r10b
	je	.label_3553
	cmp	dword ptr [rbp - 0x16c], 0
	sete	al
	mov	byte ptr [rbp - 0x229], al
.label_3553:
	mov	al, byte ptr [rbp - 0x229]
	xor	al, 0xff
	test	al, 1
	jne	.label_3539
	call	abort
.label_3539:
	mov	rax, qword ptr [rbp - 0x178]
	add	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0x180], rax
	mov	byte ptr [rbp - 0x184], 0
.label_3565:
	lea	rdi, [rbp - 0x190]
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x170], 1
	mov	byte ptr [rbp - 0x22a], cl
	je	.label_3551
	cmp	dword ptr [rbp - 0x16c], 0
	sete	al
	mov	byte ptr [rbp - 0x22a], al
.label_3551:
	mov	al, byte ptr [rbp - 0x22a]
	xor	al, 0xff
	test	al, 1
	jne	.label_3569
	mov	rax, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_3529
.label_3569:
	lea	rdi, [rbp - 0x150]
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x130], 1
	mov	byte ptr [rbp - 0x22b], cl
	je	.label_3566
	cmp	dword ptr [rbp - 0x12c], 0
	sete	al
	mov	byte ptr [rbp - 0x22b], al
.label_3566:
	mov	al, byte ptr [rbp - 0x22b]
	xor	al, 0xff
	test	al, 1
	jne	.label_3572
	mov	qword ptr [rbp - 8], 0
	jmp	.label_3529
.label_3572:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	test	byte ptr [rbp - 0x130], 1
	je	.label_3528
	test	byte ptr [rbp - 0x170], 1
	je	.label_3528
	mov	eax, dword ptr [rbp - 0x12c]
	cmp	eax, dword ptr [rbp - 0x16c]
	je	.label_3538
	jmp	.label_3542
.label_3528:
	mov	rax, qword ptr [rbp - 0x138]
	cmp	rax, qword ptr [rbp - 0x178]
	jne	.label_3542
	mov	rdi, qword ptr [rbp - 0x140]
	mov	rsi, qword ptr [rbp - 0x180]
	mov	rdx, qword ptr [rbp - 0x138]
	call	memcmp
	cmp	eax, 0
	je	.label_3538
.label_3542:
	jmp	.label_3554
.label_3538:
	jmp	.label_3556
.label_3556:
	mov	rax, qword ptr [rbp - 0x138]
	add	rax, qword ptr [rbp - 0x140]
	mov	qword ptr [rbp - 0x140], rax
	mov	byte ptr [rbp - 0x144], 0
	mov	rax, qword ptr [rbp - 0x178]
	add	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0x180], rax
	mov	byte ptr [rbp - 0x184], 0
	jmp	.label_3565
.label_3554:
	jmp	.label_3536
.label_3536:
	jmp	.label_3567
.label_3567:
	mov	rax, qword ptr [rbp - 0xe0]
	add	rax, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0xe8], rax
	mov	byte ptr [rbp - 0xec], 0
	jmp	.label_3530
.label_3557:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_3529
.label_3532:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_3527
	mov	byte ptr [rbp - 0x191], 1
	mov	qword ptr [rbp - 0x1a0], 0
	mov	qword ptr [rbp - 0x1a8], 0
	mov	qword ptr [rbp - 0x1b0], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x1b8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax]
	mov	byte ptr [rbp - 0x1b9], dl
.label_3562:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_3540
	mov	qword ptr [rbp - 8], 0
	jmp	.label_3529
.label_3540:
	test	byte ptr [rbp - 0x191], 1
	je	.label_3555
	cmp	qword ptr [rbp - 0x1a0], 0xa
	jb	.label_3555
	mov	rax, qword ptr [rbp - 0x1a8]
	imul	rcx, qword ptr [rbp - 0x1a0], 5
	cmp	rax, rcx
	jb	.label_3555
	cmp	qword ptr [rbp - 0x1b8], 0
	je	.label_3563
	mov	rdi, qword ptr [rbp - 0x1b8]
	mov	rax, qword ptr [rbp - 0x1a8]
	sub	rax, qword ptr [rbp - 0x1b0]
	mov	rsi, rax
	call	strnlen
	add	rax, qword ptr [rbp - 0x1b8]
	mov	qword ptr [rbp - 0x1b8], rax
	mov	rax, qword ptr [rbp - 0x1b8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_3568
	mov	qword ptr [rbp - 0x1b8], 0
.label_3568:
	mov	rax, qword ptr [rbp - 0x1a8]
	mov	qword ptr [rbp - 0x1b0], rax
.label_3563:
	cmp	qword ptr [rbp - 0x1b8], 0
	jne	.label_3531
	lea	rcx, [rbp - 0x1c8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, -1
	mov	rdx, qword ptr [rbp - 0x18]
	add	rdx, -1
	mov	qword ptr [rbp - 0x238], rdi
	mov	rdi, rdx
	mov	qword ptr [rbp - 0x240], rcx
	mov	qword ptr [rbp - 0x248], rax
	call	strlen
	mov	rdi, qword ptr [rbp - 0x238]
	mov	rsi, qword ptr [rbp - 0x248]
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x240]
	call	knuth_morris_pratt
	and	al, 1
	mov	byte ptr [rbp - 0x1c9], al
	test	byte ptr [rbp - 0x1c9], 1
	je	.label_3550
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_3529
.label_3550:
	mov	byte ptr [rbp - 0x191], 0
.label_3531:
	jmp	.label_3555
.label_3555:
	mov	rax, qword ptr [rbp - 0x1a0]
	add	rax, 1
	mov	qword ptr [rbp - 0x1a0], rax
	mov	rax, qword ptr [rbp - 0x1a8]
	add	rax, 1
	mov	qword ptr [rbp - 0x1a8], rax
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	movsx	edx, byte ptr [rbp - 0x1b9]
	cmp	ecx, edx
	jne	.label_3560
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x1d8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x1e0], rax
.label_3549:
	mov	rax, qword ptr [rbp - 0x1e0]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_3574
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_3529
.label_3574:
	mov	rax, qword ptr [rbp - 0x1d8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_3534
	mov	qword ptr [rbp - 8], 0
	jmp	.label_3529
.label_3534:
	mov	rax, qword ptr [rbp - 0x1a8]
	add	rax, 1
	mov	qword ptr [rbp - 0x1a8], rax
	mov	rax, qword ptr [rbp - 0x1d8]
	movsx	ecx, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x1e0]
	movsx	edx, byte ptr [rax]
	cmp	ecx, edx
	je	.label_3547
	jmp	.label_3545
.label_3547:
	jmp	.label_3526
.label_3526:
	mov	rax, qword ptr [rbp - 0x1d8]
	add	rax, 1
	mov	qword ptr [rbp - 0x1d8], rax
	mov	rax, qword ptr [rbp - 0x1e0]
	add	rax, 1
	mov	qword ptr [rbp - 0x1e0], rax
	jmp	.label_3549
.label_3545:
	jmp	.label_3560
.label_3560:
	jmp	.label_3561
.label_3561:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_3562
.label_3527:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_3529:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x250
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x425bd0

	.globl knuth_morris_pratt_multibyte
	.type knuth_morris_pratt_multibyte, @function
knuth_morris_pratt_multibyte:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x170
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdi, qword ptr [rbp - 0x18]
	call	mbslen
	movabs	rdx, 0x249249249249249
	mov	qword ptr [rbp - 0x28], rax
	cmp	rdx, qword ptr [rbp - 0x28]
	jae	.label_3606
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x140], rcx
	jmp	.label_3578
.label_3606:
	imul	rax, qword ptr [rbp - 0x28], 0x38
	cmp	rax, 0xfa1
	jae	.label_3584
	mov	rax, qword ptr [rbp - 0x28]
	imul	rax, rax, 0x38
	add	rax, 0x2e
	and	rax, 0xfffffffffffffff0
	mov	rcx, rsp
	sub	rcx, rax
	mov	rsp, rcx
	add	rcx, 0x1f
	and	rcx, 0xffffffffffffffe0
	mov	qword ptr [rbp - 0x148], rcx
	jmp	.label_3593
.label_3584:
	imul	rdi, qword ptr [rbp - 0x28], 0x38
	call	mmalloca
	mov	qword ptr [rbp - 0x148], rax
.label_3593:
	mov	rax, qword ptr [rbp - 0x148]
	mov	qword ptr [rbp - 0x140], rax
.label_3578:
	mov	rax, qword ptr [rbp - 0x140]
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_3607
	mov	byte ptr [rbp - 1], 0
	jmp	.label_3580
.label_3607:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0x88]
	mov	rdi, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x30], rdi
	mov	rdi, qword ptr [rbp - 0x30]
	imul	r8, qword ptr [rbp - 0x28], 0x30
	add	rdi, r8
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x38], rdi
	mov	qword ptr [rbp - 0x90], 0
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x78], rdi
	mov	byte ptr [rbp - 0x88], 0
	add	rcx, 4
	mov	rdi, rcx
	call	memset
	mov	byte ptr [rbp - 0x7c], 0
.label_3603:
	lea	rdi, [rbp - 0x88]
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x68], 1
	mov	byte ptr [rbp - 0x149], cl
	je	.label_3610
	cmp	dword ptr [rbp - 0x64], 0
	sete	al
	mov	byte ptr [rbp - 0x149], al
.label_3610:
	mov	al, byte ptr [rbp - 0x149]
	xor	al, 0xff
	test	al, 1
	jne	.label_3587
	jmp	.label_3594
.label_3587:
	lea	rax, [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x90]
	imul	rcx, rcx, 0x30
	add	rcx, qword ptr [rbp - 0x30]
	add	rax, 0x10
	mov	rdi, rcx
	mov	rsi, rax
	call	mb_copy
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	mov	byte ptr [rbp - 0x7c], 0
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_3603
.label_3594:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 8], 1
	mov	qword ptr [rbp - 0xa0], 0
	mov	qword ptr [rbp - 0x98], 2
.label_3608:
	mov	rax, qword ptr [rbp - 0x98]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_3588
	mov	rax, qword ptr [rbp - 0x98]
	sub	rax, 1
	imul	rax, rax, 0x30
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xa8], rax
.label_3601:
	mov	rax, qword ptr [rbp - 0xa8]
	test	byte ptr [rax + 0x10], 1
	je	.label_3600
	mov	rax, qword ptr [rbp - 0xa0]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x10], 1
	je	.label_3600
	mov	rax, qword ptr [rbp - 0xa8]
	mov	ecx, dword ptr [rax + 0x14]
	mov	rax, qword ptr [rbp - 0xa0]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rbp - 0x30]
	cmp	ecx, dword ptr [rax + 0x14]
	je	.label_3596
	jmp	.label_3586
.label_3600:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0xa0]
	imul	rcx, rcx, 0x30
	add	rcx, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rcx + 8]
	jne	.label_3586
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0xa0]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rdx, qword ptr [rax + 8]
	call	memcmp
	cmp	eax, 0
	jne	.label_3586
.label_3596:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0xa0]
	add	rcx, 1
	mov	qword ptr [rbp - 0xa0], rcx
	sub	rax, rcx
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_3595
.label_3586:
	cmp	qword ptr [rbp - 0xa0], 0
	jne	.label_3590
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_3595
.label_3590:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rdx, qword ptr [rbp - 0x38]
	sub	rax, qword ptr [rdx + rcx*8]
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_3601
.label_3595:
	jmp	.label_3582
.label_3582:
	mov	rax, qword ptr [rbp - 0x98]
	add	rax, 1
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_3608
.label_3588:
	xor	eax, eax
	mov	ecx, 8
	mov	edx, ecx
	lea	rsi, [rbp - 0x130]
	lea	rdi, [rbp - 0xf0]
	mov	r8, qword ptr [rbp - 0x20]
	mov	qword ptr [r8], 0
	mov	qword ptr [rbp - 0xb0], 0
	mov	r8, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xe0], r8
	mov	byte ptr [rbp - 0xf0], 0
	add	rdi, 4
	mov	qword ptr [rbp - 0x158], rsi
	mov	esi, eax
	mov	qword ptr [rbp - 0x160], rdx
	mov	dword ptr [rbp - 0x164], eax
	call	memset
	mov	byte ptr [rbp - 0xe4], 0
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x120], rdx
	mov	byte ptr [rbp - 0x130], 0
	mov	rdx, qword ptr [rbp - 0x158]
	add	rdx, 4
	mov	rdi, rdx
	mov	esi, dword ptr [rbp - 0x164]
	mov	rdx, qword ptr [rbp - 0x160]
	call	memset
	mov	byte ptr [rbp - 0x124], 0
.label_3604:
	lea	rdi, [rbp - 0x130]
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x110], 1
	mov	byte ptr [rbp - 0x165], cl
	je	.label_3597
	cmp	dword ptr [rbp - 0x10c], 0
	sete	al
	mov	byte ptr [rbp - 0x165], al
.label_3597:
	mov	al, byte ptr [rbp - 0x165]
	xor	al, 0xff
	test	al, 1
	jne	.label_3605
	jmp	.label_3602
.label_3605:
	mov	rax, qword ptr [rbp - 0xb0]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x10], 1
	je	.label_3579
	test	byte ptr [rbp - 0x110], 1
	je	.label_3579
	mov	rax, qword ptr [rbp - 0xb0]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 0x14]
	cmp	ecx, dword ptr [rbp - 0x10c]
	je	.label_3583
	jmp	.label_3589
.label_3579:
	mov	rax, qword ptr [rbp - 0xb0]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	cmp	rax, qword ptr [rbp - 0x118]
	jne	.label_3589
	mov	rax, qword ptr [rbp - 0xb0]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rax]
	mov	rsi, qword ptr [rbp - 0x120]
	mov	rax, qword ptr [rbp - 0xb0]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rax + 8]
	call	memcmp
	cmp	eax, 0
	jne	.label_3589
.label_3583:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, 1
	mov	qword ptr [rbp - 0xb0], rax
	mov	rax, qword ptr [rbp - 0x118]
	add	rax, qword ptr [rbp - 0x120]
	mov	qword ptr [rbp - 0x120], rax
	mov	byte ptr [rbp - 0x124], 0
	mov	rax, qword ptr [rbp - 0xb0]
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_3581
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
	jmp	.label_3602
.label_3581:
	jmp	.label_3577
.label_3589:
	cmp	qword ptr [rbp - 0xb0], 0
	jbe	.label_3609
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x138], rax
	mov	rax, qword ptr [rbp - 0x138]
	mov	rcx, qword ptr [rbp - 0xb0]
	sub	rcx, rax
	mov	qword ptr [rbp - 0xb0], rcx
.label_3585:
	cmp	qword ptr [rbp - 0x138], 0
	jbe	.label_3591
	lea	rdi, [rbp - 0xf0]
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0xd0], 1
	mov	byte ptr [rbp - 0x166], cl
	je	.label_3575
	cmp	dword ptr [rbp - 0xcc], 0
	sete	al
	mov	byte ptr [rbp - 0x166], al
.label_3575:
	mov	al, byte ptr [rbp - 0x166]
	xor	al, 0xff
	test	al, 1
	jne	.label_3599
	call	abort
.label_3599:
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, qword ptr [rbp - 0xe0]
	mov	qword ptr [rbp - 0xe0], rax
	mov	byte ptr [rbp - 0xe4], 0
	mov	rax, qword ptr [rbp - 0x138]
	add	rax, -1
	mov	qword ptr [rbp - 0x138], rax
	jmp	.label_3585
.label_3591:
	jmp	.label_3576
.label_3609:
	lea	rdi, [rbp - 0xf0]
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0xd0], 1
	mov	byte ptr [rbp - 0x167], cl
	je	.label_3598
	cmp	dword ptr [rbp - 0xcc], 0
	sete	al
	mov	byte ptr [rbp - 0x167], al
.label_3598:
	mov	al, byte ptr [rbp - 0x167]
	xor	al, 0xff
	test	al, 1
	jne	.label_3592
	call	abort
.label_3592:
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, qword ptr [rbp - 0xe0]
	mov	qword ptr [rbp - 0xe0], rax
	mov	byte ptr [rbp - 0xe4], 0
	mov	rax, qword ptr [rbp - 0x118]
	add	rax, qword ptr [rbp - 0x120]
	mov	qword ptr [rbp - 0x120], rax
	mov	byte ptr [rbp - 0x124], 0
.label_3576:
	jmp	.label_3577
.label_3577:
	jmp	.label_3604
.label_3602:
	mov	rdi, qword ptr [rbp - 0x40]
	call	freea
	mov	byte ptr [rbp - 1], 1
.label_3580:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	mov	rsp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x426260

	.globl knuth_morris_pratt
	.type knuth_morris_pratt, @function
knuth_morris_pratt:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	movabs	rax, 0xfffffffffffffff
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x30], rcx
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_3622
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x70], rcx
	jmp	.label_3615
.label_3622:
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 3
	cmp	rax, 0xfa1
	jae	.label_3623
	mov	rax, qword ptr [rbp - 0x30]
	lea	rax, [rax*8 + 0x2e]
	and	rax, 0xfffffffffffffff0
	mov	rcx, rsp
	sub	rcx, rax
	mov	rsp, rcx
	add	rcx, 0x1f
	and	rcx, 0xffffffffffffffe0
	mov	qword ptr [rbp - 0x78], rcx
	jmp	.label_3629
.label_3623:
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 3
	mov	rdi, rax
	call	mmalloca
	mov	qword ptr [rbp - 0x78], rax
.label_3629:
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x70], rax
.label_3615:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_3630
	mov	byte ptr [rbp - 1], 0
	jmp	.label_3617
.label_3630:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 8], 1
	mov	qword ptr [rbp - 0x48], 0
	mov	qword ptr [rbp - 0x40], 2
.label_3616:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_3613
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 0x49], dl
.label_3626:
	movzx	eax, byte ptr [rbp - 0x49]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x18]
	movzx	esi, byte ptr [rdx + rcx]
	cmp	eax, esi
	jne	.label_3620
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x48]
	add	rcx, 1
	mov	qword ptr [rbp - 0x48], rcx
	sub	rax, rcx
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_3621
.label_3620:
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_3618
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_3621
.label_3618:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x38]
	sub	rax, qword ptr [rdx + rcx*8]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_3626
.label_3621:
	jmp	.label_3614
.label_3614:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_3616
.label_3613:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax], 0
	mov	qword ptr [rbp - 0x58], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x68], rax
.label_3611:
	mov	rax, qword ptr [rbp - 0x68]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_3612
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x18]
	movzx	edx, byte ptr [rcx + rax]
	mov	rax, qword ptr [rbp - 0x68]
	movzx	esi, byte ptr [rax]
	cmp	edx, esi
	jne	.label_3619
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	jne	.label_3627
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	jmp	.label_3612
.label_3627:
	jmp	.label_3624
.label_3619:
	cmp	qword ptr [rbp - 0x58], 0
	jbe	.label_3625
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x58]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x58], rcx
	jmp	.label_3628
.label_3625:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
.label_3628:
	jmp	.label_3624
.label_3624:
	jmp	.label_3611
.label_3612:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	freea
	mov	byte ptr [rbp - 1], 1
.label_3617:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	mov	rsp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4264f0

	.globl mbuiter_multi_next
	.type mbuiter_multi_next, @function
mbuiter_multi_next:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	test	byte ptr [rdi + 0xc], 1
	je	.label_3647
	jmp	.label_3636
.label_3647:
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax], 1
	je	.label_3638
	jmp	.label_3642
.label_3638:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	movsx	edi, byte ptr [rax]
	call	is_basic
	test	al, 1
	jne	.label_3648
	jmp	.label_3651
.label_3648:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x18], 1
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	movsx	ecx, byte ptr [rax]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x24], ecx
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x20], 1
	jmp	.label_3632
.label_3651:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 4
	mov	rdi, rax
	call	mbsinit
	cmp	eax, 0
	je	.label_3640
	jmp	.label_3631
.label_3640:
	movabs	rdi, OFFSET FLAT:label_3514
	movabs	rsi, OFFSET FLAT:label_3633
	mov	edx, 0x96
	movabs	rcx, OFFSET FLAT:label_3634
	call	__assert_fail
.label_3631:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax], 1
.label_3642:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x10
	add	rax, 0x14
	mov	rcx, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rcx + 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdi
	call	__ctype_get_mb_cur_max
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, rax
	call	strnlen1
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 4
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, rax
	call	rpl_mbrtowc
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x18], -1
	jne	.label_3645
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x18], 1
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x20], 0
	jmp	.label_3643
.label_3645:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x18], -2
	jne	.label_3649
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 0x10]
	call	strlen
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x20], 0
	jmp	.label_3635
.label_3649:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x18], 0
	jne	.label_3644
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x18], 1
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_3637
	jmp	.label_3646
.label_3637:
	movabs	rdi, OFFSET FLAT:label_3519
	movabs	rsi, OFFSET FLAT:label_3633
	mov	edx, 0xb2
	movabs	rcx, OFFSET FLAT:label_3634
	call	__assert_fail
.label_3646:
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x24], 0
	jne	.label_3641
	jmp	.label_3639
.label_3641:
	movabs	rdi, OFFSET FLAT:label_3502
	movabs	rsi, OFFSET FLAT:label_3633
	mov	edx, 0xb3
	movabs	rcx, OFFSET FLAT:label_3634
	call	__assert_fail
.label_3639:
	jmp	.label_3644
.label_3644:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x20], 1
	mov	rax, qword ptr [rbp - 8]
	add	rax, 4
	mov	rdi, rax
	call	mbsinit
	cmp	eax, 0
	je	.label_3650
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax], 0
.label_3650:
	jmp	.label_3635
.label_3635:
	jmp	.label_3643
.label_3643:
	jmp	.label_3632
.label_3632:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0xc], 1
.label_3636:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x426750
	.globl mbuiter_multi_reloc
	.type mbuiter_multi_reloc, @function
mbuiter_multi_reloc:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	add	rsi, qword ptr [rdi + 0x10]
	mov	qword ptr [rdi + 0x10], rsi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x426770
	.globl mbuiter_multi_copy
	.type mbuiter_multi_copy, @function
mbuiter_multi_copy:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	al, byte ptr [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	cl, al
	and	cl, 1
	mov	byte ptr [rsi], cl
	test	al, 1
	jne	.label_3652
	jmp	.label_3653
.label_3652:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 4]
	mov	qword ptr [rax + 4], rcx
	jmp	.label_3654
.label_3653:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 4
	mov	rdi, rcx
	call	memset
.label_3654:
	mov	rax, qword ptr [rbp - 0x10]
	mov	cl, byte ptr [rax + 0xc]
	mov	rax, qword ptr [rbp - 8]
	and	cl, 1
	mov	byte ptr [rax + 0xc], cl
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x10
	mov	rdx, qword ptr [rbp - 0x10]
	add	rdx, 0x10
	mov	rdi, rax
	mov	rsi, rdx
	call	mb_copy
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x426800

	.globl mem_cd_iconv
	.type mem_cd_iconv, @function
mem_cd_iconv:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10f0
	xor	eax, eax
	mov	r9d, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, r9
	mov	rdx, r9
	mov	rcx, r9
	mov	r8, r9
	call	iconv
	mov	qword ptr [rbp - 0x48], 0
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x1050], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x1058], rcx
	mov	qword ptr [rbp - 0x10c8], rax
.label_3672:
	cmp	qword ptr [rbp - 0x1058], 0
	jbe	.label_3671
	lea	rsi, [rbp - 0x1050]
	lea	rdx, [rbp - 0x1058]
	lea	rcx, [rbp - 0x1060]
	lea	r8, [rbp - 0x1068]
	lea	rax, [rbp - 0x1048]
	mov	qword ptr [rbp - 0x1060], rax
	mov	qword ptr [rbp - 0x1068], 0x1000
	mov	rdi, qword ptr [rbp - 0x20]
	call	iconv
	mov	qword ptr [rbp - 0x1070], rax
	cmp	qword ptr [rbp - 0x1070], -1
	jne	.label_3661
	call	__errno_location
	cmp	dword ptr [rax], 7
	jne	.label_3663
	jmp	.label_3666
.label_3663:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_3668
	jmp	.label_3671
.label_3668:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_3656
.label_3666:
	jmp	.label_3661
.label_3661:
	lea	rax, [rbp - 0x1048]
	mov	rcx, qword ptr [rbp - 0x1060]
	sub	rcx, rax
	add	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rcx
	jmp	.label_3672
.label_3671:
	xor	eax, eax
	mov	ecx, eax
	lea	rdx, [rbp - 0x1078]
	lea	r8, [rbp - 0x1080]
	lea	rsi, [rbp - 0x1048]
	mov	qword ptr [rbp - 0x1078], rsi
	mov	qword ptr [rbp - 0x1080], 0x1000
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x10d0], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x10d0]
	call	iconv
	mov	qword ptr [rbp - 0x1088], rax
	cmp	qword ptr [rbp - 0x1088], -1
	jne	.label_3670
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_3656
.label_3670:
	lea	rax, [rbp - 0x1048]
	mov	rcx, qword ptr [rbp - 0x1078]
	sub	rcx, rax
	add	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rcx
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_3674
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax], 0
	mov	dword ptr [rbp - 4], 0
	jmp	.label_3656
.label_3674:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], 0
	je	.label_3662
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x38]
	jb	.label_3662
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_3658
.label_3662:
	mov	rdi, qword ptr [rbp - 0x38]
	call	malloc
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_3673
	call	__errno_location
	mov	dword ptr [rax], 0xc
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_3656
.label_3673:
	jmp	.label_3658
.label_3658:
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, rcx
	mov	rdx, rcx
	mov	qword ptr [rbp - 0x10d8], rcx
	mov	r8, qword ptr [rbp - 0x10d8]
	call	iconv
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x1090], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x1098], rcx
	mov	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x10a0], rcx
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x10a8], rcx
	mov	qword ptr [rbp - 0x10e0], rax
.label_3657:
	cmp	qword ptr [rbp - 0x1098], 0
	jbe	.label_3665
	lea	rsi, [rbp - 0x1090]
	lea	rdx, [rbp - 0x1098]
	lea	rcx, [rbp - 0x10a0]
	lea	r8, [rbp - 0x10a8]
	mov	rdi, qword ptr [rbp - 0x20]
	call	iconv
	mov	qword ptr [rbp - 0x10b0], rax
	cmp	qword ptr [rbp - 0x10b0], -1
	jne	.label_3664
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_3667
	jmp	.label_3665
.label_3667:
	jmp	.label_3659
.label_3664:
	jmp	.label_3657
.label_3665:
	xor	eax, eax
	mov	ecx, eax
	lea	rdx, [rbp - 0x10a0]
	lea	r8, [rbp - 0x10a8]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x10e8], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x10e8]
	call	iconv
	mov	qword ptr [rbp - 0x10b8], rax
	cmp	qword ptr [rbp - 0x10b8], -1
	jne	.label_3655
	jmp	.label_3659
.label_3655:
	cmp	qword ptr [rbp - 0x10a8], 0
	je	.label_3660
	call	abort
.label_3660:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_3656
.label_3659:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rcx]
	je	.label_3669
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x10bc], ecx
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
	mov	ecx, dword ptr [rbp - 0x10bc]
	mov	dword ptr [rbp - 0x10ec], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x10ec]
	mov	dword ptr [rax], ecx
.label_3669:
	mov	dword ptr [rbp - 4], 0xffffffff
.label_3656:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10f0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x426bb0

	.globl str_cd_iconv
	.type str_cd_iconv, @function
str_cd_iconv:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xd0
	mov	eax, 0xffffffff
	mov	ecx, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xb0], rcx
	call	strlen
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0x48], rax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x48]
	shr	rsi, 4
	cmp	rcx, rsi
	ja	.label_3696
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 4
	mov	qword ptr [rbp - 0x28], rax
.label_3696:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	malloc
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_3685
	call	__errno_location
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 8], 0
	jmp	.label_3689
.label_3685:
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, rcx
	mov	rdx, rcx
	mov	qword ptr [rbp - 0xb8], rcx
	mov	r8, qword ptr [rbp - 0xb8]
	call	iconv
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x50], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	qword ptr [rbp - 0xc0], rax
.label_3676:
	lea	rsi, [rbp - 0x38]
	lea	rdx, [rbp - 0x40]
	lea	rcx, [rbp - 0x50]
	lea	r8, [rbp - 0x58]
	mov	rdi, qword ptr [rbp - 0x18]
	call	iconv
	mov	qword ptr [rbp - 0x60], rax
	cmp	qword ptr [rbp - 0x60], -1
	jne	.label_3684
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_3687
	jmp	.label_3675
.label_3687:
	call	__errno_location
	cmp	dword ptr [rax], 7
	jne	.label_3691
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x70]
	cmp	rax, qword ptr [rbp - 0x28]
	ja	.label_3694
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_3677
.label_3694:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x70]
	call	realloc
	mov	qword ptr [rbp - 0x78], rax
	cmp	qword ptr [rbp - 0x78], 0
	jne	.label_3682
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_3677
.label_3682:
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x28]
	sub	rax, 1
	sub	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_3688
.label_3691:
	jmp	.label_3677
.label_3688:
	jmp	.label_3697
.label_3697:
	jmp	.label_3698
.label_3684:
	jmp	.label_3675
.label_3698:
	jmp	.label_3676
.label_3675:
	jmp	.label_3678
.label_3678:
	xor	eax, eax
	mov	ecx, eax
	lea	rdx, [rbp - 0x50]
	lea	r8, [rbp - 0x58]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, rcx
	mov	qword ptr [rbp - 0xc8], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0xc8]
	call	iconv
	mov	qword ptr [rbp - 0x80], rax
	cmp	qword ptr [rbp - 0x80], -1
	jne	.label_3686
	call	__errno_location
	cmp	dword ptr [rax], 7
	jne	.label_3690
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	mov	rax, qword ptr [rbp - 0x90]
	cmp	rax, qword ptr [rbp - 0x28]
	ja	.label_3692
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_3677
.label_3692:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x90]
	call	realloc
	mov	qword ptr [rbp - 0x98], rax
	cmp	qword ptr [rbp - 0x98], 0
	jne	.label_3683
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_3677
.label_3683:
	mov	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x28]
	sub	rax, 1
	sub	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_3695
.label_3690:
	jmp	.label_3677
.label_3695:
	jmp	.label_3681
.label_3686:
	jmp	.label_3679
.label_3681:
	jmp	.label_3678
.label_3679:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x50], rcx
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_3680
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x30]
	call	realloc
	mov	qword ptr [rbp - 0xa0], rax
	cmp	qword ptr [rbp - 0xa0], 0
	je	.label_3693
	mov	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0x20], rax
.label_3693:
	jmp	.label_3680
.label_3680:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_3689
.label_3677:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0xa4], ecx
	mov	rdi, qword ptr [rbp - 0x20]
	call	free
	mov	ecx, dword ptr [rbp - 0xa4]
	mov	dword ptr [rbp - 0xcc], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0xcc]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
.label_3689:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x426f50

	.globl str_iconv
	.type str_iconv, @function
str_iconv:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	eax, byte ptr [rdx]
	cmp	eax, 0
	je	.label_3701
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_3699
.label_3701:
	mov	rdi, qword ptr [rbp - 0x10]
	call	strdup
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_3702
	call	__errno_location
	mov	dword ptr [rax], 0xc
.label_3702:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_3703
.label_3699:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x18]
	call	iconv_open
	mov	rsi, -1
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], rsi
	jne	.label_3700
	mov	qword ptr [rbp - 8], 0
	jmp	.label_3703
.label_3700:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x30]
	call	str_cd_iconv
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_3705
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x3c], ecx
	mov	rdi, qword ptr [rbp - 0x30]
	call	iconv_close
	mov	ecx, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x44], eax
	mov	dword ptr [rbp - 0x48], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x48]
	mov	dword ptr [rax], ecx
	jmp	.label_3704
.label_3705:
	mov	rdi, qword ptr [rbp - 0x30]
	call	iconv_close
	cmp	eax, 0
	jge	.label_3706
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x40], ecx
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
	mov	ecx, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0x4c], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
	jmp	.label_3703
.label_3706:
	jmp	.label_3704
.label_3704:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 8], rax
.label_3703:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x427090

	.globl strnlen1
	.type strnlen1, @function
strnlen1:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	xor	esi, esi
	call	memchr
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_3708
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rax, rcx
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_3707
.label_3708:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
.label_3707:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4270f0

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
	ja	.label_3709
	jmp	.label_3711
.label_3711:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	add	eax, 0x2001a
	mov	dword ptr [rbp - 4], eax
	jmp	.label_3710
.label_3709:
	jmp	.label_3710
.label_3710:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x427140
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
	jb	.label_3712
	jmp	.label_3715
.label_3715:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_3712
	jmp	.label_3713
.label_3713:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_3714
	jmp	.label_3712
.label_3712:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_3716
.label_3714:
	mov	byte ptr [rbp - 1], 0
.label_3716:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4271b0
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
	jb	.label_3717
	jmp	.label_3720
.label_3720:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_3718
	jmp	.label_3717
.label_3717:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_3719
.label_3718:
	mov	byte ptr [rbp - 1], 0
.label_3719:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x427200
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_3721
	jmp	.label_3722
.label_3722:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_3723
.label_3721:
	mov	byte ptr [rbp - 1], 0
.label_3723:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x427230
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_3724
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_3724:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x427260
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
	jb	.label_3725
	jmp	.label_3727
.label_3727:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_3728
	jmp	.label_3725
.label_3725:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_3726
.label_3728:
	mov	byte ptr [rbp - 1], 0
.label_3726:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4272b0
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_3729
	jmp	.label_3731
.label_3731:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_3730
.label_3729:
	mov	byte ptr [rbp - 1], 0
.label_3730:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4272f0
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_3732
	jmp	.label_3734
.label_3734:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_3733
.label_3732:
	mov	byte ptr [rbp - 1], 0
.label_3733:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x427330
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_3735
	jmp	.label_3737
.label_3737:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_3736
.label_3735:
	mov	byte ptr [rbp - 1], 0
.label_3736:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x427370
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_3738
	jmp	.label_3740
.label_3740:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_3739
.label_3738:
	mov	byte ptr [rbp - 1], 0
.label_3739:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4273b0
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
	ja	.label_3741
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_3743]]
	jmp	rcx
.label_3823:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_3742
.label_3741:
	mov	byte ptr [rbp - 1], 0
.label_3742:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x427400
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
	jb	.label_3744
	jmp	.label_3747
.label_3747:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_3746
	jmp	.label_3744
.label_3744:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_3745
.label_3746:
	mov	byte ptr [rbp - 1], 0
.label_3745:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x427450
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_3748
	jmp	.label_3750
.label_3750:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_3749
.label_3748:
	mov	byte ptr [rbp - 1], 0
.label_3749:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x427490
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
	jb	.label_3751
	jmp	.label_3754
.label_3754:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_3751
	jmp	.label_3752
.label_3752:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_3753
	jmp	.label_3751
.label_3751:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_3755
.label_3753:
	mov	byte ptr [rbp - 1], 0
.label_3755:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x427500

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_3756
	jmp	.label_3758
.label_3758:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_3757
.label_3756:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_3757:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x427540
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_3759
	jmp	.label_3761
.label_3761:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_3760
.label_3759:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_3760:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x427580

	.globl mmalloca
	.type mmalloca, @function
mmalloca:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	add	rdi, 1
	add	rdi, 0x20
	sub	rdi, 1
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, qword ptr [rbp - 0x18]
	cmp	rdi, qword ptr [rbp - 0x10]
	jb	.label_3762
	mov	rdi, qword ptr [rbp - 0x18]
	call	malloc
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_3764
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	add	rax, 0x10
	sub	rax, 1
	and	rax, 0xffffffffffffffe0
	add	rax, 0x10
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rax, rcx
	mov	dl, al
	mov	rax, qword ptr [rbp - 0x28]
	mov	byte ptr [rax - 1], dl
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_3763
.label_3764:
	jmp	.label_3762
.label_3762:
	mov	qword ptr [rbp - 8], 0
.label_3763:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x427620

	.globl freea
	.type freea, @function
freea:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	and	rdi, 0xf
	cmp	rdi, 0
	je	.label_3765
	call	abort
.label_3765:
	mov	rax, qword ptr [rbp - 8]
	and	rax, 0x10
	cmp	rax, 0
	je	.label_3766
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 8]
	movzx	eax, byte ptr [rsi - 1]
	movsxd	rsi, eax
	sub	rcx, rsi
	add	rdx, rcx
	mov	qword ptr [rbp - 0x10], rdx
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
.label_3766:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x427690
	.globl mb_width_aux
	.type mb_width_aux, @function
mb_width_aux:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	call	wcwidth
	mov	dword ptr [rbp - 8], eax
	cmp	dword ptr [rbp - 8], 0
	jl	.label_3768
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_3767
.label_3768:
	mov	edi, dword ptr [rbp - 4]
	call	iswcntrl
	mov	edi, 1
	xor	ecx, ecx
	cmp	eax, 0
	cmovne	edi, ecx
	mov	dword ptr [rbp - 0xc], edi
.label_3767:
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4276e0

	.globl mb_copy
	.type mb_copy, @function
mb_copy:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	add	rdi, 0x18
	cmp	rsi, rdi
	jne	.label_3769
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x18
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 0x18
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 8]
	mov	rdi, rax
	mov	rsi, rcx
	call	memcpy
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x18
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	jmp	.label_3770
.label_3769:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
.label_3770:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	dl, byte ptr [rax + 0x10]
	mov	rax, qword ptr [rbp - 8]
	mov	sil, dl
	and	sil, 1
	mov	byte ptr [rax + 0x10], sil
	test	dl, 1
	jne	.label_3772
	jmp	.label_3771
.label_3772:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x14]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x14], ecx
.label_3771:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4277a0

	.globl is_basic
	.type is_basic, @function
is_basic:
	push	rbp
	mov	rbp, rsp
	mov	al, dil
	mov	byte ptr [rbp - 1], al
	movzx	edi, byte ptr [rbp - 1]
	sar	edi, 5
	movsxd	rcx, edi
	mov	edi,  dword ptr [dword ptr [+ (rcx * 4) + is_basic_table]]
	movzx	edx, byte ptr [rbp - 1]
	and	edx, 0x1f
	mov	ecx, edx
	shr	edi, cl
	and	edi, 1
	cmp	edi, 0
	setne	al
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4277e0

	.globl mbslen
	.type mbslen, @function
mbslen:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x10], rdi
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_3777
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0x58]
	mov	qword ptr [rbp - 0x18], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x48], rdi
	mov	byte ptr [rbp - 0x58], 0
	add	rcx, 4
	mov	rdi, rcx
	call	memset
	mov	byte ptr [rbp - 0x4c], 0
.label_3773:
	lea	rdi, [rbp - 0x58]
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x38], 1
	mov	byte ptr [rbp - 0x59], cl
	je	.label_3778
	cmp	dword ptr [rbp - 0x34], 0
	sete	al
	mov	byte ptr [rbp - 0x59], al
.label_3778:
	mov	al, byte ptr [rbp - 0x59]
	xor	al, 0xff
	test	al, 1
	jne	.label_3776
	jmp	.label_3775
.label_3776:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	byte ptr [rbp - 0x4c], 0
	jmp	.label_3773
.label_3775:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_3774
.label_3777:
	mov	rdi, qword ptr [rbp - 0x10]
	call	strlen
	mov	qword ptr [rbp - 8], rax
.label_3774:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x427960

	.globl fstat
	.type fstat, @function
fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat

