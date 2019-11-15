	.section	.text
	.align	32
	#Procedure 0x401b80

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x130
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	byte ptr [rbp - 0x15], 0
	mov	byte ptr [rbp - 0x16], 0
	mov	byte ptr [rbp - 0x17], 0
	mov	qword ptr [rbp - 0x28], 0
	mov	qword ptr [rbp - 0x30], 0
	mov	qword ptr [rbp - 0x38], 0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:.str_0
	call	setlocale
	movabs	rdi, OFFSET FLAT:.str.1
	movabs	rsi, OFFSET FLAT:.str.2
	mov	qword ptr [rbp - 0x50], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:.str.1
	mov	qword ptr [rbp - 0x58], rax
	call	textdomain
	movabs	rdi, OFFSET FLAT:close_stdout
	mov	qword ptr [rbp - 0x60], rax
	call	atexit
	mov	dword ptr [rbp - 0x14], 0
	cmp	dword ptr [rbp - 8], 1
	mov	dword ptr [rbp - 0x64], eax
	jle	.label_18
	mov	eax, 8
	mov	esi, eax
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 1
	movsxd	rdi, eax
	call	xnmalloc
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_27
.label_18:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x70], rcx
	jmp	.label_27
.label_27:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x20], rax
.label_51:
	movabs	rdx, OFFSET FLAT:short_options
	movabs	rcx, OFFSET FLAT:long_options
	lea	r8, [rbp - 0x3c]
	mov	dword ptr [rbp - 0x3c], 0xffffffff
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0x40], eax
	cmp	dword ptr [rbp - 0x40], -1
	jne	.label_11
	jmp	.label_42
.label_11:
	mov	eax, dword ptr [rbp - 0x40]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_43
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x38]
	jb	.label_47
	lea	rsi, [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 0x28]
	call	x2realloc
	mov	qword ptr [rbp - 0x28], rax
.label_47:
	mov	eax, dword ptr [rbp - 0x40]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rbp - 0x30], rsi
	mov	rsi, qword ptr [rbp - 0x28]
	mov	byte ptr [rsi + rdx], cl
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	byte ptr [rsi + rdx], 0
	jmp	.label_51
.label_43:
	mov	qword ptr [rbp - 0x30], 0
	mov	eax, dword ptr [rbp - 0x40]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	mov	dword ptr [rbp - 0x74], eax
	mov	dword ptr [rbp - 0x78], ecx
	je	.label_60
	jmp	.label_65
.label_65:
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0xffffff7e
	mov	dword ptr [rbp - 0x7c], eax
	je	.label_66
	jmp	.label_69
.label_69:
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 1
	mov	dword ptr [rbp - 0x80], eax
	je	.label_70
	jmp	.label_73
.label_73:
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0x84], eax
	je	.label_74
	jmp	.label_79
.label_79:
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0x46
	mov	dword ptr [rbp - 0x88], eax
	je	.label_31
	jmp	.label_85
.label_85:
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0x4a
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_87
	jmp	.label_91
.label_91:
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0x4e
	mov	dword ptr [rbp - 0x90], eax
	je	.label_93
	jmp	.label_97
.label_97:
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0x53
	mov	dword ptr [rbp - 0x94], eax
	je	.label_99
	jmp	.label_100
.label_100:
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x98], eax
	je	.label_101
	jmp	.label_104
.label_104:
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0x57
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_106
	jmp	.label_108
.label_108:
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0x61
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_109
	jmp	.label_9
.label_9:
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0x62
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_12
	jmp	.label_15
.label_15:
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0xa8], eax
	je	.label_17
	jmp	.label_22
.label_22:
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0x64
	mov	dword ptr [rbp - 0xac], eax
	je	.label_23
	jmp	.label_26
.label_26:
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0x65
	mov	dword ptr [rbp - 0xb0], eax
	je	.label_28
	jmp	.label_24
.label_24:
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0x66
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_31
	jmp	.label_34
.label_34:
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0x68
	mov	dword ptr [rbp - 0xb8], eax
	je	.label_36
	jmp	.label_39
.label_39:
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xbc], eax
	je	.label_40
	jmp	.label_105
.label_105:
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0x6c
	mov	dword ptr [rbp - 0xc0], eax
	je	.label_44
	jmp	.label_48
.label_48:
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xc4], eax
	je	.label_49
	jmp	.label_55
.label_55:
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0x6e
	mov	dword ptr [rbp - 0xc8], eax
	je	.label_52
	jmp	.label_53
.label_53:
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0x6f
	mov	dword ptr [rbp - 0xcc], eax
	je	.label_56
	jmp	.label_59
.label_59:
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0x72
	mov	dword ptr [rbp - 0xd0], eax
	je	.label_16
	jmp	.label_62
.label_62:
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0x73
	mov	dword ptr [rbp - 0xd4], eax
	je	.label_63
	jmp	.label_67
.label_67:
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xd8], eax
	je	.label_58
	jmp	.label_71
.label_71:
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0x76
	mov	dword ptr [rbp - 0xdc], eax
	je	.label_72
	jmp	.label_76
.label_76:
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0x77
	mov	dword ptr [rbp - 0xe0], eax
	je	.label_78
	jmp	.label_83
.label_83:
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0x80
	mov	dword ptr [rbp - 0xe4], eax
	je	.label_84
	jmp	.label_90
.label_90:
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0x81
	mov	dword ptr [rbp - 0xe8], eax
	je	.label_7
	jmp	.label_96
.label_70:
	cmp	qword ptr [word ptr [first_page_number]],  0
	jne	.label_98
	mov	rax,  qword ptr [word ptr [optarg]]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2b
	jne	.label_98
	mov	edi, 0xfffffffe
	mov	esi, 0x2b
	mov	rax,  qword ptr [word ptr [optarg]]
	add	rax, 1
	mov	rdx, rax
	call	first_last_page
	test	al, 1
	jne	.label_107
.label_98:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	ecx, dword ptr [rbp - 0x14]
	mov	edx, ecx
	add	edx, 1
	mov	dword ptr [rbp - 0x14], edx
	mov	ecx, ecx
	mov	esi, ecx
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rdi + rsi*8], rax
.label_107:
	jmp	.label_13
.label_7:
	cmp	qword ptr [word ptr [optarg]],  0
	jne	.label_38
	movabs	rdi, OFFSET FLAT:.str.3
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_38:
	xor	esi, esi
	mov	edi, dword ptr [rbp - 0x3c]
	mov	rdx,  qword ptr [word ptr [optarg]]
	call	first_last_page
	test	al, 1
	jne	.label_30
	movabs	rdi, OFFSET FLAT:.str.4
	call	gettext
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0xf0], rax
	call	quote
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0xf0]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_30:
	jmp	.label_68
.label_68:
	jmp	.label_13
.label_84:
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	parse_column_count
	mov	rdi, qword ptr [rbp - 0x28]
	call	free
	mov	qword ptr [rbp - 0x28], 0
	mov	qword ptr [rbp - 0x38], 0
	jmp	.label_13
.label_109:
	mov	byte ptr [byte ptr [print_across_flag]],  1
	mov	byte ptr [byte ptr [storing_columns]],  0
	jmp	.label_13
.label_12:
	mov	byte ptr [byte ptr [balance_columns]],  1
	jmp	.label_13
.label_17:
	mov	byte ptr [byte ptr [use_cntrl_prefix]],  1
	jmp	.label_13
.label_23:
	mov	byte ptr [byte ptr [double_space]],  1
	jmp	.label_13
.label_74:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [word ptr [date_format]],  rax
	jmp	.label_13
.label_28:
	cmp	qword ptr [word ptr [optarg]],  0
	je	.label_45
	mov	esi, 0x65
	movabs	rdx, OFFSET FLAT:input_tab_char
	movabs	rcx, OFFSET FLAT:chars_per_input_tab
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	getoptarg
.label_45:
	mov	byte ptr [byte ptr [untabify_input]],  1
	jmp	.label_13
.label_31:
	mov	byte ptr [byte ptr [use_form_feed]],  1
	jmp	.label_13
.label_36:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [word ptr [custom_header]],  rax
	jmp	.label_13
.label_40:
	cmp	qword ptr [word ptr [optarg]],  0
	je	.label_89
	mov	esi, 0x69
	movabs	rdx, OFFSET FLAT:output_tab_char
	movabs	rcx, OFFSET FLAT:chars_per_output_tab
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	getoptarg
.label_89:
	mov	byte ptr [byte ptr [tabify_output]],  1
	jmp	.label_13
.label_87:
	mov	byte ptr [byte ptr [join_lines]],  1
	jmp	.label_13
.label_44:
	movabs	rdi, OFFSET FLAT:.str.5
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0xf8], rax
	call	gettext
	mov	esi, 1
	movabs	rdx, OFFSET FLAT:lines_per_page
	mov	rdi, qword ptr [rbp - 0xf8]
	mov	rcx, rax
	call	getoptnum
	jmp	.label_13
.label_49:
	mov	byte ptr [byte ptr [parallel_files]],  1
	mov	byte ptr [byte ptr [storing_columns]],  0
	jmp	.label_13
.label_52:
	mov	byte ptr [byte ptr [numbered_lines]],  1
	cmp	qword ptr [word ptr [optarg]],  0
	je	.label_20
	mov	esi, 0x6e
	movabs	rdx, OFFSET FLAT:number_separator
	movabs	rcx, OFFSET FLAT:chars_per_number
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	getoptarg
.label_20:
	jmp	.label_13
.label_93:
	movabs	rdi, OFFSET FLAT:.str.6
	mov	byte ptr [byte ptr [skip_count]],  0
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x100], rax
	call	gettext
	mov	esi, 0x80000000
	movabs	rdx, OFFSET FLAT:start_line_num
	mov	rdi, qword ptr [rbp - 0x100]
	mov	rcx, rax
	call	getoptnum
	jmp	.label_13
.label_56:
	movabs	rdi, OFFSET FLAT:.str.7
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x108], rax
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:chars_per_margin
	mov	rdi, qword ptr [rbp - 0x108]
	mov	rcx, rax
	call	getoptnum
	jmp	.label_13
.label_16:
	mov	byte ptr [byte ptr [ignore_failed_opens]],  1
	jmp	.label_13
.label_63:
	mov	byte ptr [rbp - 0x15], 1
	mov	byte ptr [rbp - 0x17], 1
	test	byte ptr [byte ptr [use_col_separator]],  1
	jne	.label_8
	cmp	qword ptr [word ptr [optarg]],  0
	je	.label_8
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	separator_string
.label_8:
	jmp	.label_13
.label_99:
	movabs	rax, OFFSET FLAT:.str_0
	mov	byte ptr [rbp - 0x17], 0
	mov	qword ptr [word ptr [col_sep_string]],  rax
	mov	dword ptr [dword ptr [col_sep_length]],  0
	mov	byte ptr [byte ptr [use_col_separator]],  1
	cmp	qword ptr [word ptr [optarg]],  0
	je	.label_92
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	separator_string
.label_92:
	jmp	.label_13
.label_58:
	mov	byte ptr [byte ptr [extremities]],  0
	mov	byte ptr [byte ptr [keep_FF]],  1
	jmp	.label_13
.label_101:
	mov	byte ptr [byte ptr [extremities]],  0
	mov	byte ptr [byte ptr [keep_FF]],  0
	jmp	.label_13
.label_72:
	mov	byte ptr [byte ptr [use_esc_sequence]],  1
	jmp	.label_13
.label_78:
	movabs	rdi, OFFSET FLAT:.str.8
	mov	byte ptr [rbp - 0x15], 1
	mov	byte ptr [rbp - 0x16], 1
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x110], rax
	call	gettext
	mov	esi, 1
	lea	rdx, [rbp - 0x44]
	mov	rdi, qword ptr [rbp - 0x110]
	mov	rcx, rax
	call	getoptnum
	test	byte ptr [byte ptr [truncate_lines]],  1
	jne	.label_110
	mov	eax, dword ptr [rbp - 0x44]
	mov	dword ptr [dword ptr [chars_per_line]],  eax
.label_110:
	jmp	.label_13
.label_106:
	movabs	rdi, OFFSET FLAT:.str.9
	mov	byte ptr [rbp - 0x16], 0
	mov	byte ptr [byte ptr [truncate_lines]],  1
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x118], rax
	call	gettext
	mov	esi, 1
	movabs	rdx, OFFSET FLAT:chars_per_line
	mov	rdi, qword ptr [rbp - 0x118]
	mov	rcx, rax
	call	getoptnum
	jmp	.label_13
.label_66:
	xor	edi, edi
	call	usage
.label_60:
	movabs	rsi, OFFSET FLAT:.str.10
	movabs	rdx, OFFSET FLAT:.str.17
	movabs	r8, OFFSET FLAT:.str.12
	movabs	r9, OFFSET FLAT:.str.13
	xor	eax, eax
	mov	ecx, eax
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	r10,  qword ptr [word ptr [Version]]
	mov	qword ptr [rbp - 0x120], rcx
	mov	rcx, r10
	mov	qword ptr [rsp], 0
	mov	al, 0
	call	version_etc
	xor	edi, edi
	call	exit
.label_96:
	mov	edi, 1
	call	usage
.label_13:
	jmp	.label_51
.label_42:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_102
	mov	rdi, qword ptr [rbp - 0x28]
	call	parse_column_count
	mov	rdi, qword ptr [rbp - 0x28]
	call	free
.label_102:
	cmp	qword ptr [word ptr [date_format]],  0
	jne	.label_57
	movabs	rdi, OFFSET FLAT:.str.14
	call	getenv
	xor	ecx, ecx
	mov	dl, cl
	cmp	rax, 0
	mov	byte ptr [rbp - 0x121], dl
	je	.label_61
	mov	edi, 2
	call	hard_locale
	xor	al, 0xff
	mov	byte ptr [rbp - 0x121], al
.label_61:
	mov	al, byte ptr [rbp - 0x121]
	movabs	rcx, OFFSET FLAT:.str.16
	movabs	rdx, OFFSET FLAT:.str.15
	test	al, 1
	cmovne	rcx, rdx
	mov	qword ptr [word ptr [date_format]],  rcx
.label_57:
	movabs	rdi, OFFSET FLAT:.str
	call	getenv
	mov	rdi, rax
	call	tzalloc
	mov	qword ptr [word ptr [localtz]],  rax
	cmp	qword ptr [word ptr [first_page_number]],  0
	jne	.label_82
	mov	qword ptr [word ptr [first_page_number]],  1
.label_82:
	test	byte ptr [byte ptr [parallel_files]],  1
	je	.label_88
	test	byte ptr [byte ptr [explicit_columns]],  1
	je	.label_88
	movabs	rdi, OFFSET FLAT:.str.18
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_88:
	test	byte ptr [byte ptr [parallel_files]],  1
	je	.label_103
	test	byte ptr [byte ptr [print_across_flag]],  1
	je	.label_103
	movabs	rdi, OFFSET FLAT:.str.19
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_103:
	test	byte ptr [rbp - 0x15], 1
	je	.label_77
	test	byte ptr [rbp - 0x16], 1
	je	.label_14
	test	byte ptr [byte ptr [parallel_files]],  1
	jne	.label_19
	test	byte ptr [byte ptr [explicit_columns]],  1
	je	.label_21
.label_19:
	mov	byte ptr [byte ptr [truncate_lines]],  1
	test	byte ptr [rbp - 0x17], 1
	je	.label_25
	mov	byte ptr [byte ptr [use_col_separator]],  1
.label_25:
	jmp	.label_29
.label_21:
	mov	byte ptr [byte ptr [join_lines]],  1
.label_29:
	jmp	.label_32
.label_14:
	test	byte ptr [byte ptr [use_col_separator]],  1
	jne	.label_33
	test	byte ptr [rbp - 0x17], 1
	je	.label_35
	test	byte ptr [byte ptr [parallel_files]],  1
	jne	.label_37
	test	byte ptr [byte ptr [explicit_columns]],  1
	je	.label_35
.label_37:
	test	byte ptr [byte ptr [truncate_lines]],  1
	jne	.label_41
	mov	byte ptr [byte ptr [join_lines]],  1
	cmp	dword ptr [dword ptr [col_sep_length]],  0
	jle	.label_46
	mov	byte ptr [byte ptr [use_col_separator]],  1
.label_46:
	jmp	.label_50
.label_41:
	mov	byte ptr [byte ptr [use_col_separator]],  1
.label_50:
	jmp	.label_35
.label_35:
	jmp	.label_33
.label_33:
	jmp	.label_32
.label_32:
	jmp	.label_77
.label_77:
	jmp	.label_54
.label_54:
	mov	eax,  dword ptr [dword ptr [optind]]
	cmp	eax, dword ptr [rbp - 8]
	jge	.label_94
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	edx, dword ptr [rbp - 0x14]
	mov	esi, edx
	add	esi, 1
	mov	dword ptr [rbp - 0x14], esi
	mov	edx, edx
	mov	ecx, edx
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rdi + rcx*8], rax
	mov	eax,  dword ptr [dword ptr [optind]]
	add	eax, 1
	mov	dword ptr [dword ptr [optind]],  eax
	jmp	.label_54
.label_94:
	cmp	dword ptr [rbp - 0x14], 0
	jne	.label_80
	xor	edi, edi
	xor	eax, eax
	mov	esi, eax
	call	print_files
	jmp	.label_75
.label_80:
	test	byte ptr [byte ptr [parallel_files]],  1
	je	.label_10
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x20]
	call	print_files
	jmp	.label_81
.label_10:
	mov	dword ptr [rbp - 0x48], 0
.label_95:
	mov	eax, dword ptr [rbp - 0x48]
	cmp	eax, dword ptr [rbp - 0x14]
	jae	.label_86
	mov	edi, 1
	mov	eax, dword ptr [rbp - 0x48]
	mov	ecx, eax
	shl	rcx, 3
	add	rcx, qword ptr [rbp - 0x20]
	mov	rsi, rcx
	call	print_files
	mov	eax, dword ptr [rbp - 0x48]
	add	eax, 1
	mov	dword ptr [rbp - 0x48], eax
	jmp	.label_95
.label_86:
	jmp	.label_81
.label_81:
	jmp	.label_75
.label_75:
	call	cleanup
	test	byte ptr [byte ptr [have_read_stdin]],  1
	je	.label_64
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	rpl_fclose
	cmp	eax, -1
	jne	.label_64
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.20
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x128], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x128]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_64:
	xor	eax, eax
	mov	ecx, 1
	mov	dl,  byte ptr [byte ptr [failed_opens]]
	test	dl, 1
	cmovne	eax, ecx
	add	rsp, 0x130
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402840

	.globl first_last_page
	.type first_last_page, @function
first_last_page:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	al, sil
	lea	rsi, [rbp - 0x20]
	mov	ecx, 0xa
	lea	r8, [rbp - 0x28]
	movabs	r9, OFFSET FLAT:.str_0
	mov	dword ptr [rbp - 8], edi
	mov	byte ptr [rbp - 9], al
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x30], -1
	mov	rdi, qword ptr [rbp - 0x18]
	mov	edx, ecx
	mov	rcx, r8
	mov	r8, r9
	call	xstrtoumax
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	je	.label_111
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_111
	movabs	rcx, OFFSET FLAT:long_options
	mov	edi, dword ptr [rbp - 0x34]
	mov	esi, dword ptr [rbp - 8]
	mov	al, byte ptr [rbp - 9]
	mov	r8, qword ptr [rbp - 0x18]
	movsx	edx, al
	call	xstrtol_fatal
.label_111:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x18]
	je	.label_119
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_113
.label_119:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_112
.label_113:
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x3a
	jne	.label_114
	lea	rsi, [rbp - 0x20]
	mov	edx, 0xa
	lea	rcx, [rbp - 0x30]
	movabs	r8, OFFSET FLAT:.str_0
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x40]
	call	xstrtoumax
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	je	.label_118
	movabs	rcx, OFFSET FLAT:long_options
	mov	edi, dword ptr [rbp - 0x34]
	mov	esi, dword ptr [rbp - 8]
	mov	al, byte ptr [rbp - 9]
	mov	r8, qword ptr [rbp - 0x18]
	movsx	edx, al
	call	xstrtol_fatal
.label_118:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x20]
	je	.label_115
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_117
.label_115:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_112
.label_117:
	jmp	.label_114
.label_114:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	byte ptr [rax], 0
	je	.label_116
	mov	byte ptr [rbp - 1], 0
	jmp	.label_112
.label_116:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [word ptr [first_page_number]],  rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [word ptr [last_page_number]],  rax
	mov	byte ptr [rbp - 1], 1
.label_112:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4029b0

	.globl parse_column_count
	.type parse_column_count, @function
parse_column_count:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rax, OFFSET FLAT:.str.65
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, rax
	call	gettext
	mov	esi, 1
	movabs	rdx, OFFSET FLAT:columns
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, rax
	call	getoptnum
	mov	byte ptr [byte ptr [explicit_columns]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402a00

	.globl getoptarg
	.type getoptarg, @function
getoptarg:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	al, sil
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, qword ptr [rbp - 8]
	movsx	esi, byte ptr [rcx]
	sub	esi, 0x30
	cmp	esi, 9
	jbe	.label_120
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	mov	dl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax], dl
.label_120:
	mov	rax, qword ptr [rbp - 8]
	cmp	byte ptr [rax], 0
	je	.label_121
	xor	eax, eax
	mov	esi, eax
	mov	edx, 0xa
	lea	rcx, [rbp - 0x28]
	movabs	r8, OFFSET FLAT:.str_0
	mov	rdi, qword ptr [rbp - 8]
	call	xstrtol
	cmp	eax, 0
	jne	.label_123
	cmp	qword ptr [rbp - 0x28], 0
	jle	.label_123
	mov	eax, 0x7fffffff
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x28]
	jge	.label_122
.label_123:
	mov	eax, 0x7fffffff
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x28]
	jge	.label_125
	mov	eax, 0x4b
	mov	dword ptr [rbp - 0x2c], eax
	jmp	.label_124
.label_125:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x2c], ecx
.label_124:
	mov	eax, dword ptr [rbp - 0x2c]
	movabs	rdi, OFFSET FLAT:.str.67
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movsx	ecx, byte ptr [rbp - 9]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rax
	mov	dword ptr [rbp - 0x3c], ecx
	call	quote
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	ecx, dword ptr [rbp - 0x3c]
	mov	r8, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_122:
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
.label_121:
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402b20

	.globl getoptnum
	.type getoptnum, @function
getoptnum:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	eax, 0x7fffffff
	mov	r8d, eax
	movabs	r9, OFFSET FLAT:.str_0
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rdi, qword ptr [rbp - 8]
	movsxd	rsi, dword ptr [rbp - 0xc]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, r8
	mov	qword ptr [rbp - 0x30], rcx
	mov	rcx, r9
	mov	r8, qword ptr [rbp - 0x30]
	mov	r9d, eax
	call	xdectoimax
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	r9d, eax
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax], r9d
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402b90

	.globl separator_string
	.type separator_string, @function
separator_string:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	eax, 0x7fffffff
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rcx
	call	strlen
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_126
	call	integer_overflow
.label_126:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, eax
	mov	dword ptr [dword ptr [col_sep_length]],  ecx
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [col_sep_string]],  rax
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402bf0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_128
	jmp	.label_127
.label_127:
	movabs	rdi, OFFSET FLAT:.str.21
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_129
.label_128:
	movabs	rdi, OFFSET FLAT:.str.22
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.23
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x1c], eax
	call	emit_stdin_note
	call	emit_mandatory_arg_note
	movabs	rdi, OFFSET FLAT:.str.24
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.25
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.26
	mov	dword ptr [rbp - 0x24], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.27
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.28
	mov	dword ptr [rbp - 0x2c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.29
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.30
	mov	dword ptr [rbp - 0x34], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.31
	mov	dword ptr [rbp - 0x38], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.32
	mov	dword ptr [rbp - 0x3c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.33
	mov	dword ptr [rbp - 0x40], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.34
	mov	dword ptr [rbp - 0x44], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.35
	mov	dword ptr [rbp - 0x48], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.36
	mov	dword ptr [rbp - 0x4c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.37
	mov	dword ptr [rbp - 0x50], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.38
	mov	dword ptr [rbp - 0x54], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.10
	mov	dword ptr [rbp - 0x58], eax
	call	emit_ancillary_info
.label_129:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	32
	#Procedure 0x402eb0

	.globl print_files
	.type print_files, @function
print_files:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 4]
	call	init_parameters
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	init_fps
	test	al, 1
	jne	.label_135
	jmp	.label_131
.label_135:
	test	byte ptr [byte ptr [storing_columns]],  1
	je	.label_130
	call	init_store_cols
.label_130:
	cmp	qword ptr [word ptr [first_page_number]],  1
	jbe	.label_137
	mov	rdi,  qword ptr [word ptr [first_page_number]]
	call	skip_to_page
	test	al, 1
	jne	.label_133
	jmp	.label_131
.label_133:
	mov	rax,  qword ptr [word ptr [first_page_number]]
	mov	qword ptr [word ptr [page_number]],  rax
	jmp	.label_132
.label_137:
	mov	qword ptr [word ptr [page_number]],  1
.label_132:
	call	init_funcs
	mov	eax,  dword ptr [dword ptr [line_count]]
	mov	dword ptr [dword ptr [line_number]],  eax
.label_134:
	call	print_page
	test	al, 1
	jne	.label_136
	jmp	.label_131
.label_136:
	jmp	.label_134
.label_131:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402f70

	.globl cleanup
	.type cleanup, @function
cleanup:
	push	rbp
	mov	rbp, rsp
	mov	rdi,  qword ptr [word ptr [number_buff]]
	call	free
	mov	rdi,  qword ptr [word ptr [clump_buff]]
	call	free
	mov	rdi,  qword ptr [word ptr [column_vector]]
	call	free
	mov	rdi,  qword ptr [word ptr [line_vector]]
	call	free
	mov	rdi,  qword ptr [word ptr [end_vector]]
	call	free
	mov	rdi,  qword ptr [word ptr [buff]]
	call	free
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402fd0

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.81
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
	#Procedure 0x403000

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.82
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
	#Procedure 0x403030

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
.label_140:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_139
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_139:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_138
	jmp	.label_141
.label_138:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_140
.label_141:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_142
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_142:
	movabs	rdi, OFFSET FLAT:.str.91
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.17
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
	je	.label_143
	movabs	rsi, OFFSET FLAT:.str.93
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_143
	movabs	rdi, OFFSET FLAT:.str.94
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_143:
	movabs	rdi, OFFSET FLAT:.str.95
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.18_0
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.96
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:.str_0
	movabs	rsi, OFFSET FLAT:.str.97
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
	#Procedure 0x4031d0

	.globl integer_overflow
	.type integer_overflow, @function
integer_overflow:
	push	rbp
	mov	rbp, rsp
	movabs	rdi, OFFSET FLAT:.str.66
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403200

	.globl init_parameters
	.type init_parameters, @function
init_parameters:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], 0
	mov	edi,  dword ptr [dword ptr [lines_per_page]]
	sub	edi, 5
	sub	edi, 5
	mov	dword ptr [dword ptr [lines_per_body]],  edi
	cmp	dword ptr [dword ptr [lines_per_body]],  0
	jg	.label_272
	mov	byte ptr [byte ptr [extremities]],  0
	mov	byte ptr [byte ptr [keep_FF]],  1
.label_272:
	mov	al,  byte ptr [byte ptr [extremities]]
	and	al, 1
	movzx	ecx, al
	cmp	ecx, 0
	jne	.label_281
	mov	eax,  dword ptr [dword ptr [lines_per_page]]
	mov	dword ptr [dword ptr [lines_per_body]],  eax
.label_281:
	test	byte ptr [byte ptr [double_space]],  1
	je	.label_287
	mov	eax, 2
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	mov	dword ptr [rbp - 0x18], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x18]
	idiv	ecx
	mov	dword ptr [dword ptr [lines_per_body]],  eax
.label_287:
	cmp	dword ptr [rbp - 4], 0
	jne	.label_299
	mov	byte ptr [byte ptr [parallel_files]],  0
.label_299:
	test	byte ptr [byte ptr [parallel_files]],  1
	je	.label_302
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [dword ptr [columns]],  eax
.label_302:
	test	byte ptr [byte ptr [storing_columns]],  1
	je	.label_307
	mov	byte ptr [byte ptr [balance_columns]],  1
.label_307:
	cmp	dword ptr [dword ptr [columns]],  1
	jle	.label_312
	test	byte ptr [byte ptr [use_col_separator]],  1
	jne	.label_316
	test	byte ptr [byte ptr [join_lines]],  1
	je	.label_251
	mov	rax,  qword ptr [word ptr [line_separator]]
	mov	qword ptr [word ptr [col_sep_string]],  rax
	jmp	.label_323
.label_251:
	mov	rax,  qword ptr [word ptr [column_separator]]
	mov	qword ptr [word ptr [col_sep_string]],  rax
.label_323:
	mov	dword ptr [dword ptr [col_sep_length]],  1
	mov	byte ptr [byte ptr [use_col_separator]],  1
	jmp	.label_208
.label_316:
	test	byte ptr [byte ptr [join_lines]],  1
	jne	.label_336
	cmp	dword ptr [dword ptr [col_sep_length]],  1
	jne	.label_336
	mov	rax,  qword ptr [word ptr [col_sep_string]]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 9
	jne	.label_336
	mov	rax,  qword ptr [word ptr [column_separator]]
	mov	qword ptr [word ptr [col_sep_string]],  rax
.label_336:
	jmp	.label_208
.label_208:
	mov	byte ptr [byte ptr [truncate_lines]],  1
	mov	byte ptr [byte ptr [tabify_output]],  1
	jmp	.label_218
.label_312:
	mov	byte ptr [byte ptr [storing_columns]],  0
.label_218:
	test	byte ptr [byte ptr [join_lines]],  1
	je	.label_355
	mov	byte ptr [byte ptr [truncate_lines]],  0
.label_355:
	test	byte ptr [byte ptr [numbered_lines]],  1
	je	.label_172
	mov	dword ptr [rbp - 0xc], 8
	mov	eax,  dword ptr [dword ptr [start_line_num]]
	mov	dword ptr [dword ptr [line_count]],  eax
	movsx	eax,  byte ptr [byte ptr [number_separator]]
	cmp	eax, 9
	jne	.label_293
	mov	eax,  dword ptr [dword ptr [chars_per_number]]
	mov	ecx, dword ptr [rbp - 0xc]
	mov	edx,  dword ptr [dword ptr [chars_per_number]]
	mov	dword ptr [rbp - 0x1c], eax
	mov	eax, edx
	cdq	
	idiv	dword ptr [rbp - 0xc]
	sub	ecx, edx
	mov	edx, dword ptr [rbp - 0x1c]
	add	edx, ecx
	mov	dword ptr [dword ptr [number_width]],  edx
	jmp	.label_221
.label_293:
	mov	eax,  dword ptr [dword ptr [chars_per_number]]
	add	eax, 1
	mov	dword ptr [dword ptr [number_width]],  eax
.label_221:
	test	byte ptr [byte ptr [parallel_files]],  1
	je	.label_164
	mov	eax,  dword ptr [dword ptr [number_width]]
	mov	dword ptr [rbp - 8], eax
.label_164:
	jmp	.label_172
.label_172:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_173
	jmp	.label_179
.label_173:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_181
	jmp	.label_183
.label_181:
	mov	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	cl, al
	movsx	eax, cl
	cmp	eax, 0
	jge	.label_185
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	mov	cl, al
	movsx	eax, cl
	cmp	eax, 0
	jge	.label_187
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	mov	dl, cl
	movsx	ecx, dl
	mov	esi,  dword ptr [dword ptr [col_sep_length]]
	mov	dl, sil
	movsx	esi, dl
	cdq	
	idiv	esi
	cmp	ecx, eax
	jl	.label_193
	jmp	.label_203
.label_187:
	mov	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	cl, al
	movsx	eax, cl
	cmp	eax, -1
	jne	.label_204
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_193
	jmp	.label_203
.label_204:
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [col_sep_length]]
	mov	dl, cl
	movsx	ecx, dl
	cdq	
	idiv	ecx
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	mov	sil, cl
	movsx	ecx, sil
	cmp	eax, ecx
	jl	.label_193
	jmp	.label_203
.label_185:
	mov	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	cl, al
	movsx	eax, cl
	cmp	eax, 0
	jne	.label_304
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_193
	jmp	.label_203
.label_304:
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	mov	cl, al
	movsx	eax, cl
	cmp	eax, 0
	jge	.label_232
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	mov	dl, cl
	movsx	ecx, dl
	mov	esi,  dword ptr [dword ptr [col_sep_length]]
	mov	dl, sil
	movsx	esi, dl
	cdq	
	idiv	esi
	cmp	ecx, eax
	jl	.label_193
	jmp	.label_203
.label_232:
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [col_sep_length]]
	mov	dl, cl
	movsx	ecx, dl
	cdq	
	idiv	ecx
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	mov	sil, cl
	movsx	ecx, sil
	cmp	eax, ecx
	jl	.label_193
.label_203:
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	mov	cl, al
	movsx	eax, cl
	mov	edx,  dword ptr [dword ptr [col_sep_length]]
	mov	cl, dl
	movsx	edx, cl
	imul	eax, edx
	cmp	eax, -0x80
	jl	.label_193
	mov	eax, 0x7f
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	mov	dl, cl
	movsx	ecx, dl
	mov	esi,  dword ptr [dword ptr [col_sep_length]]
	mov	dl, sil
	movsx	esi, dl
	imul	ecx, esi
	cmp	eax, ecx
	jge	.label_267
.label_193:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	mov	dl, cl
	movsx	ecx, dl
	mov	esi,  dword ptr [dword ptr [col_sep_length]]
	mov	dl, sil
	movsx	esi, dl
	imul	ecx, esi
	mov	dl, cl
	movsx	ecx, dl
	mov	dword ptr [rbp - 0x10], ecx
	test	al, 1
	jne	.label_209
	jmp	.label_145
.label_267:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	mov	dl, al
	movsx	eax, dl
	mov	esi,  dword ptr [dword ptr [col_sep_length]]
	mov	dl, sil
	movsx	esi, dl
	imul	eax, esi
	mov	dl, al
	movsx	eax, dl
	mov	dword ptr [rbp - 0x10], eax
	test	cl, 1
	jne	.label_209
	jmp	.label_145
.label_183:
	cmp	dword ptr [dword ptr [col_sep_length]],  0
	jge	.label_291
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	cmp	eax, 0
	jge	.label_295
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	cmp	ecx, eax
	jl	.label_237
	jmp	.label_146
.label_295:
	cmp	dword ptr [dword ptr [col_sep_length]],  -1
	jne	.label_308
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_237
	jmp	.label_146
.label_308:
	mov	eax, 0x80000000
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cmp	eax, ecx
	jl	.label_237
	jmp	.label_146
.label_291:
	cmp	dword ptr [dword ptr [col_sep_length]],  0
	jne	.label_325
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_237
	jmp	.label_146
.label_325:
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	cmp	eax, 0
	jge	.label_333
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	cmp	ecx, eax
	jl	.label_237
	jmp	.label_146
.label_333:
	mov	eax, 0x7fffffff
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cmp	eax, ecx
	jl	.label_237
.label_146:
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	imul	eax,  dword ptr [dword ptr [col_sep_length]]
	cmp	eax, -0x80
	jl	.label_237
	mov	eax, 0x7f
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	imul	ecx,  dword ptr [dword ptr [col_sep_length]]
	cmp	eax, ecx
	jge	.label_353
.label_237:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	imul	ecx,  dword ptr [dword ptr [col_sep_length]]
	mov	dl, cl
	movsx	ecx, dl
	mov	dword ptr [rbp - 0x10], ecx
	test	al, 1
	jne	.label_209
	jmp	.label_145
.label_353:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	imul	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	dl, al
	movsx	eax, dl
	mov	dword ptr [rbp - 0x10], eax
	test	cl, 1
	jne	.label_209
	jmp	.label_145
.label_179:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_149
	jmp	.label_156
.label_149:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_158
	jmp	.label_167
.label_158:
	mov	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	jge	.label_170
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	jge	.label_175
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	mov	dx, cx
	movsx	ecx, dx
	mov	esi,  dword ptr [dword ptr [col_sep_length]]
	mov	dx, si
	movsx	esi, dx
	cdq	
	idiv	esi
	cmp	ecx, eax
	jl	.label_163
	jmp	.label_190
.label_175:
	mov	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, -1
	jne	.label_191
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_163
	jmp	.label_190
.label_191:
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [col_sep_length]]
	mov	dx, cx
	movsx	ecx, dx
	cdq	
	idiv	ecx
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	mov	si, cx
	movsx	ecx, si
	cmp	eax, ecx
	jl	.label_163
	jmp	.label_190
.label_170:
	mov	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	jne	.label_210
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_163
	jmp	.label_190
.label_210:
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	jge	.label_223
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	mov	dx, cx
	movsx	ecx, dx
	mov	esi,  dword ptr [dword ptr [col_sep_length]]
	mov	dx, si
	movsx	esi, dx
	cdq	
	idiv	esi
	cmp	ecx, eax
	jl	.label_163
	jmp	.label_190
.label_223:
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [col_sep_length]]
	mov	dx, cx
	movsx	ecx, dx
	cdq	
	idiv	ecx
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	mov	si, cx
	movsx	ecx, si
	cmp	eax, ecx
	jl	.label_163
.label_190:
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	mov	cx, ax
	movsx	eax, cx
	mov	edx,  dword ptr [dword ptr [col_sep_length]]
	mov	cx, dx
	movsx	edx, cx
	imul	eax, edx
	cmp	eax, 0xffff8000
	jl	.label_163
	mov	eax, 0x7fff
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	mov	dx, cx
	movsx	ecx, dx
	mov	esi,  dword ptr [dword ptr [col_sep_length]]
	mov	dx, si
	movsx	esi, dx
	imul	ecx, esi
	cmp	eax, ecx
	jge	.label_255
.label_163:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	mov	dx, cx
	movsx	ecx, dx
	mov	esi,  dword ptr [dword ptr [col_sep_length]]
	mov	dx, si
	movsx	esi, dx
	imul	ecx, esi
	mov	dx, cx
	movsx	ecx, dx
	mov	dword ptr [rbp - 0x10], ecx
	test	al, 1
	jne	.label_209
	jmp	.label_145
.label_255:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	mov	dx, ax
	movsx	eax, dx
	mov	esi,  dword ptr [dword ptr [col_sep_length]]
	mov	dx, si
	movsx	esi, dx
	imul	eax, esi
	mov	dx, ax
	movsx	eax, dx
	mov	dword ptr [rbp - 0x10], eax
	test	cl, 1
	jne	.label_209
	jmp	.label_145
.label_167:
	cmp	dword ptr [dword ptr [col_sep_length]],  0
	jge	.label_283
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	cmp	eax, 0
	jge	.label_285
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	cmp	ecx, eax
	jl	.label_264
	jmp	.label_171
.label_285:
	cmp	dword ptr [dword ptr [col_sep_length]],  -1
	jne	.label_301
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_264
	jmp	.label_171
.label_301:
	mov	eax, 0x80000000
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cmp	eax, ecx
	jl	.label_264
	jmp	.label_171
.label_283:
	cmp	dword ptr [dword ptr [col_sep_length]],  0
	jne	.label_314
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_264
	jmp	.label_171
.label_314:
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	cmp	eax, 0
	jge	.label_322
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	cmp	ecx, eax
	jl	.label_264
	jmp	.label_171
.label_322:
	mov	eax, 0x7fffffff
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cmp	eax, ecx
	jl	.label_264
.label_171:
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	imul	eax,  dword ptr [dword ptr [col_sep_length]]
	cmp	eax, 0xffff8000
	jl	.label_264
	mov	eax, 0x7fff
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	imul	ecx,  dword ptr [dword ptr [col_sep_length]]
	cmp	eax, ecx
	jge	.label_345
.label_264:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	imul	ecx,  dword ptr [dword ptr [col_sep_length]]
	mov	dx, cx
	movsx	ecx, dx
	mov	dword ptr [rbp - 0x10], ecx
	test	al, 1
	jne	.label_209
	jmp	.label_145
.label_345:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	imul	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	dx, ax
	movsx	eax, dx
	mov	dword ptr [rbp - 0x10], eax
	test	cl, 1
	jne	.label_209
	jmp	.label_145
.label_156:
	mov	al, 1
	test	al, 1
	jne	.label_362
	jmp	.label_365
.label_362:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_366
	jmp	.label_144
.label_366:
	cmp	dword ptr [dword ptr [col_sep_length]],  0
	jge	.label_147
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	cmp	eax, 0
	jge	.label_155
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	cmp	ecx, eax
	jl	.label_166
	jmp	.label_176
.label_155:
	cmp	dword ptr [dword ptr [col_sep_length]],  -1
	jne	.label_178
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_166
	jmp	.label_176
.label_178:
	mov	eax, 0x80000000
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cmp	eax, ecx
	jl	.label_166
	jmp	.label_176
.label_147:
	cmp	dword ptr [dword ptr [col_sep_length]],  0
	jne	.label_192
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_166
	jmp	.label_176
.label_192:
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	cmp	eax, 0
	jge	.label_201
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	cmp	ecx, eax
	jl	.label_166
	jmp	.label_176
.label_201:
	mov	eax, 0x7fffffff
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cmp	eax, ecx
	jl	.label_166
.label_176:
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	imul	eax,  dword ptr [dword ptr [col_sep_length]]
	cmp	eax, 0x80000000
	jl	.label_166
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	imul	ecx,  dword ptr [dword ptr [col_sep_length]]
	cmp	eax, ecx
	jge	.label_226
.label_166:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	imul	ecx,  dword ptr [dword ptr [col_sep_length]]
	mov	dword ptr [rbp - 0x10], ecx
	test	al, 1
	jne	.label_209
	jmp	.label_145
.label_226:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	imul	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	dword ptr [rbp - 0x10], eax
	test	cl, 1
	jne	.label_209
	jmp	.label_145
.label_144:
	cmp	dword ptr [dword ptr [col_sep_length]],  0
	jge	.label_233
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	cmp	eax, 0
	jge	.label_250
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	cmp	ecx, eax
	jl	.label_206
	jmp	.label_260
.label_250:
	cmp	dword ptr [dword ptr [col_sep_length]],  -1
	jne	.label_261
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_206
	jmp	.label_260
.label_261:
	mov	eax, 0x80000000
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cmp	eax, ecx
	jl	.label_206
	jmp	.label_260
.label_233:
	cmp	dword ptr [dword ptr [col_sep_length]],  0
	jne	.label_273
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_206
	jmp	.label_260
.label_273:
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	cmp	eax, 0
	jge	.label_278
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	cmp	ecx, eax
	jl	.label_206
	jmp	.label_260
.label_278:
	mov	eax, 0x7fffffff
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cmp	eax, ecx
	jl	.label_206
.label_260:
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	imul	eax,  dword ptr [dword ptr [col_sep_length]]
	cmp	eax, 0x80000000
	jl	.label_206
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	imul	ecx,  dword ptr [dword ptr [col_sep_length]]
	cmp	eax, ecx
	jge	.label_303
.label_206:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	imul	ecx,  dword ptr [dword ptr [col_sep_length]]
	mov	dword ptr [rbp - 0x10], ecx
	test	al, 1
	jne	.label_209
	jmp	.label_145
.label_303:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	imul	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	dword ptr [rbp - 0x10], eax
	test	cl, 1
	jne	.label_209
	jmp	.label_145
.label_365:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_328
	jmp	.label_332
.label_328:
	mov	al, 1
	test	al, 1
	jne	.label_313
	jmp	.label_329
.label_313:
	movsxd	rax,  dword ptr [dword ptr [col_sep_length]]
	cmp	rax, 0
	jge	.label_335
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	movsxd	rcx, eax
	cmp	rcx, 0
	jge	.label_339
	movabs	rax, 0x7fffffffffffffff
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	movsxd	rdx, ecx
	movsxd	rsi,  dword ptr [dword ptr [col_sep_length]]
	mov	qword ptr [rbp - 0x28], rdx
	cqo	
	idiv	rsi
	mov	rsi, qword ptr [rbp - 0x28]
	cmp	rsi, rax
	jl	.label_168
	jmp	.label_151
.label_339:
	movsxd	rax,  dword ptr [dword ptr [col_sep_length]]
	cmp	rax, -1
	jne	.label_354
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_168
	jmp	.label_151
.label_354:
	movabs	rax, 0x8000000000000000
	movsxd	rcx,  dword ptr [dword ptr [col_sep_length]]
	cqo	
	idiv	rcx
	mov	esi,  dword ptr [dword ptr [columns]]
	sub	esi, 1
	movsxd	rcx, esi
	cmp	rax, rcx
	jl	.label_168
	jmp	.label_151
.label_335:
	movsxd	rax,  dword ptr [dword ptr [col_sep_length]]
	cmp	rax, 0
	jne	.label_364
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_168
	jmp	.label_151
.label_364:
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	movsxd	rcx, eax
	cmp	rcx, 0
	jge	.label_153
	movabs	rax, 0x8000000000000000
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	movsxd	rdx, ecx
	movsxd	rsi,  dword ptr [dword ptr [col_sep_length]]
	mov	qword ptr [rbp - 0x30], rdx
	cqo	
	idiv	rsi
	mov	rsi, qword ptr [rbp - 0x30]
	cmp	rsi, rax
	jl	.label_168
	jmp	.label_151
.label_153:
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx,  dword ptr [dword ptr [col_sep_length]]
	cqo	
	idiv	rcx
	mov	esi,  dword ptr [dword ptr [columns]]
	sub	esi, 1
	movsxd	rcx, esi
	cmp	rax, rcx
	jl	.label_168
.label_151:
	movabs	rax, 0x8000000000000000
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	movsxd	rdx, ecx
	movsxd	rsi,  dword ptr [dword ptr [col_sep_length]]
	imul	rdx, rsi
	cmp	rdx, rax
	jl	.label_168
	movabs	rax, 0x7fffffffffffffff
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	movsxd	rdx, ecx
	movsxd	rsi,  dword ptr [dword ptr [col_sep_length]]
	imul	rdx, rsi
	cmp	rax, rdx
	jge	.label_202
.label_168:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	movsxd	rdx, ecx
	movsxd	rsi,  dword ptr [dword ptr [col_sep_length]]
	imul	rdx, rsi
	mov	ecx, edx
	mov	dword ptr [rbp - 0x10], ecx
	test	al, 1
	jne	.label_209
	jmp	.label_145
.label_202:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	movsxd	rdx, eax
	movsxd	rsi,  dword ptr [dword ptr [col_sep_length]]
	imul	rdx, rsi
	mov	eax, edx
	mov	dword ptr [rbp - 0x10], eax
	test	cl, 1
	jne	.label_209
	jmp	.label_145
.label_329:
	cmp	dword ptr [dword ptr [col_sep_length]],  0
	jge	.label_352
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	cmp	eax, 0
	jge	.label_238
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	cmp	ecx, eax
	jl	.label_242
	jmp	.label_246
.label_238:
	cmp	dword ptr [dword ptr [col_sep_length]],  -1
	jne	.label_247
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_242
	jmp	.label_246
.label_247:
	mov	eax, 0x80000000
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cmp	eax, ecx
	jl	.label_242
	jmp	.label_246
.label_352:
	cmp	dword ptr [dword ptr [col_sep_length]],  0
	jne	.label_311
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_242
	jmp	.label_246
.label_311:
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	cmp	eax, 0
	jge	.label_351
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	cmp	ecx, eax
	jl	.label_242
	jmp	.label_246
.label_351:
	mov	eax, 0x7fffffff
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cmp	eax, ecx
	jl	.label_242
.label_246:
	movabs	rax, 0x8000000000000000
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	imul	ecx,  dword ptr [dword ptr [col_sep_length]]
	movsxd	rdx, ecx
	cmp	rdx, rax
	jl	.label_242
	movabs	rax, 0x7fffffffffffffff
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	imul	ecx,  dword ptr [dword ptr [col_sep_length]]
	movsxd	rdx, ecx
	cmp	rax, rdx
	jge	.label_288
.label_242:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	movsxd	rdx, ecx
	movsxd	rsi,  dword ptr [dword ptr [col_sep_length]]
	imul	rdx, rsi
	mov	ecx, edx
	mov	dword ptr [rbp - 0x10], ecx
	test	al, 1
	jne	.label_209
	jmp	.label_145
.label_288:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	movsxd	rdx, eax
	movsxd	rsi,  dword ptr [dword ptr [col_sep_length]]
	imul	rdx, rsi
	mov	eax, edx
	mov	dword ptr [rbp - 0x10], eax
	test	cl, 1
	jne	.label_209
	jmp	.label_145
.label_332:
	mov	al, 1
	test	al, 1
	jne	.label_275
	jmp	.label_321
.label_275:
	movsxd	rax,  dword ptr [dword ptr [col_sep_length]]
	cmp	rax, 0
	jge	.label_324
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	movsxd	rcx, eax
	cmp	rcx, 0
	jge	.label_327
	movabs	rax, 0x7fffffffffffffff
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	movsxd	rdx, ecx
	movsxd	rsi,  dword ptr [dword ptr [col_sep_length]]
	mov	qword ptr [rbp - 0x38], rdx
	cqo	
	idiv	rsi
	mov	rsi, qword ptr [rbp - 0x38]
	cmp	rsi, rax
	jl	.label_169
	jmp	.label_212
.label_327:
	movsxd	rax,  dword ptr [dword ptr [col_sep_length]]
	cmp	rax, -1
	jne	.label_341
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_169
	jmp	.label_212
.label_341:
	movabs	rax, 0x8000000000000000
	movsxd	rcx,  dword ptr [dword ptr [col_sep_length]]
	cqo	
	idiv	rcx
	mov	esi,  dword ptr [dword ptr [columns]]
	sub	esi, 1
	movsxd	rcx, esi
	cmp	rax, rcx
	jl	.label_169
	jmp	.label_212
.label_324:
	movsxd	rax,  dword ptr [dword ptr [col_sep_length]]
	cmp	rax, 0
	jne	.label_357
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_169
	jmp	.label_212
.label_357:
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	movsxd	rcx, eax
	cmp	rcx, 0
	jge	.label_361
	movabs	rax, 0x8000000000000000
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	movsxd	rdx, ecx
	movsxd	rsi,  dword ptr [dword ptr [col_sep_length]]
	mov	qword ptr [rbp - 0x40], rdx
	cqo	
	idiv	rsi
	mov	rsi, qword ptr [rbp - 0x40]
	cmp	rsi, rax
	jl	.label_169
	jmp	.label_212
.label_361:
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx,  dword ptr [dword ptr [col_sep_length]]
	cqo	
	idiv	rcx
	mov	esi,  dword ptr [dword ptr [columns]]
	sub	esi, 1
	movsxd	rcx, esi
	cmp	rax, rcx
	jl	.label_169
.label_212:
	movabs	rax, 0x8000000000000000
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	movsxd	rdx, ecx
	movsxd	rsi,  dword ptr [dword ptr [col_sep_length]]
	imul	rdx, rsi
	cmp	rdx, rax
	jl	.label_169
	movabs	rax, 0x7fffffffffffffff
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	movsxd	rdx, ecx
	movsxd	rsi,  dword ptr [dword ptr [col_sep_length]]
	imul	rdx, rsi
	cmp	rax, rdx
	jge	.label_189
.label_169:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	movsxd	rdx, ecx
	movsxd	rsi,  dword ptr [dword ptr [col_sep_length]]
	imul	rdx, rsi
	mov	ecx, edx
	mov	dword ptr [rbp - 0x10], ecx
	test	al, 1
	jne	.label_209
	jmp	.label_145
.label_189:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	movsxd	rdx, eax
	movsxd	rsi,  dword ptr [dword ptr [col_sep_length]]
	imul	rdx, rsi
	mov	eax, edx
	mov	dword ptr [rbp - 0x10], eax
	test	cl, 1
	jne	.label_209
	jmp	.label_145
.label_321:
	cmp	dword ptr [dword ptr [col_sep_length]],  0
	jge	.label_284
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	cmp	eax, 0
	jge	.label_225
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	cmp	ecx, eax
	jl	.label_180
	jmp	.label_235
.label_225:
	cmp	dword ptr [dword ptr [col_sep_length]],  -1
	jne	.label_239
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_180
	jmp	.label_235
.label_239:
	mov	eax, 0x80000000
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cmp	eax, ecx
	jl	.label_180
	jmp	.label_235
.label_284:
	cmp	dword ptr [dword ptr [col_sep_length]],  0
	jne	.label_249
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_180
	jmp	.label_235
.label_249:
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	cmp	eax, 0
	jge	.label_256
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	cmp	ecx, eax
	jl	.label_180
	jmp	.label_235
.label_256:
	mov	eax, 0x7fffffff
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cmp	eax, ecx
	jl	.label_180
.label_235:
	movabs	rax, 0x8000000000000000
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	imul	ecx,  dword ptr [dword ptr [col_sep_length]]
	movsxd	rdx, ecx
	cmp	rdx, rax
	jl	.label_180
	movabs	rax, 0x7fffffffffffffff
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	imul	ecx,  dword ptr [dword ptr [col_sep_length]]
	movsxd	rdx, ecx
	cmp	rax, rdx
	jge	.label_230
.label_180:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	movsxd	rdx, ecx
	movsxd	rsi,  dword ptr [dword ptr [col_sep_length]]
	imul	rdx, rsi
	mov	ecx, edx
	mov	dword ptr [rbp - 0x10], ecx
	test	al, 1
	jne	.label_209
	jmp	.label_145
.label_230:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	movsxd	rdx, eax
	movsxd	rsi,  dword ptr [dword ptr [col_sep_length]]
	imul	rdx, rsi
	mov	eax, edx
	mov	dword ptr [rbp - 0x10], eax
	test	cl, 1
	jne	.label_209
	jmp	.label_145
.label_209:
	mov	dword ptr [rbp - 0x10], 0x7fffffff
.label_145:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_309
	jmp	.label_207
.label_309:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_216
	jmp	.label_315
.label_216:
	mov	al, 1
	test	al, 1
	jne	.label_317
	jmp	.label_318
.label_317:
	mov	eax, dword ptr [rbp - 0x10]
	mov	cl, al
	movsx	eax, cl
	cmp	eax, 0
	jge	.label_320
	mov	eax, dword ptr [rbp - 0x10]
	mov	cl, al
	movsx	eax, cl
	add	eax, 0x7fffffff
	mov	edx,  dword ptr [dword ptr [chars_per_line]]
	sub	edx, dword ptr [rbp - 8]
	mov	cl, dl
	movsx	edx, cl
	cmp	eax, edx
	jl	.label_252
	jmp	.label_334
.label_320:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	mov	cl, al
	movsx	eax, cl
	mov	edx, dword ptr [rbp - 0x10]
	mov	cl, dl
	movsx	edx, cl
	add	edx, 0x80000000
	cmp	eax, edx
	jl	.label_252
	jmp	.label_334
.label_318:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	mov	cl, al
	movsx	eax, cl
	cmp	eax, 0
	jge	.label_340
	mov	al, 1
	test	al, 1
	jne	.label_252
	jmp	.label_334
.label_340:
	mov	eax, dword ptr [rbp - 0x10]
	mov	cl, al
	movsx	eax, cl
	cmp	eax, 0
	jge	.label_348
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	mov	cl, al
	movsx	eax, cl
	mov	edx, dword ptr [rbp - 0x10]
	mov	cl, dl
	movsx	edx, cl
	sub	eax, edx
	mov	edx,  dword ptr [dword ptr [chars_per_line]]
	sub	edx, dword ptr [rbp - 8]
	mov	cl, dl
	movsx	edx, cl
	cmp	eax, edx
	jle	.label_252
	jmp	.label_334
.label_348:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	mov	cl, al
	movsx	eax, cl
	mov	edx, dword ptr [rbp - 0x10]
	mov	cl, dl
	movsx	edx, cl
	cmp	eax, edx
	jl	.label_252
.label_334:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	mov	cl, al
	movsx	eax, cl
	mov	edx, dword ptr [rbp - 0x10]
	mov	cl, dl
	movsx	edx, cl
	sub	eax, edx
	cmp	eax, -0x80
	jl	.label_252
	mov	eax, 0x7f
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	mov	dl, cl
	movsx	ecx, dl
	mov	esi, dword ptr [rbp - 0x10]
	mov	dl, sil
	movsx	esi, dl
	sub	ecx, esi
	cmp	eax, ecx
	jge	.label_165
.label_252:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	mov	dl, cl
	movsx	ecx, dl
	mov	esi, dword ptr [rbp - 0x10]
	mov	dl, sil
	movsx	esi, dl
	sub	ecx, esi
	mov	dl, cl
	movsx	ecx, dl
	mov	dword ptr [rbp - 0x14], ecx
	test	al, 1
	jne	.label_182
	jmp	.label_150
.label_165:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	mov	dl, al
	movsx	eax, dl
	mov	esi, dword ptr [rbp - 0x10]
	mov	dl, sil
	movsx	esi, dl
	sub	eax, esi
	mov	dl, al
	movsx	eax, dl
	mov	dword ptr [rbp - 0x14], eax
	test	cl, 1
	jne	.label_182
	jmp	.label_150
.label_315:
	mov	al, 1
	test	al, 1
	jne	.label_344
	jmp	.label_195
.label_344:
	cmp	dword ptr [rbp - 0x10], 0
	jge	.label_197
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	cmp	eax, ecx
	jl	.label_200
	jmp	.label_205
.label_197:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 0x10]
	add	ecx, 0x80000000
	cmp	eax, ecx
	jl	.label_200
	jmp	.label_205
.label_195:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	cmp	eax, 0
	jge	.label_211
	mov	al, 1
	test	al, 1
	jne	.label_200
	jmp	.label_205
.label_211:
	cmp	dword ptr [rbp - 0x10], 0
	jge	.label_222
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0x10]
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	cmp	eax, ecx
	jle	.label_200
	jmp	.label_205
.label_222:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	cmp	eax, dword ptr [rbp - 0x10]
	jl	.label_200
.label_205:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0x10]
	cmp	eax, -0x80
	jl	.label_200
	mov	eax, 0x7f
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	sub	ecx, dword ptr [rbp - 0x10]
	cmp	eax, ecx
	jge	.label_363
.label_200:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	sub	ecx, dword ptr [rbp - 0x10]
	mov	dl, cl
	movsx	ecx, dl
	mov	dword ptr [rbp - 0x14], ecx
	test	al, 1
	jne	.label_182
	jmp	.label_150
.label_363:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0x10]
	mov	dl, al
	movsx	eax, dl
	mov	dword ptr [rbp - 0x14], eax
	test	cl, 1
	jne	.label_182
	jmp	.label_150
.label_207:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_258
	jmp	.label_262
.label_258:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_265
	jmp	.label_343
.label_265:
	mov	al, 1
	test	al, 1
	jne	.label_268
	jmp	.label_269
.label_268:
	mov	eax, dword ptr [rbp - 0x10]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	jge	.label_271
	mov	eax, dword ptr [rbp - 0x10]
	mov	cx, ax
	movsx	eax, cx
	add	eax, 0x7fffffff
	mov	edx,  dword ptr [dword ptr [chars_per_line]]
	sub	edx, dword ptr [rbp - 8]
	mov	cx, dx
	movsx	edx, cx
	cmp	eax, edx
	jl	.label_259
	jmp	.label_277
.label_271:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	mov	cx, ax
	movsx	eax, cx
	mov	edx, dword ptr [rbp - 0x10]
	mov	cx, dx
	movsx	edx, cx
	add	edx, 0x80000000
	cmp	eax, edx
	jl	.label_259
	jmp	.label_277
.label_269:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	jge	.label_286
	mov	al, 1
	test	al, 1
	jne	.label_259
	jmp	.label_277
.label_286:
	mov	eax, dword ptr [rbp - 0x10]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	jge	.label_296
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	mov	cx, ax
	movsx	eax, cx
	mov	edx, dword ptr [rbp - 0x10]
	mov	cx, dx
	movsx	edx, cx
	sub	eax, edx
	mov	edx,  dword ptr [dword ptr [chars_per_line]]
	sub	edx, dword ptr [rbp - 8]
	mov	cx, dx
	movsx	edx, cx
	cmp	eax, edx
	jle	.label_259
	jmp	.label_277
.label_296:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	mov	cx, ax
	movsx	eax, cx
	mov	edx, dword ptr [rbp - 0x10]
	mov	cx, dx
	movsx	edx, cx
	cmp	eax, edx
	jl	.label_259
.label_277:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	mov	cx, ax
	movsx	eax, cx
	mov	edx, dword ptr [rbp - 0x10]
	mov	cx, dx
	movsx	edx, cx
	sub	eax, edx
	cmp	eax, 0xffff8000
	jl	.label_259
	mov	eax, 0x7fff
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	mov	dx, cx
	movsx	ecx, dx
	mov	esi, dword ptr [rbp - 0x10]
	mov	dx, si
	movsx	esi, dx
	sub	ecx, esi
	cmp	eax, ecx
	jge	.label_305
.label_259:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	mov	dx, cx
	movsx	ecx, dx
	mov	esi, dword ptr [rbp - 0x10]
	mov	dx, si
	movsx	esi, dx
	sub	ecx, esi
	mov	dx, cx
	movsx	ecx, dx
	mov	dword ptr [rbp - 0x14], ecx
	test	al, 1
	jne	.label_182
	jmp	.label_150
.label_305:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	mov	dx, ax
	movsx	eax, dx
	mov	esi, dword ptr [rbp - 0x10]
	mov	dx, si
	movsx	esi, dx
	sub	eax, esi
	mov	dx, ax
	movsx	eax, dx
	mov	dword ptr [rbp - 0x14], eax
	test	cl, 1
	jne	.label_182
	jmp	.label_150
.label_343:
	mov	al, 1
	test	al, 1
	jne	.label_356
	jmp	.label_358
.label_356:
	cmp	dword ptr [rbp - 0x10], 0
	jge	.label_359
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	cmp	eax, ecx
	jl	.label_157
	jmp	.label_148
.label_359:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 0x10]
	add	ecx, 0x80000000
	cmp	eax, ecx
	jl	.label_157
	jmp	.label_148
.label_358:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	cmp	eax, 0
	jge	.label_331
	mov	al, 1
	test	al, 1
	jne	.label_157
	jmp	.label_148
.label_331:
	cmp	dword ptr [rbp - 0x10], 0
	jge	.label_214
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0x10]
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	cmp	eax, ecx
	jle	.label_157
	jmp	.label_148
.label_214:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	cmp	eax, dword ptr [rbp - 0x10]
	jl	.label_157
.label_148:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0x10]
	cmp	eax, 0xffff8000
	jl	.label_157
	mov	eax, 0x7fff
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	sub	ecx, dword ptr [rbp - 0x10]
	cmp	eax, ecx
	jge	.label_188
.label_157:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	sub	ecx, dword ptr [rbp - 0x10]
	mov	dx, cx
	movsx	ecx, dx
	mov	dword ptr [rbp - 0x14], ecx
	test	al, 1
	jne	.label_182
	jmp	.label_150
.label_188:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0x10]
	mov	dx, ax
	movsx	eax, dx
	mov	dword ptr [rbp - 0x14], eax
	test	cl, 1
	jne	.label_182
	jmp	.label_150
.label_262:
	mov	al, 1
	test	al, 1
	jne	.label_244
	jmp	.label_215
.label_244:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_217
	jmp	.label_219
.label_217:
	mov	al, 1
	test	al, 1
	jne	.label_220
	jmp	.label_289
.label_220:
	cmp	dword ptr [rbp - 0x10], 0
	jge	.label_224
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	cmp	eax, ecx
	jl	.label_236
	jmp	.label_240
.label_224:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 0x10]
	add	ecx, 0x80000000
	cmp	eax, ecx
	jl	.label_236
	jmp	.label_240
.label_289:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	cmp	eax, 0
	jge	.label_177
	mov	al, 1
	test	al, 1
	jne	.label_236
	jmp	.label_240
.label_177:
	cmp	dword ptr [rbp - 0x10], 0
	jge	.label_360
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0x10]
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	cmp	eax, ecx
	jle	.label_236
	jmp	.label_240
.label_360:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	cmp	eax, dword ptr [rbp - 0x10]
	jl	.label_236
.label_240:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0x10]
	cmp	eax, 0x80000000
	jl	.label_236
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	sub	ecx, dword ptr [rbp - 0x10]
	cmp	eax, ecx
	jge	.label_266
.label_236:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	sub	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x14], ecx
	test	al, 1
	jne	.label_182
	jmp	.label_150
.label_266:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x14], eax
	test	cl, 1
	jne	.label_182
	jmp	.label_150
.label_219:
	mov	al, 1
	test	al, 1
	jne	.label_279
	jmp	.label_280
.label_279:
	cmp	dword ptr [rbp - 0x10], 0
	jge	.label_282
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	cmp	eax, ecx
	jl	.label_184
	jmp	.label_297
.label_282:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 0x10]
	add	ecx, 0x80000000
	cmp	eax, ecx
	jl	.label_184
	jmp	.label_297
.label_280:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	cmp	eax, 0
	jge	.label_337
	mov	al, 1
	test	al, 1
	jne	.label_184
	jmp	.label_297
.label_337:
	cmp	dword ptr [rbp - 0x10], 0
	jge	.label_306
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0x10]
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	cmp	eax, ecx
	jle	.label_184
	jmp	.label_297
.label_306:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	cmp	eax, dword ptr [rbp - 0x10]
	jl	.label_184
.label_297:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0x10]
	cmp	eax, 0x80000000
	jl	.label_184
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	sub	ecx, dword ptr [rbp - 0x10]
	cmp	eax, ecx
	jge	.label_326
.label_184:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	sub	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x14], ecx
	test	al, 1
	jne	.label_182
	jmp	.label_150
.label_326:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x14], eax
	test	cl, 1
	jne	.label_182
	jmp	.label_150
.label_215:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_342
	jmp	.label_346
.label_342:
	mov	al, 1
	test	al, 1
	jne	.label_347
	jmp	.label_349
.label_347:
	mov	al, 1
	test	al, 1
	jne	.label_350
	jmp	.label_241
.label_350:
	movsxd	rax, dword ptr [rbp - 0x10]
	cmp	rax, 0
	jge	.label_245
	movsxd	rax, dword ptr [rbp - 0x10]
	movabs	rcx, 0x7fffffffffffffff
	add	rax, rcx
	mov	edx,  dword ptr [dword ptr [chars_per_line]]
	sub	edx, dword ptr [rbp - 8]
	movsxd	rcx, edx
	cmp	rax, rcx
	jl	.label_154
	jmp	.label_159
.label_245:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	movsxd	rcx, eax
	movsxd	rdx, dword ptr [rbp - 0x10]
	movabs	rsi, 0x8000000000000000
	add	rdx, rsi
	cmp	rcx, rdx
	jl	.label_154
	jmp	.label_159
.label_241:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	movsxd	rcx, eax
	cmp	rcx, 0
	jge	.label_367
	mov	al, 1
	test	al, 1
	jne	.label_154
	jmp	.label_159
.label_367:
	movsxd	rax, dword ptr [rbp - 0x10]
	cmp	rax, 0
	jge	.label_162
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	movsxd	rcx, eax
	movsxd	rdx, dword ptr [rbp - 0x10]
	sub	rcx, rdx
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	movsxd	rdx, eax
	cmp	rcx, rdx
	jle	.label_154
	jmp	.label_159
.label_162:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	movsxd	rcx, eax
	movsxd	rdx, dword ptr [rbp - 0x10]
	cmp	rcx, rdx
	jl	.label_154
.label_159:
	movabs	rax, 0x8000000000000000
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	movsxd	rdx, ecx
	movsxd	rsi, dword ptr [rbp - 0x10]
	sub	rdx, rsi
	cmp	rdx, rax
	jl	.label_154
	movabs	rax, 0x7fffffffffffffff
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	movsxd	rdx, ecx
	movsxd	rsi, dword ptr [rbp - 0x10]
	sub	rdx, rsi
	cmp	rax, rdx
	jge	.label_196
.label_154:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	movsxd	rdx, ecx
	movsxd	rsi, dword ptr [rbp - 0x10]
	sub	rdx, rsi
	mov	ecx, edx
	mov	dword ptr [rbp - 0x14], ecx
	test	al, 1
	jne	.label_182
	jmp	.label_150
.label_196:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	movsxd	rdx, eax
	movsxd	rsi, dword ptr [rbp - 0x10]
	sub	rdx, rsi
	mov	eax, edx
	mov	dword ptr [rbp - 0x14], eax
	test	cl, 1
	jne	.label_182
	jmp	.label_150
.label_349:
	mov	al, 1
	test	al, 1
	jne	.label_300
	jmp	.label_227
.label_300:
	cmp	dword ptr [rbp - 0x10], 0
	jge	.label_228
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	cmp	eax, ecx
	jl	.label_229
	jmp	.label_234
.label_228:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 0x10]
	add	ecx, 0x80000000
	cmp	eax, ecx
	jl	.label_229
	jmp	.label_234
.label_227:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	cmp	eax, 0
	jge	.label_199
	mov	al, 1
	test	al, 1
	jne	.label_229
	jmp	.label_234
.label_199:
	cmp	dword ptr [rbp - 0x10], 0
	jge	.label_248
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0x10]
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	cmp	eax, ecx
	jle	.label_229
	jmp	.label_234
.label_248:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	cmp	eax, dword ptr [rbp - 0x10]
	jl	.label_229
.label_234:
	movabs	rax, 0x8000000000000000
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	sub	ecx, dword ptr [rbp - 0x10]
	movsxd	rdx, ecx
	cmp	rdx, rax
	jl	.label_229
	movabs	rax, 0x7fffffffffffffff
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	sub	ecx, dword ptr [rbp - 0x10]
	movsxd	rdx, ecx
	cmp	rax, rdx
	jge	.label_270
.label_229:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	movsxd	rdx, ecx
	movsxd	rsi, dword ptr [rbp - 0x10]
	sub	rdx, rsi
	mov	ecx, edx
	mov	dword ptr [rbp - 0x14], ecx
	test	al, 1
	jne	.label_182
	jmp	.label_150
.label_270:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	movsxd	rdx, eax
	movsxd	rsi, dword ptr [rbp - 0x10]
	sub	rdx, rsi
	mov	eax, edx
	mov	dword ptr [rbp - 0x14], eax
	test	cl, 1
	jne	.label_182
	jmp	.label_150
.label_346:
	mov	al, 1
	test	al, 1
	jne	.label_298
	jmp	.label_290
.label_298:
	mov	al, 1
	test	al, 1
	jne	.label_292
	jmp	.label_294
.label_292:
	movsxd	rax, dword ptr [rbp - 0x10]
	cmp	rax, 0
	jge	.label_338
	movsxd	rax, dword ptr [rbp - 0x10]
	movabs	rcx, 0x7fffffffffffffff
	add	rax, rcx
	mov	edx,  dword ptr [dword ptr [chars_per_line]]
	sub	edx, dword ptr [rbp - 8]
	movsxd	rcx, edx
	cmp	rax, rcx
	jl	.label_310
	jmp	.label_198
.label_338:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	movsxd	rcx, eax
	movsxd	rdx, dword ptr [rbp - 0x10]
	movabs	rsi, 0x8000000000000000
	add	rdx, rsi
	cmp	rcx, rdx
	jl	.label_310
	jmp	.label_198
.label_294:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	movsxd	rcx, eax
	cmp	rcx, 0
	jge	.label_319
	mov	al, 1
	test	al, 1
	jne	.label_310
	jmp	.label_198
.label_319:
	movsxd	rax, dword ptr [rbp - 0x10]
	cmp	rax, 0
	jge	.label_330
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	movsxd	rcx, eax
	movsxd	rdx, dword ptr [rbp - 0x10]
	sub	rcx, rdx
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	movsxd	rdx, eax
	cmp	rcx, rdx
	jle	.label_310
	jmp	.label_198
.label_330:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	movsxd	rcx, eax
	movsxd	rdx, dword ptr [rbp - 0x10]
	cmp	rcx, rdx
	jl	.label_310
.label_198:
	movabs	rax, 0x8000000000000000
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	movsxd	rdx, ecx
	movsxd	rsi, dword ptr [rbp - 0x10]
	sub	rdx, rsi
	cmp	rdx, rax
	jl	.label_310
	movabs	rax, 0x7fffffffffffffff
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	movsxd	rdx, ecx
	movsxd	rsi, dword ptr [rbp - 0x10]
	sub	rdx, rsi
	cmp	rax, rdx
	jge	.label_231
.label_310:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	movsxd	rdx, ecx
	movsxd	rsi, dword ptr [rbp - 0x10]
	sub	rdx, rsi
	mov	ecx, edx
	mov	dword ptr [rbp - 0x14], ecx
	test	al, 1
	jne	.label_182
	jmp	.label_150
.label_231:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	movsxd	rdx, eax
	movsxd	rsi, dword ptr [rbp - 0x10]
	sub	rdx, rsi
	mov	eax, edx
	mov	dword ptr [rbp - 0x14], eax
	test	cl, 1
	jne	.label_182
	jmp	.label_150
.label_290:
	mov	al, 1
	test	al, 1
	jne	.label_152
	jmp	.label_194
.label_152:
	cmp	dword ptr [rbp - 0x10], 0
	jge	.label_161
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	cmp	eax, ecx
	jl	.label_160
	jmp	.label_174
.label_161:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 0x10]
	add	ecx, 0x80000000
	cmp	eax, ecx
	jl	.label_160
	jmp	.label_174
.label_194:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	cmp	eax, 0
	jge	.label_186
	mov	al, 1
	test	al, 1
	jne	.label_160
	jmp	.label_174
.label_186:
	cmp	dword ptr [rbp - 0x10], 0
	jge	.label_254
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0x10]
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	cmp	eax, ecx
	jle	.label_160
	jmp	.label_174
.label_254:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	cmp	eax, dword ptr [rbp - 0x10]
	jl	.label_160
.label_174:
	movabs	rax, 0x8000000000000000
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	sub	ecx, dword ptr [rbp - 0x10]
	movsxd	rdx, ecx
	cmp	rdx, rax
	jl	.label_160
	movabs	rax, 0x7fffffffffffffff
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	sub	ecx, dword ptr [rbp - 0x10]
	movsxd	rdx, ecx
	cmp	rax, rdx
	jge	.label_213
.label_160:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	movsxd	rdx, ecx
	movsxd	rsi, dword ptr [rbp - 0x10]
	sub	rdx, rsi
	mov	ecx, edx
	mov	dword ptr [rbp - 0x14], ecx
	test	al, 1
	jne	.label_182
	jmp	.label_150
.label_213:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	movsxd	rdx, eax
	movsxd	rsi, dword ptr [rbp - 0x10]
	sub	rdx, rsi
	mov	eax, edx
	mov	dword ptr [rbp - 0x14], eax
	test	cl, 1
	jne	.label_182
	jmp	.label_150
.label_182:
	mov	dword ptr [rbp - 0x14], 0
.label_150:
	mov	eax, dword ptr [rbp - 0x14]
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	mov	dword ptr [dword ptr [chars_per_column]],  eax
	cmp	dword ptr [dword ptr [chars_per_column]],  1
	jge	.label_243
	movabs	rdi, OFFSET FLAT:.str.68
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_243:
	test	byte ptr [byte ptr [numbered_lines]],  1
	je	.label_253
	mov	rdi,  qword ptr [word ptr [number_buff]]
	call	free
	movsxd	rdi,  dword ptr [dword ptr [chars_per_number]]
	cmp	rdi, 0xb
	jbe	.label_257
	movsxd	rax,  dword ptr [dword ptr [chars_per_number]]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_263
.label_257:
	mov	eax, 0xb
	mov	ecx, eax
	mov	qword ptr [rbp - 0x48], rcx
	jmp	.label_263
.label_263:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	rdi, rax
	call	xmalloc
	mov	qword ptr [word ptr [number_buff]],  rax
.label_253:
	mov	rdi,  qword ptr [word ptr [clump_buff]]
	call	free
	mov	eax, 8
	cmp	eax,  dword ptr [dword ptr [chars_per_input_tab]]
	jle	.label_274
	mov	eax, 8
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_276
.label_274:
	mov	eax,  dword ptr [dword ptr [chars_per_input_tab]]
	mov	dword ptr [rbp - 0x4c], eax
.label_276:
	mov	eax, dword ptr [rbp - 0x4c]
	movsxd	rdi, eax
	call	xmalloc
	mov	qword ptr [word ptr [clump_buff]],  rax
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405660

	.globl init_fps
	.type init_fps, @function
init_fps:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [dword ptr [total_files]],  0
	mov	rsi,  qword ptr [word ptr [column_vector]]
	mov	rdi, rsi
	call	free
	mov	eax, 0x40
	mov	esi, eax
	movsxd	rdi,  dword ptr [dword ptr [columns]]
	call	xnmalloc
	mov	qword ptr [word ptr [column_vector]],  rax
	test	byte ptr [byte ptr [parallel_files]],  1
	je	.label_378
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x1c], eax
	mov	rcx,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 0x18], rcx
.label_371:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x1c], ecx
	cmp	eax, 0
	je	.label_368
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	mov	rsi, qword ptr [rbp - 0x18]
	call	open_file
	test	al, 1
	jne	.label_375
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, -0x40
	mov	qword ptr [rbp - 0x18], rax
	mov	ecx,  dword ptr [dword ptr [columns]]
	add	ecx, -1
	mov	dword ptr [dword ptr [columns]],  ecx
.label_375:
	jmp	.label_372
.label_372:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x40
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 8
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_371
.label_368:
	cmp	dword ptr [dword ptr [columns]],  0
	jne	.label_377
	mov	byte ptr [rbp - 1], 0
	jmp	.label_370
.label_377:
	movabs	rdi, OFFSET FLAT:.str_0
	mov	esi, 0xffffffff
	call	init_header
	jmp	.label_374
.label_378:
	mov	rax,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 0x18], rax
	cmp	dword ptr [rbp - 8], 0
	jle	.label_373
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	mov	rsi, qword ptr [rbp - 0x18]
	call	open_file
	test	al, 1
	jne	.label_369
	mov	byte ptr [rbp - 1], 0
	jmp	.label_370
.label_369:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rdi
	mov	rdi, rax
	call	fileno
	mov	rdi, qword ptr [rbp - 0x40]
	mov	esi, eax
	call	init_header
	mov	rdi, qword ptr [rbp - 0x18]
	mov	dword ptr [rdi + 0x2c], 0
	jmp	.label_380
.label_373:
	movabs	rdi, OFFSET FLAT:.str.20
	call	gettext
	movabs	rdi, OFFSET FLAT:.str_0
	mov	esi, 0xffffffff
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 8], rax
	mov	rax,  qword ptr [word ptr [stdin]]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	mov	byte ptr [byte ptr [have_read_stdin]],  1
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax + 0x10], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax + 0x39], 0
	mov	edx,  dword ptr [dword ptr [total_files]]
	add	edx, 1
	mov	dword ptr [dword ptr [total_files]],  edx
	call	init_header
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax + 0x2c], 0
.label_380:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x30], rax
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	mov	dword ptr [rbp - 0x34], ecx
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x40
	mov	qword ptr [rbp - 0x18], rax
.label_379:
	cmp	dword ptr [rbp - 0x34], 0
	je	.label_376
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax + 0x10], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax + 0x39], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax + 0x2c], 0
	mov	eax, dword ptr [rbp - 0x34]
	add	eax, -1
	mov	dword ptr [rbp - 0x34], eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x40
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_379
.label_376:
	jmp	.label_374
.label_374:
	mov	eax,  dword ptr [dword ptr [total_files]]
	mov	dword ptr [dword ptr [files_ready_to_read]],  eax
	mov	byte ptr [rbp - 1], 1
.label_370:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4058f0

	.globl init_store_cols
	.type init_store_cols, @function
init_store_cols:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_453
	jmp	.label_459
.label_453:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_460
	jmp	.label_462
.label_460:
	mov	eax,  dword ptr [dword ptr [columns]]
	mov	cl, al
	movsx	eax, cl
	cmp	eax, 0
	jge	.label_464
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	mov	cl, al
	movsx	eax, cl
	cmp	eax, 0
	jge	.label_466
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	mov	dl, cl
	movsx	ecx, dl
	mov	esi,  dword ptr [dword ptr [columns]]
	mov	dl, sil
	movsx	esi, dl
	cdq	
	idiv	esi
	cmp	ecx, eax
	jl	.label_470
	jmp	.label_478
.label_466:
	mov	eax,  dword ptr [dword ptr [columns]]
	mov	cl, al
	movsx	eax, cl
	cmp	eax, -1
	jne	.label_479
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_470
	jmp	.label_478
.label_479:
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [columns]]
	mov	dl, cl
	movsx	ecx, dl
	cdq	
	idiv	ecx
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	mov	sil, cl
	movsx	ecx, sil
	cmp	eax, ecx
	jl	.label_470
	jmp	.label_478
.label_464:
	mov	eax,  dword ptr [dword ptr [columns]]
	mov	cl, al
	movsx	eax, cl
	cmp	eax, 0
	jne	.label_496
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_470
	jmp	.label_478
.label_496:
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	mov	cl, al
	movsx	eax, cl
	cmp	eax, 0
	jge	.label_505
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	mov	dl, cl
	movsx	ecx, dl
	mov	esi,  dword ptr [dword ptr [columns]]
	mov	dl, sil
	movsx	esi, dl
	cdq	
	idiv	esi
	cmp	ecx, eax
	jl	.label_470
	jmp	.label_478
.label_505:
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [columns]]
	mov	dl, cl
	movsx	ecx, dl
	cdq	
	idiv	ecx
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	mov	sil, cl
	movsx	ecx, sil
	cmp	eax, ecx
	jl	.label_470
.label_478:
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	mov	cl, al
	movsx	eax, cl
	mov	edx,  dword ptr [dword ptr [columns]]
	mov	cl, dl
	movsx	edx, cl
	imul	eax, edx
	cmp	eax, -0x80
	jl	.label_470
	mov	eax, 0x7f
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	mov	dl, cl
	movsx	ecx, dl
	mov	esi,  dword ptr [dword ptr [columns]]
	mov	dl, sil
	movsx	esi, dl
	imul	ecx, esi
	cmp	eax, ecx
	jge	.label_541
.label_470:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	mov	dl, cl
	movsx	ecx, dl
	mov	esi,  dword ptr [dword ptr [columns]]
	mov	dl, sil
	movsx	esi, dl
	imul	ecx, esi
	mov	dl, cl
	movsx	ecx, dl
	mov	dword ptr [rbp - 4], ecx
	test	al, 1
	jne	.label_389
	jmp	.label_388
.label_541:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	mov	dl, al
	movsx	eax, dl
	mov	esi,  dword ptr [dword ptr [columns]]
	mov	dl, sil
	movsx	esi, dl
	imul	eax, esi
	mov	dl, al
	movsx	eax, dl
	mov	dword ptr [rbp - 4], eax
	test	cl, 1
	jne	.label_389
	jmp	.label_388
.label_462:
	cmp	dword ptr [dword ptr [columns]],  0
	jge	.label_582
	cmp	dword ptr [dword ptr [lines_per_body]],  0
	jge	.label_587
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	ecx, eax
	jl	.label_592
	jmp	.label_599
.label_587:
	cmp	dword ptr [dword ptr [columns]],  -1
	jne	.label_603
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_592
	jmp	.label_599
.label_603:
	mov	eax, 0x80000000
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	eax,  dword ptr [dword ptr [lines_per_body]]
	jl	.label_592
	jmp	.label_599
.label_582:
	cmp	dword ptr [dword ptr [columns]],  0
	jne	.label_618
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_592
	jmp	.label_599
.label_618:
	cmp	dword ptr [dword ptr [lines_per_body]],  0
	jge	.label_622
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	ecx, eax
	jl	.label_592
	jmp	.label_599
.label_622:
	mov	eax, 0x7fffffff
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	eax,  dword ptr [dword ptr [lines_per_body]]
	jl	.label_592
.label_599:
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	imul	eax,  dword ptr [dword ptr [columns]]
	cmp	eax, -0x80
	jl	.label_592
	mov	eax, 0x7f
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	imul	ecx,  dword ptr [dword ptr [columns]]
	cmp	eax, ecx
	jge	.label_640
.label_592:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	imul	ecx,  dword ptr [dword ptr [columns]]
	mov	dl, cl
	movsx	ecx, dl
	mov	dword ptr [rbp - 4], ecx
	test	al, 1
	jne	.label_389
	jmp	.label_388
.label_640:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	imul	eax,  dword ptr [dword ptr [columns]]
	mov	dl, al
	movsx	eax, dl
	mov	dword ptr [rbp - 4], eax
	test	cl, 1
	jne	.label_389
	jmp	.label_388
.label_459:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_661
	jmp	.label_665
.label_661:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_666
	jmp	.label_668
.label_666:
	mov	eax,  dword ptr [dword ptr [columns]]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	jge	.label_669
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	jge	.label_672
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	mov	dx, cx
	movsx	ecx, dx
	mov	esi,  dword ptr [dword ptr [columns]]
	mov	dx, si
	movsx	esi, dx
	cdq	
	idiv	esi
	cmp	ecx, eax
	jl	.label_538
	jmp	.label_683
.label_672:
	mov	eax,  dword ptr [dword ptr [columns]]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, -1
	jne	.label_684
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_538
	jmp	.label_683
.label_684:
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [columns]]
	mov	dx, cx
	movsx	ecx, dx
	cdq	
	idiv	ecx
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	mov	si, cx
	movsx	ecx, si
	cmp	eax, ecx
	jl	.label_538
	jmp	.label_683
.label_669:
	mov	eax,  dword ptr [dword ptr [columns]]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	jne	.label_696
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_538
	jmp	.label_683
.label_696:
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	jge	.label_448
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	mov	dx, cx
	movsx	ecx, dx
	mov	esi,  dword ptr [dword ptr [columns]]
	mov	dx, si
	movsx	esi, dx
	cdq	
	idiv	esi
	cmp	ecx, eax
	jl	.label_538
	jmp	.label_683
.label_448:
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [columns]]
	mov	dx, cx
	movsx	ecx, dx
	cdq	
	idiv	ecx
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	mov	si, cx
	movsx	ecx, si
	cmp	eax, ecx
	jl	.label_538
.label_683:
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	mov	cx, ax
	movsx	eax, cx
	mov	edx,  dword ptr [dword ptr [columns]]
	mov	cx, dx
	movsx	edx, cx
	imul	eax, edx
	cmp	eax, 0xffff8000
	jl	.label_538
	mov	eax, 0x7fff
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	mov	dx, cx
	movsx	ecx, dx
	mov	esi,  dword ptr [dword ptr [columns]]
	mov	dx, si
	movsx	esi, dx
	imul	ecx, esi
	cmp	eax, ecx
	jge	.label_738
.label_538:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	mov	dx, cx
	movsx	ecx, dx
	mov	esi,  dword ptr [dword ptr [columns]]
	mov	dx, si
	movsx	esi, dx
	imul	ecx, esi
	mov	dx, cx
	movsx	ecx, dx
	mov	dword ptr [rbp - 4], ecx
	test	al, 1
	jne	.label_389
	jmp	.label_388
.label_738:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	mov	dx, ax
	movsx	eax, dx
	mov	esi,  dword ptr [dword ptr [columns]]
	mov	dx, si
	movsx	esi, dx
	imul	eax, esi
	mov	dx, ax
	movsx	eax, dx
	mov	dword ptr [rbp - 4], eax
	test	cl, 1
	jne	.label_389
	jmp	.label_388
.label_668:
	cmp	dword ptr [dword ptr [columns]],  0
	jge	.label_759
	cmp	dword ptr [dword ptr [lines_per_body]],  0
	jge	.label_762
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	ecx, eax
	jl	.label_764
	jmp	.label_552
.label_762:
	cmp	dword ptr [dword ptr [columns]],  -1
	jne	.label_774
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_764
	jmp	.label_552
.label_774:
	mov	eax, 0x80000000
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	eax,  dword ptr [dword ptr [lines_per_body]]
	jl	.label_764
	jmp	.label_552
.label_759:
	cmp	dword ptr [dword ptr [columns]],  0
	jne	.label_788
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_764
	jmp	.label_552
.label_788:
	cmp	dword ptr [dword ptr [lines_per_body]],  0
	jge	.label_792
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	ecx, eax
	jl	.label_764
	jmp	.label_552
.label_792:
	mov	eax, 0x7fffffff
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	eax,  dword ptr [dword ptr [lines_per_body]]
	jl	.label_764
.label_552:
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	imul	eax,  dword ptr [dword ptr [columns]]
	cmp	eax, 0xffff8000
	jl	.label_764
	mov	eax, 0x7fff
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	imul	ecx,  dword ptr [dword ptr [columns]]
	cmp	eax, ecx
	jge	.label_732
.label_764:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	imul	ecx,  dword ptr [dword ptr [columns]]
	mov	dx, cx
	movsx	ecx, dx
	mov	dword ptr [rbp - 4], ecx
	test	al, 1
	jne	.label_389
	jmp	.label_388
.label_732:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	imul	eax,  dword ptr [dword ptr [columns]]
	mov	dx, ax
	movsx	eax, dx
	mov	dword ptr [rbp - 4], eax
	test	cl, 1
	jne	.label_389
	jmp	.label_388
.label_665:
	mov	al, 1
	test	al, 1
	jne	.label_391
	jmp	.label_394
.label_391:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_396
	jmp	.label_403
.label_396:
	cmp	dword ptr [dword ptr [columns]],  0
	jge	.label_404
	cmp	dword ptr [dword ptr [lines_per_body]],  0
	jge	.label_409
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	ecx, eax
	jl	.label_413
	jmp	.label_418
.label_409:
	cmp	dword ptr [dword ptr [columns]],  -1
	jne	.label_420
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_413
	jmp	.label_418
.label_420:
	mov	eax, 0x80000000
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	eax,  dword ptr [dword ptr [lines_per_body]]
	jl	.label_413
	jmp	.label_418
.label_404:
	cmp	dword ptr [dword ptr [columns]],  0
	jne	.label_435
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_413
	jmp	.label_418
.label_435:
	cmp	dword ptr [dword ptr [lines_per_body]],  0
	jge	.label_444
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	ecx, eax
	jl	.label_413
	jmp	.label_418
.label_444:
	mov	eax, 0x7fffffff
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	eax,  dword ptr [dword ptr [lines_per_body]]
	jl	.label_413
.label_418:
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	imul	eax,  dword ptr [dword ptr [columns]]
	cmp	eax, 0x80000000
	jl	.label_413
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	imul	ecx,  dword ptr [dword ptr [columns]]
	cmp	eax, ecx
	jge	.label_469
.label_413:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	imul	ecx,  dword ptr [dword ptr [columns]]
	mov	dword ptr [rbp - 4], ecx
	test	al, 1
	jne	.label_389
	jmp	.label_388
.label_469:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	imul	eax,  dword ptr [dword ptr [columns]]
	mov	dword ptr [rbp - 4], eax
	test	cl, 1
	jne	.label_389
	jmp	.label_388
.label_403:
	cmp	dword ptr [dword ptr [columns]],  0
	jge	.label_484
	cmp	dword ptr [dword ptr [lines_per_body]],  0
	jge	.label_487
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	ecx, eax
	jl	.label_440
	jmp	.label_497
.label_487:
	cmp	dword ptr [dword ptr [columns]],  -1
	jne	.label_498
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_440
	jmp	.label_497
.label_498:
	mov	eax, 0x80000000
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	eax,  dword ptr [dword ptr [lines_per_body]]
	jl	.label_440
	jmp	.label_497
.label_484:
	cmp	dword ptr [dword ptr [columns]],  0
	jne	.label_519
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_440
	jmp	.label_497
.label_519:
	cmp	dword ptr [dword ptr [lines_per_body]],  0
	jge	.label_527
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	ecx, eax
	jl	.label_440
	jmp	.label_497
.label_527:
	mov	eax, 0x7fffffff
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	eax,  dword ptr [dword ptr [lines_per_body]]
	jl	.label_440
.label_497:
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	imul	eax,  dword ptr [dword ptr [columns]]
	cmp	eax, 0x80000000
	jl	.label_440
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	imul	ecx,  dword ptr [dword ptr [columns]]
	cmp	eax, ecx
	jge	.label_545
.label_440:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	imul	ecx,  dword ptr [dword ptr [columns]]
	mov	dword ptr [rbp - 4], ecx
	test	al, 1
	jne	.label_389
	jmp	.label_388
.label_545:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	imul	eax,  dword ptr [dword ptr [columns]]
	mov	dword ptr [rbp - 4], eax
	test	cl, 1
	jne	.label_389
	jmp	.label_388
.label_394:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_490
	jmp	.label_574
.label_490:
	mov	al, 1
	test	al, 1
	jne	.label_526
	jmp	.label_580
.label_526:
	movsxd	rax,  dword ptr [dword ptr [columns]]
	cmp	rax, 0
	jge	.label_583
	movsxd	rax,  dword ptr [dword ptr [lines_per_body]]
	cmp	rax, 0
	jge	.label_568
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	movsxd	rdx,  dword ptr [dword ptr [columns]]
	mov	qword ptr [rbp - 0x18], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0x18]
	idiv	rsi
	cmp	rcx, rax
	jl	.label_507
	jmp	.label_625
.label_568:
	movsxd	rax,  dword ptr [dword ptr [columns]]
	cmp	rax, -1
	jne	.label_613
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_507
	jmp	.label_625
.label_613:
	movabs	rax, 0x8000000000000000
	movsxd	rcx,  dword ptr [dword ptr [columns]]
	cqo	
	idiv	rcx
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	cmp	rax, rcx
	jl	.label_507
	jmp	.label_625
.label_583:
	movsxd	rax,  dword ptr [dword ptr [columns]]
	cmp	rax, 0
	jne	.label_627
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_507
	jmp	.label_625
.label_627:
	movsxd	rax,  dword ptr [dword ptr [lines_per_body]]
	cmp	rax, 0
	jge	.label_630
	movabs	rax, 0x8000000000000000
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	movsxd	rdx,  dword ptr [dword ptr [columns]]
	mov	qword ptr [rbp - 0x20], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0x20]
	idiv	rsi
	cmp	rcx, rax
	jl	.label_507
	jmp	.label_625
.label_630:
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx,  dword ptr [dword ptr [columns]]
	cqo	
	idiv	rcx
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	cmp	rax, rcx
	jl	.label_507
.label_625:
	movabs	rax, 0x8000000000000000
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	movsxd	rdx,  dword ptr [dword ptr [columns]]
	imul	rcx, rdx
	cmp	rcx, rax
	jl	.label_507
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	movsxd	rdx,  dword ptr [dword ptr [columns]]
	imul	rcx, rdx
	cmp	rax, rcx
	jge	.label_660
.label_507:
	mov	al, 1
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	movsxd	rdx,  dword ptr [dword ptr [columns]]
	imul	rcx, rdx
	mov	esi, ecx
	mov	dword ptr [rbp - 4], esi
	test	al, 1
	jne	.label_389
	jmp	.label_388
.label_660:
	xor	eax, eax
	mov	cl, al
	movsxd	rdx,  dword ptr [dword ptr [lines_per_body]]
	movsxd	rsi,  dword ptr [dword ptr [columns]]
	imul	rdx, rsi
	mov	eax, edx
	mov	dword ptr [rbp - 4], eax
	test	cl, 1
	jne	.label_389
	jmp	.label_388
.label_580:
	cmp	dword ptr [dword ptr [columns]],  0
	jge	.label_682
	cmp	dword ptr [dword ptr [lines_per_body]],  0
	jge	.label_685
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	ecx, eax
	jl	.label_687
	jmp	.label_690
.label_685:
	cmp	dword ptr [dword ptr [columns]],  -1
	jne	.label_692
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_687
	jmp	.label_690
.label_692:
	mov	eax, 0x80000000
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	eax,  dword ptr [dword ptr [lines_per_body]]
	jl	.label_687
	jmp	.label_690
.label_682:
	cmp	dword ptr [dword ptr [columns]],  0
	jne	.label_703
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_687
	jmp	.label_690
.label_703:
	cmp	dword ptr [dword ptr [lines_per_body]],  0
	jge	.label_474
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	ecx, eax
	jl	.label_687
	jmp	.label_690
.label_474:
	mov	eax, 0x7fffffff
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	eax,  dword ptr [dword ptr [lines_per_body]]
	jl	.label_687
.label_690:
	movabs	rax, 0x8000000000000000
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	imul	ecx,  dword ptr [dword ptr [columns]]
	movsxd	rdx, ecx
	cmp	rdx, rax
	jl	.label_687
	movabs	rax, 0x7fffffffffffffff
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	imul	ecx,  dword ptr [dword ptr [columns]]
	movsxd	rdx, ecx
	cmp	rax, rdx
	jge	.label_735
.label_687:
	mov	al, 1
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	movsxd	rdx,  dword ptr [dword ptr [columns]]
	imul	rcx, rdx
	mov	esi, ecx
	mov	dword ptr [rbp - 4], esi
	test	al, 1
	jne	.label_389
	jmp	.label_388
.label_735:
	xor	eax, eax
	mov	cl, al
	movsxd	rdx,  dword ptr [dword ptr [lines_per_body]]
	movsxd	rsi,  dword ptr [dword ptr [columns]]
	imul	rdx, rsi
	mov	eax, edx
	mov	dword ptr [rbp - 4], eax
	test	cl, 1
	jne	.label_389
	jmp	.label_388
.label_574:
	mov	al, 1
	test	al, 1
	jne	.label_750
	jmp	.label_751
.label_750:
	movsxd	rax,  dword ptr [dword ptr [columns]]
	cmp	rax, 0
	jge	.label_787
	movsxd	rax,  dword ptr [dword ptr [lines_per_body]]
	cmp	rax, 0
	jge	.label_758
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	movsxd	rdx,  dword ptr [dword ptr [columns]]
	mov	qword ptr [rbp - 0x28], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0x28]
	idiv	rsi
	cmp	rcx, rax
	jl	.label_716
	jmp	.label_770
.label_758:
	movsxd	rax,  dword ptr [dword ptr [columns]]
	cmp	rax, -1
	jne	.label_773
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_716
	jmp	.label_770
.label_773:
	movabs	rax, 0x8000000000000000
	movsxd	rcx,  dword ptr [dword ptr [columns]]
	cqo	
	idiv	rcx
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	cmp	rax, rcx
	jl	.label_716
	jmp	.label_770
.label_787:
	movsxd	rax,  dword ptr [dword ptr [columns]]
	cmp	rax, 0
	jne	.label_585
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_716
	jmp	.label_770
.label_585:
	movsxd	rax,  dword ptr [dword ptr [lines_per_body]]
	cmp	rax, 0
	jge	.label_795
	movabs	rax, 0x8000000000000000
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	movsxd	rdx,  dword ptr [dword ptr [columns]]
	mov	qword ptr [rbp - 0x30], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0x30]
	idiv	rsi
	cmp	rcx, rax
	jl	.label_716
	jmp	.label_770
.label_795:
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx,  dword ptr [dword ptr [columns]]
	cqo	
	idiv	rcx
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	cmp	rax, rcx
	jl	.label_716
.label_770:
	movabs	rax, 0x8000000000000000
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	movsxd	rdx,  dword ptr [dword ptr [columns]]
	imul	rcx, rdx
	cmp	rcx, rax
	jl	.label_716
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	movsxd	rdx,  dword ptr [dword ptr [columns]]
	imul	rcx, rdx
	cmp	rax, rcx
	jge	.label_816
.label_716:
	mov	al, 1
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	movsxd	rdx,  dword ptr [dword ptr [columns]]
	imul	rcx, rdx
	mov	esi, ecx
	mov	dword ptr [rbp - 4], esi
	test	al, 1
	jne	.label_389
	jmp	.label_388
.label_816:
	xor	eax, eax
	mov	cl, al
	movsxd	rdx,  dword ptr [dword ptr [lines_per_body]]
	movsxd	rsi,  dword ptr [dword ptr [columns]]
	imul	rdx, rsi
	mov	eax, edx
	mov	dword ptr [rbp - 4], eax
	test	cl, 1
	jne	.label_389
	jmp	.label_388
.label_751:
	cmp	dword ptr [dword ptr [columns]],  0
	jge	.label_416
	cmp	dword ptr [dword ptr [lines_per_body]],  0
	jge	.label_419
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	ecx, eax
	jl	.label_423
	jmp	.label_438
.label_419:
	cmp	dword ptr [dword ptr [columns]],  -1
	jne	.label_431
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_423
	jmp	.label_438
.label_431:
	mov	eax, 0x80000000
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	eax,  dword ptr [dword ptr [lines_per_body]]
	jl	.label_423
	jmp	.label_438
.label_416:
	cmp	dword ptr [dword ptr [columns]],  0
	jne	.label_449
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_423
	jmp	.label_438
.label_449:
	cmp	dword ptr [dword ptr [lines_per_body]],  0
	jge	.label_456
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	ecx, eax
	jl	.label_423
	jmp	.label_438
.label_456:
	mov	eax, 0x7fffffff
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	eax,  dword ptr [dword ptr [lines_per_body]]
	jl	.label_423
.label_438:
	movabs	rax, 0x8000000000000000
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	imul	ecx,  dword ptr [dword ptr [columns]]
	movsxd	rdx, ecx
	cmp	rdx, rax
	jl	.label_423
	movabs	rax, 0x7fffffffffffffff
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	imul	ecx,  dword ptr [dword ptr [columns]]
	movsxd	rdx, ecx
	cmp	rax, rdx
	jge	.label_477
.label_423:
	mov	al, 1
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	movsxd	rdx,  dword ptr [dword ptr [columns]]
	imul	rcx, rdx
	mov	esi, ecx
	mov	dword ptr [rbp - 4], esi
	test	al, 1
	jne	.label_389
	jmp	.label_388
.label_477:
	xor	eax, eax
	mov	cl, al
	movsxd	rdx,  dword ptr [dword ptr [lines_per_body]]
	movsxd	rsi,  dword ptr [dword ptr [columns]]
	imul	rdx, rsi
	mov	eax, edx
	mov	dword ptr [rbp - 4], eax
	test	cl, 1
	jne	.label_389
.label_388:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_504
	jmp	.label_486
.label_504:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_506
	jmp	.label_510
.label_506:
	mov	al, 1
	test	al, 1
	jne	.label_512
	jmp	.label_517
.label_512:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_520
	jmp	.label_523
.label_520:
	mov	eax, dword ptr [rbp - 4]
	mov	cl, al
	movsx	eax, cl
	cmp	eax, 0x7fffffff
	jl	.label_461
	jmp	.label_400
.label_523:
	mov	eax, 0x7ffffffe
	mov	ecx, dword ptr [rbp - 4]
	mov	dl, cl
	movsx	ecx, dl
	cmp	eax, ecx
	jl	.label_461
	jmp	.label_400
.label_517:
	mov	eax, dword ptr [rbp - 4]
	mov	cl, al
	movsx	eax, cl
	cmp	eax, 0
	jge	.label_535
	mov	eax, 1
	mov	ecx, dword ptr [rbp - 4]
	mov	dl, cl
	movsx	ecx, dl
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_461
	jmp	.label_400
.label_535:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_542
	jmp	.label_544
.label_542:
	mov	eax, dword ptr [rbp - 4]
	mov	cl, al
	movsx	eax, cl
	mov	edx, dword ptr [rbp - 4]
	mov	cl, dl
	movsx	edx, cl
	add	edx, 1
	cmp	eax, edx
	jle	.label_461
	jmp	.label_400
.label_544:
	mov	eax, dword ptr [rbp - 4]
	mov	cl, al
	movsx	eax, cl
	add	eax, 1
	cmp	eax, 1
	jl	.label_461
.label_400:
	mov	eax, dword ptr [rbp - 4]
	mov	cl, al
	movsx	eax, cl
	add	eax, 1
	cmp	eax, -0x80
	jl	.label_461
	mov	eax, 0x7f
	mov	ecx, dword ptr [rbp - 4]
	mov	dl, cl
	movsx	ecx, dl
	add	ecx, 1
	cmp	eax, ecx
	jge	.label_563
.label_461:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 4]
	mov	dl, cl
	movsx	ecx, dl
	add	ecx, 1
	mov	dl, cl
	movsx	ecx, dl
	mov	dword ptr [rbp - 8], ecx
	test	al, 1
	jne	.label_389
	jmp	.label_426
.label_563:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 4]
	mov	dl, al
	movsx	eax, dl
	add	eax, 1
	mov	dl, al
	movsx	eax, dl
	mov	dword ptr [rbp - 8], eax
	test	cl, 1
	jne	.label_389
	jmp	.label_426
.label_510:
	mov	al, 1
	test	al, 1
	jne	.label_596
	jmp	.label_597
.label_596:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_600
	jmp	.label_608
.label_600:
	cmp	dword ptr [rbp - 4], 0x7fffffff
	jl	.label_624
	jmp	.label_514
.label_608:
	mov	eax, 0x7ffffffe
	cmp	eax, dword ptr [rbp - 4]
	jl	.label_624
	jmp	.label_514
.label_597:
	cmp	dword ptr [rbp - 4], 0
	jge	.label_614
	mov	eax, 1
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_624
	jmp	.label_514
.label_614:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_621
	jmp	.label_623
.label_621:
	mov	eax, dword ptr [rbp - 4]
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_624
	jmp	.label_514
.label_623:
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	cmp	eax, 1
	jl	.label_624
.label_514:
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	cmp	eax, -0x80
	jl	.label_624
	mov	eax, 0x7f
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	cmp	eax, ecx
	jge	.label_633
.label_624:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	mov	dl, cl
	movsx	ecx, dl
	mov	dword ptr [rbp - 8], ecx
	test	al, 1
	jne	.label_389
	jmp	.label_426
.label_633:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	mov	dl, al
	movsx	eax, dl
	mov	dword ptr [rbp - 8], eax
	test	cl, 1
	jne	.label_389
	jmp	.label_426
.label_486:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_645
	jmp	.label_648
.label_645:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_500
	jmp	.label_652
.label_500:
	mov	al, 1
	test	al, 1
	jne	.label_653
	jmp	.label_656
.label_653:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_658
	jmp	.label_567
.label_658:
	mov	eax, dword ptr [rbp - 4]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0x7fffffff
	jl	.label_662
	jmp	.label_387
.label_567:
	mov	eax, 0x7ffffffe
	mov	ecx, dword ptr [rbp - 4]
	mov	dx, cx
	movsx	ecx, dx
	cmp	eax, ecx
	jl	.label_662
	jmp	.label_387
.label_656:
	mov	eax, dword ptr [rbp - 4]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	jge	.label_646
	mov	eax, 1
	mov	ecx, dword ptr [rbp - 4]
	mov	dx, cx
	movsx	ecx, dx
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_662
	jmp	.label_387
.label_646:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_679
	jmp	.label_681
.label_679:
	mov	eax, dword ptr [rbp - 4]
	mov	cx, ax
	movsx	eax, cx
	mov	edx, dword ptr [rbp - 4]
	mov	cx, dx
	movsx	edx, cx
	add	edx, 1
	cmp	eax, edx
	jle	.label_662
	jmp	.label_387
.label_681:
	mov	eax, dword ptr [rbp - 4]
	mov	cx, ax
	movsx	eax, cx
	add	eax, 1
	cmp	eax, 1
	jl	.label_662
.label_387:
	mov	eax, dword ptr [rbp - 4]
	mov	cx, ax
	movsx	eax, cx
	add	eax, 1
	cmp	eax, 0xffff8000
	jl	.label_662
	mov	eax, 0x7fff
	mov	ecx, dword ptr [rbp - 4]
	mov	dx, cx
	movsx	ecx, dx
	add	ecx, 1
	cmp	eax, ecx
	jge	.label_694
.label_662:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 4]
	mov	dx, cx
	movsx	ecx, dx
	add	ecx, 1
	mov	dx, cx
	movsx	ecx, dx
	mov	dword ptr [rbp - 8], ecx
	test	al, 1
	jne	.label_389
	jmp	.label_426
.label_694:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 4]
	mov	dx, ax
	movsx	eax, dx
	add	eax, 1
	mov	dx, ax
	movsx	eax, dx
	mov	dword ptr [rbp - 8], eax
	test	cl, 1
	jne	.label_389
	jmp	.label_426
.label_652:
	mov	al, 1
	test	al, 1
	jne	.label_720
	jmp	.label_723
.label_720:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_724
	jmp	.label_726
.label_724:
	cmp	dword ptr [rbp - 4], 0x7fffffff
	jl	.label_722
	jmp	.label_729
.label_726:
	mov	eax, 0x7ffffffe
	cmp	eax, dword ptr [rbp - 4]
	jl	.label_722
	jmp	.label_729
.label_723:
	cmp	dword ptr [rbp - 4], 0
	jge	.label_734
	mov	eax, 1
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_722
	jmp	.label_729
.label_734:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_655
	jmp	.label_740
.label_655:
	mov	eax, dword ptr [rbp - 4]
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_722
	jmp	.label_729
.label_740:
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	cmp	eax, 1
	jl	.label_722
.label_729:
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	cmp	eax, 0xffff8000
	jl	.label_722
	mov	eax, 0x7fff
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	cmp	eax, ecx
	jge	.label_748
.label_722:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	mov	dx, cx
	movsx	ecx, dx
	mov	dword ptr [rbp - 8], ecx
	test	al, 1
	jne	.label_389
	jmp	.label_426
.label_748:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	mov	dx, ax
	movsx	eax, dx
	mov	dword ptr [rbp - 8], eax
	test	cl, 1
	jne	.label_389
	jmp	.label_426
.label_648:
	mov	al, 1
	test	al, 1
	jne	.label_760
	jmp	.label_761
.label_760:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_763
	jmp	.label_765
.label_763:
	mov	al, 1
	test	al, 1
	jne	.label_766
	jmp	.label_768
.label_766:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_771
	jmp	.label_776
.label_771:
	cmp	dword ptr [rbp - 4], 0x7fffffff
	jl	.label_778
	jmp	.label_780
.label_776:
	mov	eax, 0x7ffffffe
	cmp	eax, dword ptr [rbp - 4]
	jl	.label_778
	jmp	.label_780
.label_768:
	cmp	dword ptr [rbp - 4], 0
	jge	.label_784
	mov	eax, 1
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_778
	jmp	.label_780
.label_784:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_791
	jmp	.label_615
.label_791:
	mov	eax, dword ptr [rbp - 4]
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_778
	jmp	.label_780
.label_615:
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	cmp	eax, 1
	jl	.label_778
.label_780:
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	cmp	eax, 0x80000000
	jl	.label_778
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	cmp	eax, ecx
	jge	.label_801
.label_778:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	mov	dword ptr [rbp - 8], ecx
	test	al, 1
	jne	.label_389
	jmp	.label_426
.label_801:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	mov	dword ptr [rbp - 8], eax
	test	cl, 1
	jne	.label_389
	jmp	.label_426
.label_765:
	mov	al, 1
	test	al, 1
	jne	.label_755
	jmp	.label_808
.label_755:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_811
	jmp	.label_813
.label_811:
	cmp	dword ptr [rbp - 4], 0x7fffffff
	jl	.label_390
	jmp	.label_383
.label_813:
	mov	eax, 0x7ffffffe
	cmp	eax, dword ptr [rbp - 4]
	jl	.label_390
	jmp	.label_383
.label_808:
	cmp	dword ptr [rbp - 4], 0
	jge	.label_386
	mov	eax, 1
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_390
	jmp	.label_383
.label_386:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_399
	jmp	.label_406
.label_399:
	mov	eax, dword ptr [rbp - 4]
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_390
	jmp	.label_383
.label_406:
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	cmp	eax, 1
	jl	.label_390
.label_383:
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	cmp	eax, 0x80000000
	jl	.label_390
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	cmp	eax, ecx
	jge	.label_548
.label_390:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	mov	dword ptr [rbp - 8], ecx
	test	al, 1
	jne	.label_389
	jmp	.label_426
.label_548:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	mov	dword ptr [rbp - 8], eax
	test	cl, 1
	jne	.label_389
	jmp	.label_426
.label_761:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_437
	jmp	.label_441
.label_437:
	mov	al, 1
	test	al, 1
	jne	.label_443
	jmp	.label_445
.label_443:
	mov	al, 1
	test	al, 1
	jne	.label_447
	jmp	.label_450
.label_447:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_452
	jmp	.label_454
.label_452:
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 4]
	cmp	rcx, rax
	jl	.label_429
	jmp	.label_465
.label_454:
	movabs	rax, 0x7ffffffffffffffe
	movsxd	rcx, dword ptr [rbp - 4]
	cmp	rax, rcx
	jl	.label_429
	jmp	.label_465
.label_450:
	movsxd	rax, dword ptr [rbp - 4]
	cmp	rax, 0
	jge	.label_467
	mov	eax, 1
	mov	ecx, eax
	movsxd	rdx, dword ptr [rbp - 4]
	add	rdx, 1
	cmp	rcx, rdx
	jle	.label_429
	jmp	.label_465
.label_467:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_473
	jmp	.label_476
.label_473:
	movsxd	rax, dword ptr [rbp - 4]
	movsxd	rcx, dword ptr [rbp - 4]
	add	rcx, 1
	cmp	rax, rcx
	jle	.label_429
	jmp	.label_465
.label_476:
	movsxd	rax, dword ptr [rbp - 4]
	add	rax, 1
	cmp	rax, 1
	jl	.label_429
.label_465:
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 4]
	add	rcx, 1
	cmp	rcx, rax
	jl	.label_429
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 4]
	add	rcx, 1
	cmp	rax, rcx
	jge	.label_488
.label_429:
	mov	al, 1
	movsxd	rcx, dword ptr [rbp - 4]
	add	rcx, 1
	mov	edx, ecx
	mov	dword ptr [rbp - 8], edx
	test	al, 1
	jne	.label_389
	jmp	.label_426
.label_488:
	xor	eax, eax
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 4]
	add	rdx, 1
	mov	eax, edx
	mov	dword ptr [rbp - 8], eax
	test	cl, 1
	jne	.label_389
	jmp	.label_426
.label_445:
	mov	al, 1
	test	al, 1
	jne	.label_516
	jmp	.label_521
.label_516:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_522
	jmp	.label_525
.label_522:
	cmp	dword ptr [rbp - 4], 0x7fffffff
	jl	.label_530
	jmp	.label_529
.label_525:
	mov	eax, 0x7ffffffe
	cmp	eax, dword ptr [rbp - 4]
	jl	.label_530
	jmp	.label_529
.label_521:
	cmp	dword ptr [rbp - 4], 0
	jge	.label_533
	mov	eax, 1
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_530
	jmp	.label_529
.label_533:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_537
	jmp	.label_540
.label_537:
	mov	eax, dword ptr [rbp - 4]
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_530
	jmp	.label_529
.label_540:
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	cmp	eax, 1
	jl	.label_530
.label_529:
	movabs	rax, 0x8000000000000000
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	movsxd	rdx, ecx
	cmp	rdx, rax
	jl	.label_530
	movabs	rax, 0x7fffffffffffffff
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	movsxd	rdx, ecx
	cmp	rax, rdx
	jge	.label_556
.label_530:
	mov	al, 1
	movsxd	rcx, dword ptr [rbp - 4]
	add	rcx, 1
	mov	edx, ecx
	mov	dword ptr [rbp - 8], edx
	test	al, 1
	jne	.label_389
	jmp	.label_426
.label_556:
	xor	eax, eax
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 4]
	add	rdx, 1
	mov	eax, edx
	mov	dword ptr [rbp - 8], eax
	test	cl, 1
	jne	.label_389
	jmp	.label_426
.label_441:
	mov	al, 1
	test	al, 1
	jne	.label_551
	jmp	.label_589
.label_551:
	mov	al, 1
	test	al, 1
	jne	.label_591
	jmp	.label_593
.label_591:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_595
	jmp	.label_598
.label_595:
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 4]
	cmp	rcx, rax
	jl	.label_601
	jmp	.label_610
.label_598:
	movabs	rax, 0x7ffffffffffffffe
	movsxd	rcx, dword ptr [rbp - 4]
	cmp	rax, rcx
	jl	.label_601
	jmp	.label_610
.label_593:
	movsxd	rax, dword ptr [rbp - 4]
	cmp	rax, 0
	jge	.label_689
	mov	eax, 1
	mov	ecx, eax
	movsxd	rdx, dword ptr [rbp - 4]
	add	rdx, 1
	cmp	rcx, rdx
	jle	.label_601
	jmp	.label_610
.label_689:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_742
	jmp	.label_626
.label_742:
	movsxd	rax, dword ptr [rbp - 4]
	movsxd	rcx, dword ptr [rbp - 4]
	add	rcx, 1
	cmp	rax, rcx
	jle	.label_601
	jmp	.label_610
.label_626:
	movsxd	rax, dword ptr [rbp - 4]
	add	rax, 1
	cmp	rax, 1
	jl	.label_601
.label_610:
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 4]
	add	rcx, 1
	cmp	rcx, rax
	jl	.label_601
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 4]
	add	rcx, 1
	cmp	rax, rcx
	jge	.label_638
.label_601:
	mov	al, 1
	movsxd	rcx, dword ptr [rbp - 4]
	add	rcx, 1
	mov	edx, ecx
	mov	dword ptr [rbp - 8], edx
	test	al, 1
	jne	.label_389
	jmp	.label_426
.label_638:
	xor	eax, eax
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 4]
	add	rdx, 1
	mov	eax, edx
	mov	dword ptr [rbp - 8], eax
	test	cl, 1
	jne	.label_389
	jmp	.label_426
.label_589:
	mov	al, 1
	test	al, 1
	jne	.label_531
	jmp	.label_539
.label_531:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_547
	jmp	.label_814
.label_547:
	cmp	dword ptr [rbp - 4], 0x7fffffff
	jl	.label_577
	jmp	.label_606
.label_814:
	mov	eax, 0x7ffffffe
	cmp	eax, dword ptr [rbp - 4]
	jl	.label_577
	jmp	.label_606
.label_539:
	cmp	dword ptr [rbp - 4], 0
	jge	.label_671
	mov	eax, 1
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_577
	jmp	.label_606
.label_671:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_674
	jmp	.label_675
.label_674:
	mov	eax, dword ptr [rbp - 4]
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_577
	jmp	.label_606
.label_675:
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	cmp	eax, 1
	jl	.label_577
.label_606:
	movabs	rax, 0x8000000000000000
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	movsxd	rdx, ecx
	cmp	rdx, rax
	jl	.label_577
	movabs	rax, 0x7fffffffffffffff
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	movsxd	rdx, ecx
	cmp	rax, rdx
	jge	.label_688
.label_577:
	mov	al, 1
	movsxd	rcx, dword ptr [rbp - 4]
	add	rcx, 1
	mov	edx, ecx
	mov	dword ptr [rbp - 8], edx
	test	al, 1
	jne	.label_389
	jmp	.label_426
.label_688:
	xor	eax, eax
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 4]
	add	rdx, 1
	mov	eax, edx
	mov	dword ptr [rbp - 8], eax
	test	cl, 1
	jne	.label_389
.label_426:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_701
	jmp	.label_705
.label_701:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_708
	jmp	.label_710
.label_708:
	mov	al, 1
	test	al, 1
	jne	.label_713
	jmp	.label_629
.label_713:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_718
	jmp	.label_721
.label_718:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	cl, al
	movsx	eax, cl
	cmp	eax, 0x7fffffff
	jl	.label_693
	jmp	.label_727
.label_721:
	mov	eax, 0x7ffffffe
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	mov	dl, cl
	movsx	ecx, dl
	cmp	eax, ecx
	jl	.label_693
	jmp	.label_727
.label_629:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	cl, al
	movsx	eax, cl
	cmp	eax, 0
	jge	.label_733
	mov	eax, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	mov	dl, cl
	movsx	ecx, dl
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_693
	jmp	.label_727
.label_733:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_741
	jmp	.label_744
.label_741:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	cl, al
	movsx	eax, cl
	mov	edx,  dword ptr [dword ptr [chars_per_column]]
	mov	cl, dl
	movsx	edx, cl
	add	edx, 1
	cmp	eax, edx
	jle	.label_693
	jmp	.label_727
.label_744:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	cl, al
	movsx	eax, cl
	add	eax, 1
	cmp	eax, 1
	jl	.label_693
.label_727:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	cl, al
	movsx	eax, cl
	add	eax, 1
	cmp	eax, -0x80
	jl	.label_693
	mov	eax, 0x7f
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	mov	dl, cl
	movsx	ecx, dl
	add	ecx, 1
	cmp	eax, ecx
	jge	.label_754
.label_693:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	mov	dl, cl
	movsx	ecx, dl
	add	ecx, 1
	mov	dl, cl
	movsx	ecx, dl
	mov	dword ptr [rbp - 0xc], ecx
	test	al, 1
	jne	.label_389
	jmp	.label_385
.label_754:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	dl, al
	movsx	eax, dl
	add	eax, 1
	mov	dl, al
	movsx	eax, dl
	mov	dword ptr [rbp - 0xc], eax
	test	cl, 1
	jne	.label_389
	jmp	.label_385
.label_710:
	mov	al, 1
	test	al, 1
	jne	.label_779
	jmp	.label_781
.label_779:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_782
	jmp	.label_785
.label_782:
	cmp	dword ptr [dword ptr [chars_per_column]],  0x7fffffff
	jl	.label_635
	jmp	.label_789
.label_785:
	mov	eax, 0x7ffffffe
	cmp	eax,  dword ptr [dword ptr [chars_per_column]]
	jl	.label_635
	jmp	.label_789
.label_781:
	cmp	dword ptr [dword ptr [chars_per_column]],  0
	jge	.label_793
	mov	eax, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_635
	jmp	.label_789
.label_793:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_799
	jmp	.label_680
.label_799:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_635
	jmp	.label_789
.label_680:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	add	eax, 1
	cmp	eax, 1
	jl	.label_635
.label_789:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	add	eax, 1
	cmp	eax, -0x80
	jl	.label_635
	mov	eax, 0x7f
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	cmp	eax, ecx
	jge	.label_806
.label_635:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	mov	dl, cl
	movsx	ecx, dl
	mov	dword ptr [rbp - 0xc], ecx
	test	al, 1
	jne	.label_389
	jmp	.label_385
.label_806:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	add	eax, 1
	mov	dl, al
	movsx	eax, dl
	mov	dword ptr [rbp - 0xc], eax
	test	cl, 1
	jne	.label_389
	jmp	.label_385
.label_705:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_395
	jmp	.label_401
.label_395:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_468
	jmp	.label_408
.label_468:
	mov	al, 1
	test	al, 1
	jne	.label_410
	jmp	.label_412
.label_410:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_414
	jmp	.label_532
.label_414:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0x7fffffff
	jl	.label_417
	jmp	.label_422
.label_532:
	mov	eax, 0x7ffffffe
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	mov	dx, cx
	movsx	ecx, dx
	cmp	eax, ecx
	jl	.label_417
	jmp	.label_422
.label_412:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	jge	.label_432
	mov	eax, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	mov	dx, cx
	movsx	ecx, dx
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_417
	jmp	.label_422
.label_432:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_697
	jmp	.label_451
.label_697:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	cx, ax
	movsx	eax, cx
	mov	edx,  dword ptr [dword ptr [chars_per_column]]
	mov	cx, dx
	movsx	edx, cx
	add	edx, 1
	cmp	eax, edx
	jle	.label_417
	jmp	.label_422
.label_451:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	cx, ax
	movsx	eax, cx
	add	eax, 1
	cmp	eax, 1
	jl	.label_417
.label_422:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	cx, ax
	movsx	eax, cx
	add	eax, 1
	cmp	eax, 0xffff8000
	jl	.label_417
	mov	eax, 0x7fff
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	mov	dx, cx
	movsx	ecx, dx
	add	ecx, 1
	cmp	eax, ecx
	jge	.label_472
.label_417:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	mov	dx, cx
	movsx	ecx, dx
	add	ecx, 1
	mov	dx, cx
	movsx	ecx, dx
	mov	dword ptr [rbp - 0xc], ecx
	test	al, 1
	jne	.label_389
	jmp	.label_385
.label_472:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	dx, ax
	movsx	eax, dx
	add	eax, 1
	mov	dx, ax
	movsx	eax, dx
	mov	dword ptr [rbp - 0xc], eax
	test	cl, 1
	jne	.label_389
	jmp	.label_385
.label_408:
	mov	al, 1
	test	al, 1
	jne	.label_489
	jmp	.label_493
.label_489:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_495
	jmp	.label_501
.label_495:
	cmp	dword ptr [dword ptr [chars_per_column]],  0x7fffffff
	jl	.label_503
	jmp	.label_511
.label_501:
	mov	eax, 0x7ffffffe
	cmp	eax,  dword ptr [dword ptr [chars_per_column]]
	jl	.label_503
	jmp	.label_511
.label_493:
	cmp	dword ptr [dword ptr [chars_per_column]],  0
	jge	.label_513
	mov	eax, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_503
	jmp	.label_511
.label_513:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_528
	jmp	.label_706
.label_528:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_503
	jmp	.label_511
.label_706:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	add	eax, 1
	cmp	eax, 1
	jl	.label_503
.label_511:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	add	eax, 1
	cmp	eax, 0xffff8000
	jl	.label_503
	mov	eax, 0x7fff
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	cmp	eax, ecx
	jge	.label_543
.label_503:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	mov	dx, cx
	movsx	ecx, dx
	mov	dword ptr [rbp - 0xc], ecx
	test	al, 1
	jne	.label_389
	jmp	.label_385
.label_543:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	add	eax, 1
	mov	dx, ax
	movsx	eax, dx
	mov	dword ptr [rbp - 0xc], eax
	test	cl, 1
	jne	.label_389
	jmp	.label_385
.label_401:
	mov	al, 1
	test	al, 1
	jne	.label_566
	jmp	.label_569
.label_566:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_572
	jmp	.label_575
.label_572:
	mov	al, 1
	test	al, 1
	jne	.label_578
	jmp	.label_581
.label_578:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_584
	jmp	.label_588
.label_584:
	cmp	dword ptr [dword ptr [chars_per_column]],  0x7fffffff
	jl	.label_590
	jmp	.label_594
.label_588:
	mov	eax, 0x7ffffffe
	cmp	eax,  dword ptr [dword ptr [chars_per_column]]
	jl	.label_590
	jmp	.label_594
.label_581:
	cmp	dword ptr [dword ptr [chars_per_column]],  0
	jge	.label_607
	mov	eax, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_590
	jmp	.label_594
.label_607:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_686
	jmp	.label_617
.label_686:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_590
	jmp	.label_594
.label_617:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	add	eax, 1
	cmp	eax, 1
	jl	.label_590
.label_594:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	add	eax, 1
	cmp	eax, 0x80000000
	jl	.label_590
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	cmp	eax, ecx
	jge	.label_628
.label_590:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	mov	dword ptr [rbp - 0xc], ecx
	test	al, 1
	jne	.label_389
	jmp	.label_385
.label_628:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	test	cl, 1
	jne	.label_389
	jmp	.label_385
.label_575:
	mov	al, 1
	test	al, 1
	jne	.label_458
	jmp	.label_643
.label_458:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_644
	jmp	.label_647
.label_644:
	cmp	dword ptr [dword ptr [chars_per_column]],  0x7fffffff
	jl	.label_650
	jmp	.label_639
.label_647:
	mov	eax, 0x7ffffffe
	cmp	eax,  dword ptr [dword ptr [chars_per_column]]
	jl	.label_650
	jmp	.label_639
.label_643:
	cmp	dword ptr [dword ptr [chars_per_column]],  0
	jge	.label_659
	mov	eax, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_650
	jmp	.label_639
.label_659:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_670
	jmp	.label_425
.label_670:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_650
	jmp	.label_639
.label_425:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	add	eax, 1
	cmp	eax, 1
	jl	.label_650
.label_639:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	add	eax, 1
	cmp	eax, 0x80000000
	jl	.label_650
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	cmp	eax, ecx
	jge	.label_730
.label_650:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	mov	dword ptr [rbp - 0xc], ecx
	test	al, 1
	jne	.label_389
	jmp	.label_385
.label_730:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	test	cl, 1
	jne	.label_389
	jmp	.label_385
.label_569:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_810
	jmp	.label_698
.label_810:
	mov	al, 1
	test	al, 1
	jne	.label_699
	jmp	.label_700
.label_699:
	mov	al, 1
	test	al, 1
	jne	.label_702
	jmp	.label_704
.label_702:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_707
	jmp	.label_709
.label_707:
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx,  dword ptr [dword ptr [chars_per_column]]
	cmp	rcx, rax
	jl	.label_712
	jmp	.label_553
.label_709:
	movabs	rax, 0x7ffffffffffffffe
	movsxd	rcx,  dword ptr [dword ptr [chars_per_column]]
	cmp	rax, rcx
	jl	.label_712
	jmp	.label_553
.label_704:
	movsxd	rax,  dword ptr [dword ptr [chars_per_column]]
	cmp	rax, 0
	jge	.label_728
	mov	eax, 1
	mov	ecx, eax
	movsxd	rdx,  dword ptr [dword ptr [chars_per_column]]
	add	rdx, 1
	cmp	rcx, rdx
	jle	.label_712
	jmp	.label_553
.label_728:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_736
	jmp	.label_737
.label_736:
	movsxd	rax,  dword ptr [dword ptr [chars_per_column]]
	movsxd	rcx,  dword ptr [dword ptr [chars_per_column]]
	add	rcx, 1
	cmp	rax, rcx
	jle	.label_712
	jmp	.label_553
.label_737:
	movsxd	rax,  dword ptr [dword ptr [chars_per_column]]
	add	rax, 1
	cmp	rax, 1
	jl	.label_712
.label_553:
	movabs	rax, 0x8000000000000000
	movsxd	rcx,  dword ptr [dword ptr [chars_per_column]]
	add	rcx, 1
	cmp	rcx, rax
	jl	.label_712
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx,  dword ptr [dword ptr [chars_per_column]]
	add	rcx, 1
	cmp	rax, rcx
	jge	.label_752
.label_712:
	mov	al, 1
	movsxd	rcx,  dword ptr [dword ptr [chars_per_column]]
	add	rcx, 1
	mov	edx, ecx
	mov	dword ptr [rbp - 0xc], edx
	test	al, 1
	jne	.label_389
	jmp	.label_385
.label_752:
	xor	eax, eax
	mov	cl, al
	movsxd	rdx,  dword ptr [dword ptr [chars_per_column]]
	add	rdx, 1
	mov	eax, edx
	mov	dword ptr [rbp - 0xc], eax
	test	cl, 1
	jne	.label_389
	jmp	.label_385
.label_700:
	mov	al, 1
	test	al, 1
	jne	.label_767
	jmp	.label_769
.label_767:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_772
	jmp	.label_777
.label_772:
	cmp	dword ptr [dword ptr [chars_per_column]],  0x7fffffff
	jl	.label_558
	jmp	.label_508
.label_777:
	mov	eax, 0x7ffffffe
	cmp	eax,  dword ptr [dword ptr [chars_per_column]]
	jl	.label_558
	jmp	.label_508
.label_769:
	cmp	dword ptr [dword ptr [chars_per_column]],  0
	jge	.label_786
	mov	eax, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_558
	jmp	.label_508
.label_786:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_620
	jmp	.label_634
.label_620:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_558
	jmp	.label_508
.label_634:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	add	eax, 1
	cmp	eax, 1
	jl	.label_558
.label_508:
	movabs	rax, 0x8000000000000000
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	movsxd	rdx, ecx
	cmp	rdx, rax
	jl	.label_558
	movabs	rax, 0x7fffffffffffffff
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	movsxd	rdx, ecx
	cmp	rax, rdx
	jge	.label_805
.label_558:
	mov	al, 1
	movsxd	rcx,  dword ptr [dword ptr [chars_per_column]]
	add	rcx, 1
	mov	edx, ecx
	mov	dword ptr [rbp - 0xc], edx
	test	al, 1
	jne	.label_389
	jmp	.label_385
.label_805:
	xor	eax, eax
	mov	cl, al
	movsxd	rdx,  dword ptr [dword ptr [chars_per_column]]
	add	rdx, 1
	mov	eax, edx
	mov	dword ptr [rbp - 0xc], eax
	test	cl, 1
	jne	.label_389
	jmp	.label_385
.label_698:
	mov	al, 1
	test	al, 1
	jne	.label_695
	jmp	.label_392
.label_695:
	mov	al, 1
	test	al, 1
	jne	.label_393
	jmp	.label_397
.label_393:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_398
	jmp	.label_405
.label_398:
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx,  dword ptr [dword ptr [chars_per_column]]
	cmp	rcx, rax
	jl	.label_407
	jmp	.label_415
.label_405:
	movabs	rax, 0x7ffffffffffffffe
	movsxd	rcx,  dword ptr [dword ptr [chars_per_column]]
	cmp	rax, rcx
	jl	.label_407
	jmp	.label_415
.label_397:
	movsxd	rax,  dword ptr [dword ptr [chars_per_column]]
	cmp	rax, 0
	jge	.label_421
	mov	eax, 1
	mov	ecx, eax
	movsxd	rdx,  dword ptr [dword ptr [chars_per_column]]
	add	rdx, 1
	cmp	rcx, rdx
	jle	.label_407
	jmp	.label_415
.label_421:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_641
	jmp	.label_654
.label_641:
	movsxd	rax,  dword ptr [dword ptr [chars_per_column]]
	movsxd	rcx,  dword ptr [dword ptr [chars_per_column]]
	add	rcx, 1
	cmp	rax, rcx
	jle	.label_407
	jmp	.label_415
.label_654:
	movsxd	rax,  dword ptr [dword ptr [chars_per_column]]
	add	rax, 1
	cmp	rax, 1
	jl	.label_407
.label_415:
	movabs	rax, 0x8000000000000000
	movsxd	rcx,  dword ptr [dword ptr [chars_per_column]]
	add	rcx, 1
	cmp	rcx, rax
	jl	.label_407
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx,  dword ptr [dword ptr [chars_per_column]]
	add	rcx, 1
	cmp	rax, rcx
	jge	.label_753
.label_407:
	mov	al, 1
	movsxd	rcx,  dword ptr [dword ptr [chars_per_column]]
	add	rcx, 1
	mov	edx, ecx
	mov	dword ptr [rbp - 0xc], edx
	test	al, 1
	jne	.label_389
	jmp	.label_385
.label_753:
	xor	eax, eax
	mov	cl, al
	movsxd	rdx,  dword ptr [dword ptr [chars_per_column]]
	add	rdx, 1
	mov	eax, edx
	mov	dword ptr [rbp - 0xc], eax
	test	cl, 1
	jne	.label_389
	jmp	.label_385
.label_392:
	mov	al, 1
	test	al, 1
	jne	.label_480
	jmp	.label_482
.label_480:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_483
	jmp	.label_481
.label_483:
	cmp	dword ptr [dword ptr [chars_per_column]],  0x7fffffff
	jl	.label_485
	jmp	.label_492
.label_481:
	mov	eax, 0x7ffffffe
	cmp	eax,  dword ptr [dword ptr [chars_per_column]]
	jl	.label_485
	jmp	.label_492
.label_482:
	cmp	dword ptr [dword ptr [chars_per_column]],  0
	jge	.label_494
	mov	eax, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_485
	jmp	.label_492
.label_494:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_747
	jmp	.label_509
.label_747:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_485
	jmp	.label_492
.label_509:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	add	eax, 1
	cmp	eax, 1
	jl	.label_485
.label_492:
	movabs	rax, 0x8000000000000000
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	movsxd	rdx, ecx
	cmp	rdx, rax
	jl	.label_485
	movabs	rax, 0x7fffffffffffffff
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	movsxd	rdx, ecx
	cmp	rax, rdx
	jge	.label_534
.label_485:
	mov	al, 1
	movsxd	rcx,  dword ptr [dword ptr [chars_per_column]]
	add	rcx, 1
	mov	edx, ecx
	mov	dword ptr [rbp - 0xc], edx
	test	al, 1
	jne	.label_389
	jmp	.label_385
.label_534:
	xor	eax, eax
	mov	cl, al
	movsxd	rdx,  dword ptr [dword ptr [chars_per_column]]
	add	rdx, 1
	mov	eax, edx
	mov	dword ptr [rbp - 0xc], eax
	test	cl, 1
	jne	.label_389
.label_385:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_550
	jmp	.label_554
.label_550:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_555
	jmp	.label_428
.label_555:
	mov	eax, dword ptr [rbp - 0xc]
	mov	cl, al
	movsx	eax, cl
	cmp	eax, 0
	jge	.label_560
	mov	eax, dword ptr [rbp - 4]
	mov	cl, al
	movsx	eax, cl
	cmp	eax, 0
	jge	.label_565
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 4]
	mov	dl, cl
	movsx	ecx, dl
	mov	esi, dword ptr [rbp - 0xc]
	mov	dl, sil
	movsx	esi, dl
	cdq	
	idiv	esi
	cmp	ecx, eax
	jl	.label_573
	jmp	.label_546
.label_565:
	mov	eax, dword ptr [rbp - 0xc]
	mov	cl, al
	movsx	eax, cl
	cmp	eax, -1
	jne	.label_586
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_573
	jmp	.label_546
.label_586:
	mov	eax, 0x80000000
	mov	ecx, dword ptr [rbp - 0xc]
	mov	dl, cl
	movsx	ecx, dl
	cdq	
	idiv	ecx
	mov	ecx, dword ptr [rbp - 4]
	mov	sil, cl
	movsx	ecx, sil
	cmp	eax, ecx
	jl	.label_573
	jmp	.label_546
.label_560:
	mov	eax, dword ptr [rbp - 0xc]
	mov	cl, al
	movsx	eax, cl
	cmp	eax, 0
	jne	.label_612
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_573
	jmp	.label_546
.label_612:
	mov	eax, dword ptr [rbp - 4]
	mov	cl, al
	movsx	eax, cl
	cmp	eax, 0
	jge	.label_616
	mov	eax, 0x80000000
	mov	ecx, dword ptr [rbp - 4]
	mov	dl, cl
	movsx	ecx, dl
	mov	esi, dword ptr [rbp - 0xc]
	mov	dl, sil
	movsx	esi, dl
	cdq	
	idiv	esi
	cmp	ecx, eax
	jl	.label_573
	jmp	.label_546
.label_616:
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 0xc]
	mov	dl, cl
	movsx	ecx, dl
	cdq	
	idiv	ecx
	mov	ecx, dword ptr [rbp - 4]
	mov	sil, cl
	movsx	ecx, sil
	cmp	eax, ecx
	jl	.label_573
.label_546:
	mov	eax, dword ptr [rbp - 4]
	mov	cl, al
	movsx	eax, cl
	mov	edx, dword ptr [rbp - 0xc]
	mov	cl, dl
	movsx	edx, cl
	imul	eax, edx
	cmp	eax, -0x80
	jl	.label_573
	mov	eax, 0x7f
	mov	ecx, dword ptr [rbp - 4]
	mov	dl, cl
	movsx	ecx, dl
	mov	esi, dword ptr [rbp - 0xc]
	mov	dl, sil
	movsx	esi, dl
	imul	ecx, esi
	cmp	eax, ecx
	jge	.label_637
.label_573:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 4]
	mov	dl, cl
	movsx	ecx, dl
	mov	esi, dword ptr [rbp - 0xc]
	mov	dl, sil
	movsx	esi, dl
	imul	ecx, esi
	mov	dl, cl
	movsx	ecx, dl
	mov	dword ptr [rbp - 0x10], ecx
	test	al, 1
	jne	.label_389
	jmp	.label_402
.label_637:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 4]
	mov	dl, al
	movsx	eax, dl
	mov	esi, dword ptr [rbp - 0xc]
	mov	dl, sil
	movsx	esi, dl
	imul	eax, esi
	mov	dl, al
	movsx	eax, dl
	mov	dword ptr [rbp - 0x10], eax
	test	cl, 1
	jne	.label_389
	jmp	.label_402
.label_428:
	cmp	dword ptr [rbp - 0xc], 0
	jge	.label_562
	cmp	dword ptr [rbp - 4], 0
	jge	.label_663
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 4]
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	ecx, eax
	jl	.label_576
	jmp	.label_664
.label_663:
	cmp	dword ptr [rbp - 0xc], -1
	jne	.label_632
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_576
	jmp	.label_664
.label_632:
	mov	eax, 0x80000000
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	eax, dword ptr [rbp - 4]
	jl	.label_576
	jmp	.label_664
.label_562:
	cmp	dword ptr [rbp - 0xc], 0
	jne	.label_676
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_576
	jmp	.label_664
.label_676:
	cmp	dword ptr [rbp - 4], 0
	jge	.label_457
	mov	eax, 0x80000000
	mov	ecx, dword ptr [rbp - 4]
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	ecx, eax
	jl	.label_576
	jmp	.label_664
.label_457:
	mov	eax, 0x7fffffff
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	eax, dword ptr [rbp - 4]
	jl	.label_576
.label_664:
	mov	eax, dword ptr [rbp - 4]
	imul	eax, dword ptr [rbp - 0xc]
	cmp	eax, -0x80
	jl	.label_576
	mov	eax, 0x7f
	mov	ecx, dword ptr [rbp - 4]
	imul	ecx, dword ptr [rbp - 0xc]
	cmp	eax, ecx
	jge	.label_797
.label_576:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 4]
	imul	ecx, dword ptr [rbp - 0xc]
	mov	dl, cl
	movsx	ecx, dl
	mov	dword ptr [rbp - 0x10], ecx
	test	al, 1
	jne	.label_389
	jmp	.label_402
.label_797:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 4]
	imul	eax, dword ptr [rbp - 0xc]
	mov	dl, al
	movsx	eax, dl
	mov	dword ptr [rbp - 0x10], eax
	test	cl, 1
	jne	.label_389
	jmp	.label_402
.label_554:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_711
	jmp	.label_715
.label_711:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_491
	jmp	.label_518
.label_491:
	mov	eax, dword ptr [rbp - 0xc]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	jge	.label_783
	mov	eax, dword ptr [rbp - 4]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	jge	.label_725
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 4]
	mov	dx, cx
	movsx	ecx, dx
	mov	esi, dword ptr [rbp - 0xc]
	mov	dx, si
	movsx	esi, dx
	cdq	
	idiv	esi
	cmp	ecx, eax
	jl	.label_434
	jmp	.label_649
.label_725:
	mov	eax, dword ptr [rbp - 0xc]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, -1
	jne	.label_812
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_434
	jmp	.label_649
.label_812:
	mov	eax, 0x80000000
	mov	ecx, dword ptr [rbp - 0xc]
	mov	dx, cx
	movsx	ecx, dx
	cdq	
	idiv	ecx
	mov	ecx, dword ptr [rbp - 4]
	mov	si, cx
	movsx	ecx, si
	cmp	eax, ecx
	jl	.label_434
	jmp	.label_649
.label_783:
	mov	eax, dword ptr [rbp - 0xc]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	jne	.label_745
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_434
	jmp	.label_649
.label_745:
	mov	eax, dword ptr [rbp - 4]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	jge	.label_678
	mov	eax, 0x80000000
	mov	ecx, dword ptr [rbp - 4]
	mov	dx, cx
	movsx	ecx, dx
	mov	esi, dword ptr [rbp - 0xc]
	mov	dx, si
	movsx	esi, dx
	cdq	
	idiv	esi
	cmp	ecx, eax
	jl	.label_434
	jmp	.label_649
.label_678:
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 0xc]
	mov	dx, cx
	movsx	ecx, dx
	cdq	
	idiv	ecx
	mov	ecx, dword ptr [rbp - 4]
	mov	si, cx
	movsx	ecx, si
	cmp	eax, ecx
	jl	.label_434
.label_649:
	mov	eax, dword ptr [rbp - 4]
	mov	cx, ax
	movsx	eax, cx
	mov	edx, dword ptr [rbp - 0xc]
	mov	cx, dx
	movsx	edx, cx
	imul	eax, edx
	cmp	eax, 0xffff8000
	jl	.label_434
	mov	eax, 0x7fff
	mov	ecx, dword ptr [rbp - 4]
	mov	dx, cx
	movsx	ecx, dx
	mov	esi, dword ptr [rbp - 0xc]
	mov	dx, si
	movsx	esi, dx
	imul	ecx, esi
	cmp	eax, ecx
	jge	.label_775
.label_434:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 4]
	mov	dx, cx
	movsx	ecx, dx
	mov	esi, dword ptr [rbp - 0xc]
	mov	dx, si
	movsx	esi, dx
	imul	ecx, esi
	mov	dx, cx
	movsx	ecx, dx
	mov	dword ptr [rbp - 0x10], ecx
	test	al, 1
	jne	.label_389
	jmp	.label_402
.label_775:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 4]
	mov	dx, ax
	movsx	eax, dx
	mov	esi, dword ptr [rbp - 0xc]
	mov	dx, si
	movsx	esi, dx
	imul	eax, esi
	mov	dx, ax
	movsx	eax, dx
	mov	dword ptr [rbp - 0x10], eax
	test	cl, 1
	jne	.label_389
	jmp	.label_402
.label_518:
	cmp	dword ptr [rbp - 0xc], 0
	jge	.label_798
	cmp	dword ptr [rbp - 4], 0
	jge	.label_800
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 4]
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	ecx, eax
	jl	.label_384
	jmp	.label_381
.label_800:
	cmp	dword ptr [rbp - 0xc], -1
	jne	.label_803
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_384
	jmp	.label_381
.label_803:
	mov	eax, 0x80000000
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	eax, dword ptr [rbp - 4]
	jl	.label_384
	jmp	.label_381
.label_798:
	cmp	dword ptr [rbp - 0xc], 0
	jne	.label_807
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_384
	jmp	.label_381
.label_807:
	cmp	dword ptr [rbp - 4], 0
	jge	.label_815
	mov	eax, 0x80000000
	mov	ecx, dword ptr [rbp - 4]
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	ecx, eax
	jl	.label_384
	jmp	.label_381
.label_815:
	mov	eax, 0x7fffffff
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	eax, dword ptr [rbp - 4]
	jl	.label_384
.label_381:
	mov	eax, dword ptr [rbp - 4]
	imul	eax, dword ptr [rbp - 0xc]
	cmp	eax, 0xffff8000
	jl	.label_384
	mov	eax, 0x7fff
	mov	ecx, dword ptr [rbp - 4]
	imul	ecx, dword ptr [rbp - 0xc]
	cmp	eax, ecx
	jge	.label_455
.label_384:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 4]
	imul	ecx, dword ptr [rbp - 0xc]
	mov	dx, cx
	movsx	ecx, dx
	mov	dword ptr [rbp - 0x10], ecx
	test	al, 1
	jne	.label_389
	jmp	.label_402
.label_455:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 4]
	imul	eax, dword ptr [rbp - 0xc]
	mov	dx, ax
	movsx	eax, dx
	mov	dword ptr [rbp - 0x10], eax
	test	cl, 1
	jne	.label_389
	jmp	.label_402
.label_715:
	mov	al, 1
	test	al, 1
	jne	.label_571
	jmp	.label_424
.label_571:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_602
	jmp	.label_619
.label_602:
	cmp	dword ptr [rbp - 0xc], 0
	jge	.label_430
	cmp	dword ptr [rbp - 4], 0
	jge	.label_636
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 4]
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	ecx, eax
	jl	.label_446
	jmp	.label_442
.label_636:
	cmp	dword ptr [rbp - 0xc], -1
	jne	.label_642
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_446
	jmp	.label_442
.label_642:
	mov	eax, 0x80000000
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	eax, dword ptr [rbp - 4]
	jl	.label_446
	jmp	.label_442
.label_430:
	cmp	dword ptr [rbp - 0xc], 0
	jne	.label_579
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_446
	jmp	.label_442
.label_579:
	cmp	dword ptr [rbp - 4], 0
	jge	.label_463
	mov	eax, 0x80000000
	mov	ecx, dword ptr [rbp - 4]
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	ecx, eax
	jl	.label_446
	jmp	.label_442
.label_463:
	mov	eax, 0x7fffffff
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	eax, dword ptr [rbp - 4]
	jl	.label_446
.label_442:
	mov	eax, dword ptr [rbp - 4]
	imul	eax, dword ptr [rbp - 0xc]
	cmp	eax, 0x80000000
	jl	.label_446
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 4]
	imul	ecx, dword ptr [rbp - 0xc]
	cmp	eax, ecx
	jge	.label_475
.label_446:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 4]
	imul	ecx, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x10], ecx
	test	al, 1
	jne	.label_389
	jmp	.label_402
.label_475:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 4]
	imul	eax, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x10], eax
	test	cl, 1
	jne	.label_389
	jmp	.label_402
.label_619:
	cmp	dword ptr [rbp - 0xc], 0
	jge	.label_749
	cmp	dword ptr [rbp - 4], 0
	jge	.label_802
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 4]
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	ecx, eax
	jl	.label_436
	jmp	.label_499
.label_802:
	cmp	dword ptr [rbp - 0xc], -1
	jne	.label_502
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_436
	jmp	.label_499
.label_502:
	mov	eax, 0x80000000
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	eax, dword ptr [rbp - 4]
	jl	.label_436
	jmp	.label_499
.label_749:
	cmp	dword ptr [rbp - 0xc], 0
	jne	.label_515
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_436
	jmp	.label_499
.label_515:
	cmp	dword ptr [rbp - 4], 0
	jge	.label_524
	mov	eax, 0x80000000
	mov	ecx, dword ptr [rbp - 4]
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	ecx, eax
	jl	.label_436
	jmp	.label_499
.label_524:
	mov	eax, 0x7fffffff
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	eax, dword ptr [rbp - 4]
	jl	.label_436
.label_499:
	mov	eax, dword ptr [rbp - 4]
	imul	eax, dword ptr [rbp - 0xc]
	cmp	eax, 0x80000000
	jl	.label_436
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 4]
	imul	ecx, dword ptr [rbp - 0xc]
	cmp	eax, ecx
	jge	.label_536
.label_436:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 4]
	imul	ecx, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x10], ecx
	test	al, 1
	jne	.label_389
	jmp	.label_402
.label_536:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 4]
	imul	eax, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x10], eax
	test	cl, 1
	jne	.label_389
	jmp	.label_402
.label_424:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_411
	jmp	.label_427
.label_411:
	mov	al, 1
	test	al, 1
	jne	.label_557
	jmp	.label_559
.label_557:
	movsxd	rax, dword ptr [rbp - 0xc]
	cmp	rax, 0
	jge	.label_561
	movsxd	rax, dword ptr [rbp - 4]
	cmp	rax, 0
	jge	.label_564
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 4]
	movsxd	rdx, dword ptr [rbp - 0xc]
	mov	qword ptr [rbp - 0x38], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0x38]
	idiv	rsi
	cmp	rcx, rax
	jl	.label_570
	jmp	.label_549
.label_564:
	movsxd	rax, dword ptr [rbp - 0xc]
	cmp	rax, -1
	jne	.label_605
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_570
	jmp	.label_549
.label_605:
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 0xc]
	cqo	
	idiv	rcx
	movsxd	rcx, dword ptr [rbp - 4]
	cmp	rax, rcx
	jl	.label_570
	jmp	.label_549
.label_561:
	movsxd	rax, dword ptr [rbp - 0xc]
	cmp	rax, 0
	jne	.label_611
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_570
	jmp	.label_549
.label_611:
	movsxd	rax, dword ptr [rbp - 4]
	cmp	rax, 0
	jge	.label_739
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 4]
	movsxd	rdx, dword ptr [rbp - 0xc]
	mov	qword ptr [rbp - 0x40], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0x40]
	idiv	rsi
	cmp	rcx, rax
	jl	.label_570
	jmp	.label_549
.label_739:
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0xc]
	cqo	
	idiv	rcx
	movsxd	rcx, dword ptr [rbp - 4]
	cmp	rax, rcx
	jl	.label_570
.label_549:
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 4]
	movsxd	rdx, dword ptr [rbp - 0xc]
	imul	rcx, rdx
	cmp	rcx, rax
	jl	.label_570
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 4]
	movsxd	rdx, dword ptr [rbp - 0xc]
	imul	rcx, rdx
	cmp	rax, rcx
	jge	.label_382
.label_570:
	mov	al, 1
	movsxd	rcx, dword ptr [rbp - 4]
	movsxd	rdx, dword ptr [rbp - 0xc]
	imul	rcx, rdx
	mov	esi, ecx
	mov	dword ptr [rbp - 0x10], esi
	test	al, 1
	jne	.label_389
	jmp	.label_402
.label_382:
	xor	eax, eax
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 4]
	movsxd	rsi, dword ptr [rbp - 0xc]
	imul	rdx, rsi
	mov	eax, edx
	mov	dword ptr [rbp - 0x10], eax
	test	cl, 1
	jne	.label_389
	jmp	.label_402
.label_559:
	cmp	dword ptr [rbp - 0xc], 0
	jge	.label_757
	cmp	dword ptr [rbp - 4], 0
	jge	.label_657
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 4]
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	ecx, eax
	jl	.label_651
	jmp	.label_631
.label_657:
	cmp	dword ptr [rbp - 0xc], -1
	jne	.label_667
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_651
	jmp	.label_631
.label_667:
	mov	eax, 0x80000000
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	eax, dword ptr [rbp - 4]
	jl	.label_651
	jmp	.label_631
.label_757:
	cmp	dword ptr [rbp - 0xc], 0
	jne	.label_673
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_651
	jmp	.label_631
.label_673:
	cmp	dword ptr [rbp - 4], 0
	jge	.label_677
	mov	eax, 0x80000000
	mov	ecx, dword ptr [rbp - 4]
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	ecx, eax
	jl	.label_651
	jmp	.label_631
.label_677:
	mov	eax, 0x7fffffff
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	eax, dword ptr [rbp - 4]
	jl	.label_651
.label_631:
	movabs	rax, 0x8000000000000000
	mov	ecx, dword ptr [rbp - 4]
	imul	ecx, dword ptr [rbp - 0xc]
	movsxd	rdx, ecx
	cmp	rdx, rax
	jl	.label_651
	movabs	rax, 0x7fffffffffffffff
	mov	ecx, dword ptr [rbp - 4]
	imul	ecx, dword ptr [rbp - 0xc]
	movsxd	rdx, ecx
	cmp	rax, rdx
	jge	.label_691
.label_651:
	mov	al, 1
	movsxd	rcx, dword ptr [rbp - 4]
	movsxd	rdx, dword ptr [rbp - 0xc]
	imul	rcx, rdx
	mov	esi, ecx
	mov	dword ptr [rbp - 0x10], esi
	test	al, 1
	jne	.label_389
	jmp	.label_402
.label_691:
	xor	eax, eax
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 4]
	movsxd	rsi, dword ptr [rbp - 0xc]
	imul	rdx, rsi
	mov	eax, edx
	mov	dword ptr [rbp - 0x10], eax
	test	cl, 1
	jne	.label_389
	jmp	.label_402
.label_427:
	mov	al, 1
	test	al, 1
	jne	.label_439
	jmp	.label_714
.label_439:
	movsxd	rax, dword ptr [rbp - 0xc]
	cmp	rax, 0
	jge	.label_717
	movsxd	rax, dword ptr [rbp - 4]
	cmp	rax, 0
	jge	.label_471
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 4]
	movsxd	rdx, dword ptr [rbp - 0xc]
	mov	qword ptr [rbp - 0x48], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0x48]
	idiv	rsi
	cmp	rcx, rax
	jl	.label_609
	jmp	.label_604
.label_471:
	movsxd	rax, dword ptr [rbp - 0xc]
	cmp	rax, -1
	jne	.label_731
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_609
	jmp	.label_604
.label_731:
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 0xc]
	cqo	
	idiv	rcx
	movsxd	rcx, dword ptr [rbp - 4]
	cmp	rax, rcx
	jl	.label_609
	jmp	.label_604
.label_717:
	movsxd	rax, dword ptr [rbp - 0xc]
	cmp	rax, 0
	jne	.label_743
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_609
	jmp	.label_604
.label_743:
	movsxd	rax, dword ptr [rbp - 4]
	cmp	rax, 0
	jge	.label_746
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 4]
	movsxd	rdx, dword ptr [rbp - 0xc]
	mov	qword ptr [rbp - 0x50], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0x50]
	idiv	rsi
	cmp	rcx, rax
	jl	.label_609
	jmp	.label_604
.label_746:
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0xc]
	cqo	
	idiv	rcx
	movsxd	rcx, dword ptr [rbp - 4]
	cmp	rax, rcx
	jl	.label_609
.label_604:
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 4]
	movsxd	rdx, dword ptr [rbp - 0xc]
	imul	rcx, rdx
	cmp	rcx, rax
	jl	.label_609
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 4]
	movsxd	rdx, dword ptr [rbp - 0xc]
	imul	rcx, rdx
	cmp	rax, rcx
	jge	.label_809
.label_609:
	mov	al, 1
	movsxd	rcx, dword ptr [rbp - 4]
	movsxd	rdx, dword ptr [rbp - 0xc]
	imul	rcx, rdx
	mov	esi, ecx
	mov	dword ptr [rbp - 0x10], esi
	test	al, 1
	jne	.label_389
	jmp	.label_402
.label_809:
	xor	eax, eax
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 4]
	movsxd	rsi, dword ptr [rbp - 0xc]
	imul	rdx, rsi
	mov	eax, edx
	mov	dword ptr [rbp - 0x10], eax
	test	cl, 1
	jne	.label_389
	jmp	.label_402
.label_714:
	cmp	dword ptr [rbp - 0xc], 0
	jge	.label_433
	cmp	dword ptr [rbp - 4], 0
	jge	.label_790
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 4]
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	ecx, eax
	jl	.label_719
	jmp	.label_794
.label_790:
	cmp	dword ptr [rbp - 0xc], -1
	jne	.label_796
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_719
	jmp	.label_794
.label_796:
	mov	eax, 0x80000000
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	eax, dword ptr [rbp - 4]
	jl	.label_719
	jmp	.label_794
.label_433:
	cmp	dword ptr [rbp - 0xc], 0
	jne	.label_756
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_719
	jmp	.label_794
.label_756:
	cmp	dword ptr [rbp - 4], 0
	jge	.label_804
	mov	eax, 0x80000000
	mov	ecx, dword ptr [rbp - 4]
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	ecx, eax
	jl	.label_719
	jmp	.label_794
.label_804:
	mov	eax, 0x7fffffff
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	eax, dword ptr [rbp - 4]
	jl	.label_719
.label_794:
	movabs	rax, 0x8000000000000000
	mov	ecx, dword ptr [rbp - 4]
	imul	ecx, dword ptr [rbp - 0xc]
	movsxd	rdx, ecx
	cmp	rdx, rax
	jl	.label_719
	movabs	rax, 0x7fffffffffffffff
	mov	ecx, dword ptr [rbp - 4]
	imul	ecx, dword ptr [rbp - 0xc]
	movsxd	rdx, ecx
	cmp	rax, rdx
	jge	.label_817
.label_719:
	mov	al, 1
	movsxd	rcx, dword ptr [rbp - 4]
	movsxd	rdx, dword ptr [rbp - 0xc]
	imul	rcx, rdx
	mov	esi, ecx
	mov	dword ptr [rbp - 0x10], esi
	test	al, 1
	jne	.label_389
	jmp	.label_402
.label_817:
	xor	eax, eax
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 4]
	movsxd	rsi, dword ptr [rbp - 0xc]
	imul	rdx, rsi
	mov	eax, edx
	mov	dword ptr [rbp - 0x10], eax
	test	cl, 1
	jne	.label_389
	jmp	.label_402
.label_389:
	call	integer_overflow
.label_402:
	mov	rax,  qword ptr [word ptr [line_vector]]
	mov	rdi, rax
	call	free
	mov	ecx, 4
	mov	esi, ecx
	movsxd	rdi, dword ptr [rbp - 8]
	call	xnmalloc
	mov	qword ptr [word ptr [line_vector]],  rax
	mov	rax,  qword ptr [word ptr [end_vector]]
	mov	rdi, rax
	call	free
	mov	ecx, 4
	mov	esi, ecx
	movsxd	rdi, dword ptr [rbp - 4]
	call	xnmalloc
	mov	qword ptr [word ptr [end_vector]],  rax
	mov	rdi,  qword ptr [word ptr [buff]]
	call	free
	movsxd	rdi, dword ptr [rbp - 0x10]
	mov	dl,  byte ptr [byte ptr [use_col_separator]]
	and	dl, 1
	movzx	ecx, dl
	add	ecx, 1
	movsxd	rsi, ecx
	call	xnmalloc
	mov	qword ptr [word ptr [buff]],  rax
	movsxd	rax, dword ptr [rbp - 0x10]
	mov	qword ptr [word ptr [buff_allocated]],  rax
	mov	dl,  byte ptr [byte ptr [use_col_separator]]
	and	dl, 1
	movzx	ecx, dl
	add	ecx, 1
	movsxd	rax, ecx
	imul	rax,  qword ptr [word ptr [buff_allocated]]
	mov	qword ptr [word ptr [buff_allocated]],  rax
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409120

	.globl skip_to_page
	.type skip_to_page, @function
skip_to_page:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], 1
.label_832:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 8]
	jae	.label_829
	mov	dword ptr [rbp - 0x20], 1
.label_826:
	mov	eax, dword ptr [rbp - 0x20]
	cmp	eax,  dword ptr [dword ptr [lines_per_body]]
	jge	.label_819
	mov	dword ptr [rbp - 0x1c], 1
	mov	rax,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 0x18], rax
.label_825:
	mov	eax, dword ptr [rbp - 0x1c]
	cmp	eax,  dword ptr [dword ptr [columns]]
	jg	.label_831
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0x10], 0
	jne	.label_837
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x1c]
	call	skip_read
.label_837:
	jmp	.label_824
.label_824:
	mov	eax, dword ptr [rbp - 0x1c]
	add	eax, 1
	mov	dword ptr [rbp - 0x1c], eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x40
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_825
.label_831:
	jmp	.label_835
.label_835:
	mov	eax, dword ptr [rbp - 0x20]
	add	eax, 1
	mov	dword ptr [rbp - 0x20], eax
	jmp	.label_826
.label_819:
	mov	byte ptr [byte ptr [last_line]],  1
	mov	dword ptr [rbp - 0x1c], 1
	mov	rax,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 0x18], rax
.label_822:
	mov	eax, dword ptr [rbp - 0x1c]
	cmp	eax,  dword ptr [dword ptr [columns]]
	jg	.label_828
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0x10], 0
	jne	.label_834
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x1c]
	call	skip_read
.label_834:
	jmp	.label_820
.label_820:
	mov	eax, dword ptr [rbp - 0x1c]
	add	eax, 1
	mov	dword ptr [rbp - 0x1c], eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x40
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_822
.label_828:
	test	byte ptr [byte ptr [storing_columns]],  1
	je	.label_823
	mov	dword ptr [rbp - 0x1c], 1
	mov	rax,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 0x18], rax
.label_818:
	mov	eax, dword ptr [rbp - 0x1c]
	cmp	eax,  dword ptr [dword ptr [columns]]
	jg	.label_821
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0x10], 3
	je	.label_833
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax + 0x10], 2
.label_833:
	jmp	.label_836
.label_836:
	mov	eax, dword ptr [rbp - 0x1c]
	add	eax, 1
	mov	dword ptr [rbp - 0x1c], eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x40
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_818
.label_821:
	jmp	.label_823
.label_823:
	call	reset_status
	mov	byte ptr [byte ptr [last_line]],  0
	cmp	dword ptr [dword ptr [files_ready_to_read]],  1
	jge	.label_827
	movabs	rdi, OFFSET FLAT:.str.75
	call	gettext
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 8]
	mov	r8, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rdi
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	al, 0
	call	error
	jmp	.label_829
.label_827:
	jmp	.label_830
.label_830:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_832
.label_829:
	cmp	dword ptr [dword ptr [files_ready_to_read]],  0
	setg	al
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409320

	.globl init_funcs
	.type init_funcs, @function
init_funcs:
	push	rbp
	mov	rbp, rsp
	mov	eax,  dword ptr [dword ptr [chars_per_margin]]
	mov	dword ptr [rbp - 8], eax
	test	byte ptr [byte ptr [truncate_lines]],  1
	jne	.label_848
	mov	dword ptr [rbp - 0xc], 0
	jmp	.label_842
.label_848:
	test	byte ptr [byte ptr [parallel_files]],  1
	je	.label_841
	test	byte ptr [byte ptr [numbered_lines]],  1
	je	.label_841
	mov	eax, dword ptr [rbp - 8]
	add	eax,  dword ptr [dword ptr [chars_per_column]]
	add	eax,  dword ptr [dword ptr [number_width]]
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_849
.label_841:
	mov	eax, dword ptr [rbp - 8]
	add	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	dword ptr [rbp - 0xc], eax
.label_849:
	jmp	.label_842
.label_842:
	mov	eax, dword ptr [rbp - 8]
	add	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	dword ptr [rbp - 8], eax
	mov	rcx,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 0x18], rcx
	mov	dword ptr [rbp - 4], 1
.label_850:
	mov	eax, dword ptr [rbp - 4]
	cmp	eax,  dword ptr [dword ptr [columns]]
	jge	.label_846
	test	byte ptr [byte ptr [storing_columns]],  1
	je	.label_854
	movabs	rax, OFFSET FLAT:print_stored
	movabs	rcx, OFFSET FLAT:store_char
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x18], rax
	jmp	.label_843
.label_854:
	movabs	rax, OFFSET FLAT:read_line
	movabs	rcx, OFFSET FLAT:print_char
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x18], rax
.label_843:
	xor	eax, eax
	mov	cl, al
	test	byte ptr [byte ptr [numbered_lines]],  1
	mov	byte ptr [rbp - 0x19], cl
	je	.label_845
	mov	al, 1
	test	byte ptr [byte ptr [parallel_files]],  1
	mov	byte ptr [rbp - 0x1a], al
	je	.label_852
	cmp	dword ptr [rbp - 4], 1
	sete	al
	mov	byte ptr [rbp - 0x1a], al
.label_852:
	mov	al, byte ptr [rbp - 0x1a]
	mov	byte ptr [rbp - 0x19], al
.label_845:
	mov	al, byte ptr [rbp - 0x19]
	mov	rcx, qword ptr [rbp - 0x18]
	and	al, 1
	mov	byte ptr [rcx + 0x38], al
	mov	edx, dword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dword ptr [rcx + 0x34], edx
	test	byte ptr [byte ptr [truncate_lines]],  1
	jne	.label_844
	mov	dword ptr [rbp - 8], 0
	mov	dword ptr [rbp - 0xc], 0
	jmp	.label_840
.label_844:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	dword ptr [rbp - 8], eax
	mov	eax, dword ptr [rbp - 8]
	add	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	dword ptr [rbp - 0xc], eax
.label_840:
	jmp	.label_853
.label_853:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x40
	mov	qword ptr [rbp - 0x18], rax
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_850
.label_846:
	test	byte ptr [byte ptr [storing_columns]],  1
	je	.label_839
	test	byte ptr [byte ptr [balance_columns]],  1
	je	.label_839
	movabs	rax, OFFSET FLAT:print_stored
	movabs	rcx, OFFSET FLAT:store_char
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x18], rax
	jmp	.label_847
.label_839:
	movabs	rax, OFFSET FLAT:read_line
	movabs	rcx, OFFSET FLAT:print_char
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x18], rax
.label_847:
	xor	eax, eax
	mov	cl, al
	test	byte ptr [byte ptr [numbered_lines]],  1
	mov	byte ptr [rbp - 0x1b], cl
	je	.label_851
	mov	al, 1
	test	byte ptr [byte ptr [parallel_files]],  1
	mov	byte ptr [rbp - 0x1c], al
	je	.label_838
	cmp	dword ptr [rbp - 4], 1
	sete	al
	mov	byte ptr [rbp - 0x1c], al
.label_838:
	mov	al, byte ptr [rbp - 0x1c]
	mov	byte ptr [rbp - 0x1b], al
.label_851:
	mov	al, byte ptr [rbp - 0x1b]
	mov	rcx, qword ptr [rbp - 0x18]
	and	al, 1
	mov	byte ptr [rcx + 0x38], al
	mov	edx, dword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dword ptr [rcx + 0x34], edx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409580

	.globl print_page
	.type print_page, @function
print_page:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	call	init_page
	call	cols_ready_to_print
	cmp	eax, 0
	jne	.label_889
	mov	byte ptr [rbp - 1], 0
	jmp	.label_859
.label_889:
	test	byte ptr [byte ptr [extremities]],  1
	je	.label_870
	mov	byte ptr [byte ptr [print_a_header]],  1
.label_870:
	mov	byte ptr [byte ptr [pad_vertically]],  0
	mov	byte ptr [rbp - 0x19], 0
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	mov	dword ptr [rbp - 0xc], eax
	test	byte ptr [byte ptr [double_space]],  1
	je	.label_874
	mov	eax, dword ptr [rbp - 0xc]
	shl	eax, 1
	mov	dword ptr [rbp - 0xc], eax
.label_874:
	jmp	.label_881
.label_881:
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0xc], 0
	mov	byte ptr [rbp - 0x1a], cl
	jle	.label_888
	call	cols_ready_to_print
	cmp	eax, 0
	seta	cl
	mov	byte ptr [rbp - 0x1a], cl
.label_888:
	mov	al, byte ptr [rbp - 0x1a]
	test	al, 1
	jne	.label_858
	jmp	.label_866
.label_858:
	mov	dword ptr [dword ptr [output_position]],  0
	mov	dword ptr [dword ptr [spaces_not_printed]],  0
	mov	dword ptr [dword ptr [separators_not_printed]],  0
	mov	byte ptr [byte ptr [pad_vertically]],  0
	mov	byte ptr [byte ptr [align_empty_cols]],  0
	mov	byte ptr [byte ptr [empty_line]],  1
	mov	dword ptr [rbp - 8], 1
	mov	rax,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 0x18], rax
.label_880:
	mov	eax, dword ptr [rbp - 8]
	cmp	eax,  dword ptr [dword ptr [columns]]
	jg	.label_879
	mov	dword ptr [dword ptr [input_position]],  0
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0x30], 0
	jg	.label_890
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0x10], 1
	jne	.label_860
.label_890:
	mov	byte ptr [byte ptr [FF_only]],  0
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 0x34]
	mov	dword ptr [dword ptr [padding_not_printed]],  ecx
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x18]
	mov	rdi, qword ptr [rbp - 0x18]
	call	rax
	test	al, 1
	jne	.label_877
	mov	rdi, qword ptr [rbp - 0x18]
	call	read_rest_of_line
.label_877:
	mov	al,  byte ptr [byte ptr [pad_vertically]]
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	movzx	edx, al
	or	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rsi, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rsi + 0x30]
	add	ecx, -1
	mov	dword ptr [rsi + 0x30], ecx
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	dword ptr [rsi + 0x30], 0
	jg	.label_869
	call	cols_ready_to_print
	cmp	eax, 0
	jne	.label_864
	jmp	.label_879
.label_864:
	jmp	.label_869
.label_869:
	test	byte ptr [byte ptr [parallel_files]],  1
	je	.label_856
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0x10], 0
	je	.label_856
	test	byte ptr [byte ptr [empty_line]],  1
	je	.label_882
	mov	byte ptr [byte ptr [align_empty_cols]],  1
	jmp	.label_861
.label_882:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0x10], 3
	je	.label_891
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0x10], 2
	jne	.label_857
	test	byte ptr [byte ptr [FF_only]],  1
	je	.label_857
.label_891:
	mov	rdi, qword ptr [rbp - 0x18]
	call	align_column
.label_857:
	jmp	.label_861
.label_861:
	jmp	.label_856
.label_856:
	jmp	.label_855
.label_860:
	test	byte ptr [byte ptr [parallel_files]],  1
	je	.label_868
	test	byte ptr [byte ptr [empty_line]],  1
	je	.label_865
	mov	byte ptr [byte ptr [align_empty_cols]],  1
	jmp	.label_875
.label_865:
	mov	rdi, qword ptr [rbp - 0x18]
	call	align_column
.label_875:
	jmp	.label_868
.label_868:
	jmp	.label_855
.label_855:
	test	byte ptr [byte ptr [use_col_separator]],  1
	je	.label_885
	mov	eax,  dword ptr [dword ptr [separators_not_printed]]
	add	eax, 1
	mov	dword ptr [dword ptr [separators_not_printed]],  eax
.label_885:
	jmp	.label_892
.label_892:
	mov	eax, dword ptr [rbp - 8]
	add	eax, 1
	mov	dword ptr [rbp - 8], eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x40
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_880
.label_879:
	test	byte ptr [byte ptr [pad_vertically]],  1
	je	.label_867
	mov	edi, 0xa
	call	putchar_unlocked
	mov	edi, dword ptr [rbp - 0xc]
	add	edi, -1
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x20], eax
.label_867:
	call	cols_ready_to_print
	cmp	eax, 0
	jne	.label_878
	test	byte ptr [byte ptr [extremities]],  1
	jne	.label_878
	jmp	.label_866
.label_878:
	test	byte ptr [byte ptr [double_space]],  1
	je	.label_886
	test	byte ptr [rbp - 0x19], 1
	je	.label_886
	mov	edi, 0xa
	call	putchar_unlocked
	mov	edi, dword ptr [rbp - 0xc]
	add	edi, -1
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x24], eax
.label_886:
	jmp	.label_881
.label_866:
	cmp	dword ptr [rbp - 0xc], 0
	jne	.label_862
	mov	dword ptr [rbp - 8], 1
	mov	rax,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 0x18], rax
.label_884:
	mov	eax, dword ptr [rbp - 8]
	cmp	eax,  dword ptr [dword ptr [columns]]
	jg	.label_872
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0x10], 0
	jne	.label_876
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax + 0x39], 1
.label_876:
	jmp	.label_883
.label_883:
	mov	eax, dword ptr [rbp - 8]
	add	eax, 1
	mov	dword ptr [rbp - 8], eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x40
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_884
.label_872:
	jmp	.label_862
.label_862:
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	mov	byte ptr [byte ptr [pad_vertically]],  al
	test	byte ptr [byte ptr [pad_vertically]],  1
	je	.label_863
	test	byte ptr [byte ptr [extremities]],  1
	je	.label_863
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 5
	mov	edi, eax
	call	pad_down
	jmp	.label_871
.label_863:
	test	byte ptr [byte ptr [keep_FF]],  1
	je	.label_873
	test	byte ptr [byte ptr [print_a_FF]],  1
	je	.label_873
	mov	edi, 0xc
	call	putchar_unlocked
	mov	byte ptr [byte ptr [print_a_FF]],  0
	mov	dword ptr [rbp - 0x28], eax
.label_873:
	jmp	.label_871
.label_871:
	mov	rax,  qword ptr [word ptr [last_page_number]]
	mov	rcx,  qword ptr [word ptr [page_number]]
	add	rcx, 1
	mov	qword ptr [word ptr [page_number]],  rcx
	cmp	rax, rcx
	jae	.label_887
	mov	byte ptr [rbp - 1], 0
	jmp	.label_859
.label_887:
	call	reset_status
	mov	byte ptr [rbp - 1], 1
.label_859:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4099b0

	.globl open_file
	.type open_file, @function
open_file:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str.71
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_894
	movabs	rdi, OFFSET FLAT:.str.20
	call	gettext
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rdi + 8], rax
	mov	rax,  qword ptr [word ptr [stdin]]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rdi], rax
	mov	byte ptr [byte ptr [have_read_stdin]],  1
	jmp	.label_895
.label_894:
	movabs	rsi, OFFSET FLAT:.str.72
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 8], rax
	mov	rdi, qword ptr [rbp - 0x10]
	call	fopen_safer
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
.label_895:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	jne	.label_897
	mov	byte ptr [byte ptr [failed_opens]],  1
	test	byte ptr [byte ptr [ignore_failed_opens]],  1
	jne	.label_893
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x1c], ecx
	call	quotearg_n_style_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rbp - 0x1c]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_893:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_896
.label_897:
	mov	esi, 2
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax]
	call	fadvise
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax + 0x10], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax + 0x39], 0
	mov	esi,  dword ptr [dword ptr [total_files]]
	add	esi, 1
	mov	dword ptr [dword ptr [total_files]],  esi
	mov	byte ptr [rbp - 1], 1
.label_896:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409ae0

	.globl init_header
	.type init_header, @function
init_header:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x160
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	qword ptr [rbp - 0x18], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, OFFSET FLAT:.str.71
	call	strcmp
	cmp	eax, 0
	jne	.label_900
	mov	dword ptr [rbp - 0xc], 0xffffffff
.label_900:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0xc]
	jg	.label_903
	lea	rsi, [rbp - 0xa8]
	mov	edi, dword ptr [rbp - 0xc]
	call	__fstat
	cmp	eax, 0
	jne	.label_903
	lea	rdi, [rbp - 0xa8]
	call	get_stat_mtime
	mov	qword ptr [rbp - 0x108], rax
	mov	qword ptr [rbp - 0x100], rdx
	mov	rax, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0xb8], rax
	mov	rax, qword ptr [rbp - 0x100]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_899
.label_903:
	cmp	qword ptr [word ptr [init_header.timespec]],  0
	jne	.label_906
	movabs	rdi, OFFSET FLAT:init_header.timespec
	call	gettime
.label_906:
	mov	rax,  qword ptr [word ptr [init_header.timespec]]
	mov	qword ptr [rbp - 0xb8], rax
	mov	rax,  qword ptr [word ptr [label_902]]
	mov	qword ptr [rbp - 0xb0], rax
.label_899:
	lea	rdx, [rbp - 0xf8]
	lea	rsi, [rbp - 0xb8]
	mov	rax, qword ptr [rbp - 0xb0]
	mov	ecx, eax
	mov	dword ptr [rbp - 0xbc], ecx
	mov	rdi,  qword ptr [word ptr [localtz]]
	call	localtime_rz
	cmp	rax, 0
	je	.label_904
	xor	eax, eax
	mov	edi, eax
	mov	rsi, -1
	lea	rcx, [rbp - 0xf8]
	mov	rdx,  qword ptr [word ptr [date_format]]
	mov	r8,  qword ptr [word ptr [localtz]]
	mov	r9d, dword ptr [rbp - 0xbc]
	call	nstrftime
	add	rax, 1
	mov	qword ptr [rbp - 0x110], rax
	mov	rdi, qword ptr [rbp - 0x110]
	call	xmalloc
	lea	rcx, [rbp - 0xf8]
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x110]
	mov	rdx,  qword ptr [word ptr [date_format]]
	mov	r8,  qword ptr [word ptr [localtz]]
	mov	r9d, dword ptr [rbp - 0xbc]
	call	nstrftime
	mov	qword ptr [rbp - 0x138], rax
	jmp	.label_905
.label_904:
	mov	eax, 0x21
	mov	edi, eax
	call	xmalloc
	lea	rsi, [rbp - 0x130]
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0x140], rdi
	mov	rdi, rax
	call	timetostr
	movabs	rsi, OFFSET FLAT:.str.74
	mov	ecx, dword ptr [rbp - 0xbc]
	mov	rdi, qword ptr [rbp - 0x140]
	mov	rdx, rax
	mov	al, 0
	call	sprintf
	mov	dword ptr [rbp - 0x144], eax
.label_905:
	mov	rdi,  qword ptr [word ptr [date_text]]
	call	free
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [word ptr [date_text]],  rdi
	cmp	qword ptr [word ptr [custom_header]],  0
	je	.label_901
	mov	rax,  qword ptr [word ptr [custom_header]]
	mov	qword ptr [rbp - 0x150], rax
	jmp	.label_907
.label_901:
	cmp	dword ptr [rbp - 0xc], 0
	jge	.label_908
	movabs	rax, OFFSET FLAT:.str_0
	mov	qword ptr [rbp - 0x158], rax
	jmp	.label_898
.label_908:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x158], rax
.label_898:
	mov	rax, qword ptr [rbp - 0x158]
	mov	qword ptr [rbp - 0x150], rax
.label_907:
	mov	rax, qword ptr [rbp - 0x150]
	xor	esi, esi
	mov	qword ptr [word ptr [file_text]],  rax
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	mov	rdi,  qword ptr [word ptr [date_text]]
	mov	dword ptr [rbp - 0x15c], ecx
	call	gnu_mbswidth
	xor	esi, esi
	mov	ecx, dword ptr [rbp - 0x15c]
	sub	ecx, eax
	mov	rdi,  qword ptr [word ptr [file_text]]
	mov	dword ptr [rbp - 0x160], ecx
	call	gnu_mbswidth
	mov	ecx, dword ptr [rbp - 0x160]
	sub	ecx, eax
	mov	dword ptr [dword ptr [header_width_available]],  ecx
	add	rsp, 0x160
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409da0

	.globl timetostr
	.type timetostr, @function
timetostr:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	imaxtostr
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409dd0

	.globl skip_read
	.type skip_read, @function
skip_read:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x18], rdi
	mov	byte ptr [rbp - 0x1d], 0
	mov	rdi, qword ptr [rbp - 0x18]
	call	getc_unlocked
	mov	dword ptr [rbp - 0x10], eax
	cmp	eax, 0xc
	jne	.label_909
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x39], 1
	je	.label_909
	mov	rdi, qword ptr [rbp - 0x18]
	call	getc_unlocked
	mov	dword ptr [rbp - 0x10], eax
	cmp	eax, 0xa
	jne	.label_917
	mov	rdi, qword ptr [rbp - 0x18]
	call	getc_unlocked
	mov	dword ptr [rbp - 0x10], eax
.label_917:
	jmp	.label_909
.label_909:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x39], 0
	cmp	dword ptr [rbp - 0x10], 0xc
	jne	.label_913
	mov	byte ptr [rbp - 0x1d], 1
.label_913:
	test	byte ptr [byte ptr [last_line]],  1
	je	.label_915
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x39], 1
.label_915:
	jmp	.label_910
.label_910:
	cmp	dword ptr [rbp - 0x10], 0xa
	je	.label_916
	cmp	dword ptr [rbp - 0x10], 0xc
	jne	.label_922
	test	byte ptr [byte ptr [last_line]],  1
	je	.label_921
	test	byte ptr [byte ptr [parallel_files]],  1
	jne	.label_912
	mov	rax,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 0x28], rax
	mov	ecx,  dword ptr [dword ptr [columns]]
	mov	dword ptr [rbp - 0x1c], ecx
.label_926:
	cmp	dword ptr [rbp - 0x1c], 0
	je	.label_923
	mov	rax, qword ptr [rbp - 0x28]
	mov	byte ptr [rax + 0x39], 0
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x40
	mov	qword ptr [rbp - 0x28], rax
	mov	ecx, dword ptr [rbp - 0x1c]
	add	ecx, -1
	mov	dword ptr [rbp - 0x1c], ecx
	jmp	.label_926
.label_923:
	jmp	.label_911
.label_912:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x39], 0
.label_911:
	jmp	.label_921
.label_921:
	mov	rdi, qword ptr [rbp - 0x18]
	call	getc_unlocked
	mov	dword ptr [rbp - 0x10], eax
	cmp	eax, 0xa
	je	.label_924
	mov	edi, dword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	ungetc
	mov	dword ptr [rbp - 0x2c], eax
.label_924:
	mov	rdi, qword ptr [rbp - 8]
	call	hold_file
	jmp	.label_916
.label_922:
	cmp	dword ptr [rbp - 0x10], -1
	jne	.label_919
	mov	rdi, qword ptr [rbp - 8]
	call	close_file
	jmp	.label_916
.label_919:
	jmp	.label_925
.label_925:
	mov	rdi, qword ptr [rbp - 0x18]
	call	getc_unlocked
	mov	dword ptr [rbp - 0x10], eax
	jmp	.label_910
.label_916:
	test	byte ptr [byte ptr [skip_count]],  1
	je	.label_914
	test	byte ptr [byte ptr [parallel_files]],  1
	je	.label_920
	cmp	dword ptr [rbp - 0xc], 1
	jne	.label_918
.label_920:
	test	byte ptr [rbp - 0x1d], 1
	jne	.label_918
	mov	eax,  dword ptr [dword ptr [line_count]]
	add	eax, 1
	mov	dword ptr [dword ptr [line_count]],  eax
.label_918:
	jmp	.label_914
.label_914:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409fa0

	.globl reset_status
	.type reset_status, @function
reset_status:
	push	rbp
	mov	rbp, rsp
	mov	eax,  dword ptr [dword ptr [columns]]
	mov	dword ptr [rbp - 4], eax
	mov	rcx,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 0x10], rcx
.label_931:
	cmp	dword ptr [rbp - 4], 0
	je	.label_932
	mov	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0x10], 2
	jne	.label_927
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0x10], 0
	mov	ecx,  dword ptr [dword ptr [files_ready_to_read]]
	add	ecx, 1
	mov	dword ptr [dword ptr [files_ready_to_read]],  ecx
.label_927:
	jmp	.label_930
.label_930:
	mov	eax, dword ptr [rbp - 4]
	add	eax, -1
	mov	dword ptr [rbp - 4], eax
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 0x40
	mov	qword ptr [rbp - 0x10], rcx
	jmp	.label_931
.label_932:
	test	byte ptr [byte ptr [storing_columns]],  1
	je	.label_928
	mov	rax,  qword ptr [word ptr [column_vector]]
	cmp	dword ptr [rax + 0x10], 3
	jne	.label_933
	mov	dword ptr [dword ptr [files_ready_to_read]],  0
	jmp	.label_929
.label_933:
	mov	dword ptr [dword ptr [files_ready_to_read]],  1
.label_929:
	jmp	.label_928
.label_928:
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a050

	.globl hold_file
	.type hold_file, @function
hold_file:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	test	byte ptr [byte ptr [parallel_files]],  1
	jne	.label_934
	mov	rax,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 0x10], rax
	mov	ecx,  dword ptr [dword ptr [columns]]
	mov	dword ptr [rbp - 0x14], ecx
.label_936:
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_939
	test	byte ptr [byte ptr [storing_columns]],  1
	je	.label_940
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0x10], 1
	jmp	.label_937
.label_940:
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0x10], 2
.label_937:
	jmp	.label_938
.label_938:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x40
	mov	qword ptr [rbp - 0x10], rax
	mov	ecx, dword ptr [rbp - 0x14]
	add	ecx, -1
	mov	dword ptr [rbp - 0x14], ecx
	jmp	.label_936
.label_939:
	jmp	.label_935
.label_934:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x10], 2
.label_935:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x30], 0
	mov	ecx,  dword ptr [dword ptr [files_ready_to_read]]
	add	ecx, -1
	mov	dword ptr [dword ptr [files_ready_to_read]],  ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a100

	.globl close_file
	.type close_file, @function
close_file:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	dword ptr [rdi + 0x10], 3
	jne	.label_941
	jmp	.label_945
.label_941:
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	call	ferror_unlocked
	cmp	eax, 0
	je	.label_948
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rax + 8]
	mov	dword ptr [rbp - 0x18], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rbp - 0x18]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_948:
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	call	fileno
	cmp	eax, 0
	je	.label_943
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	call	rpl_fclose
	cmp	eax, 0
	je	.label_943
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rax + 8]
	mov	dword ptr [rbp - 0x1c], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rbp - 0x1c]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_943:
	test	byte ptr [byte ptr [parallel_files]],  1
	jne	.label_949
	mov	rax,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 0x10], rax
	mov	ecx,  dword ptr [dword ptr [columns]]
	mov	dword ptr [rbp - 0x14], ecx
.label_947:
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_950
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0x10], 3
	mov	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0x2c], 0
	jne	.label_942
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0x30], 0
.label_942:
	jmp	.label_946
.label_946:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x40
	mov	qword ptr [rbp - 0x10], rax
	mov	ecx, dword ptr [rbp - 0x14]
	add	ecx, -1
	mov	dword ptr [rbp - 0x14], ecx
	jmp	.label_947
.label_950:
	jmp	.label_944
.label_949:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x10], 3
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x30], 0
.label_944:
	mov	eax,  dword ptr [dword ptr [files_ready_to_read]]
	add	eax, -1
	mov	dword ptr [dword ptr [files_ready_to_read]],  eax
.label_945:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a280

	.globl store_char
	.type store_char, @function
store_char:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	al, dil
	mov	byte ptr [rbp - 1], al
	mov	edi,  dword ptr [dword ptr [buff_current]]
	mov	ecx, edi
	cmp	rcx,  qword ptr [word ptr [buff_allocated]]
	jb	.label_951
	movabs	rsi, OFFSET FLAT:buff_allocated
	mov	rdi,  qword ptr [word ptr [buff]]
	call	x2realloc
	mov	qword ptr [word ptr [buff]],  rax
.label_951:
	mov	al, byte ptr [rbp - 1]
	mov	ecx,  dword ptr [dword ptr [buff_current]]
	mov	edx, ecx
	add	edx, 1
	mov	dword ptr [dword ptr [buff_current]],  edx
	mov	ecx, ecx
	mov	esi, ecx
	mov	rdi,  qword ptr [word ptr [buff]]
	mov	byte ptr [rdi + rsi], al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a2f0

	.globl print_stored
	.type print_stored, @function
print_stored:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rdi + 0x28]
	mov	ecx, eax
	add	ecx, 1
	mov	dword ptr [rdi + 0x28], ecx
	mov	dword ptr [rbp - 0x1c], eax
	movsxd	rdi, dword ptr [rbp - 0x1c]
	mov	rdx,  qword ptr [word ptr [line_vector]]
	movsxd	rdx, dword ptr [rdx + rdi*4]
	add	rdx,  qword ptr [word ptr [buff]]
	mov	qword ptr [rbp - 0x28], rdx
	mov	eax, dword ptr [rbp - 0x1c]
	add	eax, 1
	movsxd	rdx, eax
	mov	rdi,  qword ptr [word ptr [line_vector]]
	movsxd	rdx, dword ptr [rdi + rdx*4]
	add	rdx,  qword ptr [word ptr [buff]]
	mov	qword ptr [rbp - 0x30], rdx
	mov	byte ptr [byte ptr [pad_vertically]],  1
	test	byte ptr [byte ptr [print_a_header]],  1
	je	.label_960
	call	print_header
.label_960:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0x10], 1
	jne	.label_959
	mov	dword ptr [rbp - 0x34], 1
	mov	rax,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 0x18], rax
.label_955:
	mov	eax, dword ptr [rbp - 0x34]
	cmp	eax,  dword ptr [dword ptr [columns]]
	jg	.label_953
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax + 0x10], 2
	mov	eax, dword ptr [rbp - 0x34]
	add	eax, 1
	mov	dword ptr [rbp - 0x34], eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x40
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_955
.label_953:
	mov	rax,  qword ptr [word ptr [column_vector]]
	cmp	dword ptr [rax + 0x30], 0
	jg	.label_963
	test	byte ptr [byte ptr [extremities]],  1
	jne	.label_954
	mov	byte ptr [byte ptr [pad_vertically]],  0
.label_954:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_957
.label_963:
	jmp	.label_959
.label_959:
	mov	eax,  dword ptr [dword ptr [col_sep_length]]
	cmp	eax,  dword ptr [dword ptr [padding_not_printed]]
	jge	.label_961
	mov	eax,  dword ptr [dword ptr [padding_not_printed]]
	sub	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	edi, eax
	call	pad_across_to
	mov	dword ptr [dword ptr [padding_not_printed]],  0
.label_961:
	test	byte ptr [byte ptr [use_col_separator]],  1
	je	.label_958
	call	print_sep_string
.label_958:
	jmp	.label_956
.label_956:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	je	.label_964
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	movsx	edi, byte ptr [rax]
	call	print_char
	jmp	.label_956
.label_964:
	cmp	dword ptr [dword ptr [spaces_not_printed]],  0
	jne	.label_952
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x34]
	movsxd	rax, dword ptr [rbp - 0x1c]
	mov	rdx,  qword ptr [word ptr [end_vector]]
	add	ecx, dword ptr [rdx + rax*4]
	mov	dword ptr [dword ptr [output_position]],  ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x34]
	sub	ecx,  dword ptr [dword ptr [col_sep_length]]
	cmp	ecx,  dword ptr [dword ptr [chars_per_margin]]
	jne	.label_962
	mov	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	ecx,  dword ptr [dword ptr [output_position]]
	sub	ecx, eax
	mov	dword ptr [dword ptr [output_position]],  ecx
.label_962:
	jmp	.label_952
.label_952:
	mov	byte ptr [rbp - 1], 1
.label_957:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a4e0

	.globl print_char
	.type print_char, @function
print_char:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	al, dil
	mov	byte ptr [rbp - 1], al
	test	byte ptr [byte ptr [tabify_output]],  1
	je	.label_965
	movsx	eax, byte ptr [rbp - 1]
	cmp	eax, 0x20
	jne	.label_971
	mov	eax,  dword ptr [dword ptr [spaces_not_printed]]
	add	eax, 1
	mov	dword ptr [dword ptr [spaces_not_printed]],  eax
	jmp	.label_968
.label_971:
	cmp	dword ptr [dword ptr [spaces_not_printed]],  0
	jle	.label_972
	call	print_white_space
.label_972:
	jmp	.label_970
.label_970:
	movsx	edi, byte ptr [rbp - 1]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x10], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x4000
	cmp	edi, 0
	jne	.label_969
	movsx	eax, byte ptr [rbp - 1]
	cmp	eax, 8
	jne	.label_966
	mov	eax,  dword ptr [dword ptr [output_position]]
	add	eax, -1
	mov	dword ptr [dword ptr [output_position]],  eax
.label_966:
	jmp	.label_967
.label_969:
	mov	eax,  dword ptr [dword ptr [output_position]]
	add	eax, 1
	mov	dword ptr [dword ptr [output_position]],  eax
.label_967:
	jmp	.label_965
.label_965:
	movsx	edi, byte ptr [rbp - 1]
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x14], eax
.label_968:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a5c0

	.globl read_line
	.type read_line, @function
read_line:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi]
	call	getc_unlocked
	mov	dword ptr [rbp - 0x14], eax
	mov	eax,  dword ptr [dword ptr [input_position]]
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0xc
	jne	.label_982
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x39], 1
	je	.label_982
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	call	getc_unlocked
	mov	dword ptr [rbp - 0x14], eax
	cmp	eax, 0xa
	jne	.label_976
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	call	getc_unlocked
	mov	dword ptr [rbp - 0x14], eax
.label_976:
	jmp	.label_982
.label_982:
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 0x39], 0
	mov	ecx, dword ptr [rbp - 0x14]
	mov	edx, ecx
	sub	edx, -1
	mov	dword ptr [rbp - 0x34], ecx
	mov	dword ptr [rbp - 0x38], edx
	je	.label_1007
	jmp	.label_994
.label_994:
	mov	eax, dword ptr [rbp - 0x34]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x3c], eax
	je	.label_995
	jmp	.label_998
.label_998:
	mov	eax, dword ptr [rbp - 0x34]
	sub	eax, 0xc
	mov	dword ptr [rbp - 0x40], eax
	jne	.label_999
	jmp	.label_1004
.label_1004:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	call	getc_unlocked
	mov	dword ptr [rbp - 0x14], eax
	cmp	eax, 0xa
	je	.label_1008
	mov	edi, dword ptr [rbp - 0x14]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rax]
	call	ungetc
	mov	dword ptr [rbp - 0x44], eax
.label_1008:
	mov	byte ptr [byte ptr [FF_only]],  1
	test	byte ptr [byte ptr [print_a_header]],  1
	je	.label_979
	test	byte ptr [byte ptr [storing_columns]],  1
	jne	.label_979
	mov	byte ptr [byte ptr [pad_vertically]],  1
	call	print_header
	jmp	.label_996
.label_979:
	test	byte ptr [byte ptr [keep_FF]],  1
	je	.label_997
	mov	byte ptr [byte ptr [print_a_FF]],  1
.label_997:
	jmp	.label_996
.label_996:
	mov	rdi, qword ptr [rbp - 0x10]
	call	hold_file
	mov	byte ptr [rbp - 1], 1
	jmp	.label_975
.label_1007:
	mov	rdi, qword ptr [rbp - 0x10]
	call	close_file
	mov	byte ptr [rbp - 1], 1
	jmp	.label_975
.label_995:
	jmp	.label_977
.label_999:
	mov	eax, dword ptr [rbp - 0x14]
	mov	cl, al
	movsx	edi, cl
	call	char_to_clump
	mov	dword ptr [rbp - 0x18], eax
.label_977:
	test	byte ptr [byte ptr [truncate_lines]],  1
	je	.label_983
	mov	eax,  dword ptr [dword ptr [input_position]]
	cmp	eax,  dword ptr [dword ptr [chars_per_column]]
	jle	.label_983
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [dword ptr [input_position]],  eax
	mov	byte ptr [rbp - 1], 0
	jmp	.label_975
.label_983:
	movabs	rax, OFFSET FLAT:store_char
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	qword ptr [rcx + 0x20], rax
	je	.label_984
	mov	byte ptr [byte ptr [pad_vertically]],  1
	test	byte ptr [byte ptr [print_a_header]],  1
	je	.label_990
	test	byte ptr [byte ptr [storing_columns]],  1
	jne	.label_990
	call	print_header
.label_990:
	test	byte ptr [byte ptr [parallel_files]],  1
	je	.label_985
	test	byte ptr [byte ptr [align_empty_cols]],  1
	je	.label_985
	mov	eax,  dword ptr [dword ptr [separators_not_printed]]
	mov	dword ptr [rbp - 0x24], eax
	mov	dword ptr [dword ptr [separators_not_printed]],  0
	mov	dword ptr [rbp - 0x20], 1
	mov	rcx,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 0x30], rcx
.label_1006:
	mov	eax, dword ptr [rbp - 0x20]
	cmp	eax, dword ptr [rbp - 0x24]
	jg	.label_993
	mov	rdi, qword ptr [rbp - 0x30]
	call	align_column
	mov	eax,  dword ptr [dword ptr [separators_not_printed]]
	add	eax, 1
	mov	dword ptr [dword ptr [separators_not_printed]],  eax
	mov	eax, dword ptr [rbp - 0x20]
	add	eax, 1
	mov	dword ptr [rbp - 0x20], eax
	mov	rcx, qword ptr [rbp - 0x30]
	add	rcx, 0x40
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_1006
.label_993:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x34]
	mov	dword ptr [dword ptr [padding_not_printed]],  ecx
	test	byte ptr [byte ptr [truncate_lines]],  1
	je	.label_981
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	dword ptr [dword ptr [spaces_not_printed]],  eax
	jmp	.label_1003
.label_981:
	mov	dword ptr [dword ptr [spaces_not_printed]],  0
.label_1003:
	mov	byte ptr [byte ptr [align_empty_cols]],  0
.label_985:
	mov	eax,  dword ptr [dword ptr [col_sep_length]]
	cmp	eax,  dword ptr [dword ptr [padding_not_printed]]
	jge	.label_1000
	mov	eax,  dword ptr [dword ptr [padding_not_printed]]
	sub	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	edi, eax
	call	pad_across_to
	mov	dword ptr [dword ptr [padding_not_printed]],  0
.label_1000:
	test	byte ptr [byte ptr [use_col_separator]],  1
	je	.label_974
	call	print_sep_string
.label_974:
	jmp	.label_984
.label_984:
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x38], 1
	je	.label_987
	mov	rdi, qword ptr [rbp - 0x10]
	call	add_line_number
.label_987:
	mov	byte ptr [byte ptr [empty_line]],  0
	cmp	dword ptr [rbp - 0x14], 0xa
	jne	.label_980
	mov	byte ptr [rbp - 1], 1
	jmp	.label_975
.label_980:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x18]
	mov	rdx,  qword ptr [word ptr [clump_buff]]
	call	print_clump
.label_1002:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	call	getc_unlocked
	mov	dword ptr [rbp - 0x14], eax
	mov	ecx, eax
	sub	eax, -1
	mov	dword ptr [rbp - 0x48], ecx
	mov	dword ptr [rbp - 0x4c], eax
	je	.label_973
	jmp	.label_978
.label_978:
	mov	eax, dword ptr [rbp - 0x48]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x50], eax
	je	.label_989
	jmp	.label_1005
.label_1005:
	mov	eax, dword ptr [rbp - 0x48]
	sub	eax, 0xc
	mov	dword ptr [rbp - 0x54], eax
	je	.label_986
	jmp	.label_992
.label_989:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_975
.label_986:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	call	getc_unlocked
	mov	dword ptr [rbp - 0x14], eax
	cmp	eax, 0xa
	je	.label_1001
	mov	edi, dword ptr [rbp - 0x14]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rax]
	call	ungetc
	mov	dword ptr [rbp - 0x58], eax
.label_1001:
	test	byte ptr [byte ptr [keep_FF]],  1
	je	.label_991
	mov	byte ptr [byte ptr [print_a_FF]],  1
.label_991:
	mov	rdi, qword ptr [rbp - 0x10]
	call	hold_file
	mov	byte ptr [rbp - 1], 1
	jmp	.label_975
.label_973:
	mov	rdi, qword ptr [rbp - 0x10]
	call	close_file
	mov	byte ptr [rbp - 1], 1
	jmp	.label_975
.label_992:
	mov	eax,  dword ptr [dword ptr [input_position]]
	mov	dword ptr [rbp - 0x1c], eax
	mov	eax, dword ptr [rbp - 0x14]
	mov	cl, al
	movsx	edi, cl
	call	char_to_clump
	mov	dword ptr [rbp - 0x18], eax
	test	byte ptr [byte ptr [truncate_lines]],  1
	je	.label_988
	mov	eax,  dword ptr [dword ptr [input_position]]
	cmp	eax,  dword ptr [dword ptr [chars_per_column]]
	jle	.label_988
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [dword ptr [input_position]],  eax
	mov	byte ptr [rbp - 1], 0
	jmp	.label_975
.label_988:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x18]
	mov	rdx,  qword ptr [word ptr [clump_buff]]
	call	print_clump
	jmp	.label_1002
.label_975:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40aa30

	.globl print_header
	.type print_header, @function
print_header:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x178
	mov	dword ptr [dword ptr [output_position]],  0
	mov	edi,  dword ptr [dword ptr [chars_per_margin]]
	call	pad_across_to
	call	print_white_space
	cmp	qword ptr [word ptr [page_number]],  0
	jne	.label_1009
	movabs	rdi, OFFSET FLAT:.str.76
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_1009:
	movabs	rdi, OFFSET FLAT:.str.77
	lea	rax, [rbp - 0x120]
	mov	qword ptr [rbp - 0x138], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [page_number]]
	mov	rdi, qword ptr [rbp - 0x138]
	mov	rsi, rax
	mov	al, 0
	call	sprintf
	xor	esi, esi
	lea	rdi, [rbp - 0x120]
	mov	ecx,  dword ptr [dword ptr [header_width_available]]
	mov	dword ptr [rbp - 0x13c], eax
	mov	dword ptr [rbp - 0x140], ecx
	call	gnu_mbswidth
	xor	ecx, ecx
	mov	esi, dword ptr [rbp - 0x140]
	sub	esi, eax
	mov	dword ptr [rbp - 0x124], esi
	cmp	ecx, dword ptr [rbp - 0x124]
	jle	.label_1011
	xor	eax, eax
	mov	dword ptr [rbp - 0x144], eax
	jmp	.label_1010
.label_1011:
	mov	eax, dword ptr [rbp - 0x124]
	mov	dword ptr [rbp - 0x144], eax
.label_1010:
	mov	eax, dword ptr [rbp - 0x144]
	movabs	rdi, OFFSET FLAT:.str.78
	movabs	rdx, OFFSET FLAT:.str_0
	movabs	rcx, OFFSET FLAT:.str.70
	lea	rsi, [rbp - 0x120]
	mov	dword ptr [rbp - 0x124], eax
	mov	eax, dword ptr [rbp - 0x124]
	sar	eax, 1
	mov	dword ptr [rbp - 0x128], eax
	mov	eax, dword ptr [rbp - 0x124]
	sub	eax, dword ptr [rbp - 0x128]
	mov	dword ptr [rbp - 0x12c], eax
	mov	eax,  dword ptr [dword ptr [chars_per_margin]]
	mov	r8,  qword ptr [word ptr [date_text]]
	mov	r9d, dword ptr [rbp - 0x128]
	mov	r10,  qword ptr [word ptr [file_text]]
	mov	r11d, dword ptr [rbp - 0x12c]
	mov	qword ptr [rbp - 0x150], rsi
	mov	esi, eax
	mov	qword ptr [rbp - 0x158], rcx
	mov	rcx, r8
	mov	r8d, r9d
	mov	r9, qword ptr [rbp - 0x158]
	mov	qword ptr [rsp], r10
	mov	dword ptr [rsp + 8], r11d
	mov	r10, qword ptr [rbp - 0x158]
	mov	qword ptr [rsp + 0x10], r10
	mov	rbx, qword ptr [rbp - 0x150]
	mov	qword ptr [rsp + 0x18], rbx
	mov	al, 0
	call	printf
	mov	byte ptr [byte ptr [print_a_header]],  0
	mov	dword ptr [dword ptr [output_position]],  0
	mov	dword ptr [rbp - 0x15c], eax
	add	rsp, 0x178
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ac00

	.globl pad_across_to
	.type pad_across_to, @function
pad_across_to:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	mov	edi,  dword ptr [dword ptr [output_position]]
	mov	dword ptr [rbp - 8], edi
	test	byte ptr [byte ptr [tabify_output]],  1
	je	.label_1012
	mov	eax, dword ptr [rbp - 4]
	sub	eax,  dword ptr [dword ptr [output_position]]
	mov	dword ptr [dword ptr [spaces_not_printed]],  eax
	jmp	.label_1013
.label_1012:
	jmp	.label_1014
.label_1014:
	mov	eax, dword ptr [rbp - 8]
	add	eax, 1
	mov	dword ptr [rbp - 8], eax
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_1015
	mov	edi, 0x20
	call	putchar_unlocked
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_1014
.label_1015:
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [dword ptr [output_position]],  eax
.label_1013:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ac80

	.globl print_sep_string
	.type print_sep_string, @function
print_sep_string:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [col_sep_string]]
	mov	qword ptr [rbp - 8], rax
	mov	ecx,  dword ptr [dword ptr [col_sep_length]]
	mov	dword ptr [rbp - 0xc], ecx
	cmp	dword ptr [dword ptr [separators_not_printed]],  0
	jg	.label_1016
	cmp	dword ptr [dword ptr [spaces_not_printed]],  0
	jle	.label_1023
	call	print_white_space
.label_1023:
	jmp	.label_1026
.label_1016:
	jmp	.label_1019
.label_1019:
	cmp	dword ptr [dword ptr [separators_not_printed]],  0
	jle	.label_1022
	jmp	.label_1021
.label_1021:
	mov	eax, dword ptr [rbp - 0xc]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0xc], ecx
	cmp	eax, 0
	jle	.label_1027
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x20
	jne	.label_1024
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	mov	ecx,  dword ptr [dword ptr [spaces_not_printed]]
	add	ecx, 1
	mov	dword ptr [dword ptr [spaces_not_printed]],  ecx
	jmp	.label_1017
.label_1024:
	cmp	dword ptr [dword ptr [spaces_not_printed]],  0
	jle	.label_1018
	call	print_white_space
.label_1018:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	movsx	edi, byte ptr [rax]
	call	putchar_unlocked
	mov	edi,  dword ptr [dword ptr [output_position]]
	add	edi, 1
	mov	dword ptr [dword ptr [output_position]],  edi
	mov	dword ptr [rbp - 0x10], eax
.label_1017:
	jmp	.label_1021
.label_1027:
	cmp	dword ptr [dword ptr [spaces_not_printed]],  0
	jle	.label_1020
	call	print_white_space
.label_1020:
	jmp	.label_1025
.label_1025:
	mov	eax,  dword ptr [dword ptr [separators_not_printed]]
	add	eax, -1
	mov	dword ptr [dword ptr [separators_not_printed]],  eax
	jmp	.label_1019
.label_1022:
	jmp	.label_1026
.label_1026:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ada0

	.globl print_white_space
	.type print_white_space, @function
print_white_space:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	eax,  dword ptr [dword ptr [output_position]]
	mov	dword ptr [rbp - 8], eax
	mov	eax, dword ptr [rbp - 8]
	add	eax,  dword ptr [dword ptr [spaces_not_printed]]
	mov	dword ptr [rbp - 0xc], eax
.label_1028:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, dword ptr [rbp - 8]
	cmp	eax, 1
	mov	byte ptr [rbp - 0xd], cl
	jle	.label_1033
	mov	eax, dword ptr [rbp - 8]
	mov	ecx,  dword ptr [dword ptr [chars_per_output_tab]]
	mov	edx, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x14], eax
	mov	eax, edx
	cdq	
	idiv	dword ptr [dword ptr [chars_per_output_tab]]
	sub	ecx, edx
	mov	edx, dword ptr [rbp - 0x14]
	add	edx, ecx
	mov	dword ptr [rbp - 4], edx
	cmp	edx, dword ptr [rbp - 0xc]
	setle	sil
	mov	byte ptr [rbp - 0xd], sil
.label_1033:
	mov	al, byte ptr [rbp - 0xd]
	test	al, 1
	jne	.label_1029
	jmp	.label_1032
.label_1029:
	movsx	edi,  byte ptr [byte ptr [output_tab_char]]
	call	putchar_unlocked
	mov	edi, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 8], edi
	mov	dword ptr [rbp - 0x18], eax
	jmp	.label_1028
.label_1032:
	jmp	.label_1030
.label_1030:
	mov	eax, dword ptr [rbp - 8]
	add	eax, 1
	mov	dword ptr [rbp - 8], eax
	cmp	eax, dword ptr [rbp - 0xc]
	jg	.label_1031
	mov	edi, 0x20
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_1030
.label_1031:
	mov	eax, dword ptr [rbp - 0xc]
	mov	dword ptr [dword ptr [output_position]],  eax
	mov	dword ptr [dword ptr [spaces_not_printed]],  0
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ae80

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
	#Procedure 0x40ae90

	.globl char_to_clump
	.type char_to_clump, @function
char_to_clump:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	al, dil
	mov	byte ptr [rbp - 1], al
	mov	al, byte ptr [rbp - 1]
	mov	byte ptr [rbp - 2], al
	mov	rcx,  qword ptr [word ptr [clump_buff]]
	mov	qword ptr [rbp - 0x10], rcx
	mov	dword ptr [rbp - 0x24], 8
	movsx	edi, byte ptr [rbp - 1]
	movsx	edx,  byte ptr [byte ptr [input_tab_char]]
	cmp	edi, edx
	jne	.label_1036
	mov	eax,  dword ptr [dword ptr [chars_per_input_tab]]
	mov	dword ptr [rbp - 0x24], eax
.label_1036:
	movsx	eax, byte ptr [rbp - 1]
	movsx	ecx,  byte ptr [byte ptr [input_tab_char]]
	cmp	eax, ecx
	je	.label_1050
	movsx	eax, byte ptr [rbp - 1]
	cmp	eax, 9
	jne	.label_1053
.label_1050:
	mov	eax, dword ptr [rbp - 0x24]
	mov	ecx,  dword ptr [dword ptr [input_position]]
	mov	dword ptr [rbp - 0x28], eax
	mov	eax, ecx
	cdq	
	idiv	dword ptr [rbp - 0x24]
	mov	ecx, dword ptr [rbp - 0x28]
	sub	ecx, edx
	mov	dword ptr [rbp - 0x1c], ecx
	test	byte ptr [byte ptr [untabify_input]],  1
	je	.label_1056
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x14], eax
.label_1043:
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_1040
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	byte ptr [rax], 0x20
	mov	eax, dword ptr [rbp - 0x14]
	add	eax, -1
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_1043
.label_1040:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x20], eax
	jmp	.label_1049
.label_1056:
	mov	al, byte ptr [rbp - 1]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rcx], al
	mov	dword ptr [rbp - 0x20], 1
.label_1049:
	jmp	.label_1051
.label_1053:
	movzx	eax, byte ptr [rbp - 2]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x30], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x4000
	cmp	edx, 0
	jne	.label_1059
	test	byte ptr [byte ptr [use_esc_sequence]],  1
	je	.label_1037
	movabs	rsi, OFFSET FLAT:.str.79
	lea	rdi, [rbp - 0x18]
	mov	dword ptr [rbp - 0x1c], 4
	mov	dword ptr [rbp - 0x20], 4
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	byte ptr [rax], 0x5c
	movzx	edx, byte ptr [rbp - 2]
	mov	al, 0
	call	sprintf
	mov	dword ptr [rbp - 0x14], 0
	mov	dword ptr [rbp - 0x34], eax
.label_1055:
	cmp	dword ptr [rbp - 0x14], 2
	jg	.label_1057
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	cl, byte ptr [rbp + rax - 0x18]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, rax
	add	rdx, 1
	mov	qword ptr [rbp - 0x10], rdx
	mov	byte ptr [rax], cl
	mov	eax, dword ptr [rbp - 0x14]
	add	eax, 1
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_1055
.label_1057:
	jmp	.label_1038
.label_1037:
	test	byte ptr [byte ptr [use_cntrl_prefix]],  1
	je	.label_1039
	movzx	eax, byte ptr [rbp - 2]
	cmp	eax, 0x80
	jge	.label_1042
	mov	dword ptr [rbp - 0x1c], 2
	mov	dword ptr [rbp - 0x20], 2
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	byte ptr [rax], 0x5e
	movsx	edx, byte ptr [rbp - 1]
	xor	edx, 0x40
	mov	sil, dl
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax], sil
	jmp	.label_1047
.label_1042:
	movabs	rsi, OFFSET FLAT:.str.79
	lea	rdi, [rbp - 0x18]
	mov	dword ptr [rbp - 0x1c], 4
	mov	dword ptr [rbp - 0x20], 4
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	byte ptr [rax], 0x5c
	movzx	edx, byte ptr [rbp - 2]
	mov	al, 0
	call	sprintf
	mov	dword ptr [rbp - 0x14], 0
	mov	dword ptr [rbp - 0x38], eax
.label_1034:
	cmp	dword ptr [rbp - 0x14], 2
	jg	.label_1048
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	cl, byte ptr [rbp + rax - 0x18]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, rax
	add	rdx, 1
	mov	qword ptr [rbp - 0x10], rdx
	mov	byte ptr [rax], cl
	mov	eax, dword ptr [rbp - 0x14]
	add	eax, 1
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_1034
.label_1048:
	jmp	.label_1047
.label_1047:
	jmp	.label_1044
.label_1039:
	movsx	eax, byte ptr [rbp - 1]
	cmp	eax, 8
	jne	.label_1054
	mov	dword ptr [rbp - 0x1c], 0xffffffff
	mov	dword ptr [rbp - 0x20], 1
	mov	al, byte ptr [rbp - 1]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rcx], al
	jmp	.label_1058
.label_1054:
	mov	dword ptr [rbp - 0x1c], 0
	mov	dword ptr [rbp - 0x20], 1
	mov	al, byte ptr [rbp - 1]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rcx], al
.label_1058:
	jmp	.label_1044
.label_1044:
	jmp	.label_1038
.label_1038:
	jmp	.label_1046
.label_1059:
	mov	dword ptr [rbp - 0x1c], 1
	mov	dword ptr [rbp - 0x20], 1
	mov	al, byte ptr [rbp - 1]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rcx], al
.label_1046:
	jmp	.label_1051
.label_1051:
	cmp	dword ptr [rbp - 0x1c], 0
	jge	.label_1052
	cmp	dword ptr [dword ptr [input_position]],  0
	jne	.label_1052
	mov	dword ptr [rbp - 0x20], 0
	mov	dword ptr [dword ptr [input_position]],  0
	jmp	.label_1045
.label_1052:
	cmp	dword ptr [rbp - 0x1c], 0
	jge	.label_1035
	xor	eax, eax
	mov	ecx,  dword ptr [dword ptr [input_position]]
	sub	eax, dword ptr [rbp - 0x1c]
	cmp	ecx, eax
	jg	.label_1035
	mov	dword ptr [dword ptr [input_position]],  0
	jmp	.label_1041
.label_1035:
	mov	eax, dword ptr [rbp - 0x1c]
	add	eax,  dword ptr [dword ptr [input_position]]
	mov	dword ptr [dword ptr [input_position]],  eax
.label_1041:
	jmp	.label_1045
.label_1045:
	mov	eax, dword ptr [rbp - 0x20]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b1e0

	.globl align_column
	.type align_column, @function
align_column:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdi + 0x34]
	mov	dword ptr [dword ptr [padding_not_printed]],  eax
	mov	eax,  dword ptr [dword ptr [col_sep_length]]
	cmp	eax,  dword ptr [dword ptr [padding_not_printed]]
	jge	.label_1060
	mov	eax,  dword ptr [dword ptr [padding_not_printed]]
	sub	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	edi, eax
	call	pad_across_to
	mov	dword ptr [dword ptr [padding_not_printed]],  0
.label_1060:
	test	byte ptr [byte ptr [use_col_separator]],  1
	je	.label_1062
	call	print_sep_string
.label_1062:
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x38], 1
	je	.label_1061
	mov	rdi, qword ptr [rbp - 8]
	call	add_line_number
.label_1061:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b260

	.globl add_line_number
	.type add_line_number, @function
add_line_number:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rsi, OFFSET FLAT:.str.80
	mov	qword ptr [rbp - 8], rdi
	mov	rdi,  qword ptr [word ptr [number_buff]]
	mov	edx,  dword ptr [dword ptr [chars_per_number]]
	mov	ecx,  dword ptr [dword ptr [line_number]]
	mov	al, 0
	call	sprintf
	mov	dword ptr [rbp - 0x1c], eax
	mov	eax,  dword ptr [dword ptr [line_number]]
	add	eax, 1
	mov	dword ptr [dword ptr [line_number]],  eax
	mov	rsi,  qword ptr [word ptr [number_buff]]
	mov	eax, dword ptr [rbp - 0x1c]
	sub	eax,  dword ptr [dword ptr [chars_per_number]]
	movsxd	rdi, eax
	add	rsi, rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	eax,  dword ptr [dword ptr [chars_per_number]]
	mov	dword ptr [rbp - 0xc], eax
.label_1072:
	cmp	dword ptr [rbp - 0xc], 0
	jle	.label_1067
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x18], rdx
	movsx	edi, byte ptr [rcx]
	call	rax
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_1072
.label_1067:
	cmp	dword ptr [dword ptr [columns]],  1
	jle	.label_1063
	movsx	eax,  byte ptr [byte ptr [number_separator]]
	cmp	eax, 9
	jne	.label_1068
	mov	eax,  dword ptr [dword ptr [number_width]]
	sub	eax,  dword ptr [dword ptr [chars_per_number]]
	mov	dword ptr [rbp - 0xc], eax
.label_1069:
	mov	eax, dword ptr [rbp - 0xc]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0xc], ecx
	cmp	eax, 0
	jle	.label_1071
	mov	edi, 0x20
	mov	rax, qword ptr [rbp - 8]
	call	qword ptr [rax + 0x20]
	jmp	.label_1069
.label_1071:
	jmp	.label_1070
.label_1068:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x20]
	movsx	edi,  byte ptr [byte ptr [number_separator]]
	call	rax
.label_1070:
	jmp	.label_1065
.label_1063:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x20]
	movsx	edi,  byte ptr [byte ptr [number_separator]]
	call	rax
	movsx	edi,  byte ptr [byte ptr [number_separator]]
	cmp	edi, 9
	jne	.label_1064
	mov	eax,  dword ptr [dword ptr [output_position]]
	mov	ecx,  dword ptr [dword ptr [chars_per_output_tab]]
	mov	edx,  dword ptr [dword ptr [output_position]]
	mov	dword ptr [rbp - 0x20], eax
	mov	eax, edx
	cdq	
	idiv	dword ptr [dword ptr [chars_per_output_tab]]
	sub	ecx, edx
	mov	edx, dword ptr [rbp - 0x20]
	add	edx, ecx
	mov	dword ptr [dword ptr [output_position]],  edx
.label_1064:
	jmp	.label_1065
.label_1065:
	test	byte ptr [byte ptr [truncate_lines]],  1
	je	.label_1066
	test	byte ptr [byte ptr [parallel_files]],  1
	jne	.label_1066
	mov	eax,  dword ptr [dword ptr [number_width]]
	add	eax,  dword ptr [dword ptr [input_position]]
	mov	dword ptr [dword ptr [input_position]],  eax
.label_1066:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b410

	.globl print_clump
	.type print_clump, @function
print_clump:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	qword ptr [rbp - 0x18], rdx
.label_1073:
	mov	eax, dword ptr [rbp - 0xc]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0xc], ecx
	cmp	eax, 0
	je	.label_1074
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x18], rdx
	movsx	edi, byte ptr [rcx]
	call	rax
	jmp	.label_1073
.label_1074:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b460

	.globl init_page
	.type init_page, @function
init_page:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	test	byte ptr [byte ptr [storing_columns]],  1
	je	.label_1075
	call	store_columns
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	mov	dword ptr [rbp - 4], eax
	mov	rcx,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 0x10], rcx
.label_1086:
	cmp	dword ptr [rbp - 4], 0
	je	.label_1085
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x2c]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0x30], ecx
	mov	eax, dword ptr [rbp - 4]
	add	eax, -1
	mov	dword ptr [rbp - 4], eax
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 0x40
	mov	qword ptr [rbp - 0x10], rcx
	jmp	.label_1086
.label_1085:
	test	byte ptr [byte ptr [balance_columns]],  1
	je	.label_1076
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x2c]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0x30], ecx
	jmp	.label_1083
.label_1076:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0x10], 0
	jne	.label_1077
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	dword ptr [rcx + 0x30], eax
	jmp	.label_1087
.label_1077:
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0x30], 0
.label_1087:
	jmp	.label_1083
.label_1083:
	jmp	.label_1078
.label_1075:
	mov	eax,  dword ptr [dword ptr [columns]]
	mov	dword ptr [rbp - 4], eax
	mov	rcx,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 0x10], rcx
.label_1081:
	cmp	dword ptr [rbp - 4], 0
	je	.label_1084
	mov	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0x10], 0
	jne	.label_1082
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	dword ptr [rcx + 0x30], eax
	jmp	.label_1080
.label_1082:
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0x30], 0
.label_1080:
	jmp	.label_1079
.label_1079:
	mov	eax, dword ptr [rbp - 4]
	add	eax, -1
	mov	dword ptr [rbp - 4], eax
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 0x40
	mov	qword ptr [rbp - 0x10], rcx
	jmp	.label_1081
.label_1084:
	jmp	.label_1078
.label_1078:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b5a0

	.globl cols_ready_to_print
	.type cols_ready_to_print, @function
cols_ready_to_print:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 0x10], 0
	mov	rax,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 0
.label_1088:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [columns]]
	jae	.label_1089
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x10], 0
	je	.label_1091
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x10], 1
	je	.label_1091
	test	byte ptr [byte ptr [storing_columns]],  1
	je	.label_1090
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x2c], 0
	jle	.label_1090
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x30], 0
	jle	.label_1090
.label_1091:
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, 1
	mov	dword ptr [rbp - 0x10], eax
.label_1090:
	jmp	.label_1092
.label_1092:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x40
	mov	qword ptr [rbp - 8], rax
	mov	ecx, dword ptr [rbp - 0xc]
	add	ecx, 1
	mov	dword ptr [rbp - 0xc], ecx
	jmp	.label_1088
.label_1089:
	mov	eax, dword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b650

	.globl read_rest_of_line
	.type read_rest_of_line, @function
read_rest_of_line:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x18], rdi
.label_1096:
	mov	rdi, qword ptr [rbp - 0x18]
	call	getc_unlocked
	mov	dword ptr [rbp - 0xc], eax
	cmp	eax, 0xa
	je	.label_1093
	cmp	dword ptr [rbp - 0xc], 0xc
	jne	.label_1099
	mov	rdi, qword ptr [rbp - 0x18]
	call	getc_unlocked
	mov	dword ptr [rbp - 0xc], eax
	cmp	eax, 0xa
	je	.label_1098
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsi, qword ptr [rbp - 0x18]
	call	ungetc
	mov	dword ptr [rbp - 0x1c], eax
.label_1098:
	test	byte ptr [byte ptr [keep_FF]],  1
	je	.label_1095
	mov	byte ptr [byte ptr [print_a_FF]],  1
.label_1095:
	mov	rdi, qword ptr [rbp - 8]
	call	hold_file
	jmp	.label_1093
.label_1099:
	cmp	dword ptr [rbp - 0xc], -1
	jne	.label_1097
	mov	rdi, qword ptr [rbp - 8]
	call	close_file
	jmp	.label_1093
.label_1097:
	jmp	.label_1094
.label_1094:
	jmp	.label_1096
.label_1093:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b700

	.globl pad_down
	.type pad_down, @function
pad_down:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	test	byte ptr [byte ptr [use_form_feed]],  1
	je	.label_1100
	mov	edi, 0xc
	call	putchar_unlocked
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_1102
.label_1100:
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 8], eax
.label_1103:
	cmp	dword ptr [rbp - 8], 0
	je	.label_1101
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x10], eax
	mov	eax, dword ptr [rbp - 8]
	add	eax, -1
	mov	dword ptr [rbp - 8], eax
	jmp	.label_1103
.label_1101:
	jmp	.label_1102
.label_1102:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b770

	.globl store_columns
	.type store_columns, @function
store_columns:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 0xc], 0
	mov	dword ptr [dword ptr [buff_current]],  0
	mov	dword ptr [rbp - 0x10], 0
	test	byte ptr [byte ptr [balance_columns]],  1
	je	.label_1117
	mov	eax,  dword ptr [dword ptr [columns]]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_1113
.label_1117:
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	mov	dword ptr [rbp - 0x14], eax
.label_1113:
	mov	dword ptr [rbp - 4], 1
	mov	rax,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 0x20], rax
.label_1111:
	mov	eax, dword ptr [rbp - 4]
	cmp	eax, dword ptr [rbp - 0x14]
	jg	.label_1107
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax + 0x2c], 0
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	mov	dword ptr [rbp - 4], eax
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, 0x40
	mov	qword ptr [rbp - 0x20], rcx
	jmp	.label_1111
.label_1107:
	mov	dword ptr [rbp - 4], 1
	mov	rax,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 0x20], rax
.label_1114:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 4]
	cmp	eax, dword ptr [rbp - 0x14]
	mov	byte ptr [rbp - 0x21], cl
	jg	.label_1108
	cmp	dword ptr [dword ptr [files_ready_to_read]],  0
	setne	al
	mov	byte ptr [rbp - 0x21], al
.label_1108:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_1119
	jmp	.label_1122
.label_1119:
	mov	eax, dword ptr [rbp - 0xc]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	dword ptr [rcx + 0x28], eax
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	mov	dword ptr [rbp - 8], eax
.label_1116:
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 8], 0
	mov	byte ptr [rbp - 0x22], cl
	je	.label_1109
	cmp	dword ptr [dword ptr [files_ready_to_read]],  0
	setne	al
	mov	byte ptr [rbp - 0x22], al
.label_1109:
	mov	al, byte ptr [rbp - 0x22]
	test	al, 1
	jne	.label_1120
	jmp	.label_1104
.label_1120:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	dword ptr [rax + 0x10], 0
	jne	.label_1105
	mov	dword ptr [dword ptr [input_position]],  0
	mov	rdi, qword ptr [rbp - 0x20]
	call	read_line
	test	al, 1
	jne	.label_1118
	mov	rdi, qword ptr [rbp - 0x20]
	call	read_rest_of_line
.label_1118:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	dword ptr [rax + 0x10], 0
	je	.label_1121
	mov	eax, dword ptr [rbp - 0x10]
	cmp	eax,  dword ptr [dword ptr [buff_current]]
	je	.label_1106
.label_1121:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 0x2c]
	add	ecx, 1
	mov	dword ptr [rax + 0x2c], ecx
	mov	ecx, dword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0xc]
	mov	eax, edx
	mov	rsi,  qword ptr [word ptr [line_vector]]
	mov	dword ptr [rsi + rax*4], ecx
	mov	ecx,  dword ptr [dword ptr [input_position]]
	mov	edx, dword ptr [rbp - 0xc]
	mov	edi, edx
	add	edi, 1
	mov	dword ptr [rbp - 0xc], edi
	mov	edx, edx
	mov	eax, edx
	mov	rsi,  qword ptr [word ptr [end_vector]]
	mov	dword ptr [rsi + rax*4], ecx
	mov	ecx,  dword ptr [dword ptr [buff_current]]
	mov	dword ptr [rbp - 0x10], ecx
.label_1106:
	jmp	.label_1105
.label_1105:
	jmp	.label_1115
.label_1115:
	mov	eax, dword ptr [rbp - 8]
	add	eax, -1
	mov	dword ptr [rbp - 8], eax
	jmp	.label_1116
.label_1104:
	jmp	.label_1112
.label_1112:
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	mov	dword ptr [rbp - 4], eax
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, 0x40
	mov	qword ptr [rbp - 0x20], rcx
	jmp	.label_1114
.label_1122:
	mov	eax, dword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0xc]
	mov	edx, ecx
	mov	rsi,  qword ptr [word ptr [line_vector]]
	mov	dword ptr [rsi + rdx*4], eax
	test	byte ptr [byte ptr [balance_columns]],  1
	je	.label_1110
	mov	edi, dword ptr [rbp - 0xc]
	call	balance
.label_1110:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b990

	.globl balance
	.type balance, @function
balance:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 0x1c], 0
	mov	dword ptr [rbp - 0x14], 1
	mov	rax,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 0x10], rax
.label_1124:
	mov	eax, dword ptr [rbp - 0x14]
	cmp	eax,  dword ptr [dword ptr [columns]]
	jg	.label_1123
	mov	eax, dword ptr [rbp - 4]
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	mov	dword ptr [rbp - 0x18], eax
	mov	eax, dword ptr [rbp - 0x14]
	mov	ecx, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0x20], eax
	mov	eax, ecx
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, edx
	jg	.label_1125
	mov	eax, dword ptr [rbp - 0x18]
	add	eax, 1
	mov	dword ptr [rbp - 0x18], eax
.label_1125:
	mov	eax, dword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	dword ptr [rcx + 0x2c], eax
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	dword ptr [rcx + 0x28], eax
	mov	eax, dword ptr [rbp - 0x18]
	add	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x1c], eax
	mov	eax, dword ptr [rbp - 0x14]
	add	eax, 1
	mov	dword ptr [rbp - 0x14], eax
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 0x40
	mov	qword ptr [rbp - 0x10], rcx
	jmp	.label_1124
.label_1123:
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ba30
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
	#Procedure 0x40ba50
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
	#Procedure 0x40ba70

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	close_stream
	cmp	eax, 0
	je	.label_1127
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_1129
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	je	.label_1127
.label_1129:
	movabs	rdi, OFFSET FLAT:.str_2
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_1130
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_3
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_1126
.label_1130:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	call	error
.label_1126:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_1127:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_1128
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_1128:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bb60

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	dword ptr [rbp - 0x1c], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x1c]
	call	posix_fadvise
	mov	dword ptr [rbp - 0x20], eax
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bba0

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	je	.label_1131
	mov	rdi, qword ptr [rbp - 8]
	call	fileno
	xor	ecx, ecx
	mov	edi, ecx
	mov	ecx, dword ptr [rbp - 0xc]
	mov	qword ptr [rbp - 0x18], rdi
	mov	edi, eax
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x18]
	call	fdadvise
.label_1131:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bbf0

	.globl fopen_safer
	.type fopen_safer, @function
fopen_safer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	fopen
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1133
	mov	rdi, qword ptr [rbp - 0x20]
	call	fileno
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x24], eax
	cmp	ecx, dword ptr [rbp - 0x24]
	jg	.label_1136
	cmp	dword ptr [rbp - 0x24], 2
	jg	.label_1136
	mov	edi, dword ptr [rbp - 0x24]
	call	dup_safer
	mov	dword ptr [rbp - 0x28], eax
	cmp	dword ptr [rbp - 0x28], 0
	jge	.label_1132
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x2c], ecx
	mov	rdi, qword ptr [rbp - 0x20]
	call	rpl_fclose
	mov	ecx, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 0x34], eax
	mov	dword ptr [rbp - 0x38], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x38]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1135
.label_1132:
	mov	rdi, qword ptr [rbp - 0x20]
	call	rpl_fclose
	cmp	eax, 0
	jne	.label_1134
	mov	edi, dword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	call	fdopen
	mov	qword ptr [rbp - 0x20], rax
	cmp	rax, 0
	jne	.label_1137
.label_1134:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x30], ecx
	mov	edi, dword ptr [rbp - 0x28]
	call	close
	mov	ecx, dword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 0x3c], eax
	mov	dword ptr [rbp - 0x40], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x40]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1135
.label_1137:
	jmp	.label_1136
.label_1136:
	jmp	.label_1133
.label_1133:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_1135:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bd00

	.globl gettime
	.type gettime, @function
gettime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	call	clock_gettime
	mov	dword ptr [rbp - 0xc], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bd30
	.globl current_timespec
	.type current_timespec, @function
current_timespec:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rdi, [rbp - 0x20]
	call	gettime
	movups	xmm0, xmmword ptr [rbp - 0x20]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bd60

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
	je	.label_1138
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str_4
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_1140
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str.1_0
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_1139
.label_1140:
	mov	byte ptr [rbp - 5], 0
.label_1139:
	jmp	.label_1138
.label_1138:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bde0

	.globl imaxtostr
	.type imaxtostr, @function
imaxtostr:
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
	jge	.label_1141
	jmp	.label_1144
.label_1144:
	mov	eax, 0x30
	mov	ecx, eax
	mov	eax, 0xa
	mov	edx, eax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0x20]
	idiv	rsi
	sub	rcx, rdx
	mov	dil, cl
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rcx - 1], dil
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_1144
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax - 1], 0x2d
	jmp	.label_1143
.label_1141:
	jmp	.label_1142
.label_1142:
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	cqo	
	idiv	rcx
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
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_1142
	jmp	.label_1143
.label_1143:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bee0

	.globl gnu_mbswidth
	.type gnu_mbswidth, @function
gnu_mbswidth:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rax
	call	strlen
	mov	edx, dword ptr [rbp - 0xc]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	mbsnwidth
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bf20

	.globl mbsnwidth
	.type mbsnwidth, @function
mbsnwidth:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x28]
	add	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rsi
	mov	dword ptr [rbp - 0x34], 0
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_1146
	jmp	.label_1161
.label_1161:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1170
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x20
	mov	eax, ecx
	sub	ecx, 0x5e
	mov	qword ptr [rbp - 0x60], rax
	mov	dword ptr [rbp - 0x64], ecx
	ja	.label_1173
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1151]]
	jmp	rcx
.label_2337:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	ecx, dword ptr [rbp - 0x34]
	add	ecx, 1
	mov	dword ptr [rbp - 0x34], ecx
	jmp	.label_1155
.label_1173:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0x40]
	mov	rdi, rcx
	call	memset
.label_1157:
	lea	rdi, [rbp - 0x44]
	lea	rcx, [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x28]
	sub	rax, rdx
	mov	rdx, rax
	call	rpl_mbrtowc
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], -1
	jne	.label_1145
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 1
	cmp	eax, 0
	jne	.label_1168
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	ecx, dword ptr [rbp - 0x34]
	add	ecx, 1
	mov	dword ptr [rbp - 0x34], ecx
	jmp	.label_1149
.label_1168:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1150
.label_1145:
	cmp	qword ptr [rbp - 0x50], -2
	jne	.label_1160
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 1
	cmp	eax, 0
	jne	.label_1164
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
	mov	ecx, dword ptr [rbp - 0x34]
	add	ecx, 1
	mov	dword ptr [rbp - 0x34], ecx
	jmp	.label_1149
.label_1164:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1150
.label_1160:
	cmp	qword ptr [rbp - 0x50], 0
	jne	.label_1171
	mov	qword ptr [rbp - 0x50], 1
.label_1171:
	mov	edi, dword ptr [rbp - 0x44]
	call	wcwidth
	mov	dword ptr [rbp - 0x54], eax
	cmp	dword ptr [rbp - 0x54], 0
	jl	.label_1147
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 0x54]
	sub	eax, dword ptr [rbp - 0x34]
	cmp	ecx, eax
	jle	.label_1152
	jmp	.label_1158
.label_1152:
	mov	eax, dword ptr [rbp - 0x54]
	add	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_1159
.label_1147:
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 2
	cmp	eax, 0
	jne	.label_1163
	mov	edi, dword ptr [rbp - 0x44]
	call	iswcntrl
	cmp	eax, 0
	jne	.label_1166
	cmp	dword ptr [rbp - 0x34], 0x7fffffff
	jne	.label_1169
	jmp	.label_1158
.label_1169:
	mov	eax, dword ptr [rbp - 0x34]
	add	eax, 1
	mov	dword ptr [rbp - 0x34], eax
.label_1166:
	jmp	.label_1174
.label_1163:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1150
.label_1174:
	jmp	.label_1159
.label_1159:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rbp - 0x40]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_1157
.label_1149:
	jmp	.label_1155
.label_1155:
	jmp	.label_1161
.label_1170:
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1150
.label_1146:
	jmp	.label_1156
.label_1156:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1165
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	mov	dl, byte ptr [rax]
	mov	byte ptr [rbp - 0x55], dl
	movzx	esi, byte ptr [rbp - 0x55]
	movsxd	rax, esi
	mov	qword ptr [rbp - 0x70], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x70]
	movzx	esi, word ptr [rax + rcx*2]
	and	esi, 0x4000
	cmp	esi, 0
	je	.label_1175
	cmp	dword ptr [rbp - 0x34], 0x7fffffff
	jne	.label_1153
	jmp	.label_1158
.label_1153:
	mov	eax, dword ptr [rbp - 0x34]
	add	eax, 1
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_1154
.label_1175:
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 2
	cmp	eax, 0
	jne	.label_1162
	movzx	eax, byte ptr [rbp - 0x55]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x78], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 2
	cmp	edx, 0
	jne	.label_1167
	cmp	dword ptr [rbp - 0x34], 0x7fffffff
	jne	.label_1172
	jmp	.label_1158
.label_1172:
	mov	eax, dword ptr [rbp - 0x34]
	add	eax, 1
	mov	dword ptr [rbp - 0x34], eax
.label_1167:
	jmp	.label_1148
.label_1162:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1150
.label_1148:
	jmp	.label_1154
.label_1154:
	jmp	.label_1156
.label_1165:
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1150
.label_1158:
	mov	dword ptr [rbp - 4], 0x7fffffff
.label_1150:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c250

	.globl nstrftime
	.type nstrftime, @function
nstrftime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	xor	eax, eax
	mov	r10d, 0xffffffff
	lea	r11, [rbp - 0x2d]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	dword ptr [rbp - 0x2c], r9d
	mov	byte ptr [rbp - 0x2d], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x28]
	mov	r9d, dword ptr [rbp - 0x2c]
	mov	qword ptr [rbp - 0x38], r8
	mov	r8d, eax
	mov	dword ptr [rbp - 0x3c], r9d
	mov	r9d, eax
	mov	dword ptr [rsp], 0xffffffff
	mov	qword ptr [rsp + 8], r11
	mov	r11, qword ptr [rbp - 0x38]
	mov	qword ptr [rsp + 0x10], r11
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rsp + 0x18], eax
	mov	dword ptr [rbp - 0x40], r10d
	call	__strftime_internal
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c2e0

	.globl __strftime_internal
	.type __strftime_internal, @function
__strftime_internal:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x9d8
	mov	al, r8b
	mov	r8d, dword ptr [rbp + 0x28]
	mov	r10, qword ptr [rbp + 0x20]
	mov	r11, qword ptr [rbp + 0x18]
	mov	ebx, dword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 0x30], rsi
	mov	qword ptr [rbp - 0x38], rdx
	mov	qword ptr [rbp - 0x40], rcx
	and	al, 1
	mov	byte ptr [rbp - 0x41], al
	mov	dword ptr [rbp - 0x48], r9d
	mov	dword ptr [rbp - 0x4c], ebx
	mov	qword ptr [rbp - 0x58], r11
	mov	qword ptr [rbp - 0x60], r10
	mov	dword ptr [rbp - 0x64], r8d
	mov	rcx, qword ptr [rbp - 0x40]
	mov	r8d, dword ptr [rcx + 8]
	mov	dword ptr [rbp - 0x68], r8d
	mov	qword ptr [rbp - 0x78], 0
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x80], rcx
	mov	qword ptr [rbp - 0x70], 0
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rbp - 0x70], rcx
	cmp	qword ptr [rbp - 0x70], 0
	jne	.label_1246
	movabs	rax, OFFSET FLAT:.str_0
	mov	qword ptr [rbp - 0x70], rax
.label_1246:
	cmp	dword ptr [rbp - 0x68], 0xc
	jle	.label_1359
	mov	eax, dword ptr [rbp - 0x68]
	sub	eax, 0xc
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1363
.label_1359:
	cmp	dword ptr [rbp - 0x68], 0
	jne	.label_1368
	mov	dword ptr [rbp - 0x68], 0xc
.label_1368:
	jmp	.label_1363
.label_1363:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x88], rax
.label_1463:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_1374
	mov	dword ptr [rbp - 0x8c], 0
	mov	dword ptr [rbp - 0x94], 0
	mov	byte ptr [rbp - 0xe1], 0
	mov	al, byte ptr [rbp - 0x41]
	and	al, 1
	mov	byte ptr [rbp - 0xe2], al
	mov	byte ptr [rbp - 0xf1], 0
	mov	rcx, qword ptr [rbp - 0x88]
	movsx	edx, byte ptr [rcx]
	cmp	edx, 0x25
	je	.label_1381
	jmp	.label_1598
.label_1598:
	mov	qword ptr [rbp - 0x108], 1
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_1400
	xor	eax, eax
	mov	dword ptr [rbp - 0x75c], eax
	jmp	.label_1405
.label_1400:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x75c], eax
.label_1405:
	mov	eax, dword ptr [rbp - 0x75c]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x110], rcx
	mov	rcx, qword ptr [rbp - 0x108]
	cmp	rcx, qword ptr [rbp - 0x110]
	jae	.label_1413
	mov	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rbp - 0x768], rax
	jmp	.label_1419
.label_1413:
	mov	rax, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x768], rax
.label_1419:
	mov	rax, qword ptr [rbp - 0x768]
	mov	qword ptr [rbp - 0x118], rax
	mov	rax, qword ptr [rbp - 0x118]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_1425
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1183
.label_1425:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1435
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_1412
	mov	rax, qword ptr [rbp - 0x108]
	cmp	rax, qword ptr [rbp - 0x110]
	jae	.label_1412
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x120], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_1443
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_1450
.label_1443:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x120]
	call	memset
	mov	rdx, qword ptr [rbp - 0x120]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_1457
.label_1450:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x120]
	call	memset
	mov	rdx, qword ptr [rbp - 0x120]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_1457:
	jmp	.label_1412
.label_1412:
	mov	rax, qword ptr [rbp - 0x88]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x80]
	mov	byte ptr [rax], cl
	mov	rax, qword ptr [rbp - 0x108]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_1435:
	mov	rax, qword ptr [rbp - 0x118]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1469
.label_1381:
	jmp	.label_1473
.label_1473:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, rax
	inc	rcx
	mov	qword ptr [rbp - 0x88], rcx
	movsx	edx, byte ptr [rax + 1]
	mov	esi, edx
	sub	esi, 0x23
	mov	dword ptr [rbp - 0x76c], edx
	mov	dword ptr [rbp - 0x770], esi
	je	.label_1474
	jmp	.label_1487
.label_1487:
	mov	eax, dword ptr [rbp - 0x76c]
	sub	eax, 0x2b
	mov	dword ptr [rbp - 0x774], eax
	je	.label_1489
	jmp	.label_1496
.label_1496:
	mov	eax, dword ptr [rbp - 0x76c]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x778], eax
	je	.label_1489
	jmp	.label_1365
.label_1365:
	mov	eax, dword ptr [rbp - 0x76c]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x77c], eax
	je	.label_1489
	jmp	.label_1504
.label_1504:
	mov	eax, dword ptr [rbp - 0x76c]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x780], eax
	je	.label_1505
	jmp	.label_1510
.label_1510:
	mov	eax, dword ptr [rbp - 0x76c]
	sub	eax, 0x5f
	mov	dword ptr [rbp - 0x784], eax
	jne	.label_1445
	jmp	.label_1489
.label_1489:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	mov	dword ptr [rbp - 0x8c], ecx
	jmp	.label_1473
.label_1505:
	mov	byte ptr [rbp - 0xe2], 1
	jmp	.label_1473
.label_1474:
	mov	byte ptr [rbp - 0xf1], 1
	jmp	.label_1473
.label_1445:
	jmp	.label_1521
.label_1521:
	jmp	.label_1522
.label_1522:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_1524
	mov	dword ptr [rbp - 0x4c], 0
.label_1542:
	cmp	dword ptr [rbp - 0x4c], 0xccccccc
	jg	.label_1529
	cmp	dword ptr [rbp - 0x4c], 0xccccccc
	jne	.label_1531
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 7
	jle	.label_1531
.label_1529:
	mov	dword ptr [rbp - 0x4c], 0x7fffffff
	jmp	.label_1536
.label_1531:
	imul	eax, dword ptr [rbp - 0x4c], 0xa
	mov	dword ptr [rbp - 0x4c], eax
	mov	rcx, qword ptr [rbp - 0x88]
	movsx	eax, byte ptr [rcx]
	sub	eax, 0x30
	add	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x4c], eax
.label_1536:
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, 1
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	jbe	.label_1542
	jmp	.label_1524
.label_1524:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x788], ecx
	mov	dword ptr [rbp - 0x78c], edx
	je	.label_1549
	jmp	.label_1556
.label_1556:
	mov	eax, dword ptr [rbp - 0x788]
	sub	eax, 0x4f
	mov	dword ptr [rbp - 0x790], eax
	jne	.label_1194
	jmp	.label_1549
.label_1549:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x88], rcx
	movsx	edx, byte ptr [rax]
	mov	dword ptr [rbp - 0x90], edx
	jmp	.label_1398
.label_1194:
	mov	dword ptr [rbp - 0x90], 0
.label_1398:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	mov	dword ptr [rbp - 0xf8], ecx
	test	ecx, ecx
	mov	dword ptr [rbp - 0x794], ecx
	je	.label_1574
	jmp	.label_1578
.label_1578:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x25
	mov	dword ptr [rbp - 0x798], eax
	je	.label_1579
	jmp	.label_1584
.label_1584:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x3a
	mov	dword ptr [rbp - 0x79c], eax
	je	.label_1585
	jmp	.label_1588
.label_1588:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x41
	mov	dword ptr [rbp - 0x7a0], eax
	je	.label_1589
	jmp	.label_1595
.label_1595:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x42
	mov	dword ptr [rbp - 0x7a4], eax
	je	.label_1597
	jmp	.label_1177
.label_1177:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x43
	mov	dword ptr [rbp - 0x7a8], eax
	je	.label_1180
	jmp	.label_1184
.label_1184:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0x7ac], eax
	je	.label_1186
	jmp	.label_1190
.label_1190:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x46
	mov	dword ptr [rbp - 0x7b0], eax
	je	.label_1192
	jmp	.label_1197
.label_1197:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x7b4], eax
	je	.label_1199
	jmp	.label_1201
.label_1201:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x48
	mov	dword ptr [rbp - 0x7b8], eax
	je	.label_1324
	jmp	.label_1205
.label_1205:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x49
	mov	dword ptr [rbp - 0x7bc], eax
	je	.label_1207
	jmp	.label_1211
.label_1211:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x7c0], eax
	je	.label_1214
	jmp	.label_1218
.label_1218:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x4e
	mov	dword ptr [rbp - 0x7c4], eax
	je	.label_1219
	jmp	.label_1223
.label_1223:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x7c8], eax
	je	.label_1224
	jmp	.label_1230
.label_1230:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x52
	mov	dword ptr [rbp - 0x7cc], eax
	je	.label_1493
	jmp	.label_1515
.label_1515:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x53
	mov	dword ptr [rbp - 0x7d0], eax
	je	.label_1238
	jmp	.label_1240
.label_1240:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x7d4], eax
	je	.label_1241
	jmp	.label_1245
.label_1245:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x55
	mov	dword ptr [rbp - 0x7d8], eax
	je	.label_1248
	jmp	.label_1251
.label_1251:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x56
	mov	dword ptr [rbp - 0x7dc], eax
	je	.label_1199
	jmp	.label_1255
.label_1255:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x57
	mov	dword ptr [rbp - 0x7e0], eax
	je	.label_1257
	jmp	.label_1261
.label_1261:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x58
	mov	dword ptr [rbp - 0x7e4], eax
	je	.label_1262
	jmp	.label_1266
.label_1266:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x59
	mov	dword ptr [rbp - 0x7e8], eax
	je	.label_1267
	jmp	.label_1274
.label_1274:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x5a
	mov	dword ptr [rbp - 0x7ec], eax
	je	.label_1276
	jmp	.label_1279
.label_1279:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x61
	mov	dword ptr [rbp - 0x7f0], eax
	je	.label_1280
	jmp	.label_1283
.label_1283:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x62
	mov	dword ptr [rbp - 0x7f4], eax
	je	.label_1286
	jmp	.label_1289
.label_1289:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0x7f8], eax
	je	.label_1291
	jmp	.label_1296
.label_1296:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x64
	mov	dword ptr [rbp - 0x7fc], eax
	je	.label_1299
	jmp	.label_1301
.label_1301:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x65
	mov	dword ptr [rbp - 0x800], eax
	je	.label_1334
	jmp	.label_1305
.label_1305:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x804], eax
	je	.label_1199
	jmp	.label_1539
.label_1539:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x68
	mov	dword ptr [rbp - 0x808], eax
	je	.label_1286
	jmp	.label_1315
.label_1315:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x6a
	mov	dword ptr [rbp - 0x80c], eax
	je	.label_1317
	jmp	.label_1320
.label_1320:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0x810], eax
	je	.label_1321
	jmp	.label_1327
.label_1327:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x6c
	mov	dword ptr [rbp - 0x814], eax
	je	.label_1328
	jmp	.label_1332
.label_1332:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0x818], eax
	je	.label_1333
	jmp	.label_1336
.label_1336:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x6e
	mov	dword ptr [rbp - 0x81c], eax
	je	.label_1337
	jmp	.label_1342
.label_1342:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x70
	mov	dword ptr [rbp - 0x820], eax
	je	.label_1343
	jmp	.label_1345
.label_1345:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x71
	mov	dword ptr [rbp - 0x824], eax
	je	.label_1346
	jmp	.label_1350
.label_1350:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x72
	mov	dword ptr [rbp - 0x828], eax
	je	.label_1351
	jmp	.label_1355
.label_1355:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x73
	mov	dword ptr [rbp - 0x82c], eax
	je	.label_1423
	jmp	.label_1362
.label_1362:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x830], eax
	je	.label_1364
	jmp	.label_1371
.label_1371:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x75
	mov	dword ptr [rbp - 0x834], eax
	je	.label_1373
	jmp	.label_1376
.label_1376:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x77
	mov	dword ptr [rbp - 0x838], eax
	je	.label_1378
	jmp	.label_1182
.label_1182:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x78
	mov	dword ptr [rbp - 0x83c], eax
	je	.label_1212
	jmp	.label_1565
.label_1565:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x79
	mov	dword ptr [rbp - 0x840], eax
	je	.label_1570
	jmp	.label_1397
.label_1397:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x7a
	mov	dword ptr [rbp - 0x844], eax
	je	.label_1399
	jmp	.label_1404
.label_1579:
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_1407
	jmp	.label_1235
.label_1407:
	jmp	.label_1394
.label_1394:
	mov	qword ptr [rbp - 0x128], 1
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_1414
	xor	eax, eax
	mov	dword ptr [rbp - 0x848], eax
	jmp	.label_1418
.label_1414:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x848], eax
.label_1418:
	mov	eax, dword ptr [rbp - 0x848]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x130], rcx
	mov	rcx, qword ptr [rbp - 0x128]
	cmp	rcx, qword ptr [rbp - 0x130]
	jae	.label_1422
	mov	rax, qword ptr [rbp - 0x130]
	mov	qword ptr [rbp - 0x850], rax
	jmp	.label_1427
.label_1422:
	mov	rax, qword ptr [rbp - 0x128]
	mov	qword ptr [rbp - 0x850], rax
.label_1427:
	mov	rax, qword ptr [rbp - 0x850]
	mov	qword ptr [rbp - 0x138], rax
	mov	rax, qword ptr [rbp - 0x138]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_1434
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1183
.label_1434:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1444
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_1448
	mov	rax, qword ptr [rbp - 0x128]
	cmp	rax, qword ptr [rbp - 0x130]
	jae	.label_1448
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x128]
	mov	qword ptr [rbp - 0x140], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_1455
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_1461
.label_1455:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x140]
	call	memset
	mov	rdx, qword ptr [rbp - 0x140]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_1465
.label_1461:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x140]
	call	memset
	mov	rdx, qword ptr [rbp - 0x140]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_1465:
	jmp	.label_1448
.label_1448:
	mov	rax, qword ptr [rbp - 0x88]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x80]
	mov	byte ptr [rax], cl
	mov	rax, qword ptr [rbp - 0x128]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_1444:
	mov	rax, qword ptr [rbp - 0x138]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1210
.label_1280:
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_1486
	jmp	.label_1235
.label_1486:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_1492
	mov	byte ptr [rbp - 0xe2], 1
	mov	byte ptr [rbp - 0xe1], 0
.label_1492:
	jmp	.label_1242
.label_1589:
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_1500
	jmp	.label_1235
.label_1500:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_1386
	mov	byte ptr [rbp - 0xe2], 1
	mov	byte ptr [rbp - 0xe1], 0
.label_1386:
	jmp	.label_1242
.label_1286:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_1508
	mov	byte ptr [rbp - 0xe2], 1
	mov	byte ptr [rbp - 0xe1], 0
.label_1508:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1511
	jmp	.label_1235
.label_1511:
	jmp	.label_1242
.label_1597:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1339
	jmp	.label_1235
.label_1339:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_1518
	mov	byte ptr [rbp - 0xe2], 1
	mov	byte ptr [rbp - 0xe1], 0
.label_1518:
	jmp	.label_1242
.label_1291:
	cmp	dword ptr [rbp - 0x90], 0x4f
	jne	.label_1541
	jmp	.label_1235
.label_1541:
	jmp	.label_1242
.label_1308:
	mov	dword ptr [rbp - 0xfc], 0xffffffff
.label_1265:
	xor	eax, eax
	mov	edi, eax
	mov	rsi, -1
	mov	rdx, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	r8b, byte ptr [rbp - 0xe2]
	mov	r9d, dword ptr [rbp - 0x8c]
	mov	eax, dword ptr [rbp - 0xfc]
	mov	r10, qword ptr [rbp - 0x58]
	mov	r11, qword ptr [rbp - 0x60]
	mov	ebx, dword ptr [rbp - 0x64]
	and	r8b, 1
	movzx	r8d, r8b
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	mov	dword ptr [rsp + 0x18], ebx
	call	__strftime_internal
	mov	qword ptr [rbp - 0x148], rax
	mov	rax, qword ptr [rbp - 0x148]
	mov	qword ptr [rbp - 0x150], rax
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_1527
	xor	eax, eax
	mov	dword ptr [rbp - 0x854], eax
	jmp	.label_1303
.label_1527:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x854], eax
.label_1303:
	mov	eax, dword ptr [rbp - 0x854]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x158], rcx
	mov	rcx, qword ptr [rbp - 0x150]
	cmp	rcx, qword ptr [rbp - 0x158]
	jae	.label_1552
	mov	rax, qword ptr [rbp - 0x158]
	mov	qword ptr [rbp - 0x860], rax
	jmp	.label_1560
.label_1552:
	mov	rax, qword ptr [rbp - 0x150]
	mov	qword ptr [rbp - 0x860], rax
.label_1560:
	mov	rax, qword ptr [rbp - 0x860]
	mov	qword ptr [rbp - 0x160], rax
	mov	rax, qword ptr [rbp - 0x160]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_1567
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1183
.label_1567:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1577
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_1259
	mov	rax, qword ptr [rbp - 0x150]
	cmp	rax, qword ptr [rbp - 0x158]
	jae	.label_1259
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x150]
	mov	qword ptr [rbp - 0x168], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_1533
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_1568
.label_1533:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x168]
	call	memset
	mov	rdx, qword ptr [rbp - 0x168]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_1178
.label_1568:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x168]
	call	memset
	mov	rdx, qword ptr [rbp - 0x168]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_1178:
	jmp	.label_1259
.label_1259:
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rbp - 0x30]
	sub	rax, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	sil, byte ptr [rbp - 0xe2]
	mov	r9d, dword ptr [rbp - 0x8c]
	mov	r8d, dword ptr [rbp - 0xfc]
	mov	r10, qword ptr [rbp - 0x58]
	mov	r11, qword ptr [rbp - 0x60]
	mov	ebx, dword ptr [rbp - 0x64]
	and	sil, 1
	mov	byte ptr [rbp - 0x861], sil
	mov	rsi, rax
	mov	r14b, byte ptr [rbp - 0x861]
	movzx	r15d, r14b
	mov	dword ptr [rbp - 0x868], r8d
	mov	r8d, r15d
	mov	r15d, dword ptr [rbp - 0x868]
	mov	dword ptr [rsp], r15d
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	mov	dword ptr [rsp + 0x18], ebx
	call	__strftime_internal
	mov	rcx, qword ptr [rbp - 0x150]
	add	rcx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rcx
	mov	qword ptr [rbp - 0x870], rax
.label_1577:
	mov	rax, qword ptr [rbp - 0x160]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1210
.label_1242:
	lea	rax, [rbp - 0x16d]
	mov	qword ptr [rbp - 0x178], rax
	mov	rax, qword ptr [rbp - 0x178]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x178], rcx
	mov	byte ptr [rax], 0x20
	mov	rax, qword ptr [rbp - 0x178]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x178], rcx
	mov	byte ptr [rax], 0x25
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_1470
	mov	eax, dword ptr [rbp - 0x90]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x178]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rbp - 0x178], rsi
	mov	byte ptr [rdx], cl
.label_1470:
	mov	eax, 0x400
	mov	esi, eax
	lea	rdx, [rbp - 0x16d]
	lea	rdi, [rbp - 0x580]
	mov	eax, dword ptr [rbp - 0xf8]
	mov	cl, al
	mov	r8, qword ptr [rbp - 0x178]
	mov	r9, r8
	add	r9, 1
	mov	qword ptr [rbp - 0x178], r9
	mov	byte ptr [r8], cl
	mov	r8, qword ptr [rbp - 0x178]
	mov	byte ptr [r8], 0
	mov	rcx, qword ptr [rbp - 0x40]
	call	strftime
	mov	qword ptr [rbp - 0x588], rax
	cmp	qword ptr [rbp - 0x588], 0
	je	.label_1263
	jmp	.label_1294
.label_1294:
	mov	rax, qword ptr [rbp - 0x588]
	sub	rax, 1
	mov	qword ptr [rbp - 0x590], rax
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_1271
	xor	eax, eax
	mov	dword ptr [rbp - 0x874], eax
	jmp	.label_1277
.label_1271:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x874], eax
.label_1277:
	mov	eax, dword ptr [rbp - 0x874]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x598], rcx
	mov	rcx, qword ptr [rbp - 0x590]
	cmp	rcx, qword ptr [rbp - 0x598]
	jae	.label_1525
	mov	rax, qword ptr [rbp - 0x598]
	mov	qword ptr [rbp - 0x880], rax
	jmp	.label_1288
.label_1525:
	mov	rax, qword ptr [rbp - 0x590]
	mov	qword ptr [rbp - 0x880], rax
.label_1288:
	mov	rax, qword ptr [rbp - 0x880]
	mov	qword ptr [rbp - 0x5a0], rax
	mov	rax, qword ptr [rbp - 0x5a0]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_1297
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1183
.label_1297:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1306
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_1309
	mov	rax, qword ptr [rbp - 0x590]
	cmp	rax, qword ptr [rbp - 0x598]
	jae	.label_1309
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x590]
	mov	qword ptr [rbp - 0x5a8], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_1313
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_1319
.label_1313:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x5a8]
	call	memset
	mov	rdx, qword ptr [rbp - 0x5a8]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_1329
.label_1319:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x5a8]
	call	memset
	mov	rdx, qword ptr [rbp - 0x5a8]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_1329:
	jmp	.label_1309
.label_1309:
	test	byte ptr [rbp - 0xe1], 1
	je	.label_1340
	lea	rax, [rbp - 0x580]
	mov	rdi, qword ptr [rbp - 0x80]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x590]
	mov	rsi, rax
	call	memcpy_lowcase
	mov	qword ptr [rbp - 0x888], rax
	jmp	.label_1347
.label_1340:
	test	byte ptr [rbp - 0xe2], 1
	je	.label_1349
	lea	rax, [rbp - 0x580]
	mov	rdi, qword ptr [rbp - 0x80]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x590]
	mov	rsi, rax
	call	memcpy_uppcase
	mov	qword ptr [rbp - 0x890], rax
	jmp	.label_1358
.label_1349:
	lea	rax, [rbp - 0x580]
	mov	rdi, qword ptr [rbp - 0x80]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x590]
	mov	rsi, rax
	call	memcpy
.label_1358:
	jmp	.label_1347
.label_1347:
	mov	rax, qword ptr [rbp - 0x590]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_1306:
	mov	rax, qword ptr [rbp - 0x5a0]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1263
.label_1263:
	jmp	.label_1210
.label_1180:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1383
	jmp	.label_1242
.label_1383:
	xor	eax, eax
	mov	cl, al
	mov	eax, 0x64
	mov	rdx, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rdx + 0x14]
	mov	dword ptr [rbp - 0x894], eax
	mov	eax, esi
	cdq	
	mov	esi, dword ptr [rbp - 0x894]
	idiv	esi
	add	eax, 0x13
	mov	dword ptr [rbp - 0x5ac], eax
	mov	rdi, qword ptr [rbp - 0x40]
	mov	eax, dword ptr [rdi + 0x14]
	cdq	
	idiv	esi
	cmp	edx, 0
	mov	byte ptr [rbp - 0x895], cl
	jge	.label_1389
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x5ac]
	setl	cl
	mov	byte ptr [rbp - 0x895], cl
.label_1389:
	mov	al, byte ptr [rbp - 0x895]
	and	al, 1
	movzx	ecx, al
	mov	edx, dword ptr [rbp - 0x5ac]
	sub	edx, ecx
	mov	dword ptr [rbp - 0x5ac], edx
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax + 0x14], 0xfffff894
	setl	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x9d], cl
	mov	edx, dword ptr [rbp - 0x5ac]
	mov	dword ptr [rbp - 0x9c], edx
	jmp	.label_1410
.label_1212:
	cmp	dword ptr [rbp - 0x90], 0x4f
	jne	.label_1322
	jmp	.label_1235
.label_1322:
	jmp	.label_1242
.label_1186:
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_1430
	jmp	.label_1235
.label_1430:
	movabs	rax, OFFSET FLAT:.str.1_1
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_1308
.label_1299:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1437
	jmp	.label_1235
.label_1437:
	jmp	.label_1442
.label_1442:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0xc]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_1217
.label_1334:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1449
	jmp	.label_1235
.label_1449:
	jmp	.label_1453
.label_1453:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0xc]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_1298
.label_1203:
	mov	byte ptr [rbp - 0x9e], 1
	jmp	.label_1458
.label_1410:
	cmp	dword ptr [rbp - 0x8c], 0
	jne	.label_1462
	mov	eax, dword ptr [rbp - 0x48]
	mov	dword ptr [rbp - 0x8c], eax
.label_1462:
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x8c], 0x2b
	mov	byte ptr [rbp - 0x896], cl
	jne	.label_1464
	mov	al, 1
	mov	ecx, 0x270f
	mov	edx, 0x63
	cmp	dword ptr [rbp - 0x94], 2
	cmove	ecx, edx
	cmp	ecx, dword ptr [rbp - 0x9c]
	mov	byte ptr [rbp - 0x897], al
	jb	.label_1592
	mov	eax, dword ptr [rbp - 0x94]
	cmp	eax, dword ptr [rbp - 0x4c]
	setl	cl
	mov	byte ptr [rbp - 0x897], cl
.label_1592:
	mov	al, byte ptr [rbp - 0x897]
	mov	byte ptr [rbp - 0x896], al
.label_1464:
	mov	al, byte ptr [rbp - 0x896]
	and	al, 1
	mov	byte ptr [rbp - 0x9e], al
	jmp	.label_1479
.label_1298:
	cmp	dword ptr [rbp - 0x8c], 0
	jne	.label_1483
	mov	dword ptr [rbp - 0x8c], 0x5f
.label_1483:
	jmp	.label_1217
.label_1217:
	cmp	dword ptr [rbp - 0x98], 0
	setl	al
	and	al, 1
	mov	byte ptr [rbp - 0x9d], al
	mov	ecx, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x9c], ecx
.label_1314:
	mov	byte ptr [rbp - 0x9e], 0
.label_1479:
	mov	dword ptr [rbp - 0xa4], 0
.label_1458:
	cmp	dword ptr [rbp - 0x90], 0x4f
	jne	.label_1502
	test	byte ptr [rbp - 0x9d], 1
	jne	.label_1502
	jmp	.label_1242
.label_1502:
	lea	rax, [rbp - 0xe0]
	add	rax, 0x17
	mov	qword ptr [rbp - 0xc0], rax
	test	byte ptr [rbp - 0x9d], 1
	je	.label_1507
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x9c]
	mov	dword ptr [rbp - 0x9c], eax
.label_1507:
	jmp	.label_1513
.label_1513:
	mov	eax, dword ptr [rbp - 0xa4]
	and	eax, 1
	cmp	eax, 0
	je	.label_1514
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0xc0], rcx
	mov	byte ptr [rax - 1], 0x3a
.label_1514:
	mov	eax, 0xa
	mov	ecx, dword ptr [rbp - 0xa4]
	sar	ecx, 1
	mov	dword ptr [rbp - 0xa4], ecx
	mov	ecx, dword ptr [rbp - 0x9c]
	mov	dword ptr [rbp - 0x89c], eax
	mov	eax, ecx
	xor	edx, edx
	mov	ecx, dword ptr [rbp - 0x89c]
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
	mov	byte ptr [rbp - 0x89d], al
	jne	.label_1523
	cmp	dword ptr [rbp - 0xa4], 0
	setne	al
	mov	byte ptr [rbp - 0x89d], al
.label_1523:
	mov	al, byte ptr [rbp - 0x89d]
	test	al, 1
	jne	.label_1513
	jmp	.label_1544
.label_1544:
	mov	eax, dword ptr [rbp - 0x94]
	cmp	eax, dword ptr [rbp - 0x4c]
	jge	.label_1547
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x94], eax
.label_1547:
	test	byte ptr [rbp - 0x9d], 1
	je	.label_1551
	mov	eax, 0x2d
	mov	dword ptr [rbp - 0x8a4], eax
	jmp	.label_1554
.label_1551:
	xor	eax, eax
	mov	ecx, 0x2b
	mov	dl, byte ptr [rbp - 0x9e]
	test	dl, 1
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x8a4], eax
.label_1554:
	mov	eax, dword ptr [rbp - 0x8a4]
	mov	cl, al
	mov	byte ptr [rbp - 0xb1], cl
	cmp	dword ptr [rbp - 0x8c], 0x2d
	jne	.label_1563
	cmp	byte ptr [rbp - 0xb1], 0
	je	.label_1471
	jmp	.label_1571
.label_1571:
	mov	qword ptr [rbp - 0x5b8], 1
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_1573
	xor	eax, eax
	mov	dword ptr [rbp - 0x8a8], eax
	jmp	.label_1575
.label_1573:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x8a8], eax
.label_1575:
	mov	eax, dword ptr [rbp - 0x8a8]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x5c0], rcx
	mov	rcx, qword ptr [rbp - 0x5b8]
	cmp	rcx, qword ptr [rbp - 0x5c0]
	jae	.label_1581
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rbp - 0x8b0], rax
	jmp	.label_1587
.label_1581:
	mov	rax, qword ptr [rbp - 0x5b8]
	mov	qword ptr [rbp - 0x8b0], rax
.label_1587:
	mov	rax, qword ptr [rbp - 0x8b0]
	mov	qword ptr [rbp - 0x5c8], rax
	mov	rax, qword ptr [rbp - 0x5c8]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_1596
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1183
.label_1596:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1185
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_1188
	mov	rax, qword ptr [rbp - 0x5b8]
	cmp	rax, qword ptr [rbp - 0x5c0]
	jae	.label_1188
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x5b8]
	mov	qword ptr [rbp - 0x5d0], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_1195
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_1200
.label_1195:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x5d0]
	call	memset
	mov	rdx, qword ptr [rbp - 0x5d0]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_1208
.label_1200:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x5d0]
	call	memset
	mov	rdx, qword ptr [rbp - 0x5d0]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_1208:
	jmp	.label_1188
.label_1188:
	mov	al, byte ptr [rbp - 0xb1]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	byte ptr [rcx], al
	mov	rcx, qword ptr [rbp - 0x5b8]
	add	rcx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rcx
.label_1185:
	mov	rax, qword ptr [rbp - 0x5c8]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1471
.label_1471:
	jmp	.label_1232
.label_1563:
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
	mov	dword ptr [rbp - 0x5d4], edi
	cmp	dword ptr [rbp - 0x5d4], 0
	jle	.label_1234
	cmp	dword ptr [rbp - 0x8c], 0x5f
	jne	.label_1545
	movsxd	rax, dword ptr [rbp - 0x5d4]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_1253
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1183
.label_1253:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1260
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	movsxd	rdx, dword ptr [rbp - 0x5d4]
	call	memset
	mov	esi, dword ptr [rbp - 0x5d4]
	mov	rdx, qword ptr [rbp - 0x80]
	movsxd	rdi, esi
	add	rdx, rdi
	mov	qword ptr [rbp - 0x80], rdx
.label_1260:
	movsxd	rax, dword ptr [rbp - 0x5d4]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	mov	ecx, dword ptr [rbp - 0x4c]
	cmp	ecx, dword ptr [rbp - 0x5d4]
	jle	.label_1272
	mov	eax, dword ptr [rbp - 0x4c]
	sub	eax, dword ptr [rbp - 0x5d4]
	mov	dword ptr [rbp - 0x8b4], eax
	jmp	.label_1278
.label_1272:
	xor	eax, eax
	mov	dword ptr [rbp - 0x8b4], eax
	jmp	.label_1278
.label_1278:
	mov	eax, dword ptr [rbp - 0x8b4]
	mov	dword ptr [rbp - 0x4c], eax
	cmp	byte ptr [rbp - 0xb1], 0
	je	.label_1287
	jmp	.label_1290
.label_1290:
	mov	qword ptr [rbp - 0x5e0], 1
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_1293
	xor	eax, eax
	mov	dword ptr [rbp - 0x8b8], eax
	jmp	.label_1599
.label_1293:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x8b8], eax
.label_1599:
	mov	eax, dword ptr [rbp - 0x8b8]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x5e8], rcx
	mov	rcx, qword ptr [rbp - 0x5e0]
	cmp	rcx, qword ptr [rbp - 0x5e8]
	jae	.label_1300
	mov	rax, qword ptr [rbp - 0x5e8]
	mov	qword ptr [rbp - 0x8c0], rax
	jmp	.label_1307
.label_1300:
	mov	rax, qword ptr [rbp - 0x5e0]
	mov	qword ptr [rbp - 0x8c0], rax
.label_1307:
	mov	rax, qword ptr [rbp - 0x8c0]
	mov	qword ptr [rbp - 0x5f0], rax
	mov	rax, qword ptr [rbp - 0x5f0]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_1311
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1183
.label_1311:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1323
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_1326
	mov	rax, qword ptr [rbp - 0x5e0]
	cmp	rax, qword ptr [rbp - 0x5e8]
	jae	.label_1326
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x5e0]
	mov	qword ptr [rbp - 0x5f8], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_1254
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_1338
.label_1254:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x5f8]
	call	memset
	mov	rdx, qword ptr [rbp - 0x5f8]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_1344
.label_1338:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x5f8]
	call	memset
	mov	rdx, qword ptr [rbp - 0x5f8]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_1344:
	jmp	.label_1326
.label_1326:
	mov	al, byte ptr [rbp - 0xb1]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	byte ptr [rcx], al
	mov	rcx, qword ptr [rbp - 0x5e0]
	add	rcx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rcx
.label_1323:
	mov	rax, qword ptr [rbp - 0x5f0]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1287
.label_1287:
	jmp	.label_1370
.label_1545:
	movsxd	rax, dword ptr [rbp - 0x94]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_1372
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1183
.label_1372:
	cmp	byte ptr [rbp - 0xb1], 0
	je	.label_1380
	jmp	.label_1385
.label_1385:
	mov	qword ptr [rbp - 0x600], 1
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_1388
	xor	eax, eax
	mov	dword ptr [rbp - 0x8c4], eax
	jmp	.label_1392
.label_1388:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x8c4], eax
.label_1392:
	mov	eax, dword ptr [rbp - 0x8c4]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x608], rcx
	mov	rcx, qword ptr [rbp - 0x600]
	cmp	rcx, qword ptr [rbp - 0x608]
	jae	.label_1590
	mov	rax, qword ptr [rbp - 0x608]
	mov	qword ptr [rbp - 0x8d0], rax
	jmp	.label_1408
.label_1590:
	mov	rax, qword ptr [rbp - 0x600]
	mov	qword ptr [rbp - 0x8d0], rax
.label_1408:
	mov	rax, qword ptr [rbp - 0x8d0]
	mov	qword ptr [rbp - 0x610], rax
	mov	rax, qword ptr [rbp - 0x610]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_1416
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1183
.label_1416:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1424
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_1335
	mov	rax, qword ptr [rbp - 0x600]
	cmp	rax, qword ptr [rbp - 0x608]
	jae	.label_1335
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x600]
	mov	qword ptr [rbp - 0x618], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_1433
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_1441
.label_1433:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x618]
	call	memset
	mov	rdx, qword ptr [rbp - 0x618]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_1447
.label_1441:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x618]
	call	memset
	mov	rdx, qword ptr [rbp - 0x618]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_1447:
	jmp	.label_1335
.label_1335:
	mov	al, byte ptr [rbp - 0xb1]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	byte ptr [rcx], al
	mov	rcx, qword ptr [rbp - 0x600]
	add	rcx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rcx
.label_1424:
	mov	rax, qword ptr [rbp - 0x610]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1380
.label_1380:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1466
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	movsxd	rdx, dword ptr [rbp - 0x5d4]
	call	memset
	mov	esi, dword ptr [rbp - 0x5d4]
	mov	rdx, qword ptr [rbp - 0x80]
	movsxd	rdi, esi
	add	rdx, rdi
	mov	qword ptr [rbp - 0x80], rdx
.label_1466:
	movsxd	rax, dword ptr [rbp - 0x5d4]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	mov	dword ptr [rbp - 0x4c], 0
.label_1370:
	jmp	.label_1478
.label_1234:
	cmp	byte ptr [rbp - 0xb1], 0
	je	.label_1480
	jmp	.label_1482
.label_1482:
	mov	qword ptr [rbp - 0x620], 1
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_1485
	xor	eax, eax
	mov	dword ptr [rbp - 0x8d4], eax
	jmp	.label_1491
.label_1485:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x8d4], eax
.label_1491:
	mov	eax, dword ptr [rbp - 0x8d4]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x628], rcx
	mov	rcx, qword ptr [rbp - 0x620]
	cmp	rcx, qword ptr [rbp - 0x628]
	jae	.label_1341
	mov	rax, qword ptr [rbp - 0x628]
	mov	qword ptr [rbp - 0x8e0], rax
	jmp	.label_1503
.label_1341:
	mov	rax, qword ptr [rbp - 0x620]
	mov	qword ptr [rbp - 0x8e0], rax
.label_1503:
	mov	rax, qword ptr [rbp - 0x8e0]
	mov	qword ptr [rbp - 0x630], rax
	mov	rax, qword ptr [rbp - 0x630]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_1509
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1183
.label_1509:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1516
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_1517
	mov	rax, qword ptr [rbp - 0x620]
	cmp	rax, qword ptr [rbp - 0x628]
	jae	.label_1517
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x620]
	mov	qword ptr [rbp - 0x638], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_1526
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_1530
.label_1526:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x638]
	call	memset
	mov	rdx, qword ptr [rbp - 0x638]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_1534
.label_1530:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x638]
	call	memset
	mov	rdx, qword ptr [rbp - 0x638]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_1534:
	jmp	.label_1517
.label_1517:
	mov	al, byte ptr [rbp - 0xb1]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	byte ptr [rcx], al
	mov	rcx, qword ptr [rbp - 0x620]
	add	rcx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rcx
.label_1516:
	mov	rax, qword ptr [rbp - 0x630]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1480
.label_1480:
	jmp	.label_1478
.label_1478:
	jmp	.label_1232
.label_1232:
	jmp	.label_1555
.label_1555:
	lea	rax, [rbp - 0xe0]
	add	rax, 0x17
	mov	rcx, qword ptr [rbp - 0xc0]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x640], rax
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_1557
	xor	eax, eax
	mov	dword ptr [rbp - 0x8e4], eax
	jmp	.label_1566
.label_1557:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x8e4], eax
.label_1566:
	mov	eax, dword ptr [rbp - 0x8e4]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x648], rcx
	mov	rcx, qword ptr [rbp - 0x640]
	cmp	rcx, qword ptr [rbp - 0x648]
	jae	.label_1569
	mov	rax, qword ptr [rbp - 0x648]
	mov	qword ptr [rbp - 0x8f0], rax
	jmp	.label_1576
.label_1569:
	mov	rax, qword ptr [rbp - 0x640]
	mov	qword ptr [rbp - 0x8f0], rax
.label_1576:
	mov	rax, qword ptr [rbp - 0x8f0]
	mov	qword ptr [rbp - 0x650], rax
	mov	rax, qword ptr [rbp - 0x650]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_1583
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1183
.label_1583:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1594
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_1176
	mov	rax, qword ptr [rbp - 0x640]
	cmp	rax, qword ptr [rbp - 0x648]
	jae	.label_1176
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x640]
	mov	qword ptr [rbp - 0x658], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_1206
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_1189
.label_1206:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x658]
	call	memset
	mov	rdx, qword ptr [rbp - 0x658]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_1198
.label_1189:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x658]
	call	memset
	mov	rdx, qword ptr [rbp - 0x658]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_1198:
	jmp	.label_1176
.label_1176:
	test	byte ptr [rbp - 0xe1], 1
	je	.label_1209
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rdx, qword ptr [rbp - 0x640]
	call	memcpy_lowcase
	mov	qword ptr [rbp - 0x8f8], rax
	jmp	.label_1216
.label_1209:
	test	byte ptr [rbp - 0xe2], 1
	je	.label_1220
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rdx, qword ptr [rbp - 0x640]
	call	memcpy_uppcase
	mov	qword ptr [rbp - 0x900], rax
	jmp	.label_1227
.label_1220:
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rdx, qword ptr [rbp - 0x640]
	call	memcpy
.label_1227:
	jmp	.label_1216
.label_1216:
	mov	rax, qword ptr [rbp - 0x640]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_1594:
	mov	rax, qword ptr [rbp - 0x650]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1210
.label_1192:
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_1243
	jmp	.label_1235
.label_1243:
	cmp	dword ptr [rbp - 0x8c], 0
	jne	.label_1249
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_1249
	mov	dword ptr [rbp - 0x8c], 0x2b
	mov	dword ptr [rbp - 0xfc], 4
	jmp	.label_1252
.label_1249:
	mov	eax, dword ptr [rbp - 0x4c]
	sub	eax, 6
	mov	dword ptr [rbp - 0xfc], eax
	cmp	dword ptr [rbp - 0xfc], 0
	jge	.label_1256
	mov	dword ptr [rbp - 0xfc], 0
.label_1256:
	jmp	.label_1252
.label_1252:
	movabs	rax, OFFSET FLAT:.str.2_0
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_1265
.label_1324:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1270
	jmp	.label_1235
.label_1270:
	jmp	.label_1275
.label_1275:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_1217
.label_1207:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1281
	jmp	.label_1235
.label_1281:
	jmp	.label_1285
.label_1285:
	mov	dword ptr [rbp - 0x94], 2
	mov	eax, dword ptr [rbp - 0x68]
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_1217
.label_1321:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1292
	jmp	.label_1235
.label_1292:
	jmp	.label_1295
.label_1295:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_1298
.label_1328:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1302
	jmp	.label_1235
.label_1302:
	jmp	.label_1304
.label_1304:
	mov	dword ptr [rbp - 0x94], 2
	mov	eax, dword ptr [rbp - 0x68]
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_1298
.label_1317:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1310
	jmp	.label_1235
.label_1310:
	jmp	.label_1312
.label_1312:
	mov	dword ptr [rbp - 0x94], 3
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax + 0x1c], -1
	setl	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x9d], cl
	mov	rax, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rax + 0x1c]
	add	edx, 1
	mov	dword ptr [rbp - 0x9c], edx
	jmp	.label_1314
.label_1214:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1325
	jmp	.label_1235
.label_1325:
	jmp	.label_1330
.label_1330:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 4]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_1217
.label_1333:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1273
	jmp	.label_1235
.label_1273:
	jmp	.label_1282
.label_1282:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax + 0x10], -1
	setl	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x9d], cl
	mov	rax, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rax + 0x10]
	add	edx, 1
	mov	dword ptr [rbp - 0x9c], edx
	jmp	.label_1314
.label_1219:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1348
	jmp	.label_1235
.label_1348:
	mov	eax, dword ptr [rbp - 0x64]
	mov	dword ptr [rbp - 0x98], eax
	cmp	dword ptr [rbp - 0x4c], -1
	jne	.label_1352
	mov	dword ptr [rbp - 0x4c], 9
	jmp	.label_1379
.label_1352:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x65c], eax
.label_1366:
	cmp	dword ptr [rbp - 0x65c], 9
	jge	.label_1360
	mov	eax, 0xa
	mov	ecx, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x904], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x904]
	idiv	ecx
	mov	dword ptr [rbp - 0x98], eax
	mov	eax, dword ptr [rbp - 0x65c]
	add	eax, 1
	mov	dword ptr [rbp - 0x65c], eax
	jmp	.label_1366
.label_1360:
	jmp	.label_1379
.label_1379:
	jmp	.label_1382
.label_1382:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x94], eax
	mov	eax, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_1217
.label_1337:
	jmp	.label_1391
.label_1391:
	mov	qword ptr [rbp - 0x668], 1
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_1393
	xor	eax, eax
	mov	dword ptr [rbp - 0x908], eax
	jmp	.label_1396
.label_1393:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x908], eax
.label_1396:
	mov	eax, dword ptr [rbp - 0x908]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x670], rcx
	mov	rcx, qword ptr [rbp - 0x668]
	cmp	rcx, qword ptr [rbp - 0x670]
	jae	.label_1403
	mov	rax, qword ptr [rbp - 0x670]
	mov	qword ptr [rbp - 0x910], rax
	jmp	.label_1244
.label_1403:
	mov	rax, qword ptr [rbp - 0x668]
	mov	qword ptr [rbp - 0x910], rax
.label_1244:
	mov	rax, qword ptr [rbp - 0x910]
	mov	qword ptr [rbp - 0x678], rax
	mov	rax, qword ptr [rbp - 0x678]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_1420
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1183
.label_1420:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1429
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_1432
	mov	rax, qword ptr [rbp - 0x668]
	cmp	rax, qword ptr [rbp - 0x670]
	jae	.label_1432
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x668]
	mov	qword ptr [rbp - 0x680], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_1438
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_1591
.label_1438:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x680]
	call	memset
	mov	rdx, qword ptr [rbp - 0x680]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_1452
.label_1591:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x680]
	call	memset
	mov	rdx, qword ptr [rbp - 0x680]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_1452:
	jmp	.label_1432
.label_1432:
	mov	rax, qword ptr [rbp - 0x80]
	mov	byte ptr [rax], 0xa
	mov	rax, qword ptr [rbp - 0x668]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_1429:
	mov	rax, qword ptr [rbp - 0x678]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1210
.label_1224:
	mov	byte ptr [rbp - 0xe1], 1
	mov	dword ptr [rbp - 0xf8], 0x70
.label_1343:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_1284
	mov	byte ptr [rbp - 0xe2], 0
	mov	byte ptr [rbp - 0xe1], 1
.label_1284:
	jmp	.label_1242
.label_1346:
	jmp	.label_1476
.label_1476:
	mov	dword ptr [rbp - 0x94], 1
	mov	byte ptr [rbp - 0x9d], 0
	mov	rax, qword ptr [rbp - 0x40]
	imul	ecx, dword ptr [rax + 0x10], 0xb
	sar	ecx, 5
	add	ecx, 1
	mov	dword ptr [rbp - 0x9c], ecx
	jmp	.label_1314
.label_1493:
	movabs	rax, OFFSET FLAT:.str.3_0
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_1308
.label_1351:
	jmp	.label_1242
.label_1238:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1497
	jmp	.label_1235
.label_1497:
	jmp	.label_1501
.label_1501:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_1217
.label_1423:
	lea	rax, [rbp - 0x6b8]
	mov	ecx, 0x38
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x918], rax
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x918]
	call	mktime_z
	lea	rdx, [rbp - 0xe0]
	mov	qword ptr [rbp - 0x6c0], rax
	add	rdx, 0x17
	mov	qword ptr [rbp - 0xc0], rdx
	cmp	qword ptr [rbp - 0x6c0], 0
	setl	r8b
	and	r8b, 1
	mov	byte ptr [rbp - 0x9d], r8b
.label_1537:
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x6c0]
	cqo	
	idiv	rcx
	mov	esi, edx
	mov	dword ptr [rbp - 0x6c4], esi
	mov	rdx, qword ptr [rbp - 0x6c0]
	mov	rax, rdx
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 0x6c0], rax
	test	byte ptr [rbp - 0x9d], 1
	je	.label_1520
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x6c4]
	mov	dword ptr [rbp - 0x91c], eax
	jmp	.label_1532
.label_1520:
	mov	eax, dword ptr [rbp - 0x6c4]
	mov	dword ptr [rbp - 0x91c], eax
.label_1532:
	mov	eax, dword ptr [rbp - 0x91c]
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rsi, rdx
	add	rsi, -1
	mov	qword ptr [rbp - 0xc0], rsi
	mov	byte ptr [rdx - 1], cl
	cmp	qword ptr [rbp - 0x6c0], 0
	jne	.label_1537
	mov	dword ptr [rbp - 0x94], 1
	mov	byte ptr [rbp - 0x9e], 0
	jmp	.label_1544
.label_1262:
	cmp	dword ptr [rbp - 0x90], 0x4f
	jne	.label_1548
	jmp	.label_1235
.label_1548:
	jmp	.label_1242
.label_1241:
	movabs	rax, OFFSET FLAT:.str.4_0
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_1308
.label_1364:
	jmp	.label_1558
.label_1558:
	mov	qword ptr [rbp - 0x6d0], 1
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_1559
	xor	eax, eax
	mov	dword ptr [rbp - 0x920], eax
	jmp	.label_1564
.label_1559:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x920], eax
.label_1564:
	mov	eax, dword ptr [rbp - 0x920]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x6d8], rcx
	mov	rcx, qword ptr [rbp - 0x6d0]
	cmp	rcx, qword ptr [rbp - 0x6d8]
	jae	.label_1488
	mov	rax, qword ptr [rbp - 0x6d8]
	mov	qword ptr [rbp - 0x928], rax
	jmp	.label_1468
.label_1488:
	mov	rax, qword ptr [rbp - 0x6d0]
	mov	qword ptr [rbp - 0x928], rax
.label_1468:
	mov	rax, qword ptr [rbp - 0x928]
	mov	qword ptr [rbp - 0x6e0], rax
	mov	rax, qword ptr [rbp - 0x6e0]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_1582
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1183
.label_1582:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1562
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_1204
	mov	rax, qword ptr [rbp - 0x6d0]
	cmp	rax, qword ptr [rbp - 0x6d8]
	jae	.label_1204
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x6d0]
	mov	qword ptr [rbp - 0x6e8], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_1236
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_1187
.label_1236:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x6e8]
	call	memset
	mov	rdx, qword ptr [rbp - 0x6e8]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_1213
.label_1187:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x6e8]
	call	memset
	mov	rdx, qword ptr [rbp - 0x6e8]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_1213:
	jmp	.label_1204
.label_1204:
	mov	rax, qword ptr [rbp - 0x80]
	mov	byte ptr [rax], 9
	mov	rax, qword ptr [rbp - 0x6d0]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_1562:
	mov	rax, qword ptr [rbp - 0x6e0]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1210
.label_1373:
	jmp	.label_1215
.label_1215:
	mov	eax, 7
	mov	dword ptr [rbp - 0x94], 1
	mov	rcx, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rcx + 0x18]
	sub	edx, 1
	add	edx, 7
	mov	dword ptr [rbp - 0x92c], eax
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0x92c]
	idiv	esi
	add	edx, 1
	mov	dword ptr [rbp - 0x98], edx
	jmp	.label_1217
.label_1248:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1231
	jmp	.label_1235
.label_1231:
	jmp	.label_1237
.label_1237:
	mov	eax, 7
	mov	dword ptr [rbp - 0x94], 2
	mov	rcx, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rcx + 0x1c]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	edx, dword ptr [rcx + 0x18]
	add	edx, 7
	mov	dword ptr [rbp - 0x930], eax
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0x930]
	idiv	esi
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_1217
.label_1199:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1250
	jmp	.label_1235
.label_1250:
	mov	eax, 0xffffff9c
	mov	ecx, 0x12c
	mov	rdx, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rdx + 0x14]
	mov	rdx, qword ptr [rbp - 0x40]
	cmp	dword ptr [rdx + 0x14], 0
	cmovl	eax, ecx
	add	esi, eax
	mov	dword ptr [rbp - 0x6ec], esi
	mov	dword ptr [rbp - 0x6f0], 0
	mov	rdx, qword ptr [rbp - 0x40]
	mov	edi, dword ptr [rdx + 0x1c]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rdx + 0x18]
	call	iso_week_days
	mov	dword ptr [rbp - 0x6f4], eax
	cmp	dword ptr [rbp - 0x6f4], 0
	jge	.label_1264
	xor	eax, eax
	mov	cl, al
	mov	eax, 4
	mov	dword ptr [rbp - 0x6f0], 0xffffffff
	mov	rdx, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rdx + 0x1c]
	mov	edi, dword ptr [rbp - 0x6ec]
	sub	edi, 1
	mov	dword ptr [rbp - 0x934], eax
	mov	eax, edi
	cdq	
	mov	edi, dword ptr [rbp - 0x934]
	idiv	edi
	cmp	edx, 0
	mov	dword ptr [rbp - 0x938], esi
	mov	byte ptr [rbp - 0x939], cl
	jne	.label_1268
	mov	al, 1
	mov	ecx, 0x64
	mov	edx, dword ptr [rbp - 0x6ec]
	sub	edx, 1
	mov	byte ptr [rbp - 0x93a], al
	mov	eax, edx
	cdq	
	idiv	ecx
	cmp	edx, 0
	mov	sil, byte ptr [rbp - 0x93a]
	mov	byte ptr [rbp - 0x93b], sil
	jne	.label_1390
	mov	eax, 0x190
	mov	ecx, dword ptr [rbp - 0x6ec]
	sub	ecx, 1
	mov	dword ptr [rbp - 0x940], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x940]
	idiv	ecx
	cmp	edx, 0
	sete	sil
	mov	byte ptr [rbp - 0x93b], sil
.label_1390:
	mov	al, byte ptr [rbp - 0x93b]
	mov	byte ptr [rbp - 0x939], al
.label_1268:
	mov	al, byte ptr [rbp - 0x939]
	and	al, 1
	movzx	ecx, al
	add	ecx, 0x16d
	mov	edx, dword ptr [rbp - 0x938]
	add	edx, ecx
	mov	rsi, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rsi + 0x18]
	mov	edi, edx
	call	iso_week_days
	mov	dword ptr [rbp - 0x6f4], eax
	jmp	.label_1367
.label_1264:
	xor	eax, eax
	mov	cl, al
	mov	eax, 4
	mov	rdx, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rdx + 0x1c]
	mov	edi, dword ptr [rbp - 0x6ec]
	mov	dword ptr [rbp - 0x944], eax
	mov	eax, edi
	cdq	
	mov	edi, dword ptr [rbp - 0x944]
	idiv	edi
	cmp	edx, 0
	mov	dword ptr [rbp - 0x948], esi
	mov	byte ptr [rbp - 0x949], cl
	jne	.label_1316
	mov	al, 1
	mov	ecx, 0x64
	mov	edx, dword ptr [rbp - 0x6ec]
	mov	byte ptr [rbp - 0x94a], al
	mov	eax, edx
	cdq	
	idiv	ecx
	cmp	edx, 0
	mov	sil, byte ptr [rbp - 0x94a]
	mov	byte ptr [rbp - 0x94b], sil
	jne	.label_1229
	mov	eax, 0x190
	mov	ecx, dword ptr [rbp - 0x6ec]
	mov	dword ptr [rbp - 0x950], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x950]
	idiv	ecx
	cmp	edx, 0
	sete	sil
	mov	byte ptr [rbp - 0x94b], sil
.label_1229:
	mov	al, byte ptr [rbp - 0x94b]
	mov	byte ptr [rbp - 0x949], al
.label_1316:
	mov	al, byte ptr [rbp - 0x949]
	and	al, 1
	movzx	ecx, al
	add	ecx, 0x16d
	mov	edx, dword ptr [rbp - 0x948]
	sub	edx, ecx
	mov	rsi, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rsi + 0x18]
	mov	edi, edx
	call	iso_week_days
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x6f8], eax
	cmp	ecx, dword ptr [rbp - 0x6f8]
	jg	.label_1354
	mov	dword ptr [rbp - 0x6f0], 1
	mov	eax, dword ptr [rbp - 0x6f8]
	mov	dword ptr [rbp - 0x6f4], eax
.label_1354:
	jmp	.label_1367
.label_1367:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x47
	mov	dword ptr [rbp - 0x954], ecx
	mov	dword ptr [rbp - 0x958], edx
	je	.label_1369
	jmp	.label_1375
.label_1375:
	mov	eax, dword ptr [rbp - 0x954]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x95c], eax
	jne	.label_1377
	jmp	.label_1384
.label_1384:
	mov	eax, 0x64
	mov	rcx, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rcx + 0x14]
	mov	dword ptr [rbp - 0x960], eax
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0x960]
	idiv	esi
	add	edx, dword ptr [rbp - 0x6f0]
	mov	eax, edx
	cdq	
	idiv	esi
	mov	dword ptr [rbp - 0x6fc], edx
	xor	eax, eax
	mov	dword ptr [rbp - 0x94], 2
	mov	byte ptr [rbp - 0x9d], 0
	cmp	eax, dword ptr [rbp - 0x6fc]
	jg	.label_1387
	mov	eax, dword ptr [rbp - 0x6fc]
	mov	dword ptr [rbp - 0x964], eax
	jmp	.label_1406
.label_1387:
	mov	eax, 0xfffff894
	mov	rcx, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rcx + 0x14]
	sub	eax, dword ptr [rbp - 0x6f0]
	cmp	edx, eax
	jge	.label_1411
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x6fc]
	mov	dword ptr [rbp - 0x968], eax
	jmp	.label_1417
.label_1411:
	mov	eax, dword ptr [rbp - 0x6fc]
	add	eax, 0x64
	mov	dword ptr [rbp - 0x968], eax
.label_1417:
	mov	eax, dword ptr [rbp - 0x968]
	mov	dword ptr [rbp - 0x964], eax
.label_1406:
	mov	eax, dword ptr [rbp - 0x964]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_1410
.label_1369:
	jmp	.label_1428
.label_1428:
	mov	eax, 0xfffff894
	mov	dword ptr [rbp - 0x94], 4
	mov	rcx, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rcx + 0x14]
	sub	eax, dword ptr [rbp - 0x6f0]
	cmp	edx, eax
	setl	sil
	and	sil, 1
	mov	byte ptr [rbp - 0x9d], sil
	mov	rcx, qword ptr [rbp - 0x40]
	mov	eax, dword ptr [rcx + 0x14]
	add	eax, 0x76c
	add	eax, dword ptr [rbp - 0x6f0]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_1410
.label_1377:
	jmp	.label_1451
.label_1451:
	mov	eax, 7
	mov	dword ptr [rbp - 0x94], 2
	mov	ecx, dword ptr [rbp - 0x6f4]
	mov	dword ptr [rbp - 0x96c], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x96c]
	idiv	ecx
	add	eax, 1
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_1217
.label_1257:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1456
	jmp	.label_1235
.label_1456:
	jmp	.label_1460
.label_1460:
	mov	eax, 7
	mov	dword ptr [rbp - 0x94], 2
	mov	rcx, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rcx + 0x1c]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rcx + 0x18]
	sub	esi, 1
	add	esi, 7
	mov	dword ptr [rbp - 0x970], eax
	mov	eax, esi
	mov	dword ptr [rbp - 0x974], edx
	cdq	
	mov	esi, dword ptr [rbp - 0x970]
	idiv	esi
	mov	edi, dword ptr [rbp - 0x974]
	sub	edi, edx
	add	edi, 7
	mov	eax, edi
	cdq	
	idiv	esi
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_1217
.label_1378:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1472
	jmp	.label_1235
.label_1472:
	jmp	.label_1475
.label_1475:
	mov	dword ptr [rbp - 0x94], 1
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0x18]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_1217
.label_1267:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1484
	jmp	.label_1242
.label_1484:
	cmp	dword ptr [rbp - 0x90], 0x4f
	jne	.label_1490
	jmp	.label_1235
.label_1490:
	jmp	.label_1494
.label_1494:
	mov	dword ptr [rbp - 0x94], 4
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax + 0x14], 0xfffff894
	setl	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x9d], cl
	mov	rax, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rax + 0x14]
	add	edx, 0x76c
	mov	dword ptr [rbp - 0x9c], edx
	jmp	.label_1410
.label_1570:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1506
	jmp	.label_1242
.label_1506:
	mov	eax, 0x64
	mov	rcx, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rcx + 0x14]
	mov	dword ptr [rbp - 0x978], eax
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0x978]
	idiv	esi
	mov	dword ptr [rbp - 0x700], edx
	cmp	dword ptr [rbp - 0x700], 0
	jge	.label_1550
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax + 0x14], 0xfffff894
	jge	.label_1439
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x700]
	mov	dword ptr [rbp - 0x97c], eax
	jmp	.label_1519
.label_1439:
	mov	eax, dword ptr [rbp - 0x700]
	add	eax, 0x64
	mov	dword ptr [rbp - 0x97c], eax
.label_1519:
	mov	eax, dword ptr [rbp - 0x97c]
	mov	dword ptr [rbp - 0x700], eax
.label_1550:
	jmp	.label_1528
.label_1528:
	mov	dword ptr [rbp - 0x94], 2
	mov	byte ptr [rbp - 0x9d], 0
	mov	eax, dword ptr [rbp - 0x700]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_1410
.label_1276:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_1191
	mov	byte ptr [rbp - 0xe2], 0
	mov	byte ptr [rbp - 0xe1], 1
.label_1191:
	jmp	.label_1538
.label_1538:
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x708], rax
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_1540
	xor	eax, eax
	mov	dword ptr [rbp - 0x980], eax
	jmp	.label_1543
.label_1540:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x980], eax
.label_1543:
	mov	eax, dword ptr [rbp - 0x980]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x710], rcx
	mov	rcx, qword ptr [rbp - 0x708]
	cmp	rcx, qword ptr [rbp - 0x710]
	jae	.label_1546
	mov	rax, qword ptr [rbp - 0x710]
	mov	qword ptr [rbp - 0x988], rax
	jmp	.label_1553
.label_1546:
	mov	rax, qword ptr [rbp - 0x708]
	mov	qword ptr [rbp - 0x988], rax
.label_1553:
	mov	rax, qword ptr [rbp - 0x988]
	mov	qword ptr [rbp - 0x718], rax
	mov	rax, qword ptr [rbp - 0x718]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_1561
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1183
.label_1561:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1572
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_1222
	mov	rax, qword ptr [rbp - 0x708]
	cmp	rax, qword ptr [rbp - 0x710]
	jae	.label_1222
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x708]
	mov	qword ptr [rbp - 0x720], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_1580
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_1586
.label_1580:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x720]
	call	memset
	mov	rdx, qword ptr [rbp - 0x720]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_1593
.label_1586:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x720]
	call	memset
	mov	rdx, qword ptr [rbp - 0x720]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_1593:
	jmp	.label_1222
.label_1222:
	test	byte ptr [rbp - 0xe1], 1
	je	.label_1228
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x708]
	call	memcpy_lowcase
	mov	qword ptr [rbp - 0x990], rax
	jmp	.label_1193
.label_1228:
	test	byte ptr [rbp - 0xe2], 1
	je	.label_1196
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x708]
	call	memcpy_uppcase
	mov	qword ptr [rbp - 0x998], rax
	jmp	.label_1202
.label_1196:
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x708]
	call	memcpy
.label_1202:
	jmp	.label_1193
.label_1193:
	mov	rax, qword ptr [rbp - 0x708]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_1572:
	mov	rax, qword ptr [rbp - 0x718]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1210
.label_1585:
	mov	qword ptr [rbp - 0xf0], 1
.label_1226:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rbp - 0x88]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x3a
	jne	.label_1221
	jmp	.label_1225
.label_1225:
	mov	rax, qword ptr [rbp - 0xf0]
	add	rax, 1
	mov	qword ptr [rbp - 0xf0], rax
	jmp	.label_1226
.label_1221:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rbp - 0x88]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x7a
	je	.label_1233
	jmp	.label_1235
.label_1233:
	mov	rax, qword ptr [rbp - 0xf0]
	add	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_1239
.label_1399:
	mov	qword ptr [rbp - 0xf0], 0
.label_1239:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax + 0x20], 0
	jge	.label_1247
	jmp	.label_1210
.label_1247:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	edx, ecx
	mov	dword ptr [rbp - 0x724], edx
	cmp	dword ptr [rbp - 0x724], 0
	mov	byte ptr [rbp - 0x999], al
	jl	.label_1179
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x724], 0
	mov	byte ptr [rbp - 0x99a], cl
	jne	.label_1258
	mov	rax, qword ptr [rbp - 0x70]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	sete	dl
	mov	byte ptr [rbp - 0x99a], dl
.label_1258:
	mov	al, byte ptr [rbp - 0x99a]
	mov	byte ptr [rbp - 0x999], al
.label_1179:
	mov	al, byte ptr [rbp - 0x999]
	and	al, 1
	mov	byte ptr [rbp - 0x9d], al
	movsxd	rcx, dword ptr [rbp - 0x724]
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
	mov	dword ptr [rbp - 0x728], edx
	movsxd	rcx, dword ptr [rbp - 0x724]
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
	mov	dword ptr [rbp - 0x72c], esi
	movsxd	rcx, dword ptr [rbp - 0x724]
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
	mov	dword ptr [rbp - 0x730], edx
	mov	rcx, qword ptr [rbp - 0xf0]
	mov	r8, rcx
	sub	r8, 3
	mov	qword ptr [rbp - 0x9a8], rcx
	mov	qword ptr [rbp - 0x9b0], r8
	ja	.label_1269
	mov	rax, qword ptr [rbp - 0x9a8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1318]]
	jmp	rcx
.label_2345:
	jmp	.label_1181
.label_1181:
	mov	dword ptr [rbp - 0x94], 5
	mov	dword ptr [rbp - 0xa4], 0
	imul	eax, dword ptr [rbp - 0x728], 0x64
	add	eax, dword ptr [rbp - 0x72c]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_1203
.label_2346:
	jmp	.label_1331
.label_1331:
	jmp	.label_1512
.label_1512:
	mov	dword ptr [rbp - 0x94], 6
	mov	dword ptr [rbp - 0xa4], 4
	imul	eax, dword ptr [rbp - 0x728], 0x64
	add	eax, dword ptr [rbp - 0x72c]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_1203
.label_2347:
	jmp	.label_1356
.label_1356:
	jmp	.label_1431
.label_1431:
	mov	dword ptr [rbp - 0x94], 9
	mov	dword ptr [rbp - 0xa4], 0x14
	imul	eax, dword ptr [rbp - 0x728], 0x2710
	imul	ecx, dword ptr [rbp - 0x72c], 0x64
	add	eax, ecx
	add	eax, dword ptr [rbp - 0x730]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_1203
.label_2348:
	cmp	dword ptr [rbp - 0x730], 0
	je	.label_1353
	jmp	.label_1356
.label_1353:
	cmp	dword ptr [rbp - 0x72c], 0
	je	.label_1357
	jmp	.label_1331
.label_1357:
	jmp	.label_1361
.label_1361:
	mov	dword ptr [rbp - 0x94], 3
	mov	dword ptr [rbp - 0xa4], 0
	mov	eax, dword ptr [rbp - 0x728]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_1203
.label_1269:
	jmp	.label_1235
.label_1574:
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, -1
	mov	qword ptr [rbp - 0x88], rax
.label_1404:
	jmp	.label_1235
.label_1235:
	mov	dword ptr [rbp - 0x734], 1
.label_1499:
	mov	eax, 1
	sub	eax, dword ptr [rbp - 0x734]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x88]
	movsx	eax, byte ptr [rdx + rcx]
	cmp	eax, 0x25
	je	.label_1535
	jmp	.label_1395
.label_1395:
	mov	eax, dword ptr [rbp - 0x734]
	add	eax, 1
	mov	dword ptr [rbp - 0x734], eax
	jmp	.label_1499
.label_1535:
	jmp	.label_1401
.label_1401:
	movsxd	rax, dword ptr [rbp - 0x734]
	mov	qword ptr [rbp - 0x740], rax
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_1402
	xor	eax, eax
	mov	dword ptr [rbp - 0x9b4], eax
	jmp	.label_1409
.label_1402:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x9b4], eax
.label_1409:
	mov	eax, dword ptr [rbp - 0x9b4]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x748], rcx
	mov	rcx, qword ptr [rbp - 0x740]
	cmp	rcx, qword ptr [rbp - 0x748]
	jae	.label_1415
	mov	rax, qword ptr [rbp - 0x748]
	mov	qword ptr [rbp - 0x9c0], rax
	jmp	.label_1421
.label_1415:
	mov	rax, qword ptr [rbp - 0x740]
	mov	qword ptr [rbp - 0x9c0], rax
.label_1421:
	mov	rax, qword ptr [rbp - 0x9c0]
	mov	qword ptr [rbp - 0x750], rax
	mov	rax, qword ptr [rbp - 0x750]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_1426
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1183
.label_1426:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1436
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_1440
	mov	rax, qword ptr [rbp - 0x740]
	cmp	rax, qword ptr [rbp - 0x748]
	jae	.label_1440
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x740]
	mov	qword ptr [rbp - 0x758], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_1446
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_1454
.label_1446:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x758]
	call	memset
	mov	rdx, qword ptr [rbp - 0x758]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_1459
.label_1454:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x758]
	call	memset
	mov	rdx, qword ptr [rbp - 0x758]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_1459:
	jmp	.label_1440
.label_1440:
	test	byte ptr [rbp - 0xe1], 1
	je	.label_1467
	mov	eax, 1
	mov	rdi, qword ptr [rbp - 0x80]
	sub	eax, dword ptr [rbp - 0x734]
	movsxd	rcx, eax
	add	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x740]
	mov	rsi, rcx
	call	memcpy_lowcase
	mov	qword ptr [rbp - 0x9c8], rax
	jmp	.label_1477
.label_1467:
	test	byte ptr [rbp - 0xe2], 1
	je	.label_1481
	mov	eax, 1
	mov	rdi, qword ptr [rbp - 0x80]
	sub	eax, dword ptr [rbp - 0x734]
	movsxd	rcx, eax
	add	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x740]
	mov	rsi, rcx
	call	memcpy_uppcase
	mov	qword ptr [rbp - 0x9d0], rax
	jmp	.label_1495
.label_1481:
	mov	eax, 1
	mov	rdi, qword ptr [rbp - 0x80]
	sub	eax, dword ptr [rbp - 0x734]
	movsxd	rcx, eax
	add	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x740]
	mov	rsi, rcx
	call	memcpy
.label_1495:
	jmp	.label_1477
.label_1477:
	mov	rax, qword ptr [rbp - 0x740]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_1436:
	mov	rax, qword ptr [rbp - 0x750]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1210
.label_1210:
	jmp	.label_1469
.label_1469:
	mov	dword ptr [rbp - 0x4c], 0xffffffff
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, 1
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_1463
.label_1374:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1498
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1498
	mov	rax, qword ptr [rbp - 0x80]
	mov	byte ptr [rax], 0
.label_1498:
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x20], rax
.label_1183:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x9d8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f690

	.globl memcpy_lowcase
	.type memcpy_lowcase, @function
memcpy_lowcase:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
.label_1601:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	cmp	rax, 0
	jbe	.label_1600
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edi, byte ptr [rcx + rax]
	call	tolower
	mov	dl, al
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 8]
	mov	byte ptr [rsi + rcx], dl
	jmp	.label_1601
.label_1600:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f6f0

	.globl memcpy_uppcase
	.type memcpy_uppcase, @function
memcpy_uppcase:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
.label_1603:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	cmp	rax, 0
	jbe	.label_1602
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edi, byte ptr [rcx + rax]
	call	toupper
	mov	dl, al
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 8]
	mov	byte ptr [rsi + rcx], dl
	jmp	.label_1603
.label_1602:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f750

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
	.align	32
	#Procedure 0x40f790

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_1606
	movabs	rdi, OFFSET FLAT:.str_5
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x1c], eax
	call	abort
.label_1606:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	call	strrchr
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1607
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1604
.label_1607:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_1604:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cmp	rax, 7
	jl	.label_1608
	movabs	rsi, OFFSET FLAT:.str.1_2
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, -7
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_1608
	movabs	rsi, OFFSET FLAT:.str.2_1
	mov	eax, 3
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_1605
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_1605:
	jmp	.label_1608
.label_1608:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f8b0
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
	je	.label_1609
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1610
.label_1609:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1610
.label_1610:
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
	#Procedure 0x40f930
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_1611
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1612
.label_1611:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1612
.label_1612:
	mov	rax, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f970
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
	je	.label_1613
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1614
.label_1613:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1614
.label_1614:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f9c0

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
	je	.label_1615
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1616
.label_1615:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1616
.label_1616:
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
	#Procedure 0x40fa70
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_1617
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_1617:
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
	#Procedure 0x40fab0

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
	jne	.label_1618
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_1618:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1620
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1619
.label_1620:
	call	abort
.label_1619:
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
	#Procedure 0x40fb20
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
	je	.label_1621
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1622
.label_1621:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1622
.label_1622:
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
	#Procedure 0x40fbf0

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
.label_1755:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_1655
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1662]]
	jmp	rcx
.label_2356:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_2355:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1670
	jmp	.label_1673
.label_1673:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1674
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_1674:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1670
.label_1670:
	movabs	rax, OFFSET FLAT:.str.10_0
	mov	byte ptr [rbp - 0x79], 1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_1684
.label_2357:
	mov	byte ptr [rbp - 0x79], 1
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_1684
.label_2358:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_1783
	movabs	rdi, OFFSET FLAT:.str.11
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	movabs	rdi, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_1783:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1650
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_1726:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_1709
	jmp	.label_1713
.label_1713:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1715
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_1715:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1721
.label_1721:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1726
.label_1709:
	jmp	.label_1650
.label_1650:
	mov	byte ptr [rbp - 0x79], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1684
.label_2353:
	mov	byte ptr [rbp - 0x79], 1
.label_2352:
	mov	byte ptr [rbp - 0x7b], 1
.label_2354:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1742
	mov	byte ptr [rbp - 0x79], 1
.label_1742:
	jmp	.label_1743
.label_1743:
	mov	dword ptr [rbp - 0x34], 2
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1744
	jmp	.label_1746
.label_1746:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1748
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1748:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1744
.label_1744:
	movabs	rax, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_1684
.label_2351:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_1684
.label_1655:
	call	abort
.label_1684:
	mov	qword ptr [rbp - 0x58], 0
.label_1723:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_1759
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_1763
.label_1759:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], edx
.label_1763:
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_1773
	jmp	.label_1679
.label_1773:
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	je	.label_1780
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_1780
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_1780
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	jne	.label_1790
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_1790
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_1801
.label_1790:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_1801:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	ja	.label_1780
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_1780
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1807
	jmp	.label_1624
.label_1807:
	mov	byte ptr [rbp - 0x81], 1
.label_1780:
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
	ja	.label_1811
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1815]]
	jmp	rcx
.label_2360:
	test	byte ptr [rbp - 0x79], 1
	je	.label_1819
	jmp	.label_1810
.label_1810:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_2330
	jmp	.label_1624
.label_2330:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1623
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_1623
	jmp	.label_1630
.label_1630:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1631
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1631:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1635
.label_1635:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1639
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_1639:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1645
.label_1645:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1652
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1652:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_1623:
	jmp	.label_1663
.label_1663:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1665
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_1665:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1672
.label_1672:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_1676
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1676
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_1676
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x39
	jg	.label_1676
	jmp	.label_1692
.label_1692:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1694
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_1694:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1700
.label_1700:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1704
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_1704:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1676
.label_1676:
	mov	byte ptr [rbp - 0x7f], 0x30
	jmp	.label_1714
.label_1819:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_1691
	jmp	.label_1711
.label_1691:
	jmp	.label_1714
.label_1714:
	jmp	.label_1646
.label_2371:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0x100], ecx
	je	.label_1722
	jmp	.label_1729
.label_1729:
	mov	eax, dword ptr [rbp - 0xfc]
	sub	eax, 5
	mov	dword ptr [rbp - 0x104], eax
	je	.label_1731
	jmp	.label_1735
.label_1722:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1737
	jmp	.label_1624
.label_1737:
	jmp	.label_1741
.label_1731:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_1747
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1747
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3f
	jne	.label_1747
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rax + rcx + 2]
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	je	.label_1724
	jmp	.label_1754
.label_1754:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	jb	.label_1724
	jmp	.label_1757
.label_1757:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	je	.label_1724
	jmp	.label_1789
.label_1789:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2f
	mov	dword ptr [rbp - 0x118], eax
	je	.label_1724
	jmp	.label_1767
.label_1767:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	ja	.label_1768
	jmp	.label_1724
.label_1724:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1775
	jmp	.label_1624
.label_1775:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1779
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_1779:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1788
.label_1788:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1792
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_1792:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1797
.label_1797:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1805
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_1805:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1803
.label_1803:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1816
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_1816:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1806
.label_1768:
	jmp	.label_1806
.label_1806:
	jmp	.label_1747
.label_1747:
	jmp	.label_1741
.label_1735:
	jmp	.label_1741
.label_1741:
	jmp	.label_1646
.label_2361:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_1640
.label_2362:
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_1640
.label_2366:
	mov	byte ptr [rbp - 0x80], 0x66
	jmp	.label_1640
.label_2364:
	mov	byte ptr [rbp - 0x80], 0x6e
	jmp	.label_1633
.label_2367:
	mov	byte ptr [rbp - 0x80], 0x72
	jmp	.label_1633
.label_2363:
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_1633
.label_2365:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_1640
.label_2372:
	mov	al, byte ptr [rbp - 0x7f]
	mov	byte ptr [rbp - 0x80], al
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1821
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1823
	jmp	.label_1624
.label_1823:
	jmp	.label_1625
.label_1821:
	test	byte ptr [rbp - 0x79], 1
	je	.label_1626
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1626
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_1626
	jmp	.label_1625
.label_1626:
	jmp	.label_1633
.label_1633:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1634
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1634
	jmp	.label_1624
.label_1634:
	jmp	.label_1640
.label_1640:
	test	byte ptr [rbp - 0x79], 1
	je	.label_1642
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_1644
.label_1642:
	jmp	.label_1646
.label_2373:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_1648
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_1653
	jmp	.label_1657
.label_1648:
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_1653
.label_1657:
	jmp	.label_1646
.label_1653:
	jmp	.label_1661
.label_1661:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_1664
	jmp	.label_1646
.label_1664:
	jmp	.label_1667
.label_1667:
	mov	byte ptr [rbp - 0x83], 1
.label_2368:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1671
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1671
	jmp	.label_1624
.label_1671:
	jmp	.label_1646
.label_2370:
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1678
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1683
	jmp	.label_1624
.label_1683:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1689
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_1689
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_1689:
	jmp	.label_1696
.label_1696:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1795
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1795:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1703
.label_1703:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1706
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_1706:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1712
.label_1712:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1718
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1718:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_1678:
	jmp	.label_1646
.label_2369:
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_1646
.label_1811:
	test	byte ptr [rbp - 0x7a], 1
	je	.label_1730
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
	jmp	.label_1740
.label_1730:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_1750
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_1750:
	jmp	.label_1654
.label_1654:
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
	jne	.label_1765
	jmp	.label_1771
.label_1765:
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_1772
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_1771
.label_1772:
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_1660
	mov	byte ptr [rbp - 0x91], 0
.label_1798:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_1781
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_1781:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_1794
	jmp	.label_1796
.label_1794:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_1798
.label_1796:
	jmp	.label_1771
.label_1660:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1632
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1632
	mov	qword ptr [rbp - 0xb8], 1
.label_1628:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_1804
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
	jb	.label_1669
	jmp	.label_1813
.label_1813:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x138], eax
	je	.label_1669
	jmp	.label_1784
.label_1784:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_1669
	jmp	.label_1820
.label_1820:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_1822
	jmp	.label_1669
.label_1669:
	jmp	.label_1624
.label_1822:
	jmp	.label_1734
.label_1734:
	jmp	.label_1641
.label_1641:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_1628
.label_1804:
	jmp	.label_1632
.label_1632:
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_1636
	mov	byte ptr [rbp - 0x91], 0
.label_1636:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_1719
.label_1719:
	jmp	.label_1761
.label_1761:
	jmp	.label_1647
.label_1647:
	lea	rdi, [rbp - 0xa0]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_1654
.label_1771:
	jmp	.label_1740
.label_1740:
	mov	eax, 1
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	jb	.label_1659
	test	byte ptr [rbp - 0x79], 1
	je	.label_1658
	test	byte ptr [rbp - 0x91], 1
	jne	.label_1658
.label_1659:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_1701:
	test	byte ptr [rbp - 0x79], 1
	je	.label_1680
	test	byte ptr [rbp - 0x91], 1
	jne	.label_1680
	jmp	.label_1736
.label_1736:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1685
	jmp	.label_1624
.label_1685:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1688
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_1688
	jmp	.label_1695
.label_1695:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1697
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1697:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1702
.label_1702:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1705
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_1705:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1710
.label_1710:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1716
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1716:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_1688:
	jmp	.label_1725
.label_1725:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1727
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_1727:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1733
.label_1733:
	jmp	.label_1738
.label_1738:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1739
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 6
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_1739:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1745
.label_1745:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1749
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 3
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_1749:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_1752
.label_1680:
	test	byte ptr [rbp - 0x81], 1
	je	.label_1756
	jmp	.label_1758
.label_1758:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1760
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_1760:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x81], 0
.label_1756:
	jmp	.label_1752
.label_1752:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_1770
	jmp	.label_1774
.label_1770:
	jmp	.label_1776
.label_1776:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_1778
	test	byte ptr [rbp - 0x82], 1
	jne	.label_1778
	jmp	.label_1782
.label_1782:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1785
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1785:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1787
.label_1787:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1791
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1791:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_1778:
	jmp	.label_1799
.label_1799:
	jmp	.label_1800
.label_1800:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1802
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_1802:
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
	jmp	.label_1701
.label_1774:
	jmp	.label_1625
.label_1658:
	jmp	.label_1646
.label_1646:
	test	byte ptr [rbp - 0x79], 1
	je	.label_1808
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1809
.label_1808:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1812
.label_1809:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_1812
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
	jne	.label_1732
.label_1812:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_1732
	jmp	.label_1625
.label_1732:
	jmp	.label_1644
.label_1644:
	jmp	.label_1637
.label_1637:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1677
	jmp	.label_1624
.label_1677:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1627
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_1627
	jmp	.label_1690
.label_1690:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1698
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1698:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1638
.label_1638:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1643
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_1643:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1651
.label_1651:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1656
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1656:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_1627:
	jmp	.label_1666
.label_1666:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1668
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_1668:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1675
.label_1675:
	jmp	.label_1625
.label_1625:
	jmp	.label_1681
.label_1681:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_1682
	test	byte ptr [rbp - 0x82], 1
	jne	.label_1682
	jmp	.label_1686
.label_1686:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1687
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1687:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1693
.label_1693:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1699
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1699:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_1682:
	jmp	.label_1707
.label_1707:
	jmp	.label_1708
.label_1708:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1649
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_1649:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x83], 1
	jne	.label_1717
	mov	byte ptr [rbp - 0x7e], 0
.label_1717:
	jmp	.label_1711
.label_1711:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_1723
.label_1679:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_1728
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1728
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1728
	jmp	.label_1624
.label_1728:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1629
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1629
	test	byte ptr [rbp - 0x7d], 1
	je	.label_1629
	test	byte ptr [rbp - 0x7e], 1
	je	.label_1817
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
	jmp	.label_1751
.label_1817:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1753
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_1753
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_1755
.label_1753:
	jmp	.label_1720
.label_1720:
	jmp	.label_1629
.label_1629:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_1762
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1762
	jmp	.label_1764
.label_1764:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_1766
	jmp	.label_1769
.label_1769:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1818
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_1818:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1777
.label_1777:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1764
.label_1766:
	jmp	.label_1762
.label_1762:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1786
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_1786:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1751
.label_1624:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1793
	test	byte ptr [rbp - 0x79], 1
	je	.label_1793
	mov	dword ptr [rbp - 0x34], 4
.label_1793:
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
.label_1751:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410f90
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
	#Procedure 0x410fd0

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
	je	.label_1824
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1825
.label_1824:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1825
.label_1825:
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
	je	.label_1826
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_1826:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411130
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_1829:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_1828
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_1829
.label_1828:
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 8], rax
	je	.label_1831
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	qword ptr [word ptr [label_1830]],  rax
.label_1831:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_1827
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_1827:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411210

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
	#Procedure 0x411250

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
	jge	.label_1836
	call	abort
.label_1836:
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_1834
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x31], cl
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	jge	.label_1839
	call	xalloc_die
.label_1839:
	test	byte ptr [rbp - 0x31], 1
	je	.label_1833
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_1835
.label_1833:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_1835:
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
	je	.label_1838
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_1830]]
	mov	qword ptr [rax + 8], rcx
.label_1838:
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
.label_1834:
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
	ja	.label_1837
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	cmp	qword ptr [rbp - 0x48], rax
	je	.label_1832
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_1832:
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
.label_1837:
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
	#Procedure 0x4114d0

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
	#Procedure 0x411510
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
	#Procedure 0x411530
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
	#Procedure 0x411560

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
	#Procedure 0x4115a0

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
	jne	.label_1840
	call	abort
.label_1840:
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
	#Procedure 0x411610

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
	#Procedure 0x411650
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
	#Procedure 0x411680
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
	#Procedure 0x4116b0

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
	#Procedure 0x411730

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
	#Procedure 0x411760

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
	#Procedure 0x411780
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
	#Procedure 0x4117b0

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
	#Procedure 0x411860

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
	#Procedure 0x4118a0

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
	#Procedure 0x411920
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
	#Procedure 0x411950
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
	#Procedure 0x411990

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
	#Procedure 0x4119d0
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
	#Procedure 0x411a00

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
	#Procedure 0x411a30

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
	#Procedure 0x411a50

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
	je	.label_1842
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1844
.label_1842:
	call	locale_charset
	movabs	rsi, OFFSET FLAT:.str.13_0
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_1841
	movabs	rax, OFFSET FLAT:.str.15_0
	movabs	rcx, OFFSET FLAT:.str.14_0
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1844
.label_1841:
	movabs	rsi, OFFSET FLAT:.str.16_0
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_1843
	movabs	rax, OFFSET FLAT:.str.18_1
	movabs	rcx, OFFSET FLAT:.str.17_0
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1844
.label_1843:
	movabs	rax, OFFSET FLAT:.str.12_0
	movabs	rcx, OFFSET FLAT:.str.10_0
	cmp	dword ptr [rbp - 0x14], 9
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_1844:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411b50
	.globl get_stat_atime_ns
	.type get_stat_atime_ns, @function
get_stat_atime_ns:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 0x50]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411b70
	.globl get_stat_ctime_ns
	.type get_stat_ctime_ns, @function
get_stat_ctime_ns:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 0x70]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411b90
	.globl get_stat_mtime_ns
	.type get_stat_mtime_ns, @function
get_stat_mtime_ns:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 0x60]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411bb0
	.globl get_stat_birthtime_ns
	.type get_stat_birthtime_ns, @function
get_stat_birthtime_ns:

	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411bc0
	.globl get_stat_atime
	.type get_stat_atime, @function
get_stat_atime:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	movups	xmm0, xmmword ptr [rdi + 0x48]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411be0
	.globl get_stat_ctime
	.type get_stat_ctime, @function
get_stat_ctime:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	movups	xmm0, xmmword ptr [rdi + 0x68]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411c00

	.globl get_stat_mtime
	.type get_stat_mtime, @function
get_stat_mtime:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	movups	xmm0, xmmword ptr [rdi + 0x58]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411c20
	.globl get_stat_birthtime
	.type get_stat_birthtime, @function
get_stat_birthtime:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x28], -1
	mov	qword ptr [rbp - 0x20], -1
	movups	xmm0, xmmword ptr [rbp - 0x28]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411c50
	.globl stat_time_normalize
	.type stat_time_normalize, @function
stat_time_normalize:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411c60

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
	#Procedure 0x411c90

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
	je	.label_1846
	movabs	rsi, OFFSET FLAT:.str_6
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_1848
.label_1846:
	movabs	rsi, OFFSET FLAT:.str.1_3
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_1848:
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
	ja	.label_1847
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1849]]
	jmp	rcx
.label_2285:
	jmp	.label_1845
.label_2286:
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
	jmp	.label_1845
.label_2287:
	movabs	rdi, OFFSET FLAT:.str.5_0
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
	jmp	.label_1845
.label_2288:
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
	jmp	.label_1845
.label_2289:
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
	jmp	.label_1845
.label_2290:
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
	jmp	.label_1845
.label_2291:
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
	jmp	.label_1845
.label_2292:
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
	jmp	.label_1845
.label_2293:
	movabs	rdi, OFFSET FLAT:.str.11_0
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
	jmp	.label_1845
.label_2294:
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
	jmp	.label_1845
.label_1847:
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
.label_1845:
	add	rsp, 0x180
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412250
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
.label_1852:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1850
	jmp	.label_1851
.label_1851:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1852
.label_1850:
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
	#Procedure 0x4122c0

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
.label_1856:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_1853
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_1858
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_1857
.label_1858:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_1857:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x81], dl
.label_1853:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_1859
	jmp	.label_1854
.label_1859:
	jmp	.label_1855
.label_1855:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1856
.label_1854:
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
	#Procedure 0x4123d0

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
	je	.label_1860
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
.label_1860:
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
	#Procedure 0x412540
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
	movabs	rsi, OFFSET FLAT:.str.17
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
	.align	32
	#Procedure 0x4125d0

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
	jae	.label_1861
	call	xalloc_die
.label_1861:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412620

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
	jne	.label_1862
	cmp	qword ptr [rbp - 8], 0
	je	.label_1862
	call	xalloc_die
.label_1862:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412660
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
	jae	.label_1863
	call	xalloc_die
.label_1863:
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
	#Procedure 0x4126b0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1864
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1864
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1866
.label_1864:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1865
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1865
	call	xalloc_die
.label_1865:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_1866:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412730

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
	jne	.label_1867
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1870
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
.label_1870:
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1868
	call	xalloc_die
.label_1868:
	jmp	.label_1869
.label_1867:
	movabs	rax, 0x5555555555555554
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_1871
	call	xalloc_die
.label_1871:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_1869:
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
	#Procedure 0x412820

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
	#Procedure 0x412840

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
	#Procedure 0x412870
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
	#Procedure 0x4128b0
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
	jb	.label_1872
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_1873
.label_1872:
	call	xalloc_die
.label_1873:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412910

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
	#Procedure 0x412950
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
	#Procedure 0x412990

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
	.align	32
	#Procedure 0x4129d0

	.globl xnumtoimax
	.type xnumtoimax, @function
xnumtoimax:
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
	call	xstrtoimax
	mov	dword ptr [rbp - 0x40], eax
	cmp	dword ptr [rbp - 0x40], 0
	jne	.label_1880
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x20]
	jl	.label_1883
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x48]
	jge	.label_1878
.label_1883:
	mov	dword ptr [rbp - 0x40], 1
	cmp	qword ptr [rbp - 0x48], 0x3fffffff
	jle	.label_1889
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_1876
.label_1889:
	cmp	qword ptr [rbp - 0x48], -0x40000000
	jge	.label_1884
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_1888
.label_1884:
	call	__errno_location
	mov	dword ptr [rax], 0x22
.label_1888:
	jmp	.label_1876
.label_1876:
	jmp	.label_1878
.label_1878:
	jmp	.label_1877
.label_1880:
	cmp	dword ptr [rbp - 0x40], 1
	jne	.label_1881
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_1874
.label_1881:
	cmp	dword ptr [rbp - 0x40], 3
	jne	.label_1887
	call	__errno_location
	mov	dword ptr [rax], 0
.label_1887:
	jmp	.label_1874
.label_1874:
	jmp	.label_1877
.label_1877:
	cmp	dword ptr [rbp - 0x40], 0
	je	.label_1879
	cmp	dword ptr [rbp - 0x3c], 0
	je	.label_1882
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_1885
.label_1882:
	mov	eax, 1
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_1885
.label_1885:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x50], eax
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_1875
	xor	eax, eax
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_1886
.label_1875:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x54], ecx
.label_1886:
	mov	eax, dword ptr [rbp - 0x54]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x58], eax
	mov	qword ptr [rbp - 0x60], rcx
	call	quote
	movabs	rdx, OFFSET FLAT:.str_3
	mov	edi, dword ptr [rbp - 0x50]
	mov	esi, dword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	r8, rax
	mov	al, 0
	call	error
.label_1879:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x58
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412b70

	.globl xdectoimax
	.type xdectoimax, @function
xdectoimax:
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
	call	xnumtoimax
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412bc0

	.globl xstrtoimax
	.type xstrtoimax, @function
xstrtoimax:
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
	jg	.label_1928
	cmp	dword ptr [rbp - 0x1c], 0x24
	jg	.label_1928
	jmp	.label_1951
.label_1928:
	movabs	rdi, OFFSET FLAT:.str_7
	movabs	rsi, OFFSET FLAT:.str.1_5
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoimax
	call	__assert_fail
.label_1951:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1904
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1910
.label_1904:
	lea	rax, [rbp - 0x38]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1910
.label_1910:
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
	jne	.label_1921
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1923
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_1923
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	je	.label_1923
	mov	qword ptr [rbp - 0x48], 1
	jmp	.label_1938
.label_1923:
	mov	dword ptr [rbp - 4], 4
	jmp	.label_1900
.label_1938:
	jmp	.label_1894
.label_1921:
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_1945
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	je	.label_1948
	mov	dword ptr [rbp - 4], 4
	jmp	.label_1900
.label_1948:
	mov	dword ptr [rbp - 0x4c], 1
.label_1945:
	jmp	.label_1894
.label_1894:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_1897
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
	jmp	.label_1900
.label_1897:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_1907
	mov	dword ptr [rbp - 0x50], 0x400
	mov	dword ptr [rbp - 0x54], 1
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	jne	.label_1919
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_1900
.label_1919:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x64], ecx
	mov	dword ptr [rbp - 0x68], edx
	je	.label_1895
	jmp	.label_1929
.label_1929:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x6c], eax
	je	.label_1895
	jmp	.label_1916
.label_1916:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x70], eax
	je	.label_1895
	jmp	.label_1936
.label_1936:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x74], eax
	je	.label_1895
	jmp	.label_1944
.label_1944:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x78], eax
	je	.label_1895
	jmp	.label_1950
.label_1950:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x7c], eax
	je	.label_1895
	jmp	.label_1891
.label_1891:
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, -0x59
	sub	eax, 2
	mov	dword ptr [rbp - 0x80], eax
	jb	.label_1895
	jmp	.label_1901
.label_1901:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x84], eax
	je	.label_1895
	jmp	.label_1937
.label_1937:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0x88], eax
	je	.label_1895
	jmp	.label_1914
.label_1914:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_1895
	jmp	.label_1918
.label_1918:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x90], eax
	jne	.label_1905
	jmp	.label_1895
.label_1895:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x30]
	call	strchr
	cmp	rax, 0
	je	.label_1903
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	edx, ecx
	sub	edx, 0x42
	mov	dword ptr [rbp - 0x94], ecx
	mov	dword ptr [rbp - 0x98], edx
	je	.label_1926
	jmp	.label_1932
.label_1932:
	mov	eax, dword ptr [rbp - 0x94]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_1926
	jmp	.label_1940
.label_1940:
	mov	eax, dword ptr [rbp - 0x94]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xa0], eax
	jne	.label_1896
	jmp	.label_1947
.label_1947:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x42
	jne	.label_1949
	mov	eax, dword ptr [rbp - 0x54]
	add	eax, 2
	mov	dword ptr [rbp - 0x54], eax
.label_1949:
	jmp	.label_1896
.label_1926:
	mov	dword ptr [rbp - 0x50], 0x3e8
	mov	eax, dword ptr [rbp - 0x54]
	add	eax, 1
	mov	dword ptr [rbp - 0x54], eax
.label_1896:
	jmp	.label_1903
.label_1903:
	jmp	.label_1905
.label_1905:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x42
	mov	dword ptr [rbp - 0xa4], ecx
	mov	dword ptr [rbp - 0xa8], edx
	je	.label_1908
	jmp	.label_1915
.label_1915:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x45
	mov	dword ptr [rbp - 0xac], eax
	je	.label_1952
	jmp	.label_1920
.label_1920:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0xb0], eax
	je	.label_1898
	jmp	.label_1899
.label_1899:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_1911
	jmp	.label_1927
.label_1927:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0xb8], eax
	je	.label_1925
	jmp	.label_1931
.label_1931:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0xbc], eax
	je	.label_1934
	jmp	.label_1939
.label_1939:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0xc0], eax
	je	.label_1893
	jmp	.label_1946
.label_1946:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x59
	mov	dword ptr [rbp - 0xc4], eax
	je	.label_1930
	jmp	.label_1890
.label_1890:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x5a
	mov	dword ptr [rbp - 0xc8], eax
	je	.label_1913
	jmp	.label_1902
.label_1902:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x62
	mov	dword ptr [rbp - 0xcc], eax
	je	.label_1943
	jmp	.label_1912
.label_1912:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0xd0], eax
	je	.label_1942
	jmp	.label_1917
.label_1917:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0xd4], eax
	je	.label_1898
	jmp	.label_1922
.label_1922:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xd8], eax
	je	.label_1911
	jmp	.label_1909
.label_1909:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xdc], eax
	je	.label_1925
	jmp	.label_1924
.label_1924:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xe0], eax
	je	.label_1893
	jmp	.label_1933
.label_1933:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x77
	mov	dword ptr [rbp - 0xe4], eax
	je	.label_1935
	jmp	.label_1941
.label_1943:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x200
	call	bkm_scale
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1906
.label_1908:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x400
	call	bkm_scale
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1906
.label_1942:
	mov	dword ptr [rbp - 0x58], 0
	jmp	.label_1906
.label_1952:
	lea	rdi, [rbp - 0x48]
	mov	edx, 6
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1906
.label_1898:
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1906
.label_1911:
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1906
.label_1925:
	lea	rdi, [rbp - 0x48]
	mov	edx, 2
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1906
.label_1934:
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1906
.label_1893:
	lea	rdi, [rbp - 0x48]
	mov	edx, 4
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1906
.label_1935:
	lea	rdi, [rbp - 0x48]
	mov	esi, 2
	call	bkm_scale
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1906
.label_1930:
	lea	rdi, [rbp - 0x48]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1906
.label_1913:
	lea	rdi, [rbp - 0x48]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1906
.label_1941:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_1900
.label_1906:
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
	je	.label_1892
	mov	eax, dword ptr [rbp - 0x4c]
	or	eax, 2
	mov	dword ptr [rbp - 0x4c], eax
.label_1892:
	jmp	.label_1907
.label_1907:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
.label_1900:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xf0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413270

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
	jge	.label_1953
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1955
.label_1953:
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0x14]
	cqo	
	idiv	rcx
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx]
	jge	.label_1954
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1955
.label_1954:
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_1955:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413320

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
.label_1957:
	mov	eax, dword ptr [rbp - 0x10]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x10], ecx
	cmp	eax, 0
	je	.label_1956
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	bkm_scale
	or	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_1957
.label_1956:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413370

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
	jg	.label_1988
	cmp	dword ptr [rbp - 0x1c], 0x24
	jg	.label_1988
	jmp	.label_2005
.label_1988:
	movabs	rdi, OFFSET FLAT:.str_7
	movabs	rsi, OFFSET FLAT:.str.1_6
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtol
	call	__assert_fail
.label_2005:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_2015
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2004
.label_2015:
	lea	rax, [rbp - 0x38]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2004
.label_2004:
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
	jne	.label_1969
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1976
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_1976
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	je	.label_1976
	mov	qword ptr [rbp - 0x48], 1
	jmp	.label_1987
.label_1976:
	mov	dword ptr [rbp - 4], 4
	jmp	.label_1970
.label_1987:
	jmp	.label_1995
.label_1969:
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_1999
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	je	.label_1984
	mov	dword ptr [rbp - 4], 4
	jmp	.label_1970
.label_1984:
	mov	dword ptr [rbp - 0x4c], 1
.label_1999:
	jmp	.label_1995
.label_1995:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_2010
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
	jmp	.label_1970
.label_2010:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_1978
	mov	dword ptr [rbp - 0x50], 0x400
	mov	dword ptr [rbp - 0x54], 1
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	jne	.label_1965
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_1970
.label_1965:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x64], ecx
	mov	dword ptr [rbp - 0x68], edx
	je	.label_1959
	jmp	.label_1980
.label_1980:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x6c], eax
	je	.label_1959
	jmp	.label_1989
.label_1989:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x70], eax
	je	.label_1959
	jmp	.label_1991
.label_1991:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x74], eax
	je	.label_1959
	jmp	.label_1998
.label_1998:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x78], eax
	je	.label_1959
	jmp	.label_2003
.label_2003:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x7c], eax
	je	.label_1959
	jmp	.label_2008
.label_2008:
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, -0x59
	sub	eax, 2
	mov	dword ptr [rbp - 0x80], eax
	jb	.label_1959
	jmp	.label_2013
.label_2013:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x84], eax
	je	.label_1959
	jmp	.label_1997
.label_1997:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0x88], eax
	je	.label_1959
	jmp	.label_2019
.label_2019:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_1959
	jmp	.label_1964
.label_1964:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x90], eax
	jne	.label_1966
	jmp	.label_1959
.label_1959:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x30]
	call	strchr
	cmp	rax, 0
	je	.label_1975
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	edx, ecx
	sub	edx, 0x42
	mov	dword ptr [rbp - 0x94], ecx
	mov	dword ptr [rbp - 0x98], edx
	je	.label_1977
	jmp	.label_1983
.label_1983:
	mov	eax, dword ptr [rbp - 0x94]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_1977
	jmp	.label_1993
.label_1993:
	mov	eax, dword ptr [rbp - 0x94]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xa0], eax
	jne	.label_1996
	jmp	.label_2001
.label_2001:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x42
	jne	.label_2002
	mov	eax, dword ptr [rbp - 0x54]
	add	eax, 2
	mov	dword ptr [rbp - 0x54], eax
.label_2002:
	jmp	.label_1996
.label_1977:
	mov	dword ptr [rbp - 0x50], 0x3e8
	mov	eax, dword ptr [rbp - 0x54]
	add	eax, 1
	mov	dword ptr [rbp - 0x54], eax
.label_1996:
	jmp	.label_1975
.label_1975:
	jmp	.label_1966
.label_1966:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x42
	mov	dword ptr [rbp - 0xa4], ecx
	mov	dword ptr [rbp - 0xa8], edx
	je	.label_2016
	jmp	.label_1958
.label_1958:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x45
	mov	dword ptr [rbp - 0xac], eax
	je	.label_2018
	jmp	.label_1967
.label_1967:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0xb0], eax
	je	.label_1973
	jmp	.label_1972
.label_1972:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_1971
	jmp	.label_1979
.label_1979:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0xb8], eax
	je	.label_1974
	jmp	.label_1982
.label_1982:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0xbc], eax
	je	.label_1986
	jmp	.label_1992
.label_1992:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0xc0], eax
	je	.label_1963
	jmp	.label_2000
.label_2000:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x59
	mov	dword ptr [rbp - 0xc4], eax
	je	.label_2012
	jmp	.label_2007
.label_2007:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x5a
	mov	dword ptr [rbp - 0xc8], eax
	je	.label_2006
	jmp	.label_2014
.label_2014:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x62
	mov	dword ptr [rbp - 0xcc], eax
	je	.label_2020
	jmp	.label_2017
.label_2017:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0xd0], eax
	je	.label_1990
	jmp	.label_1960
.label_1960:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0xd4], eax
	je	.label_1973
	jmp	.label_1968
.label_1968:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xd8], eax
	je	.label_1971
	jmp	.label_2011
.label_2011:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xdc], eax
	je	.label_1974
	jmp	.label_1981
.label_1981:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xe0], eax
	je	.label_1963
	jmp	.label_1985
.label_1985:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x77
	mov	dword ptr [rbp - 0xe4], eax
	je	.label_1962
	jmp	.label_1994
.label_2020:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x200
	call	bkm_scale_0
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1961
.label_2016:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x400
	call	bkm_scale_0
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1961
.label_1990:
	mov	dword ptr [rbp - 0x58], 0
	jmp	.label_1961
.label_2018:
	lea	rdi, [rbp - 0x48]
	mov	edx, 6
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1961
.label_1973:
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1961
.label_1971:
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1961
.label_1974:
	lea	rdi, [rbp - 0x48]
	mov	edx, 2
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1961
.label_1986:
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1961
.label_1963:
	lea	rdi, [rbp - 0x48]
	mov	edx, 4
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1961
.label_1962:
	lea	rdi, [rbp - 0x48]
	mov	esi, 2
	call	bkm_scale_0
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1961
.label_2012:
	lea	rdi, [rbp - 0x48]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1961
.label_2006:
	lea	rdi, [rbp - 0x48]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1961
.label_1994:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_1970
.label_1961:
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
	je	.label_2009
	mov	eax, dword ptr [rbp - 0x4c]
	or	eax, 2
	mov	dword ptr [rbp - 0x4c], eax
.label_2009:
	jmp	.label_1978
.label_1978:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
.label_1970:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xf0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413a20

	.globl bkm_scale_0
	.type bkm_scale_0, @function
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
	jge	.label_2021
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 1
	jmp	.label_2022
.label_2021:
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0x14]
	cqo	
	idiv	rcx
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx]
	jge	.label_2023
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 1
	jmp	.label_2022
.label_2023:
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_2022:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413ad0

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
.label_2025:
	mov	eax, dword ptr [rbp - 0x10]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x10], ecx
	cmp	eax, 0
	je	.label_2024
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	bkm_scale_0
	or	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_2025
.label_2024:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413b20

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
	.align	32
	#Procedure 0x413b70

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
	mov	qword ptr [word ptr [rbp - 48]], OFFSET FLAT:.str_8
	mov	edx, dword ptr [rbp - 4]
	mov	esi, edx
	sub	esi, 1
	mov	dword ptr [rbp - 0x48], edx
	mov	dword ptr [rbp - 0x4c], esi
	je	.label_2031
	jmp	.label_2030
.label_2030:
	mov	eax, dword ptr [rbp - 0x48]
	add	eax, -2
	sub	eax, 2
	mov	dword ptr [rbp - 0x50], eax
	jb	.label_2027
	jmp	.label_2028
.label_2028:
	mov	eax, dword ptr [rbp - 0x48]
	sub	eax, 4
	mov	dword ptr [rbp - 0x54], eax
	je	.label_2029
	jmp	.label_2033
.label_2033:
	call	abort
.label_2029:
	movabs	rax, OFFSET FLAT:.str.1_7
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_2026
.label_2027:
	movabs	rax, OFFSET FLAT:.str.2_3
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_2026
.label_2031:
	movabs	rax, OFFSET FLAT:.str.3_2
	mov	qword ptr [rbp - 0x38], rax
.label_2026:
	cmp	dword ptr [rbp - 8], 0
	jge	.label_2032
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
	jmp	.label_2034
.label_2032:
	movsxd	rax, dword ptr [rbp - 8]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
.label_2034:
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
	.align	32
	#Procedure 0x413ca0

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
	jg	.label_2080
	cmp	dword ptr [rbp - 0x1c], 0x24
	jg	.label_2080
	jmp	.label_2096
.label_2080:
	movabs	rdi, OFFSET FLAT:.str_7
	movabs	rsi, OFFSET FLAT:.str.1_5
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
.label_2096:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_2038
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_2043
.label_2038:
	lea	rax, [rbp - 0x38]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_2043
.label_2043:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x40], rax
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x59], cl
.label_2070:
	movzx	eax, byte ptr [rbp - 0x59]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x78], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x2000
	cmp	edx, 0
	je	.label_2064
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x59], dl
	jmp	.label_2070
.label_2064:
	movzx	eax, byte ptr [rbp - 0x59]
	cmp	eax, 0x2d
	jne	.label_2078
	mov	dword ptr [rbp - 4], 4
	jmp	.label_2046
.label_2078:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x1c]
	call	strtoumax
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_2088
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_2037
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_2037
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	je	.label_2037
	mov	qword ptr [rbp - 0x48], 1
	jmp	.label_2040
.label_2037:
	mov	dword ptr [rbp - 4], 4
	jmp	.label_2046
.label_2040:
	jmp	.label_2051
.label_2088:
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_2052
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	je	.label_2058
	mov	dword ptr [rbp - 4], 4
	jmp	.label_2046
.label_2058:
	mov	dword ptr [rbp - 0x4c], 1
.label_2052:
	jmp	.label_2051
.label_2051:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_2057
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
	jmp	.label_2046
.label_2057:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_2073
	mov	dword ptr [rbp - 0x60], 0x400
	mov	dword ptr [rbp - 0x64], 1
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	jne	.label_2085
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_2046
.label_2085:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x7c], ecx
	mov	dword ptr [rbp - 0x80], edx
	je	.label_2041
	jmp	.label_2099
.label_2099:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x84], eax
	je	.label_2041
	jmp	.label_2039
.label_2039:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x88], eax
	je	.label_2041
	jmp	.label_2050
.label_2050:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_2041
	jmp	.label_2056
.label_2056:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x90], eax
	je	.label_2041
	jmp	.label_2095
.label_2095:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x94], eax
	je	.label_2041
	jmp	.label_2066
.label_2066:
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, -0x59
	sub	eax, 2
	mov	dword ptr [rbp - 0x98], eax
	jb	.label_2041
	jmp	.label_2072
.label_2072:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_2041
	jmp	.label_2087
.label_2087:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_2041
	jmp	.label_2042
.label_2042:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_2041
	jmp	.label_2090
.label_2090:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xa8], eax
	jne	.label_2075
	jmp	.label_2041
.label_2041:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x30]
	call	strchr
	cmp	rax, 0
	je	.label_2074
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	edx, ecx
	sub	edx, 0x42
	mov	dword ptr [rbp - 0xac], ecx
	mov	dword ptr [rbp - 0xb0], edx
	je	.label_2049
	jmp	.label_2082
.label_2082:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_2049
	jmp	.label_2054
.label_2054:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xb8], eax
	jne	.label_2063
	jmp	.label_2061
.label_2061:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x42
	jne	.label_2062
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 2
	mov	dword ptr [rbp - 0x64], eax
.label_2062:
	jmp	.label_2063
.label_2049:
	mov	dword ptr [rbp - 0x60], 0x3e8
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 1
	mov	dword ptr [rbp - 0x64], eax
.label_2063:
	jmp	.label_2074
.label_2074:
	jmp	.label_2075
.label_2075:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x42
	mov	dword ptr [rbp - 0xbc], ecx
	mov	dword ptr [rbp - 0xc0], edx
	je	.label_2077
	jmp	.label_2084
.label_2084:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x45
	mov	dword ptr [rbp - 0xc4], eax
	je	.label_2086
	jmp	.label_2092
.label_2092:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0xc8], eax
	je	.label_2089
	jmp	.label_2097
.label_2097:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0xcc], eax
	je	.label_2094
	jmp	.label_2100
.label_2100:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0xd0], eax
	je	.label_2044
	jmp	.label_2045
.label_2045:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0xd4], eax
	je	.label_2048
	jmp	.label_2053
.label_2053:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0xd8], eax
	je	.label_2059
	jmp	.label_2060
.label_2060:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x59
	mov	dword ptr [rbp - 0xdc], eax
	je	.label_2098
	jmp	.label_2067
.label_2067:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x5a
	mov	dword ptr [rbp - 0xe0], eax
	je	.label_2068
	jmp	.label_2065
.label_2065:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x62
	mov	dword ptr [rbp - 0xe4], eax
	je	.label_2081
	jmp	.label_2079
.label_2079:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0xe8], eax
	je	.label_2083
	jmp	.label_2071
.label_2071:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0xec], eax
	je	.label_2089
	jmp	.label_2093
.label_2093:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xf0], eax
	je	.label_2094
	jmp	.label_2069
.label_2069:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xf4], eax
	je	.label_2044
	jmp	.label_2036
.label_2036:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xf8], eax
	je	.label_2059
	jmp	.label_2047
.label_2047:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x77
	mov	dword ptr [rbp - 0xfc], eax
	je	.label_2091
	jmp	.label_2055
.label_2081:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x200
	call	bkm_scale_1
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2035
.label_2077:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x400
	call	bkm_scale_1
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2035
.label_2083:
	mov	dword ptr [rbp - 0x68], 0
	jmp	.label_2035
.label_2086:
	lea	rdi, [rbp - 0x48]
	mov	edx, 6
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_1
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2035
.label_2089:
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_1
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2035
.label_2094:
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_1
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2035
.label_2044:
	lea	rdi, [rbp - 0x48]
	mov	edx, 2
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_1
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2035
.label_2048:
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_1
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2035
.label_2059:
	lea	rdi, [rbp - 0x48]
	mov	edx, 4
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_1
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2035
.label_2091:
	lea	rdi, [rbp - 0x48]
	mov	esi, 2
	call	bkm_scale_1
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2035
.label_2098:
	lea	rdi, [rbp - 0x48]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_1
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2035
.label_2068:
	lea	rdi, [rbp - 0x48]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_1
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2035
.label_2055:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_2046
.label_2035:
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
	je	.label_2076
	mov	eax, dword ptr [rbp - 0x4c]
	or	eax, 2
	mov	dword ptr [rbp - 0x4c], eax
.label_2076:
	jmp	.label_2073
.label_2073:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
.label_2046:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x100
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4143d0

	.globl bkm_scale_1
	.type bkm_scale_1, @function
bkm_scale_1:
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
	jae	.label_2101
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], -1
	mov	dword ptr [rbp - 4], 1
	jmp	.label_2102
.label_2101:
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_2102:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414430

	.globl bkm_scale_by_power_1
	.type bkm_scale_by_power_1, @function
bkm_scale_by_power_1:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	dword ptr [rbp - 0x10], edx
	mov	dword ptr [rbp - 0x14], 0
.label_2104:
	mov	eax, dword ptr [rbp - 0x10]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x10], ecx
	cmp	eax, 0
	je	.label_2103
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	bkm_scale_1
	or	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_2104
.label_2103:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414480

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
	jge	.label_2105
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2108
.label_2105:
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	je	.label_2106
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_2107
.label_2106:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_2107
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_2107:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_2109
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_2109:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_2108:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414550

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
	je	.label_2130
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
.label_2130:
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
	je	.label_2119
	jmp	.label_2111
.label_2111:
	mov	eax, dword ptr [rbp - 0x1a0]
	sub	eax, 0x406
	mov	dword ptr [rbp - 0x1a4], eax
	je	.label_2123
	jmp	.label_2127
.label_2119:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1b0], rax
	mov	dword ptr [rbp - 0x1b4], ecx
	ja	.label_2129
	mov	eax, dword ptr [rbp - 0x1b4]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1b0]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1c0], rcx
	jmp	.label_2136
.label_2129:
	mov	rax, qword ptr [rbp - 0x1b0]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1c0], rdx
.label_2136:
	mov	rax, qword ptr [rbp - 0x1c0]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x28], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x28]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_2114
.label_2123:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1c8], rax
	mov	dword ptr [rbp - 0x1cc], ecx
	ja	.label_2128
	mov	eax, dword ptr [rbp - 0x1cc]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1c8]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1d8], rcx
	jmp	.label_2135
.label_2128:
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1d8], rdx
.label_2135:
	mov	rax, qword ptr [rbp - 0x1d8]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x2c], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x2c]
	call	rpl_fcntl_DUPFD_CLOEXEC
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_2114
.label_2127:
	mov	eax, dword ptr [rbp - 8]
	test	eax, eax
	mov	dword ptr [rbp - 0x1dc], eax
	je	.label_2110
	jmp	.label_2133
.label_2133:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 1
	mov	dword ptr [rbp - 0x1e0], eax
	je	.label_2115
	jmp	.label_2138
.label_2138:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 2
	mov	dword ptr [rbp - 0x1e4], eax
	je	.label_2110
	jmp	.label_2112
.label_2112:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 3
	mov	dword ptr [rbp - 0x1e8], eax
	je	.label_2115
	jmp	.label_2120
.label_2120:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 4
	mov	dword ptr [rbp - 0x1ec], eax
	je	.label_2110
	jmp	.label_2125
.label_2125:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 8
	mov	dword ptr [rbp - 0x1f0], eax
	je	.label_2110
	jmp	.label_2121
.label_2121:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 9
	mov	dword ptr [rbp - 0x1f4], eax
	je	.label_2115
	jmp	.label_2139
.label_2139:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x1f8], eax
	je	.label_2110
	jmp	.label_2113
.label_2113:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xb
	mov	dword ptr [rbp - 0x1fc], eax
	je	.label_2115
	jmp	.label_2122
.label_2122:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x400
	mov	dword ptr [rbp - 0x200], eax
	je	.label_2110
	jmp	.label_2126
.label_2126:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x401
	mov	dword ptr [rbp - 0x204], eax
	je	.label_2115
	jmp	.label_2134
.label_2134:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x402
	mov	dword ptr [rbp - 0x208], eax
	je	.label_2110
	jmp	.label_2140
.label_2140:
	mov	eax, dword ptr [rbp - 0x1dc]
	add	eax, 0xfffffbfa
	sub	eax, 2
	mov	dword ptr [rbp - 0x20c], eax
	jb	.label_2110
	jmp	.label_2117
.label_2117:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x408
	mov	dword ptr [rbp - 0x210], eax
	jne	.label_2118
	jmp	.label_2115
.label_2115:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_2116
.label_2110:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x218], rax
	mov	dword ptr [rbp - 0x21c], ecx
	ja	.label_2131
	mov	eax, dword ptr [rbp - 0x21c]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x218]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x228], rcx
	jmp	.label_2137
.label_2131:
	mov	rax, qword ptr [rbp - 0x218]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x228], rdx
.label_2137:
	mov	rax, qword ptr [rbp - 0x228]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x30], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 0x30]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_2116
.label_2118:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x230], rax
	mov	dword ptr [rbp - 0x234], ecx
	ja	.label_2132
	mov	eax, dword ptr [rbp - 0x234]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x230]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x240], rcx
	jmp	.label_2124
.label_2132:
	mov	rax, qword ptr [rbp - 0x230]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x240], rdx
.label_2124:
	mov	rax, qword ptr [rbp - 0x240]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
.label_2116:
	jmp	.label_2114
.label_2114:
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x240
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414a70

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
	#Procedure 0x414aa0

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
	jg	.label_2146
	mov	esi, 0x406
	mov	edi, dword ptr [rbp - 4]
	mov	edx, dword ptr [rbp - 8]
	mov	al, 0
	call	fcntl
	xor	edx, edx
	mov	dword ptr [rbp - 0xc], eax
	cmp	edx, dword ptr [rbp - 0xc]
	jle	.label_2145
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_2147
.label_2145:
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_2143
.label_2147:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
	cmp	dword ptr [rbp - 0xc], 0
	jl	.label_2144
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
.label_2144:
	jmp	.label_2143
.label_2143:
	jmp	.label_2148
.label_2146:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
.label_2148:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0xc]
	jg	.label_2141
	cmp	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_2141
	mov	esi, 1
	mov	edi, dword ptr [rbp - 0xc]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x10], eax
	cmp	dword ptr [rbp - 0x10], 0
	jl	.label_2149
	mov	esi, 2
	mov	edi, dword ptr [rbp - 0xc]
	mov	eax, dword ptr [rbp - 0x10]
	or	eax, 1
	mov	edx, eax
	mov	al, 0
	call	fcntl
	cmp	eax, -1
	jne	.label_2142
.label_2149:
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
.label_2142:
	jmp	.label_2141
.label_2141:
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414bd0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_2150
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_2151
.label_2150:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2152
.label_2151:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_2152:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414c30

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
	je	.label_2153
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fseeko
	mov	dword ptr [rbp - 0xc], eax
.label_2153:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414c70

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
	jne	.label_2154
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_2154
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_2154
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_2156
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_2155
.label_2156:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x90], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2155
.label_2154:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fseeko
	mov	dword ptr [rbp - 4], eax
.label_2155:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414d40

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
	jne	.label_2157
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_2157:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	mbrtowc
	mov	rcx, -2
	mov	qword ptr [rbp - 0x30], rax
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_2158
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2158
	xor	edi, edi
	call	hard_locale
	test	al, 1
	jne	.label_2158
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], edx
	mov	qword ptr [rbp - 8], 1
	jmp	.label_2159
.label_2158:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_2159:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414df0

	.globl tzalloc
	.type tzalloc, @function
tzalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_2164
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2160
.label_2164:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x28], rcx
	jmp	.label_2160
.label_2160:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0x77
	jae	.label_2162
	mov	eax, 0x77
	mov	ecx, eax
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_2163
.label_2162:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
.label_2163:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	and	rax, 0xfffffffffffffff8
	mov	rdi, rax
	call	malloc
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2165
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
	je	.label_2161
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 9
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	extend_abbrs
.label_2161:
	jmp	.label_2165
.label_2165:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414ef0

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
	.align	32
	#Procedure 0x414f30

	.globl tzfree
	.type tzfree, @function
tzfree:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	rdi,  qword ptr [word ptr [local_tz]]
	je	.label_2166
	jmp	.label_2168
.label_2168:
	cmp	qword ptr [rbp - 8], 0
	je	.label_2167
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2168
.label_2167:
	jmp	.label_2166
.label_2166:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414f90

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
	jne	.label_2173
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	call	gmtime_r
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2174
.label_2173:
	mov	rdi, qword ptr [rbp - 0x10]
	call	set_tz
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_2169
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	call	localtime_r
	xor	ecx, ecx
	mov	dl, cl
	cmp	rax, 0
	mov	byte ptr [rbp - 0x2a], dl
	je	.label_2172
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	save_abbr
	mov	byte ptr [rbp - 0x2a], al
.label_2172:
	mov	al, byte ptr [rbp - 0x2a]
	and	al, 1
	mov	byte ptr [rbp - 0x29], al
	mov	rdi, qword ptr [rbp - 0x28]
	call	revert_tz
	test	al, 1
	jne	.label_2171
	jmp	.label_2170
.label_2171:
	test	byte ptr [rbp - 0x29], 1
	je	.label_2170
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2174
.label_2170:
	jmp	.label_2169
.label_2169:
	mov	qword ptr [rbp - 8], 0
.label_2174:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415060

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
	je	.label_2178
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 8]
	cmp	ecx, 0
	je	.label_2177
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 9
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	strcmp
	cmp	eax, 0
	je	.label_2175
	jmp	.label_2177
.label_2178:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax + 8], 0
	jne	.label_2177
.label_2175:
	mov	rax,  qword ptr [word ptr [local_tz]]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2176
.label_2177:
	mov	rdi, qword ptr [rbp - 0x18]
	call	tzalloc
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_2180
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2176
.label_2180:
	mov	rdi, qword ptr [rbp - 0x10]
	call	change_env
	test	al, 1
	jne	.label_2179
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
	jmp	.label_2176
.label_2179:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_2176:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415150

	.globl save_abbr
	.type save_abbr, @function
save_abbr:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:.str_0
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x30]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2183
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_2182
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x38
	cmp	rax, rcx
	jae	.label_2182
.label_2183:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2188
.label_2182:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	byte ptr [rax], 0
	je	.label_2190
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 9
	mov	qword ptr [rbp - 0x28], rax
.label_2187:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x20]
	call	strcmp
	cmp	eax, 0
	je	.label_2185
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_2181
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 9
	cmp	rax, rcx
	jne	.label_2193
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 8]
	cmp	ecx, 0
	jne	.label_2181
.label_2193:
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
	jae	.label_2191
	call	__errno_location
	mov	dword ptr [rax], 0xc
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2188
.label_2191:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x30]
	cmp	rax, 0x77
	jae	.label_2192
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x30]
	call	extend_abbrs
	jmp	.label_2184
.label_2192:
	mov	rdi, qword ptr [rbp - 0x20]
	call	tzalloc
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi], rax
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_2186
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2188
.label_2186:
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 9
	mov	qword ptr [rbp - 0x28], rax
.label_2184:
	jmp	.label_2185
.label_2181:
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	add	rax, 1
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	cmp	byte ptr [rax], 0
	jne	.label_2189
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_2189
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 9
	mov	qword ptr [rbp - 0x28], rax
.label_2189:
	jmp	.label_2187
.label_2185:
	jmp	.label_2190
.label_2190:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x30], rax
	mov	byte ptr [rbp - 1], 1
.label_2188:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415350

	.globl revert_tz
	.type revert_tz, @function
revert_tz:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rdi,  qword ptr [word ptr [local_tz]]
	jne	.label_2194
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2196
.label_2194:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
	mov	rdi, qword ptr [rbp - 0x10]
	call	change_env
	and	al, 1
	mov	byte ptr [rbp - 0x15], al
	test	byte ptr [rbp - 0x15], 1
	jne	.label_2195
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_2195:
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
.label_2196:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4153e0

	.globl mktime_z
	.type mktime_z, @function
mktime_z:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_2197
	mov	rdi, qword ptr [rbp - 0x18]
	call	timegm
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2200
.label_2197:
	mov	rdi, qword ptr [rbp - 0x10]
	call	set_tz
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2198
	mov	rdi, qword ptr [rbp - 0x18]
	call	mktime
	mov	qword ptr [rbp - 0x28], rax
	mov	qword ptr [rbp - 0x30], -1
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	jne	.label_2202
	lea	rdi, [rbp - 0x28]
	lea	rsi, [rbp - 0x68]
	call	localtime_r
	cmp	rax, 0
	je	.label_2201
	lea	rsi, [rbp - 0x68]
	mov	rdi, qword ptr [rbp - 0x18]
	call	equal_tm
	cmp	eax, 0
	je	.label_2201
.label_2202:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	save_abbr
	test	al, 1
	jne	.label_2201
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
.label_2201:
	mov	rdi, qword ptr [rbp - 0x20]
	call	revert_tz
	test	al, 1
	jne	.label_2199
	jmp	.label_2203
.label_2199:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2200
.label_2203:
	jmp	.label_2198
.label_2198:
	mov	qword ptr [rbp - 8], -1
.label_2200:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4154d0

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
	.align	32
	#Procedure 0x415570

	.globl getenv_TZ
	.type getenv_TZ, @function
getenv_TZ:
	push	rbp
	mov	rbp, rsp
	movabs	rdi, OFFSET FLAT:.str
	call	getenv
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415590

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
	je	.label_2204
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 9
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_2207
.label_2204:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_2207
.label_2207:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	setenv_TZ
	cmp	eax, 0
	je	.label_2206
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2205
.label_2206:
	call	tzset
	mov	byte ptr [rbp - 1], 1
.label_2205:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415600

	.globl setenv_TZ
	.type setenv_TZ, @function
setenv_TZ:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_2208
	movabs	rdi, OFFSET FLAT:.str
	mov	edx, 1
	mov	rsi, qword ptr [rbp - 8]
	call	setenv
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_2209
.label_2208:
	movabs	rdi, OFFSET FLAT:.str
	call	unsetenv
	mov	dword ptr [rbp - 0xc], eax
.label_2209:
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415660

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
	je	.label_2210
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 4]
	mov	byte ptr [rbp - 9], cl
	jg	.label_2210
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 8]
	setle	cl
	mov	byte ptr [rbp - 9], cl
.label_2210:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4156c0

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
	jne	.label_2211
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2215
.label_2211:
	jmp	.label_2212
.label_2212:
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
	jne	.label_2214
	jmp	.label_2213
.label_2214:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	je	.label_2212
.label_2213:
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_2215:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415780

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
	jne	.label_2216
	test	byte ptr [rbp - 0x13], 1
	je	.label_2218
	test	byte ptr [rbp - 0x11], 1
	jne	.label_2216
	call	__errno_location
	cmp	dword ptr [rax], 9
	je	.label_2218
.label_2216:
	test	byte ptr [rbp - 0x13], 1
	jne	.label_2219
	call	__errno_location
	mov	dword ptr [rax], 0
.label_2219:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_2217
.label_2218:
	mov	dword ptr [rbp - 4], 0
.label_2217:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415830

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
	jne	.label_2220
	movabs	rax, OFFSET FLAT:.str_0
	mov	qword ptr [rbp - 8], rax
.label_2220:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_2221
	movabs	rax, OFFSET FLAT:.str.1_8
	mov	qword ptr [rbp - 8], rax
.label_2221:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415890

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
	ja	.label_2222
	jmp	.label_2224
.label_2224:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	add	eax, 0x2001a
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2223
.label_2222:
	jmp	.label_2223
.label_2223:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4158e0
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
	jb	.label_2225
	jmp	.label_2227
.label_2227:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_2225
	jmp	.label_2226
.label_2226:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_2228
	jmp	.label_2225
.label_2225:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2229
.label_2228:
	mov	byte ptr [rbp - 1], 0
.label_2229:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415950
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
	jb	.label_2230
	jmp	.label_2233
.label_2233:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_2231
	jmp	.label_2230
.label_2230:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2232
.label_2231:
	mov	byte ptr [rbp - 1], 0
.label_2232:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4159a0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2234
	jmp	.label_2235
.label_2235:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2236
.label_2234:
	mov	byte ptr [rbp - 1], 0
.label_2236:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4159d0
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_2237
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_2237:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415a00
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
	jb	.label_2238
	jmp	.label_2240
.label_2240:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_2241
	jmp	.label_2238
.label_2238:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2239
.label_2241:
	mov	byte ptr [rbp - 1], 0
.label_2239:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415a50
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2242
	jmp	.label_2244
.label_2244:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2243
.label_2242:
	mov	byte ptr [rbp - 1], 0
.label_2243:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415a90
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2245
	jmp	.label_2247
.label_2247:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2246
.label_2245:
	mov	byte ptr [rbp - 1], 0
.label_2246:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415ad0
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2248
	jmp	.label_2250
.label_2250:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2249
.label_2248:
	mov	byte ptr [rbp - 1], 0
.label_2249:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415b10
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2251
	jmp	.label_2253
.label_2253:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2252
.label_2251:
	mov	byte ptr [rbp - 1], 0
.label_2252:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415b50
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
	jb	.label_2254
	jmp	.label_2257
.label_2257:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x3a
	sub	eax, 7
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_2254
	jmp	.label_2258
.label_2258:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x5b
	sub	eax, 6
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_2254
	jmp	.label_2256
.label_2256:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x7b
	sub	eax, 3
	mov	dword ptr [rbp - 0x1c], eax
	ja	.label_2259
	jmp	.label_2254
.label_2254:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2255
.label_2259:
	mov	byte ptr [rbp - 1], 0
.label_2255:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415bd0
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
	jb	.label_2260
	jmp	.label_2263
.label_2263:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_2262
	jmp	.label_2260
.label_2260:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2261
.label_2262:
	mov	byte ptr [rbp - 1], 0
.label_2261:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415c20
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2264
	jmp	.label_2266
.label_2266:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2265
.label_2264:
	mov	byte ptr [rbp - 1], 0
.label_2265:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415c60
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
	jb	.label_2267
	jmp	.label_2270
.label_2270:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_2267
	jmp	.label_2268
.label_2268:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_2269
	jmp	.label_2267
.label_2267:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2271
.label_2269:
	mov	byte ptr [rbp - 1], 0
.label_2271:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415cd0

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2272
	jmp	.label_2274
.label_2274:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2273
.label_2272:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_2273:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415d10
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2275
	jmp	.label_2277
.label_2277:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2276
.label_2275:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_2276:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415e00

	.globl __fstat
	.type __fstat, @function
__fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat