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
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	byte ptr [rbp - 0x15], 0
	mov	byte ptr [rbp - 0x16], 0
	mov	byte ptr [rbp - 0x17], 0
	nop	
	mov	qword ptr [rbp - 0x28], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], 0
	mov	qword ptr [rbp - 0x38], 0
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	rsp, rsp
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:.str_0
	call	setlocale
	movabs	rdi, OFFSET FLAT:.str.1
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.2
	mov	qword ptr [rbp - 0x50], rax
	call	bindtextdomain
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.1
	mov	qword ptr [rbp - 0x58], rax
	lea	rdi, [rdi]
	call	textdomain
	movabs	rdi, OFFSET FLAT:close_stdout
	mov	qword ptr [rbp - 0x60], rax
	call	atexit
	mov	dword ptr [rbp - 0x14], 0
	cmp	dword ptr [rbp - 8], 1
	mov	dword ptr [rbp - 0x64], eax
	jle	.label_17
	lea	rsi, [rsi]
	mov	eax, 8
	mov	esi, eax
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 1
	movsxd	rdi, eax
	call	xnmalloc
	mov	qword ptr [rbp - 0x70], rax
	nop	
	jmp	.label_28
.label_17:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], rcx
	jmp	.label_28
.label_28:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x20], rax
.label_48:
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:short_options
	movabs	rcx, OFFSET FLAT:long_options
	lea	r8, [rbp - 0x3c]
	mov	dword ptr [rbp - 0x3c], 0xffffffff
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	getopt_long
	mov	dword ptr [rbp - 0x40], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x40], -1
	nop	
	jne	.label_49
	jmp	.label_59
.label_49:
	nop	
	mov	eax, dword ptr [rbp - 0x40]
	sub	eax, 0x30
	nop	
	cmp	eax, 9
	ja	.label_56
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	add	rax, 1
	nop	
	cmp	rax, qword ptr [rbp - 0x38]
	nop	
	jb	.label_60
	lea	rsi, [rbp - 0x38]
	nop	
	mov	rdi, qword ptr [rbp - 0x28]
	call	x2realloc
	mov	qword ptr [rbp - 0x28], rax
.label_60:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x40]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, rdx
	add	rsi, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	byte ptr [rsi + rdx], cl
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x28]
	mov	byte ptr [rsi + rdx], 0
	lea	rsi, [rsi]
	jmp	.label_48
.label_56:
	mov	qword ptr [rbp - 0x30], 0
	mov	eax, dword ptr [rbp - 0x40]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	mov	dword ptr [rbp - 0x74], eax
	mov	dword ptr [rbp - 0x78], ecx
	mov	rbp, rbp
	je	.label_77
	jmp	.label_82
.label_82:
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0xffffff7e
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], eax
	lea	rdi, [rdi]
	je	.label_83
	lea	rdi, [rdi]
	jmp	.label_89
.label_89:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x74]
	nop	
	sub	eax, 1
	mov	dword ptr [rbp - 0x80], eax
	nop	
	je	.label_90
	jmp	.label_95
.label_95:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x74]
	nop	
	sub	eax, 0x44
	mov	dword ptr [rbp - 0x84], eax
	je	.label_96
	jmp	.label_102
.label_102:
	mov	eax, dword ptr [rbp - 0x74]
	mov	rsp, rsp
	sub	eax, 0x46
	mov	dword ptr [rbp - 0x88], eax
	je	.label_63
	jmp	.label_106
.label_106:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x74]
	nop	
	sub	eax, 0x4a
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_107
	jmp	.label_105
.label_105:
	nop	
	mov	eax, dword ptr [rbp - 0x74]
	mov	rsp, rsp
	sub	eax, 0x4e
	mov	dword ptr [rbp - 0x90], eax
	je	.label_110
	mov	rsp, rsp
	jmp	.label_11
.label_11:
	mov	eax, dword ptr [rbp - 0x74]
	nop	
	sub	eax, 0x53
	mov	dword ptr [rbp - 0x94], eax
	je	.label_12
	jmp	.label_69
.label_69:
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x98], eax
	mov	rsp, rsp
	je	.label_16
	mov	rbp, rbp
	jmp	.label_23
.label_23:
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0x57
	mov	dword ptr [rbp - 0x9c], eax
	mov	rsp, rsp
	je	.label_24
	mov	rsp, rsp
	jmp	.label_29
.label_29:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x74]
	lea	rdi, [rdi]
	sub	eax, 0x61
	mov	dword ptr [rbp - 0xa0], eax
	nop	
	je	.label_30
	jmp	.label_38
.label_38:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0x62
	nop	
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_41
	jmp	.label_101
.label_101:
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0xa8], eax
	lea	rdi, [rdi]
	je	.label_44
	jmp	.label_47
.label_47:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0x64
	mov	dword ptr [rbp - 0xac], eax
	je	.label_33
	jmp	.label_55
.label_55:
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0x65
	nop	
	mov	dword ptr [rbp - 0xb0], eax
	je	.label_58
	jmp	.label_61
.label_61:
	mov	eax, dword ptr [rbp - 0x74]
	mov	rbp, rbp
	sub	eax, 0x66
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_63
	lea	rsi, [rsi]
	jmp	.label_67
.label_67:
	mov	eax, dword ptr [rbp - 0x74]
	mov	rbp, rbp
	sub	eax, 0x68
	nop	
	mov	dword ptr [rbp - 0xb8], eax
	je	.label_70
	jmp	.label_72
.label_72:
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0x69
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xbc], eax
	je	.label_13
	jmp	.label_73
.label_73:
	mov	eax, dword ptr [rbp - 0x74]
	lea	rsi, [rsi]
	sub	eax, 0x6c
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc0], eax
	je	.label_75
	mov	rbp, rbp
	jmp	.label_80
.label_80:
	mov	eax, dword ptr [rbp - 0x74]
	nop	
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xc4], eax
	mov	rsp, rsp
	je	.label_81
	jmp	.label_84
.label_84:
	mov	eax, dword ptr [rbp - 0x74]
	lea	rdi, [rdi]
	sub	eax, 0x6e
	mov	dword ptr [rbp - 0xc8], eax
	je	.label_85
	mov	rbp, rbp
	jmp	.label_91
.label_91:
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0x6f
	mov	dword ptr [rbp - 0xcc], eax
	je	.label_92
	nop	
	jmp	.label_98
.label_98:
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0x72
	mov	dword ptr [rbp - 0xd0], eax
	je	.label_100
	jmp	.label_104
.label_104:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0x73
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xd4], eax
	lea	rsi, [rsi]
	je	.label_52
	jmp	.label_108
.label_108:
	mov	eax, dword ptr [rbp - 0x74]
	lea	rsi, [rsi]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xd8], eax
	je	.label_109
	nop	
	jmp	.label_8
.label_8:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x74]
	mov	rbp, rbp
	sub	eax, 0x76
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xdc], eax
	nop	
	je	.label_15
	jmp	.label_22
.label_22:
	nop	
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0x77
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xe0], eax
	je	.label_65
	jmp	.label_18
.label_18:
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0x80
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xe4], eax
	je	.label_97
	mov	rbp, rbp
	jmp	.label_27
.label_27:
	mov	eax, dword ptr [rbp - 0x74]
	mov	rsp, rsp
	sub	eax, 0x81
	mov	dword ptr [rbp - 0xe8], eax
	mov	rsp, rsp
	je	.label_43
	nop	
	jmp	.label_34
.label_90:
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [first_page_number]],  0
	lea	rsi, [rsi]
	jne	.label_37
	mov	rax,  qword ptr [word ptr [optarg]]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2b
	lea	rsi, [rsi]
	jne	.label_37
	mov	edi, 0xfffffffe
	nop	
	mov	esi, 0x2b
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [optarg]]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rsi, [rsi]
	mov	rdx, rax
	call	first_last_page
	test	al, 1
	nop	
	jne	.label_57
.label_37:
	nop	
	mov	rax,  qword ptr [word ptr [optarg]]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x14]
	mov	edx, ecx
	add	edx, 1
	mov	dword ptr [rbp - 0x14], edx
	mov	ecx, ecx
	nop	
	mov	esi, ecx
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rdi + rsi*8], rax
.label_57:
	jmp	.label_10
.label_43:
	mov	rsp, rsp
	cmp	qword ptr [word ptr [optarg]],  0
	jne	.label_68
	movabs	rdi, OFFSET FLAT:.str.3
	nop	
	call	gettext
	mov	rsp, rsp
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
.label_68:
	xor	esi, esi
	mov	edi, dword ptr [rbp - 0x3c]
	mov	rdx,  qword ptr [word ptr [optarg]]
	call	first_last_page
	test	al, 1
	jne	.label_79
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.4
	call	gettext
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0xf0], rax
	call	quote
	mov	rsp, rsp
	mov	edi, 1
	xor	esi, esi
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xf0]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	error
.label_79:
	lea	rdi, [rdi]
	jmp	.label_94
.label_94:
	jmp	.label_10
.label_97:
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	parse_column_count
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], 0
	mov	qword ptr [rbp - 0x38], 0
	jmp	.label_10
.label_30:
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [print_across_flag]],  1
	mov	byte ptr [byte ptr [storing_columns]],  0
	jmp	.label_10
.label_41:
	mov	rbp, rbp
	mov	byte ptr [byte ptr [balance_columns]],  1
	lea	rdi, [rdi]
	jmp	.label_10
.label_44:
	mov	rbp, rbp
	mov	byte ptr [byte ptr [use_cntrl_prefix]],  1
	jmp	.label_10
.label_33:
	mov	byte ptr [byte ptr [double_space]],  1
	mov	rbp, rbp
	jmp	.label_10
.label_96:
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [word ptr [date_format]],  rax
	lea	rdi, [rdi]
	jmp	.label_10
.label_58:
	lea	rdi, [rdi]
	cmp	qword ptr [word ptr [optarg]],  0
	lea	rsi, [rsi]
	je	.label_103
	mov	rbp, rbp
	mov	esi, 0x65
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:input_tab_char
	movabs	rcx, OFFSET FLAT:chars_per_input_tab
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	rsp, rsp
	call	getoptarg
.label_103:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [untabify_input]],  1
	lea	rsi, [rsi]
	jmp	.label_10
.label_63:
	mov	byte ptr [byte ptr [use_form_feed]],  1
	lea	rdi, [rdi]
	jmp	.label_10
.label_70:
	nop	
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [word ptr [custom_header]],  rax
	nop	
	jmp	.label_10
.label_13:
	nop	
	cmp	qword ptr [word ptr [optarg]],  0
	mov	rbp, rbp
	je	.label_51
	mov	rbp, rbp
	mov	esi, 0x69
	movabs	rdx, OFFSET FLAT:output_tab_char
	movabs	rcx, OFFSET FLAT:chars_per_output_tab
	mov	rdi,  qword ptr [word ptr [optarg]]
	nop	
	call	getoptarg
.label_51:
	nop	
	mov	byte ptr [byte ptr [tabify_output]],  1
	jmp	.label_10
.label_107:
	mov	byte ptr [byte ptr [join_lines]],  1
	mov	rsp, rsp
	jmp	.label_10
.label_75:
	nop	
	movabs	rdi, OFFSET FLAT:.str.5
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xf8], rax
	call	gettext
	mov	esi, 1
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:lines_per_page
	mov	rdi, qword ptr [rbp - 0xf8]
	mov	rcx, rax
	call	getoptnum
	jmp	.label_10
.label_81:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [parallel_files]],  1
	nop	
	mov	byte ptr [byte ptr [storing_columns]],  0
	jmp	.label_10
.label_85:
	mov	byte ptr [byte ptr [numbered_lines]],  1
	cmp	qword ptr [word ptr [optarg]],  0
	nop	
	je	.label_87
	mov	rsp, rsp
	mov	esi, 0x6e
	movabs	rdx, OFFSET FLAT:number_separator
	movabs	rcx, OFFSET FLAT:chars_per_number
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	rsp, rsp
	call	getoptarg
.label_87:
	mov	rsp, rsp
	jmp	.label_10
.label_110:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.6
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [skip_count]],  0
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x100], rax
	call	gettext
	lea	rdi, [rdi]
	mov	esi, 0x80000000
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:start_line_num
	nop	
	mov	rdi, qword ptr [rbp - 0x100]
	mov	rcx, rax
	call	getoptnum
	lea	rsi, [rsi]
	jmp	.label_10
.label_92:
	movabs	rdi, OFFSET FLAT:.str.7
	nop	
	mov	rax,  qword ptr [word ptr [optarg]]
	nop	
	mov	qword ptr [rbp - 0x108], rax
	call	gettext
	mov	rsp, rsp
	xor	esi, esi
	nop	
	movabs	rdx, OFFSET FLAT:chars_per_margin
	nop	
	mov	rdi, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rdi, [rdi]
	call	getoptnum
	jmp	.label_10
.label_100:
	mov	byte ptr [byte ptr [ignore_failed_opens]],  1
	mov	rbp, rbp
	jmp	.label_10
.label_52:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x15], 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x17], 1
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [use_col_separator]],  1
	jne	.label_40
	lea	rdi, [rdi]
	cmp	qword ptr [word ptr [optarg]],  0
	je	.label_40
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	rsp, rsp
	call	separator_string
.label_40:
	jmp	.label_10
.label_12:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:.str_0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x17], 0
	mov	qword ptr [word ptr [col_sep_string]],  rax
	mov	rsp, rsp
	mov	dword ptr [dword ptr [col_sep_length]],  0
	mov	rsp, rsp
	mov	byte ptr [byte ptr [use_col_separator]],  1
	cmp	qword ptr [word ptr [optarg]],  0
	nop	
	je	.label_54
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	separator_string
.label_54:
	lea	rdi, [rdi]
	jmp	.label_10
.label_109:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [extremities]],  0
	mov	byte ptr [byte ptr [keep_FF]],  1
	nop	
	jmp	.label_10
.label_16:
	mov	rbp, rbp
	mov	byte ptr [byte ptr [extremities]],  0
	nop	
	mov	byte ptr [byte ptr [keep_FF]],  0
	mov	rsp, rsp
	jmp	.label_10
.label_15:
	mov	byte ptr [byte ptr [use_esc_sequence]],  1
	jmp	.label_10
.label_65:
	movabs	rdi, OFFSET FLAT:.str.8
	mov	byte ptr [rbp - 0x15], 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x16], 1
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x110], rax
	mov	rbp, rbp
	call	gettext
	lea	rdi, [rdi]
	mov	esi, 1
	lea	rsi, [rsi]
	lea	rdx, [rbp - 0x44]
	mov	rdi, qword ptr [rbp - 0x110]
	mov	rcx, rax
	call	getoptnum
	mov	rbp, rbp
	test	byte ptr [byte ptr [truncate_lines]],  1
	jne	.label_74
	nop	
	mov	eax, dword ptr [rbp - 0x44]
	mov	dword ptr [dword ptr [chars_per_line]],  eax
.label_74:
	jmp	.label_10
.label_24:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.9
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x16], 0
	mov	byte ptr [byte ptr [truncate_lines]],  1
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x118], rax
	lea	rdi, [rdi]
	call	gettext
	mov	esi, 1
	movabs	rdx, OFFSET FLAT:chars_per_line
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x118]
	mov	rsp, rsp
	mov	rcx, rax
	call	getoptnum
	mov	rsp, rsp
	jmp	.label_10
.label_83:
	lea	rdi, [rdi]
	xor	edi, edi
	nop	
	call	usage
.label_77:
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.10
	movabs	rdx, OFFSET FLAT:.str.17
	lea	rsi, [rsi]
	movabs	r8, OFFSET FLAT:.str.12
	nop	
	movabs	r9, OFFSET FLAT:.str.13
	nop	
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	r10,  qword ptr [word ptr [Version]]
	nop	
	mov	qword ptr [rbp - 0x120], rcx
	mov	rcx, r10
	mov	qword ptr [rsp], 0
	nop	
	mov	al, 0
	mov	rbp, rbp
	call	version_etc
	xor	edi, edi
	lea	rsi, [rsi]
	call	exit
.label_34:
	mov	edi, 1
	call	usage
.label_10:
	mov	rsp, rsp
	jmp	.label_48
.label_59:
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	je	.label_50
	mov	rdi, qword ptr [rbp - 0x28]
	call	parse_column_count
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	free
.label_50:
	nop	
	cmp	qword ptr [word ptr [date_format]],  0
	nop	
	jne	.label_88
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.14
	mov	rsp, rsp
	call	getenv
	mov	rbp, rbp
	xor	ecx, ecx
	mov	dl, cl
	cmp	rax, 0
	mov	byte ptr [rbp - 0x121], dl
	mov	rsp, rsp
	je	.label_31
	mov	rbp, rbp
	mov	edi, 2
	call	hard_locale
	xor	al, 0xff
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x121], al
.label_31:
	mov	al, byte ptr [rbp - 0x121]
	movabs	rcx, OFFSET FLAT:.str.16
	movabs	rdx, OFFSET FLAT:.str.15
	lea	rsi, [rsi]
	test	al, 1
	cmovne	rcx, rdx
	mov	qword ptr [word ptr [date_format]],  rcx
.label_88:
	movabs	rdi, OFFSET FLAT:.str
	call	getenv
	mov	rdi, rax
	nop	
	call	tzalloc
	mov	qword ptr [word ptr [localtz]],  rax
	cmp	qword ptr [word ptr [first_page_number]],  0
	mov	rsp, rsp
	jne	.label_86
	mov	qword ptr [word ptr [first_page_number]],  1
.label_86:
	mov	rsp, rsp
	test	byte ptr [byte ptr [parallel_files]],  1
	mov	rbp, rbp
	je	.label_39
	mov	rbp, rbp
	test	byte ptr [byte ptr [explicit_columns]],  1
	je	.label_39
	nop	
	movabs	rdi, OFFSET FLAT:.str.18
	nop	
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_39:
	mov	rsp, rsp
	test	byte ptr [byte ptr [parallel_files]],  1
	mov	rsp, rsp
	je	.label_9
	test	byte ptr [byte ptr [print_across_flag]],  1
	lea	rdi, [rdi]
	je	.label_9
	nop	
	movabs	rdi, OFFSET FLAT:.str.19
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 1
	lea	rdi, [rdi]
	xor	esi, esi
	mov	rdx, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
.label_9:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x15], 1
	lea	rdi, [rdi]
	je	.label_21
	mov	rbp, rbp
	test	byte ptr [rbp - 0x16], 1
	je	.label_26
	test	byte ptr [byte ptr [parallel_files]],  1
	jne	.label_20
	mov	rsp, rsp
	test	byte ptr [byte ptr [explicit_columns]],  1
	lea	rsi, [rsi]
	je	.label_32
.label_20:
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [truncate_lines]],  1
	test	byte ptr [rbp - 0x17], 1
	je	.label_36
	nop	
	mov	byte ptr [byte ptr [use_col_separator]],  1
.label_36:
	jmp	.label_42
.label_32:
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [join_lines]],  1
.label_42:
	lea	rsi, [rsi]
	jmp	.label_45
.label_26:
	test	byte ptr [byte ptr [use_col_separator]],  1
	jne	.label_46
	test	byte ptr [rbp - 0x17], 1
	je	.label_35
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [parallel_files]],  1
	nop	
	jne	.label_53
	test	byte ptr [byte ptr [explicit_columns]],  1
	lea	rsi, [rsi]
	je	.label_35
.label_53:
	test	byte ptr [byte ptr [truncate_lines]],  1
	mov	rsp, rsp
	jne	.label_64
	mov	byte ptr [byte ptr [join_lines]],  1
	cmp	dword ptr [dword ptr [col_sep_length]],  0
	jle	.label_66
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [use_col_separator]],  1
.label_66:
	jmp	.label_71
.label_64:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [use_col_separator]],  1
.label_71:
	jmp	.label_35
.label_35:
	jmp	.label_46
.label_46:
	jmp	.label_45
.label_45:
	jmp	.label_21
.label_21:
	mov	rbp, rbp
	jmp	.label_76
.label_76:
	mov	eax,  dword ptr [dword ptr [optind]]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 8]
	jge	.label_78
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	edx, dword ptr [rbp - 0x14]
	mov	esi, edx
	add	esi, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], esi
	mov	rbp, rbp
	mov	edx, edx
	mov	ecx, edx
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [optind]]
	mov	rbp, rbp
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [dword ptr [optind]],  eax
	jmp	.label_76
.label_78:
	nop	
	cmp	dword ptr [rbp - 0x14], 0
	jne	.label_99
	xor	edi, edi
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, eax
	call	print_files
	jmp	.label_93
.label_99:
	mov	rbp, rbp
	test	byte ptr [byte ptr [parallel_files]],  1
	je	.label_62
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x20]
	call	print_files
	lea	rsi, [rsi]
	jmp	.label_19
.label_62:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x48], 0
.label_14:
	mov	eax, dword ptr [rbp - 0x48]
	nop	
	cmp	eax, dword ptr [rbp - 0x14]
	jae	.label_7
	mov	rsp, rsp
	mov	edi, 1
	nop	
	mov	eax, dword ptr [rbp - 0x48]
	mov	ecx, eax
	shl	rcx, 3
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x20]
	mov	rsi, rcx
	call	print_files
	mov	eax, dword ptr [rbp - 0x48]
	add	eax, 1
	mov	dword ptr [rbp - 0x48], eax
	mov	rbp, rbp
	jmp	.label_14
.label_7:
	jmp	.label_19
.label_19:
	jmp	.label_93
.label_93:
	mov	rbp, rbp
	call	cleanup
	nop	
	test	byte ptr [byte ptr [have_read_stdin]],  1
	je	.label_25
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [stdin]]
	nop	
	call	rpl_fclose
	cmp	eax, -1
	lea	rsi, [rsi]
	jne	.label_25
	mov	rbp, rbp
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.20
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x128], esi
	call	gettext
	lea	rdi, [rdi]
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x128]
	nop	
	mov	rdx, rax
	mov	al, 0
	call	error
.label_25:
	xor	eax, eax
	mov	ecx, 1
	mov	rbp, rbp
	mov	dl,  byte ptr [byte ptr [failed_opens]]
	lea	rdi, [rdi]
	test	dl, 1
	cmovne	eax, ecx
	add	rsp, 0x130
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402ae0

	.globl first_last_page
	.type first_last_page, @function
first_last_page:
	mov	rbp, rbp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	rbp, rbp
	mov	al, sil
	mov	rsp, rsp
	lea	rsi, [rbp - 0x20]
	mov	rbp, rbp
	mov	ecx, 0xa
	lea	rdi, [rdi]
	lea	r8, [rbp - 0x28]
	mov	rsp, rsp
	movabs	r9, OFFSET FLAT:.str_0
	mov	dword ptr [rbp - 8], edi
	mov	byte ptr [rbp - 9], al
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x30], -1
	mov	rdi, qword ptr [rbp - 0x18]
	mov	edx, ecx
	mov	rcx, r8
	lea	rsi, [rsi]
	mov	r8, r9
	lea	rdi, [rdi]
	call	xstrtoumax
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	mov	rsp, rsp
	je	.label_112
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x34], 2
	nop	
	je	.label_112
	movabs	rcx, OFFSET FLAT:long_options
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 8]
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 9]
	mov	r8, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	movsx	edx, al
	call	xstrtol_fatal
.label_112:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x18]
	je	.label_115
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_118
.label_115:
	nop	
	mov	byte ptr [rbp - 1], 0
	jmp	.label_114
.label_118:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x3a
	mov	rsp, rsp
	jne	.label_111
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x20]
	mov	edx, 0xa
	lea	rcx, [rbp - 0x30]
	movabs	r8, OFFSET FLAT:.str_0
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x40]
	call	xstrtoumax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x34], 0
	je	.label_119
	movabs	rcx, OFFSET FLAT:long_options
	mov	edi, dword ptr [rbp - 0x34]
	mov	esi, dword ptr [rbp - 8]
	mov	al, byte ptr [rbp - 9]
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x18]
	movsx	edx, al
	call	xstrtol_fatal
.label_119:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	je	.label_117
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_113
.label_117:
	mov	byte ptr [rbp - 1], 0
	lea	rsi, [rsi]
	jmp	.label_114
.label_113:
	lea	rdi, [rdi]
	jmp	.label_111
.label_111:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	byte ptr [rax], 0
	je	.label_116
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 0
	lea	rdi, [rdi]
	jmp	.label_114
.label_116:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [word ptr [first_page_number]],  rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	qword ptr [word ptr [last_page_number]],  rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 1
.label_114:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	nop	
	movzx	eax, al
	lea	rdi, [rdi]
	add	rsp, 0x40
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x402cd0

	.globl parse_column_count
	.type parse_column_count, @function
parse_column_count:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.65
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, rax
	nop	
	call	gettext
	mov	esi, 1
	movabs	rdx, OFFSET FLAT:columns
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, rax
	call	getoptnum
	mov	byte ptr [byte ptr [explicit_columns]],  1
	lea	rdi, [rdi]
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402d30

	.globl getoptarg
	.type getoptarg, @function
getoptarg:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	al, sil
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	movsx	esi, byte ptr [rcx]
	lea	rdi, [rdi]
	sub	esi, 0x30
	nop	
	cmp	esi, 9
	jbe	.label_124
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	nop	
	mov	dl, byte ptr [rax]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax], dl
.label_124:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	byte ptr [rax], 0
	je	.label_123
	mov	rsp, rsp
	xor	eax, eax
	mov	esi, eax
	mov	edx, 0xa
	mov	rsp, rsp
	lea	rcx, [rbp - 0x28]
	lea	rsi, [rsi]
	movabs	r8, OFFSET FLAT:.str_0
	nop	
	mov	rdi, qword ptr [rbp - 8]
	call	xstrtol
	cmp	eax, 0
	jne	.label_121
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	jle	.label_121
	mov	eax, 0x7fffffff
	lea	rdi, [rdi]
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x28]
	nop	
	jge	.label_120
.label_121:
	mov	eax, 0x7fffffff
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jge	.label_125
	lea	rdi, [rdi]
	mov	eax, 0x4b
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], eax
	jmp	.label_122
.label_125:
	mov	rsp, rsp
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x2c], ecx
.label_122:
	mov	eax, dword ptr [rbp - 0x2c]
	movabs	rdi, OFFSET FLAT:.str.67
	nop	
	mov	dword ptr [rbp - 0x30], eax
	lea	rsi, [rsi]
	call	gettext
	movsx	ecx, byte ptr [rbp - 9]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
	nop	
	mov	dword ptr [rbp - 0x3c], ecx
	lea	rdi, [rdi]
	call	quote
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	ecx, dword ptr [rbp - 0x3c]
	mov	rsp, rsp
	mov	r8, rax
	mov	al, 0
	mov	rsp, rsp
	call	error
	mov	edi, 1
	lea	rsi, [rsi]
	call	usage
.label_120:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
.label_123:
	mov	rbp, rbp
	add	rsp, 0x40
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x402eb0

	.globl getoptnum
	.type getoptnum, @function
getoptnum:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rsi, [rsi]
	mov	eax, 0x7fffffff
	mov	r8d, eax
	movabs	r9, OFFSET FLAT:.str_0
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	movsxd	rsi, dword ptr [rbp - 0xc]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, r8
	mov	qword ptr [rbp - 0x30], rcx
	mov	rcx, r9
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x30]
	mov	r9d, eax
	call	xdectoimax
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	r9d, eax
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax], r9d
	mov	rbp, rbp
	add	rsp, 0x30
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x402f40

	.globl separator_string
	.type separator_string, @function
separator_string:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	eax, 0x7fffffff
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rcx
	call	strlen
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_126
	nop	
	call	integer_overflow
.label_126:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, eax
	mov	dword ptr [dword ptr [col_sep_length]],  ecx
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [col_sep_string]],  rax
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402fb0

	.globl usage
	.type usage, @function
usage:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x60
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], edi
	nop	
	cmp	dword ptr [rbp - 4], 0
	je	.label_129
	jmp	.label_128
.label_128:
	movabs	rdi, OFFSET FLAT:.str.21
	nop	
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_127
.label_129:
	movabs	rdi, OFFSET FLAT:.str.22
	lea	rdi, [rdi]
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	rbp, rbp
	mov	al, 0
	lea	rdi, [rdi]
	call	printf
	nop	
	movabs	rdi, OFFSET FLAT:.str.23
	nop	
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x1c], eax
	call	emit_stdin_note
	call	emit_mandatory_arg_note
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.24
	nop	
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.25
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x20], eax
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.26
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.27
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.28
	mov	dword ptr [rbp - 0x2c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.29
	nop	
	mov	dword ptr [rbp - 0x30], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.30
	mov	dword ptr [rbp - 0x34], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	nop	
	movabs	rdi, OFFSET FLAT:.str.31
	mov	dword ptr [rbp - 0x38], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.32
	mov	dword ptr [rbp - 0x3c], eax
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.33
	mov	dword ptr [rbp - 0x40], eax
	call	gettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.34
	mov	dword ptr [rbp - 0x44], eax
	lea	rsi, [rsi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.35
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x48], eax
	mov	rbp, rbp
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.36
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x4c], eax
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	movabs	rdi, OFFSET FLAT:.str.37
	mov	dword ptr [rbp - 0x50], eax
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.38
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x54], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	nop	
	movabs	rdi, OFFSET FLAT:.str.10
	mov	dword ptr [rbp - 0x58], eax
	call	emit_ancillary_info
.label_127:
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	call	exit
	.section	.text
	.align	32
	#Procedure 0x403300

	.globl print_files
	.type print_files, @function
print_files:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 4]
	call	init_parameters
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	init_fps
	test	al, 1
	mov	rbp, rbp
	jne	.label_133
	jmp	.label_131
.label_133:
	test	byte ptr [byte ptr [storing_columns]],  1
	je	.label_130
	lea	rsi, [rsi]
	call	init_store_cols
.label_130:
	cmp	qword ptr [word ptr [first_page_number]],  1
	mov	rsp, rsp
	jbe	.label_135
	mov	rdi,  qword ptr [word ptr [first_page_number]]
	call	skip_to_page
	mov	rsp, rsp
	test	al, 1
	nop	
	jne	.label_134
	jmp	.label_131
.label_134:
	mov	rax,  qword ptr [word ptr [first_page_number]]
	mov	qword ptr [word ptr [page_number]],  rax
	jmp	.label_132
.label_135:
	mov	rsp, rsp
	mov	qword ptr [word ptr [page_number]],  1
.label_132:
	call	init_funcs
	mov	eax,  dword ptr [dword ptr [line_count]]
	mov	rbp, rbp
	mov	dword ptr [dword ptr [line_number]],  eax
.label_136:
	lea	rdi, [rdi]
	call	print_page
	test	al, 1
	mov	rsp, rsp
	jne	.label_137
	jmp	.label_131
.label_137:
	jmp	.label_136
.label_131:
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4033f0

	.globl cleanup
	.type cleanup, @function
cleanup:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rdi,  qword ptr [word ptr [number_buff]]
	call	free
	mov	rdi,  qword ptr [word ptr [clump_buff]]
	call	free
	mov	rdi,  qword ptr [word ptr [column_vector]]
	call	free
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [line_vector]]
	lea	rdi, [rdi]
	call	free
	mov	rdi,  qword ptr [word ptr [end_vector]]
	nop	
	call	free
	nop	
	mov	rdi,  qword ptr [word ptr [buff]]
	lea	rsi, [rsi]
	call	free
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403460

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rsp, rsp
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
	#Procedure 0x4034a0

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.82
	mov	rbp, rbp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	nop	
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4034f0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	lea	rdi, [rdi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rax
.label_138:
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	qword ptr [rdx], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x21], cl
	mov	rbp, rbp
	je	.label_141
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	nop	
	cmp	eax, 0
	sete	cl
	mov	rbp, rbp
	xor	cl, 0xff
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x21], cl
.label_141:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x21]
	nop	
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_142
	lea	rdi, [rdi]
	jmp	.label_140
.label_142:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rax, 0x10
	nop	
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_138
.label_140:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 8], 0
	lea	rdi, [rdi]
	je	.label_143
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_143:
	movabs	rdi, OFFSET FLAT:.str.91
	nop	
	call	gettext
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.17
	movabs	rdx, OFFSET FLAT:.str.18_0
	mov	rdi, rax
	mov	rsp, rsp
	mov	al, 0
	call	printf
	nop	
	mov	edi, 5
	xor	ecx, ecx
	mov	esi, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x28], eax
	mov	rsp, rsp
	call	setlocale
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_139
	movabs	rsi, OFFSET FLAT:.str.93
	mov	rbp, rbp
	mov	eax, 3
	mov	rsp, rsp
	mov	edx, eax
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	nop	
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_139
	movabs	rdi, OFFSET FLAT:.str.94
	mov	rbp, rbp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_139:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.95
	nop	
	call	gettext
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.18_0
	nop	
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rbp, rbp
	mov	al, 0
	mov	rsp, rsp
	call	printf
	movabs	rdi, OFFSET FLAT:.str.96
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x30], eax
	lea	rsi, [rsi]
	call	gettext
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str_0
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.97
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmove	rdx, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rdi
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	al, 0
	call	printf
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3c], eax
	lea	rdi, [rdi]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403730

	.globl integer_overflow
	.type integer_overflow, @function
integer_overflow:
	push	rbp
	nop	
	mov	rbp, rsp
	movabs	rdi, OFFSET FLAT:.str.66
	lea	rsi, [rsi]
	call	gettext
	mov	edi, 1
	mov	rsp, rsp
	xor	esi, esi
	nop	
	mov	rdx, rax
	mov	rsp, rsp
	mov	al, 0
	mov	rsp, rsp
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403770

	.globl init_parameters
	.type init_parameters, @function
init_parameters:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [lines_per_page]]
	mov	rsp, rsp
	sub	edi, 5
	mov	rsp, rsp
	sub	edi, 5
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [lines_per_body]],  edi
	cmp	dword ptr [dword ptr [lines_per_body]],  0
	nop	
	jg	.label_346
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [extremities]],  0
	mov	byte ptr [byte ptr [keep_FF]],  1
.label_346:
	mov	al,  byte ptr [byte ptr [extremities]]
	and	al, 1
	movzx	ecx, al
	lea	rdi, [rdi]
	cmp	ecx, 0
	mov	rbp, rbp
	jne	.label_360
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [lines_per_page]]
	mov	dword ptr [dword ptr [lines_per_body]],  eax
.label_360:
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [double_space]],  1
	je	.label_365
	mov	eax, 2
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	mov	dword ptr [rbp - 0x18], eax
	mov	rbp, rbp
	mov	eax, ecx
	lea	rsi, [rsi]
	cdq	
	nop	
	mov	ecx, dword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	idiv	ecx
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [lines_per_body]],  eax
.label_365:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 4], 0
	jne	.label_165
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [parallel_files]],  0
.label_165:
	mov	rsp, rsp
	test	byte ptr [byte ptr [parallel_files]],  1
	je	.label_174
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	mov	dword ptr [dword ptr [columns]],  eax
.label_174:
	test	byte ptr [byte ptr [storing_columns]],  1
	je	.label_184
	mov	byte ptr [byte ptr [balance_columns]],  1
.label_184:
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [columns]],  1
	lea	rsi, [rsi]
	jle	.label_192
	test	byte ptr [byte ptr [use_col_separator]],  1
	lea	rdi, [rdi]
	jne	.label_200
	nop	
	test	byte ptr [byte ptr [join_lines]],  1
	lea	rsi, [rsi]
	je	.label_205
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [line_separator]]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [col_sep_string]],  rax
	jmp	.label_209
.label_205:
	mov	rax,  qword ptr [word ptr [column_separator]]
	mov	rbp, rbp
	mov	qword ptr [word ptr [col_sep_string]],  rax
.label_209:
	nop	
	mov	dword ptr [dword ptr [col_sep_length]],  1
	mov	byte ptr [byte ptr [use_col_separator]],  1
	nop	
	jmp	.label_216
.label_200:
	test	byte ptr [byte ptr [join_lines]],  1
	jne	.label_226
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [col_sep_length]],  1
	lea	rsi, [rsi]
	jne	.label_226
	mov	rax,  qword ptr [word ptr [col_sep_string]]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 9
	jne	.label_226
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [column_separator]]
	mov	qword ptr [word ptr [col_sep_string]],  rax
.label_226:
	mov	rsp, rsp
	jmp	.label_216
.label_216:
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [truncate_lines]],  1
	mov	rsp, rsp
	mov	byte ptr [byte ptr [tabify_output]],  1
	jmp	.label_222
.label_192:
	nop	
	mov	byte ptr [byte ptr [storing_columns]],  0
.label_222:
	test	byte ptr [byte ptr [join_lines]],  1
	mov	rbp, rbp
	je	.label_249
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [truncate_lines]],  0
.label_249:
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [numbered_lines]],  1
	je	.label_255
	mov	dword ptr [rbp - 0xc], 8
	mov	eax,  dword ptr [dword ptr [start_line_num]]
	mov	dword ptr [dword ptr [line_count]],  eax
	mov	rsp, rsp
	movsx	eax,  byte ptr [byte ptr [number_separator]]
	lea	rsi, [rsi]
	cmp	eax, 9
	jne	.label_258
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [chars_per_number]]
	mov	ecx, dword ptr [rbp - 0xc]
	mov	edx,  dword ptr [dword ptr [chars_per_number]]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
	mov	eax, edx
	cdq	
	idiv	dword ptr [rbp - 0xc]
	sub	ecx, edx
	nop	
	mov	edx, dword ptr [rbp - 0x1c]
	mov	rsp, rsp
	add	edx, ecx
	mov	rbp, rbp
	mov	dword ptr [dword ptr [number_width]],  edx
	jmp	.label_268
.label_258:
	mov	eax,  dword ptr [dword ptr [chars_per_number]]
	nop	
	add	eax, 1
	mov	dword ptr [dword ptr [number_width]],  eax
.label_268:
	test	byte ptr [byte ptr [parallel_files]],  1
	mov	rsp, rsp
	je	.label_278
	mov	eax,  dword ptr [dword ptr [number_width]]
	mov	dword ptr [rbp - 8], eax
.label_278:
	nop	
	jmp	.label_255
.label_255:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_291
	jmp	.label_300
.label_291:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	nop	
	jne	.label_270
	lea	rdi, [rdi]
	jmp	.label_307
.label_270:
	mov	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	cl, al
	movsx	eax, cl
	cmp	eax, 0
	jge	.label_309
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	mov	cl, al
	mov	rbp, rbp
	movsx	eax, cl
	mov	rsp, rsp
	cmp	eax, 0
	jge	.label_314
	mov	eax, 0x7fffffff
	nop	
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	mov	dl, cl
	mov	rbp, rbp
	movsx	ecx, dl
	mov	esi,  dword ptr [dword ptr [col_sep_length]]
	lea	rsi, [rsi]
	mov	dl, sil
	mov	rsp, rsp
	movsx	esi, dl
	mov	rbp, rbp
	cdq	
	lea	rdi, [rdi]
	idiv	esi
	cmp	ecx, eax
	jl	.label_158
	jmp	.label_324
.label_314:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	cl, al
	movsx	eax, cl
	cmp	eax, -1
	jne	.label_326
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	jne	.label_158
	lea	rsi, [rsi]
	jmp	.label_324
.label_326:
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [col_sep_length]]
	mov	dl, cl
	nop	
	movsx	ecx, dl
	cdq	
	idiv	ecx
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [columns]]
	lea	rsi, [rsi]
	sub	ecx, 1
	nop	
	mov	sil, cl
	movsx	ecx, sil
	cmp	eax, ecx
	mov	rsp, rsp
	jl	.label_158
	mov	rbp, rbp
	jmp	.label_324
.label_309:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	rsp, rsp
	mov	cl, al
	movsx	eax, cl
	mov	rbp, rbp
	cmp	eax, 0
	jne	.label_344
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_158
	jmp	.label_324
.label_344:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [columns]]
	nop	
	sub	eax, 1
	mov	rsp, rsp
	mov	cl, al
	movsx	eax, cl
	cmp	eax, 0
	mov	rsp, rsp
	jge	.label_349
	nop	
	mov	eax, 0x80000000
	lea	rdi, [rdi]
	mov	ecx,  dword ptr [dword ptr [columns]]
	nop	
	sub	ecx, 1
	mov	dl, cl
	movsx	ecx, dl
	mov	rbp, rbp
	mov	esi,  dword ptr [dword ptr [col_sep_length]]
	lea	rsi, [rsi]
	mov	dl, sil
	movsx	esi, dl
	cdq	
	idiv	esi
	cmp	ecx, eax
	jl	.label_158
	mov	rbp, rbp
	jmp	.label_324
.label_349:
	lea	rsi, [rsi]
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [col_sep_length]]
	mov	dl, cl
	movsx	ecx, dl
	nop	
	cdq	
	idiv	ecx
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [columns]]
	nop	
	sub	ecx, 1
	mov	sil, cl
	movsx	ecx, sil
	cmp	eax, ecx
	lea	rsi, [rsi]
	jl	.label_158
.label_324:
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	mov	cl, al
	mov	rsp, rsp
	movsx	eax, cl
	mov	edx,  dword ptr [dword ptr [col_sep_length]]
	mov	cl, dl
	mov	rbp, rbp
	movsx	edx, cl
	imul	eax, edx
	cmp	eax, -0x80
	jl	.label_158
	mov	eax, 0x7f
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	mov	rbp, rbp
	mov	dl, cl
	movsx	ecx, dl
	lea	rsi, [rsi]
	mov	esi,  dword ptr [dword ptr [col_sep_length]]
	nop	
	mov	dl, sil
	movsx	esi, dl
	nop	
	imul	ecx, esi
	cmp	eax, ecx
	jge	.label_178
.label_158:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [columns]]
	mov	rbp, rbp
	sub	ecx, 1
	mov	dl, cl
	mov	rsp, rsp
	movsx	ecx, dl
	mov	esi,  dword ptr [dword ptr [col_sep_length]]
	mov	rbp, rbp
	mov	dl, sil
	mov	rsp, rsp
	movsx	esi, dl
	imul	ecx, esi
	mov	rbp, rbp
	mov	dl, cl
	mov	rsp, rsp
	movsx	ecx, dl
	nop	
	mov	dword ptr [rbp - 0x10], ecx
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_154
	mov	rsp, rsp
	jmp	.label_152
.label_178:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	mov	dl, al
	movsx	eax, dl
	mov	rbp, rbp
	mov	esi,  dword ptr [dword ptr [col_sep_length]]
	mov	rbp, rbp
	mov	dl, sil
	movsx	esi, dl
	imul	eax, esi
	mov	dl, al
	nop	
	movsx	eax, dl
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10], eax
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_154
	jmp	.label_152
.label_307:
	cmp	dword ptr [dword ptr [col_sep_length]],  0
	jge	.label_230
	nop	
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	cmp	eax, 0
	jge	.label_232
	lea	rdi, [rdi]
	mov	eax, 0x7fffffff
	nop	
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	lea	rdi, [rdi]
	cdq	
	lea	rsi, [rsi]
	idiv	dword ptr [dword ptr [col_sep_length]]
	cmp	ecx, eax
	jl	.label_220
	mov	rbp, rbp
	jmp	.label_221
.label_232:
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [col_sep_length]],  -1
	jne	.label_246
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_220
	nop	
	jmp	.label_221
.label_246:
	lea	rdi, [rdi]
	mov	eax, 0x80000000
	mov	rsp, rsp
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cmp	eax, ecx
	mov	rsp, rsp
	jl	.label_220
	nop	
	jmp	.label_221
.label_230:
	cmp	dword ptr [dword ptr [col_sep_length]],  0
	mov	rsp, rsp
	jne	.label_267
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_220
	jmp	.label_221
.label_267:
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [columns]]
	mov	rsp, rsp
	sub	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	jge	.label_271
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	mov	rbp, rbp
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	cmp	ecx, eax
	jl	.label_220
	jmp	.label_221
.label_271:
	lea	rsi, [rsi]
	mov	eax, 0x7fffffff
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	cmp	eax, ecx
	nop	
	jl	.label_220
.label_221:
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	imul	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	rsp, rsp
	cmp	eax, -0x80
	mov	rbp, rbp
	jl	.label_220
	nop	
	mov	eax, 0x7f
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	imul	ecx,  dword ptr [dword ptr [col_sep_length]]
	nop	
	cmp	eax, ecx
	lea	rsi, [rsi]
	jge	.label_310
.label_220:
	nop	
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	lea	rsi, [rsi]
	imul	ecx,  dword ptr [dword ptr [col_sep_length]]
	mov	rbp, rbp
	mov	dl, cl
	movsx	ecx, dl
	mov	dword ptr [rbp - 0x10], ecx
	test	al, 1
	jne	.label_154
	jmp	.label_152
.label_310:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [columns]]
	lea	rsi, [rsi]
	sub	eax, 1
	lea	rsi, [rsi]
	imul	eax,  dword ptr [dword ptr [col_sep_length]]
	lea	rdi, [rdi]
	mov	dl, al
	mov	rsp, rsp
	movsx	eax, dl
	mov	dword ptr [rbp - 0x10], eax
	nop	
	test	cl, 1
	jne	.label_154
	jmp	.label_152
.label_300:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_336
	jmp	.label_338
.label_336:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_339
	jmp	.label_341
.label_339:
	mov	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	rsp, rsp
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	jge	.label_342
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [columns]]
	mov	rsp, rsp
	sub	eax, 1
	mov	cx, ax
	lea	rsi, [rsi]
	movsx	eax, cx
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rsi, [rsi]
	jge	.label_343
	mov	eax, 0x7fffffff
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	mov	rsp, rsp
	mov	dx, cx
	movsx	ecx, dx
	mov	rbp, rbp
	mov	esi,  dword ptr [dword ptr [col_sep_length]]
	lea	rdi, [rdi]
	mov	dx, si
	movsx	esi, dx
	cdq	
	mov	rbp, rbp
	idiv	esi
	lea	rdi, [rdi]
	cmp	ecx, eax
	jl	.label_182
	nop	
	jmp	.label_188
.label_343:
	mov	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	rbp, rbp
	mov	cx, ax
	nop	
	movsx	eax, cx
	lea	rdi, [rdi]
	cmp	eax, -1
	jne	.label_359
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_182
	jmp	.label_188
.label_359:
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [col_sep_length]]
	mov	rbp, rbp
	mov	dx, cx
	mov	rsp, rsp
	movsx	ecx, dx
	cdq	
	mov	rsp, rsp
	idiv	ecx
	lea	rdi, [rdi]
	mov	ecx,  dword ptr [dword ptr [columns]]
	mov	rbp, rbp
	sub	ecx, 1
	mov	rbp, rbp
	mov	si, cx
	lea	rsi, [rsi]
	movsx	ecx, si
	lea	rdi, [rdi]
	cmp	eax, ecx
	jl	.label_182
	mov	rsp, rsp
	jmp	.label_188
.label_342:
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	cx, ax
	lea	rdi, [rdi]
	movsx	eax, cx
	mov	rbp, rbp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_171
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_182
	mov	rsp, rsp
	jmp	.label_188
.label_171:
	mov	eax,  dword ptr [dword ptr [columns]]
	nop	
	sub	eax, 1
	nop	
	mov	cx, ax
	nop	
	movsx	eax, cx
	lea	rdi, [rdi]
	cmp	eax, 0
	jge	.label_191
	mov	rsp, rsp
	mov	eax, 0x80000000
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	mov	rbp, rbp
	mov	dx, cx
	mov	rbp, rbp
	movsx	ecx, dx
	mov	esi,  dword ptr [dword ptr [col_sep_length]]
	mov	rbp, rbp
	mov	dx, si
	lea	rdi, [rdi]
	movsx	esi, dx
	cdq	
	idiv	esi
	nop	
	cmp	ecx, eax
	jl	.label_182
	jmp	.label_188
.label_191:
	mov	eax, 0x7fffffff
	nop	
	mov	ecx,  dword ptr [dword ptr [col_sep_length]]
	mov	rsp, rsp
	mov	dx, cx
	mov	rbp, rbp
	movsx	ecx, dx
	cdq	
	idiv	ecx
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [columns]]
	nop	
	sub	ecx, 1
	lea	rsi, [rsi]
	mov	si, cx
	lea	rsi, [rsi]
	movsx	ecx, si
	cmp	eax, ecx
	mov	rsp, rsp
	jl	.label_182
.label_188:
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	mov	cx, ax
	nop	
	movsx	eax, cx
	mov	edx,  dword ptr [dword ptr [col_sep_length]]
	mov	cx, dx
	movsx	edx, cx
	imul	eax, edx
	mov	rbp, rbp
	cmp	eax, 0xffff8000
	jl	.label_182
	mov	eax, 0x7fff
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [columns]]
	nop	
	sub	ecx, 1
	nop	
	mov	dx, cx
	movsx	ecx, dx
	mov	rsp, rsp
	mov	esi,  dword ptr [dword ptr [col_sep_length]]
	mov	rsp, rsp
	mov	dx, si
	movsx	esi, dx
	imul	ecx, esi
	lea	rsi, [rsi]
	cmp	eax, ecx
	jge	.label_240
.label_182:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	mov	rsp, rsp
	mov	dx, cx
	movsx	ecx, dx
	mov	esi,  dword ptr [dword ptr [col_sep_length]]
	mov	rbp, rbp
	mov	dx, si
	movsx	esi, dx
	mov	rsp, rsp
	imul	ecx, esi
	nop	
	mov	dx, cx
	mov	rsp, rsp
	movsx	ecx, dx
	mov	dword ptr [rbp - 0x10], ecx
	test	al, 1
	jne	.label_154
	mov	rsp, rsp
	jmp	.label_152
.label_240:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [columns]]
	lea	rsi, [rsi]
	sub	eax, 1
	mov	rsp, rsp
	mov	dx, ax
	movsx	eax, dx
	mov	esi,  dword ptr [dword ptr [col_sep_length]]
	lea	rsi, [rsi]
	mov	dx, si
	nop	
	movsx	esi, dx
	lea	rdi, [rdi]
	imul	eax, esi
	lea	rsi, [rsi]
	mov	dx, ax
	movsx	eax, dx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10], eax
	test	cl, 1
	jne	.label_154
	jmp	.label_152
.label_341:
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [col_sep_length]],  0
	jge	.label_284
	nop	
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	cmp	eax, 0
	jge	.label_293
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [columns]]
	lea	rdi, [rdi]
	sub	ecx, 1
	cdq	
	mov	rsp, rsp
	idiv	dword ptr [dword ptr [col_sep_length]]
	lea	rdi, [rdi]
	cmp	ecx, eax
	mov	rbp, rbp
	jl	.label_302
	jmp	.label_311
.label_293:
	cmp	dword ptr [dword ptr [col_sep_length]],  -1
	jne	.label_313
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	jne	.label_302
	jmp	.label_311
.label_313:
	mov	eax, 0x80000000
	cdq	
	lea	rsi, [rsi]
	idiv	dword ptr [dword ptr [col_sep_length]]
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [columns]]
	mov	rsp, rsp
	sub	ecx, 1
	lea	rdi, [rdi]
	cmp	eax, ecx
	lea	rsi, [rsi]
	jl	.label_302
	mov	rbp, rbp
	jmp	.label_311
.label_284:
	cmp	dword ptr [dword ptr [col_sep_length]],  0
	jne	.label_233
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_302
	lea	rdi, [rdi]
	jmp	.label_311
.label_233:
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	cmp	eax, 0
	lea	rsi, [rsi]
	jge	.label_334
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [columns]]
	mov	rbp, rbp
	sub	ecx, 1
	nop	
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	cmp	ecx, eax
	jl	.label_302
	jmp	.label_311
.label_334:
	mov	eax, 0x7fffffff
	mov	rbp, rbp
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	lea	rdi, [rdi]
	mov	ecx,  dword ptr [dword ptr [columns]]
	nop	
	sub	ecx, 1
	cmp	eax, ecx
	jl	.label_302
.label_311:
	nop	
	mov	eax,  dword ptr [dword ptr [columns]]
	lea	rsi, [rsi]
	sub	eax, 1
	lea	rdi, [rdi]
	imul	eax,  dword ptr [dword ptr [col_sep_length]]
	nop	
	cmp	eax, 0xffff8000
	nop	
	jl	.label_302
	nop	
	mov	eax, 0x7fff
	mov	ecx,  dword ptr [dword ptr [columns]]
	lea	rsi, [rsi]
	sub	ecx, 1
	nop	
	imul	ecx,  dword ptr [dword ptr [col_sep_length]]
	lea	rsi, [rsi]
	cmp	eax, ecx
	lea	rsi, [rsi]
	jge	.label_351
.label_302:
	mov	al, 1
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	imul	ecx,  dword ptr [dword ptr [col_sep_length]]
	mov	dx, cx
	movsx	ecx, dx
	mov	dword ptr [rbp - 0x10], ecx
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_154
	nop	
	jmp	.label_152
.label_351:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	nop	
	imul	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	dx, ax
	movsx	eax, dx
	nop	
	mov	dword ptr [rbp - 0x10], eax
	test	cl, 1
	mov	rbp, rbp
	jne	.label_154
	jmp	.label_152
.label_338:
	mov	rsp, rsp
	mov	al, 1
	test	al, 1
	jne	.label_156
	jmp	.label_163
.label_156:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	jne	.label_167
	lea	rsi, [rsi]
	jmp	.label_173
.label_167:
	nop	
	cmp	dword ptr [dword ptr [col_sep_length]],  0
	jge	.label_177
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	cmp	eax, 0
	jge	.label_181
	mov	rbp, rbp
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	mov	rsp, rsp
	cdq	
	nop	
	idiv	dword ptr [dword ptr [col_sep_length]]
	cmp	ecx, eax
	jl	.label_186
	mov	rbp, rbp
	jmp	.label_201
.label_181:
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [col_sep_length]],  -1
	jne	.label_203
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_186
	jmp	.label_201
.label_203:
	nop	
	mov	eax, 0x80000000
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	mov	ecx,  dword ptr [dword ptr [columns]]
	mov	rsp, rsp
	sub	ecx, 1
	mov	rsp, rsp
	cmp	eax, ecx
	jl	.label_186
	jmp	.label_201
.label_177:
	nop	
	cmp	dword ptr [dword ptr [col_sep_length]],  0
	jne	.label_218
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_186
	jmp	.label_201
.label_218:
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	cmp	eax, 0
	lea	rdi, [rdi]
	jge	.label_229
	lea	rdi, [rdi]
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	mov	rsp, rsp
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	cmp	ecx, eax
	jl	.label_186
	jmp	.label_201
.label_229:
	lea	rsi, [rsi]
	mov	eax, 0x7fffffff
	cdq	
	mov	rbp, rbp
	idiv	dword ptr [dword ptr [col_sep_length]]
	lea	rdi, [rdi]
	mov	ecx,  dword ptr [dword ptr [columns]]
	mov	rsp, rsp
	sub	ecx, 1
	cmp	eax, ecx
	jl	.label_186
.label_201:
	nop	
	mov	eax,  dword ptr [dword ptr [columns]]
	mov	rsp, rsp
	sub	eax, 1
	lea	rdi, [rdi]
	imul	eax,  dword ptr [dword ptr [col_sep_length]]
	cmp	eax, 0x80000000
	lea	rsi, [rsi]
	jl	.label_186
	mov	eax, 0x7fffffff
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [columns]]
	mov	rsp, rsp
	sub	ecx, 1
	imul	ecx,  dword ptr [dword ptr [col_sep_length]]
	lea	rdi, [rdi]
	cmp	eax, ecx
	jge	.label_260
.label_186:
	lea	rsi, [rsi]
	mov	al, 1
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [columns]]
	mov	rbp, rbp
	sub	ecx, 1
	imul	ecx,  dword ptr [dword ptr [col_sep_length]]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], ecx
	mov	rsp, rsp
	test	al, 1
	jne	.label_154
	jmp	.label_152
.label_260:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	lea	rdi, [rdi]
	imul	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	dword ptr [rbp - 0x10], eax
	test	cl, 1
	mov	rsp, rsp
	jne	.label_154
	jmp	.label_152
.label_173:
	cmp	dword ptr [dword ptr [col_sep_length]],  0
	lea	rdi, [rdi]
	jge	.label_286
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [columns]]
	mov	rsp, rsp
	sub	eax, 1
	cmp	eax, 0
	jge	.label_296
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [columns]]
	mov	rbp, rbp
	sub	ecx, 1
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	lea	rsi, [rsi]
	cmp	ecx, eax
	lea	rsi, [rsi]
	jl	.label_303
	nop	
	jmp	.label_228
.label_296:
	cmp	dword ptr [dword ptr [col_sep_length]],  -1
	lea	rdi, [rdi]
	jne	.label_316
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	jne	.label_303
	mov	rbp, rbp
	jmp	.label_228
.label_316:
	lea	rdi, [rdi]
	mov	eax, 0x80000000
	mov	rsp, rsp
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [columns]]
	mov	rsp, rsp
	sub	ecx, 1
	cmp	eax, ecx
	mov	rbp, rbp
	jl	.label_303
	lea	rsi, [rsi]
	jmp	.label_228
.label_286:
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [col_sep_length]],  0
	mov	rbp, rbp
	jne	.label_327
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_303
	jmp	.label_228
.label_327:
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	lea	rsi, [rsi]
	cmp	eax, 0
	jge	.label_337
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [columns]]
	lea	rsi, [rsi]
	sub	ecx, 1
	cdq	
	mov	rbp, rbp
	idiv	dword ptr [dword ptr [col_sep_length]]
	lea	rdi, [rdi]
	cmp	ecx, eax
	jl	.label_303
	nop	
	jmp	.label_228
.label_337:
	lea	rsi, [rsi]
	mov	eax, 0x7fffffff
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	nop	
	cmp	eax, ecx
	nop	
	jl	.label_303
.label_228:
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	mov	rsp, rsp
	imul	eax,  dword ptr [dword ptr [col_sep_length]]
	cmp	eax, 0x80000000
	lea	rdi, [rdi]
	jl	.label_303
	lea	rdi, [rdi]
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [columns]]
	lea	rsi, [rsi]
	sub	ecx, 1
	imul	ecx,  dword ptr [dword ptr [col_sep_length]]
	lea	rsi, [rsi]
	cmp	eax, ecx
	jge	.label_352
.label_303:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [columns]]
	lea	rdi, [rdi]
	sub	ecx, 1
	imul	ecx,  dword ptr [dword ptr [col_sep_length]]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x10], ecx
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_154
	nop	
	jmp	.label_152
.label_352:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	imul	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], eax
	mov	rbp, rbp
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_154
	jmp	.label_152
.label_163:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_157
	jmp	.label_166
.label_157:
	mov	al, 1
	nop	
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_169
	jmp	.label_172
.label_169:
	mov	rbp, rbp
	movsxd	rax,  dword ptr [dword ptr [col_sep_length]]
	lea	rsi, [rsi]
	cmp	rax, 0
	jge	.label_175
	mov	eax,  dword ptr [dword ptr [columns]]
	mov	rbp, rbp
	sub	eax, 1
	lea	rdi, [rdi]
	movsxd	rcx, eax
	cmp	rcx, 0
	lea	rdi, [rdi]
	jge	.label_183
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	movsxd	rsi,  dword ptr [dword ptr [col_sep_length]]
	nop	
	mov	qword ptr [rbp - 0x28], rdx
	nop	
	cqo	
	lea	rsi, [rsi]
	idiv	rsi
	mov	rsi, qword ptr [rbp - 0x28]
	cmp	rsi, rax
	jl	.label_214
	jmp	.label_193
.label_183:
	movsxd	rax,  dword ptr [dword ptr [col_sep_length]]
	cmp	rax, -1
	lea	rdi, [rdi]
	jne	.label_212
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_214
	lea	rsi, [rsi]
	jmp	.label_193
.label_212:
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	movsxd	rcx,  dword ptr [dword ptr [col_sep_length]]
	mov	rsp, rsp
	cqo	
	lea	rsi, [rsi]
	idiv	rcx
	mov	esi,  dword ptr [dword ptr [columns]]
	mov	rsp, rsp
	sub	esi, 1
	movsxd	rcx, esi
	cmp	rax, rcx
	mov	rsp, rsp
	jl	.label_214
	lea	rsi, [rsi]
	jmp	.label_193
.label_175:
	movsxd	rax,  dword ptr [dword ptr [col_sep_length]]
	cmp	rax, 0
	lea	rsi, [rsi]
	jne	.label_237
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	mov	rsp, rsp
	jne	.label_214
	lea	rdi, [rdi]
	jmp	.label_193
.label_237:
	mov	eax,  dword ptr [dword ptr [columns]]
	mov	rbp, rbp
	sub	eax, 1
	mov	rsp, rsp
	movsxd	rcx, eax
	nop	
	cmp	rcx, 0
	jge	.label_190
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [columns]]
	nop	
	sub	ecx, 1
	movsxd	rdx, ecx
	mov	rbp, rbp
	movsxd	rsi,  dword ptr [dword ptr [col_sep_length]]
	mov	qword ptr [rbp - 0x30], rdx
	nop	
	cqo	
	nop	
	idiv	rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	cmp	rsi, rax
	lea	rsi, [rsi]
	jl	.label_214
	lea	rsi, [rsi]
	jmp	.label_193
.label_190:
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	movsxd	rcx,  dword ptr [dword ptr [col_sep_length]]
	lea	rsi, [rsi]
	cqo	
	idiv	rcx
	mov	esi,  dword ptr [dword ptr [columns]]
	mov	rsp, rsp
	sub	esi, 1
	movsxd	rcx, esi
	lea	rdi, [rdi]
	cmp	rax, rcx
	jl	.label_214
.label_193:
	nop	
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	movsxd	rdx, ecx
	movsxd	rsi,  dword ptr [dword ptr [col_sep_length]]
	mov	rbp, rbp
	imul	rdx, rsi
	cmp	rdx, rax
	lea	rdi, [rdi]
	jl	.label_214
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	mov	ecx,  dword ptr [dword ptr [columns]]
	nop	
	sub	ecx, 1
	movsxd	rdx, ecx
	mov	rbp, rbp
	movsxd	rsi,  dword ptr [dword ptr [col_sep_length]]
	imul	rdx, rsi
	cmp	rax, rdx
	lea	rdi, [rdi]
	jge	.label_299
.label_214:
	nop	
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [columns]]
	mov	rbp, rbp
	sub	ecx, 1
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	lea	rdi, [rdi]
	movsxd	rsi,  dword ptr [dword ptr [col_sep_length]]
	imul	rdx, rsi
	lea	rsi, [rsi]
	mov	ecx, edx
	nop	
	mov	dword ptr [rbp - 0x10], ecx
	lea	rdi, [rdi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_154
	jmp	.label_152
.label_299:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [columns]]
	nop	
	sub	eax, 1
	nop	
	movsxd	rdx, eax
	nop	
	movsxd	rsi,  dword ptr [dword ptr [col_sep_length]]
	lea	rdi, [rdi]
	imul	rdx, rsi
	mov	eax, edx
	mov	dword ptr [rbp - 0x10], eax
	test	cl, 1
	jne	.label_154
	lea	rsi, [rsi]
	jmp	.label_152
.label_172:
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [col_sep_length]],  0
	nop	
	jge	.label_329
	mov	eax,  dword ptr [dword ptr [columns]]
	lea	rdi, [rdi]
	sub	eax, 1
	nop	
	cmp	eax, 0
	jge	.label_335
	mov	rbp, rbp
	mov	eax, 0x7fffffff
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [columns]]
	mov	rsp, rsp
	sub	ecx, 1
	lea	rsi, [rsi]
	cdq	
	mov	rsp, rsp
	idiv	dword ptr [dword ptr [col_sep_length]]
	lea	rsi, [rsi]
	cmp	ecx, eax
	jl	.label_153
	jmp	.label_151
.label_335:
	nop	
	cmp	dword ptr [dword ptr [col_sep_length]],  -1
	jne	.label_345
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	jne	.label_153
	lea	rsi, [rsi]
	jmp	.label_151
.label_345:
	lea	rsi, [rsi]
	mov	eax, 0x80000000
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	lea	rdi, [rdi]
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	lea	rdi, [rdi]
	cmp	eax, ecx
	jl	.label_153
	mov	rsp, rsp
	jmp	.label_151
.label_329:
	nop	
	cmp	dword ptr [dword ptr [col_sep_length]],  0
	lea	rsi, [rsi]
	jne	.label_356
	nop	
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_153
	jmp	.label_151
.label_356:
	nop	
	mov	eax,  dword ptr [dword ptr [columns]]
	lea	rsi, [rsi]
	sub	eax, 1
	lea	rdi, [rdi]
	cmp	eax, 0
	jge	.label_361
	lea	rsi, [rsi]
	mov	eax, 0x80000000
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	lea	rdi, [rdi]
	cdq	
	mov	rsp, rsp
	idiv	dword ptr [dword ptr [col_sep_length]]
	cmp	ecx, eax
	jl	.label_153
	jmp	.label_151
.label_361:
	mov	eax, 0x7fffffff
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	mov	ecx,  dword ptr [dword ptr [columns]]
	mov	rsp, rsp
	sub	ecx, 1
	lea	rdi, [rdi]
	cmp	eax, ecx
	lea	rdi, [rdi]
	jl	.label_153
.label_151:
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [columns]]
	mov	rbp, rbp
	sub	ecx, 1
	imul	ecx,  dword ptr [dword ptr [col_sep_length]]
	movsxd	rdx, ecx
	cmp	rdx, rax
	jl	.label_153
	movabs	rax, 0x7fffffffffffffff
	mov	ecx,  dword ptr [dword ptr [columns]]
	mov	rbp, rbp
	sub	ecx, 1
	nop	
	imul	ecx,  dword ptr [dword ptr [col_sep_length]]
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	cmp	rax, rdx
	mov	rsp, rsp
	jge	.label_187
.label_153:
	nop	
	mov	al, 1
	lea	rdi, [rdi]
	mov	ecx,  dword ptr [dword ptr [columns]]
	mov	rbp, rbp
	sub	ecx, 1
	nop	
	movsxd	rdx, ecx
	movsxd	rsi,  dword ptr [dword ptr [col_sep_length]]
	mov	rsp, rsp
	imul	rdx, rsi
	mov	ecx, edx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x10], ecx
	test	al, 1
	mov	rsp, rsp
	jne	.label_154
	jmp	.label_152
.label_187:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [columns]]
	lea	rsi, [rsi]
	sub	eax, 1
	movsxd	rdx, eax
	nop	
	movsxd	rsi,  dword ptr [dword ptr [col_sep_length]]
	mov	rbp, rbp
	imul	rdx, rsi
	mov	eax, edx
	mov	dword ptr [rbp - 0x10], eax
	test	cl, 1
	jne	.label_154
	mov	rbp, rbp
	jmp	.label_152
.label_166:
	mov	rsp, rsp
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	nop	
	jne	.label_231
	jmp	.label_235
.label_231:
	nop	
	movsxd	rax,  dword ptr [dword ptr [col_sep_length]]
	lea	rdi, [rdi]
	cmp	rax, 0
	jge	.label_236
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [columns]]
	lea	rdi, [rdi]
	sub	eax, 1
	movsxd	rcx, eax
	lea	rsi, [rsi]
	cmp	rcx, 0
	jge	.label_239
	movabs	rax, 0x7fffffffffffffff
	nop	
	mov	ecx,  dword ptr [dword ptr [columns]]
	mov	rsp, rsp
	sub	ecx, 1
	movsxd	rdx, ecx
	movsxd	rsi,  dword ptr [dword ptr [col_sep_length]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rdx
	nop	
	cqo	
	lea	rdi, [rdi]
	idiv	rsi
	mov	rsi, qword ptr [rbp - 0x38]
	cmp	rsi, rax
	jl	.label_245
	lea	rdi, [rdi]
	jmp	.label_263
.label_239:
	lea	rdi, [rdi]
	movsxd	rax,  dword ptr [dword ptr [col_sep_length]]
	cmp	rax, -1
	jne	.label_264
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_245
	lea	rdi, [rdi]
	jmp	.label_263
.label_264:
	movabs	rax, 0x8000000000000000
	movsxd	rcx,  dword ptr [dword ptr [col_sep_length]]
	cqo	
	lea	rsi, [rsi]
	idiv	rcx
	mov	rbp, rbp
	mov	esi,  dword ptr [dword ptr [columns]]
	sub	esi, 1
	mov	rsp, rsp
	movsxd	rcx, esi
	mov	rbp, rbp
	cmp	rax, rcx
	jl	.label_245
	lea	rsi, [rsi]
	jmp	.label_263
.label_236:
	mov	rsp, rsp
	movsxd	rax,  dword ptr [dword ptr [col_sep_length]]
	cmp	rax, 0
	mov	rsp, rsp
	jne	.label_282
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	jne	.label_245
	lea	rsi, [rsi]
	jmp	.label_263
.label_282:
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	lea	rsi, [rsi]
	movsxd	rcx, eax
	lea	rdi, [rdi]
	cmp	rcx, 0
	jge	.label_168
	movabs	rax, 0x8000000000000000
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	movsxd	rdx, ecx
	movsxd	rsi,  dword ptr [dword ptr [col_sep_length]]
	mov	qword ptr [rbp - 0x40], rdx
	mov	rsp, rsp
	cqo	
	lea	rsi, [rsi]
	idiv	rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x40]
	cmp	rsi, rax
	jl	.label_245
	jmp	.label_263
.label_168:
	nop	
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx,  dword ptr [dword ptr [col_sep_length]]
	mov	rbp, rbp
	cqo	
	idiv	rcx
	lea	rsi, [rsi]
	mov	esi,  dword ptr [dword ptr [columns]]
	sub	esi, 1
	movsxd	rcx, esi
	mov	rsp, rsp
	cmp	rax, rcx
	jl	.label_245
.label_263:
	movabs	rax, 0x8000000000000000
	mov	ecx,  dword ptr [dword ptr [columns]]
	lea	rsi, [rsi]
	sub	ecx, 1
	nop	
	movsxd	rdx, ecx
	mov	rbp, rbp
	movsxd	rsi,  dword ptr [dword ptr [col_sep_length]]
	nop	
	imul	rdx, rsi
	nop	
	cmp	rdx, rax
	mov	rsp, rsp
	jl	.label_245
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [columns]]
	lea	rdi, [rdi]
	sub	ecx, 1
	movsxd	rdx, ecx
	movsxd	rsi,  dword ptr [dword ptr [col_sep_length]]
	imul	rdx, rsi
	cmp	rax, rdx
	mov	rbp, rbp
	jge	.label_340
.label_245:
	mov	rsp, rsp
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	movsxd	rdx, ecx
	movsxd	rsi,  dword ptr [dword ptr [col_sep_length]]
	imul	rdx, rsi
	mov	ecx, edx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10], ecx
	lea	rdi, [rdi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_154
	jmp	.label_152
.label_340:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [columns]]
	mov	rbp, rbp
	sub	eax, 1
	movsxd	rdx, eax
	lea	rdi, [rdi]
	movsxd	rsi,  dword ptr [dword ptr [col_sep_length]]
	lea	rsi, [rsi]
	imul	rdx, rsi
	mov	rsp, rsp
	mov	eax, edx
	mov	dword ptr [rbp - 0x10], eax
	lea	rsi, [rsi]
	test	cl, 1
	mov	rbp, rbp
	jne	.label_154
	jmp	.label_152
.label_235:
	nop	
	cmp	dword ptr [dword ptr [col_sep_length]],  0
	mov	rbp, rbp
	jge	.label_363
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	cmp	eax, 0
	jge	.label_348
	lea	rsi, [rsi]
	mov	eax, 0x7fffffff
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [columns]]
	nop	
	sub	ecx, 1
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	cmp	ecx, eax
	lea	rsi, [rsi]
	jl	.label_144
	jmp	.label_161
.label_348:
	cmp	dword ptr [dword ptr [col_sep_length]],  -1
	jne	.label_164
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	mov	rsp, rsp
	jne	.label_144
	jmp	.label_161
.label_164:
	nop	
	mov	eax, 0x80000000
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [columns]]
	mov	rbp, rbp
	sub	ecx, 1
	lea	rdi, [rdi]
	cmp	eax, ecx
	jl	.label_144
	jmp	.label_161
.label_363:
	cmp	dword ptr [dword ptr [col_sep_length]],  0
	jne	.label_195
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_144
	lea	rsi, [rsi]
	jmp	.label_161
.label_195:
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [columns]]
	lea	rdi, [rdi]
	sub	eax, 1
	cmp	eax, 0
	jge	.label_206
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [columns]]
	lea	rsi, [rsi]
	sub	ecx, 1
	nop	
	cdq	
	nop	
	idiv	dword ptr [dword ptr [col_sep_length]]
	cmp	ecx, eax
	mov	rbp, rbp
	jl	.label_144
	lea	rsi, [rsi]
	jmp	.label_161
.label_206:
	mov	eax, 0x7fffffff
	mov	rsp, rsp
	cdq	
	idiv	dword ptr [dword ptr [col_sep_length]]
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	nop	
	cmp	eax, ecx
	jl	.label_144
.label_161:
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	lea	rdi, [rdi]
	imul	ecx,  dword ptr [dword ptr [col_sep_length]]
	movsxd	rdx, ecx
	nop	
	cmp	rdx, rax
	jl	.label_144
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [columns]]
	mov	rbp, rbp
	sub	ecx, 1
	lea	rdi, [rdi]
	imul	ecx,  dword ptr [dword ptr [col_sep_length]]
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	mov	rsp, rsp
	cmp	rax, rdx
	lea	rsi, [rsi]
	jge	.label_353
.label_144:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	mov	rsp, rsp
	movsxd	rdx, ecx
	mov	rsp, rsp
	movsxd	rsi,  dword ptr [dword ptr [col_sep_length]]
	lea	rdi, [rdi]
	imul	rdx, rsi
	mov	ecx, edx
	mov	dword ptr [rbp - 0x10], ecx
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_154
	mov	rbp, rbp
	jmp	.label_152
.label_353:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [columns]]
	nop	
	sub	eax, 1
	nop	
	movsxd	rdx, eax
	movsxd	rsi,  dword ptr [dword ptr [col_sep_length]]
	nop	
	imul	rdx, rsi
	mov	rsp, rsp
	mov	eax, edx
	nop	
	mov	dword ptr [rbp - 0x10], eax
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_154
	jmp	.label_152
.label_154:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], 0x7fffffff
.label_152:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	jne	.label_274
	lea	rdi, [rdi]
	jmp	.label_277
.label_274:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	jne	.label_279
	nop	
	jmp	.label_283
.label_279:
	mov	al, 1
	nop	
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_287
	jmp	.label_294
.label_287:
	mov	eax, dword ptr [rbp - 0x10]
	mov	cl, al
	movsx	eax, cl
	nop	
	cmp	eax, 0
	jge	.label_298
	mov	eax, dword ptr [rbp - 0x10]
	mov	cl, al
	mov	rsp, rsp
	movsx	eax, cl
	add	eax, 0x7fffffff
	mov	edx,  dword ptr [dword ptr [chars_per_line]]
	sub	edx, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	cl, dl
	mov	rbp, rbp
	movsx	edx, cl
	mov	rsp, rsp
	cmp	eax, edx
	jl	.label_248
	jmp	.label_315
.label_298:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	mov	cl, al
	movsx	eax, cl
	mov	edx, dword ptr [rbp - 0x10]
	mov	cl, dl
	movsx	edx, cl
	lea	rdi, [rdi]
	add	edx, 0x80000000
	cmp	eax, edx
	mov	rbp, rbp
	jl	.label_248
	jmp	.label_315
.label_294:
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	mov	rsp, rsp
	sub	eax, dword ptr [rbp - 8]
	mov	cl, al
	mov	rsp, rsp
	movsx	eax, cl
	cmp	eax, 0
	jge	.label_319
	mov	rsp, rsp
	mov	al, 1
	test	al, 1
	jne	.label_248
	jmp	.label_315
.label_319:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	cl, al
	lea	rdi, [rdi]
	movsx	eax, cl
	cmp	eax, 0
	jge	.label_328
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	mov	rbp, rbp
	mov	cl, al
	movsx	eax, cl
	mov	edx, dword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	cl, dl
	movsx	edx, cl
	nop	
	sub	eax, edx
	lea	rdi, [rdi]
	mov	edx,  dword ptr [dword ptr [chars_per_line]]
	sub	edx, dword ptr [rbp - 8]
	nop	
	mov	cl, dl
	movsx	edx, cl
	mov	rbp, rbp
	cmp	eax, edx
	jle	.label_248
	jmp	.label_315
.label_328:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	mov	rsp, rsp
	sub	eax, dword ptr [rbp - 8]
	mov	rbp, rbp
	mov	cl, al
	movsx	eax, cl
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	cl, dl
	mov	rbp, rbp
	movsx	edx, cl
	mov	rsp, rsp
	cmp	eax, edx
	jl	.label_248
.label_315:
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	mov	cl, al
	nop	
	movsx	eax, cl
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	cl, dl
	movsx	edx, cl
	nop	
	sub	eax, edx
	cmp	eax, -0x80
	mov	rsp, rsp
	jl	.label_248
	mov	rbp, rbp
	mov	eax, 0x7f
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	mov	dl, cl
	nop	
	movsx	ecx, dl
	mov	esi, dword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	dl, sil
	mov	rbp, rbp
	movsx	esi, dl
	sub	ecx, esi
	cmp	eax, ecx
	jge	.label_358
.label_248:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	mov	dl, cl
	mov	rsp, rsp
	movsx	ecx, dl
	mov	esi, dword ptr [rbp - 0x10]
	mov	dl, sil
	mov	rbp, rbp
	movsx	esi, dl
	sub	ecx, esi
	mov	dl, cl
	movsx	ecx, dl
	mov	dword ptr [rbp - 0x14], ecx
	test	al, 1
	jne	.label_223
	lea	rdi, [rdi]
	jmp	.label_150
.label_358:
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	lea	rsi, [rsi]
	sub	eax, dword ptr [rbp - 8]
	mov	dl, al
	movsx	eax, dl
	nop	
	mov	esi, dword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	dl, sil
	nop	
	movsx	esi, dl
	sub	eax, esi
	mov	rbp, rbp
	mov	dl, al
	lea	rsi, [rsi]
	movsx	eax, dl
	mov	dword ptr [rbp - 0x14], eax
	test	cl, 1
	jne	.label_223
	lea	rsi, [rsi]
	jmp	.label_150
.label_283:
	mov	al, 1
	nop	
	test	al, 1
	jne	.label_185
	jmp	.label_189
.label_185:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x10], 0
	nop	
	jge	.label_325
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, 0x7fffffff
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	lea	rdi, [rdi]
	sub	ecx, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	eax, ecx
	mov	rbp, rbp
	jl	.label_197
	mov	rsp, rsp
	jmp	.label_208
.label_325:
	nop	
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	lea	rdi, [rdi]
	sub	eax, dword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	ecx, 0x80000000
	lea	rsi, [rsi]
	cmp	eax, ecx
	lea	rdi, [rdi]
	jl	.label_197
	mov	rbp, rbp
	jmp	.label_208
.label_189:
	nop	
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	cmp	eax, 0
	jge	.label_244
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	jne	.label_197
	jmp	.label_208
.label_244:
	cmp	dword ptr [rbp - 0x10], 0
	nop	
	jge	.label_227
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	nop	
	sub	eax, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	sub	eax, dword ptr [rbp - 0x10]
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	lea	rdi, [rdi]
	sub	ecx, dword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	eax, ecx
	jle	.label_197
	jmp	.label_208
.label_227:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	nop	
	sub	eax, dword ptr [rbp - 8]
	nop	
	cmp	eax, dword ptr [rbp - 0x10]
	jl	.label_197
.label_208:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	lea	rsi, [rsi]
	sub	eax, dword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0x10]
	cmp	eax, -0x80
	jl	.label_197
	mov	eax, 0x7f
	nop	
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	lea	rdi, [rdi]
	sub	ecx, dword ptr [rbp - 8]
	sub	ecx, dword ptr [rbp - 0x10]
	cmp	eax, ecx
	mov	rbp, rbp
	jge	.label_210
.label_197:
	nop	
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	sub	ecx, dword ptr [rbp - 0x10]
	mov	dl, cl
	movsx	ecx, dl
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], ecx
	mov	rsp, rsp
	test	al, 1
	jne	.label_223
	jmp	.label_150
.label_210:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0x10]
	nop	
	mov	dl, al
	movsx	eax, dl
	mov	dword ptr [rbp - 0x14], eax
	test	cl, 1
	mov	rsp, rsp
	jne	.label_223
	mov	rbp, rbp
	jmp	.label_150
.label_277:
	nop	
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_272
	mov	rsp, rsp
	jmp	.label_366
.label_272:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	jne	.label_275
	mov	rsp, rsp
	jmp	.label_199
.label_275:
	lea	rsi, [rsi]
	mov	al, 1
	test	al, 1
	jne	.label_281
	lea	rsi, [rsi]
	jmp	.label_285
.label_281:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x10]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	nop	
	jge	.label_289
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	cx, ax
	lea	rsi, [rsi]
	movsx	eax, cx
	add	eax, 0x7fffffff
	mov	edx,  dword ptr [dword ptr [chars_per_line]]
	sub	edx, dword ptr [rbp - 8]
	mov	cx, dx
	mov	rsp, rsp
	movsx	edx, cx
	cmp	eax, edx
	jl	.label_269
	jmp	.label_312
.label_289:
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	nop	
	sub	eax, dword ptr [rbp - 8]
	nop	
	mov	cx, ax
	movsx	eax, cx
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x10]
	nop	
	mov	cx, dx
	movsx	edx, cx
	add	edx, 0x80000000
	lea	rsi, [rsi]
	cmp	eax, edx
	lea	rsi, [rsi]
	jl	.label_269
	jmp	.label_312
.label_285:
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	lea	rdi, [rdi]
	sub	eax, dword ptr [rbp - 8]
	mov	rsp, rsp
	mov	cx, ax
	lea	rdi, [rdi]
	movsx	eax, cx
	mov	rbp, rbp
	cmp	eax, 0
	lea	rsi, [rsi]
	jge	.label_320
	mov	al, 1
	test	al, 1
	jne	.label_269
	jmp	.label_312
.label_320:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x10]
	mov	cx, ax
	lea	rdi, [rdi]
	movsx	eax, cx
	cmp	eax, 0
	jge	.label_330
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	mov	cx, ax
	movsx	eax, cx
	mov	edx, dword ptr [rbp - 0x10]
	nop	
	mov	cx, dx
	movsx	edx, cx
	sub	eax, edx
	mov	edx,  dword ptr [dword ptr [chars_per_line]]
	sub	edx, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	cx, dx
	movsx	edx, cx
	cmp	eax, edx
	mov	rsp, rsp
	jle	.label_269
	jmp	.label_312
.label_330:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	mov	cx, ax
	mov	rsp, rsp
	movsx	eax, cx
	mov	edx, dword ptr [rbp - 0x10]
	mov	cx, dx
	movsx	edx, cx
	cmp	eax, edx
	lea	rsi, [rsi]
	jl	.label_269
.label_312:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	mov	rbp, rbp
	mov	cx, ax
	lea	rdi, [rdi]
	movsx	eax, cx
	mov	edx, dword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	cx, dx
	mov	rsp, rsp
	movsx	edx, cx
	sub	eax, edx
	lea	rdi, [rdi]
	cmp	eax, 0xffff8000
	lea	rdi, [rdi]
	jl	.label_269
	nop	
	mov	eax, 0x7fff
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	mov	rsp, rsp
	sub	ecx, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	dx, cx
	movsx	ecx, dx
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	dx, si
	nop	
	movsx	esi, dx
	lea	rsi, [rsi]
	sub	ecx, esi
	cmp	eax, ecx
	jge	.label_357
.label_269:
	lea	rdi, [rdi]
	mov	al, 1
	nop	
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	nop	
	mov	dx, cx
	movsx	ecx, dx
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	dx, si
	movsx	esi, dx
	lea	rdi, [rdi]
	sub	ecx, esi
	mov	dx, cx
	movsx	ecx, dx
	mov	dword ptr [rbp - 0x14], ecx
	lea	rsi, [rsi]
	test	al, 1
	mov	rbp, rbp
	jne	.label_223
	mov	rbp, rbp
	jmp	.label_150
.label_357:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	dx, ax
	mov	rsp, rsp
	movsx	eax, dx
	mov	esi, dword ptr [rbp - 0x10]
	nop	
	mov	dx, si
	lea	rsi, [rsi]
	movsx	esi, dx
	sub	eax, esi
	lea	rsi, [rsi]
	mov	dx, ax
	mov	rbp, rbp
	movsx	eax, dx
	mov	dword ptr [rbp - 0x14], eax
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_223
	jmp	.label_150
.label_199:
	lea	rdi, [rdi]
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_194
	lea	rdi, [rdi]
	jmp	.label_347
.label_194:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x10], 0
	jge	.label_355
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	mov	rsp, rsp
	sub	ecx, dword ptr [rbp - 8]
	nop	
	cmp	eax, ecx
	mov	rbp, rbp
	jl	.label_207
	nop	
	jmp	.label_155
.label_355:
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	lea	rdi, [rdi]
	sub	eax, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	ecx, 0x80000000
	cmp	eax, ecx
	jl	.label_207
	nop	
	jmp	.label_155
.label_347:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	eax, 0
	lea	rsi, [rsi]
	jge	.label_224
	nop	
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_207
	jmp	.label_155
.label_224:
	cmp	dword ptr [rbp - 0x10], 0
	jge	.label_331
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	nop	
	sub	eax, dword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0x10]
	nop	
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	eax, ecx
	lea	rdi, [rdi]
	jle	.label_207
	jmp	.label_155
.label_331:
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	lea	rsi, [rsi]
	sub	eax, dword ptr [rbp - 8]
	cmp	eax, dword ptr [rbp - 0x10]
	mov	rsp, rsp
	jl	.label_207
.label_155:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	eax, 0xffff8000
	mov	rsp, rsp
	jl	.label_207
	mov	rbp, rbp
	mov	eax, 0x7fff
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	nop	
	sub	ecx, dword ptr [rbp - 8]
	mov	rbp, rbp
	sub	ecx, dword ptr [rbp - 0x10]
	cmp	eax, ecx
	mov	rsp, rsp
	jge	.label_257
.label_207:
	lea	rsi, [rsi]
	mov	al, 1
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	sub	ecx, dword ptr [rbp - 0x10]
	mov	dx, cx
	movsx	ecx, dx
	mov	dword ptr [rbp - 0x14], ecx
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_223
	jmp	.label_150
.label_257:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	lea	rdi, [rdi]
	sub	eax, dword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0x10]
	mov	dx, ax
	mov	rbp, rbp
	movsx	eax, dx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_223
	lea	rdi, [rdi]
	jmp	.label_150
.label_366:
	mov	al, 1
	test	al, 1
	jne	.label_225
	nop	
	jmp	.label_290
.label_225:
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	jne	.label_243
	jmp	.label_301
.label_243:
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_273
	lea	rsi, [rsi]
	jmp	.label_306
.label_273:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x10], 0
	jge	.label_308
	mov	eax, dword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	eax, 0x7fffffff
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	mov	rbp, rbp
	sub	ecx, dword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	eax, ecx
	lea	rdi, [rdi]
	jl	.label_211
	lea	rsi, [rsi]
	jmp	.label_148
.label_308:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	mov	rsp, rsp
	sub	eax, dword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 0x10]
	add	ecx, 0x80000000
	lea	rdi, [rdi]
	cmp	eax, ecx
	lea	rsi, [rsi]
	jl	.label_211
	mov	rbp, rbp
	jmp	.label_148
.label_306:
	nop	
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	cmp	eax, 0
	lea	rsi, [rsi]
	jge	.label_321
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_211
	jmp	.label_148
.label_321:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x10], 0
	nop	
	jge	.label_333
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	mov	rbp, rbp
	sub	eax, dword ptr [rbp - 8]
	nop	
	sub	eax, dword ptr [rbp - 0x10]
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	lea	rdi, [rdi]
	sub	ecx, dword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	eax, ecx
	mov	rbp, rbp
	jle	.label_211
	mov	rbp, rbp
	jmp	.label_148
.label_333:
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	mov	rsp, rsp
	sub	eax, dword ptr [rbp - 8]
	cmp	eax, dword ptr [rbp - 0x10]
	jl	.label_211
.label_148:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	eax, 0x80000000
	jl	.label_211
	mov	rsp, rsp
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	lea	rdi, [rdi]
	sub	ecx, dword ptr [rbp - 8]
	mov	rsp, rsp
	sub	ecx, dword ptr [rbp - 0x10]
	cmp	eax, ecx
	jge	.label_322
.label_211:
	nop	
	mov	al, 1
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	sub	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x14], ecx
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_223
	jmp	.label_150
.label_322:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	mov	rsp, rsp
	sub	eax, dword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x14], eax
	mov	rsp, rsp
	test	cl, 1
	mov	rbp, rbp
	jne	.label_223
	jmp	.label_150
.label_301:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	jne	.label_364
	jmp	.label_367
.label_364:
	cmp	dword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	jge	.label_146
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	cmp	eax, ecx
	jl	.label_149
	mov	rsp, rsp
	jmp	.label_162
.label_146:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	nop	
	sub	eax, dword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 0x10]
	add	ecx, 0x80000000
	cmp	eax, ecx
	jl	.label_149
	jmp	.label_162
.label_367:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	mov	rbp, rbp
	sub	eax, dword ptr [rbp - 8]
	cmp	eax, 0
	lea	rdi, [rdi]
	jge	.label_180
	mov	rsp, rsp
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_149
	lea	rdi, [rdi]
	jmp	.label_162
.label_180:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x10], 0
	nop	
	jge	.label_196
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	mov	rsp, rsp
	sub	eax, dword ptr [rbp - 0x10]
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	lea	rdi, [rdi]
	sub	ecx, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	eax, ecx
	mov	rbp, rbp
	jle	.label_149
	jmp	.label_162
.label_196:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	lea	rdi, [rdi]
	sub	eax, dword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x10]
	nop	
	jl	.label_149
.label_162:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	mov	rsp, rsp
	sub	eax, dword ptr [rbp - 0x10]
	cmp	eax, 0x80000000
	jl	.label_149
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	mov	rsp, rsp
	sub	ecx, dword ptr [rbp - 8]
	sub	ecx, dword ptr [rbp - 0x10]
	cmp	eax, ecx
	mov	rbp, rbp
	jge	.label_170
.label_149:
	mov	al, 1
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	mov	rsp, rsp
	sub	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x14], ecx
	test	al, 1
	jne	.label_223
	mov	rsp, rsp
	jmp	.label_150
.label_170:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_223
	lea	rdi, [rdi]
	jmp	.label_150
.label_290:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	mov	rbp, rbp
	jne	.label_250
	jmp	.label_254
.label_250:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	mov	rsp, rsp
	jne	.label_242
	lea	rdi, [rdi]
	jmp	.label_259
.label_242:
	mov	al, 1
	test	al, 1
	nop	
	jne	.label_262
	nop	
	jmp	.label_265
.label_262:
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x10]
	cmp	rax, 0
	lea	rsi, [rsi]
	jge	.label_304
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x10]
	movabs	rcx, 0x7fffffffffffffff
	add	rax, rcx
	mov	edx,  dword ptr [dword ptr [chars_per_line]]
	lea	rsi, [rsi]
	sub	edx, dword ptr [rbp - 8]
	movsxd	rcx, edx
	mov	rbp, rbp
	cmp	rax, rcx
	mov	rsp, rsp
	jl	.label_159
	jmp	.label_198
.label_304:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	mov	rbp, rbp
	sub	eax, dword ptr [rbp - 8]
	nop	
	movsxd	rcx, eax
	movsxd	rdx, dword ptr [rbp - 0x10]
	movabs	rsi, 0x8000000000000000
	lea	rsi, [rsi]
	add	rdx, rsi
	cmp	rcx, rdx
	jl	.label_159
	jmp	.label_198
.label_265:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	mov	rsp, rsp
	sub	eax, dword ptr [rbp - 8]
	movsxd	rcx, eax
	cmp	rcx, 0
	jge	.label_292
	mov	rsp, rsp
	mov	al, 1
	test	al, 1
	jne	.label_159
	jmp	.label_198
.label_292:
	movsxd	rax, dword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rax, 0
	nop	
	jge	.label_305
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	mov	rsp, rsp
	sub	eax, dword ptr [rbp - 8]
	movsxd	rcx, eax
	mov	rsp, rsp
	movsxd	rdx, dword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	rcx, rdx
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	mov	rsp, rsp
	movsxd	rdx, eax
	mov	rsp, rsp
	cmp	rcx, rdx
	nop	
	jle	.label_159
	mov	rsp, rsp
	jmp	.label_198
.label_305:
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	lea	rsi, [rsi]
	sub	eax, dword ptr [rbp - 8]
	nop	
	movsxd	rcx, eax
	mov	rsp, rsp
	movsxd	rdx, dword ptr [rbp - 0x10]
	nop	
	cmp	rcx, rdx
	jl	.label_159
.label_198:
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	nop	
	sub	ecx, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	nop	
	movsxd	rsi, dword ptr [rbp - 0x10]
	sub	rdx, rsi
	lea	rdi, [rdi]
	cmp	rdx, rax
	mov	rbp, rbp
	jl	.label_159
	movabs	rax, 0x7fffffffffffffff
	nop	
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	nop	
	sub	ecx, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	movsxd	rsi, dword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	rdx, rsi
	cmp	rax, rdx
	mov	rbp, rbp
	jge	.label_317
.label_159:
	mov	rsp, rsp
	mov	al, 1
	nop	
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	mov	rbp, rbp
	movsxd	rdx, ecx
	mov	rsp, rsp
	movsxd	rsi, dword ptr [rbp - 0x10]
	nop	
	sub	rdx, rsi
	nop	
	mov	ecx, edx
	mov	dword ptr [rbp - 0x14], ecx
	test	al, 1
	jne	.label_223
	jmp	.label_150
.label_317:
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	nop	
	sub	eax, dword ptr [rbp - 8]
	mov	rsp, rsp
	movsxd	rdx, eax
	movsxd	rsi, dword ptr [rbp - 0x10]
	mov	rbp, rbp
	sub	rdx, rsi
	lea	rdi, [rdi]
	mov	eax, edx
	mov	dword ptr [rbp - 0x14], eax
	mov	rbp, rbp
	test	cl, 1
	jne	.label_223
	lea	rdi, [rdi]
	jmp	.label_150
.label_259:
	mov	al, 1
	nop	
	test	al, 1
	jne	.label_297
	lea	rsi, [rsi]
	jmp	.label_219
.label_297:
	cmp	dword ptr [rbp - 0x10], 0
	jge	.label_362
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	eax, ecx
	nop	
	jl	.label_145
	jmp	.label_176
.label_362:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 0x10]
	nop	
	add	ecx, 0x80000000
	mov	rbp, rbp
	cmp	eax, ecx
	jl	.label_145
	jmp	.label_176
.label_219:
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	eax, 0
	jge	.label_215
	lea	rsi, [rsi]
	mov	al, 1
	test	al, 1
	jne	.label_145
	lea	rdi, [rdi]
	jmp	.label_176
.label_215:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x10], 0
	jge	.label_179
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	mov	rsp, rsp
	sub	eax, dword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	eax, ecx
	jle	.label_145
	nop	
	jmp	.label_176
.label_179:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	cmp	eax, dword ptr [rbp - 0x10]
	nop	
	jl	.label_145
.label_176:
	movabs	rax, 0x8000000000000000
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	sub	ecx, dword ptr [rbp - 0x10]
	movsxd	rdx, ecx
	nop	
	cmp	rdx, rax
	jl	.label_145
	movabs	rax, 0x7fffffffffffffff
	nop	
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	lea	rsi, [rsi]
	sub	ecx, dword ptr [rbp - 8]
	mov	rbp, rbp
	sub	ecx, dword ptr [rbp - 0x10]
	mov	rbp, rbp
	movsxd	rdx, ecx
	mov	rsp, rsp
	cmp	rax, rdx
	jge	.label_213
.label_145:
	nop	
	mov	al, 1
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	lea	rdi, [rdi]
	sub	ecx, dword ptr [rbp - 8]
	movsxd	rdx, ecx
	movsxd	rsi, dword ptr [rbp - 0x10]
	sub	rdx, rsi
	mov	ecx, edx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], ecx
	test	al, 1
	jne	.label_223
	mov	rbp, rbp
	jmp	.label_150
.label_213:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	mov	rsp, rsp
	movsxd	rdx, eax
	movsxd	rsi, dword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	rdx, rsi
	mov	eax, edx
	mov	dword ptr [rbp - 0x14], eax
	test	cl, 1
	mov	rsp, rsp
	jne	.label_223
	mov	rbp, rbp
	jmp	.label_150
.label_254:
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_217
	jmp	.label_252
.label_217:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_253
	jmp	.label_241
.label_253:
	movsxd	rax, dword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	rax, 0
	jge	.label_256
	movsxd	rax, dword ptr [rbp - 0x10]
	movabs	rcx, 0x7fffffffffffffff
	add	rax, rcx
	lea	rsi, [rsi]
	mov	edx,  dword ptr [dword ptr [chars_per_line]]
	sub	edx, dword ptr [rbp - 8]
	movsxd	rcx, edx
	cmp	rax, rcx
	mov	rsp, rsp
	jl	.label_160
	jmp	.label_251
.label_256:
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	movsxd	rcx, eax
	movsxd	rdx, dword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	movabs	rsi, 0x8000000000000000
	mov	rsp, rsp
	add	rdx, rsi
	cmp	rcx, rdx
	jl	.label_160
	mov	rsp, rsp
	jmp	.label_251
.label_241:
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	movsxd	rcx, eax
	cmp	rcx, 0
	lea	rdi, [rdi]
	jge	.label_276
	mov	rsp, rsp
	mov	al, 1
	test	al, 1
	jne	.label_160
	lea	rsi, [rsi]
	jmp	.label_251
.label_276:
	movsxd	rax, dword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	rax, 0
	lea	rdi, [rdi]
	jge	.label_295
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	mov	rbp, rbp
	sub	eax, dword ptr [rbp - 8]
	mov	rbp, rbp
	movsxd	rcx, eax
	movsxd	rdx, dword ptr [rbp - 0x10]
	sub	rcx, rdx
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	movsxd	rdx, eax
	cmp	rcx, rdx
	jle	.label_160
	nop	
	jmp	.label_251
.label_295:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	lea	rdi, [rdi]
	sub	eax, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	movsxd	rdx, dword ptr [rbp - 0x10]
	cmp	rcx, rdx
	jl	.label_160
.label_251:
	movabs	rax, 0x8000000000000000
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	nop	
	movsxd	rdx, ecx
	lea	rsi, [rsi]
	movsxd	rsi, dword ptr [rbp - 0x10]
	sub	rdx, rsi
	cmp	rdx, rax
	jl	.label_160
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	mov	rsp, rsp
	movsxd	rdx, ecx
	movsxd	rsi, dword ptr [rbp - 0x10]
	nop	
	sub	rdx, rsi
	cmp	rax, rdx
	jge	.label_323
.label_160:
	lea	rsi, [rsi]
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	lea	rsi, [rsi]
	sub	ecx, dword ptr [rbp - 8]
	mov	rbp, rbp
	movsxd	rdx, ecx
	lea	rsi, [rsi]
	movsxd	rsi, dword ptr [rbp - 0x10]
	mov	rbp, rbp
	sub	rdx, rsi
	mov	rsp, rsp
	mov	ecx, edx
	mov	dword ptr [rbp - 0x14], ecx
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_223
	nop	
	jmp	.label_150
.label_323:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsxd	rdx, eax
	mov	rsp, rsp
	movsxd	rsi, dword ptr [rbp - 0x10]
	nop	
	sub	rdx, rsi
	mov	eax, edx
	nop	
	mov	dword ptr [rbp - 0x14], eax
	test	cl, 1
	jne	.label_223
	nop	
	jmp	.label_150
.label_252:
	mov	rsp, rsp
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	jne	.label_332
	jmp	.label_350
.label_332:
	cmp	dword ptr [rbp - 0x10], 0
	jge	.label_247
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	eax, ecx
	mov	rbp, rbp
	jl	.label_147
	jmp	.label_204
.label_247:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	ecx, 0x80000000
	nop	
	cmp	eax, ecx
	mov	rsp, rsp
	jl	.label_147
	lea	rsi, [rsi]
	jmp	.label_204
.label_350:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	sub	eax, dword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	eax, 0
	lea	rdi, [rdi]
	jge	.label_354
	mov	rbp, rbp
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_147
	nop	
	jmp	.label_204
.label_354:
	cmp	dword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	jge	.label_318
	nop	
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	mov	rbp, rbp
	sub	eax, dword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0x10]
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	cmp	eax, ecx
	nop	
	jle	.label_147
	jmp	.label_204
.label_318:
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	mov	rbp, rbp
	sub	eax, dword ptr [rbp - 8]
	cmp	eax, dword ptr [rbp - 0x10]
	jl	.label_147
.label_204:
	movabs	rax, 0x8000000000000000
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	lea	rdi, [rdi]
	sub	ecx, dword ptr [rbp - 8]
	sub	ecx, dword ptr [rbp - 0x10]
	movsxd	rdx, ecx
	lea	rsi, [rsi]
	cmp	rdx, rax
	lea	rdi, [rdi]
	jl	.label_147
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	nop	
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	sub	ecx, dword ptr [rbp - 8]
	sub	ecx, dword ptr [rbp - 0x10]
	mov	rsp, rsp
	movsxd	rdx, ecx
	cmp	rax, rdx
	lea	rsi, [rsi]
	jge	.label_202
.label_147:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	nop	
	sub	ecx, dword ptr [rbp - 8]
	movsxd	rdx, ecx
	mov	rbp, rbp
	movsxd	rsi, dword ptr [rbp - 0x10]
	sub	rdx, rsi
	lea	rsi, [rsi]
	mov	ecx, edx
	mov	dword ptr [rbp - 0x14], ecx
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_223
	jmp	.label_150
.label_202:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [chars_per_line]]
	lea	rdi, [rdi]
	sub	eax, dword ptr [rbp - 8]
	movsxd	rdx, eax
	mov	rsp, rsp
	movsxd	rsi, dword ptr [rbp - 0x10]
	sub	rdx, rsi
	mov	eax, edx
	mov	dword ptr [rbp - 0x14], eax
	test	cl, 1
	jne	.label_223
	jmp	.label_150
.label_223:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], 0
.label_150:
	mov	eax, dword ptr [rbp - 0x14]
	cdq	
	mov	rbp, rbp
	idiv	dword ptr [dword ptr [columns]]
	mov	rsp, rsp
	mov	dword ptr [dword ptr [chars_per_column]],  eax
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [chars_per_column]],  1
	jge	.label_238
	movabs	rdi, OFFSET FLAT:.str.68
	call	gettext
	lea	rdi, [rdi]
	mov	edi, 1
	xor	esi, esi
	lea	rdi, [rdi]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_238:
	test	byte ptr [byte ptr [numbered_lines]],  1
	je	.label_234
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [number_buff]]
	mov	rbp, rbp
	call	free
	movsxd	rdi,  dword ptr [dword ptr [chars_per_number]]
	mov	rsp, rsp
	cmp	rdi, 0xb
	jbe	.label_261
	nop	
	movsxd	rax,  dword ptr [dword ptr [chars_per_number]]
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	jmp	.label_266
.label_261:
	lea	rdi, [rdi]
	mov	eax, 0xb
	mov	rsp, rsp
	mov	ecx, eax
	nop	
	mov	qword ptr [rbp - 0x48], rcx
	mov	rsp, rsp
	jmp	.label_266
.label_266:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	rdi, rax
	lea	rsi, [rsi]
	call	xmalloc
	mov	qword ptr [word ptr [number_buff]],  rax
.label_234:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [clump_buff]]
	call	free
	mov	eax, 8
	cmp	eax,  dword ptr [dword ptr [chars_per_input_tab]]
	lea	rdi, [rdi]
	jle	.label_280
	mov	eax, 8
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_288
.label_280:
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [chars_per_input_tab]]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x4c], eax
.label_288:
	mov	eax, dword ptr [rbp - 0x4c]
	lea	rsi, [rsi]
	movsxd	rdi, eax
	call	xmalloc
	mov	rbp, rbp
	mov	qword ptr [word ptr [clump_buff]],  rax
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406680

	.globl init_fps
	.type init_fps, @function
init_fps:
	mov	rbp, rbp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	nop	
	sub	rsp, 0x40
	mov	dword ptr [rbp - 8], edi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	dword ptr [dword ptr [total_files]],  0
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [column_vector]]
	mov	rsp, rsp
	mov	rdi, rsi
	call	free
	mov	eax, 0x40
	mov	esi, eax
	mov	rbp, rbp
	movsxd	rdi,  dword ptr [dword ptr [columns]]
	call	xnmalloc
	mov	rsp, rsp
	mov	qword ptr [word ptr [column_vector]],  rax
	mov	rsp, rsp
	test	byte ptr [byte ptr [parallel_files]],  1
	je	.label_373
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x1c], eax
	mov	rcx,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 0x18], rcx
.label_375:
	mov	eax, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x1c], ecx
	cmp	eax, 0
	nop	
	je	.label_368
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, qword ptr [rax]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	open_file
	test	al, 1
	jne	.label_378
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rax, -0x40
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [columns]]
	add	ecx, -1
	mov	dword ptr [dword ptr [columns]],  ecx
.label_378:
	lea	rsi, [rsi]
	jmp	.label_374
.label_374:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rax, 0x40
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	add	rax, 8
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	jmp	.label_375
.label_368:
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [columns]],  0
	lea	rsi, [rsi]
	jne	.label_372
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 0
	jmp	.label_369
.label_372:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str_0
	mov	esi, 0xffffffff
	call	init_header
	lea	rsi, [rsi]
	jmp	.label_370
.label_373:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [column_vector]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	cmp	dword ptr [rbp - 8], 0
	jle	.label_371
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	call	open_file
	test	al, 1
	jne	.label_380
	mov	byte ptr [rbp - 1], 0
	jmp	.label_369
.label_380:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rdi
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fileno
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x40]
	mov	esi, eax
	nop	
	call	init_header
	mov	rdi, qword ptr [rbp - 0x18]
	mov	dword ptr [rdi + 0x2c], 0
	jmp	.label_377
.label_371:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.20
	lea	rsi, [rsi]
	call	gettext
	movabs	rdi, OFFSET FLAT:.str_0
	nop	
	mov	esi, 0xffffffff
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 8], rax
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [stdin]]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
	nop	
	mov	byte ptr [byte ptr [have_read_stdin]],  1
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax + 0x10], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax + 0x39], 0
	lea	rdi, [rdi]
	mov	edx,  dword ptr [dword ptr [total_files]]
	lea	rsi, [rsi]
	add	edx, 1
	nop	
	mov	dword ptr [dword ptr [total_files]],  edx
	call	init_header
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	dword ptr [rax + 0x2c], 0
.label_377:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [columns]]
	sub	ecx, 1
	mov	dword ptr [rbp - 0x34], ecx
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rax, 0x40
	mov	qword ptr [rbp - 0x18], rax
.label_379:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x34], 0
	lea	rsi, [rsi]
	je	.label_376
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	dword ptr [rax + 0x10], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rax + 0x39], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax + 0x2c], 0
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	add	eax, -1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x34], eax
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rcx, 0x40
	mov	qword ptr [rbp - 0x18], rcx
	lea	rdi, [rdi]
	jmp	.label_379
.label_376:
	mov	rbp, rbp
	jmp	.label_370
.label_370:
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [total_files]]
	mov	dword ptr [dword ptr [files_ready_to_read]],  eax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 1
.label_369:
	mov	al, byte ptr [rbp - 1]
	lea	rdi, [rdi]
	and	al, 1
	movzx	eax, al
	nop	
	add	rsp, 0x40
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x4069e0

	.globl init_store_cols
	.type init_store_cols, @function
init_store_cols:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x50
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	jne	.label_512
	mov	rbp, rbp
	jmp	.label_516
.label_512:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_519
	jmp	.label_527
.label_519:
	mov	eax,  dword ptr [dword ptr [columns]]
	mov	cl, al
	lea	rsi, [rsi]
	movsx	eax, cl
	lea	rsi, [rsi]
	cmp	eax, 0
	jge	.label_658
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	lea	rsi, [rsi]
	mov	cl, al
	nop	
	movsx	eax, cl
	cmp	eax, 0
	lea	rsi, [rsi]
	jge	.label_532
	mov	eax, 0x7fffffff
	lea	rdi, [rdi]
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	mov	dl, cl
	movsx	ecx, dl
	mov	esi,  dword ptr [dword ptr [columns]]
	mov	dl, sil
	movsx	esi, dl
	mov	rsp, rsp
	cdq	
	idiv	esi
	mov	rbp, rbp
	cmp	ecx, eax
	jl	.label_538
	lea	rdi, [rdi]
	jmp	.label_544
.label_532:
	mov	eax,  dword ptr [dword ptr [columns]]
	mov	cl, al
	movsx	eax, cl
	nop	
	cmp	eax, -1
	mov	rbp, rbp
	jne	.label_546
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_538
	nop	
	jmp	.label_544
.label_546:
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [columns]]
	mov	dl, cl
	mov	rbp, rbp
	movsx	ecx, dl
	mov	rbp, rbp
	cdq	
	mov	rbp, rbp
	idiv	ecx
	nop	
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	mov	sil, cl
	movsx	ecx, sil
	mov	rbp, rbp
	cmp	eax, ecx
	jl	.label_538
	nop	
	jmp	.label_544
.label_658:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [columns]]
	lea	rsi, [rsi]
	mov	cl, al
	movsx	eax, cl
	nop	
	cmp	eax, 0
	jne	.label_571
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_538
	lea	rdi, [rdi]
	jmp	.label_544
.label_571:
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	mov	cl, al
	lea	rsi, [rsi]
	movsx	eax, cl
	lea	rsi, [rsi]
	cmp	eax, 0
	lea	rdi, [rdi]
	jge	.label_586
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	mov	rsp, rsp
	mov	dl, cl
	movsx	ecx, dl
	nop	
	mov	esi,  dword ptr [dword ptr [columns]]
	nop	
	mov	dl, sil
	movsx	esi, dl
	cdq	
	idiv	esi
	cmp	ecx, eax
	jl	.label_538
	jmp	.label_544
.label_586:
	mov	eax, 0x7fffffff
	lea	rdi, [rdi]
	mov	ecx,  dword ptr [dword ptr [columns]]
	mov	dl, cl
	movsx	ecx, dl
	lea	rdi, [rdi]
	cdq	
	idiv	ecx
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	mov	sil, cl
	movsx	ecx, sil
	mov	rbp, rbp
	cmp	eax, ecx
	lea	rsi, [rsi]
	jl	.label_538
.label_544:
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	mov	cl, al
	movsx	eax, cl
	mov	edx,  dword ptr [dword ptr [columns]]
	nop	
	mov	cl, dl
	movsx	edx, cl
	mov	rsp, rsp
	imul	eax, edx
	lea	rsi, [rsi]
	cmp	eax, -0x80
	lea	rsi, [rsi]
	jl	.label_538
	mov	eax, 0x7f
	nop	
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	mov	dl, cl
	movsx	ecx, dl
	mov	esi,  dword ptr [dword ptr [columns]]
	mov	dl, sil
	nop	
	movsx	esi, dl
	mov	rsp, rsp
	imul	ecx, esi
	lea	rsi, [rsi]
	cmp	eax, ecx
	lea	rdi, [rdi]
	jge	.label_626
.label_538:
	mov	al, 1
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	mov	dl, cl
	mov	rbp, rbp
	movsx	ecx, dl
	mov	esi,  dword ptr [dword ptr [columns]]
	mov	dl, sil
	movsx	esi, dl
	nop	
	imul	ecx, esi
	nop	
	mov	dl, cl
	lea	rdi, [rdi]
	movsx	ecx, dl
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], ecx
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_406
	jmp	.label_424
.label_626:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	mov	dl, al
	mov	rbp, rbp
	movsx	eax, dl
	mov	esi,  dword ptr [dword ptr [columns]]
	lea	rsi, [rsi]
	mov	dl, sil
	lea	rsi, [rsi]
	movsx	esi, dl
	nop	
	imul	eax, esi
	mov	dl, al
	mov	rsp, rsp
	movsx	eax, dl
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
	nop	
	test	cl, 1
	jne	.label_406
	mov	rsp, rsp
	jmp	.label_424
.label_527:
	nop	
	cmp	dword ptr [dword ptr [columns]],  0
	lea	rdi, [rdi]
	jge	.label_660
	cmp	dword ptr [dword ptr [lines_per_body]],  0
	jge	.label_668
	mov	eax, 0x7fffffff
	nop	
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	lea	rdi, [rdi]
	cdq	
	nop	
	idiv	dword ptr [dword ptr [columns]]
	cmp	ecx, eax
	mov	rsp, rsp
	jl	.label_671
	mov	rbp, rbp
	jmp	.label_429
.label_668:
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [columns]],  -1
	jne	.label_712
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	mov	rbp, rbp
	jne	.label_671
	nop	
	jmp	.label_429
.label_712:
	lea	rdi, [rdi]
	mov	eax, 0x80000000
	lea	rdi, [rdi]
	cdq	
	lea	rsi, [rsi]
	idiv	dword ptr [dword ptr [columns]]
	cmp	eax,  dword ptr [dword ptr [lines_per_body]]
	mov	rsp, rsp
	jl	.label_671
	jmp	.label_429
.label_660:
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [columns]],  0
	mov	rbp, rbp
	jne	.label_540
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	jne	.label_671
	mov	rbp, rbp
	jmp	.label_429
.label_540:
	cmp	dword ptr [dword ptr [lines_per_body]],  0
	lea	rsi, [rsi]
	jge	.label_699
	lea	rdi, [rdi]
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	cdq	
	mov	rbp, rbp
	idiv	dword ptr [dword ptr [columns]]
	lea	rdi, [rdi]
	cmp	ecx, eax
	jl	.label_671
	nop	
	jmp	.label_429
.label_699:
	mov	rbp, rbp
	mov	eax, 0x7fffffff
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	lea	rsi, [rsi]
	cmp	eax,  dword ptr [dword ptr [lines_per_body]]
	lea	rdi, [rdi]
	jl	.label_671
.label_429:
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	lea	rsi, [rsi]
	imul	eax,  dword ptr [dword ptr [columns]]
	nop	
	cmp	eax, -0x80
	jl	.label_671
	nop	
	mov	eax, 0x7f
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	mov	rbp, rbp
	imul	ecx,  dword ptr [dword ptr [columns]]
	mov	rsp, rsp
	cmp	eax, ecx
	lea	rsi, [rsi]
	jge	.label_716
.label_671:
	mov	al, 1
	lea	rdi, [rdi]
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	nop	
	imul	ecx,  dword ptr [dword ptr [columns]]
	mov	dl, cl
	movsx	ecx, dl
	mov	dword ptr [rbp - 4], ecx
	test	al, 1
	mov	rbp, rbp
	jne	.label_406
	lea	rsi, [rsi]
	jmp	.label_424
.label_716:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	imul	eax,  dword ptr [dword ptr [columns]]
	mov	dl, al
	movsx	eax, dl
	nop	
	mov	dword ptr [rbp - 4], eax
	test	cl, 1
	mov	rbp, rbp
	jne	.label_406
	jmp	.label_424
.label_516:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_742
	jmp	.label_747
.label_742:
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	jne	.label_800
	mov	rbp, rbp
	jmp	.label_394
.label_800:
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [columns]]
	mov	rbp, rbp
	mov	cx, ax
	nop	
	movsx	eax, cx
	cmp	eax, 0
	lea	rsi, [rsi]
	jge	.label_752
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	mov	rbp, rbp
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	mov	rsp, rsp
	jge	.label_761
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	lea	rdi, [rdi]
	mov	dx, cx
	nop	
	movsx	ecx, dx
	mov	esi,  dword ptr [dword ptr [columns]]
	lea	rsi, [rsi]
	mov	dx, si
	mov	rbp, rbp
	movsx	esi, dx
	lea	rdi, [rdi]
	cdq	
	idiv	esi
	lea	rdi, [rdi]
	cmp	ecx, eax
	lea	rsi, [rsi]
	jl	.label_383
	nop	
	jmp	.label_409
.label_761:
	nop	
	mov	eax,  dword ptr [dword ptr [columns]]
	mov	cx, ax
	lea	rsi, [rsi]
	movsx	eax, cx
	mov	rbp, rbp
	cmp	eax, -1
	jne	.label_782
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_383
	jmp	.label_409
.label_782:
	mov	eax, 0x80000000
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [columns]]
	mov	dx, cx
	lea	rsi, [rsi]
	movsx	ecx, dx
	cdq	
	idiv	ecx
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	nop	
	mov	si, cx
	lea	rdi, [rdi]
	movsx	ecx, si
	lea	rsi, [rsi]
	cmp	eax, ecx
	nop	
	jl	.label_383
	mov	rbp, rbp
	jmp	.label_409
.label_752:
	nop	
	mov	eax,  dword ptr [dword ptr [columns]]
	mov	cx, ax
	lea	rdi, [rdi]
	movsx	eax, cx
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_802
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_383
	mov	rsp, rsp
	jmp	.label_409
.label_802:
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	mov	cx, ax
	movsx	eax, cx
	mov	rsp, rsp
	cmp	eax, 0
	jge	.label_816
	mov	rsp, rsp
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	lea	rdi, [rdi]
	mov	dx, cx
	movsx	ecx, dx
	mov	esi,  dword ptr [dword ptr [columns]]
	mov	dx, si
	nop	
	movsx	esi, dx
	mov	rbp, rbp
	cdq	
	idiv	esi
	mov	rbp, rbp
	cmp	ecx, eax
	lea	rdi, [rdi]
	jl	.label_383
	lea	rdi, [rdi]
	jmp	.label_409
.label_816:
	mov	eax, 0x7fffffff
	lea	rdi, [rdi]
	mov	ecx,  dword ptr [dword ptr [columns]]
	lea	rsi, [rsi]
	mov	dx, cx
	movsx	ecx, dx
	cdq	
	mov	rbp, rbp
	idiv	ecx
	nop	
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	lea	rdi, [rdi]
	mov	si, cx
	movsx	ecx, si
	lea	rsi, [rsi]
	cmp	eax, ecx
	jl	.label_383
.label_409:
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	lea	rdi, [rdi]
	mov	cx, ax
	lea	rdi, [rdi]
	movsx	eax, cx
	mov	edx,  dword ptr [dword ptr [columns]]
	mov	rsp, rsp
	mov	cx, dx
	nop	
	movsx	edx, cx
	imul	eax, edx
	cmp	eax, 0xffff8000
	nop	
	jl	.label_383
	lea	rdi, [rdi]
	mov	eax, 0x7fff
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	mov	dx, cx
	lea	rdi, [rdi]
	movsx	ecx, dx
	mov	esi,  dword ptr [dword ptr [columns]]
	lea	rdi, [rdi]
	mov	dx, si
	movsx	esi, dx
	lea	rsi, [rsi]
	imul	ecx, esi
	lea	rdi, [rdi]
	cmp	eax, ecx
	jge	.label_434
.label_383:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	lea	rdi, [rdi]
	mov	dx, cx
	movsx	ecx, dx
	mov	esi,  dword ptr [dword ptr [columns]]
	lea	rdi, [rdi]
	mov	dx, si
	movsx	esi, dx
	mov	rsp, rsp
	imul	ecx, esi
	mov	dx, cx
	movsx	ecx, dx
	mov	dword ptr [rbp - 4], ecx
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_406
	mov	rsp, rsp
	jmp	.label_424
.label_434:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	nop	
	mov	dx, ax
	movsx	eax, dx
	lea	rdi, [rdi]
	mov	esi,  dword ptr [dword ptr [columns]]
	mov	dx, si
	mov	rbp, rbp
	movsx	esi, dx
	mov	rbp, rbp
	imul	eax, esi
	mov	dx, ax
	nop	
	movsx	eax, dx
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
	mov	rsp, rsp
	test	cl, 1
	jne	.label_406
	jmp	.label_424
.label_394:
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [columns]],  0
	nop	
	jge	.label_455
	nop	
	cmp	dword ptr [dword ptr [lines_per_body]],  0
	jge	.label_492
	mov	eax, 0x7fffffff
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	mov	rsp, rsp
	cmp	ecx, eax
	jl	.label_497
	lea	rsi, [rsi]
	jmp	.label_507
.label_492:
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [columns]],  -1
	jne	.label_565
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_497
	mov	rsp, rsp
	jmp	.label_507
.label_565:
	mov	eax, 0x80000000
	mov	rbp, rbp
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	eax,  dword ptr [dword ptr [lines_per_body]]
	mov	rbp, rbp
	jl	.label_497
	lea	rsi, [rsi]
	jmp	.label_507
.label_455:
	cmp	dword ptr [dword ptr [columns]],  0
	jne	.label_528
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_497
	jmp	.label_507
.label_528:
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [lines_per_body]],  0
	jge	.label_537
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	lea	rsi, [rsi]
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	lea	rdi, [rdi]
	cmp	ecx, eax
	jl	.label_497
	jmp	.label_507
.label_537:
	mov	eax, 0x7fffffff
	mov	rsp, rsp
	cdq	
	nop	
	idiv	dword ptr [dword ptr [columns]]
	nop	
	cmp	eax,  dword ptr [dword ptr [lines_per_body]]
	jl	.label_497
.label_507:
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	nop	
	imul	eax,  dword ptr [dword ptr [columns]]
	cmp	eax, 0xffff8000
	jl	.label_497
	mov	eax, 0x7fff
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	imul	ecx,  dword ptr [dword ptr [columns]]
	lea	rsi, [rsi]
	cmp	eax, ecx
	jge	.label_559
.label_497:
	mov	al, 1
	nop	
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	imul	ecx,  dword ptr [dword ptr [columns]]
	lea	rdi, [rdi]
	mov	dx, cx
	movsx	ecx, dx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], ecx
	test	al, 1
	mov	rbp, rbp
	jne	.label_406
	mov	rbp, rbp
	jmp	.label_424
.label_559:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	imul	eax,  dword ptr [dword ptr [columns]]
	lea	rsi, [rsi]
	mov	dx, ax
	movsx	eax, dx
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
	nop	
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_406
	jmp	.label_424
.label_747:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	jne	.label_594
	jmp	.label_599
.label_594:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	mov	rsp, rsp
	jne	.label_646
	lea	rdi, [rdi]
	jmp	.label_607
.label_646:
	cmp	dword ptr [dword ptr [columns]],  0
	jge	.label_608
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [lines_per_body]],  0
	jge	.label_615
	lea	rsi, [rsi]
	mov	eax, 0x7fffffff
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	cdq	
	lea	rdi, [rdi]
	idiv	dword ptr [dword ptr [columns]]
	cmp	ecx, eax
	jl	.label_616
	nop	
	jmp	.label_622
.label_615:
	cmp	dword ptr [dword ptr [columns]],  -1
	mov	rsp, rsp
	jne	.label_623
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_616
	jmp	.label_622
.label_623:
	nop	
	mov	eax, 0x80000000
	mov	rbp, rbp
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	eax,  dword ptr [dword ptr [lines_per_body]]
	jl	.label_616
	mov	rbp, rbp
	jmp	.label_622
.label_608:
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [columns]],  0
	jne	.label_637
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_616
	jmp	.label_622
.label_637:
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [lines_per_body]],  0
	mov	rbp, rbp
	jge	.label_643
	mov	rsp, rsp
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	cdq	
	lea	rdi, [rdi]
	idiv	dword ptr [dword ptr [columns]]
	lea	rsi, [rsi]
	cmp	ecx, eax
	jl	.label_616
	jmp	.label_622
.label_643:
	mov	eax, 0x7fffffff
	nop	
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	lea	rdi, [rdi]
	cmp	eax,  dword ptr [dword ptr [lines_per_body]]
	lea	rsi, [rsi]
	jl	.label_616
.label_622:
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	lea	rsi, [rsi]
	imul	eax,  dword ptr [dword ptr [columns]]
	mov	rsp, rsp
	cmp	eax, 0x80000000
	mov	rsp, rsp
	jl	.label_616
	mov	rsp, rsp
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	imul	ecx,  dword ptr [dword ptr [columns]]
	cmp	eax, ecx
	nop	
	jge	.label_669
.label_616:
	mov	al, 1
	lea	rdi, [rdi]
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	lea	rsi, [rsi]
	imul	ecx,  dword ptr [dword ptr [columns]]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], ecx
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_406
	lea	rdi, [rdi]
	jmp	.label_424
.label_669:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	nop	
	imul	eax,  dword ptr [dword ptr [columns]]
	nop	
	mov	dword ptr [rbp - 4], eax
	nop	
	test	cl, 1
	nop	
	jne	.label_406
	lea	rsi, [rsi]
	jmp	.label_424
.label_607:
	cmp	dword ptr [dword ptr [columns]],  0
	mov	rsp, rsp
	jge	.label_691
	cmp	dword ptr [dword ptr [lines_per_body]],  0
	nop	
	jge	.label_399
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	lea	rsi, [rsi]
	cdq	
	mov	rsp, rsp
	idiv	dword ptr [dword ptr [columns]]
	mov	rbp, rbp
	cmp	ecx, eax
	jl	.label_696
	jmp	.label_536
.label_399:
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [columns]],  -1
	mov	rsp, rsp
	jne	.label_703
	nop	
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	jne	.label_696
	lea	rdi, [rdi]
	jmp	.label_536
.label_703:
	lea	rsi, [rsi]
	mov	eax, 0x80000000
	mov	rbp, rbp
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	lea	rdi, [rdi]
	cmp	eax,  dword ptr [dword ptr [lines_per_body]]
	jl	.label_696
	lea	rdi, [rdi]
	jmp	.label_536
.label_691:
	nop	
	cmp	dword ptr [dword ptr [columns]],  0
	lea	rdi, [rdi]
	jne	.label_714
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_696
	jmp	.label_536
.label_714:
	cmp	dword ptr [dword ptr [lines_per_body]],  0
	lea	rsi, [rsi]
	jge	.label_722
	lea	rdi, [rdi]
	mov	eax, 0x80000000
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	cdq	
	mov	rsp, rsp
	idiv	dword ptr [dword ptr [columns]]
	cmp	ecx, eax
	mov	rbp, rbp
	jl	.label_696
	jmp	.label_536
.label_722:
	mov	eax, 0x7fffffff
	mov	rbp, rbp
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	cmp	eax,  dword ptr [dword ptr [lines_per_body]]
	jl	.label_696
.label_536:
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	mov	rbp, rbp
	imul	eax,  dword ptr [dword ptr [columns]]
	cmp	eax, 0x80000000
	jl	.label_696
	mov	eax, 0x7fffffff
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	mov	rbp, rbp
	imul	ecx,  dword ptr [dword ptr [columns]]
	mov	rsp, rsp
	cmp	eax, ecx
	jge	.label_743
.label_696:
	lea	rdi, [rdi]
	mov	al, 1
	lea	rdi, [rdi]
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	mov	rsp, rsp
	imul	ecx,  dword ptr [dword ptr [columns]]
	mov	dword ptr [rbp - 4], ecx
	test	al, 1
	jne	.label_406
	jmp	.label_424
.label_743:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	mov	rsp, rsp
	imul	eax,  dword ptr [dword ptr [columns]]
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	mov	rsp, rsp
	test	cl, 1
	mov	rsp, rsp
	jne	.label_406
	mov	rsp, rsp
	jmp	.label_424
.label_599:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_770
	jmp	.label_776
.label_770:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_778
	mov	rsp, rsp
	jmp	.label_780
.label_778:
	movsxd	rax,  dword ptr [dword ptr [columns]]
	nop	
	cmp	rax, 0
	jge	.label_783
	movsxd	rax,  dword ptr [dword ptr [lines_per_body]]
	cmp	rax, 0
	jge	.label_787
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	lea	rsi, [rsi]
	movsxd	rdx,  dword ptr [dword ptr [columns]]
	mov	qword ptr [rbp - 0x18], rdx
	cqo	
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	idiv	rsi
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_391
	nop	
	jmp	.label_400
.label_787:
	movsxd	rax,  dword ptr [dword ptr [columns]]
	cmp	rax, -1
	lea	rdi, [rdi]
	jne	.label_797
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	nop	
	jne	.label_391
	jmp	.label_400
.label_797:
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	movsxd	rcx,  dword ptr [dword ptr [columns]]
	cqo	
	mov	rsp, rsp
	idiv	rcx
	nop	
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	cmp	rax, rcx
	jl	.label_391
	jmp	.label_400
.label_783:
	movsxd	rax,  dword ptr [dword ptr [columns]]
	cmp	rax, 0
	jne	.label_381
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_391
	jmp	.label_400
.label_381:
	movsxd	rax,  dword ptr [dword ptr [lines_per_body]]
	cmp	rax, 0
	lea	rsi, [rsi]
	jge	.label_402
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	lea	rsi, [rsi]
	movsxd	rdx,  dword ptr [dword ptr [columns]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdx
	lea	rsi, [rsi]
	cqo	
	mov	rsi, qword ptr [rbp - 0x20]
	idiv	rsi
	lea	rdi, [rdi]
	cmp	rcx, rax
	jl	.label_391
	jmp	.label_400
.label_402:
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx,  dword ptr [dword ptr [columns]]
	cqo	
	idiv	rcx
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	lea	rdi, [rdi]
	cmp	rax, rcx
	jl	.label_391
.label_400:
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	movsxd	rdx,  dword ptr [dword ptr [columns]]
	mov	rbp, rbp
	imul	rcx, rdx
	cmp	rcx, rax
	lea	rsi, [rsi]
	jl	.label_391
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	mov	rsp, rsp
	movsxd	rdx,  dword ptr [dword ptr [columns]]
	imul	rcx, rdx
	lea	rdi, [rdi]
	cmp	rax, rcx
	jge	.label_441
.label_391:
	nop	
	mov	al, 1
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	lea	rdi, [rdi]
	movsxd	rdx,  dword ptr [dword ptr [columns]]
	imul	rcx, rdx
	nop	
	mov	esi, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], esi
	test	al, 1
	jne	.label_406
	mov	rbp, rbp
	jmp	.label_424
.label_441:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	movsxd	rdx,  dword ptr [dword ptr [lines_per_body]]
	movsxd	rsi,  dword ptr [dword ptr [columns]]
	imul	rdx, rsi
	mov	rbp, rbp
	mov	eax, edx
	mov	dword ptr [rbp - 4], eax
	test	cl, 1
	jne	.label_406
	jmp	.label_424
.label_780:
	cmp	dword ptr [dword ptr [columns]],  0
	mov	rsp, rsp
	jge	.label_480
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [lines_per_body]],  0
	lea	rsi, [rsi]
	jge	.label_486
	mov	eax, 0x7fffffff
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	nop	
	cdq	
	nop	
	idiv	dword ptr [dword ptr [columns]]
	cmp	ecx, eax
	jl	.label_509
	jmp	.label_503
.label_486:
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [columns]],  -1
	mov	rbp, rbp
	jne	.label_505
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_509
	jmp	.label_503
.label_505:
	nop	
	mov	eax, 0x80000000
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	mov	rbp, rbp
	cmp	eax,  dword ptr [dword ptr [lines_per_body]]
	jl	.label_509
	jmp	.label_503
.label_480:
	cmp	dword ptr [dword ptr [columns]],  0
	mov	rsp, rsp
	jne	.label_522
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_509
	jmp	.label_503
.label_522:
	cmp	dword ptr [dword ptr [lines_per_body]],  0
	nop	
	jge	.label_530
	nop	
	mov	eax, 0x80000000
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	mov	rbp, rbp
	cmp	ecx, eax
	jl	.label_509
	jmp	.label_503
.label_530:
	lea	rsi, [rsi]
	mov	eax, 0x7fffffff
	cdq	
	mov	rbp, rbp
	idiv	dword ptr [dword ptr [columns]]
	lea	rdi, [rdi]
	cmp	eax,  dword ptr [dword ptr [lines_per_body]]
	jl	.label_509
.label_503:
	movabs	rax, 0x8000000000000000
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	lea	rdi, [rdi]
	imul	ecx,  dword ptr [dword ptr [columns]]
	movsxd	rdx, ecx
	cmp	rdx, rax
	lea	rdi, [rdi]
	jl	.label_509
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	imul	ecx,  dword ptr [dword ptr [columns]]
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	cmp	rax, rdx
	mov	rsp, rsp
	jge	.label_557
.label_509:
	nop	
	mov	al, 1
	lea	rsi, [rsi]
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	mov	rbp, rbp
	movsxd	rdx,  dword ptr [dword ptr [columns]]
	imul	rcx, rdx
	mov	esi, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], esi
	nop	
	test	al, 1
	nop	
	jne	.label_406
	jmp	.label_424
.label_557:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	movsxd	rdx,  dword ptr [dword ptr [lines_per_body]]
	lea	rdi, [rdi]
	movsxd	rsi,  dword ptr [dword ptr [columns]]
	mov	rsp, rsp
	imul	rdx, rsi
	mov	eax, edx
	nop	
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_406
	mov	rbp, rbp
	jmp	.label_424
.label_776:
	mov	al, 1
	nop	
	test	al, 1
	jne	.label_595
	jmp	.label_598
.label_595:
	movsxd	rax,  dword ptr [dword ptr [columns]]
	cmp	rax, 0
	jge	.label_602
	mov	rsp, rsp
	movsxd	rax,  dword ptr [dword ptr [lines_per_body]]
	lea	rdi, [rdi]
	cmp	rax, 0
	nop	
	jge	.label_605
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	movsxd	rdx,  dword ptr [dword ptr [columns]]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rdx
	lea	rdi, [rdi]
	cqo	
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x28]
	nop	
	idiv	rsi
	cmp	rcx, rax
	jl	.label_613
	lea	rdi, [rdi]
	jmp	.label_632
.label_605:
	movsxd	rax,  dword ptr [dword ptr [columns]]
	mov	rbp, rbp
	cmp	rax, -1
	mov	rsp, rsp
	jne	.label_624
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	mov	rbp, rbp
	jne	.label_613
	jmp	.label_632
.label_624:
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	movsxd	rcx,  dword ptr [dword ptr [columns]]
	mov	rbp, rbp
	cqo	
	nop	
	idiv	rcx
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	mov	rsp, rsp
	cmp	rax, rcx
	jl	.label_613
	jmp	.label_632
.label_602:
	mov	rsp, rsp
	movsxd	rax,  dword ptr [dword ptr [columns]]
	cmp	rax, 0
	nop	
	jne	.label_642
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_613
	lea	rsi, [rsi]
	jmp	.label_632
.label_642:
	mov	rsp, rsp
	movsxd	rax,  dword ptr [dword ptr [lines_per_body]]
	lea	rsi, [rsi]
	cmp	rax, 0
	jge	.label_651
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	movsxd	rdx,  dword ptr [dword ptr [columns]]
	mov	qword ptr [rbp - 0x30], rdx
	mov	rbp, rbp
	cqo	
	mov	rsi, qword ptr [rbp - 0x30]
	idiv	rsi
	cmp	rcx, rax
	nop	
	jl	.label_613
	nop	
	jmp	.label_632
.label_651:
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx,  dword ptr [dword ptr [columns]]
	nop	
	cqo	
	idiv	rcx
	lea	rdi, [rdi]
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	mov	rsp, rsp
	cmp	rax, rcx
	jl	.label_613
.label_632:
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	mov	rsp, rsp
	movsxd	rdx,  dword ptr [dword ptr [columns]]
	imul	rcx, rdx
	lea	rdi, [rdi]
	cmp	rcx, rax
	nop	
	jl	.label_613
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	lea	rsi, [rsi]
	movsxd	rdx,  dword ptr [dword ptr [columns]]
	imul	rcx, rdx
	nop	
	cmp	rax, rcx
	nop	
	jge	.label_687
.label_613:
	mov	al, 1
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	mov	rbp, rbp
	movsxd	rdx,  dword ptr [dword ptr [columns]]
	imul	rcx, rdx
	mov	esi, ecx
	mov	dword ptr [rbp - 4], esi
	nop	
	test	al, 1
	jne	.label_406
	jmp	.label_424
.label_687:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	movsxd	rdx,  dword ptr [dword ptr [lines_per_body]]
	mov	rbp, rbp
	movsxd	rsi,  dword ptr [dword ptr [columns]]
	imul	rdx, rsi
	lea	rdi, [rdi]
	mov	eax, edx
	mov	dword ptr [rbp - 4], eax
	test	cl, 1
	jne	.label_406
	jmp	.label_424
.label_598:
	cmp	dword ptr [dword ptr [columns]],  0
	mov	rsp, rsp
	jge	.label_711
	cmp	dword ptr [dword ptr [lines_per_body]],  0
	nop	
	jge	.label_560
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	cdq	
	lea	rsi, [rsi]
	idiv	dword ptr [dword ptr [columns]]
	cmp	ecx, eax
	mov	rsp, rsp
	jl	.label_681
	lea	rsi, [rsi]
	jmp	.label_717
.label_560:
	cmp	dword ptr [dword ptr [columns]],  -1
	mov	rbp, rbp
	jne	.label_718
	nop	
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_681
	jmp	.label_717
.label_718:
	nop	
	mov	eax, 0x80000000
	mov	rsp, rsp
	cdq	
	nop	
	idiv	dword ptr [dword ptr [columns]]
	nop	
	cmp	eax,  dword ptr [dword ptr [lines_per_body]]
	lea	rsi, [rsi]
	jl	.label_681
	nop	
	jmp	.label_717
.label_711:
	cmp	dword ptr [dword ptr [columns]],  0
	jne	.label_735
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_681
	jmp	.label_717
.label_735:
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [lines_per_body]],  0
	jge	.label_741
	mov	eax, 0x80000000
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	mov	rsp, rsp
	cdq	
	lea	rsi, [rsi]
	idiv	dword ptr [dword ptr [columns]]
	cmp	ecx, eax
	mov	rbp, rbp
	jl	.label_681
	mov	rsp, rsp
	jmp	.label_717
.label_741:
	mov	rsp, rsp
	mov	eax, 0x7fffffff
	mov	rbp, rbp
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	nop	
	cmp	eax,  dword ptr [dword ptr [lines_per_body]]
	nop	
	jl	.label_681
.label_717:
	movabs	rax, 0x8000000000000000
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	imul	ecx,  dword ptr [dword ptr [columns]]
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	cmp	rdx, rax
	jl	.label_681
	movabs	rax, 0x7fffffffffffffff
	mov	ecx,  dword ptr [dword ptr [lines_per_body]]
	imul	ecx,  dword ptr [dword ptr [columns]]
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	lea	rsi, [rsi]
	cmp	rax, rdx
	lea	rdi, [rdi]
	jge	.label_767
.label_681:
	mov	al, 1
	movsxd	rcx,  dword ptr [dword ptr [lines_per_body]]
	nop	
	movsxd	rdx,  dword ptr [dword ptr [columns]]
	lea	rdi, [rdi]
	imul	rcx, rdx
	lea	rsi, [rsi]
	mov	esi, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], esi
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_406
	jmp	.label_424
.label_767:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rdi, [rdi]
	movsxd	rdx,  dword ptr [dword ptr [lines_per_body]]
	lea	rsi, [rsi]
	movsxd	rsi,  dword ptr [dword ptr [columns]]
	imul	rdx, rsi
	mov	eax, edx
	mov	dword ptr [rbp - 4], eax
	test	cl, 1
	jne	.label_406
.label_424:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_794
	mov	rsp, rsp
	jmp	.label_799
.label_794:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_801
	jmp	.label_803
.label_801:
	mov	rbp, rbp
	mov	al, 1
	nop	
	test	al, 1
	nop	
	jne	.label_805
	mov	rbp, rbp
	jmp	.label_810
.label_805:
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_813
	jmp	.label_817
.label_813:
	mov	eax, dword ptr [rbp - 4]
	nop	
	mov	cl, al
	lea	rdi, [rdi]
	movsx	eax, cl
	cmp	eax, 0x7fffffff
	jl	.label_387
	jmp	.label_384
.label_817:
	mov	eax, 0x7ffffffe
	mov	ecx, dword ptr [rbp - 4]
	nop	
	mov	dl, cl
	nop	
	movsx	ecx, dl
	cmp	eax, ecx
	jl	.label_387
	jmp	.label_384
.label_810:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	cl, al
	nop	
	movsx	eax, cl
	lea	rdi, [rdi]
	cmp	eax, 0
	jge	.label_404
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 4]
	mov	rbp, rbp
	mov	dl, cl
	lea	rsi, [rsi]
	movsx	ecx, dl
	nop	
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_387
	jmp	.label_384
.label_404:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_417
	nop	
	jmp	.label_422
.label_417:
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	mov	cl, al
	movsx	eax, cl
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 4]
	mov	rbp, rbp
	mov	cl, dl
	movsx	edx, cl
	mov	rbp, rbp
	add	edx, 1
	cmp	eax, edx
	lea	rdi, [rdi]
	jle	.label_387
	nop	
	jmp	.label_384
.label_422:
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	mov	cl, al
	movsx	eax, cl
	nop	
	add	eax, 1
	cmp	eax, 1
	nop	
	jl	.label_387
.label_384:
	mov	eax, dword ptr [rbp - 4]
	mov	cl, al
	movsx	eax, cl
	add	eax, 1
	lea	rsi, [rsi]
	cmp	eax, -0x80
	jl	.label_387
	nop	
	mov	eax, 0x7f
	mov	ecx, dword ptr [rbp - 4]
	nop	
	mov	dl, cl
	movsx	ecx, dl
	add	ecx, 1
	cmp	eax, ecx
	jge	.label_442
.label_387:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 4]
	mov	dl, cl
	mov	rbp, rbp
	movsx	ecx, dl
	nop	
	add	ecx, 1
	mov	dl, cl
	movsx	ecx, dl
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], ecx
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_406
	jmp	.label_427
.label_442:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 4]
	nop	
	mov	dl, al
	movsx	eax, dl
	add	eax, 1
	lea	rsi, [rsi]
	mov	dl, al
	movsx	eax, dl
	mov	dword ptr [rbp - 8], eax
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_406
	lea	rdi, [rdi]
	jmp	.label_427
.label_803:
	mov	rsp, rsp
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	jne	.label_472
	jmp	.label_418
.label_472:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	mov	rsp, rsp
	jne	.label_423
	lea	rsi, [rsi]
	jmp	.label_484
.label_423:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 4], 0x7fffffff
	jl	.label_487
	mov	rbp, rbp
	jmp	.label_494
.label_484:
	nop	
	mov	eax, 0x7ffffffe
	cmp	eax, dword ptr [rbp - 4]
	jl	.label_487
	mov	rbp, rbp
	jmp	.label_494
.label_418:
	cmp	dword ptr [rbp - 4], 0
	jge	.label_502
	mov	rbp, rbp
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	mov	rbp, rbp
	cmp	eax, ecx
	mov	rbp, rbp
	jle	.label_487
	jmp	.label_494
.label_502:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_513
	mov	rsp, rsp
	jmp	.label_517
.label_513:
	mov	eax, dword ptr [rbp - 4]
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	lea	rsi, [rsi]
	cmp	eax, ecx
	mov	rsp, rsp
	jle	.label_487
	nop	
	jmp	.label_494
.label_517:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	cmp	eax, 1
	nop	
	jl	.label_487
.label_494:
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	lea	rsi, [rsi]
	cmp	eax, -0x80
	jl	.label_487
	nop	
	mov	eax, 0x7f
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	ecx, 1
	cmp	eax, ecx
	jge	.label_535
.label_487:
	mov	rsp, rsp
	mov	al, 1
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	mov	rsp, rsp
	mov	dl, cl
	nop	
	movsx	ecx, dl
	mov	dword ptr [rbp - 8], ecx
	test	al, 1
	mov	rsp, rsp
	jne	.label_406
	jmp	.label_427
.label_535:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	mov	rsp, rsp
	mov	dl, al
	mov	rbp, rbp
	movsx	eax, dl
	mov	dword ptr [rbp - 8], eax
	test	cl, 1
	mov	rbp, rbp
	jne	.label_406
	jmp	.label_427
.label_799:
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_556
	mov	rsp, rsp
	jmp	.label_562
.label_556:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_439
	jmp	.label_568
.label_439:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_610
	mov	rbp, rbp
	jmp	.label_572
.label_610:
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	nop	
	jne	.label_574
	jmp	.label_579
.label_574:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0x7fffffff
	jl	.label_589
	jmp	.label_588
.label_579:
	mov	eax, 0x7ffffffe
	mov	ecx, dword ptr [rbp - 4]
	mov	dx, cx
	movsx	ecx, dx
	lea	rsi, [rsi]
	cmp	eax, ecx
	nop	
	jl	.label_589
	jmp	.label_588
.label_572:
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	jge	.label_630
	lea	rdi, [rdi]
	mov	eax, 1
	mov	ecx, dword ptr [rbp - 4]
	mov	dx, cx
	mov	rsp, rsp
	movsx	ecx, dx
	add	ecx, 1
	cmp	eax, ecx
	lea	rdi, [rdi]
	jle	.label_589
	jmp	.label_588
.label_630:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_614
	jmp	.label_617
.label_614:
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	mov	cx, ax
	movsx	eax, cx
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 4]
	mov	cx, dx
	movsx	edx, cx
	lea	rsi, [rsi]
	add	edx, 1
	cmp	eax, edx
	jle	.label_589
	lea	rsi, [rsi]
	jmp	.label_588
.label_617:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	mov	cx, ax
	nop	
	movsx	eax, cx
	mov	rsp, rsp
	add	eax, 1
	cmp	eax, 1
	nop	
	jl	.label_589
.label_588:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 4]
	mov	cx, ax
	mov	rbp, rbp
	movsx	eax, cx
	mov	rsp, rsp
	add	eax, 1
	mov	rbp, rbp
	cmp	eax, 0xffff8000
	mov	rsp, rsp
	jl	.label_589
	nop	
	mov	eax, 0x7fff
	nop	
	mov	ecx, dword ptr [rbp - 4]
	mov	dx, cx
	mov	rsp, rsp
	movsx	ecx, dx
	nop	
	add	ecx, 1
	nop	
	cmp	eax, ecx
	nop	
	jge	.label_426
.label_589:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 4]
	mov	dx, cx
	mov	rsp, rsp
	movsx	ecx, dx
	add	ecx, 1
	mov	dx, cx
	movsx	ecx, dx
	mov	dword ptr [rbp - 8], ecx
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_406
	mov	rbp, rbp
	jmp	.label_427
.label_426:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	mov	dx, ax
	movsx	eax, dx
	mov	rbp, rbp
	add	eax, 1
	lea	rdi, [rdi]
	mov	dx, ax
	movsx	eax, dx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], eax
	test	cl, 1
	mov	rbp, rbp
	jne	.label_406
	mov	rsp, rsp
	jmp	.label_427
.label_568:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_661
	mov	rsp, rsp
	jmp	.label_667
.label_661:
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_657
	jmp	.label_673
.label_657:
	cmp	dword ptr [rbp - 4], 0x7fffffff
	lea	rdi, [rdi]
	jl	.label_675
	lea	rsi, [rsi]
	jmp	.label_678
.label_673:
	mov	eax, 0x7ffffffe
	nop	
	cmp	eax, dword ptr [rbp - 4]
	jl	.label_675
	mov	rsp, rsp
	jmp	.label_678
.label_667:
	cmp	dword ptr [rbp - 4], 0
	mov	rbp, rbp
	jge	.label_684
	mov	eax, 1
	mov	ecx, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	add	ecx, 1
	cmp	eax, ecx
	mov	rbp, rbp
	jle	.label_675
	jmp	.label_678
.label_684:
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_688
	mov	rsp, rsp
	jmp	.label_690
.label_688:
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	nop	
	cmp	eax, ecx
	nop	
	jle	.label_675
	jmp	.label_678
.label_690:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	eax, 1
	lea	rsi, [rsi]
	cmp	eax, 1
	mov	rsp, rsp
	jl	.label_675
.label_678:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	add	eax, 1
	cmp	eax, 0xffff8000
	lea	rsi, [rsi]
	jl	.label_675
	mov	eax, 0x7fff
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	lea	rdi, [rdi]
	cmp	eax, ecx
	lea	rsi, [rsi]
	jge	.label_705
.label_675:
	mov	al, 1
	nop	
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	mov	rsp, rsp
	mov	dx, cx
	movsx	ecx, dx
	mov	dword ptr [rbp - 8], ecx
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_406
	jmp	.label_427
.label_705:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	nop	
	mov	dx, ax
	lea	rsi, [rsi]
	movsx	eax, dx
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], eax
	test	cl, 1
	mov	rbp, rbp
	jne	.label_406
	nop	
	jmp	.label_427
.label_562:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	jne	.label_719
	jmp	.label_723
.label_719:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_654
	jmp	.label_728
.label_654:
	mov	al, 1
	nop	
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_730
	mov	rbp, rbp
	jmp	.label_733
.label_730:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	nop	
	jne	.label_707
	mov	rbp, rbp
	jmp	.label_736
.label_707:
	cmp	dword ptr [rbp - 4], 0x7fffffff
	jl	.label_490
	mov	rsp, rsp
	jmp	.label_740
.label_736:
	nop	
	mov	eax, 0x7ffffffe
	cmp	eax, dword ptr [rbp - 4]
	jl	.label_490
	mov	rbp, rbp
	jmp	.label_740
.label_733:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 4], 0
	lea	rdi, [rdi]
	jge	.label_786
	mov	eax, 1
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 4]
	nop	
	add	ecx, 1
	cmp	eax, ecx
	nop	
	jle	.label_490
	jmp	.label_740
.label_786:
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_753
	jmp	.label_757
.label_753:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	cmp	eax, ecx
	lea	rsi, [rsi]
	jle	.label_490
	mov	rsp, rsp
	jmp	.label_740
.label_757:
	mov	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	add	eax, 1
	cmp	eax, 1
	lea	rdi, [rdi]
	jl	.label_490
.label_740:
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	eax, 1
	cmp	eax, 0x80000000
	nop	
	jl	.label_490
	nop	
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	add	ecx, 1
	cmp	eax, ecx
	jge	.label_772
.label_490:
	nop	
	mov	al, 1
	nop	
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	mov	dword ptr [rbp - 8], ecx
	test	al, 1
	jne	.label_406
	mov	rbp, rbp
	jmp	.label_427
.label_772:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	nop	
	mov	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	add	eax, 1
	mov	dword ptr [rbp - 8], eax
	mov	rsp, rsp
	test	cl, 1
	jne	.label_406
	lea	rdi, [rdi]
	jmp	.label_427
.label_728:
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_789
	lea	rsi, [rsi]
	jmp	.label_792
.label_789:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_793
	lea	rdi, [rdi]
	jmp	.label_798
.label_793:
	cmp	dword ptr [rbp - 4], 0x7fffffff
	jl	.label_397
	mov	rsp, rsp
	jmp	.label_407
.label_798:
	mov	rsp, rsp
	mov	eax, 0x7ffffffe
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 4]
	nop	
	jl	.label_397
	mov	rbp, rbp
	jmp	.label_407
.label_792:
	cmp	dword ptr [rbp - 4], 0
	lea	rdi, [rdi]
	jge	.label_771
	mov	eax, 1
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 4]
	nop	
	add	ecx, 1
	mov	rsp, rsp
	cmp	eax, ecx
	jle	.label_397
	jmp	.label_407
.label_771:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_396
	nop	
	jmp	.label_393
.label_396:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	add	ecx, 1
	lea	rsi, [rsi]
	cmp	eax, ecx
	jle	.label_397
	lea	rdi, [rdi]
	jmp	.label_407
.label_393:
	mov	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	add	eax, 1
	mov	rbp, rbp
	cmp	eax, 1
	nop	
	jl	.label_397
.label_407:
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	cmp	eax, 0x80000000
	jl	.label_397
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	mov	rbp, rbp
	cmp	eax, ecx
	jge	.label_416
.label_397:
	mov	rbp, rbp
	mov	al, 1
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 4]
	nop	
	add	ecx, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], ecx
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_406
	lea	rdi, [rdi]
	jmp	.label_427
.label_416:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	nop	
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 8], eax
	lea	rsi, [rsi]
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_406
	mov	rbp, rbp
	jmp	.label_427
.label_723:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_437
	nop	
	jmp	.label_692
.label_437:
	nop	
	mov	al, 1
	test	al, 1
	mov	rsp, rsp
	jne	.label_444
	lea	rdi, [rdi]
	jmp	.label_449
.label_444:
	mov	rsp, rsp
	mov	al, 1
	test	al, 1
	jne	.label_452
	jmp	.label_454
.label_452:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_456
	jmp	.label_461
.label_456:
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	cmp	rcx, rax
	jl	.label_462
	nop	
	jmp	.label_467
.label_461:
	nop	
	movabs	rax, 0x7ffffffffffffffe
	movsxd	rcx, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	cmp	rax, rcx
	mov	rbp, rbp
	jl	.label_462
	jmp	.label_467
.label_454:
	movsxd	rax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	cmp	rax, 0
	lea	rdi, [rdi]
	jge	.label_478
	nop	
	mov	eax, 1
	nop	
	mov	ecx, eax
	movsxd	rdx, dword ptr [rbp - 4]
	add	rdx, 1
	lea	rdi, [rdi]
	cmp	rcx, rdx
	jle	.label_462
	jmp	.label_467
.label_478:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_496
	jmp	.label_501
.label_496:
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 4]
	movsxd	rcx, dword ptr [rbp - 4]
	add	rcx, 1
	cmp	rax, rcx
	nop	
	jle	.label_462
	lea	rdi, [rdi]
	jmp	.label_467
.label_501:
	movsxd	rax, dword ptr [rbp - 4]
	add	rax, 1
	mov	rbp, rbp
	cmp	rax, 1
	jl	.label_462
.label_467:
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	add	rcx, 1
	cmp	rcx, rax
	jl	.label_462
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 4]
	add	rcx, 1
	cmp	rax, rcx
	jge	.label_524
.label_462:
	mov	al, 1
	movsxd	rcx, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	add	rcx, 1
	lea	rdi, [rdi]
	mov	edx, ecx
	mov	dword ptr [rbp - 8], edx
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_406
	mov	rbp, rbp
	jmp	.label_427
.label_524:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	movsxd	rdx, dword ptr [rbp - 4]
	nop	
	add	rdx, 1
	mov	eax, edx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 8], eax
	test	cl, 1
	jne	.label_406
	mov	rsp, rsp
	jmp	.label_427
.label_449:
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_542
	lea	rdi, [rdi]
	jmp	.label_545
.label_542:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	jne	.label_788
	lea	rsi, [rsi]
	jmp	.label_550
.label_788:
	cmp	dword ptr [rbp - 4], 0x7fffffff
	jl	.label_551
	lea	rdi, [rdi]
	jmp	.label_563
.label_550:
	mov	eax, 0x7ffffffe
	cmp	eax, dword ptr [rbp - 4]
	jl	.label_551
	lea	rsi, [rsi]
	jmp	.label_563
.label_545:
	nop	
	cmp	dword ptr [rbp - 4], 0
	lea	rdi, [rdi]
	jge	.label_566
	lea	rdi, [rdi]
	mov	eax, 1
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	cmp	eax, ecx
	lea	rsi, [rsi]
	jle	.label_551
	mov	rsp, rsp
	jmp	.label_563
.label_566:
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_575
	nop	
	jmp	.label_580
.label_575:
	mov	eax, dword ptr [rbp - 4]
	nop	
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	mov	rbp, rbp
	cmp	eax, ecx
	lea	rsi, [rsi]
	jle	.label_551
	jmp	.label_563
.label_580:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	nop	
	cmp	eax, 1
	jl	.label_551
.label_563:
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	mov	rsp, rsp
	cmp	rdx, rax
	jl	.label_551
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 4]
	mov	rbp, rbp
	add	ecx, 1
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	lea	rdi, [rdi]
	cmp	rax, rdx
	jge	.label_604
.label_551:
	nop	
	mov	al, 1
	movsxd	rcx, dword ptr [rbp - 4]
	add	rcx, 1
	mov	rsp, rsp
	mov	edx, ecx
	mov	dword ptr [rbp - 8], edx
	mov	rbp, rbp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_406
	jmp	.label_427
.label_604:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	movsxd	rdx, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	add	rdx, 1
	mov	eax, edx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 8], eax
	test	cl, 1
	jne	.label_406
	jmp	.label_427
.label_692:
	mov	al, 1
	nop	
	test	al, 1
	nop	
	jne	.label_627
	mov	rbp, rbp
	jmp	.label_629
.label_627:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_631
	lea	rsi, [rsi]
	jmp	.label_635
.label_631:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_636
	jmp	.label_639
.label_636:
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 4]
	mov	rbp, rbp
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_451
	mov	rsp, rsp
	jmp	.label_644
.label_639:
	movabs	rax, 0x7ffffffffffffffe
	movsxd	rcx, dword ptr [rbp - 4]
	cmp	rax, rcx
	jl	.label_451
	jmp	.label_644
.label_635:
	movsxd	rax, dword ptr [rbp - 4]
	cmp	rax, 0
	jge	.label_650
	mov	eax, 1
	nop	
	mov	ecx, eax
	movsxd	rdx, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	add	rdx, 1
	cmp	rcx, rdx
	jle	.label_451
	jmp	.label_644
.label_650:
	nop	
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_618
	lea	rsi, [rsi]
	jmp	.label_634
.label_618:
	movsxd	rax, dword ptr [rbp - 4]
	movsxd	rcx, dword ptr [rbp - 4]
	add	rcx, 1
	mov	rbp, rbp
	cmp	rax, rcx
	jle	.label_451
	lea	rsi, [rsi]
	jmp	.label_644
.label_634:
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	rax, 1
	mov	rsp, rsp
	cmp	rax, 1
	mov	rbp, rbp
	jl	.label_451
.label_644:
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	nop	
	movsxd	rcx, dword ptr [rbp - 4]
	add	rcx, 1
	cmp	rcx, rax
	nop	
	jl	.label_451
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	nop	
	movsxd	rcx, dword ptr [rbp - 4]
	add	rcx, 1
	cmp	rax, rcx
	jge	.label_685
.label_451:
	mov	al, 1
	movsxd	rcx, dword ptr [rbp - 4]
	add	rcx, 1
	mov	edx, ecx
	mov	dword ptr [rbp - 8], edx
	test	al, 1
	mov	rsp, rsp
	jne	.label_406
	jmp	.label_427
.label_685:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 4]
	add	rdx, 1
	mov	eax, edx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 8], eax
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_406
	nop	
	jmp	.label_427
.label_629:
	mov	rbp, rbp
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	mov	rbp, rbp
	jne	.label_700
	mov	rbp, rbp
	jmp	.label_702
.label_700:
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	mov	rbp, rbp
	jne	.label_704
	mov	rbp, rbp
	jmp	.label_708
.label_704:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 4], 0x7fffffff
	jl	.label_709
	jmp	.label_581
.label_708:
	lea	rdi, [rdi]
	mov	eax, 0x7ffffffe
	cmp	eax, dword ptr [rbp - 4]
	jl	.label_709
	jmp	.label_581
.label_702:
	cmp	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jge	.label_713
	nop	
	mov	eax, 1
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	cmp	eax, ecx
	lea	rdi, [rdi]
	jle	.label_709
	jmp	.label_581
.label_713:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_720
	jmp	.label_724
.label_720:
	mov	eax, dword ptr [rbp - 4]
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	cmp	eax, ecx
	lea	rsi, [rsi]
	jle	.label_709
	jmp	.label_581
.label_724:
	mov	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	add	eax, 1
	cmp	eax, 1
	nop	
	jl	.label_709
.label_581:
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	movsxd	rdx, ecx
	cmp	rdx, rax
	jl	.label_709
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	ecx, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	add	ecx, 1
	mov	rbp, rbp
	movsxd	rdx, ecx
	lea	rdi, [rdi]
	cmp	rax, rdx
	jge	.label_739
.label_709:
	mov	rbp, rbp
	mov	al, 1
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 4]
	add	rcx, 1
	mov	edx, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], edx
	lea	rsi, [rsi]
	test	al, 1
	nop	
	jne	.label_406
	jmp	.label_427
.label_739:
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	movsxd	rdx, dword ptr [rbp - 4]
	add	rdx, 1
	lea	rdi, [rdi]
	mov	eax, edx
	mov	dword ptr [rbp - 8], eax
	test	cl, 1
	nop	
	jne	.label_406
.label_427:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_759
	mov	rsp, rsp
	jmp	.label_764
.label_759:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	nop	
	jne	.label_766
	mov	rsp, rsp
	jmp	.label_768
.label_766:
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_769
	lea	rsi, [rsi]
	jmp	.label_773
.label_769:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_777
	jmp	.label_781
.label_777:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	nop	
	mov	cl, al
	mov	rsp, rsp
	movsx	eax, cl
	cmp	eax, 0x7fffffff
	jl	.label_389
	jmp	.label_386
.label_781:
	lea	rsi, [rsi]
	mov	eax, 0x7ffffffe
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	mov	dl, cl
	mov	rbp, rbp
	movsx	ecx, dl
	cmp	eax, ecx
	jl	.label_389
	jmp	.label_386
.label_773:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	cl, al
	mov	rsp, rsp
	movsx	eax, cl
	mov	rsp, rsp
	cmp	eax, 0
	jge	.label_790
	lea	rsi, [rsi]
	mov	eax, 1
	lea	rdi, [rdi]
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	mov	dl, cl
	movsx	ecx, dl
	add	ecx, 1
	cmp	eax, ecx
	lea	rsi, [rsi]
	jle	.label_389
	mov	rsp, rsp
	jmp	.label_386
.label_790:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_808
	jmp	.label_814
.label_808:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	cl, al
	lea	rsi, [rsi]
	movsx	eax, cl
	lea	rdi, [rdi]
	mov	edx,  dword ptr [dword ptr [chars_per_column]]
	mov	cl, dl
	movsx	edx, cl
	add	edx, 1
	nop	
	cmp	eax, edx
	mov	rbp, rbp
	jle	.label_389
	jmp	.label_386
.label_814:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	cl, al
	movsx	eax, cl
	add	eax, 1
	cmp	eax, 1
	jl	.label_389
.label_386:
	nop	
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	cl, al
	movsx	eax, cl
	mov	rsp, rsp
	add	eax, 1
	cmp	eax, -0x80
	mov	rbp, rbp
	jl	.label_389
	mov	rsp, rsp
	mov	eax, 0x7f
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	mov	dl, cl
	mov	rsp, rsp
	movsx	ecx, dl
	mov	rbp, rbp
	add	ecx, 1
	mov	rsp, rsp
	cmp	eax, ecx
	mov	rbp, rbp
	jge	.label_812
.label_389:
	lea	rdi, [rdi]
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	nop	
	mov	dl, cl
	lea	rdi, [rdi]
	movsx	ecx, dl
	add	ecx, 1
	mov	dl, cl
	mov	rsp, rsp
	movsx	ecx, dl
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], ecx
	mov	rsp, rsp
	test	al, 1
	jne	.label_406
	lea	rsi, [rsi]
	jmp	.label_425
.label_812:
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	dl, al
	mov	rsp, rsp
	movsx	eax, dl
	lea	rsi, [rsi]
	add	eax, 1
	nop	
	mov	dl, al
	movsx	eax, dl
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], eax
	mov	rbp, rbp
	test	cl, 1
	jne	.label_406
	mov	rbp, rbp
	jmp	.label_425
.label_768:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	nop	
	jne	.label_445
	mov	rsp, rsp
	jmp	.label_450
.label_445:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	jne	.label_453
	nop	
	jmp	.label_457
.label_453:
	cmp	dword ptr [dword ptr [chars_per_column]],  0x7fffffff
	jl	.label_458
	jmp	.label_463
.label_457:
	mov	eax, 0x7ffffffe
	lea	rdi, [rdi]
	cmp	eax,  dword ptr [dword ptr [chars_per_column]]
	jl	.label_458
	jmp	.label_463
.label_450:
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [chars_per_column]],  0
	jge	.label_469
	mov	rsp, rsp
	mov	eax, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	lea	rsi, [rsi]
	add	ecx, 1
	mov	rsp, rsp
	cmp	eax, ecx
	jle	.label_458
	jmp	.label_463
.label_469:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	nop	
	jne	.label_483
	jmp	.label_491
.label_483:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	lea	rsi, [rsi]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_458
	jmp	.label_463
.label_491:
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	add	eax, 1
	cmp	eax, 1
	jl	.label_458
.label_463:
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	nop	
	add	eax, 1
	lea	rsi, [rsi]
	cmp	eax, -0x80
	jl	.label_458
	mov	eax, 0x7f
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	cmp	eax, ecx
	jge	.label_514
.label_458:
	mov	al, 1
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	mov	rsp, rsp
	add	ecx, 1
	mov	dl, cl
	lea	rdi, [rdi]
	movsx	ecx, dl
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], ecx
	test	al, 1
	mov	rsp, rsp
	jne	.label_406
	jmp	.label_425
.label_514:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	lea	rdi, [rdi]
	add	eax, 1
	nop	
	mov	dl, al
	mov	rsp, rsp
	movsx	eax, dl
	nop	
	mov	dword ptr [rbp - 0xc], eax
	lea	rdi, [rdi]
	test	cl, 1
	nop	
	jne	.label_406
	jmp	.label_425
.label_764:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_732
	mov	rbp, rbp
	jmp	.label_539
.label_732:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	nop	
	jne	.label_543
	jmp	.label_547
.label_543:
	lea	rdi, [rdi]
	mov	al, 1
	nop	
	test	al, 1
	mov	rsp, rsp
	jne	.label_548
	jmp	.label_552
.label_548:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_553
	lea	rsi, [rsi]
	jmp	.label_561
.label_553:
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	lea	rdi, [rdi]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0x7fffffff
	jl	.label_564
	jmp	.label_569
.label_561:
	mov	eax, 0x7ffffffe
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	mov	dx, cx
	nop	
	movsx	ecx, dx
	nop	
	cmp	eax, ecx
	lea	rsi, [rsi]
	jl	.label_564
	lea	rsi, [rsi]
	jmp	.label_569
.label_552:
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	rbp, rbp
	mov	cx, ax
	nop	
	movsx	eax, cx
	cmp	eax, 0
	jge	.label_582
	mov	eax, 1
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	mov	dx, cx
	movsx	ecx, dx
	lea	rdi, [rdi]
	add	ecx, 1
	cmp	eax, ecx
	mov	rbp, rbp
	jle	.label_564
	nop	
	jmp	.label_569
.label_582:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_600
	mov	rbp, rbp
	jmp	.label_606
.label_600:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	cx, ax
	nop	
	movsx	eax, cx
	mov	rbp, rbp
	mov	edx,  dword ptr [dword ptr [chars_per_column]]
	lea	rdi, [rdi]
	mov	cx, dx
	movsx	edx, cx
	add	edx, 1
	nop	
	cmp	eax, edx
	lea	rdi, [rdi]
	jle	.label_564
	jmp	.label_569
.label_606:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	rbp, rbp
	mov	cx, ax
	movsx	eax, cx
	add	eax, 1
	nop	
	cmp	eax, 1
	jl	.label_564
.label_569:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	nop	
	mov	cx, ax
	nop	
	movsx	eax, cx
	lea	rsi, [rsi]
	add	eax, 1
	cmp	eax, 0xffff8000
	jl	.label_564
	mov	eax, 0x7fff
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	mov	dx, cx
	movsx	ecx, dx
	nop	
	add	ecx, 1
	cmp	eax, ecx
	jge	.label_597
.label_564:
	mov	al, 1
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	mov	rsp, rsp
	mov	dx, cx
	lea	rdi, [rdi]
	movsx	ecx, dx
	nop	
	add	ecx, 1
	mov	dx, cx
	lea	rdi, [rdi]
	movsx	ecx, dx
	mov	dword ptr [rbp - 0xc], ecx
	mov	rbp, rbp
	test	al, 1
	mov	rsp, rsp
	jne	.label_406
	nop	
	jmp	.label_425
.label_597:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	dx, ax
	movsx	eax, dx
	lea	rdi, [rdi]
	add	eax, 1
	mov	rbp, rbp
	mov	dx, ax
	movsx	eax, dx
	mov	dword ptr [rbp - 0xc], eax
	test	cl, 1
	jne	.label_406
	jmp	.label_425
.label_547:
	mov	rsp, rsp
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_652
	jmp	.label_655
.label_652:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_656
	jmp	.label_659
.label_656:
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [chars_per_column]],  0x7fffffff
	mov	rsp, rsp
	jl	.label_662
	jmp	.label_670
.label_659:
	mov	rbp, rbp
	mov	eax, 0x7ffffffe
	cmp	eax,  dword ptr [dword ptr [chars_per_column]]
	jl	.label_662
	mov	rsp, rsp
	jmp	.label_670
.label_655:
	cmp	dword ptr [dword ptr [chars_per_column]],  0
	jge	.label_677
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	nop	
	add	ecx, 1
	mov	rsp, rsp
	cmp	eax, ecx
	lea	rsi, [rsi]
	jle	.label_662
	mov	rsp, rsp
	jmp	.label_670
.label_677:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	mov	rbp, rbp
	jne	.label_686
	jmp	.label_779
.label_686:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	mov	rsp, rsp
	cmp	eax, ecx
	jle	.label_662
	jmp	.label_670
.label_779:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	lea	rdi, [rdi]
	add	eax, 1
	cmp	eax, 1
	nop	
	jl	.label_662
.label_670:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	add	eax, 1
	cmp	eax, 0xffff8000
	jl	.label_662
	lea	rsi, [rsi]
	mov	eax, 0x7fff
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	lea	rdi, [rdi]
	cmp	eax, ecx
	jge	.label_701
.label_662:
	mov	al, 1
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	nop	
	mov	dx, cx
	lea	rdi, [rdi]
	movsx	ecx, dx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], ecx
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_406
	jmp	.label_425
.label_701:
	xor	eax, eax
	mov	cl, al
	nop	
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	rbp, rbp
	add	eax, 1
	lea	rdi, [rdi]
	mov	dx, ax
	movsx	eax, dx
	mov	dword ptr [rbp - 0xc], eax
	test	cl, 1
	jne	.label_406
	lea	rdi, [rdi]
	jmp	.label_425
.label_539:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	jne	.label_721
	jmp	.label_726
.label_721:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_727
	jmp	.label_729
.label_727:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	jne	.label_731
	mov	rbp, rbp
	jmp	.label_697
.label_731:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_734
	jmp	.label_737
.label_734:
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [chars_per_column]],  0x7fffffff
	nop	
	jl	.label_738
	mov	rsp, rsp
	jmp	.label_523
.label_737:
	mov	eax, 0x7ffffffe
	lea	rsi, [rsi]
	cmp	eax,  dword ptr [dword ptr [chars_per_column]]
	jl	.label_738
	jmp	.label_523
.label_697:
	cmp	dword ptr [dword ptr [chars_per_column]],  0
	jge	.label_746
	mov	eax, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	mov	rsp, rsp
	add	ecx, 1
	cmp	eax, ecx
	lea	rdi, [rdi]
	jle	.label_738
	jmp	.label_523
.label_746:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_756
	jmp	.label_762
.label_756:
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	lea	rdi, [rdi]
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	lea	rsi, [rsi]
	add	ecx, 1
	cmp	eax, ecx
	lea	rdi, [rdi]
	jle	.label_738
	mov	rbp, rbp
	jmp	.label_523
.label_762:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	rsp, rsp
	add	eax, 1
	mov	rbp, rbp
	cmp	eax, 1
	lea	rdi, [rdi]
	jl	.label_738
.label_523:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	lea	rdi, [rdi]
	add	eax, 1
	cmp	eax, 0x80000000
	nop	
	jl	.label_738
	mov	rsp, rsp
	mov	eax, 0x7fffffff
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	lea	rdi, [rdi]
	add	ecx, 1
	lea	rsi, [rsi]
	cmp	eax, ecx
	lea	rdi, [rdi]
	jge	.label_785
.label_738:
	nop	
	mov	al, 1
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], ecx
	test	al, 1
	mov	rsp, rsp
	jne	.label_406
	lea	rsi, [rsi]
	jmp	.label_425
.label_785:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	lea	rdi, [rdi]
	add	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_406
	jmp	.label_425
.label_729:
	mov	al, 1
	test	al, 1
	jne	.label_804
	jmp	.label_807
.label_804:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_809
	mov	rbp, rbp
	jmp	.label_815
.label_809:
	nop	
	cmp	dword ptr [dword ptr [chars_per_column]],  0x7fffffff
	lea	rdi, [rdi]
	jl	.label_382
	mov	rbp, rbp
	jmp	.label_412
.label_815:
	lea	rdi, [rdi]
	mov	eax, 0x7ffffffe
	mov	rsp, rsp
	cmp	eax,  dword ptr [dword ptr [chars_per_column]]
	jl	.label_382
	mov	rbp, rbp
	jmp	.label_412
.label_807:
	cmp	dword ptr [dword ptr [chars_per_column]],  0
	jge	.label_436
	mov	eax, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	mov	rsp, rsp
	add	ecx, 1
	cmp	eax, ecx
	lea	rdi, [rdi]
	jle	.label_382
	mov	rbp, rbp
	jmp	.label_412
.label_436:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_518
	lea	rsi, [rsi]
	jmp	.label_415
.label_518:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	lea	rdi, [rdi]
	add	ecx, 1
	mov	rsp, rsp
	cmp	eax, ecx
	jle	.label_382
	jmp	.label_412
.label_415:
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	add	eax, 1
	cmp	eax, 1
	mov	rbp, rbp
	jl	.label_382
.label_412:
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	add	eax, 1
	lea	rsi, [rsi]
	cmp	eax, 0x80000000
	jl	.label_382
	nop	
	mov	eax, 0x7fffffff
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	lea	rdi, [rdi]
	add	ecx, 1
	cmp	eax, ecx
	jge	.label_435
.label_382:
	nop	
	mov	al, 1
	nop	
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	lea	rdi, [rdi]
	add	ecx, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], ecx
	mov	rsp, rsp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_406
	jmp	.label_425
.label_435:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	test	cl, 1
	jne	.label_406
	mov	rsp, rsp
	jmp	.label_425
.label_726:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	mov	rbp, rbp
	jne	.label_464
	mov	rsp, rsp
	jmp	.label_596
.label_464:
	lea	rsi, [rsi]
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_471
	lea	rsi, [rsi]
	jmp	.label_476
.label_471:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_479
	jmp	.label_446
.label_479:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_485
	jmp	.label_493
.label_485:
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	movsxd	rcx,  dword ptr [dword ptr [chars_per_column]]
	cmp	rcx, rax
	lea	rsi, [rsi]
	jl	.label_398
	jmp	.label_504
.label_493:
	lea	rsi, [rsi]
	movabs	rax, 0x7ffffffffffffffe
	lea	rdi, [rdi]
	movsxd	rcx,  dword ptr [dword ptr [chars_per_column]]
	nop	
	cmp	rax, rcx
	jl	.label_398
	nop	
	jmp	.label_504
.label_446:
	lea	rdi, [rdi]
	movsxd	rax,  dword ptr [dword ptr [chars_per_column]]
	cmp	rax, 0
	jge	.label_515
	mov	eax, 1
	nop	
	mov	ecx, eax
	nop	
	movsxd	rdx,  dword ptr [dword ptr [chars_per_column]]
	add	rdx, 1
	cmp	rcx, rdx
	nop	
	jle	.label_398
	mov	rsp, rsp
	jmp	.label_504
.label_515:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_529
	nop	
	jmp	.label_533
.label_529:
	nop	
	movsxd	rax,  dword ptr [dword ptr [chars_per_column]]
	lea	rsi, [rsi]
	movsxd	rcx,  dword ptr [dword ptr [chars_per_column]]
	add	rcx, 1
	cmp	rax, rcx
	jle	.label_398
	jmp	.label_504
.label_533:
	mov	rbp, rbp
	movsxd	rax,  dword ptr [dword ptr [chars_per_column]]
	add	rax, 1
	cmp	rax, 1
	jl	.label_398
.label_504:
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	movsxd	rcx,  dword ptr [dword ptr [chars_per_column]]
	add	rcx, 1
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_398
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx,  dword ptr [dword ptr [chars_per_column]]
	lea	rdi, [rdi]
	add	rcx, 1
	lea	rsi, [rsi]
	cmp	rax, rcx
	nop	
	jge	.label_811
.label_398:
	mov	al, 1
	movsxd	rcx,  dword ptr [dword ptr [chars_per_column]]
	add	rcx, 1
	mov	edx, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], edx
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_406
	jmp	.label_425
.label_811:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	movsxd	rdx,  dword ptr [dword ptr [chars_per_column]]
	add	rdx, 1
	mov	eax, edx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_406
	nop	
	jmp	.label_425
.label_476:
	mov	rbp, rbp
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_583
	mov	rbp, rbp
	jmp	.label_587
.label_583:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_590
	mov	rbp, rbp
	jmp	.label_593
.label_590:
	cmp	dword ptr [dword ptr [chars_per_column]],  0x7fffffff
	mov	rbp, rbp
	jl	.label_510
	mov	rsp, rsp
	jmp	.label_603
.label_593:
	lea	rsi, [rsi]
	mov	eax, 0x7ffffffe
	mov	rsp, rsp
	cmp	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	rsp, rsp
	jl	.label_510
	jmp	.label_603
.label_587:
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [chars_per_column]],  0
	nop	
	jge	.label_612
	nop	
	mov	eax, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	cmp	eax, ecx
	lea	rsi, [rsi]
	jle	.label_510
	jmp	.label_603
.label_612:
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_621
	lea	rdi, [rdi]
	jmp	.label_625
.label_621:
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	lea	rdi, [rdi]
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	cmp	eax, ecx
	lea	rdi, [rdi]
	jle	.label_510
	jmp	.label_603
.label_625:
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	rbp, rbp
	add	eax, 1
	cmp	eax, 1
	jl	.label_510
.label_603:
	movabs	rax, 0x8000000000000000
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	movsxd	rdx, ecx
	mov	rbp, rbp
	cmp	rdx, rax
	lea	rdi, [rdi]
	jl	.label_510
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	mov	rbp, rbp
	cmp	rax, rdx
	lea	rdi, [rdi]
	jge	.label_653
.label_510:
	mov	al, 1
	lea	rsi, [rsi]
	movsxd	rcx,  dword ptr [dword ptr [chars_per_column]]
	mov	rsp, rsp
	add	rcx, 1
	mov	edx, ecx
	mov	dword ptr [rbp - 0xc], edx
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_406
	jmp	.label_425
.label_653:
	nop	
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	movsxd	rdx,  dword ptr [dword ptr [chars_per_column]]
	add	rdx, 1
	mov	rbp, rbp
	mov	eax, edx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_406
	jmp	.label_425
.label_596:
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_664
	jmp	.label_674
.label_664:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	jne	.label_676
	nop	
	jmp	.label_679
.label_676:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_680
	mov	rsp, rsp
	jmp	.label_577
.label_680:
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	movsxd	rcx,  dword ptr [dword ptr [chars_per_column]]
	mov	rbp, rbp
	cmp	rcx, rax
	jl	.label_531
	jmp	.label_647
.label_577:
	movabs	rax, 0x7ffffffffffffffe
	lea	rsi, [rsi]
	movsxd	rcx,  dword ptr [dword ptr [chars_per_column]]
	cmp	rax, rcx
	jl	.label_531
	lea	rsi, [rsi]
	jmp	.label_647
.label_679:
	movsxd	rax,  dword ptr [dword ptr [chars_per_column]]
	lea	rdi, [rdi]
	cmp	rax, 0
	jge	.label_694
	lea	rdi, [rdi]
	mov	eax, 1
	mov	ecx, eax
	movsxd	rdx,  dword ptr [dword ptr [chars_per_column]]
	add	rdx, 1
	mov	rbp, rbp
	cmp	rcx, rdx
	lea	rdi, [rdi]
	jle	.label_531
	jmp	.label_647
.label_694:
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_488
	nop	
	jmp	.label_525
.label_488:
	movsxd	rax,  dword ptr [dword ptr [chars_per_column]]
	lea	rsi, [rsi]
	movsxd	rcx,  dword ptr [dword ptr [chars_per_column]]
	mov	rbp, rbp
	add	rcx, 1
	mov	rbp, rbp
	cmp	rax, rcx
	jle	.label_531
	jmp	.label_647
.label_525:
	movsxd	rax,  dword ptr [dword ptr [chars_per_column]]
	add	rax, 1
	cmp	rax, 1
	jl	.label_531
.label_647:
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	movsxd	rcx,  dword ptr [dword ptr [chars_per_column]]
	add	rcx, 1
	cmp	rcx, rax
	jl	.label_531
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx,  dword ptr [dword ptr [chars_per_column]]
	add	rcx, 1
	cmp	rax, rcx
	mov	rbp, rbp
	jge	.label_725
.label_531:
	mov	al, 1
	movsxd	rcx,  dword ptr [dword ptr [chars_per_column]]
	add	rcx, 1
	lea	rdi, [rdi]
	mov	edx, ecx
	mov	dword ptr [rbp - 0xc], edx
	test	al, 1
	jne	.label_406
	jmp	.label_425
.label_725:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	movsxd	rdx,  dword ptr [dword ptr [chars_per_column]]
	lea	rsi, [rsi]
	add	rdx, 1
	mov	eax, edx
	mov	dword ptr [rbp - 0xc], eax
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_406
	lea	rsi, [rsi]
	jmp	.label_425
.label_674:
	mov	al, 1
	nop	
	test	al, 1
	jne	.label_744
	jmp	.label_748
.label_744:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	nop	
	jne	.label_749
	mov	rbp, rbp
	jmp	.label_751
.label_749:
	nop	
	cmp	dword ptr [dword ptr [chars_per_column]],  0x7fffffff
	jl	.label_448
	lea	rsi, [rsi]
	jmp	.label_470
.label_751:
	mov	eax, 0x7ffffffe
	cmp	eax,  dword ptr [dword ptr [chars_per_column]]
	jl	.label_448
	lea	rdi, [rdi]
	jmp	.label_470
.label_748:
	cmp	dword ptr [dword ptr [chars_per_column]],  0
	mov	rbp, rbp
	jge	.label_765
	mov	eax, 1
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	cmp	eax, ecx
	jle	.label_448
	jmp	.label_470
.label_765:
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_774
	lea	rdi, [rdi]
	jmp	.label_648
.label_774:
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	lea	rdi, [rdi]
	add	ecx, 1
	mov	rbp, rbp
	cmp	eax, ecx
	lea	rsi, [rsi]
	jle	.label_448
	lea	rsi, [rsi]
	jmp	.label_470
.label_648:
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	add	eax, 1
	cmp	eax, 1
	jl	.label_448
.label_470:
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	add	ecx, 1
	mov	rsp, rsp
	movsxd	rdx, ecx
	cmp	rdx, rax
	jl	.label_448
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [chars_per_column]]
	lea	rsi, [rsi]
	add	ecx, 1
	movsxd	rdx, ecx
	lea	rdi, [rdi]
	cmp	rax, rdx
	jge	.label_796
.label_448:
	mov	al, 1
	movsxd	rcx,  dword ptr [dword ptr [chars_per_column]]
	add	rcx, 1
	mov	rsp, rsp
	mov	edx, ecx
	mov	dword ptr [rbp - 0xc], edx
	nop	
	test	al, 1
	jne	.label_406
	jmp	.label_425
.label_796:
	xor	eax, eax
	mov	cl, al
	movsxd	rdx,  dword ptr [dword ptr [chars_per_column]]
	mov	rbp, rbp
	add	rdx, 1
	mov	eax, edx
	mov	dword ptr [rbp - 0xc], eax
	lea	rdi, [rdi]
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_406
.label_425:
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_390
	lea	rdi, [rdi]
	jmp	.label_403
.label_390:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	nop	
	jne	.label_405
	lea	rdi, [rdi]
	jmp	.label_482
.label_405:
	mov	eax, dword ptr [rbp - 0xc]
	nop	
	mov	cl, al
	mov	rbp, rbp
	movsx	eax, cl
	mov	rsp, rsp
	cmp	eax, 0
	nop	
	jge	.label_498
	mov	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	cl, al
	mov	rbp, rbp
	movsx	eax, cl
	lea	rsi, [rsi]
	cmp	eax, 0
	jge	.label_414
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 4]
	nop	
	mov	dl, cl
	mov	rbp, rbp
	movsx	ecx, dl
	mov	esi, dword ptr [rbp - 0xc]
	mov	dl, sil
	movsx	esi, dl
	cdq	
	mov	rsp, rsp
	idiv	esi
	cmp	ecx, eax
	jl	.label_421
	lea	rdi, [rdi]
	jmp	.label_428
.label_414:
	mov	eax, dword ptr [rbp - 0xc]
	mov	cl, al
	movsx	eax, cl
	cmp	eax, -1
	nop	
	jne	.label_430
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_421
	jmp	.label_428
.label_430:
	lea	rsi, [rsi]
	mov	eax, 0x80000000
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	dl, cl
	lea	rsi, [rsi]
	movsx	ecx, dl
	nop	
	cdq	
	mov	rsp, rsp
	idiv	ecx
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 4]
	mov	rbp, rbp
	mov	sil, cl
	lea	rdi, [rdi]
	movsx	ecx, sil
	nop	
	cmp	eax, ecx
	jl	.label_421
	mov	rsp, rsp
	jmp	.label_428
.label_498:
	nop	
	mov	eax, dword ptr [rbp - 0xc]
	mov	cl, al
	movsx	eax, cl
	cmp	eax, 0
	nop	
	jne	.label_459
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_421
	jmp	.label_428
.label_459:
	mov	eax, dword ptr [rbp - 4]
	mov	cl, al
	movsx	eax, cl
	lea	rdi, [rdi]
	cmp	eax, 0
	jge	.label_468
	lea	rdi, [rdi]
	mov	eax, 0x80000000
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 4]
	mov	rbp, rbp
	mov	dl, cl
	lea	rdi, [rdi]
	movsx	ecx, dl
	mov	esi, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	dl, sil
	mov	rbp, rbp
	movsx	esi, dl
	lea	rdi, [rdi]
	cdq	
	idiv	esi
	mov	rsp, rsp
	cmp	ecx, eax
	jl	.label_421
	jmp	.label_428
.label_468:
	mov	rbp, rbp
	mov	eax, 0x7fffffff
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0xc]
	mov	dl, cl
	lea	rdi, [rdi]
	movsx	ecx, dl
	mov	rsp, rsp
	cdq	
	lea	rsi, [rsi]
	idiv	ecx
	nop	
	mov	ecx, dword ptr [rbp - 4]
	mov	rbp, rbp
	mov	sil, cl
	movsx	ecx, sil
	mov	rbp, rbp
	cmp	eax, ecx
	lea	rdi, [rdi]
	jl	.label_421
.label_428:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	mov	cl, al
	movsx	eax, cl
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	mov	cl, dl
	movsx	edx, cl
	imul	eax, edx
	lea	rsi, [rsi]
	cmp	eax, -0x80
	lea	rdi, [rdi]
	jl	.label_421
	mov	eax, 0x7f
	mov	ecx, dword ptr [rbp - 4]
	mov	rsp, rsp
	mov	dl, cl
	lea	rdi, [rdi]
	movsx	ecx, dl
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0xc]
	mov	dl, sil
	lea	rdi, [rdi]
	movsx	esi, dl
	imul	ecx, esi
	nop	
	cmp	eax, ecx
	jge	.label_633
.label_421:
	lea	rdi, [rdi]
	mov	al, 1
	mov	ecx, dword ptr [rbp - 4]
	nop	
	mov	dl, cl
	mov	rsp, rsp
	movsx	ecx, dl
	mov	esi, dword ptr [rbp - 0xc]
	nop	
	mov	dl, sil
	movsx	esi, dl
	mov	rsp, rsp
	imul	ecx, esi
	mov	dl, cl
	lea	rsi, [rsi]
	movsx	ecx, dl
	mov	dword ptr [rbp - 0x10], ecx
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_406
	jmp	.label_385
.label_633:
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	nop	
	mov	dl, al
	lea	rsi, [rsi]
	movsx	eax, dl
	mov	esi, dword ptr [rbp - 0xc]
	mov	dl, sil
	mov	rsp, rsp
	movsx	esi, dl
	nop	
	imul	eax, esi
	mov	dl, al
	movsx	eax, dl
	mov	dword ptr [rbp - 0x10], eax
	lea	rsi, [rsi]
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_406
	jmp	.label_385
.label_482:
	cmp	dword ptr [rbp - 0xc], 0
	jge	.label_554
	cmp	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jge	.label_558
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 4]
	nop	
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	ecx, eax
	mov	rsp, rsp
	jl	.label_495
	mov	rbp, rbp
	jmp	.label_567
.label_558:
	cmp	dword ptr [rbp - 0xc], -1
	jne	.label_475
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_495
	nop	
	jmp	.label_567
.label_475:
	mov	rbp, rbp
	mov	eax, 0x80000000
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	jl	.label_495
	jmp	.label_567
.label_554:
	cmp	dword ptr [rbp - 0xc], 0
	mov	rbp, rbp
	jne	.label_584
	nop	
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_495
	lea	rsi, [rsi]
	jmp	.label_567
.label_584:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 0
	mov	rsp, rsp
	jge	.label_592
	lea	rsi, [rsi]
	mov	eax, 0x80000000
	mov	ecx, dword ptr [rbp - 4]
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	ecx, eax
	jl	.label_495
	lea	rdi, [rdi]
	jmp	.label_567
.label_592:
	mov	rbp, rbp
	mov	eax, 0x7fffffff
	cdq	
	mov	rsp, rsp
	idiv	dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	jl	.label_495
.label_567:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	imul	eax, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	cmp	eax, -0x80
	mov	rbp, rbp
	jl	.label_495
	mov	eax, 0x7f
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 4]
	imul	ecx, dword ptr [rbp - 0xc]
	cmp	eax, ecx
	jge	.label_619
.label_495:
	lea	rsi, [rsi]
	mov	al, 1
	mov	ecx, dword ptr [rbp - 4]
	imul	ecx, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	dl, cl
	movsx	ecx, dl
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10], ecx
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_406
	mov	rbp, rbp
	jmp	.label_385
.label_619:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	imul	eax, dword ptr [rbp - 0xc]
	mov	dl, al
	movsx	eax, dl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], eax
	test	cl, 1
	jne	.label_406
	jmp	.label_385
.label_403:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	mov	rsp, rsp
	jne	.label_638
	jmp	.label_640
.label_638:
	nop	
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	jne	.label_474
	mov	rsp, rsp
	jmp	.label_710
.label_474:
	nop	
	mov	eax, dword ptr [rbp - 0xc]
	mov	cx, ax
	mov	rbp, rbp
	movsx	eax, cx
	cmp	eax, 0
	jge	.label_645
	mov	eax, dword ptr [rbp - 4]
	mov	cx, ax
	lea	rsi, [rsi]
	movsx	eax, cx
	cmp	eax, 0
	mov	rsp, rsp
	jge	.label_649
	mov	eax, 0x7fffffff
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	dx, cx
	nop	
	movsx	ecx, dx
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0xc]
	mov	dx, si
	lea	rdi, [rdi]
	movsx	esi, dx
	lea	rsi, [rsi]
	cdq	
	idiv	esi
	mov	rbp, rbp
	cmp	ecx, eax
	jl	.label_573
	jmp	.label_641
.label_649:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	mov	cx, ax
	mov	rbp, rbp
	movsx	eax, cx
	lea	rdi, [rdi]
	cmp	eax, -1
	jne	.label_665
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_573
	jmp	.label_641
.label_665:
	mov	eax, 0x80000000
	nop	
	mov	ecx, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	dx, cx
	mov	rsp, rsp
	movsx	ecx, dx
	nop	
	cdq	
	nop	
	idiv	ecx
	mov	ecx, dword ptr [rbp - 4]
	mov	si, cx
	mov	rbp, rbp
	movsx	ecx, si
	cmp	eax, ecx
	jl	.label_573
	jmp	.label_641
.label_645:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xc]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	jne	.label_754
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_573
	mov	rsp, rsp
	jmp	.label_641
.label_754:
	nop	
	mov	eax, dword ptr [rbp - 4]
	mov	cx, ax
	movsx	eax, cx
	lea	rsi, [rsi]
	cmp	eax, 0
	jge	.label_693
	mov	rbp, rbp
	mov	eax, 0x80000000
	mov	ecx, dword ptr [rbp - 4]
	mov	rsp, rsp
	mov	dx, cx
	movsx	ecx, dx
	mov	esi, dword ptr [rbp - 0xc]
	mov	dx, si
	movsx	esi, dx
	mov	rsp, rsp
	cdq	
	idiv	esi
	cmp	ecx, eax
	jl	.label_573
	jmp	.label_641
.label_693:
	lea	rdi, [rdi]
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 0xc]
	mov	dx, cx
	nop	
	movsx	ecx, dx
	cdq	
	idiv	ecx
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 4]
	mov	rsp, rsp
	mov	si, cx
	mov	rbp, rbp
	movsx	ecx, si
	cmp	eax, ecx
	jl	.label_573
.label_641:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 4]
	nop	
	mov	cx, ax
	movsx	eax, cx
	mov	edx, dword ptr [rbp - 0xc]
	mov	cx, dx
	movsx	edx, cx
	imul	eax, edx
	mov	rbp, rbp
	cmp	eax, 0xffff8000
	jl	.label_573
	mov	rsp, rsp
	mov	eax, 0x7fff
	mov	ecx, dword ptr [rbp - 4]
	mov	rbp, rbp
	mov	dx, cx
	movsx	ecx, dx
	mov	esi, dword ptr [rbp - 0xc]
	mov	dx, si
	movsx	esi, dx
	imul	ecx, esi
	nop	
	cmp	eax, ecx
	jge	.label_755
.label_573:
	mov	rbp, rbp
	mov	al, 1
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	dx, cx
	nop	
	movsx	ecx, dx
	mov	esi, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	mov	dx, si
	movsx	esi, dx
	imul	ecx, esi
	mov	rsp, rsp
	mov	dx, cx
	nop	
	movsx	ecx, dx
	mov	dword ptr [rbp - 0x10], ecx
	test	al, 1
	nop	
	jne	.label_406
	jmp	.label_385
.label_755:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 4]
	nop	
	mov	dx, ax
	nop	
	movsx	eax, dx
	mov	esi, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	mov	dx, si
	lea	rdi, [rdi]
	movsx	esi, dx
	imul	eax, esi
	mov	dx, ax
	movsx	eax, dx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10], eax
	mov	rsp, rsp
	test	cl, 1
	jne	.label_406
	mov	rbp, rbp
	jmp	.label_385
.label_710:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xc], 0
	lea	rdi, [rdi]
	jge	.label_745
	mov	rbp, rbp
	cmp	dword ptr [rbp - 4], 0
	mov	rbp, rbp
	jge	.label_750
	lea	rsi, [rsi]
	mov	eax, 0x7fffffff
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 4]
	nop	
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	ecx, eax
	jl	.label_620
	jmp	.label_663
.label_750:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xc], -1
	mov	rsp, rsp
	jne	.label_760
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_620
	nop	
	jmp	.label_663
.label_760:
	mov	eax, 0x80000000
	cdq	
	nop	
	idiv	dword ptr [rbp - 0xc]
	cmp	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	jl	.label_620
	jmp	.label_663
.label_745:
	nop	
	cmp	dword ptr [rbp - 0xc], 0
	jne	.label_775
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	jne	.label_620
	jmp	.label_663
.label_775:
	cmp	dword ptr [rbp - 4], 0
	jge	.label_784
	mov	rbp, rbp
	mov	eax, 0x80000000
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 4]
	mov	rbp, rbp
	cdq	
	lea	rdi, [rdi]
	idiv	dword ptr [rbp - 0xc]
	mov	rbp, rbp
	cmp	ecx, eax
	mov	rsp, rsp
	jl	.label_620
	jmp	.label_663
.label_784:
	mov	eax, 0x7fffffff
	nop	
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	eax, dword ptr [rbp - 4]
	jl	.label_620
.label_663:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	imul	eax, dword ptr [rbp - 0xc]
	cmp	eax, 0xffff8000
	jl	.label_620
	lea	rdi, [rdi]
	mov	eax, 0x7fff
	nop	
	mov	ecx, dword ptr [rbp - 4]
	nop	
	imul	ecx, dword ptr [rbp - 0xc]
	cmp	eax, ecx
	lea	rdi, [rdi]
	jge	.label_706
.label_620:
	mov	al, 1
	nop	
	mov	ecx, dword ptr [rbp - 4]
	imul	ecx, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	mov	dx, cx
	movsx	ecx, dx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x10], ecx
	nop	
	test	al, 1
	mov	rbp, rbp
	jne	.label_406
	nop	
	jmp	.label_385
.label_706:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 4]
	imul	eax, dword ptr [rbp - 0xc]
	mov	dx, ax
	lea	rdi, [rdi]
	movsx	eax, dx
	mov	dword ptr [rbp - 0x10], eax
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_406
	jmp	.label_385
.label_640:
	nop	
	mov	al, 1
	test	al, 1
	jne	.label_388
	lea	rsi, [rsi]
	jmp	.label_395
.label_388:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_401
	jmp	.label_591
.label_401:
	cmp	dword ptr [rbp - 0xc], 0
	mov	rsp, rsp
	jge	.label_408
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 0
	jge	.label_411
	nop	
	mov	eax, 0x7fffffff
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 4]
	cdq	
	idiv	dword ptr [rbp - 0xc]
	nop	
	cmp	ecx, eax
	lea	rdi, [rdi]
	jl	.label_413
	jmp	.label_419
.label_411:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0xc], -1
	lea	rdi, [rdi]
	jne	.label_420
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_413
	lea	rsi, [rsi]
	jmp	.label_419
.label_420:
	mov	eax, 0x80000000
	lea	rdi, [rdi]
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	jl	.label_413
	jmp	.label_419
.label_408:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xc], 0
	lea	rdi, [rdi]
	jne	.label_433
	nop	
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_413
	nop	
	jmp	.label_419
.label_433:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 4], 0
	jge	.label_440
	mov	eax, 0x80000000
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 4]
	cdq	
	nop	
	idiv	dword ptr [rbp - 0xc]
	cmp	ecx, eax
	jl	.label_413
	nop	
	jmp	.label_419
.label_440:
	mov	eax, 0x7fffffff
	nop	
	cdq	
	mov	rsp, rsp
	idiv	dword ptr [rbp - 0xc]
	cmp	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	jl	.label_413
.label_419:
	mov	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	imul	eax, dword ptr [rbp - 0xc]
	cmp	eax, 0x80000000
	lea	rdi, [rdi]
	jl	.label_413
	mov	eax, 0x7fffffff
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 4]
	mov	rbp, rbp
	imul	ecx, dword ptr [rbp - 0xc]
	cmp	eax, ecx
	lea	rdi, [rdi]
	jge	.label_465
.label_413:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 4]
	imul	ecx, dword ptr [rbp - 0xc]
	nop	
	mov	dword ptr [rbp - 0x10], ecx
	mov	rsp, rsp
	test	al, 1
	jne	.label_406
	lea	rsi, [rsi]
	jmp	.label_385
.label_465:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 4]
	imul	eax, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x10], eax
	test	cl, 1
	mov	rsp, rsp
	jne	.label_406
	jmp	.label_385
.label_591:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xc], 0
	lea	rdi, [rdi]
	jge	.label_683
	cmp	dword ptr [rbp - 4], 0
	jge	.label_499
	lea	rsi, [rsi]
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 4]
	cdq	
	mov	rsp, rsp
	idiv	dword ptr [rbp - 0xc]
	nop	
	cmp	ecx, eax
	jl	.label_432
	lea	rsi, [rsi]
	jmp	.label_508
.label_499:
	cmp	dword ptr [rbp - 0xc], -1
	jne	.label_511
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	jne	.label_432
	jmp	.label_508
.label_511:
	mov	eax, 0x80000000
	lea	rdi, [rdi]
	cdq	
	mov	rbp, rbp
	idiv	dword ptr [rbp - 0xc]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 4]
	jl	.label_432
	nop	
	jmp	.label_508
.label_683:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0xc], 0
	lea	rsi, [rsi]
	jne	.label_526
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_432
	jmp	.label_508
.label_526:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 4], 0
	jge	.label_534
	mov	eax, 0x80000000
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 4]
	cdq	
	lea	rsi, [rsi]
	idiv	dword ptr [rbp - 0xc]
	cmp	ecx, eax
	nop	
	jl	.label_432
	lea	rdi, [rdi]
	jmp	.label_508
.label_534:
	nop	
	mov	eax, 0x7fffffff
	lea	rdi, [rdi]
	cdq	
	mov	rsp, rsp
	idiv	dword ptr [rbp - 0xc]
	cmp	eax, dword ptr [rbp - 4]
	jl	.label_432
.label_508:
	mov	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	imul	eax, dword ptr [rbp - 0xc]
	cmp	eax, 0x80000000
	jl	.label_432
	mov	eax, 0x7fffffff
	nop	
	mov	ecx, dword ptr [rbp - 4]
	imul	ecx, dword ptr [rbp - 0xc]
	cmp	eax, ecx
	lea	rdi, [rdi]
	jge	.label_549
.label_432:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 4]
	imul	ecx, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x10], ecx
	test	al, 1
	jne	.label_406
	mov	rsp, rsp
	jmp	.label_385
.label_549:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	eax, dword ptr [rbp - 4]
	imul	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], eax
	test	cl, 1
	nop	
	jne	.label_406
	mov	rbp, rbp
	jmp	.label_385
.label_395:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_506
	jmp	.label_576
.label_506:
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_578
	mov	rbp, rbp
	jmp	.label_555
.label_578:
	movsxd	rax, dword ptr [rbp - 0xc]
	cmp	rax, 0
	jge	.label_585
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 4]
	mov	rbp, rbp
	cmp	rax, 0
	jge	.label_695
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 4]
	mov	rbp, rbp
	movsxd	rdx, dword ptr [rbp - 0xc]
	mov	qword ptr [rbp - 0x38], rdx
	mov	rbp, rbp
	cqo	
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x38]
	idiv	rsi
	nop	
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_438
	mov	rsp, rsp
	jmp	.label_521
.label_695:
	movsxd	rax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	cmp	rax, -1
	jne	.label_611
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_438
	mov	rbp, rbp
	jmp	.label_521
.label_611:
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0xc]
	cqo	
	mov	rbp, rbp
	idiv	rcx
	movsxd	rcx, dword ptr [rbp - 4]
	cmp	rax, rcx
	jl	.label_438
	mov	rsp, rsp
	jmp	.label_521
.label_585:
	movsxd	rax, dword ptr [rbp - 0xc]
	cmp	rax, 0
	nop	
	jne	.label_628
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_438
	nop	
	jmp	.label_521
.label_628:
	movsxd	rax, dword ptr [rbp - 4]
	cmp	rax, 0
	mov	rsp, rsp
	jge	.label_791
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 4]
	movsxd	rdx, dword ptr [rbp - 0xc]
	mov	qword ptr [rbp - 0x40], rdx
	cqo	
	nop	
	mov	rsi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	idiv	rsi
	lea	rsi, [rsi]
	cmp	rcx, rax
	nop	
	jl	.label_438
	jmp	.label_521
.label_791:
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	cqo	
	nop	
	idiv	rcx
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 4]
	nop	
	cmp	rax, rcx
	lea	rsi, [rsi]
	jl	.label_438
.label_521:
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 4]
	mov	rbp, rbp
	movsxd	rdx, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	imul	rcx, rdx
	mov	rsp, rsp
	cmp	rcx, rax
	jl	.label_438
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 4]
	mov	rsp, rsp
	movsxd	rdx, dword ptr [rbp - 0xc]
	imul	rcx, rdx
	cmp	rax, rcx
	jge	.label_666
.label_438:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 4]
	movsxd	rdx, dword ptr [rbp - 0xc]
	imul	rcx, rdx
	mov	rbp, rbp
	mov	esi, ecx
	mov	dword ptr [rbp - 0x10], esi
	mov	rbp, rbp
	test	al, 1
	jne	.label_406
	lea	rdi, [rdi]
	jmp	.label_385
.label_666:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	movsxd	rdx, dword ptr [rbp - 4]
	movsxd	rsi, dword ptr [rbp - 0xc]
	imul	rdx, rsi
	nop	
	mov	eax, edx
	mov	dword ptr [rbp - 0x10], eax
	test	cl, 1
	mov	rbp, rbp
	jne	.label_406
	mov	rbp, rbp
	jmp	.label_385
.label_555:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xc], 0
	jge	.label_689
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jge	.label_609
	lea	rsi, [rsi]
	mov	eax, 0x7fffffff
	nop	
	mov	ecx, dword ptr [rbp - 4]
	nop	
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	ecx, eax
	lea	rsi, [rsi]
	jl	.label_466
	nop	
	jmp	.label_431
.label_609:
	cmp	dword ptr [rbp - 0xc], -1
	jne	.label_698
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_466
	mov	rsp, rsp
	jmp	.label_431
.label_698:
	lea	rdi, [rdi]
	mov	eax, 0x80000000
	cdq	
	idiv	dword ptr [rbp - 0xc]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 4]
	jl	.label_466
	lea	rdi, [rdi]
	jmp	.label_431
.label_689:
	nop	
	cmp	dword ptr [rbp - 0xc], 0
	jne	.label_672
	nop	
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_466
	lea	rsi, [rsi]
	jmp	.label_431
.label_672:
	cmp	dword ptr [rbp - 4], 0
	jge	.label_682
	lea	rsi, [rsi]
	mov	eax, 0x80000000
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	ecx, eax
	lea	rsi, [rsi]
	jl	.label_466
	jmp	.label_431
.label_682:
	mov	rsp, rsp
	mov	eax, 0x7fffffff
	mov	rbp, rbp
	cdq	
	mov	rbp, rbp
	idiv	dword ptr [rbp - 0xc]
	cmp	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	jl	.label_466
.label_431:
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	imul	ecx, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	movsxd	rdx, ecx
	cmp	rdx, rax
	lea	rsi, [rsi]
	jl	.label_466
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 4]
	imul	ecx, dword ptr [rbp - 0xc]
	nop	
	movsxd	rdx, ecx
	cmp	rax, rdx
	jge	.label_715
.label_466:
	mov	rbp, rbp
	mov	al, 1
	movsxd	rcx, dword ptr [rbp - 4]
	movsxd	rdx, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	imul	rcx, rdx
	lea	rdi, [rdi]
	mov	esi, ecx
	mov	dword ptr [rbp - 0x10], esi
	test	al, 1
	jne	.label_406
	mov	rsp, rsp
	jmp	.label_385
.label_715:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	movsxd	rdx, dword ptr [rbp - 4]
	movsxd	rsi, dword ptr [rbp - 0xc]
	imul	rdx, rsi
	mov	eax, edx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], eax
	mov	rbp, rbp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_406
	jmp	.label_385
.label_576:
	mov	rsp, rsp
	mov	al, 1
	test	al, 1
	jne	.label_758
	jmp	.label_763
.label_758:
	movsxd	rax, dword ptr [rbp - 0xc]
	cmp	rax, 0
	jge	.label_473
	movsxd	rax, dword ptr [rbp - 4]
	cmp	rax, 0
	jge	.label_500
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 4]
	movsxd	rdx, dword ptr [rbp - 0xc]
	nop	
	mov	qword ptr [rbp - 0x48], rdx
	cqo	
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x48]
	idiv	rsi
	nop	
	cmp	rcx, rax
	jl	.label_410
	mov	rbp, rbp
	jmp	.label_570
.label_500:
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0xc]
	cmp	rax, -1
	mov	rbp, rbp
	jne	.label_601
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_410
	lea	rdi, [rdi]
	jmp	.label_570
.label_601:
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 0xc]
	cqo	
	mov	rsp, rsp
	idiv	rcx
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jl	.label_410
	jmp	.label_570
.label_473:
	movsxd	rax, dword ptr [rbp - 0xc]
	cmp	rax, 0
	jne	.label_795
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	mov	rbp, rbp
	jne	.label_410
	nop	
	jmp	.label_570
.label_795:
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	cmp	rax, 0
	nop	
	jge	.label_806
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	movsxd	rdx, dword ptr [rbp - 0xc]
	mov	qword ptr [rbp - 0x50], rdx
	mov	rsp, rsp
	cqo	
	mov	rsi, qword ptr [rbp - 0x50]
	idiv	rsi
	lea	rdi, [rdi]
	cmp	rcx, rax
	lea	rsi, [rsi]
	jl	.label_410
	jmp	.label_570
.label_806:
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	cqo	
	idiv	rcx
	movsxd	rcx, dword ptr [rbp - 4]
	nop	
	cmp	rax, rcx
	jl	.label_410
.label_570:
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 4]
	movsxd	rdx, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	imul	rcx, rdx
	cmp	rcx, rax
	jl	.label_410
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 4]
	movsxd	rdx, dword ptr [rbp - 0xc]
	imul	rcx, rdx
	lea	rdi, [rdi]
	cmp	rax, rcx
	jge	.label_541
.label_410:
	mov	al, 1
	movsxd	rcx, dword ptr [rbp - 4]
	movsxd	rdx, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	imul	rcx, rdx
	mov	esi, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], esi
	test	al, 1
	mov	rbp, rbp
	jne	.label_406
	lea	rsi, [rsi]
	jmp	.label_385
.label_541:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	movsxd	rdx, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	movsxd	rsi, dword ptr [rbp - 0xc]
	imul	rdx, rsi
	mov	eax, edx
	nop	
	mov	dword ptr [rbp - 0x10], eax
	test	cl, 1
	jne	.label_406
	nop	
	jmp	.label_385
.label_763:
	cmp	dword ptr [rbp - 0xc], 0
	nop	
	jge	.label_443
	mov	rbp, rbp
	cmp	dword ptr [rbp - 4], 0
	nop	
	jge	.label_447
	mov	rbp, rbp
	mov	eax, 0x7fffffff
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 4]
	nop	
	cdq	
	idiv	dword ptr [rbp - 0xc]
	cmp	ecx, eax
	jl	.label_481
	jmp	.label_392
.label_447:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xc], -1
	lea	rdi, [rdi]
	jne	.label_460
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	jne	.label_481
	jmp	.label_392
.label_460:
	mov	eax, 0x80000000
	cdq	
	lea	rsi, [rsi]
	idiv	dword ptr [rbp - 0xc]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	jl	.label_481
	lea	rdi, [rdi]
	jmp	.label_392
.label_443:
	cmp	dword ptr [rbp - 0xc], 0
	jne	.label_477
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_481
	mov	rsp, rsp
	jmp	.label_392
.label_477:
	cmp	dword ptr [rbp - 4], 0
	mov	rbp, rbp
	jge	.label_489
	mov	eax, 0x80000000
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	cdq	
	idiv	dword ptr [rbp - 0xc]
	nop	
	cmp	ecx, eax
	nop	
	jl	.label_481
	mov	rbp, rbp
	jmp	.label_392
.label_489:
	mov	rsp, rsp
	mov	eax, 0x7fffffff
	cdq	
	mov	rsp, rsp
	idiv	dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	jl	.label_481
.label_392:
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	mov	ecx, dword ptr [rbp - 4]
	mov	rsp, rsp
	imul	ecx, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	cmp	rdx, rax
	jl	.label_481
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	mov	ecx, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	imul	ecx, dword ptr [rbp - 0xc]
	movsxd	rdx, ecx
	cmp	rax, rdx
	jge	.label_520
.label_481:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 4]
	movsxd	rdx, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	imul	rcx, rdx
	mov	rbp, rbp
	mov	esi, ecx
	mov	dword ptr [rbp - 0x10], esi
	test	al, 1
	jne	.label_406
	mov	rbp, rbp
	jmp	.label_385
.label_520:
	xor	eax, eax
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 4]
	movsxd	rsi, dword ptr [rbp - 0xc]
	imul	rdx, rsi
	mov	eax, edx
	mov	dword ptr [rbp - 0x10], eax
	test	cl, 1
	jne	.label_406
	jmp	.label_385
.label_406:
	mov	rbp, rbp
	call	integer_overflow
.label_385:
	nop	
	mov	rax,  qword ptr [word ptr [line_vector]]
	mov	rdi, rax
	mov	rbp, rbp
	call	free
	mov	ecx, 4
	mov	rsp, rsp
	mov	esi, ecx
	movsxd	rdi, dword ptr [rbp - 8]
	nop	
	call	xnmalloc
	mov	qword ptr [word ptr [line_vector]],  rax
	mov	rax,  qword ptr [word ptr [end_vector]]
	mov	rdi, rax
	call	free
	lea	rsi, [rsi]
	mov	ecx, 4
	mov	rsp, rsp
	mov	esi, ecx
	movsxd	rdi, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	call	xnmalloc
	mov	rsp, rsp
	mov	qword ptr [word ptr [end_vector]],  rax
	nop	
	mov	rdi,  qword ptr [word ptr [buff]]
	lea	rdi, [rdi]
	call	free
	movsxd	rdi, dword ptr [rbp - 0x10]
	mov	dl,  byte ptr [byte ptr [use_col_separator]]
	nop	
	and	dl, 1
	lea	rsi, [rsi]
	movzx	ecx, dl
	nop	
	add	ecx, 1
	movsxd	rsi, ecx
	call	xnmalloc
	mov	rbp, rbp
	mov	qword ptr [word ptr [buff]],  rax
	movsxd	rax, dword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [word ptr [buff_allocated]],  rax
	mov	dl,  byte ptr [byte ptr [use_col_separator]]
	and	dl, 1
	lea	rdi, [rdi]
	movzx	ecx, dl
	add	ecx, 1
	mov	rbp, rbp
	movsxd	rax, ecx
	imul	rax,  qword ptr [word ptr [buff_allocated]]
	mov	qword ptr [word ptr [buff_allocated]],  rax
	mov	rsp, rsp
	add	rsp, 0x50
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b370

	.globl skip_to_page
	.type skip_to_page, @function
skip_to_page:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], 1
.label_818:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	jae	.label_824
	mov	dword ptr [rbp - 0x20], 1
.label_837:
	mov	eax, dword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	eax,  dword ptr [dword ptr [lines_per_body]]
	jge	.label_830
	nop	
	mov	dword ptr [rbp - 0x1c], 1
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [column_vector]]
	nop	
	mov	qword ptr [rbp - 0x18], rax
.label_825:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1c]
	nop	
	cmp	eax,  dword ptr [dword ptr [columns]]
	lea	rdi, [rdi]
	jg	.label_826
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0x10], 0
	jne	.label_831
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	call	skip_read
.label_831:
	jmp	.label_823
.label_823:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	add	eax, 1
	mov	dword ptr [rbp - 0x1c], eax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rcx, 0x40
	mov	qword ptr [rbp - 0x18], rcx
	mov	rbp, rbp
	jmp	.label_825
.label_826:
	jmp	.label_835
.label_835:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x20]
	add	eax, 1
	mov	dword ptr [rbp - 0x20], eax
	jmp	.label_837
.label_830:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [last_line]],  1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], 1
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 0x18], rax
.label_829:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1c]
	cmp	eax,  dword ptr [dword ptr [columns]]
	jg	.label_834
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0x10], 0
	jne	.label_820
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x1c]
	call	skip_read
.label_820:
	jmp	.label_827
.label_827:
	mov	eax, dword ptr [rbp - 0x1c]
	add	eax, 1
	mov	dword ptr [rbp - 0x1c], eax
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x40
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rsp, rsp
	jmp	.label_829
.label_834:
	mov	rbp, rbp
	test	byte ptr [byte ptr [storing_columns]],  1
	lea	rsi, [rsi]
	je	.label_819
	nop	
	mov	dword ptr [rbp - 0x1c], 1
	mov	rax,  qword ptr [word ptr [column_vector]]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
.label_832:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	cmp	eax,  dword ptr [dword ptr [columns]]
	mov	rsp, rsp
	jg	.label_828
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	dword ptr [rax + 0x10], 3
	je	.label_822
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax + 0x10], 2
.label_822:
	jmp	.label_821
.label_821:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	add	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c], eax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x40
	mov	qword ptr [rbp - 0x18], rcx
	lea	rdi, [rdi]
	jmp	.label_832
.label_828:
	jmp	.label_819
.label_819:
	call	reset_status
	mov	byte ptr [byte ptr [last_line]],  0
	nop	
	cmp	dword ptr [dword ptr [files_ready_to_read]],  1
	mov	rbp, rbp
	jge	.label_833
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.75
	call	gettext
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rdi
	mov	edi, ecx
	nop	
	mov	esi, ecx
	mov	rbp, rbp
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	al, 0
	mov	rbp, rbp
	call	error
	jmp	.label_824
.label_833:
	jmp	.label_836
.label_836:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	jmp	.label_818
.label_824:
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [files_ready_to_read]],  0
	setg	al
	mov	rsp, rsp
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b600

	.globl init_funcs
	.type init_funcs, @function
init_funcs:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [chars_per_margin]]
	mov	dword ptr [rbp - 8], eax
	test	byte ptr [byte ptr [truncate_lines]],  1
	jne	.label_838
	mov	dword ptr [rbp - 0xc], 0
	jmp	.label_839
.label_838:
	nop	
	test	byte ptr [byte ptr [parallel_files]],  1
	je	.label_852
	test	byte ptr [byte ptr [numbered_lines]],  1
	lea	rdi, [rdi]
	je	.label_852
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 8]
	add	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	rbp, rbp
	add	eax,  dword ptr [dword ptr [number_width]]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_844
.label_852:
	mov	eax, dword ptr [rbp - 8]
	mov	rbp, rbp
	add	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	dword ptr [rbp - 0xc], eax
.label_844:
	lea	rdi, [rdi]
	jmp	.label_839
.label_839:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 8]
	add	eax,  dword ptr [dword ptr [col_sep_length]]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 8], eax
	mov	rcx,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 0x18], rcx
	mov	dword ptr [rbp - 4], 1
.label_848:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	cmp	eax,  dword ptr [dword ptr [columns]]
	jge	.label_846
	test	byte ptr [byte ptr [storing_columns]],  1
	je	.label_840
	movabs	rax, OFFSET FLAT:print_stored
	movabs	rcx, OFFSET FLAT:store_char
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x18], rax
	lea	rsi, [rsi]
	jmp	.label_845
.label_840:
	movabs	rax, OFFSET FLAT:read_line
	mov	rsp, rsp
	movabs	rcx, OFFSET FLAT:print_char
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x18], rax
.label_845:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	byte ptr [byte ptr [numbered_lines]],  1
	mov	byte ptr [rbp - 0x19], cl
	nop	
	je	.label_854
	mov	al, 1
	mov	rsp, rsp
	test	byte ptr [byte ptr [parallel_files]],  1
	mov	byte ptr [rbp - 0x1a], al
	mov	rbp, rbp
	je	.label_842
	cmp	dword ptr [rbp - 4], 1
	sete	al
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x1a], al
.label_842:
	nop	
	mov	al, byte ptr [rbp - 0x1a]
	mov	byte ptr [rbp - 0x19], al
.label_854:
	mov	al, byte ptr [rbp - 0x19]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	and	al, 1
	mov	byte ptr [rcx + 0x38], al
	mov	edx, dword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dword ptr [rcx + 0x34], edx
	mov	rsp, rsp
	test	byte ptr [byte ptr [truncate_lines]],  1
	jne	.label_853
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], 0
	mov	rsp, rsp
	jmp	.label_849
.label_853:
	mov	eax, dword ptr [rbp - 0xc]
	nop	
	add	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], eax
	mov	eax, dword ptr [rbp - 8]
	add	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	dword ptr [rbp - 0xc], eax
.label_849:
	mov	rbp, rbp
	jmp	.label_847
.label_847:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x40
	nop	
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	ecx, 1
	nop	
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_848
.label_846:
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [storing_columns]],  1
	je	.label_841
	test	byte ptr [byte ptr [balance_columns]],  1
	je	.label_841
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:print_stored
	nop	
	movabs	rcx, OFFSET FLAT:store_char
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x18], rax
	jmp	.label_851
.label_841:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:read_line
	mov	rbp, rbp
	movabs	rcx, OFFSET FLAT:print_char
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rdx + 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x18], rax
.label_851:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	byte ptr [byte ptr [numbered_lines]],  1
	nop	
	mov	byte ptr [rbp - 0x1b], cl
	je	.label_843
	nop	
	mov	al, 1
	test	byte ptr [byte ptr [parallel_files]],  1
	mov	byte ptr [rbp - 0x1c], al
	je	.label_850
	cmp	dword ptr [rbp - 4], 1
	lea	rdi, [rdi]
	sete	al
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x1c], al
.label_850:
	mov	al, byte ptr [rbp - 0x1c]
	nop	
	mov	byte ptr [rbp - 0x1b], al
.label_843:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x1b]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	and	al, 1
	mov	byte ptr [rcx + 0x38], al
	mov	edx, dword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dword ptr [rcx + 0x34], edx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b8f0

	.globl print_page
	.type print_page, @function
print_page:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	call	init_page
	lea	rdi, [rdi]
	call	cols_ready_to_print
	mov	rsp, rsp
	cmp	eax, 0
	jne	.label_857
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 0
	jmp	.label_862
.label_857:
	test	byte ptr [byte ptr [extremities]],  1
	je	.label_867
	mov	byte ptr [byte ptr [print_a_header]],  1
.label_867:
	mov	byte ptr [byte ptr [pad_vertically]],  0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x19], 0
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], eax
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [double_space]],  1
	mov	rbp, rbp
	je	.label_876
	mov	eax, dword ptr [rbp - 0xc]
	nop	
	shl	eax, 1
	mov	dword ptr [rbp - 0xc], eax
.label_876:
	jmp	.label_884
.label_884:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	cmp	dword ptr [rbp - 0xc], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x1a], cl
	jle	.label_892
	mov	rbp, rbp
	call	cols_ready_to_print
	lea	rdi, [rdi]
	cmp	eax, 0
	mov	rsp, rsp
	seta	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x1a], cl
.label_892:
	mov	al, byte ptr [rbp - 0x1a]
	lea	rsi, [rsi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_871
	jmp	.label_881
.label_871:
	nop	
	mov	dword ptr [dword ptr [output_position]],  0
	mov	dword ptr [dword ptr [spaces_not_printed]],  0
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [separators_not_printed]],  0
	mov	byte ptr [byte ptr [pad_vertically]],  0
	mov	byte ptr [byte ptr [align_empty_cols]],  0
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [empty_line]],  1
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], 1
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 0x18], rax
.label_865:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 8]
	cmp	eax,  dword ptr [dword ptr [columns]]
	jg	.label_858
	mov	rbp, rbp
	mov	dword ptr [dword ptr [input_position]],  0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0x30], 0
	jg	.label_873
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	dword ptr [rax + 0x10], 1
	jne	.label_880
.label_873:
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [FF_only]],  0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 0x34]
	mov	rbp, rbp
	mov	dword ptr [dword ptr [padding_not_printed]],  ecx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x18]
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	call	rax
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_859
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	call	read_rest_of_line
.label_859:
	mov	rbp, rbp
	mov	al,  byte ptr [byte ptr [pad_vertically]]
	mov	rsp, rsp
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	and	al, 1
	movzx	edx, al
	or	edx, ecx
	nop	
	cmp	edx, 0
	setne	al
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rsi + 0x30]
	add	ecx, -1
	mov	dword ptr [rsi + 0x30], ecx
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	cmp	dword ptr [rsi + 0x30], 0
	mov	rbp, rbp
	jg	.label_868
	lea	rdi, [rdi]
	call	cols_ready_to_print
	lea	rdi, [rdi]
	cmp	eax, 0
	jne	.label_889
	jmp	.label_858
.label_889:
	jmp	.label_868
.label_868:
	test	byte ptr [byte ptr [parallel_files]],  1
	lea	rdi, [rdi]
	je	.label_870
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0x10], 0
	je	.label_870
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [empty_line]],  1
	mov	rsp, rsp
	je	.label_886
	mov	byte ptr [byte ptr [align_empty_cols]],  1
	mov	rsp, rsp
	jmp	.label_866
.label_886:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	dword ptr [rax + 0x10], 3
	je	.label_860
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	dword ptr [rax + 0x10], 2
	jne	.label_875
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [FF_only]],  1
	nop	
	je	.label_875
.label_860:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	align_column
.label_875:
	lea	rsi, [rsi]
	jmp	.label_866
.label_866:
	jmp	.label_870
.label_870:
	lea	rsi, [rsi]
	jmp	.label_861
.label_880:
	test	byte ptr [byte ptr [parallel_files]],  1
	nop	
	je	.label_855
	test	byte ptr [byte ptr [empty_line]],  1
	lea	rdi, [rdi]
	je	.label_879
	nop	
	mov	byte ptr [byte ptr [align_empty_cols]],  1
	jmp	.label_882
.label_879:
	mov	rdi, qword ptr [rbp - 0x18]
	call	align_column
.label_882:
	jmp	.label_855
.label_855:
	jmp	.label_861
.label_861:
	test	byte ptr [byte ptr [use_col_separator]],  1
	je	.label_872
	mov	eax,  dword ptr [dword ptr [separators_not_printed]]
	lea	rdi, [rdi]
	add	eax, 1
	mov	dword ptr [dword ptr [separators_not_printed]],  eax
.label_872:
	jmp	.label_887
.label_887:
	mov	eax, dword ptr [rbp - 8]
	add	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rcx, 0x40
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_865
.label_858:
	test	byte ptr [byte ptr [pad_vertically]],  1
	nop	
	je	.label_878
	mov	edi, 0xa
	lea	rsi, [rsi]
	call	putchar_unlocked
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	add	edi, -1
	mov	dword ptr [rbp - 0xc], edi
	nop	
	mov	dword ptr [rbp - 0x20], eax
.label_878:
	nop	
	call	cols_ready_to_print
	mov	rsp, rsp
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_891
	mov	rsp, rsp
	test	byte ptr [byte ptr [extremities]],  1
	jne	.label_891
	jmp	.label_881
.label_891:
	mov	rbp, rbp
	test	byte ptr [byte ptr [double_space]],  1
	mov	rbp, rbp
	je	.label_863
	mov	rbp, rbp
	test	byte ptr [rbp - 0x19], 1
	je	.label_863
	mov	rbp, rbp
	mov	edi, 0xa
	call	putchar_unlocked
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	add	edi, -1
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x24], eax
.label_863:
	jmp	.label_884
.label_881:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xc], 0
	lea	rdi, [rdi]
	jne	.label_885
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], 1
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [column_vector]]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
.label_877:
	mov	eax, dword ptr [rbp - 8]
	cmp	eax,  dword ptr [dword ptr [columns]]
	jg	.label_856
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	dword ptr [rax + 0x10], 0
	nop	
	jne	.label_864
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax + 0x39], 1
.label_864:
	jmp	.label_869
.label_869:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 8]
	nop	
	add	eax, 1
	mov	dword ptr [rbp - 8], eax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x40
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rbp, rbp
	jmp	.label_877
.label_856:
	jmp	.label_885
.label_885:
	mov	al, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	and	al, 1
	mov	byte ptr [byte ptr [pad_vertically]],  al
	test	byte ptr [byte ptr [pad_vertically]],  1
	je	.label_888
	test	byte ptr [byte ptr [extremities]],  1
	nop	
	je	.label_888
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	nop	
	add	eax, 5
	mov	edi, eax
	mov	rbp, rbp
	call	pad_down
	mov	rbp, rbp
	jmp	.label_883
.label_888:
	test	byte ptr [byte ptr [keep_FF]],  1
	je	.label_874
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [print_a_FF]],  1
	nop	
	je	.label_874
	mov	edi, 0xc
	call	putchar_unlocked
	mov	rbp, rbp
	mov	byte ptr [byte ptr [print_a_FF]],  0
	mov	dword ptr [rbp - 0x28], eax
.label_874:
	mov	rsp, rsp
	jmp	.label_883
.label_883:
	mov	rax,  qword ptr [word ptr [last_page_number]]
	mov	rcx,  qword ptr [word ptr [page_number]]
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [page_number]],  rcx
	cmp	rax, rcx
	jae	.label_890
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 0
	mov	rsp, rsp
	jmp	.label_862
.label_890:
	nop	
	call	reset_status
	mov	byte ptr [rbp - 1], 1
.label_862:
	nop	
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	mov	rsp, rsp
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40be40

	.globl open_file
	.type open_file, @function
open_file:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	eax, OFFSET FLAT:.str.71
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_894
	nop	
	movabs	rdi, OFFSET FLAT:.str.20
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rdi + 8], rax
	mov	rax,  qword ptr [word ptr [stdin]]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rdi], rax
	mov	rsp, rsp
	mov	byte ptr [byte ptr [have_read_stdin]],  1
	nop	
	jmp	.label_893
.label_894:
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.72
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 8], rax
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	call	fopen_safer
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
.label_893:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	jne	.label_897
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [failed_opens]],  1
	mov	rsp, rsp
	test	byte ptr [byte ptr [ignore_failed_opens]],  1
	lea	rdi, [rdi]
	jne	.label_895
	call	__errno_location
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 3
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	mov	dword ptr [rbp - 0x1c], ecx
	call	quotearg_n_style_colon
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str_1
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x1c]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_895:
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 0
	jmp	.label_896
.label_897:
	mov	rbp, rbp
	mov	esi, 2
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rdi, qword ptr [rax]
	nop	
	call	fadvise
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	dword ptr [rax + 0x10], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax + 0x39], 0
	mov	rsp, rsp
	mov	esi,  dword ptr [dword ptr [total_files]]
	nop	
	add	esi, 1
	nop	
	mov	dword ptr [dword ptr [total_files]],  esi
	mov	byte ptr [rbp - 1], 1
.label_896:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	mov	rsp, rsp
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bfc0

	.globl init_header
	.type init_header, @function
init_header:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x160
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	dword ptr [rbp - 0xc], esi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.71
	call	strcmp
	mov	rbp, rbp
	cmp	eax, 0
	jne	.label_904
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], 0xffffffff
.label_904:
	lea	rsi, [rsi]
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0xc]
	jg	.label_898
	nop	
	lea	rsi, [rbp - 0xa8]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	call	__fstat
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_898
	mov	rbp, rbp
	lea	rdi, [rbp - 0xa8]
	lea	rsi, [rsi]
	call	get_stat_mtime
	mov	qword ptr [rbp - 0x108], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x100], rdx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0xb8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x100]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_899
.label_898:
	cmp	qword ptr [word ptr [init_header.timespec]],  0
	jne	.label_908
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:init_header.timespec
	nop	
	call	gettime
.label_908:
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [init_header.timespec]]
	mov	qword ptr [rbp - 0xb8], rax
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [label_902]]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb0], rax
.label_899:
	lea	rsi, [rsi]
	lea	rdx, [rbp - 0xf8]
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0xb8]
	mov	rax, qword ptr [rbp - 0xb0]
	mov	ecx, eax
	mov	dword ptr [rbp - 0xbc], ecx
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [localtz]]
	call	localtime_rz
	cmp	rax, 0
	nop	
	je	.label_907
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edi, eax
	mov	rsi, -1
	mov	rsp, rsp
	lea	rcx, [rbp - 0xf8]
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [date_format]]
	mov	rbp, rbp
	mov	r8,  qword ptr [word ptr [localtz]]
	lea	rsi, [rsi]
	mov	r9d, dword ptr [rbp - 0xbc]
	call	nstrftime
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x110], rax
	mov	rdi, qword ptr [rbp - 0x110]
	mov	rbp, rbp
	call	xmalloc
	lea	rcx, [rbp - 0xf8]
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x110]
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [date_format]]
	mov	r8,  qword ptr [word ptr [localtz]]
	nop	
	mov	r9d, dword ptr [rbp - 0xbc]
	call	nstrftime
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x138], rax
	mov	rbp, rbp
	jmp	.label_900
.label_907:
	mov	eax, 0x21
	mov	edi, eax
	nop	
	call	xmalloc
	lea	rsi, [rbp - 0x130]
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x140], rdi
	lea	rdi, [rdi]
	mov	rdi, rax
	call	timetostr
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.74
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0xbc]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x140]
	mov	rdx, rax
	mov	al, 0
	call	sprintf
	mov	dword ptr [rbp - 0x144], eax
.label_900:
	mov	rdi,  qword ptr [word ptr [date_text]]
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [word ptr [date_text]],  rdi
	mov	rsp, rsp
	cmp	qword ptr [word ptr [custom_header]],  0
	lea	rsi, [rsi]
	je	.label_906
	mov	rax,  qword ptr [word ptr [custom_header]]
	mov	qword ptr [rbp - 0x150], rax
	lea	rsi, [rsi]
	jmp	.label_905
.label_906:
	cmp	dword ptr [rbp - 0xc], 0
	jge	.label_901
	movabs	rax, OFFSET FLAT:.str_0
	mov	qword ptr [rbp - 0x158], rax
	mov	rbp, rbp
	jmp	.label_903
.label_901:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x158], rax
.label_903:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x158]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x150], rax
.label_905:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x150]
	xor	esi, esi
	mov	qword ptr [word ptr [file_text]],  rax
	nop	
	mov	ecx,  dword ptr [dword ptr [chars_per_line]]
	mov	rdi,  qword ptr [word ptr [date_text]]
	mov	dword ptr [rbp - 0x15c], ecx
	call	gnu_mbswidth
	lea	rdi, [rdi]
	xor	esi, esi
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x15c]
	nop	
	sub	ecx, eax
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [file_text]]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x160], ecx
	lea	rdi, [rdi]
	call	gnu_mbswidth
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x160]
	lea	rdi, [rdi]
	sub	ecx, eax
	mov	rsp, rsp
	mov	dword ptr [dword ptr [header_width_available]],  ecx
	add	rsp, 0x160
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c330

	.globl timetostr
	.type timetostr, @function
timetostr:
	mov	rsp, rsp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	imaxtostr
	nop	
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c370

	.globl skip_read
	.type skip_read, @function
skip_read:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x18], rdi
	mov	byte ptr [rbp - 0x1d], 0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	call	getc_unlocked
	mov	dword ptr [rbp - 0x10], eax
	mov	rbp, rbp
	cmp	eax, 0xc
	mov	rbp, rbp
	jne	.label_910
	mov	rax, qword ptr [rbp - 8]
	nop	
	test	byte ptr [rax + 0x39], 1
	lea	rsi, [rsi]
	je	.label_910
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	call	getc_unlocked
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10], eax
	mov	rbp, rbp
	cmp	eax, 0xa
	jne	.label_917
	mov	rdi, qword ptr [rbp - 0x18]
	call	getc_unlocked
	mov	dword ptr [rbp - 0x10], eax
.label_917:
	jmp	.label_910
.label_910:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x39], 0
	cmp	dword ptr [rbp - 0x10], 0xc
	jne	.label_923
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x1d], 1
.label_923:
	mov	rsp, rsp
	test	byte ptr [byte ptr [last_line]],  1
	lea	rsi, [rsi]
	je	.label_916
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	byte ptr [rax + 0x39], 1
.label_916:
	jmp	.label_913
.label_913:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x10], 0xa
	lea	rdi, [rdi]
	je	.label_920
	cmp	dword ptr [rbp - 0x10], 0xc
	jne	.label_911
	nop	
	test	byte ptr [byte ptr [last_line]],  1
	je	.label_915
	test	byte ptr [byte ptr [parallel_files]],  1
	jne	.label_925
	mov	rax,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 0x28], rax
	mov	ecx,  dword ptr [dword ptr [columns]]
	mov	dword ptr [rbp - 0x1c], ecx
.label_914:
	nop	
	cmp	dword ptr [rbp - 0x1c], 0
	je	.label_918
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	byte ptr [rax + 0x39], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x40
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	mov	ecx, dword ptr [rbp - 0x1c]
	add	ecx, -1
	mov	dword ptr [rbp - 0x1c], ecx
	lea	rdi, [rdi]
	jmp	.label_914
.label_918:
	mov	rsp, rsp
	jmp	.label_926
.label_925:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x39], 0
.label_926:
	jmp	.label_915
.label_915:
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	call	getc_unlocked
	mov	dword ptr [rbp - 0x10], eax
	cmp	eax, 0xa
	lea	rdi, [rdi]
	je	.label_912
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	call	ungetc
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], eax
.label_912:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	hold_file
	mov	rbp, rbp
	jmp	.label_920
.label_911:
	nop	
	cmp	dword ptr [rbp - 0x10], -1
	jne	.label_921
	mov	rdi, qword ptr [rbp - 8]
	call	close_file
	jmp	.label_920
.label_921:
	lea	rdi, [rdi]
	jmp	.label_924
.label_924:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	call	getc_unlocked
	mov	dword ptr [rbp - 0x10], eax
	jmp	.label_913
.label_920:
	mov	rsp, rsp
	test	byte ptr [byte ptr [skip_count]],  1
	lea	rsi, [rsi]
	je	.label_919
	test	byte ptr [byte ptr [parallel_files]],  1
	mov	rbp, rbp
	je	.label_922
	cmp	dword ptr [rbp - 0xc], 1
	jne	.label_909
.label_922:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x1d], 1
	jne	.label_909
	mov	eax,  dword ptr [dword ptr [line_count]]
	add	eax, 1
	mov	rbp, rbp
	mov	dword ptr [dword ptr [line_count]],  eax
.label_909:
	jmp	.label_919
.label_919:
	mov	rsp, rsp
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c5c0

	.globl reset_status
	.type reset_status, @function
reset_status:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [columns]]
	mov	dword ptr [rbp - 4], eax
	mov	rcx,  qword ptr [word ptr [column_vector]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rcx
.label_931:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	je	.label_927
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0x10], 2
	mov	rsp, rsp
	jne	.label_930
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rax + 0x10], 0
	lea	rdi, [rdi]
	mov	ecx,  dword ptr [dword ptr [files_ready_to_read]]
	lea	rsi, [rsi]
	add	ecx, 1
	mov	rbp, rbp
	mov	dword ptr [dword ptr [files_ready_to_read]],  ecx
.label_930:
	mov	rbp, rbp
	jmp	.label_928
.label_928:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	eax, -1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	add	rcx, 0x40
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rcx
	jmp	.label_931
.label_927:
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [storing_columns]],  1
	lea	rsi, [rsi]
	je	.label_932
	mov	rax,  qword ptr [word ptr [column_vector]]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0x10], 3
	jne	.label_929
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [files_ready_to_read]],  0
	jmp	.label_933
.label_929:
	mov	dword ptr [dword ptr [files_ready_to_read]],  1
.label_933:
	jmp	.label_932
.label_932:
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c6b0

	.globl hold_file
	.type hold_file, @function
hold_file:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [parallel_files]],  1
	mov	rsp, rsp
	jne	.label_934
	mov	rax,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [columns]]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], ecx
.label_938:
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_937
	test	byte ptr [byte ptr [storing_columns]],  1
	je	.label_939
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0x10], 1
	jmp	.label_935
.label_939:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0x10], 2
.label_935:
	lea	rsi, [rsi]
	jmp	.label_936
.label_936:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x40
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	mov	ecx, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	add	ecx, -1
	mov	dword ptr [rbp - 0x14], ecx
	lea	rdi, [rdi]
	jmp	.label_938
.label_937:
	jmp	.label_940
.label_934:
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	dword ptr [rax + 0x10], 2
.label_940:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x30], 0
	mov	ecx,  dword ptr [dword ptr [files_ready_to_read]]
	lea	rsi, [rsi]
	add	ecx, -1
	mov	dword ptr [dword ptr [files_ready_to_read]],  ecx
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c790

	.globl close_file
	.type close_file, @function
close_file:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	dword ptr [rdi + 0x10], 3
	jne	.label_948
	jmp	.label_950
.label_948:
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	mov	rsp, rsp
	call	ferror_unlocked
	cmp	eax, 0
	je	.label_945
	call	__errno_location
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 3
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	mov	rsp, rsp
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
.label_945:
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax]
	lea	rdi, [rdi]
	call	fileno
	cmp	eax, 0
	je	.label_943
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax]
	call	rpl_fclose
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_943
	call	__errno_location
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rbp - 0x1c]
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_943:
	test	byte ptr [byte ptr [parallel_files]],  1
	mov	rbp, rbp
	jne	.label_947
	mov	rax,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 0x10], rax
	mov	ecx,  dword ptr [dword ptr [columns]]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], ecx
.label_944:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	mov	rbp, rbp
	je	.label_942
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	dword ptr [rax + 0x10], 3
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	dword ptr [rax + 0x2c], 0
	jne	.label_946
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	dword ptr [rax + 0x30], 0
.label_946:
	jmp	.label_941
.label_941:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, 0x40
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	mov	ecx, dword ptr [rbp - 0x14]
	add	ecx, -1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], ecx
	jmp	.label_944
.label_942:
	mov	rsp, rsp
	jmp	.label_949
.label_947:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x10], 3
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	dword ptr [rax + 0x30], 0
.label_949:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [files_ready_to_read]]
	add	eax, -1
	mov	dword ptr [dword ptr [files_ready_to_read]],  eax
.label_950:
	nop	
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c970

	.globl store_char
	.type store_char, @function
store_char:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	al, dil
	mov	byte ptr [rbp - 1], al
	lea	rsi, [rsi]
	mov	edi,  dword ptr [dword ptr [buff_current]]
	mov	rsp, rsp
	mov	ecx, edi
	nop	
	cmp	rcx,  qword ptr [word ptr [buff_allocated]]
	mov	rbp, rbp
	jb	.label_951
	movabs	rsi, OFFSET FLAT:buff_allocated
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [buff]]
	call	x2realloc
	nop	
	mov	qword ptr [word ptr [buff]],  rax
.label_951:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 1]
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [buff_current]]
	mov	edx, ecx
	mov	rbp, rbp
	add	edx, 1
	mov	dword ptr [dword ptr [buff_current]],  edx
	mov	ecx, ecx
	lea	rdi, [rdi]
	mov	esi, ecx
	mov	rdi,  qword ptr [word ptr [buff]]
	mov	byte ptr [rdi + rsi], al
	lea	rdi, [rdi]
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ca10

	.globl print_stored
	.type print_stored, @function
print_stored:
	nop
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	nop	
	sub	rsp, 0x40
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rdi + 0x28]
	mov	ecx, eax
	add	ecx, 1
	mov	dword ptr [rdi + 0x28], ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
	lea	rsi, [rsi]
	movsxd	rdi, dword ptr [rbp - 0x1c]
	mov	rdx,  qword ptr [word ptr [line_vector]]
	movsxd	rdx, dword ptr [rdx + rdi*4]
	add	rdx,  qword ptr [word ptr [buff]]
	mov	qword ptr [rbp - 0x28], rdx
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1c]
	add	eax, 1
	lea	rdi, [rdi]
	movsxd	rdx, eax
	nop	
	mov	rdi,  qword ptr [word ptr [line_vector]]
	lea	rdi, [rdi]
	movsxd	rdx, dword ptr [rdi + rdx*4]
	nop	
	add	rdx,  qword ptr [word ptr [buff]]
	nop	
	mov	qword ptr [rbp - 0x30], rdx
	mov	rbp, rbp
	mov	byte ptr [byte ptr [pad_vertically]],  1
	test	byte ptr [byte ptr [print_a_header]],  1
	nop	
	je	.label_956
	call	print_header
.label_956:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	dword ptr [rax + 0x10], 1
	nop	
	jne	.label_952
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], 1
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 0x18], rax
.label_959:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x34]
	cmp	eax,  dword ptr [dword ptr [columns]]
	jg	.label_954
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	dword ptr [rax + 0x10], 2
	mov	eax, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	add	eax, 1
	mov	dword ptr [rbp - 0x34], eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x40
	nop	
	mov	qword ptr [rbp - 0x18], rcx
	nop	
	jmp	.label_959
.label_954:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [column_vector]]
	cmp	dword ptr [rax + 0x30], 0
	jg	.label_955
	test	byte ptr [byte ptr [extremities]],  1
	nop	
	jne	.label_960
	nop	
	mov	byte ptr [byte ptr [pad_vertically]],  0
.label_960:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_964
.label_955:
	jmp	.label_952
.label_952:
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [col_sep_length]]
	nop	
	cmp	eax,  dword ptr [dword ptr [padding_not_printed]]
	jge	.label_953
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [padding_not_printed]]
	lea	rsi, [rsi]
	sub	eax,  dword ptr [dword ptr [col_sep_length]]
	nop	
	mov	edi, eax
	lea	rsi, [rsi]
	call	pad_across_to
	mov	rsp, rsp
	mov	dword ptr [dword ptr [padding_not_printed]],  0
.label_953:
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [use_col_separator]],  1
	mov	rbp, rbp
	je	.label_958
	mov	rbp, rbp
	call	print_sep_string
.label_958:
	jmp	.label_961
.label_961:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	je	.label_962
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, rax
	mov	rbp, rbp
	add	rcx, 1
	nop	
	mov	qword ptr [rbp - 0x28], rcx
	movsx	edi, byte ptr [rax]
	mov	rbp, rbp
	call	print_char
	jmp	.label_961
.label_962:
	cmp	dword ptr [dword ptr [spaces_not_printed]],  0
	jne	.label_957
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x34]
	movsxd	rax, dword ptr [rbp - 0x1c]
	mov	rdx,  qword ptr [word ptr [end_vector]]
	add	ecx, dword ptr [rdx + rax*4]
	mov	dword ptr [dword ptr [output_position]],  ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x34]
	sub	ecx,  dword ptr [dword ptr [col_sep_length]]
	mov	rbp, rbp
	cmp	ecx,  dword ptr [dword ptr [chars_per_margin]]
	lea	rdi, [rdi]
	jne	.label_963
	mov	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	ecx,  dword ptr [dword ptr [output_position]]
	nop	
	sub	ecx, eax
	mov	rsp, rsp
	mov	dword ptr [dword ptr [output_position]],  ecx
.label_963:
	jmp	.label_957
.label_957:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 1
.label_964:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 1]
	mov	rbp, rbp
	and	al, 1
	lea	rsi, [rsi]
	movzx	eax, al
	add	rsp, 0x40
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x40cc80

	.globl print_char
	.type print_char, @function
print_char:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rbp, rbp
	mov	al, dil
	mov	byte ptr [rbp - 1], al
	test	byte ptr [byte ptr [tabify_output]],  1
	mov	rsp, rsp
	je	.label_965
	movsx	eax, byte ptr [rbp - 1]
	cmp	eax, 0x20
	jne	.label_966
	mov	eax,  dword ptr [dword ptr [spaces_not_printed]]
	lea	rdi, [rdi]
	add	eax, 1
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [spaces_not_printed]],  eax
	mov	rsp, rsp
	jmp	.label_970
.label_966:
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [spaces_not_printed]],  0
	jle	.label_969
	mov	rsp, rsp
	call	print_white_space
.label_969:
	jmp	.label_968
.label_968:
	movsx	edi, byte ptr [rbp - 1]
	call	to_uchar
	movzx	edi, al
	lea	rsi, [rsi]
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x10], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	movzx	edi, word ptr [rax + rcx*2]
	nop	
	and	edi, 0x4000
	lea	rdi, [rdi]
	cmp	edi, 0
	jne	.label_972
	nop	
	movsx	eax, byte ptr [rbp - 1]
	lea	rsi, [rsi]
	cmp	eax, 8
	jne	.label_967
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [output_position]]
	lea	rdi, [rdi]
	add	eax, -1
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [output_position]],  eax
.label_967:
	mov	rsp, rsp
	jmp	.label_971
.label_972:
	mov	eax,  dword ptr [dword ptr [output_position]]
	lea	rdi, [rdi]
	add	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [output_position]],  eax
.label_971:
	jmp	.label_965
.label_965:
	nop	
	movsx	edi, byte ptr [rbp - 1]
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x14], eax
.label_970:
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40cd90

	.globl read_line
	.type read_line, @function
read_line:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, qword ptr [rdi]
	mov	rsp, rsp
	call	getc_unlocked
	mov	dword ptr [rbp - 0x14], eax
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [input_position]]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x14], 0xc
	jne	.label_985
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x39], 1
	mov	rbp, rbp
	je	.label_985
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax]
	call	getc_unlocked
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	cmp	eax, 0xa
	lea	rdi, [rdi]
	jne	.label_1008
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax]
	lea	rdi, [rdi]
	call	getc_unlocked
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
.label_1008:
	jmp	.label_985
.label_985:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 0x39], 0
	mov	ecx, dword ptr [rbp - 0x14]
	mov	edx, ecx
	nop	
	sub	edx, -1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], ecx
	mov	dword ptr [rbp - 0x38], edx
	je	.label_987
	nop	
	jmp	.label_996
.label_996:
	mov	eax, dword ptr [rbp - 0x34]
	nop	
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x3c], eax
	je	.label_997
	jmp	.label_1001
.label_1001:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	sub	eax, 0xc
	mov	dword ptr [rbp - 0x40], eax
	nop	
	jne	.label_1003
	jmp	.label_973
.label_973:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	call	getc_unlocked
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	cmp	eax, 0xa
	lea	rsi, [rsi]
	je	.label_981
	mov	edi, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rax]
	call	ungetc
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x44], eax
.label_981:
	mov	byte ptr [byte ptr [FF_only]],  1
	test	byte ptr [byte ptr [print_a_header]],  1
	je	.label_989
	test	byte ptr [byte ptr [storing_columns]],  1
	mov	rbp, rbp
	jne	.label_989
	mov	byte ptr [byte ptr [pad_vertically]],  1
	call	print_header
	jmp	.label_980
.label_989:
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [keep_FF]],  1
	mov	rsp, rsp
	je	.label_1007
	mov	byte ptr [byte ptr [print_a_FF]],  1
.label_1007:
	jmp	.label_980
.label_980:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	call	hold_file
	mov	byte ptr [rbp - 1], 1
	lea	rsi, [rsi]
	jmp	.label_975
.label_987:
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	close_file
	mov	byte ptr [rbp - 1], 1
	mov	rbp, rbp
	jmp	.label_975
.label_997:
	lea	rdi, [rdi]
	jmp	.label_993
.label_1003:
	mov	eax, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	mov	cl, al
	mov	rsp, rsp
	movsx	edi, cl
	lea	rdi, [rdi]
	call	char_to_clump
	mov	dword ptr [rbp - 0x18], eax
.label_993:
	mov	rbp, rbp
	test	byte ptr [byte ptr [truncate_lines]],  1
	mov	rsp, rsp
	je	.label_1004
	mov	eax,  dword ptr [dword ptr [input_position]]
	cmp	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	rsp, rsp
	jle	.label_1004
	mov	eax, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [input_position]],  eax
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 0
	mov	rbp, rbp
	jmp	.label_975
.label_1004:
	movabs	rax, OFFSET FLAT:store_char
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	qword ptr [rcx + 0x20], rax
	je	.label_988
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [pad_vertically]],  1
	nop	
	test	byte ptr [byte ptr [print_a_header]],  1
	mov	rbp, rbp
	je	.label_994
	mov	rsp, rsp
	test	byte ptr [byte ptr [storing_columns]],  1
	jne	.label_994
	mov	rsp, rsp
	call	print_header
.label_994:
	mov	rsp, rsp
	test	byte ptr [byte ptr [parallel_files]],  1
	je	.label_974
	test	byte ptr [byte ptr [align_empty_cols]],  1
	je	.label_974
	mov	eax,  dword ptr [dword ptr [separators_not_printed]]
	nop	
	mov	dword ptr [rbp - 0x24], eax
	mov	rbp, rbp
	mov	dword ptr [dword ptr [separators_not_printed]],  0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x20], 1
	mov	rcx,  qword ptr [word ptr [column_vector]]
	nop	
	mov	qword ptr [rbp - 0x30], rcx
.label_976:
	nop	
	mov	eax, dword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x24]
	jg	.label_998
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x30]
	call	align_column
	mov	eax,  dword ptr [dword ptr [separators_not_printed]]
	add	eax, 1
	mov	rbp, rbp
	mov	dword ptr [dword ptr [separators_not_printed]],  eax
	mov	eax, dword ptr [rbp - 0x20]
	add	eax, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x20], eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	add	rcx, 0x40
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_976
.label_998:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x34]
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [padding_not_printed]],  ecx
	test	byte ptr [byte ptr [truncate_lines]],  1
	mov	rbp, rbp
	je	.label_983
	mov	eax,  dword ptr [dword ptr [chars_per_column]]
	mov	dword ptr [dword ptr [spaces_not_printed]],  eax
	nop	
	jmp	.label_977
.label_983:
	mov	dword ptr [dword ptr [spaces_not_printed]],  0
.label_977:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [align_empty_cols]],  0
.label_974:
	mov	eax,  dword ptr [dword ptr [col_sep_length]]
	cmp	eax,  dword ptr [dword ptr [padding_not_printed]]
	mov	rsp, rsp
	jge	.label_1005
	mov	eax,  dword ptr [dword ptr [padding_not_printed]]
	sub	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	edi, eax
	call	pad_across_to
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [padding_not_printed]],  0
.label_1005:
	test	byte ptr [byte ptr [use_col_separator]],  1
	nop	
	je	.label_986
	lea	rsi, [rsi]
	call	print_sep_string
.label_986:
	jmp	.label_988
.label_988:
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x38], 1
	mov	rbp, rbp
	je	.label_990
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	call	add_line_number
.label_990:
	nop	
	mov	byte ptr [byte ptr [empty_line]],  0
	cmp	dword ptr [rbp - 0x14], 0xa
	mov	rbp, rbp
	jne	.label_999
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 1
	jmp	.label_975
.label_999:
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x18]
	mov	rdx,  qword ptr [word ptr [clump_buff]]
	call	print_clump
.label_979:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	call	getc_unlocked
	mov	dword ptr [rbp - 0x14], eax
	nop	
	mov	ecx, eax
	mov	rbp, rbp
	sub	eax, -1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x48], ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x4c], eax
	je	.label_1006
	mov	rbp, rbp
	jmp	.label_992
.label_992:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x48]
	sub	eax, 0xa
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x50], eax
	je	.label_995
	jmp	.label_1000
.label_1000:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x48]
	sub	eax, 0xc
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x54], eax
	lea	rsi, [rsi]
	je	.label_1002
	jmp	.label_982
.label_995:
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 1
	jmp	.label_975
.label_1002:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax]
	call	getc_unlocked
	mov	dword ptr [rbp - 0x14], eax
	cmp	eax, 0xa
	je	.label_984
	mov	edi, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax]
	mov	rsp, rsp
	call	ungetc
	mov	dword ptr [rbp - 0x58], eax
.label_984:
	mov	rsp, rsp
	test	byte ptr [byte ptr [keep_FF]],  1
	je	.label_978
	mov	rsp, rsp
	mov	byte ptr [byte ptr [print_a_FF]],  1
.label_978:
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	hold_file
	nop	
	mov	byte ptr [rbp - 1], 1
	jmp	.label_975
.label_1006:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	call	close_file
	mov	byte ptr [rbp - 1], 1
	jmp	.label_975
.label_982:
	mov	eax,  dword ptr [dword ptr [input_position]]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], eax
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	mov	cl, al
	lea	rsi, [rsi]
	movsx	edi, cl
	call	char_to_clump
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x18], eax
	test	byte ptr [byte ptr [truncate_lines]],  1
	je	.label_991
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [input_position]]
	nop	
	cmp	eax,  dword ptr [dword ptr [chars_per_column]]
	jle	.label_991
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [dword ptr [input_position]],  eax
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
	jmp	.label_975
.label_991:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x18]
	mov	rdx,  qword ptr [word ptr [clump_buff]]
	call	print_clump
	lea	rsi, [rsi]
	jmp	.label_979
.label_975:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 1]
	lea	rsi, [rsi]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x60
	nop	
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d330

	.globl print_header
	.type print_header, @function
print_header:
	push	rbp
	mov	rbp, rsp
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x178
	mov	dword ptr [dword ptr [output_position]],  0
	mov	edi,  dword ptr [dword ptr [chars_per_margin]]
	mov	rbp, rbp
	call	pad_across_to
	mov	rsp, rsp
	call	print_white_space
	cmp	qword ptr [word ptr [page_number]],  0
	jne	.label_1009
	movabs	rdi, OFFSET FLAT:.str.76
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 1
	xor	esi, esi
	mov	rbp, rbp
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	error
.label_1009:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.77
	lea	rax, [rbp - 0x120]
	nop	
	mov	qword ptr [rbp - 0x138], rax
	lea	rsi, [rsi]
	call	gettext
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [page_number]]
	mov	rdi, qword ptr [rbp - 0x138]
	mov	rsi, rax
	lea	rdi, [rdi]
	mov	al, 0
	lea	rdi, [rdi]
	call	sprintf
	lea	rdi, [rdi]
	xor	esi, esi
	lea	rdi, [rbp - 0x120]
	mov	ecx,  dword ptr [dword ptr [header_width_available]]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x13c], eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x140], ecx
	lea	rsi, [rsi]
	call	gnu_mbswidth
	mov	rbp, rbp
	xor	ecx, ecx
	mov	esi, dword ptr [rbp - 0x140]
	sub	esi, eax
	mov	dword ptr [rbp - 0x124], esi
	cmp	ecx, dword ptr [rbp - 0x124]
	jle	.label_1011
	xor	eax, eax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x144], eax
	jmp	.label_1010
.label_1011:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x124]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x144], eax
.label_1010:
	mov	eax, dword ptr [rbp - 0x144]
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.78
	movabs	rdx, OFFSET FLAT:.str_0
	movabs	rcx, OFFSET FLAT:.str.70
	lea	rsi, [rbp - 0x120]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x124], eax
	nop	
	mov	eax, dword ptr [rbp - 0x124]
	lea	rsi, [rsi]
	sar	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x128], eax
	nop	
	mov	eax, dword ptr [rbp - 0x124]
	sub	eax, dword ptr [rbp - 0x128]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x12c], eax
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [chars_per_margin]]
	mov	r8,  qword ptr [word ptr [date_text]]
	mov	rbp, rbp
	mov	r9d, dword ptr [rbp - 0x128]
	lea	rsi, [rsi]
	mov	r10,  qword ptr [word ptr [file_text]]
	mov	r11d, dword ptr [rbp - 0x12c]
	mov	qword ptr [rbp - 0x150], rsi
	mov	esi, eax
	mov	qword ptr [rbp - 0x158], rcx
	nop	
	mov	rcx, r8
	mov	r8d, r9d
	lea	rsi, [rsi]
	mov	r9, qword ptr [rbp - 0x158]
	lea	rsi, [rsi]
	mov	qword ptr [rsp], r10
	mov	dword ptr [rsp + 8], r11d
	lea	rdi, [rdi]
	mov	r10, qword ptr [rbp - 0x158]
	mov	qword ptr [rsp + 0x10], r10
	nop	
	mov	rbx, qword ptr [rbp - 0x150]
	mov	qword ptr [rsp + 0x18], rbx
	nop	
	mov	al, 0
	mov	rbp, rbp
	call	printf
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [print_a_header]],  0
	mov	dword ptr [dword ptr [output_position]],  0
	nop	
	mov	dword ptr [rbp - 0x15c], eax
	lea	rdi, [rdi]
	add	rsp, 0x178
	mov	rbp, rbp
	pop	rbx
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d570

	.globl pad_across_to
	.type pad_across_to, @function
pad_across_to:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], edi
	nop	
	mov	edi,  dword ptr [dword ptr [output_position]]
	nop	
	mov	dword ptr [rbp - 8], edi
	test	byte ptr [byte ptr [tabify_output]],  1
	nop	
	je	.label_1012
	mov	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	sub	eax,  dword ptr [dword ptr [output_position]]
	mov	dword ptr [dword ptr [spaces_not_printed]],  eax
	lea	rdi, [rdi]
	jmp	.label_1015
.label_1012:
	lea	rdi, [rdi]
	jmp	.label_1014
.label_1014:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 8]
	add	eax, 1
	mov	dword ptr [rbp - 8], eax
	cmp	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	jg	.label_1013
	mov	rsp, rsp
	mov	edi, 0x20
	mov	rbp, rbp
	call	putchar_unlocked
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_1014
.label_1013:
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [dword ptr [output_position]],  eax
.label_1015:
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d610

	.globl print_sep_string
	.type print_sep_string, @function
print_sep_string:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [col_sep_string]]
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [col_sep_length]]
	mov	dword ptr [rbp - 0xc], ecx
	cmp	dword ptr [dword ptr [separators_not_printed]],  0
	jg	.label_1023
	cmp	dword ptr [dword ptr [spaces_not_printed]],  0
	lea	rsi, [rsi]
	jle	.label_1019
	call	print_white_space
.label_1019:
	mov	rsp, rsp
	jmp	.label_1017
.label_1023:
	jmp	.label_1018
.label_1018:
	cmp	dword ptr [dword ptr [separators_not_printed]],  0
	jle	.label_1020
	lea	rsi, [rsi]
	jmp	.label_1022
.label_1022:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rdi, [rdi]
	add	ecx, -1
	mov	dword ptr [rbp - 0xc], ecx
	mov	rbp, rbp
	cmp	eax, 0
	jle	.label_1026
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x20
	lea	rsi, [rsi]
	jne	.label_1027
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [spaces_not_printed]]
	add	ecx, 1
	nop	
	mov	dword ptr [dword ptr [spaces_not_printed]],  ecx
	nop	
	jmp	.label_1025
.label_1027:
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [spaces_not_printed]],  0
	lea	rsi, [rsi]
	jle	.label_1016
	mov	rbp, rbp
	call	print_white_space
.label_1016:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rcx
	movsx	edi, byte ptr [rax]
	call	putchar_unlocked
	mov	edi,  dword ptr [dword ptr [output_position]]
	add	edi, 1
	mov	dword ptr [dword ptr [output_position]],  edi
	mov	dword ptr [rbp - 0x10], eax
.label_1025:
	jmp	.label_1022
.label_1026:
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [spaces_not_printed]],  0
	jle	.label_1024
	lea	rdi, [rdi]
	call	print_white_space
.label_1024:
	lea	rdi, [rdi]
	jmp	.label_1021
.label_1021:
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [separators_not_printed]]
	mov	rbp, rbp
	add	eax, -1
	mov	dword ptr [dword ptr [separators_not_printed]],  eax
	mov	rsp, rsp
	jmp	.label_1018
.label_1020:
	jmp	.label_1017
.label_1017:
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d780

	.globl print_white_space
	.type print_white_space, @function
print_white_space:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	eax,  dword ptr [dword ptr [output_position]]
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], eax
	mov	eax, dword ptr [rbp - 8]
	add	eax,  dword ptr [dword ptr [spaces_not_printed]]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], eax
.label_1030:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	mov	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	sub	eax, dword ptr [rbp - 8]
	cmp	eax, 1
	mov	byte ptr [rbp - 0xd], cl
	nop	
	jle	.label_1029
	mov	eax, dword ptr [rbp - 8]
	mov	ecx,  dword ptr [dword ptr [chars_per_output_tab]]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x14], eax
	mov	eax, edx
	nop	
	cdq	
	idiv	dword ptr [dword ptr [chars_per_output_tab]]
	lea	rdi, [rdi]
	sub	ecx, edx
	nop	
	mov	edx, dword ptr [rbp - 0x14]
	nop	
	add	edx, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], edx
	lea	rsi, [rsi]
	cmp	edx, dword ptr [rbp - 0xc]
	setle	sil
	mov	byte ptr [rbp - 0xd], sil
.label_1029:
	mov	al, byte ptr [rbp - 0xd]
	nop	
	test	al, 1
	jne	.label_1028
	mov	rsp, rsp
	jmp	.label_1032
.label_1028:
	mov	rsp, rsp
	movsx	edi,  byte ptr [byte ptr [output_tab_char]]
	call	putchar_unlocked
	nop	
	mov	edi, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 8], edi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x18], eax
	jmp	.label_1030
.label_1032:
	jmp	.label_1031
.label_1031:
	nop	
	mov	eax, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	eax, 1
	nop	
	mov	dword ptr [rbp - 8], eax
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	jg	.label_1033
	lea	rdi, [rdi]
	mov	edi, 0x20
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_1031
.label_1033:
	mov	eax, dword ptr [rbp - 0xc]
	mov	dword ptr [dword ptr [output_position]],  eax
	mov	dword ptr [dword ptr [spaces_not_printed]],  0
	lea	rsi, [rsi]
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d8a0

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	mov	al, dil
	mov	byte ptr [rbp - 1], al
	movzx	eax, byte ptr [rbp - 1]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d8c0

	.globl char_to_clump
	.type char_to_clump, @function
char_to_clump:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x40
	nop	
	mov	al, dil
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], al
	mov	al, byte ptr [rbp - 1]
	mov	byte ptr [rbp - 2], al
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [clump_buff]]
	mov	qword ptr [rbp - 0x10], rcx
	mov	dword ptr [rbp - 0x24], 8
	mov	rsp, rsp
	movsx	edi, byte ptr [rbp - 1]
	lea	rsi, [rsi]
	movsx	edx,  byte ptr [byte ptr [input_tab_char]]
	mov	rsp, rsp
	cmp	edi, edx
	jne	.label_1050
	nop	
	mov	eax,  dword ptr [dword ptr [chars_per_input_tab]]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], eax
.label_1050:
	mov	rbp, rbp
	movsx	eax, byte ptr [rbp - 1]
	movsx	ecx,  byte ptr [byte ptr [input_tab_char]]
	cmp	eax, ecx
	je	.label_1043
	nop	
	movsx	eax, byte ptr [rbp - 1]
	lea	rdi, [rdi]
	cmp	eax, 9
	jne	.label_1047
.label_1043:
	mov	eax, dword ptr [rbp - 0x24]
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [input_position]]
	mov	dword ptr [rbp - 0x28], eax
	lea	rsi, [rsi]
	mov	eax, ecx
	mov	rsp, rsp
	cdq	
	nop	
	idiv	dword ptr [rbp - 0x24]
	mov	ecx, dword ptr [rbp - 0x28]
	sub	ecx, edx
	nop	
	mov	dword ptr [rbp - 0x1c], ecx
	test	byte ptr [byte ptr [untabify_input]],  1
	mov	rbp, rbp
	je	.label_1052
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x14], eax
.label_1039:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x14], 0
	nop	
	je	.label_1035
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rcx
	mov	byte ptr [rax], 0x20
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x14]
	add	eax, -1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_1039
.label_1035:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x20], eax
	mov	rbp, rbp
	jmp	.label_1051
.label_1052:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 1]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	byte ptr [rcx], al
	mov	dword ptr [rbp - 0x20], 1
.label_1051:
	mov	rbp, rbp
	jmp	.label_1058
.label_1047:
	movzx	eax, byte ptr [rbp - 2]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x30], rcx
	call	__ctype_b_loc
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x4000
	cmp	edx, 0
	jne	.label_1034
	mov	rsp, rsp
	test	byte ptr [byte ptr [use_esc_sequence]],  1
	je	.label_1044
	movabs	rsi, OFFSET FLAT:.str.79
	lea	rdi, [rbp - 0x18]
	mov	dword ptr [rbp - 0x1c], 4
	mov	dword ptr [rbp - 0x20], 4
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0x5c
	movzx	edx, byte ptr [rbp - 2]
	lea	rdi, [rdi]
	mov	al, 0
	mov	rsp, rsp
	call	sprintf
	mov	dword ptr [rbp - 0x14], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], eax
.label_1040:
	cmp	dword ptr [rbp - 0x14], 2
	jg	.label_1038
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	cl, byte ptr [rbp + rax - 0x18]
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, rax
	mov	rsp, rsp
	add	rdx, 1
	mov	qword ptr [rbp - 0x10], rdx
	mov	byte ptr [rax], cl
	mov	eax, dword ptr [rbp - 0x14]
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	jmp	.label_1040
.label_1038:
	mov	rsp, rsp
	jmp	.label_1048
.label_1044:
	test	byte ptr [byte ptr [use_cntrl_prefix]],  1
	mov	rbp, rbp
	je	.label_1054
	movzx	eax, byte ptr [rbp - 2]
	cmp	eax, 0x80
	lea	rsi, [rsi]
	jge	.label_1057
	mov	dword ptr [rbp - 0x1c], 2
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x20], 2
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rcx
	lea	rsi, [rsi]
	mov	byte ptr [rax], 0x5e
	mov	rbp, rbp
	movsx	edx, byte ptr [rbp - 1]
	nop	
	xor	edx, 0x40
	lea	rdi, [rdi]
	mov	sil, dl
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	byte ptr [rax], sil
	lea	rdi, [rdi]
	jmp	.label_1049
.label_1057:
	movabs	rsi, OFFSET FLAT:.str.79
	lea	rdi, [rbp - 0x18]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c], 4
	mov	dword ptr [rbp - 0x20], 4
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, rax
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rcx
	lea	rsi, [rsi]
	mov	byte ptr [rax], 0x5c
	movzx	edx, byte ptr [rbp - 2]
	lea	rsi, [rsi]
	mov	al, 0
	nop	
	call	sprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], 0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x38], eax
.label_1045:
	nop	
	cmp	dword ptr [rbp - 0x14], 2
	jg	.label_1055
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	mov	cl, byte ptr [rbp + rax - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rdx, rax
	mov	rsp, rsp
	add	rdx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdx
	mov	byte ptr [rax], cl
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	add	eax, 1
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_1045
.label_1055:
	mov	rsp, rsp
	jmp	.label_1049
.label_1049:
	jmp	.label_1042
.label_1054:
	mov	rbp, rbp
	movsx	eax, byte ptr [rbp - 1]
	cmp	eax, 8
	jne	.label_1059
	nop	
	mov	dword ptr [rbp - 0x1c], 0xffffffff
	nop	
	mov	dword ptr [rbp - 0x20], 1
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 1]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	byte ptr [rcx], al
	jmp	.label_1036
.label_1059:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], 0
	mov	dword ptr [rbp - 0x20], 1
	mov	al, byte ptr [rbp - 1]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rcx], al
.label_1036:
	jmp	.label_1042
.label_1042:
	mov	rsp, rsp
	jmp	.label_1048
.label_1048:
	jmp	.label_1053
.label_1034:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x20], 1
	mov	al, byte ptr [rbp - 1]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	byte ptr [rcx], al
.label_1053:
	jmp	.label_1058
.label_1058:
	cmp	dword ptr [rbp - 0x1c], 0
	lea	rsi, [rsi]
	jge	.label_1037
	nop	
	cmp	dword ptr [dword ptr [input_position]],  0
	lea	rsi, [rsi]
	jne	.label_1037
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x20], 0
	mov	dword ptr [dword ptr [input_position]],  0
	jmp	.label_1041
.label_1037:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x1c], 0
	mov	rbp, rbp
	jge	.label_1046
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [input_position]]
	sub	eax, dword ptr [rbp - 0x1c]
	cmp	ecx, eax
	nop	
	jg	.label_1046
	mov	rbp, rbp
	mov	dword ptr [dword ptr [input_position]],  0
	jmp	.label_1056
.label_1046:
	mov	eax, dword ptr [rbp - 0x1c]
	add	eax,  dword ptr [dword ptr [input_position]]
	mov	dword ptr [dword ptr [input_position]],  eax
.label_1056:
	jmp	.label_1041
.label_1041:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rsp, 0x40
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40dd20

	.globl align_column
	.type align_column, @function
align_column:
	lea	rdi, [rdi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	nop	
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdi + 0x34]
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [padding_not_printed]],  eax
	mov	eax,  dword ptr [dword ptr [col_sep_length]]
	nop	
	cmp	eax,  dword ptr [dword ptr [padding_not_printed]]
	lea	rsi, [rsi]
	jge	.label_1060
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [padding_not_printed]]
	mov	rbp, rbp
	sub	eax,  dword ptr [dword ptr [col_sep_length]]
	mov	rsp, rsp
	mov	edi, eax
	call	pad_across_to
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [padding_not_printed]],  0
.label_1060:
	test	byte ptr [byte ptr [use_col_separator]],  1
	je	.label_1062
	call	print_sep_string
.label_1062:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x38], 1
	lea	rsi, [rsi]
	je	.label_1061
	mov	rdi, qword ptr [rbp - 8]
	call	add_line_number
.label_1061:
	mov	rsp, rsp
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ddd0

	.globl add_line_number
	.type add_line_number, @function
add_line_number:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	movabs	rsi, OFFSET FLAT:.str.80
	mov	qword ptr [rbp - 8], rdi
	mov	rdi,  qword ptr [word ptr [number_buff]]
	mov	edx,  dword ptr [dword ptr [chars_per_number]]
	mov	ecx,  dword ptr [dword ptr [line_number]]
	mov	al, 0
	mov	rbp, rbp
	call	sprintf
	nop	
	mov	dword ptr [rbp - 0x1c], eax
	mov	eax,  dword ptr [dword ptr [line_number]]
	add	eax, 1
	mov	dword ptr [dword ptr [line_number]],  eax
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [number_buff]]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1c]
	sub	eax,  dword ptr [dword ptr [chars_per_number]]
	movsxd	rdi, eax
	lea	rdi, [rdi]
	add	rsi, rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	mov	eax,  dword ptr [dword ptr [chars_per_number]]
	nop	
	mov	dword ptr [rbp - 0xc], eax
.label_1063:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xc], 0
	jle	.label_1067
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdx
	movsx	edi, byte ptr [rcx]
	call	rax
	mov	eax, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	add	eax, -1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
	mov	rbp, rbp
	jmp	.label_1063
.label_1067:
	cmp	dword ptr [dword ptr [columns]],  1
	jle	.label_1069
	nop	
	movsx	eax,  byte ptr [byte ptr [number_separator]]
	lea	rsi, [rsi]
	cmp	eax, 9
	lea	rdi, [rdi]
	jne	.label_1071
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [number_width]]
	sub	eax,  dword ptr [dword ptr [chars_per_number]]
	mov	dword ptr [rbp - 0xc], eax
.label_1072:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	mov	ecx, eax
	mov	rbp, rbp
	add	ecx, -1
	mov	dword ptr [rbp - 0xc], ecx
	cmp	eax, 0
	nop	
	jle	.label_1066
	lea	rdi, [rdi]
	mov	edi, 0x20
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	call	qword ptr [rax + 0x20]
	mov	rbp, rbp
	jmp	.label_1072
.label_1066:
	jmp	.label_1065
.label_1071:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rax + 0x20]
	movsx	edi,  byte ptr [byte ptr [number_separator]]
	call	rax
.label_1065:
	lea	rsi, [rsi]
	jmp	.label_1068
.label_1069:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x20]
	movsx	edi,  byte ptr [byte ptr [number_separator]]
	lea	rdi, [rdi]
	call	rax
	movsx	edi,  byte ptr [byte ptr [number_separator]]
	mov	rbp, rbp
	cmp	edi, 9
	jne	.label_1064
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [output_position]]
	mov	ecx,  dword ptr [dword ptr [chars_per_output_tab]]
	nop	
	mov	edx,  dword ptr [dword ptr [output_position]]
	mov	dword ptr [rbp - 0x20], eax
	mov	eax, edx
	mov	rbp, rbp
	cdq	
	lea	rsi, [rsi]
	idiv	dword ptr [dword ptr [chars_per_output_tab]]
	sub	ecx, edx
	mov	edx, dword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	edx, ecx
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [output_position]],  edx
.label_1064:
	nop	
	jmp	.label_1068
.label_1068:
	mov	rbp, rbp
	test	byte ptr [byte ptr [truncate_lines]],  1
	mov	rbp, rbp
	je	.label_1070
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [parallel_files]],  1
	nop	
	jne	.label_1070
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [number_width]]
	lea	rsi, [rsi]
	add	eax,  dword ptr [dword ptr [input_position]]
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [input_position]],  eax
.label_1070:
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x40dff0

	.globl print_clump
	.type print_clump, @function
print_clump:
	nop	
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	dword ptr [rbp - 0xc], esi
	nop	
	mov	qword ptr [rbp - 0x18], rdx
.label_1074:
	nop	
	mov	eax, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	mov	ecx, eax
	add	ecx, -1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], ecx
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_1073
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rax + 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdx, rcx
	lea	rdi, [rdi]
	add	rdx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	movsx	edi, byte ptr [rcx]
	call	rax
	jmp	.label_1074
.label_1073:
	nop	
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e070

	.globl init_page
	.type init_page, @function
init_page:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	test	byte ptr [byte ptr [storing_columns]],  1
	je	.label_1083
	nop	
	call	store_columns
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [columns]]
	sub	eax, 1
	mov	dword ptr [rbp - 4], eax
	mov	rcx,  qword ptr [word ptr [column_vector]]
	nop	
	mov	qword ptr [rbp - 0x10], rcx
.label_1085:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 4], 0
	je	.label_1078
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x2c]
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0x30], ecx
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	eax, -1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	add	rcx, 0x40
	mov	qword ptr [rbp - 0x10], rcx
	mov	rsp, rsp
	jmp	.label_1085
.label_1078:
	test	byte ptr [byte ptr [balance_columns]],  1
	je	.label_1077
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x2c]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rax + 0x30], ecx
	jmp	.label_1079
.label_1077:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0x10], 0
	jne	.label_1081
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	dword ptr [rcx + 0x30], eax
	mov	rsp, rsp
	jmp	.label_1087
.label_1081:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0x30], 0
.label_1087:
	lea	rdi, [rdi]
	jmp	.label_1079
.label_1079:
	jmp	.label_1076
.label_1083:
	mov	eax,  dword ptr [dword ptr [columns]]
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
	mov	rcx,  qword ptr [word ptr [column_vector]]
	mov	qword ptr [rbp - 0x10], rcx
.label_1082:
	cmp	dword ptr [rbp - 4], 0
	je	.label_1086
	mov	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0x10], 0
	nop	
	jne	.label_1084
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	dword ptr [rcx + 0x30], eax
	jmp	.label_1075
.label_1084:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0x30], 0
.label_1075:
	mov	rsp, rsp
	jmp	.label_1080
.label_1080:
	mov	eax, dword ptr [rbp - 4]
	add	eax, -1
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 0x40
	mov	qword ptr [rbp - 0x10], rcx
	jmp	.label_1082
.label_1086:
	jmp	.label_1076
.label_1076:
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e1e0

	.globl cols_ready_to_print
	.type cols_ready_to_print, @function
cols_ready_to_print:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x10], 0
	mov	rax,  qword ptr [word ptr [column_vector]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 0
.label_1091:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [columns]]
	jae	.label_1092
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	dword ptr [rax + 0x10], 0
	lea	rdi, [rdi]
	je	.label_1088
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	dword ptr [rax + 0x10], 1
	je	.label_1088
	test	byte ptr [byte ptr [storing_columns]],  1
	je	.label_1089
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	dword ptr [rax + 0x2c], 0
	lea	rdi, [rdi]
	jle	.label_1089
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	dword ptr [rax + 0x30], 0
	jle	.label_1089
.label_1088:
	mov	eax, dword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	eax, 1
	mov	dword ptr [rbp - 0x10], eax
.label_1089:
	mov	rbp, rbp
	jmp	.label_1090
.label_1090:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x40
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	add	ecx, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], ecx
	mov	rbp, rbp
	jmp	.label_1091
.label_1092:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x10]
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e2c0

	.globl read_rest_of_line
	.type read_rest_of_line, @function
read_rest_of_line:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x18], rdi
.label_1093:
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	call	getc_unlocked
	nop	
	mov	dword ptr [rbp - 0xc], eax
	nop	
	cmp	eax, 0xa
	je	.label_1094
	cmp	dword ptr [rbp - 0xc], 0xc
	jne	.label_1099
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	call	getc_unlocked
	mov	dword ptr [rbp - 0xc], eax
	cmp	eax, 0xa
	je	.label_1095
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsi, qword ptr [rbp - 0x18]
	call	ungetc
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], eax
.label_1095:
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [keep_FF]],  1
	je	.label_1096
	mov	byte ptr [byte ptr [print_a_FF]],  1
.label_1096:
	mov	rdi, qword ptr [rbp - 8]
	call	hold_file
	mov	rbp, rbp
	jmp	.label_1094
.label_1099:
	cmp	dword ptr [rbp - 0xc], -1
	jne	.label_1098
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	call	close_file
	jmp	.label_1094
.label_1098:
	jmp	.label_1097
.label_1097:
	jmp	.label_1093
.label_1094:
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e390

	.globl pad_down
	.type pad_down, @function
pad_down:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	test	byte ptr [byte ptr [use_form_feed]],  1
	je	.label_1100
	mov	edi, 0xc
	lea	rsi, [rsi]
	call	putchar_unlocked
	nop	
	mov	dword ptr [rbp - 0xc], eax
	nop	
	jmp	.label_1102
.label_1100:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 8], eax
.label_1101:
	cmp	dword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	je	.label_1103
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x10], eax
	mov	eax, dword ptr [rbp - 8]
	mov	rbp, rbp
	add	eax, -1
	mov	dword ptr [rbp - 8], eax
	lea	rdi, [rdi]
	jmp	.label_1101
.label_1103:
	jmp	.label_1102
.label_1102:
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e410

	.globl store_columns
	.type store_columns, @function
store_columns:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x30
	nop	
	mov	dword ptr [rbp - 0xc], 0
	mov	dword ptr [dword ptr [buff_current]],  0
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [balance_columns]],  1
	nop	
	je	.label_1110
	mov	eax,  dword ptr [dword ptr [columns]]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	nop	
	jmp	.label_1109
.label_1110:
	mov	eax,  dword ptr [dword ptr [columns]]
	mov	rsp, rsp
	sub	eax, 1
	nop	
	mov	dword ptr [rbp - 0x14], eax
.label_1109:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 1
	mov	rax,  qword ptr [word ptr [column_vector]]
	nop	
	mov	qword ptr [rbp - 0x20], rax
.label_1113:
	mov	eax, dword ptr [rbp - 4]
	cmp	eax, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	jg	.label_1105
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	dword ptr [rax + 0x2c], 0
	mov	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	add	eax, 1
	mov	dword ptr [rbp - 4], eax
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, 0x40
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsp, rsp
	jmp	.label_1113
.label_1105:
	mov	dword ptr [rbp - 4], 1
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [column_vector]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
.label_1119:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 4]
	nop	
	cmp	eax, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x21], cl
	mov	rsp, rsp
	jg	.label_1116
	cmp	dword ptr [dword ptr [files_ready_to_read]],  0
	lea	rsi, [rsi]
	setne	al
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x21], al
.label_1116:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_1108
	mov	rbp, rbp
	jmp	.label_1114
.label_1108:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	dword ptr [rcx + 0x28], eax
	mov	eax,  dword ptr [dword ptr [lines_per_body]]
	mov	dword ptr [rbp - 8], eax
.label_1115:
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 8], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x22], cl
	nop	
	je	.label_1121
	cmp	dword ptr [dword ptr [files_ready_to_read]],  0
	mov	rsp, rsp
	setne	al
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x22], al
.label_1121:
	mov	al, byte ptr [rbp - 0x22]
	mov	rsp, rsp
	test	al, 1
	jne	.label_1118
	nop	
	jmp	.label_1120
.label_1118:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0x10], 0
	jne	.label_1104
	mov	rsp, rsp
	mov	dword ptr [dword ptr [input_position]],  0
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	read_line
	nop	
	test	al, 1
	jne	.label_1106
	mov	rdi, qword ptr [rbp - 0x20]
	call	read_rest_of_line
.label_1106:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	dword ptr [rax + 0x10], 0
	lea	rdi, [rdi]
	je	.label_1122
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	eax,  dword ptr [dword ptr [buff_current]]
	lea	rsi, [rsi]
	je	.label_1107
.label_1122:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x2c]
	lea	rsi, [rsi]
	add	ecx, 1
	mov	dword ptr [rax + 0x2c], ecx
	mov	ecx, dword ptr [rbp - 0x10]
	nop	
	mov	edx, dword ptr [rbp - 0xc]
	mov	eax, edx
	mov	rsi,  qword ptr [word ptr [line_vector]]
	mov	rbp, rbp
	mov	dword ptr [rsi + rax*4], ecx
	nop	
	mov	ecx,  dword ptr [dword ptr [input_position]]
	mov	edx, dword ptr [rbp - 0xc]
	nop	
	mov	edi, edx
	nop	
	add	edi, 1
	nop	
	mov	dword ptr [rbp - 0xc], edi
	mov	rbp, rbp
	mov	edx, edx
	mov	eax, edx
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [end_vector]]
	mov	dword ptr [rsi + rax*4], ecx
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [buff_current]]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], ecx
.label_1107:
	nop	
	jmp	.label_1104
.label_1104:
	jmp	.label_1112
.label_1112:
	mov	eax, dword ptr [rbp - 8]
	add	eax, -1
	mov	dword ptr [rbp - 8], eax
	jmp	.label_1115
.label_1120:
	jmp	.label_1117
.label_1117:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	eax, 1
	mov	dword ptr [rbp - 4], eax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rcx, 0x40
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rcx
	jmp	.label_1119
.label_1114:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0xc]
	mov	edx, ecx
	mov	rsi,  qword ptr [word ptr [line_vector]]
	mov	dword ptr [rsi + rdx*4], eax
	test	byte ptr [byte ptr [balance_columns]],  1
	lea	rdi, [rdi]
	je	.label_1111
	mov	edi, dword ptr [rbp - 0xc]
	call	balance
.label_1111:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e6d0

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
.label_1125:
	mov	eax, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	cmp	eax,  dword ptr [dword ptr [columns]]
	jg	.label_1123
	mov	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	mov	dword ptr [rbp - 0x18], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0x20], eax
	mov	eax, ecx
	cdq	
	idiv	dword ptr [dword ptr [columns]]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, edx
	lea	rdi, [rdi]
	jg	.label_1124
	mov	eax, dword ptr [rbp - 0x18]
	nop	
	add	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x18], eax
.label_1124:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	dword ptr [rcx + 0x2c], eax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1c]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	dword ptr [rcx + 0x28], eax
	mov	eax, dword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x1c], eax
	mov	eax, dword ptr [rbp - 0x14]
	add	eax, 1
	mov	dword ptr [rbp - 0x14], eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 0x40
	mov	qword ptr [rbp - 0x10], rcx
	nop	
	jmp	.label_1125
.label_1123:
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e7a0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [file_name]],  rdi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e7d0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rsp, rsp
	mov	al, dil
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], al
	nop	
	mov	al, byte ptr [rbp - 1]
	mov	rsp, rsp
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [ignore_EPIPE]],  al
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e800

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	call	close_stream
	cmp	eax, 0
	je	.label_1126
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_1129
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	je	.label_1126
.label_1129:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_3
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_1130
	nop	
	call	__errno_location
	nop	
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str_2
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_1128
.label_1130:
	call	__errno_location
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_1128:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	rsp, rsp
	call	_exit
.label_1126:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	call	close_stream
	nop	
	cmp	eax, 0
	je	.label_1127
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_1127:
	lea	rdi, [rdi]
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e930

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 4], edi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdx
	mov	dword ptr [rbp - 0x1c], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x1c]
	call	posix_fadvise
	nop	
	mov	dword ptr [rbp - 0x20], eax
	lea	rsi, [rsi]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e970

	.globl fadvise
	.type fadvise, @function
fadvise:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rsp, rsp
	cmp	qword ptr [rbp - 8], 0
	je	.label_1131
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	fileno
	xor	ecx, ecx
	mov	edi, ecx
	mov	ecx, dword ptr [rbp - 0xc]
	mov	qword ptr [rbp - 0x18], rdi
	mov	edi, eax
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	call	fdadvise
.label_1131:
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e9d0

	.globl fopen_safer
	.type fopen_safer, @function
fopen_safer:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x40
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	fopen
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1136
	mov	rdi, qword ptr [rbp - 0x20]
	call	fileno
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], eax
	mov	rsp, rsp
	cmp	ecx, dword ptr [rbp - 0x24]
	jg	.label_1135
	cmp	dword ptr [rbp - 0x24], 2
	lea	rsi, [rsi]
	jg	.label_1135
	mov	edi, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	call	dup_safer
	mov	dword ptr [rbp - 0x28], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	jge	.label_1133
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], ecx
	mov	rdi, qword ptr [rbp - 0x20]
	call	rpl_fclose
	mov	ecx, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 0x34], eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x38], ecx
	mov	rbp, rbp
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x38]
	mov	dword ptr [rax], ecx
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1134
.label_1133:
	mov	rdi, qword ptr [rbp - 0x20]
	call	rpl_fclose
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	rsp, rsp
	jne	.label_1137
	mov	edi, dword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	fdopen
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	cmp	rax, 0
	mov	rsp, rsp
	jne	.label_1132
.label_1137:
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x30], ecx
	nop	
	mov	edi, dword ptr [rbp - 0x28]
	call	close
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], eax
	mov	dword ptr [rbp - 0x40], ecx
	lea	rsi, [rsi]
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	dword ptr [rax], ecx
	nop	
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1134
.label_1132:
	jmp	.label_1135
.label_1135:
	jmp	.label_1136
.label_1136:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_1134:
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	add	rsp, 0x40
	mov	rbp, rbp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40eb50

	.globl gettime
	.type gettime, @function
gettime:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	mov	rsp, rsp
	call	clock_gettime
	mov	dword ptr [rbp - 0xc], eax
	mov	rbp, rbp
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40eb90
	.globl current_timespec
	.type current_timespec, @function
current_timespec:

	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	nop	
	lea	rdi, [rbp - 0x20]
	call	gettime
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rbp - 0x20]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ebe0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	nop	
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, eax
	nop	
	mov	dword ptr [rbp - 4], edi
	mov	byte ptr [rbp - 5], 1
	mov	edi, dword ptr [rbp - 4]
	call	setlocale
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	nop	
	je	.label_1139
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str_4
	mov	rsp, rsp
	mov	esi, eax
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_1140
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str.1_0
	lea	rsi, [rsi]
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_1138
.label_1140:
	mov	byte ptr [rbp - 5], 0
.label_1138:
	jmp	.label_1139
.label_1139:
	mov	al, byte ptr [rbp - 5]
	lea	rdi, [rdi]
	and	al, 1
	nop	
	movzx	eax, al
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ec80

	.globl imaxtostr
	.type imaxtostr, @function
imaxtostr:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	add	rsi, 0x14
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rsi], 0
	mov	rsp, rsp
	cmp	qword ptr [rbp - 8], 0
	jge	.label_1141
	nop	
	jmp	.label_1144
.label_1144:
	mov	eax, 0x30
	lea	rdi, [rdi]
	mov	ecx, eax
	nop	
	mov	eax, 0xa
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0x20]
	idiv	rsi
	sub	rcx, rdx
	mov	rbp, rbp
	mov	dil, cl
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rcx - 1], dil
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	nop	
	cqo	
	idiv	rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	lea	rdi, [rdi]
	jne	.label_1144
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	nop	
	add	rcx, -1
	nop	
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax - 1], 0x2d
	mov	rbp, rbp
	jmp	.label_1142
.label_1141:
	jmp	.label_1143
.label_1143:
	mov	rsp, rsp
	mov	eax, 0xa
	mov	ecx, eax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	cqo	
	mov	rsp, rsp
	idiv	rcx
	nop	
	add	rdx, 0x30
	mov	sil, dl
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdx, rcx
	mov	rsp, rsp
	add	rdx, -1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rcx - 1], sil
	mov	eax, 0xa
	mov	rbp, rbp
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	nop	
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	cmp	rax, 0
	lea	rsi, [rsi]
	jne	.label_1143
	jmp	.label_1142
.label_1142:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40edd0

	.globl gnu_mbswidth
	.type gnu_mbswidth, @function
gnu_mbswidth:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rax
	mov	rsp, rsp
	call	strlen
	mov	edx, dword ptr [rbp - 0xc]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, rax
	lea	rdi, [rdi]
	call	mbsnwidth
	mov	rbp, rbp
	add	rsp, 0x20
	nop	
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ee20

	.globl mbsnwidth
	.type mbsnwidth, @function
mbsnwidth:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c], edx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x28]
	add	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rsi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x34], 0
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_1168
	jmp	.label_1165
.label_1165:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x30]
	nop	
	jae	.label_1170
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	add	ecx, -0x20
	mov	eax, ecx
	sub	ecx, 0x5e
	mov	qword ptr [rbp - 0x60], rax
	mov	dword ptr [rbp - 0x64], ecx
	mov	rbp, rbp
	ja	.label_1175
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1156]]
	lea	rdi, [rdi]
	jmp	rcx
.label_2290:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x34]
	add	ecx, 1
	nop	
	mov	dword ptr [rbp - 0x34], ecx
	jmp	.label_1162
.label_1175:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	mov	rbp, rbp
	lea	rcx, [rbp - 0x40]
	mov	rsp, rsp
	mov	rdi, rcx
	call	memset
.label_1158:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x44]
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	sub	rax, rdx
	mov	rdx, rax
	call	rpl_mbrtowc
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], -1
	lea	rdi, [rdi]
	jne	.label_1155
	mov	eax, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	and	eax, 1
	cmp	eax, 0
	jne	.label_1160
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x34]
	add	ecx, 1
	mov	dword ptr [rbp - 0x34], ecx
	lea	rsi, [rsi]
	jmp	.label_1152
.label_1160:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1150
.label_1155:
	cmp	qword ptr [rbp - 0x50], -2
	jne	.label_1172
	mov	eax, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	mov	rsp, rsp
	jne	.label_1145
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x34]
	nop	
	add	ecx, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x34], ecx
	jmp	.label_1152
.label_1145:
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1150
.label_1172:
	cmp	qword ptr [rbp - 0x50], 0
	nop	
	jne	.label_1153
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], 1
.label_1153:
	mov	edi, dword ptr [rbp - 0x44]
	call	wcwidth
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x54], eax
	cmp	dword ptr [rbp - 0x54], 0
	lea	rdi, [rdi]
	jl	.label_1169
	mov	eax, 0x7fffffff
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x54]
	nop	
	sub	eax, dword ptr [rbp - 0x34]
	lea	rdi, [rdi]
	cmp	ecx, eax
	jle	.label_1173
	jmp	.label_1151
.label_1173:
	mov	eax, dword ptr [rbp - 0x54]
	add	eax, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], eax
	mov	rsp, rsp
	jmp	.label_1148
.label_1169:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1c]
	nop	
	and	eax, 2
	mov	rbp, rbp
	cmp	eax, 0
	jne	.label_1157
	mov	edi, dword ptr [rbp - 0x44]
	call	iswcntrl
	cmp	eax, 0
	mov	rbp, rbp
	jne	.label_1164
	cmp	dword ptr [rbp - 0x34], 0x7fffffff
	lea	rsi, [rsi]
	jne	.label_1166
	jmp	.label_1151
.label_1166:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x34]
	nop	
	add	eax, 1
	mov	dword ptr [rbp - 0x34], eax
.label_1164:
	mov	rsp, rsp
	jmp	.label_1149
.label_1157:
	nop	
	mov	dword ptr [rbp - 4], 0xffffffff
	nop	
	jmp	.label_1150
.label_1149:
	jmp	.label_1148
.label_1148:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rbp - 0x40]
	mov	rsp, rsp
	call	mbsinit
	cmp	eax, 0
	mov	rbp, rbp
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1158
.label_1152:
	mov	rsp, rsp
	jmp	.label_1162
.label_1162:
	jmp	.label_1165
.label_1170:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1150
.label_1168:
	jmp	.label_1147
.label_1147:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1174
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rcx
	mov	rsp, rsp
	mov	dl, byte ptr [rax]
	mov	byte ptr [rbp - 0x55], dl
	lea	rdi, [rdi]
	movzx	esi, byte ptr [rbp - 0x55]
	nop	
	movsxd	rax, esi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x70], rax
	lea	rdi, [rdi]
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	movzx	esi, word ptr [rax + rcx*2]
	and	esi, 0x4000
	lea	rdi, [rdi]
	cmp	esi, 0
	nop	
	je	.label_1159
	cmp	dword ptr [rbp - 0x34], 0x7fffffff
	jne	.label_1167
	jmp	.label_1151
.label_1167:
	mov	eax, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x34], eax
	nop	
	jmp	.label_1146
.label_1159:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rsp, rsp
	and	eax, 2
	cmp	eax, 0
	jne	.label_1161
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x55]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x78], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x78]
	movzx	edx, word ptr [rax + rcx*2]
	mov	rbp, rbp
	and	edx, 2
	lea	rsi, [rsi]
	cmp	edx, 0
	lea	rsi, [rsi]
	jne	.label_1154
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x34], 0x7fffffff
	jne	.label_1163
	mov	rsp, rsp
	jmp	.label_1151
.label_1163:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x34], eax
.label_1154:
	jmp	.label_1171
.label_1161:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1150
.label_1171:
	jmp	.label_1146
.label_1146:
	lea	rdi, [rdi]
	jmp	.label_1147
.label_1174:
	mov	eax, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	jmp	.label_1150
.label_1151:
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0x7fffffff
.label_1150:
	nop	
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x80
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f240

	.globl nstrftime
	.type nstrftime, @function
nstrftime:
	nop	
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x60
	xor	eax, eax
	nop	
	mov	r10d, 0xffffffff
	lea	rdi, [rdi]
	lea	r11, [rbp - 0x2d]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	nop	
	mov	dword ptr [rbp - 0x2c], r9d
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x2d], 0
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x28]
	nop	
	mov	r9d, dword ptr [rbp - 0x2c]
	mov	qword ptr [rbp - 0x38], r8
	lea	rdi, [rdi]
	mov	r8d, eax
	mov	dword ptr [rbp - 0x3c], r9d
	nop	
	mov	r9d, eax
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0xffffffff
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], r11
	lea	rdi, [rdi]
	mov	r11, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], r11
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rsp + 0x18], eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x40], r10d
	call	__strftime_internal
	lea	rdi, [rdi]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f300

	.globl __strftime_internal
	.type __strftime_internal, @function
__strftime_internal:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x9d8
	mov	al, r8b
	mov	r8d, dword ptr [rbp + 0x28]
	mov	rbp, rbp
	mov	r10, qword ptr [rbp + 0x20]
	mov	r11, qword ptr [rbp + 0x18]
	mov	ebx, dword ptr [rbp + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 0x30], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rdx
	mov	qword ptr [rbp - 0x40], rcx
	nop	
	and	al, 1
	mov	byte ptr [rbp - 0x41], al
	mov	dword ptr [rbp - 0x48], r9d
	mov	dword ptr [rbp - 0x4c], ebx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], r11
	mov	qword ptr [rbp - 0x60], r10
	mov	dword ptr [rbp - 0x64], r8d
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	r8d, dword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x68], r8d
	mov	qword ptr [rbp - 0x78], 0
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x80], rcx
	mov	qword ptr [rbp - 0x70], 0
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rcx
	cmp	qword ptr [rbp - 0x70], 0
	nop	
	jne	.label_1354
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str_0
	mov	qword ptr [rbp - 0x70], rax
.label_1354:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x68], 0xc
	jle	.label_1391
	mov	eax, dword ptr [rbp - 0x68]
	sub	eax, 0xc
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x68], eax
	nop	
	jmp	.label_1393
.label_1391:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x68], 0
	lea	rdi, [rdi]
	jne	.label_1396
	nop	
	mov	dword ptr [rbp - 0x68], 0xc
.label_1396:
	mov	rbp, rbp
	jmp	.label_1393
.label_1393:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x88], rax
.label_1347:
	nop	
	mov	rax, qword ptr [rbp - 0x88]
	nop	
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0
	je	.label_1404
	nop	
	mov	dword ptr [rbp - 0x8c], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x94], 0
	mov	byte ptr [rbp - 0xe1], 0
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x41]
	mov	rbp, rbp
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xe2], al
	nop	
	mov	byte ptr [rbp - 0xf1], 0
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	movsx	edx, byte ptr [rcx]
	mov	rsp, rsp
	cmp	edx, 0x25
	nop	
	je	.label_1411
	lea	rsi, [rsi]
	jmp	.label_1430
.label_1430:
	mov	qword ptr [rbp - 0x108], 1
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_1433
	nop	
	xor	eax, eax
	mov	dword ptr [rbp - 0x75c], eax
	jmp	.label_1440
.label_1433:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x75c], eax
.label_1440:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x75c]
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x110], rcx
	mov	rcx, qword ptr [rbp - 0x108]
	cmp	rcx, qword ptr [rbp - 0x110]
	nop	
	jae	.label_1445
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x110]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x768], rax
	nop	
	jmp	.label_1454
.label_1445:
	mov	rax, qword ptr [rbp - 0x108]
	nop	
	mov	qword ptr [rbp - 0x768], rax
.label_1454:
	mov	rax, qword ptr [rbp - 0x768]
	mov	qword ptr [rbp - 0x118], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x118]
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_1460
	mov	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	jmp	.label_1209
.label_1460:
	nop	
	cmp	qword ptr [rbp - 0x80], 0
	mov	rbp, rbp
	je	.label_1468
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x94], 0
	lea	rsi, [rsi]
	jne	.label_1470
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x108]
	cmp	rax, qword ptr [rbp - 0x110]
	nop	
	jae	.label_1470
	movsxd	rax, dword ptr [rbp - 0x4c]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x120], rax
	nop	
	cmp	dword ptr [rbp - 0x8c], 0x30
	lea	rsi, [rsi]
	je	.label_1482
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x8c], 0x2b
	lea	rdi, [rdi]
	jne	.label_1491
.label_1482:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x120]
	mov	rsp, rsp
	call	memset
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x120]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_1498
.label_1491:
	lea	rsi, [rsi]
	mov	esi, 0x20
	nop	
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x120]
	mov	rbp, rbp
	call	memset
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x120]
	mov	rsp, rsp
	add	rdx, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], rdx
.label_1498:
	mov	rbp, rbp
	jmp	.label_1470
.label_1470:
	mov	rax, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x80]
	mov	byte ptr [rax], cl
	mov	rax, qword ptr [rbp - 0x108]
	nop	
	add	rax, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], rax
.label_1468:
	mov	rax, qword ptr [rbp - 0x118]
	nop	
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1239
.label_1411:
	jmp	.label_1392
.label_1392:
	mov	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rsp, rsp
	inc	rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x88], rcx
	lea	rsi, [rsi]
	movsx	edx, byte ptr [rax + 1]
	mov	rsp, rsp
	mov	esi, edx
	nop	
	sub	esi, 0x23
	mov	dword ptr [rbp - 0x76c], edx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x770], esi
	mov	rsp, rsp
	je	.label_1527
	jmp	.label_1542
.label_1542:
	mov	eax, dword ptr [rbp - 0x76c]
	sub	eax, 0x2b
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x774], eax
	je	.label_1213
	jmp	.label_1547
.label_1547:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x76c]
	mov	rsp, rsp
	sub	eax, 0x2d
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x778], eax
	je	.label_1213
	nop	
	jmp	.label_1552
.label_1552:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x76c]
	mov	rbp, rbp
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x77c], eax
	je	.label_1213
	mov	rbp, rbp
	jmp	.label_1559
.label_1559:
	mov	eax, dword ptr [rbp - 0x76c]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x780], eax
	mov	rbp, rbp
	je	.label_1561
	jmp	.label_1346
.label_1346:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x76c]
	sub	eax, 0x5f
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x784], eax
	jne	.label_1566
	jmp	.label_1213
.label_1213:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	mov	dword ptr [rbp - 0x8c], ecx
	nop	
	jmp	.label_1392
.label_1561:
	nop	
	mov	byte ptr [rbp - 0xe2], 1
	mov	rbp, rbp
	jmp	.label_1392
.label_1527:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xf1], 1
	lea	rdi, [rdi]
	jmp	.label_1392
.label_1566:
	jmp	.label_1230
.label_1230:
	lea	rdi, [rdi]
	jmp	.label_1582
.label_1582:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	lea	rdi, [rdi]
	ja	.label_1193
	mov	dword ptr [rbp - 0x4c], 0
.label_1185:
	cmp	dword ptr [rbp - 0x4c], 0xccccccc
	lea	rdi, [rdi]
	jg	.label_1586
	cmp	dword ptr [rbp - 0x4c], 0xccccccc
	jne	.label_1590
	nop	
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 7
	jle	.label_1590
.label_1586:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x4c], 0x7fffffff
	nop	
	jmp	.label_1441
.label_1590:
	imul	eax, dword ptr [rbp - 0x4c], 0xa
	nop	
	mov	dword ptr [rbp - 0x4c], eax
	mov	rcx, qword ptr [rbp - 0x88]
	nop	
	movsx	eax, byte ptr [rcx]
	mov	rbp, rbp
	sub	eax, 0x30
	lea	rsi, [rsi]
	add	eax, dword ptr [rbp - 0x4c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4c], eax
.label_1441:
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x88], rax
	nop	
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	nop	
	cmp	ecx, 9
	jbe	.label_1185
	mov	rbp, rbp
	jmp	.label_1193
.label_1193:
	mov	rax, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x788], ecx
	mov	dword ptr [rbp - 0x78c], edx
	je	.label_1195
	lea	rsi, [rsi]
	jmp	.label_1205
.label_1205:
	mov	eax, dword ptr [rbp - 0x788]
	nop	
	sub	eax, 0x4f
	mov	dword ptr [rbp - 0x790], eax
	jne	.label_1207
	jmp	.label_1195
.label_1195:
	mov	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, 1
	mov	qword ptr [rbp - 0x88], rcx
	nop	
	movsx	edx, byte ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x90], edx
	jmp	.label_1212
.label_1207:
	mov	dword ptr [rbp - 0x90], 0
.label_1212:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xf8], ecx
	test	ecx, ecx
	mov	dword ptr [rbp - 0x794], ecx
	je	.label_1225
	lea	rdi, [rdi]
	jmp	.label_1233
.label_1233:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x794]
	lea	rsi, [rsi]
	sub	eax, 0x25
	nop	
	mov	dword ptr [rbp - 0x798], eax
	mov	rsp, rsp
	je	.label_1236
	lea	rdi, [rdi]
	jmp	.label_1269
.label_1269:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x794]
	lea	rsi, [rsi]
	sub	eax, 0x3a
	mov	dword ptr [rbp - 0x79c], eax
	je	.label_1244
	nop	
	jmp	.label_1250
.label_1250:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x41
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x7a0], eax
	nop	
	je	.label_1251
	jmp	.label_1255
.label_1255:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x42
	nop	
	mov	dword ptr [rbp - 0x7a4], eax
	je	.label_1256
	lea	rsi, [rsi]
	jmp	.label_1262
.label_1262:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x43
	mov	dword ptr [rbp - 0x7a8], eax
	je	.label_1263
	mov	rbp, rbp
	jmp	.label_1267
.label_1267:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0x7ac], eax
	je	.label_1272
	jmp	.label_1298
.label_1298:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x46
	mov	dword ptr [rbp - 0x7b0], eax
	je	.label_1277
	lea	rdi, [rdi]
	jmp	.label_1282
.label_1282:
	nop	
	mov	eax, dword ptr [rbp - 0x794]
	lea	rdi, [rdi]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x7b4], eax
	je	.label_1283
	mov	rsp, rsp
	jmp	.label_1290
.label_1290:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x48
	nop	
	mov	dword ptr [rbp - 0x7b8], eax
	je	.label_1311
	jmp	.label_1297
.label_1297:
	nop	
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x49
	mov	dword ptr [rbp - 0x7bc], eax
	lea	rdi, [rdi]
	je	.label_1299
	jmp	.label_1307
.label_1307:
	mov	eax, dword ptr [rbp - 0x794]
	nop	
	sub	eax, 0x4d
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x7c0], eax
	je	.label_1310
	jmp	.label_1315
.label_1315:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x794]
	mov	rsp, rsp
	sub	eax, 0x4e
	mov	dword ptr [rbp - 0x7c4], eax
	je	.label_1317
	jmp	.label_1322
.label_1322:
	nop	
	mov	eax, dword ptr [rbp - 0x794]
	nop	
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x7c8], eax
	lea	rsi, [rsi]
	je	.label_1323
	lea	rdi, [rdi]
	jmp	.label_1370
.label_1370:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x52
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x7cc], eax
	je	.label_1330
	jmp	.label_1333
.label_1333:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x53
	mov	dword ptr [rbp - 0x7d0], eax
	mov	rbp, rbp
	je	.label_1334
	jmp	.label_1341
.label_1341:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x794]
	mov	rbp, rbp
	sub	eax, 0x54
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x7d4], eax
	je	.label_1344
	jmp	.label_1349
.label_1349:
	mov	eax, dword ptr [rbp - 0x794]
	mov	rbp, rbp
	sub	eax, 0x55
	nop	
	mov	dword ptr [rbp - 0x7d8], eax
	je	.label_1350
	jmp	.label_1355
.label_1355:
	mov	eax, dword ptr [rbp - 0x794]
	lea	rdi, [rdi]
	sub	eax, 0x56
	mov	dword ptr [rbp - 0x7dc], eax
	lea	rsi, [rsi]
	je	.label_1283
	jmp	.label_1365
.label_1365:
	mov	eax, dword ptr [rbp - 0x794]
	lea	rsi, [rsi]
	sub	eax, 0x57
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x7e0], eax
	je	.label_1367
	jmp	.label_1286
.label_1286:
	mov	eax, dword ptr [rbp - 0x794]
	lea	rsi, [rsi]
	sub	eax, 0x58
	nop	
	mov	dword ptr [rbp - 0x7e4], eax
	lea	rsi, [rsi]
	je	.label_1373
	jmp	.label_1379
.label_1379:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x59
	mov	dword ptr [rbp - 0x7e8], eax
	je	.label_1380
	nop	
	jmp	.label_1383
.label_1383:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x794]
	nop	
	sub	eax, 0x5a
	mov	dword ptr [rbp - 0x7ec], eax
	lea	rdi, [rdi]
	je	.label_1385
	mov	rbp, rbp
	jmp	.label_1387
.label_1387:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x61
	mov	dword ptr [rbp - 0x7f0], eax
	lea	rdi, [rdi]
	je	.label_1389
	jmp	.label_1394
.label_1394:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x62
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7f4], eax
	lea	rdi, [rdi]
	je	.label_1332
	mov	rsp, rsp
	jmp	.label_1401
.label_1401:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x63
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x7f8], eax
	je	.label_1402
	lea	rsi, [rsi]
	jmp	.label_1184
.label_1184:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x64
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x7fc], eax
	je	.label_1406
	jmp	.label_1412
.label_1412:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x65
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x800], eax
	je	.label_1413
	mov	rbp, rbp
	jmp	.label_1419
.label_1419:
	mov	eax, dword ptr [rbp - 0x794]
	lea	rdi, [rdi]
	sub	eax, 0x67
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x804], eax
	je	.label_1283
	mov	rbp, rbp
	jmp	.label_1428
.label_1428:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x68
	mov	dword ptr [rbp - 0x808], eax
	je	.label_1332
	lea	rdi, [rdi]
	jmp	.label_1435
.label_1435:
	nop	
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x6a
	mov	dword ptr [rbp - 0x80c], eax
	lea	rdi, [rdi]
	je	.label_1438
	jmp	.label_1400
.label_1400:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x6b
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x810], eax
	mov	rbp, rbp
	je	.label_1444
	mov	rsp, rsp
	jmp	.label_1451
.label_1451:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x6c
	mov	dword ptr [rbp - 0x814], eax
	nop	
	je	.label_1452
	mov	rbp, rbp
	jmp	.label_1474
.label_1474:
	mov	eax, dword ptr [rbp - 0x794]
	lea	rsi, [rsi]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0x818], eax
	je	.label_1486
	mov	rbp, rbp
	jmp	.label_1520
.label_1520:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x794]
	mov	rbp, rbp
	sub	eax, 0x6e
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x81c], eax
	lea	rsi, [rsi]
	je	.label_1462
	jmp	.label_1465
.label_1465:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x70
	nop	
	mov	dword ptr [rbp - 0x820], eax
	lea	rdi, [rdi]
	je	.label_1466
	jmp	.label_1471
.label_1471:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x71
	mov	dword ptr [rbp - 0x824], eax
	je	.label_1473
	lea	rdi, [rdi]
	jmp	.label_1479
.label_1479:
	mov	eax, dword ptr [rbp - 0x794]
	lea	rdi, [rdi]
	sub	eax, 0x72
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x828], eax
	mov	rsp, rsp
	je	.label_1480
	jmp	.label_1487
.label_1487:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x794]
	mov	rbp, rbp
	sub	eax, 0x73
	mov	dword ptr [rbp - 0x82c], eax
	je	.label_1488
	jmp	.label_1493
.label_1493:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x794]
	mov	rsp, rsp
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x830], eax
	nop	
	je	.label_1494
	jmp	.label_1502
.label_1502:
	mov	eax, dword ptr [rbp - 0x794]
	lea	rsi, [rsi]
	sub	eax, 0x75
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x834], eax
	mov	rbp, rbp
	je	.label_1503
	jmp	.label_1388
.label_1388:
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x77
	nop	
	mov	dword ptr [rbp - 0x838], eax
	lea	rdi, [rdi]
	je	.label_1395
	jmp	.label_1511
.label_1511:
	mov	eax, dword ptr [rbp - 0x794]
	lea	rsi, [rsi]
	sub	eax, 0x78
	mov	dword ptr [rbp - 0x83c], eax
	je	.label_1431
	lea	rdi, [rdi]
	jmp	.label_1516
.label_1516:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x794]
	sub	eax, 0x79
	mov	dword ptr [rbp - 0x840], eax
	lea	rsi, [rsi]
	je	.label_1517
	jmp	.label_1504
.label_1504:
	mov	eax, dword ptr [rbp - 0x794]
	lea	rdi, [rdi]
	sub	eax, 0x7a
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x844], eax
	je	.label_1524
	jmp	.label_1540
.label_1236:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_1532
	mov	rsp, rsp
	jmp	.label_1183
.label_1532:
	jmp	.label_1537
.label_1537:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x128], 1
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_1538
	xor	eax, eax
	mov	dword ptr [rbp - 0x848], eax
	lea	rsi, [rsi]
	jmp	.label_1544
.label_1538:
	nop	
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x848], eax
.label_1544:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x848]
	movsxd	rcx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x130], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x128]
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 0x130]
	lea	rdi, [rdi]
	jae	.label_1548
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x130]
	mov	qword ptr [rbp - 0x850], rax
	jmp	.label_1557
.label_1548:
	nop	
	mov	rax, qword ptr [rbp - 0x128]
	nop	
	mov	qword ptr [rbp - 0x850], rax
.label_1557:
	mov	rax, qword ptr [rbp - 0x850]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x138], rax
	nop	
	mov	rax, qword ptr [rbp - 0x138]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_1565
	mov	qword ptr [rbp - 0x20], 0
	mov	rsp, rsp
	jmp	.label_1209
.label_1565:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1410
	cmp	dword ptr [rbp - 0x94], 0
	lea	rsi, [rsi]
	jne	.label_1188
	mov	rax, qword ptr [rbp - 0x128]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x130]
	mov	rsp, rsp
	jae	.label_1188
	movsxd	rax, dword ptr [rbp - 0x4c]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0x128]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x140], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	nop	
	je	.label_1585
	nop	
	cmp	dword ptr [rbp - 0x8c], 0x2b
	lea	rsi, [rsi]
	jne	.label_1587
.label_1585:
	lea	rsi, [rsi]
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x140]
	lea	rsi, [rsi]
	call	memset
	mov	rdx, qword ptr [rbp - 0x140]
	lea	rdi, [rdi]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_1575
.label_1587:
	mov	esi, 0x20
	lea	rsi, [rsi]
.label_2322:
	mov	rdi, qword ptr [rbp - 0x80]
	nop	
	mov	rdx, qword ptr [rbp - 0x140]
	call	memset
	mov	rdx, qword ptr [rbp - 0x140]
	mov	rbp, rbp
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_1575:
	jmp	.label_1188
.label_1188:
	mov	rax, qword ptr [rbp - 0x88]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x80]
	mov	byte ptr [rax], cl
	nop	
	mov	rax, qword ptr [rbp - 0x128]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_1410:
	nop	
	mov	rax, qword ptr [rbp - 0x138]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rax
	nop	
	jmp	.label_1194
.label_1389:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_1204
	mov	rbp, rbp
	jmp	.label_1183
.label_1204:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_1351
	mov	byte ptr [rbp - 0xe2], 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xe1], 0
.label_1351:
	mov	rsp, rsp
	jmp	.label_1198
.label_1251:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_1214
	jmp	.label_1183
.label_1214:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xf1], 1
	je	.label_1222
	mov	byte ptr [rbp - 0xe2], 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xe1], 0
.label_1222:
	jmp	.label_1198
.label_1332:
	test	byte ptr [rbp - 0xf1], 1
	nop	
	je	.label_1229
	nop	
	mov	byte ptr [rbp - 0xe2], 1
	mov	byte ptr [rbp - 0xe1], 0
.label_1229:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x90], 0x45
	mov	rbp, rbp
	jne	.label_1238
	nop	
	jmp	.label_1183
.label_1238:
	jmp	.label_1198
.label_1256:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1242
	nop	
	jmp	.label_1183
.label_1242:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xf1], 1
	je	.label_1248
	mov	byte ptr [rbp - 0xe2], 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xe1], 0
.label_1248:
	lea	rdi, [rdi]
	jmp	.label_1198
.label_1402:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x90], 0x4f
	jne	.label_1599
	jmp	.label_1183
.label_1599:
	lea	rsi, [rsi]
	jmp	.label_1198
.label_1232:
	nop	
	mov	dword ptr [rbp - 0xfc], 0xffffffff
.label_1243:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edi, eax
	mov	rsi, -1
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xb0]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x40]
	mov	r8b, byte ptr [rbp - 0xe2]
	nop	
	mov	r9d, dword ptr [rbp - 0x8c]
	mov	eax, dword ptr [rbp - 0xfc]
	mov	r10, qword ptr [rbp - 0x58]
	mov	r11, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	ebx, dword ptr [rbp - 0x64]
	and	r8b, 1
	movzx	r8d, r8b
	nop	
	mov	dword ptr [rsp], eax
	nop	
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x18], ebx
	mov	rsp, rsp
	call	__strftime_internal
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x148], rax
	mov	rax, qword ptr [rbp - 0x148]
	mov	qword ptr [rbp - 0x150], rax
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_1289
	xor	eax, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x854], eax
	mov	rsp, rsp
	jmp	.label_1296
.label_1289:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x854], eax
.label_1296:
	mov	eax, dword ptr [rbp - 0x854]
	nop	
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x158], rcx
	mov	rcx, qword ptr [rbp - 0x150]
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 0x158]
	nop	
	jae	.label_1453
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x158]
	mov	qword ptr [rbp - 0x860], rax
	lea	rsi, [rsi]
	jmp	.label_1318
.label_1453:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x860], rax
.label_1318:
	mov	rax, qword ptr [rbp - 0x860]
	mov	qword ptr [rbp - 0x160], rax
	mov	rax, qword ptr [rbp - 0x160]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	cmp	rax, rcx
	mov	rsp, rsp
	jb	.label_1325
	nop	
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1209
.label_1325:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x80], 0
	mov	rbp, rbp
	je	.label_1338
	cmp	dword ptr [rbp - 0x94], 0
	mov	rbp, rbp
	jne	.label_1342
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x158]
	lea	rsi, [rsi]
	jae	.label_1342
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x150]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x168], rax
	nop	
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_1352
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x8c], 0x2b
	lea	rsi, [rsi]
	jne	.label_1362
.label_1352:
	mov	rbp, rbp
	mov	esi, 0x30
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x168]
	lea	rdi, [rdi]
	call	memset
	mov	rdx, qword ptr [rbp - 0x168]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_1372
.label_1362:
	mov	esi, 0x20
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x168]
	call	memset
	mov	rdx, qword ptr [rbp - 0x168]
	lea	rdi, [rdi]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_1372:
	mov	rsp, rsp
	jmp	.label_1342
.label_1342:
	mov	rdi, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	sub	rax, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0xb0]
	nop	
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	sil, byte ptr [rbp - 0xe2]
	mov	r9d, dword ptr [rbp - 0x8c]
	mov	rsp, rsp
	mov	r8d, dword ptr [rbp - 0xfc]
	mov	r10, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	r11, qword ptr [rbp - 0x60]
	mov	ebx, dword ptr [rbp - 0x64]
	and	sil, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x861], sil
	mov	rsi, rax
	mov	rbp, rbp
	mov	r14b, byte ptr [rbp - 0x861]
	mov	rbp, rbp
	movzx	r15d, r14b
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x868], r8d
	mov	r8d, r15d
	mov	rbp, rbp
	mov	r15d, dword ptr [rbp - 0x868]
	mov	dword ptr [rsp], r15d
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x18], ebx
	call	__strftime_internal
	mov	rcx, qword ptr [rbp - 0x150]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x80]
	nop	
	mov	qword ptr [rbp - 0x80], rcx
	mov	qword ptr [rbp - 0x870], rax
.label_1338:
	mov	rax, qword ptr [rbp - 0x160]
	add	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1194
.label_1198:
	nop	
	lea	rax, [rbp - 0x16d]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x178], rax
	mov	rax, qword ptr [rbp - 0x178]
	mov	rcx, rax
	mov	rbp, rbp
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x178], rcx
	mov	rbp, rbp
	mov	byte ptr [rax], 0x20
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x178]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x178], rcx
	mov	byte ptr [rax], 0x25
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_1425
	nop	
	mov	eax, dword ptr [rbp - 0x90]
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x178]
	mov	rbp, rbp
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rbp - 0x178], rsi
	mov	byte ptr [rdx], cl
.label_1425:
	mov	rbp, rbp
	mov	eax, 0x400
	mov	esi, eax
	lea	rdx, [rbp - 0x16d]
	lea	rdi, [rbp - 0x580]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xf8]
	mov	rbp, rbp
	mov	cl, al
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbp - 0x178]
	mov	rsp, rsp
	mov	r9, r8
	add	r9, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x178], r9
	lea	rdi, [rdi]
	mov	byte ptr [r8], cl
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0x178]
	mov	byte ptr [r8], 0
	mov	rcx, qword ptr [rbp - 0x40]
	call	strftime
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x588], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x588], 0
	nop	
	je	.label_1279
	lea	rdi, [rdi]
	jmp	.label_1475
.label_1475:
	mov	rax, qword ptr [rbp - 0x588]
	sub	rax, 1
	mov	qword ptr [rbp - 0x590], rax
	cmp	dword ptr [rbp - 0x4c], 0
	mov	rsp, rsp
	jge	.label_1478
	xor	eax, eax
	mov	dword ptr [rbp - 0x874], eax
	jmp	.label_1484
.label_1478:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x874], eax
.label_1484:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x874]
	mov	rbp, rbp
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x598], rcx
	mov	rcx, qword ptr [rbp - 0x590]
	cmp	rcx, qword ptr [rbp - 0x598]
	lea	rsi, [rsi]
	jae	.label_1489
	mov	rax, qword ptr [rbp - 0x598]
	mov	qword ptr [rbp - 0x880], rax
	nop	
	jmp	.label_1495
.label_1489:
	mov	rax, qword ptr [rbp - 0x590]
	mov	qword ptr [rbp - 0x880], rax
.label_1495:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x880]
	mov	qword ptr [rbp - 0x5a0], rax
	mov	rax, qword ptr [rbp - 0x5a0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jb	.label_1505
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	jmp	.label_1209
.label_1505:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1515
	nop	
	cmp	dword ptr [rbp - 0x94], 0
	nop	
	jne	.label_1467
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x590]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x598]
	jae	.label_1467
	movsxd	rax, dword ptr [rbp - 0x4c]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0x590]
	mov	qword ptr [rbp - 0x5a8], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_1526
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x8c], 0x2b
	nop	
	jne	.label_1535
.label_1526:
	lea	rdi, [rdi]
	mov	esi, 0x30
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x80]
	nop	
	mov	rdx, qword ptr [rbp - 0x5a8]
	call	memset
	nop	
	mov	rdx, qword ptr [rbp - 0x5a8]
	add	rdx, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_1543
.label_1535:
	mov	rbp, rbp
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x5a8]
	call	memset
	mov	rdx, qword ptr [rbp - 0x5a8]
	lea	rdi, [rdi]
	add	rdx, qword ptr [rbp - 0x80]
	nop	
	mov	qword ptr [rbp - 0x80], rdx
.label_1543:
	jmp	.label_1467
.label_1467:
	test	byte ptr [rbp - 0xe1], 1
	je	.label_1556
	lea	rax, [rbp - 0x580]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x80]
	add	rax, 1
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x590]
	mov	rbp, rbp
	mov	rsi, rax
	mov	rsp, rsp
	call	memcpy_lowcase
	nop	
	mov	qword ptr [rbp - 0x888], rax
	jmp	.label_1360
.label_1556:
	test	byte ptr [rbp - 0xe2], 1
	je	.label_1377
	lea	rax, [rbp - 0x580]
	mov	rdi, qword ptr [rbp - 0x80]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x590]
	mov	rsi, rax
	nop	
	call	memcpy_uppcase
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x890], rax
	jmp	.label_1578
.label_1377:
	lea	rax, [rbp - 0x580]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x80]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x590]
	nop	
	mov	rsi, rax
	call	memcpy
.label_1578:
	jmp	.label_1360
.label_1360:
	mov	rax, qword ptr [rbp - 0x590]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_1515:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x5a0]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1279
.label_1279:
	jmp	.label_1194
.label_1263:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1271
	mov	rbp, rbp
	jmp	.label_1198
.label_1271:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	eax, 0x64
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rdx + 0x14]
	nop	
	mov	dword ptr [rbp - 0x894], eax
	lea	rdi, [rdi]
	mov	eax, esi
	mov	rsp, rsp
	cdq	
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x894]
	idiv	esi
	add	eax, 0x13
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x5ac], eax
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	eax, dword ptr [rdi + 0x14]
	lea	rdi, [rdi]
	cdq	
	nop	
	idiv	esi
	cmp	edx, 0
	mov	byte ptr [rbp - 0x895], cl
	lea	rsi, [rsi]
	jge	.label_1595
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x5ac]
	setl	cl
	mov	byte ptr [rbp - 0x895], cl
.label_1595:
	mov	al, byte ptr [rbp - 0x895]
	and	al, 1
	movzx	ecx, al
	mov	edx, dword ptr [rbp - 0x5ac]
	sub	edx, ecx
	mov	dword ptr [rbp - 0x5ac], edx
	mov	dword ptr [rbp - 0x94], 2
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	cmp	dword ptr [rax + 0x14], 0xfffff894
	setl	cl
	mov	rsp, rsp
	and	cl, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x9d], cl
	nop	
	mov	edx, dword ptr [rbp - 0x5ac]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x9c], edx
	lea	rdi, [rdi]
	jmp	.label_1199
.label_1431:
	cmp	dword ptr [rbp - 0x90], 0x4f
	jne	.label_1221
	mov	rsp, rsp
	jmp	.label_1183
.label_1221:
	lea	rdi, [rdi]
	jmp	.label_1198
.label_1272:
	cmp	dword ptr [rbp - 0x90], 0
	mov	rsp, rsp
	je	.label_1226
	lea	rsi, [rsi]
	jmp	.label_1183
.label_1226:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:.str.1_1
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_1232
.label_1406:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1240
	jmp	.label_1183
.label_1240:
	jmp	.label_1541
.label_1541:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x94], 2
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0xc]
	nop	
	mov	dword ptr [rbp - 0x98], ecx
	lea	rdi, [rdi]
	jmp	.label_1187
.label_1413:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1254
	jmp	.label_1183
.label_1254:
	jmp	.label_1186
.label_1186:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x94], 2
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0xc]
	nop	
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_1257
.label_1534:
	mov	byte ptr [rbp - 0x9e], 1
	lea	rsi, [rsi]
	jmp	.label_1265
.label_1199:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x8c], 0
	jne	.label_1268
	mov	eax, dword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x8c], eax
.label_1268:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	cmp	dword ptr [rbp - 0x8c], 0x2b
	mov	byte ptr [rbp - 0x896], cl
	jne	.label_1275
	mov	rsp, rsp
	mov	al, 1
	mov	ecx, 0x270f
	mov	edx, 0x63
	cmp	dword ptr [rbp - 0x94], 2
	mov	rbp, rbp
	cmove	ecx, edx
	mov	rsp, rsp
	cmp	ecx, dword ptr [rbp - 0x9c]
	nop	
	mov	byte ptr [rbp - 0x897], al
	jb	.label_1281
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x94]
	cmp	eax, dword ptr [rbp - 0x4c]
	lea	rsi, [rsi]
	setl	cl
	mov	byte ptr [rbp - 0x897], cl
.label_1281:
	mov	al, byte ptr [rbp - 0x897]
	mov	byte ptr [rbp - 0x896], al
.label_1275:
	mov	al, byte ptr [rbp - 0x896]
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x9e], al
	nop	
	jmp	.label_1304
.label_1257:
	cmp	dword ptr [rbp - 0x8c], 0
	jne	.label_1312
	nop	
	mov	dword ptr [rbp - 0x8c], 0x5f
.label_1312:
	jmp	.label_1187
.label_1187:
	cmp	dword ptr [rbp - 0x98], 0
	nop	
	setl	al
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x9d], al
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x9c], ecx
.label_1308:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x9e], 0
.label_1304:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xa4], 0
.label_1265:
	nop	
	cmp	dword ptr [rbp - 0x90], 0x4f
	lea	rsi, [rsi]
	jne	.label_1331
	mov	rbp, rbp
	test	byte ptr [rbp - 0x9d], 1
	jne	.label_1331
	lea	rdi, [rdi]
	jmp	.label_1198
.label_1331:
	lea	rax, [rbp - 0xe0]
	add	rax, 0x17
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xc0], rax
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x9d], 1
	je	.label_1340
	xor	eax, eax
	lea	rsi, [rsi]
	sub	eax, dword ptr [rbp - 0x9c]
	mov	dword ptr [rbp - 0x9c], eax
.label_1340:
	jmp	.label_1201
.label_1201:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xa4]
	mov	rbp, rbp
	and	eax, 1
	cmp	eax, 0
	je	.label_1353
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0xc0], rcx
	mov	byte ptr [rax - 1], 0x3a
.label_1353:
	nop	
	mov	eax, 0xa
	mov	ecx, dword ptr [rbp - 0xa4]
	lea	rdi, [rdi]
	sar	ecx, 1
	mov	dword ptr [rbp - 0xa4], ecx
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x9c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x89c], eax
	lea	rsi, [rsi]
	mov	eax, ecx
	mov	rsp, rsp
	xor	edx, edx
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x89c]
	div	ecx
	add	edx, 0x30
	mov	rsp, rsp
	mov	sil, dl
	mov	rdi, qword ptr [rbp - 0xc0]
	mov	r8, rdi
	mov	rsp, rsp
	add	r8, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc0], r8
	mov	byte ptr [rdi - 1], sil
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x9c]
	nop	
	mov	eax, edx
	xor	edx, edx
	div	ecx
	mov	dword ptr [rbp - 0x9c], eax
	mov	al, 1
	cmp	dword ptr [rbp - 0x9c], 0
	mov	byte ptr [rbp - 0x89d], al
	jne	.label_1369
	cmp	dword ptr [rbp - 0xa4], 0
	nop	
	setne	al
	mov	byte ptr [rbp - 0x89d], al
.label_1369:
	mov	al, byte ptr [rbp - 0x89d]
	nop	
	test	al, 1
	jne	.label_1201
	nop	
	jmp	.label_1399
.label_1399:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x94]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x4c]
	mov	rbp, rbp
	jge	.label_1572
	nop	
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x94], eax
.label_1572:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x9d], 1
	je	.label_1405
	mov	rbp, rbp
	mov	eax, 0x2d
	mov	dword ptr [rbp - 0x8a4], eax
	lea	rdi, [rdi]
	jmp	.label_1409
.label_1405:
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, 0x2b
	nop	
	mov	dl, byte ptr [rbp - 0x9e]
	mov	rsp, rsp
	test	dl, 1
	cmovne	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x8a4], eax
.label_1409:
	nop	
	mov	eax, dword ptr [rbp - 0x8a4]
	nop	
	mov	cl, al
	mov	byte ptr [rbp - 0xb1], cl
	nop	
	cmp	dword ptr [rbp - 0x8c], 0x2d
	lea	rdi, [rdi]
	jne	.label_1422
	lea	rsi, [rsi]
	cmp	byte ptr [rbp - 0xb1], 0
	mov	rsp, rsp
	je	.label_1429
	jmp	.label_1434
.label_1434:
	mov	qword ptr [rbp - 0x5b8], 1
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_1436
	xor	eax, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x8a8], eax
	jmp	.label_1358
.label_1436:
	mov	eax, dword ptr [rbp - 0x4c]
	nop	
	mov	dword ptr [rbp - 0x8a8], eax
.label_1358:
	mov	eax, dword ptr [rbp - 0x8a8]
	mov	rsp, rsp
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x5c0], rcx
	mov	rcx, qword ptr [rbp - 0x5b8]
	cmp	rcx, qword ptr [rbp - 0x5c0]
	jae	.label_1449
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rbp - 0x8b0], rax
	lea	rdi, [rdi]
	jmp	.label_1457
.label_1449:
	nop	
	mov	rax, qword ptr [rbp - 0x5b8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x8b0], rax
.label_1457:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x8b0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x5c8], rax
	mov	rax, qword ptr [rbp - 0x5c8]
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_1519
	mov	qword ptr [rbp - 0x20], 0
	nop	
	jmp	.label_1209
.label_1519:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x80], 0
	mov	rbp, rbp
	je	.label_1469
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_1476
	mov	rax, qword ptr [rbp - 0x5b8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x5c0]
	nop	
	jae	.label_1476
	nop	
	movsxd	rax, dword ptr [rbp - 0x4c]
	nop	
	sub	rax, qword ptr [rbp - 0x5b8]
	nop	
	mov	qword ptr [rbp - 0x5d0], rax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_1485
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_1492
.label_1485:
	nop	
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x5d0]
	call	memset
	mov	rdx, qword ptr [rbp - 0x5d0]
	mov	rbp, rbp
	add	rdx, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x80], rdx
	lea	rsi, [rsi]
	jmp	.label_1499
.label_1492:
	lea	rsi, [rsi]
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x5d0]
	lea	rdi, [rdi]
	call	memset
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x5d0]
	lea	rsi, [rsi]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_1499:
	mov	rsp, rsp
	jmp	.label_1476
.label_1476:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xb1]
	mov	rcx, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	mov	byte ptr [rcx], al
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x5b8]
	nop	
	add	rcx, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x80], rcx
.label_1469:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x5c8]
	add	rax, qword ptr [rbp - 0x78]
	nop	
	mov	qword ptr [rbp - 0x78], rax
	mov	rsp, rsp
	jmp	.label_1429
.label_1429:
	mov	rsp, rsp
	jmp	.label_1510
.label_1422:
	lea	rax, [rbp - 0xe0]
	movsxd	rcx, dword ptr [rbp - 0x94]
	mov	rbp, rbp
	add	rax, 0x17
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xc0]
	nop	
	sub	rax, rdx
	lea	rsi, [rsi]
	sub	rcx, rax
	cmp	byte ptr [rbp - 0xb1], 0
	lea	rdi, [rdi]
	setne	sil
	xor	sil, 0xff
	xor	sil, 0xff
	mov	rsp, rsp
	and	sil, 1
	movzx	edi, sil
	lea	rdi, [rdi]
	movsxd	rax, edi
	sub	rcx, rax
	mov	rsp, rsp
	mov	edi, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x5d4], edi
	cmp	dword ptr [rbp - 0x5d4], 0
	mov	rbp, rbp
	jle	.label_1529
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x8c], 0x5f
	nop	
	jne	.label_1551
	movsxd	rax, dword ptr [rbp - 0x5d4]
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	nop	
	jb	.label_1554
	mov	qword ptr [rbp - 0x20], 0
	mov	rbp, rbp
	jmp	.label_1209
.label_1554:
	cmp	qword ptr [rbp - 0x80], 0
	mov	rsp, rsp
	je	.label_1564
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	movsxd	rdx, dword ptr [rbp - 0x5d4]
	call	memset
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x5d4]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x80]
	movsxd	rdi, esi
	add	rdx, rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x80], rdx
.label_1564:
	movsxd	rax, dword ptr [rbp - 0x5d4]
	add	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], rax
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x4c]
	mov	rbp, rbp
	cmp	ecx, dword ptr [rbp - 0x5d4]
	nop	
	jle	.label_1574
	mov	eax, dword ptr [rbp - 0x4c]
	sub	eax, dword ptr [rbp - 0x5d4]
	mov	dword ptr [rbp - 0x8b4], eax
	jmp	.label_1581
.label_1574:
	nop	
	xor	eax, eax
	mov	dword ptr [rbp - 0x8b4], eax
	nop	
	jmp	.label_1581
.label_1581:
	nop	
	mov	eax, dword ptr [rbp - 0x8b4]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4c], eax
	cmp	byte ptr [rbp - 0xb1], 0
	nop	
	je	.label_1270
	lea	rdi, [rdi]
	jmp	.label_1589
.label_1589:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x5e0], 1
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_1591
	xor	eax, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x8b8], eax
	lea	rdi, [rdi]
	jmp	.label_1596
.label_1591:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x8b8], eax
.label_1596:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x8b8]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x5e8], rcx
	mov	rcx, qword ptr [rbp - 0x5e0]
	cmp	rcx, qword ptr [rbp - 0x5e8]
	lea	rsi, [rsi]
	jae	.label_1176
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x5e8]
	mov	qword ptr [rbp - 0x8c0], rax
	lea	rsi, [rsi]
	jmp	.label_1189
.label_1176:
	nop	
	mov	rax, qword ptr [rbp - 0x5e0]
	mov	qword ptr [rbp - 0x8c0], rax
.label_1189:
	mov	rax, qword ptr [rbp - 0x8c0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x5f0], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x5f0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	nop	
	jb	.label_1197
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], 0
	mov	rsp, rsp
	jmp	.label_1209
.label_1197:
	cmp	qword ptr [rbp - 0x80], 0
	mov	rbp, rbp
	je	.label_1384
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_1215
	mov	rax, qword ptr [rbp - 0x5e0]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x5e8]
	mov	rbp, rbp
	jae	.label_1215
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x5e0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x5f8], rax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x8c], 0x30
	mov	rbp, rbp
	je	.label_1224
	cmp	dword ptr [rbp - 0x8c], 0x2b
	nop	
	jne	.label_1496
.label_1224:
	mov	esi, 0x30
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x5f8]
	mov	rbp, rbp
	call	memset
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x5f8]
	mov	rbp, rbp
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	lea	rdi, [rdi]
	jmp	.label_1245
.label_1496:
	mov	esi, 0x20
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x5f8]
	mov	rbp, rbp
	call	memset
	mov	rdx, qword ptr [rbp - 0x5f8]
	mov	rbp, rbp
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_1245:
	mov	rbp, rbp
	jmp	.label_1215
.label_1215:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xb1]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	byte ptr [rcx], al
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x5e0]
	add	rcx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rcx
.label_1384:
	mov	rax, qword ptr [rbp - 0x5f0]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x78]
	nop	
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1270
.label_1270:
	jmp	.label_1301
.label_1551:
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x94]
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_1278
	nop	
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1209
.label_1278:
	mov	rbp, rbp
	cmp	byte ptr [rbp - 0xb1], 0
	je	.label_1288
	nop	
	jmp	.label_1291
.label_1291:
	mov	qword ptr [rbp - 0x600], 1
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x4c], 0
	mov	rbp, rbp
	jge	.label_1294
	mov	rbp, rbp
	xor	eax, eax
	mov	dword ptr [rbp - 0x8c4], eax
	jmp	.label_1423
.label_1294:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x8c4], eax
.label_1423:
	mov	eax, dword ptr [rbp - 0x8c4]
	lea	rdi, [rdi]
	movsxd	rcx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x608], rcx
	mov	rcx, qword ptr [rbp - 0x600]
	cmp	rcx, qword ptr [rbp - 0x608]
	mov	rsp, rsp
	jae	.label_1309
	mov	rax, qword ptr [rbp - 0x608]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x8d0], rax
	nop	
	jmp	.label_1320
.label_1309:
	mov	rax, qword ptr [rbp - 0x600]
	mov	qword ptr [rbp - 0x8d0], rax
.label_1320:
	mov	rax, qword ptr [rbp - 0x8d0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x610], rax
	mov	rax, qword ptr [rbp - 0x610]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jb	.label_1327
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1209
.label_1327:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1339
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_1228
	nop	
	mov	rax, qword ptr [rbp - 0x600]
	cmp	rax, qword ptr [rbp - 0x608]
	jae	.label_1228
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x4c]
	nop	
	sub	rax, qword ptr [rbp - 0x600]
	mov	qword ptr [rbp - 0x618], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_1348
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_1357
.label_1348:
	nop	
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x618]
	call	memset
	mov	rdx, qword ptr [rbp - 0x618]
	lea	rsi, [rsi]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	lea	rdi, [rdi]
	jmp	.label_1368
.label_1357:
	lea	rsi, [rsi]
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x618]
	call	memset
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x618]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_1368:
	jmp	.label_1228
.label_1228:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0xb1]
	nop	
	mov	rcx, qword ptr [rbp - 0x80]
	mov	byte ptr [rcx], al
	mov	rcx, qword ptr [rbp - 0x600]
	add	rcx, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], rcx
.label_1339:
	mov	rax, qword ptr [rbp - 0x610]
	add	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1288
.label_1288:
	nop	
	cmp	qword ptr [rbp - 0x80], 0
	lea	rdi, [rdi]
	je	.label_1509
	mov	esi, 0x30
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	movsxd	rdx, dword ptr [rbp - 0x5d4]
	nop	
	call	memset
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x5d4]
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	movsxd	rdi, esi
	add	rdx, rdi
	mov	qword ptr [rbp - 0x80], rdx
.label_1509:
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x5d4]
	add	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], rax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4c], 0
.label_1301:
	jmp	.label_1408
.label_1529:
	mov	rbp, rbp
	cmp	byte ptr [rbp - 0xb1], 0
	lea	rsi, [rsi]
	je	.label_1363
	jmp	.label_1234
.label_1234:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x620], 1
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_1414
	xor	eax, eax
	mov	dword ptr [rbp - 0x8d4], eax
	jmp	.label_1421
.label_1414:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x8d4], eax
.label_1421:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x8d4]
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x628], rcx
	mov	rcx, qword ptr [rbp - 0x620]
	cmp	rcx, qword ptr [rbp - 0x628]
	lea	rsi, [rsi]
	jae	.label_1426
	mov	rax, qword ptr [rbp - 0x628]
	mov	qword ptr [rbp - 0x8e0], rax
	lea	rdi, [rdi]
	jmp	.label_1439
.label_1426:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x620]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x8e0], rax
.label_1439:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x8e0]
	mov	qword ptr [rbp - 0x630], rax
	mov	rax, qword ptr [rbp - 0x630]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	sub	rcx, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	cmp	rax, rcx
	nop	
	jb	.label_1448
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1209
.label_1448:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1459
	nop	
	cmp	dword ptr [rbp - 0x94], 0
	mov	rbp, rbp
	jne	.label_1463
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x620]
	cmp	rax, qword ptr [rbp - 0x628]
	nop	
	jae	.label_1463
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x620]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x638], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_1560
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x8c], 0x2b
	lea	rdi, [rdi]
	jne	.label_1472
.label_1560:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x638]
	call	memset
	mov	rdx, qword ptr [rbp - 0x638]
	lea	rdi, [rdi]
	add	rdx, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_1483
.label_1472:
	lea	rdi, [rdi]
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x638]
	mov	rsp, rsp
	call	memset
	mov	rdx, qword ptr [rbp - 0x638]
	add	rdx, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x80], rdx
.label_1483:
	nop	
	jmp	.label_1463
.label_1463:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0xb1]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	byte ptr [rcx], al
	mov	rcx, qword ptr [rbp - 0x620]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x80]
	nop	
	mov	qword ptr [rbp - 0x80], rcx
.label_1459:
	mov	rax, qword ptr [rbp - 0x630]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1363
.label_1363:
	jmp	.label_1408
.label_1408:
	lea	rdi, [rdi]
	jmp	.label_1510
.label_1510:
	mov	rbp, rbp
	jmp	.label_1512
.label_1512:
	lea	rax, [rbp - 0xe0]
	lea	rdi, [rdi]
	add	rax, 0x17
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xc0]
	lea	rdi, [rdi]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x640], rax
	nop	
	cmp	dword ptr [rbp - 0x4c], 0
	lea	rsi, [rsi]
	jge	.label_1513
	mov	rsp, rsp
	xor	eax, eax
	mov	dword ptr [rbp - 0x8e4], eax
	lea	rsi, [rsi]
	jmp	.label_1521
.label_1513:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x8e4], eax
.label_1521:
	mov	eax, dword ptr [rbp - 0x8e4]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x648], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x640]
	mov	rsp, rsp
	cmp	rcx, qword ptr [rbp - 0x648]
	jae	.label_1530
	mov	rax, qword ptr [rbp - 0x648]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x8f0], rax
	nop	
	jmp	.label_1539
.label_1530:
	mov	rax, qword ptr [rbp - 0x640]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x8f0], rax
.label_1539:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x8f0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x650], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x650]
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jb	.label_1546
	mov	qword ptr [rbp - 0x20], 0
	nop	
	jmp	.label_1209
.label_1546:
	cmp	qword ptr [rbp - 0x80], 0
	mov	rsp, rsp
	je	.label_1558
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_1562
	mov	rax, qword ptr [rbp - 0x640]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x648]
	mov	rsp, rsp
	jae	.label_1562
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x4c]
	nop	
	sub	rax, qword ptr [rbp - 0x640]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x658], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	nop	
	je	.label_1374
	cmp	dword ptr [rbp - 0x8c], 0x2b
	mov	rsp, rsp
	jne	.label_1577
.label_1374:
	lea	rdi, [rdi]
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x658]
	mov	rbp, rbp
	call	memset
	mov	rdx, qword ptr [rbp - 0x658]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_1583
.label_1577:
	nop	
	mov	esi, 0x20
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x658]
	call	memset
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x658]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_1583:
	lea	rdi, [rdi]
	jmp	.label_1562
.label_1562:
	mov	rsp, rsp
	test	byte ptr [rbp - 0xe1], 1
	je	.label_1592
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xc0]
	nop	
	mov	rdx, qword ptr [rbp - 0x640]
	mov	rbp, rbp
	call	memcpy_lowcase
	mov	qword ptr [rbp - 0x8f8], rax
	jmp	.label_1203
.label_1592:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xe2], 1
	je	.label_1179
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x80]
	nop	
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rdx, qword ptr [rbp - 0x640]
	mov	rsp, rsp
	call	memcpy_uppcase
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x900], rax
	jmp	.label_1192
.label_1179:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rdx, qword ptr [rbp - 0x640]
	call	memcpy
.label_1192:
	jmp	.label_1203
.label_1203:
	mov	rax, qword ptr [rbp - 0x640]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_1558:
	mov	rax, qword ptr [rbp - 0x650]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1194
.label_1277:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x90], 0
	nop	
	je	.label_1211
	jmp	.label_1183
.label_1211:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x8c], 0
	lea	rdi, [rdi]
	jne	.label_1216
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x4c], 0
	lea	rsi, [rsi]
	jge	.label_1216
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x8c], 0x2b
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xfc], 4
	nop	
	jmp	.label_1446
.label_1216:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x4c]
	lea	rdi, [rdi]
	sub	eax, 6
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xfc], eax
	nop	
	cmp	dword ptr [rbp - 0xfc], 0
	jge	.label_1481
	mov	dword ptr [rbp - 0xfc], 0
.label_1481:
	jmp	.label_1446
.label_1446:
	nop	
	movabs	rax, OFFSET FLAT:.str.2_0
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_1243
.label_1311:
	cmp	dword ptr [rbp - 0x90], 0x45
	lea	rsi, [rsi]
	jne	.label_1249
	jmp	.label_1183
.label_1249:
	jmp	.label_1253
.label_1253:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 0x98], ecx
	nop	
	jmp	.label_1187
.label_1299:
	cmp	dword ptr [rbp - 0x90], 0x45
	mov	rsp, rsp
	jne	.label_1259
	nop	
	jmp	.label_1183
.label_1259:
	jmp	.label_1264
.label_1264:
	mov	dword ptr [rbp - 0x94], 2
	mov	eax, dword ptr [rbp - 0x68]
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_1187
.label_1444:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1274
	lea	rsi, [rsi]
	jmp	.label_1183
.label_1274:
	mov	rbp, rbp
	jmp	.label_1276
.label_1276:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 0x98], ecx
	nop	
	jmp	.label_1257
.label_1452:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1285
	jmp	.label_1183
.label_1285:
	jmp	.label_1382
.label_1382:
	mov	dword ptr [rbp - 0x94], 2
	nop	
	mov	eax, dword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x98], eax
	lea	rdi, [rdi]
	jmp	.label_1257
.label_1438:
	cmp	dword ptr [rbp - 0x90], 0x45
	mov	rbp, rbp
	jne	.label_1300
	jmp	.label_1183
.label_1300:
	jmp	.label_1305
.label_1305:
	mov	dword ptr [rbp - 0x94], 3
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax + 0x1c], -1
	lea	rdi, [rdi]
	setl	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x9d], cl
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rax + 0x1c]
	lea	rdi, [rdi]
	add	edx, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x9c], edx
	mov	rsp, rsp
	jmp	.label_1308
.label_1310:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x90], 0x45
	mov	rbp, rbp
	jne	.label_1324
	lea	rsi, [rsi]
	jmp	.label_1183
.label_1324:
	jmp	.label_1329
.label_1329:
	mov	dword ptr [rbp - 0x94], 2
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 4]
	mov	dword ptr [rbp - 0x98], ecx
	mov	rsp, rsp
	jmp	.label_1187
.label_1486:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1337
	mov	rsp, rsp
	jmp	.label_1183
.label_1337:
	mov	rsp, rsp
	jmp	.label_1343
.label_1343:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x94], 2
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax + 0x10], -1
	setl	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x9d], cl
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	edx, dword ptr [rax + 0x10]
	add	edx, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x9c], edx
	mov	rbp, rbp
	jmp	.label_1308
.label_1317:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1359
	jmp	.label_1183
.label_1359:
	mov	eax, dword ptr [rbp - 0x64]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x98], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x4c], -1
	jne	.label_1364
	mov	dword ptr [rbp - 0x4c], 9
	lea	rsi, [rsi]
	jmp	.label_1371
.label_1364:
	nop	
	mov	eax, dword ptr [rbp - 0x4c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x65c], eax
.label_1378:
	cmp	dword ptr [rbp - 0x65c], 9
	lea	rdi, [rdi]
	jge	.label_1376
	lea	rsi, [rsi]
	mov	eax, 0xa
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x904], eax
	lea	rsi, [rsi]
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x904]
	idiv	ecx
	mov	dword ptr [rbp - 0x98], eax
	mov	eax, dword ptr [rbp - 0x65c]
	lea	rsi, [rsi]
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x65c], eax
	jmp	.label_1378
.label_1376:
	jmp	.label_1371
.label_1371:
	jmp	.label_1514
.label_1514:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x4c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x94], eax
	mov	eax, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_1187
.label_1462:
	nop	
	jmp	.label_1397
.label_1397:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x668], 1
	cmp	dword ptr [rbp - 0x4c], 0
	mov	rsp, rsp
	jge	.label_1398
	xor	eax, eax
	mov	dword ptr [rbp - 0x908], eax
	jmp	.label_1403
.label_1398:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x908], eax
.label_1403:
	nop	
	mov	eax, dword ptr [rbp - 0x908]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x670], rcx
	mov	rcx, qword ptr [rbp - 0x668]
	cmp	rcx, qword ptr [rbp - 0x670]
	mov	rbp, rbp
	jae	.label_1202
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x670]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x910], rax
	mov	rbp, rbp
	jmp	.label_1417
.label_1202:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x668]
	nop	
	mov	qword ptr [rbp - 0x910], rax
.label_1417:
	mov	rax, qword ptr [rbp - 0x910]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x678], rax
	mov	rax, qword ptr [rbp - 0x678]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jb	.label_1427
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1209
.label_1427:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x80], 0
	nop	
	je	.label_1443
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_1450
	mov	rax, qword ptr [rbp - 0x668]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x670]
	lea	rsi, [rsi]
	jae	.label_1450
	movsxd	rax, dword ptr [rbp - 0x4c]
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0x668]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x680], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	lea	rdi, [rdi]
	je	.label_1455
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x8c], 0x2b
	mov	rbp, rbp
	jne	.label_1461
.label_1455:
	mov	esi, 0x30
	nop	
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x680]
	lea	rdi, [rdi]
	call	memset
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x680]
	lea	rdi, [rdi]
	add	rdx, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x80], rdx
	nop	
	jmp	.label_1567
.label_1461:
	lea	rdi, [rdi]
	mov	esi, 0x20
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x680]
	call	memset
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x680]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_1567:
	mov	rbp, rbp
	jmp	.label_1450
.label_1450:
	mov	rax, qword ptr [rbp - 0x80]
	mov	byte ptr [rax], 0xa
	mov	rax, qword ptr [rbp - 0x668]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x80]
	nop	
	mov	qword ptr [rbp - 0x80], rax
.label_1443:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x678]
	nop	
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1194
.label_1323:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xe1], 1
	mov	dword ptr [rbp - 0xf8], 0x70
.label_1466:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xf1], 1
	mov	rbp, rbp
	je	.label_1500
	mov	byte ptr [rbp - 0xe2], 0
	mov	byte ptr [rbp - 0xe1], 1
.label_1500:
	jmp	.label_1198
.label_1473:
	lea	rdi, [rdi]
	jmp	.label_1508
.label_1508:
	nop	
	mov	dword ptr [rbp - 0x94], 1
	mov	byte ptr [rbp - 0x9d], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	imul	ecx, dword ptr [rax + 0x10], 0xb
	lea	rsi, [rsi]
	sar	ecx, 5
	lea	rdi, [rdi]
	add	ecx, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x9c], ecx
	lea	rsi, [rsi]
	jmp	.label_1308
.label_1330:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.3_0
	mov	qword ptr [rbp - 0xb0], rax
	lea	rsi, [rsi]
	jmp	.label_1232
.label_1480:
	nop	
	jmp	.label_1198
.label_1334:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x90], 0x45
	lea	rdi, [rdi]
	jne	.label_1525
	mov	rbp, rbp
	jmp	.label_1183
.label_1525:
	jmp	.label_1531
.label_1531:
	nop	
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x98], ecx
	lea	rdi, [rdi]
	jmp	.label_1187
.label_1488:
	mov	rbp, rbp
	lea	rax, [rbp - 0x6b8]
	lea	rsi, [rsi]
	mov	ecx, 0x38
	mov	edx, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x918], rax
	mov	rbp, rbp
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x918]
	lea	rsi, [rsi]
	call	mktime_z
	lea	rdx, [rbp - 0xe0]
	mov	qword ptr [rbp - 0x6c0], rax
	lea	rsi, [rsi]
	add	rdx, 0x17
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc0], rdx
	cmp	qword ptr [rbp - 0x6c0], 0
	lea	rdi, [rdi]
	setl	r8b
	mov	rbp, rbp
	and	r8b, 1
	mov	byte ptr [rbp - 0x9d], r8b
.label_1579:
	lea	rsi, [rsi]
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
	nop	
	mov	qword ptr [rbp - 0x6c0], rax
	test	byte ptr [rbp - 0x9d], 1
	je	.label_1563
	xor	eax, eax
	mov	rbp, rbp
	sub	eax, dword ptr [rbp - 0x6c4]
	mov	dword ptr [rbp - 0x91c], eax
	jmp	.label_1573
.label_1563:
	nop	
	mov	eax, dword ptr [rbp - 0x6c4]
	mov	dword ptr [rbp - 0x91c], eax
.label_1573:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x91c]
	add	eax, 0x30
	lea	rdi, [rdi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rbp, rbp
	mov	rsi, rdx
	add	rsi, -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc0], rsi
	mov	byte ptr [rdx - 1], cl
	cmp	qword ptr [rbp - 0x6c0], 0
	mov	rbp, rbp
	jne	.label_1579
	mov	dword ptr [rbp - 0x94], 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x9e], 0
	lea	rdi, [rdi]
	jmp	.label_1399
.label_1373:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x90], 0x4f
	nop	
	jne	.label_1593
	jmp	.label_1183
.label_1593:
	jmp	.label_1198
.label_1344:
	movabs	rax, OFFSET FLAT:.str.4_0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb0], rax
	lea	rsi, [rsi]
	jmp	.label_1232
.label_1494:
	jmp	.label_1180
.label_1180:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x6d0], 1
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x4c], 0
	lea	rsi, [rsi]
	jge	.label_1181
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x920], eax
	jmp	.label_1190
.label_1181:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x4c]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x920], eax
.label_1190:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x920]
	nop	
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x6d8], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x6d0]
	mov	rsp, rsp
	cmp	rcx, qword ptr [rbp - 0x6d8]
	lea	rsi, [rsi]
	jae	.label_1196
	mov	rax, qword ptr [rbp - 0x6d8]
	mov	qword ptr [rbp - 0x928], rax
	mov	rbp, rbp
	jmp	.label_1210
.label_1196:
	mov	rax, qword ptr [rbp - 0x6d0]
	mov	qword ptr [rbp - 0x928], rax
.label_1210:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x928]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x6e0], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x6e0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	sub	rcx, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_1218
	mov	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	jmp	.label_1209
.label_1218:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1235
	cmp	dword ptr [rbp - 0x94], 0
	lea	rdi, [rdi]
	jne	.label_1220
	mov	rax, qword ptr [rbp - 0x6d0]
	cmp	rax, qword ptr [rbp - 0x6d8]
	jae	.label_1220
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x4c]
	nop	
	sub	rax, qword ptr [rbp - 0x6d0]
	mov	qword ptr [rbp - 0x6e8], rax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x8c], 0x30
	lea	rsi, [rsi]
	je	.label_1549
	nop	
	cmp	dword ptr [rbp - 0x8c], 0x2b
	lea	rdi, [rdi]
	jne	.label_1594
.label_1549:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x6e8]
	call	memset
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x6e8]
	mov	rbp, rbp
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_1261
.label_1594:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x6e8]
	call	memset
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x6e8]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_1261:
	mov	rbp, rbp
	jmp	.label_1220
.label_1220:
	mov	rax, qword ptr [rbp - 0x80]
	nop	
	mov	byte ptr [rax], 9
	mov	rax, qword ptr [rbp - 0x6d0]
	add	rax, qword ptr [rbp - 0x80]
	nop	
	mov	qword ptr [rbp - 0x80], rax
.label_1235:
	nop	
	mov	rax, qword ptr [rbp - 0x6e0]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	mov	rbp, rbp
	jmp	.label_1194
.label_1503:
	jmp	.label_1292
.label_1292:
	mov	eax, 7
	nop	
	mov	dword ptr [rbp - 0x94], 1
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rcx + 0x18]
	mov	rbp, rbp
	sub	edx, 1
	add	edx, 7
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x92c], eax
	lea	rdi, [rdi]
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0x92c]
	mov	rbp, rbp
	idiv	esi
	mov	rsp, rsp
	add	edx, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x98], edx
	lea	rdi, [rdi]
	jmp	.label_1187
.label_1350:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x90], 0x45
	nop	
	jne	.label_1316
	jmp	.label_1183
.label_1316:
	nop	
	jmp	.label_1321
.label_1321:
	lea	rsi, [rsi]
	mov	eax, 7
	mov	dword ptr [rbp - 0x94], 2
	mov	rcx, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rcx + 0x1c]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	edx, dword ptr [rcx + 0x18]
	add	edx, 7
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x930], eax
	mov	rbp, rbp
	mov	eax, edx
	nop	
	cdq	
	mov	esi, dword ptr [rbp - 0x930]
	idiv	esi
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_1187
.label_1283:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1335
	jmp	.label_1183
.label_1335:
	lea	rdi, [rdi]
	mov	eax, 0xffffff9c
	lea	rdi, [rdi]
	mov	ecx, 0x12c
	mov	rdx, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rdx + 0x14]
	mov	rdx, qword ptr [rbp - 0x40]
	cmp	dword ptr [rdx + 0x14], 0
	mov	rbp, rbp
	cmovl	eax, ecx
	add	esi, eax
	mov	dword ptr [rbp - 0x6ec], esi
	mov	dword ptr [rbp - 0x6f0], 0
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	edi, dword ptr [rdx + 0x1c]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x40]
	nop	
	mov	esi, dword ptr [rdx + 0x18]
	call	iso_week_days
	mov	dword ptr [rbp - 0x6f4], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x6f4], 0
	jge	.label_1361
	nop	
	xor	eax, eax
	mov	cl, al
	mov	eax, 4
	mov	dword ptr [rbp - 0x6f0], 0xffffffff
	mov	rdx, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rdx + 0x1c]
	mov	edi, dword ptr [rbp - 0x6ec]
	mov	rbp, rbp
	sub	edi, 1
	mov	dword ptr [rbp - 0x934], eax
	mov	eax, edi
	cdq	
	mov	edi, dword ptr [rbp - 0x934]
	idiv	edi
	mov	rsp, rsp
	cmp	edx, 0
	mov	dword ptr [rbp - 0x938], esi
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x939], cl
	jne	.label_1366
	mov	al, 1
	mov	ecx, 0x64
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x6ec]
	sub	edx, 1
	mov	byte ptr [rbp - 0x93a], al
	mov	eax, edx
	mov	rbp, rbp
	cdq	
	mov	rbp, rbp
	idiv	ecx
	lea	rdi, [rdi]
	cmp	edx, 0
	mov	sil, byte ptr [rbp - 0x93a]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x93b], sil
	nop	
	jne	.label_1456
	mov	eax, 0x190
	mov	ecx, dword ptr [rbp - 0x6ec]
	sub	ecx, 1
	mov	dword ptr [rbp - 0x940], eax
	lea	rdi, [rdi]
	mov	eax, ecx
	lea	rsi, [rsi]
	cdq	
	mov	ecx, dword ptr [rbp - 0x940]
	idiv	ecx
	cmp	edx, 0
	sete	sil
	mov	byte ptr [rbp - 0x93b], sil
.label_1456:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x93b]
	mov	byte ptr [rbp - 0x939], al
.label_1366:
	mov	al, byte ptr [rbp - 0x939]
	nop	
	and	al, 1
	movzx	ecx, al
	mov	rsp, rsp
	add	ecx, 0x16d
	mov	edx, dword ptr [rbp - 0x938]
	lea	rsi, [rsi]
	add	edx, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	esi, dword ptr [rsi + 0x18]
	mov	rbp, rbp
	mov	edi, edx
	mov	rbp, rbp
	call	iso_week_days
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x6f4], eax
	lea	rsi, [rsi]
	jmp	.label_1416
.label_1361:
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	nop	
	mov	eax, 4
	mov	rdx, qword ptr [rbp - 0x40]
	nop	
	mov	esi, dword ptr [rdx + 0x1c]
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x6ec]
	mov	dword ptr [rbp - 0x944], eax
	lea	rsi, [rsi]
	mov	eax, edi
	cdq	
	nop	
	mov	edi, dword ptr [rbp - 0x944]
	mov	rbp, rbp
	idiv	edi
	cmp	edx, 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x948], esi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x949], cl
	mov	rbp, rbp
	jne	.label_1420
	mov	rsp, rsp
	mov	al, 1
	mov	ecx, 0x64
	mov	edx, dword ptr [rbp - 0x6ec]
	nop	
	mov	byte ptr [rbp - 0x94a], al
	mov	eax, edx
	cdq	
	idiv	ecx
	cmp	edx, 0
	mov	rsp, rsp
	mov	sil, byte ptr [rbp - 0x94a]
	mov	byte ptr [rbp - 0x94b], sil
	lea	rsi, [rsi]
	jne	.label_1442
	lea	rdi, [rdi]
	mov	eax, 0x190
	mov	ecx, dword ptr [rbp - 0x6ec]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x950], eax
	lea	rdi, [rdi]
	mov	eax, ecx
	lea	rsi, [rsi]
	cdq	
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x950]
	mov	rbp, rbp
	idiv	ecx
	lea	rsi, [rsi]
	cmp	edx, 0
	sete	sil
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x94b], sil
.label_1442:
	mov	al, byte ptr [rbp - 0x94b]
	mov	byte ptr [rbp - 0x949], al
.label_1420:
	mov	al, byte ptr [rbp - 0x949]
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	add	ecx, 0x16d
	mov	edx, dword ptr [rbp - 0x948]
	mov	rsp, rsp
	sub	edx, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rsi + 0x18]
	lea	rsi, [rsi]
	mov	edi, edx
	lea	rsi, [rsi]
	call	iso_week_days
	mov	rsp, rsp
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x6f8], eax
	cmp	ecx, dword ptr [rbp - 0x6f8]
	jg	.label_1477
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x6f0], 1
	mov	eax, dword ptr [rbp - 0x6f8]
	nop	
	mov	dword ptr [rbp - 0x6f4], eax
.label_1477:
	lea	rsi, [rsi]
	jmp	.label_1416
.label_1416:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	mov	edx, ecx
	lea	rsi, [rsi]
	sub	edx, 0x47
	mov	dword ptr [rbp - 0x954], ecx
	mov	dword ptr [rbp - 0x958], edx
	lea	rsi, [rsi]
	je	.label_1490
	jmp	.label_1497
.label_1497:
	mov	eax, dword ptr [rbp - 0x954]
	sub	eax, 0x67
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x95c], eax
	lea	rdi, [rdi]
	jne	.label_1501
	mov	rsp, rsp
	jmp	.label_1506
.label_1506:
	nop	
	mov	eax, 0x64
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	edx, dword ptr [rcx + 0x14]
	mov	dword ptr [rbp - 0x960], eax
	mov	eax, edx
	cdq	
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x960]
	nop	
	idiv	esi
	lea	rsi, [rsi]
	add	edx, dword ptr [rbp - 0x6f0]
	nop	
	mov	eax, edx
	cdq	
	idiv	esi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x6fc], edx
	xor	eax, eax
	mov	dword ptr [rbp - 0x94], 2
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x9d], 0
	cmp	eax, dword ptr [rbp - 0x6fc]
	mov	rbp, rbp
	jg	.label_1507
	mov	eax, dword ptr [rbp - 0x6fc]
	nop	
	mov	dword ptr [rbp - 0x964], eax
	jmp	.label_1522
.label_1507:
	mov	eax, 0xfffff894
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rcx + 0x14]
	mov	rsp, rsp
	sub	eax, dword ptr [rbp - 0x6f0]
	cmp	edx, eax
	lea	rdi, [rdi]
	jge	.label_1528
	mov	rsp, rsp
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x6fc]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x968], eax
	nop	
	jmp	.label_1536
.label_1528:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x6fc]
	mov	rbp, rbp
	add	eax, 0x64
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x968], eax
.label_1536:
	nop	
	mov	eax, dword ptr [rbp - 0x968]
	mov	dword ptr [rbp - 0x964], eax
.label_1522:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x964]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_1199
.label_1490:
	nop	
	jmp	.label_1550
.label_1550:
	mov	eax, 0xfffff894
	mov	dword ptr [rbp - 0x94], 4
	mov	rcx, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rcx + 0x14]
	mov	rsp, rsp
	sub	eax, dword ptr [rbp - 0x6f0]
	nop	
	cmp	edx, eax
	setl	sil
	mov	rbp, rbp
	and	sil, 1
	mov	byte ptr [rbp - 0x9d], sil
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	mov	eax, dword ptr [rcx + 0x14]
	mov	rsp, rsp
	add	eax, 0x76c
	add	eax, dword ptr [rbp - 0x6f0]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_1199
.label_1501:
	jmp	.label_1569
.label_1569:
	nop	
	mov	eax, 7
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x94], 2
	mov	ecx, dword ptr [rbp - 0x6f4]
	mov	dword ptr [rbp - 0x96c], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x96c]
	lea	rsi, [rsi]
	idiv	ecx
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_1187
.label_1367:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1580
	jmp	.label_1183
.label_1580:
	lea	rsi, [rsi]
	jmp	.label_1584
.label_1584:
	nop	
	mov	eax, 7
	mov	dword ptr [rbp - 0x94], 2
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rcx + 0x1c]
	nop	
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rcx + 0x18]
	sub	esi, 1
	mov	rsp, rsp
	add	esi, 7
	mov	dword ptr [rbp - 0x970], eax
	nop	
	mov	eax, esi
	nop	
	mov	dword ptr [rbp - 0x974], edx
	cdq	
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x970]
	mov	rbp, rbp
	idiv	esi
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x974]
	sub	edi, edx
	mov	rbp, rbp
	add	edi, 7
	nop	
	mov	eax, edi
	mov	rsp, rsp
	cdq	
	nop	
	idiv	esi
	mov	dword ptr [rbp - 0x98], eax
	nop	
	jmp	.label_1187
.label_1395:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1464
	jmp	.label_1183
.label_1464:
	jmp	.label_1219
.label_1219:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x94], 1
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 0x18]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_1187
.label_1380:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x90], 0x45
	mov	rbp, rbp
	jne	.label_1273
	nop	
	jmp	.label_1198
.label_1273:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x90], 0x4f
	jne	.label_1200
	lea	rdi, [rdi]
	jmp	.label_1183
.label_1200:
	lea	rsi, [rsi]
	jmp	.label_1206
.label_1206:
	mov	dword ptr [rbp - 0x94], 4
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax + 0x14], 0xfffff894
	setl	cl
	lea	rdi, [rdi]
	and	cl, 1
	mov	byte ptr [rbp - 0x9d], cl
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rax + 0x14]
	add	edx, 0x76c
	mov	dword ptr [rbp - 0x9c], edx
	mov	rbp, rbp
	jmp	.label_1199
.label_1517:
	cmp	dword ptr [rbp - 0x90], 0x45
	lea	rdi, [rdi]
	jne	.label_1223
	nop	
	jmp	.label_1198
.label_1223:
	mov	eax, 0x64
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rcx + 0x14]
	mov	dword ptr [rbp - 0x978], eax
	mov	rsp, rsp
	mov	eax, edx
	mov	rbp, rbp
	cdq	
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x978]
	lea	rdi, [rdi]
	idiv	esi
	mov	dword ptr [rbp - 0x700], edx
	cmp	dword ptr [rbp - 0x700], 0
	lea	rsi, [rsi]
	jge	.label_1227
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax + 0x14], 0xfffff894
	jge	.label_1241
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x700]
	mov	dword ptr [rbp - 0x97c], eax
	lea	rdi, [rdi]
	jmp	.label_1247
.label_1241:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x700]
	add	eax, 0x64
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x97c], eax
.label_1247:
	mov	eax, dword ptr [rbp - 0x97c]
	mov	dword ptr [rbp - 0x700], eax
.label_1227:
	lea	rdi, [rdi]
	jmp	.label_1258
.label_1258:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x94], 2
	mov	byte ptr [rbp - 0x9d], 0
	mov	eax, dword ptr [rbp - 0x700]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_1199
.label_1385:
	test	byte ptr [rbp - 0xf1], 1
	mov	rsp, rsp
	je	.label_1266
	nop	
	mov	byte ptr [rbp - 0xe2], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xe1], 1
.label_1266:
	jmp	.label_1303
.label_1303:
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	call	strlen
	mov	qword ptr [rbp - 0x708], rax
	cmp	dword ptr [rbp - 0x4c], 0
	mov	rsp, rsp
	jge	.label_1280
	xor	eax, eax
	mov	dword ptr [rbp - 0x980], eax
	mov	rsp, rsp
	jmp	.label_1284
.label_1280:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x980], eax
.label_1284:
	mov	eax, dword ptr [rbp - 0x980]
	mov	rbp, rbp
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x710], rcx
	mov	rcx, qword ptr [rbp - 0x708]
	nop	
	cmp	rcx, qword ptr [rbp - 0x710]
	nop	
	jae	.label_1293
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x710]
	mov	qword ptr [rbp - 0x988], rax
	mov	rsp, rsp
	jmp	.label_1302
.label_1293:
	mov	rax, qword ptr [rbp - 0x708]
	mov	qword ptr [rbp - 0x988], rax
.label_1302:
	mov	rax, qword ptr [rbp - 0x988]
	mov	qword ptr [rbp - 0x718], rax
	mov	rax, qword ptr [rbp - 0x718]
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_1314
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1209
.label_1314:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1326
	cmp	dword ptr [rbp - 0x94], 0
	mov	rbp, rbp
	jne	.label_1328
	mov	rax, qword ptr [rbp - 0x708]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x710]
	nop	
	jae	.label_1328
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x708]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x720], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	lea	rsi, [rsi]
	je	.label_1336
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x8c], 0x2b
	lea	rdi, [rdi]
	jne	.label_1345
.label_1336:
	mov	rsp, rsp
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x720]
	mov	rsp, rsp
	call	memset
	mov	rdx, qword ptr [rbp - 0x720]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	lea	rdi, [rdi]
	jmp	.label_1356
.label_1345:
	mov	rbp, rbp
	mov	esi, 0x20
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x720]
	lea	rdi, [rdi]
	call	memset
	mov	rdx, qword ptr [rbp - 0x720]
	mov	rbp, rbp
	add	rdx, qword ptr [rbp - 0x80]
	nop	
	mov	qword ptr [rbp - 0x80], rdx
.label_1356:
	jmp	.label_1328
.label_1328:
	mov	rsp, rsp
	test	byte ptr [rbp - 0xe1], 1
	je	.label_1375
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x708]
	call	memcpy_lowcase
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x990], rax
	jmp	.label_1381
.label_1375:
	test	byte ptr [rbp - 0xe2], 1
	lea	rsi, [rsi]
	je	.label_1386
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x80]
	nop	
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x708]
	call	memcpy_uppcase
	mov	qword ptr [rbp - 0x998], rax
	jmp	.label_1390
.label_1386:
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x708]
	call	memcpy
.label_1390:
	mov	rbp, rbp
	jmp	.label_1381
.label_1381:
	mov	rax, qword ptr [rbp - 0x708]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], rax
.label_1326:
	mov	rax, qword ptr [rbp - 0x718]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1194
.label_1244:
	mov	qword ptr [rbp - 0xf0], 1
.label_1418:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rbp - 0x88]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0x3a
	lea	rsi, [rsi]
	jne	.label_1407
	lea	rdi, [rdi]
	jmp	.label_1415
.label_1415:
	mov	rax, qword ptr [rbp - 0xf0]
	add	rax, 1
	mov	qword ptr [rbp - 0xf0], rax
	jmp	.label_1418
.label_1407:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rbp - 0x88]
	nop	
	movsx	edx, byte ptr [rcx + rax]
	mov	rsp, rsp
	cmp	edx, 0x7a
	je	.label_1424
	mov	rbp, rbp
	jmp	.label_1183
.label_1424:
	mov	rax, qword ptr [rbp - 0xf0]
	add	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_1432
.label_1524:
	mov	qword ptr [rbp - 0xf0], 0
.label_1432:
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	cmp	dword ptr [rax + 0x20], 0
	jge	.label_1437
	jmp	.label_1194
.label_1437:
	mov	rbp, rbp
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	edx, ecx
	mov	dword ptr [rbp - 0x724], edx
	cmp	dword ptr [rbp - 0x724], 0
	mov	byte ptr [rbp - 0x999], al
	mov	rsp, rsp
	jl	.label_1447
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	cmp	dword ptr [rbp - 0x724], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x99a], cl
	lea	rdi, [rdi]
	jne	.label_1458
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	sete	dl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x99a], dl
.label_1458:
	mov	al, byte ptr [rbp - 0x99a]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x999], al
.label_1447:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x999]
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x9d], al
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x724]
	lea	rdi, [rdi]
	mov	edx, ecx
	imul	rcx, rcx, -0x77777777
	nop	
	shr	rcx, 0x20
	mov	rsp, rsp
	mov	esi, ecx
	lea	rsi, [rsi]
	add	esi, edx
	mov	rbp, rbp
	mov	edx, esi
	shr	edx, 0x1f
	sar	esi, 5
	mov	rbp, rbp
	add	esi, edx
	nop	
	movsxd	rcx, esi
	mov	rsp, rsp
	imul	rcx, rcx, -0x77777777
	lea	rdi, [rdi]
	shr	rcx, 0x20
	mov	rbp, rbp
	mov	edx, ecx
	add	edx, esi
	mov	esi, edx
	lea	rsi, [rsi]
	shr	esi, 0x1f
	sar	edx, 5
	add	edx, esi
	mov	dword ptr [rbp - 0x728], edx
	nop	
	movsxd	rcx, dword ptr [rbp - 0x724]
	lea	rsi, [rsi]
	mov	edx, ecx
	imul	rcx, rcx, -0x77777777
	shr	rcx, 0x20
	mov	rbp, rbp
	mov	esi, ecx
	add	esi, edx
	mov	edx, esi
	mov	rsp, rsp
	shr	edx, 0x1f
	lea	rdi, [rdi]
	sar	esi, 5
	mov	rsp, rsp
	add	esi, edx
	movsxd	rcx, esi
	imul	rcx, rcx, -0x77777777
	nop	
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
	nop	
	add	esi, edx
	mov	edi, esi
	shr	edi, 0x1f
	lea	rsi, [rsi]
	sar	esi, 5
	add	esi, edi
	imul	esi, esi, 0x3c
	sub	edx, esi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x730], edx
	mov	rcx, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	r8, rcx
	sub	r8, 3
	mov	qword ptr [rbp - 0x9a8], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x9b0], r8
	ja	.label_1523
	mov	rax, qword ptr [rbp - 0x9a8]
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1518]]
	lea	rsi, [rsi]
	jmp	rcx
.label_2314:
	jmp	.label_1533
.label_1533:
	mov	dword ptr [rbp - 0x94], 5
	mov	dword ptr [rbp - 0xa4], 0
	lea	rsi, [rsi]
	imul	eax, dword ptr [rbp - 0x728], 0x64
	add	eax, dword ptr [rbp - 0x72c]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_1534
.label_2315:
	lea	rsi, [rsi]
	jmp	.label_1177
.label_1177:
	mov	rbp, rbp
	jmp	.label_1545
.label_1545:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x94], 6
	nop	
	mov	dword ptr [rbp - 0xa4], 4
	imul	eax, dword ptr [rbp - 0x728], 0x64
	add	eax, dword ptr [rbp - 0x72c]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_1534
.label_2316:
	jmp	.label_1553
.label_1553:
	jmp	.label_1555
.label_1555:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x94], 9
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xa4], 0x14
	imul	eax, dword ptr [rbp - 0x728], 0x2710
	imul	ecx, dword ptr [rbp - 0x72c], 0x64
	add	eax, ecx
	add	eax, dword ptr [rbp - 0x730]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_1534
.label_2317:
	cmp	dword ptr [rbp - 0x730], 0
	je	.label_1568
	mov	rbp, rbp
	jmp	.label_1553
.label_1568:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x72c], 0
	je	.label_1571
	jmp	.label_1177
.label_1571:
	jmp	.label_1576
.label_1576:
	nop	
	mov	dword ptr [rbp - 0x94], 3
	mov	dword ptr [rbp - 0xa4], 0
	mov	eax, dword ptr [rbp - 0x728]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x9c], eax
	mov	rbp, rbp
	jmp	.label_1534
.label_1523:
	mov	rbp, rbp
	jmp	.label_1183
.label_1225:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, -1
	mov	qword ptr [rbp - 0x88], rax
.label_1540:
	mov	rsp, rsp
	jmp	.label_1183
.label_1183:
	mov	dword ptr [rbp - 0x734], 1
.label_1598:
	mov	rbp, rbp
	mov	eax, 1
	sub	eax, dword ptr [rbp - 0x734]
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	movsx	eax, byte ptr [rdx + rcx]
	cmp	eax, 0x25
	nop	
	je	.label_1588
	mov	rsp, rsp
	jmp	.label_1597
.label_1597:
	mov	eax, dword ptr [rbp - 0x734]
	nop	
	add	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x734], eax
	jmp	.label_1598
.label_1588:
	mov	rbp, rbp
	jmp	.label_1178
.label_1178:
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x734]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x740], rax
	cmp	dword ptr [rbp - 0x4c], 0
	lea	rsi, [rsi]
	jge	.label_1182
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	dword ptr [rbp - 0x9b4], eax
	jmp	.label_1191
.label_1182:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x9b4], eax
.label_1191:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x9b4]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x748], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x740]
	cmp	rcx, qword ptr [rbp - 0x748]
	mov	rsp, rsp
	jae	.label_1287
	nop	
	mov	rax, qword ptr [rbp - 0x748]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x9c0], rax
	jmp	.label_1208
.label_1287:
	mov	rax, qword ptr [rbp - 0x740]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x9c0], rax
.label_1208:
	mov	rax, qword ptr [rbp - 0x9c0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x750], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x750]
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	sub	rcx, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	cmp	rax, rcx
	jb	.label_1217
	nop	
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1209
.label_1217:
	nop	
	cmp	qword ptr [rbp - 0x80], 0
	mov	rbp, rbp
	je	.label_1231
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_1237
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x740]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x748]
	mov	rsp, rsp
	jae	.label_1237
	nop	
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x740]
	mov	qword ptr [rbp - 0x758], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_1246
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_1252
.label_1246:
	mov	esi, 0x30
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x758]
	nop	
	call	memset
	mov	rdx, qword ptr [rbp - 0x758]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_1260
.label_1252:
	mov	esi, 0x20
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x758]
	nop	
	call	memset
	mov	rdx, qword ptr [rbp - 0x758]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_1260:
	lea	rdi, [rdi]
	jmp	.label_1237
.label_1237:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xe1], 1
	mov	rbp, rbp
	je	.label_1313
	lea	rsi, [rsi]
	mov	eax, 1
	mov	rdi, qword ptr [rbp - 0x80]
	sub	eax, dword ptr [rbp - 0x734]
	lea	rdi, [rdi]
	movsxd	rcx, eax
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x740]
	lea	rdi, [rdi]
	mov	rsi, rcx
	lea	rsi, [rsi]
	call	memcpy_lowcase
	nop	
	mov	qword ptr [rbp - 0x9c8], rax
	jmp	.label_1295
.label_1313:
	mov	rbp, rbp
	test	byte ptr [rbp - 0xe2], 1
	lea	rdi, [rdi]
	je	.label_1570
	mov	eax, 1
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x80]
	sub	eax, dword ptr [rbp - 0x734]
	movsxd	rcx, eax
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x740]
	lea	rdi, [rdi]
	mov	rsi, rcx
	lea	rsi, [rsi]
	call	memcpy_uppcase
	nop	
	mov	qword ptr [rbp - 0x9d0], rax
	lea	rdi, [rdi]
	jmp	.label_1319
.label_1570:
	lea	rdi, [rdi]
	mov	eax, 1
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	sub	eax, dword ptr [rbp - 0x734]
	mov	rsp, rsp
	movsxd	rcx, eax
	add	rcx, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x740]
	mov	rsp, rsp
	mov	rsi, rcx
	mov	rsp, rsp
	call	memcpy
.label_1319:
	jmp	.label_1295
.label_1295:
	mov	rax, qword ptr [rbp - 0x740]
	add	rax, qword ptr [rbp - 0x80]
	nop	
	mov	qword ptr [rbp - 0x80], rax
.label_1231:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x750]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], rax
	nop	
	jmp	.label_1194
.label_1194:
	jmp	.label_1239
.label_1239:
	mov	dword ptr [rbp - 0x4c], 0xffffffff
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, 1
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_1347
.label_1404:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1306
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1306
	mov	rax, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	byte ptr [rax], 0
.label_1306:
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x20], rax
.label_1209:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rsp, 0x9d8
	pop	rbx
	nop	
	pop	r14
	pop	r15
	nop	
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413340

	.globl memcpy_lowcase
	.type memcpy_lowcase, @function
memcpy_lowcase:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdx
.label_1600:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rcx
	lea	rdi, [rdi]
	cmp	rax, 0
	jbe	.label_1601
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edi, byte ptr [rcx + rax]
	call	tolower
	mov	dl, al
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 8]
	mov	byte ptr [rsi + rcx], dl
	jmp	.label_1600
.label_1601:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x4133b0

	.globl memcpy_uppcase
	.type memcpy_uppcase, @function
memcpy_uppcase:
	nop	
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
.label_1603:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	lea	rsi, [rsi]
	cmp	rax, 0
	jbe	.label_1602
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edi, byte ptr [rcx + rax]
	mov	rsp, rsp
	call	toupper
	mov	dl, al
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	mov	byte ptr [rsi + rcx], dl
	lea	rdi, [rdi]
	jmp	.label_1603
.label_1602:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413440

	.globl iso_week_days
	.type iso_week_days, @function
iso_week_days:
	nop	
	push	rbp
	nop	
	mov	rbp, rsp
	mov	eax, 7
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	dword ptr [rbp - 0xc], 0x17a
	mov	esi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 4]
	sub	edi, dword ptr [rbp - 8]
	add	edi, 4
	lea	rsi, [rsi]
	add	edi, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x10], eax
	mov	eax, edi
	lea	rdi, [rdi]
	cdq	
	mov	edi, dword ptr [rbp - 0x10]
	idiv	edi
	nop	
	sub	esi, edx
	lea	rsi, [rsi]
	add	esi, 4
	mov	rbp, rbp
	sub	esi, 1
	mov	rbp, rbp
	mov	eax, esi
	nop	
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4134a0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 8], 0
	jne	.label_1604
	movabs	rdi, OFFSET FLAT:.str_5
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], eax
	lea	rsi, [rsi]
	call	abort
.label_1604:
	lea	rdi, [rdi]
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	strrchr
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1607
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1606
.label_1607:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_1606:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	sub	rax, rcx
	nop	
	cmp	rax, 7
	jl	.label_1605
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.1_2
	mov	rsp, rsp
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rcx, -7
	lea	rdi, [rdi]
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	mov	rbp, rbp
	jne	.label_1605
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.2_1
	lea	rsi, [rsi]
	mov	eax, 3
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_1608
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_1608:
	jmp	.label_1605
.label_1605:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413620
	.globl clone_quoting_options
	.type clone_quoting_options, @function
clone_quoting_options:

	nop
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], ecx
	cmp	qword ptr [rbp - 8], 0
	je	.label_1610
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_1609
.label_1610:
	movabs	rax, OFFSET FLAT:default_quoting_options
	nop	
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_1609
.label_1609:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, 0x38
	lea	rsi, [rsi]
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	rdi, rax
	call	xmemdup
	mov	qword ptr [rbp - 0x18], rax
	mov	ecx, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], ecx
	lea	rdi, [rdi]
	call	__errno_location
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	mov	dword ptr [rax], ecx
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4136d0
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	lea	rsi, [rsi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_1611
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	nop	
	jmp	.label_1612
.label_1611:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1612
.label_1612:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413730
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	push	rbp
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], esi
	mov	esi, dword ptr [rbp - 0xc]
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10], esi
	je	.label_1613
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1614
.label_1613:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_1614
.label_1614:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413790

	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	mov	al, sil
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10], edx
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 9]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x11], al
	mov	rsp, rsp
	cmp	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	je	.label_1615
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_1616
.label_1615:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	jmp	.label_1616
.label_1616:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	add	rax, 8
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x11]
	mov	rbp, rbp
	mov	edx, ecx
	shr	rdx, 5
	mov	rbp, rbp
	shl	rdx, 2
	mov	rsp, rsp
	add	rax, rdx
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x11]
	mov	eax, ecx
	lea	rdi, [rdi]
	and	rax, 0x1f
	mov	rsp, rsp
	mov	ecx, eax
	mov	dword ptr [rbp - 0x24], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x34], ecx
	nop	
	mov	ecx, esi
	nop	
	mov	esi, dword ptr [rbp - 0x34]
	shr	esi, cl
	mov	rbp, rbp
	and	esi, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x28], esi
	mov	esi, dword ptr [rbp - 0x10]
	and	esi, 1
	lea	rsi, [rsi]
	xor	esi, dword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rbp - 0x24]
	nop	
	shl	esi, cl
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	xor	esi, dword ptr [rax]
	mov	dword ptr [rax], esi
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x28]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413890
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	mov	rbp, rbp
	push	rbp
	nop	
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rsp, rsp
	cmp	qword ptr [rbp - 8], 0
	jne	.label_1617
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
.label_1617:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 4]
	nop	
	mov	dword ptr [rbp - 0x10], ecx
	mov	ecx, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	dword ptr [rax + 4], ecx
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x10]
	nop	
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x4138f0

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 8], 0
	nop	
	jne	.label_1618
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_1618:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	nop	
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	je	.label_1620
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	jne	.label_1619
.label_1620:
	call	abort
.label_1619:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x30], rax
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413990
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], r8
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_1621
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1622
.label_1621:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	jmp	.label_1622
.label_1622:
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x30], rax
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x34], ecx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r9d, dword ptr [rax + 4]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x30]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	r11, qword ptr [r11 + 0x30]
	nop	
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	mov	r8d, dword ptr [rbp - 0x34]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x4c], r8d
	mov	rbp, rbp
	call	__errno_location
	mov	r8d, dword ptr [rbp - 0x4c]
	mov	dword ptr [rax], r8d
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413a90

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	mov	rbp, rsp
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x158
	mov	rax, qword ptr [rbp + 0x20]
	mov	rsp, rsp
	mov	r10, qword ptr [rbp + 0x18]
	nop	
	mov	r11, qword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	nop	
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	dword ptr [rbp - 0x34], r8d
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x38], r9d
	mov	qword ptr [rbp - 0x40], r11
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], r10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], 0
	mov	qword ptr [rbp - 0x68], 0
	mov	qword ptr [rbp - 0x70], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], 0
	mov	byte ptr [rbp - 0x79], 0
	mov	rbp, rbp
	call	__ctype_get_mb_cur_max
	mov	rbp, rbp
	cmp	rax, 1
	nop	
	sete	bl
	and	bl, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x7a], bl
	mov	r8d, dword ptr [rbp - 0x38]
	and	r8d, 2
	mov	rsp, rsp
	cmp	r8d, 0
	setne	bl
	and	bl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x7b], bl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x7c], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x7d], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x7e], 1
.label_1735:
	mov	eax, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_1792
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1798]]
	jmp	rcx
.label_2332:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_2331:
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	jne	.label_1805
	jmp	.label_1808
.label_1808:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_1811
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_1811:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	jmp	.label_1805
.label_1805:
	movabs	rax, OFFSET FLAT:.str.10_0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_1624
.label_2333:
	nop	
	mov	byte ptr [rbp - 0x79], 1
	nop	
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_1624
.label_2334:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_1628
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.11
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	call	gettext_quote
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_1628:
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	jne	.label_1645
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_1668:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_1653
	jmp	.label_1655
.label_1655:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_1657
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_1657:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1643
.label_1643:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1668
.label_1653:
	mov	rbp, rbp
	jmp	.label_1645
.label_1645:
	mov	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x70], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x70]
	nop	
	call	strlen
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], rax
	mov	rbp, rbp
	jmp	.label_1624
.label_2329:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x79], 1
.label_2328:
	mov	byte ptr [rbp - 0x7b], 1
.label_2330:
	nop	
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	jne	.label_1682
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x79], 1
.label_1682:
	jmp	.label_1687
.label_1687:
	mov	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1689
	jmp	.label_1694
.label_1694:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	jae	.label_1823
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1823:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_1689
.label_1689:
	movabs	rax, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	mov	rsp, rsp
	jmp	.label_1624
.label_2327:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_1624
.label_1792:
	call	abort
.label_1624:
	mov	qword ptr [rbp - 0x58], 0
.label_1784:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_1716
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	nop	
	movzx	edx, sil
	nop	
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_1717
.label_1716:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	nop	
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xd4], edx
.label_1717:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xd4]
	lea	rdi, [rdi]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1731
	mov	rbp, rbp
	jmp	.label_1738
.label_1731:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x81], 0
	nop	
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	je	.label_1740
	cmp	dword ptr [rbp - 0x34], 2
	lea	rsi, [rsi]
	je	.label_1740
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_1740
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	lea	rsi, [rsi]
	jne	.label_1755
	mov	rsp, rsp
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_1755
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_1767
.label_1755:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_1767:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	mov	rsp, rsp
	ja	.label_1740
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_1740
	nop	
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	je	.label_1783
	jmp	.label_1662
.label_1783:
	nop	
	mov	byte ptr [rbp - 0x81], 1
.label_1740:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x7f], dl
	movzx	esi, byte ptr [rbp - 0x7f]
	lea	rdi, [rdi]
	mov	eax, esi
	nop	
	mov	rcx, rax
	lea	rsi, [rsi]
	sub	rcx, 0x7e
	mov	qword ptr [rbp - 0xf0], rax
	mov	qword ptr [rbp - 0xf8], rcx
	ja	.label_1787
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1799]]
	nop	
	jmp	rcx
.label_2337:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x79], 1
	je	.label_1803
	mov	rsp, rsp
	jmp	.label_1807
.label_1807:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1640
	jmp	.label_1662
.label_1640:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x82], 1
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1748
	mov	rbp, rbp
	test	byte ptr [rbp - 0x7c], 1
	mov	rbp, rbp
	jne	.label_1748
	nop	
	jmp	.label_1817
.label_1817:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1818
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_1818:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_1626
.label_1626:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_1631
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x24
.label_1631:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_1641
.label_1641:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1651
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1651:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_1748:
	lea	rsi, [rsi]
	jmp	.label_1801
.label_1801:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1661
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x5c
.label_1661:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1665
.label_1665:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_1671
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1671
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_1671
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x39
	nop	
	jg	.label_1671
	nop	
	jmp	.label_1686
.label_1686:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_1688
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_1688:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1695
.label_1695:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1700
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x30
.label_1700:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_1671
.label_1671:
	mov	byte ptr [rbp - 0x7f], 0x30
	nop	
	jmp	.label_1683
.label_1803:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x38]
	nop	
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_1713
	mov	rbp, rbp
	jmp	.label_1684
.label_1713:
	jmp	.label_1683
.label_1683:
	jmp	.label_1650
.label_2348:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	nop	
	mov	dword ptr [rbp - 0x100], ecx
	mov	rsp, rsp
	je	.label_1718
	mov	rbp, rbp
	jmp	.label_1722
.label_1722:
	mov	eax, dword ptr [rbp - 0xfc]
	mov	rbp, rbp
	sub	eax, 5
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x104], eax
	lea	rsi, [rsi]
	je	.label_1725
	jmp	.label_1732
.label_1718:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_1734
	jmp	.label_1662
.label_1734:
	jmp	.label_1648
.label_1725:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_1644
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	nop	
	jae	.label_1644
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x3f
	lea	rdi, [rdi]
	jne	.label_1644
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	movsx	edx, byte ptr [rax + rcx + 2]
	nop	
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	lea	rdi, [rdi]
	je	.label_1757
	nop	
	jmp	.label_1764
.label_1764:
	nop	
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	mov	rsp, rsp
	jb	.label_1757
	jmp	.label_1769
.label_1769:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x108]
	mov	rbp, rbp
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	mov	rsp, rsp
	je	.label_1757
	jmp	.label_1714
.label_1714:
	mov	eax, dword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	sub	eax, 0x2f
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x118], eax
	je	.label_1757
	jmp	.label_1625
.label_1625:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	lea	rdi, [rdi]
	ja	.label_1778
	jmp	.label_1757
.label_1757:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_1794
	jmp	.label_1662
.label_1794:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1790
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x3f
.label_1790:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1804
.label_1804:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1810
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_1810:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1815
.label_1815:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1816
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_1816:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1623
.label_1623:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1660
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x3f
.label_1660:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1636
.label_1778:
	jmp	.label_1636
.label_1636:
	jmp	.label_1644
.label_1644:
	jmp	.label_1648
.label_1732:
	jmp	.label_1648
.label_1648:
	jmp	.label_1650
.label_2338:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_1652
.label_2339:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_1652
.label_2343:
	mov	byte ptr [rbp - 0x80], 0x66
	lea	rdi, [rdi]
	jmp	.label_1652
.label_2341:
	mov	byte ptr [rbp - 0x80], 0x6e
	mov	rbp, rbp
	jmp	.label_1658
.label_2344:
	mov	byte ptr [rbp - 0x80], 0x72
	mov	rbp, rbp
	jmp	.label_1658
.label_2340:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_1658
.label_2342:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_1652
.label_2349:
	mov	al, byte ptr [rbp - 0x7f]
	nop	
	mov	byte ptr [rbp - 0x80], al
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1663
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_1667
	nop	
	jmp	.label_1662
.label_1667:
	lea	rsi, [rsi]
	jmp	.label_1634
.label_1663:
	test	byte ptr [rbp - 0x79], 1
	je	.label_1674
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	je	.label_1674
	nop	
	cmp	qword ptr [rbp - 0x78], 0
	mov	rbp, rbp
	je	.label_1674
	jmp	.label_1634
.label_1674:
	jmp	.label_1658
.label_1658:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x34], 2
	lea	rsi, [rsi]
	jne	.label_1680
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1680
	jmp	.label_1662
.label_1680:
	mov	rsp, rsp
	jmp	.label_1652
.label_1652:
	test	byte ptr [rbp - 0x79], 1
	lea	rdi, [rdi]
	je	.label_1691
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_1693
.label_1691:
	jmp	.label_1650
.label_2350:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_1698
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_1701
	jmp	.label_1705
.label_1698:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_1701
.label_1705:
	nop	
	jmp	.label_1650
.label_1701:
	jmp	.label_1709
.label_1709:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x58], 0
	mov	rbp, rbp
	je	.label_1711
	lea	rsi, [rsi]
	jmp	.label_1650
.label_1711:
	nop	
	jmp	.label_1753
.label_1753:
	mov	byte ptr [rbp - 0x83], 1
.label_2345:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1710
	test	byte ptr [rbp - 0x7b], 1
	lea	rdi, [rdi]
	je	.label_1710
	jmp	.label_1662
.label_1710:
	lea	rsi, [rsi]
	jmp	.label_1650
.label_2347:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_1721
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_1730
	jmp	.label_1662
.label_1730:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1664
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x68], 0
	lea	rdi, [rdi]
	jne	.label_1664
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_1664:
	jmp	.label_1742
.label_1742:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jae	.label_1744
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_1744:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1754
.label_1754:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	jae	.label_1793
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_1793:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	nop	
	jmp	.label_1766
.label_1766:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_1768
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1768:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_1721:
	lea	rsi, [rsi]
	jmp	.label_1650
.label_2346:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_1650
.label_1787:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7a], 1
	je	.label_1779
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x90], 1
	movzx	eax, byte ptr [rbp - 0x7f]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x128], rcx
	call	__ctype_b_loc
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x128]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x4000
	nop	
	cmp	edx, 0
	lea	rdi, [rdi]
	setne	sil
	and	sil, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x91], sil
	lea	rsi, [rsi]
	jmp	.label_1760
.label_1779:
	xor	esi, esi
	mov	eax, 8
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x90], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	mov	rsp, rsp
	jne	.label_1806
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_1806:
	jmp	.label_1785
.label_1785:
	lea	rdi, [rbp - 0xa4]
	lea	rdi, [rdi]
	lea	rcx, [rbp - 0xa0]
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	add	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x58]
	add	rsi, qword ptr [rbp - 0x90]
	sub	rdx, rsi
	nop	
	mov	rsi, rax
	mov	rsp, rsp
	call	rpl_mbrtowc
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb0], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0xb0], 0
	mov	rbp, rbp
	jne	.label_1629
	jmp	.label_1642
.label_1629:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_1638
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_1642
.label_1638:
	nop	
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_1646
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 0
.label_1677:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	mov	rsp, rsp
	jae	.label_1654
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_1654:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_1659
	jmp	.label_1669
.label_1659:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_1677
.label_1669:
	jmp	.label_1642
.label_1646:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1632
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	jne	.label_1632
	mov	qword ptr [rbp - 0xb8], 1
.label_1720:
	mov	rax, qword ptr [rbp - 0xb8]
	nop	
	cmp	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	jae	.label_1679
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0xb8]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	mov	rsp, rsp
	add	esi, -0x5b
	sub	esi, 2
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x130], edx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x134], esi
	jb	.label_1685
	jmp	.label_1702
.label_1702:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x138], eax
	je	.label_1685
	jmp	.label_1707
.label_1707:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x13c], eax
	mov	rsp, rsp
	je	.label_1685
	jmp	.label_1715
.label_1715:
	mov	eax, dword ptr [rbp - 0x130]
	lea	rdi, [rdi]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_1745
	mov	rsp, rsp
	jmp	.label_1685
.label_1685:
	mov	rsp, rsp
	jmp	.label_1662
.label_1745:
	jmp	.label_1719
.label_1719:
	mov	rsp, rsp
	jmp	.label_1795
.label_1795:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_1720
.label_1679:
	mov	rbp, rbp
	jmp	.label_1632
.label_1632:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_1733
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 0
.label_1733:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_1736
.label_1736:
	lea	rsi, [rsi]
	jmp	.label_1743
.label_1743:
	jmp	.label_1746
.label_1746:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0xa0]
	nop	
	call	mbsinit
	mov	rbp, rbp
	cmp	eax, 0
	mov	rsp, rsp
	setne	cl
	lea	rdi, [rdi]
	xor	cl, 0xff
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_1785
.label_1642:
	jmp	.label_1760
.label_1760:
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	nop	
	jb	.label_1761
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x79], 1
	lea	rdi, [rdi]
	je	.label_1666
	mov	rsp, rsp
	test	byte ptr [rbp - 0x91], 1
	mov	rsp, rsp
	jne	.label_1666
.label_1761:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x90]
	nop	
	mov	qword ptr [rbp - 0xc0], rax
.label_1737:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x79], 1
	nop	
	je	.label_1771
	mov	rsp, rsp
	test	byte ptr [rbp - 0x91], 1
	jne	.label_1771
	jmp	.label_1775
.label_1775:
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	je	.label_1777
	jmp	.label_1662
.label_1777:
	mov	byte ptr [rbp - 0x82], 1
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_1782
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_1782
	lea	rdi, [rdi]
	jmp	.label_1788
.label_1788:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1791
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1791:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_1797
.label_1797:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1802
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_1802:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	nop	
	jmp	.label_1812
.label_1812:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1758
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1758:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_1782:
	jmp	.label_1820
.label_1820:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jae	.label_1822
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_1822:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1728
.label_1728:
	jmp	.label_1633
.label_1633:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1635
	nop	
	movzx	eax, byte ptr [rbp - 0x7f]
	nop	
	sar	eax, 6
	mov	rsp, rsp
	add	eax, 0x30
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rsi + rdx], cl
.label_1635:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_1751
.label_1751:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_1781
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x7f]
	mov	rbp, rbp
	sar	eax, 3
	lea	rsi, [rsi]
	and	eax, 7
	add	eax, 0x30
	lea	rsi, [rsi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_1781:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	lea	rsi, [rsi]
	and	eax, 7
	lea	rdi, [rdi]
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_1750
.label_1771:
	test	byte ptr [rbp - 0x81], 1
	lea	rsi, [rsi]
	je	.label_1673
	lea	rdi, [rdi]
	jmp	.label_1675
.label_1675:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_1676
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_1676:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x81], 0
.label_1673:
	nop	
	jmp	.label_1750
.label_1750:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	mov	rsp, rsp
	ja	.label_1690
	jmp	.label_1696
.label_1690:
	lea	rsi, [rsi]
	jmp	.label_1697
.label_1697:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_1699
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x82], 1
	jne	.label_1699
	lea	rsi, [rsi]
	jmp	.label_1704
.label_1704:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1706
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_1706:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_1712
.label_1712:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	jae	.label_1763
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_1763:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_1699:
	nop	
	jmp	.label_1724
.label_1724:
	mov	rsp, rsp
	jmp	.label_1726
.label_1726:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_1729
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rdx + rcx], al
.label_1729:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 1]
	nop	
	mov	byte ptr [rbp - 0x7f], dl
	jmp	.label_1737
.label_1696:
	mov	rsp, rsp
	jmp	.label_1634
.label_1666:
	lea	rsi, [rsi]
	jmp	.label_1650
.label_1650:
	test	byte ptr [rbp - 0x79], 1
	mov	rbp, rbp
	je	.label_1772
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1759
.label_1772:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1762
.label_1759:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x40], 0
	nop	
	je	.label_1762
	movzx	eax, byte ptr [rbp - 0x7f]
	lea	rsi, [rsi]
	mov	ecx, eax
	shr	rcx, 5
	mov	rdx, qword ptr [rbp - 0x40]
	mov	eax, dword ptr [rdx + rcx*4]
	nop	
	movzx	esi, byte ptr [rbp - 0x7f]
	lea	rsi, [rsi]
	mov	ecx, esi
	and	rcx, 0x1f
	lea	rdi, [rdi]
	mov	esi, ecx
	mov	ecx, esi
	shr	eax, cl
	lea	rdi, [rdi]
	and	eax, 1
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_1627
.label_1762:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x81], 1
	lea	rdi, [rdi]
	jne	.label_1627
	mov	rsp, rsp
	jmp	.label_1634
.label_1627:
	nop	
	jmp	.label_1693
.label_1693:
	jmp	.label_1773
.label_1773:
	test	byte ptr [rbp - 0x7b], 1
	mov	rbp, rbp
	je	.label_1774
	jmp	.label_1662
.label_1774:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_1780
	test	byte ptr [rbp - 0x7c], 1
	lea	rdi, [rdi]
	jne	.label_1780
	lea	rdi, [rdi]
	jmp	.label_1786
.label_1786:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_1789
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_1789:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_1796
.label_1796:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1800
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_1800:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_1809
.label_1809:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_1814
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_1814:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_1780:
	jmp	.label_1821
.label_1821:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1819
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x5c
.label_1819:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1630
.label_1630:
	nop	
	jmp	.label_1634
.label_1634:
	jmp	.label_1637
.label_1637:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7c], 1
	je	.label_1639
	test	byte ptr [rbp - 0x82], 1
	jne	.label_1639
	lea	rdi, [rdi]
	jmp	.label_1647
.label_1647:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1649
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1649:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1656
.label_1656:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_1813
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_1813:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_1639:
	jmp	.label_1670
.label_1670:
	nop	
	jmp	.label_1681
.label_1681:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1672
	mov	al, byte ptr [rbp - 0x7f]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + rcx], al
.label_1672:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x83], 1
	jne	.label_1678
	mov	byte ptr [rbp - 0x7e], 0
.label_1678:
	mov	rbp, rbp
	jmp	.label_1684
.label_1684:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_1784
.label_1738:
	cmp	qword ptr [rbp - 0x60], 0
	mov	rbp, rbp
	jne	.label_1692
	cmp	dword ptr [rbp - 0x34], 2
	nop	
	jne	.label_1692
	mov	rbp, rbp
	test	byte ptr [rbp - 0x7b], 1
	lea	rdi, [rdi]
	je	.label_1692
	nop	
	jmp	.label_1662
.label_1692:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1703
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	jne	.label_1703
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x7d], 1
	je	.label_1703
	test	byte ptr [rbp - 0x7e], 1
	je	.label_1708
	mov	r8d, 5
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	r9d, dword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	r10, qword ptr [rbp - 0x48]
	mov	r11, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], r11
	mov	rbp, rbp
	call	quotearg_buffer_restyled
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	nop	
	jmp	.label_1723
.label_1708:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	jne	.label_1727
	cmp	qword ptr [rbp - 0x68], 0
	lea	rsi, [rsi]
	je	.label_1727
	nop	
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_1735
.label_1727:
	jmp	.label_1739
.label_1739:
	mov	rbp, rbp
	jmp	.label_1703
.label_1703:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_1741
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1741
	mov	rbp, rbp
	jmp	.label_1747
.label_1747:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_1749
	lea	rdi, [rdi]
	jmp	.label_1752
.label_1752:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_1756
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], cl
.label_1756:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_1765
.label_1765:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1747
.label_1749:
	jmp	.label_1741
.label_1741:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1770
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_1770:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1723
.label_1662:
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	jne	.label_1776
	mov	rsp, rsp
	test	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	je	.label_1776
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], 4
.label_1776:
	mov	rbp, rbp
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x34]
	nop	
	mov	r9d, dword ptr [rbp - 0x38]
	and	r9d, 0xfffffffd
	lea	rsi, [rsi]
	mov	r10, qword ptr [rbp - 0x48]
	mov	r11, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x148], rcx
	mov	rcx, r8
	lea	rdi, [rdi]
	mov	r8d, eax
	mov	qword ptr [rsp], 0
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
.label_1723:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x4153b0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	lea	rdi, [rdi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdx
	lea	rsi, [rsi]
	mov	rdx, rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	call	quotearg_alloc_mem
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415420

	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x78
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rcx
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x28], 0
	mov	rsp, rsp
	je	.label_1824
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	jmp	.label_1825
.label_1824:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_1825
.label_1825:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	ecx, 1
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edi, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], edi
	mov	rax, qword ptr [rbp - 0x30]
	mov	edi, dword ptr [rax + 4]
	cmp	qword ptr [rbp - 0x20], 0
	nop	
	cmovne	ecx, esi
	or	edi, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x38], edi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [r8]
	lea	rsi, [rsi]
	mov	r9d, dword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	r10, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	add	r10, 8
	mov	r11, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	r11, qword ptr [r11 + 0x28]
	mov	rbx, qword ptr [rbp - 0x30]
	nop	
	mov	rbx, qword ptr [rbx + 0x30]
	lea	rsi, [rsi]
	mov	rdi, rdx
	lea	rsi, [rsi]
	mov	rsi, rdx
	mov	rdx, rax
	mov	qword ptr [rsp], r10
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], r11
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rbx
	call	quotearg_buffer_restyled
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x40]
	call	xcharalloc
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x30]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x30]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	r8d, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rax
	mov	dword ptr [rbp - 0x5c], r8d
	nop	
	call	__errno_location
	nop	
	mov	r8d, dword ptr [rbp - 0x5c]
	nop	
	mov	dword ptr [rax], r8d
	nop	
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1826
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_1826:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	add	rsp, 0x78
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4155f0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	nop	
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_1831:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_1830
	nop	
	movsxd	rax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	nop	
	add	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	jmp	.label_1831
.label_1830:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	je	.label_1829
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	rbp, rbp
	mov	qword ptr [word ptr [label_1827]],  rax
.label_1829:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_1828
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_1828:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415700

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rbp, rbp
	mov	rdx, -1
	mov	rsp, rsp
	movabs	rcx, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], edi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_n_options
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415750

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	dword ptr [rbp - 4], edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rcx
	nop	
	call	__errno_location
	mov	edi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], edi
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 0x30], rax
	cmp	dword ptr [rbp - 4], 0
	jge	.label_1838
	call	abort
.label_1838:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_1833
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	sete	cl
	mov	rbp, rbp
	and	cl, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x31], cl
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	mov	rsp, rsp
	jge	.label_1834
	call	xalloc_die
.label_1834:
	test	byte ptr [rbp - 0x31], 1
	je	.label_1835
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_1839
.label_1835:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_1839:
	mov	rax, qword ptr [rbp - 0x60]
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	movsxd	rdx, ecx
	shl	rdx, 4
	mov	rsp, rsp
	mov	rdi, rax
	mov	rsi, rdx
	call	xrealloc
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [word ptr [slotvec]],  rax
	test	byte ptr [rbp - 0x31], 1
	lea	rdi, [rdi]
	je	.label_1837
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_1827]]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
.label_1837:
	xor	esi, esi
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	movsxd	rcx,  dword ptr [dword ptr [nslots]]
	mov	rsp, rsp
	shl	rcx, 4
	add	rax, rcx
	mov	edx, dword ptr [rbp - 4]
	nop	
	add	edx, 1
	mov	rbp, rbp
	sub	edx,  dword ptr [dword ptr [nslots]]
	movsxd	rcx, edx
	shl	rcx, 4
	mov	rdi, rax
	mov	rsp, rsp
	mov	rdx, rcx
	mov	rsp, rsp
	call	memset
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 4]
	add	esi, 1
	mov	dword ptr [dword ptr [nslots]],  esi
.label_1833:
	movsxd	rax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	nop	
	movsxd	rax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	shl	rax, 4
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	ecx, dword ptr [rax + 4]
	lea	rsi, [rsi]
	or	ecx, 1
	mov	dword ptr [rbp - 0x4c], ecx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	r8d, dword ptr [rax]
	mov	rbp, rbp
	mov	r9d, dword ptr [rbp - 0x4c]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 8
	nop	
	mov	r10, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	r10, qword ptr [r10 + 0x28]
	lea	rdi, [rdi]
	mov	r11, qword ptr [rbp - 0x20]
	nop	
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	ja	.label_1836
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	lea	rsi, [rsi]
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	je	.label_1832
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	call	free
.label_1832:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x40]
	call	xcharalloc
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	movsxd	rdi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	shl	rdi, 4
	add	rdi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 8], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x4c]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x20]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	r11, qword ptr [r11 + 0x30]
	nop	
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	mov	rsp, rsp
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x68], rax
.label_1836:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x24]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x6c], eax
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x6c]
	mov	dword ptr [rax], ecx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x90
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415a80

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	nop	
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
	#Procedure 0x415ac0
	.globl quotearg
	.type quotearg, @function
quotearg:

	nop
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	xor	eax, eax
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	call	quotearg_n
	lea	rdi, [rdi]
	add	rsp, 0x10
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x415af0
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	xor	eax, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	mov	rsp, rsp
	call	quotearg_n_mem
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x415b30

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x50
	lea	rax, [rbp - 0x48]
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	nop	
	mov	qword ptr [rbp - 0x10], rdx
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 8]
	mov	rdi, rax
	call	quoting_options_from_style
	mov	rdx, -1
	lea	rcx, [rbp - 0x48]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_n_options
	lea	rdi, [rdi]
	add	rsp, 0x50
	lea	rdi, [rdi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x415b90

	.globl quoting_options_from_style
	.type quoting_options_from_style, @function
quoting_options_from_style:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rax, rdi
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, 0x38
	lea	r8, [rbp - 0x40]
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], esi
	mov	qword ptr [rbp - 0x48], rdi
	nop	
	mov	rdi, r8
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	call	memset
	nop	
	cmp	dword ptr [rbp - 4], 0xa
	jne	.label_1840
	call	abort
.label_1840:
	lea	rsi, [rsi]
	mov	eax, 0x38
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rcx, [rbp - 0x40]
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x40], eax
	nop	
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdi, rsi
	lea	rsi, [rsi]
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	memcpy
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rsp, 0x50
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x415c30

	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rsp, rsp
	lea	rax, [rbp - 0x50]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], edi
	nop	
	mov	dword ptr [rbp - 8], esi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rcx
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 8]
	nop	
	mov	rdi, rax
	call	quoting_options_from_style
	lea	rcx, [rbp - 0x50]
	nop	
	mov	edi, dword ptr [rbp - 4]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0x50
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415ca0
	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:

	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	esi, dword ptr [rbp - 4]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	mov	rbp, rbp
	call	quotearg_n_style
	nop	
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415ce0
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
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
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415d20

	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x70
	mov	rbp, rbp
	mov	al, dl
	lea	rcx, [rbp - 0x50]
	lea	rdi, [rdi]
	mov	edx, 1
	movabs	r8, OFFSET FLAT:default_quoting_options
	mov	r9d, 0x38
	mov	r10d, r9d
	nop	
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], al
	lea	rsi, [rsi]
	mov	rsi, rcx
	nop	
	mov	rdi, rsi
	mov	rsi, r8
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x54], edx
	lea	rsi, [rsi]
	mov	rdx, r10
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rcx
	call	memcpy
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	movsx	esi, byte ptr [rbp - 0x11]
	mov	edx, dword ptr [rbp - 0x54]
	nop	
	call	set_char_quoting
	mov	rsp, rsp
	xor	edi, edi
	lea	rcx, [rbp - 0x50]
	nop	
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	mov	dword ptr [rbp - 0x64], eax
	nop	
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415dd0

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	mov	rbp, rbp
	mov	al, sil
	mov	rsi, -1
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	nop	
	mov	rdi, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rbp - 9]
	call	quotearg_char_mem
	add	rsp, 0x10
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415e10

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	nop	
	mov	esi, 0x3a
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	quotearg_char
	lea	rsi, [rsi]
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415e40
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	edx, 0x3a
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	quotearg_char_mem
	mov	rsp, rsp
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415e80

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	lea	rax, [rbp - 0x80]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdx
	mov	esi, dword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdi, rax
	nop	
	call	quoting_options_from_style
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x48]
	mov	rsp, rsp
	mov	esi, 0x3a
	mov	rbp, rbp
	mov	edx, 1
	mov	ecx, 0x38
	mov	edi, ecx
	lea	rsi, [rsi]
	lea	r8, [rbp - 0x80]
	mov	r9, rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x88], rdi
	mov	rsp, rsp
	mov	rdi, r9
	nop	
	mov	dword ptr [rbp - 0x8c], esi
	mov	rsi, r8
	mov	r8, qword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x90], edx
	nop	
	mov	rdx, r8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x98], rax
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x98]
	mov	esi, dword ptr [rbp - 0x8c]
	mov	edx, dword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	call	set_char_quoting
	mov	rdx, -1
	mov	rsp, rsp
	lea	rcx, [rbp - 0x48]
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x9c], eax
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0xa0
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415f70

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	rbp, rbp
	mov	r8, -1
	mov	dword ptr [rbp - 4], edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rcx
	mov	edi, dword ptr [rbp - 4]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	quotearg_n_custom_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415fc0

	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x70
	lea	rax, [rbp - 0x60]
	lea	rsi, [rsi]
	movabs	r9, OFFSET FLAT:default_quoting_options
	nop	
	mov	r10d, 0x38
	mov	rbp, rbp
	mov	r11d, r10d
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	rcx, rax
	mov	rdi, rcx
	mov	rbp, rbp
	mov	rsi, r9
	mov	rbp, rbp
	mov	rdx, r11
	mov	qword ptr [rbp - 0x68], rax
	call	memcpy
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	call	set_custom_quoting
	lea	rcx, [rbp - 0x60]
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	call	quotearg_n_options
	add	rsp, 0x70
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x416060
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x20
	nop	
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	edi, eax
	lea	rdi, [rdi]
	call	quotearg_n_custom
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4160b0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbp - 0x20]
	mov	edi, eax
	call	quotearg_n_custom_mem
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x416110

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rcx, OFFSET FLAT:quote_quoting_options
	mov	dword ptr [rbp - 4], edi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	edi, dword ptr [rbp - 4]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_n_options
	lea	rdi, [rdi]
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x416150
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	mov	rsp, rsp
	call	quote_n_mem
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x416190

	.globl quote_n
	.type quote_n, @function
quote_n:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	rsp, rsp
	mov	rdx, -1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	edi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quote_n_mem
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4161d0

	.globl quote
	.type quote, @function
quote:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	lea	rdi, [rdi]
	call	quote_n
	nop	
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x416210

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	gettext
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x10]
	je	.label_1844
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1841
.label_1844:
	call	locale_charset
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.13_0
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_1842
	movabs	rax, OFFSET FLAT:.str.15_0
	movabs	rcx, OFFSET FLAT:.str.14_0
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1841
.label_1842:
	nop	
	movabs	rsi, OFFSET FLAT:.str.16_0
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	c_strcasecmp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_1843
	nop	
	movabs	rax, OFFSET FLAT:.str.18_1
	movabs	rcx, OFFSET FLAT:.str.17_0
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_1841
.label_1843:
	nop	
	movabs	rax, OFFSET FLAT:.str.12_0
	movabs	rcx, OFFSET FLAT:.str.10_0
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x14], 9
	lea	rdi, [rdi]
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_1841:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x416350
	.globl get_stat_atime_ns
	.type get_stat_atime_ns, @function
get_stat_atime_ns:

	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rdi + 0x50]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x416370
	.globl get_stat_ctime_ns
	.type get_stat_ctime_ns, @function
get_stat_ctime_ns:

	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rdi + 0x70]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x416390
	.globl get_stat_mtime_ns
	.type get_stat_mtime_ns, @function
get_stat_mtime_ns:

	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rdi + 0x60]
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4163b0
	.globl get_stat_birthtime_ns
	.type get_stat_birthtime_ns, @function
get_stat_birthtime_ns:

	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4163d0
	.globl get_stat_atime
	.type get_stat_atime, @function
get_stat_atime:

	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdi
	movups	xmm0, xmmword ptr [rdi + 0x48]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x416400
	.globl get_stat_ctime
	.type get_stat_ctime, @function
get_stat_ctime:

	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	movups	xmm0, xmmword ptr [rdi + 0x68]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x416430

	.globl get_stat_mtime
	.type get_stat_mtime, @function
get_stat_mtime:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rdi + 0x58]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x416460
	.globl get_stat_birthtime
	.type get_stat_birthtime, @function
get_stat_birthtime:

	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x28], -1
	mov	qword ptr [rbp - 0x20], -1
	movups	xmm0, xmmword ptr [rbp - 0x28]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4164a0
	.globl stat_time_normalize
	.type stat_time_normalize, @function
stat_time_normalize:

	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x4164c0

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	xor	esi, esi
	nop	
	mov	edx, 3
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	mov	al, 0
	call	rpl_fcntl
	mov	rsp, rsp
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x416500

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	nop	
	push	rbp
	mov	rbp, rsp
	push	r14
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x180
	mov	qword ptr [rbp - 0x18], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x30], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], r8
	mov	qword ptr [rbp - 0x40], r9
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1845
	movabs	rsi, OFFSET FLAT:.str_6
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	lea	rsi, [rsi]
	jmp	.label_1848
.label_1845:
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.1_3
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_1848:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:.str.2_2
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rdi
	mov	rdi, rcx
	lea	rsi, [rsi]
	call	gettext
	mov	edx, OFFSET FLAT:version_etc_copyright
	lea	rsi, [rsi]
	mov	esi, edx
	xor	edx, edx
	mov	r8b, dl
	mov	rbp, rbp
	mov	ecx, 0x7e3
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	al, r8b
	nop	
	call	fprintf
	nop	
	mov	ecx, OFFSET FLAT:.str.3_1
	mov	rbp, rbp
	mov	edi, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x54], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	nop	
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rsi, rdx
	sub	rsi, 9
	nop	
	mov	dword ptr [rbp - 0x58], eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rdx
	mov	qword ptr [rbp - 0x68], rsi
	mov	rbp, rbp
	ja	.label_1847
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1849]]
	jmp	rcx
.label_2368:
	jmp	.label_1846
.label_2369:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.4_1
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	nop	
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x74], eax
	jmp	.label_1846
.label_2370:
	movabs	rdi, OFFSET FLAT:.str.5_0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x80], rax
	lea	rsi, [rsi]
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	rsi, rax
	mov	al, 0
	mov	rsp, rsp
	call	fprintf
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x84], eax
	lea	rsi, [rsi]
	jmp	.label_1846
.label_2371:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.6_0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x90], rax
	call	gettext
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	mov	rdx, qword ptr [rdi]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	nop	
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x90]
	mov	rbp, rbp
	mov	rsi, rax
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	nop	
	mov	dword ptr [rbp - 0x94], eax
	lea	rsi, [rsi]
	jmp	.label_1846
.label_2372:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.7_0
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xa0], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0xa0]
	nop	
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xa4], eax
	jmp	.label_1846
.label_2373:
	nop	
	movabs	rdi, OFFSET FLAT:.str.8_0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb0], rax
	mov	rsp, rsp
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	nop	
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0xb8], rdi
	mov	rdi, rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rsp], rax
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xbc], eax
	nop	
	jmp	.label_1846
.label_2374:
	nop	
	movabs	rdi, OFFSET FLAT:.str.9_0
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	r9, qword ptr [rdi + 0x18]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi + 0x20]
	nop	
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd0], rdi
	mov	rdi, r10
	mov	qword ptr [rbp - 0xd8], rsi
	lea	rsi, [rsi]
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rsp + 8], rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xdc], eax
	jmp	.label_1846
.label_2375:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.10_1
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xe8], rax
	lea	rsi, [rsi]
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	mov	r8, qword ptr [rdi + 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	nop	
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdi, qword ptr [rdi + 0x20]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0xe8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xf0], rdi
	mov	rsp, rsp
	mov	rdi, r11
	mov	qword ptr [rbp - 0xf8], rsi
	mov	rsp, rsp
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xf0]
	nop	
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0xf8]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	al, 0
	nop	
	call	fprintf
	mov	dword ptr [rbp - 0xfc], eax
	nop	
	jmp	.label_1846
.label_2376:
	movabs	rdi, OFFSET FLAT:.str.11_0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x108], rax
	call	gettext
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rdi + 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	r10, qword ptr [r10 + 0x30]
	mov	rsp, rsp
	mov	r11, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rsp, rsp
	mov	rbx, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x110], rdi
	mov	rdi, rbx
	nop	
	mov	qword ptr [rbp - 0x118], rsi
	mov	rsi, rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x118]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	lea	rsi, [rsi]
	mov	al, 0
	call	fprintf
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x11c], eax
	jmp	.label_1846
.label_2377:
	movabs	rdi, OFFSET FLAT:.str.12_1
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x128], rax
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	nop	
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rdi + 8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	rsp, rsp
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	nop	
	mov	r11, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rbx + 0x40]
	mov	rbp, rbp
	mov	r14, qword ptr [rbp - 0x128]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x130], rdi
	mov	rdi, r14
	mov	qword ptr [rbp - 0x138], rsi
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x130]
	mov	qword ptr [rsp], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x138]
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], r10
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], r11
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rbx
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	fprintf
	mov	dword ptr [rbp - 0x13c], eax
	jmp	.label_1846
.label_1847:
	movabs	rdi, OFFSET FLAT:.str.13_1
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x148], rax
	lea	rdi, [rdi]
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rcx, qword ptr [rdi + 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	nop	
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	nop	
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbp, rbp
	mov	rbx, qword ptr [rbp - 0x38]
	mov	rbx, qword ptr [rbx + 0x40]
	mov	rsp, rsp
	mov	r14, qword ptr [rbp - 0x148]
	mov	qword ptr [rbp - 0x150], rdi
	mov	rdi, r14
	mov	qword ptr [rbp - 0x158], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x150]
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x158]
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	nop	
	mov	qword ptr [rsp + 0x18], r11
	mov	qword ptr [rsp + 0x20], rbx
	mov	rsp, rsp
	mov	al, 0
	lea	rdi, [rdi]
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x15c], eax
.label_1846:
	lea	rdi, [rdi]
	add	rsp, 0x180
	pop	rbx
	nop	
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x416c70
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rcx
	nop	
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], 0
.label_1850:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1851
	mov	rbp, rbp
	jmp	.label_1852
.label_1852:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	jmp	.label_1850
.label_1851:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	r9, qword ptr [rbp - 0x30]
	call	version_etc_arn
	nop	
	add	rsp, 0x30
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x416d20

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0xa0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], 0
.label_1859:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_1858
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax]
	nop	
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_1854
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x94]
	mov	rsp, rsp
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	mov	rbp, rbp
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_1855
.label_1854:
	nop	
	mov	rax, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	nop	
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_1855:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	mov	rbp, rbp
	cmp	rax, 0
	setne	dl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x81], dl
.label_1858:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x81]
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_1857
	mov	rsp, rsp
	jmp	.label_1853
.label_1857:
	jmp	.label_1856
.label_1856:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1859
.label_1853:
	nop	
	lea	r8, [rbp - 0x80]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	r9, qword ptr [rbp - 0x30]
	nop	
	call	version_etc_arn
	add	rsp, 0xa0
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x416e80

	.globl version_etc
	.type version_etc, @function
version_etc:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x1a0
	mov	rbp, rbp
	test	al, al
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x100], xmm7
	nop	
	movaps	xmmword ptr [rbp - 0x110], xmm6
	movaps	xmmword ptr [rbp - 0x120], xmm5
	nop	
	movaps	xmmword ptr [rbp - 0x130], xmm4
	nop	
	movaps	xmmword ptr [rbp - 0x140], xmm3
	movaps	xmmword ptr [rbp - 0x150], xmm2
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x160], xmm1
	movaps	xmmword ptr [rbp - 0x170], xmm0
	nop	
	mov	qword ptr [rbp - 0x178], rdi
	mov	qword ptr [rbp - 0x180], r9
	mov	qword ptr [rbp - 0x188], r8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x190], rcx
	mov	qword ptr [rbp - 0x198], rdx
	mov	qword ptr [rbp - 0x1a0], rsi
	lea	rsi, [rsi]
	je	.label_1860
	movaps	xmm0, xmmword ptr [rbp - 0x170]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0xc0], xmm0
	lea	rdi, [rdi]
	movaps	xmm1, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm1
	lea	rdi, [rdi]
	movaps	xmm2, xmmword ptr [rbp - 0x150]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0xa0], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x130]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x80], xmm4
	lea	rdi, [rdi]
	movaps	xmm5, xmmword ptr [rbp - 0x120]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x70], xmm5
	mov	rbp, rbp
	movaps	xmm6, xmmword ptr [rbp - 0x110]
	movaps	xmmword ptr [rbp - 0x60], xmm6
	mov	rsp, rsp
	movaps	xmm7, xmmword ptr [rbp - 0x100]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x50], xmm7
.label_1860:
	mov	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rcx, qword ptr [rbp - 0x188]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xd0], rcx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x190]
	mov	rsi, qword ptr [rbp - 0x198]
	mov	rdi, qword ptr [rbp - 0x1a0]
	nop	
	mov	r8, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 8], r8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	lea	rdx, [rbp - 0xf0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rdx
	lea	rdx, [rbp + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rdx
	mov	dword ptr [rbp - 0x3c], 0x30
	mov	dword ptr [rbp - 0x40], 0x20
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	lea	r8, [rbp - 0x40]
	call	version_etc_va
	add	rsp, 0x1a0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x417030
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.14_1
	lea	rsi, [rsi]
	call	gettext
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.15_1
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.16_1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.17
	movabs	rdx, OFFSET FLAT:.str.18_0
	mov	rsp, rsp
	mov	rdi, rax
	mov	al, 0
	call	printf
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.19_0
	mov	dword ptr [rbp - 8], eax
	mov	rsp, rsp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4170e0

	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:
	lea	rdi, [rdi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	xor	ecx, ecx
	mov	edx, ecx
	nop	
	div	qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 8]
	jae	.label_1861
	mov	rbp, rbp
	call	xalloc_die
.label_1861:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x417140

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	malloc
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	jne	.label_1862
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	je	.label_1862
	lea	rdi, [rdi]
	call	xalloc_die
.label_1862:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4171a0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	lea	rdi, [rdi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_1863
	mov	rsp, rsp
	call	xalloc_die
.label_1863:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	imul	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rsi, rax
	lea	rdi, [rdi]
	call	xrealloc
	lea	rdi, [rdi]
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x417220

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	jne	.label_1864
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	je	.label_1864
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1866
.label_1864:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	jne	.label_1865
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	je	.label_1865
	lea	rsi, [rsi]
	call	xalloc_die
.label_1865:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_1866:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4172d0

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x20], rdx
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	jne	.label_1867
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1869
	mov	eax, 0x80
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	mov	rbp, rbp
	setne	sil
	mov	rsp, rsp
	xor	sil, 0xff
	and	sil, 1
	movzx	ecx, sil
	movsxd	rax, ecx
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_1869:
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	nop	
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	nop	
	div	qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jae	.label_1871
	call	xalloc_die
.label_1871:
	lea	rsi, [rsi]
	jmp	.label_1870
.label_1867:
	nop	
	movabs	rax, 0x5555555555555554
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_1868
	call	xalloc_die
.label_1868:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	shr	rax, 1
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_1870:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	imul	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rsi, rax
	call	xrealloc
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x417400

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	xmalloc
	mov	rbp, rbp
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x417430

	.globl x2realloc
	.type x2realloc, @function
x2realloc:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	mov	eax, 1
	mov	edx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	call	x2nrealloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x417470
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	rdi, qword ptr [rbp - 8]
	call	xmalloc
	xor	esi, esi
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x10], rax
	call	memset
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4174c0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, 0x7fffffffffffffff
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	nop	
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
	lea	rsi, [rsi]
	call	xalloc_die
.label_1873:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x417530

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	call	xmalloc
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	call	memcpy
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x417580
	.globl xstrdup
	.type xstrdup, @function
xstrdup:

	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsp, rsp
	call	strlen
	mov	rsp, rsp
	add	rax, 1
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	lea	rdi, [rdi]
	call	xmemdup
	mov	rbp, rbp
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4175e0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.1_4
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	nop	
	mov	dword ptr [rbp - 4], eax
	call	gettext
	mov	rsp, rsp
	xor	esi, esi
	nop	
	movabs	rdx, OFFSET FLAT:.str_1
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	mov	rbp, rbp
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x417640

	.globl xnumtoimax
	.type xnumtoimax, @function
xnumtoimax:
	nop	
	push	rbp
	mov	rbp, rsp
	nop	
	push	rbx
	sub	rsp, 0x58
	mov	rsp, rsp
	mov	eax, dword ptr [rbp + 0x10]
	lea	rdi, [rdi]
	xor	r10d, r10d
	mov	rsp, rsp
	mov	r11d, r10d
	nop	
	lea	rbx, [rbp - 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], r8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], r9
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], eax
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x14]
	mov	r8, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rsi, r11
	lea	rdi, [rdi]
	mov	rcx, rbx
	mov	rbp, rbp
	call	xstrtoimax
	mov	dword ptr [rbp - 0x40], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x40], 0
	jne	.label_1885
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jl	.label_1889
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x48]
	jge	.label_1876
.label_1889:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x40], 1
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x48], 0x3fffffff
	jle	.label_1881
	lea	rdi, [rdi]
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0x4b
	mov	rsp, rsp
	jmp	.label_1874
.label_1881:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x48], -0x40000000
	nop	
	jge	.label_1877
	call	__errno_location
	nop	
	mov	dword ptr [rax], 0x4b
	jmp	.label_1884
.label_1877:
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x22
.label_1884:
	mov	rbp, rbp
	jmp	.label_1874
.label_1874:
	mov	rbp, rbp
	jmp	.label_1876
.label_1876:
	jmp	.label_1878
.label_1885:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x40], 1
	mov	rbp, rbp
	jne	.label_1880
	lea	rdi, [rdi]
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_1879
.label_1880:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x40], 3
	jne	.label_1888
	nop	
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0
.label_1888:
	nop	
	jmp	.label_1879
.label_1879:
	jmp	.label_1878
.label_1878:
	cmp	dword ptr [rbp - 0x40], 0
	je	.label_1882
	cmp	dword ptr [rbp - 0x3c], 0
	mov	rsp, rsp
	je	.label_1886
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_1875
.label_1886:
	mov	rsp, rsp
	mov	eax, 1
	mov	dword ptr [rbp - 0x4c], eax
	lea	rsi, [rsi]
	jmp	.label_1875
.label_1875:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x50], eax
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x16
	jne	.label_1883
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x54], eax
	mov	rsp, rsp
	jmp	.label_1887
.label_1883:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x54], ecx
.label_1887:
	mov	eax, dword ptr [rbp - 0x54]
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x58], eax
	mov	qword ptr [rbp - 0x60], rcx
	call	quote
	movabs	rdx, OFFSET FLAT:.str_2
	mov	edi, dword ptr [rbp - 0x50]
	mov	esi, dword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	r8, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_1882:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	add	rsp, 0x58
	lea	rdi, [rdi]
	pop	rbx
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x417870

	.globl xdectoimax
	.type xdectoimax, @function
xdectoimax:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x40
	mov	rsp, rsp
	mov	eax, 0xa
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	dword ptr [rbp - 0x2c], r9d
	mov	rdi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	r9, qword ptr [rbp - 0x28]
	mov	r10d, dword ptr [rbp - 0x2c]
	nop	
	mov	esi, eax
	mov	rsp, rsp
	mov	dword ptr [rsp], r10d
	call	xnumtoimax
	mov	rsp, rsp
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4178e0

	.globl xstrtoimax
	.type xstrtoimax, @function
xstrtoimax:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0xf0
	lea	rsi, [rsi]
	xor	eax, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	dword ptr [rbp - 0x4c], 0
	nop	
	cmp	eax, dword ptr [rbp - 0x1c]
	jg	.label_1897
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x1c], 0x24
	mov	rsp, rsp
	jg	.label_1897
	lea	rdi, [rdi]
	jmp	.label_1905
.label_1897:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str_7
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.1_5
	mov	rsp, rsp
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoimax
	call	__assert_fail
.label_1905:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1918
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_1921
.label_1918:
	lea	rax, [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_1921
.label_1921:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x1c]
	call	strtoimax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	jne	.label_1943
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1910
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	nop	
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_1910
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	movsx	esi, byte ptr [rax]
	nop	
	call	strchr
	cmp	rax, 0
	je	.label_1910
	nop	
	mov	qword ptr [rbp - 0x48], 1
	jmp	.label_1912
.label_1910:
	mov	dword ptr [rbp - 4], 4
	jmp	.label_1907
.label_1912:
	jmp	.label_1914
.label_1943:
	mov	rsp, rsp
	call	__errno_location
	cmp	dword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_1919
	call	__errno_location
	lea	rsi, [rsi]
	cmp	dword ptr [rax], 0x22
	je	.label_1925
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 4
	mov	rsp, rsp
	jmp	.label_1907
.label_1925:
	nop	
	mov	dword ptr [rbp - 0x4c], 1
.label_1919:
	lea	rdi, [rdi]
	jmp	.label_1914
.label_1914:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x30], 0
	lea	rdi, [rdi]
	jne	.label_1934
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
	lea	rdi, [rdi]
	jmp	.label_1907
.label_1934:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	lea	rdi, [rdi]
	je	.label_1896
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x50], 0x400
	mov	dword ptr [rbp - 0x54], 1
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	movsx	esi, byte ptr [rax]
	call	strchr
	nop	
	cmp	rax, 0
	jne	.label_1901
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_1907
.label_1901:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x64], ecx
	mov	dword ptr [rbp - 0x68], edx
	mov	rsp, rsp
	je	.label_1895
	jmp	.label_1920
.label_1920:
	mov	eax, dword ptr [rbp - 0x64]
	lea	rdi, [rdi]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x6c], eax
	je	.label_1895
	jmp	.label_1930
.label_1930:
	mov	eax, dword ptr [rbp - 0x64]
	lea	rsi, [rsi]
	sub	eax, 0x4b
	nop	
	mov	dword ptr [rbp - 0x70], eax
	je	.label_1895
	jmp	.label_1933
.label_1933:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x4d
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x74], eax
	lea	rsi, [rsi]
	je	.label_1895
	jmp	.label_1937
.label_1937:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x50
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x78], eax
	lea	rdi, [rdi]
	je	.label_1895
	jmp	.label_1944
.label_1944:
	mov	eax, dword ptr [rbp - 0x64]
	nop	
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x7c], eax
	je	.label_1895
	lea	rsi, [rsi]
	jmp	.label_1924
.label_1924:
	mov	eax, dword ptr [rbp - 0x64]
	lea	rdi, [rdi]
	add	eax, -0x59
	sub	eax, 2
	mov	dword ptr [rbp - 0x80], eax
	jb	.label_1895
	mov	rsp, rsp
	jmp	.label_1891
.label_1891:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x67
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x84], eax
	je	.label_1895
	mov	rsp, rsp
	jmp	.label_1903
.label_1903:
	mov	eax, dword ptr [rbp - 0x64]
	nop	
	sub	eax, 0x6b
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x88], eax
	je	.label_1895
	mov	rsp, rsp
	jmp	.label_1913
.label_1913:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x64]
	mov	rbp, rbp
	sub	eax, 0x6d
	nop	
	mov	dword ptr [rbp - 0x8c], eax
	nop	
	je	.label_1895
	lea	rdi, [rdi]
	jmp	.label_1916
.label_1916:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x64]
	lea	rdi, [rdi]
	sub	eax, 0x74
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x90], eax
	lea	rdi, [rdi]
	jne	.label_1926
	jmp	.label_1895
.label_1895:
	mov	esi, 0x30
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	call	strchr
	nop	
	cmp	rax, 0
	je	.label_1923
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax + 1]
	mov	rsp, rsp
	mov	edx, ecx
	sub	edx, 0x42
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x94], ecx
	mov	dword ptr [rbp - 0x98], edx
	lea	rsi, [rsi]
	je	.label_1935
	mov	rsp, rsp
	jmp	.label_1947
.label_1947:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x94]
	lea	rdi, [rdi]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_1935
	lea	rsi, [rsi]
	jmp	.label_1890
.label_1890:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x94]
	sub	eax, 0x69
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xa0], eax
	lea	rdi, [rdi]
	jne	.label_1892
	jmp	.label_1904
.label_1904:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax + 2]
	mov	rsp, rsp
	cmp	ecx, 0x42
	jne	.label_1906
	mov	eax, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	add	eax, 2
	mov	dword ptr [rbp - 0x54], eax
.label_1906:
	nop	
	jmp	.label_1892
.label_1935:
	mov	dword ptr [rbp - 0x50], 0x3e8
	mov	eax, dword ptr [rbp - 0x54]
	lea	rdi, [rdi]
	add	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x54], eax
.label_1892:
	mov	rsp, rsp
	jmp	.label_1923
.label_1923:
	jmp	.label_1926
.label_1926:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	nop	
	mov	edx, ecx
	nop	
	sub	edx, 0x42
	mov	dword ptr [rbp - 0xa4], ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xa8], edx
	nop	
	je	.label_1928
	jmp	.label_1945
.label_1945:
	nop	
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x45
	mov	dword ptr [rbp - 0xac], eax
	je	.label_1952
	nop	
	jmp	.label_1940
.label_1940:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0xb0], eax
	je	.label_1942
	jmp	.label_1946
.label_1946:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_1948
	lea	rdi, [rdi]
	jmp	.label_1949
.label_1949:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xa4]
	mov	rsp, rsp
	sub	eax, 0x4d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xb8], eax
	je	.label_1900
	jmp	.label_1898
.label_1898:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x50
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xbc], eax
	mov	rsp, rsp
	je	.label_1902
	lea	rdi, [rdi]
	jmp	.label_1922
.label_1922:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x54
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc0], eax
	lea	rsi, [rsi]
	je	.label_1911
	nop	
	jmp	.label_1917
.label_1917:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x59
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc4], eax
	lea	rsi, [rsi]
	je	.label_1950
	jmp	.label_1929
.label_1929:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x5a
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc8], eax
	nop	
	je	.label_1931
	jmp	.label_1938
.label_1938:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x62
	mov	dword ptr [rbp - 0xcc], eax
	lea	rdi, [rdi]
	je	.label_1908
	jmp	.label_1939
.label_1939:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xa4]
	nop	
	sub	eax, 0x63
	mov	dword ptr [rbp - 0xd0], eax
	je	.label_1941
	jmp	.label_1932
.label_1932:
	mov	eax, dword ptr [rbp - 0xa4]
	mov	rbp, rbp
	sub	eax, 0x67
	mov	dword ptr [rbp - 0xd4], eax
	je	.label_1942
	jmp	.label_1951
.label_1951:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x6b
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xd8], eax
	mov	rsp, rsp
	je	.label_1948
	jmp	.label_1893
.label_1893:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xdc], eax
	je	.label_1900
	jmp	.label_1909
.label_1909:
	mov	eax, dword ptr [rbp - 0xa4]
	mov	rsp, rsp
	sub	eax, 0x74
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xe0], eax
	mov	rsp, rsp
	je	.label_1911
	lea	rsi, [rsi]
	jmp	.label_1894
.label_1894:
	mov	eax, dword ptr [rbp - 0xa4]
	nop	
	sub	eax, 0x77
	nop	
	mov	dword ptr [rbp - 0xe4], eax
	mov	rbp, rbp
	je	.label_1936
	jmp	.label_1927
.label_1908:
	lea	rdi, [rbp - 0x48]
	mov	rsp, rsp
	mov	esi, 0x200
	nop	
	call	bkm_scale
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1899
.label_1928:
	lea	rdi, [rbp - 0x48]
	lea	rdi, [rdi]
	mov	esi, 0x400
	lea	rdi, [rdi]
	call	bkm_scale
	nop	
	mov	dword ptr [rbp - 0x58], eax
	mov	rsp, rsp
	jmp	.label_1899
.label_1941:
	mov	dword ptr [rbp - 0x58], 0
	lea	rdi, [rdi]
	jmp	.label_1899
.label_1952:
	nop	
	lea	rdi, [rbp - 0x48]
	mov	edx, 6
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x58], eax
	nop	
	jmp	.label_1899
.label_1942:
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1899
.label_1948:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	lea	rsi, [rsi]
	jmp	.label_1899
.label_1900:
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x48]
	mov	edx, 2
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1899
.label_1902:
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	esi, dword ptr [rbp - 0x50]
	nop	
	call	bkm_scale_by_power
	nop	
	mov	dword ptr [rbp - 0x58], eax
	nop	
	jmp	.label_1899
.label_1911:
	lea	rdi, [rbp - 0x48]
	lea	rdi, [rdi]
	mov	edx, 4
	mov	esi, dword ptr [rbp - 0x50]
	nop	
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1899
.label_1936:
	mov	rbp, rbp
	lea	rdi, [rbp - 0x48]
	mov	esi, 2
	call	bkm_scale
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1899
.label_1950:
	lea	rdi, [rbp - 0x48]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	lea	rsi, [rsi]
	jmp	.label_1899
.label_1931:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x48]
	mov	rsp, rsp
	mov	edx, 7
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1899
.label_1927:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	nop	
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	nop	
	jmp	.label_1907
.label_1899:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	or	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x4c], eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x54]
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rcx]
	movsxd	rsi, eax
	mov	rsp, rsp
	add	rdx, rsi
	mov	qword ptr [rcx], rdx
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx]
	lea	rsi, [rsi]
	cmp	byte ptr [rcx], 0
	mov	rbp, rbp
	je	.label_1915
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x4c]
	mov	rsp, rsp
	or	eax, 2
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4c], eax
.label_1915:
	jmp	.label_1896
.label_1896:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
.label_1907:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	add	rsp, 0xf0
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418180

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	push	rbp
	mov	rbp, rsp
	nop	
	movabs	rax, 0x8000000000000000
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], esi
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, qword ptr [rdi]
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x14]
	cqo	
	idiv	rcx
	cmp	rdi, rax
	jge	.label_1953
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1954
.label_1953:
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	cqo	
	lea	rdi, [rdi]
	idiv	rcx
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx]
	lea	rsi, [rsi]
	jge	.label_1955
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 1
	lea	rsi, [rsi]
	jmp	.label_1954
.label_1955:
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	imul	rax, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_1954:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x418260

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], edx
	mov	dword ptr [rbp - 0x14], 0
.label_1956:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x10], ecx
	cmp	eax, 0
	je	.label_1957
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	esi, dword ptr [rbp - 0xc]
	call	bkm_scale
	or	eax, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	jmp	.label_1956
.label_1957:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4182d0

	.globl xstrtol
	.type xstrtol, @function
xstrtol:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0xf0
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	dword ptr [rbp - 0x1c], edx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	dword ptr [rbp - 0x4c], 0
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x1c]
	nop	
	jg	.label_1968
	cmp	dword ptr [rbp - 0x1c], 0x24
	jg	.label_1968
	lea	rsi, [rsi]
	jmp	.label_1973
.label_1968:
	nop	
	movabs	rdi, OFFSET FLAT:.str_7
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.1_6
	mov	edx, 0x54
	mov	rsp, rsp
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtol
	call	__assert_fail
.label_1973:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_2019
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1992
.label_2019:
	lea	rax, [rbp - 0x38]
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1992
.label_1992:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x1c]
	call	strtol
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	nop	
	cmp	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	jne	.label_2010
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1964
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_1964
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	lea	rsi, [rsi]
	cmp	rax, 0
	je	.label_1964
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], 1
	mov	rbp, rbp
	jmp	.label_1972
.label_1964:
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 4
	jmp	.label_1958
.label_1972:
	mov	rsp, rsp
	jmp	.label_1979
.label_2010:
	call	__errno_location
	mov	rbp, rbp
	cmp	dword ptr [rax], 0
	je	.label_1982
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	nop	
	je	.label_1989
	mov	dword ptr [rbp - 4], 4
	lea	rsi, [rsi]
	jmp	.label_1958
.label_1989:
	mov	dword ptr [rbp - 0x4c], 1
.label_1982:
	lea	rdi, [rdi]
	jmp	.label_1979
.label_1979:
	cmp	qword ptr [rbp - 0x30], 0
	mov	rbp, rbp
	jne	.label_1999
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x4c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], edx
	mov	rsp, rsp
	jmp	.label_1958
.label_1999:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	lea	rdi, [rdi]
	je	.label_1993
	mov	dword ptr [rbp - 0x50], 0x400
	mov	dword ptr [rbp - 0x54], 1
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	lea	rdi, [rdi]
	jne	.label_2020
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	nop	
	mov	edx, dword ptr [rbp - 0x4c]
	lea	rsi, [rsi]
	or	edx, 2
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], edx
	jmp	.label_1958
.label_2020:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	mov	edx, ecx
	lea	rsi, [rsi]
	sub	edx, 0x45
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x64], ecx
	mov	dword ptr [rbp - 0x68], edx
	je	.label_1967
	lea	rdi, [rdi]
	jmp	.label_1985
.label_1985:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x6c], eax
	je	.label_1967
	mov	rbp, rbp
	jmp	.label_1994
.label_1994:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x70], eax
	je	.label_1967
	nop	
	jmp	.label_1978
.label_1978:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x74], eax
	je	.label_1967
	lea	rsi, [rsi]
	jmp	.label_2005
.label_2005:
	mov	eax, dword ptr [rbp - 0x64]
	mov	rsp, rsp
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x78], eax
	je	.label_1967
	jmp	.label_2008
.label_2008:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x64]
	lea	rdi, [rdi]
	sub	eax, 0x54
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x7c], eax
	je	.label_1967
	jmp	.label_2015
.label_2015:
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, -0x59
	lea	rdi, [rdi]
	sub	eax, 2
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x80], eax
	nop	
	jb	.label_1967
	jmp	.label_2018
.label_2018:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x67
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x84], eax
	lea	rdi, [rdi]
	je	.label_1967
	nop	
	jmp	.label_1980
.label_1980:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x6b
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x88], eax
	lea	rdi, [rdi]
	je	.label_1967
	jmp	.label_1960
.label_1960:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x6d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x8c], eax
	lea	rsi, [rsi]
	je	.label_1967
	mov	rsp, rsp
	jmp	.label_1959
.label_1959:
	mov	eax, dword ptr [rbp - 0x64]
	mov	rbp, rbp
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x90], eax
	mov	rbp, rbp
	jne	.label_1988
	jmp	.label_1967
.label_1967:
	mov	esi, 0x30
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x30]
	call	strchr
	lea	rdi, [rdi]
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_1961
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax + 1]
	mov	rsp, rsp
	mov	edx, ecx
	sub	edx, 0x42
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x94], ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x98], edx
	lea	rdi, [rdi]
	je	.label_2004
	lea	rsi, [rsi]
	jmp	.label_2012
.label_2012:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x94]
	sub	eax, 0x44
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_2004
	jmp	.label_2017
.label_2017:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x94]
	lea	rdi, [rdi]
	sub	eax, 0x69
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xa0], eax
	jne	.label_1976
	jmp	.label_1983
.label_1983:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	cmp	ecx, 0x42
	jne	.label_1965
	nop	
	mov	eax, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	add	eax, 2
	mov	dword ptr [rbp - 0x54], eax
.label_1965:
	jmp	.label_1976
.label_2004:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x50], 0x3e8
	mov	eax, dword ptr [rbp - 0x54]
	nop	
	add	eax, 1
	mov	dword ptr [rbp - 0x54], eax
.label_1976:
	mov	rsp, rsp
	jmp	.label_1961
.label_1961:
	lea	rdi, [rdi]
	jmp	.label_1988
.label_1988:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	rbp, rbp
	sub	edx, 0x42
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xa4], ecx
	nop	
	mov	dword ptr [rbp - 0xa8], edx
	je	.label_1991
	jmp	.label_2001
.label_2001:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x45
	mov	dword ptr [rbp - 0xac], eax
	lea	rdi, [rdi]
	je	.label_1995
	jmp	.label_2006
.label_2006:
	mov	eax, dword ptr [rbp - 0xa4]
	lea	rdi, [rdi]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0xb0], eax
	je	.label_2009
	jmp	.label_2014
.label_2014:
	mov	eax, dword ptr [rbp - 0xa4]
	mov	rbp, rbp
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0xb4], eax
	nop	
	je	.label_2013
	jmp	.label_1996
.label_1996:
	mov	eax, dword ptr [rbp - 0xa4]
	mov	rsp, rsp
	sub	eax, 0x4d
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xb8], eax
	mov	rsp, rsp
	je	.label_1969
	jmp	.label_1963
.label_1963:
	mov	eax, dword ptr [rbp - 0xa4]
	lea	rsi, [rsi]
	sub	eax, 0x50
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xbc], eax
	mov	rsp, rsp
	je	.label_1966
	jmp	.label_2002
.label_2002:
	mov	eax, dword ptr [rbp - 0xa4]
	mov	rsp, rsp
	sub	eax, 0x54
	mov	dword ptr [rbp - 0xc0], eax
	mov	rbp, rbp
	je	.label_1974
	jmp	.label_1984
.label_1984:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x59
	mov	dword ptr [rbp - 0xc4], eax
	je	.label_1987
	mov	rbp, rbp
	jmp	.label_1975
.label_1975:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x5a
	mov	dword ptr [rbp - 0xc8], eax
	je	.label_1997
	mov	rsp, rsp
	jmp	.label_2000
.label_2000:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xa4]
	mov	rbp, rbp
	sub	eax, 0x62
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xcc], eax
	je	.label_2003
	nop	
	jmp	.label_2007
.label_2007:
	mov	eax, dword ptr [rbp - 0xa4]
	mov	rbp, rbp
	sub	eax, 0x63
	mov	dword ptr [rbp - 0xd0], eax
	je	.label_2011
	jmp	.label_1971
.label_1971:
	nop	
	mov	eax, dword ptr [rbp - 0xa4]
	nop	
	sub	eax, 0x67
	nop	
	mov	dword ptr [rbp - 0xd4], eax
	lea	rsi, [rsi]
	je	.label_2009
	lea	rdi, [rdi]
	jmp	.label_2016
.label_2016:
	mov	eax, dword ptr [rbp - 0xa4]
	lea	rsi, [rsi]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xd8], eax
	je	.label_2013
	lea	rsi, [rsi]
	jmp	.label_1981
.label_1981:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xdc], eax
	lea	rsi, [rsi]
	je	.label_1969
	lea	rsi, [rsi]
	jmp	.label_1970
.label_1970:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa4]
	mov	rsp, rsp
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xe0], eax
	je	.label_1974
	lea	rdi, [rdi]
	jmp	.label_1986
.label_1986:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x77
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xe4], eax
	mov	rsp, rsp
	je	.label_1990
	lea	rdi, [rdi]
	jmp	.label_1998
.label_2003:
	mov	rbp, rbp
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x200
	lea	rdi, [rdi]
	call	bkm_scale_0
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1962
.label_1991:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x400
	lea	rsi, [rsi]
	call	bkm_scale_0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x58], eax
	mov	rbp, rbp
	jmp	.label_1962
.label_2011:
	mov	dword ptr [rbp - 0x58], 0
	jmp	.label_1962
.label_1995:
	lea	rdi, [rbp - 0x48]
	mov	rsp, rsp
	mov	edx, 6
	mov	esi, dword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1962
.label_2009:
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power_0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1962
.label_2013:
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power_0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x58], eax
	mov	rbp, rbp
	jmp	.label_1962
.label_1969:
	lea	rdi, [rbp - 0x48]
	mov	edx, 2
	mov	esi, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x58], eax
	mov	rsp, rsp
	jmp	.label_1962
.label_1966:
	nop	
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	call	bkm_scale_by_power_0
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x58], eax
	lea	rdi, [rdi]
	jmp	.label_1962
.label_1974:
	lea	rdi, [rbp - 0x48]
	mov	rbp, rbp
	mov	edx, 4
	mov	esi, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	call	bkm_scale_by_power_0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x58], eax
	nop	
	jmp	.label_1962
.label_1990:
	lea	rdi, [rbp - 0x48]
	mov	rsp, rsp
	mov	esi, 2
	lea	rsi, [rsi]
	call	bkm_scale_0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x58], eax
	nop	
	jmp	.label_1962
.label_1987:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x48]
	mov	edx, 8
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x50]
	mov	rbp, rbp
	call	bkm_scale_by_power_0
	nop	
	mov	dword ptr [rbp - 0x58], eax
	lea	rsi, [rsi]
	jmp	.label_1962
.label_1997:
	mov	rbp, rbp
	lea	rdi, [rbp - 0x48]
	mov	edx, 7
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power_0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x58], eax
	lea	rdi, [rdi]
	jmp	.label_1962
.label_1998:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	mov	rsp, rsp
	jmp	.label_1958
.label_1962:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x58]
	or	eax, dword ptr [rbp - 0x4c]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x4c], eax
	mov	eax, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rcx]
	movsxd	rsi, eax
	add	rdx, rsi
	mov	qword ptr [rcx], rdx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	mov	rcx, qword ptr [rcx]
	lea	rsi, [rsi]
	cmp	byte ptr [rcx], 0
	nop	
	je	.label_1977
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x4c]
	lea	rsi, [rsi]
	or	eax, 2
	mov	dword ptr [rbp - 0x4c], eax
.label_1977:
	jmp	.label_1993
.label_1993:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
.label_1958:
	nop	
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0xf0
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418ba0

	.globl bkm_scale_0
	.type bkm_scale_0, @function
bkm_scale_0:
	lea	rsi, [rsi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi]
	movsxd	rcx, dword ptr [rbp - 0x14]
	cqo	
	idiv	rcx
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	jge	.label_2021
	movabs	rax, 0x8000000000000000
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 1
	jmp	.label_2022
.label_2021:
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	cqo	
	lea	rsi, [rsi]
	idiv	rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx]
	jge	.label_2023
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	nop	
	mov	dword ptr [rbp - 4], 1
	jmp	.label_2022
.label_2023:
	movsxd	rax, dword ptr [rbp - 0x14]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_2022:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x418c80

	.globl bkm_scale_by_power_0
	.type bkm_scale_by_power_0, @function
bkm_scale_by_power_0:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x10], edx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], 0
.label_2025:
	mov	eax, dword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x10], ecx
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_2024
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	esi, dword ptr [rbp - 0xc]
	call	bkm_scale_0
	lea	rsi, [rsi]
	or	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x14], eax
	mov	rsp, rsp
	jmp	.label_2025
.label_2024:
	mov	eax, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418cf0

	.globl xstrtol_fatal
	.type xstrtol_fatal, @function
xstrtol_fatal:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rdi, [rdi]
	mov	al, dl
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], edi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], esi
	mov	byte ptr [rbp - 9], al
	nop	
	mov	qword ptr [rbp - 0x18], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], r8
	nop	
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	al, byte ptr [rbp - 9]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x20]
	mov	r9d,  dword ptr [dword ptr [exit_failure]]
	nop	
	movsx	edx, al
	nop	
	call	xstrtol_error
	lea	rsi, [rsi]
	call	abort
	.section	.text
	.align	32
	#Procedure 0x418d50

	.globl xstrtol_error
	.type xstrtol_error, @function
xstrtol_error:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	al, dl
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], edi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], esi
	mov	byte ptr [rbp - 9], al
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rcx
	mov	qword ptr [rbp - 0x20], r8
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], r9d
	mov	qword ptr [word ptr [rbp - 48]], OFFSET FLAT:.str_8
	mov	edx, dword ptr [rbp - 4]
	nop	
	mov	esi, edx
	lea	rsi, [rsi]
	sub	esi, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x48], edx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x4c], esi
	lea	rsi, [rsi]
	je	.label_2031
	nop	
	jmp	.label_2027
.label_2027:
	mov	eax, dword ptr [rbp - 0x48]
	add	eax, -2
	nop	
	sub	eax, 2
	mov	dword ptr [rbp - 0x50], eax
	jb	.label_2029
	lea	rdi, [rdi]
	jmp	.label_2034
.label_2034:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x48]
	sub	eax, 4
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x54], eax
	lea	rsi, [rsi]
	je	.label_2028
	lea	rsi, [rsi]
	jmp	.label_2032
.label_2032:
	call	abort
.label_2028:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:.str.1_7
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	jmp	.label_2026
.label_2029:
	movabs	rax, OFFSET FLAT:.str.2_3
	nop	
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_2026
.label_2031:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:.str.3_2
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
.label_2026:
	cmp	dword ptr [rbp - 8], 0
	mov	rsp, rsp
	jge	.label_2030
	lea	rax, [rbp - 0x42]
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	nop	
	mov	ecx, dword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x30]
	movsxd	rdi, ecx
	lea	rdi, [rdi]
	sub	rdx, rdi
	mov	rsp, rsp
	add	rsi, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rsi
	mov	r8b, byte ptr [rbp - 9]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x42], r8b
	mov	byte ptr [rbp - 0x41], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_2033
.label_2030:
	movsxd	rax, dword ptr [rbp - 8]
	mov	rbp, rbp
	shl	rax, 5
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
.label_2033:
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x24]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x58], edi
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rbp, rbp
	call	gettext
	lea	rdi, [rdi]
	xor	esi, esi
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x40]
	nop	
	mov	r9, qword ptr [rbp - 0x20]
	mov	edi, dword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	rsp, rsp
	mov	al, 0
	mov	rsp, rsp
	call	error
	nop	
	add	rsp, 0x60
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418f00

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x100
	xor	eax, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], edx
	mov	qword ptr [rbp - 0x28], rcx
	nop	
	mov	qword ptr [rbp - 0x30], r8
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4c], 0
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x1c]
	jg	.label_2035
	cmp	dword ptr [rbp - 0x1c], 0x24
	lea	rdi, [rdi]
	jg	.label_2035
	jmp	.label_2058
.label_2035:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str_7
	movabs	rsi, OFFSET FLAT:.str.1_5
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
.label_2058:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_2072
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	mov	rbp, rbp
	jmp	.label_2075
.label_2072:
	lea	rax, [rbp - 0x38]
	mov	qword ptr [rbp - 0x70], rax
	nop	
	jmp	.label_2075
.label_2075:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x58], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x59], cl
.label_2043:
	nop	
	movzx	eax, byte ptr [rbp - 0x59]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], rcx
	nop	
	call	__ctype_b_loc
	nop	
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	movzx	edx, word ptr [rax + rcx*2]
	mov	rsp, rsp
	and	edx, 0x2000
	mov	rsp, rsp
	cmp	edx, 0
	je	.label_2078
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx, rax
	add	rcx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x59], dl
	lea	rsi, [rsi]
	jmp	.label_2043
.label_2078:
	movzx	eax, byte ptr [rbp - 0x59]
	lea	rdi, [rdi]
	cmp	eax, 0x2d
	jne	.label_2052
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 4
	lea	rsi, [rsi]
	jmp	.label_2049
.label_2052:
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	rsp, rsp
	call	strtoumax
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	jne	.label_2065
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x30], 0
	mov	rsp, rsp
	je	.label_2074
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	mov	rsp, rsp
	je	.label_2074
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	nop	
	je	.label_2074
	mov	qword ptr [rbp - 0x48], 1
	jmp	.label_2093
.label_2074:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 4
	jmp	.label_2049
.label_2093:
	lea	rdi, [rdi]
	jmp	.label_2039
.label_2065:
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 0
	je	.label_2037
	mov	rsp, rsp
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	lea	rdi, [rdi]
	je	.label_2046
	nop	
	mov	dword ptr [rbp - 4], 4
	jmp	.label_2049
.label_2046:
	mov	dword ptr [rbp - 0x4c], 1
.label_2037:
	jmp	.label_2039
.label_2039:
	nop	
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_2064
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
	lea	rdi, [rdi]
	jmp	.label_2049
.label_2064:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0
	je	.label_2063
	mov	dword ptr [rbp - 0x60], 0x400
	mov	dword ptr [rbp - 0x64], 1
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	nop	
	movsx	esi, byte ptr [rax]
	nop	
	call	strchr
	cmp	rax, 0
	jne	.label_2082
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	lea	rsi, [rsi]
	or	edx, 2
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], edx
	mov	rbp, rbp
	jmp	.label_2049
.label_2082:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x7c], ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x80], edx
	nop	
	je	.label_2041
	jmp	.label_2100
.label_2100:
	nop	
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x84], eax
	lea	rdi, [rdi]
	je	.label_2041
	nop	
	jmp	.label_2047
.label_2047:
	mov	eax, dword ptr [rbp - 0x7c]
	nop	
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x88], eax
	mov	rsp, rsp
	je	.label_2041
	nop	
	jmp	.label_2053
.label_2053:
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rsi, [rsi]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x8c], eax
	mov	rbp, rbp
	je	.label_2041
	lea	rsi, [rsi]
	jmp	.label_2097
.label_2097:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x50
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x90], eax
	lea	rsi, [rsi]
	je	.label_2041
	jmp	.label_2069
.label_2069:
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x94], eax
	je	.label_2041
	jmp	.label_2076
.label_2076:
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	add	eax, -0x59
	mov	rbp, rbp
	sub	eax, 2
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x98], eax
	lea	rdi, [rdi]
	jb	.label_2041
	mov	rsp, rsp
	jmp	.label_2084
.label_2084:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_2041
	jmp	.label_2092
.label_2092:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xa0], eax
	lea	rdi, [rdi]
	je	.label_2041
	mov	rsp, rsp
	jmp	.label_2099
.label_2099:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xa4], eax
	nop	
	je	.label_2041
	jmp	.label_2044
.label_2044:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x74
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xa8], eax
	jne	.label_2040
	jmp	.label_2041
.label_2041:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x30]
	call	strchr
	cmp	rax, 0
	lea	rsi, [rsi]
	je	.label_2045
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	rsp, rsp
	mov	edx, ecx
	sub	edx, 0x42
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xac], ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xb0], edx
	mov	rsp, rsp
	je	.label_2091
	lea	rsi, [rsi]
	jmp	.label_2071
.label_2071:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_2091
	jmp	.label_2081
.label_2081:
	mov	eax, dword ptr [rbp - 0xac]
	mov	rbp, rbp
	sub	eax, 0x69
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xb8], eax
	lea	rdi, [rdi]
	jne	.label_2080
	lea	rsi, [rsi]
	jmp	.label_2087
.label_2087:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax + 2]
	lea	rsi, [rsi]
	cmp	ecx, 0x42
	jne	.label_2089
	mov	eax, dword ptr [rbp - 0x64]
	nop	
	add	eax, 2
	mov	dword ptr [rbp - 0x64], eax
.label_2089:
	jmp	.label_2080
.label_2091:
	mov	dword ptr [rbp - 0x60], 0x3e8
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 1
	mov	dword ptr [rbp - 0x64], eax
.label_2080:
	jmp	.label_2045
.label_2045:
	nop	
	jmp	.label_2040
.label_2040:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	nop	
	movsx	ecx, byte ptr [rax]
	nop	
	mov	edx, ecx
	sub	edx, 0x42
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xbc], ecx
	mov	dword ptr [rbp - 0xc0], edx
	mov	rbp, rbp
	je	.label_2042
	jmp	.label_2057
.label_2057:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x45
	nop	
	mov	dword ptr [rbp - 0xc4], eax
	je	.label_2055
	jmp	.label_2061
.label_2061:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x47
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc8], eax
	je	.label_2048
	jmp	.label_2067
.label_2067:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xbc]
	lea	rsi, [rsi]
	sub	eax, 0x4b
	nop	
	mov	dword ptr [rbp - 0xcc], eax
	mov	rsp, rsp
	je	.label_2070
	nop	
	jmp	.label_2079
.label_2079:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xbc]
	lea	rdi, [rdi]
	sub	eax, 0x4d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xd0], eax
	je	.label_2060
	nop	
	jmp	.label_2086
.label_2086:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x50
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xd4], eax
	je	.label_2050
	mov	rsp, rsp
	jmp	.label_2094
.label_2094:
	nop	
	mov	eax, dword ptr [rbp - 0xbc]
	nop	
	sub	eax, 0x54
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xd8], eax
	nop	
	je	.label_2059
	jmp	.label_2095
.label_2095:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x59
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xdc], eax
	je	.label_2036
	mov	rbp, rbp
	jmp	.label_2073
.label_2073:
	mov	eax, dword ptr [rbp - 0xbc]
	nop	
	sub	eax, 0x5a
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xe0], eax
	je	.label_2088
	jmp	.label_2054
.label_2054:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x62
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xe4], eax
	je	.label_2056
	jmp	.label_2066
.label_2066:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0xe8], eax
	je	.label_2062
	jmp	.label_2068
.label_2068:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x67
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xec], eax
	je	.label_2048
	jmp	.label_2077
.label_2077:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x6b
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xf0], eax
	je	.label_2070
	jmp	.label_2083
.label_2083:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xf4], eax
	je	.label_2060
	jmp	.label_2090
.label_2090:
	mov	eax, dword ptr [rbp - 0xbc]
	lea	rsi, [rsi]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xf8], eax
	je	.label_2059
	jmp	.label_2096
.label_2096:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x77
	mov	dword ptr [rbp - 0xfc], eax
	je	.label_2085
	jmp	.label_2038
.label_2056:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x200
	call	bkm_scale_1
	nop	
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2051
.label_2042:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x400
	lea	rdi, [rdi]
	call	bkm_scale_1
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2051
.label_2062:
	mov	dword ptr [rbp - 0x68], 0
	jmp	.label_2051
.label_2055:
	nop	
	lea	rdi, [rbp - 0x48]
	mov	edx, 6
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	call	bkm_scale_by_power_1
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2051
.label_2048:
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	nop	
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_1
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2051
.label_2070:
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	nop	
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_1
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2051
.label_2060:
	mov	rbp, rbp
	lea	rdi, [rbp - 0x48]
	mov	edx, 2
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x60]
	mov	rbp, rbp
	call	bkm_scale_by_power_1
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2051
.label_2050:
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	call	bkm_scale_by_power_1
	mov	dword ptr [rbp - 0x68], eax
	mov	rsp, rsp
	jmp	.label_2051
.label_2059:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x48]
	lea	rdi, [rdi]
	mov	edx, 4
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_1
	mov	dword ptr [rbp - 0x68], eax
	lea	rdi, [rdi]
	jmp	.label_2051
.label_2085:
	lea	rdi, [rbp - 0x48]
	mov	esi, 2
	call	bkm_scale_1
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2051
.label_2036:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x48]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x60]
	mov	rsp, rsp
	call	bkm_scale_by_power_1
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2051
.label_2088:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x48]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_1
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2051
.label_2038:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rcx], rax
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x4c]
	mov	rbp, rbp
	or	edx, 2
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], edx
	jmp	.label_2049
.label_2051:
	mov	eax, dword ptr [rbp - 0x68]
	or	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x4c], eax
	mov	eax, dword ptr [rbp - 0x64]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rcx]
	movsxd	rsi, eax
	add	rdx, rsi
	mov	qword ptr [rcx], rdx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	cmp	byte ptr [rcx], 0
	je	.label_2098
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x4c]
	or	eax, 2
	nop	
	mov	dword ptr [rbp - 0x4c], eax
.label_2098:
	jmp	.label_2063
.label_2063:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	nop	
	mov	dword ptr [rbp - 4], edx
.label_2049:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x100
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4197f0

	.globl bkm_scale_1
	.type bkm_scale_1, @function
bkm_scale_1:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	mov	rax, -1
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], esi
	mov	rbp, rbp
	movsxd	rdi, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, esi
	mov	rsp, rsp
	div	rdi
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rdi]
	jae	.label_2101
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], -1
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 1
	jmp	.label_2102
.label_2101:
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rcx]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_2102:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419870

	.globl bkm_scale_by_power_1
	.type bkm_scale_by_power_1, @function
bkm_scale_by_power_1:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	dword ptr [rbp - 0x10], edx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], 0
.label_2103:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	add	ecx, -1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], ecx
	lea	rdi, [rdi]
	cmp	eax, 0
	nop	
	je	.label_2104
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	call	bkm_scale_1
	mov	rsp, rsp
	or	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], eax
	nop	
	jmp	.label_2103
.label_2104:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4198f0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], 0
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	fileno
	mov	dword ptr [rbp - 0x18], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x18], 0
	jge	.label_2109
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jmp	.label_2107
.label_2109:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	__freading
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_2106
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	mov	rbp, rbp
	call	lseek
	lea	rsi, [rsi]
	cmp	rax, -1
	lea	rsi, [rsi]
	je	.label_2105
.label_2106:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_2105
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], ecx
.label_2105:
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_2108
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	dword ptr [rax], ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_2108:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_2107:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419a10

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x240
	lea	rdi, [rdi]
	test	al, al
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x100], xmm7
	movaps	xmmword ptr [rbp - 0x110], xmm6
	movaps	xmmword ptr [rbp - 0x120], xmm5
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x130], xmm4
	movaps	xmmword ptr [rbp - 0x140], xmm3
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x150], xmm2
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x160], xmm1
	movaps	xmmword ptr [rbp - 0x170], xmm0
	mov	dword ptr [rbp - 0x174], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x180], r9
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x188], r8
	mov	qword ptr [rbp - 0x190], rcx
	mov	qword ptr [rbp - 0x198], rdx
	nop	
	mov	dword ptr [rbp - 0x19c], esi
	nop	
	je	.label_2116
	mov	rbp, rbp
	movaps	xmm0, xmmword ptr [rbp - 0x170]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0xc0], xmm0
	nop	
	movaps	xmm1, xmmword ptr [rbp - 0x160]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0xb0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x150]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0xa0], xmm2
	lea	rsi, [rsi]
	movaps	xmm3, xmmword ptr [rbp - 0x140]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x90], xmm3
	lea	rsi, [rsi]
	movaps	xmm4, xmmword ptr [rbp - 0x130]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x80], xmm4
	mov	rbp, rbp
	movaps	xmm5, xmmword ptr [rbp - 0x120]
	movaps	xmmword ptr [rbp - 0x70], xmm5
	mov	rsp, rsp
	movaps	xmm6, xmmword ptr [rbp - 0x110]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x60], xmm6
	mov	rsp, rsp
	movaps	xmm7, xmmword ptr [rbp - 0x100]
	movaps	xmmword ptr [rbp - 0x50], xmm7
.label_2116:
	mov	rax, qword ptr [rbp - 0x180]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc8], rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x188]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd0], rcx
	mov	rdx, qword ptr [rbp - 0x190]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd8], rdx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x198]
	mov	qword ptr [rbp - 0xe0], rsi
	mov	edi, dword ptr [rbp - 0x19c]
	mov	r8d, dword ptr [rbp - 0x174]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], r8d
	mov	dword ptr [rbp - 8], edi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], 0xffffffff
	lea	rsi, [rsi]
	lea	r9, [rbp - 0xf0]
	mov	qword ptr [rbp - 0x10], r9
	lea	r9, [rbp + 0x10]
	mov	qword ptr [rbp - 0x18], r9
	mov	dword ptr [rbp - 0x1c], 0x30
	mov	dword ptr [rbp - 0x20], 0x10
	mov	edi, dword ptr [rbp - 8]
	test	edi, edi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1a0], edi
	mov	rsp, rsp
	je	.label_2121
	nop	
	jmp	.label_2130
.label_2130:
	nop	
	mov	eax, dword ptr [rbp - 0x1a0]
	sub	eax, 0x406
	mov	dword ptr [rbp - 0x1a4], eax
	je	.label_2131
	jmp	.label_2136
.label_2121:
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1b0], rax
	nop	
	mov	dword ptr [rbp - 0x1b4], ecx
	ja	.label_2138
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1b4]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1b0]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	lea	rsi, [rsi]
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1c0], rcx
	lea	rsi, [rsi]
	jmp	.label_2114
.label_2138:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1b0]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	mov	rbp, rbp
	add	rcx, 8
	mov	rsp, rsp
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1c0], rdx
.label_2114:
	mov	rax, qword ptr [rbp - 0x1c0]
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x28], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x28]
	call	rpl_fcntl_DUPFD
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_2123
.label_2131:
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x20]
	nop	
	mov	ecx, dword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	ecx, 0x28
	nop	
	mov	qword ptr [rbp - 0x1c8], rax
	mov	dword ptr [rbp - 0x1cc], ecx
	mov	rsp, rsp
	ja	.label_2110
	mov	eax, dword ptr [rbp - 0x1cc]
	lea	rsi, [rsi]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1c8]
	mov	rsp, rsp
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1d8], rcx
	mov	rsp, rsp
	jmp	.label_2122
.label_2110:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	lea	rdi, [rdi]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1d8], rdx
.label_2122:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1d8]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x2c]
	call	rpl_fcntl_DUPFD_CLOEXEC
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_2123
.label_2136:
	mov	eax, dword ptr [rbp - 8]
	test	eax, eax
	nop	
	mov	dword ptr [rbp - 0x1dc], eax
	lea	rdi, [rdi]
	je	.label_2115
	nop	
	jmp	.label_2124
.label_2124:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1e0], eax
	mov	rsp, rsp
	je	.label_2117
	jmp	.label_2134
.label_2134:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 2
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1e4], eax
	mov	rsp, rsp
	je	.label_2115
	nop	
	jmp	.label_2140
.label_2140:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 3
	nop	
	mov	dword ptr [rbp - 0x1e8], eax
	lea	rdi, [rdi]
	je	.label_2117
	nop	
	jmp	.label_2119
.label_2119:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 4
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1ec], eax
	nop	
	je	.label_2115
	lea	rsi, [rsi]
	jmp	.label_2127
.label_2127:
	mov	eax, dword ptr [rbp - 0x1dc]
	mov	rbp, rbp
	sub	eax, 8
	mov	dword ptr [rbp - 0x1f0], eax
	mov	rsp, rsp
	je	.label_2115
	lea	rsi, [rsi]
	jmp	.label_2135
.label_2135:
	mov	eax, dword ptr [rbp - 0x1dc]
	lea	rsi, [rsi]
	sub	eax, 9
	mov	dword ptr [rbp - 0x1f4], eax
	je	.label_2117
	mov	rsp, rsp
	jmp	.label_2111
.label_2111:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x1f8], eax
	je	.label_2115
	jmp	.label_2120
.label_2120:
	mov	eax, dword ptr [rbp - 0x1dc]
	lea	rdi, [rdi]
	sub	eax, 0xb
	nop	
	mov	dword ptr [rbp - 0x1fc], eax
	nop	
	je	.label_2117
	lea	rsi, [rsi]
	jmp	.label_2126
.label_2126:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x400
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x200], eax
	lea	rdi, [rdi]
	je	.label_2115
	jmp	.label_2137
.label_2137:
	nop	
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x401
	mov	dword ptr [rbp - 0x204], eax
	je	.label_2117
	mov	rsp, rsp
	jmp	.label_2112
.label_2112:
	mov	eax, dword ptr [rbp - 0x1dc]
	nop	
	sub	eax, 0x402
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x208], eax
	mov	rsp, rsp
	je	.label_2115
	lea	rsi, [rsi]
	jmp	.label_2113
.label_2113:
	mov	eax, dword ptr [rbp - 0x1dc]
	mov	rsp, rsp
	add	eax, 0xfffffbfa
	sub	eax, 2
	mov	dword ptr [rbp - 0x20c], eax
	jb	.label_2115
	nop	
	jmp	.label_2132
.label_2132:
	nop	
	mov	eax, dword ptr [rbp - 0x1dc]
	lea	rdi, [rdi]
	sub	eax, 0x408
	mov	dword ptr [rbp - 0x210], eax
	lea	rdi, [rdi]
	jne	.label_2133
	lea	rdi, [rdi]
	jmp	.label_2117
.label_2117:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	rsp, rsp
	mov	al, 0
	lea	rdi, [rdi]
	call	fcntl
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], eax
	lea	rsi, [rsi]
	jmp	.label_2125
.label_2115:
	nop	
	lea	rax, [rbp - 0x20]
	nop	
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x218], rax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x21c], ecx
	lea	rsi, [rsi]
	ja	.label_2118
	mov	eax, dword ptr [rbp - 0x21c]
	mov	rbp, rbp
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x218]
	add	rcx, qword ptr [rdx + 0x10]
	nop	
	add	eax, 8
	mov	rbp, rbp
	mov	dword ptr [rdx], eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x228], rcx
	mov	rbp, rbp
	jmp	.label_2128
.label_2118:
	mov	rax, qword ptr [rbp - 0x218]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	nop	
	mov	qword ptr [rbp - 0x228], rdx
.label_2128:
	nop	
	mov	rax, qword ptr [rbp - 0x228]
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x30], ecx
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 4]
	nop	
	mov	esi, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x30]
	nop	
	mov	al, 0
	call	fcntl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_2125
.label_2133:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	ecx, 0x28
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x230], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x234], ecx
	lea	rdi, [rdi]
	ja	.label_2129
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x234]
	lea	rdi, [rdi]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x230]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x240], rcx
	mov	rsp, rsp
	jmp	.label_2139
.label_2129:
	mov	rax, qword ptr [rbp - 0x230]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	nop	
	mov	qword ptr [rbp - 0x240], rdx
.label_2139:
	mov	rax, qword ptr [rbp - 0x240]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	nop	
	mov	edi, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x38]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
.label_2125:
	jmp	.label_2123
.label_2123:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	add	rsp, 0x240
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a090

	.globl rpl_fcntl_DUPFD
	.type rpl_fcntl_DUPFD, @function
rpl_fcntl_DUPFD:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	nop	
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 4]
	mov	edx, dword ptr [rbp - 8]
	mov	rsp, rsp
	mov	esi, eax
	nop	
	mov	al, 0
	mov	rsp, rsp
	call	fcntl
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a0e0

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], esi
	lea	rsi, [rsi]
	cmp	eax,  dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]]
	jg	.label_2146
	lea	rsi, [rsi]
	mov	esi, 0x406
	nop	
	mov	edi, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 8]
	mov	al, 0
	call	fcntl
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	mov	dword ptr [rbp - 0xc], eax
	nop	
	cmp	edx, dword ptr [rbp - 0xc]
	jle	.label_2148
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_2147
.label_2148:
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_2141
.label_2147:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xc], 0
	mov	rbp, rbp
	jl	.label_2145
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
.label_2145:
	mov	rbp, rbp
	jmp	.label_2141
.label_2141:
	jmp	.label_2142
.label_2146:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	rpl_fcntl_DUPFD
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
.label_2142:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0xc]
	jg	.label_2144
	cmp	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	mov	rsp, rsp
	jne	.label_2144
	mov	esi, 1
	mov	edi, dword ptr [rbp - 0xc]
	mov	al, 0
	call	fcntl
	nop	
	mov	dword ptr [rbp - 0x10], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x10], 0
	jl	.label_2143
	mov	esi, 2
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x10]
	mov	rbp, rbp
	or	eax, 1
	lea	rdi, [rdi]
	mov	edx, eax
	mov	al, 0
	call	fcntl
	cmp	eax, -1
	jne	.label_2149
.label_2143:
	lea	rdi, [rdi]
	call	__errno_location
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], ecx
	mov	edi, dword ptr [rbp - 0xc]
	call	close
	mov	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x18], eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], ecx
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x1c]
	nop	
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0xc], 0xffffffff
.label_2149:
	jmp	.label_2144
.label_2144:
	mov	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a260

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	je	.label_2150
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_2151
.label_2150:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	nop	
	jmp	.label_2152
.label_2151:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_2152:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a2d0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rdi]
	and	eax, 0x100
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_2153
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, eax
	nop	
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	rpl_fseeko
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
.label_2153:
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a330

	.globl rpl_fseeko
	.type rpl_fseeko, @function
rpl_fseeko:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x10]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rsi, qword ptr [rdi + 8]
	jne	.label_2154
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	jne	.label_2154
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_2154
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	mov	edi, eax
	lea	rdi, [rdi]
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_2156
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_2155
.label_2156:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rdx + 0x90], rax
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_2155
.label_2154:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	call	fseeko
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
.label_2155:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a440

	.globl rpl_mbrtowc
	.type rpl_mbrtowc, @function
rpl_mbrtowc:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x40
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	jne	.label_2157
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_2157:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	call	mbrtowc
	mov	rcx, -2
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_2158
	nop	
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	je	.label_2158
	xor	edi, edi
	lea	rdi, [rdi]
	call	hard_locale
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2158
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	mov	rbp, rbp
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rax], edx
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], 1
	jmp	.label_2159
.label_2158:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_2159:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x40
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a530

	.globl tzalloc
	.type tzalloc, @function
tzalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	je	.label_2162
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2161
.label_2162:
	nop	
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rcx
	nop	
	jmp	.label_2161
.label_2161:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x10], rax
	nop	
	cmp	qword ptr [rbp - 0x10], 0x77
	lea	rdi, [rdi]
	jae	.label_2165
	mov	rbp, rbp
	mov	eax, 0x77
	mov	ecx, eax
	mov	qword ptr [rbp - 0x30], rcx
	mov	rsp, rsp
	jmp	.label_2164
.label_2165:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x30], rax
.label_2164:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	and	rax, 0xfffffffffffffff8
	mov	rdi, rax
	lea	rsi, [rsi]
	call	malloc
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	mov	rbp, rbp
	je	.label_2160
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rax], 0
	cmp	qword ptr [rbp - 8], 0
	setne	cl
	xor	cl, 0xff
	xor	cl, 0xff
	lea	rsi, [rsi]
	and	cl, 1
	movzx	edx, cl
	mov	cl, dl
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	byte ptr [rax + 8], cl
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	byte ptr [rax + 9], 0
	cmp	qword ptr [rbp - 8], 0
	je	.label_2163
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rax, 9
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rbp, rbp
	call	extend_abbrs
.label_2163:
	jmp	.label_2160
.label_2160:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x30
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a670

	.globl extend_abbrs
	.type extend_abbrs, @function
extend_abbrs:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	memcpy
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rdx], 0
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a6c0

	.globl tzfree
	.type tzfree, @function
tzfree:
	lea	rdi, [rdi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	rdi,  qword ptr [word ptr [local_tz]]
	lea	rsi, [rsi]
	je	.label_2166
	mov	rbp, rbp
	jmp	.label_2167
.label_2167:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 8], 0
	nop	
	je	.label_2168
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2167
.label_2168:
	jmp	.label_2166
.label_2166:
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a740

	.globl localtime_rz
	.type localtime_rz, @function
localtime_rz:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x10], 0
	nop	
	jne	.label_2169
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	gmtime_r
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2171
.label_2169:
	mov	rdi, qword ptr [rbp - 0x10]
	call	set_tz
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	nop	
	je	.label_2173
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	call	localtime_r
	nop	
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	dl, cl
	cmp	rax, 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x2a], dl
	je	.label_2174
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	save_abbr
	mov	byte ptr [rbp - 0x2a], al
.label_2174:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x2a]
	nop	
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x29], al
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x28]
	call	revert_tz
	lea	rdi, [rdi]
	test	al, 1
	mov	rbp, rbp
	jne	.label_2170
	lea	rdi, [rdi]
	jmp	.label_2172
.label_2170:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x29], 1
	lea	rsi, [rsi]
	je	.label_2172
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2171
.label_2172:
	jmp	.label_2173
.label_2173:
	nop	
	mov	qword ptr [rbp - 8], 0
.label_2171:
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x30
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a860

	.globl set_tz
	.type set_tz, @function
set_tz:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	call	getenv_TZ
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_2179
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 8]
	cmp	ecx, 0
	je	.label_2176
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 9
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	strcmp
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_2180
	jmp	.label_2176
.label_2179:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 8], 0
	jne	.label_2176
.label_2180:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [local_tz]]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2175
.label_2176:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	tzalloc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_2177
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_2175
.label_2177:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	call	change_env
	test	al, 1
	jne	.label_2178
	lea	rsi, [rsi]
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x24], ecx
	mov	rdi, qword ptr [rbp - 0x20]
	call	tzfree
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x24]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x28], ecx
	lea	rsi, [rsi]
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
	nop	
	jmp	.label_2175
.label_2178:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
.label_2175:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	nop	
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a9a0

	.globl save_abbr
	.type save_abbr, @function
save_abbr:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str_0
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2190
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	ja	.label_2185
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x38
	nop	
	cmp	rax, rcx
	jae	.label_2185
.label_2190:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2184
.label_2185:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	byte ptr [rax], 0
	je	.label_2183
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, 9
	mov	qword ptr [rbp - 0x28], rax
.label_2181:
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_2189
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0
	jne	.label_2187
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rcx, 9
	cmp	rax, rcx
	nop	
	jne	.label_2192
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 8]
	cmp	ecx, 0
	lea	rdi, [rdi]
	jne	.label_2187
.label_2192:
	lea	rdi, [rdi]
	mov	rax, -1
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	call	strlen
	nop	
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rdi, 9
	sub	rax, rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_2182
	mov	rbp, rbp
	call	__errno_location
	mov	dword ptr [rax], 0xc
	nop	
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2184
.label_2182:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x30]
	cmp	rax, 0x77
	jae	.label_2188
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	call	extend_abbrs
	mov	rsp, rsp
	jmp	.label_2193
.label_2188:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	call	tzalloc
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rdi], rax
	mov	qword ptr [rbp - 0x10], rax
	nop	
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_2191
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2184
.label_2191:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	byte ptr [rax + 8], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 9
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
.label_2193:
	jmp	.label_2189
.label_2187:
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	cmp	byte ptr [rax], 0
	lea	rsi, [rsi]
	jne	.label_2186
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_2186
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 9
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
.label_2186:
	lea	rdi, [rdi]
	jmp	.label_2181
.label_2189:
	mov	rbp, rbp
	jmp	.label_2183
.label_2183:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x30], rax
	nop	
	mov	byte ptr [rbp - 1], 1
.label_2184:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	lea	rdi, [rdi]
	add	rsp, 0x40
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41ac40

	.globl revert_tz
	.type revert_tz, @function
revert_tz:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	rdi,  qword ptr [word ptr [local_tz]]
	jne	.label_2194
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2195
.label_2194:
	nop	
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], ecx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	call	change_env
	and	al, 1
	mov	byte ptr [rbp - 0x15], al
	test	byte ptr [rbp - 0x15], 1
	jne	.label_2196
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_2196:
	mov	rdi, qword ptr [rbp - 0x10]
	call	tzfree
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x1c], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x1c]
	mov	dword ptr [rax], ecx
	mov	dl, byte ptr [rbp - 0x15]
	mov	rsp, rsp
	and	dl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], dl
.label_2195:
	nop	
	mov	al, byte ptr [rbp - 1]
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41acf0

	.globl mktime_z
	.type mktime_z, @function
mktime_z:
	nop	
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x70
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	jne	.label_2202
	mov	rdi, qword ptr [rbp - 0x18]
	call	timegm
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2197
.label_2202:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	call	set_tz
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	mov	rsp, rsp
	je	.label_2198
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	call	mktime
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	qword ptr [rbp - 0x30], -1
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	jne	.label_2203
	mov	rsp, rsp
	lea	rdi, [rbp - 0x28]
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x68]
	lea	rsi, [rsi]
	call	localtime_r
	mov	rsp, rsp
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_2199
	lea	rsi, [rbp - 0x68]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	call	equal_tm
	nop	
	cmp	eax, 0
	je	.label_2199
.label_2203:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	save_abbr
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_2199
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
.label_2199:
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	revert_tz
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_2201
	mov	rsp, rsp
	jmp	.label_2200
.label_2201:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2197
.label_2200:
	jmp	.label_2198
.label_2198:
	mov	qword ptr [rbp - 8], -1
.label_2197:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x70
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x41ae30

	.globl equal_tm
	.type equal_tm, @function
equal_tm:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	nop	
	mov	eax, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	xor	eax, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 8]
	nop	
	mov	ecx, dword ptr [rsi + 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	xor	ecx, dword ptr [rsi + 4]
	lea	rdi, [rdi]
	or	eax, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	xor	ecx, dword ptr [rsi + 8]
	lea	rsi, [rsi]
	or	eax, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsi + 0xc]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	xor	ecx, dword ptr [rsi + 0xc]
	or	eax, ecx
	nop	
	mov	rsi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rsi + 0x10]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	xor	ecx, dword ptr [rsi + 0x10]
	or	eax, ecx
	mov	rsi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rsi + 0x14]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	xor	ecx, dword ptr [rsi + 0x14]
	or	eax, ecx
	mov	rsi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rsi + 0x20]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rsi + 0x20]
	nop	
	mov	dword ptr [rbp - 0x14], eax
	mov	rbp, rbp
	call	isdst_differ
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	mov	esi, dword ptr [rbp - 0x14]
	or	esi, ecx
	lea	rdi, [rdi]
	cmp	esi, 0
	setne	al
	xor	al, 0xff
	nop	
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41af20

	.globl getenv_TZ
	.type getenv_TZ, @function
getenv_TZ:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str
	nop	
	call	getenv
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41af50

	.globl change_env
	.type change_env, @function
change_env:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	movsx	eax, byte ptr [rdi + 8]
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_2204
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 9
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_2206
.label_2204:
	xor	eax, eax
	mov	ecx, eax
	nop	
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_2206
.label_2206:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	setenv_TZ
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_2205
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2207
.label_2205:
	call	tzset
	nop	
	mov	byte ptr [rbp - 1], 1
.label_2207:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	nop	
	movzx	eax, al
	mov	rsp, rsp
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41afe0

	.globl setenv_TZ
	.type setenv_TZ, @function
setenv_TZ:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_2208
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str
	lea	rdi, [rdi]
	mov	edx, 1
	mov	rsi, qword ptr [rbp - 8]
	call	setenv
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_2209
.label_2208:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str
	call	unsetenv
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
.label_2209:
	nop	
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b050

	.globl isdst_differ
	.type isdst_differ, @function
isdst_differ:
	nop	
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	cl, al
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	cmp	dword ptr [rbp - 4], 0
	setne	dl
	xor	dl, 0xff
	and	dl, 1
	lea	rdi, [rdi]
	movzx	eax, dl
	nop	
	cmp	dword ptr [rbp - 8], 0
	nop	
	setne	dl
	xor	dl, 0xff
	mov	rbp, rbp
	and	dl, 1
	lea	rsi, [rsi]
	movzx	esi, dl
	lea	rsi, [rsi]
	cmp	eax, esi
	mov	byte ptr [rbp - 9], cl
	je	.label_2210
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	xor	eax, eax
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	mov	byte ptr [rbp - 9], cl
	jg	.label_2210
	mov	rsp, rsp
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	setle	cl
	mov	byte ptr [rbp - 9], cl
.label_2210:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b0e0

	.globl c_strcasecmp
	.type c_strcasecmp, @function
c_strcasecmp:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	rsi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jne	.label_2211
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_2214
.label_2211:
	mov	rbp, rbp
	jmp	.label_2212
.label_2212:
	mov	rax, qword ptr [rbp - 0x20]
	movzx	edi, byte ptr [rax]
	mov	rsp, rsp
	call	c_tolower
	lea	rsi, [rsi]
	mov	cl, al
	mov	byte ptr [rbp - 0x29], cl
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	movzx	edi, byte ptr [rdx]
	call	c_tolower
	nop	
	mov	cl, al
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x2a], cl
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x29]
	cmp	eax, 0
	jne	.label_2213
	jmp	.label_2215
.label_2213:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	lea	rdi, [rdi]
	je	.label_2212
.label_2215:
	movzx	eax, byte ptr [rbp - 0x29]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x2a]
	mov	rsp, rsp
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_2214:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b1d0

	.globl close_stream
	.type close_stream, @function
close_stream:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	__fpending
	cmp	rax, 0
	mov	rbp, rbp
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x11], cl
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	ferror_unlocked
	nop	
	cmp	eax, 0
	setne	cl
	mov	rbp, rbp
	and	cl, 1
	mov	byte ptr [rbp - 0x12], cl
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fclose
	mov	rsp, rsp
	cmp	eax, 0
	setne	cl
	mov	rbp, rbp
	and	cl, 1
	mov	byte ptr [rbp - 0x13], cl
	nop	
	test	byte ptr [rbp - 0x12], 1
	lea	rsi, [rsi]
	jne	.label_2218
	test	byte ptr [rbp - 0x13], 1
	je	.label_2217
	test	byte ptr [rbp - 0x11], 1
	lea	rsi, [rsi]
	jne	.label_2218
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	je	.label_2217
.label_2218:
	nop	
	test	byte ptr [rbp - 0x13], 1
	mov	rsp, rsp
	jne	.label_2216
	call	__errno_location
	mov	dword ptr [rax], 0
.label_2216:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_2219
.label_2217:
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0
.label_2219:
	nop	
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b2b0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	mov	edi, 0xe
	lea	rdi, [rdi]
	call	rpl_nl_langinfo
	nop	
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	jne	.label_2221
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str_0
	nop	
	mov	qword ptr [rbp - 8], rax
.label_2221:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0
	mov	rsp, rsp
	jne	.label_2220
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.1_8
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_2220:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b330

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	add	edi, 0xffffd828
	lea	rsi, [rsi]
	sub	edi, 0xb
	mov	dword ptr [rbp - 8], edi
	ja	.label_2222
	jmp	.label_2223
.label_2223:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	mov	rbp, rbp
	add	eax, 0x2001a
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2224
.label_2222:
	lea	rsi, [rsi]
	jmp	.label_2224
.label_2224:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b390
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
	jmp	.label_2228
.label_2228:
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
	ja	.label_2227
	jmp	.label_2225
.label_2225:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2229
.label_2227:
	mov	byte ptr [rbp - 1], 0
.label_2229:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b400
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
	#Procedure 0x41b450
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
	#Procedure 0x41b480
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
	#Procedure 0x41b4b0
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
	#Procedure 0x41b500
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
	#Procedure 0x41b540
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
	#Procedure 0x41b580
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
	#Procedure 0x41b5c0
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
	#Procedure 0x41b600
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
	#Procedure 0x41b680
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
	#Procedure 0x41b6d0
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
	#Procedure 0x41b710
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
	#Procedure 0x41b780

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
	#Procedure 0x41b7c0
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
	#Procedure 0x41b8b0

	.globl __fstat
	.type __fstat, @function
__fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat